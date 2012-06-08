# == Schema Information
#
# Table name: mtg_cards
#
#  id         :integer         not null, primary key
#  idInSet    :integer
#  cardName   :string(255)
#  cardType   :integer		128:Tribal 64:planeswalker 32:enchantment 16:land 8:artifact 4:sorcery 2:instant 1:creature 	based on frequency
#  engSRC     :string(255)
#  chiSRC     :string(255)
#  power      :integer
#  toughness  :integer
#  color      :integer		16:white 8:blue 4:black 2:red 1:green
#  cmc        :integer
#  level      :integer         default(0)
#  rarity     :integer		1:common 2: uncommon 3: rare 4: mythic
#  expansion  :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class MtgCard < ActiveRecord::Base
	attr_accessible :idInSet, :cardName, :cardType, :engSRC, :chiSRC, :power, :toughness, :color, :cmc, :level, :rarity, :expansion
	validates :cardName,  presence: true
	validates :idInSet,  presence: true
	validates :cardType,  presence: true
	validates :engSRC,  presence: true
	validates :color,  presence: true
	validates :cmc,  presence: true
	validates :rarity,  presence: true
	validates :expansion,  presence: true
end
