#!/usr/local/bin/ruby

require 'sqlite3'
require 'set'
require './sealedServer/card.rb'

def rand_n(n, max)
	#currently we do not allow duplicated copies of cards in the same pack, we could change this in the future though if needed.
	if (n==0) then return [] end
    randoms = Set.new
    loop do
        randoms << rand(max)
        return randoms.to_a if randoms.size >= n
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

def checkExpIfMythicExists(exp)
	case exp
	when "RAV"
		return false
	when "GPT"
		return false
	when "DIS"
		return false
	end
	return true
end

def pickCards(exp, mythicThreshold = 3, foilThreshold = 3)

	begin
		mythicOrNot = checkExpIfMythicExists(exp)
		db = SQLite3::Database.open "./db/development.sqlite3"
		mythic = (rand(10) < mythicThreshold) ? mythicOrNot : false
		foil =  (rand(10) < foilThreshold) ? true : false
		if (foil) then foil = rand(4)+1 else foil = 0 end
		stmt = db.prepare "SELECT * FROM mtg_cards WHERE Expansion='"+exp+"'"
		rs = stmt.execute
		rs2 = Array.new
	#index rarity
		index = Array.new(4)
		index[0] = Array.new
		index[1] = Array.new
		index[2] = Array.new
		index[3] = Array.new
		rs.each do |r|
			index[r[11].to_i-1].push(r[1].to_i)
			rs2[r[1].to_i] = r
		end
		
	#rarity of cards we needed	
		commonNumber = 9 + ((foil == 1) ? 1 : 0) + ((foil == 0) ? 1 : 0)		
		uncommonNumber = 4 + ((foil == 2) ? 1 : 0)					
		rareNumber = 1 - (mythic ? 1 : 0) + ((foil == 3) ? 1 : 0)
		mythicNumber = (mythic ? 1 : 0) + ((foil == 4) ? 1 : 0)

	#get random cards
		commonIndex = rand_n(commonNumber, index[0].length)
		uncommonIndex = rand_n(uncommonNumber, index[1].length)
		rareIndex = rand_n(rareNumber, index[2].length)
		mythicIndex = rand_n(mythicNumber, index[3].length)
		
		returnArray = Array.new
		#p rs2[index[0][4]]
		commonIndex.each{|c|
			cardArray = rs2[index[0][c]]
			card = Card.new(cardArray[1],cardArray[2],cardArray[3],cardArray[4],cardArray[5],cardArray[6],cardArray[7],cardArray[8],cardArray[9],cardArray[10],cardArray[11],cardArray[12])
			returnArray.push(card)
		}
		uncommonIndex.each{|c|
			cardArray = rs2[index[1][c]]
			card = Card.new(cardArray[1],cardArray[2],cardArray[3],cardArray[4],cardArray[5],cardArray[6],cardArray[7],cardArray[8],cardArray[9],cardArray[10],cardArray[11],cardArray[12])
			returnArray.push(card)
		}
		rareIndex.each{|c|
			cardArray = rs2[index[2][c]]
			card = Card.new(cardArray[1],cardArray[2],cardArray[3],cardArray[4],cardArray[5],cardArray[6],cardArray[7],cardArray[8],cardArray[9],cardArray[10],cardArray[11],cardArray[12])
			returnArray.push(card)
		}
		mythicIndex.each{|c|
			cardArray = rs2[index[3][c]]
			card = Card.new(cardArray[1],cardArray[2],cardArray[3],cardArray[4],cardArray[5],cardArray[6],cardArray[7],cardArray[8],cardArray[9],cardArray[10],cardArray[11],cardArray[12])
			returnArray.push(card)
		}
		p returnArray
		return returnArray
	rescue SQLite3::Exception => e
		p "Exception occured : "+e.to_s
	ensure
		stmt.close if stmt
		db.close if db
	end
end
