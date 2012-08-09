#!/usr/local/bin/ruby
require 'rubygems'
require 'active_support'
require 'eventmachine'
require 'em-websocket'
require 'json'
require './sealedServer/selectCards.rb'

#ARGV[0] is the host user's id
#ARGV[1] is the total number of users
#ARGV[2..-1] is the user name of all the users, including the host.

class DraftGame
	attr_accessor :users, :wsID_userHash, :wsID_wsHash, :totalUserNo, :currentDraftRound, :currentPickNo

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
		@users[uID].readyForNextPick = false
	end

	def userReconnect(uID,ws)
		@users[uID].connectionStatus = true
		@users[uID].wsObjectID = ws.object_id
		@wsID_userHash[ws.object_id] = @users[uID]
		@wsID_wsHash[ws.object_id] = ws
		@users[uID].ws = ws
		@users[uID].readyForNextPick = true
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

	def readyUserNumber()
		i = 0
		@users.each_value{|u|
			if (u.readyForNextPick)
				i+=1
			end
		}
		return i
	end

	def dispatchPack()
		puts "dispatching packs..."
		return pickCards("AVR")
	end

	def checkAndSendSelections()
		if ($game.readyUserNumber()!=$game.totalUserNo) then return end
		#check and send cards for all players, this triggers every time when a player submits a card, or a player first inits.
		@users.each_value{|u|
			u.sendSelections()
			u.readyForNextPick = false
		}
	end

	def initialize(totalUserNo)
		@users = Hash.new
		@wsID_userHash = Hash.new
		@wsID_wsHash = Hash.new
		@totalUserNo = totalUserNo
		@currentDraftRound = 1
		@currentPickNo = 0
	end
end

class User
	attr_accessor :uid, :username, :wsObjectID, :ws, :connectionStatus, :cardPool, :sitNo, :currentPack, :readyForNextPick

	def initialize(uid,username,ws,wsObjectID,sitNo)
		@uid = uid
		@username = username
		@wsObjectID = wsObjectID
		@connectionStatus = true
		@cardPool = Array.new
		@sitNo = sitNo
		@ws = ws
		@currentPack = $game.dispatchPack()
		@readyForNextPick = true
	end
	
	def sendSelections()
		response = ResponseMessage.new("nextPack",@username,@uid,ActiveSupport::JSON.encode(currentPack))
		response.send(@ws)
	end

	def sendSelected()
		response = ResponseMessage.new("selectedCards",@username,@uid,ActiveSupport::JSON.encode(@cardPool))
		response.send(@ws)
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

	$playerNames = ARGV[2..-1]
	$game = DraftGame.new(ARGV[1].to_i)
	order = rand_n($game.totalUserNo,$game.totalUserNo)			#generate sit order
	puts "WebSocket server opened at localhost on port " + (12320+ARGV[0].to_i).to_s + "!"
	
	EventMachine::WebSocket.start(:host => "localhost", :port => (12320+ARGV[0].to_i) ) do |ws|
	
		ws.onopen {
			puts "WebSocket connection open from #{ws.object_id}"
		}

		ws.onclose { 
			puts "Connection closed from #{ws.object_id}"
			if ($game.wsID_userHash.has_key? ws.object_id)
				leavingUID = $game.wsID_userHash[ws.object_id].uid
				leavingUsername = $game.wsID_userHash[ws.object_id].username
				leavingSitNo = $game.wsID_userHash[ws.object_id].sitNo
				$game.userDisconnect(leavingUID,ws)
				#puts $game.connectedUserNumber()
				if ($game.connectedUserNumber()==0)
					#in production, we should wait for a fixed time, but in dev, we terminate it right away
					Kernel.exit!				
				else
					response = ResponseMessage.new("disconnect",leavingUsername,leavingUID,leavingSitNo)
					#wsToSend = (wsID_wsHash.values[0] == ws) ? wsID_wsHash.values[1] : wsID_wsHash.values[0]
					#p $game.wsID_wsHash.keys
					response.send($game.wsID_wsHash.values[0])
				end
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
					if ($playerNames.include? msgUsername)
						reconnect = false
						if ($game.users.has_key?(msgUID))
							#this user is reconnecting.
							reconnect = true
							$game.userReconnect(msgUID,ws)				#re-config game state on server side
						else
							sitNo = order[$game.connectedUserNumber()]
							user = User.new(msgUID,msgUsername,ws,ws.object_id,sitNo)
							$game.users[msgUID] = user
							$game.wsID_userHash[ws.object_id] = user
							$game.wsID_wsHash[ws.object_id] = ws
						end
						$game.users.each_value{|u|
							response = ResponseMessage.new("init",u.username,u.uid, u.sitNo.to_s+"/"+$game.totalUserNo.to_s)
							$game.wsID_wsHash.each_value{|w|
								response.send(w)
							}
						}
						if (!reconnect) then $game.checkAndSendSelections() else 
							$game.users[msgUID].sendSelected()
							$game.users[msgUID].sendSelections()
						end
=begin
						if ($game.distributedPacks)
							#this player disconnected after the packs are already distributed, let's re-setup him.
							toSend = Array.new
							$game.users[msgUID].cardPool.each{|c|
								toSend.push(c.to_hash)
							}
							response = ResponseMessage.new("cards",msgUsername,msgUID,ActiveSupport::JSON.encode(toSend))
							response.send(ws)
						end
=end
					end
				when "submitCard"
					puts msgBody
					$game.users[msgUID].cardPool.push(msgBody)
					response = ResponseMessage.new("ackSubmitCard",msgUsername,msgUID,"")
					response.send(ws)
				when "verifyDeck"
					if !$game.wsID_userHash[ws.object_id].verified
						$game.wsID_userHash[ws.object_id].verified = true
						basicLands = getBasicLands()
						curCardPool = $game.wsID_userHash[ws.object_id].cardPool
						mbCards = JSON.parse(msgBody)
						mbCardPool = Array.new
						#puts "Submitted " + mbCards[0]
						mbCards.each{|mbc|
							mbcExp = mbc[0..mbc.index('/')-1]
							mbcId = mbc[mbc.index('/')+1..-1]
							thisCard = nil
							case mbcExp
							when 'plains'
								for i in 1..mbcId.to_i
									mbCardPool.push(basicLands[0])
								end
							when 'island'
								for i in 1..mbcId.to_i
									mbCardPool.push(basicLands[1])
								end
							when 'swamp'
								for i in 1..mbcId.to_i
									mbCardPool.push(basicLands[2])
								end
							when 'mountain'
								for i in 1..mbcId.to_i
									mbCardPool.push(basicLands[3])
								end
							when 'forest'
								for i in 1..mbcId.to_i
									mbCardPool.push(basicLands[4])
								end
							else
								#A regular card
								curCardPool.each{|c|
									if (c.expansion.to_s == mbcExp.to_s)&&(c.idInSet.to_s == mbcId.to_s)
										thisCard = c
										curCardPool.delete(c)
										break
									end
								}
								if (thisCard == nil)
									#cheated by submitting an illegal card
									return
								end
								mbCardPool.push(thisCard)
							end
						}
						if (mbCardPool.length() >= 40)
							#valid
							response = ResponseMessage.new("verified",msgUsername,msgUID,"")
							$game.wsID_wsHash.each_value{|w|
								response.send(w)
							}
						end
					end
				when "submitDeck"
					response = ResponseMessage.new("submitted",msgUsername,msgUID,"")
					$game.wsID_wsHash.each_value{|w|
						response.send(w)
					}
				when "startGame"
					redirect_URL = "game/#{ARGV[0]}"
					response = ResponseMessage.new("startGame",msgUsername,msgUID,redirect_URL)
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
