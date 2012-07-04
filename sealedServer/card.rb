#!/usr/local/bin/ruby

class Card
	attr_accessor :idInSet, :cardName, :cardType, :engSRC, :chiSRC, :power, :toughness, :color, :cmc, :level, :rarity, :expansion
	
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
	end
	
	#def to_hash()
		#return {"idInSet" => @idInSet, "cardName" => @cardName, "cardType" => @cardType, "engSRC" => @engSRC, "chiSRC" => @chiSRC, "power" => @power, "toughness" => @toughness, "color" => @color, "cmc" => @cmc, "level" => @level, "rarity" => @rarity, "expansion" => @expansion}
	#end
	
	def to_hash()
		hash = {}
		instance_variables.each {|var| hash[var.to_s.delete("@")] = instance_variable_get(var) }
		return hash
	end
end
