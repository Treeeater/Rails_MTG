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
	
	def to_s()
		@idInSet.to_s
	end
end