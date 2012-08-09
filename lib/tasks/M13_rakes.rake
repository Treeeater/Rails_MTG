desc "Import M13 cards."
task :import_M13_cards => :environment do

	c1 = MtgCard.new(:idInSet => 1, :cardName => "Ajani, Caller of the Pride", :cardType => 64, :engSRC => "http://magiccards.info/scans/en/m13/1.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/1.jpg", :color => 16, :cmc => 3, :rarity => 4, :expansion => "M13")
	c1.save
	c2 = MtgCard.new(:idInSet => 2, :cardName => "Ajani's Sunstriker", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/2.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/2.jpg", :color => 16, :cmc => 2, :rarity => 1, :expansion => "M13", :power => 2, :toughness => 2)
	c2.save
	c3 = MtgCard.new(:idInSet => 3, :cardName => "Angel's Mercy", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/m13/3.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/3.jpg", :color => 16, :cmc => 4, :rarity => 1, :expansion => "M13")
	c3.save
	c4 = MtgCard.new(:idInSet => 4, :cardName => "Angelic Benediction", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/m13/4.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/4.jpg", :color => 16, :cmc => 4, :rarity => 2, :expansion => "M13")
	c4.save
	c5 = MtgCard.new(:idInSet => 5, :cardName => "Attended Knight", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/5.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/5.jpg", :color => 16, :cmc => 3, :rarity => 1, :expansion => "M13", :power => 2, :toughness => 2)
	c5.save
	c6 = MtgCard.new(:idInSet => 6, :cardName => "Aven Squire", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/6.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/6.jpg", :color => 16, :cmc => 2, :rarity => 1, :expansion => "M13", :power => 1, :toughness => 1)
	c6.save
	c7 = MtgCard.new(:idInSet => 7, :cardName => "Battleflight Eagle", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/7.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/7.jpg", :color => 16, :cmc => 5, :rarity => 1, :expansion => "M13", :power => 2, :toughness => 2)
	c7.save
	c8 = MtgCard.new(:idInSet => 8, :cardName => "Captain of the Watch", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/8.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/8.jpg", :color => 16, :cmc => 6, :rarity => 3, :expansion => "M13", :power => 3, :toughness => 3)
	c8.save
	c9 = MtgCard.new(:idInSet => 9, :cardName => "Captain's Call", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/9.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/9.jpg", :color => 16, :cmc => 4, :rarity => 1, :expansion => "M13")
	c9.save
	c10 = MtgCard.new(:idInSet => 10, :cardName => "Crusader of Odric", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/10.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/10.jpg", :color => 16, :cmc => 3, :rarity => 2, :expansion => "M13", :power => 0, :toughness => 0)
	c10.save
	c11 = MtgCard.new(:idInSet => 11, :cardName => "Divine Favor", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/m13/11.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/11.jpg", :color => 16, :cmc => 2, :rarity => 1, :expansion => "M13")
	c11.save
	c12 = MtgCard.new(:idInSet => 12, :cardName => "Divine Verdict", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/m13/12.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/12.jpg", :color => 16, :cmc => 4, :rarity => 1, :expansion => "M13")
	c12.save
	c13 = MtgCard.new(:idInSet => 13, :cardName => "Erase", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/m13/13.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/13.jpg", :color => 16, :cmc => 1, :rarity => 1, :expansion => "M13")
	c13.save
	c14 = MtgCard.new(:idInSet => 14, :cardName => "Faith's Reward", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/m13/14.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/14.jpg", :color => 16, :cmc => 4, :rarity => 3, :expansion => "M13")
	c14.save
	c15 = MtgCard.new(:idInSet => 15, :cardName => "Glorious Charge", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/m13/15.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/15.jpg", :color => 16, :cmc => 2, :rarity => 1, :expansion => "M13")
	c15.save
	c16 = MtgCard.new(:idInSet => 16, :cardName => "Griffin Protector", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/16.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/16.jpg", :color => 16, :cmc => 4, :rarity => 1, :expansion => "M13", :power => 2, :toughness => 3)
	c16.save
	c17 = MtgCard.new(:idInSet => 17, :cardName => "Guardian Lions", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/17.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/17.jpg", :color => 16, :cmc => 5, :rarity => 1, :expansion => "M13", :power => 1, :toughness => 6)
	c17.save
	c18 = MtgCard.new(:idInSet => 18, :cardName => "Guardians of Akrasa", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/18.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/18.jpg", :color => 16, :cmc => 3, :rarity => 1, :expansion => "M13", :power => 0, :toughness => 4)
	c18.save
	c19 = MtgCard.new(:idInSet => 19, :cardName => "Healer of the Pride", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/19.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/19.jpg", :color => 16, :cmc => 4, :rarity => 2, :expansion => "M13", :power => 2, :toughness => 3)
	c19.save
	c20 = MtgCard.new(:idInSet => 20, :cardName => "Intrepid Hero", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/20.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/20.jpg", :color => 16, :cmc => 3, :rarity => 3, :expansion => "M13", :power => 1, :toughness => 1)
	c20.save
	c21 = MtgCard.new(:idInSet => 21, :cardName => "Knight of Glory", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/21.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/21.jpg", :color => 16, :cmc => 2, :rarity => 2, :expansion => "M13", :power => 2, :toughness => 1)
	c21.save
	c22 = MtgCard.new(:idInSet => 22, :cardName => "Oblivion Ring", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/m13/22.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/22.jpg", :color => 16, :cmc => 3, :rarity => 2, :expansion => "M13")
	c22.save
	c23 = MtgCard.new(:idInSet => 23, :cardName => "Odric, Master Tactician", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/23.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/23.jpg", :color => 16, :cmc => 4, :rarity => 3, :expansion => "M13", :power => 3, :toughness => 4)
	c23.save
	c24 = MtgCard.new(:idInSet => 24, :cardName => "Pacifism", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/m13/24.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/24.jpg", :color => 16, :cmc => 2, :rarity => 1, :expansion => "M13")
	c24.save
	c25 = MtgCard.new(:idInSet => 25, :cardName => "Pillarfield Ox", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/25.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/25.jpg", :color => 16, :cmc => 4, :rarity => 1, :expansion => "M13", :power => 2, :toughness => 4)
	c25.save
	c26 = MtgCard.new(:idInSet => 26, :cardName => "Planar Cleansing", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/26.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/26.jpg", :color => 16, :cmc => 6, :rarity => 3, :expansion => "M13")
	c26.save
	c27 = MtgCard.new(:idInSet => 27, :cardName => "Prized Elephant", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/27.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/27.jpg", :color => 16, :cmc => 4, :rarity => 2, :expansion => "M13", :power => 3, :toughness => 3)
	c27.save
	c28 = MtgCard.new(:idInSet => 28, :cardName => "Rain of Blades", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/m13/28.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/28.jpg", :color => 16, :cmc => 1, :rarity => 2, :expansion => "M13")
	c28.save
	c29 = MtgCard.new(:idInSet => 29, :cardName => "Rhox Faithmender", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/29.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/29.jpg", :color => 16, :cmc => 4, :rarity => 3, :expansion => "M13", :power => 1, :toughness => 5)
	c29.save
	c30 = MtgCard.new(:idInSet => 30, :cardName => "Safe Passage", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/m13/30.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/30.jpg", :color => 16, :cmc => 3, :rarity => 1, :expansion => "M13")
	c30.save
	c31 = MtgCard.new(:idInSet => 31, :cardName => "Serra Angel", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/31.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/31.jpg", :color => 16, :cmc => 5, :rarity => 2, :expansion => "M13", :power => 4, :toughness => 4)
	c31.save
	c32 = MtgCard.new(:idInSet => 32, :cardName => "Serra Avatar", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/32.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/32.jpg", :color => 16, :cmc => 7, :rarity => 4, :expansion => "M13", :power => 0, :toughness => 0)
	c32.save
	c33 = MtgCard.new(:idInSet => 33, :cardName => "Serra Avenger", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/33.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/33.jpg", :color => 16, :cmc => 2, :rarity => 3, :expansion => "M13", :power => 3, :toughness => 3)
	c33.save
	c34 = MtgCard.new(:idInSet => 34, :cardName => "Show of Valor", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/m13/34.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/34.jpg", :color => 16, :cmc => 2, :rarity => 1, :expansion => "M13")
	c34.save
	c35 = MtgCard.new(:idInSet => 35, :cardName => "Silvercoat Lion", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/35.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/35.jpg", :color => 16, :cmc => 2, :rarity => 1, :expansion => "M13", :power => 2, :toughness => 2)
	c35.save
	c36 = MtgCard.new(:idInSet => 36, :cardName => "Sublime Archangel", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/36.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/36.jpg", :color => 16, :cmc => 4, :rarity => 4, :expansion => "M13", :power => 4, :toughness => 3)
	c36.save
	c37 = MtgCard.new(:idInSet => 37, :cardName => "Touch of the Eternal", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/m13/37.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/37.jpg", :color => 16, :cmc => 7, :rarity => 3, :expansion => "M13")
	c37.save
	c38 = MtgCard.new(:idInSet => 38, :cardName => "War Falcon", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/38.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/38.jpg", :color => 16, :cmc => 1, :rarity => 1, :expansion => "M13", :power => 2, :toughness => 1)
	c38.save
	c39 = MtgCard.new(:idInSet => 39, :cardName => "War Priest of Thune", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/39.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/39.jpg", :color => 16, :cmc => 2, :rarity => 2, :expansion => "M13", :power => 2, :toughness => 2)
	c39.save
	c40 = MtgCard.new(:idInSet => 40, :cardName => "Warclamp Mastiff", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/40.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/40.jpg", :color => 16, :cmc => 1, :rarity => 1, :expansion => "M13", :power => 1, :toughness => 1)
	c40.save
	c41 = MtgCard.new(:idInSet => 41, :cardName => "Archaeomancer", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/41.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/41.jpg", :color => 8, :cmc => 4, :rarity => 1, :expansion => "M13", :power => 1, :toughness => 2)
	c41.save
	c42 = MtgCard.new(:idInSet => 42, :cardName => "Arctic Aven", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/42.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/42.jpg", :color => 8, :cmc => 3, :rarity => 2, :expansion => "M13", :power => 2, :toughness => 1)
	c42.save
	c43 = MtgCard.new(:idInSet => 43, :cardName => "Augur of Bolas", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/43.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/43.jpg", :color => 8, :cmc => 2, :rarity => 2, :expansion => "M13", :power => 1, :toughness => 3)
	c43.save
	c44 = MtgCard.new(:idInSet => 44, :cardName => "Battle of Wits", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/m13/44.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/44.jpg", :color => 8, :cmc => 5, :rarity => 3, :expansion => "M13")
	c44.save
	c45 = MtgCard.new(:idInSet => 45, :cardName => "Clone", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/45.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/45.jpg", :color => 8, :cmc => 4, :rarity => 3, :expansion => "M13", :power => 0, :toughness => 0)
	c45.save
	c46 = MtgCard.new(:idInSet => 46, :cardName => "Courtly Provocateur", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/46.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/46.jpg", :color => 8, :cmc => 3, :rarity => 2, :expansion => "M13", :power => 1, :toughness => 1)
	c46.save
	c47 = MtgCard.new(:idInSet => 47, :cardName => "Divination", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/47.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/47.jpg", :color => 8, :cmc => 3, :rarity => 1, :expansion => "M13")
	c47.save
	c48 = MtgCard.new(:idInSet => 48, :cardName => "Downpour", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/m13/48.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/48.jpg", :color => 8, :cmc => 2, :rarity => 1, :expansion => "M13")
	c48.save
	c49 = MtgCard.new(:idInSet => 49, :cardName => "Encrust", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/m13/49.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/49.jpg", :color => 8, :cmc => 3, :rarity => 1, :expansion => "M13")
	c49.save
	c50 = MtgCard.new(:idInSet => 50, :cardName => "Essence Scatter", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/m13/50.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/50.jpg", :color => 8, :cmc => 2, :rarity => 1, :expansion => "M13")
	c50.save
	c51 = MtgCard.new(:idInSet => 51, :cardName => "Faerie Invaders", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/51.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/51.jpg", :color => 8, :cmc => 5, :rarity => 1, :expansion => "M13", :power => 3, :toughness => 3)
	c51.save
	c52 = MtgCard.new(:idInSet => 52, :cardName => "Fog Bank", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/52.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/52.jpg", :color => 8, :cmc => 2, :rarity => 2, :expansion => "M13", :power => 0, :toughness => 2)
	c52.save
	c53 = MtgCard.new(:idInSet => 53, :cardName => "Harbor Serpent", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/53.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/53.jpg", :color => 8, :cmc => 6, :rarity => 1, :expansion => "M13", :power => 5, :toughness => 5)
	c53.save
	c54 = MtgCard.new(:idInSet => 54, :cardName => "Hydrosurge", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/m13/54.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/54.jpg", :color => 8, :cmc => 1, :rarity => 1, :expansion => "M13")
	c54.save
	c55 = MtgCard.new(:idInSet => 55, :cardName => "Index", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/55.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/55.jpg", :color => 8, :cmc => 1, :rarity => 1, :expansion => "M13")
	c55.save
	c56 = MtgCard.new(:idInSet => 56, :cardName => "Jace, Memory Adept", :cardType => 64, :engSRC => "http://magiccards.info/scans/en/m13/56.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/56.jpg", :color => 8, :cmc => 5, :rarity => 4, :expansion => "M13")
	c56.save
	c57 = MtgCard.new(:idInSet => 57, :cardName => "Jace's Phantasm", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/57.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/57.jpg", :color => 8, :cmc => 1, :rarity => 2, :expansion => "M13", :power => 1, :toughness => 1)
	c57.save
	c58 = MtgCard.new(:idInSet => 58, :cardName => "Kraken Hatchling", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/58.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/58.jpg", :color => 8, :cmc => 1, :rarity => 1, :expansion => "M13", :power => 0, :toughness => 4)
	c58.save
	c59 = MtgCard.new(:idInSet => 59, :cardName => "Master of the Pearl Trident", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/59.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/59.jpg", :color => 8, :cmc => 2, :rarity => 3, :expansion => "M13", :power => 2, :toughness => 2)
	c59.save
	c60 = MtgCard.new(:idInSet => 60, :cardName => "Merfolk of the Pearl Trident", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/60.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/60.jpg", :color => 8, :cmc => 1, :rarity => 1, :expansion => "M13", :power => 1, :toughness => 1)
	c60.save
	c61 = MtgCard.new(:idInSet => 61, :cardName => "Mind Sculpt", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/61.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/61.jpg", :color => 8, :cmc => 2, :rarity => 1, :expansion => "M13")
	c61.save
	c62 = MtgCard.new(:idInSet => 62, :cardName => "Negate", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/m13/62.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/62.jpg", :color => 8, :cmc => 2, :rarity => 1, :expansion => "M13")
	c62.save
	c63 = MtgCard.new(:idInSet => 63, :cardName => "Omniscience", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/m13/63.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/63.jpg", :color => 8, :cmc => 10, :rarity => 4, :expansion => "M13")
	c63.save
	c64 = MtgCard.new(:idInSet => 64, :cardName => "Redirect", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/m13/64.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/64.jpg", :color => 8, :cmc => 2, :rarity => 3, :expansion => "M13")
	c64.save
	c65 = MtgCard.new(:idInSet => 65, :cardName => "Rewind", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/m13/65.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/65.jpg", :color => 8, :cmc => 4, :rarity => 2, :expansion => "M13")
	c65.save
	c66 = MtgCard.new(:idInSet => 66, :cardName => "Scroll Thief", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/66.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/66.jpg", :color => 8, :cmc => 3, :rarity => 1, :expansion => "M13", :power => 1, :toughness => 3)
	c66.save
	c67 = MtgCard.new(:idInSet => 67, :cardName => "Sleep", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/67.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/67.jpg", :color => 8, :cmc => 4, :rarity => 2, :expansion => "M13")
	c67.save
	c68 = MtgCard.new(:idInSet => 68, :cardName => "Spelltwine", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/68.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/68.jpg", :color => 8, :cmc => 6, :rarity => 3, :expansion => "M13")
	c68.save
	c69 = MtgCard.new(:idInSet => 69, :cardName => "Sphinx of Uthuun", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/69.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/69.jpg", :color => 8, :cmc => 7, :rarity => 3, :expansion => "M13", :power => 5, :toughness => 6)
	c69.save
	c70 = MtgCard.new(:idInSet => 70, :cardName => "Stormtide Leviathan", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/70.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/70.jpg", :color => 8, :cmc => 8, :rarity => 3, :expansion => "M13", :power => 8, :toughness => 8)
	c70.save
	c71 = MtgCard.new(:idInSet => 71, :cardName => "Switcheroo", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/71.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/71.jpg", :color => 8, :cmc => 5, :rarity => 2, :expansion => "M13")
	c71.save
	c72 = MtgCard.new(:idInSet => 72, :cardName => "Talrand, Sky Summoner", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/72.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/72.jpg", :color => 8, :cmc => 4, :rarity => 3, :expansion => "M13", :power => 2, :toughness => 2)
	c72.save
	c73 = MtgCard.new(:idInSet => 73, :cardName => "Talrand's Invocation", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/73.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/73.jpg", :color => 8, :cmc => 4, :rarity => 2, :expansion => "M13")
	c73.save
	c74 = MtgCard.new(:idInSet => 74, :cardName => "Tricks of the Trade", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/m13/74.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/74.jpg", :color => 8, :cmc => 4, :rarity => 1, :expansion => "M13")
	c74.save
	c75 = MtgCard.new(:idInSet => 75, :cardName => "Unsummon", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/m13/75.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/75.jpg", :color => 8, :cmc => 1, :rarity => 1, :expansion => "M13")
	c75.save
	c76 = MtgCard.new(:idInSet => 76, :cardName => "Vedalken Entrancer", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/76.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/76.jpg", :color => 8, :cmc => 4, :rarity => 1, :expansion => "M13", :power => 1, :toughness => 4)
	c76.save
	c77 = MtgCard.new(:idInSet => 77, :cardName => "Void Stalker", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/77.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/77.jpg", :color => 8, :cmc => 2, :rarity => 3, :expansion => "M13", :power => 2, :toughness => 1)
	c77.save
	c78 = MtgCard.new(:idInSet => 78, :cardName => "Watercourser", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/78.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/78.jpg", :color => 8, :cmc => 3, :rarity => 1, :expansion => "M13", :power => 2, :toughness => 3)
	c78.save
	c79 = MtgCard.new(:idInSet => 79, :cardName => "Welkin Tern", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/79.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/79.jpg", :color => 8, :cmc => 2, :rarity => 1, :expansion => "M13", :power => 2, :toughness => 1)
	c79.save
	c80 = MtgCard.new(:idInSet => 80, :cardName => "Wind Drake", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/80.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/80.jpg", :color => 8, :cmc => 3, :rarity => 1, :expansion => "M13", :power => 2, :toughness => 2)
	c80.save
	c81 = MtgCard.new(:idInSet => 81, :cardName => "Blood Reckoning", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/m13/81.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/81.jpg", :color => 4, :cmc => 4, :rarity => 2, :expansion => "M13")
	c81.save
	c82 = MtgCard.new(:idInSet => 82, :cardName => "Bloodhunter Bat", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/82.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/82.jpg", :color => 4, :cmc => 4, :rarity => 1, :expansion => "M13", :power => 2, :toughness => 2)
	c82.save
	c83 = MtgCard.new(:idInSet => 83, :cardName => "Bloodthrone Vampire", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/83.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/83.jpg", :color => 4, :cmc => 2, :rarity => 1, :expansion => "M13", :power => 1, :toughness => 1)
	c83.save
	c84 = MtgCard.new(:idInSet => 84, :cardName => "Cower in Fear", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/m13/84.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/84.jpg", :color => 4, :cmc => 3, :rarity => 2, :expansion => "M13")
	c84.save
	c85 = MtgCard.new(:idInSet => 85, :cardName => "Crippling Blight", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/m13/85.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/85.jpg", :color => 4, :cmc => 1, :rarity => 1, :expansion => "M13")
	c85.save
	c86 = MtgCard.new(:idInSet => 86, :cardName => "Dark Favor", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/m13/86.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/86.jpg", :color => 4, :cmc => 2, :rarity => 1, :expansion => "M13")
	c86.save
	c87 = MtgCard.new(:idInSet => 87, :cardName => "Diabolic Revelation", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/87.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/87.jpg", :color => 4, :cmc => 5, :rarity => 3, :expansion => "M13")
	c87.save
	c88 = MtgCard.new(:idInSet => 88, :cardName => "Disciple of Bolas", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/88.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/88.jpg", :color => 4, :cmc => 4, :rarity => 3, :expansion => "M13", :power => 2, :toughness => 1)
	c88.save
	c89 = MtgCard.new(:idInSet => 89, :cardName => "Disentomb", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/89.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/89.jpg", :color => 4, :cmc => 1, :rarity => 1, :expansion => "M13")
	c89.save
	c90 = MtgCard.new(:idInSet => 90, :cardName => "Duress", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/90.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/90.jpg", :color => 4, :cmc => 1, :rarity => 1, :expansion => "M13")
	c90.save
	c91 = MtgCard.new(:idInSet => 91, :cardName => "Duskmantle Prowler", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/91.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/91.jpg", :color => 4, :cmc => 4, :rarity => 2, :expansion => "M13", :power => 2, :toughness => 2)
	c91.save
	c92 = MtgCard.new(:idInSet => 92, :cardName => "Duty-Bound Dead", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/92.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/92.jpg", :color => 4, :cmc => 1, :rarity => 1, :expansion => "M13", :power => 0, :toughness => 2)
	c92.save
	c93 = MtgCard.new(:idInSet => 93, :cardName => "Essence Drain", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/93.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/93.jpg", :color => 4, :cmc => 5, :rarity => 1, :expansion => "M13")
	c93.save
	c94 = MtgCard.new(:idInSet => 94, :cardName => "Giant Scorpion", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/94.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/94.jpg", :color => 4, :cmc => 3, :rarity => 1, :expansion => "M13", :power => 1, :toughness => 3)
	c94.save
	c95 = MtgCard.new(:idInSet => 95, :cardName => "Harbor Bandit", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/95.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/95.jpg", :color => 4, :cmc => 3, :rarity => 2, :expansion => "M13", :power => 2, :toughness => 2)
	c95.save
	c96 = MtgCard.new(:idInSet => 96, :cardName => "Knight of Infamy", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/96.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/96.jpg", :color => 4, :cmc => 2, :rarity => 2, :expansion => "M13", :power => 2, :toughness => 1)
	c96.save
	c97 = MtgCard.new(:idInSet => 97, :cardName => "Liliana of the Dark Realms", :cardType => 64, :engSRC => "http://magiccards.info/scans/en/m13/97.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/97.jpg", :color => 4, :cmc => 4, :rarity => 4, :expansion => "M13")
	c97.save
	c98 = MtgCard.new(:idInSet => 98, :cardName => "Liliana's Shade", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/98.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/98.jpg", :color => 4, :cmc => 4, :rarity => 1, :expansion => "M13", :power => 1, :toughness => 1)
	c98.save
	c99 = MtgCard.new(:idInSet => 99, :cardName => "Mark of the Vampire", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/m13/99.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/99.jpg", :color => 4, :cmc => 4, :rarity => 1, :expansion => "M13")
	c99.save
	c100 = MtgCard.new(:idInSet => 100, :cardName => "Mind Rot", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/100.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/100.jpg", :color => 4, :cmc => 3, :rarity => 1, :expansion => "M13")
	c100.save
	c101 = MtgCard.new(:idInSet => 101, :cardName => "Murder", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/m13/101.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/101.jpg", :color => 4, :cmc => 3, :rarity => 1, :expansion => "M13")
	c101.save
	c102 = MtgCard.new(:idInSet => 102, :cardName => "Mutilate", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/102.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/102.jpg", :color => 4, :cmc => 4, :rarity => 3, :expansion => "M13")
	c102.save
	c103 = MtgCard.new(:idInSet => 103, :cardName => "Nefarox, Overlord of Grixis", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/103.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/103.jpg", :color => 4, :cmc => 6, :rarity => 3, :expansion => "M13", :power => 5, :toughness => 5)
	c103.save
	c104 = MtgCard.new(:idInSet => 104, :cardName => "Phylactery Lich", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/104.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/104.jpg", :color => 4, :cmc => 3, :rarity => 3, :expansion => "M13", :power => 5, :toughness => 5)
	c104.save
	c105 = MtgCard.new(:idInSet => 105, :cardName => "Public Execution", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/m13/105.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/105.jpg", :color => 4, :cmc => 6, :rarity => 2, :expansion => "M13")
	c105.save
	c106 = MtgCard.new(:idInSet => 106, :cardName => "Ravenous Rats", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/106.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/106.jpg", :color => 4, :cmc => 2, :rarity => 1, :expansion => "M13", :power => 1, :toughness => 1)
	c106.save
	c107 = MtgCard.new(:idInSet => 107, :cardName => "Rise from the Grave", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/107.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/107.jpg", :color => 4, :cmc => 5, :rarity => 2, :expansion => "M13")
	c107.save
	c108 = MtgCard.new(:idInSet => 108, :cardName => "Servant of Nefarox", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/108.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/108.jpg", :color => 4, :cmc => 3, :rarity => 1, :expansion => "M13", :power => 3, :toughness => 1)
	c108.save
	c109 = MtgCard.new(:idInSet => 109, :cardName => "Shimian Specter", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/109.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/109.jpg", :color => 4, :cmc => 4, :rarity => 3, :expansion => "M13", :power => 2, :toughness => 2)
	c109.save
	c110 = MtgCard.new(:idInSet => 110, :cardName => "Sign in Blood", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/110.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/110.jpg", :color => 4, :cmc => 2, :rarity => 1, :expansion => "M13")
	c110.save
	c111 = MtgCard.new(:idInSet => 111, :cardName => "Tormented Soul", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/111.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/111.jpg", :color => 4, :cmc => 1, :rarity => 1, :expansion => "M13", :power => 1, :toughness => 1)
	c111.save
	c112 = MtgCard.new(:idInSet => 112, :cardName => "Vampire Nighthawk", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/112.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/112.jpg", :color => 4, :cmc => 3, :rarity => 2, :expansion => "M13", :power => 2, :toughness => 3)
	c112.save
	c113 = MtgCard.new(:idInSet => 113, :cardName => "Vampire Nocturnus", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/113.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/113.jpg", :color => 4, :cmc => 4, :rarity => 4, :expansion => "M13", :power => 3, :toughness => 3)
	c113.save
	c114 = MtgCard.new(:idInSet => 114, :cardName => "Veilborn Ghoul", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/114.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/114.jpg", :color => 4, :cmc => 5, :rarity => 2, :expansion => "M13", :power => 4, :toughness => 1)
	c114.save
	c115 = MtgCard.new(:idInSet => 115, :cardName => "Vile Rebirth", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/m13/115.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/115.jpg", :color => 4, :cmc => 1, :rarity => 1, :expansion => "M13")
	c115.save
	c116 = MtgCard.new(:idInSet => 116, :cardName => "Walking Corpse", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/116.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/116.jpg", :color => 4, :cmc => 2, :rarity => 1, :expansion => "M13", :power => 2, :toughness => 2)
	c116.save
	c117 = MtgCard.new(:idInSet => 117, :cardName => "Wit's End", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/117.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/117.jpg", :color => 4, :cmc => 7, :rarity => 3, :expansion => "M13")
	c117.save
	c118 = MtgCard.new(:idInSet => 118, :cardName => "Xathrid Gorgon", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/118.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/118.jpg", :color => 4, :cmc => 6, :rarity => 3, :expansion => "M13", :power => 3, :toughness => 6)
	c118.save
	c119 = MtgCard.new(:idInSet => 119, :cardName => "Zombie Goliath", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/119.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/119.jpg", :color => 4, :cmc => 5, :rarity => 1, :expansion => "M13", :power => 4, :toughness => 3)
	c119.save
	c120 = MtgCard.new(:idInSet => 120, :cardName => "Arms Dealer", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/120.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/120.jpg", :color => 2, :cmc => 3, :rarity => 2, :expansion => "M13", :power => 1, :toughness => 1)
	c120.save
	c121 = MtgCard.new(:idInSet => 121, :cardName => "Bladetusk Boar", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/121.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/121.jpg", :color => 2, :cmc => 4, :rarity => 1, :expansion => "M13", :power => 3, :toughness => 2)
	c121.save
	c122 = MtgCard.new(:idInSet => 122, :cardName => "Canyon Minotaur", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/122.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/122.jpg", :color => 2, :cmc => 4, :rarity => 1, :expansion => "M13", :power => 3, :toughness => 3)
	c122.save
	c123 = MtgCard.new(:idInSet => 123, :cardName => "Chandra, the Firebrand", :cardType => 64, :engSRC => "http://magiccards.info/scans/en/m13/123.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/123.jpg", :color => 2, :cmc => 4, :rarity => 4, :expansion => "M13")
	c123.save
	c124 = MtgCard.new(:idInSet => 124, :cardName => "Chandra's Fury", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/m13/124.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/124.jpg", :color => 2, :cmc => 5, :rarity => 1, :expansion => "M13")
	c124.save
	c125 = MtgCard.new(:idInSet => 125, :cardName => "Cleaver Riot", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/125.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/125.jpg", :color => 2, :cmc => 5, :rarity => 2, :expansion => "M13")
	c125.save
	c126 = MtgCard.new(:idInSet => 126, :cardName => "Craterize", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/126.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/126.jpg", :color => 2, :cmc => 4, :rarity => 1, :expansion => "M13")
	c126.save
	c127 = MtgCard.new(:idInSet => 127, :cardName => "Crimson Muckwader", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/127.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/127.jpg", :color => 2, :cmc => 2, :rarity => 2, :expansion => "M13", :power => 2, :toughness => 1)
	c127.save
	c128 = MtgCard.new(:idInSet => 128, :cardName => "Dragon Hatchling", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/128.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/128.jpg", :color => 2, :cmc => 2, :rarity => 1, :expansion => "M13", :power => 0, :toughness => 1)
	c128.save
	c129 = MtgCard.new(:idInSet => 129, :cardName => "Fervor", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/m13/129.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/129.jpg", :color => 2, :cmc => 3, :rarity => 3, :expansion => "M13")
	c129.save
	c130 = MtgCard.new(:idInSet => 130, :cardName => "Fire Elemental", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/130.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/130.jpg", :color => 2, :cmc => 5, :rarity => 1, :expansion => "M13", :power => 5, :toughness => 4)
	c130.save
	c131 = MtgCard.new(:idInSet => 131, :cardName => "Firewing Phoenix", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/131.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/131.jpg", :color => 2, :cmc => 4, :rarity => 3, :expansion => "M13", :power => 4, :toughness => 2)
	c131.save
	c132 = MtgCard.new(:idInSet => 132, :cardName => "Flames of the Firebrand", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/132.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/132.jpg", :color => 2, :cmc => 3, :rarity => 2, :expansion => "M13")
	c132.save
	c133 = MtgCard.new(:idInSet => 133, :cardName => "Furnace Whelp", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/133.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/133.jpg", :color => 2, :cmc => 4, :rarity => 2, :expansion => "M13", :power => 2, :toughness => 2)
	c133.save
	c134 = MtgCard.new(:idInSet => 134, :cardName => "Goblin Arsonist", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/134.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/134.jpg", :color => 2, :cmc => 1, :rarity => 1, :expansion => "M13", :power => 1, :toughness => 1)
	c134.save
	c135 = MtgCard.new(:idInSet => 135, :cardName => "Goblin Battle Jester", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/135.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/135.jpg", :color => 2, :cmc => 4, :rarity => 1, :expansion => "M13", :power => 2, :toughness => 2)
	c135.save
	c136 = MtgCard.new(:idInSet => 136, :cardName => "Hamletback Goliath", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/136.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/136.jpg", :color => 2, :cmc => 7, :rarity => 3, :expansion => "M13", :power => 6, :toughness => 6)
	c136.save
	c137 = MtgCard.new(:idInSet => 137, :cardName => "Kindled Fury", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/m13/137.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/137.jpg", :color => 2, :cmc => 1, :rarity => 1, :expansion => "M13")
	c137.save
	c138 = MtgCard.new(:idInSet => 138, :cardName => "Krenko, Mob Boss", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/138.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/138.jpg", :color => 2, :cmc => 4, :rarity => 3, :expansion => "M13", :power => 3, :toughness => 3)
	c138.save
	c139 = MtgCard.new(:idInSet => 139, :cardName => "Krenko's Command", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/139.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/139.jpg", :color => 2, :cmc => 2, :rarity => 1, :expansion => "M13")
	c139.save
	c140 = MtgCard.new(:idInSet => 140, :cardName => "Magmaquake", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/m13/140.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/140.jpg", :color => 2, :cmc => 2, :rarity => 3, :expansion => "M13")
	c140.save
	c141 = MtgCard.new(:idInSet => 141, :cardName => "Mark of Mutiny", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/141.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/141.jpg", :color => 2, :cmc => 3, :rarity => 2, :expansion => "M13")
	c141.save
	c142 = MtgCard.new(:idInSet => 142, :cardName => "Mindclaw Shaman", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/142.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/142.jpg", :color => 2, :cmc => 5, :rarity => 2, :expansion => "M13", :power => 2, :toughness => 2)
	c142.save
	c143 = MtgCard.new(:idInSet => 143, :cardName => "Mogg Flunkies", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/143.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/143.jpg", :color => 2, :cmc => 2, :rarity => 1, :expansion => "M13", :power => 3, :toughness => 3)
	c143.save
	c144 = MtgCard.new(:idInSet => 144, :cardName => "Reckless Brute", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/144.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/144.jpg", :color => 2, :cmc => 3, :rarity => 1, :expansion => "M13", :power => 3, :toughness => 1)
	c144.save
	c145 = MtgCard.new(:idInSet => 145, :cardName => "Reverberate", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/m13/145.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/145.jpg", :color => 2, :cmc => 2, :rarity => 3, :expansion => "M13")
	c145.save
	c146 = MtgCard.new(:idInSet => 146, :cardName => "Rummaging Goblin", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/146.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/146.jpg", :color => 2, :cmc => 3, :rarity => 1, :expansion => "M13", :power => 1, :toughness => 1)
	c146.save
	c147 = MtgCard.new(:idInSet => 147, :cardName => "Searing Spear", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/m13/147.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/147.jpg", :color => 2, :cmc => 2, :rarity => 1, :expansion => "M13")
	c147.save
	c148 = MtgCard.new(:idInSet => 148, :cardName => "Slumbering Dragon", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/148.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/148.jpg", :color => 2, :cmc => 1, :rarity => 3, :expansion => "M13", :power => 3, :toughness => 3)
	c148.save
	c149 = MtgCard.new(:idInSet => 149, :cardName => "Smelt", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/m13/149.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/149.jpg", :color => 2, :cmc => 1, :rarity => 1, :expansion => "M13")
	c149.save
	c150 = MtgCard.new(:idInSet => 150, :cardName => "Thundermaw Hellkite", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/150.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/150.jpg", :color => 2, :cmc => 5, :rarity => 4, :expansion => "M13", :power => 5, :toughness => 5)
	c150.save
	c151 = MtgCard.new(:idInSet => 151, :cardName => "Torch Fiend", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/151.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/151.jpg", :color => 2, :cmc => 2, :rarity => 2, :expansion => "M13", :power => 2, :toughness => 1)
	c151.save
	c152 = MtgCard.new(:idInSet => 152, :cardName => "Trumpet Blast", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/m13/152.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/152.jpg", :color => 2, :cmc => 3, :rarity => 1, :expansion => "M13")
	c152.save
	c153 = MtgCard.new(:idInSet => 153, :cardName => "Turn to Slag", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/153.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/153.jpg", :color => 2, :cmc => 5, :rarity => 1, :expansion => "M13")
	c153.save
	c154 = MtgCard.new(:idInSet => 154, :cardName => "Volcanic Geyser", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/m13/154.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/154.jpg", :color => 2, :cmc => 2, :rarity => 2, :expansion => "M13")
	c154.save
	c155 = MtgCard.new(:idInSet => 155, :cardName => "Volcanic Strength", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/m13/155.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/155.jpg", :color => 2, :cmc => 2, :rarity => 1, :expansion => "M13")
	c155.save
	c156 = MtgCard.new(:idInSet => 156, :cardName => "Wall of Fire", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/156.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/156.jpg", :color => 2, :cmc => 3, :rarity => 1, :expansion => "M13", :power => 0, :toughness => 5)
	c156.save
	c157 = MtgCard.new(:idInSet => 157, :cardName => "Wild Guess", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/157.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/157.jpg", :color => 2, :cmc => 2, :rarity => 1, :expansion => "M13")
	c157.save
	c158 = MtgCard.new(:idInSet => 158, :cardName => "Worldfire", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/158.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/158.jpg", :color => 2, :cmc => 9, :rarity => 4, :expansion => "M13")
	c158.save
	c159 = MtgCard.new(:idInSet => 159, :cardName => "Acidic Slime", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/159.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/159.jpg", :color => 1, :cmc => 5, :rarity => 2, :expansion => "M13", :power => 2, :toughness => 2)
	c159.save
	c160 = MtgCard.new(:idInSet => 160, :cardName => "Arbor Elf", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/160.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/160.jpg", :color => 1, :cmc => 1, :rarity => 1, :expansion => "M13", :power => 1, :toughness => 1)
	c160.save
	c161 = MtgCard.new(:idInSet => 161, :cardName => "Bond Beetle", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/161.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/161.jpg", :color => 1, :cmc => 1, :rarity => 1, :expansion => "M13", :power => 0, :toughness => 1)
	c161.save
	c162 = MtgCard.new(:idInSet => 162, :cardName => "Boundless Realms", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/162.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/162.jpg", :color => 1, :cmc => 7, :rarity => 3, :expansion => "M13")
	c162.save
	c163 = MtgCard.new(:idInSet => 163, :cardName => "Bountiful Harvest", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/163.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/163.jpg", :color => 1, :cmc => 5, :rarity => 1, :expansion => "M13")
	c163.save
	c164 = MtgCard.new(:idInSet => 164, :cardName => "Centaur Courser", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/164.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/164.jpg", :color => 1, :cmc => 3, :rarity => 1, :expansion => "M13", :power => 3, :toughness => 3)
	c164.save
	c165 = MtgCard.new(:idInSet => 165, :cardName => "Deadly Recluse", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/165.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/165.jpg", :color => 1, :cmc => 2, :rarity => 1, :expansion => "M13", :power => 1, :toughness => 2)
	c165.save
	c166 = MtgCard.new(:idInSet => 166, :cardName => "Duskdale Wurm", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/166.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/166.jpg", :color => 1, :cmc => 7, :rarity => 2, :expansion => "M13", :power => 7, :toughness => 7)
	c166.save
	c167 = MtgCard.new(:idInSet => 167, :cardName => "Elderscale Wurm", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/167.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/167.jpg", :color => 1, :cmc => 7, :rarity => 4, :expansion => "M13", :power => 7, :toughness => 7)
	c167.save
	c168 = MtgCard.new(:idInSet => 168, :cardName => "Elvish Archdruid", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/168.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/168.jpg", :color => 1, :cmc => 3, :rarity => 3, :expansion => "M13", :power => 2, :toughness => 2)
	c168.save
	c169 = MtgCard.new(:idInSet => 169, :cardName => "Elvish Visionary", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/169.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/169.jpg", :color => 1, :cmc => 2, :rarity => 1, :expansion => "M13", :power => 1, :toughness => 1)
	c169.save
	c170 = MtgCard.new(:idInSet => 170, :cardName => "Farseek", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/170.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/170.jpg", :color => 1, :cmc => 2, :rarity => 1, :expansion => "M13")
	c170.save
	c171 = MtgCard.new(:idInSet => 171, :cardName => "Flinthoof Boar", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/171.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/171.jpg", :color => 1, :cmc => 2, :rarity => 2, :expansion => "M13", :power => 2, :toughness => 2)
	c171.save
	c172 = MtgCard.new(:idInSet => 172, :cardName => "Fog", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/m13/172.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/172.jpg", :color => 1, :cmc => 1, :rarity => 1, :expansion => "M13")
	c172.save
	c173 = MtgCard.new(:idInSet => 173, :cardName => "Fungal Sprouting", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/173.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/173.jpg", :color => 1, :cmc => 4, :rarity => 2, :expansion => "M13")
	c173.save
	c174 = MtgCard.new(:idInSet => 174, :cardName => "Garruk, Primal Hunter", :cardType => 64, :engSRC => "http://magiccards.info/scans/en/m13/174.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/174.jpg", :color => 1, :cmc => 5, :rarity => 4, :expansion => "M13")
	c174.save
	c175 = MtgCard.new(:idInSet => 175, :cardName => "Garruk's Packleader", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/175.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/175.jpg", :color => 1, :cmc => 5, :rarity => 2, :expansion => "M13", :power => 4, :toughness => 4)
	c175.save
	c176 = MtgCard.new(:idInSet => 176, :cardName => "Ground Seal", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/m13/176.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/176.jpg", :color => 1, :cmc => 2, :rarity => 3, :expansion => "M13")
	c176.save
	c177 = MtgCard.new(:idInSet => 177, :cardName => "Mwonvuli Beast Tracker", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/177.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/177.jpg", :color => 1, :cmc => 3, :rarity => 2, :expansion => "M13", :power => 2, :toughness => 1)
	c177.save
	c178 = MtgCard.new(:idInSet => 178, :cardName => "Naturalize", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/m13/178.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/178.jpg", :color => 1, :cmc => 2, :rarity => 1, :expansion => "M13")
	c178.save
	c179 = MtgCard.new(:idInSet => 179, :cardName => "Plummet", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/m13/179.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/179.jpg", :color => 1, :cmc => 2, :rarity => 1, :expansion => "M13")
	c179.save
	c180 = MtgCard.new(:idInSet => 180, :cardName => "Predatory Rampage", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/180.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/180.jpg", :color => 1, :cmc => 5, :rarity => 3, :expansion => "M13")
	c180.save
	c181 = MtgCard.new(:idInSet => 181, :cardName => "Prey Upon", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/181.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/181.jpg", :color => 1, :cmc => 1, :rarity => 1, :expansion => "M13")
	c181.save
	c182 = MtgCard.new(:idInSet => 182, :cardName => "Primal Huntbeast", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/182.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/182.jpg", :color => 1, :cmc => 4, :rarity => 1, :expansion => "M13", :power => 3, :toughness => 3)
	c182.save
	c183 = MtgCard.new(:idInSet => 183, :cardName => "Primordial Hydra", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/183.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/183.jpg", :color => 1, :cmc => 2, :rarity => 4, :expansion => "M13", :power => 0, :toughness => 0)
	c183.save
	c184 = MtgCard.new(:idInSet => 184, :cardName => "Quirion Dryad", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/184.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/184.jpg", :color => 1, :cmc => 2, :rarity => 3, :expansion => "M13", :power => 1, :toughness => 1)
	c184.save
	c185 = MtgCard.new(:idInSet => 185, :cardName => "Rancor", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/m13/185.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/185.jpg", :color => 1, :cmc => 1, :rarity => 2, :expansion => "M13")
	c185.save
	c186 = MtgCard.new(:idInSet => 186, :cardName => "Ranger's Path", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/186.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/186.jpg", :color => 1, :cmc => 4, :rarity => 1, :expansion => "M13")
	c186.save
	c187 = MtgCard.new(:idInSet => 187, :cardName => "Revive", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/m13/187.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/187.jpg", :color => 1, :cmc => 2, :rarity => 2, :expansion => "M13")
	c187.save
	c188 = MtgCard.new(:idInSet => 188, :cardName => "Roaring Primadox", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/188.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/188.jpg", :color => 1, :cmc => 4, :rarity => 2, :expansion => "M13", :power => 4, :toughness => 4)
	c188.save
	c189 = MtgCard.new(:idInSet => 189, :cardName => "Sentinel Spider", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/189.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/189.jpg", :color => 1, :cmc => 5, :rarity => 1, :expansion => "M13", :power => 4, :toughness => 4)
	c189.save
	c190 = MtgCard.new(:idInSet => 190, :cardName => "Serpent's Gift", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/m13/190.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/190.jpg", :color => 1, :cmc => 3, :rarity => 1, :expansion => "M13")
	c190.save
	c191 = MtgCard.new(:idInSet => 191, :cardName => "Silklash Spider", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/191.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/191.jpg", :color => 1, :cmc => 5, :rarity => 3, :expansion => "M13", :power => 2, :toughness => 7)
	c191.save
	c192 = MtgCard.new(:idInSet => 192, :cardName => "Spiked Baloth", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/192.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/192.jpg", :color => 1, :cmc => 4, :rarity => 1, :expansion => "M13", :power => 4, :toughness => 2)
	c192.save
	c193 = MtgCard.new(:idInSet => 193, :cardName => "Thragtusk", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/193.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/193.jpg", :color => 1, :cmc => 5, :rarity => 3, :expansion => "M13", :power => 5, :toughness => 3)
	c193.save
	c194 = MtgCard.new(:idInSet => 194, :cardName => "Timberpack Wolf", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/194.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/194.jpg", :color => 1, :cmc => 2, :rarity => 1, :expansion => "M13", :power => 2, :toughness => 2)
	c194.save
	c195 = MtgCard.new(:idInSet => 195, :cardName => "Titanic Growth", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/m13/195.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/195.jpg", :color => 1, :cmc => 2, :rarity => 1, :expansion => "M13")
	c195.save
	c196 = MtgCard.new(:idInSet => 196, :cardName => "Vastwood Gorger", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/196.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/196.jpg", :color => 1, :cmc => 6, :rarity => 1, :expansion => "M13", :power => 5, :toughness => 6)
	c196.save
	c197 = MtgCard.new(:idInSet => 197, :cardName => "Yeva, Nature's Herald", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/197.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/197.jpg", :color => 1, :cmc => 4, :rarity => 3, :expansion => "M13", :power => 4, :toughness => 4)
	c197.save
	c198 = MtgCard.new(:idInSet => 198, :cardName => "Yeva's Forcemage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/m13/198.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/198.jpg", :color => 1, :cmc => 3, :rarity => 1, :expansion => "M13", :power => 2, :toughness => 2)
	c198.save
	c199 = MtgCard.new(:idInSet => 199, :cardName => "Nicol Bolas, Planeswalker", :cardType => 64, :engSRC => "http://magiccards.info/scans/en/m13/199.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/199.jpg", :color => 14, :cmc => 8, :rarity => 4, :expansion => "M13")
	c199.save
	c200 = MtgCard.new(:idInSet => 200, :cardName => "Akroma's Memorial", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/m13/200.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/200.jpg", :color => 0, :cmc => 7, :rarity => 4, :expansion => "M13")
	c200.save
	c201 = MtgCard.new(:idInSet => 201, :cardName => "Chronomaton", :cardType => 9, :engSRC => "http://magiccards.info/scans/en/m13/201.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/201.jpg", :color => 0, :cmc => 1, :rarity => 2, :expansion => "M13", :power => 1, :toughness => 1)
	c201.save
	c202 = MtgCard.new(:idInSet => 202, :cardName => "Clock of Omens", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/m13/202.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/202.jpg", :color => 0, :cmc => 4, :rarity => 2, :expansion => "M13")
	c202.save
	c203 = MtgCard.new(:idInSet => 203, :cardName => "Door to Nothingness", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/m13/203.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/203.jpg", :color => 0, :cmc => 5, :rarity => 3, :expansion => "M13")
	c203.save
	c204 = MtgCard.new(:idInSet => 204, :cardName => "Elixir of Immortality", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/m13/204.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/204.jpg", :color => 0, :cmc => 1, :rarity => 2, :expansion => "M13")
	c204.save
	c205 = MtgCard.new(:idInSet => 205, :cardName => "Gem of Becoming", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/m13/205.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/205.jpg", :color => 0, :cmc => 3, :rarity => 2, :expansion => "M13")
	c205.save
	c206 = MtgCard.new(:idInSet => 206, :cardName => "Gilded Lotus", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/m13/206.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/206.jpg", :color => 0, :cmc => 5, :rarity => 3, :expansion => "M13")
	c206.save
	c207 = MtgCard.new(:idInSet => 207, :cardName => "Jayemdae Tome", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/m13/207.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/207.jpg", :color => 0, :cmc => 4, :rarity => 2, :expansion => "M13")
	c207.save
	c208 = MtgCard.new(:idInSet => 208, :cardName => "Kitesail", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/m13/208.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/208.jpg", :color => 0, :cmc => 2, :rarity => 2, :expansion => "M13")
	c208.save
	c209 = MtgCard.new(:idInSet => 209, :cardName => "Phyrexian Hulk", :cardType => 9, :engSRC => "http://magiccards.info/scans/en/m13/209.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/209.jpg", :color => 0, :cmc => 6, :rarity => 2, :expansion => "M13", :power => 5, :toughness => 4)
	c209.save
	c210 = MtgCard.new(:idInSet => 210, :cardName => "Primal Clay", :cardType => 9, :engSRC => "http://magiccards.info/scans/en/m13/210.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/210.jpg", :color => 0, :cmc => 4, :rarity => 2, :expansion => "M13", :power => 0, :toughness => 0)
	c210.save
	c211 = MtgCard.new(:idInSet => 211, :cardName => "Ring of Evos Isle", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/m13/211.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/211.jpg", :color => 0, :cmc => 2, :rarity => 2, :expansion => "M13")
	c211.save
	c212 = MtgCard.new(:idInSet => 212, :cardName => "Ring of Kalonia", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/m13/212.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/212.jpg", :color => 0, :cmc => 2, :rarity => 2, :expansion => "M13")
	c212.save
	c213 = MtgCard.new(:idInSet => 213, :cardName => "Ring of Thune", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/m13/213.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/213.jpg", :color => 0, :cmc => 2, :rarity => 2, :expansion => "M13")
	c213.save
	c214 = MtgCard.new(:idInSet => 214, :cardName => "Ring of Valkas", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/m13/214.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/214.jpg", :color => 0, :cmc => 2, :rarity => 2, :expansion => "M13")
	c214.save
	c215 = MtgCard.new(:idInSet => 215, :cardName => "Ring of Xathrid", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/m13/215.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/215.jpg", :color => 0, :cmc => 2, :rarity => 2, :expansion => "M13")
	c215.save
	c216 = MtgCard.new(:idInSet => 216, :cardName => "Sands of Delirium", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/m13/216.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/216.jpg", :color => 0, :cmc => 3, :rarity => 3, :expansion => "M13")
	c216.save
	c217 = MtgCard.new(:idInSet => 217, :cardName => "Staff of Nin", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/m13/217.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/217.jpg", :color => 0, :cmc => 6, :rarity => 3, :expansion => "M13")
	c217.save
	c218 = MtgCard.new(:idInSet => 218, :cardName => "Stuffy Doll", :cardType => 9, :engSRC => "http://magiccards.info/scans/en/m13/218.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/218.jpg", :color => 0, :cmc => 5, :rarity => 3, :expansion => "M13", :power => 0, :toughness => 1)
	c218.save
	c219 = MtgCard.new(:idInSet => 219, :cardName => "Tormod's Crypt", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/m13/219.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/219.jpg", :color => 0, :cmc => 0, :rarity => 2, :expansion => "M13")
	c219.save
	c220 = MtgCard.new(:idInSet => 220, :cardName => "Trading Post", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/m13/220.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/220.jpg", :color => 0, :cmc => 4, :rarity => 3, :expansion => "M13")
	c220.save
	c221 = MtgCard.new(:idInSet => 221, :cardName => "Cathedral of War", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/m13/221.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/221.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "M13")
	c221.save
	c222 = MtgCard.new(:idInSet => 222, :cardName => "Dragonskull Summit", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/m13/222.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/222.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "M13")
	c222.save
	c223 = MtgCard.new(:idInSet => 223, :cardName => "Drowned Catacomb", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/m13/223.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/223.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "M13")
	c223.save
	c224 = MtgCard.new(:idInSet => 224, :cardName => "Evolving Wilds", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/m13/224.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/224.jpg", :color => 0, :cmc => 0, :rarity => 1, :expansion => "M13")
	c224.save
	c225 = MtgCard.new(:idInSet => 225, :cardName => "Glacial Fortress", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/m13/225.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/225.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "M13")
	c225.save
	c226 = MtgCard.new(:idInSet => 226, :cardName => "Hellion Crucible", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/m13/226.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/226.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "M13")
	c226.save
	c227 = MtgCard.new(:idInSet => 227, :cardName => "Reliquary Tower", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/m13/227.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/227.jpg", :color => 0, :cmc => 0, :rarity => 2, :expansion => "M13")
	c227.save
	c228 = MtgCard.new(:idInSet => 228, :cardName => "Rootbound Crag", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/m13/228.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/228.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "M13")
	c228.save
	c229 = MtgCard.new(:idInSet => 229, :cardName => "Sunpetal Grove", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/m13/229.jpg", :chiSRC => "http://magiccards.info/scans/cn/m13/229.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "M13")
	c229.save
end
