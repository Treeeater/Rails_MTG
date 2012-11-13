desc "Import RAV cards."
task :import_RAV_cards => :environment do

	c1 = MtgCard.new(:idInSet => 1, :cardName => "Auratouched Mage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/1.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/1.jpg", :color => 16, :cmc => 6, :rarity => 2, :expansion => "RAV", :power => 3, :toughness => 3)
	c1.save
	c2 = MtgCard.new(:idInSet => 2, :cardName => "Bathe in Light", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/2.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/2.jpg", :color => 16, :cmc => 2, :rarity => 2, :expansion => "RAV")
	c2.save
	c3 = MtgCard.new(:idInSet => 3, :cardName => "Benevolent Ancestor", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/3.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/3.jpg", :color => 16, :cmc => 3, :rarity => 1, :expansion => "RAV", :power => 0, :toughness => 4)
	c3.save
	c4 = MtgCard.new(:idInSet => 4, :cardName => "Blazing Archon", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/4.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/4.jpg", :color => 16, :cmc => 9, :rarity => 3, :expansion => "RAV", :power => 5, :toughness => 6)
	c4.save
	c5 = MtgCard.new(:idInSet => 5, :cardName => "Boros Fury-Shield", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/5.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/5.jpg", :color => 16, :cmc => 3, :rarity => 1, :expansion => "RAV")
	c5.save
	c6 = MtgCard.new(:idInSet => 6, :cardName => "Caregiver", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/6.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/6.jpg", :color => 16, :cmc => 1, :rarity => 1, :expansion => "RAV", :power => 1, :toughness => 1)
	c6.save
	c7 = MtgCard.new(:idInSet => 7, :cardName => "Chant of Vitu-Ghazi", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/7.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/7.jpg", :color => 16, :cmc => 8, :rarity => 2, :expansion => "RAV")
	c7.save
	c8 = MtgCard.new(:idInSet => 8, :cardName => "Concerted Effort", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/8.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/8.jpg", :color => 16, :cmc => 4, :rarity => 3, :expansion => "RAV")
	c8.save
	c9 = MtgCard.new(:idInSet => 9, :cardName => "Conclave Equenaut", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/9.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/9.jpg", :color => 16, :cmc => 6, :rarity => 1, :expansion => "RAV", :power => 3, :toughness => 3)
	c9.save
	c10 = MtgCard.new(:idInSet => 10, :cardName => "Conclave Phalanx", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/10.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/10.jpg", :color => 16, :cmc => 5, :rarity => 2, :expansion => "RAV", :power => 2, :toughness => 4)
	c10.save
	c11 = MtgCard.new(:idInSet => 11, :cardName => "Conclave's Blessing", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/11.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/11.jpg", :color => 16, :cmc => 4, :rarity => 1, :expansion => "RAV")
	c11.save
	c12 = MtgCard.new(:idInSet => 12, :cardName => "Courier Hawk", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/12.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/12.jpg", :color => 16, :cmc => 2, :rarity => 1, :expansion => "RAV", :power => 1, :toughness => 2)
	c12.save
	c13 = MtgCard.new(:idInSet => 13, :cardName => "Devouring Light", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/13.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/13.jpg", :color => 16, :cmc => 3, :rarity => 2, :expansion => "RAV")
	c13.save
	c14 = MtgCard.new(:idInSet => 14, :cardName => "Divebomber Griffin", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/14.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/14.jpg", :color => 16, :cmc => 5, :rarity => 2, :expansion => "RAV", :power => 3, :toughness => 2)
	c14.save
	c15 = MtgCard.new(:idInSet => 15, :cardName => "Dromad Purebred", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/15.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/15.jpg", :color => 16, :cmc => 5, :rarity => 1, :expansion => "RAV", :power => 1, :toughness => 5)
	c15.save
	c16 = MtgCard.new(:idInSet => 16, :cardName => "Faith's Fetters", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/16.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/16.jpg", :color => 16, :cmc => 4, :rarity => 1, :expansion => "RAV")
	c16.save
	c17 = MtgCard.new(:idInSet => 17, :cardName => "Festival of the Guildpact", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/17.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/17.jpg", :color => 16, :cmc => 1, :rarity => 2, :expansion => "RAV")
	c17.save
	c18 = MtgCard.new(:idInSet => 18, :cardName => "Flickerform", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/18.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/18.jpg", :color => 16, :cmc => 2, :rarity => 3, :expansion => "RAV")
	c18.save
	c19 = MtgCard.new(:idInSet => 19, :cardName => "Gate Hound", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/19.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/19.jpg", :color => 16, :cmc => 3, :rarity => 1, :expansion => "RAV", :power => 1, :toughness => 1)
	c19.save
	c20 = MtgCard.new(:idInSet => 20, :cardName => "Ghosts of the Innocent", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/20.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/20.jpg", :color => 16, :cmc => 7, :rarity => 3, :expansion => "RAV", :power => 4, :toughness => 5)
	c20.save
	c21 = MtgCard.new(:idInSet => 21, :cardName => "Hour of Reckoning", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rav/21.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/21.jpg", :color => 16, :cmc => 7, :rarity => 3, :expansion => "RAV")
	c21.save
	c22 = MtgCard.new(:idInSet => 22, :cardName => "Hunted Lammasu", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/22.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/22.jpg", :color => 16, :cmc => 4, :rarity => 3, :expansion => "RAV", :power => 5, :toughness => 5)
	c22.save
	c23 = MtgCard.new(:idInSet => 23, :cardName => "Leave No Trace", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/23.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/23.jpg", :color => 16, :cmc => 2, :rarity => 1, :expansion => "RAV")
	c23.save
	c24 = MtgCard.new(:idInSet => 24, :cardName => "Light of Sanction", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/24.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/24.jpg", :color => 16, :cmc => 3, :rarity => 3, :expansion => "RAV")
	c24.save
	c25 = MtgCard.new(:idInSet => 25, :cardName => "Loxodon Gatekeeper", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/25.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/25.jpg", :color => 16, :cmc => 4, :rarity => 3, :expansion => "RAV", :power => 2, :toughness => 3)
	c25.save
	c26 = MtgCard.new(:idInSet => 26, :cardName => "Nightguard Patrol", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/26.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/26.jpg", :color => 16, :cmc => 3, :rarity => 1, :expansion => "RAV", :power => 2, :toughness => 1)
	c26.save
	c27 = MtgCard.new(:idInSet => 27, :cardName => "Oathsworn Giant", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/27.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/27.jpg", :color => 16, :cmc => 6, :rarity => 2, :expansion => "RAV", :power => 3, :toughness => 4)
	c27.save
	c28 = MtgCard.new(:idInSet => 28, :cardName => "Sandsower", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/28.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/28.jpg", :color => 16, :cmc => 4, :rarity => 2, :expansion => "RAV", :power => 1, :toughness => 3)
	c28.save
	c29 = MtgCard.new(:idInSet => 29, :cardName => "Screeching Griffin", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/29.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/29.jpg", :color => 16, :cmc => 4, :rarity => 1, :expansion => "RAV", :power => 2, :toughness => 2)
	c29.save
	c30 = MtgCard.new(:idInSet => 30, :cardName => "Seed Spark", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/30.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/30.jpg", :color => 16, :cmc => 4, :rarity => 2, :expansion => "RAV")
	c30.save
	c31 = MtgCard.new(:idInSet => 31, :cardName => "Suppression Field", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/31.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/31.jpg", :color => 16, :cmc => 2, :rarity => 2, :expansion => "RAV")
	c31.save
	c32 = MtgCard.new(:idInSet => 32, :cardName => "Three Dreams", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rav/32.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/32.jpg", :color => 16, :cmc => 5, :rarity => 3, :expansion => "RAV")
	c32.save
	c33 = MtgCard.new(:idInSet => 33, :cardName => "Twilight Drover", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/33.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/33.jpg", :color => 16, :cmc => 3, :rarity => 3, :expansion => "RAV", :power => 1, :toughness => 1)
	c33.save
	c34 = MtgCard.new(:idInSet => 34, :cardName => "Veteran Armorer", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/34.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/34.jpg", :color => 16, :cmc => 2, :rarity => 1, :expansion => "RAV", :power => 2, :toughness => 2)
	c34.save
	c35 = MtgCard.new(:idInSet => 35, :cardName => "Votary of the Conclave", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/35.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/35.jpg", :color => 16, :cmc => 1, :rarity => 1, :expansion => "RAV", :power => 1, :toughness => 1)
	c35.save
	c36 = MtgCard.new(:idInSet => 36, :cardName => "Wojek Apothecary", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/36.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/36.jpg", :color => 16, :cmc => 4, :rarity => 2, :expansion => "RAV", :power => 1, :toughness => 1)
	c36.save
	c37 = MtgCard.new(:idInSet => 37, :cardName => "Wojek Siren", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/37.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/37.jpg", :color => 16, :cmc => 1, :rarity => 1, :expansion => "RAV")
	c37.save
	c38 = MtgCard.new(:idInSet => 38, :cardName => "Belltower Sphinx", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/38.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/38.jpg", :color => 8, :cmc => 5, :rarity => 2, :expansion => "RAV", :power => 2, :toughness => 5)
	c38.save
	c39 = MtgCard.new(:idInSet => 39, :cardName => "Cerulean Sphinx", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/39.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/39.jpg", :color => 8, :cmc => 6, :rarity => 3, :expansion => "RAV", :power => 5, :toughness => 5)
	c39.save
	c40 = MtgCard.new(:idInSet => 40, :cardName => "Compulsive Research", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rav/40.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/40.jpg", :color => 8, :cmc => 3, :rarity => 1, :expansion => "RAV")
	c40.save
	c41 = MtgCard.new(:idInSet => 41, :cardName => "Convolute", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/41.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/41.jpg", :color => 8, :cmc => 3, :rarity => 1, :expansion => "RAV")
	c41.save
	c42 = MtgCard.new(:idInSet => 42, :cardName => "Copy Enchantment", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/42.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/42.jpg", :color => 8, :cmc => 3, :rarity => 3, :expansion => "RAV")
	c42.save
	c43 = MtgCard.new(:idInSet => 43, :cardName => "Dizzy Spell", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/43.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/43.jpg", :color => 8, :cmc => 1, :rarity => 1, :expansion => "RAV")
	c43.save
	c44 = MtgCard.new(:idInSet => 44, :cardName => "Drake Familiar", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/44.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/44.jpg", :color => 8, :cmc => 2, :rarity => 1, :expansion => "RAV", :power => 2, :toughness => 1)
	c44.save
	c45 = MtgCard.new(:idInSet => 45, :cardName => "Dream Leash", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/45.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/45.jpg", :color => 8, :cmc => 5, :rarity => 3, :expansion => "RAV")
	c45.save
	c46 = MtgCard.new(:idInSet => 46, :cardName => "Drift of Phantasms", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/46.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/46.jpg", :color => 8, :cmc => 3, :rarity => 1, :expansion => "RAV", :power => 0, :toughness => 5)
	c46.save
	c47 = MtgCard.new(:idInSet => 47, :cardName => "Ethereal Usher", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/47.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/47.jpg", :color => 8, :cmc => 6, :rarity => 2, :expansion => "RAV", :power => 2, :toughness => 3)
	c47.save
	c48 = MtgCard.new(:idInSet => 48, :cardName => "Eye of the Storm", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/48.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/48.jpg", :color => 8, :cmc => 7, :rarity => 3, :expansion => "RAV")
	c48.save
	c49 = MtgCard.new(:idInSet => 49, :cardName => "Flight of Fancy", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/49.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/49.jpg", :color => 8, :cmc => 4, :rarity => 1, :expansion => "RAV")
	c49.save
	c50 = MtgCard.new(:idInSet => 50, :cardName => "Flow of Ideas", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rav/50.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/50.jpg", :color => 8, :cmc => 6, :rarity => 2, :expansion => "RAV")
	c50.save
	c51 = MtgCard.new(:idInSet => 51, :cardName => "Followed Footsteps", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/51.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/51.jpg", :color => 8, :cmc => 5, :rarity => 3, :expansion => "RAV")
	c51.save
	c52 = MtgCard.new(:idInSet => 52, :cardName => "Grayscaled Gharial", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/52.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/52.jpg", :color => 8, :cmc => 1, :rarity => 1, :expansion => "RAV", :power => 1, :toughness => 1)
	c52.save
	c53 = MtgCard.new(:idInSet => 53, :cardName => "Grozoth", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/53.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/53.jpg", :color => 8, :cmc => 9, :rarity => 3, :expansion => "RAV", :power => 9, :toughness => 9)
	c53.save
	c54 = MtgCard.new(:idInSet => 54, :cardName => "Halcyon Glaze", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/54.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/54.jpg", :color => 8, :cmc => 3, :rarity => 2, :expansion => "RAV")
	c54.save
	c55 = MtgCard.new(:idInSet => 55, :cardName => "Hunted Phantasm", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/55.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/55.jpg", :color => 8, :cmc => 3, :rarity => 3, :expansion => "RAV", :power => 4, :toughness => 6)
	c55.save
	c56 = MtgCard.new(:idInSet => 56, :cardName => "Induce Paranoia", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/56.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/56.jpg", :color => 8, :cmc => 4, :rarity => 1, :expansion => "RAV")
	c56.save
	c57 = MtgCard.new(:idInSet => 57, :cardName => "Lore Broker", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/57.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/57.jpg", :color => 8, :cmc => 2, :rarity => 2, :expansion => "RAV", :power => 1, :toughness => 2)
	c57.save
	c58 = MtgCard.new(:idInSet => 58, :cardName => "Mark of Eviction", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/58.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/58.jpg", :color => 8, :cmc => 1, :rarity => 2, :expansion => "RAV")
	c58.save
	c59 = MtgCard.new(:idInSet => 59, :cardName => "Mnemonic Nexus", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/59.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/59.jpg", :color => 8, :cmc => 4, :rarity => 2, :expansion => "RAV")
	c59.save
	c60 = MtgCard.new(:idInSet => 60, :cardName => "Muddle the Mixture", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/60.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/60.jpg", :color => 8, :cmc => 2, :rarity => 1, :expansion => "RAV")
	c60.save
	c61 = MtgCard.new(:idInSet => 61, :cardName => "Peel from Reality", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/61.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/61.jpg", :color => 8, :cmc => 2, :rarity => 1, :expansion => "RAV")
	c61.save
	c62 = MtgCard.new(:idInSet => 62, :cardName => "Quickchange", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/62.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/62.jpg", :color => 8, :cmc => 2, :rarity => 1, :expansion => "RAV")
	c62.save
	c63 = MtgCard.new(:idInSet => 63, :cardName => "Remand", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/63.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/63.jpg", :color => 8, :cmc => 2, :rarity => 2, :expansion => "RAV")
	c63.save
	c64 = MtgCard.new(:idInSet => 64, :cardName => "Snapping Drake", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/64.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/64.jpg", :color => 8, :cmc => 4, :rarity => 1, :expansion => "RAV", :power => 3, :toughness => 2)
	c64.save
	c65 = MtgCard.new(:idInSet => 65, :cardName => "Spawnbroker", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/65.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/65.jpg", :color => 8, :cmc => 3, :rarity => 3, :expansion => "RAV", :power => 1, :toughness => 1)
	c65.save
	c66 = MtgCard.new(:idInSet => 66, :cardName => "Stasis Cell", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/66.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/66.jpg", :color => 8, :cmc => 5, :rarity => 1, :expansion => "RAV")
	c66.save
	c67 = MtgCard.new(:idInSet => 67, :cardName => "Surveilling Sprite", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/67.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/67.jpg", :color => 8, :cmc => 2, :rarity => 1, :expansion => "RAV", :power => 1, :toughness => 1)
	c67.save
	c68 = MtgCard.new(:idInSet => 68, :cardName => "Tattered Drake", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/68.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/68.jpg", :color => 8, :cmc => 5, :rarity => 1, :expansion => "RAV", :power => 2, :toughness => 2)
	c68.save
	c69 = MtgCard.new(:idInSet => 69, :cardName => "Telling Time", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/69.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/69.jpg", :color => 8, :cmc => 2, :rarity => 2, :expansion => "RAV")
	c69.save
	c70 = MtgCard.new(:idInSet => 70, :cardName => "Terraformer", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/70.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/70.jpg", :color => 8, :cmc => 3, :rarity => 1, :expansion => "RAV", :power => 2, :toughness => 2)
	c70.save
	c71 = MtgCard.new(:idInSet => 71, :cardName => "Tidewater Minion", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/71.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/71.jpg", :color => 8, :cmc => 5, :rarity => 1, :expansion => "RAV", :power => 4, :toughness => 4)
	c71.save
	c72 = MtgCard.new(:idInSet => 72, :cardName => "Tunnel Vision", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rav/72.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/72.jpg", :color => 8, :cmc => 6, :rarity => 3, :expansion => "RAV")
	c72.save
	c73 = MtgCard.new(:idInSet => 73, :cardName => "Vedalken Dismisser", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/73.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/73.jpg", :color => 8, :cmc => 6, :rarity => 1, :expansion => "RAV", :power => 2, :toughness => 2)
	c73.save
	c74 = MtgCard.new(:idInSet => 74, :cardName => "Vedalken Entrancer", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/74.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/74.jpg", :color => 8, :cmc => 4, :rarity => 1, :expansion => "RAV", :power => 1, :toughness => 4)
	c74.save
	c75 = MtgCard.new(:idInSet => 75, :cardName => "Wizened Snitches", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/75.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/75.jpg", :color => 8, :cmc => 4, :rarity => 2, :expansion => "RAV", :power => 1, :toughness => 3)
	c75.save
	c76 = MtgCard.new(:idInSet => 76, :cardName => "Zephyr Spirit", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/76.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/76.jpg", :color => 8, :cmc => 6, :rarity => 1, :expansion => "RAV", :power => 0, :toughness => 6)
	c76.save
	c77 = MtgCard.new(:idInSet => 77, :cardName => "Blood Funnel", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/77.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/77.jpg", :color => 4, :cmc => 2, :rarity => 3, :expansion => "RAV")
	c77.save
	c78 = MtgCard.new(:idInSet => 78, :cardName => "Brainspoil", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rav/78.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/78.jpg", :color => 4, :cmc => 5, :rarity => 1, :expansion => "RAV")
	c78.save
	c79 = MtgCard.new(:idInSet => 79, :cardName => "Carrion Howler", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/79.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/79.jpg", :color => 4, :cmc => 4, :rarity => 2, :expansion => "RAV", :power => 2, :toughness => 2)
	c79.save
	c80 = MtgCard.new(:idInSet => 80, :cardName => "Clinging Darkness", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/80.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/80.jpg", :color => 4, :cmc => 2, :rarity => 1, :expansion => "RAV")
	c80.save
	c81 = MtgCard.new(:idInSet => 81, :cardName => "Dark Confidant", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/81.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/81.jpg", :color => 4, :cmc => 2, :rarity => 3, :expansion => "RAV", :power => 2, :toughness => 1)
	c81.save
	c82 = MtgCard.new(:idInSet => 82, :cardName => "Darkblast", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/82.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/82.jpg", :color => 4, :cmc => 1, :rarity => 2, :expansion => "RAV")
	c82.save
	c83 = MtgCard.new(:idInSet => 83, :cardName => "Dimir House Guard", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/83.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/83.jpg", :color => 4, :cmc => 4, :rarity => 1, :expansion => "RAV", :power => 2, :toughness => 3)
	c83.save
	c84 = MtgCard.new(:idInSet => 84, :cardName => "Dimir Machinations", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rav/84.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/84.jpg", :color => 4, :cmc => 3, :rarity => 2, :expansion => "RAV")
	c84.save
	c85 = MtgCard.new(:idInSet => 85, :cardName => "Disembowel", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/85.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/85.jpg", :color => 4, :cmc => 1, :rarity => 1, :expansion => "RAV")
	c85.save
	c86 = MtgCard.new(:idInSet => 86, :cardName => "Empty the Catacombs", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rav/86.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/86.jpg", :color => 4, :cmc => 4, :rarity => 3, :expansion => "RAV")
	c86.save
	c87 = MtgCard.new(:idInSet => 87, :cardName => "Golgari Thug", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/87.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/87.jpg", :color => 4, :cmc => 2, :rarity => 2, :expansion => "RAV", :power => 1, :toughness => 1)
	c87.save
	c88 = MtgCard.new(:idInSet => 88, :cardName => "Helldozer", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/88.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/88.jpg", :color => 4, :cmc => 6, :rarity => 3, :expansion => "RAV", :power => 6, :toughness => 5)
	c88.save
	c89 = MtgCard.new(:idInSet => 89, :cardName => "Hex", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rav/89.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/89.jpg", :color => 4, :cmc => 6, :rarity => 3, :expansion => "RAV")
	c89.save
	c90 = MtgCard.new(:idInSet => 90, :cardName => "Hunted Horror", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/90.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/90.jpg", :color => 4, :cmc => 2, :rarity => 3, :expansion => "RAV", :power => 7, :toughness => 7)
	c90.save
	c91 = MtgCard.new(:idInSet => 91, :cardName => "Infectious Host", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/91.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/91.jpg", :color => 4, :cmc => 3, :rarity => 1, :expansion => "RAV", :power => 1, :toughness => 1)
	c91.save
	c92 = MtgCard.new(:idInSet => 92, :cardName => "Keening Banshee", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/92.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/92.jpg", :color => 4, :cmc => 4, :rarity => 2, :expansion => "RAV", :power => 2, :toughness => 2)
	c92.save
	c93 = MtgCard.new(:idInSet => 93, :cardName => "Last Gasp", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/93.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/93.jpg", :color => 4, :cmc => 2, :rarity => 1, :expansion => "RAV")
	c93.save
	c94 = MtgCard.new(:idInSet => 94, :cardName => "Mausoleum Turnkey", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/94.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/94.jpg", :color => 4, :cmc => 4, :rarity => 2, :expansion => "RAV", :power => 3, :toughness => 2)
	c94.save
	c95 = MtgCard.new(:idInSet => 95, :cardName => "Moonlight Bargain", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/95.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/95.jpg", :color => 4, :cmc => 5, :rarity => 3, :expansion => "RAV")
	c95.save
	c96 = MtgCard.new(:idInSet => 96, :cardName => "Mortipede", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/96.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/96.jpg", :color => 4, :cmc => 4, :rarity => 1, :expansion => "RAV", :power => 4, :toughness => 1)
	c96.save
	c97 = MtgCard.new(:idInSet => 97, :cardName => "Necromantic Thirst", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/97.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/97.jpg", :color => 4, :cmc => 4, :rarity => 1, :expansion => "RAV")
	c97.save
	c98 = MtgCard.new(:idInSet => 98, :cardName => "Necroplasm", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/98.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/98.jpg", :color => 4, :cmc => 3, :rarity => 3, :expansion => "RAV", :power => 1, :toughness => 1)
	c98.save
	c99 = MtgCard.new(:idInSet => 99, :cardName => "Netherborn Phalanx", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/99.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/99.jpg", :color => 4, :cmc => 6, :rarity => 2, :expansion => "RAV", :power => 2, :toughness => 4)
	c99.save
	c100 = MtgCard.new(:idInSet => 100, :cardName => "Nightmare Void", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rav/100.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/100.jpg", :color => 4, :cmc => 4, :rarity => 2, :expansion => "RAV")
	c100.save
	c101 = MtgCard.new(:idInSet => 101, :cardName => "Ribbons of Night", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rav/101.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/101.jpg", :color => 4, :cmc => 5, :rarity => 2, :expansion => "RAV")
	c101.save
	c102 = MtgCard.new(:idInSet => 102, :cardName => "Roofstalker Wight", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/102.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/102.jpg", :color => 4, :cmc => 2, :rarity => 1, :expansion => "RAV", :power => 2, :toughness => 1)
	c102.save
	c103 = MtgCard.new(:idInSet => 103, :cardName => "Sadistic Augermage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/103.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/103.jpg", :color => 4, :cmc => 3, :rarity => 1, :expansion => "RAV", :power => 3, :toughness => 1)
	c103.save
	c104 = MtgCard.new(:idInSet => 104, :cardName => "Sewerdreg", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/104.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/104.jpg", :color => 4, :cmc => 5, :rarity => 1, :expansion => "RAV", :power => 3, :toughness => 3)
	c104.save
	c105 = MtgCard.new(:idInSet => 105, :cardName => "Shred Memory", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/105.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/105.jpg", :color => 4, :cmc => 2, :rarity => 1, :expansion => "RAV")
	c105.save
	c106 = MtgCard.new(:idInSet => 106, :cardName => "Sins of the Past", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rav/106.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/106.jpg", :color => 4, :cmc => 6, :rarity => 3, :expansion => "RAV")
	c106.save
	c107 = MtgCard.new(:idInSet => 107, :cardName => "Stinkweed Imp", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/107.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/107.jpg", :color => 4, :cmc => 3, :rarity => 1, :expansion => "RAV", :power => 1, :toughness => 2)
	c107.save
	c108 = MtgCard.new(:idInSet => 108, :cardName => "Strands of Undeath", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/108.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/108.jpg", :color => 4, :cmc => 4, :rarity => 1, :expansion => "RAV")
	c108.save
	c109 = MtgCard.new(:idInSet => 109, :cardName => "Thoughtpicker Witch", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/109.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/109.jpg", :color => 4, :cmc => 1, :rarity => 1, :expansion => "RAV", :power => 1, :toughness => 1)
	c109.save
	c110 = MtgCard.new(:idInSet => 110, :cardName => "Undercity Shade", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/110.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/110.jpg", :color => 4, :cmc => 5, :rarity => 2, :expansion => "RAV", :power => 1, :toughness => 1)
	c110.save
	c111 = MtgCard.new(:idInSet => 111, :cardName => "Vigor Mortis", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rav/111.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/111.jpg", :color => 4, :cmc => 4, :rarity => 2, :expansion => "RAV")
	c111.save
	c112 = MtgCard.new(:idInSet => 112, :cardName => "Vindictive Mob", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/112.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/112.jpg", :color => 4, :cmc => 6, :rarity => 2, :expansion => "RAV", :power => 5, :toughness => 5)
	c112.save
	c113 = MtgCard.new(:idInSet => 113, :cardName => "Woebringer Demon", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/113.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/113.jpg", :color => 4, :cmc => 5, :rarity => 3, :expansion => "RAV", :power => 4, :toughness => 4)
	c113.save
	c114 = MtgCard.new(:idInSet => 114, :cardName => "Barbarian Riftcutter", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/114.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/114.jpg", :color => 2, :cmc => 5, :rarity => 1, :expansion => "RAV", :power => 3, :toughness => 3)
	c114.save
	c115 = MtgCard.new(:idInSet => 115, :cardName => "Blockbuster", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/115.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/115.jpg", :color => 2, :cmc => 5, :rarity => 2, :expansion => "RAV")
	c115.save
	c116 = MtgCard.new(:idInSet => 116, :cardName => "Breath of Fury", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/116.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/116.jpg", :color => 2, :cmc => 4, :rarity => 3, :expansion => "RAV")
	c116.save
	c117 = MtgCard.new(:idInSet => 117, :cardName => "Char", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/117.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/117.jpg", :color => 2, :cmc => 3, :rarity => 3, :expansion => "RAV")
	c117.save
	c118 = MtgCard.new(:idInSet => 118, :cardName => "Cleansing Beam", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/118.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/118.jpg", :color => 2, :cmc => 5, :rarity => 2, :expansion => "RAV")
	c118.save
	c119 = MtgCard.new(:idInSet => 119, :cardName => "Coalhauler Swine", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/119.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/119.jpg", :color => 2, :cmc => 6, :rarity => 1, :expansion => "RAV", :power => 4, :toughness => 4)
	c119.save
	c120 = MtgCard.new(:idInSet => 120, :cardName => "Dogpile", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/120.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/120.jpg", :color => 2, :cmc => 4, :rarity => 1, :expansion => "RAV")
	c120.save
	c121 = MtgCard.new(:idInSet => 121, :cardName => "Excruciator", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/121.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/121.jpg", :color => 2, :cmc => 8, :rarity => 3, :expansion => "RAV", :power => 7, :toughness => 7)
	c121.save
	c122 = MtgCard.new(:idInSet => 122, :cardName => "Fiery Conclusion", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/122.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/122.jpg", :color => 2, :cmc => 2, :rarity => 1, :expansion => "RAV")
	c122.save
	c123 = MtgCard.new(:idInSet => 123, :cardName => "Flame Fusillade", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rav/123.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/123.jpg", :color => 2, :cmc => 4, :rarity => 3, :expansion => "RAV")
	c123.save
	c124 = MtgCard.new(:idInSet => 124, :cardName => "Flash Conscription", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/124.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/124.jpg", :color => 2, :cmc => 6, :rarity => 2, :expansion => "RAV")
	c124.save
	c125 = MtgCard.new(:idInSet => 125, :cardName => "Frenzied Goblin", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/125.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/125.jpg", :color => 2, :cmc => 1, :rarity => 2, :expansion => "RAV", :power => 1, :toughness => 1)
	c125.save
	c126 = MtgCard.new(:idInSet => 126, :cardName => "Galvanic Arc", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/126.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/126.jpg", :color => 2, :cmc => 3, :rarity => 1, :expansion => "RAV")
	c126.save
	c127 = MtgCard.new(:idInSet => 127, :cardName => "Goblin Fire Fiend", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/127.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/127.jpg", :color => 2, :cmc => 4, :rarity => 1, :expansion => "RAV", :power => 1, :toughness => 1)
	c127.save
	c128 = MtgCard.new(:idInSet => 128, :cardName => "Goblin Spelunkers", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/128.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/128.jpg", :color => 2, :cmc => 3, :rarity => 1, :expansion => "RAV", :power => 2, :toughness => 2)
	c128.save
	c129 = MtgCard.new(:idInSet => 129, :cardName => "Greater Forgeling", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/129.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/129.jpg", :color => 2, :cmc => 5, :rarity => 2, :expansion => "RAV", :power => 3, :toughness => 4)
	c129.save
	c130 = MtgCard.new(:idInSet => 130, :cardName => "Hammerfist Giant", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/130.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/130.jpg", :color => 2, :cmc => 6, :rarity => 3, :expansion => "RAV", :power => 5, :toughness => 4)
	c130.save
	c131 = MtgCard.new(:idInSet => 131, :cardName => "Hunted Dragon", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/131.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/131.jpg", :color => 2, :cmc => 5, :rarity => 3, :expansion => "RAV", :power => 6, :toughness => 6)
	c131.save
	c132 = MtgCard.new(:idInSet => 132, :cardName => "Incite Hysteria", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rav/132.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/132.jpg", :color => 2, :cmc => 3, :rarity => 1, :expansion => "RAV")
	c132.save
	c133 = MtgCard.new(:idInSet => 133, :cardName => "Indentured Oaf", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/133.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/133.jpg", :color => 2, :cmc => 4, :rarity => 2, :expansion => "RAV", :power => 4, :toughness => 3)
	c133.save
	c134 = MtgCard.new(:idInSet => 134, :cardName => "Instill Furor", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/134.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/134.jpg", :color => 2, :cmc => 2, :rarity => 2, :expansion => "RAV")
	c134.save
	c135 = MtgCard.new(:idInSet => 135, :cardName => "Mindmoil", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/135.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/135.jpg", :color => 2, :cmc => 5, :rarity => 3, :expansion => "RAV")
	c135.save
	c136 = MtgCard.new(:idInSet => 136, :cardName => "Molten Sentry", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/136.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/136.jpg", :color => 2, :cmc => 4, :rarity => 3, :expansion => "RAV", :power => 0, :toughness => 0)
	c136.save
	c137 = MtgCard.new(:idInSet => 137, :cardName => "Ordruun Commando", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/137.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/137.jpg", :color => 2, :cmc => 4, :rarity => 1, :expansion => "RAV", :power => 4, :toughness => 1)
	c137.save
	c138 = MtgCard.new(:idInSet => 138, :cardName => "Rain of Embers", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rav/138.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/138.jpg", :color => 2, :cmc => 2, :rarity => 1, :expansion => "RAV")
	c138.save
	c139 = MtgCard.new(:idInSet => 139, :cardName => "Reroute", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/139.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/139.jpg", :color => 2, :cmc => 2, :rarity => 2, :expansion => "RAV")
	c139.save
	c140 = MtgCard.new(:idInSet => 140, :cardName => "Sabertooth Alley Cat", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/140.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/140.jpg", :color => 2, :cmc => 3, :rarity => 1, :expansion => "RAV", :power => 2, :toughness => 1)
	c140.save
	c141 = MtgCard.new(:idInSet => 141, :cardName => "Seismic Spike", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rav/141.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/141.jpg", :color => 2, :cmc => 4, :rarity => 1, :expansion => "RAV")
	c141.save
	c142 = MtgCard.new(:idInSet => 142, :cardName => "Sell-Sword Brute", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/142.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/142.jpg", :color => 2, :cmc => 2, :rarity => 1, :expansion => "RAV", :power => 2, :toughness => 2)
	c142.save
	c143 = MtgCard.new(:idInSet => 143, :cardName => "Smash", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/143.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/143.jpg", :color => 2, :cmc => 3, :rarity => 1, :expansion => "RAV")
	c143.save
	c144 = MtgCard.new(:idInSet => 144, :cardName => "Sparkmage Apprentice", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/144.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/144.jpg", :color => 2, :cmc => 2, :rarity => 1, :expansion => "RAV", :power => 1, :toughness => 1)
	c144.save
	c145 = MtgCard.new(:idInSet => 145, :cardName => "Stoneshaker Shaman", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/145.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/145.jpg", :color => 2, :cmc => 3, :rarity => 2, :expansion => "RAV", :power => 1, :toughness => 1)
	c145.save
	c146 = MtgCard.new(:idInSet => 146, :cardName => "Surge of Zeal", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/146.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/146.jpg", :color => 2, :cmc => 1, :rarity => 1, :expansion => "RAV")
	c146.save
	c147 = MtgCard.new(:idInSet => 147, :cardName => "Torpid Moloch", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/147.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/147.jpg", :color => 2, :cmc => 1, :rarity => 1, :expansion => "RAV", :power => 3, :toughness => 2)
	c147.save
	c148 = MtgCard.new(:idInSet => 148, :cardName => "Viashino Fangtail", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/148.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/148.jpg", :color => 2, :cmc => 4, :rarity => 1, :expansion => "RAV", :power => 3, :toughness => 3)
	c148.save
	c149 = MtgCard.new(:idInSet => 149, :cardName => "Viashino Slasher", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/149.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/149.jpg", :color => 2, :cmc => 2, :rarity => 1, :expansion => "RAV", :power => 1, :toughness => 2)
	c149.save
	c150 = MtgCard.new(:idInSet => 150, :cardName => "Warp World", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rav/150.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/150.jpg", :color => 2, :cmc => 8, :rarity => 3, :expansion => "RAV")
	c150.save
	c151 = MtgCard.new(:idInSet => 151, :cardName => "War-Torch Goblin", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/151.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/151.jpg", :color => 2, :cmc => 1, :rarity => 1, :expansion => "RAV", :power => 1, :toughness => 1)
	c151.save
	c152 = MtgCard.new(:idInSet => 152, :cardName => "Wojek Embermage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/152.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/152.jpg", :color => 2, :cmc => 4, :rarity => 2, :expansion => "RAV", :power => 1, :toughness => 2)
	c152.save
	c153 = MtgCard.new(:idInSet => 153, :cardName => "Birds of Paradise", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/153.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/153.jpg", :color => 1, :cmc => 1, :rarity => 3, :expansion => "RAV", :power => 0, :toughness => 1)
	c153.save
	c154 = MtgCard.new(:idInSet => 154, :cardName => "Bramble Elemental", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/154.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/154.jpg", :color => 1, :cmc => 5, :rarity => 1, :expansion => "RAV", :power => 4, :toughness => 4)
	c154.save
	c155 = MtgCard.new(:idInSet => 155, :cardName => "Carven Caryatid", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/155.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/155.jpg", :color => 1, :cmc => 3, :rarity => 2, :expansion => "RAV", :power => 2, :toughness => 5)
	c155.save
	c156 = MtgCard.new(:idInSet => 156, :cardName => "Chord of Calling", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/156.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/156.jpg", :color => 1, :cmc => 3, :rarity => 3, :expansion => "RAV")
	c156.save
	c157 = MtgCard.new(:idInSet => 157, :cardName => "Civic Wayfinder", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/157.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/157.jpg", :color => 1, :cmc => 3, :rarity => 1, :expansion => "RAV", :power => 2, :toughness => 2)
	c157.save
	c158 = MtgCard.new(:idInSet => 158, :cardName => "Doubling Season", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/158.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/158.jpg", :color => 1, :cmc => 5, :rarity => 3, :expansion => "RAV")
	c158.save
	c159 = MtgCard.new(:idInSet => 159, :cardName => "Dowsing Shaman", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/159.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/159.jpg", :color => 1, :cmc => 5, :rarity => 2, :expansion => "RAV", :power => 3, :toughness => 4)
	c159.save
	c160 = MtgCard.new(:idInSet => 160, :cardName => "Dryad's Caress", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/160.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/160.jpg", :color => 1, :cmc => 6, :rarity => 1, :expansion => "RAV")
	c160.save
	c161 = MtgCard.new(:idInSet => 161, :cardName => "Elves of Deep Shadow", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/161.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/161.jpg", :color => 1, :cmc => 1, :rarity => 1, :expansion => "RAV", :power => 1, :toughness => 1)
	c161.save
	c162 = MtgCard.new(:idInSet => 162, :cardName => "Elvish Skysweeper", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/162.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/162.jpg", :color => 1, :cmc => 1, :rarity => 1, :expansion => "RAV", :power => 1, :toughness => 1)
	c162.save
	c163 = MtgCard.new(:idInSet => 163, :cardName => "Farseek", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rav/163.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/163.jpg", :color => 1, :cmc => 2, :rarity => 1, :expansion => "RAV")
	c163.save
	c164 = MtgCard.new(:idInSet => 164, :cardName => "Fists of Ironwood", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/164.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/164.jpg", :color => 1, :cmc => 2, :rarity => 1, :expansion => "RAV")
	c164.save
	c165 = MtgCard.new(:idInSet => 165, :cardName => "Gather Courage", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/165.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/165.jpg", :color => 1, :cmc => 1, :rarity => 1, :expansion => "RAV")
	c165.save
	c166 = MtgCard.new(:idInSet => 166, :cardName => "Golgari Brownscale", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/166.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/166.jpg", :color => 1, :cmc => 3, :rarity => 1, :expansion => "RAV", :power => 2, :toughness => 3)
	c166.save
	c167 = MtgCard.new(:idInSet => 167, :cardName => "Golgari Grave-Troll", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/167.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/167.jpg", :color => 1, :cmc => 5, :rarity => 3, :expansion => "RAV", :power => 0, :toughness => 0)
	c167.save
	c168 = MtgCard.new(:idInSet => 168, :cardName => "Goliath Spider", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/168.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/168.jpg", :color => 1, :cmc => 8, :rarity => 2, :expansion => "RAV", :power => 7, :toughness => 6)
	c168.save
	c169 = MtgCard.new(:idInSet => 169, :cardName => "Greater Mossdog", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/169.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/169.jpg", :color => 1, :cmc => 4, :rarity => 1, :expansion => "RAV", :power => 3, :toughness => 3)
	c169.save
	c170 = MtgCard.new(:idInSet => 170, :cardName => "Hunted Troll", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/170.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/170.jpg", :color => 1, :cmc => 4, :rarity => 3, :expansion => "RAV", :power => 8, :toughness => 4)
	c170.save
	c171 = MtgCard.new(:idInSet => 171, :cardName => "Ivy Dancer", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/171.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/171.jpg", :color => 1, :cmc => 3, :rarity => 2, :expansion => "RAV", :power => 1, :toughness => 2)
	c171.save
	c172 = MtgCard.new(:idInSet => 172, :cardName => "Life from the Loam", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rav/172.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/172.jpg", :color => 1, :cmc => 2, :rarity => 3, :expansion => "RAV")
	c172.save
	c173 = MtgCard.new(:idInSet => 173, :cardName => "Moldervine Cloak", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/173.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/173.jpg", :color => 1, :cmc => 3, :rarity => 2, :expansion => "RAV")
	c173.save
	c174 = MtgCard.new(:idInSet => 174, :cardName => "Nullmage Shepherd", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/174.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/174.jpg", :color => 1, :cmc => 4, :rarity => 2, :expansion => "RAV", :power => 2, :toughness => 4)
	c174.save
	c175 = MtgCard.new(:idInSet => 175, :cardName => "Overwhelm", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rav/175.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/175.jpg", :color => 1, :cmc => 7, :rarity => 2, :expansion => "RAV")
	c175.save
	c176 = MtgCard.new(:idInSet => 176, :cardName => "Perilous Forays", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/176.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/176.jpg", :color => 1, :cmc => 5, :rarity => 2, :expansion => "RAV")
	c176.save
	c177 = MtgCard.new(:idInSet => 177, :cardName => "Primordial Sage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/177.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/177.jpg", :color => 1, :cmc => 6, :rarity => 3, :expansion => "RAV", :power => 4, :toughness => 5)
	c177.save
	c178 = MtgCard.new(:idInSet => 178, :cardName => "Recollect", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rav/178.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/178.jpg", :color => 1, :cmc => 3, :rarity => 2, :expansion => "RAV")
	c178.save
	c179 = MtgCard.new(:idInSet => 179, :cardName => "Rolling Spoil", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rav/179.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/179.jpg", :color => 1, :cmc => 4, :rarity => 2, :expansion => "RAV")
	c179.save
	c180 = MtgCard.new(:idInSet => 180, :cardName => "Root-Kin Ally", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/180.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/180.jpg", :color => 1, :cmc => 6, :rarity => 2, :expansion => "RAV", :power => 3, :toughness => 3)
	c180.save
	c181 = MtgCard.new(:idInSet => 181, :cardName => "Scatter the Seeds", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/181.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/181.jpg", :color => 1, :cmc => 5, :rarity => 1, :expansion => "RAV")
	c181.save
	c182 = MtgCard.new(:idInSet => 182, :cardName => "Scion of the Wild", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/182.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/182.jpg", :color => 1, :cmc => 3, :rarity => 3, :expansion => "RAV", :power => 0, :toughness => 0)
	c182.save
	c183 = MtgCard.new(:idInSet => 183, :cardName => "Siege Wurm", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/183.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/183.jpg", :color => 1, :cmc => 7, :rarity => 1, :expansion => "RAV", :power => 5, :toughness => 5)
	c183.save
	c184 = MtgCard.new(:idInSet => 184, :cardName => "Stone-Seeder Hierophant", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/184.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/184.jpg", :color => 1, :cmc => 4, :rarity => 1, :expansion => "RAV", :power => 1, :toughness => 1)
	c184.save
	c185 = MtgCard.new(:idInSet => 185, :cardName => "Sundering Vitae", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/185.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/185.jpg", :color => 1, :cmc => 3, :rarity => 1, :expansion => "RAV")
	c185.save
	c186 = MtgCard.new(:idInSet => 186, :cardName => "Transluminant", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/186.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/186.jpg", :color => 1, :cmc => 2, :rarity => 1, :expansion => "RAV", :power => 2, :toughness => 2)
	c186.save
	c187 = MtgCard.new(:idInSet => 187, :cardName => "Trophy Hunter", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/187.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/187.jpg", :color => 1, :cmc => 3, :rarity => 2, :expansion => "RAV", :power => 2, :toughness => 3)
	c187.save
	c188 = MtgCard.new(:idInSet => 188, :cardName => "Ursapine", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/188.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/188.jpg", :color => 1, :cmc => 5, :rarity => 3, :expansion => "RAV", :power => 3, :toughness => 3)
	c188.save
	c189 = MtgCard.new(:idInSet => 189, :cardName => "Vinelasher Kudzu", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/189.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/189.jpg", :color => 1, :cmc => 2, :rarity => 3, :expansion => "RAV", :power => 1, :toughness => 1)
	c189.save
	c190 = MtgCard.new(:idInSet => 190, :cardName => "Agrus Kos, Wojek Veteran", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/190.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/190.jpg", :color => 18, :cmc => 5, :rarity => 3, :expansion => "RAV", :power => 3, :toughness => 3)
	c190.save
	c191 = MtgCard.new(:idInSet => 191, :cardName => "Autochthon Wurm", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/191.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/191.jpg", :color => 17, :cmc => 15, :rarity => 3, :expansion => "RAV", :power => 9, :toughness => 14)
	c191.save
	c192 = MtgCard.new(:idInSet => 192, :cardName => "Bloodbond March", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/192.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/192.jpg", :color => 5, :cmc => 4, :rarity => 3, :expansion => "RAV")
	c192.save
	c193 = MtgCard.new(:idInSet => 193, :cardName => "Boros Swiftblade", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/193.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/193.jpg", :color => 18, :cmc => 2, :rarity => 2, :expansion => "RAV", :power => 1, :toughness => 2)
	c193.save
	c194 = MtgCard.new(:idInSet => 194, :cardName => "Brightflame", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rav/194.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/194.jpg", :color => 18, :cmc => 4, :rarity => 3, :expansion => "RAV")
	c194.save
	c195 = MtgCard.new(:idInSet => 195, :cardName => "Chorus of the Conclave", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/195.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/195.jpg", :color => 17, :cmc => 8, :rarity => 3, :expansion => "RAV", :power => 3, :toughness => 8)
	c195.save
	c196 = MtgCard.new(:idInSet => 196, :cardName => "Circu, Dimir Lobotomist", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/196.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/196.jpg", :color => 12, :cmc => 4, :rarity => 3, :expansion => "RAV", :power => 2, :toughness => 3)
	c196.save
	c197 = MtgCard.new(:idInSet => 197, :cardName => "Clutch of the Undercity", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/197.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/197.jpg", :color => 12, :cmc => 4, :rarity => 2, :expansion => "RAV")
	c197.save
	c198 = MtgCard.new(:idInSet => 198, :cardName => "Congregation at Dawn", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/198.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/198.jpg", :color => 17, :cmc => 3, :rarity => 2, :expansion => "RAV")
	c198.save
	c199 = MtgCard.new(:idInSet => 199, :cardName => "Consult the Necrosages", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rav/199.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/199.jpg", :color => 12, :cmc => 3, :rarity => 1, :expansion => "RAV")
	c199.save
	c200 = MtgCard.new(:idInSet => 200, :cardName => "Dark Heart of the Wood", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/200.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/200.jpg", :color => 5, :cmc => 2, :rarity => 2, :expansion => "RAV")
	c200.save
	c201 = MtgCard.new(:idInSet => 201, :cardName => "Dimir Cutpurse", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/201.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/201.jpg", :color => 12, :cmc => 3, :rarity => 3, :expansion => "RAV", :power => 2, :toughness => 2)
	c201.save
	c202 = MtgCard.new(:idInSet => 202, :cardName => "Dimir Doppelganger", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/202.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/202.jpg", :color => 12, :cmc => 3, :rarity => 3, :expansion => "RAV", :power => 0, :toughness => 2)
	c202.save
	c203 = MtgCard.new(:idInSet => 203, :cardName => "Dimir Infiltrator", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/203.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/203.jpg", :color => 12, :cmc => 2, :rarity => 1, :expansion => "RAV", :power => 1, :toughness => 3)
	c203.save
	c204 = MtgCard.new(:idInSet => 204, :cardName => "Drooling Groodion", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/204.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/204.jpg", :color => 5, :cmc => 6, :rarity => 2, :expansion => "RAV", :power => 4, :toughness => 3)
	c204.save
	c205 = MtgCard.new(:idInSet => 205, :cardName => "Firemane Angel", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/205.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/205.jpg", :color => 18, :cmc => 6, :rarity => 3, :expansion => "RAV", :power => 4, :toughness => 3)
	c205.save
	c206 = MtgCard.new(:idInSet => 206, :cardName => "Flame-Kin Zealot", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/206.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/206.jpg", :color => 18, :cmc => 4, :rarity => 2, :expansion => "RAV", :power => 2, :toughness => 2)
	c206.save
	c207 = MtgCard.new(:idInSet => 207, :cardName => "Glare of Subdual", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/207.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/207.jpg", :color => 17, :cmc => 4, :rarity => 3, :expansion => "RAV")
	c207.save
	c208 = MtgCard.new(:idInSet => 208, :cardName => "Glimpse the Unthinkable", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rav/208.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/208.jpg", :color => 12, :cmc => 2, :rarity => 3, :expansion => "RAV")
	c208.save
	c209 = MtgCard.new(:idInSet => 209, :cardName => "Golgari Germination", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/209.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/209.jpg", :color => 5, :cmc => 3, :rarity => 2, :expansion => "RAV")
	c209.save
	c210 = MtgCard.new(:idInSet => 210, :cardName => "Golgari Rotwurm", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/210.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/210.jpg", :color => 5, :cmc => 5, :rarity => 1, :expansion => "RAV", :power => 5, :toughness => 4)
	c210.save
	c211 = MtgCard.new(:idInSet => 211, :cardName => "Grave-Shell Scarab", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/211.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/211.jpg", :color => 5, :cmc => 5, :rarity => 3, :expansion => "RAV", :power => 4, :toughness => 4)
	c211.save
	c212 = MtgCard.new(:idInSet => 212, :cardName => "Guardian of Vitu-Ghazi", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/212.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/212.jpg", :color => 17, :cmc => 8, :rarity => 1, :expansion => "RAV", :power => 4, :toughness => 7)
	c212.save
	c213 = MtgCard.new(:idInSet => 213, :cardName => "Lightning Helix", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/213.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/213.jpg", :color => 18, :cmc => 2, :rarity => 2, :expansion => "RAV")
	c213.save
	c214 = MtgCard.new(:idInSet => 214, :cardName => "Loxodon Hierarch", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/214.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/214.jpg", :color => 17, :cmc => 4, :rarity => 3, :expansion => "RAV", :power => 4, :toughness => 4)
	c214.save
	c215 = MtgCard.new(:idInSet => 215, :cardName => "Mindleech Mass", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/215.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/215.jpg", :color => 12, :cmc => 8, :rarity => 3, :expansion => "RAV", :power => 6, :toughness => 6)
	c215.save
	c216 = MtgCard.new(:idInSet => 216, :cardName => "Moroii", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/216.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/216.jpg", :color => 12, :cmc => 4, :rarity => 2, :expansion => "RAV", :power => 4, :toughness => 4)
	c216.save
	c217 = MtgCard.new(:idInSet => 217, :cardName => "Perplex", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/217.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/217.jpg", :color => 12, :cmc => 3, :rarity => 1, :expansion => "RAV")
	c217.save
	c218 = MtgCard.new(:idInSet => 218, :cardName => "Phytohydra", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/218.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/218.jpg", :color => 17, :cmc => 5, :rarity => 3, :expansion => "RAV", :power => 1, :toughness => 1)
	c218.save
	c219 = MtgCard.new(:idInSet => 219, :cardName => "Pollenbright Wings", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/219.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/219.jpg", :color => 17, :cmc => 6, :rarity => 2, :expansion => "RAV")
	c219.save
	c220 = MtgCard.new(:idInSet => 220, :cardName => "Psychic Drain", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rav/220.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/220.jpg", :color => 12, :cmc => 2, :rarity => 2, :expansion => "RAV")
	c220.save
	c221 = MtgCard.new(:idInSet => 221, :cardName => "Putrefy", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/221.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/221.jpg", :color => 5, :cmc => 3, :rarity => 2, :expansion => "RAV")
	c221.save
	c222 = MtgCard.new(:idInSet => 222, :cardName => "Rally the Righteous", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/222.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/222.jpg", :color => 18, :cmc => 3, :rarity => 1, :expansion => "RAV")
	c222.save
	c223 = MtgCard.new(:idInSet => 223, :cardName => "Razia, Boros Archangel", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/223.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/223.jpg", :color => 18, :cmc => 8, :rarity => 3, :expansion => "RAV", :power => 6, :toughness => 3)
	c223.save
	c224 = MtgCard.new(:idInSet => 224, :cardName => "Razia's Purification", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rav/224.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/224.jpg", :color => 18, :cmc => 6, :rarity => 3, :expansion => "RAV")
	c224.save
	c225 = MtgCard.new(:idInSet => 225, :cardName => "Savra, Queen of the Golgari", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/225.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/225.jpg", :color => 5, :cmc => 4, :rarity => 3, :expansion => "RAV", :power => 2, :toughness => 2)
	c225.save
	c226 = MtgCard.new(:idInSet => 226, :cardName => "Searing Meditation", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/226.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/226.jpg", :color => 18, :cmc => 3, :rarity => 3, :expansion => "RAV")
	c226.save
	c227 = MtgCard.new(:idInSet => 227, :cardName => "Seeds of Strength", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/227.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/227.jpg", :color => 17, :cmc => 2, :rarity => 1, :expansion => "RAV")
	c227.save
	c228 = MtgCard.new(:idInSet => 228, :cardName => "Selesnya Evangel", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/228.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/228.jpg", :color => 17, :cmc => 2, :rarity => 1, :expansion => "RAV", :power => 1, :toughness => 2)
	c228.save
	c229 = MtgCard.new(:idInSet => 229, :cardName => "Selesnya Sagittars", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/229.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/229.jpg", :color => 17, :cmc => 5, :rarity => 2, :expansion => "RAV", :power => 2, :toughness => 5)
	c229.save
	c230 = MtgCard.new(:idInSet => 230, :cardName => "Shambling Shell", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/230.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/230.jpg", :color => 5, :cmc => 3, :rarity => 1, :expansion => "RAV", :power => 3, :toughness => 1)
	c230.save
	c231 = MtgCard.new(:idInSet => 231, :cardName => "Sisters of Stone Death", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/231.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/231.jpg", :color => 5, :cmc => 8, :rarity => 3, :expansion => "RAV", :power => 7, :toughness => 5)
	c231.save
	c232 = MtgCard.new(:idInSet => 232, :cardName => "Skyknight Legionnaire", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/232.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/232.jpg", :color => 18, :cmc => 3, :rarity => 1, :expansion => "RAV", :power => 2, :toughness => 2)
	c232.save
	c233 = MtgCard.new(:idInSet => 233, :cardName => "Sunhome Enforcer", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/233.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/233.jpg", :color => 18, :cmc => 4, :rarity => 2, :expansion => "RAV", :power => 2, :toughness => 4)
	c233.save
	c234 = MtgCard.new(:idInSet => 234, :cardName => "Szadek, Lord of Secrets", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/234.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/234.jpg", :color => 12, :cmc => 7, :rarity => 3, :expansion => "RAV", :power => 5, :toughness => 5)
	c234.save
	c235 = MtgCard.new(:idInSet => 235, :cardName => "Thundersong Trumpeter", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/235.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/235.jpg", :color => 18, :cmc => 2, :rarity => 1, :expansion => "RAV", :power => 2, :toughness => 1)
	c235.save
	c236 = MtgCard.new(:idInSet => 236, :cardName => "Tolsimir Wolfblood", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/236.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/236.jpg", :color => 17, :cmc => 6, :rarity => 3, :expansion => "RAV", :power => 3, :toughness => 4)
	c236.save
	c237 = MtgCard.new(:idInSet => 237, :cardName => "Twisted Justice", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/rav/237.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/237.jpg", :color => 12, :cmc => 6, :rarity => 2, :expansion => "RAV")
	c237.save
	c238 = MtgCard.new(:idInSet => 238, :cardName => "Vulturous Zombie", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/238.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/238.jpg", :color => 5, :cmc => 5, :rarity => 3, :expansion => "RAV", :power => 3, :toughness => 3)
	c238.save
	c239 = MtgCard.new(:idInSet => 239, :cardName => "Watchwolf", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/239.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/239.jpg", :color => 17, :cmc => 2, :rarity => 2, :expansion => "RAV", :power => 3, :toughness => 3)
	c239.save
	c240 = MtgCard.new(:idInSet => 240, :cardName => "Woodwraith Corrupter", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/240.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/240.jpg", :color => 5, :cmc => 6, :rarity => 3, :expansion => "RAV", :power => 3, :toughness => 6)
	c240.save
	c241 = MtgCard.new(:idInSet => 241, :cardName => "Woodwraith Strangler", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/241.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/241.jpg", :color => 5, :cmc => 4, :rarity => 1, :expansion => "RAV", :power => 2, :toughness => 2)
	c241.save
	c242 = MtgCard.new(:idInSet => 242, :cardName => "Boros Guildmage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/242.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/242.jpg", :color => 18, :cmc => 2, :rarity => 2, :expansion => "RAV", :power => 2, :toughness => 2)
	c242.save
	c243 = MtgCard.new(:idInSet => 243, :cardName => "Boros Recruit", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/243.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/243.jpg", :color => 18, :cmc => 1, :rarity => 1, :expansion => "RAV", :power => 1, :toughness => 1)
	c243.save
	c244 = MtgCard.new(:idInSet => 244, :cardName => "Centaur Safeguard", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/244.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/244.jpg", :color => 17, :cmc => 3, :rarity => 1, :expansion => "RAV", :power => 3, :toughness => 1)
	c244.save
	c245 = MtgCard.new(:idInSet => 245, :cardName => "Dimir Guildmage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/245.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/245.jpg", :color => 12, :cmc => 2, :rarity => 3, :expansion => "RAV", :power => 2, :toughness => 2)
	c245.save
	c246 = MtgCard.new(:idInSet => 246, :cardName => "Gaze of the Gorgon", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/246.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/246.jpg", :color => 5, :cmc => 4, :rarity => 1, :expansion => "RAV")
	c246.save
	c247 = MtgCard.new(:idInSet => 247, :cardName => "Gleancrawler", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/247.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/247.jpg", :color => 5, :cmc => 6, :rarity => 3, :expansion => "RAV", :power => 6, :toughness => 6)
	c247.save
	c248 = MtgCard.new(:idInSet => 248, :cardName => "Golgari Guildmage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/248.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/248.jpg", :color => 5, :cmc => 2, :rarity => 2, :expansion => "RAV", :power => 2, :toughness => 2)
	c248.save
	c249 = MtgCard.new(:idInSet => 249, :cardName => "Lurking Informant", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/249.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/249.jpg", :color => 12, :cmc => 2, :rarity => 1, :expansion => "RAV", :power => 1, :toughness => 2)
	c249.save
	c250 = MtgCard.new(:idInSet => 250, :cardName => "Master Warcraft", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/250.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/250.jpg", :color => 18, :cmc => 4, :rarity => 3, :expansion => "RAV")
	c250.save
	c251 = MtgCard.new(:idInSet => 251, :cardName => "Privileged Position", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/rav/251.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/251.jpg", :color => 17, :cmc => 5, :rarity => 3, :expansion => "RAV")
	c251.save
	c252 = MtgCard.new(:idInSet => 252, :cardName => "Selesnya Guildmage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/rav/252.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/252.jpg", :color => 17, :cmc => 2, :rarity => 2, :expansion => "RAV", :power => 2, :toughness => 2)
	c252.save
	c253 = MtgCard.new(:idInSet => 253, :cardName => "Shadow of Doubt", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/rav/253.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/253.jpg", :color => 12, :cmc => 2, :rarity => 3, :expansion => "RAV")
	c253.save
	c254 = MtgCard.new(:idInSet => 254, :cardName => "Bloodletter Quill", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/rav/254.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/254.jpg", :color => 0, :cmc => 3, :rarity => 3, :expansion => "RAV")
	c254.save
	c255 = MtgCard.new(:idInSet => 255, :cardName => "Boros Signet", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/rav/255.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/255.jpg", :color => 0, :cmc => 2, :rarity => 1, :expansion => "RAV")
	c255.save
	c256 = MtgCard.new(:idInSet => 256, :cardName => "Bottled Cloister", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/rav/256.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/256.jpg", :color => 0, :cmc => 4, :rarity => 3, :expansion => "RAV")
	c256.save
	c257 = MtgCard.new(:idInSet => 257, :cardName => "Cloudstone Curio", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/rav/257.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/257.jpg", :color => 0, :cmc => 3, :rarity => 3, :expansion => "RAV")
	c257.save
	c258 = MtgCard.new(:idInSet => 258, :cardName => "Crown of Convergence", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/rav/258.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/258.jpg", :color => 0, :cmc => 2, :rarity => 3, :expansion => "RAV")
	c258.save
	c259 = MtgCard.new(:idInSet => 259, :cardName => "Cyclopean Snare", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/rav/259.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/259.jpg", :color => 0, :cmc => 2, :rarity => 2, :expansion => "RAV")
	c259.save
	c260 = MtgCard.new(:idInSet => 260, :cardName => "Dimir Signet", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/rav/260.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/260.jpg", :color => 0, :cmc => 2, :rarity => 1, :expansion => "RAV")
	c260.save
	c261 = MtgCard.new(:idInSet => 261, :cardName => "Glass Golem", :cardType => 9, :engSRC => "http://magiccards.info/scans/en/rav/261.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/261.jpg", :color => 0, :cmc => 5, :rarity => 2, :expansion => "RAV", :power => 6, :toughness => 2)
	c261.save
	c262 = MtgCard.new(:idInSet => 262, :cardName => "Golgari Signet", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/rav/262.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/262.jpg", :color => 0, :cmc => 2, :rarity => 1, :expansion => "RAV")
	c262.save
	c263 = MtgCard.new(:idInSet => 263, :cardName => "Grifter's Blade", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/rav/263.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/263.jpg", :color => 0, :cmc => 3, :rarity => 2, :expansion => "RAV")
	c263.save
	c264 = MtgCard.new(:idInSet => 264, :cardName => "Junktroller", :cardType => 9, :engSRC => "http://magiccards.info/scans/en/rav/264.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/264.jpg", :color => 0, :cmc => 4, :rarity => 2, :expansion => "RAV", :power => 0, :toughness => 6)
	c264.save
	c265 = MtgCard.new(:idInSet => 265, :cardName => "Leashling", :cardType => 9, :engSRC => "http://magiccards.info/scans/en/rav/265.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/265.jpg", :color => 0, :cmc => 6, :rarity => 2, :expansion => "RAV", :power => 3, :toughness => 3)
	c265.save
	c266 = MtgCard.new(:idInSet => 266, :cardName => "Nullstone Gargoyle", :cardType => 9, :engSRC => "http://magiccards.info/scans/en/rav/266.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/266.jpg", :color => 0, :cmc => 9, :rarity => 3, :expansion => "RAV", :power => 4, :toughness => 5)
	c266.save
	c267 = MtgCard.new(:idInSet => 267, :cardName => "Pariah's Shield", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/rav/267.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/267.jpg", :color => 0, :cmc => 5, :rarity => 3, :expansion => "RAV")
	c267.save
	c268 = MtgCard.new(:idInSet => 268, :cardName => "Peregrine Mask", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/rav/268.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/268.jpg", :color => 0, :cmc => 1, :rarity => 2, :expansion => "RAV")
	c268.save
	c269 = MtgCard.new(:idInSet => 269, :cardName => "Plague Boiler", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/rav/269.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/269.jpg", :color => 0, :cmc => 3, :rarity => 3, :expansion => "RAV")
	c269.save
	c270 = MtgCard.new(:idInSet => 270, :cardName => "Selesnya Signet", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/rav/270.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/270.jpg", :color => 0, :cmc => 2, :rarity => 1, :expansion => "RAV")
	c270.save
	c271 = MtgCard.new(:idInSet => 271, :cardName => "Spectral Searchlight", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/rav/271.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/271.jpg", :color => 0, :cmc => 3, :rarity => 2, :expansion => "RAV")
	c271.save
	c272 = MtgCard.new(:idInSet => 272, :cardName => "Sunforger", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/rav/272.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/272.jpg", :color => 0, :cmc => 3, :rarity => 3, :expansion => "RAV")
	c272.save
	c273 = MtgCard.new(:idInSet => 273, :cardName => "Terrarion", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/rav/273.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/273.jpg", :color => 0, :cmc => 1, :rarity => 1, :expansion => "RAV")
	c273.save
	c274 = MtgCard.new(:idInSet => 274, :cardName => "Voyager Staff", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/rav/274.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/274.jpg", :color => 0, :cmc => 1, :rarity => 2, :expansion => "RAV")
	c274.save
	c275 = MtgCard.new(:idInSet => 275, :cardName => "Boros Garrison", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/rav/275.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/275.jpg", :color => 0, :cmc => 0, :rarity => 1, :expansion => "RAV")
	c275.save
	c276 = MtgCard.new(:idInSet => 276, :cardName => "Dimir Aqueduct", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/rav/276.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/276.jpg", :color => 0, :cmc => 0, :rarity => 1, :expansion => "RAV")
	c276.save
	c277 = MtgCard.new(:idInSet => 277, :cardName => "Duskmantle, House of Shadow", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/rav/277.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/277.jpg", :color => 0, :cmc => 0, :rarity => 2, :expansion => "RAV")
	c277.save
	c278 = MtgCard.new(:idInSet => 278, :cardName => "Golgari Rot Farm", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/rav/278.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/278.jpg", :color => 0, :cmc => 0, :rarity => 1, :expansion => "RAV")
	c278.save
	c279 = MtgCard.new(:idInSet => 279, :cardName => "Overgrown Tomb", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/rav/279.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/279.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "RAV")
	c279.save
	c280 = MtgCard.new(:idInSet => 280, :cardName => "Sacred Foundry", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/rav/280.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/280.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "RAV")
	c280.save
	c281 = MtgCard.new(:idInSet => 281, :cardName => "Selesnya Sanctuary", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/rav/281.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/281.jpg", :color => 0, :cmc => 0, :rarity => 1, :expansion => "RAV")
	c281.save
	c282 = MtgCard.new(:idInSet => 282, :cardName => "Sunhome, Fortress of the Legion", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/rav/282.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/282.jpg", :color => 0, :cmc => 0, :rarity => 2, :expansion => "RAV")
	c282.save
	c283 = MtgCard.new(:idInSet => 283, :cardName => "Svogthos, the Restless Tomb", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/rav/283.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/283.jpg", :color => 0, :cmc => 0, :rarity => 2, :expansion => "RAV")
	c283.save
	c284 = MtgCard.new(:idInSet => 284, :cardName => "Temple Garden", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/rav/284.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/284.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "RAV")
	c284.save
	c285 = MtgCard.new(:idInSet => 285, :cardName => "Vitu-Ghazi, the City-Tree", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/rav/285.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/285.jpg", :color => 0, :cmc => 0, :rarity => 2, :expansion => "RAV")
	c285.save
	c286 = MtgCard.new(:idInSet => 286, :cardName => "Watery Grave", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/rav/286.jpg", :chiSRC => "http://magiccards.info/scans/cn/rav/286.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "RAV")
	c286.save
end