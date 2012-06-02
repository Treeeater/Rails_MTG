require 'rubygems'
require 'active_support'
require 'eventmachine'
require 'em-websocket'
require './chatLobby.rb'
require 'json'

def sendMessage(ws, msg)
	ws.send msg
	puts "Sending Message to #{$cl.users[ws.object_id.inspect].name}: " + msg
end

EventMachine.run {

	puts "WebSocket server opened!"
	
	$cl = ChatLobby.new
	$cl.users = Hash.new
	$cl.websockets = Hash.new
	
    EventMachine::WebSocket.start(:host => "localhost", :port => 3001) do |ws|
	
	ws.onopen {
        puts "WebSocket connection open from #{ws.object_id}"
		
        # publish message to the $client
        #ws.send "Hello $client #{ws.object_id}"
    }

    ws.onclose { 
		puts "Connection closed from #{ws.object_id}"
		response = ResponseMessage.new
		response.type = "logout"
		response.uid = $cl.users[ws.object_id.inspect].uid
		response.username = $cl.users[ws.object_id.inspect].name
		response.body = ""
		$cl.users.delete(ws.object_id.inspect)
		$cl.websockets.delete(ws.object_id.inspect)
		#broadcast the message to everybody
		$cl.websockets.each_value {|w|
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
		response = ResponseMessage.new
		responseMsg = ""
		broadcast = true
		case parsedMSG["type"]
			when "login"
				#detect if this user is already connected
				logged_in = false
				$cl.users.each_value{|c|
					if (c.uid == msgUID)
						response.body = "You already logged in, cannot log in again!"
						response.type = "error"
						broadcast = false
						logged_in = true
					end
				}
				
				#new a user and add it to $cl.
				
				if (!logged_in)
					newuser = ChatUser.new()
					newuser.socketID = ws.object_id
					newuser.name = msgUsername
					newuser.uid = msgUID
					$cl.users[ws.object_id.inspect] = newuser
					$cl.websockets[ws.object_id.inspect] = ws
					
					#respond with pong msg
					response.body = ""
					response.username = msgUsername
					response.uid = msgUID
					response.type = "login"
					responseMsg = response.serialize()
				end
				
			when "message"
				responseMsg = msg
			else
			
		end
		if (broadcast)
			$cl.websockets.each_value {|w|
				sendMessage(w, responseMsg)
			}
		else
			sendMessage(ws, responseMsg)
		end
    }
	
    end
}
