desc "Import GPT cards."
task :import_GPT_cards => :environment do

	c1 = MtgCard.new(:idInSet => 1, :cardName => "Absolver Thrull", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/1.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/1.jpg", :color => 16, :cmc => 4, :rarity => 1, :expansion => "GPT", :power => 2, :toughness => 3)
	c1.save
	c2 = MtgCard.new(:idInSet => 2, :cardName => "Belfry Spirit", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/2.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/2.jpg", :color => 16, :cmc => 5, :rarity => 2, :expansion => "GPT", :power => 1, :toughness => 1)
	c2.save
	c3 = MtgCard.new(:idInSet => 3, :cardName => "Benediction of Moons", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gp/3.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/3.jpg", :color => 16, :cmc => 1, :rarity => 1, :expansion => "GPT")
	c3.save
	c4 = MtgCard.new(:idInSet => 4, :cardName => "Droning Bureaucrats", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/4.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/4.jpg", :color => 16, :cmc => 4, :rarity => 2, :expansion => "GPT", :power => 1, :toughness => 4)
	c4.save
	c5 = MtgCard.new(:idInSet => 5, :cardName => "Ghost Warden", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/5.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/5.jpg", :color => 16, :cmc => 2, :rarity => 1, :expansion => "GPT", :power => 1, :toughness => 1)
	c5.save
	c6 = MtgCard.new(:idInSet => 6, :cardName => "Ghostway", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gp/6.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/6.jpg", :color => 16, :cmc => 3, :rarity => 3, :expansion => "GPT")
	c6.save
	c7 = MtgCard.new(:idInSet => 7, :cardName => "Graven Dominator", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/7.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/7.jpg", :color => 16, :cmc => 6, :rarity => 3, :expansion => "GPT", :power => 4, :toughness => 4)
	c7.save
	c8 = MtgCard.new(:idInSet => 8, :cardName => "Guardian's Magemark", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gp/8.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/8.jpg", :color => 16, :cmc => 3, :rarity => 1, :expansion => "GPT")
	c8.save
	c9 = MtgCard.new(:idInSet => 9, :cardName => "Harrier Griffin", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/9.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/9.jpg", :color => 16, :cmc => 6, :rarity => 2, :expansion => "GPT", :power => 3, :toughness => 3)
	c9.save
	c10 = MtgCard.new(:idInSet => 10, :cardName => "Leyline of the Meek", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gp/10.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/10.jpg", :color => 16, :cmc => 4, :rarity => 3, :expansion => "GPT")
	c10.save
	c11 = MtgCard.new(:idInSet => 11, :cardName => "Lionheart Maverick", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/11.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/11.jpg", :color => 16, :cmc => 1, :rarity => 1, :expansion => "GPT", :power => 1, :toughness => 1)
	c11.save
	c12 = MtgCard.new(:idInSet => 12, :cardName => "Martyred Rusalka", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/12.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/12.jpg", :color => 16, :cmc => 1, :rarity => 2, :expansion => "GPT", :power => 1, :toughness => 1)
	c12.save
	c13 = MtgCard.new(:idInSet => 13, :cardName => "Order of the Stars", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/13.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/13.jpg", :color => 16, :cmc => 1, :rarity => 2, :expansion => "GPT", :power => 0, :toughness => 1)
	c13.save
	c14 = MtgCard.new(:idInSet => 14, :cardName => "Shadow Lance", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gp/14.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/14.jpg", :color => 16, :cmc => 1, :rarity => 2, :expansion => "GPT")
	c14.save
	c15 = MtgCard.new(:idInSet => 15, :cardName => "Shrieking Grotesque", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/15.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/15.jpg", :color => 16, :cmc => 3, :rarity => 1, :expansion => "GPT", :power => 2, :toughness => 1)
	c15.save
	c16 = MtgCard.new(:idInSet => 16, :cardName => "Sinstriker's Will", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gp/16.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/16.jpg", :color => 16, :cmc => 4, :rarity => 2, :expansion => "GPT")
	c16.save
	c17 = MtgCard.new(:idInSet => 17, :cardName => "Skyrider Trainee", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/17.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/17.jpg", :color => 16, :cmc => 5, :rarity => 1, :expansion => "GPT", :power => 3, :toughness => 3)
	c17.save
	c18 = MtgCard.new(:idInSet => 18, :cardName => "Spelltithe Enforcer", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/18.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/18.jpg", :color => 16, :cmc => 5, :rarity => 3, :expansion => "GPT", :power => 3, :toughness => 3)
	c18.save
	c19 = MtgCard.new(:idInSet => 19, :cardName => "Storm Herd", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gp/19.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/19.jpg", :color => 16, :cmc => 10, :rarity => 3, :expansion => "GPT")
	c19.save
	c20 = MtgCard.new(:idInSet => 20, :cardName => "To Arms!", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gp/20.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/20.jpg", :color => 16, :cmc => 2, :rarity => 2, :expansion => "GPT")
	c20.save
	c21 = MtgCard.new(:idInSet => 21, :cardName => "Withstand", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gp/21.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/21.jpg", :color => 16, :cmc => 3, :rarity => 1, :expansion => "GPT")
	c21.save
	c22 = MtgCard.new(:idInSet => 22, :cardName => "Aetherplasm", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/22.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/22.jpg", :color => 8, :cmc => 4, :rarity => 2, :expansion => "GPT", :power => 1, :toughness => 1)
	c22.save
	c23 = MtgCard.new(:idInSet => 23, :cardName => "Crystal Seer", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/23.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/23.jpg", :color => 8, :cmc => 5, :rarity => 1, :expansion => "GPT", :power => 2, :toughness => 2)
	c23.save
	c24 = MtgCard.new(:idInSet => 24, :cardName => "Drowned Rusalka", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/24.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/24.jpg", :color => 8, :cmc => 1, :rarity => 2, :expansion => "GPT", :power => 1, :toughness => 1)
	c24.save
	c25 = MtgCard.new(:idInSet => 25, :cardName => "Frazzle", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gp/25.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/25.jpg", :color => 8, :cmc => 4, :rarity => 2, :expansion => "GPT")
	c25.save
	c26 = MtgCard.new(:idInSet => 26, :cardName => "Gigadrowse", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gp/26.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/26.jpg", :color => 8, :cmc => 1, :rarity => 1, :expansion => "GPT")
	c26.save
	c27 = MtgCard.new(:idInSet => 27, :cardName => "Hatching Plans", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gp/27.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/27.jpg", :color => 8, :cmc => 2, :rarity => 3, :expansion => "GPT")
	c27.save
	c28 = MtgCard.new(:idInSet => 28, :cardName => "Infiltrator's Magemark", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gp/28.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/28.jpg", :color => 8, :cmc => 3, :rarity => 1, :expansion => "GPT")
	c28.save
	c29 = MtgCard.new(:idInSet => 29, :cardName => "Leyline of Singularity", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gp/29.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/29.jpg", :color => 8, :cmc => 4, :rarity => 3, :expansion => "GPT")
	c29.save
	c30 = MtgCard.new(:idInSet => 30, :cardName => "Mimeofacture", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gp/30.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/30.jpg", :color => 8, :cmc => 4, :rarity => 3, :expansion => "GPT")
	c30.save
	c31 = MtgCard.new(:idInSet => 31, :cardName => "Quicken", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gp/31.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/31.jpg", :color => 8, :cmc => 1, :rarity => 3, :expansion => "GPT")
	c31.save
	c32 = MtgCard.new(:idInSet => 32, :cardName => "Repeal", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gp/32.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/32.jpg", :color => 8, :cmc => 1, :rarity => 1, :expansion => "GPT")
	c32.save
	c33 = MtgCard.new(:idInSet => 33, :cardName => "Runeboggle", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gp/33.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/33.jpg", :color => 8, :cmc => 3, :rarity => 1, :expansion => "GPT")
	c33.save
	c34 = MtgCard.new(:idInSet => 34, :cardName => "Sky Swallower", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/34.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/34.jpg", :color => 8, :cmc => 5, :rarity => 3, :expansion => "GPT", :power => 8, :toughness => 8)
	c34.save
	c35 = MtgCard.new(:idInSet => 35, :cardName => "Steamcore Weird", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/35.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/35.jpg", :color => 8, :cmc => 4, :rarity => 1, :expansion => "GPT", :power => 1, :toughness => 3)
	c35.save
	c36 = MtgCard.new(:idInSet => 36, :cardName => "Stratozeppelid", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/36.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/36.jpg", :color => 8, :cmc => 5, :rarity => 2, :expansion => "GPT", :power => 4, :toughness => 4)
	c36.save
	c37 = MtgCard.new(:idInSet => 37, :cardName => "Thunderheads", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gp/37.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/37.jpg", :color => 8, :cmc => 3, :rarity => 2, :expansion => "GPT")
	c37.save
	c38 = MtgCard.new(:idInSet => 38, :cardName => "Torch Drake", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/38.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/38.jpg", :color => 8, :cmc => 4, :rarity => 1, :expansion => "GPT", :power => 2, :toughness => 2)
	c38.save
	c39 = MtgCard.new(:idInSet => 39, :cardName => "Train of Thought", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gp/39.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/39.jpg", :color => 8, :cmc => 2, :rarity => 1, :expansion => "GPT")
	c39.save
	c40 = MtgCard.new(:idInSet => 40, :cardName => "Vacuumelt", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gp/40.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/40.jpg", :color => 8, :cmc => 3, :rarity => 2, :expansion => "GPT")
	c40.save
	c41 = MtgCard.new(:idInSet => 41, :cardName => "Vedalken Plotter", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/41.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/41.jpg", :color => 8, :cmc => 3, :rarity => 2, :expansion => "GPT", :power => 1, :toughness => 1)
	c41.save
	c42 = MtgCard.new(:idInSet => 42, :cardName => "Vertigo Spawn", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/42.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/42.jpg", :color => 8, :cmc => 2, :rarity => 2, :expansion => "GPT", :power => 0, :toughness => 3)
	c42.save
	c43 = MtgCard.new(:idInSet => 43, :cardName => "Abyssal Nocturnus", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/43.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/43.jpg", :color => 4, :cmc => 3, :rarity => 3, :expansion => "GPT", :power => 2, :toughness => 2)
	c43.save
	c44 = MtgCard.new(:idInSet => 44, :cardName => "Caustic Rain", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gp/44.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/44.jpg", :color => 4, :cmc => 4, :rarity => 2, :expansion => "GPT")
	c44.save
	c45 = MtgCard.new(:idInSet => 45, :cardName => "Cremate", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gp/45.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/45.jpg", :color => 4, :cmc => 1, :rarity => 1, :expansion => "GPT")
	c45.save
	c46 = MtgCard.new(:idInSet => 46, :cardName => "Cry of Contrition", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gp/46.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/46.jpg", :color => 4, :cmc => 1, :rarity => 1, :expansion => "GPT")
	c46.save
	c47 = MtgCard.new(:idInSet => 47, :cardName => "Cryptwailing", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gp/47.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/47.jpg", :color => 4, :cmc => 4, :rarity => 2, :expansion => "GPT")
	c47.save
	c48 = MtgCard.new(:idInSet => 48, :cardName => "Daggerclaw Imp", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/48.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/48.jpg", :color => 4, :cmc => 3, :rarity => 2, :expansion => "GPT", :power => 3, :toughness => 1)
	c48.save
	c49 = MtgCard.new(:idInSet => 49, :cardName => "Douse in Gloom", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gp/49.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/49.jpg", :color => 4, :cmc => 3, :rarity => 1, :expansion => "GPT")
	c49.save
	c50 = MtgCard.new(:idInSet => 50, :cardName => "Exhumer Thrull", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/50.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/50.jpg", :color => 4, :cmc => 6, :rarity => 2, :expansion => "GPT", :power => 3, :toughness => 3)
	c50.save
	c51 = MtgCard.new(:idInSet => 51, :cardName => "Hissing Miasma", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gp/51.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/51.jpg", :color => 4, :cmc => 3, :rarity => 2, :expansion => "GPT")
	c51.save
	c52 = MtgCard.new(:idInSet => 52, :cardName => "Leyline of the Void", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gp/52.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/52.jpg", :color => 4, :cmc => 4, :rarity => 3, :expansion => "GPT")
	c52.save
	c53 = MtgCard.new(:idInSet => 53, :cardName => "Necromancer's Magemark", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gp/53.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/53.jpg", :color => 4, :cmc => 3, :rarity => 1, :expansion => "GPT")
	c53.save
	c54 = MtgCard.new(:idInSet => 54, :cardName => "Orzhov Euthanist", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/54.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/54.jpg", :color => 4, :cmc => 3, :rarity => 1, :expansion => "GPT", :power => 2, :toughness => 2)
	c54.save
	c55 = MtgCard.new(:idInSet => 55, :cardName => "Ostiary Thrull", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/55.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/55.jpg", :color => 4, :cmc => 4, :rarity => 1, :expansion => "GPT", :power => 2, :toughness => 2)
	c55.save
	c56 = MtgCard.new(:idInSet => 56, :cardName => "Plagued Rusalka", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/56.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/56.jpg", :color => 4, :cmc => 1, :rarity => 2, :expansion => "GPT", :power => 1, :toughness => 1)
	c56.save
	c57 = MtgCard.new(:idInSet => 57, :cardName => "Poisonbelly Ogre", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/57.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/57.jpg", :color => 4, :cmc => 5, :rarity => 1, :expansion => "GPT", :power => 3, :toughness => 3)
	c57.save
	c58 = MtgCard.new(:idInSet => 58, :cardName => "Restless Bones", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/58.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/58.jpg", :color => 4, :cmc => 3, :rarity => 1, :expansion => "GPT", :power => 1, :toughness => 1)
	c58.save
	c59 = MtgCard.new(:idInSet => 59, :cardName => "Revenant Patriarch", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/59.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/59.jpg", :color => 4, :cmc => 5, :rarity => 2, :expansion => "GPT", :power => 4, :toughness => 3)
	c59.save
	c60 = MtgCard.new(:idInSet => 60, :cardName => "Sanguine Praetor", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/60.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/60.jpg", :color => 4, :cmc => 8, :rarity => 3, :expansion => "GPT", :power => 7, :toughness => 5)
	c60.save
	c61 = MtgCard.new(:idInSet => 61, :cardName => "Seize the Soul", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gp/61.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/61.jpg", :color => 4, :cmc => 4, :rarity => 3, :expansion => "GPT")
	c61.save
	c62 = MtgCard.new(:idInSet => 62, :cardName => "Skeletal Vampire", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/62.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/62.jpg", :color => 4, :cmc => 6, :rarity => 3, :expansion => "GPT", :power => 3, :toughness => 3)
	c62.save
	c63 = MtgCard.new(:idInSet => 63, :cardName => "Smogsteed Rider", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/63.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/63.jpg", :color => 4, :cmc => 4, :rarity => 2, :expansion => "GPT", :power => 2, :toughness => 2)
	c63.save
	c64 = MtgCard.new(:idInSet => 64, :cardName => "Bloodscale Prowler", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/64.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/64.jpg", :color => 2, :cmc => 3, :rarity => 1, :expansion => "GPT", :power => 3, :toughness => 1)
	c64.save
	c65 = MtgCard.new(:idInSet => 65, :cardName => "Fencer's Magemark", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gp/65.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/65.jpg", :color => 2, :cmc => 3, :rarity => 1, :expansion => "GPT")
	c65.save
	c66 = MtgCard.new(:idInSet => 66, :cardName => "Ghor-Clan Bloodscale", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/66.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/66.jpg", :color => 2, :cmc => 4, :rarity => 2, :expansion => "GPT", :power => 2, :toughness => 1)
	c66.save
	c67 = MtgCard.new(:idInSet => 67, :cardName => "Hypervolt Grasp", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gp/67.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/67.jpg", :color => 2, :cmc => 3, :rarity => 2, :expansion => "GPT")
	c67.save
	c68 = MtgCard.new(:idInSet => 68, :cardName => "Leyline of Lightning", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gp/68.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/68.jpg", :color => 2, :cmc => 4, :rarity => 3, :expansion => "GPT")
	c68.save
	c69 = MtgCard.new(:idInSet => 69, :cardName => "Living Inferno", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/69.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/69.jpg", :color => 2, :cmc => 8, :rarity => 3, :expansion => "GPT", :power => 8, :toughness => 5)
	c69.save
	c70 = MtgCard.new(:idInSet => 70, :cardName => "Ogre Savant", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/70.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/70.jpg", :color => 2, :cmc => 5, :rarity => 1, :expansion => "GPT", :power => 3, :toughness => 2)
	c70.save
	c71 = MtgCard.new(:idInSet => 71, :cardName => "Parallectric Feedback", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gp/71.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/71.jpg", :color => 2, :cmc => 4, :rarity => 3, :expansion => "GPT")
	c71.save
	c72 = MtgCard.new(:idInSet => 72, :cardName => "Pyromatics", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gp/72.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/72.jpg", :color => 2, :cmc => 2, :rarity => 1, :expansion => "GPT")
	c72.save
	c73 = MtgCard.new(:idInSet => 73, :cardName => "Rabble-Rouser", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/73.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/73.jpg", :color => 2, :cmc => 4, :rarity => 2, :expansion => "GPT", :power => 1, :toughness => 1)
	c73.save
	c74 = MtgCard.new(:idInSet => 74, :cardName => "Scorched Rusalka", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/74.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/74.jpg", :color => 2, :cmc => 1, :rarity => 2, :expansion => "GPT", :power => 1, :toughness => 1)
	c74.save
	c75 = MtgCard.new(:idInSet => 75, :cardName => "Shattering Spree", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gp/75.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/75.jpg", :color => 2, :cmc => 1, :rarity => 2, :expansion => "GPT")
	c75.save
	c76 = MtgCard.new(:idInSet => 76, :cardName => "Siege of Towers", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gp/76.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/76.jpg", :color => 2, :cmc => 2, :rarity => 3, :expansion => "GPT")
	c76.save
	c77 = MtgCard.new(:idInSet => 77, :cardName => "Skarrgan Firebird", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/77.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/77.jpg", :color => 2, :cmc => 6, :rarity => 3, :expansion => "GPT", :power => 3, :toughness => 3)
	c77.save
	c78 = MtgCard.new(:idInSet => 78, :cardName => "Tin Street Hooligan", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/78.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/78.jpg", :color => 2, :cmc => 2, :rarity => 1, :expansion => "GPT", :power => 2, :toughness => 1)
	c78.save
	c79 = MtgCard.new(:idInSet => 79, :cardName => "Battering Wurm", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/79.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/79.jpg", :color => 1, :cmc => 7, :rarity => 2, :expansion => "GPT", :power => 4, :toughness => 3)
	c79.save
	c80 = MtgCard.new(:idInSet => 80, :cardName => "Beastmaster's Magemark", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gp/80.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/80.jpg", :color => 1, :cmc => 3, :rarity => 1, :expansion => "GPT")
	c80.save
	c81 = MtgCard.new(:idInSet => 81, :cardName => "Bioplasm", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/81.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/81.jpg", :color => 1, :cmc => 5, :rarity => 3, :expansion => "GPT", :power => 4, :toughness => 4)
	c81.save
	c82 = MtgCard.new(:idInSet => 82, :cardName => "Crash Landing", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gp/82.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/82.jpg", :color => 1, :cmc => 3, :rarity => 2, :expansion => "GPT")
	c82.save
	c83 = MtgCard.new(:idInSet => 83, :cardName => "Dryad Sophisticate", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/83.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/83.jpg", :color => 1, :cmc => 2, :rarity => 2, :expansion => "GPT", :power => 2, :toughness => 1)
	c83.save
	c84 = MtgCard.new(:idInSet => 84, :cardName => "Earth Surge", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gp/84.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/84.jpg", :color => 1, :cmc => 4, :rarity => 3, :expansion => "GPT")
	c84.save
	c85 = MtgCard.new(:idInSet => 85, :cardName => "Gatherer of Graces", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/85.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/85.jpg", :color => 1, :cmc => 2, :rarity => 2, :expansion => "GPT", :power => 1, :toughness => 2)
	c85.save
	c86 = MtgCard.new(:idInSet => 86, :cardName => "Ghor-Clan Savage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/86.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/86.jpg", :color => 1, :cmc => 5, :rarity => 1, :expansion => "GPT", :power => 2, :toughness => 3)
	c86.save
	c87 = MtgCard.new(:idInSet => 87, :cardName => "Gristleback", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/87.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/87.jpg", :color => 1, :cmc => 3, :rarity => 2, :expansion => "GPT", :power => 2, :toughness => 2)
	c87.save
	c88 = MtgCard.new(:idInSet => 88, :cardName => "Gruul Nodorog", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/88.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/88.jpg", :color => 1, :cmc => 6, :rarity => 1, :expansion => "GPT", :power => 4, :toughness => 4)
	c88.save
	c89 = MtgCard.new(:idInSet => 89, :cardName => "Gruul Scrapper", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/89.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/89.jpg", :color => 1, :cmc => 4, :rarity => 1, :expansion => "GPT", :power => 3, :toughness => 2)
	c89.save
	c90 = MtgCard.new(:idInSet => 90, :cardName => "Leyline of Lifeforce", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gp/90.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/90.jpg", :color => 1, :cmc => 4, :rarity => 3, :expansion => "GPT")
	c90.save
	c91 = MtgCard.new(:idInSet => 91, :cardName => "Petrified Wood-Kin", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/91.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/91.jpg", :color => 1, :cmc => 7, :rarity => 3, :expansion => "GPT", :power => 3, :toughness => 3)
	c91.save
	c92 = MtgCard.new(:idInSet => 92, :cardName => "Predatory Focus", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gp/92.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/92.jpg", :color => 1, :cmc => 5, :rarity => 2, :expansion => "GPT")
	c92.save
	c93 = MtgCard.new(:idInSet => 93, :cardName => "Primeval Light", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gp/93.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/93.jpg", :color => 1, :cmc => 4, :rarity => 2, :expansion => "GPT")
	c93.save
	c94 = MtgCard.new(:idInSet => 94, :cardName => "Silhana Ledgewalker", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/94.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/94.jpg", :color => 1, :cmc => 2, :rarity => 1, :expansion => "GPT", :power => 1, :toughness => 1)
	c94.save
	c95 = MtgCard.new(:idInSet => 95, :cardName => "Silhana Starfletcher", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/95.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/95.jpg", :color => 1, :cmc => 3, :rarity => 1, :expansion => "GPT", :power => 1, :toughness => 3)
	c95.save
	c96 = MtgCard.new(:idInSet => 96, :cardName => "Skarrgan Pit-Skulk", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/96.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/96.jpg", :color => 1, :cmc => 1, :rarity => 1, :expansion => "GPT", :power => 1, :toughness => 1)
	c96.save
	c97 = MtgCard.new(:idInSet => 97, :cardName => "Starved Rusalka", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/97.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/97.jpg", :color => 1, :cmc => 1, :rarity => 2, :expansion => "GPT", :power => 1, :toughness => 1)
	c97.save
	c98 = MtgCard.new(:idInSet => 98, :cardName => "Wildsize", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gp/98.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/98.jpg", :color => 1, :cmc => 3, :rarity => 1, :expansion => "GPT")
	c98.save
	c99 = MtgCard.new(:idInSet => 99, :cardName => "Wurmweaver Coil", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gp/99.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/99.jpg", :color => 1, :cmc => 6, :rarity => 3, :expansion => "GPT")
	c99.save
	c100 = MtgCard.new(:idInSet => 100, :cardName => "Agent of Masks", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/100.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/100.jpg", :color => 20, :cmc => 5, :rarity => 2, :expansion => "GPT", :power => 2, :toughness => 3)
	c100.save
	c101 = MtgCard.new(:idInSet => 101, :cardName => "Angel of Despair", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/101.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/101.jpg", :color => 20, :cmc => 7, :rarity => 3, :expansion => "GPT", :power => 5, :toughness => 5)
	c101.save
	c102 = MtgCard.new(:idInSet => 102, :cardName => "Blind Hunter", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/102.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/102.jpg", :color => 20, :cmc => 4, :rarity => 1, :expansion => "GPT", :power => 2, :toughness => 2)
	c102.save
	c103 = MtgCard.new(:idInSet => 103, :cardName => "Borborygmos", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/103.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/103.jpg", :color => 3, :cmc => 7, :rarity => 3, :expansion => "GPT", :power => 6, :toughness => 7)
	c103.save
	c104 = MtgCard.new(:idInSet => 104, :cardName => "Burning-Tree Bloodscale", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/104.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/104.jpg", :color => 3, :cmc => 4, :rarity => 1, :expansion => "GPT", :power => 2, :toughness => 2)
	c104.save
	c105 = MtgCard.new(:idInSet => 105, :cardName => "Burning-Tree Shaman", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/105.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/105.jpg", :color => 3, :cmc => 3, :rarity => 3, :expansion => "GPT", :power => 3, :toughness => 4)
	c105.save
	c106 = MtgCard.new(:idInSet => 106, :cardName => "Castigate", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gp/106.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/106.jpg", :color => 20, :cmc => 2, :rarity => 1, :expansion => "GPT")
	c106.save
	c107 = MtgCard.new(:idInSet => 107, :cardName => "Cerebral Vortex", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gp/107.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/107.jpg", :color => 10, :cmc => 3, :rarity => 3, :expansion => "GPT")
	c107.save
	c108 = MtgCard.new(:idInSet => 108, :cardName => "Conjurer's Ban", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gp/108.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/108.jpg", :color => 20, :cmc => 2, :rarity => 2, :expansion => "GPT")
	c108.save
	c109 = MtgCard.new(:idInSet => 109, :cardName => "Culling Sun", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gp/109.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/109.jpg", :color => 20, :cmc => 5, :rarity => 3, :expansion => "GPT")
	c109.save
	c110 = MtgCard.new(:idInSet => 110, :cardName => "Dune-Brood Nephilim", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/110.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/110.jpg", :color => 23, :cmc => 4, :rarity => 3, :expansion => "GPT", :power => 3, :toughness => 3)
	c110.save
	c111 = MtgCard.new(:idInSet => 111, :cardName => "Electrolyze", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gp/111.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/111.jpg", :color => 10, :cmc => 3, :rarity => 2, :expansion => "GPT")
	c111.save
	c112 = MtgCard.new(:idInSet => 112, :cardName => "Feral Animist", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/112.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/112.jpg", :color => 3, :cmc => 3, :rarity => 2, :expansion => "GPT", :power => 2, :toughness => 1)
	c112.save
	c113 = MtgCard.new(:idInSet => 113, :cardName => "Gelectrode", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/113.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/113.jpg", :color => 10, :cmc => 3, :rarity => 2, :expansion => "GPT", :power => 0, :toughness => 1)
	c113.save
	c114 = MtgCard.new(:idInSet => 114, :cardName => "Ghost Council of Orzhova", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/114.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/114.jpg", :color => 20, :cmc => 4, :rarity => 3, :expansion => "GPT", :power => 4, :toughness => 4)
	c114.save
	c115 = MtgCard.new(:idInSet => 115, :cardName => "Glint-Eye Nephilim", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/115.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/115.jpg", :color => 15, :cmc => 4, :rarity => 3, :expansion => "GPT", :power => 2, :toughness => 2)
	c115.save
	c116 = MtgCard.new(:idInSet => 116, :cardName => "Goblin Flectomancer", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/116.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/116.jpg", :color => 10, :cmc => 3, :rarity => 2, :expansion => "GPT", :power => 2, :toughness => 2)
	c116.save
	c117 = MtgCard.new(:idInSet => 117, :cardName => "Ink-Treader Nephilim", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/117.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/117.jpg", :color => 27, :cmc => 4, :rarity => 3, :expansion => "GPT", :power => 3, :toughness => 3)
	c117.save
	c118 = MtgCard.new(:idInSet => 118, :cardName => "Invoke the Firemind", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gp/118.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/118.jpg", :color => 10, :cmc => 3, :rarity => 3, :expansion => "GPT")
	c118.save
	c119 = MtgCard.new(:idInSet => 119, :cardName => "Izzet Chronarch", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/119.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/119.jpg", :color => 10, :cmc => 5, :rarity => 1, :expansion => "GPT", :power => 2, :toughness => 2)
	c119.save
	c120 = MtgCard.new(:idInSet => 120, :cardName => "Killer Instinct", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gp/120.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/120.jpg", :color => 3, :cmc => 6, :rarity => 3, :expansion => "GPT")
	c120.save
	c121 = MtgCard.new(:idInSet => 121, :cardName => "Leap of Flame", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gp/121.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/121.jpg", :color => 10, :cmc => 2, :rarity => 1, :expansion => "GPT")
	c121.save
	c122 = MtgCard.new(:idInSet => 122, :cardName => "Mortify", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gp/122.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/122.jpg", :color => 20, :cmc => 3, :rarity => 2, :expansion => "GPT")
	c122.save
	c123 = MtgCard.new(:idInSet => 123, :cardName => "Niv-Mizzet, the Firemind", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/123.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/123.jpg", :color => 10, :cmc => 6, :rarity => 4, :expansion => "GPT", :power => 4, :toughness => 4)
	c123.save
	c124 = MtgCard.new(:idInSet => 124, :cardName => "Orzhov Pontiff", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/124.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/124.jpg", :color => 20, :cmc => 3, :rarity => 3, :expansion => "GPT", :power => 1, :toughness => 1)
	c124.save
	c125 = MtgCard.new(:idInSet => 125, :cardName => "Pillory of the Sleepless", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gp/125.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/125.jpg", :color => 20, :cmc => 3, :rarity => 1, :expansion => "GPT")
	c125.save
	c126 = MtgCard.new(:idInSet => 126, :cardName => "Rumbling Slum", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/126.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/126.jpg", :color => 3, :cmc => 4, :rarity => 3, :expansion => "GPT", :power => 5, :toughness => 5)
	c126.save
	c127 = MtgCard.new(:idInSet => 127, :cardName => "Savage Twister", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gp/127.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/127.jpg", :color => 3, :cmc => 2, :rarity => 2, :expansion => "GPT")
	c127.save
	c128 = MtgCard.new(:idInSet => 128, :cardName => "Scab-Clan Mauler", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/128.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/128.jpg", :color => 3, :cmc => 2, :rarity => 1, :expansion => "GPT", :power => 1, :toughness => 1)
	c128.save
	c129 = MtgCard.new(:idInSet => 129, :cardName => "Schismotivate", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/gp/129.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/129.jpg", :color => 10, :cmc => 3, :rarity => 2, :expansion => "GPT")
	c129.save
	c130 = MtgCard.new(:idInSet => 130, :cardName => "Skarrgan Skybreaker", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/130.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/130.jpg", :color => 3, :cmc => 7, :rarity => 2, :expansion => "GPT", :power => 3, :toughness => 3)
	c130.save
	c131 = MtgCard.new(:idInSet => 131, :cardName => "Souls of the Faultless", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/131.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/131.jpg", :color => 20, :cmc => 3, :rarity => 2, :expansion => "GPT", :power => 0, :toughness => 4)
	c131.save
	c132 = MtgCard.new(:idInSet => 132, :cardName => "Stitch in Time", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gp/132.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/132.jpg", :color => 10, :cmc => 3, :rarity => 3, :expansion => "GPT")
	c132.save
	c133 = MtgCard.new(:idInSet => 133, :cardName => "Streetbreaker Wurm", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/133.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/133.jpg", :color => 3, :cmc => 5, :rarity => 1, :expansion => "GPT", :power => 6, :toughness => 4)
	c133.save
	c134 = MtgCard.new(:idInSet => 134, :cardName => "Teysa, Orzhov Scion", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/134.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/134.jpg", :color => 20, :cmc => 3, :rarity => 3, :expansion => "GPT", :power => 2, :toughness => 3)
	c134.save
	c135 = MtgCard.new(:idInSet => 135, :cardName => "Tibor and Lumia", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/135.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/135.jpg", :color => 10, :cmc => 4, :rarity => 3, :expansion => "GPT", :power => 3, :toughness => 3)
	c135.save
	c136 = MtgCard.new(:idInSet => 136, :cardName => "Ulasht, the Hate Seed", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/136.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/136.jpg", :color => 3, :cmc => 4, :rarity => 3, :expansion => "GPT", :power => 0, :toughness => 0)
	c136.save
	c137 = MtgCard.new(:idInSet => 137, :cardName => "Wee Dragonauts", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/137.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/137.jpg", :color => 10, :cmc => 3, :rarity => 1, :expansion => "GPT", :power => 1, :toughness => 3)
	c137.save
	c138 = MtgCard.new(:idInSet => 138, :cardName => "Witch-Maw Nephilim", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/138.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/138.jpg", :color => 29, :cmc => 4, :rarity => 3, :expansion => "GPT", :power => 1, :toughness => 1)
	c138.save
	c139 = MtgCard.new(:idInSet => 139, :cardName => "Wreak Havoc", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/gp/139.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/139.jpg", :color => 3, :cmc => 4, :rarity => 2, :expansion => "GPT")
	c139.save
	c140 = MtgCard.new(:idInSet => 140, :cardName => "Yore-Tiller Nephilim", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/140.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/140.jpg", :color => 30, :cmc => 4, :rarity => 3, :expansion => "GPT", :power => 2, :toughness => 2)
	c140.save
	c141 = MtgCard.new(:idInSet => 141, :cardName => "Debtors' Knell", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/gp/141.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/141.jpg", :color => 20, :cmc => 7, :rarity => 3, :expansion => "GPT")
	c141.save
	c142 = MtgCard.new(:idInSet => 142, :cardName => "Djinn Illuminatus", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/142.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/142.jpg", :color => 10, :cmc => 7, :rarity => 3, :expansion => "GPT", :power => 3, :toughness => 5)
	c142.save
	c143 = MtgCard.new(:idInSet => 143, :cardName => "Giant Solifuge", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/143.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/143.jpg", :color => 3, :cmc => 4, :rarity => 3, :expansion => "GPT", :power => 4, :toughness => 1)
	c143.save
	c144 = MtgCard.new(:idInSet => 144, :cardName => "Gruul Guildmage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/144.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/144.jpg", :color => 3, :cmc => 2, :rarity => 3, :expansion => "GPT", :power => 2, :toughness => 2)
	c144.save
	c145 = MtgCard.new(:idInSet => 145, :cardName => "Izzet Guildmage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/145.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/145.jpg", :color => 10, :cmc => 2, :rarity => 2, :expansion => "GPT", :power => 2, :toughness => 2)
	c145.save
	c146 = MtgCard.new(:idInSet => 146, :cardName => "Mourning Thrull", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/146.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/146.jpg", :color => 20, :cmc => 2, :rarity => 1, :expansion => "GPT", :power => 1, :toughness => 1)
	c146.save
	c147 = MtgCard.new(:idInSet => 147, :cardName => "Orzhov Guildmage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/147.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/147.jpg", :color => 20, :cmc => 2, :rarity => 2, :expansion => "GPT", :power => 2, :toughness => 2)
	c147.save
	c148 = MtgCard.new(:idInSet => 148, :cardName => "Petrahydrox", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/148.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/148.jpg", :color => 10, :cmc => 4, :rarity => 1, :expansion => "GPT", :power => 3, :toughness => 3)
	c148.save
	c149 = MtgCard.new(:idInSet => 149, :cardName => "Wild Cantor", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/gp/149.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/149.jpg", :color => 3, :cmc => 1, :rarity => 1, :expansion => "GPT", :power => 1, :toughness => 1)
	c149.save
	c150 = MtgCard.new(:idInSet => 150, :cardName => "Gruul Signet", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/gp/150.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/150.jpg", :color => 0, :cmc => 2, :rarity => 1, :expansion => "GPT")
	c150.save
	c151 = MtgCard.new(:idInSet => 151, :cardName => "Gruul War Plow", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/gp/151.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/151.jpg", :color => 0, :cmc => 4, :rarity => 3, :expansion => "GPT")
	c151.save
	c152 = MtgCard.new(:idInSet => 152, :cardName => "Izzet Signet", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/gp/152.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/152.jpg", :color => 0, :cmc => 2, :rarity => 1, :expansion => "GPT")
	c152.save
	c153 = MtgCard.new(:idInSet => 153, :cardName => "Mizzium Transreliquat", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/gp/153.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/153.jpg", :color => 0, :cmc => 3, :rarity => 3, :expansion => "GPT")
	c153.save
	c154 = MtgCard.new(:idInSet => 154, :cardName => "Moratorium Stone", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/gp/154.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/154.jpg", :color => 0, :cmc => 1, :rarity => 3, :expansion => "GPT")
	c154.save
	c155 = MtgCard.new(:idInSet => 155, :cardName => "Orzhov Signet", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/gp/155.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/155.jpg", :color => 0, :cmc => 2, :rarity => 1, :expansion => "GPT")
	c155.save
	c156 = MtgCard.new(:idInSet => 156, :cardName => "Sword of the Paruns", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/gp/156.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/156.jpg", :color => 0, :cmc => 4, :rarity => 3, :expansion => "GPT")
	c156.save
	c157 = MtgCard.new(:idInSet => 157, :cardName => "Godless Shrine", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/gp/157.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/157.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "GPT")
	c157.save
	c158 = MtgCard.new(:idInSet => 158, :cardName => "Gruul Turf", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/gp/158.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/158.jpg", :color => 0, :cmc => 0, :rarity => 1, :expansion => "GPT")
	c158.save
	c159 = MtgCard.new(:idInSet => 159, :cardName => "Izzet Boilerworks", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/gp/159.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/159.jpg", :color => 0, :cmc => 0, :rarity => 1, :expansion => "GPT")
	c159.save
	c160 = MtgCard.new(:idInSet => 160, :cardName => "Nivix, Aerie of the Firemind", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/gp/160.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/160.jpg", :color => 0, :cmc => 0, :rarity => 2, :expansion => "GPT")
	c160.save
	c161 = MtgCard.new(:idInSet => 161, :cardName => "Orzhov Basilica", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/gp/161.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/161.jpg", :color => 0, :cmc => 0, :rarity => 1, :expansion => "GPT")
	c161.save
	c162 = MtgCard.new(:idInSet => 162, :cardName => "Orzhova, the Church of Deals", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/gp/162.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/162.jpg", :color => 0, :cmc => 0, :rarity => 2, :expansion => "GPT")
	c162.save
	c163 = MtgCard.new(:idInSet => 163, :cardName => "Skarrg, the Rage Pits", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/gp/163.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/163.jpg", :color => 0, :cmc => 0, :rarity => 2, :expansion => "GPT")
	c163.save
	c164 = MtgCard.new(:idInSet => 164, :cardName => "Steam Vents", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/gp/164.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/164.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "GPT")
	c164.save
	c165 = MtgCard.new(:idInSet => 165, :cardName => "Stomping Ground", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/gp/165.jpg", :chiSRC => "http://magiccards.info/scans/cn/gp/165.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "GPT")
	c165.save
end