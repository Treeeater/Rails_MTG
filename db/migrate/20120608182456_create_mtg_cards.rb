class CreateMtgCards < ActiveRecord::Migration
  def change
    create_table :mtg_cards do |t|
      t.integer :idInSet
      t.string :cardName
      t.integer :cardType
      t.string :engSRC
      t.string :chiSRC
      t.integer :power
      t.integer :toughness
      t.integer :color
      t.integer :cmc
      t.integer :level,	:default => 0
      t.integer :rarity
      t.string :expansion

      t.timestamps
    end
  end
end
