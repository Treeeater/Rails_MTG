desc "Import AVR cards."
task :import_AVR_cards => :environment do

	c1 = MtgCard.new(:idInSet => 1, :cardName => "Angel of Glory's Rise", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/1.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/1.jpg", :color => 16, :cmc => 7, :rarity => 3, :expansion => "AVR", :power => 4, :toughness => 6)
	c1.save
	c2 = MtgCard.new(:idInSet => 2, :cardName => "Angel of Jubilation", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/2.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/2.jpg", :color => 16, :cmc => 4, :rarity => 3, :expansion => "AVR", :power => 3, :toughness => 3)
	c2.save
	c3 = MtgCard.new(:idInSet => 3, :cardName => "Angel's Mercy", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/avr/3.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/3.jpg", :color => 16, :cmc => 4, :rarity => 1, :expansion => "AVR")
	c3.save
	c4 = MtgCard.new(:idInSet => 4, :cardName => "Angelic Wall", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/4.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/4.jpg", :color => 16, :cmc => 2, :rarity => 1, :expansion => "AVR", :power => 0, :toughness => 4)
	c4.save
	c5 = MtgCard.new(:idInSet => 5, :cardName => "Archangel", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/5.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/5.jpg", :color => 16, :cmc => 7, :rarity => 2, :expansion => "AVR", :power => 5, :toughness => 5)
	c5.save
	c6 = MtgCard.new(:idInSet => 6, :cardName => "Avacyn, Angel of Hope", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/6.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/6.jpg", :color => 16, :cmc => 8, :rarity => 4, :expansion => "AVR", :power => 8, :toughness => 8)
	c6.save
	c7 = MtgCard.new(:idInSet => 7, :cardName => "Banishing Stroke", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/avr/7.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/7.jpg", :color => 16, :cmc => 6, :rarity => 2, :expansion => "AVR")
	c7.save
	c8 = MtgCard.new(:idInSet => 8, :cardName => "Builder's Blessing", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/avr/8.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/8.jpg", :color => 16, :cmc => 4, :rarity => 2, :expansion => "AVR")
	c8.save
	c9 = MtgCard.new(:idInSet => 9, :cardName => "Call to Serve", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/avr/9.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/9.jpg", :color => 16, :cmc => 2, :rarity => 1, :expansion => "AVR")
	c9.save
	c10 = MtgCard.new(:idInSet => 10, :cardName => "Cathars' Crusade", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/avr/10.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/10.jpg", :color => 16, :cmc => 5, :rarity => 3, :expansion => "AVR")
	c10.save
	c11 = MtgCard.new(:idInSet => 11, :cardName => "Cathedral Sanctifier", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/11.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/11.jpg", :color => 16, :cmc => 1, :rarity => 1, :expansion => "AVR", :power => 1, :toughness => 1)
	c11.save
	c12 = MtgCard.new(:idInSet => 12, :cardName => "Cloudshift", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/avr/12.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/12.jpg", :color => 16, :cmc => 1, :rarity => 1, :expansion => "AVR")
	c12.save
	c13 = MtgCard.new(:idInSet => 13, :cardName => "Commander's Authority", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/avr/13.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/13.jpg", :color => 16, :cmc => 5, :rarity => 2, :expansion => "AVR")
	c13.save
	c14 = MtgCard.new(:idInSet => 14, :cardName => "Cursebreak", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/avr/14.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/14.jpg", :color => 16, :cmc => 2, :rarity => 1, :expansion => "AVR")
	c14.save
	c15 = MtgCard.new(:idInSet => 15, :cardName => "Defang", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/avr/15.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/15.jpg", :color => 16, :cmc => 2, :rarity => 1, :expansion => "AVR")
	c15.save
	c16 = MtgCard.new(:idInSet => 16, :cardName => "Defy Death", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/avr/16.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/16.jpg", :color => 16, :cmc => 5, :rarity => 2, :expansion => "AVR")
	c16.save
	c17 = MtgCard.new(:idInSet => 17, :cardName => "Devout Chaplain", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/17.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/17.jpg", :color => 16, :cmc => 3, :rarity => 2, :expansion => "AVR", :power => 2, :toughness => 2)
	c17.save
	c18 = MtgCard.new(:idInSet => 18, :cardName => "Divine Deflection", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/avr/18.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/18.jpg", :color => 16, :cmc => 1, :rarity => 3, :expansion => "AVR")
	c18.save
	c19 = MtgCard.new(:idInSet => 19, :cardName => "Emancipation Angel", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/19.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/19.jpg", :color => 16, :cmc => 3, :rarity => 2, :expansion => "AVR", :power => 3, :toughness => 3)
	c19.save
	c20 = MtgCard.new(:idInSet => 20, :cardName => "Entreat the Angels", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/avr/20.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/20.jpg", :color => 16, :cmc => 3, :rarity => 4, :expansion => "AVR")
	c20.save
end