#!/usr/local/bin/ruby
require 'rubygems'
require 'active_support'
require 'eventmachine'
require 'em-websocket'
require 'json'

class Game
	attr_accessor :users, :wsID_userHash, :wsID_wsHash
	
end

class User
	attr_accessor :uid, :username, :wsObjectID
	
	def initialize(uid,username,wsObjectID)
		@uid = uid
		@username = username
		@wsObjectID = wsObjectID
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
			$game.users.delete(leavingUID)
			$game.wsID_userHash.delete(ws.object_id)
			$game.wsID_wsHash.delete(ws.object_id)
			puts "Remaining user number: #{$game.users.length}"
			if ($game.users.length==0)
				#in production, we should wait for a fixed time, but in dev, we terminate it right away
				Kernel.exit!				
			else
				response = ResponseMessage.new("disconnect",leavingUsername,leavingUID,"")
				response.send($game.wsID_wsHash[$game.users.first[1].wsObjectID])
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
					user = User.new(msgUID,msgUsername,ws.object_id)
					$game.users[msgUID] = user
					$game.wsID_userHash[ws.object_id] = user
					$game.wsID_wsHash[ws.object_id] = ws
					response = ResponseMessage.new("init",msgUsername,msgUID,(($game.users.length==2) ? "ready" : "" ))
					$game.wsID_wsHash.each_value{|w|
						response.send(w)
					}
				else
			end
		}
        end
}

#sleep(3)
#File.open(ARGV[0],"w"){|f| f.write("success")}
exit(0)
