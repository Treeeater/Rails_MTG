#!/usr/local/bin/ruby

require './sealedServer/card.rb'
require 'sqlite3'
require 'active_support'

class Game
	attr_accessor :users, :wsID_userHash, :wsID_wsHash, :initiated
	
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

class GameMessage
	attr_accessor :type, :body

	def initialize(t,b)
		@type = t
		@body = b
	end

	def to_s()
		return ActiveSupport::JSON.encode(self)
	end
end

class User
	attr_accessor :uid, :username, :wsObjectID, :mainBoardCards, :sideBoardCards, :connectionStatus, :cardStatus, :oppo
	
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
			basicLands = getBasicLands();
			for i in 1..l1
				mainBoardCards.push(basicLands[0])
			end
			for i in 1..l2
				mainBoardCards.push(basicLands[1])
			end
			for i in 1..l3
				mainBoardCards.push(basicLands[2])
			end
			for i in 1..l4
				mainBoardCards.push(basicLands[3])
			end
			for i in 1..l5
				mainBoardCards.push(basicLands[4])
			end
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

end

def searchForCard(exp, idInSet, db)
	begin
		stmt = db.prepare "SELECT * FROM mtg_cards WHERE Expansion='"+exp+"' AND IdInSet='" + idInSet.to_s + "'"
		rs = stmt.execute
		resultLength = 0
		card = nil
		rs.each do |r|
			resultLength+=1
			card = r
		end
		if (resultLength!=1) then return nil end
		return Card.new(card[1],card[2],card[3],card[4],card[5],card[6],card[7],card[8],card[9],card[10],card[11],card[12])
	rescue SQLite3::Exception => e
		p "Exception occured : "+e.to_s
	ensure
		stmt.close if stmt
	end
end

def getBasicLands()
	basicLands = Array.new
	basicLands[0] = Card.new("1000","plains","16", "http://magiccards.info/scans/en/avr/230.jpg", "http://magiccards.info/scans/cn/avr/230.jpg", nil, nil, "0", "0", "0", "1", "AVR")
	basicLands[1] = Card.new("1001","island","16", "http://magiccards.info/scans/en/avr/235.jpg", "http://magiccards.info/scans/cn/avr/235.jpg", nil, nil, "0", "0", "0", "1", "AVR")
	basicLands[2] = Card.new("1001","swamp","16", "http://magiccards.info/scans/en/avr/236.jpg", "http://magiccards.info/scans/cn/avr/236.jpg", nil, nil, "0", "0", "0", "1", "AVR")
	basicLands[3] = Card.new("1001","mountain","16", "http://magiccards.info/scans/en/avr/239.jpg", "http://magiccards.info/scans/cn/avr/239.jpg", nil, nil, "0", "0", "0", "1", "AVR")
	basicLands[4] = Card.new("1001","forest","16", "http://magiccards.info/scans/en/avr/244.jpg", "http://magiccards.info/scans/cn/avr/244.jpg", nil, nil, "0", "0", "0", "1", "AVR")
	return basicLands
end
