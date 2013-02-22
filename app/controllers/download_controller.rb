require 'sqlite3'

class Card
	attr_accessor :idInSet, :cardName, :cardType, :engSRC, :chiSRC, :power, :toughness, :color, :cmc, :level, :rarity, :expansion, :uid
	
	def initialize(i,cn,ct,es,cs,p,t,cl,cmc,l,r,exp)
		@idInSet = i
		@cardName = cn
		@cardType = ct
		@engSRC = es
		@chiSRC = cs
		@power = p
		@toughness = t
		@color = cl
		@cmc = cmc
		@level = l
		@rarity = r
		@expansion = exp
		@uid = 0
	end
	
	def to_hash()
		hash = {}
		instance_variables.each {|var| hash[var.to_s.delete("@")] = instance_variable_get(var) }
		return hash
	end
end

class DownloadController < ApplicationController
	def show 
		if !signed_in?
			redirect_to signin_path
		end
    		@user = current_user
		uid = @user.id
		db = SQLite3::Database.open "./db/development.sqlite3"
		stmt = db.prepare "SELECT Deck_info FROM users WHERE Id='" + uid.to_s + "'"
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
		@mainBoardCards = parseCards(mbCardString,db)
		@sideBoardCards = parseCards(sbCardString,db)
		for i in 1..l1
			@mainBoardCards.push(getBasicLands(0))
		end
		for i in 1..l2
			@mainBoardCards.push(getBasicLands(1))
		end
		for i in 1..l3
			@mainBoardCards.push(getBasicLands(2))
		end
		for i in 1..l4
			@mainBoardCards.push(getBasicLands(3))
		end
		for i in 1..l5
			@mainBoardCards.push(getBasicLands(4))
    end
    stringToWrite = ""
    recorded = Hash.new()
		@mainBoardCards.each{|c|
      if (recorded[c.cardName]) then next end
      thisName = c.cardName
      quantity = 0
			@mainBoardCards.each{|c2|
        if (c2.cardName == thisName) then quantity+=1 end
      }
      recorded[c.cardName] = true
      stringToWrite += "#{quantity} #{thisName}\n"
		}
    recorded = Hash.new()
    @sideBoardCards.each{|c|
      if (recorded[c.cardName]) then next end
      thisName = c.cardName
      quantity = 0
      @sideBoardCards.each{|c2|
        if (c2.cardName == thisName) then quantity+=1 end
      }
      recorded[c.cardName] = true
      stringToWrite += "SB: #{quantity} #{thisName}\n"
    }
		if (!File.directory? "./userDeckLists/") then Dir::mkdir("./userDeckLists/") end
		fileName = "./userDeckLists/"+uid.to_s+".dec"
		File.open(fileName,"w"){|f|
			f.write(stringToWrite)
		}
		send_file fileName
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
			return Card.new(card[1],card[2],card[3],card[4],card[5],card[6],card[7],card[8],card[9],card[10],card[11],card[12]) 
		rescue SQLite3::Exception => e
			p "Exception occured : "+e.to_s
		end
	end
	
	def getBasicLands(l)
		case l
			when 0
				return Card.new(230,"Plains",16, "http://magiccards.info/scans/en/avr/230.jpg", "http://magiccards.info/scans/cn/avr/230.jpg", nil, nil, 0, 0, 0, 1, "AVR")
			when 1
				return Card.new(235,"Island",16, "http://magiccards.info/scans/en/avr/235.jpg", "http://magiccards.info/scans/cn/avr/235.jpg", nil, nil, 0, 0, 0, 1, "AVR")
			when 2
				return Card.new(236,"Swamp",16, "http://magiccards.info/scans/en/avr/236.jpg", "http://magiccards.info/scans/cn/avr/236.jpg", nil, nil, 0, 0, 0, 1, "AVR")
			when 3
				return Card.new(239,"Mountain",16, "http://magiccards.info/scans/en/avr/239.jpg", "http://magiccards.info/scans/cn/avr/239.jpg", nil, nil, 0, 0, 0, 1, "AVR")
			when 4
				return Card.new(244,"Forest",16, "http://magiccards.info/scans/en/avr/244.jpg", "http://magiccards.info/scans/cn/avr/244.jpg", nil, nil, 0, 0, 0, 1, "AVR")
			else
		end
	end

	def translate_to_OCTGN_exp(exp)
		case exp
		when "M13"
			return 8
		when "AVR"
			return 7
		when "RTR"
			return 6
		when "RAV"
			return 9
		when "GPT"
			return 10
		when "DIS"
			return 11
		end
	end

	def translate_to_OCTGN_id(id)
		if (id<10)
			return "00"+id.to_s
		elsif (id <100)
			return "0"+id.to_s
		else
			return id.to_s
		end
	end
end
