#!/usr/local/bin/ruby

require 'net/http'

baseURL = 'http://magiccards.info/query?q=e%3Aavr%2Fen&s=issue&v=card'
totalPages = 12
currentPage = 0
expansion = "AVR"
#initial Padding:
sourceCode = <<EOF
desc "Import AVR cards."
task :import_AVR_cards => :environment do

EOF
while (currentPage < totalPages)
	currentPage += 1
	uri = URI(baseURL + '&p=' + currentPage.to_s)
	curResponse = Net::HTTP.get(uri)
	curIndex = curResponse.index('<table border="0" cellpadding="0" cellspacing="0" width="100%" align="center" style="margin: 0 0 0.5em 0;">')
	while (curIndex != nil)
		curResponse = curResponse[curIndex+1..-1]
		
		curResponse = curResponse[curResponse.index('<img src="')..-1]
		endPoint = curResponse.index('"',10)
		engSRC = curResponse[10..endPoint-1]
		curResponse = curResponse[endPoint..-1]
		#p engSRC
		
		chiSRC = engSRC.gsub(/\/en\//,'/cn/')
		#p chiSRC

		curResponse = curResponse[curResponse.index('alt')..-1]
		endPoint = curResponse.index('"',5)
		cardName = curResponse[5..endPoint-1]
		curResponse = curResponse[endPoint..-1]
		#p cardName
		
		curResponse = curResponse[curResponse.index('<p>')..-1]
		endPoint = curResponse.index(',',3)
		cardTypeString = curResponse[3..endPoint-1]
		curResponse = curResponse[endPoint..-1]
		if (cardTypeString[0..8]=="Legendary") then cardTypeString = cardTypeString[10..-1] end
		#got rid of legendary, we don't care about that.
		#p cardTypeString
		power = nil
		toughness = nil
		if (cardTypeString.index("Creature")!=nil)
			cardTypeString.gsub!(/\*/,'0')
			power = cardTypeString.gsub(/.*\s(\d+)\/.*/,'\1')
			toughness = cardTypeString.gsub(/.*\/(\d+).*/,'\1')
			#p power
			#p toughness	
		end
		if (cardTypeString[0..4]=="Basic")
			#we've reached basic lands, which are always the last. We don't record these, so break and we are done.
			break	
		end
		cmc = 0
		colorString = ""
		if (cardTypeString[0..3]!="Land")
			curResponse.gsub!(/^,[\s\n\r]*/,'')
			endPoint = curResponse.index(' ')
			colorString = curResponse[0..endPoint-1]
			curResponse = curResponse[endPoint..-1]
			#p colorString

			curResponse = curResponse[curResponse.index('(')..-1]
			endPoint = curResponse.index(')',1)
			cmc = curResponse[1..endPoint-1]
			curResponse = curResponse[endPoint..-1]
			#p cmc
		end

		curResponse = curResponse[curResponse.index('<u><b>Printings:</b></u><br>')..-1]
		curResponse = curResponse[curResponse.index('<b>#')..-1]
		endPoint = curResponse.index(' ')
		idInSet = curResponse[4..endPoint-1]
		curResponse = curResponse[endPoint..-1]
		#p idInSet

		curResponse = curResponse[curResponse.index('<br><u><b>Editions:</b></u><br>')..-1]
		curResponse = curResponse[curResponse.index('(',10)..-1]
		endPoint = curResponse.index(')')
		rarityString = curResponse[1..endPoint-1]
		curResponse = curResponse[endPoint..-1]
		#p rarityString

		curIndex = curResponse.index('<table border="0" cellpadding="0" cellspacing="0" width="100%" align="center" style="margin: 0 0 0.5em 0;">')
		
		#integerize color, rarity and cardType
		color = 0
		rarity = 0
		cardType = 0
		
		if (colorString.index('W')!=nil)
			color += 16
		end
		if (colorString.index('U')!=nil)
			color += 8
		end
		if (colorString.index('B')!=nil)
			color += 4
		end
		if (colorString.index('R')!=nil)
			color += 2
		end
		if (colorString.index('G')!=nil)
			color += 1
		end
		#p color
		
		if (rarityString=='Common')
			rarity = 1
		elsif (rarityString.index('Uncommon')!=nil)
			rarity = 2
		elsif (rarityString.index('Mythic')!=nil)
			rarity = 4
		else
			rarity = 3
		end
		#p rarity
		
		if (cardTypeString.index('Creature')!=nil)
			cardType+=1
		end
		if (cardTypeString.index('Instant')!=nil)
			cardType+=2
		end
		if (cardTypeString.index('Sorcery')!=nil)
			cardType+=4
		end
		if (cardTypeString.index('Artifact')!=nil)
			cardType+=8
		end
		if (cardTypeString.index('Land')!=nil)
			cardType+=16
		end
		if (cardTypeString.index('Enchantment')!=nil)
			cardType+=32
		end
		if (cardTypeString.index('Planeswalker')!=nil)
			cardType+=64
		end
		if (cardTypeString.index('Tribal')!=nil)
			cardType+=128
		end
		#p cardType
		
		#construct rake command
		thisCardCommand = "	c#{idInSet} = MtgCard.new(:idInSet => " + idInSet.to_s + ", :cardName => \"" + cardName + "\", :cardType => " + cardType.to_s + ", :engSRC => \"" + engSRC + "\", :chiSRC => \"" + chiSRC + "\", :color => " + color.to_s + ", :cmc => " + cmc.to_s + ", :rarity => " + rarity.to_s + ", :expansion => \"" + expansion.to_s + "\""
		if (cardType & 1 == 1)
			thisCardCommand += ", :power => #{power}, :toughness => #{toughness}"
		end
		thisCardCommand += ")\n\tc#{idInSet}.save\n"
		sourceCode += thisCardCommand
	end
end
sourceCode += "end"
File.open("avr_rakes.rake","w"){|f| f.write(sourceCode)}

