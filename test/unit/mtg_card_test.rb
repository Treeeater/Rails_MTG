# == Schema Information
#
# Table name: mtg_cards
#
#  id         :integer         not null, primary key
#  idInSet    :integer
#  cardName   :string(255)
#  cardType   :integer
#  engSRC     :string(255)
#  chiSRC     :string(255)
#  power      :integer
#  toughness  :integer
#  color      :integer
#  cmc        :integer
#  level      :integer         default(0)
#  rarity     :integer
#  expansion  :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

require 'test_helper'

class MtgCardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
