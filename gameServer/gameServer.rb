#!/usr/local/bin/ruby
require 'rubygems'
require 'active_support'
require 'eventmachine'
require 'em-websocket'
require 'json'
require './gameServer/gameServerDS.rb'

def bothPlayersConnected?
	return $game.connectedUserNumber()==2
end

def restartUser(user)
	ws = $game.wsID_wsHash[user.wsObjectID]
	oppo = user.oppo
	gM = GameMessage.new("setLibraryNumber",user.username,user.uid,user.mainBoardCards.length)
	response = ResponseMessage.new("game",user.username,user.uid,gM)
	response.send(ws)						#self's library to self
	gM = GameMessage.new("setLibraryNumber",user.oppo.username,user.oppo.uid,user.oppo.mainBoardCards.length)
	response = ResponseMessage.new("game",user.oppo.username,user.oppo.uid,gM)
	response.send(ws)						#oppo's lib to self
end

def processGameMessage(gb)
	msgType = gb["type"]
	msgUID = gb["uid"]
	msgUsername = gb["username"]
	msgBody = gb["body"]
	case msgType
		when "chooseColor"
			gameResponse = GameMessage.new("chooseColor",msgUsername,msgUID,msgBody)
			response = ResponseMessage.new("game",msgUsername,msgUID,gameResponse)
			case msgBody
				when "plains"
					$game.gameState.w = true
				when "island"
					$game.gameState.u = true
				when "swamp"
					$game.gameState.b = true
				when "mountain"
					$game.gameState.r = true
				when "forest"
					$game.gameState.g = true
				else
			end
			$game.wsID_wsHash.each_value{|w|
				response.send(w)
			}
		when "removeColor"
			gameResponse = GameMessage.new("removeColor",msgUsername,msgUID,msgBody)
			response = ResponseMessage.new("game",msgUsername,msgUID,gameResponse)
			case msgBody
				when "plains"
					$game.gameState.w = false
				when "island"
					$game.gameState.u = false
				when "swamp"
					$game.gameState.b = false
				when "mountain"
					$game.gameState.r = false
				when "forest"
					$game.gameState.g = false
				else
			end
			$game.wsID_wsHash.each_value{|w|
				response.send(w)
			}
		when "choosePhase"
			gameResponse = GameMessage.new("choosePhase",msgUsername,msgUID,msgBody)
			response = ResponseMessage.new("game",msgUsername,msgUID,gameResponse)
			$game.gameState.phase = msgBody
			$game.wsID_wsHash.each_value{|w|
				response.send(w)
			}
		when "adjustLifeTotal"
			$game.users[msgUID].lifeTotal += msgBody.to_i
			gameResponse = GameMessage.new("adjustLifeTotal",msgUsername,msgUID,$game.users[msgUID].lifeTotal.to_s)
			response = ResponseMessage.new("game",msgUsername,msgUID,gameResponse)
			$game.wsID_wsHash.each_value{|w|
				response.send(w)
			}
		else
	end
end

EventMachine.run {
	$game = Game.new
	$game.users = Hash.new
	$game.wsID_userHash = Hash.new
	$game.wsID_wsHash = Hash.new
	$game.initiated = false
	$game.gameState = GameState.new
	puts "Game server opened at localhost on port " + (12331+ARGV[0].to_i).to_s + "!"
	EventMachine::WebSocket.start(:host => "localhost", :port => (12331+ARGV[0].to_i) ) do |ws|
	
		ws.onopen {
			puts "WebSocket connection open from #{ws.object_id}"
		}
		
		ws.onclose { 
			puts "Connection closed from #{ws.object_id}"
			leavingUID = $game.wsID_userHash[ws.object_id].uid
			leavingUsername = $game.wsID_userHash[ws.object_id].username
			$game.userDisconnect(leavingUID,ws)
			#puts $game.connectedUserNumber()
			if ($game.connectedUserNumber()==0)
				#in production, we should wait for a fixed time, but in dev, we terminate it right away
				Kernel.exit!				
			else
				response = ResponseMessage.new("disconnect",leavingUsername,leavingUID,"")
				#wsToSend = (wsID_wsHash.values[0] == ws) ? wsID_wsHash.values[1] : wsID_wsHash.values[0]
				#p $game.wsID_wsHash.keys
				response.send($game.wsID_wsHash.values[0])
			end
		}
		
		ws.onmessage { |msg|
			puts "received message from "+ws.object_id.inspect+" : "+msg
			parsedMSG = JSON.parse(msg)
			msgUID = parsedMSG["uid"]
			msgUsername = parsedMSG["username"]
			msgBody = parsedMSG["body"]
			case parsedMSG["type"]
				when "init"
					user = nil
					if ($game.users.has_key?(msgUID))
						#this user is reconnecting.
						$game.userReconnect(msgUID,msgUsername,ws)
						user = $game.users[msgUID]
					else
						if ($game.users.first!=nil)
							user = User.new(msgUID,msgUsername,ws.object_id,$game.users.first[1])		#set oppo
						else
							user = User.new(msgUID,msgUsername,ws.object_id)		#set oppo
						end
						$game.users[msgUID] = user
						$game.wsID_userHash[ws.object_id] = user
						$game.wsID_wsHash[ws.object_id] = ws
					end
					response = ResponseMessage.new("init",msgUsername,msgUID,((bothPlayersConnected?) ? "ready" : "" ))
					$game.wsID_wsHash.each_value{|w|
						response.send(w)
					}
					if (!$game.initiated)
						#this is the first time this user connects
						if (!bothPlayersConnected?)
							gM = GameMessage.new("setLibraryNumber",msgUsername,msgUID,user.mainBoardCards.length)
							response = ResponseMessage.new("game",msgUsername,msgUID,gM)
							response.send(ws)
						else
							#both players connected.
							user.oppo.oppo = user						#set oppo's oppo
							gM = GameMessage.new("setLibraryNumber",msgUsername,msgUID,user.mainBoardCards.length)
							response = ResponseMessage.new("game",msgUsername,msgUID,gM)
							response.send(ws)						#self's library to self
							response.send($game.wsID_wsHash[user.oppo.wsObjectID])		#self's library to oppo
							gM = GameMessage.new("setLibraryNumber",msgUsername,msgUID,user.oppo.mainBoardCards.length)
							response = ResponseMessage.new("game",user.oppo.username,user.oppo.uid,gM)
							response.send(ws)						#oppo's lib to self
							$game.initiated = true
						end
					else
						#this player reconnected.
						#let's assume the player is the second player (program should have exited if both player disconnects.
						#don't need to send the other player any message except for the 'init' message, which we already sent
						restartUser(user)
					end
				when "game"
					gameBody = JSON.parse(msgBody)
					processGameMessage(gameBody)
				when "chat"
					response = ResponseMessage.new("chat",msgUsername,msgUID,msgBody)
					$game.wsID_wsHash.each_value{|w|
						response.send(w)
					}
				else
			end
		}
	end
}