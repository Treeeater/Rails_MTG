require 'rubygems'
require 'active_support'
require 'eventmachine'
require 'em-websocket'
require './chatLobby.rb'
require 'json'

BroadCast = 1
SingleCast = 2
OtherCast = 3

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
		response = ResponseMessage.new("logout",$cl.users[ws.object_id.inspect].name,$cl.users[ws.object_id.inspect].uid)
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
					$cl.websockets[ws.object_id.inspect] = ws
					
					#respond with pong msg
					response = ResponseMessage.new("login",msgUsername,msgUID,"")
					responseMsg = response.serialize()

					#sending other users information to current user logging in
					$cl.users.each_value{|c|
						if (c.uid == msgUID)
							tempUser = ResponseMessage.new("login", c.name, c.uid, ActiveSupport::JSON.encode($cl.users))
							sendMessage(ws, tempUser.serialize())
						end
					}
				end
				
			when "message"
				responseMsg = msg
				castType = BroadCast
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
