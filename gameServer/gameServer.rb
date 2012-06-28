#!/usr/local/bin/ruby
require 'rubygems'
require 'active_support'
require 'eventmachine'
require 'em-websocket'
require 'json'
require './gameServer/gameServerDS.rb'

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

def bothPlayersConnected?
	return $game.connectedUserNumber()==2
end

EventMachine.run {
	$game = Game.new
	$game.users = Hash.new
	$game.wsID_userHash = Hash.new
	$game.wsID_wsHash = Hash.new
	puts "Game server opened at localhost on port " + (12331+ARGV[0].to_i).to_s + "!"
	EventMachine::WebSocket.start(:host => "localhost", :port => (12331+ARGV[0].to_i) ) do |ws|
	
		ws.onopen {
			puts "WebSocket connection open from #{ws.object_id}"
		}
		
		ws.onclose { 
			puts "Connection closed from #{ws.object_id}"
		}
		
		ws.onmessage { |msg|
			puts "received message from "+ws.object_id.inspect+" : "+msg
			parsedMSG = JSON.parse(msg)
			msgUID = parsedMSG["uid"]
			msgUsername = parsedMSG["username"]
			msgBody = parsedMSG["body"]
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
						gM = GameMessage.new("setLibraryNumber",user.mainBoardCards.length)
						response = ResponseMessage.new("game",msgUsername,msgUID,gM)
						response.send(ws)
					end
					response = ResponseMessage.new("init",msgUsername,msgUID,((bothPlayersConnected?) ? "ready" : "" ))
					$game.wsID_wsHash.each_value{|w|
						response.send(w)
					}
				else
			end
		}
	end
}
