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
	c21 = MtgCard.new(:idInSet => 21, :cardName => "Farbog Explorer", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/21.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/21.jpg", :color => 16, :cmc => 3, :rarity => 1, :expansion => "AVR", :power => 2, :toughness => 3)
	c21.save
	c22 = MtgCard.new(:idInSet => 22, :cardName => "Goldnight Commander", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/22.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/22.jpg", :color => 16, :cmc => 4, :rarity => 2, :expansion => "AVR", :power => 2, :toughness => 2)
	c22.save
	c23 = MtgCard.new(:idInSet => 23, :cardName => "Goldnight Redeemer", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/23.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/23.jpg", :color => 16, :cmc => 6, :rarity => 2, :expansion => "AVR", :power => 4, :toughness => 4)
	c23.save
	c24 = MtgCard.new(:idInSet => 24, :cardName => "Herald of War", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/24.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/24.jpg", :color => 16, :cmc => 5, :rarity => 3, :expansion => "AVR", :power => 3, :toughness => 3)
	c24.save
	c25 = MtgCard.new(:idInSet => 25, :cardName => "Holy Justiciar", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/25.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/25.jpg", :color => 16, :cmc => 4, :rarity => 2, :expansion => "AVR", :power => 2, :toughness => 1)
	c25.save
	c26 = MtgCard.new(:idInSet => 26, :cardName => "Leap of Faith", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/avr/26.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/26.jpg", :color => 16, :cmc => 3, :rarity => 1, :expansion => "AVR")
	c26.save
	c27 = MtgCard.new(:idInSet => 27, :cardName => "Midnight Duelist", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/27.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/27.jpg", :color => 16, :cmc => 1, :rarity => 1, :expansion => "AVR", :power => 1, :toughness => 2)
	c27.save
	c28 = MtgCard.new(:idInSet => 28, :cardName => "Midvast Protector", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/28.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/28.jpg", :color => 16, :cmc => 4, :rarity => 1, :expansion => "AVR", :power => 2, :toughness => 3)
	c28.save
	c29 = MtgCard.new(:idInSet => 29, :cardName => "Moonlight Geist", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/29.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/29.jpg", :color => 16, :cmc => 3, :rarity => 1, :expansion => "AVR", :power => 2, :toughness => 1)
	c29.save
	c30 = MtgCard.new(:idInSet => 30, :cardName => "Moorland Inquisitor", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/30.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/30.jpg", :color => 16, :cmc => 2, :rarity => 1, :expansion => "AVR", :power => 2, :toughness => 2)
	c30.save
	c31 = MtgCard.new(:idInSet => 31, :cardName => "Nearheath Pilgrim", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/31.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/31.jpg", :color => 16, :cmc => 2, :rarity => 2, :expansion => "AVR", :power => 2, :toughness => 1)
	c31.save
	c32 = MtgCard.new(:idInSet => 32, :cardName => "Restoration Angel", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/32.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/32.jpg", :color => 16, :cmc => 4, :rarity => 3, :expansion => "AVR", :power => 3, :toughness => 4)
	c32.save
	c33 = MtgCard.new(:idInSet => 33, :cardName => "Riders of Gavony", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/33.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/33.jpg", :color => 16, :cmc => 4, :rarity => 3, :expansion => "AVR", :power => 3, :toughness => 3)
	c33.save
	c34 = MtgCard.new(:idInSet => 34, :cardName => "Righteous Blow", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/avr/34.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/34.jpg", :color => 16, :cmc => 1, :rarity => 1, :expansion => "AVR")
	c34.save
	c35 = MtgCard.new(:idInSet => 35, :cardName => "Seraph of Dawn", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/35.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/35.jpg", :color => 16, :cmc => 4, :rarity => 1, :expansion => "AVR", :power => 2, :toughness => 4)
	c35.save
	c36 = MtgCard.new(:idInSet => 36, :cardName => "Silverblade Paladin", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/36.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/36.jpg", :color => 16, :cmc => 3, :rarity => 3, :expansion => "AVR", :power => 2, :toughness => 2)
	c36.save
	c37 = MtgCard.new(:idInSet => 37, :cardName => "Spectral Gateguards", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/37.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/37.jpg", :color => 16, :cmc => 5, :rarity => 1, :expansion => "AVR", :power => 2, :toughness => 5)
	c37.save
	c38 = MtgCard.new(:idInSet => 38, :cardName => "Terminus", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/avr/38.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/38.jpg", :color => 16, :cmc => 6, :rarity => 3, :expansion => "AVR")
	c38.save
	c39 = MtgCard.new(:idInSet => 39, :cardName => "Thraben Valiant", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/39.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/39.jpg", :color => 16, :cmc => 2, :rarity => 1, :expansion => "AVR", :power => 2, :toughness => 1)
	c39.save
	c40 = MtgCard.new(:idInSet => 40, :cardName => "Voice of the Provinces", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/40.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/40.jpg", :color => 16, :cmc => 6, :rarity => 1, :expansion => "AVR", :power => 3, :toughness => 3)
	c40.save
	c41 = MtgCard.new(:idInSet => 41, :cardName => "Zealous Strike", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/avr/41.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/41.jpg", :color => 16, :cmc => 2, :rarity => 1, :expansion => "AVR")
	c41.save
	c42 = MtgCard.new(:idInSet => 42, :cardName => "Alchemist's Apprentice", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/42.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/42.jpg", :color => 8, :cmc => 2, :rarity => 1, :expansion => "AVR", :power => 1, :toughness => 1)
	c42.save
	c43 = MtgCard.new(:idInSet => 43, :cardName => "Amass the Components", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/avr/43.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/43.jpg", :color => 8, :cmc => 4, :rarity => 1, :expansion => "AVR")
	c43.save
	c44 = MtgCard.new(:idInSet => 44, :cardName => "Arcane Melee", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/avr/44.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/44.jpg", :color => 8, :cmc => 5, :rarity => 3, :expansion => "AVR")
	c44.save
	c45 = MtgCard.new(:idInSet => 45, :cardName => "Captain of the Mists", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/45.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/45.jpg", :color => 8, :cmc => 3, :rarity => 3, :expansion => "AVR", :power => 2, :toughness => 3)
	c45.save
	c46 = MtgCard.new(:idInSet => 46, :cardName => "Crippling Chill", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/avr/46.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/46.jpg", :color => 8, :cmc => 3, :rarity => 1, :expansion => "AVR")
	c46.save
	c47 = MtgCard.new(:idInSet => 47, :cardName => "Deadeye Navigator", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/47.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/47.jpg", :color => 8, :cmc => 6, :rarity => 3, :expansion => "AVR", :power => 5, :toughness => 5)
	c47.save
	c48 = MtgCard.new(:idInSet => 48, :cardName => "Devastation Tide", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/avr/48.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/48.jpg", :color => 8, :cmc => 5, :rarity => 3, :expansion => "AVR")
	c48.save
	c49 = MtgCard.new(:idInSet => 49, :cardName => "Dreadwaters", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/avr/49.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/49.jpg", :color => 8, :cmc => 4, :rarity => 1, :expansion => "AVR")
	c49.save
	c50 = MtgCard.new(:idInSet => 50, :cardName => "Elgaud Shieldmate", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/50.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/50.jpg", :color => 8, :cmc => 4, :rarity => 1, :expansion => "AVR", :power => 2, :toughness => 3)
	c50.save
	c51 = MtgCard.new(:idInSet => 51, :cardName => "Favorable Winds", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/avr/51.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/51.jpg", :color => 8, :cmc => 2, :rarity => 2, :expansion => "AVR")
	c51.save
	c52 = MtgCard.new(:idInSet => 52, :cardName => "Fettergeist", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/52.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/52.jpg", :color => 8, :cmc => 3, :rarity => 2, :expansion => "AVR", :power => 3, :toughness => 4)
	c52.save
	c53 = MtgCard.new(:idInSet => 53, :cardName => "Fleeting Distraction", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/avr/53.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/53.jpg", :color => 8, :cmc => 1, :rarity => 1, :expansion => "AVR")
	c53.save
	c54 = MtgCard.new(:idInSet => 54, :cardName => "Galvanic Alchemist", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/54.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/54.jpg", :color => 8, :cmc => 3, :rarity => 1, :expansion => "AVR", :power => 1, :toughness => 4)
	c54.save
	c55 = MtgCard.new(:idInSet => 55, :cardName => "Geist Snatch", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/avr/55.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/55.jpg", :color => 8, :cmc => 4, :rarity => 1, :expansion => "AVR")
	c55.save
	c56 = MtgCard.new(:idInSet => 56, :cardName => "Ghostform", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/avr/56.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/56.jpg", :color => 8, :cmc => 2, :rarity => 1, :expansion => "AVR")
	c56.save
	c57 = MtgCard.new(:idInSet => 57, :cardName => "Ghostly Flicker", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/avr/57.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/57.jpg", :color => 8, :cmc => 3, :rarity => 1, :expansion => "AVR")
	c57.save
	c58 = MtgCard.new(:idInSet => 58, :cardName => "Ghostly Touch", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/avr/58.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/58.jpg", :color => 8, :cmc => 2, :rarity => 2, :expansion => "AVR")
	c58.save
	c59 = MtgCard.new(:idInSet => 59, :cardName => "Gryff Vanguard", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/59.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/59.jpg", :color => 8, :cmc => 5, :rarity => 1, :expansion => "AVR", :power => 3, :toughness => 2)
	c59.save
	c60 = MtgCard.new(:idInSet => 60, :cardName => "Havengul Skaab", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/60.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/60.jpg", :color => 8, :cmc => 6, :rarity => 1, :expansion => "AVR", :power => 4, :toughness => 5)
	c60.save
	c61 = MtgCard.new(:idInSet => 61, :cardName => "Infinite Reflection", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/avr/61.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/61.jpg", :color => 8, :cmc => 6, :rarity => 3, :expansion => "AVR")
	c61.save
	c62 = MtgCard.new(:idInSet => 62, :cardName => "Into the Void", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/avr/62.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/62.jpg", :color => 8, :cmc => 4, :rarity => 2, :expansion => "AVR")
	c62.save
	c63 = MtgCard.new(:idInSet => 63, :cardName => "Latch Seeker", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/63.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/63.jpg", :color => 8, :cmc => 3, :rarity => 2, :expansion => "AVR", :power => 3, :toughness => 1)
	c63.save
	c64 = MtgCard.new(:idInSet => 64, :cardName => "Lone Revenant", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/64.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/64.jpg", :color => 8, :cmc => 5, :rarity => 3, :expansion => "AVR", :power => 4, :toughness => 4)
	c64.save
	c65 = MtgCard.new(:idInSet => 65, :cardName => "Lunar Mystic", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/65.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/65.jpg", :color => 8, :cmc => 4, :rarity => 3, :expansion => "AVR", :power => 2, :toughness => 2)
	c65.save
	c66 = MtgCard.new(:idInSet => 66, :cardName => "Mass Appeal", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/avr/66.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/66.jpg", :color => 8, :cmc => 3, :rarity => 2, :expansion => "AVR")
	c66.save
	c67 = MtgCard.new(:idInSet => 67, :cardName => "Mist Raven", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/67.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/67.jpg", :color => 8, :cmc => 4, :rarity => 1, :expansion => "AVR", :power => 2, :toughness => 2)
	c67.save
	c68 = MtgCard.new(:idInSet => 68, :cardName => "Misthollow Griffin", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/68.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/68.jpg", :color => 8, :cmc => 4, :rarity => 4, :expansion => "AVR", :power => 3, :toughness => 3)
	c68.save
	c69 = MtgCard.new(:idInSet => 69, :cardName => "Nephalia Smuggler", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/69.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/69.jpg", :color => 8, :cmc => 1, :rarity => 2, :expansion => "AVR", :power => 1, :toughness => 1)
	c69.save
	c70 = MtgCard.new(:idInSet => 70, :cardName => "Outwit", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/avr/70.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/70.jpg", :color => 8, :cmc => 1, :rarity => 1, :expansion => "AVR")
	c70.save
	c71 = MtgCard.new(:idInSet => 71, :cardName => "Peel from Reality", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/avr/71.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/71.jpg", :color => 8, :cmc => 2, :rarity => 1, :expansion => "AVR")
	c71.save
	c72 = MtgCard.new(:idInSet => 72, :cardName => "Rotcrown Ghoul", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/72.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/72.jpg", :color => 8, :cmc => 5, :rarity => 1, :expansion => "AVR", :power => 3, :toughness => 3)
	c72.save
	c73 = MtgCard.new(:idInSet => 73, :cardName => "Scrapskin Drake", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/73.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/73.jpg", :color => 8, :cmc => 3, :rarity => 1, :expansion => "AVR", :power => 2, :toughness => 3)
	c73.save
	c74 = MtgCard.new(:idInSet => 74, :cardName => "Second Guess", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/avr/74.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/74.jpg", :color => 8, :cmc => 2, :rarity => 2, :expansion => "AVR")
	c74.save
	c75 = MtgCard.new(:idInSet => 75, :cardName => "Spectral Prison", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/avr/75.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/75.jpg", :color => 8, :cmc => 2, :rarity => 1, :expansion => "AVR")
	c75.save
	c76 = MtgCard.new(:idInSet => 76, :cardName => "Spirit Away", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/avr/76.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/76.jpg", :color => 8, :cmc => 7, :rarity => 3, :expansion => "AVR")
	c76.save
	c77 = MtgCard.new(:idInSet => 77, :cardName => "Stern Mentor", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/77.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/77.jpg", :color => 8, :cmc => 4, :rarity => 2, :expansion => "AVR", :power => 2, :toughness => 2)
	c77.save
	c78 = MtgCard.new(:idInSet => 78, :cardName => "Stolen Goods", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/avr/78.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/78.jpg", :color => 8, :cmc => 4, :rarity => 3, :expansion => "AVR")
	c78.save
	c79 = MtgCard.new(:idInSet => 79, :cardName => "Tamiyo, the Moon Sage", :cardType => 64, :engSRC => "http://magiccards.info/scans/en/avr/79.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/79.jpg", :color => 8, :cmc => 5, :rarity => 4, :expansion => "AVR")
	c79.save
	c80 = MtgCard.new(:idInSet => 80, :cardName => "Tandem Lookout", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/80.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/80.jpg", :color => 8, :cmc => 3, :rarity => 2, :expansion => "AVR", :power => 2, :toughness => 1)
	c80.save
	c81 = MtgCard.new(:idInSet => 81, :cardName => "Temporal Mastery", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/avr/81.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/81.jpg", :color => 8, :cmc => 7, :rarity => 4, :expansion => "AVR")
	c81.save
	c82 = MtgCard.new(:idInSet => 82, :cardName => "Vanishment", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/avr/82.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/82.jpg", :color => 8, :cmc => 5, :rarity => 2, :expansion => "AVR")
	c82.save
	c83 = MtgCard.new(:idInSet => 83, :cardName => "Wingcrafter", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/83.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/83.jpg", :color => 8, :cmc => 1, :rarity => 1, :expansion => "AVR", :power => 1, :toughness => 1)
	c83.save
	c84 = MtgCard.new(:idInSet => 84, :cardName => "Appetite for Brains", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/avr/84.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/84.jpg", :color => 4, :cmc => 1, :rarity => 2, :expansion => "AVR")
	c84.save
	c85 = MtgCard.new(:idInSet => 85, :cardName => "Barter in Blood", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/avr/85.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/85.jpg", :color => 4, :cmc => 4, :rarity => 2, :expansion => "AVR")
	c85.save
	c86 = MtgCard.new(:idInSet => 86, :cardName => "Blood Artist", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/86.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/86.jpg", :color => 4, :cmc => 2, :rarity => 2, :expansion => "AVR", :power => 0, :toughness => 1)
	c86.save
	c87 = MtgCard.new(:idInSet => 87, :cardName => "Bloodflow Connoisseur", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/87.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/87.jpg", :color => 4, :cmc => 3, :rarity => 1, :expansion => "AVR", :power => 1, :toughness => 1)
	c87.save
	c88 = MtgCard.new(:idInSet => 88, :cardName => "Bone Splinters", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/avr/88.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/88.jpg", :color => 4, :cmc => 1, :rarity => 1, :expansion => "AVR")
	c88.save
	c89 = MtgCard.new(:idInSet => 89, :cardName => "Butcher Ghoul", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/89.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/89.jpg", :color => 4, :cmc => 2, :rarity => 1, :expansion => "AVR", :power => 1, :toughness => 1)
	c89.save
	c90 = MtgCard.new(:idInSet => 90, :cardName => "Corpse Traders", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/90.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/90.jpg", :color => 4, :cmc => 4, :rarity => 2, :expansion => "AVR", :power => 3, :toughness => 3)
	c90.save
	c91 = MtgCard.new(:idInSet => 91, :cardName => "Crypt Creeper", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/91.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/91.jpg", :color => 4, :cmc => 2, :rarity => 1, :expansion => "AVR", :power => 2, :toughness => 1)
	c91.save
	c92 = MtgCard.new(:idInSet => 92, :cardName => "Dark Impostor", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/92.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/92.jpg", :color => 4, :cmc => 3, :rarity => 3, :expansion => "AVR", :power => 2, :toughness => 2)
	c92.save
	c93 = MtgCard.new(:idInSet => 93, :cardName => "Death Wind", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/avr/93.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/93.jpg", :color => 4, :cmc => 1, :rarity => 1, :expansion => "AVR")
	c93.save
	c94 = MtgCard.new(:idInSet => 94, :cardName => "Demonic Rising", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/avr/94.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/94.jpg", :color => 4, :cmc => 5, :rarity => 3, :expansion => "AVR")
	c94.save
	c95 = MtgCard.new(:idInSet => 95, :cardName => "Demonic Taskmaster", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/95.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/95.jpg", :color => 4, :cmc => 3, :rarity => 2, :expansion => "AVR", :power => 4, :toughness => 3)
	c95.save
	c96 = MtgCard.new(:idInSet => 96, :cardName => "Demonlord of Ashmouth", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/96.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/96.jpg", :color => 4, :cmc => 4, :rarity => 3, :expansion => "AVR", :power => 5, :toughness => 4)
	c96.save
	c97 = MtgCard.new(:idInSet => 97, :cardName => "Descent into Madness", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/avr/97.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/97.jpg", :color => 4, :cmc => 5, :rarity => 4, :expansion => "AVR")
	c97.save
	c98 = MtgCard.new(:idInSet => 98, :cardName => "Dread Slaver", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/98.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/98.jpg", :color => 4, :cmc => 5, :rarity => 3, :expansion => "AVR", :power => 3, :toughness => 5)
	c98.save
	c99 = MtgCard.new(:idInSet => 99, :cardName => "Driver of the Dead", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/99.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/99.jpg", :color => 4, :cmc => 4, :rarity => 1, :expansion => "AVR", :power => 3, :toughness => 2)
	c99.save
	c100 = MtgCard.new(:idInSet => 100, :cardName => "Essence Harvest", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/avr/100.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/100.jpg", :color => 4, :cmc => 3, :rarity => 1, :expansion => "AVR")
	c100.save
	c101 = MtgCard.new(:idInSet => 101, :cardName => "Evernight Shade", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/101.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/101.jpg", :color => 4, :cmc => 4, :rarity => 2, :expansion => "AVR", :power => 1, :toughness => 1)
	c101.save
	c102 = MtgCard.new(:idInSet => 102, :cardName => "Exquisite Blood", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/avr/102.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/102.jpg", :color => 4, :cmc => 5, :rarity => 3, :expansion => "AVR")
	c102.save
	c103 = MtgCard.new(:idInSet => 103, :cardName => "Ghoulflesh", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/avr/103.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/103.jpg", :color => 4, :cmc => 1, :rarity => 1, :expansion => "AVR")
	c103.save
	c104 = MtgCard.new(:idInSet => 104, :cardName => "Gloom Surgeon", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/104.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/104.jpg", :color => 4, :cmc => 2, :rarity => 3, :expansion => "AVR", :power => 2, :toughness => 1)
	c104.save
	c105 = MtgCard.new(:idInSet => 105, :cardName => "Grave Exchange", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/avr/105.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/105.jpg", :color => 4, :cmc => 6, :rarity => 1, :expansion => "AVR")
	c105.save
	c106 = MtgCard.new(:idInSet => 106, :cardName => "Griselbrand", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/106.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/106.jpg", :color => 4, :cmc => 8, :rarity => 4, :expansion => "AVR", :power => 7, :toughness => 7)
	c106.save
	c107 = MtgCard.new(:idInSet => 107, :cardName => "Harvester of Souls", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/107.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/107.jpg", :color => 4, :cmc => 6, :rarity => 3, :expansion => "AVR", :power => 5, :toughness => 5)
	c107.save
	c108 = MtgCard.new(:idInSet => 108, :cardName => "Homicidal Seclusion", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/avr/108.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/108.jpg", :color => 4, :cmc => 5, :rarity => 2, :expansion => "AVR")
	c108.save
	c109 = MtgCard.new(:idInSet => 109, :cardName => "Human Frailty", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/avr/109.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/109.jpg", :color => 4, :cmc => 1, :rarity => 2, :expansion => "AVR")
	c109.save
	c110 = MtgCard.new(:idInSet => 110, :cardName => "Hunted Ghoul", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/110.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/110.jpg", :color => 4, :cmc => 1, :rarity => 1, :expansion => "AVR", :power => 1, :toughness => 2)
	c110.save
	c111 = MtgCard.new(:idInSet => 111, :cardName => "Killing Wave", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/avr/111.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/111.jpg", :color => 4, :cmc => 1, :rarity => 3, :expansion => "AVR")
	c111.save
	c112 = MtgCard.new(:idInSet => 112, :cardName => "Maalfeld Twins", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/112.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/112.jpg", :color => 4, :cmc => 6, :rarity => 2, :expansion => "AVR", :power => 4, :toughness => 4)
	c112.save
	c113 = MtgCard.new(:idInSet => 113, :cardName => "Marrow Bats", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/113.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/113.jpg", :color => 4, :cmc => 5, :rarity => 2, :expansion => "AVR", :power => 4, :toughness => 1)
	c113.save
	c114 = MtgCard.new(:idInSet => 114, :cardName => "Mental Agony", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/avr/114.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/114.jpg", :color => 4, :cmc => 4, :rarity => 1, :expansion => "AVR")
	c114.save
	c115 = MtgCard.new(:idInSet => 115, :cardName => "Necrobite", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/avr/115.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/115.jpg", :color => 4, :cmc => 3, :rarity => 1, :expansion => "AVR")
	c115.save
	c116 = MtgCard.new(:idInSet => 116, :cardName => "Polluted Dead", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/116.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/116.jpg", :color => 4, :cmc => 5, :rarity => 1, :expansion => "AVR", :power => 3, :toughness => 3)
	c116.save
	c117 = MtgCard.new(:idInSet => 117, :cardName => "Predator's Gambit", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/avr/117.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/117.jpg", :color => 4, :cmc => 1, :rarity => 1, :expansion => "AVR")
	c117.save
	c118 = MtgCard.new(:idInSet => 118, :cardName => "Renegade Demon", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/118.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/118.jpg", :color => 4, :cmc => 5, :rarity => 1, :expansion => "AVR", :power => 5, :toughness => 3)
	c118.save
	c119 = MtgCard.new(:idInSet => 119, :cardName => "Searchlight Geist", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/119.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/119.jpg", :color => 4, :cmc => 3, :rarity => 1, :expansion => "AVR", :power => 2, :toughness => 1)
	c119.save
	c120 = MtgCard.new(:idInSet => 120, :cardName => "Soulcage Fiend", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/120.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/120.jpg", :color => 4, :cmc => 3, :rarity => 1, :expansion => "AVR", :power => 3, :toughness => 2)
	c120.save
	c121 = MtgCard.new(:idInSet => 121, :cardName => "Treacherous Pit-Dweller", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/121.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/121.jpg", :color => 4, :cmc => 2, :rarity => 3, :expansion => "AVR", :power => 4, :toughness => 3)
	c121.save
	c122 = MtgCard.new(:idInSet => 122, :cardName => "Triumph of Cruelty", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/avr/122.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/122.jpg", :color => 4, :cmc => 3, :rarity => 2, :expansion => "AVR")
	c122.save
	c123 = MtgCard.new(:idInSet => 123, :cardName => "Undead Executioner", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/123.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/123.jpg", :color => 4, :cmc => 4, :rarity => 1, :expansion => "AVR", :power => 2, :toughness => 2)
	c123.save
	c124 = MtgCard.new(:idInSet => 124, :cardName => "Unhallowed Pact", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/avr/124.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/124.jpg", :color => 4, :cmc => 3, :rarity => 1, :expansion => "AVR")
	c124.save
	c125 = MtgCard.new(:idInSet => 125, :cardName => "Aggravate", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/avr/125.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/125.jpg", :color => 2, :cmc => 5, :rarity => 2, :expansion => "AVR")
	c125.save
	c126 = MtgCard.new(:idInSet => 126, :cardName => "Archwing Dragon", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/126.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/126.jpg", :color => 2, :cmc => 4, :rarity => 3, :expansion => "AVR", :power => 4, :toughness => 4)
	c126.save
	c127 = MtgCard.new(:idInSet => 127, :cardName => "Banners Raised", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/avr/127.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/127.jpg", :color => 2, :cmc => 1, :rarity => 1, :expansion => "AVR")
	c127.save
	c128 = MtgCard.new(:idInSet => 128, :cardName => "Battle Hymn", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/avr/128.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/128.jpg", :color => 2, :cmc => 2, :rarity => 1, :expansion => "AVR")
	c128.save
	c129 = MtgCard.new(:idInSet => 129, :cardName => "Bonfire of the Damned", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/avr/129.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/129.jpg", :color => 2, :cmc => 1, :rarity => 4, :expansion => "AVR")
	c129.save
	c130 = MtgCard.new(:idInSet => 130, :cardName => "Burn at the Stake", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/avr/130.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/130.jpg", :color => 2, :cmc => 5, :rarity => 3, :expansion => "AVR")
	c130.save
	c131 = MtgCard.new(:idInSet => 131, :cardName => "Dangerous Wager", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/avr/131.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/131.jpg", :color => 2, :cmc => 2, :rarity => 1, :expansion => "AVR")
	c131.save
	c132 = MtgCard.new(:idInSet => 132, :cardName => "Demolish", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/avr/132.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/132.jpg", :color => 2, :cmc => 4, :rarity => 1, :expansion => "AVR")
	c132.save
	c133 = MtgCard.new(:idInSet => 133, :cardName => "Dual Casting", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/avr/133.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/133.jpg", :color => 2, :cmc => 2, :rarity => 3, :expansion => "AVR")
	c133.save
	c134 = MtgCard.new(:idInSet => 134, :cardName => "Falkenrath Exterminator", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/134.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/134.jpg", :color => 2, :cmc => 2, :rarity => 2, :expansion => "AVR", :power => 1, :toughness => 1)
	c134.save
	c135 = MtgCard.new(:idInSet => 135, :cardName => "Fervent Cathar", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/135.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/135.jpg", :color => 2, :cmc => 3, :rarity => 1, :expansion => "AVR", :power => 2, :toughness => 1)
	c135.save
	c136 = MtgCard.new(:idInSet => 136, :cardName => "Gang of Devils", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/136.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/136.jpg", :color => 2, :cmc => 6, :rarity => 2, :expansion => "AVR", :power => 3, :toughness => 3)
	c136.save
	c137 = MtgCard.new(:idInSet => 137, :cardName => "Guise of Fire", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/avr/137.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/137.jpg", :color => 2, :cmc => 1, :rarity => 1, :expansion => "AVR")
	c137.save
	c138 = MtgCard.new(:idInSet => 138, :cardName => "Hanweir Lancer", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/138.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/138.jpg", :color => 2, :cmc => 3, :rarity => 1, :expansion => "AVR", :power => 2, :toughness => 2)
	c138.save
	c139 = MtgCard.new(:idInSet => 139, :cardName => "Havengul Vampire", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/139.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/139.jpg", :color => 2, :cmc => 4, :rarity => 2, :expansion => "AVR", :power => 2, :toughness => 2)
	c139.save
	c140 = MtgCard.new(:idInSet => 140, :cardName => "Heirs of Stromkirk", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/140.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/140.jpg", :color => 2, :cmc => 4, :rarity => 1, :expansion => "AVR", :power => 2, :toughness => 2)
	c140.save
	c141 = MtgCard.new(:idInSet => 141, :cardName => "Hound of Griselbrand", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/141.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/141.jpg", :color => 2, :cmc => 4, :rarity => 3, :expansion => "AVR", :power => 2, :toughness => 2)
	c141.save
	c142 = MtgCard.new(:idInSet => 142, :cardName => "Kessig Malcontents", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/142.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/142.jpg", :color => 2, :cmc => 3, :rarity => 2, :expansion => "AVR", :power => 3, :toughness => 1)
	c142.save
	c143 = MtgCard.new(:idInSet => 143, :cardName => "Kruin Striker", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/143.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/143.jpg", :color => 2, :cmc => 2, :rarity => 1, :expansion => "AVR", :power => 2, :toughness => 1)
	c143.save
	c144 = MtgCard.new(:idInSet => 144, :cardName => "Lightning Mauler", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/144.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/144.jpg", :color => 2, :cmc => 2, :rarity => 2, :expansion => "AVR", :power => 2, :toughness => 1)
	c144.save
	c145 = MtgCard.new(:idInSet => 145, :cardName => "Lightning Prowess", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/avr/145.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/145.jpg", :color => 2, :cmc => 3, :rarity => 2, :expansion => "AVR")
	c145.save
	c146 = MtgCard.new(:idInSet => 146, :cardName => "Mad Prophet", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/146.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/146.jpg", :color => 2, :cmc => 4, :rarity => 1, :expansion => "AVR", :power => 2, :toughness => 2)
	c146.save
	c147 = MtgCard.new(:idInSet => 147, :cardName => "Malicious Intent", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/avr/147.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/147.jpg", :color => 2, :cmc => 2, :rarity => 1, :expansion => "AVR")
	c147.save
	c148 = MtgCard.new(:idInSet => 148, :cardName => "Malignus", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/148.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/148.jpg", :color => 2, :cmc => 5, :rarity => 4, :expansion => "AVR", :power => 0, :toughness => 0)
	c148.save
	c149 = MtgCard.new(:idInSet => 149, :cardName => "Pillar of Flame", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/avr/149.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/149.jpg", :color => 2, :cmc => 1, :rarity => 1, :expansion => "AVR")
	c149.save
	c150 = MtgCard.new(:idInSet => 150, :cardName => "Raging Poltergeist", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/150.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/150.jpg", :color => 2, :cmc => 5, :rarity => 1, :expansion => "AVR", :power => 6, :toughness => 1)
	c150.save
	c151 = MtgCard.new(:idInSet => 151, :cardName => "Reforge the Soul", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/avr/151.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/151.jpg", :color => 2, :cmc => 5, :rarity => 3, :expansion => "AVR")
	c151.save
	c152 = MtgCard.new(:idInSet => 152, :cardName => "Riot Ringleader", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/152.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/152.jpg", :color => 2, :cmc => 3, :rarity => 1, :expansion => "AVR", :power => 2, :toughness => 2)
	c152.save
	c153 = MtgCard.new(:idInSet => 153, :cardName => "Rite of Ruin", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/avr/153.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/153.jpg", :color => 2, :cmc => 7, :rarity => 3, :expansion => "AVR")
	c153.save
	c154 = MtgCard.new(:idInSet => 154, :cardName => "Rush of Blood", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/avr/154.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/154.jpg", :color => 2, :cmc => 3, :rarity => 2, :expansion => "AVR")
	c154.save
	c155 = MtgCard.new(:idInSet => 155, :cardName => "Scalding Devil", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/155.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/155.jpg", :color => 2, :cmc => 2, :rarity => 1, :expansion => "AVR", :power => 1, :toughness => 1)
	c155.save
	c156 = MtgCard.new(:idInSet => 156, :cardName => "Somberwald Vigilante", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/156.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/156.jpg", :color => 2, :cmc => 1, :rarity => 1, :expansion => "AVR", :power => 1, :toughness => 1)
	c156.save
	c157 = MtgCard.new(:idInSet => 157, :cardName => "Stonewright", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/157.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/157.jpg", :color => 2, :cmc => 1, :rarity => 2, :expansion => "AVR", :power => 1, :toughness => 1)
	c157.save
	c158 = MtgCard.new(:idInSet => 158, :cardName => "Thatcher Revolt", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/avr/158.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/158.jpg", :color => 2, :cmc => 3, :rarity => 1, :expansion => "AVR")
	c158.save
	c159 = MtgCard.new(:idInSet => 159, :cardName => "Thunderbolt", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/avr/159.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/159.jpg", :color => 2, :cmc => 2, :rarity => 1, :expansion => "AVR")
	c159.save
	c160 = MtgCard.new(:idInSet => 160, :cardName => "Thunderous Wrath", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/avr/160.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/160.jpg", :color => 2, :cmc => 6, :rarity => 2, :expansion => "AVR")
	c160.save
	c161 = MtgCard.new(:idInSet => 161, :cardName => "Tibalt, the Fiend-Blooded", :cardType => 64, :engSRC => "http://magiccards.info/scans/en/avr/161.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/161.jpg", :color => 2, :cmc => 2, :rarity => 4, :expansion => "AVR")
	c161.save
	c162 = MtgCard.new(:idInSet => 162, :cardName => "Tyrant of Discord", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/162.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/162.jpg", :color => 2, :cmc => 7, :rarity => 3, :expansion => "AVR", :power => 7, :toughness => 7)
	c162.save
	c163 = MtgCard.new(:idInSet => 163, :cardName => "Uncanny Speed", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/avr/163.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/163.jpg", :color => 2, :cmc => 2, :rarity => 1, :expansion => "AVR")
	c163.save
	c164 = MtgCard.new(:idInSet => 164, :cardName => "Vexing Devil", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/164.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/164.jpg", :color => 2, :cmc => 1, :rarity => 3, :expansion => "AVR", :power => 4, :toughness => 3)
	c164.save
	c165 = MtgCard.new(:idInSet => 165, :cardName => "Vigilante Justice", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/avr/165.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/165.jpg", :color => 2, :cmc => 4, :rarity => 2, :expansion => "AVR")
	c165.save
	c166 = MtgCard.new(:idInSet => 166, :cardName => "Zealous Conscripts", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/166.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/166.jpg", :color => 2, :cmc => 5, :rarity => 3, :expansion => "AVR", :power => 3, :toughness => 3)
	c166.save
	c167 = MtgCard.new(:idInSet => 167, :cardName => "Abundant Growth", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/avr/167.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/167.jpg", :color => 1, :cmc => 1, :rarity => 1, :expansion => "AVR")
	c167.save
	c168 = MtgCard.new(:idInSet => 168, :cardName => "Blessings of Nature", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/avr/168.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/168.jpg", :color => 1, :cmc => 5, :rarity => 2, :expansion => "AVR")
	c168.save
	c169 = MtgCard.new(:idInSet => 169, :cardName => "Borderland Ranger", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/169.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/169.jpg", :color => 1, :cmc => 3, :rarity => 1, :expansion => "AVR", :power => 2, :toughness => 2)
	c169.save
	c170 = MtgCard.new(:idInSet => 170, :cardName => "Bower Passage", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/avr/170.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/170.jpg", :color => 1, :cmc => 2, :rarity => 2, :expansion => "AVR")
	c170.save
	c171 = MtgCard.new(:idInSet => 171, :cardName => "Champion of Lambholt", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/171.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/171.jpg", :color => 1, :cmc => 3, :rarity => 3, :expansion => "AVR", :power => 1, :toughness => 1)
	c171.save
	c172 = MtgCard.new(:idInSet => 172, :cardName => "Craterhoof Behemoth", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/172.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/172.jpg", :color => 1, :cmc => 8, :rarity => 4, :expansion => "AVR", :power => 5, :toughness => 5)
	c172.save
	c173 = MtgCard.new(:idInSet => 173, :cardName => "Descendants' Path", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/avr/173.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/173.jpg", :color => 1, :cmc => 3, :rarity => 3, :expansion => "AVR")
	c173.save
	c174 = MtgCard.new(:idInSet => 174, :cardName => "Diregraf Escort", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/174.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/174.jpg", :color => 1, :cmc => 1, :rarity => 1, :expansion => "AVR", :power => 1, :toughness => 1)
	c174.save
	c175 = MtgCard.new(:idInSet => 175, :cardName => "Druid's Familiar", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/175.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/175.jpg", :color => 1, :cmc => 4, :rarity => 2, :expansion => "AVR", :power => 2, :toughness => 2)
	c175.save
	c176 = MtgCard.new(:idInSet => 176, :cardName => "Druids' Repository", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/avr/176.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/176.jpg", :color => 1, :cmc => 3, :rarity => 3, :expansion => "AVR")
	c176.save
	c177 = MtgCard.new(:idInSet => 177, :cardName => "Eaten by Spiders", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/avr/177.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/177.jpg", :color => 1, :cmc => 3, :rarity => 2, :expansion => "AVR")
	c177.save
	c178 = MtgCard.new(:idInSet => 178, :cardName => "Flowering Lumberknot", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/178.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/178.jpg", :color => 1, :cmc => 4, :rarity => 1, :expansion => "AVR", :power => 5, :toughness => 5)
	c178.save
	c179 = MtgCard.new(:idInSet => 179, :cardName => "Geist Trappers", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/179.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/179.jpg", :color => 1, :cmc => 5, :rarity => 1, :expansion => "AVR", :power => 3, :toughness => 5)
	c179.save
	c180 = MtgCard.new(:idInSet => 180, :cardName => "Gloomwidow", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/180.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/180.jpg", :color => 1, :cmc => 3, :rarity => 2, :expansion => "AVR", :power => 3, :toughness => 3)
	c180.save
	c181 = MtgCard.new(:idInSet => 181, :cardName => "Grounded", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/avr/181.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/181.jpg", :color => 1, :cmc => 2, :rarity => 1, :expansion => "AVR")
	c181.save
	c182 = MtgCard.new(:idInSet => 182, :cardName => "Howlgeist", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/182.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/182.jpg", :color => 1, :cmc => 6, :rarity => 2, :expansion => "AVR", :power => 4, :toughness => 2)
	c182.save
	c183 = MtgCard.new(:idInSet => 183, :cardName => "Joint Assault", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/avr/183.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/183.jpg", :color => 1, :cmc => 1, :rarity => 1, :expansion => "AVR")
	c183.save
	c184 = MtgCard.new(:idInSet => 184, :cardName => "Lair Delve", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/avr/184.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/184.jpg", :color => 1, :cmc => 3, :rarity => 1, :expansion => "AVR")
	c184.save
	c185 = MtgCard.new(:idInSet => 185, :cardName => "Natural End", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/avr/185.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/185.jpg", :color => 1, :cmc => 3, :rarity => 1, :expansion => "AVR")
	c185.save
	c186 = MtgCard.new(:idInSet => 186, :cardName => "Nettle Swine", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/186.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/186.jpg", :color => 1, :cmc => 4, :rarity => 1, :expansion => "AVR", :power => 4, :toughness => 3)
	c186.save
	c187 = MtgCard.new(:idInSet => 187, :cardName => "Nightshade Peddler", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/187.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/187.jpg", :color => 1, :cmc => 2, :rarity => 1, :expansion => "AVR", :power => 1, :toughness => 1)
	c187.save
	c188 = MtgCard.new(:idInSet => 188, :cardName => "Pathbreaker Wurm", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/188.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/188.jpg", :color => 1, :cmc => 6, :rarity => 1, :expansion => "AVR", :power => 6, :toughness => 4)
	c188.save
	c189 = MtgCard.new(:idInSet => 189, :cardName => "Primal Surge", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/avr/189.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/189.jpg", :color => 1, :cmc => 10, :rarity => 4, :expansion => "AVR")
	c189.save
	c190 = MtgCard.new(:idInSet => 190, :cardName => "Rain of Thorns", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/avr/190.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/190.jpg", :color => 1, :cmc => 6, :rarity => 2, :expansion => "AVR")
	c190.save
	c191 = MtgCard.new(:idInSet => 191, :cardName => "Revenge of the Hunted", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/avr/191.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/191.jpg", :color => 1, :cmc => 6, :rarity => 3, :expansion => "AVR")
	c191.save
	c192 = MtgCard.new(:idInSet => 192, :cardName => "Sheltering Word", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/avr/192.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/192.jpg", :color => 1, :cmc => 2, :rarity => 1, :expansion => "AVR")
	c192.save
	c193 = MtgCard.new(:idInSet => 193, :cardName => "Snare the Skies", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/avr/193.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/193.jpg", :color => 1, :cmc => 1, :rarity => 1, :expansion => "AVR")
	c193.save
	c194 = MtgCard.new(:idInSet => 194, :cardName => "Somberwald Sage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/194.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/194.jpg", :color => 1, :cmc => 3, :rarity => 3, :expansion => "AVR", :power => 0, :toughness => 1)
	c194.save
	c195 = MtgCard.new(:idInSet => 195, :cardName => "Soul of the Harvest", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/195.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/195.jpg", :color => 1, :cmc => 6, :rarity => 3, :expansion => "AVR", :power => 6, :toughness => 6)
	c195.save
	c196 = MtgCard.new(:idInSet => 196, :cardName => "Terrifying Presence", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/avr/196.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/196.jpg", :color => 1, :cmc => 2, :rarity => 1, :expansion => "AVR")
	c196.save
	c197 = MtgCard.new(:idInSet => 197, :cardName => "Timberland Guide", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/197.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/197.jpg", :color => 1, :cmc => 2, :rarity => 1, :expansion => "AVR", :power => 1, :toughness => 1)
	c197.save
	c198 = MtgCard.new(:idInSet => 198, :cardName => "Triumph of Ferocity", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/avr/198.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/198.jpg", :color => 1, :cmc => 3, :rarity => 2, :expansion => "AVR")
	c198.save
	c199 = MtgCard.new(:idInSet => 199, :cardName => "Trusted Forcemage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/199.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/199.jpg", :color => 1, :cmc => 3, :rarity => 1, :expansion => "AVR", :power => 2, :toughness => 2)
	c199.save
	c200 = MtgCard.new(:idInSet => 200, :cardName => "Ulvenwald Tracker", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/200.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/200.jpg", :color => 1, :cmc => 1, :rarity => 3, :expansion => "AVR", :power => 1, :toughness => 1)
	c200.save
	c201 = MtgCard.new(:idInSet => 201, :cardName => "Vorstclaw", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/201.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/201.jpg", :color => 1, :cmc => 6, :rarity => 2, :expansion => "AVR", :power => 7, :toughness => 7)
	c201.save
	c202 = MtgCard.new(:idInSet => 202, :cardName => "Wandering Wolf", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/202.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/202.jpg", :color => 1, :cmc => 2, :rarity => 1, :expansion => "AVR", :power => 2, :toughness => 1)
	c202.save
	c203 = MtgCard.new(:idInSet => 203, :cardName => "Wild Defiance", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/avr/203.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/203.jpg", :color => 1, :cmc => 3, :rarity => 3, :expansion => "AVR")
	c203.save
	c204 = MtgCard.new(:idInSet => 204, :cardName => "Wildwood Geist", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/204.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/204.jpg", :color => 1, :cmc => 5, :rarity => 1, :expansion => "AVR", :power => 3, :toughness => 3)
	c204.save
	c205 = MtgCard.new(:idInSet => 205, :cardName => "Wolfir Avenger", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/205.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/205.jpg", :color => 1, :cmc => 3, :rarity => 2, :expansion => "AVR", :power => 3, :toughness => 3)
	c205.save
	c206 = MtgCard.new(:idInSet => 206, :cardName => "Wolfir Silverheart", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/206.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/206.jpg", :color => 1, :cmc => 5, :rarity => 3, :expansion => "AVR", :power => 4, :toughness => 4)
	c206.save
	c207 = MtgCard.new(:idInSet => 207, :cardName => "Yew Spirit", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/207.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/207.jpg", :color => 1, :cmc => 5, :rarity => 2, :expansion => "AVR", :power => 3, :toughness => 3)
	c207.save
	c208 = MtgCard.new(:idInSet => 208, :cardName => "Bruna, Light of Alabaster", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/208.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/208.jpg", :color => 24, :cmc => 6, :rarity => 4, :expansion => "AVR", :power => 5, :toughness => 5)
	c208.save
	c209 = MtgCard.new(:idInSet => 209, :cardName => "Gisela, Blade of Goldnight", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/209.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/209.jpg", :color => 18, :cmc => 7, :rarity => 4, :expansion => "AVR", :power => 5, :toughness => 5)
	c209.save
	c210 = MtgCard.new(:idInSet => 210, :cardName => "Sigarda, Host of Herons", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/avr/210.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/210.jpg", :color => 17, :cmc => 5, :rarity => 4, :expansion => "AVR", :power => 5, :toughness => 5)
	c210.save
	c211 = MtgCard.new(:idInSet => 211, :cardName => "Angel's Tomb", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/avr/211.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/211.jpg", :color => 0, :cmc => 3, :rarity => 2, :expansion => "AVR")
	c211.save
	c212 = MtgCard.new(:idInSet => 212, :cardName => "Angelic Armaments", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/avr/212.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/212.jpg", :color => 0, :cmc => 3, :rarity => 2, :expansion => "AVR")
	c212.save
	c213 = MtgCard.new(:idInSet => 213, :cardName => "Bladed Bracers", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/avr/213.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/213.jpg", :color => 0, :cmc => 1, :rarity => 1, :expansion => "AVR")
	c213.save
	c214 = MtgCard.new(:idInSet => 214, :cardName => "Conjurer's Closet", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/avr/214.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/214.jpg", :color => 0, :cmc => 5, :rarity => 3, :expansion => "AVR")
	c214.save
	c215 = MtgCard.new(:idInSet => 215, :cardName => "Gallows at Willow Hill", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/avr/215.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/215.jpg", :color => 0, :cmc => 3, :rarity => 3, :expansion => "AVR")
	c215.save
	c216 = MtgCard.new(:idInSet => 216, :cardName => "Haunted Guardian", :cardType => 9, :engSRC => "http://magiccards.info/scans/en/avr/216.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/216.jpg", :color => 0, :cmc => 2, :rarity => 2, :expansion => "AVR", :power => 2, :toughness => 1)
	c216.save
	c217 = MtgCard.new(:idInSet => 217, :cardName => "Moonsilver Spear", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/avr/217.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/217.jpg", :color => 0, :cmc => 4, :rarity => 3, :expansion => "AVR")
	c217.save
	c218 = MtgCard.new(:idInSet => 218, :cardName => "Narstad Scrapper", :cardType => 9, :engSRC => "http://magiccards.info/scans/en/avr/218.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/218.jpg", :color => 0, :cmc => 5, :rarity => 1, :expansion => "AVR", :power => 3, :toughness => 3)
	c218.save
	c219 = MtgCard.new(:idInSet => 219, :cardName => "Otherworld Atlas", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/avr/219.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/219.jpg", :color => 0, :cmc => 4, :rarity => 3, :expansion => "AVR")
	c219.save
	c220 = MtgCard.new(:idInSet => 220, :cardName => "Scroll of Avacyn", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/avr/220.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/220.jpg", :color => 0, :cmc => 1, :rarity => 1, :expansion => "AVR")
	c220.save
	c221 = MtgCard.new(:idInSet => 221, :cardName => "Scroll of Griselbrand", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/avr/221.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/221.jpg", :color => 0, :cmc => 1, :rarity => 1, :expansion => "AVR")
	c221.save
	c222 = MtgCard.new(:idInSet => 222, :cardName => "Tormentor's Trident", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/avr/222.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/222.jpg", :color => 0, :cmc => 2, :rarity => 2, :expansion => "AVR")
	c222.save
	c223 = MtgCard.new(:idInSet => 223, :cardName => "Vanguard's Shield", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/avr/223.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/223.jpg", :color => 0, :cmc => 2, :rarity => 1, :expansion => "AVR")
	c223.save
	c224 = MtgCard.new(:idInSet => 224, :cardName => "Vessel of Endless Rest", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/avr/224.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/224.jpg", :color => 0, :cmc => 3, :rarity => 2, :expansion => "AVR")
	c224.save
	c225 = MtgCard.new(:idInSet => 225, :cardName => "Alchemist's Refuge", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/avr/225.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/225.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "AVR")
	c225.save
	c226 = MtgCard.new(:idInSet => 226, :cardName => "Cavern of Souls", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/avr/226.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/226.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "AVR")
	c226.save
	c227 = MtgCard.new(:idInSet => 227, :cardName => "Desolate Lighthouse", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/avr/227.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/227.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "AVR")
	c227.save
	c228 = MtgCard.new(:idInSet => 228, :cardName => "Seraph Sanctuary", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/avr/228.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/228.jpg", :color => 0, :cmc => 0, :rarity => 1, :expansion => "AVR")
	c228.save
	c229 = MtgCard.new(:idInSet => 229, :cardName => "Slayers' Stronghold", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/avr/229.jpg", :chiSRC => "http://magiccards.info/scans/cn/avr/229.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "AVR")
	c229.save
end