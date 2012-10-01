desc "Import RTR cards."
task :import_RTR_cards => :environment do

	c1 = MtgCard.new(:idInSet => 1, :cardName => "Angel of Serenity", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/1.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/1.jpg", :color => 16, :cmc => 7, :rarity => 4, :expansion => "RTR", :power => 5, :toughness => 6)
	c1.save
	c2 = MtgCard.new(:idInSet => 2, :cardName => "Armory Guard", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/2.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/2.jpg", :color => 16, :cmc => 4, :rarity => 1, :expansion => "RTR", :power => 2, :toughness => 5)
	c2.save
	c3 = MtgCard.new(:idInSet => 3, :cardName => "Arrest", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rtr/3.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/3.jpg", :color => 16, :cmc => 3, :rarity => 2, :expansion => "RTR")
	c3.save
	c4 = MtgCard.new(:idInSet => 4, :cardName => "Avenging Arrow", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/4.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/4.jpg", :color => 16, :cmc => 3, :rarity => 1, :expansion => "RTR")
	c4.save
	c5 = MtgCard.new(:idInSet => 5, :cardName => "Azorius Arrester", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/5.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/5.jpg", :color => 16, :cmc => 2, :rarity => 1, :expansion => "RTR", :power => 2, :toughness => 1)
	c5.save
	c6 = MtgCard.new(:idInSet => 6, :cardName => "Azorius Justiciar", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/6.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/6.jpg", :color => 16, :cmc => 4, :rarity => 2, :expansion => "RTR", :power => 2, :toughness => 2)
	c6.save
	c7 = MtgCard.new(:idInSet => 7, :cardName => "Bazaar Krovod", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/7.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/7.jpg", :color => 16, :cmc => 5, :rarity => 2, :expansion => "RTR", :power => 2, :toughness => 5)
	c7.save
	c8 = MtgCard.new(:idInSet => 8, :cardName => "Concordia Pegasus", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/8.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/8.jpg", :color => 16, :cmc => 2, :rarity => 1, :expansion => "RTR", :power => 1, :toughness => 3)
	c8.save
	c9 = MtgCard.new(:idInSet => 9, :cardName => "Ethereal Armor", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rtr/9.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/9.jpg", :color => 16, :cmc => 1, :rarity => 1, :expansion => "RTR")
	c9.save
	c10 = MtgCard.new(:idInSet => 10, :cardName => "Eyes in the Skies", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/10.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/10.jpg", :color => 16, :cmc => 4, :rarity => 1, :expansion => "RTR")
	c10.save
	c11 = MtgCard.new(:idInSet => 11, :cardName => "Fencing Ace", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/11.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/11.jpg", :color => 16, :cmc => 2, :rarity => 2, :expansion => "RTR", :power => 1, :toughness => 1)
	c11.save
	c12 = MtgCard.new(:idInSet => 12, :cardName => "Keening Apparition", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/12.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/12.jpg", :color => 16, :cmc => 2, :rarity => 1, :expansion => "RTR", :power => 2, :toughness => 2)
	c12.save
	c13 = MtgCard.new(:idInSet => 13, :cardName => "Knightly Valor", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rtr/13.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/13.jpg", :color => 16, :cmc => 5, :rarity => 1, :expansion => "RTR")
	c13.save
	c14 = MtgCard.new(:idInSet => 14, :cardName => "Martial Law", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rtr/14.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/14.jpg", :color => 16, :cmc => 4, :rarity => 3, :expansion => "RTR")
	c14.save
	c15 = MtgCard.new(:idInSet => 15, :cardName => "Palisade Giant", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/15.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/15.jpg", :color => 16, :cmc => 6, :rarity => 3, :expansion => "RTR", :power => 2, :toughness => 7)
	c15.save
	c16 = MtgCard.new(:idInSet => 16, :cardName => "Phantom General", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/16.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/16.jpg", :color => 16, :cmc => 4, :rarity => 2, :expansion => "RTR", :power => 2, :toughness => 3)
	c16.save
	c17 = MtgCard.new(:idInSet => 17, :cardName => "Precinct Captain", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/17.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/17.jpg", :color => 16, :cmc => 2, :rarity => 3, :expansion => "RTR", :power => 2, :toughness => 2)
	c17.save
	c18 = MtgCard.new(:idInSet => 18, :cardName => "Rest in Peace", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rtr/18.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/18.jpg", :color => 16, :cmc => 2, :rarity => 3, :expansion => "RTR")
	c18.save
	c19 = MtgCard.new(:idInSet => 19, :cardName => "Rootborn Defenses", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/19.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/19.jpg", :color => 16, :cmc => 3, :rarity => 1, :expansion => "RTR")
	c19.save
	c20 = MtgCard.new(:idInSet => 20, :cardName => "Security Blockade", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rtr/20.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/20.jpg", :color => 16, :cmc => 3, :rarity => 2, :expansion => "RTR")
	c20.save
	c21 = MtgCard.new(:idInSet => 21, :cardName => "Selesnya Sentry", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/21.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/21.jpg", :color => 16, :cmc => 3, :rarity => 1, :expansion => "RTR", :power => 3, :toughness => 2)
	c21.save
	c22 = MtgCard.new(:idInSet => 22, :cardName => "Seller of Songbirds", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/22.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/22.jpg", :color => 16, :cmc => 3, :rarity => 1, :expansion => "RTR", :power => 1, :toughness => 2)
	c22.save
	c23 = MtgCard.new(:idInSet => 23, :cardName => "Soul Tithe", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rtr/23.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/23.jpg", :color => 16, :cmc => 2, :rarity => 2, :expansion => "RTR")
	c23.save
	c24 = MtgCard.new(:idInSet => 24, :cardName => "Sphere of Safety", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rtr/24.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/24.jpg", :color => 16, :cmc => 5, :rarity => 2, :expansion => "RTR")
	c24.save
	c25 = MtgCard.new(:idInSet => 25, :cardName => "Sunspire Griffin", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/25.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/25.jpg", :color => 16, :cmc => 3, :rarity => 1, :expansion => "RTR", :power => 2, :toughness => 3)
	c25.save
	c26 = MtgCard.new(:idInSet => 26, :cardName => "Swift Justice", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/26.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/26.jpg", :color => 16, :cmc => 1, :rarity => 1, :expansion => "RTR")
	c26.save
	c27 = MtgCard.new(:idInSet => 27, :cardName => "Trained Caracal", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/27.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/27.jpg", :color => 16, :cmc => 1, :rarity => 1, :expansion => "RTR", :power => 1, :toughness => 1)
	c27.save
	c28 = MtgCard.new(:idInSet => 28, :cardName => "Trostani's Judgment", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/28.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/28.jpg", :color => 16, :cmc => 6, :rarity => 1, :expansion => "RTR")
	c28.save
	c29 = MtgCard.new(:idInSet => 29, :cardName => "Aquus Steed", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/29.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/29.jpg", :color => 8, :cmc => 4, :rarity => 2, :expansion => "RTR", :power => 1, :toughness => 3)
	c29.save
	c30 = MtgCard.new(:idInSet => 30, :cardName => "Blustersquall", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/30.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/30.jpg", :color => 8, :cmc => 1, :rarity => 2, :expansion => "RTR")
	c30.save
	c31 = MtgCard.new(:idInSet => 31, :cardName => "Cancel", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/31.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/31.jpg", :color => 8, :cmc => 3, :rarity => 1, :expansion => "RTR")
	c31.save
	c32 = MtgCard.new(:idInSet => 32, :cardName => "Chronic Flooding", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rtr/32.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/32.jpg", :color => 8, :cmc => 2, :rarity => 1, :expansion => "RTR")
	c32.save
	c33 = MtgCard.new(:idInSet => 33, :cardName => "Conjured Currency", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rtr/33.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/33.jpg", :color => 8, :cmc => 6, :rarity => 3, :expansion => "RTR")
	c33.save
	c34 = MtgCard.new(:idInSet => 34, :cardName => "Crosstown Courier", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/34.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/34.jpg", :color => 8, :cmc => 2, :rarity => 1, :expansion => "RTR", :power => 2, :toughness => 1)
	c34.save
	c35 = MtgCard.new(:idInSet => 35, :cardName => "Cyclonic Rift", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/35.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/35.jpg", :color => 8, :cmc => 2, :rarity => 3, :expansion => "RTR")
	c35.save
	c36 = MtgCard.new(:idInSet => 36, :cardName => "Dispel", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/36.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/36.jpg", :color => 8, :cmc => 1, :rarity => 1, :expansion => "RTR")
	c36.save
	c37 = MtgCard.new(:idInSet => 37, :cardName => "Doorkeeper", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/37.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/37.jpg", :color => 8, :cmc => 2, :rarity => 1, :expansion => "RTR", :power => 0, :toughness => 4)
	c37.save
	c38 = MtgCard.new(:idInSet => 38, :cardName => "Downsize", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/38.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/38.jpg", :color => 8, :cmc => 1, :rarity => 1, :expansion => "RTR")
	c38.save
	c39 = MtgCard.new(:idInSet => 39, :cardName => "Faerie Impostor", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/39.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/39.jpg", :color => 8, :cmc => 1, :rarity => 2, :expansion => "RTR", :power => 2, :toughness => 1)
	c39.save
	c40 = MtgCard.new(:idInSet => 40, :cardName => "Hover Barrier", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/40.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/40.jpg", :color => 8, :cmc => 3, :rarity => 2, :expansion => "RTR", :power => 0, :toughness => 6)
	c40.save
	c41 = MtgCard.new(:idInSet => 41, :cardName => "Inaction Injunction", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rtr/41.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/41.jpg", :color => 8, :cmc => 2, :rarity => 1, :expansion => "RTR")
	c41.save
	c42 = MtgCard.new(:idInSet => 42, :cardName => "Inspiration", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/42.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/42.jpg", :color => 8, :cmc => 4, :rarity => 1, :expansion => "RTR")
	c42.save
	c43 = MtgCard.new(:idInSet => 43, :cardName => "Isperia's Skywatch", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/43.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/43.jpg", :color => 8, :cmc => 6, :rarity => 1, :expansion => "RTR", :power => 3, :toughness => 3)
	c43.save
	c44 = MtgCard.new(:idInSet => 44, :cardName => "Jace, Architect of Thought", :cardType => 64, :engSRC => "http://magiccards.info/scans/en/rtr/44.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/44.jpg", :color => 8, :cmc => 4, :rarity => 4, :expansion => "RTR")
	c44.save
	c45 = MtgCard.new(:idInSet => 45, :cardName => "Mizzium Skin", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/45.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/45.jpg", :color => 8, :cmc => 1, :rarity => 1, :expansion => "RTR")
	c45.save
	c46 = MtgCard.new(:idInSet => 46, :cardName => "Paralyzing Grasp", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rtr/46.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/46.jpg", :color => 8, :cmc => 3, :rarity => 1, :expansion => "RTR")
	c46.save
	c47 = MtgCard.new(:idInSet => 47, :cardName => "Psychic Spiral", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/47.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/47.jpg", :color => 8, :cmc => 5, :rarity => 2, :expansion => "RTR")
	c47.save
	c48 = MtgCard.new(:idInSet => 48, :cardName => "Runewing", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/48.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/48.jpg", :color => 8, :cmc => 4, :rarity => 1, :expansion => "RTR", :power => 2, :toughness => 2)
	c48.save
	c49 = MtgCard.new(:idInSet => 49, :cardName => "Search the City", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rtr/49.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/49.jpg", :color => 8, :cmc => 5, :rarity => 3, :expansion => "RTR")
	c49.save
	c50 = MtgCard.new(:idInSet => 50, :cardName => "Skyline Predator", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/50.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/50.jpg", :color => 8, :cmc => 6, :rarity => 2, :expansion => "RTR", :power => 3, :toughness => 4)
	c50.save
	c51 = MtgCard.new(:idInSet => 51, :cardName => "Soulsworn Spirit", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/51.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/51.jpg", :color => 8, :cmc => 4, :rarity => 2, :expansion => "RTR", :power => 2, :toughness => 1)
	c51.save
	c52 = MtgCard.new(:idInSet => 52, :cardName => "Sphinx of the Chimes", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/52.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/52.jpg", :color => 8, :cmc => 6, :rarity => 3, :expansion => "RTR", :power => 5, :toughness => 6)
	c52.save
	c53 = MtgCard.new(:idInSet => 53, :cardName => "Stealer of Secrets", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/53.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/53.jpg", :color => 8, :cmc => 3, :rarity => 1, :expansion => "RTR", :power => 2, :toughness => 2)
	c53.save
	c54 = MtgCard.new(:idInSet => 54, :cardName => "Syncopate", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/54.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/54.jpg", :color => 8, :cmc => 1, :rarity => 2, :expansion => "RTR")
	c54.save
	c55 = MtgCard.new(:idInSet => 55, :cardName => "Tower Drake", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/55.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/55.jpg", :color => 8, :cmc => 3, :rarity => 1, :expansion => "RTR", :power => 2, :toughness => 1)
	c55.save
	c56 = MtgCard.new(:idInSet => 56, :cardName => "Voidwielder", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/56.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/56.jpg", :color => 8, :cmc => 5, :rarity => 1, :expansion => "RTR", :power => 1, :toughness => 4)
	c56.save
	c57 = MtgCard.new(:idInSet => 57, :cardName => "Assassin's Strike", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rtr/57.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/57.jpg", :color => 4, :cmc => 6, :rarity => 2, :expansion => "RTR")
	c57.save
	c58 = MtgCard.new(:idInSet => 58, :cardName => "Catacomb Slug", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/58.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/58.jpg", :color => 4, :cmc => 5, :rarity => 1, :expansion => "RTR", :power => 2, :toughness => 6)
	c58.save
	c59 = MtgCard.new(:idInSet => 59, :cardName => "Cremate", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/59.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/59.jpg", :color => 4, :cmc => 1, :rarity => 1, :expansion => "RTR")
	c59.save
	c60 = MtgCard.new(:idInSet => 60, :cardName => "Daggerdrome Imp", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/60.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/60.jpg", :color => 4, :cmc => 2, :rarity => 1, :expansion => "RTR", :power => 1, :toughness => 1)
	c60.save
	c61 = MtgCard.new(:idInSet => 61, :cardName => "Dark Revenant", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/61.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/61.jpg", :color => 4, :cmc => 4, :rarity => 2, :expansion => "RTR", :power => 2, :toughness => 2)
	c61.save
	c62 = MtgCard.new(:idInSet => 62, :cardName => "Dead Reveler", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/62.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/62.jpg", :color => 4, :cmc => 3, :rarity => 1, :expansion => "RTR", :power => 2, :toughness => 3)
	c62.save
	c63 = MtgCard.new(:idInSet => 63, :cardName => "Desecration Demon", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/63.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/63.jpg", :color => 4, :cmc => 4, :rarity => 3, :expansion => "RTR", :power => 6, :toughness => 6)
	c63.save
	c64 = MtgCard.new(:idInSet => 64, :cardName => "Destroy the Evidence", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rtr/64.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/64.jpg", :color => 4, :cmc => 5, :rarity => 1, :expansion => "RTR")
	c64.save
	c65 = MtgCard.new(:idInSet => 65, :cardName => "Deviant Glee", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rtr/65.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/65.jpg", :color => 4, :cmc => 1, :rarity => 1, :expansion => "RTR")
	c65.save
	c66 = MtgCard.new(:idInSet => 66, :cardName => "Drainpipe Vermin", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/66.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/66.jpg", :color => 4, :cmc => 1, :rarity => 1, :expansion => "RTR", :power => 1, :toughness => 1)
	c66.save
	c67 = MtgCard.new(:idInSet => 67, :cardName => "Grave Betrayal", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rtr/67.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/67.jpg", :color => 4, :cmc => 7, :rarity => 3, :expansion => "RTR")
	c67.save
	c68 = MtgCard.new(:idInSet => 68, :cardName => "Grim Roustabout", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/68.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/68.jpg", :color => 4, :cmc => 2, :rarity => 1, :expansion => "RTR", :power => 1, :toughness => 1)
	c68.save
	c69 = MtgCard.new(:idInSet => 69, :cardName => "Launch Party", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/69.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/69.jpg", :color => 4, :cmc => 4, :rarity => 1, :expansion => "RTR")
	c69.save
	c70 = MtgCard.new(:idInSet => 70, :cardName => "Mind Rot", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rtr/70.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/70.jpg", :color => 4, :cmc => 3, :rarity => 1, :expansion => "RTR")
	c70.save
	c71 = MtgCard.new(:idInSet => 71, :cardName => "Necropolis Regent", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/71.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/71.jpg", :color => 4, :cmc => 6, :rarity => 4, :expansion => "RTR", :power => 6, :toughness => 5)
	c71.save
	c72 = MtgCard.new(:idInSet => 72, :cardName => "Ogre Jailbreaker", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/72.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/72.jpg", :color => 4, :cmc => 4, :rarity => 1, :expansion => "RTR", :power => 4, :toughness => 4)
	c72.save
	c73 = MtgCard.new(:idInSet => 73, :cardName => "Pack Rat", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/73.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/73.jpg", :color => 4, :cmc => 2, :rarity => 3, :expansion => "RTR", :power => 0, :toughness => 0)
	c73.save
	c74 = MtgCard.new(:idInSet => 74, :cardName => "Perilous Shadow", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/74.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/74.jpg", :color => 4, :cmc => 4, :rarity => 1, :expansion => "RTR", :power => 0, :toughness => 4)
	c74.save
	c75 = MtgCard.new(:idInSet => 75, :cardName => "Sewer Shambler", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/75.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/75.jpg", :color => 4, :cmc => 3, :rarity => 1, :expansion => "RTR", :power => 2, :toughness => 1)
	c75.save
	c76 = MtgCard.new(:idInSet => 76, :cardName => "Shrieking Affliction", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rtr/76.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/76.jpg", :color => 4, :cmc => 1, :rarity => 2, :expansion => "RTR")
	c76.save
	c77 = MtgCard.new(:idInSet => 77, :cardName => "Slum Reaper", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/77.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/77.jpg", :color => 4, :cmc => 4, :rarity => 2, :expansion => "RTR", :power => 4, :toughness => 2)
	c77.save
	c78 = MtgCard.new(:idInSet => 78, :cardName => "Stab Wound", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rtr/78.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/78.jpg", :color => 4, :cmc => 3, :rarity => 1, :expansion => "RTR")
	c78.save
	c79 = MtgCard.new(:idInSet => 79, :cardName => "Tavern Swindler", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/79.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/79.jpg", :color => 4, :cmc => 2, :rarity => 2, :expansion => "RTR", :power => 2, :toughness => 2)
	c79.save
	c80 = MtgCard.new(:idInSet => 80, :cardName => "Terrus Wurm", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/80.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/80.jpg", :color => 4, :cmc => 7, :rarity => 1, :expansion => "RTR", :power => 5, :toughness => 5)
	c80.save
	c81 = MtgCard.new(:idInSet => 81, :cardName => "Thrill-Kill Assassin", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/81.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/81.jpg", :color => 4, :cmc => 2, :rarity => 2, :expansion => "RTR", :power => 1, :toughness => 2)
	c81.save
	c82 = MtgCard.new(:idInSet => 82, :cardName => "Ultimate Price", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/82.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/82.jpg", :color => 4, :cmc => 2, :rarity => 2, :expansion => "RTR")
	c82.save
	c83 = MtgCard.new(:idInSet => 83, :cardName => "Underworld Connections", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rtr/83.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/83.jpg", :color => 4, :cmc => 3, :rarity => 3, :expansion => "RTR")
	c83.save
	c84 = MtgCard.new(:idInSet => 84, :cardName => "Zanikev Locust", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/84.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/84.jpg", :color => 4, :cmc => 6, :rarity => 2, :expansion => "RTR", :power => 3, :toughness => 3)
	c84.save
	c85 = MtgCard.new(:idInSet => 85, :cardName => "Annihilating Fire", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/85.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/85.jpg", :color => 2, :cmc => 3, :rarity => 1, :expansion => "RTR")
	c85.save
	c86 = MtgCard.new(:idInSet => 86, :cardName => "Ash Zealot", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/86.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/86.jpg", :color => 2, :cmc => 2, :rarity => 3, :expansion => "RTR", :power => 2, :toughness => 2)
	c86.save
	c87 = MtgCard.new(:idInSet => 87, :cardName => "Batterhorn", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/87.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/87.jpg", :color => 2, :cmc => 5, :rarity => 1, :expansion => "RTR", :power => 4, :toughness => 3)
	c87.save
	c88 = MtgCard.new(:idInSet => 88, :cardName => "Bellows Lizard", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/88.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/88.jpg", :color => 2, :cmc => 1, :rarity => 1, :expansion => "RTR", :power => 1, :toughness => 1)
	c88.save
	c89 = MtgCard.new(:idInSet => 89, :cardName => "Bloodfray Giant", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/89.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/89.jpg", :color => 2, :cmc => 4, :rarity => 2, :expansion => "RTR", :power => 4, :toughness => 3)
	c89.save
	c90 = MtgCard.new(:idInSet => 90, :cardName => "Chaos Imps", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/90.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/90.jpg", :color => 2, :cmc => 6, :rarity => 3, :expansion => "RTR", :power => 6, :toughness => 5)
	c90.save
	c91 = MtgCard.new(:idInSet => 91, :cardName => "Cobblebrute", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/91.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/91.jpg", :color => 2, :cmc => 4, :rarity => 1, :expansion => "RTR", :power => 5, :toughness => 2)
	c91.save
	c92 = MtgCard.new(:idInSet => 92, :cardName => "Dynacharge", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/92.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/92.jpg", :color => 2, :cmc => 1, :rarity => 1, :expansion => "RTR")
	c92.save
	c93 = MtgCard.new(:idInSet => 93, :cardName => "Electrickery", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/93.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/93.jpg", :color => 2, :cmc => 1, :rarity => 1, :expansion => "RTR")
	c93.save
	c94 = MtgCard.new(:idInSet => 94, :cardName => "Explosive Impact", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/94.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/94.jpg", :color => 2, :cmc => 6, :rarity => 1, :expansion => "RTR")
	c94.save
	c95 = MtgCard.new(:idInSet => 95, :cardName => "Goblin Rally", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rtr/95.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/95.jpg", :color => 2, :cmc => 5, :rarity => 2, :expansion => "RTR")
	c95.save
	c96 = MtgCard.new(:idInSet => 96, :cardName => "Gore-House Chainwalker", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/96.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/96.jpg", :color => 2, :cmc => 2, :rarity => 1, :expansion => "RTR", :power => 2, :toughness => 1)
	c96.save
	c97 = MtgCard.new(:idInSet => 97, :cardName => "Guild Feud", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rtr/97.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/97.jpg", :color => 2, :cmc => 6, :rarity => 3, :expansion => "RTR")
	c97.save
	c98 = MtgCard.new(:idInSet => 98, :cardName => "Guttersnipe", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/98.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/98.jpg", :color => 2, :cmc => 3, :rarity => 2, :expansion => "RTR", :power => 2, :toughness => 2)
	c98.save
	c99 = MtgCard.new(:idInSet => 99, :cardName => "Lobber Crew", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/99.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/99.jpg", :color => 2, :cmc => 3, :rarity => 1, :expansion => "RTR", :power => 0, :toughness => 4)
	c99.save
	c100 = MtgCard.new(:idInSet => 100, :cardName => "Minotaur Aggressor", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/100.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/100.jpg", :color => 2, :cmc => 7, :rarity => 2, :expansion => "RTR", :power => 6, :toughness => 2)
	c100.save
	c101 = MtgCard.new(:idInSet => 101, :cardName => "Mizzium Mortars", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rtr/101.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/101.jpg", :color => 2, :cmc => 2, :rarity => 3, :expansion => "RTR")
	c101.save
	c102 = MtgCard.new(:idInSet => 102, :cardName => "Pursuit of Flight", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rtr/102.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/102.jpg", :color => 2, :cmc => 2, :rarity => 1, :expansion => "RTR")
	c102.save
	c103 = MtgCard.new(:idInSet => 103, :cardName => "Pyroconvergence", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rtr/103.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/103.jpg", :color => 2, :cmc => 5, :rarity => 2, :expansion => "RTR")
	c103.save
	c104 = MtgCard.new(:idInSet => 104, :cardName => "Racecourse Fury", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rtr/104.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/104.jpg", :color => 2, :cmc => 1, :rarity => 2, :expansion => "RTR")
	c104.save
	c105 = MtgCard.new(:idInSet => 105, :cardName => "Splatter Thug", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/105.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/105.jpg", :color => 2, :cmc => 3, :rarity => 1, :expansion => "RTR", :power => 2, :toughness => 2)
	c105.save
	c106 = MtgCard.new(:idInSet => 106, :cardName => "Street Spasm", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/106.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/106.jpg", :color => 2, :cmc => 1, :rarity => 2, :expansion => "RTR")
	c106.save
	c107 = MtgCard.new(:idInSet => 107, :cardName => "Survey the Wreckage", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rtr/107.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/107.jpg", :color => 2, :cmc => 5, :rarity => 1, :expansion => "RTR")
	c107.save
	c108 = MtgCard.new(:idInSet => 108, :cardName => "Tenement Crasher", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/108.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/108.jpg", :color => 2, :cmc => 6, :rarity => 1, :expansion => "RTR", :power => 5, :toughness => 4)
	c108.save
	c109 = MtgCard.new(:idInSet => 109, :cardName => "Traitorous Instinct", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rtr/109.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/109.jpg", :color => 2, :cmc => 4, :rarity => 1, :expansion => "RTR")
	c109.save
	c110 = MtgCard.new(:idInSet => 110, :cardName => "Utvara Hellkite", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/110.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/110.jpg", :color => 2, :cmc => 8, :rarity => 4, :expansion => "RTR", :power => 6, :toughness => 6)
	c110.save
	c111 = MtgCard.new(:idInSet => 111, :cardName => "Vandalblast", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rtr/111.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/111.jpg", :color => 2, :cmc => 1, :rarity => 2, :expansion => "RTR")
	c111.save
	c112 = MtgCard.new(:idInSet => 112, :cardName => "Viashino Racketeer", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/112.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/112.jpg", :color => 2, :cmc => 3, :rarity => 1, :expansion => "RTR", :power => 2, :toughness => 1)
	c112.save
	c113 = MtgCard.new(:idInSet => 113, :cardName => "Aerial Predation", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/113.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/113.jpg", :color => 1, :cmc => 3, :rarity => 1, :expansion => "RTR")
	c113.save
	c114 = MtgCard.new(:idInSet => 114, :cardName => "Archweaver", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/114.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/114.jpg", :color => 1, :cmc => 7, :rarity => 2, :expansion => "RTR", :power => 5, :toughness => 5)
	c114.save
	c115 = MtgCard.new(:idInSet => 115, :cardName => "Axebane Guardian", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/115.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/115.jpg", :color => 1, :cmc => 3, :rarity => 1, :expansion => "RTR", :power => 0, :toughness => 3)
	c115.save
	c116 = MtgCard.new(:idInSet => 116, :cardName => "Axebane Stag", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/116.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/116.jpg", :color => 1, :cmc => 7, :rarity => 1, :expansion => "RTR", :power => 6, :toughness => 7)
	c116.save
	c117 = MtgCard.new(:idInSet => 117, :cardName => "Brushstrider", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/117.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/117.jpg", :color => 1, :cmc => 2, :rarity => 2, :expansion => "RTR", :power => 3, :toughness => 1)
	c117.save
	c118 = MtgCard.new(:idInSet => 118, :cardName => "Centaur's Herald", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/118.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/118.jpg", :color => 1, :cmc => 1, :rarity => 1, :expansion => "RTR", :power => 0, :toughness => 1)
	c118.save
	c119 = MtgCard.new(:idInSet => 119, :cardName => "Chorus of Might", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/119.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/119.jpg", :color => 1, :cmc => 4, :rarity => 1, :expansion => "RTR")
	c119.save
	c120 = MtgCard.new(:idInSet => 120, :cardName => "Deadbridge Goliath", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/120.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/120.jpg", :color => 1, :cmc => 4, :rarity => 3, :expansion => "RTR", :power => 5, :toughness => 5)
	c120.save
	c121 = MtgCard.new(:idInSet => 121, :cardName => "Death's Presence", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rtr/121.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/121.jpg", :color => 1, :cmc => 6, :rarity => 3, :expansion => "RTR")
	c121.save
	c122 = MtgCard.new(:idInSet => 122, :cardName => "Drudge Beetle", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/122.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/122.jpg", :color => 1, :cmc => 2, :rarity => 1, :expansion => "RTR", :power => 2, :toughness => 2)
	c122.save
	c123 = MtgCard.new(:idInSet => 123, :cardName => "Druid's Deliverance", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/123.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/123.jpg", :color => 1, :cmc => 2, :rarity => 1, :expansion => "RTR")
	c123.save
	c124 = MtgCard.new(:idInSet => 124, :cardName => "Gatecreeper Vine", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/124.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/124.jpg", :color => 1, :cmc => 2, :rarity => 1, :expansion => "RTR", :power => 0, :toughness => 2)
	c124.save
	c125 = MtgCard.new(:idInSet => 125, :cardName => "Giant Growth", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/125.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/125.jpg", :color => 1, :cmc => 1, :rarity => 1, :expansion => "RTR")
	c125.save
	c126 = MtgCard.new(:idInSet => 126, :cardName => "Gobbling Ooze", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/126.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/126.jpg", :color => 1, :cmc => 5, :rarity => 2, :expansion => "RTR", :power => 3, :toughness => 3)
	c126.save
	c127 = MtgCard.new(:idInSet => 127, :cardName => "Golgari Decoy", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/127.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/127.jpg", :color => 1, :cmc => 4, :rarity => 2, :expansion => "RTR", :power => 2, :toughness => 2)
	c127.save
	c128 = MtgCard.new(:idInSet => 128, :cardName => "Horncaller's Chant", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rtr/128.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/128.jpg", :color => 1, :cmc => 8, :rarity => 1, :expansion => "RTR")
	c128.save
	c129 = MtgCard.new(:idInSet => 129, :cardName => "Korozda Monitor", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/129.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/129.jpg", :color => 1, :cmc => 4, :rarity => 1, :expansion => "RTR", :power => 3, :toughness => 3)
	c129.save
	c130 = MtgCard.new(:idInSet => 130, :cardName => "Mana Bloom", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rtr/130.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/130.jpg", :color => 1, :cmc => 1, :rarity => 3, :expansion => "RTR")
	c130.save
	c131 = MtgCard.new(:idInSet => 131, :cardName => "Oak Street Innkeeper", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/131.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/131.jpg", :color => 1, :cmc => 3, :rarity => 2, :expansion => "RTR", :power => 1, :toughness => 2)
	c131.save
	c132 = MtgCard.new(:idInSet => 132, :cardName => "Rubbleback Rhino", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/132.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/132.jpg", :color => 1, :cmc => 5, :rarity => 1, :expansion => "RTR", :power => 3, :toughness => 4)
	c132.save
	c133 = MtgCard.new(:idInSet => 133, :cardName => "Savage Surge", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/133.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/133.jpg", :color => 1, :cmc => 2, :rarity => 2, :expansion => "RTR")
	c133.save
	c134 = MtgCard.new(:idInSet => 134, :cardName => "Seek the Horizon", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rtr/134.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/134.jpg", :color => 1, :cmc => 4, :rarity => 2, :expansion => "RTR")
	c134.save
	c135 = MtgCard.new(:idInSet => 135, :cardName => "Slime Molding", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rtr/135.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/135.jpg", :color => 1, :cmc => 1, :rarity => 2, :expansion => "RTR")
	c135.save
	c136 = MtgCard.new(:idInSet => 136, :cardName => "Stonefare Crocodile", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/136.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/136.jpg", :color => 1, :cmc => 3, :rarity => 1, :expansion => "RTR", :power => 3, :toughness => 2)
	c136.save
	c137 = MtgCard.new(:idInSet => 137, :cardName => "Towering Indrik", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/137.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/137.jpg", :color => 1, :cmc => 4, :rarity => 1, :expansion => "RTR", :power => 2, :toughness => 4)
	c137.save
	c138 = MtgCard.new(:idInSet => 138, :cardName => "Urban Burgeoning", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rtr/138.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/138.jpg", :color => 1, :cmc => 1, :rarity => 1, :expansion => "RTR")
	c138.save
	c139 = MtgCard.new(:idInSet => 139, :cardName => "Wild Beastmaster", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/139.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/139.jpg", :color => 1, :cmc => 3, :rarity => 3, :expansion => "RTR", :power => 1, :toughness => 1)
	c139.save
	c140 = MtgCard.new(:idInSet => 140, :cardName => "Worldspine Wurm", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/140.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/140.jpg", :color => 1, :cmc => 11, :rarity => 4, :expansion => "RTR", :power => 15, :toughness => 15)
	c140.save
	c141 = MtgCard.new(:idInSet => 141, :cardName => "Abrupt Decay", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/141.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/141.jpg", :color => 5, :cmc => 2, :rarity => 3, :expansion => "RTR")
	c141.save
	c142 = MtgCard.new(:idInSet => 142, :cardName => "Archon of the Triumvirate", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/142.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/142.jpg", :color => 24, :cmc => 7, :rarity => 3, :expansion => "RTR", :power => 4, :toughness => 5)
	c142.save
	c143 = MtgCard.new(:idInSet => 143, :cardName => "Armada Wurm", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/143.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/143.jpg", :color => 17, :cmc => 6, :rarity => 4, :expansion => "RTR", :power => 5, :toughness => 5)
	c143.save
	c144 = MtgCard.new(:idInSet => 144, :cardName => "Auger Spree", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/144.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/144.jpg", :color => 6, :cmc => 3, :rarity => 1, :expansion => "RTR")
	c144.save
	c145 = MtgCard.new(:idInSet => 145, :cardName => "Azorius Charm", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/145.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/145.jpg", :color => 24, :cmc => 2, :rarity => 2, :expansion => "RTR")
	c145.save
	c146 = MtgCard.new(:idInSet => 146, :cardName => "Call of the Conclave", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rtr/146.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/146.jpg", :color => 17, :cmc => 2, :rarity => 2, :expansion => "RTR")
	c146.save
	c147 = MtgCard.new(:idInSet => 147, :cardName => "Carnival Hellsteed", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/147.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/147.jpg", :color => 6, :cmc => 6, :rarity => 3, :expansion => "RTR", :power => 5, :toughness => 4)
	c147.save
	c148 = MtgCard.new(:idInSet => 148, :cardName => "Centaur Healer", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/148.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/148.jpg", :color => 17, :cmc => 3, :rarity => 1, :expansion => "RTR", :power => 3, :toughness => 3)
	c148.save
	c149 = MtgCard.new(:idInSet => 149, :cardName => "Chemister's Trick", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/149.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/149.jpg", :color => 10, :cmc => 2, :rarity => 1, :expansion => "RTR")
	c149.save
	c150 = MtgCard.new(:idInSet => 150, :cardName => "Collective Blessing", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rtr/150.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/150.jpg", :color => 17, :cmc => 6, :rarity => 3, :expansion => "RTR")
	c150.save
	c151 = MtgCard.new(:idInSet => 151, :cardName => "Common Bond", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/151.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/151.jpg", :color => 17, :cmc => 3, :rarity => 1, :expansion => "RTR")
	c151.save
	c152 = MtgCard.new(:idInSet => 152, :cardName => "Corpsejack Menace", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/152.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/152.jpg", :color => 5, :cmc => 4, :rarity => 3, :expansion => "RTR", :power => 4, :toughness => 4)
	c152.save
	c153 = MtgCard.new(:idInSet => 153, :cardName => "Counterflux", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/153.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/153.jpg", :color => 10, :cmc => 3, :rarity => 3, :expansion => "RTR")
	c153.save
	c154 = MtgCard.new(:idInSet => 154, :cardName => "Coursers' Accord", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rtr/154.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/154.jpg", :color => 17, :cmc => 6, :rarity => 1, :expansion => "RTR")
	c154.save
	c155 = MtgCard.new(:idInSet => 155, :cardName => "Detention Sphere", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rtr/155.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/155.jpg", :color => 24, :cmc => 3, :rarity => 3, :expansion => "RTR")
	c155.save
	c156 = MtgCard.new(:idInSet => 156, :cardName => "Dramatic Rescue", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/156.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/156.jpg", :color => 24, :cmc => 2, :rarity => 1, :expansion => "RTR")
	c156.save
	c157 = MtgCard.new(:idInSet => 157, :cardName => "Dreadbore", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rtr/157.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/157.jpg", :color => 6, :cmc => 2, :rarity => 3, :expansion => "RTR")
	c157.save
	c158 = MtgCard.new(:idInSet => 158, :cardName => "Dreg Mangler", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/158.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/158.jpg", :color => 5, :cmc => 3, :rarity => 2, :expansion => "RTR", :power => 3, :toughness => 3)
	c158.save
	c159 = MtgCard.new(:idInSet => 159, :cardName => "Epic Experiment", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rtr/159.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/159.jpg", :color => 10, :cmc => 2, :rarity => 4, :expansion => "RTR")
	c159.save
	c160 = MtgCard.new(:idInSet => 160, :cardName => "Essence Backlash", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/160.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/160.jpg", :color => 10, :cmc => 4, :rarity => 1, :expansion => "RTR")
	c160.save
	c161 = MtgCard.new(:idInSet => 161, :cardName => "Fall of the Gavel", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/161.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/161.jpg", :color => 24, :cmc => 5, :rarity => 2, :expansion => "RTR")
	c161.save
	c162 = MtgCard.new(:idInSet => 162, :cardName => "Firemind's Foresight", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/162.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/162.jpg", :color => 10, :cmc => 7, :rarity => 3, :expansion => "RTR")
	c162.save
	c163 = MtgCard.new(:idInSet => 163, :cardName => "Goblin Electromancer", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/163.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/163.jpg", :color => 10, :cmc => 2, :rarity => 1, :expansion => "RTR", :power => 2, :toughness => 2)
	c163.save
	c164 = MtgCard.new(:idInSet => 164, :cardName => "Golgari Charm", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/164.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/164.jpg", :color => 5, :cmc => 2, :rarity => 2, :expansion => "RTR")
	c164.save
	c165 = MtgCard.new(:idInSet => 165, :cardName => "Grisly Salvage", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/165.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/165.jpg", :color => 5, :cmc => 2, :rarity => 1, :expansion => "RTR")
	c165.save
	c166 = MtgCard.new(:idInSet => 166, :cardName => "Havoc Festival", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rtr/166.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/166.jpg", :color => 6, :cmc => 6, :rarity => 3, :expansion => "RTR")
	c166.save
	c167 = MtgCard.new(:idInSet => 167, :cardName => "Hellhole Flailer", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/167.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/167.jpg", :color => 6, :cmc => 3, :rarity => 2, :expansion => "RTR", :power => 3, :toughness => 2)
	c167.save
	c168 = MtgCard.new(:idInSet => 168, :cardName => "Heroes' Reunion", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/168.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/168.jpg", :color => 17, :cmc => 2, :rarity => 2, :expansion => "RTR")
	c168.save
	c169 = MtgCard.new(:idInSet => 169, :cardName => "Hussar Patrol", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/169.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/169.jpg", :color => 24, :cmc => 4, :rarity => 1, :expansion => "RTR", :power => 2, :toughness => 4)
	c169.save
	c170 = MtgCard.new(:idInSet => 170, :cardName => "Hypersonic Dragon", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/170.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/170.jpg", :color => 10, :cmc => 5, :rarity => 3, :expansion => "RTR", :power => 4, :toughness => 4)
	c170.save
	c171 = MtgCard.new(:idInSet => 171, :cardName => "Isperia, Supreme Judge", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/171.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/171.jpg", :color => 24, :cmc => 6, :rarity => 4, :expansion => "RTR", :power => 6, :toughness => 4)
	c171.save
	c172 = MtgCard.new(:idInSet => 172, :cardName => "Izzet Charm", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/172.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/172.jpg", :color => 10, :cmc => 2, :rarity => 2, :expansion => "RTR")
	c172.save
	c173 = MtgCard.new(:idInSet => 173, :cardName => "Izzet Staticaster", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/173.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/173.jpg", :color => 10, :cmc => 3, :rarity => 2, :expansion => "RTR", :power => 0, :toughness => 3)
	c173.save
	c174 = MtgCard.new(:idInSet => 174, :cardName => "Jarad, Golgari Lich Lord", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/174.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/174.jpg", :color => 5, :cmc => 4, :rarity => 4, :expansion => "RTR", :power => 2, :toughness => 2)
	c174.save
	c175 = MtgCard.new(:idInSet => 175, :cardName => "Jarad's Orders", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rtr/175.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/175.jpg", :color => 5, :cmc => 4, :rarity => 3, :expansion => "RTR")
	c175.save
	c176 = MtgCard.new(:idInSet => 176, :cardName => "Korozda Guildmage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/176.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/176.jpg", :color => 5, :cmc => 2, :rarity => 2, :expansion => "RTR", :power => 2, :toughness => 2)
	c176.save
	c177 = MtgCard.new(:idInSet => 177, :cardName => "Lotleth Troll", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/177.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/177.jpg", :color => 5, :cmc => 2, :rarity => 3, :expansion => "RTR", :power => 2, :toughness => 1)
	c177.save
	c178 = MtgCard.new(:idInSet => 178, :cardName => "Loxodon Smiter", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/178.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/178.jpg", :color => 17, :cmc => 3, :rarity => 3, :expansion => "RTR", :power => 4, :toughness => 4)
	c178.save
	c179 = MtgCard.new(:idInSet => 179, :cardName => "Lyev Skyknight", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/179.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/179.jpg", :color => 24, :cmc => 3, :rarity => 2, :expansion => "RTR", :power => 3, :toughness => 1)
	c179.save
	c180 = MtgCard.new(:idInSet => 180, :cardName => "Mercurial Chemister", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/180.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/180.jpg", :color => 10, :cmc => 5, :rarity => 3, :expansion => "RTR", :power => 2, :toughness => 3)
	c180.save
	c181 = MtgCard.new(:idInSet => 181, :cardName => "New Prahv Guildmage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/181.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/181.jpg", :color => 24, :cmc => 2, :rarity => 2, :expansion => "RTR", :power => 2, :toughness => 2)
	c181.save
	c182 = MtgCard.new(:idInSet => 182, :cardName => "Nivix Guildmage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/182.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/182.jpg", :color => 10, :cmc => 2, :rarity => 2, :expansion => "RTR", :power => 2, :toughness => 2)
	c182.save
	c183 = MtgCard.new(:idInSet => 183, :cardName => "Niv-Mizzet, Dracogenius", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/183.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/183.jpg", :color => 10, :cmc => 6, :rarity => 4, :expansion => "RTR", :power => 5, :toughness => 5)
	c183.save
	c184 = MtgCard.new(:idInSet => 184, :cardName => "Rakdos Charm", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/184.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/184.jpg", :color => 6, :cmc => 2, :rarity => 2, :expansion => "RTR")
	c184.save
	c185 = MtgCard.new(:idInSet => 185, :cardName => "Rakdos Ragemutt", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/185.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/185.jpg", :color => 6, :cmc => 5, :rarity => 2, :expansion => "RTR", :power => 3, :toughness => 3)
	c185.save
	c186 = MtgCard.new(:idInSet => 186, :cardName => "Rakdos Ringleader", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/186.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/186.jpg", :color => 6, :cmc => 6, :rarity => 2, :expansion => "RTR", :power => 3, :toughness => 1)
	c186.save
	c187 = MtgCard.new(:idInSet => 187, :cardName => "Rakdos, Lord of Riots", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/187.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/187.jpg", :color => 6, :cmc => 4, :rarity => 4, :expansion => "RTR", :power => 6, :toughness => 6)
	c187.save
	c188 = MtgCard.new(:idInSet => 188, :cardName => "Rakdos's Return", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rtr/188.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/188.jpg", :color => 6, :cmc => 2, :rarity => 4, :expansion => "RTR")
	c188.save
	c189 = MtgCard.new(:idInSet => 189, :cardName => "Righteous Authority", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rtr/189.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/189.jpg", :color => 24, :cmc => 5, :rarity => 3, :expansion => "RTR")
	c189.save
	c190 = MtgCard.new(:idInSet => 190, :cardName => "Risen Sanctuary", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/190.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/190.jpg", :color => 17, :cmc => 7, :rarity => 2, :expansion => "RTR", :power => 8, :toughness => 8)
	c190.save
	c191 = MtgCard.new(:idInSet => 191, :cardName => "Rites of Reaping", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rtr/191.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/191.jpg", :color => 5, :cmc => 6, :rarity => 2, :expansion => "RTR")
	c191.save
	c192 = MtgCard.new(:idInSet => 192, :cardName => "Rix Maadi Guildmage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/192.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/192.jpg", :color => 6, :cmc => 2, :rarity => 2, :expansion => "RTR", :power => 2, :toughness => 2)
	c192.save
	c193 = MtgCard.new(:idInSet => 193, :cardName => "Search Warrant", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rtr/193.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/193.jpg", :color => 24, :cmc => 2, :rarity => 1, :expansion => "RTR")
	c193.save
	c194 = MtgCard.new(:idInSet => 194, :cardName => "Selesnya Charm", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/194.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/194.jpg", :color => 17, :cmc => 2, :rarity => 2, :expansion => "RTR")
	c194.save
	c195 = MtgCard.new(:idInSet => 195, :cardName => "Skull Rend", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rtr/195.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/195.jpg", :color => 6, :cmc => 5, :rarity => 1, :expansion => "RTR")
	c195.save
	c196 = MtgCard.new(:idInSet => 196, :cardName => "Skymark Roc", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/196.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/196.jpg", :color => 24, :cmc => 4, :rarity => 2, :expansion => "RTR", :power => 3, :toughness => 3)
	c196.save
	c197 = MtgCard.new(:idInSet => 197, :cardName => "Slaughter Games", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rtr/197.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/197.jpg", :color => 6, :cmc => 4, :rarity => 3, :expansion => "RTR")
	c197.save
	c198 = MtgCard.new(:idInSet => 198, :cardName => "Sluiceway Scorpion", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/198.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/198.jpg", :color => 5, :cmc => 4, :rarity => 1, :expansion => "RTR", :power => 2, :toughness => 2)
	c198.save
	c199 = MtgCard.new(:idInSet => 199, :cardName => "Spawn of Rix Maadi", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/199.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/199.jpg", :color => 6, :cmc => 5, :rarity => 1, :expansion => "RTR", :power => 5, :toughness => 3)
	c199.save
	c200 = MtgCard.new(:idInSet => 200, :cardName => "Sphinx's Revelation", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/200.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/200.jpg", :color => 24, :cmc => 3, :rarity => 4, :expansion => "RTR")
	c200.save
	c201 = MtgCard.new(:idInSet => 201, :cardName => "Supreme Verdict", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rtr/201.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/201.jpg", :color => 24, :cmc => 4, :rarity => 3, :expansion => "RTR")
	c201.save
	c202 = MtgCard.new(:idInSet => 202, :cardName => "Teleportal", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rtr/202.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/202.jpg", :color => 10, :cmc => 2, :rarity => 2, :expansion => "RTR")
	c202.save
	c203 = MtgCard.new(:idInSet => 203, :cardName => "Thoughtflare", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/203.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/203.jpg", :color => 10, :cmc => 5, :rarity => 2, :expansion => "RTR")
	c203.save
	c204 = MtgCard.new(:idInSet => 204, :cardName => "Treasured Find", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rtr/204.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/204.jpg", :color => 5, :cmc => 2, :rarity => 2, :expansion => "RTR")
	c204.save
	c205 = MtgCard.new(:idInSet => 205, :cardName => "Trestle Troll", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/205.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/205.jpg", :color => 5, :cmc => 3, :rarity => 1, :expansion => "RTR", :power => 1, :toughness => 4)
	c205.save
	c206 = MtgCard.new(:idInSet => 206, :cardName => "Trostani, Selesnya's Voice", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/206.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/206.jpg", :color => 17, :cmc => 4, :rarity => 4, :expansion => "RTR", :power => 2, :toughness => 5)
	c206.save
	c207 = MtgCard.new(:idInSet => 207, :cardName => "Vitu-Ghazi Guildmage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/207.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/207.jpg", :color => 17, :cmc => 2, :rarity => 2, :expansion => "RTR", :power => 2, :toughness => 2)
	c207.save
	c208 = MtgCard.new(:idInSet => 208, :cardName => "Vraska the Unseen", :cardType => 64, :engSRC => "http://magiccards.info/scans/en/rtr/208.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/208.jpg", :color => 5, :cmc => 5, :rarity => 4, :expansion => "RTR")
	c208.save
	c209 = MtgCard.new(:idInSet => 209, :cardName => "Wayfaring Temple", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/209.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/209.jpg", :color => 17, :cmc => 3, :rarity => 3, :expansion => "RTR", :power => 0, :toughness => 0)
	c209.save
	c210 = MtgCard.new(:idInSet => 210, :cardName => "Azor's Elocutors", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/210.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/210.jpg", :color => 24, :cmc => 5, :rarity => 3, :expansion => "RTR", :power => 3, :toughness => 5)
	c210.save
	c211 = MtgCard.new(:idInSet => 211, :cardName => "Blistercoil Weird", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/211.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/211.jpg", :color => 10, :cmc => 1, :rarity => 2, :expansion => "RTR", :power => 1, :toughness => 1)
	c211.save
	c212 = MtgCard.new(:idInSet => 212, :cardName => "Cryptborn Horror", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/212.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/212.jpg", :color => 6, :cmc => 3, :rarity => 3, :expansion => "RTR", :power => 0, :toughness => 0)
	c212.save
	c213 = MtgCard.new(:idInSet => 213, :cardName => "Deathrite Shaman", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/213.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/213.jpg", :color => 5, :cmc => 1, :rarity => 3, :expansion => "RTR", :power => 1, :toughness => 2)
	c213.save
	c214 = MtgCard.new(:idInSet => 214, :cardName => "Dryad Militant", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/214.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/214.jpg", :color => 17, :cmc => 1, :rarity => 2, :expansion => "RTR", :power => 2, :toughness => 1)
	c214.save
	c215 = MtgCard.new(:idInSet => 215, :cardName => "Frostburn Weird", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/215.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/215.jpg", :color => 10, :cmc => 2, :rarity => 1, :expansion => "RTR", :power => 1, :toughness => 4)
	c215.save
	c216 = MtgCard.new(:idInSet => 216, :cardName => "Golgari Longlegs", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/216.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/216.jpg", :color => 5, :cmc => 5, :rarity => 1, :expansion => "RTR", :power => 5, :toughness => 4)
	c216.save
	c217 = MtgCard.new(:idInSet => 217, :cardName => "Growing Ranks", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rtr/217.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/217.jpg", :color => 17, :cmc => 4, :rarity => 3, :expansion => "RTR")
	c217.save
	c218 = MtgCard.new(:idInSet => 218, :cardName => "Judge's Familiar", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/218.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/218.jpg", :color => 24, :cmc => 1, :rarity => 2, :expansion => "RTR", :power => 1, :toughness => 1)
	c218.save
	c219 = MtgCard.new(:idInSet => 219, :cardName => "Nivmagus Elemental", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/219.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/219.jpg", :color => 10, :cmc => 1, :rarity => 3, :expansion => "RTR", :power => 1, :toughness => 2)
	c219.save
	c220 = MtgCard.new(:idInSet => 220, :cardName => "Rakdos Cackler", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/220.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/220.jpg", :color => 6, :cmc => 1, :rarity => 2, :expansion => "RTR", :power => 1, :toughness => 1)
	c220.save
	c221 = MtgCard.new(:idInSet => 221, :cardName => "Rakdos Shred-Freak", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/221.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/221.jpg", :color => 6, :cmc => 2, :rarity => 1, :expansion => "RTR", :power => 2, :toughness => 1)
	c221.save
	c222 = MtgCard.new(:idInSet => 222, :cardName => "Slitherhead", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/222.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/222.jpg", :color => 5, :cmc => 1, :rarity => 2, :expansion => "RTR", :power => 1, :toughness => 1)
	c222.save
	c223 = MtgCard.new(:idInSet => 223, :cardName => "Sundering Growth", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rtr/223.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/223.jpg", :color => 17, :cmc => 2, :rarity => 1, :expansion => "RTR")
	c223.save
	c224 = MtgCard.new(:idInSet => 224, :cardName => "Vassal Soul", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rtr/224.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/224.jpg", :color => 24, :cmc => 3, :rarity => 1, :expansion => "RTR", :power => 2, :toughness => 2)
	c224.save
	c225 = MtgCard.new(:idInSet => 225, :cardName => "Azorius Keyrune", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/rtr/225.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/225.jpg", :color => 0, :cmc => 3, :rarity => 2, :expansion => "RTR")
	c225.save
	c226 = MtgCard.new(:idInSet => 226, :cardName => "Chromatic Lantern", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/rtr/226.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/226.jpg", :color => 0, :cmc => 3, :rarity => 3, :expansion => "RTR")
	c226.save
	c227 = MtgCard.new(:idInSet => 227, :cardName => "Civic Saber", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/rtr/227.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/227.jpg", :color => 0, :cmc => 1, :rarity => 2, :expansion => "RTR")
	c227.save
	c228 = MtgCard.new(:idInSet => 228, :cardName => "Codex Shredder", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/rtr/228.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/228.jpg", :color => 0, :cmc => 1, :rarity => 2, :expansion => "RTR")
	c228.save
	c229 = MtgCard.new(:idInSet => 229, :cardName => "Golgari Keyrune", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/rtr/229.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/229.jpg", :color => 0, :cmc => 3, :rarity => 2, :expansion => "RTR")
	c229.save
	c230 = MtgCard.new(:idInSet => 230, :cardName => "Izzet Keyrune", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/rtr/230.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/230.jpg", :color => 0, :cmc => 3, :rarity => 2, :expansion => "RTR")
	c230.save
	c231 = MtgCard.new(:idInSet => 231, :cardName => "Pithing Needle", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/rtr/231.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/231.jpg", :color => 0, :cmc => 1, :rarity => 3, :expansion => "RTR")
	c231.save
	c232 = MtgCard.new(:idInSet => 232, :cardName => "Rakdos Keyrune", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/rtr/232.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/232.jpg", :color => 0, :cmc => 3, :rarity => 2, :expansion => "RTR")
	c232.save
	c233 = MtgCard.new(:idInSet => 233, :cardName => "Selesnya Keyrune", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/rtr/233.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/233.jpg", :color => 0, :cmc => 3, :rarity => 2, :expansion => "RTR")
	c233.save
	c234 = MtgCard.new(:idInSet => 234, :cardName => "Street Sweeper", :cardType => 9, :engSRC => "http://magiccards.info/scans/en/rtr/234.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/234.jpg", :color => 0, :cmc => 6, :rarity => 2, :expansion => "RTR", :power => 4, :toughness => 6)
	c234.save
	c235 = MtgCard.new(:idInSet => 235, :cardName => "Tablet of the Guilds", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/rtr/235.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/235.jpg", :color => 0, :cmc => 2, :rarity => 2, :expansion => "RTR")
	c235.save
	c236 = MtgCard.new(:idInSet => 236, :cardName => "Volatile Rig", :cardType => 9, :engSRC => "http://magiccards.info/scans/en/rtr/236.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/236.jpg", :color => 0, :cmc => 4, :rarity => 3, :expansion => "RTR", :power => 4, :toughness => 4)
	c236.save
	c237 = MtgCard.new(:idInSet => 237, :cardName => "Azorius Guildgate", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/rtr/237.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/237.jpg", :color => 0, :cmc => 0, :rarity => 1, :expansion => "RTR")
	c237.save
	c238 = MtgCard.new(:idInSet => 238, :cardName => "Blood Crypt", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/rtr/238.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/238.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "RTR")
	c238.save
	c239 = MtgCard.new(:idInSet => 239, :cardName => "Golgari Guildgate", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/rtr/239.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/239.jpg", :color => 0, :cmc => 0, :rarity => 1, :expansion => "RTR")
	c239.save
	c240 = MtgCard.new(:idInSet => 240, :cardName => "Grove of the Guardian", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/rtr/240.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/240.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "RTR")
	c240.save
	c241 = MtgCard.new(:idInSet => 241, :cardName => "Hallowed Fountain", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/rtr/241.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/241.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "RTR")
	c241.save
	c242 = MtgCard.new(:idInSet => 242, :cardName => "Izzet Guildgate", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/rtr/242.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/242.jpg", :color => 0, :cmc => 0, :rarity => 1, :expansion => "RTR")
	c242.save
	c243 = MtgCard.new(:idInSet => 243, :cardName => "Overgrown Tomb", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/rtr/243.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/243.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "RTR")
	c243.save
	c244 = MtgCard.new(:idInSet => 244, :cardName => "Rakdos Guildgate", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/rtr/244.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/244.jpg", :color => 0, :cmc => 0, :rarity => 1, :expansion => "RTR")
	c244.save
	c245 = MtgCard.new(:idInSet => 245, :cardName => "Rogue's Passage", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/rtr/245.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/245.jpg", :color => 0, :cmc => 0, :rarity => 2, :expansion => "RTR")
	c245.save
	c246 = MtgCard.new(:idInSet => 246, :cardName => "Selesnya Guildgate", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/rtr/246.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/246.jpg", :color => 0, :cmc => 0, :rarity => 1, :expansion => "RTR")
	c246.save
	c247 = MtgCard.new(:idInSet => 247, :cardName => "Steam Vents", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/rtr/247.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/247.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "RTR")
	c247.save
	c248 = MtgCard.new(:idInSet => 248, :cardName => "Temple Garden", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/rtr/248.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/248.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "RTR")
	c248.save
	c249 = MtgCard.new(:idInSet => 249, :cardName => "Transguild Promenade", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/rtr/249.jpg", :chiSRC => "http://magiccards.info/scans/cn/rtr/249.jpg", :color => 0, :cmc => 0, :rarity => 1, :expansion => "RTR")
	c249.save
end