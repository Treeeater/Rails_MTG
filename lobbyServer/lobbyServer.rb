#!/usr/local/bin/ruby

require 'rubygems'
require 'active_support'
require 'eventmachine'
require 'em-websocket'
require './chatLobby.rb'
require 'json'

BroadCast = 1
SingleCast = 2
OtherCast = 3
NoCast = 4

MaxPlayers = 2

def sendMessage(ws, msg)
	ws.send msg
	puts "Sending Message to #{$cl.users[ws.object_id.inspect].name}: " + msg
end

def userLeaveGame(msgUID)
	returnValue = false
	deleteGame = false
	$gl.games.each_key{|g|
		if (g==msgUID)
			#this user created this game
			deleteGame = true
			returnValue = true
		else
			$gl.games[g].players.each_index{|p|
				if ($gl.games[g].players[p][0]==msgUID)
					returnValue = true
					if ($gl.games[g].players.length == 1)
						#this is the last player, we should delete this game.
						deleteGame = true
					else
						#there are still players in this game
						$gl.games[g].players.slice!(p)
					end
					break
				end
			}
		end
		if (deleteGame)
			$gl.games.delete(g)
			break
		end
	}
	return returnValue;
end

def checkIfUserIsInGame?(msgUID)
	$gl.games.each_key{|g|
		$gl.games[g].players.each_index{|p|
			if ($gl.games[g].players[p][0]==msgUID)
				return true
			end
		}
	}
	return false
end

EventMachine.run {

	puts "WebSocket server opened!"
	
	$cl = ChatLobby.new
	$cl.users = Hash.new				#ws.object_id.inspect => ChatUser
	$cl.websockets = Hash.new			#uid => ws
	$gl = GamesList.new
	$gl.games = Hash.new
    EventMachine::WebSocket.start(:host => "localhost", :port => 12341) do |ws|
	
	ws.onopen {
        puts "WebSocket connection open from #{ws.object_id}"
		
        # publish message to the $client
        #ws.send "Hello $client #{ws.object_id}"
    }

    ws.onclose { 
		puts "Connection closed from #{ws.object_id}"
		msgUID = $cl.users[ws.object_id.inspect].uid
		msgUsername = $cl.users[ws.object_id.inspect].name
		response = ResponseMessage.new("logout",$cl.users[ws.object_id.inspect].name, msgUID)
		$cl.users.delete(ws.object_id.inspect)
		$cl.websockets.delete(msgUID)
		#find the games he is in and withdraw him.
		leftGame = userLeaveGame(msgUID)
		if (leftGame)
			$cl.websockets.each_value {|w|
				#user exit msg should be sent to everyone.
				responseMsg = ResponseMessage.new("gameList","","",ActiveSupport::JSON.encode($gl.games)).serialize()
				sendMessage(w, responseMsg)
			}
		end
		#broadcast the message to everybody
		$cl.websockets.each_value {|w|
			#user exit msg should be sent to everyone.
			sendMessage(w, response.serialize())
		}
	}
	
    ws.onmessage { |msg|
	#SECADV: does not check whether the sender has the privilege, only user name is used to identify the user.
	#SECADV: username might not be unique
        puts "Received the message: #{msg}"		#debug
		parsedMSG = JSON.parse(msg)
		msgUID = parsedMSG["uid"]
		msgUsername = parsedMSG["username"]
		msgBody = parsedMSG["body"]
		response = nil
		responseMsg = ""
		castType = nil
		case parsedMSG["type"]
			when "login"
				#detect if this user is already connected
				logged_in = false
				$cl.users.each_value{|c|
					if (c.uid == msgUID)
						response = ResponseMessage.new("error",msgUsername,msgUID,"You already logged in, cannot log in again!")
						castType = SingleCast
						logged_in = true
					end
				}
				
				#new a user and add it to $cl.
				if (!logged_in)
					castType = OtherCast
					newuser = ChatUser.new()
					newuser.socketID = ws.object_id
					newuser.name = msgUsername
					newuser.uid = msgUID
					$cl.users[ws.object_id.inspect] = newuser
					$cl.websockets[msgUID] = ws
					
					#respond with pong msg
					response = ResponseMessage.new("login",msgUsername,msgUID,"")
					responseMsg = response.serialize()

					#sending other users information to current user logging in
					tempUser = ResponseMessage.new("login", msgUsername, msgUID, ActiveSupport::JSON.encode($cl.users))
					sendMessage(ws, tempUser.serialize())
				end
				
			when "message"
				responseMsg = msg
				castType = BroadCast
			when "createGame"
				if (checkIfUserIsInGame? msgUID)
					#This user already created a game, we should return an error
					castType = SingleCast
					response = ResponseMessage.new("error",msgUsername,msgUID,"You are already in a game, cannot create another!")
					responseMsg = response.serialize()
				else
					castType = BroadCast
					#init the game on back-end
					$gl.games[msgUID] = Game.new(msgUID, msgUsername)
					response = ResponseMessage.new("createGame",msgUsername,msgUID,ActiveSupport::JSON.encode($gl.games[msgUID]))
					responseMsg = response.serialize()
				end
			when "retrieveGameList"
				castType = SingleCast
				responseMsg = ResponseMessage.new("gameList","","",ActiveSupport::JSON.encode($gl.games)).serialize()
			when "leaveGame"
				castType = BroadCast
				leftGame = userLeaveGame(msgUID)
				responseMsg = ResponseMessage.new("gameList","","",ActiveSupport::JSON.encode($gl.games)).serialize()
			when "joinGame"
				castType = SingleCast
				if (checkIfUserIsInGame? msgUID)
					response = ResponseMessage.new("error",msgUsername,msgUID,"You are already in a game, cannot join another!")
					responseMsg = response.serialize()
				else
					if ($gl.games.has_key?(msgBody))
						if ($gl.games[msgBody].players.length<MaxPlayers)
							#eligible to join
							castType = BroadCast
							$gl.games[msgBody].players.push([msgUID,msgUsername])
							responseMsg = ResponseMessage.new("gameList","","",ActiveSupport::JSON.encode($gl.games)).serialize()
						else
							response = ResponseMessage.new("error",msgUsername,msgUID,"Maximum number of players reached! If you are seeing otherwise, try refresh the page?")
							responseMsg = response.serialize()
						end
					else
						response = ResponseMessage.new("error",msgUsername,msgUID,"Cannot find the game specified, test your connection?")
						responseMsg = response.serialize()
					end
				end
			when "startGame"
				if (!$gl.games.has_key? msgUID)
					castType = SingleCast
					response = ResponseMessage.new("error",msgUsername,msgUID,"You are not a host of any game, cannot start a game!")
					responseMsg = response.serialize()
				elsif ($gl.games[msgUID].players.length() == 1)
					castType = SingleCast
					response = ResponseMessage.new("error",msgUsername,msgUID,"You want to play against yourself? We might implement this in the future.")
					responseMsg = response.serialize()
				else
					#The user hosted a game and that game has two or more users.
					castType = NoCast
					response = ResponseMessage.new("startGame", msgUsername, msgUID, ActiveSupport::JSON.encode($gl.games[msgUID]))
					responseMsg = response.serialize()
					$gl.games[msgUID].players.each{|p|
						sendMessage($cl.websockets[p[0]],responseMsg)
					}
					
				end
			else
		end
		
		if (castType == BroadCast)
			#broadcast the message to everbody.
			$cl.websockets.each_value {|w|
				sendMessage(w, responseMsg)
			}
		elsif (castType == SingleCast)
			#singlecast the message back to the sender.
			sendMessage(ws, responseMsg)
		elsif (castType == OtherCast)
			#reply this msg to everybody EXCEPT the sender.
			$cl.websockets.each_value {|w|
				if (w.object_id!=ws.object_id)
					sendMessage(w, responseMsg)
				end
			}
		end
    }
	
    end
}
