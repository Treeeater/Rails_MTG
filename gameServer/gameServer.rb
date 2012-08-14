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

def reconstructGameState(user)
	oppo = user.oppo
	uID = user.uid
	userName = user.username
	ws = $game.wsID_wsHash[user.wsObjectID]
	#set my lib total
	gameResponse = GameMessage.new("setLibraryNumber",userName,uID,user.library.cards.length)
	response = ResponseMessage.new("game",userName,uID,gameResponse)
	response.send(ws)
	#set oppo lib total
	gameResponse = GameMessage.new("setLibraryNumber",oppo.username,oppo.uid,oppo.library.cards.length)
	response = ResponseMessage.new("game",userName,uID,gameResponse)
	response.send(ws)
	#set oppo hand total
	gameResponse = GameMessage.new("setOppoHandNumber",oppo.username,oppo.uid,oppo.hand.cards.length)
	response = ResponseMessage.new("game",userName,uID,gameResponse)
	response.send(ws)
	#set my life total
	gameResponse = GameMessage.new("adjustLifeTotal",userName,uID,$game.users[uID].lifeTotal.to_s)
	response = ResponseMessage.new("game",userName,uID,gameResponse)
	response.send(ws)
	#set oppo life total
	gameResponse = GameMessage.new("adjustLifeTotal",oppo.username,oppo.uid,$game.users[oppo.uid].lifeTotal.to_s)
	response = ResponseMessage.new("game",oppo.username,oppo.uid,gameResponse)
	response.send(ws)
	#set current phase
	gameResponse = GameMessage.new("choosePhase",userName,uID,$game.gameState.phase)
	response = ResponseMessage.new("game",userName,uID,gameResponse)
	response.send(ws)
	#set all chosen colors
	if ($game.gameState.w)
		gameResponse = GameMessage.new("chooseColor",userName,uID,"plains")
		response = ResponseMessage.new("game",userName,uID,gameResponse)
		response.send(ws)
	end
	if ($game.gameState.u)
		gameResponse = GameMessage.new("chooseColor",userName,uID,"island")
		response = ResponseMessage.new("game",userName,uID,gameResponse)
		response.send(ws)
	end
	if ($game.gameState.b)
		gameResponse = GameMessage.new("chooseColor",userName,uID,"swamp")
		response = ResponseMessage.new("game",userName,uID,gameResponse)
		response.send(ws)
	end
	if ($game.gameState.r)
		gameResponse = GameMessage.new("chooseColor",userName,uID,"mountain")
		response = ResponseMessage.new("game",userName,uID,gameResponse)
		response.send(ws)
	end
	if ($game.gameState.g)
		gameResponse = GameMessage.new("chooseColor",userName,uID,"forest")
		response = ResponseMessage.new("game",userName,uID,gameResponse)
		response.send(ws)
	end
	#recover your hand cards visually
	toSend = Array.new
	user.hand.cards.each{|cID|
		toSend.push($cardArray[cID.to_i].to_hash())
	}
	#recover the stack
	$game.gameState.stack.cards.each{|cID|
		toSend.push($cardArray[cID.to_i].to_hash())
	}
	#recover the battlefield
	user.battlefield.cards.each{|cID|
		toSend.push($cardArray[cID.to_i].to_hash())
	}
	oppo.battlefield.cards.each{|cID|
		toSend.push($cardArray[cID.to_i].to_hash())
	}
	gameResponse = GameMessage.new("displayCard",userName,uID,toSend)
	response = ResponseMessage.new("game",userName,uID,gameResponse)
	response.send(ws)
end

def processGameMessage(gb)
	msgType = gb["type"]
	msgUID = gb["uid"]
	msgUsername = gb["username"]
	msgBody = gb["body"]
	oppo = $game.users[msgUID].oppo
	me = $game.users[msgUID]
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
		when "drawCards"
			drawnCards = $game.users[msgUID].library.drawCards(msgBody.to_i)
			gameResponse = GameMessage.new("drawCards",msgUsername,msgUID,ActiveSupport::JSON.encode(drawnCards))
			response = ResponseMessage.new("game",msgUsername,msgUID,gameResponse)
			response.send($game.wsID_wsHash[$game.users[msgUID].wsObjectID])		#only send this card info to self
			
			gameResponse = GameMessage.new("drawCards",msgUsername,msgUID,ActiveSupport::JSON.encode([drawnCards.length,$game.users[msgUID].hand.cards.length]))
			response = ResponseMessage.new("game",msgUsername,msgUID,gameResponse)
			response.send($game.wsID_wsHash[oppo.wsObjectID])		#send how many cards drawn to oppo
			
			gameResponse = GameMessage.new("setLibraryNumber",msgUsername,msgUID,$game.users[msgUID].library.cards.length)
			response = ResponseMessage.new("game",msgUsername,msgUID,gameResponse)
			$game.wsID_wsHash.each_value{|w|
				response.send(w)		#change library number.
			}			
		when "playHandCard"
			cardID = msgBody.to_i
			if (($cardArray[cardID].cardType.to_i & 16) == 16)
				if me.hand.putCardOntoBattlefield(cardID)
					gameResponse = GameMessage.new("putCardFromHandOntoBattlefield",msgUsername,msgUID,$cardArray[cardID])
					response = ResponseMessage.new("game",msgUsername,msgUID,gameResponse)
					$game.wsID_wsHash.each_value{|w|
						response.send(w)		#change library number.
					}
				end
			else
				if me.hand.putCardOntoStack(cardID)
					gameResponse = GameMessage.new("putCardFromHandOntoStack",msgUsername,msgUID,$cardArray[cardID])
					response = ResponseMessage.new("game",msgUsername,msgUID,gameResponse)
					$game.wsID_wsHash.each_value{|w|
						response.send(w)		#change library number.
					}
				end
			end
			#notify oppo that your hand total is down 1
			gameResponse = GameMessage.new("setOppoHandNumber",msgUsername,msgUID,me.hand.cards.length)
			response = ResponseMessage.new("game",msgUsername,msgUID,gameResponse)
			response.send($game.wsID_wsHash[oppo.wsObjectID])
		when "putCardOntoBattlefield"
			cardID = msgBody.to_i
			if me.hand.putCardOntoBattlefield(cardID)
				gameResponse = GameMessage.new("putCardFromHandOntoBattlefield",msgUsername,msgUID,$cardArray[cardID])
				response = ResponseMessage.new("game",msgUsername,msgUID,gameResponse)
				$game.wsID_wsHash.each_value{|w|
					response.send(w)		#change library number.
				}
			end
			#notify oppo that your hand total is down 1
			gameResponse = GameMessage.new("setOppoHandNumber",msgUsername,msgUID,me.hand.cards.length)
			response = ResponseMessage.new("game",msgUsername,msgUID,gameResponse)
			response.send($game.wsID_wsHash[oppo.wsObjectID])
		when "dragEndBattlefieldCard"
			cardID = msgBody["cardID"].to_i
			$cardArray[cardID].position.x = msgBody["x"].to_i
			$cardArray[cardID].position.y = msgBody["y"].to_i
			gameResponse = GameMessage.new("dragEndBattlefieldCard",msgUsername,msgUID,$cardArray[cardID])
			response = ResponseMessage.new("game",msgUsername,msgUID,gameResponse)
			response.send($game.wsID_wsHash[oppo.wsObjectID])
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
	$cardArray = Array.new
	puts "Game server opened at localhost on port 12344!"
	
	EventMachine::WebSocket.start(:host => "chromium.cs.virginia.edu", :port => 12344 ) do |ws|
	
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
						$game.userReconnect(msgUID,ws)
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
							#set current phase
							gameResponse = GameMessage.new("choosePhase",msgUsername,msgUID,$game.gameState.phase)
							response = ResponseMessage.new("game",msgUsername,msgUID,gameResponse)
							response.send(ws)
						else
							#both players connected.
							user.oppo.oppo = user						#set oppo's oppo
							gM = GameMessage.new("setLibraryNumber",msgUsername,msgUID,user.mainBoardCards.length)
							response = ResponseMessage.new("game",msgUsername,msgUID,gM)
							response.send(ws)						#self's library to self
							response.send($game.wsID_wsHash[user.oppo.wsObjectID])		#self's library to oppo
							gM = GameMessage.new("setLibraryNumber",user.oppo.username,user.oppo.uid,user.oppo.mainBoardCards.length)
							response = ResponseMessage.new("game",msgUsername,msgUID,gM)
							response.send(ws)						#oppo's lib to self
							#set current phase
							gameResponse = GameMessage.new("choosePhase",msgUsername,msgUID,$game.gameState.phase)
							response = ResponseMessage.new("game",msgUsername,msgUID,gameResponse)
							response.send(ws)
							$game.initiated = true
						end
					else
						#this player reconnected.
						#let's assume the player is the second player (program should have exited if both player disconnects.
						#don't need to send the other player any message except for the 'init' message, which we already sent
						reconstructGameState(user)
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