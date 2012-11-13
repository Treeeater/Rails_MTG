desc "Import DIS cards."
task :import_DIS_cards => :environment do

	c1 = MtgCard.new(:idInSet => 1, :cardName => "Aurora Eidolon", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/1.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/1.jpg", :color => 16, :cmc => 4, :rarity => 1, :expansion => "DIS", :power => 2, :toughness => 2)
	c1.save
	c2 = MtgCard.new(:idInSet => 2, :cardName => "Azorius Herald", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/2.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/2.jpg", :color => 16, :cmc => 3, :rarity => 2, :expansion => "DIS", :power => 2, :toughness => 1)
	c2.save
	c3 = MtgCard.new(:idInSet => 3, :cardName => "Beacon Hawk", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/3.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/3.jpg", :color => 16, :cmc => 2, :rarity => 1, :expansion => "DIS", :power => 1, :toughness => 1)
	c3.save
	c4 = MtgCard.new(:idInSet => 4, :cardName => "Blessing of the Nephilim", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/di/4.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/4.jpg", :color => 16, :cmc => 1, :rarity => 2, :expansion => "DIS")
	c4.save
	c5 = MtgCard.new(:idInSet => 5, :cardName => "Brace for Impact", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/di/5.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/5.jpg", :color => 16, :cmc => 5, :rarity => 2, :expansion => "DIS")
	c5.save
	c6 = MtgCard.new(:idInSet => 6, :cardName => "Carom", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/di/6.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/6.jpg", :color => 16, :cmc => 2, :rarity => 1, :expansion => "DIS")
	c6.save
	c7 = MtgCard.new(:idInSet => 7, :cardName => "Celestial Ancient", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/7.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/7.jpg", :color => 16, :cmc => 5, :rarity => 3, :expansion => "DIS", :power => 3, :toughness => 3)
	c7.save
	c8 = MtgCard.new(:idInSet => 8, :cardName => "Condemn", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/di/8.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/8.jpg", :color => 16, :cmc => 1, :rarity => 2, :expansion => "DIS")
	c8.save
	c9 = MtgCard.new(:idInSet => 9, :cardName => "Freewind Equenaut", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/9.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/9.jpg", :color => 16, :cmc => 3, :rarity => 1, :expansion => "DIS", :power => 2, :toughness => 2)
	c9.save
	c10 = MtgCard.new(:idInSet => 10, :cardName => "Guardian of the Guildpact", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/10.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/10.jpg", :color => 16, :cmc => 4, :rarity => 1, :expansion => "DIS", :power => 2, :toughness => 3)
	c10.save
	c11 = MtgCard.new(:idInSet => 11, :cardName => "Haazda Exonerator", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/11.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/11.jpg", :color => 16, :cmc => 1, :rarity => 1, :expansion => "DIS", :power => 1, :toughness => 1)
	c11.save
	c12 = MtgCard.new(:idInSet => 12, :cardName => "Haazda Shield Mate", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/12.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/12.jpg", :color => 16, :cmc => 3, :rarity => 3, :expansion => "DIS", :power => 1, :toughness => 1)
	c12.save
	c13 = MtgCard.new(:idInSet => 13, :cardName => "Mistral Charger", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/13.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/13.jpg", :color => 16, :cmc => 2, :rarity => 2, :expansion => "DIS", :power => 2, :toughness => 1)
	c13.save
	c14 = MtgCard.new(:idInSet => 14, :cardName => "Paladin of Prahv", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/14.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/14.jpg", :color => 16, :cmc => 6, :rarity => 2, :expansion => "DIS", :power => 3, :toughness => 4)
	c14.save
	c15 = MtgCard.new(:idInSet => 15, :cardName => "Proclamation of Rebirth", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/di/15.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/15.jpg", :color => 16, :cmc => 3, :rarity => 3, :expansion => "DIS")
	c15.save
	c16 = MtgCard.new(:idInSet => 16, :cardName => "Proper Burial", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/di/16.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/16.jpg", :color => 16, :cmc => 4, :rarity => 3, :expansion => "DIS")
	c16.save
	c17 = MtgCard.new(:idInSet => 17, :cardName => "Soulsworn Jury", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/17.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/17.jpg", :color => 16, :cmc => 3, :rarity => 1, :expansion => "DIS", :power => 1, :toughness => 4)
	c17.save
	c18 = MtgCard.new(:idInSet => 18, :cardName => "Steeling Stance", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/di/18.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/18.jpg", :color => 16, :cmc => 3, :rarity => 1, :expansion => "DIS")
	c18.save
	c19 = MtgCard.new(:idInSet => 19, :cardName => "Stoic Ephemera", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/19.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/19.jpg", :color => 16, :cmc => 3, :rarity => 2, :expansion => "DIS", :power => 5, :toughness => 5)
	c19.save
	c20 = MtgCard.new(:idInSet => 20, :cardName => "Valor Made Real", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/di/20.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/20.jpg", :color => 16, :cmc => 1, :rarity => 1, :expansion => "DIS")
	c20.save
	c21 = MtgCard.new(:idInSet => 21, :cardName => "Wakestone Gargoyle", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/21.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/21.jpg", :color => 16, :cmc => 4, :rarity => 3, :expansion => "DIS", :power => 3, :toughness => 4)
	c21.save
	c22 = MtgCard.new(:idInSet => 22, :cardName => "Court Hussar", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/22.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/22.jpg", :color => 8, :cmc => 3, :rarity => 2, :expansion => "DIS", :power => 1, :toughness => 3)
	c22.save
	c23 = MtgCard.new(:idInSet => 23, :cardName => "Cytoplast Manipulator", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/23.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/23.jpg", :color => 8, :cmc => 4, :rarity => 3, :expansion => "DIS", :power => 0, :toughness => 0)
	c23.save
	c24 = MtgCard.new(:idInSet => 24, :cardName => "Enigma Eidolon", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/24.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/24.jpg", :color => 8, :cmc => 4, :rarity => 1, :expansion => "DIS", :power => 2, :toughness => 2)
	c24.save
	c25 = MtgCard.new(:idInSet => 25, :cardName => "Govern the Guildless", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/di/25.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/25.jpg", :color => 8, :cmc => 6, :rarity => 3, :expansion => "DIS")
	c25.save
	c26 = MtgCard.new(:idInSet => 26, :cardName => "Helium Squirter", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/26.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/26.jpg", :color => 8, :cmc => 5, :rarity => 1, :expansion => "DIS", :power => 0, :toughness => 0)
	c26.save
	c27 = MtgCard.new(:idInSet => 27, :cardName => "Novijen Sages", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/27.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/27.jpg", :color => 8, :cmc => 6, :rarity => 3, :expansion => "DIS", :power => 0, :toughness => 0)
	c27.save
	c28 = MtgCard.new(:idInSet => 28, :cardName => "Ocular Halo", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/di/28.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/28.jpg", :color => 8, :cmc => 4, :rarity => 1, :expansion => "DIS")
	c28.save
	c29 = MtgCard.new(:idInSet => 29, :cardName => "Plaxmanta", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/29.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/29.jpg", :color => 8, :cmc => 2, :rarity => 2, :expansion => "DIS", :power => 2, :toughness => 2)
	c29.save
	c30 = MtgCard.new(:idInSet => 30, :cardName => "Psychic Possession", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/di/30.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/30.jpg", :color => 8, :cmc => 4, :rarity => 3, :expansion => "DIS")
	c30.save
	c31 = MtgCard.new(:idInSet => 31, :cardName => "Silkwing Scout", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/31.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/31.jpg", :color => 8, :cmc => 3, :rarity => 1, :expansion => "DIS", :power => 2, :toughness => 1)
	c31.save
	c32 = MtgCard.new(:idInSet => 32, :cardName => "Skyscribing", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/di/32.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/32.jpg", :color => 8, :cmc => 2, :rarity => 2, :expansion => "DIS")
	c32.save
	c33 = MtgCard.new(:idInSet => 33, :cardName => "Spell Snare", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/di/33.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/33.jpg", :color => 8, :cmc => 1, :rarity => 2, :expansion => "DIS")
	c33.save
	c34 = MtgCard.new(:idInSet => 34, :cardName => "Tidespout Tyrant", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/34.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/34.jpg", :color => 8, :cmc => 8, :rarity => 3, :expansion => "DIS", :power => 5, :toughness => 5)
	c34.save
	c35 = MtgCard.new(:idInSet => 35, :cardName => "Vigean Graftmage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/35.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/35.jpg", :color => 8, :cmc => 3, :rarity => 2, :expansion => "DIS", :power => 0, :toughness => 0)
	c35.save
	c36 = MtgCard.new(:idInSet => 36, :cardName => "Vision Skeins", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/di/36.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/36.jpg", :color => 8, :cmc => 2, :rarity => 1, :expansion => "DIS")
	c36.save
	c37 = MtgCard.new(:idInSet => 37, :cardName => "Writ of Passage", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/di/37.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/37.jpg", :color => 8, :cmc => 1, :rarity => 1, :expansion => "DIS")
	c37.save
	c38 = MtgCard.new(:idInSet => 38, :cardName => "Bond of Agony", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/di/38.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/38.jpg", :color => 4, :cmc => 1, :rarity => 2, :expansion => "DIS")
	c38.save
	c39 = MtgCard.new(:idInSet => 39, :cardName => "Brain Pry", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/di/39.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/39.jpg", :color => 4, :cmc => 2, :rarity => 2, :expansion => "DIS")
	c39.save
	c40 = MtgCard.new(:idInSet => 40, :cardName => "Crypt Champion", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/40.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/40.jpg", :color => 4, :cmc => 4, :rarity => 2, :expansion => "DIS", :power => 2, :toughness => 2)
	c40.save
	c41 = MtgCard.new(:idInSet => 41, :cardName => "Delirium Skeins", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/di/41.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/41.jpg", :color => 4, :cmc => 3, :rarity => 1, :expansion => "DIS")
	c41.save
	c42 = MtgCard.new(:idInSet => 42, :cardName => "Demon's Jester", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/42.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/42.jpg", :color => 4, :cmc => 4, :rarity => 1, :expansion => "DIS", :power => 2, :toughness => 2)
	c42.save
	c43 = MtgCard.new(:idInSet => 43, :cardName => "Drekavac", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/43.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/43.jpg", :color => 4, :cmc => 2, :rarity => 2, :expansion => "DIS", :power => 3, :toughness => 3)
	c43.save
	c44 = MtgCard.new(:idInSet => 44, :cardName => "Enemy of the Guildpact", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/44.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/44.jpg", :color => 4, :cmc => 5, :rarity => 1, :expansion => "DIS", :power => 4, :toughness => 2)
	c44.save
	c45 = MtgCard.new(:idInSet => 45, :cardName => "Entropic Eidolon", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/45.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/45.jpg", :color => 4, :cmc => 4, :rarity => 1, :expansion => "DIS", :power => 2, :toughness => 2)
	c45.save
	c46 = MtgCard.new(:idInSet => 46, :cardName => "Infernal Tutor", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/di/46.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/46.jpg", :color => 4, :cmc => 2, :rarity => 3, :expansion => "DIS")
	c46.save
	c47 = MtgCard.new(:idInSet => 47, :cardName => "Macabre Waltz", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/di/47.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/47.jpg", :color => 4, :cmc => 2, :rarity => 1, :expansion => "DIS")
	c47.save
	c48 = MtgCard.new(:idInSet => 48, :cardName => "Nettling Curse", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/di/48.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/48.jpg", :color => 4, :cmc => 3, :rarity => 1, :expansion => "DIS")
	c48.save
	c49 = MtgCard.new(:idInSet => 49, :cardName => "Nightcreep", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/di/49.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/49.jpg", :color => 4, :cmc => 2, :rarity => 2, :expansion => "DIS")
	c49.save
	c50 = MtgCard.new(:idInSet => 50, :cardName => "Nihilistic Glee", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/di/50.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/50.jpg", :color => 4, :cmc => 4, :rarity => 3, :expansion => "DIS")
	c50.save
	c51 = MtgCard.new(:idInSet => 51, :cardName => "Ragamuffyn", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/51.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/51.jpg", :color => 4, :cmc => 3, :rarity => 2, :expansion => "DIS", :power => 2, :toughness => 2)
	c51.save
	c52 = MtgCard.new(:idInSet => 52, :cardName => "Ratcatcher", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/52.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/52.jpg", :color => 4, :cmc => 6, :rarity => 3, :expansion => "DIS", :power => 4, :toughness => 4)
	c52.save
	c53 = MtgCard.new(:idInSet => 53, :cardName => "Seal of Doom", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/di/53.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/53.jpg", :color => 4, :cmc => 3, :rarity => 1, :expansion => "DIS")
	c53.save
	c54 = MtgCard.new(:idInSet => 54, :cardName => "Slaughterhouse Bouncer", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/54.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/54.jpg", :color => 4, :cmc => 5, :rarity => 1, :expansion => "DIS", :power => 3, :toughness => 3)
	c54.save
	c55 = MtgCard.new(:idInSet => 55, :cardName => "Slithering Shade", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/55.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/55.jpg", :color => 4, :cmc => 1, :rarity => 2, :expansion => "DIS", :power => 0, :toughness => 1)
	c55.save
	c56 = MtgCard.new(:idInSet => 56, :cardName => "Unliving Psychopath", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/56.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/56.jpg", :color => 4, :cmc => 4, :rarity => 3, :expansion => "DIS", :power => 0, :toughness => 4)
	c56.save
	c57 = MtgCard.new(:idInSet => 57, :cardName => "Vesper Ghoul", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/57.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/57.jpg", :color => 4, :cmc => 3, :rarity => 1, :expansion => "DIS", :power => 1, :toughness => 1)
	c57.save
	c58 = MtgCard.new(:idInSet => 58, :cardName => "Wit's End", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/di/58.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/58.jpg", :color => 4, :cmc => 7, :rarity => 3, :expansion => "DIS")
	c58.save
	c59 = MtgCard.new(:idInSet => 59, :cardName => "Cackling Flames", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/di/59.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/59.jpg", :color => 2, :cmc => 4, :rarity => 1, :expansion => "DIS")
	c59.save
	c60 = MtgCard.new(:idInSet => 60, :cardName => "Demonfire", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/di/60.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/60.jpg", :color => 2, :cmc => 1, :rarity => 3, :expansion => "DIS")
	c60.save
	c61 = MtgCard.new(:idInSet => 61, :cardName => "Flame-Kin War Scout", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/61.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/61.jpg", :color => 2, :cmc => 4, :rarity => 2, :expansion => "DIS", :power => 2, :toughness => 4)
	c61.save
	c62 = MtgCard.new(:idInSet => 62, :cardName => "Flaring Flame-Kin", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/62.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/62.jpg", :color => 2, :cmc => 3, :rarity => 2, :expansion => "DIS", :power => 2, :toughness => 2)
	c62.save
	c63 = MtgCard.new(:idInSet => 63, :cardName => "Gnat Alley Creeper", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/63.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/63.jpg", :color => 2, :cmc => 3, :rarity => 2, :expansion => "DIS", :power => 3, :toughness => 1)
	c63.save
	c64 = MtgCard.new(:idInSet => 64, :cardName => "Ignorant Bliss", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/di/64.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/64.jpg", :color => 2, :cmc => 2, :rarity => 2, :expansion => "DIS")
	c64.save
	c65 = MtgCard.new(:idInSet => 65, :cardName => "Kill-Suit Cultist", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/65.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/65.jpg", :color => 2, :cmc => 1, :rarity => 1, :expansion => "DIS", :power => 1, :toughness => 1)
	c65.save
	c66 = MtgCard.new(:idInSet => 66, :cardName => "Kindle the Carnage", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/di/66.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/66.jpg", :color => 2, :cmc => 3, :rarity => 2, :expansion => "DIS")
	c66.save
	c67 = MtgCard.new(:idInSet => 67, :cardName => "Ogre Gatecrasher", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/67.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/67.jpg", :color => 2, :cmc => 4, :rarity => 1, :expansion => "DIS", :power => 3, :toughness => 3)
	c67.save
	c68 = MtgCard.new(:idInSet => 68, :cardName => "Psychotic Fury", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/di/68.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/68.jpg", :color => 2, :cmc => 2, :rarity => 1, :expansion => "DIS")
	c68.save
	c69 = MtgCard.new(:idInSet => 69, :cardName => "Rakdos Pit Dragon", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/69.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/69.jpg", :color => 2, :cmc => 4, :rarity => 3, :expansion => "DIS", :power => 3, :toughness => 3)
	c69.save
	c70 = MtgCard.new(:idInSet => 70, :cardName => "Sandstorm Eidolon", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/70.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/70.jpg", :color => 2, :cmc => 4, :rarity => 1, :expansion => "DIS", :power => 2, :toughness => 2)
	c70.save
	c71 = MtgCard.new(:idInSet => 71, :cardName => "Seal of Fire", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/di/71.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/71.jpg", :color => 2, :cmc => 1, :rarity => 1, :expansion => "DIS")
	c71.save
	c72 = MtgCard.new(:idInSet => 72, :cardName => "Squealing Devil", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/72.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/72.jpg", :color => 2, :cmc => 2, :rarity => 2, :expansion => "DIS", :power => 2, :toughness => 1)
	c72.save
	c73 = MtgCard.new(:idInSet => 73, :cardName => "Stalking Vengeance", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/73.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/73.jpg", :color => 2, :cmc => 7, :rarity => 3, :expansion => "DIS", :power => 5, :toughness => 5)
	c73.save
	c74 = MtgCard.new(:idInSet => 74, :cardName => "Stormscale Anarch", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/74.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/74.jpg", :color => 2, :cmc => 4, :rarity => 3, :expansion => "DIS", :power => 2, :toughness => 2)
	c74.save
	c75 = MtgCard.new(:idInSet => 75, :cardName => "Taste for Mayhem", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/di/75.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/75.jpg", :color => 2, :cmc => 1, :rarity => 1, :expansion => "DIS")
	c75.save
	c76 = MtgCard.new(:idInSet => 76, :cardName => "Utvara Scalper", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/76.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/76.jpg", :color => 2, :cmc => 2, :rarity => 1, :expansion => "DIS", :power => 1, :toughness => 2)
	c76.save
	c77 = MtgCard.new(:idInSet => 77, :cardName => "War's Toll", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/di/77.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/77.jpg", :color => 2, :cmc => 4, :rarity => 3, :expansion => "DIS")
	c77.save
	c78 = MtgCard.new(:idInSet => 78, :cardName => "Weight of Spires", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/di/78.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/78.jpg", :color => 2, :cmc => 1, :rarity => 2, :expansion => "DIS")
	c78.save
	c79 = MtgCard.new(:idInSet => 79, :cardName => "Whiptail Moloch", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/79.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/79.jpg", :color => 2, :cmc => 5, :rarity => 1, :expansion => "DIS", :power => 6, :toughness => 3)
	c79.save
	c80 = MtgCard.new(:idInSet => 80, :cardName => "Aquastrand Spider", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/80.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/80.jpg", :color => 1, :cmc => 2, :rarity => 1, :expansion => "DIS", :power => 0, :toughness => 0)
	c80.save
	c81 = MtgCard.new(:idInSet => 81, :cardName => "Cytoplast Root-Kin", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/81.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/81.jpg", :color => 1, :cmc => 4, :rarity => 3, :expansion => "DIS", :power => 0, :toughness => 0)
	c81.save
	c82 = MtgCard.new(:idInSet => 82, :cardName => "Cytospawn Shambler", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/82.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/82.jpg", :color => 1, :cmc => 7, :rarity => 1, :expansion => "DIS", :power => 0, :toughness => 0)
	c82.save
	c83 = MtgCard.new(:idInSet => 83, :cardName => "Elemental Resonance", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/di/83.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/83.jpg", :color => 1, :cmc => 4, :rarity => 3, :expansion => "DIS")
	c83.save
	c84 = MtgCard.new(:idInSet => 84, :cardName => "Fertile Imagination", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/di/84.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/84.jpg", :color => 1, :cmc => 4, :rarity => 2, :expansion => "DIS")
	c84.save
	c85 = MtgCard.new(:idInSet => 85, :cardName => "Flash Foliage", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/di/85.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/85.jpg", :color => 1, :cmc => 3, :rarity => 2, :expansion => "DIS")
	c85.save
	c86 = MtgCard.new(:idInSet => 86, :cardName => "Indrik Stomphowler", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/86.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/86.jpg", :color => 1, :cmc => 5, :rarity => 2, :expansion => "DIS", :power => 4, :toughness => 4)
	c86.save
	c87 = MtgCard.new(:idInSet => 87, :cardName => "Loaming Shaman", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/87.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/87.jpg", :color => 1, :cmc => 3, :rarity => 3, :expansion => "DIS", :power => 3, :toughness => 2)
	c87.save
	c88 = MtgCard.new(:idInSet => 88, :cardName => "Might of the Nephilim", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/di/88.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/88.jpg", :color => 1, :cmc => 2, :rarity => 2, :expansion => "DIS")
	c88.save
	c89 = MtgCard.new(:idInSet => 89, :cardName => "Patagia Viper", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/89.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/89.jpg", :color => 1, :cmc => 4, :rarity => 2, :expansion => "DIS", :power => 2, :toughness => 1)
	c89.save
	c90 = MtgCard.new(:idInSet => 90, :cardName => "Protean Hulk", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/90.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/90.jpg", :color => 1, :cmc => 7, :rarity => 3, :expansion => "DIS", :power => 6, :toughness => 6)
	c90.save
	c91 = MtgCard.new(:idInSet => 91, :cardName => "Simic Basilisk", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/91.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/91.jpg", :color => 1, :cmc => 6, :rarity => 2, :expansion => "DIS", :power => 0, :toughness => 0)
	c91.save
	c92 = MtgCard.new(:idInSet => 92, :cardName => "Simic Initiate", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/92.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/92.jpg", :color => 1, :cmc => 1, :rarity => 1, :expansion => "DIS", :power => 0, :toughness => 0)
	c92.save
	c93 = MtgCard.new(:idInSet => 93, :cardName => "Simic Ragworm", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/93.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/93.jpg", :color => 1, :cmc => 4, :rarity => 1, :expansion => "DIS", :power => 3, :toughness => 3)
	c93.save
	c94 = MtgCard.new(:idInSet => 94, :cardName => "Sporeback Troll", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/94.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/94.jpg", :color => 1, :cmc => 4, :rarity => 1, :expansion => "DIS", :power => 0, :toughness => 0)
	c94.save
	c95 = MtgCard.new(:idInSet => 95, :cardName => "Sprouting Phytohydra", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/95.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/95.jpg", :color => 1, :cmc => 5, :rarity => 3, :expansion => "DIS", :power => 0, :toughness => 2)
	c95.save
	c96 = MtgCard.new(:idInSet => 96, :cardName => "Stomp and Howl", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/di/96.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/96.jpg", :color => 1, :cmc => 3, :rarity => 2, :expansion => "DIS")
	c96.save
	c97 = MtgCard.new(:idInSet => 97, :cardName => "Street Savvy", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/di/97.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/97.jpg", :color => 1, :cmc => 1, :rarity => 1, :expansion => "DIS")
	c97.save
	c98 = MtgCard.new(:idInSet => 98, :cardName => "Thrive", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/di/98.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/98.jpg", :color => 1, :cmc => 1, :rarity => 1, :expansion => "DIS")
	c98.save
	c99 = MtgCard.new(:idInSet => 99, :cardName => "Utopia Sprawl", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/di/99.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/99.jpg", :color => 1, :cmc => 1, :rarity => 1, :expansion => "DIS")
	c99.save
	c100 = MtgCard.new(:idInSet => 100, :cardName => "Verdant Eidolon", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/100.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/100.jpg", :color => 1, :cmc => 4, :rarity => 1, :expansion => "DIS", :power => 2, :toughness => 2)
	c100.save
	c101 = MtgCard.new(:idInSet => 101, :cardName => "Aethermage's Touch", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/di/101.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/101.jpg", :color => 24, :cmc => 4, :rarity => 3, :expansion => "DIS")
	c101.save
	c102 = MtgCard.new(:idInSet => 102, :cardName => "Anthem of Rakdos", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/di/102.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/102.jpg", :color => 6, :cmc => 5, :rarity => 3, :expansion => "DIS")
	c102.save
	c103 = MtgCard.new(:idInSet => 103, :cardName => "Assault Zeppelid", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/103.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/103.jpg", :color => 9, :cmc => 4, :rarity => 1, :expansion => "DIS", :power => 3, :toughness => 3)
	c103.save
	c104 = MtgCard.new(:idInSet => 104, :cardName => "Azorius Aethermage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/104.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/104.jpg", :color => 24, :cmc => 3, :rarity => 2, :expansion => "DIS", :power => 1, :toughness => 1)
	c104.save
	c105 = MtgCard.new(:idInSet => 105, :cardName => "Azorius First-Wing", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/105.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/105.jpg", :color => 24, :cmc => 2, :rarity => 1, :expansion => "DIS", :power => 2, :toughness => 2)
	c105.save
	c106 = MtgCard.new(:idInSet => 106, :cardName => "Azorius Ploy", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/di/106.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/106.jpg", :color => 24, :cmc => 4, :rarity => 2, :expansion => "DIS")
	c106.save
	c107 = MtgCard.new(:idInSet => 107, :cardName => "Coiling Oracle", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/107.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/107.jpg", :color => 9, :cmc => 2, :rarity => 1, :expansion => "DIS", :power => 1, :toughness => 1)
	c107.save
	c108 = MtgCard.new(:idInSet => 108, :cardName => "Cytoshape", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/di/108.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/108.jpg", :color => 9, :cmc => 3, :rarity => 3, :expansion => "DIS")
	c108.save
	c109 = MtgCard.new(:idInSet => 109, :cardName => "Dread Slag", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/109.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/109.jpg", :color => 6, :cmc => 5, :rarity => 3, :expansion => "DIS", :power => 9, :toughness => 9)
	c109.save
	c110 = MtgCard.new(:idInSet => 110, :cardName => "Experiment Kraj", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/110.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/110.jpg", :color => 9, :cmc => 6, :rarity => 3, :expansion => "DIS", :power => 4, :toughness => 6)
	c110.save
	c111 = MtgCard.new(:idInSet => 111, :cardName => "Gobhobbler Rats", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/111.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/111.jpg", :color => 6, :cmc => 2, :rarity => 1, :expansion => "DIS", :power => 2, :toughness => 2)
	c111.save
	c112 = MtgCard.new(:idInSet => 112, :cardName => "Grand Arbiter Augustin IV", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/112.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/112.jpg", :color => 24, :cmc => 4, :rarity => 3, :expansion => "DIS", :power => 2, :toughness => 3)
	c112.save
	c113 = MtgCard.new(:idInSet => 113, :cardName => "Hellhole Rats", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/113.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/113.jpg", :color => 6, :cmc => 4, :rarity => 2, :expansion => "DIS", :power => 2, :toughness => 2)
	c113.save
	c114 = MtgCard.new(:idInSet => 114, :cardName => "Isperia the Inscrutable", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/114.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/114.jpg", :color => 24, :cmc => 5, :rarity => 3, :expansion => "DIS", :power => 3, :toughness => 6)
	c114.save
	c115 = MtgCard.new(:idInSet => 115, :cardName => "Jagged Poppet", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/115.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/115.jpg", :color => 6, :cmc => 3, :rarity => 2, :expansion => "DIS", :power => 3, :toughness => 4)
	c115.save
	c116 = MtgCard.new(:idInSet => 116, :cardName => "Leafdrake Roost", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/di/116.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/116.jpg", :color => 9, :cmc => 5, :rarity => 2, :expansion => "DIS")
	c116.save
	c117 = MtgCard.new(:idInSet => 117, :cardName => "Lyzolda, the Blood Witch", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/117.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/117.jpg", :color => 6, :cmc => 3, :rarity => 3, :expansion => "DIS", :power => 3, :toughness => 1)
	c117.save
	c118 = MtgCard.new(:idInSet => 118, :cardName => "Momir Vig, Simic Visionary", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/118.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/118.jpg", :color => 9, :cmc => 5, :rarity => 3, :expansion => "DIS", :power => 2, :toughness => 2)
	c118.save
	c119 = MtgCard.new(:idInSet => 119, :cardName => "Omnibian", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/119.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/119.jpg", :color => 9, :cmc => 4, :rarity => 3, :expansion => "DIS", :power => 3, :toughness => 3)
	c119.save
	c120 = MtgCard.new(:idInSet => 120, :cardName => "Overrule", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/di/120.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/120.jpg", :color => 24, :cmc => 2, :rarity => 1, :expansion => "DIS")
	c120.save
	c121 = MtgCard.new(:idInSet => 121, :cardName => "Pain Magnification", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/di/121.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/121.jpg", :color => 6, :cmc => 3, :rarity => 2, :expansion => "DIS")
	c121.save
	c122 = MtgCard.new(:idInSet => 122, :cardName => "Palliation Accord", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/di/122.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/122.jpg", :color => 24, :cmc => 5, :rarity => 2, :expansion => "DIS")
	c122.save
	c123 = MtgCard.new(:idInSet => 123, :cardName => "Plaxcaster Frogling", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/123.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/123.jpg", :color => 9, :cmc => 3, :rarity => 2, :expansion => "DIS", :power => 0, :toughness => 0)
	c123.save
	c124 = MtgCard.new(:idInSet => 124, :cardName => "Plumes of Peace", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/di/124.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/124.jpg", :color => 24, :cmc => 3, :rarity => 1, :expansion => "DIS")
	c124.save
	c125 = MtgCard.new(:idInSet => 125, :cardName => "Pride of the Clouds", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/125.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/125.jpg", :color => 24, :cmc => 2, :rarity => 3, :expansion => "DIS", :power => 1, :toughness => 1)
	c125.save
	c126 = MtgCard.new(:idInSet => 126, :cardName => "Rain of Gore", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/di/126.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/126.jpg", :color => 6, :cmc => 2, :rarity => 3, :expansion => "DIS")
	c126.save
	c127 = MtgCard.new(:idInSet => 127, :cardName => "Rakdos Augermage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/127.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/127.jpg", :color => 6, :cmc => 3, :rarity => 3, :expansion => "DIS", :power => 3, :toughness => 2)
	c127.save
	c128 = MtgCard.new(:idInSet => 128, :cardName => "Rakdos Ickspitter", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/128.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/128.jpg", :color => 6, :cmc => 3, :rarity => 1, :expansion => "DIS", :power => 1, :toughness => 1)
	c128.save
	c129 = MtgCard.new(:idInSet => 129, :cardName => "Rakdos the Defiler", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/129.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/129.jpg", :color => 6, :cmc => 6, :rarity => 3, :expansion => "DIS", :power => 7, :toughness => 6)
	c129.save
	c130 = MtgCard.new(:idInSet => 130, :cardName => "Simic Sky Swallower", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/130.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/130.jpg", :color => 9, :cmc => 7, :rarity => 3, :expansion => "DIS", :power => 6, :toughness => 6)
	c130.save
	c131 = MtgCard.new(:idInSet => 131, :cardName => "Sky Hussar", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/131.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/131.jpg", :color => 24, :cmc => 5, :rarity => 2, :expansion => "DIS", :power => 4, :toughness => 3)
	c131.save
	c132 = MtgCard.new(:idInSet => 132, :cardName => "Swift Silence", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/di/132.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/132.jpg", :color => 24, :cmc => 5, :rarity => 3, :expansion => "DIS")
	c132.save
	c133 = MtgCard.new(:idInSet => 133, :cardName => "Trygon Predator", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/133.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/133.jpg", :color => 9, :cmc => 3, :rarity => 2, :expansion => "DIS", :power => 2, :toughness => 3)
	c133.save
	c134 = MtgCard.new(:idInSet => 134, :cardName => "Twinstrike", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/di/134.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/134.jpg", :color => 6, :cmc => 5, :rarity => 2, :expansion => "DIS")
	c134.save
	c135 = MtgCard.new(:idInSet => 135, :cardName => "Vigean Hydropon", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/135.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/135.jpg", :color => 9, :cmc => 3, :rarity => 1, :expansion => "DIS", :power => 0, :toughness => 0)
	c135.save
	c136 = MtgCard.new(:idInSet => 136, :cardName => "Vigean Intuition", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/di/136.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/136.jpg", :color => 9, :cmc => 5, :rarity => 2, :expansion => "DIS")
	c136.save
	c137 = MtgCard.new(:idInSet => 137, :cardName => "Voidslime", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/di/137.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/137.jpg", :color => 9, :cmc => 3, :rarity => 3, :expansion => "DIS")
	c137.save
	c138 = MtgCard.new(:idInSet => 138, :cardName => "Windreaver", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/138.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/138.jpg", :color => 24, :cmc => 5, :rarity => 3, :expansion => "DIS", :power => 1, :toughness => 3)
	c138.save
	c139 = MtgCard.new(:idInSet => 139, :cardName => "Wrecking Ball", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/di/139.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/139.jpg", :color => 6, :cmc => 4, :rarity => 1, :expansion => "DIS")
	c139.save
	c140 = MtgCard.new(:idInSet => 140, :cardName => "Avatar of Discord", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/140.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/140.jpg", :color => 6, :cmc => 3, :rarity => 3, :expansion => "DIS", :power => 5, :toughness => 3)
	c140.save
	c141 = MtgCard.new(:idInSet => 141, :cardName => "Azorius Guildmage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/141.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/141.jpg", :color => 24, :cmc => 2, :rarity => 2, :expansion => "DIS", :power => 2, :toughness => 2)
	c141.save
	c142 = MtgCard.new(:idInSet => 142, :cardName => "Biomantic Mastery", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/di/142.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/142.jpg", :color => 9, :cmc => 7, :rarity => 3, :expansion => "DIS")
	c142.save
	c143 = MtgCard.new(:idInSet => 143, :cardName => "Dovescape", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/di/143.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/143.jpg", :color => 24, :cmc => 6, :rarity => 3, :expansion => "DIS")
	c143.save
	c144 = MtgCard.new(:idInSet => 144, :cardName => "Minister of Impediments", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/144.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/144.jpg", :color => 24, :cmc => 3, :rarity => 1, :expansion => "DIS", :power => 1, :toughness => 1)
	c144.save
	c145 = MtgCard.new(:idInSet => 145, :cardName => "Rakdos Guildmage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/145.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/145.jpg", :color => 6, :cmc => 2, :rarity => 2, :expansion => "DIS", :power => 2, :toughness => 2)
	c145.save
	c146 = MtgCard.new(:idInSet => 146, :cardName => "Riot Spikes", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/di/146.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/146.jpg", :color => 6, :cmc => 1, :rarity => 1, :expansion => "DIS")
	c146.save
	c147 = MtgCard.new(:idInSet => 147, :cardName => "Shielding Plax", :cardType => 32, :engSRC => "http://magiccards.info/scans/en/di/147.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/147.jpg", :color => 9, :cmc => 3, :rarity => 1, :expansion => "DIS")
	c147.save
	c148 = MtgCard.new(:idInSet => 148, :cardName => "Simic Guildmage", :cardType => 1, :engSRC => "http://magiccards.info/scans/en/di/148.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/148.jpg", :color => 9, :cmc => 2, :rarity => 2, :expansion => "DIS", :power => 2, :toughness => 2)
	c148.save
	c149 = MtgCard.new(:idInSet => 149, :cardName => "Bound/Determined", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/di/149a.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/149a.jpg", :color => 5, :cmc => 5, :rarity => 3, :expansion => "DIS")
	c149.save
	c150 = MtgCard.new(:idInSet => 150, :cardName => "Crime/Punishment", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/di/150a.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/150a.jpg", :color => 20, :cmc => 5, :rarity => 3, :expansion => "DIS")
	c150.save
	c151 = MtgCard.new(:idInSet => 151, :cardName => "Hide/Seek", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/di/151a.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/151a.jpg", :color => 18, :cmc => 2, :rarity => 3, :expansion => "DIS")
	c151.save
	c152 = MtgCard.new(:idInSet => 152, :cardName => "Hit/Run", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/di/152a.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/152a.jpg", :color => 6, :cmc => 3, :rarity => 2, :expansion => "DIS")
	c152.save
	c153 = MtgCard.new(:idInSet => 153, :cardName => "Odds/Ends", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/di/153a.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/153a.jpg", :color => 10, :cmc => 2, :rarity => 3, :expansion => "DIS")
	c153.save
	c154 = MtgCard.new(:idInSet => 154, :cardName => "Pure/Simple", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/di/154a.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/154a.jpg", :color => 3, :cmc => 3, :rarity => 2, :expansion => "DIS")
	c154.save
	c155 = MtgCard.new(:idInSet => 155, :cardName => "Research/Development", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/di/155a.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/155a.jpg", :color => 9, :cmc => 2, :rarity => 3, :expansion => "DIS")
	c155.save
	c156 = MtgCard.new(:idInSet => 156, :cardName => "Rise/Fall", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/di/156a.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/156a.jpg", :color => 12, :cmc => 2, :rarity => 2, :expansion => "DIS")
	c156.save
	c157 = MtgCard.new(:idInSet => 157, :cardName => "Supply/Demand", :cardType => 4, :engSRC => "http://magiccards.info/scans/en/di/157a.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/157a.jpg", :color => 17, :cmc => 2, :rarity => 2, :expansion => "DIS")
	c157.save
	c158 = MtgCard.new(:idInSet => 158, :cardName => "Trial/Error", :cardType => 2, :engSRC => "http://magiccards.info/scans/en/di/158a.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/158a.jpg", :color => 24, :cmc => 2, :rarity => 2, :expansion => "DIS")
	c158.save
	c159 = MtgCard.new(:idInSet => 159, :cardName => "Azorius Signet", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/di/159.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/159.jpg", :color => 0, :cmc => 2, :rarity => 1, :expansion => "DIS")
	c159.save
	c160 = MtgCard.new(:idInSet => 160, :cardName => "Bronze Bombshell", :cardType => 9, :engSRC => "http://magiccards.info/scans/en/di/160.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/160.jpg", :color => 0, :cmc => 4, :rarity => 3, :expansion => "DIS", :power => 4, :toughness => 1)
	c160.save
	c161 = MtgCard.new(:idInSet => 161, :cardName => "Evolution Vat", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/di/161.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/161.jpg", :color => 0, :cmc => 3, :rarity => 3, :expansion => "DIS")
	c161.save
	c162 = MtgCard.new(:idInSet => 162, :cardName => "Magewright's Stone", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/di/162.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/162.jpg", :color => 0, :cmc => 2, :rarity => 2, :expansion => "DIS")
	c162.save
	c163 = MtgCard.new(:idInSet => 163, :cardName => "Muse Vessel", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/di/163.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/163.jpg", :color => 0, :cmc => 4, :rarity => 3, :expansion => "DIS")
	c163.save
	c164 = MtgCard.new(:idInSet => 164, :cardName => "Rakdos Riteknife", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/di/164.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/164.jpg", :color => 0, :cmc => 2, :rarity => 3, :expansion => "DIS")
	c164.save
	c165 = MtgCard.new(:idInSet => 165, :cardName => "Rakdos Signet", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/di/165.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/165.jpg", :color => 0, :cmc => 2, :rarity => 1, :expansion => "DIS")
	c165.save
	c166 = MtgCard.new(:idInSet => 166, :cardName => "Simic Signet", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/di/166.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/166.jpg", :color => 0, :cmc => 2, :rarity => 1, :expansion => "DIS")
	c166.save
	c167 = MtgCard.new(:idInSet => 167, :cardName => "Skullmead Cauldron", :cardType => 8, :engSRC => "http://magiccards.info/scans/en/di/167.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/167.jpg", :color => 0, :cmc => 4, :rarity => 2, :expansion => "DIS")
	c167.save
	c168 = MtgCard.new(:idInSet => 168, :cardName => "Transguild Courier", :cardType => 9, :engSRC => "http://magiccards.info/scans/en/di/168.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/168.jpg", :color => 0, :cmc => 4, :rarity => 2, :expansion => "DIS", :power => 3, :toughness => 3)
	c168.save
	c169 = MtgCard.new(:idInSet => 169, :cardName => "Walking Archive", :cardType => 9, :engSRC => "http://magiccards.info/scans/en/di/169.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/169.jpg", :color => 0, :cmc => 3, :rarity => 3, :expansion => "DIS", :power => 1, :toughness => 1)
	c169.save
	c170 = MtgCard.new(:idInSet => 170, :cardName => "Azorius Chancery", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/di/170.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/170.jpg", :color => 0, :cmc => 0, :rarity => 1, :expansion => "DIS")
	c170.save
	c171 = MtgCard.new(:idInSet => 171, :cardName => "Blood Crypt", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/di/171.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/171.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "DIS")
	c171.save
	c172 = MtgCard.new(:idInSet => 172, :cardName => "Breeding Pool", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/di/172.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/172.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "DIS")
	c172.save
	c173 = MtgCard.new(:idInSet => 173, :cardName => "Ghost Quarter", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/di/173.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/173.jpg", :color => 0, :cmc => 0, :rarity => 2, :expansion => "DIS")
	c173.save
	c174 = MtgCard.new(:idInSet => 174, :cardName => "Hallowed Fountain", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/di/174.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/174.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "DIS")
	c174.save
	c175 = MtgCard.new(:idInSet => 175, :cardName => "Novijen, Heart of Progress", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/di/175.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/175.jpg", :color => 0, :cmc => 0, :rarity => 2, :expansion => "DIS")
	c175.save
	c176 = MtgCard.new(:idInSet => 176, :cardName => "Pillar of the Paruns", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/di/176.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/176.jpg", :color => 0, :cmc => 0, :rarity => 3, :expansion => "DIS")
	c176.save
	c177 = MtgCard.new(:idInSet => 177, :cardName => "Prahv, Spires of Order", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/di/177.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/177.jpg", :color => 0, :cmc => 0, :rarity => 2, :expansion => "DIS")
	c177.save
	c178 = MtgCard.new(:idInSet => 178, :cardName => "Rakdos Carnarium", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/di/178.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/178.jpg", :color => 0, :cmc => 0, :rarity => 1, :expansion => "DIS")
	c178.save
	c179 = MtgCard.new(:idInSet => 179, :cardName => "Rix Maadi, Dungeon Palace", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/di/179.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/179.jpg", :color => 0, :cmc => 0, :rarity => 2, :expansion => "DIS")
	c179.save
	c180 = MtgCard.new(:idInSet => 180, :cardName => "Simic Growth Chamber", :cardType => 16, :engSRC => "http://magiccards.info/scans/en/di/180.jpg", :chiSRC => "http://magiccards.info/scans/cn/di/180.jpg", :color => 0, :cmc => 0, :rarity => 1, :expansion => "DIS")
	c180.save
end