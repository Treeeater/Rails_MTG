desc "Import AVR cards." 
task :import_AVR_cards => :environment do
	c = MtgCard.new(:idInSet => 6, :cardName => "fuck", :cardType => 2, :engSRC => "sdf", :chiSRC => "fff", :power => 2, :toughness => 1, :color => 16, :cmc => 2, :rarity => 2, :expansion => "AVR")
	c.save
end
