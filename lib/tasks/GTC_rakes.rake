desc "Import GTC cards."
task :import_GTC_cards => :environment do

	c1 = MtgCard.new(:idInSet => 1, :cardName => "Aerial Maneuver", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/1.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/1.jpg", :color => 16, :cmc => 2, :rarity => 1, :expansion => "GTC")
	c1.save
	c2 = MtgCard.new(:idInSet => 2, :cardName => "Angelic Edict", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gtc/2.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/2.jpg", :color => 16, :cmc => 5, :rarity => 1, :expansion => "GTC")
	c2.save
	c3 = MtgCard.new(:idInSet => 3, :cardName => "Angelic Skirmisher", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/3.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/3.jpg", :color => 16, :cmc => 6, :rarity => 3, :expansion => "GTC", :power => 4, :toughness => 4)
	c3.save
	c4 = MtgCard.new(:idInSet => 4, :cardName => "Assault Griffin", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/4.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/4.jpg", :color => 16, :cmc => 4, :rarity => 1, :expansion => "GTC", :power => 3, :toughness => 2)
	c4.save
	c5 = MtgCard.new(:idInSet => 5, :cardName => "Basilica Guards", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/5.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/5.jpg", :color => 16, :cmc => 3, :rarity => 1, :expansion => "GTC", :power => 1, :toughness => 4)
	c5.save
	c6 = MtgCard.new(:idInSet => 6, :cardName => "Blind Obedience", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gtc/6.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/6.jpg", :color => 16, :cmc => 2, :rarity => 3, :expansion => "GTC")
	c6.save
	c7 = MtgCard.new(:idInSet => 7, :cardName => "Boros Elite", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/7.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/7.jpg", :color => 16, :cmc => 1, :rarity => 2, :expansion => "GTC", :power => 1, :toughness => 1)
	c7.save
	c8 = MtgCard.new(:idInSet => 8, :cardName => "Court Street Denizen", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/8.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/8.jpg", :color => 16, :cmc => 3, :rarity => 1, :expansion => "GTC", :power => 2, :toughness => 2)
	c8.save
	c9 = MtgCard.new(:idInSet => 9, :cardName => "Daring Skyjek", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/9.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/9.jpg", :color => 16, :cmc => 2, :rarity => 1, :expansion => "GTC", :power => 3, :toughness => 1)
	c9.save
	c10 = MtgCard.new(:idInSet => 10, :cardName => "Debtor's Pulpit", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gtc/10.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/10.jpg", :color => 16, :cmc => 5, :rarity => 2, :expansion => "GTC")
	c10.save
	c11 = MtgCard.new(:idInSet => 11, :cardName => "Dutiful Thrull", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/11.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/11.jpg", :color => 16, :cmc => 1, :rarity => 1, :expansion => "GTC", :power => 1, :toughness => 1)
	c11.save
	c12 = MtgCard.new(:idInSet => 12, :cardName => "Frontline Medic", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/12.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/12.jpg", :color => 16, :cmc => 3, :rarity => 3, :expansion => "GTC", :power => 3, :toughness => 3)
	c12.save
	c13 = MtgCard.new(:idInSet => 13, :cardName => "Gideon, Champion of Justice", :cardType => 64, :engSRC => "http://magiccards.info/scans/en/gtc/13.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/13.jpg", :color => 16, :cmc => 4, :rarity => 4, :expansion => "GTC")
	c13.save
	c14 = MtgCard.new(:idInSet => 14, :cardName => "Guardian of the Gateless", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/14.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/14.jpg", :color => 16, :cmc => 5, :rarity => 2, :expansion => "GTC", :power => 3, :toughness => 3)
	c14.save
	c15 = MtgCard.new(:idInSet => 15, :cardName => "Guildscorn Ward", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gtc/15.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/15.jpg", :color => 16, :cmc => 1, :rarity => 1, :expansion => "GTC")
	c15.save
	c16 = MtgCard.new(:idInSet => 16, :cardName => "Hold the Gates", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gtc/16.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/16.jpg", :color => 16, :cmc => 3, :rarity => 2, :expansion => "GTC")
	c16.save
	c17 = MtgCard.new(:idInSet => 17, :cardName => "Holy Mantle", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gtc/17.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/17.jpg", :color => 16, :cmc => 4, :rarity => 2, :expansion => "GTC")
	c17.save
	c18 = MtgCard.new(:idInSet => 18, :cardName => "Knight of Obligation", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/18.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/18.jpg", :color => 16, :cmc => 4, :rarity => 2, :expansion => "GTC", :power => 2, :toughness => 4)
	c18.save
	c19 = MtgCard.new(:idInSet => 19, :cardName => "Knight Watch", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gtc/19.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/19.jpg", :color => 16, :cmc => 5, :rarity => 1, :expansion => "GTC")
	c19.save
	c20 = MtgCard.new(:idInSet => 20, :cardName => "Luminate Primordial", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/20.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/20.jpg", :color => 16, :cmc => 7, :rarity => 3, :expansion => "GTC", :power => 4, :toughness => 7)
	c20.save
	c21 = MtgCard.new(:idInSet => 21, :cardName => "Murder Investigation", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gtc/21.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/21.jpg", :color => 16, :cmc => 2, :rarity => 2, :expansion => "GTC")
	c21.save
	c22 = MtgCard.new(:idInSet => 22, :cardName => "Nav Squad Commandos", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/22.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/22.jpg", :color => 16, :cmc => 5, :rarity => 1, :expansion => "GTC", :power => 3, :toughness => 5)
	c22.save
	c23 = MtgCard.new(:idInSet => 23, :cardName => "Righteous Charge", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gtc/23.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/23.jpg", :color => 16, :cmc => 3, :rarity => 2, :expansion => "GTC")
	c23.save
	c24 = MtgCard.new(:idInSet => 24, :cardName => "Shielded Passage", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/24.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/24.jpg", :color => 16, :cmc => 1, :rarity => 1, :expansion => "GTC")
	c24.save
	c25 = MtgCard.new(:idInSet => 25, :cardName => "Smite", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/25.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/25.jpg", :color => 16, :cmc => 1, :rarity => 1, :expansion => "GTC")
	c25.save
	c26 = MtgCard.new(:idInSet => 26, :cardName => "Syndic of Tithes", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/26.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/26.jpg", :color => 16, :cmc => 2, :rarity => 1, :expansion => "GTC", :power => 2, :toughness => 2)
	c26.save
	c27 = MtgCard.new(:idInSet => 27, :cardName => "Urbis Protector", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/27.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/27.jpg", :color => 16, :cmc => 6, :rarity => 2, :expansion => "GTC", :power => 1, :toughness => 1)
	c27.save
	c28 = MtgCard.new(:idInSet => 28, :cardName => "Zarichi Tiger", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/28.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/28.jpg", :color => 16, :cmc => 4, :rarity => 1, :expansion => "GTC", :power => 2, :toughness => 3)
	c28.save
	c29 = MtgCard.new(:idInSet => 29, :cardName => "AEtherize", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/29.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/29.jpg", :color => 8, :cmc => 4, :rarity => 2, :expansion => "GTC")
	c29.save
	c30 = MtgCard.new(:idInSet => 30, :cardName => "Agoraphobia", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gtc/30.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/30.jpg", :color => 8, :cmc => 2, :rarity => 2, :expansion => "GTC")
	c30.save
	c31 = MtgCard.new(:idInSet => 31, :cardName => "Clinging Anemones", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/31.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/31.jpg", :color => 8, :cmc => 4, :rarity => 1, :expansion => "GTC", :power => 1, :toughness => 4)
	c31.save
	c32 = MtgCard.new(:idInSet => 32, :cardName => "Cloudfin Raptor", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/32.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/32.jpg", :color => 8, :cmc => 1, :rarity => 1, :expansion => "GTC", :power => 0, :toughness => 1)
	c32.save
	c33 = MtgCard.new(:idInSet => 33, :cardName => "Diluvian Primordial", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/33.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/33.jpg", :color => 8, :cmc => 7, :rarity => 3, :expansion => "GTC", :power => 5, :toughness => 5)
	c33.save
	c34 = MtgCard.new(:idInSet => 34, :cardName => "Enter the Infinite", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gtc/34.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/34.jpg", :color => 8, :cmc => 12, :rarity => 4, :expansion => "GTC")
	c34.save
	c35 = MtgCard.new(:idInSet => 35, :cardName => "Frilled Oculus", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/35.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/35.jpg", :color => 8, :cmc => 2, :rarity => 1, :expansion => "GTC", :power => 1, :toughness => 3)
	c35.save
	c36 = MtgCard.new(:idInSet => 36, :cardName => "Gridlock", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/36.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/36.jpg", :color => 8, :cmc => 1, :rarity => 2, :expansion => "GTC")
	c36.save
	c37 = MtgCard.new(:idInSet => 37, :cardName => "Hands of Binding", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gtc/37.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/37.jpg", :color => 8, :cmc => 2, :rarity => 1, :expansion => "GTC")
	c37.save
	c38 = MtgCard.new(:idInSet => 38, :cardName => "Incursion Specialist", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/38.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/38.jpg", :color => 8, :cmc => 2, :rarity => 2, :expansion => "GTC", :power => 1, :toughness => 3)
	c38.save
	c39 = MtgCard.new(:idInSet => 39, :cardName => "Keymaster Rogue", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/39.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/39.jpg", :color => 8, :cmc => 4, :rarity => 1, :expansion => "GTC", :power => 3, :toughness => 2)
	c39.save
	c40 = MtgCard.new(:idInSet => 40, :cardName => "Last Thoughts", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gtc/40.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/40.jpg", :color => 8, :cmc => 4, :rarity => 1, :expansion => "GTC")
	c40.save
	c41 = MtgCard.new(:idInSet => 41, :cardName => "Leyline Phantom", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/41.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/41.jpg", :color => 8, :cmc => 5, :rarity => 1, :expansion => "GTC", :power => 5, :toughness => 5)
	c41.save
	c42 = MtgCard.new(:idInSet => 42, :cardName => "Metropolis Sprite", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/42.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/42.jpg", :color => 8, :cmc => 2, :rarity => 1, :expansion => "GTC", :power => 1, :toughness => 2)
	c42.save
	c43 = MtgCard.new(:idInSet => 43, :cardName => "Mindeye Drake", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/43.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/43.jpg", :color => 8, :cmc => 5, :rarity => 2, :expansion => "GTC", :power => 2, :toughness => 5)
	c43.save
	c44 = MtgCard.new(:idInSet => 44, :cardName => "Rapid Hybridization", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/44.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/44.jpg", :color => 8, :cmc => 1, :rarity => 2, :expansion => "GTC")
	c44.save
	c45 = MtgCard.new(:idInSet => 45, :cardName => "Realmwright", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/45.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/45.jpg", :color => 8, :cmc => 1, :rarity => 3, :expansion => "GTC", :power => 1, :toughness => 1)
	c45.save
	c46 = MtgCard.new(:idInSet => 46, :cardName => "Sage's Row Denizen", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/46.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/46.jpg", :color => 8, :cmc => 3, :rarity => 1, :expansion => "GTC", :power => 2, :toughness => 3)
	c46.save
	c47 = MtgCard.new(:idInSet => 47, :cardName => "Sapphire Drake", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/47.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/47.jpg", :color => 8, :cmc => 6, :rarity => 2, :expansion => "GTC", :power => 4, :toughness => 4)
	c47.save
	c48 = MtgCard.new(:idInSet => 48, :cardName => "Scatter Arc", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/48.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/48.jpg", :color => 8, :cmc => 4, :rarity => 1, :expansion => "GTC")
	c48.save
	c49 = MtgCard.new(:idInSet => 49, :cardName => "Simic Fluxmage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/49.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/49.jpg", :color => 8, :cmc => 3, :rarity => 2, :expansion => "GTC", :power => 1, :toughness => 2)
	c49.save
	c50 = MtgCard.new(:idInSet => 50, :cardName => "Simic Manipulator", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/50.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/50.jpg", :color => 8, :cmc => 3, :rarity => 3, :expansion => "GTC", :power => 0, :toughness => 1)
	c50.save
	c51 = MtgCard.new(:idInSet => 51, :cardName => "Skygames", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gtc/51.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/51.jpg", :color => 8, :cmc => 2, :rarity => 1, :expansion => "GTC")
	c51.save
	c52 = MtgCard.new(:idInSet => 52, :cardName => "Spell Rupture", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/52.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/52.jpg", :color => 8, :cmc => 2, :rarity => 1, :expansion => "GTC")
	c52.save
	c53 = MtgCard.new(:idInSet => 53, :cardName => "Stolen Identity", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gtc/53.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/53.jpg", :color => 8, :cmc => 6, :rarity => 3, :expansion => "GTC")
	c53.save
	c54 = MtgCard.new(:idInSet => 54, :cardName => "Totally Lost", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/54.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/54.jpg", :color => 8, :cmc => 5, :rarity => 1, :expansion => "GTC")
	c54.save
	c55 = MtgCard.new(:idInSet => 55, :cardName => "Voidwalk", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gtc/55.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/55.jpg", :color => 8, :cmc => 4, :rarity => 2, :expansion => "GTC")
	c55.save
	c56 = MtgCard.new(:idInSet => 56, :cardName => "Way of the Thief", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gtc/56.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/56.jpg", :color => 8, :cmc => 4, :rarity => 1, :expansion => "GTC")
	c56.save
	c57 = MtgCard.new(:idInSet => 57, :cardName => "Balustrade Spy", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/57.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/57.jpg", :color => 4, :cmc => 4, :rarity => 1, :expansion => "GTC", :power => 2, :toughness => 3)
	c57.save
	c58 = MtgCard.new(:idInSet => 58, :cardName => "Basilica Screecher", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/58.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/58.jpg", :color => 4, :cmc => 2, :rarity => 1, :expansion => "GTC", :power => 1, :toughness => 2)
	c58.save
	c59 = MtgCard.new(:idInSet => 59, :cardName => "Contaminated Ground", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gtc/59.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/59.jpg", :color => 4, :cmc => 2, :rarity => 1, :expansion => "GTC")
	c59.save
	c60 = MtgCard.new(:idInSet => 60, :cardName => "Corpse Blockade", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/60.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/60.jpg", :color => 4, :cmc => 3, :rarity => 1, :expansion => "GTC", :power => 1, :toughness => 4)
	c60.save
	c61 = MtgCard.new(:idInSet => 61, :cardName => "Crypt Ghast", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/61.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/61.jpg", :color => 4, :cmc => 4, :rarity => 3, :expansion => "GTC", :power => 2, :toughness => 2)
	c61.save
	c62 = MtgCard.new(:idInSet => 62, :cardName => "Death's Approach", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gtc/62.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/62.jpg", :color => 4, :cmc => 1, :rarity => 1, :expansion => "GTC")
	c62.save
	c63 = MtgCard.new(:idInSet => 63, :cardName => "Devour Flesh", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/63.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/63.jpg", :color => 4, :cmc => 2, :rarity => 1, :expansion => "GTC")
	c63.save
	c64 = MtgCard.new(:idInSet => 64, :cardName => "Dying Wish", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gtc/64.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/64.jpg", :color => 4, :cmc => 2, :rarity => 2, :expansion => "GTC")
	c64.save
	c65 = MtgCard.new(:idInSet => 65, :cardName => "Gateway Shade", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/65.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/65.jpg", :color => 4, :cmc => 3, :rarity => 2, :expansion => "GTC", :power => 1, :toughness => 1)
	c65.save
	c66 = MtgCard.new(:idInSet => 66, :cardName => "Grisly Spectacle", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/66.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/66.jpg", :color => 4, :cmc => 4, :rarity => 1, :expansion => "GTC")
	c66.save
	c67 = MtgCard.new(:idInSet => 67, :cardName => "Gutter Skulk", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/67.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/67.jpg", :color => 4, :cmc => 2, :rarity => 1, :expansion => "GTC", :power => 2, :toughness => 2)
	c67.save
	c68 = MtgCard.new(:idInSet => 68, :cardName => "Horror of the Dim", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/68.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/68.jpg", :color => 4, :cmc => 5, :rarity => 1, :expansion => "GTC", :power => 3, :toughness => 4)
	c68.save
	c69 = MtgCard.new(:idInSet => 69, :cardName => "Illness in the Ranks", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gtc/69.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/69.jpg", :color => 4, :cmc => 1, :rarity => 2, :expansion => "GTC")
	c69.save
	c70 = MtgCard.new(:idInSet => 70, :cardName => "Killing Glare", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/70.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/70.jpg", :color => 4, :cmc => 1, :rarity => 2, :expansion => "GTC")
	c70.save
	c71 = MtgCard.new(:idInSet => 71, :cardName => "Lord of the Void", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/71.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/71.jpg", :color => 4, :cmc => 7, :rarity => 4, :expansion => "GTC", :power => 7, :toughness => 7)
	c71.save
	c72 = MtgCard.new(:idInSet => 72, :cardName => "Mental Vapors", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gtc/72.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/72.jpg", :color => 4, :cmc => 4, :rarity => 2, :expansion => "GTC")
	c72.save
	c73 = MtgCard.new(:idInSet => 73, :cardName => "Midnight Recovery", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gtc/73.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/73.jpg", :color => 4, :cmc => 4, :rarity => 1, :expansion => "GTC")
	c73.save
	c74 = MtgCard.new(:idInSet => 74, :cardName => "Ogre Slumlord", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/74.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/74.jpg", :color => 4, :cmc => 5, :rarity => 3, :expansion => "GTC", :power => 3, :toughness => 3)
	c74.save
	c75 = MtgCard.new(:idInSet => 75, :cardName => "Sepulchral Primordial", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/75.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/75.jpg", :color => 4, :cmc => 7, :rarity => 3, :expansion => "GTC", :power => 5, :toughness => 4)
	c75.save
	c76 = MtgCard.new(:idInSet => 76, :cardName => "Shadow Alley Denizen", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/76.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/76.jpg", :color => 4, :cmc => 1, :rarity => 1, :expansion => "GTC", :power => 1, :toughness => 1)
	c76.save
	c77 = MtgCard.new(:idInSet => 77, :cardName => "Shadow Slice", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gtc/77.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/77.jpg", :color => 4, :cmc => 5, :rarity => 1, :expansion => "GTC")
	c77.save
	c78 = MtgCard.new(:idInSet => 78, :cardName => "Slate Street Ruffian", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/78.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/78.jpg", :color => 4, :cmc => 3, :rarity => 1, :expansion => "GTC", :power => 2, :toughness => 2)
	c78.save
	c79 = MtgCard.new(:idInSet => 79, :cardName => "Smog Elemental", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/79.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/79.jpg", :color => 4, :cmc => 6, :rarity => 2, :expansion => "GTC", :power => 3, :toughness => 3)
	c79.save
	c80 = MtgCard.new(:idInSet => 80, :cardName => "Syndicate Enforcer", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/80.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/80.jpg", :color => 4, :cmc => 4, :rarity => 1, :expansion => "GTC", :power => 3, :toughness => 2)
	c80.save
	c81 = MtgCard.new(:idInSet => 81, :cardName => "Thrull Parasite", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/81.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/81.jpg", :color => 4, :cmc => 1, :rarity => 2, :expansion => "GTC", :power => 1, :toughness => 1)
	c81.save
	c82 = MtgCard.new(:idInSet => 82, :cardName => "Undercity Informer", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/82.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/82.jpg", :color => 4, :cmc => 3, :rarity => 2, :expansion => "GTC", :power => 2, :toughness => 3)
	c82.save
	c83 = MtgCard.new(:idInSet => 83, :cardName => "Undercity Plague", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gtc/83.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/83.jpg", :color => 4, :cmc => 6, :rarity => 3, :expansion => "GTC")
	c83.save
	c84 = MtgCard.new(:idInSet => 84, :cardName => "Wight of Precinct Six", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/84.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/84.jpg", :color => 4, :cmc => 2, :rarity => 2, :expansion => "GTC", :power => 1, :toughness => 1)
	c84.save
	c85 = MtgCard.new(:idInSet => 85, :cardName => "Act of Treason", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gtc/85.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/85.jpg", :color => 2, :cmc => 3, :rarity => 1, :expansion => "GTC")
	c85.save
	c86 = MtgCard.new(:idInSet => 86, :cardName => "Bomber Corps", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/86.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/86.jpg", :color => 2, :cmc => 2, :rarity => 1, :expansion => "GTC", :power => 1, :toughness => 2)
	c86.save
	c87 = MtgCard.new(:idInSet => 87, :cardName => "Cinder Elemental", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/87.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/87.jpg", :color => 2, :cmc => 4, :rarity => 2, :expansion => "GTC", :power => 2, :toughness => 2)
	c87.save
	c88 = MtgCard.new(:idInSet => 88, :cardName => "Crackling Perimeter", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gtc/88.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/88.jpg", :color => 2, :cmc => 2, :rarity => 2, :expansion => "GTC")
	c88.save
	c89 = MtgCard.new(:idInSet => 89, :cardName => "Ember Beast", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/89.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/89.jpg", :color => 2, :cmc => 3, :rarity => 1, :expansion => "GTC", :power => 3, :toughness => 4)
	c89.save
	c90 = MtgCard.new(:idInSet => 90, :cardName => "Firefist Striker", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/90.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/90.jpg", :color => 2, :cmc => 2, :rarity => 2, :expansion => "GTC", :power => 2, :toughness => 1)
	c90.save
	c91 = MtgCard.new(:idInSet => 91, :cardName => "Five-Alarm Fire", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gtc/91.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/91.jpg", :color => 2, :cmc => 3, :rarity => 3, :expansion => "GTC")
	c91.save
	c92 = MtgCard.new(:idInSet => 92, :cardName => "Foundry Street Denizen", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/92.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/92.jpg", :color => 2, :cmc => 1, :rarity => 1, :expansion => "GTC", :power => 1, :toughness => 1)
	c92.save
	c93 = MtgCard.new(:idInSet => 93, :cardName => "Furious Resistance", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/93.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/93.jpg", :color => 2, :cmc => 1, :rarity => 1, :expansion => "GTC")
	c93.save
	c94 = MtgCard.new(:idInSet => 94, :cardName => "Hellkite Tyrant", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/94.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/94.jpg", :color => 2, :cmc => 6, :rarity => 4, :expansion => "GTC", :power => 6, :toughness => 5)
	c94.save
	c95 = MtgCard.new(:idInSet => 95, :cardName => "Hellraiser Goblin", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/95.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/95.jpg", :color => 2, :cmc => 3, :rarity => 2, :expansion => "GTC", :power => 2, :toughness => 2)
	c95.save
	c96 = MtgCard.new(:idInSet => 96, :cardName => "Homing Lightning", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/96.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/96.jpg", :color => 2, :cmc => 4, :rarity => 2, :expansion => "GTC")
	c96.save
	c97 = MtgCard.new(:idInSet => 97, :cardName => "Legion Loyalist", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/97.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/97.jpg", :color => 2, :cmc => 1, :rarity => 3, :expansion => "GTC", :power => 1, :toughness => 1)
	c97.save
	c98 = MtgCard.new(:idInSet => 98, :cardName => "Madcap Skills", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gtc/98.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/98.jpg", :color => 2, :cmc => 2, :rarity => 1, :expansion => "GTC")
	c98.save
	c99 = MtgCard.new(:idInSet => 99, :cardName => "Mark for Death", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gtc/99.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/99.jpg", :color => 2, :cmc => 4, :rarity => 2, :expansion => "GTC")
	c99.save
	c100 = MtgCard.new(:idInSet => 100, :cardName => "Massive Raid", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/100.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/100.jpg", :color => 2, :cmc => 3, :rarity => 1, :expansion => "GTC")
	c100.save
	c101 = MtgCard.new(:idInSet => 101, :cardName => "Molten Primordial", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/101.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/101.jpg", :color => 2, :cmc => 7, :rarity => 3, :expansion => "GTC", :power => 6, :toughness => 4)
	c101.save
	c102 = MtgCard.new(:idInSet => 102, :cardName => "Mugging", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gtc/102.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/102.jpg", :color => 2, :cmc => 1, :rarity => 1, :expansion => "GTC")
	c102.save
	c103 = MtgCard.new(:idInSet => 103, :cardName => "Ripscale Predator", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/103.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/103.jpg", :color => 2, :cmc => 6, :rarity => 2, :expansion => "GTC", :power => 6, :toughness => 5)
	c103.save
	c104 = MtgCard.new(:idInSet => 104, :cardName => "Scorchwalker", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/104.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/104.jpg", :color => 2, :cmc => 4, :rarity => 1, :expansion => "GTC", :power => 5, :toughness => 1)
	c104.save
	c105 = MtgCard.new(:idInSet => 105, :cardName => "Skinbrand Goblin", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/105.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/105.jpg", :color => 2, :cmc => 2, :rarity => 1, :expansion => "GTC", :power => 2, :toughness => 1)
	c105.save
	c106 = MtgCard.new(:idInSet => 106, :cardName => "Skullcrack", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/106.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/106.jpg", :color => 2, :cmc => 2, :rarity => 2, :expansion => "GTC")
	c106.save
	c107 = MtgCard.new(:idInSet => 107, :cardName => "Structural Collapse", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gtc/107.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/107.jpg", :color => 2, :cmc => 6, :rarity => 1, :expansion => "GTC")
	c107.save
	c108 = MtgCard.new(:idInSet => 108, :cardName => "Tin Street Market", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gtc/108.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/108.jpg", :color => 2, :cmc => 5, :rarity => 1, :expansion => "GTC")
	c108.save
	c109 = MtgCard.new(:idInSet => 109, :cardName => "Towering Thunderfist", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/109.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/109.jpg", :color => 2, :cmc => 5, :rarity => 1, :expansion => "GTC", :power => 4, :toughness => 4)
	c109.save
	c110 = MtgCard.new(:idInSet => 110, :cardName => "Viashino Shanktail", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/110.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/110.jpg", :color => 2, :cmc => 4, :rarity => 2, :expansion => "GTC", :power => 3, :toughness => 1)
	c110.save
	c111 = MtgCard.new(:idInSet => 111, :cardName => "Warmind Infantry", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/111.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/111.jpg", :color => 2, :cmc => 3, :rarity => 1, :expansion => "GTC", :power => 2, :toughness => 3)
	c111.save
	c112 = MtgCard.new(:idInSet => 112, :cardName => "Wrecking Ogre", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/112.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/112.jpg", :color => 2, :cmc => 5, :rarity => 3, :expansion => "GTC", :power => 3, :toughness => 3)
	c112.save
	c113 = MtgCard.new(:idInSet => 113, :cardName => "Adaptive Snapjaw", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/113.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/113.jpg", :color => 1, :cmc => 5, :rarity => 1, :expansion => "GTC", :power => 6, :toughness => 2)
	c113.save
	c114 = MtgCard.new(:idInSet => 114, :cardName => "Alpha Authority", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gtc/114.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/114.jpg", :color => 1, :cmc => 2, :rarity => 2, :expansion => "GTC")
	c114.save
	c115 = MtgCard.new(:idInSet => 115, :cardName => "Burst of Strength", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/115.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/115.jpg", :color => 1, :cmc => 1, :rarity => 1, :expansion => "GTC")
	c115.save
	c116 = MtgCard.new(:idInSet => 116, :cardName => "Crocanura", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/116.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/116.jpg", :color => 1, :cmc => 3, :rarity => 1, :expansion => "GTC", :power => 1, :toughness => 3)
	c116.save
	c117 = MtgCard.new(:idInSet => 117, :cardName => "Crowned Ceratok", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/117.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/117.jpg", :color => 1, :cmc => 4, :rarity => 2, :expansion => "GTC", :power => 4, :toughness => 3)
	c117.save
	c118 = MtgCard.new(:idInSet => 118, :cardName => "Disciple of the Old Ways", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/118.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/118.jpg", :color => 1, :cmc => 2, :rarity => 1, :expansion => "GTC", :power => 2, :toughness => 2)
	c118.save
	c119 = MtgCard.new(:idInSet => 119, :cardName => "Experiment One", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/119.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/119.jpg", :color => 1, :cmc => 1, :rarity => 2, :expansion => "GTC", :power => 1, :toughness => 1)
	c119.save
	c120 = MtgCard.new(:idInSet => 120, :cardName => "Forced Adaptation", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gtc/120.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/120.jpg", :color => 1, :cmc => 1, :rarity => 1, :expansion => "GTC")
	c120.save
	c121 = MtgCard.new(:idInSet => 121, :cardName => "Giant Adephage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/121.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/121.jpg", :color => 1, :cmc => 7, :rarity => 4, :expansion => "GTC", :power => 7, :toughness => 7)
	c121.save
	c122 = MtgCard.new(:idInSet => 122, :cardName => "Greenside Watcher", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/122.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/122.jpg", :color => 1, :cmc => 2, :rarity => 1, :expansion => "GTC", :power => 2, :toughness => 1)
	c122.save
	c123 = MtgCard.new(:idInSet => 123, :cardName => "Gyre Sage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/123.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/123.jpg", :color => 1, :cmc => 2, :rarity => 3, :expansion => "GTC", :power => 1, :toughness => 2)
	c123.save
	c124 = MtgCard.new(:idInSet => 124, :cardName => "Hindervines", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/124.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/124.jpg", :color => 1, :cmc => 3, :rarity => 2, :expansion => "GTC")
	c124.save
	c125 = MtgCard.new(:idInSet => 125, :cardName => "Ivy Lane Denizen", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/125.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/125.jpg", :color => 1, :cmc => 4, :rarity => 1, :expansion => "GTC", :power => 2, :toughness => 3)
	c125.save
	c126 = MtgCard.new(:idInSet => 126, :cardName => "Miming Slime", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gtc/126.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/126.jpg", :color => 1, :cmc => 3, :rarity => 2, :expansion => "GTC")
	c126.save
	c127 = MtgCard.new(:idInSet => 127, :cardName => "Naturalize", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/127.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/127.jpg", :color => 1, :cmc => 2, :rarity => 1, :expansion => "GTC")
	c127.save
	c128 = MtgCard.new(:idInSet => 128, :cardName => "Ooze Flux", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gtc/128.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/128.jpg", :color => 1, :cmc => 4, :rarity => 3, :expansion => "GTC")
	c128.save
	c129 = MtgCard.new(:idInSet => 129, :cardName => "Predator's Rapport", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/129.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/129.jpg", :color => 1, :cmc => 3, :rarity => 1, :expansion => "GTC")
	c129.save
	c130 = MtgCard.new(:idInSet => 130, :cardName => "Rust Scarab", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/130.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/130.jpg", :color => 1, :cmc => 5, :rarity => 2, :expansion => "GTC", :power => 4, :toughness => 5)
	c130.save
	c131 = MtgCard.new(:idInSet => 131, :cardName => "Scab-Clan Charger", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/131.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/131.jpg", :color => 1, :cmc => 4, :rarity => 1, :expansion => "GTC", :power => 2, :toughness => 4)
	c131.save
	c132 = MtgCard.new(:idInSet => 132, :cardName => "Serene Remembrance", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gtc/132.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/132.jpg", :color => 1, :cmc => 1, :rarity => 2, :expansion => "GTC")
	c132.save
	c133 = MtgCard.new(:idInSet => 133, :cardName => "Skarrg Goliath", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/133.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/133.jpg", :color => 1, :cmc => 8, :rarity => 3, :expansion => "GTC", :power => 9, :toughness => 9)
	c133.save
	c134 = MtgCard.new(:idInSet => 134, :cardName => "Slaughterhorn", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/134.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/134.jpg", :color => 1, :cmc => 3, :rarity => 1, :expansion => "GTC", :power => 3, :toughness => 2)
	c134.save
	c135 = MtgCard.new(:idInSet => 135, :cardName => "Spire Tracer", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/135.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/135.jpg", :color => 1, :cmc => 1, :rarity => 1, :expansion => "GTC", :power => 1, :toughness => 1)
	c135.save
	c136 = MtgCard.new(:idInSet => 136, :cardName => "Sylvan Primordial", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/136.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/136.jpg", :color => 1, :cmc => 7, :rarity => 3, :expansion => "GTC", :power => 6, :toughness => 8)
	c136.save
	c137 = MtgCard.new(:idInSet => 137, :cardName => "Tower Defense", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/137.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/137.jpg", :color => 1, :cmc => 2, :rarity => 2, :expansion => "GTC")
	c137.save
	c138 = MtgCard.new(:idInSet => 138, :cardName => "Verdant Haven", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gtc/138.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/138.jpg", :color => 1, :cmc => 3, :rarity => 1, :expansion => "GTC")
	c138.save
	c139 = MtgCard.new(:idInSet => 139, :cardName => "Wasteland Viper", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/139.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/139.jpg", :color => 1, :cmc => 1, :rarity => 2, :expansion => "GTC", :power => 1, :toughness => 2)
	c139.save
	c140 = MtgCard.new(:idInSet => 140, :cardName => "Wildwood Rebirth", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/140.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/140.jpg", :color => 1, :cmc => 2, :rarity => 1, :expansion => "GTC")
	c140.save
	c141 = MtgCard.new(:idInSet => 141, :cardName => "Alms Beast", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/141.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/141.jpg", :color => 20, :cmc => 4, :rarity => 3, :expansion => "GTC", :power => 6, :toughness => 6)
	c141.save
	c142 = MtgCard.new(:idInSet => 142, :cardName => "Assemble the Legion", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gtc/142.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/142.jpg", :color => 18, :cmc => 5, :rarity => 3, :expansion => "GTC")
	c142.save
	c143 = MtgCard.new(:idInSet => 143, :cardName => "Aurelia, the Warleader", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/143.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/143.jpg", :color => 18, :cmc => 6, :rarity => 4, :expansion => "GTC", :power => 3, :toughness => 4)
	c143.save
	c144 = MtgCard.new(:idInSet => 144, :cardName => "Aurelia's Fury", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/144.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/144.jpg", :color => 18, :cmc => 2, :rarity => 4, :expansion => "GTC")
	c144.save
	c145 = MtgCard.new(:idInSet => 145, :cardName => "Bane Alley Broker", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/145.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/145.jpg", :color => 12, :cmc => 3, :rarity => 2, :expansion => "GTC", :power => 0, :toughness => 3)
	c145.save
	c146 = MtgCard.new(:idInSet => 146, :cardName => "Biovisionary", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/146.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/146.jpg", :color => 9, :cmc => 3, :rarity => 3, :expansion => "GTC", :power => 2, :toughness => 3)
	c146.save
	c147 = MtgCard.new(:idInSet => 147, :cardName => "Borborygmos Enraged", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/147.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/147.jpg", :color => 3, :cmc => 8, :rarity => 4, :expansion => "GTC", :power => 7, :toughness => 6)
	c147.save
	c148 = MtgCard.new(:idInSet => 148, :cardName => "Boros Charm", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/148.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/148.jpg", :color => 18, :cmc => 2, :rarity => 2, :expansion => "GTC")
	c148.save
	c149 = MtgCard.new(:idInSet => 149, :cardName => "Call of the Nightwing", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gtc/149.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/149.jpg", :color => 12, :cmc => 4, :rarity => 2, :expansion => "GTC")
	c149.save
	c150 = MtgCard.new(:idInSet => 150, :cardName => "Cartel Aristocrat", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/150.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/150.jpg", :color => 20, :cmc => 2, :rarity => 2, :expansion => "GTC", :power => 2, :toughness => 2)
	c150.save
	c151 = MtgCard.new(:idInSet => 151, :cardName => "Clan Defiance", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gtc/151.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/151.jpg", :color => 3, :cmc => 2, :rarity => 3, :expansion => "GTC")
	c151.save
	c152 = MtgCard.new(:idInSet => 152, :cardName => "Consuming Aberration", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/152.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/152.jpg", :color => 12, :cmc => 5, :rarity => 3, :expansion => "GTC", :power => 0, :toughness => 0)
	c152.save
	c153 = MtgCard.new(:idInSet => 153, :cardName => "Deathpact Angel", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/153.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/153.jpg", :color => 20, :cmc => 6, :rarity => 4, :expansion => "GTC", :power => 5, :toughness => 5)
	c153.save
	c154 = MtgCard.new(:idInSet => 154, :cardName => "Dimir Charm", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/154.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/154.jpg", :color => 12, :cmc => 2, :rarity => 2, :expansion => "GTC")
	c154.save
	c155 = MtgCard.new(:idInSet => 155, :cardName => "Dinrova Horror", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/155.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/155.jpg", :color => 12, :cmc => 6, :rarity => 2, :expansion => "GTC", :power => 4, :toughness => 4)
	c155.save
	c156 = MtgCard.new(:idInSet => 156, :cardName => "Domri Rade", :cardType => 64, :engSRC => "http://magiccards.info/scans/en/gtc/156.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/156.jpg", :color => 3, :cmc => 3, :rarity => 4, :expansion => "GTC")
	c156.save
	c157 = MtgCard.new(:idInSet => 157, :cardName => "Drakewing Krasis", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/157.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/157.jpg", :color => 9, :cmc => 3, :rarity => 1, :expansion => "GTC", :power => 3, :toughness => 1)
	c157.save
	c158 = MtgCard.new(:idInSet => 158, :cardName => "Duskmantle Guildmage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/158.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/158.jpg", :color => 12, :cmc => 2, :rarity => 2, :expansion => "GTC", :power => 2, :toughness => 2)
	c158.save
	c159 = MtgCard.new(:idInSet => 159, :cardName => "Duskmantle Seer", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/159.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/159.jpg", :color => 12, :cmc => 4, :rarity => 4, :expansion => "GTC", :power => 4, :toughness => 4)
	c159.save
	c160 = MtgCard.new(:idInSet => 160, :cardName => "Elusive Krasis", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/160.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/160.jpg", :color => 9, :cmc => 3, :rarity => 2, :expansion => "GTC", :power => 0, :toughness => 4)
	c160.save
	c161 = MtgCard.new(:idInSet => 161, :cardName => "Executioner's Swing", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/161.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/161.jpg", :color => 20, :cmc => 2, :rarity => 1, :expansion => "GTC")
	c161.save
	c162 = MtgCard.new(:idInSet => 162, :cardName => "Fathom Mage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/162.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/162.jpg", :color => 9, :cmc => 4, :rarity => 3, :expansion => "GTC", :power => 1, :toughness => 1)
	c162.save
	c163 = MtgCard.new(:idInSet => 163, :cardName => "Firemane Avenger", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/163.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/163.jpg", :color => 18, :cmc => 4, :rarity => 3, :expansion => "GTC", :power => 3, :toughness => 3)
	c163.save
	c164 = MtgCard.new(:idInSet => 164, :cardName => "Fortress Cyclops", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/164.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/164.jpg", :color => 18, :cmc => 5, :rarity => 2, :expansion => "GTC", :power => 3, :toughness => 3)
	c164.save
	c165 = MtgCard.new(:idInSet => 165, :cardName => "Foundry Champion", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/165.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/165.jpg", :color => 18, :cmc => 6, :rarity => 3, :expansion => "GTC", :power => 4, :toughness => 4)
	c165.save
	c166 = MtgCard.new(:idInSet => 166, :cardName => "Frenzied Tilling", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gtc/166.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/166.jpg", :color => 3, :cmc => 5, :rarity => 2, :expansion => "GTC")
	c166.save
	c167 = MtgCard.new(:idInSet => 167, :cardName => "Ghor-Clan Rampager", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/167.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/167.jpg", :color => 3, :cmc => 4, :rarity => 2, :expansion => "GTC", :power => 4, :toughness => 4)
	c167.save
	c168 = MtgCard.new(:idInSet => 168, :cardName => "Ground Assault", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gtc/168.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/168.jpg", :color => 3, :cmc => 2, :rarity => 2, :expansion => "GTC")
	c168.save
	c169 = MtgCard.new(:idInSet => 169, :cardName => "Gruul Charm", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/169.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/169.jpg", :color => 3, :cmc => 2, :rarity => 2, :expansion => "GTC")
	c169.save
	c170 = MtgCard.new(:idInSet => 170, :cardName => "Gruul Ragebeast", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/170.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/170.jpg", :color => 3, :cmc => 7, :rarity => 3, :expansion => "GTC", :power => 6, :toughness => 6)
	c170.save
	c171 = MtgCard.new(:idInSet => 171, :cardName => "High Priest of Penance", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/171.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/171.jpg", :color => 20, :cmc => 2, :rarity => 3, :expansion => "GTC", :power => 1, :toughness => 1)
	c171.save
	c172 = MtgCard.new(:idInSet => 172, :cardName => "Hydroform", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/172.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/172.jpg", :color => 9, :cmc => 2, :rarity => 1, :expansion => "GTC")
	c172.save
	c173 = MtgCard.new(:idInSet => 173, :cardName => "Kingpin's Pet", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/173.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/173.jpg", :color => 20, :cmc => 3, :rarity => 1, :expansion => "GTC", :power => 2, :toughness => 2)
	c173.save
	c174 = MtgCard.new(:idInSet => 174, :cardName => "Lazav, Dimir Mastermind", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/174.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/174.jpg", :color => 12, :cmc => 4, :rarity => 4, :expansion => "GTC", :power => 3, :toughness => 3)
	c174.save
	c175 = MtgCard.new(:idInSet => 175, :cardName => "Martial Glory", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/175.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/175.jpg", :color => 18, :cmc => 2, :rarity => 1, :expansion => "GTC")
	c175.save
	c176 = MtgCard.new(:idInSet => 176, :cardName => "Master Biomancer", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/176.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/176.jpg", :color => 9, :cmc => 4, :rarity => 4, :expansion => "GTC", :power => 2, :toughness => 4)
	c176.save
	c177 = MtgCard.new(:idInSet => 177, :cardName => "Merciless Eviction", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gtc/177.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/177.jpg", :color => 20, :cmc => 6, :rarity => 3, :expansion => "GTC")
	c177.save
	c178 = MtgCard.new(:idInSet => 178, :cardName => "Mind Grind", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gtc/178.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/178.jpg", :color => 12, :cmc => 2, :rarity => 3, :expansion => "GTC")
	c178.save
	c179 = MtgCard.new(:idInSet => 179, :cardName => "Mortus Strider", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/179.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/179.jpg", :color => 12, :cmc => 3, :rarity => 1, :expansion => "GTC", :power => 1, :toughness => 1)
	c179.save
	c180 = MtgCard.new(:idInSet => 180, :cardName => "Mystic Genesis", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/180.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/180.jpg", :color => 9, :cmc => 5, :rarity => 3, :expansion => "GTC")
	c180.save
	c181 = MtgCard.new(:idInSet => 181, :cardName => "Nimbus Swimmer", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/181.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/181.jpg", :color => 9, :cmc => 2, :rarity => 2, :expansion => "GTC", :power => 0, :toughness => 0)
	c181.save
	c182 = MtgCard.new(:idInSet => 182, :cardName => "Obzedat, Ghost Council", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/182.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/182.jpg", :color => 20, :cmc => 5, :rarity => 4, :expansion => "GTC", :power => 5, :toughness => 5)
	c182.save
	c183 = MtgCard.new(:idInSet => 183, :cardName => "One Thousand Lashes", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gtc/183.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/183.jpg", :color => 20, :cmc => 4, :rarity => 2, :expansion => "GTC")
	c183.save
	c184 = MtgCard.new(:idInSet => 184, :cardName => "Ordruun Veteran", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/184.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/184.jpg", :color => 18, :cmc => 4, :rarity => 2, :expansion => "GTC", :power => 3, :toughness => 1)
	c184.save
	c185 = MtgCard.new(:idInSet => 185, :cardName => "Orzhov Charm", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/185.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/185.jpg", :color => 20, :cmc => 2, :rarity => 2, :expansion => "GTC")
	c185.save
	c186 = MtgCard.new(:idInSet => 186, :cardName => "Paranoid Delusions", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gtc/186.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/186.jpg", :color => 12, :cmc => 2, :rarity => 1, :expansion => "GTC")
	c186.save
	c187 = MtgCard.new(:idInSet => 187, :cardName => "Primal Visitation", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gtc/187.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/187.jpg", :color => 3, :cmc => 5, :rarity => 1, :expansion => "GTC")
	c187.save
	c188 = MtgCard.new(:idInSet => 188, :cardName => "Prime Speaker Zegana", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/188.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/188.jpg", :color => 9, :cmc => 6, :rarity => 4, :expansion => "GTC", :power => 1, :toughness => 1)
	c188.save
	c189 = MtgCard.new(:idInSet => 189, :cardName => "Psychic Strike", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/189.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/189.jpg", :color => 12, :cmc => 3, :rarity => 1, :expansion => "GTC")
	c189.save
	c190 = MtgCard.new(:idInSet => 190, :cardName => "Purge the Profane", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gtc/190.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/190.jpg", :color => 20, :cmc => 4, :rarity => 1, :expansion => "GTC")
	c190.save
	c191 = MtgCard.new(:idInSet => 191, :cardName => "Rubblehulk", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/191.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/191.jpg", :color => 3, :cmc => 6, :rarity => 3, :expansion => "GTC", :power => 0, :toughness => 0)
	c191.save
	c192 = MtgCard.new(:idInSet => 192, :cardName => "Ruination Wurm", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/192.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/192.jpg", :color => 3, :cmc => 6, :rarity => 1, :expansion => "GTC", :power => 7, :toughness => 6)
	c192.save
	c193 = MtgCard.new(:idInSet => 193, :cardName => "Shambleshark", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/193.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/193.jpg", :color => 9, :cmc => 2, :rarity => 1, :expansion => "GTC", :power => 2, :toughness => 1)
	c193.save
	c194 = MtgCard.new(:idInSet => 194, :cardName => "Signal the Clans", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/194.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/194.jpg", :color => 3, :cmc => 2, :rarity => 3, :expansion => "GTC")
	c194.save
	c195 = MtgCard.new(:idInSet => 195, :cardName => "Simic Charm", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/195.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/195.jpg", :color => 9, :cmc => 2, :rarity => 2, :expansion => "GTC")
	c195.save
	c196 = MtgCard.new(:idInSet => 196, :cardName => "Skarrg Guildmage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/196.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/196.jpg", :color => 3, :cmc => 2, :rarity => 2, :expansion => "GTC", :power => 2, :toughness => 2)
	c196.save
	c197 = MtgCard.new(:idInSet => 197, :cardName => "Skyknight Legionnaire", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/197.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/197.jpg", :color => 18, :cmc => 3, :rarity => 1, :expansion => "GTC", :power => 2, :toughness => 2)
	c197.save
	c198 = MtgCard.new(:idInSet => 198, :cardName => "Soul Ransom", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gtc/198.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/198.jpg", :color => 12, :cmc => 4, :rarity => 3, :expansion => "GTC")
	c198.save
	c199 = MtgCard.new(:idInSet => 199, :cardName => "Spark Trooper", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/199.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/199.jpg", :color => 18, :cmc => 4, :rarity => 3, :expansion => "GTC", :power => 6, :toughness => 1)
	c199.save
	c200 = MtgCard.new(:idInSet => 200, :cardName => "Sunhome Guildmage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/200.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/200.jpg", :color => 18, :cmc => 2, :rarity => 2, :expansion => "GTC", :power => 2, :toughness => 2)
	c200.save
	c201 = MtgCard.new(:idInSet => 201, :cardName => "Treasury Thrull", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/201.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/201.jpg", :color => 20, :cmc => 6, :rarity => 3, :expansion => "GTC", :power => 4, :toughness => 4)
	c201.save
	c202 = MtgCard.new(:idInSet => 202, :cardName => "Truefire Paladin", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/202.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/202.jpg", :color => 18, :cmc => 2, :rarity => 2, :expansion => "GTC", :power => 2, :toughness => 2)
	c202.save
	c203 = MtgCard.new(:idInSet => 203, :cardName => "Unexpected Results", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gtc/203.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/203.jpg", :color => 9, :cmc => 4, :rarity => 3, :expansion => "GTC")
	c203.save
	c204 = MtgCard.new(:idInSet => 204, :cardName => "Urban Evolution", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gtc/204.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/204.jpg", :color => 9, :cmc => 5, :rarity => 2, :expansion => "GTC")
	c204.save
	c205 = MtgCard.new(:idInSet => 205, :cardName => "Vizkopa Confessor", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/205.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/205.jpg", :color => 20, :cmc => 5, :rarity => 2, :expansion => "GTC", :power => 1, :toughness => 3)
	c205.save
	c206 = MtgCard.new(:idInSet => 206, :cardName => "Vizkopa Guildmage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/206.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/206.jpg", :color => 20, :cmc => 2, :rarity => 2, :expansion => "GTC", :power => 2, :toughness => 2)
	c206.save
	c207 = MtgCard.new(:idInSet => 207, :cardName => "Whispering Madness", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gtc/207.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/207.jpg", :color => 12, :cmc => 4, :rarity => 3, :expansion => "GTC")
	c207.save
	c208 = MtgCard.new(:idInSet => 208, :cardName => "Wojek Halberdiers", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/208.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/208.jpg", :color => 18, :cmc => 2, :rarity => 1, :expansion => "GTC", :power => 3, :toughness => 2)
	c208.save
	c209 = MtgCard.new(:idInSet => 209, :cardName => "Zameck Guildmage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/209.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/209.jpg", :color => 9, :cmc => 2, :rarity => 2, :expansion => "GTC", :power => 2, :toughness => 2)
	c209.save
	c210 = MtgCard.new(:idInSet => 210, :cardName => "Zhur-Taa Swine", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/210.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/210.jpg", :color => 3, :cmc => 5, :rarity => 1, :expansion => "GTC", :power => 5, :toughness => 4)
	c210.save
	c211 = MtgCard.new(:idInSet => 211, :cardName => "Arrows of Justice", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/211.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/211.jpg", :color => 18, :cmc => 3, :rarity => 2, :expansion => "GTC")
	c211.save
	c212 = MtgCard.new(:idInSet => 212, :cardName => "Beckon Apparition", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/212.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/212.jpg", :color => 20, :cmc => 1, :rarity => 1, :expansion => "GTC")
	c212.save
	c213 = MtgCard.new(:idInSet => 213, :cardName => "Biomass Mutation", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/213.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/213.jpg", :color => 9, :cmc => 2, :rarity => 3, :expansion => "GTC")
	c213.save
	c214 = MtgCard.new(:idInSet => 214, :cardName => "Bioshift", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/214.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/214.jpg", :color => 9, :cmc => 1, :rarity => 1, :expansion => "GTC")
	c214.save
	c215 = MtgCard.new(:idInSet => 215, :cardName => "Boros Reckoner", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/215.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/215.jpg", :color => 18, :cmc => 3, :rarity => 3, :expansion => "GTC", :power => 3, :toughness => 3)
	c215.save
	c216 = MtgCard.new(:idInSet => 216, :cardName => "Burning-Tree Emissary", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/216.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/216.jpg", :color => 3, :cmc => 2, :rarity => 2, :expansion => "GTC", :power => 2, :toughness => 2)
	c216.save
	c217 = MtgCard.new(:idInSet => 217, :cardName => "Coerced Confession", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gtc/217.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/217.jpg", :color => 12, :cmc => 5, :rarity => 2, :expansion => "GTC")
	c217.save
	c218 = MtgCard.new(:idInSet => 218, :cardName => "Deathcult Rogue", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/218.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/218.jpg", :color => 12, :cmc => 3, :rarity => 1, :expansion => "GTC", :power => 2, :toughness => 2)
	c218.save
	c219 = MtgCard.new(:idInSet => 219, :cardName => "Gift of Orzhova", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gtc/219.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/219.jpg", :color => 20, :cmc => 3, :rarity => 2, :expansion => "GTC")
	c219.save
	c220 = MtgCard.new(:idInSet => 220, :cardName => "Immortal Servitude", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gtc/220.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/220.jpg", :color => 20, :cmc => 3, :rarity => 3, :expansion => "GTC")
	c220.save
	c221 = MtgCard.new(:idInSet => 221, :cardName => "Merfolk of the Depths", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/221.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/221.jpg", :color => 9, :cmc => 6, :rarity => 2, :expansion => "GTC", :power => 4, :toughness => 2)
	c221.save
	c222 = MtgCard.new(:idInSet => 222, :cardName => "Nightveil Specter", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/222.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/222.jpg", :color => 12, :cmc => 3, :rarity => 3, :expansion => "GTC", :power => 2, :toughness => 3)
	c222.save
	c223 = MtgCard.new(:idInSet => 223, :cardName => "Pit Fight", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/223.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/223.jpg", :color => 3, :cmc => 2, :rarity => 1, :expansion => "GTC")
	c223.save
	c224 = MtgCard.new(:idInSet => 224, :cardName => "Rubblebelt Raiders", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gtc/224.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/224.jpg", :color => 3, :cmc => 4, :rarity => 3, :expansion => "GTC", :power => 3, :toughness => 3)
	c224.save
	c225 = MtgCard.new(:idInSet => 225, :cardName => "Shattering Blow", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gtc/225.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/225.jpg", :color => 18, :cmc => 2, :rarity => 1, :expansion => "GTC")
	c225.save
	c226 = MtgCard.new(:idInSet => 226, :cardName => "Armored Transport", :cardType => 9, :engSRC => "http://magiccards.info/scans/en/gtc/226.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/226.jpg", :color => 0, :cmc => 3, :rarity => 1, :expansion => "GTC", :power => 2, :toughness => 1)
	c226.save
	c227 = MtgCard.new(:idInSet => 227, :cardName => "Boros Keyrune", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/gtc/227.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/227.jpg", :color => 0, :cmc => 3, :rarity => 2, :expansion => "GTC")
	c227.save
	c228 = MtgCard.new(:idInSet => 228, :cardName => "Dimir Keyrune", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/gtc/228.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/228.jpg", :color => 0, :cmc => 3, :rarity => 2, :expansion => "GTC")
	c228.save
	c229 = MtgCard.new(:idInSet => 229, :cardName => "Glaring Spotlight", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/gtc/229.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/229.jpg", :color => 0, :cmc => 1, :rarity => 3, :expansion => "GTC")
	c229.save
	c230 = MtgCard.new(:idInSet => 230, :cardName => "Gruul Keyrune", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/gtc/230.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/230.jpg", :color => 0, :cmc => 3, :rarity => 2, :expansion => "GTC")
	c230.save
	c231 = MtgCard.new(:idInSet => 231, :cardName => "Illusionist's Bracers", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/gtc/231.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/231.jpg", :color => 0, :cmc => 2, :rarity => 3, :expansion => "GTC")
	c231.save
	c232 = MtgCard.new(:idInSet => 232, :cardName => "Millennial Gargoyle", :cardType => 9, :engSRC => "http://magiccards.info/scans/en/gtc/232.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/232.jpg", :color => 0, :cmc => 4, :rarity => 1, :expansion => "GTC", :power => 2, :toughness => 2)
	c232.save
	c233 = MtgCard.new(:idInSet => 233, :cardName => "Orzhov Keyrune", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/gtc/233.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/233.jpg", :color => 0, :cmc => 3, :rarity => 2, :expansion => "GTC")
	c233.save
	c234 = MtgCard.new(:idInSet => 234, :cardName => "Prophetic Prism", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/gtc/234.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/234.jpg", :color => 0, :cmc => 2, :rarity => 1, :expansion => "GTC")
	c234.save
	c235 = MtgCard.new(:idInSet => 235, :cardName => "Razortip Whip", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/gtc/235.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/235.jpg", :color => 0, :cmc => 2, :rarity => 1, :expansion => "GTC")
	c235.save
	c236 = MtgCard.new(:idInSet => 236, :cardName => "Riot Gear", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/gtc/236.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/236.jpg", :color => 0, :cmc => 2, :rarity => 1, :expansion => "GTC")
	c236.save
	c237 = MtgCard.new(:idInSet => 237, :cardName => "Simic Keyrune", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/gtc/237.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/237.jpg", :color => 0, :cmc => 3, :rarity => 2, :expansion => "GTC")
	c237.save
	c238 = MtgCard.new(:idInSet => 238, :cardName => "Skyblinder Staff", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/gtc/238.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/238.jpg", :color => 0, :cmc => 1, :rarity => 1, :expansion => "GTC")
	c238.save
	c239 = MtgCard.new(:idInSet => 239, :cardName => "Boros Guildgate", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/gtc/239.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/239.jpg", :color => 0, :cmc => 0, :rarity => 1, :expansion => "GTC")
	c239.save
	c240 = MtgCard.new(:idInSet => 240, :cardName => "Breeding Pool", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/gtc/240.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/240.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "GTC")
	c240.save
	c241 = MtgCard.new(:idInSet => 241, :cardName => "Dimir Guildgate", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/gtc/241.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/241.jpg", :color => 0, :cmc => 0, :rarity => 1, :expansion => "GTC")
	c241.save
	c242 = MtgCard.new(:idInSet => 242, :cardName => "Godless Shrine", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/gtc/242.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/242.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "GTC")
	c242.save
	c243 = MtgCard.new(:idInSet => 243, :cardName => "Gruul Guildgate", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/gtc/243.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/243.jpg", :color => 0, :cmc => 0, :rarity => 1, :expansion => "GTC")
	c243.save
	c244 = MtgCard.new(:idInSet => 244, :cardName => "Orzhov Guildgate", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/gtc/244.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/244.jpg", :color => 0, :cmc => 0, :rarity => 1, :expansion => "GTC")
	c244.save
	c245 = MtgCard.new(:idInSet => 245, :cardName => "Sacred Foundry", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/gtc/245.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/245.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "GTC")
	c245.save
	c246 = MtgCard.new(:idInSet => 246, :cardName => "Simic Guildgate", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/gtc/246.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/246.jpg", :color => 0, :cmc => 0, :rarity => 1, :expansion => "GTC")
	c246.save
	c247 = MtgCard.new(:idInSet => 247, :cardName => "Stomping Ground", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/gtc/247.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/247.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "GTC")
	c247.save
	c248 = MtgCard.new(:idInSet => 248, :cardName => "Thespian's Stage", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/gtc/248.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/248.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "GTC")
	c248.save
	c249 = MtgCard.new(:idInSet => 249, :cardName => "Watery Grave", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/gtc/249.jpg", :chiSRC => "http://magiccards.info/scans/cn/gtc/249.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "GTC")
	c249.save
end