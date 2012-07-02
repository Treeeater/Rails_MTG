#!/usr/local/bin/ruby

require './sealedServer/card.rb'
require 'sqlite3'
require 'active_support'

class GameState
	attr_accessor :w, :u, :b, :r, :g, :phase, :cardCount
	
	def initialize()
		@w = false
		@u = false
		@b = false
		@r = false
		@g = false
		@phase = "upkeepPhaseBox"
		@cardCount = 0
	end
	
end

class Game
	attr_accessor :users, :wsID_userHash, :wsID_wsHash, :initiated, :gameState
	
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
		puts "sending message to "+$game.wsID_userHash[ws.object_id].username+", "+ self.serialize
	end
end

class GameMessage
	attr_accessor :type, :username, :uid, :body

	def initialize(t="",n="",i="",b="")
		@type = t
		@username = n
		@uid = i
		@body = b
	end

	def to_s()
		return ActiveSupport::JSON.encode(self)
	end
end

class User
	attr_accessor :uid, :username, :wsObjectID, :mainBoardCards, :sideBoardCards, :connectionStatus, :oppo, :lifeTotal, :library, :hand
	
	def initialize(uid,username,wsObjectID, op=nil)
		begin
			db = SQLite3::Database.open "./db/development.sqlite3"
			stmt = db.prepare "SELECT Deck_info FROM users WHERE Id='" + uid + "'"
			rs = stmt.execute
			srcString = ""
			rs.each do |r|
				srcString = r.to_s
			end
			srcObj = JSON.parse(srcString)
			srcObj = JSON.parse(srcObj[0])
			mbCardString = srcObj["cards"]
			sbCardString = srcObj["sbCards"]
			l1 = srcObj["L1"].to_i
			l2 = srcObj["L2"].to_i
			l3 = srcObj["L3"].to_i
			l4 = srcObj["L4"].to_i
			l5 = srcObj["L5"].to_i
			@uid = uid
			@username = username
			@wsObjectID = wsObjectID
			@mainBoardCards = parseCards(mbCardString,db)
			@sideBoardCards = parseCards(sbCardString,db)
			@oppo = op
			@lifeTotal = 20
			for i in 1..l1
				mainBoardCards.push(getBasicLands(0))
			end
			for i in 1..l2
				mainBoardCards.push(getBasicLands(1))
			end
			for i in 1..l3
				mainBoardCards.push(getBasicLands(2))
			end
			for i in 1..l4
				mainBoardCards.push(getBasicLands(3))
			end
			for i in 1..l5
				mainBoardCards.push(getBasicLands(4))
			end
			@library = Library.new(mainBoardCards,@uid)		#already shuffled during initialization
			@hand = Hand.new(@uid)
			@connectionStatus = true
		rescue SQLite3::Exception => e
			p "Exception occured : "+e.to_s
		ensure
			stmt.close if stmt
			db.close if db
		end
	end
	
	def parseCards(srcString,db)
		returnArray = Array.new
		srcString.split('+').each{|m|
			exp = m[0..m.index('/')-1]
			idInSet = m[m.index('/')+1..-1]
			card = searchForCard(exp, idInSet, db)
			if (card == nil) then puts "error" else returnArray.push(card) end
		}
		return returnArray
	end

	#helper functions
	def searchForCard(exp, idInSet, db)
		begin
			card = nil
			card = db.get_first_row "SELECT * FROM mtg_cards WHERE Expansion='"+exp+"' AND IdInSet='" + idInSet.to_s + "'"
			if (card==nil) then return nil end
			c = Card.new(card[1],card[2],card[3],card[4],card[5],card[6],card[7],card[8],card[9],card[10],card[11],card[12])
			return CardVisible.new(c,@uid)
		rescue SQLite3::Exception => e
			p "Exception occured : "+e.to_s
		end
	end
	
	def getBasicLands(l)
		case l
			when 0
				return CardVisible.new(Card.new("1000","plains","16", "http://magiccards.info/scans/en/avr/230.jpg", "http://magiccards.info/scans/cn/avr/230.jpg", nil, nil, "0", "0", "0", "1", "AVR"),@uid)
			when 1
				return CardVisible.new(Card.new("1001","island","16", "http://magiccards.info/scans/en/avr/235.jpg", "http://magiccards.info/scans/cn/avr/235.jpg", nil, nil, "0", "0", "0", "1", "AVR"),@uid)
			when 2
				return CardVisible.new(Card.new("1001","swamp","16", "http://magiccards.info/scans/en/avr/236.jpg", "http://magiccards.info/scans/cn/avr/236.jpg", nil, nil, "0", "0", "0", "1", "AVR"),@uid)
			when 3
				return CardVisible.new(Card.new("1001","mountain","16", "http://magiccards.info/scans/en/avr/239.jpg", "http://magiccards.info/scans/cn/avr/239.jpg", nil, nil, "0", "0", "0", "1", "AVR"),@uid)
			when 4
				return CardVisible.new(Card.new("1001","forest","16", "http://magiccards.info/scans/en/avr/244.jpg", "http://magiccards.info/scans/cn/avr/244.jpg", nil, nil, "0", "0", "0", "1", "AVR"),@uid)
			else
		end
	end
	
end

class Position
	attr_accessor :zone, :x, :y, :order, :facedown, :tapped, :transformed, :flipped
	
	def initialize()
		@zone = "lib"
		@x = 0
		@y = 0
		@order = 0
		@facedown = false
		@tapped = false
		@transformed = false
		@flipped = false
	end
end

class Counter
	attr_accessor :type, :number
	
	def initialize(t,n)
		@type = t
		@number = n
	end
	
end

class CardVisible < Card
	attr_accessor :cardID, :position, :counters, :ownerUID

	def initialize(c,uid)
		super(c.idInSet, c.cardName, c.cardType, c.engSRC, c.chiSRC, c.power, c.toughness, c.color, c.cmc, c.level, c.rarity, c.expansion)
		@cardID = $game.gameState.cardCount
		@position = Position.new
		@counters = Array.new
		@ownerUID = uid
		$cardHash[@cardID.to_s] = self
		$game.gameState.cardCount+=1
	end
	
	def to_Client()
		toReturn = Hash.new
		toReturn["cardID"] = @cardID
		toReturn["cardName"] = @cardName
		toReturn["engSRC"] = @engSRC
		toReturn["chiSRC"] = @chiSRC
		toReturn["position"] = @position
		toReturn["counters"] = @counters
		toReturn["ownerUID"] = @ownerUID
		return toReturn
	end
end

class Library
	attr_accessor :cards, :uid
	#cards is an array which ONLY stores the cardID of each card. If we want to retrieve the real card, refer to $cardHash[]
	
	def initialize(mbCards,u)
		@cards = Array.new
		mbCards.each{|c|
			@cards.push(c.cardID)
		}
		shuffle()
		@uid = u
	end
	
	def shuffle()
		@cards.shuffle!
		@cards.each_index{|i|
			$cardHash[@cards[i].to_s].position.order = i
		}
	end
	
	def drawCards(n)
		if (n>@cards.length) then return [] end
		drawnCards = @cards.slice!(0,n)
		toReturn = Array.new
		drawnCards.each{|c|
			$cardHash[c.to_s].position.zone = "hand"
			$game.users[@uid].hand.cards.push(c)
			toReturn.push($cardHash[c.to_s].to_Client())
		}
		return toReturn
	end
end

class Hand
	attr_accessor :cards, :uid
	#cards is an array which ONLY stores the cardID of each card.
	
	def initialize(u)
		@cards = Array.new
		@uid = u
	end
	
	def discard()
	end
	
	def revealCard()
	end
end

