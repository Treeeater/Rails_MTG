#!/usr/local/bin/ruby
require 'rubygems'
require 'active_support'
require 'eventmachine'
require 'em-websocket'
require 'json'
require './sealedServer/selectCards.rb'
require 'sqlite3'
require './serverConf.rb'

#ARGV[0] is the host user's id			12/3/2012: This is currently deprecated, originally this is used to distinguish port number and also forward the information to 'game' after deckbuilding, but now we have only one port and this is currently unused. We use /draft/1 for all drafts instead.
#ARGV[1] is the total number of packs
#ARGV[2] is the total number of players
#ARGV[3..-1] is the user name of all the users, including the host.

class DraftGame
	attr_accessor :users, :wsID_userHash, :wsID_wsHash, :totalUserNo, :currentDraftRound, :sitArray

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
		@wsID_wsHash[ws.object_id] = ws
		@users[uID].ws = ws
		if (@users[uID].readyForNextPick)
			response = ResponseMessage.new("ackSubmitCard",@users[uID].username,uID,"")
			response.send(ws)
		end
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
		return pickCards($PackDetails[@currentDraftRound-1])
	end

	def checkAndSavePicks()
		if ($game.readyUserNumber()!=$game.totalUserNo || $game.connectedUserNumber()!=$game.totalUserNo) then return false end
		if (@sitArray == nil) then tryFormSitArray() end
		if (@currentDraftRound==$totalNoPacks && @sitArray[0].currentPack.length == 0)			#this line is the only line we need to change to get more rounds or less rounds.
			#we are done, all cards have been issued
			#save picks to db here
			db = SQLite3::Database.open "./db/development.sqlite3"
			@users.each_value{|u|
				mbSaveString = '{"cards":"","sbCards":"'
				u.cardPool.each{|uc|
					mbSaveString += (uc['expansion'].to_s + '/' + uc['idInSet'].to_s + '+')
				}
				mbSaveString += '","L1":0,"L2":"0","L3":0,"L4":0,"L5":0,"controller":"users","action":"submitDeck","user":{}}'
				stmt = db.prepare "UPDATE users SET Deck_info='" + mbSaveString + "' WHERE Id=" + u.uid
				rs = stmt.execute
			}
			return true
		end
		return false
	end

	def checkAndOpenNewPacks()
		if ($game.readyUserNumber()!=$game.totalUserNo || $game.connectedUserNumber()!=$game.totalUserNo) then return end
		if (@sitArray == nil) then tryFormSitArray() end
		if (@sitArray[0].currentPack.length == 0)
			#we need to open new packs
			@currentDraftRound+=1
			@users.each_value{|u|
				u.currentPack = dispatchPack()
			}
		end
	end

	def checkAndSendSelections()
		if ($game.readyUserNumber()!=$game.totalUserNo || $game.connectedUserNumber()!=$game.totalUserNo) then return end
		#check and send cards for all players, this triggers every time when a player submits a card, or a player first inits.
		@users.each_value{|u|
			u.sendSelections()
			u.readyForNextPick = false
		}
	end

	def checkAndRotatePacks()
		if ($game.readyUserNumber()!=$game.totalUserNo || $game.connectedUserNumber()!=$game.totalUserNo) then return end
		if (@sitArray == nil) then tryFormSitArray() end
		if (@currentDraftRound % 2 == 0)
			#rotate right
			temp = @sitArray[0].currentPack
			@sitArray.each_index{|i|
				if (i < @sitArray.length-1) then @sitArray[i].currentPack = @sitArray[i+1].currentPack end
			}
			@sitArray[@sitArray.length-1].currentPack = temp
		else
			#rotate left
			temp = @sitArray[@sitArray.length-1].currentPack
			@sitArray.each_index{|i|
				if (i < @sitArray.length-1) then @sitArray[@sitArray.length-i-1].currentPack = @sitArray[@sitArray.length-i-2].currentPack end
			}
			@sitArray[0].currentPack = temp
		end
	end

	def tryFormSitArray
		if (@sitArray != nil) then return end
		#File.open("draftServerlog.txt","a"){|f| f.write($game.readyUserNumber().to_s+" "+ $game.connectedUserNumber().to_s+"\n")}
		if ($game.connectedUserNumber()!=$game.totalUserNo) then return end
		@sitArray = Array.new
		i = 0
		while (i < $game.totalUserNo)
			@users.each_value{|u|
				if (u.sitNo == i)
					@sitArray.push(u)
					break
				end
			}
			i+=1
		end
	end

	def initialize(totalUserNo)
		@users = Hash.new
		@wsID_userHash = Hash.new
		@wsID_wsHash = Hash.new
		@totalUserNo = totalUserNo
		@currentDraftRound = 1
		@sitArray = nil 		#used to store users in an array in the order of sit number.
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
		ws.send(self.serialize)
		puts "sent message to "+$game.wsID_userHash[ws.object_id].username+", "+ self.serialize
	end

end

EventMachine.run {

	$totalNoPacks = ARGV[1].to_i
	$game = DraftGame.new(ARGV[2].to_i)
	$PackDetails = ARGV[3..3+$totalNoPacks-1]
	$playerNames = ARGV[3+$totalNoPacks..-1]
	#File.open("log_draft_server_2.txt","w"){|f| f.write($game.totalUserNo)}
	order = rand_n($game.totalUserNo,$game.totalUserNo)			#generate sit order
	#puts "WebSocket server opened at localhost on port " + (12320+ARGV[0].to_i).to_s + "!"
	
	#EventMachine::WebSocket.start(:host => "localhost", :port => (12320+ARGV[0].to_i) ) do |ws|
	puts "WebSocket server opened at localhost on port 12342!"
	
	EventMachine::WebSocket.start(:host => $hostServerDomain, :port => 12342 ) do |ws|
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
					puts "terminating myself..."
					Kernel.exit!				
				else
					response = ResponseMessage.new("disconnect",leavingUsername,leavingUID,leavingSitNo)
					#wsToSend = (wsID_wsHash.values[0] == ws) ? wsID_wsHash.values[1] : wsID_wsHash.values[0]
					#p $game.wsID_wsHash.keys
					$game.wsID_wsHash.each_value{|w|
						if (ws.object_id != w.object_id)
							response.send(w)
						end
					}
				end
			end
		}
	
		ws.onmessage { |msg|
			puts "received message from "+ws.object_id.inspect+" : "+msg
			parsedMSG = nil
			skip = false
			begin
				parsedMSG = JSON.parse(msg)
			rescue 
				puts "invalid message"
				skip = true
			end
			if (!skip)
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
								$game.tryFormSitArray()
							end
							$game.users.each_value{|u|
								if (!u.connectionStatus) then next end
								response = ResponseMessage.new("init",u.username,u.uid, u.sitNo.to_s+"/"+$game.totalUserNo.to_s)
								$game.wsID_wsHash.each_value{|w|
									response.send(w)
								}
							}
							if (!reconnect) 
								$game.checkAndSendSelections() 
							else
								$game.users[msgUID].sendSelected()
								if (!$game.users[msgUID].readyForNextPick)
									#user haven't chosen his card yet, we need to show him the current pack.
									$game.users[msgUID].sendSelections()
								end
							end
							#check to make sure the guys who has submitted is green, instead of yellow
							$game.users.each_value{|u|
								if (u.readyForNextPick)
									response = ResponseMessage.new("ackSubmitCard",u.username,u.uid, u.sitNo.to_s)
									$game.wsID_wsHash.each_value{|w|
										response.send(w)
									}
								end
							}
							#check to make sure this guy got all the red connections, instead of the gray ones.
							$game.users.each_value{|u|
								if (!u.connectionStatus)
									#response = ResponseMessage.new("init",u.username,u.uid, u.sitNo.to_s+"/"+$game.totalUserNo.to_s)
									#response.send(ws)
									response = ResponseMessage.new("disconnect",u.username,u.uid, u.sitNo.to_s)
									response.send(ws)
								end
							}
							if (reconnect)
								#check if playerA and playerB selected a card, then playerB disconnects, during which playerC make a selection. When playerB reconnects, this program halts.
								
								if ($game.checkAndSavePicks())
									#send redirect to card builder.
									$game.users.each_value{|u|
										response = ResponseMessage.new("submitSideBoard",u.username,u.uid,"")
										response.send(u.ws)
									}
								end
								#test if the pack is empty and we should open new packs.
								$game.checkAndOpenNewPacks()
								#test if all players have submitted their choice, then rotate the packs.
								$game.checkAndRotatePacks()
								#now send the new packs to the players
								$game.checkAndSendSelections()
							end
							response = ResponseMessage.new("draftInfo",msgUsername,msgUID,$PackDetails.join('+'));
							response.send(ws);
						end
					when "submitCard"
						$game.users[msgUID].cardPool.push(msgBody)
						response = ResponseMessage.new("ackSubmitCard",msgUsername,msgUID,$game.wsID_userHash[ws.object_id].sitNo)
						#response.send(ws)
						$game.wsID_wsHash.each_value{|w|
							response.send(w)
						}
						$game.users[msgUID].readyForNextPick = true
						#we need to deduct this card from this pool
						$game.users[msgUID].currentPack.each{|c|
							if (c.idInSet == msgBody["idInSet"])
								$game.users[msgUID].currentPack.delete(c)
								break
							end
						}
						#test if the draft is over and we should save these picks to the db.
						if ($game.checkAndSavePicks())
							#send redirect to card builder.
							$game.users.each_value{|u|
								response = ResponseMessage.new("submitSideBoard",u.username,u.uid,"")
								response.send(u.ws)
							}
						else
							#test if the pack is empty and we should open new packs.
							$game.checkAndOpenNewPacks()
							#test if all players have submitted their choice, then rotate the packs.
							$game.checkAndRotatePacks()
							#now send the new packs to the players
							$game.checkAndSendSelections()
						end
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
					when "submitSideBoard"
						db = SQLite3::Database.open "./db/development.sqlite3"
						toSaveString = '{"cards":"'
						mbSaveString = ''
						sbSaveString = ''
						$game.users[msgUID].cardPool.each{|uc|
							mbSaveString += (uc['expansion'].to_s + '/' + uc['idInSet'].to_s + '+')
						}
						msgBody.each{|sbcard|
							sbcard = sbcard + '+'
							i = mbSaveString.index(sbcard)
							if (i!=nil)
								if (i!=0)
									mbSaveString = mbSaveString[0..i-1]+mbSaveString[i+sbcard.length..-1]
								else
									mbSaveString = mbSaveString[sbcard.length..-1]
								end
								sbSaveString += sbcard
							end
						}
						toSaveString += mbSaveString
						toSaveString += '","sbCards":"'
						toSaveString += sbSaveString
						toSaveString += '","L1":0,"L2":"0","L3":0,"L4":0,"L5":0,"controller":"users","action":"submitDeck","user":{}}'
						
						stmt = db.prepare "UPDATE users SET Deck_info='" + toSaveString + "' WHERE Id=" + msgUID
						rs = stmt.execute
						
						response = ResponseMessage.new("redirect_to_deckbuilder",msgUsername,msgUID,"")
						response.send($game.users[msgUID].ws)
					else
				end
			end
		}
        end
}

#sleep(3)
#File.open(ARGV[0],"w"){|f| f.write("success")}
exit(0)
