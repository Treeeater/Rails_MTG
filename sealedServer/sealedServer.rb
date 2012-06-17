#!/usr/local/bin/ruby
require 'rubygems'
require 'active_support'
require 'eventmachine'
require 'em-websocket'
require 'json'
require './sealedServer/selectCards.rb'

class Game
	attr_accessor :users, :wsID_userHash, :wsID_wsHash
	
	def userDelete(uID,wsID)
		@users.delete(leavingUID)
		@wsID_userHash.delete(ws.object_id)
		@wsID_wsHash.delete(ws.object_id)
	end
	
	def userDisconnect(uID,ws)
		@users[uID].connectionStatus = false
		@wsID_userHash.delete(ws.object_id)
		@wsID_wsHash.delete(ws.object_id)
		@users[uID].wsObjectID = 0
	end

	def userReconnect(uID,ws)
		@users[uID].connectionStatus = true
		@users[uID].wsObjectID = ws.object_id
		@wsID_userHash[ws.object_id] = @users[uID]
		@wsID_wsHash[uID] = ws
	end
	
	def connectedUserNumber()
		i = 0
		@users.each_value{|u|
			if (u.connectionStatus)
				i+=1
			end
		}
		return i
	end

	def dispatchPacks(packNumber)
		puts "dispatching packs..."
		
		totalCards = Array.new
		i = 0
		while (i<packNumber)
			i+=1
			cards = pickCards("AVR")
			totalCards += cards
		end
		@users.values[0].cardPool = totalCards
		
		totalCards = Array.new
		i = 0
		while (i<packNumber)
			i+=1
			cards = pickCards("AVR")
			totalCards += cards
		end
		@users.values[1].cardPool = totalCards
	end
end

class User
	attr_accessor :uid, :username, :wsObjectID, :packReadyStatus, :connectionStatus, :cardPool
	
	def initialize(uid,username,wsObjectID)
		@uid = uid
		@username = username
		@wsObjectID = wsObjectID
		@packReadyStatus = false
		@connectionStatus = true
		@cardPool = Array.new
	end
end

class ResponseMessage
	attr_accessor :type, :username, :uid, :body
	
	def serialize
		return ActiveSupport::JSON.encode(self)
	end
	
	def initialize(t="",n="",i="",b="")
		@type = t
		@username = n
		@uid = i
		@body = b
	end
	
	def send(ws)
		puts "sending message to "+$game.wsID_userHash[ws.object_id].username+", "+ self.serialize
		ws.send(self.serialize)
	end
end

EventMachine.run {

	$game = Game.new
	$game.users = Hash.new
	$game.wsID_userHash = Hash.new
	$game.wsID_wsHash = Hash.new

	puts "WebSocket server opened at localhost on port " + (12341+ARGV[0].to_i).to_s + "!"
	
	EventMachine::WebSocket.start(:host => "localhost", :port => (12341+ARGV[0].to_i) ) do |ws|
	
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
				response.send($game.wsID_wsHash.values[0])
			end
		}
	
		ws.onmessage { |msg|
			puts "received message from "+ws.object_id.inspect+" : "+msg
			parsedMSG = JSON.parse(msg)
			msgUID = parsedMSG["uid"]
			msgUsername = parsedMSG["username"]
			msgBody = parsedMSG["body"]
			response = nil
			responseMsg = ""
			case parsedMSG["type"]
				when "init"
					if ($game.users.has_key?(msgUID))
						#this user is reconnecting.
						$game.userReconnect(msgUID,ws)
					else
						user = User.new(msgUID,msgUsername,ws.object_id)
						$game.users[msgUID] = user
						$game.wsID_userHash[ws.object_id] = user
						$game.wsID_wsHash[ws.object_id] = ws
					end
					response = ResponseMessage.new("init",msgUsername,msgUID,(($game.connectedUserNumber()==2) ? "ready" : "" ))
					$game.wsID_wsHash.each_value{|w|
						response.send(w)
					}
				when "initPacks"
					if ($game.connectedUserNumber()!=2)
						response = ResponseMessage.new("error",msgUsername,msgUID,"Please wait until both players are connected and try again.")
						response.send(ws)
					else
						$game.users[msgUID].packReadyStatus = true
						if ($game.users.values[0].packReadyStatus && $game.users.values[1].packReadyStatus)
							$game.dispatchPacks(2)
							puts "Packs distributed..."
							$game.wsID_wsHash.each_key{|wsid|
								p "sending these cards to player " + $game.wsID_userHash[wsid].username
								toSend = Array.new
								$game.wsID_userHash[wsid].cardPool.each{|c|
									toSend.push(c.to_hash)
								}
								response = ResponseMessage.new("cards",msgUsername,msgUID,ActiveSupport::JSON.encode(toSend))
								response.send($game.wsID_wsHash[wsid])
							}
						else
							response = ResponseMessage.new("info",msgUsername,msgUID,"Your 'pack ready' status has been set to ready, waiting for your opponent now...")
							response.send(ws)
						end
					end
				else
			end
		}
        end
}

#sleep(3)
#File.open(ARGV[0],"w"){|f| f.write("success")}
exit(0)
