local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
--TRIAL if ZygorGuidesViewer.HordeInstalled then return end
if UnitFactionGroup("player")~="Horde" then return end

ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Undead (1-13)",[[
	author support@zygorguides.com
	defaultfor Scourge
	next Zygor's Horde Leveling Guides\\Main Guide (13-20)
	startlevel 1
	step //1
		goto Tirisfal Glades,29.99,71.76
		.talk Undertaker Mordo##1568
		..accept Rude Awakening##363
	step //2
		goto 30.8,66.2
		.talk Shadow Priest Sarvis##1569
		..turnin Rude Awakening##363
		..accept The Mindless Ones##364
	step //3
		goto 31.8,63.7
		.kill 5 Wretched Ghoul|q 364/2
		.kill 5 Mindless Zombie|q 364/1
	step //4
		ding 2
	step //5
		goto 30.8,66.2
		.talk Shadow Priest Sarvis##1569
		..turnin The Mindless Ones##364
		..accept Rattling the Rattlecages##3901
		..accept Simple Scroll##3095
		.talk Novice Elreth##1661
		..accept The Damned##376
		only Scourge Warrior
	step //6
		goto 30.8,66.2
		.talk Shadow Priest Sarvis##1569
		..turnin The Mindless Ones##364
		..accept Rattling the Rattlecages##3901
		..accept Tainted Scroll##3099
		.talk Novice Elreth##1661
		..accept The Damned##376
		only Scourge Warlock
	step //7
		goto 30.8,66.2
		.talk Shadow Priest Sarvis##1569
		..turnin The Mindless Ones##364
		..accept Rattling the Rattlecages##3901
		..accept Encrypted Scroll##3096
		.talk Novice Elreth##1661
		..accept The Damned##376
		only Scourge Rogue
	step //8
		goto 30.9,66.3
		.talk Maximillion##2126
		..turnin Tainted Scroll##3099
		only Scourge Warlock
	step //9
		goto 30.8,66.2
		.talk Shadow Priest Sarvis##1569
		..turnin The Mindless Ones##364
		..accept Rattling the Rattlecages##3901
		..accept Hallowed Scroll##3097
		.talk Novice Elreth##1661
		..accept The Damned##376
		only Scourge Priest
	step //10
		goto 30.8,66.2
		.talk Shadow Priest Sarvis##1569
		..turnin The Mindless Ones##364
		..accept Rattling the Rattlecages##3901
		.talk Novice Elreth##1661
		..accept The Damned##376
		..accept Glyphic Scroll##3098
		only Scourge Mage
	step //11
		goto 32.7,65.6
		.talk Dannal Stern##2119
		..turnin Simple Scroll##3095
		only Scourge Warrior
		info2 He is the Warrior Class Trainer
	step //12
		goto 32.5,65.7
		.talk David Trias##2122
		..turnin Encrypted Scroll##3096
		only Scourge Rogue
		info2 He is the Rogue Class Trainer
	step //13
		goto 31.1,66
		.talk Dark Cleric Duesten##2123
		..turnin Hallowed Scroll##3097
		only Scourge Priest
		info2 He is the Priest Class Trainer
	step //14
		goto 30.9,66.1
		.talk Isabella##2124
		..turnin Glyphic Scroll##3098
		only Scourge Mage
	step //15
		goto 32.5,61.3
		.kill 8 Rattlecage Skeleton|q 3901/1
	step //16
		goto 31.7,58.7
		.from Young Scavenger##1508, Ragged Scavenger##1509
		.get 6 Scavenger Paw|q 376/1
		.from Duskbat##1512, Mangy Duskbat##1513
		.get 6 Duskbat Wing|q 376/2
	step //17
		ding 3
	step //18
		goto 30.8,66.2
		.talk Novice Elreth##1661
		..turnin The Damned##376
		..accept Marla's Last Wish##6395
		.talk Shadow Priest Sarvis##1569
		..turnin Rattling the Rattlecages##3901
	step //19
		goto 32.2,66
		.talk Executor Arren##1570
		..accept Night Web's Hollow##380
	step //20
		goto 31.6,65.6
		.talk Deathguard Saltain##1740
		..accept Scavenging Deathknell##3902
	step //21
		goto 33.2,63.7
		.' Click the Equipment Boxes |tip They look like piles of brown boxes around this area.
		.get 6 Scavenged Goods|q 3902/1
	step //22
		goto 29.4,58.6
		.kill 8 Young Night Web Spider|q 380/1
	step //23
		ding 4
	step //24
		'Go inside the cave to 26.9,59.4|goto 26.9,59.4
		.kill 5 Night Web Spider|q 380/2
	step //25
		goto 36.7,61.5
		.from Samuel Fipps##1919
		.collect 1 Samuel's Remains##16333|q 6395
	step //26
		goto 31.2,65.1
		.' Click Marla's Grave |tip It's the only light brown pile of dirt in the cemetary.
		.' Bury Samuel's Remains|goal Samuel's Remains Buried|q 6395/1
	step //27
		goto 31.6,65.6
		.talk Deathguard Saltain##1740
		..turnin Scavenging Deathknell##3902
	step //28
		goto 32.2,66
		.talk Executor Arren##1570
		..turnin Night Web's Hollow##380
		..accept The Scarlet Crusade##381
	step //29
		goto 30.8,66.2
		.talk Novice Elreth##1661
		..turnin Marla's Last Wish##6395
	step //30
		goto 36.1,67.1
		.from Scarlet Convert##1506, Scarlet Initiate##1507
		.get 12 Scarlet Armband|q 381/1
	step //31
		ding 5
	step //32
		goto 32.2,66
		.talk Executor Arren##1570
		..turnin The Scarlet Crusade##381
		..accept The Red Messenger##382
	step //33
		goto 36.5,68.8
		.from Meven Korgal##1667
		.get Scarlet Crusade Documents|q 382/1
	step //34
		goto 32.2,66
		.talk Executor Arren##1570
		..turnin The Red Messenger##382
		..accept Vital Intelligence##383
	step //35
		goto 38.2,56.8
		.talk Calvin Montague##6784
		..accept A Rogue's Deal (1)##8
	step //36
		goto 40.9,54.2
		.talk Deathguard Simmer##1519
		..accept Fields of Grief (1)##365
	step //37
		goto 45.6,56.6
		.talk Gordo##10666
		..accept Gordo's Task##5481
	step //38
		goto 52.9,52.1
		.' Click the Gloom Weeds |tip They look like little dark wilted plants around this area.
		.get 3 Gloom Weed|q 5481/1
	step //39
		goto 58.2,51.4
		.talk Deathguard Dillinger##1496
		..accept A Putrid Task##404
	step //40
		goto 60.6,51.8
		.talk Executor Zygand##1515
		..turnin Vital Intelligence##383
		..accept At War With The Scarlet Crusade (1)##427
	step //41
		goto 60.7,51.5
		.' Click the Wanted Poster
		..accept Wanted: Maggot Eye##398
		info Next to the steps of the big building
	step //42
		goto 61.3,50.8
		.talk Magistrate Sevren##1499
		..accept Graverobbers##358
	step //43
		goto 61.7,52
		.talk Innkeeper Renee##5688
		..turnin A Rogue's Deal (1)##8
	step //44
		home Brill
	step //45
		goto 57.6,48.7
		.talk Junior Apothecary Holland##10665
		..turnin Gordo's Task##5481
		..accept Doom Weed##5482
	step //46
		goto 55.2,51.1
		.from Ravaged Corpse##1526, Rotting Dead##1525
		.get 7 Putrid Claw|q 404/1
	step //47
		goto 58.2,51.4
		.talk Deathguard Dillinger##1496
		..turnin A Putrid Task##404
		..accept The Mills Overrun##426
	step //48
		ding 6
	step //49
		goto 59.4,52.4
		.talk Apothecary Johaan##1518
		..accept A New Plague (1)##367
	step //50
		goto 55.7,61.3
		.from Decrepit Darkhound##1547, Cursed Darkhound##1548
		.get 5 Darkhound Blood|q 367/1
	step //51
		goto 38.2,56.8
		.talk Calvin Montague##6784
		..accept A Rogue's Deal (2)##590
		..'Fight him until he gives up
		..turnin A Rogue's Deal (2)##590
	step //52
		goto 37.2,52.2
		.' Click Tirisfal Pumpkins |tip They look like big pumpkins in this field around this area.
		.get 10 Tirisfal Pumpkin|q 365/1
	step //53
		goto 33,50.4
		.kill 10 Scarlet Warrior|q 427/1
	step //54
		'Hearth to Brill|goto 61.8,52.1,0.1|use hearthstone##6948|noway|c
	step //55
		goto 60.6,51.8
		.talk Executor Zygand##1515
		..turnin At War With The Scarlet Crusade (1)##427
		..accept At War With The Scarlet Crusade (2)##370
	step //56
		ding 7
	step //57
		goto 61.7,52.3
		.talk Coleman Farthing##1500
		..accept Deaths in the Family##354
		..accept The Haunted Mills##362
	step //58
		goto 61.9,52.7
		.talk Gretchen Dedmar##1521
		..accept The Chill of Death##375
	step //59
		goto 60.9,52
		.talk Deathguard Burgess##1652
		..accept Proof of Demise##374
	step //60
		goto 59.4,52.4
		.talk Apothecary Johaan##1518
		..turnin Fields of Grief (1)##365
		..accept Fields of Grief (2)##407
		..turnin A New Plague (1)##367
		..accept A New Plague (2)##368
	step //61
		'Go inside the inn
		.' Go to the basement|goto 61.6,51.6,0.2|c
	step //62
		goto 62,51.3
		.talk Captured Scarlet Zealot##1931
		..turnin Fields of Grief (2)##407
	step //63
		goto 57.5,41.1
		.kill 8 Rot Hide Graverobber |q 358/1
		.' Click the Doom Weeds |tip The Doom Weeds look like little purple plants on the ground around this area.
		.get 10 Doom Weed |q 5482/1
	step //64
		goto 58.3,35.3
		.kill 5 Rot Hide Mongrel|q 358/2
		.from Rot Hide Graverobber##1941, Rot Hide Gnoll##1674, Rot Hide Mongrel##1675
		.get 8 Embalming Ichor|q 358/3
	step //65
		goto 60.2,29.9
		.from Vile Fin Puddlejumper##1543, Vile Fin Minor Oracle##1544, Vile Fine Muckdweller##1545
		.get 5 Vile Fin Scale|q 368/1
	step //66
		goto 64.7,33.7
		.from Greater Duskbat##1553, Vampiric Duskbat##1554
		.get 5 Duskbat Pelt|q 375/1
	step //67
		goto 58.7,30.7
		.from Maggot Eye##1753
		.get Maggot Eye's Paw|q 398/1
	step //68
		ding 8
	step //69
		goto 61,52.4
		.talk Abigail Shiel##2118
		..buy 1 Coarse Thread|q 375/2
	step //70
		goto 60.6,51.8
		.talk Executor Zygand##1515
		..turnin Wanted: Maggot Eye##398
	step //71
		goto 61.9,52.7
		.talk Gretchen Dedmar##1521
		..turnin The Chill of Death##375
	step //72
		goto 61.3,50.8
		.talk Magistrate Sevren##1499
		..turnin Graverobbers##358
		..accept Forsaken Duties##359
	step //73
		goto 59.4,52.4
		.talk Apothecary Johaan##1518
		..turnin A New Plague (2)##368
		..accept A New Plague (3)##369
	step //74
		goto 57.6,48.7
		.talk Junior Apothecary Holland##10665
		..turnin Doom Weed##5482
	step //75
		goto 47.5,42
		.from Devlin Agamand##1657
		.get Devlin's Remains|q 362/1
	step //76
		goto 48.4,42.1
		.from Rattlecage Soldier##1520, Cracked Skull Soldier##1523
		..get 5 Notched Rib|q 426/1
		.from Darkeye Bonecaster##1522
		..get 3 Blackened Skull|q 426/2
	step //77
		ding 9
	step //78
		goto 49.5,36.1
		.from Nissa Agamand##1655
		.get Nissa's Remains|q 354/2
	step //79
		goto 46,31.8
		.from Gregor Agamand##1654
		.get Gregor's Remains|q 354/1
	step //80
		goto 43.9,36
		.from Thurman Agamand##1656
		.get Thurman's Remains|q 354/3
	step //81
		'Hearth to Brill|goto 61.8,52.1,0.5|use hearthstone##6948|noway|c
	step //82
		goto 61.7,52.3
		.talk Coleman Farthing##1500
		..turnin Deaths in the Family##354
		..turnin The Haunted Mills##362
		..accept Speak with Sevren##355
	step //83
		goto 61.3,50.8
		.talk Magistrate Sevren##1499
		..turnin Speak with Sevren##355
	step //84
		goto 58.2,51.4
		.talk Deathguard Dillinger##1496
		..turnin The Mills Overrun##426
	step //85
		goto 65.6,60.3
		.talk Deathguard Linnea##1495
		..turnin Forsaken Duties##359
		..accept Return to the Magistrate##360
		..accept Rear Guard Patrol##356
	step //86
		goto 74.7,61.5
		.kill 8 Bleeding Horror|q 356/1
		.kill 8 Wandering Spirit|q 356/2
	step //87
		ding 10
	step //88
		goto 65.6,60.3
		.talk Deathguard Linnea##1495
		..turnin Rear Guard Patrol##356
	step //89
		goto 61.3,50.8
		.talk Magistrate Sevren##1499
		..turnin Return to the Magistrate##360
	step //90
		goto 61.9,52.5
		.talk Austil de Mon##2131
		..accept Speak with Dillinger##1818
		only Scourge Warrior
	step //91
		goto 58.2,51.4
		.talk Deathguard Dillinger##1496
		..turnin Speak with Dillinger##1818
		..accept Ulag the Cleaver##1819
		only Scourge Warrior
	step //92
		goto 59.2,48.5
		.' Click the Mausoleum Trigger on the ground
		.kill 1 Ulag the Cleaver|q 1819/1
		only Scourge Warrior
		info It's a small square on the ground with a skull painted on it.
	step //93
		goto 58.2,51.4
		.talk Deathguard Dillinger##1496
		..turnin Ulag the Cleaver##1819
		only Scourge Warrior
	step //94
		goto 61.6,52.7
		.talk Ageron Kargal##5724
		..accept Halgar's Summons##1478
		only Scourge Warlock
	step //95
		'Go south to Undercity|goto Undercity
		only Scourge Warlock
	step //96
		goto Undercity,85.1,26
		.talk Carendin Halgar##5675
		..turnin Halgar's Summons##1478
		..accept Creature of the Void##1473
		only Scourge Warlock
	step //97
		'Go outside to Tirisfal Glades|goto Tirisfal Glades
		only Scourge Warlock
	step //98
		goto Tirisfal Glades,51.1,67.6
		.' Click Perrine's Chest inside the tower
		.get Egalin's Grimoire|q 1473/1
		only Scourge Warlock
		info It's a gray chest sitting on the ground.
	step //99
		'Go to Undercity|goto Undercity
		only Scourge Warlock
	step //100
		goto Undercity,85.1,26
		.talk Carendin Halgar##5675
		..turnin Creature of the Void##1473
		..accept The Binding##1471
		only Scourge Warlock
	step //101
		goto 86.6,27.1
		.' Use your Runes of Summoning whil standing on the pink Summoning Circle|use Runes of Summoning##6284
		.kill Summoned Voidwalker|q 1471/1
		only Scourge Warlock
		info It's a pink rune looking circle on the ground.
	step //102
		goto 85.1,26
		.talk Carendin Halgar##5675
		..turnin The Binding##1471
		only Scourge Warlock
	step //103
		'Go outside to Tirisfal Glades|goto Tirisfal Glades
		only Scourge Warlock
	step //104
		goto 51.1,67.9
		.kill Captain Perrine|q 370/1 |tip He's standing inside this tower.
	step //105
		goto 53.1,65.8
		.kill 3 Scarlet Zealot|q 370/2
		.kill 3 Scarlet Missionary|q 370/3
		.from Scarlet Missionary##1536, Scarlet Zealot##1537
		.get 10 Scarlet Insignia Ring|q 374/1
	step //106
		goto 60.6,51.8
		.talk Executor Zygand##1515
		..turnin At War With The Scarlet Crusade (2)##370
		..accept At War With The Scarlet Crusade (3)##371
	step //107
		goto 60.9,52
		.talk Deathguard Burgess##1652
		..turnin Proof of Demise##374
	step //108
		goto 76.2,54.3
		.kill 5 Scarlet Friar|q 371/2
	step //109
		goto 78.8,56
		.kill 1 Captain Vachon|q 371/1
		info He's standing inside this tower
	step //110
		goto 82.3,54.3
		.from Vicious Night Web Spider##1555
		.get 4 Vicious Night Web Spider Venom|q 369/1
	step //111
		'Hearth to Brill|goto 61.8,52.1,0.5|use hearthstone##6948|noway|c
	step //112
		goto 60.6,51.8
		.talk Executor Zygand##1515
		..turnin At War With The Scarlet Crusade (3)##371
		..accept At War With The Scarlet Crusade (4)##372
	step //113
		goto 59.4,52.4
		.talk Apothecary Johaan##1518
		..turnin A New Plague (3)##369
		..accept A New Plague (4)##492
		..accept Delivery to Silverpine Forest##445
	step //114
		goto 61.3,50.8
		.talk Magistrate Sevren##1499
		..accept The Prodigal Lich##405
		..accept The Family Crypt##408
	step //115
		goto 62,51.3
		.talk the Captured Mountaineer##2211
		..turnin A New Plague (4)##492
	step //116
		ding 11
	step //117
		'Go to the Undercity|goto Undercity
	step //118
		goto Undercity,84,18
		.talk Bethor Iceshard##1498
		..turnin The Prodigal Lich##405
		..accept The Lich's Identity##357
	step //119
		'Go outside of the Undercity|goto Tirisfal Glades
	step //120
		goto Tirisfal Glades,52,29.3
		.kill 8 Wailing Ancestor|q 408/1
		.kill 8 Rotting Ancestor|q 408/2
	step //121
		'Go inside the crypt to 52.8,26.4|goto 52.8,26.4
		.from Captain Dargol##1658
		.'Get Captain Dargol's Skull|goal Dargol's Skull|q 408/3
	step //122
		'Go outside the crypt to 68,42.1|goto 68,42.1
		.' Click Gunther's Books
		.get 1 The Lich's Spellbook|q 357/1
		info They look like a stack of books laying on a wooden table.
	step //123
		goto 79.3,46.5|n
		.' The path to At War With The Scarlet Crusade starts here|goto 79.3,46.5,0.5|noway|c
	step //124
		goto 79.5,25.2
		.kill 2 Scarlet Bodyguard|q 372/2
		.kill 1 Captain Melrache|q 372/1
		info Standing inside this tower
	step //125
		'Hearth to Brill|goto 61.8,52.1,0.5|use hearthstone##6948|noway|c
	step //126
		goto 60.6,51.8
		.talk Executor Zygand##1515
		..turnin At War With The Scarlet Crusade (4)##372
	step //127
		goto 61.3,50.8
		.talk Magistrate Sevren##1499
		..turnin The Family Crypt##408
	step //128
		'Go to the Undercity|goto Undercity
	step //129
		goto Undercity,84.1,17.5
		.talk Bethor Iceshard##1498
		..turnin The Lich's Identity##357
		..accept Return the Book##366
	step //130
		'Go outside of the Undercity|goto Tirisfal Glades
	step //131
		goto Tirisfal Glades,68.2,41.9
		.talk Gunther Arcanus##1497
		..turnin Return the Book##366
		..accept Proving Allegiance##409
	step //132
		goto 68.21,41.9
		.' Click the Crate of Candles
		.collect 1 Candle of Beckoning##3080|q 410
		info Looks like a wooden crate filled with candles next to a blue jar
	step //133
		goto 66.6,44.9
		.' Click Lillith's Dinner Table
		..turnin The Dormant Shade##410
		.kill 1 Lillith Nefara|q 409/1
		info It's a wooden table with bloody meat all over it.
	step //134
		goto 68.2,41.9
		.talk Gunther Arcanus##1497
		..turnin Proving Allegiance##409
		..accept The Prodigal Lich Returns##411
	step //135
		'Go to the Undercity|goto Undercity
	step //136
		goto Undercity,84.1,17.5
		.talk Bethor Iceshard##1498
		..turnin The Prodigal Lich Returns##411
	step //137
		ding 12
	step //138
		'Go outside of the Undercity|goto Tirisfal Glades
	step //139
		'Go southwest to Silverpine Forest|goto Silverpine Forest
	step //140
		goto Silverpine Forest,45.6,42.6
		.talk Karos Razok##2226
		..fpath Sepulcher
	step //141
		goto 42.8,40.9
		.talk Apothecary Renferrel##1937
		..turnin Delivery to Silverpine Forest##445
		..accept A Recipe For Death##447
	step //142
		'Go inside the crypt to 43.4,40.9|goto 43.4,40.9
		.talk High Executor Hadrec##1952
		..accept Lost Deathstalkers##428
		..accept The Dead Fields##437
	step //143
		'Go outside the crypt to 43.4,41.7|goto 43.4,41.7
		.talk Deathguard Podrig##6389
		..accept Supplying the Sepulcher##6321
		only Scourge
	step //144
		goto 44.2,39.8
		.talk Dalar Dawnweaver##1938
		..accept Prove Your Worth##421
	step //145
		goto 45.6,42.6
		.talk Karos Razok##2226
		..turnin Supplying the Sepulcher##6321
		..accept Ride to the Undercity##6323
		only Scourge
	step //146
		'Fly to the Undercity|goto Undercity
		only Scourge
	step //147
		goto Undercity,61.5,41.8
		.talk Gordon Wendham##4556
		..turnin Ride to the Undercity##6323
		..accept Michael Garrett##6322
		only Scourge
	step //148
		goto 63.3,48.5
		.talk Michael Garrett##4551
		..turnin Michael Garrett##6322
		..accept Return to Podrig##6324
		only Scourge
	step //149
		'Fly to The Sepulcher|goto Silverpine Forest,45.6,42.4,0.1|noway|c
		only Scourge
	step //150
		goto Silverpine Forest,43.4,41.7
		.talk Deathguard Podrig##6389
		..turnin Return to Podrig##6324
		only Scourge
	step //151
		goto 49.2,39.6
		.kill 5 Moonrage Whitescalp|q 421/1
	step //152
		goto 46,21
		.' Enter the Dead Fields|goal Enter the Dead Fields|q 437/1
		.from Nightlash##1983
		.get Essence of Nightlash|q 437/2
	step //153
		goto 41.4,18.2
		.from Ferocious Grizzled Bear##1778
		.get 6 Grizzled Bear Heart|q 447/1
	step //154
		goto 35.7,15
		.from Moss Stalker##1780, Mist Creeper##1781
		.get 6 Skittering Blood|q 447/2
	step //155
		goto 53.5,13.4
		.talk Rane Yorick##1950
		..turnin Lost Deathstalkers##428
		..accept Wild Hearts##429
	step //156
		goto 57.5,15.9
		.from Mottled Worg##1766, Worg##1765
		.get 6 Discolored Worg Heart|q 429/1
	step //157
		'Go inside the crypt to 43.4,40.9|goto 43.4,40.9
		.talk High Executor Hadrec##1952
		..turnin The Dead Fields##437
	step //158
		'Go outside the crypt to 42.8,40.9|goto 42.8,40.9
		.talk Apothecary Renferrel##1937
		..turnin Wild Hearts##429
	step //159
		goto 44.2,39.8
		.talk Dalar Dawnweaver##1938
		..turnin Prove Your Worth##421
	step //160
		'Fly to the Undercity|goto Undercity
	step //161
		goto Undercity,48.8,69.3
		.talk Master Apothecary Faranell##2055
		..turnin A Recipe For Death (1)##447
	step //162
		ding 13
	step //163
		'Go outside of the Undercity|goto Tirisfal Glades
	step //164
		goto Tirisfal Glades,60.8,58.8|n
		.' Ride the zeppelin to Orgrimmar|goto Durotar,50.8,13.2,1|noway|c
		info You can ride this zeppelin to Orgrimmar or Grom'Gol Base Camp
	step //165
		'Go northwest to Orgrimmar|goto Orgrimmar
	step //166
		goto Orgrimmar,45.1,63.9
		.talk Doras##3310
		..fpath Orgrimmar
	step //167
		'Go outside of Orgrimmar|goto Durotar
	step //168
		goto Durotar,50.8,43.6
		.talk Takrin Pathseeker##3336
		..accept Conscript of the Horde##840
	step //169
		'Go west to the Barrens|goto The Barrens
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Tauren (1-13)",[[
	author support@zygorguides.com
	defaultfor Tauren
	next Zygor's Horde Leveling Guides\\Main Guide (13-20)
	startlevel 1
	step //1
		goto Mulgore,44.9,77.1
		.talk Grull Hawkwind##2980
		..accept The Hunt Begins##747
	step //2
		goto 44.2,76.1
		.talk Chief Hawkwind##2981
		..accept A Humble Task (1)##752
	step //3
		goto 45.6,79.4
		.from Plainstrider##2955
		.get 7 Plainstrider Meat|q 747/1
		.get 7 Plainstrider Feather|q 747/2
	step //4
		ding 2
	step //5
		goto 44.9,77.1
		.talk Grull Hawkwind##2980
		..turnin The Hunt Begins##747
		..accept The Hunt Continues##750
		..accept Simple Note##3091
		only Tauren Warrior
	step //6
		goto 44.9,77.1
		.talk Grull Hawkwind##2980
		..turnin The Hunt Begins##747
		..accept The Hunt Continues##750
		..accept Rune-Inscribed Note##3093
		only Tauren Shaman
	step //7
		goto 44.9,77.1
		.talk Grull Hawkwind##2980
		..turnin The Hunt Begins##747
		..accept The Hunt Continues##750
		..accept Etched Note##3092
		only Tauren Hunter
	step //8
		goto 44.9,77.1
		.talk Grull Hawkwind##2980
		..turnin The Hunt Begins##747
		..accept The Hunt Continues##750
		..accept Verdant Note##3094
		only Tauren Druid
	step //9
		goto 44.0,76.1
		.talk Harutt Thunderhorn##3059
		..turnin Simple Note##3091
		only Tauren Warrior
	step //10
		goto 45,75.9
		.talk Meela Dawnstrider##3062
		..turnin Rune-Inscribed Note##3093
		only Tauren Shaman
		info2 She is the Shaman Class Trainer
	step //11
		goto 44.2,75.8
		.talk Lanka Farshot##3061
		..turnin Etched Note##3092
		only Tauren Hunter
		info2 He is the Hunter Class Trainer
	step //12
		goto 45.1,75.9
		.talk Gart Mistrunner##3060
		..turnin Verdant Note##3094
		only Tauren Druid
		info2 He is the Druid Class Trainer
	step //13
		goto 50,81.2
		.talk Greatmother Hawkwind##2991
		..turnin A Humble Task (1)##752
		..accept A Humble Task (2)##753
		.' Click a little Water Pitcher sitting on the windmill
		.get Water Pitcher|q 753/1
	step //14
		goto 44.2,76.1
		.talk Chief Hawkwind##2981
		..turnin A Humble Task (2)##753
		..accept Rites of the Earthmother (1)##755
	step //15
		goto 45.1,88.1
		.from Mountain Cougar##2961
		.get 10 Mountain Cougar Pelt|q 750/1
	step //16
		ding 3
	step //17
		goto 42.6,92.2
		.talk Seer Graytongue##2982
		..turnin Rites of the Earthmother (1)##755
		..accept Rite of Strength##757
	step //18
		goto 44.9,77.1
		.talk Grull Hawkwind##2980
		..turnin The Hunt Continues##750
		..accept The Battleboars##780
	step //19
		goto 44.6,76.7
		.talk Brave Windfeather##3209
		..accept Break Sharptusk!##3376
	step //20
		goto 52.3,78.8
		.from Battleboar##2966, Bristleback Battleboar##2954
		.get 8 Battleboar Snout|q 780/1
		.get 8 Battleboar Flank|q 780/2
	step //21
		ding 4
	step //22
		goto 44.7,76.2
		.talk Seer Ravenfeather##5888
		..accept Call of Earth (1)##1519
		only Tauren Shaman
	step //23
		goto 58.2,84.9
		.from Bristleback Quillboar##2952, Bristleback Shaman##2953
		.get 12 Bristleback Belt|q 757/1
	step //24
		goto 64.7,77.7
		.from Chief Sharptusk Thornmantle##8554
		.get Chief Sharptusk Thornmantle's Head|q 3376/1
		info He's standing in a huge round tent.
	step //25
		goto 64.0,77.8
		.from Bristleback Shaman##2953
		.get 2 Ritual Salve|q 1519/1
		only Tauren Shaman
	step //26
		ding 5
	step //27
		'Hearth to Camp Narache|goto 44.9,77.2,0.1|use hearthstone##6948|noway|c
	step //28
		goto 44.9,77.1
		.talk Grull Hawkwind##2980
		..turnin The Battleboars##780
	step //29
		goto 44.6,76.7
		.talk Brave Windfeather##3209
		..turnin Break Sharptusk!##3376
	step //30
		goto 44.7,76.2
		.talk Seer Ravenfeather##5888
		..turnin Call of Earth (1)##1519
		..accept Call of Earth (2)##1520
		only Tauren Shaman
	step //31
		goto 44.2,76.1
		.talk Chief Hawkwind##2981
		..turnin Rite of Strength##757
		..accept Rites of the Earthmother (2)##763
	step //32
		goto 53.7,80.2
		.' Drink your Earth Sapta in your bags while standing next to the huge rock|use Earth Sapta##6635
		.talk the Minor Manifestation of Earth##5891
		..turnin Call of Earth (2)##1520
		..accept Call of Earth (3)##1521
		only Tauren Shaman
	step //33
		goto 44.7,76.2
		.talk Seer Ravenfeather##5888
		..turnin Call of Earth (3)##1521
		only Tauren Shaman
	step //34
		goto 38.5,81.6
		.talk Antur Fallow##6775
		..accept A Task Unfinished##1656
	step //35
		goto 47.4,62
		.talk Ruul Eagletalon##2985
		..accept Dangers of the Windfury##743
	step //36
		goto 47.5,60.2
		.talk Baine Bloodhoof##2993
		..turnin Rites of the Earthmother (2)##763
		..accept Sharing the Land##745
		..accept Rite of Vision (1)##767
	step //37
		goto 48.5,60.4
		.talk Mull Thunderhorn##2948
		..accept Poison Water##748
		only Tauren
	step //38
		goto 48.7,59.3
		.talk Harken Windtotem##2947
		..accept Swoop Hunting##761
	step //39
		goto 47.8,57.5
		.talk Zarlman Two-Moons##3054
		..turnin Rite of Vision (1)##767
		..accept Rite of Vision (2)##771
	step //40
		goto 47,57.1
		.talk Maur Raincaller##3055
		..accept Mazzranache##766
	step //41
		goto 46.6,61.1
		.talk Innkeeper Kauth##6747
		..turnin A Task Unfinished##1656
	step //42
		home Bloodhoof Village
	step //43
		goto 56.11,71.4
		.from Prairie Wolf##2958, Prairie Stalker##2959
		..get 1 Prairie Wolf Heart|q 766/1
		.from Flatland Cougar##3035
		..get 1 Flatland Cougar Femur|q 766/2
		.from Adult Plainstrider##2956, Elder Plainstrider##2957
		..get 1 Plainstrider Scale|q 766/3
		.from Wiry Swoop##2969, Swoop##2970
		..get 1 Swoop Gizzard|q 766/4
	step //44
		goto 52,63.6
		.' Click the little brown pine cones on the ground
		.get 2 Ambercorn|q 771/2
		info They look like little brown pine cones on the ground around the trees.
	step //45
		ding 6
	step //46
		goto 53.3,65.7
		.' Click the flat grey rocks laying around the well
		.get 2 Well Stone|q 771/1
		info They look like flat grey rocks laying around this well.
	step //47
		goto 52,66.9
		.from Prairie Wolf##2958, Prairie Stalker##2959
		.get 6 Prairie Wolf Paw|q 748/1
		.from Adult Plainstrider##2956, Elder Plainstrider##2957
		.get 4 Plainstrider Talon|q 748/2
		only Tauren
	step //48
		goto 52.8,71.2
		.kill 10 Palemane Tanner|q 745/1
		.kill 8 Palemane Skinner|q 745/2
		.kill 5 Palemane Poacher|q 745/3
	step //49
		goto 56.1,71.4
		.from Wiry Swoop##2969, Swoop##2970
		.get 8 Trophy Swoop Quill|q 761/1
	step //50
		ding 7
	step //51
		goto 48.5,60.4
		.talk Mull Thunderhorn##2948
		..turnin Poison Water##748
		..accept Winterhoof Cleansing##754
		only Tauren
	step //52
		goto 48.7,59.3
		.talk Harken Windtotem##2947
		..turnin Swoop Hunting##761
	step //53
		goto 47.5,60.2
		.talk Baine Bloodhoof##2993
		..turnin Sharing the Land##745
		..accept Dwarven Digging##746
	step //54
		goto 47.8,57.5
		.talk Zarlman Two-Moons##3054
		..turnin Rite of Vision (2)##771
		..accept Rite of Vision (3)##772
	step //55
		goto 47,57.1
		.talk Maur Raincaller##3055
		..turnin Mazzranache##766
	step //56
		goto 53.7,66.2
		.' Stand next to the windmill
		.' Use your Winterhoof Cleansing Totem|use Winterhoof Cleansing Totem##5411
		.' Cleanse the Winterhoof Water Well|goal Cleanse the Winterhoof Water Well|q 754/1
		only Tauren
	step //57
		goto 48.5,60.4
		.talk Mull Thunderhorn##2948
		..turnin Winterhoof Cleansing##754
		..accept Thunderhorn Totem##756
		only Tauren
	step //58
		goto 47.7,57.4
		.' Stand next to the bonfire
		.' Use the Water of the Seers in your bags|use Water of the Seers##4823
	step //59
		'Follow the ghost wolf northwest to 32.7,36.1|goto 32.7,36.1
		.talk Seer Wiserunner##2984
		..turnin Rite of Vision (3)##772
		..accept Rite of Wisdom##773
	step //60
		ding 8
	step //61
		goto 35.4,35.8
		.from Flatland Cougar##3035
		.get 6 Cougar Claws|q 756/2
		.from Prairie Stalker##2959
		.get 6 Stalker Claws|q 756/1
		only Tauren
	step //62
		goto 34.7,46.9
		.from Bael'dun Digger##2989, Bael'dun Appraiser##2990
		.collect 5 Prospector's Pick##4702|q 746
	step //63
		goto 31.3,49.9
		.' Stand next to the forge
		.' Click the Prospector's Picks in your bags to break them|use Prospector's Pick##4702
		.get 5 Broken Tools|q 746/1
	step //64
		'Hearth to Bloodhoof Village|goto 46.7,61.0,0.1|use hearthstone##6948|noway|c
	step //65
		goto 47.5,60.2
		.talk Baine Bloodhoof##2993
		..turnin Dwarven Digging##746
	step //66
		goto 48.5,60.4
		.talk Mull Thunderhorn##2948
		..turnin Thunderhorn Totem##756
		..accept Thunderhorn Cleansing##758
		only Tauren
	step //67
		ding 9
	step //68
		goto 48.2,53.3
		.talk Ahab Wheathoof##23618
		..accept Kyle's Gone Missing!##11129
	step //69
		goto 45.8,46.4
		.from Adult Plainstrider##2956, Elder Plainstrider##2957
		.collect 1 Tender Strider Meat##33009|q 11129
	step //70
		goto 44.5,45.4
		.' Stand next to the windmill
		.' Use your Thunderhorn Cleansing Totem|use Thunderhorn Cleansing Totem##5415
		.' Cleanse the Thunderhorn Water Well|goal Cleanse the Thunderhorn Water Well|q 758/1
		only Tauren
	step //71
		goto 48.5,60.4
		.talk Mull Thunderhorn##2948
		..turnin Thunderhorn Cleansing##758
		..accept Wildmane Totem##759
		only Tauren
	step //72
		goto 49.3,61.3
		.' Kyle is a wolf that runs in a circle in this area
		.' Use the Tender Strider Meat in your bags when Kyle gets near you|use Tender Strider Meat##33009
		.' Feed Kyle|goal Kyle Fed|q 11129/1
	step //73
		goto 48.2,53.3
		.talk Ahab Wheathoof##23618
		..turnin Kyle's Gone Missing!##11129
	step //74
		goto 59.3,62.2
		.talk Morin Cloudstalker##2988
		..accept The Ravaged Caravan (1)##749
		info2 You may need to search for him
	step //75
		goto 53.7,48.2
		.' Click the Sealed Supply Crate
		..turnin The Ravaged Caravan (1)##749
		..accept The Ravaged Caravan (2)##751
		info It's a crate sitting on the ground next to a bonfire
	step //76
		goto 59.3,62.2
		.talk Morin Cloudstalker##2988
		..turnin The Ravaged Caravan (2)##751
		..accept The Venture Co.##764
		..accept Supervisor Fizsprocket##765
		info2 You may need to search for him
	step //77
		goto 66.2,68.8
		.from Windfury Harpy##2962, Windfury Wind Witch##2963
		.get 8 Windfury Talon|q 743/1
	step //78
		'Hearth to Bloodhoof Village|goto 46.7,61.0,0.1|use hearthstone##6948|noway|c
	step //79
		goto 47.4,62
		.talk Ruul Eagletalon##2985
		..turnin Dangers of the Windfury##743
	step //80
		ding 10
	step //81
		goto 49.5,60.6
		.talk Krang Stonehoof##3063
		..accept Veteran Uzzek##1505
		only Tauren Warrior
	step //82
		'Go southeast to the Barrens|goto The Barrens
		only Tauren Warrior
	step //83
		goto The Barrens,61.4,21.1
		.talk Uzzek##5810
		..turnin Veteran Uzzek##1505
		..accept Path of Defense##1498
		only Tauren Warrior
	step //84
		'Go east to Durotar|goto Durotar
		only Tauren Warrior
	step //85
		goto Durotar,39.2,32
		.from Thunder Lizard##3130, Lightning Hide##3131
		.get 5 Singed Scale|q 1498/1
		only Tauren Warrior
	step //86
		'Go southwest to the Barrens|goto The Barrens
		only Tauren Warrior
	step //87
		goto The Barrens,61.4,21.1
		.talk Uzzek##5810
		..turnin Path of Defense##1498
		only Tauren Warrior
	step //88
		'Go southwest to Mulgore|goto Mulgore
		only Tauren Warrior
	step //89
		goto 48.3,59.1
		.talk Narm Skychaser##3066
		..accept Call of Fire (1)##2984
		only Tauren Shaman
		info2 He is the Shaman Class Trainer
	step //90
		'Go east to the Barrens|goto The Barrens
		only Tauren Shaman
	step //91
		goto The Barrens,55.8,19.8
		.talk Kranal Fiss##5907
		..turnin Call of Fire (1)##2984
		..accept Call of Fire (2)##1524
		only Tauren Shaman
	step //92
		'Go east to Durotar|goto Durotar
		only Tauren Shaman
	step //93
		goto Durotar,36.6,57.1
		.' The path up to Telf Joolam starts here|goto Durotar,37.0,57.0,1
		only Tauren Shaman
		info The path up to Telf Joolam starts here
	step //94
		'Go up the path to 38,59|goto 38,59
		.talk Telf Joolam##5900
		..turnin Call of Fire (2)##1524
		..accept Call of Fire (3)##1525
		only Tauren Shaman
	step //95
		'Go northwest to the Barrens|goto The Barrens
		only Tauren Shaman
	step //96
		goto The Barrens,53.8,25.6
		.from Razormane Thornweaver##3268, Razormane Water Seeker##3267
		.get Fire Tar|q 1525/1
		only Tauren Shaman
	step //97
		'Go northeast to Durotar|goto Durotar
		only Tauren Shaman
	step //98
		goto Durotar,52.8,28.9
		.from Burning Blade Cultist##3199
		.get Reagent Pouch|q 1525/2
		only Tauren Shaman
	step //99
		goto 38,59
		.talk Telf Joolam##5900
		..turnin Call of Fire (3)##1525
		..accept Call of Fire (4)##1526
		.' Drink the Fire Sapta in your bags next to the huge rock to your right
		only Tauren Shaman
	step //100
		'Run up the big hill next to you to 38.9,58.3|goto 38.9,58.3
		.from Minor Manifestation of Fire##5893
		.get Glowing Ember|q 1526/1
		.' Click the silver Brazier of the Dormant Flame on the ground
		..turnin Call of Fire (4)##1526
		..accept Call of Fire (5)##1527
		only Tauren Shaman
	step //101
		'Go northwest to the Barrens|goto The Barrens
		only Tauren Shaman
	step //102
		goto The Barrens,55.8,19.8
		.talk Kranal Fiss##5907
		..turnin Call of Fire (5)##1527
		only Tauren Shaman
	step //103
		'Go southwest to Mulgore|goto Mulgore
		only Tauren Shaman
	step //104
		goto 47.8,55.7
		.talk Yaw Sharpmane##3065
		..accept Taming the Beast (1)##6061
		only Tauren Hunter
		info2 He is the Hunter Class Trainer
	step //105
		goto 42.4,54.5
		.' Use your Taming Rod on an Adult Plainstrider around this area|use Taming Rod##15914
		.' Tame an Adult Plainstrider|goal Tame an Adult Plainstrider|q 6061/1
		only Tauren Hunter
	step //106
		goto 47.8,55.7
		.talk Yaw Sharpmane##3065
		..turnin Taming the Beast (1)##6061
		..accept Taming the Beast (2)##6087
		only Tauren Hunter
		info2 He is the Hunter Class Trainer
	step //107
		goto 48.6,46.7
		.' Use your Taming Rod on a Prairie Stalker around this area|use Taming Rod##15915
		.' Tame a Prairie Stalker|goal Tame a Prairie Stalker|q 6087/1
		only Tauren Hunter
	step //108
		goto 47.8,55.7
		.talk Yaw Sharpmane##3065
		..turnin Taming the Beast (2)##6087
		..accept Taming the Beast (3)##6088
		only Tauren Hunter
		info2 He is the Hunter Class Trainer
	step //109
		goto 42.3,50.1
		.' Use your Taming Rod on a Swoop around this area|use Taming Rod##15916
		.' Tame a Swoop|goal Tame a Swoop|q 6088/1
		only Tauren Hunter
	step //110
		goto 47.8,55.7
		.talk Yaw Sharpmane##3065
		..turnin Taming the Beast (3)##6088
		..accept Training the Beast (2)##6089
		only Tauren Hunter
		info2 He is the Hunter Class Trainer
	step //111
		'Go northwest to Thunder Bluff|goto Thunder Bluff
		only Tauren Hunter
	step //112
		goto Thunder Bluff,57.3,89.8
		.talk Holt Thunderhorn##3039
		..turnin Training the Beast##6089
		only Tauren Hunter
		info2 He is the Hunter Class Trainer
	step //113
		'Go outside of Thunder Bluff|goto Mulgore
		only Tauren Hunter
	step //114
		goto 48.5,59.7
		.talk Gennia Runetotem##3064
		..accept Heeding the Call##5926
		only Tauren Druid
		info2 She is the Druid Class Trainer
	step //115
		'Go to Thunder Bluff|goto Thunder Bluff
		only Tauren Druid
	step //116
		goto Thunder Bluff,76.4,27.3
		.talk Turak Runetotem##3033
		..turnin Heeding the Call##5926
		..accept Moonglade##5922
		only Tauren Druid
		info2 He is the Druid Class Trainer
	step //117
		'He gives you a spell called Teleport: Moonglade
		.' Cast your Teleport: Moonglade spell to teleport to Moonglade|goto Moonglade|cast Teleport: Moonglade
		only Tauren Druid
	step //118
		goto Moonglade,56.4,30.5
		.talk Dendrite Starblaze##11802
		..turnin Moonglade##5922
		..accept Great Bear Spirit##5930
		only Tauren Druid
	step //119
		goto 39.1,27.3
		.talk the Great Bear Spirit##11956
		.'Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear.|goal Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear.|q 5930/1
		only Tauren Druid
	step //120
		goto 56.4,30.5
		.talk Dendrite Starblaze##11802
		..turnin Great Bear Spirit##5930
		..accept Back to Thunder Bluff##5932
		only Tauren Druid
	step //121
		goto 44.3,45.9
		.talk Bunthen Plainswind##11798
		..'Fly to Thunder Bluff|goto Thunder Bluff
		only Tauren Druid
	step //122
		goto Thunder Bluff,76.4,27.3
		.talk Turak Runetotem##3033
		..turnin Back to Thunder Bluff##5932
		..accept Body and Heart##6002
		only Tauren Druid
		info2 He is the Druid Class Trainer
	step //123
		'Go outside to Mulgore|goto Mulgore
		only Tauren Druid
	step //124
		'Go southeast to the Barrens|goto The Barrens
		only Tauren Druid
	step //125
		goto The Barrens,42,60.9
		.' Use your Cenarion Lunardust on the Moonkin Stone to summon Lunaclaw|use Cenarion Lunardust##15710
		.from Lunaclaw##12138
		.talk Lunaclaw Spirit##12144
		.goal Face Lunaclaw and earn the strength of body and heart it possesses.|q 6002/1
		only Tauren Druid
	step //
		goto The Barrens,44.4,59.2
		.talk Omusa Thunderhorn##10378
		..fpath Camp Taurajo
		only Tauren Druid
	step //127
		'Fly to Thunder Bluff|goto Thunder Bluff
		only Tauren Druid
	step //128
		goto Thunder Bluff,76.4,27.3
		.talk Turak Runetotem##3033
		..turnin Body and Heart##6002
		only Tauren Druid
		info2 He is the Druid Class Trainer
	step //129
		'Go outside to Mulgore|goto Mulgore
		only Tauren Druid
	step //130
		goto Mulgore,63.2,61.7
		.from Prairie Wolf Alpha##2960
		.get 8 Prairie Alpha Tooth|q 759/1
		only Tauren
	step //131
		goto 48.5,60.4
		.talk Mull Thunderhorn##2948
		..turnin Wildmane Totem##759
		..accept Wildmane Cleansing##760
		only Tauren
	step //132
		goto 46.8,60.2
		.talk Skorn Whitecloud##3052
		..accept The Hunter's Way##861
	step //133
		goto 59.2,48.8
		.kill 14 Venture Co. Worker|q 764/1
		.kill 6 Venture Co. Supervisor|q 764/2
	step //134
		'Go northeast into the mine to 64.4,43.5|goto 64.4,43.5
		.' Keep heading right inside the mine and you will run into him
		.from Supervisor Fizsprocket##3051
		.get Fizsprocket's Clipboard|q 765/1
	step //135
		goto 59.3,62.2
		.talk Morin Cloudstalker##2988
		..turnin The Venture Co.##764
		..turnin Supervisor Fizsprocket##765
		info2 You may need to search for him
	step //136
		ding 11
	step //137
		'Go northwest to Thunder Bluff|goto Thunder Bluff
	step //138
		goto Thunder Bluff,37.7,59.6
		.talk Eyahn Eagletalon##2987
		..accept Preparation for Ceremony##744
	step //139
		'Leave Thunder Bluff|goto Mulgore
	step //140
		goto Mulgore,59.9,25.6
		.talk Lorekeeper Raintotem##3233
		..accept A Sacred Burial##833
	step //141
		goto 61,23.1
		.kill 8 Bristleback Interloper|q 833/1
	step //142
		goto 61.4,21
		.talk Ancestral Spirit##2994
		..turnin Rite of Wisdom##773
		..accept Journey into Thunder Bluff##775
	step //143
		goto 59.9,25.6
		.talk Lorekeeper Raintotem##3233
		..turnin A Sacred Burial##833
	step //144
		goto 45.1,16.5
		.from Flatland Prowler##3566
		.get 4 Flatland Prowler Claw|q 861/1
	step //145
		goto 42.7,14.1
		.' Stand next to the windmill
		.' Use your Wildmane Cleansing Totem|use Wildmane Cleansing Totem##5416
		.' Cleanse the Wildmane Well|goal Cleanse the Wildmane Well|q 760/1
		only Tauren
	step //146
		goto 31.7,21.3
		.from Windfury Sorceress##2964, Windfury Matriarch##2965
		.get 6 Azure Feather|q 744/1
		.get 6 Bronze Feather|q 744/2
	step //147
		'Go southeast to Thunder Bluff|goto Thunder Bluff
	step //148
		goto Thunder Bluff,37.7,59.6
		.talk Eyahn Eagletalon##2987
		..turnin Preparation for Ceremony##744
	step //149
		goto 61.5,80.9
		.talk Melor Stonehoof##3441
		..turnin The Hunter's Way##861
		..accept Sergra Darkthorn##860
	step //150
		goto 60.3,51.6
		.talk Cairne Bloodhoof##3057
		..turnin Journey into Thunder Bluff##775
		..accept Rites of the Earthmother##776
	step //151
		'Leave Thunder Bluff|goto Mulgore
	step //152
		goto Mulgore,51,12.6
		.from Arra'chea##3058
		.get Horn of Arra'chea|q 776/1
	step //153
		goto 49.6,18.1
		.from Ghost Howl##3056
		.get Demon Scarred Cloak|n
		.' Click the Demon Scarred Cloak|use Demon Scarred Cloak##4854
		..accept The Demon Scarred Cloak##770
	step //154
		'Go southeast to Thunder Bluff|goto Thunder Bluff
	step //155
		goto Thunder Bluff,60.3,51.6
		.talk Cairne Bloodhoof##3057
		..turnin Rites of the Earthmother##776
	step //156
		'Hearth to Bloodhoof Village|goto Mulgore,46.7,61.0,0.1|use hearthstone##6948|noway|c
	step //157
		goto Mulgore,46.8,60.2
		.talk Skorn Whitecloud##3052
		..turnin The Demon Scarred Cloak##770
	step //158
		ding 12
	step //159
		goto 48.5,60.4
		.talk Mull Thunderhorn##2948
		..turnin Wildmane Cleansing##760
		only Tauren
	step //160
		'Go east to the Barrens|goto The Barrens
	step //161
		goto The Barrens,44.4,59.2
		.talk Omusa Thunderhorn##10378
		..fpath Camp Taurajo
	step //162
		goto 44.9,58.6
		.talk Kirge Sternhorn##3418
		..accept Journey to the Crossroads##854
		only Tauren
	step //163
		goto 52.2,31
		.talk Sergra Darkthorn##3338
		..turnin Sergra Darkthorn##860
	step //164
		goto 51.5,30.9
		.talk Thork##3429
		..turnin Journey to the Crossroads##854
		only Tauren
	step //165
		goto 51.5,30.3
		.talk Devrak##3615
		..fpath Crossroads
	step //166
		home the Crossroads
	step //167
		'Go northeast to Durotar|goto Durotar
	step //168
		'Go northeast to Orgrimmar|goto Orgrimmar
	step //169
		goto Orgrimmar,45.1,63.9
		.talk Doras##3310
		..fpath Orgrimmar
	step //170
		'Go outside of Orgrimmar|goto Durotar
	step //171
		'Go east to 51,14|goto 50.8,13.3|n
		.' Ride the zeppelin to Undercity|goto Tirisfal Glades
		info You can ride zeppelins to either Undercity or the Grom'Gol Base Camp here
	step //172
		'Go to the Undercity|goto Undercity
	step //173
		goto Undercity,63.2,48.6
		.talk Michael Garrett##4551
		..fpath Undercity
	step //174
		'Go outside of the Undercity|goto Tirisfal Glades
	step //175
		'Go southwest to Silverpine Forest|goto Silverpine Forest
	step //176
		goto Silverpine Forest,45.6,42.6
		.talk Karos Razok##2226
		..fpath Sepulcher
	step //177
		goto 42.8,40.9
		.talk Apothecary Renferrel##1937
		..accept A Recipe For Death##447
	step //178
		goto 43.4,40.9
		.talk High Executor Hadrec##1952
		..accept Lost Deathstalkers##428
		..accept The Dead Fields##437
	step //179
		goto 44.2,39.8
		.talk Dalar Dawnweaver##1938
		..accept Prove Your Worth##421
	step //180
		goto 49.2,39.6
		.kill 5 Moonrage Whitescalp|q 421/1
	step //181
		goto 45.5,21.3
		.' Enter the Dead Fields|goal Enter the Dead Fields|q 437/1
		.from Nightlash##1983
		.get Essence of Nightlash|q 437/2
	step //182
		goto 41.4,18.2
		.from Ferocious Grizzled Bear##1778
		.get 6 Grizzled Bear Heart|q 447/1
	step //183
		goto 35.7,15
		.from Moss Stalker##1780, Mist Creeper##1781
		.get 6 Skittering Blood|q 447/2
	step //184
		goto 53.5,13.4
		.talk Rane Yorick##1950
		..turnin Lost Deathstalkers##428
		..accept Wild Hearts##429
	step //185
		goto 57.5,15.9
		.from Mottled Worg##1766, Worg##1765
		.get 6 Discolored Worg Heart|q 429/1
	step //186
		goto 44.2,39.8
		.talk Dalar Dawnweaver##1938
		..turnin Prove Your Worth##421
	step //187
		'Go inside the crypt to 43.4,40.9|goto 43.4,40.9
		.talk High Executor Hadrec##1952
		..turnin The Dead Fields##437
	step //188
		goto 42.8,40.9
		.talk Apothecary Renferrel##1937
		..turnin Wild Hearts##429
	step //189
		ding 13
	step //190
		'Fly to the Undercity|goto Undercity
	step //191
		goto 48.8,69.3
		.talk Master Apothecary Faranell##2055
		..turnin A Recipe For Death (1)##447
	step //192
		'Hearth to the Crossroads|goto The Barrens,52.0,29.9,0.1|use hearthstone##6948|noway|c
	step //193
		'Go northeast to Durotar|goto Durotar
	step //194
		goto Durotar,50.8,43.6
		.talk Takrin Pathseeker##3336
		..accept Conscript of the Horde##840
	step //195
		'Go west to the Barrens|goto The Barrens
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Orc (1-13)",[[
	author support@zygorguides.com
	defaultfor Orc
	next Zygor's Horde Leveling Guides\\Main Guide (13-20)
	startlevel 1
	step //1
		goto Durotar,43.3,68.5
		.talk Kaltunk##10176
		..accept Your Place In The World##4641
	step //2
		'Go inside the cave to 42,68|goto 42.1,68.3
		.talk Gornek##3143
		..turnin Your Place In The World##4641
		..accept Cutting Teeth##788
	step //3
		goto 43.8,70
		.kill 8 Mottled Boar|q 788/1
	step //4
		ding 2
	step //5
		goto 42.8,69.1
		.talk Zureetha Fargaze##3145
		..accept Vile Familiars##792
	step //6
		'Go into the cave to 42,68|goto 42.1,68.3
		.talk Gornek##3143
		..turnin Cutting Teeth##788
		..accept Sting of the Scorpid##789
		..accept Simple Parchment##2383
		only Orc Warrior
	step //7
		'Go into the cave to 42.1,68.3|goto 42.1,68.3
		.talk Gornek##3143
		..turnin Cutting Teeth##788
		..accept Sting of the Scorpid##789
		..accept Rune-Inscribed Parchment##3089
		only Orc Shaman
	step //8
		'Go into the cave to 42.1,68.3|goto 42.1,68.3
		.talk Gornek##3143
		..turnin Cutting Teeth##788
		..accept Sting of the Scorpid##789
		..accept Encrypted Parchment##3088
		only Orc Rogue
	step //9
		'Go into the cave to 42.1,68.3|goto 42.1,68.3
		.talk Gornek##3143
		..turnin Cutting Teeth##788
		..accept Sting of the Scorpid##789
		..accept Etched Parchment##3087
		only Orc Hunter
	step //10
		'Go into the cave to 42.1,68.3|goto 42.1,68.3
		.talk Gornek##3143
		..turnin Cutting Teeth##788
		..accept Sting of the Scorpid##789
		..accept Tainted Parchment##3090
		only Orc Warlock
	step //11
		'Go into the Cave to 40.6,68.5
		.talk Nartok##3156
		..turnin Tainted Parchment##3090
		only Orc Warlock
		info2 He is the Warlock Class Trainer
	step //12
		goto 42.9,69.4
		.talk Frang##3153
		..turnin Simple Parchment##2383
		only Orc Warrior
		info2 He is the Warrior Class Trainer
	step //13
		goto 42.4,69
		.talk Shikrik##3157
		..turnin Rune-Inscribed Parchment##3089
		only Orc Shaman
		info2 She is the Shaman Class Trainer
	step //14
		goto 41.3,68
		.talk Rwag##3155
		..turnin Encrypted Parchment##3088
		only Orc Rogue
		info2 He is the Rogue Class Trainer
	step //15
		goto 42.7,67.2
		.talk Galgar##9796
		..accept Galgar's Cactus Apple Surprise##4402
	step //16
		goto 42.8,69.3
		.talk Jen'shan##3154
		..turnin Etched Parchment##3087
		only Orc Hunter
		info2 She is the Hunter Class Trainer
	step //17
		goto 41.3,63.3
		.from Scorpid Worker##3124
		.get 10 Scorpid Worker Tail|q 789/1
	step //18
		'Go into the cave to 42,68|goto 42.1,68.3
		.talk Gornek##3143
		..turnin Sting of the Scorpid##789
	step //19
		ding 3
	step //20
		goto 44.6,68.6
		.talk Foreman Thazz'ril##11378
		..accept Lazy Peons##5441
	step //21
		goto 45.3,69.9
		.' Start here and head south along the Cliffside
		.' Use your Foreman's Blackjack on Lazy Peons|use Foreman's Blackjack##16114
		..'They are sleeping under the trees
		.' Awaken 5 Peons|goal 5 Peons Awoken|q 5441/1
	step //22
		goto 44.6,68.6
		.talk Foreman Thazz'ril##11378
		..turnin Lazy Peons##5441
		..accept Thazz'ril's Pick##6394
	step //23
		goto 44.1,65.4
		.' They look liked small cactuses with little pink apples on them
		.' Click the Cactus Apples
		.get 6 Cactus Apple|q 4402/1
	step //24
		goto 45.8,59.3
		.kill 8 Vile Familiar|q 792/1
	step //25
		'Go inside the cave to 45.5,56.4|goto 45.5,56.4
	step //26
		goto 43.8,53.8
		.' Click Thazz'ril's Pick
		.get Thazz'ril's Pick|q 6394/1
		info It looks like a glowing mining pick standing next to the wall inside the cave.
	step //27
		'Leave the cave|goto Durotar,45.3,56.7,0.5
	step //28
		goto 40.6,62.6
		.talk Hana'zua##3287
		..accept Sarkoth (1)##790
	step //29
		goto 40.6,66.6
		.from Sarkoth##3281
		.get Sarkoth's Mangled Claw|q 790/1
	step //30
		goto 40.6,62.6
		.talk Hana'zua##3287
		..turnin Sarkoth (1)##790
		..accept Sarkoth (2)##804
	step //31
		goto 42.7,67.2
		.talk Galgar##9796
		..turnin Galgar's Cactus Apple Surprise##4402
	step //32
		goto 42.1,68.3
		.talk Gornek##3143
		..turnin Sarkoth (2)##804
	step //33
		ding 4
	step //34
		goto 42.4,69.2
		.talk Canaga Earthcaller##5887
		..accept Call of Earth (1)##1516
		only Orc Shaman
	step //35
		goto 45.3,55.7
		.from Felstalker##3102
		.get 2 Felstalker Hoof|q 1516/1
		only Orc Shaman
	step //36
		goto 42.4,69.2
		.talk Canaga Earthcaller##5887
		..turnin Call of Earth (1)##1516
		..accept Call of Earth (2)##1517
		only Orc Shaman
	step //37
		goto 41.5,73.4|n
		.' The path up to Call of Earth (2) starts here|goto Durotar,41.5,73.4,0.3|noway|c
		only Orc Shaman
	step //38
		'Go southeast up the path to 44,76|goto 44.1,76.1
		.' Drink the Earth Sapta in your bags|use Earth Sapta##6635
		.talk the Minor Manifestation of Earth##5891
		..turnin Call of Earth (2)##1517
		..accept Call of Earth (3)##1518
		only Orc Shaman
	step //39
		goto 42.4,69.2
		.talk Canaga Earthcaller##5887
		..turnin Call of Earth (3)##1518
		only Orc Shaman
	step //40
		goto 42.8,69.1
		.talk Zureetha Fargaze##3145
		..turnin Vile Familiars (1)##792
		..accept Burning Blade Medallion##794
	step //41
		goto 44.6,68.6
		.talk Foreman Thazz'ril##11378
		..turnin Thazz'ril's Pick##6394
	step //42
		'Go inside the cave to 44.8,54.4|goto 44.8,54.4|n
		.' Follow the path to the right|goto Durotar,44.8,54.4,0.3|noway|c
	step //43
		goto 42.7,53
		.from Yarrog Boneshadow##3183
		.get Burning Blade Medallion|q 794/1
	step //44
		'Hearth to the Valley of Trials|goto 43.3,68.8,0.1|use hearthstone##6948|noway|c
	step //45
		goto 42.8,69.1
		.talk Zureetha Fargaze##3145
		..turnin Burning Blade Medallion##794
		..accept Report to Sen'jin Village##805
	step //46
		ding 5
	step //47
		'Go east along the road through the big gate|goto 49.8,68.4,0.3
	step //48
		goto 52.1,68.3
		.talk Ukor##6786
		..accept A Peon's Burden##2161
	step //49
		goto 54.2,73.3
		.talk Lar Prowltusk##3140
		..accept Thwarting Kolkar Aggression##786
	step //50
		goto 55.9,74.5
		.talk Master Gadrin##3188
		..turnin Report to Sen'jin Village##805
		..accept Minshina's Skull##808
		..accept Zalazane##826
		..accept Report to Orgnil##823
		.talk Master Vornal##3304
		..accept A Solvent Spirit##818
	step //51
		goto 55.9,74
		.talk Vel'rin Fang##3194
		..accept Practical Prey##817
	step //52
		goto 52.2,43.2
		.talk Orgnil Soulscar##3142
		..turnin Report to Orgnil##823
		..accept Dark Storms##806
	step //53
		goto 51.9,43.5
		.talk Gar'Thok##3139
		..accept Vanquish the Betrayers##784
	step //54
		goto 51.5,41.6
		.talk Innkeeper Grosk##6928
		..turnin A Peon's Burden##2161
	step //55
		home Razor Hill
	step //56
		goto 49.9,40.4
		.talk Furl Scornbrow##3147
		..accept Carry Your Weight##791
	step //57
		goto 55.5,51.2
		.kill 10 Kul Tiras Sailor|q 784/1
		.kill 8 Kul Tiras Marine|q 784/2
		.from Kul Tiras Sailor##3128, Kul Tiras Marine##3129
		.get 8 Canvas Scraps|q 791/1
	step //58
		ding 6
	step //59
		goto 59.7,58.3
		.kill Lieutenant Benedict##3192|q 784/3
		.collect 1 Benedict's Key##4882 |future |q 830
	step //60
		'Leave the room and run across the hall and up the wooden steps|goto Durotar,60.0,57.6,0.3
	step //61
		goto 59.3,57.7
		.' Use Benedict's Key to open Benedict's Chest |tip Down the hall and then up the wooden staircase from Lord Benedict.
		.collect 1 Aged Envelope##4881 |n
		.' Click the Aged Envelope |use Aged Envelope##4881
		..accept The Admiral's Orders (1)##830
	step //62
		goto 51.9,43.5
		.talk Gar'Thok##3139
		..turnin Vanquish the Betrayers##784
		..accept Encroachment##837
		..accept From The Wreckage....##825
		..turnin The Admiral's Orders (1)##830
		..accept The Admiral's Orders (2)##831
	step //63
		goto 51.1,42.4
		.talk Cook Torka##3191
		..accept Break a Few Eggs##815
	step //64
		goto 49.9,40.4
		.talk Furl Scornbrow##3147
		..turnin Carry Your Weight##791
	step //65
		goto 60.8,46.9
		.from Pygmy Surf Crawler##3106+, Surf Crawler##3107+
		.get 8 Crawler Mucus|q 818/2
		.from Makrura Shellhide##3104+, Makrura Clacker##3103+
		.get 4 Intact Makrura Eye|q 818/1
		.' Click the Gnomish Toolboxes
		.get 3 Gnomish Tools|q 825/1
		info The Gnomish Toolboxes look like grey metal chests underwater around this area.
	step //66
		ding 7
	step //67
		goto 51.9,43.5
		.talk Gar'Thok##3139
		..turnin From The Wreckage....##825
	step //68
		goto 44.6,48.6
		.' Be careful of Captain Flat Tusk. He's a level 11 elite that walks around this area.
		.kill 4 Razormane Quilboar|q 837/1
		.kill 4 Razormane Scout|q 837/2
	step //69
		goto 51.3,79.1|n
		.' The path to 'Thwarting Kolkar Aggression' starts here|goto 51.3,79.1,0.3|noway|c
	step //70
		goto 49.8,81.3
		.' Click the Attack Plan: Valley of Trials
		.' Destroy the Attack Plan: Valley of Trials|goal Attack Plan: Valley of Trials destroyed|q 786/1
		info It's a small white scroll laying flat on the floor in a big tent.
	step //71
		goto 47.7,77.3
		.' Click the Attack Plan: Sen'jin Village
		.' Destroy the Attack Plan: Sen'jin Village|goal Attack Plan: Sen'jin Village destroyed|q 786/2
		info It's a small white scroll laying on the floor under a brown canopy in a small camp.
	step //72
		goto 46.2,78.9
		.' Click the Attack Plan: Orgrimmar
		.' Destroy the Attack Plan: Orgrimmar|goal Attack Plan: Orgrimmar destroyed|q 786/3
		info It's a small white scroll laying under a canopy in a small camp.
	step //73
		goto 54.2,73.3
		.talk Lar Prowltusk##3140
		..turnin Thwarting Kolkar Aggression##786
	step //74
		goto 55.9,74.5
		.talk Master Vornal##3304
		..turnin A Solvent Spirit##818
	step //75
		ding 8
	step //76
		goto 60.3,82.9
		.' Click the purple Taillasher Eggs
		.get 3 Taillasher Egg|q 815/1
		.from Durotar Tiger##3121
		.get 4 Durotar Tiger Fur|q 817/1
	step //77
		goto 65.4,83.3
		.kill 8 Hexed Troll|q 826/1
		.kill 8 Voodoo Troll|q 826/2
	step //78
		goto 67.6,86.5
		.from Zalazane##3205
		.get Zalazane's Head|q 826/3
	step //79
		goto 67.5,87.8
		.' They look like little skulls inside a round demonic symbol up on the hill
		.' Click an Imprisoned Darkspear
		.get Minshina's Skull|q 808/1
	step //80
		goto 55.9,74.5
		.talk Master Gadrin##3188
		..turnin Minshina's Skull##808
		..turnin Zalazane##826
	step //81
		goto 55.9,74
		.talk Vel'rin Fang##3194
		..turnin Practical Prey##817
	step //82
		ding 9
	step //83
		'Hearth to Razor Hill|goto 51.5,41.7,0.1|use hearthstone##6948|noway|c
	step //84
		goto 51.1,42.4
		.talk Cook Torka##3191
		..turnin Break a Few Eggs##815
	step //85
		goto 44.5,41
		.kill 4 Razormane Dustrunner|q 837/3
		.kill 4 Razormane Battleguard|q 837/4
	step //86
		goto 43.1,30.2
		.talk Misha Tor'kren##3193
		..accept Lost But Not Forgotten##816
	step //87
		goto 46.4,22.9
		.talk Rezlak##3293
		..accept Winds in the Desert##834
	step //88
		goto 50.8,31.6|n
		.' The path to 'Winds in the Desert' starts here|goto 50.8,31.6,0.3|noway|c
	step //89
		goto 48.6,33.5
		.' They look like small tan bags
		.' Click the Stolen Supply Sacks
		.get 5 Sack of Supplies|q 834/1
	step //90
		goto 46.4,22.9
		.talk Rezlak##3293
		..turnin Winds in the Desert##834
		..accept Securing the Lines##835
	step //91
		goto 51.7,27.4|n
		.' The path to 'Securing the Lines' starts here|goto 51.7,27.43,0.3|noway|c
	step //92
		goto 54.1,26.9
		.kill 12 Dustwind Savage|q 835/1
		.kill 8 Dustwind Storm Witch|q 835/2
	step //93
		goto 46.4,22.9
		.talk Rezlak##3293
		..turnin Securing the Lines##835
	step //94
		goto 51.9,43.5
		.talk Gar'Thok##3139
		..turnin Encroachment##837
	step //95
		ding 10
	step //96
		goto 54,42
		.talk Tarshaw Jaggedscar##3169
		..accept Veteran Uzzek##1505
		only Orc Warrior
		info2 He is the Warrior Class Trainer
	step //97
		'Go west to the Barrens|goto The Barrens
		only Orc Warrior
	step //98
		goto The Barrens,61.4,21.1
		.talk Uzzek##5810
		..turnin Veteran Uzzek##1505
		..accept Path of Defense##1498
		only Orc Warrior
	step //99
		'Go east to Durotar|goto Durotar
		only Orc Warrior
	step //100
		goto Durotar,39,32
		.from Thunder Lizard##3130, Lightning Hide##3131
		.get 5 Singed Scale|q 1498/1
		only Orc Warrior
	step //101
		'Go southwest to the Barrens|goto The Barrens
		only Orc Warrior
	step //102
		goto The Barrens,61.4,21.1
		.talk Uzzek##5810
		..turnin Path of Defense##1498
		only Orc Warrior
	step //103
		'Go east to Durotar|goto Durotar
		only Orc Warrior
	step //104
		goto Durotar,54.4,41.3
		.talk Ophek##3294
		..accept Gan'rul's Summons##1506
		only Orc Warlock
	step //105
		'Go north to Orgrimmar|goto Orgrimmar
		only Orc Warlock
	step //106
		goto Orgrimmar,48.2,45.3
		.talk Gan'rul Bloodeye##5875
		..turnin Gan'rul's Summons##1506
		..accept Creature of the Void##1501
		only Orc Warlock
	step //107
		'Go outside to Durotar|goto Durotar
		only Orc Warlock
	step //108
		goto Durotar,55,9.9|n
		.' This is the entrance to the cave|goto Durotar,55.0,10.0,1|noway|c
		only Orc Warlock
	step //109
		'Go inside the cave to 51.6,9.7|goto 51.6,9.7
		.' Take the path to the right to get to this spot
		.' Click the Burning Blade Stash
		.get Tablet of Verga|q 1501/1
		only Orc Warlock
		info It's a gray chest sitting on the ground
	step //110
		'Go to Orgrimmar|goto Orgrimmar
		only Orc Warlock
	step //111
		goto Orgrimmar,48.2,45.3
		.talk Gan'rul Bloodeye##5875
		..turnin Creature of the Void##1501
		..accept The Binding##1504
		only Orc Warlock
	step //112
		goto 49.5,50.0
		.' Use your Glyphs of Summoning while standing on the pink Summoning Circle|use Glyphs of Summoning##7464
		.kill Summoned Voidwalker|q 1504/1
		only Orc Warlock
	step //113
		goto 48.2,45.3
		.talk Gan'rul Bloodeye##5875
		..turnin The Binding##1504
		only Orc Warlock
	step //114
		'Go outside to Durotar|goto Durotar
		only Orc Warlock
	step //115
		goto Durotar,54.4,42.6
		.talk Swart##3173
		..accept Call of Fire (1)##2983
		only Orc Shaman
		info2 He is the Shaman Class Trainer
	step //116
		'Go west to the Barrens|goto The Barrens
		only Orc Shaman
	step //117
		goto The Barrens,55.8,19.8
		.talk Kranal Fiss##5907
		..turnin Call of Fire (1)##2983
		..accept Call of Fire (2)##1524
		only Orc Shaman
	step //118
		'Go east to Durotar|goto Durotar
		only Orc Shaman
	step //119
		goto Durotar,36.6,57.1|n
		.' The path up to Telf Joolam starts here|goto 36.6,57.1,0.5
		only Orc Shaman
	step //120
		'Go up the path to 38.6,58.9|goto 38.6,58.9
		.talk Telf Joolam##5900
		..turnin Call of Fire (2)##1524
		..accept Call of Fire (3)##1525
		only Orc Shaman
	step //121
		'Go northwest to the Barrens|goto The Barrens
		only Orc Shaman
	step //122
		goto The Barrens,53.8,25.6
		.from Razormane Thornweaver##3268, Razormane Water Seeker##3267
		.get Fire Tar|q 1525/1
		only Orc Shaman
	step //123
		'Go northeast to Durotar|goto Durotar
		only Orc Shaman
	step //124
		goto Durotar,52.8,28.9
		.from Burning Blade Cultist##3199
		.get Reagent Pouch|q 1525/2
		only Orc Shaman
	step //125
		goto 38.6,58.9
		.talk Telf Joolam##5900
		..turnin Call of Fire (3)##1525
		..accept Call of Fire (4)##1526
		.' Drink the Fire Sapta in your bags next to the huge rock to your right
		only Orc Shaman
	step //126
		'Run up the big hill next to you to 39,58|goto 38.9,58.3
		.from Minor Manifestation of Fire##5893
		.get Glowing Ember|q 1526/1
		.' Click the silver Brazier of the Dormant Flame on the ground
		..turnin Call of Fire (4)##1526
		..accept Call of Fire (5)##1527
		only Orc Shaman
	step //127
		'Go northwest to the Barrens|goto The Barrens
		only Orc Shaman
	step //128
		goto The Barrens,55.8,19.8
		.talk Kranal Fiss##5907
		..turnin Call of Fire (5)##1527
		only Orc Shaman
	step //129
		goto Durotar,51.9,43.5
		.talk Thotar##3171
		..accept Taming the Beast (1)##6062
		only Orc Hunter
		info2 He is the Hunter Class Trainer
	step //130
		goto 52.1,46.2
		.' Use your Taming Rod on a Dire Mottled Boar around this area|use Taming Rod##15917
		.' Tame a Dire Mottled Boar|goal Tame a Dire Mottled Boar|q 6062/1
		only Orc Hunter
	step //131
		goto 51.9,43.5
		.talk Thotar##3171
		..turnin Taming the Beast (1)##6062
		..accept Taming the Beast (2)##6083
		only Orc Hunter
		info2 He is the Hunter Class Trainer
	step //132
		goto 59,26.5
		.' Use your Taming Rod on a Surf Crawler around this area|use Taming Rod##15919
		.' Tame a Surf Crawler|goal Tame a Surf Crawler|q 6083/1
		only Orc Hunter
	step //133
		goto 51.9,43.5
		.talk Thotar##3171
		..turnin Taming the Beast (2)##6083
		..accept Taming the Beast (3)##6082
		only Orc Hunter
		info2 He is the Hunter Class Trainer
	step //134
		goto 48,39.3
		.' Use your Taming Rod on an Armored Scorpid around this area|use Taming Rod##15920
		.' Tame an Armored Scorpid|goal Tame an Armored Scorpid|q 6082/1
		only Orc Hunter
	step //135
		goto 51.9,43.5
		.talk Thotar##3171
		..turnin Taming the Beast (3)##6082
		..accept Training the Beast##6081
		only Orc Hunter
		info2 He is the Hunter Class Trainer
	step //136
		'Go north to Orgrimmar|goto Orgrimmar
		only Orc Hunter
	step //137
		goto Orgrimmar,65.8,18.3
		.talk Ormak Grimshot##3352
		..turnin Training the Beast##6081
		only Orc Hunter
		info2 He is the Hunter Class Trainer
	step //138
		'Go outside of Orgrimmar to Durotar|goto Durotar
		only Orc Hunter
	step //139
		goto Durotar,42.1,15.0
		.talk Rhinag##3190
		..accept Need for a Cure##812
	step //140
		'Go to Orgrimmar|goto Orgrimmar
	step //141
		goto Orgrimmar,43.1,50.2
		.talk Kor'ghan##3189
		..accept Finding the Antidote##813
	step //142
		'Go outside of Orgrimmar to Durotar|goto Durotar
	step //143
		goto Durotar,39.9,20.9
		.from Venomtail Scorpid##3127
		.get 4 Venomtail Poison Sac|q 813/1
	step //144
		'Go northeast to Orgrimmar|goto Orgrimmar
	step //145
		goto Orgrimmar,43.1,50.2
		.talk Kor'ghan##3189
		..turnin Finding the Antidote##813
	step //146
		goto 34.3,36.3
		.talk Vol'jin##10540
		..turnin The Admiral's Orders##831
	step //147
		goto 31.8,37.8
		.talk Thrall##4949
		..accept Hidden Enemies (1)##5726
	step //148
		'Go outside of Orgrimmar to Durotar|goto Durotar
	step //149
		goto Durotar,42.1,15.0
		.talk Rhinag##3190
		..turnin Need for a Cure##812
	step //150
		goto 37.2,17.4
		.from Corrupted Dreadmaw Crocolisk##3231, Dreadmaw Crocolisk##3110
		.get Kron's Amulet|q 816/1
	step //151
		goto 39.2,32.5|n
		.' The path to 'Dark Storms' and 'Hidden Enemies' starts here|goto 39.2,32.5,0.5|noway|c
	step //152
		goto 42.1,26.6
		.from Fizzle Darkstorm##3203
		.get Fizzle's Claw|q 806/1
	step //153
		ding 11
	step //154
		'Hearth to Razor Hill|goto 51.5,41.7,0.1|use hearthstone##6948|noway|c
	step //155
		goto 50.8,43.6
		.talk Takrin Pathseeker##3336
		..accept Conscript of the Horde##840
	step //156
		goto 52.2,43.2
		.talk Orgnil Soulscar##3142
		..turnin Dark Storms##806
		..accept Margoz##828
	step //157
		goto 43.1,30.2
		.talk Misha Tor'kren##3193
		..turnin Lost But Not Forgotten##816
	step //158
		goto 56.4,20
		.talk Margoz##3208
		..turnin Margoz##828
		..accept Skull Rock##827
	step //159
		goto 55.1,10.1
		.from Burning Blade Fanatic##3197, Burning Blade Apprentice##3198
		.get 6 Searing Collar|q 827/1
		.get Lieutenant's Insignia|q 5726/1
	step //160
		goto 56.4,20
		.talk Margoz##3208
		..turnin Skull Rock##827
		..accept Neeru Fireblade##829
	step //161
		'Go to Orgrimmar|goto Orgrimmar
	step //162
		goto Orgrimmar,49.5,50.6
		.talk Neeru Fireblade##3216
		..turnin Neeru Fireblade##829
		..accept Ak'Zeloth##809
	step //163
		goto 31.8,37.8
		.talk Thrall##4949
		..turnin Hidden Enemies (1)##5726
		..accept Hidden Enemies (2)##5727
	step //164
		goto 49.5,50.6
		.talk Neeru Fireblade##3216
		.' Click "You may speak frankly, Neeru"
		.' Continue talking to him
		.' Gauge Neeru Fireblade's reaction to your being a member of the Burning Blade|goal Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade|q 5727/1
	step //165
		goto 31.8,37.8
		.talk Thrall##4949
		..turnin Hidden Enemies (2)##5727
	step //166
		'Go outside of Orgrimmar|goto Durotar
	step //167
		'Go east to 50.8,13.3|goto Durotar,50.8,13.3|n
		.' Ride the zeppelin to Undercity|goto Tirisfal Glades|noway|c
		info You can ride zeppelins to either Undercity or the Grom'Gol Base Camp here
	step //168
		'Go to the Undercity|goto Undercity
	step //169
		goto Undercity,63.2,48.6
		.talk Michael Garrett##4551
		..fpath Undercity
	step //170
		'Go outside of the Undercity|goto Tirisfal Glades
	step //171
		'Go southwest to Silverpine Forest|goto Silverpine Forest
	step //172
		goto Silverpine Forest,45.6,42.6
		.talk Karos Razok##2226
		..fpath Sepulcher
	step //173
		goto 42.8,40.9
		.talk Apothecary Renferrel##1937
		..accept A Recipe For Death##447
	step //174
		'Go inside the crypt to 43.4,40.9|goto 43.4,40.9
		.talk High Executor Hadrec##1952
		..accept Lost Deathstalkers##428
		..accept The Dead Fields##437
	step //175
		goto 44.2,39.8
		.talk Dalar Dawnweaver##1938
		..accept Prove Your Worth##421
	step //176
		goto 49.2,39.6
		.kill 5 Moonrage Whitescalp|q 421/1
	step //177
		goto 45.5,21.3
		.' Enter the Dead Fields|goal Enter the Dead Fields|q 437/1
		.from Nightlash##1983
		.get Essence of Nightlash|q 437/2
	step //178
		ding 12
	step //179
		goto 48.3,19.4
		.from Ferocious Grizzled Bear##1778
		.get 6 Grizzled Bear Heart|q 447/1
	step //180
		goto 35.7,15
		.from Moss Stalker##1780, Mist Creeper##1781
		.get 6 Skittering Blood|q 447/2
	step //181
		goto 53.5,13.4
		.talk Rane Yorick##1950
		..turnin Lost Deathstalkers##428
		..accept Wild Hearts##429
	step //182
		goto 57.5,15.9
		.from Mottled Worg##1766, Worg##1765
		.get 6 Discolored Worg Heart|q 429/1
	step //183
		goto 56.2,9.2
		.talk Deathstalker Erland##1978
		..accept Escorting Erland##435
		.' Escort Deathstalker Erland|goal Erland must reach Rane Yorick##1950|q 435/1
	step //184
		goto 53.5,13.4
		.talk Rane Yorick##1950
		..turnin Escorting Erland##435
	step //185
		goto 44.2,39.8
		.talk Dalar Dawnweaver##1938
		..turnin Prove Your Worth##421
	step //186
		'Go inside the crypt to 43.4,40.9|goto 43.4,40.9
		.talk High Executor Hadrec##1952
		..turnin The Dead Fields##437
	step //187
		goto 42.8,40.9
		.talk Apothecary Renferrel##1937
		..turnin Wild Hearts##429
	step //188
		'Fly to the Undercity|goto Undercity
	step //189
		goto Undercity,48.8,69.3
		.talk Master Apothecary Faranell##2055
		..turnin A Recipe For Death (1)##447
	step //190
		ding 13
	step //191
		'Hearth to Razor Hill|goto Durotar,51.5,41.7,0.5|use hearthstone##6948|noway|c
	step //192
		'Go west to the Barrens|goto The Barrens
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Troll (1-13)",[[
	author support@zygorguides.com
	defaultfor Troll
	next Zygor's Horde Leveling Guides\\Main Guide (13-20)
	startlevel 1
	step //1
		goto Durotar,43.3,68.5
		.talk Kaltunk##10176
		..accept Your Place In The World##4641
	step //2
		'Go inside the cave to 42,68|goto 42.1,68.3
		.talk Gornek##3143
		..turnin Your Place In The World##4641
		..accept Cutting Teeth##788
	step //3
		goto 43.8,70
		.kill 10 Mottled Boar|q 788/1
	step //4
		ding 2
	step //5
		goto 42.8,69.1
		.talk Zureetha Fargaze##3145
		..accept Vile Familiars (1)##792
	step //6
		'Go into the cave to 42.1,68.3|goto 42.1,68.3
		.talk Gornek##3143
		..turnin Cutting Teeth##788
		..accept Sting of the Scorpid##789
		..accept Glyphic Tablet##3086
		only Troll Mage
	step //7
		'Go into the cave to 42.1,68.3|goto 42.1,68.3
		.talk Gornek##3143
		..turnin Cutting Teeth##788
		..accept Sting of the Scorpid##789
		..accept Simple Tablet##3065
		only Troll Warrior
	step //8
		'Go into the cave to 42.1,68.3|goto 42.1,68.3
		.talk Gornek##3143
		..turnin Cutting Teeth##788
		..accept Sting of the Scorpid##789
		..accept Rune-Inscribed Tablet##3084
		only Troll Shaman
	step //9
		'Go into the cave to 42.1,68.3|goto 42.1,68.3
		.talk Gornek##3143
		..turnin Cutting Teeth##788
		..accept Sting of the Scorpid##789
		..accept Encrypted Tablet##3083
		only Troll Rogue
	step //10
		'Go into the cave to 42.1,68.3|goto 42.1,68.3
		.talk Gornek##3143
		..turnin Cutting Teeth##788
		..accept Sting of the Scorpid##789
		..accept Hallowed Tablet##3085
		only Troll Priest
	step //11
		'Go into the cave to 42.1,68.3|goto 42.1,68.3
		.talk Gornek##3143
		..turnin Cutting Teeth##788
		..accept Sting of the Scorpid##789
		..accept Etched Tablet##3082
		only Troll Hunter
	step //12
		goto 42.5,69.0
		.talk Mai'ah##5884
		..turnin Glyphic Tablet##3086
		only Troll Mage
	step //13
		goto 42.9,69.4
		.talk Frang##3153
		..turnin Simple Tablet##3065
		only Troll Warrior
		info2 He is the Warrior Class Trainer
	step //14
		goto 42.4,69
		.talk Shikrik##3157
		..turnin Rune-Inscribed Tablet##3084
		only Troll Shaman
		info2 She is the Shaman Class Trainer
	step //15
		goto 41.3,68
		.talk Rwag##3155
		..turnin Encrypted Tablet##3083
		only Troll Rogue
		info2 He is the Rogue Class Trainer
	step //16
		goto 42.4,68.8
		.talk Ken'jai##3707
		..turnin Hallowed Tablet##3085
		only Troll Priest
		info2 He is the Priest Class Trainer
	step //17
		goto 42.7,67.2
		.talk Galgar##9796
		..accept Galgar's Cactus Apple Surprise##4402
	step //18
		goto 42.8,69.3
		.talk Jen'shan##3154
		..turnin Etched Tablet##3082
		only Troll Hunter
		info2 She is the Hunter Class Trainer
	step //19
		goto 41.3,63.3
		.from Scorpid Worker##3124
		.get 10 Scorpid Worker Tail|q 789/1
	step //20
		ding 3
	step //21
		'Go into the cave to 42,68|goto 42.1,68.3
		.talk Gornek##3143
		..turnin Sting of the Scorpid##789
	step //22
		goto 44.6,68.6
		.talk Foreman Thazz'ril##11378
		..accept Lazy Peons##5441
	step //23
		goto 45.3,69.9
		.' Start here and head south along the Cliffside
		.' Use your Foreman's Blackjack on Lazy Peons|use Foreman's Blackjack##16114
		..'They are sleeping under the trees
		.' Awaken 5 Peons|goal 5 Peons Awoken|q 5441/1
		info Look for Lazy Peons sleeping under the trees along the cliffside here, and to the south.
	step //24
		goto 44.6,68.6
		.talk Foreman Thazz'ril##11378
		..turnin Lazy Peons##5441
		..accept Thazz'ril's Pick##6394
	step //25
		goto 44.1,65.4
		.' They look liked small cactuses with little pink apples on them
		.' Click the Cactus Apples
		.get 10 Cactus Apple|q 4402/1
	step //26
		goto 45.8,59.3
		.kill 12 Vile Familiar|q 792/1
	step //27
		ding 4
	step //28
		goto 42.4,69.2
		.talk Canaga Earthcaller##5887
		..accept Call of Earth (1)##1516
		only Troll Shaman
	step //29
		goto 45.5,56.4|n
		'Go inside the cave
		.' Follow the path to the left|goto 45.5,56.4,0.5|noway|c
	step //30
		goto 43.8,53.8
		.' Click Thazz'ril's Pick
		.get Thazz'ril's Pick|q 6394/1
		info It looks like a glowing mining pick standing next to the wall inside the cave.
	step //31
		goto 45.3,55.7
		.from Felstalker##3102
		.get 2 Felstalker Hoof|q 1516/1
		only Troll Shaman
	step //32
		'Leave the cave|goto 45.3,56.7,0.5|c
	step //33
		goto 40.6,62.6
		.talk Hana'zua##3287
		..accept Sarkoth (1)##790
	step //34
		goto 40.6,66.6
		.from Sarkoth##3281
		.get Sarkoth's Mangled Claw|q 790/1
		info Sarkoth is a dark colored scorpion.
	step //35
		goto 40.6,62.6
		.talk Hana'zua##3287
		..turnin Sarkoth (1)##790
		..accept Sarkoth (2)##804
	step //36
		goto 42.7,67.2
		.talk Galgar##9796
		..turnin Galgar's Cactus Apple Surprise##4402
	step //37
		goto 42.1,68.3
		.talk Gornek##3143
		..turnin Sarkoth (2)##804
	step //38
		goto 42.4,69.2
		.talk Canaga Earthcaller##5887
		..turnin Call of Earth (1)##1516
		..accept Call of Earth (2)##1517
		only Troll Shaman
	step //39
		goto 41.5,73.4|n
		.' The path up to Call of Earth (2) starts here|goto 41.5,73.4,0.3|noway|c
		only Troll Shaman
	step //40
		'Go up the path to 44.1,76.1|goto 44.1,76.1
		.' Drink the Earth Sapta in your bags|use Earth Sapta##6635
		.talk the Minor Manifestation of Earth##5891
		..turnin Call of Earth (2)##1517
		..accept Call of Earth (3)##1518
		only Troll Shaman
	step //41
		goto 42.4,69.2
		.talk Canaga Earthcaller##5887
		..turnin Call of Earth (3)##1518
		only Troll Shaman
	step //42
		goto 42.8,69.2
		.talk Zureetha Fargaze##3145
		..turnin Vile Familiars (1)##792
		..accept Burning Blade Medallion##794
	step //43
		goto 44.6,68.6
		.talk Foreman Thazz'ril##11378
		..turnin Thazz'ril's Pick##6394
	step //44
		ding 5
	step //45
		goto 45.5,56.4|n
		.' Go inside the cave
		.' Follow the path to the right|goto 45.3,56.7,0.5|noway|c
	step //46
		goto 42.7,53
		.from Yarrog Boneshadow##3183
		.get Burning Blade Medallion|q 794/1
		info Follow the path to the right inside the cave.
	step //47
		'Hearth to the Valley of Trials|goto 43.3,68.8,0.1|use hearthstone##6948|noway|c
	step //48
		goto 42.8,69.1
		.talk Zureetha Fargaze##3145
		..turnin Burning Blade Medallion##794
		..accept Report to Sen'jin Village##805
	step //49
		'Go east along the road through the big gate|goto 49.8,68.4,0.3
	step //50
		goto 52.1,68.3
		.talk Ukor##6786
		..accept A Peon's Burden##2161
	step //51
		goto 54.2,73.3
		.talk Lar Prowltusk##3140
		..accept Thwarting Kolkar Aggression##786
	step //52
		goto 55.9,74.5
		.talk Master Gadrin##3188
		..turnin Report to Sen'jin Village##805
		..accept Minshina's Skull##808
		..accept Zalazane##826
		..accept Report to Orgnil##823
		.talk Master Vornal##3304
		..accept A Solvent Spirit##818
	step //53
		goto 55.9,74
		.talk Vel'rin Fang##3194
		..accept Practical Prey##817
	step //54
		goto 52.2,43.2
		.talk Orgnil Soulscar##3142
		..turnin Report to Orgnil##823
		..accept Dark Storms##806
	step //55
		goto 51.9,43.5
		.talk Gar'Thok##3139
		..accept Vanquish the Betrayers##784
	step //56
		goto 51.5,41.6
		.talk Innkeeper Grosk##6928
		..turnin A Peon's Burden##2161
	step //57
		home Razor Hill
	step //58
		goto 49.9,40.4
		.talk Furl Scornbrow##3147
		..accept Carry Your Weight##791
	step //59
		goto 55.5,51.2
		.kill 10 Kul Tiras Sailor|q 784/1
		.kill 8 Kul Tiras Marine|q 784/2
		.from Kul Tiras Sailor##3128, Kul Tiras Marine##3129
		.get 8 Canvas Scraps|q 791/1
	step //60
		ding 6
	step //61
		goto 59.7,58.3
		.kill Lieutenant Benedict##3192|q 784/3
		.collect 1 Benedict's Key##4882|q 830
	step //62
		'Leave the room and run across the hall and up the wooden steps|goto 60.0,57.6,0.3
	step //63
		goto 59.3,57.7
		.' Use Benedict's Key to open Benedict's Chest
		.collect 1 Aged Envelope##4881|q 830
		.' Click the Aged Envelope|use Aged Envelope##4881
		..accept The Admiral's Orders (1)##830
		info Down the hall and then up the wooden staircase from Lord Benedict.
	step //64
		goto 51.9,43.5
		.talk Gar'Thok##3139
		..turnin Vanquish the Betrayers##784
		..accept From The Wreckage....##825
		..turnin The Admiral's Orders (1)##830
		..accept The Admiral's Orders (2)##831
		..accept Encroachment##837
	step //65
		goto 51.1,42.4
		.talk Cook Torka##3191
		..accept Break a Few Eggs##815
	step //66
		goto 49.9,40.4
		.talk Furl Scornbrow##3147
		..turnin Carry Your Weight##791
	step //67
		ding 7
	step //68
		goto 60.8,46.9
		.from Pygmy Surf Crawler##3106, Surf Crawler##3107
		.get 8 Crawler Mucus|q 818/2
		.from Makrura Shellhide##3104, Makrura Clacker##3103
		.get 4 Intact Makrura Eye|q 818/1
		.' Click the Gnomish Toolboxes
		.get 3 Gnomish Tools|q 825/1
		info The Gnomish Toolboxes look like grey metal chests underwater around this area.
	step //69
		goto 51.9,43.5
		.talk Gar'Thok##3139
		..turnin From The Wreckage....##825
	step //70
		goto 44.6,48.6
		.' Be careful of Captain Flat Tusk. He's a level 11 elite that walks around this area.
		.kill 4 Razormane Quilboar|q 837/1
		.kill 4 Razormane Scout|q 837/2
	step //71
		goto 51.3,79.1|n
		.' The path to 'Thwarting Kolkar Aggression' starts here|goto 51.3,79.1,0.3|noway|c
	step //72
		goto 49.8,81.3
		.' Click the Attack Plan: Valley of Trials
		.' Destroy the Attack Plan: Valley of Trials|goal Attack Plan: Valley of Trials destroyed|q 786/1
		info It's a small white scroll laying flat on the floor in a big tent.
	step //73
		goto 47.7,77.3
		.' Click the Attack Plan: Sen'jin Village
		.' Destroy the Attack Plan: Sen'jin Village|goal Attack Plan: Sen'jin Village destroyed|q 786/2
		info It's a small white scroll laying on the floor under a brown canopy in a small camp.
	step //74
		goto 46.2,78.9
		.' Click the Attack Plan: Orgrimmar
		.' Destroy the Attack Plan: Orgrimmar|goal Attack Plan: Orgrimmar destroyed|q 786/3
		info It's a small white scroll laying under a canopy in a small camp.
	step //75
		goto 54.2,73.3
		.talk Lar Prowltusk##3140
		..turnin Thwarting Kolkar Aggression##786
	step //76
		goto 55.9,74.5
		.talk Master Vornal##3304
		..turnin A Solvent Spirit##818
	step //77
		ding 8
	step //78
		goto 60.3,82.9
		.' Click the purple Taillasher Eggs
		.get 3 Taillasher Egg|q 815/1
		.from Durotar Tiger##3121
		.get 4 Durotar Tiger Fur|q 817/1
	step //79
		goto 65.4,83.3
		.kill 8 Hexed Troll|q 826/1
		.kill 8 Voodoo Troll|q 826/2
	step //80
		goto 67.6,86.5
		.from Zalazane##3205
		.get Zalazane's Head|q 826/3
	step //81
		goto 67.5,87.8
		.' They look like little skulls inside a round demonic symbol up on the hill
		.' Click an Imprisoned Darkspear
		.get Minshina's Skull|q 808/1
	step //82
		goto 55.9,74.5
		.talk Master Gadrin##3188
		..turnin Minshina's Skull##808
		..turnin Zalazane##826
	step //83
		goto 55.9,74
		.talk Vel'rin Fang##3194
		..turnin Practical Prey##817
	step //84
		ding 9
	step //85
		'Hearth to Razor Hill|goto 51.5,41.7,0.1|use hearthstone##6948|noway|c
	step //86
		goto 51.1,42.4
		.talk Cook Torka##3191
		..turnin Break a Few Eggs##815
	step //87
		goto 44.5,41
		.kill 4 Razormane Dustrunner|q 837/3
		.kill 4 Razormane Battleguard|q 837/4
	step //88
		goto 43.1,30.2
		.talk Misha Tor'kren##3193
		..accept Lost But Not Forgotten##816
	step //89
		goto 46.4,22.9
		.talk Rezlak##3293
		..accept Winds in the Desert##834
	step //90
		goto 50.8,31.6|n
		.' The path to 'Winds in the Desert' starts here|goto 50.8,31.6,0.3|noway|c
	step //91
		goto 48.6,33.5
		.' They look like small tan bags
		.' Click the Stolen Supply Sacks
		.get 5 Sack of Supplies|q 834/1
	step //92
		goto 46.4,22.9
		.talk Rezlak##3293
		..turnin Winds in the Desert##834
		..accept Securing the Lines##835
	step //93
		goto 51.7,27.4|n
		.' The path to 'Securing the Lines' starts here|goto 51.7,27.43,0.3|noway|c
	step //94
		goto 54.1,26.9
		.kill 12 Dustwind Savage|q 835/1
		.kill 8 Dustwind Storm Witch|q 835/2
	step //95
		goto 46.4,22.9
		.talk Rezlak##3293
		..turnin Securing the Lines##835
	step //96
		goto 51.9,43.5
		.talk Gar'Thok##3139
		..turnin Encroachment##837
	step //97
		ding 10
	step //98
		goto 54.2,42.4
		.talk Tarshaw Jaggedscar##3169
		..accept Veteran Uzzek##1505
		only Troll Warrior
		info2 He is the Warrior Class Trainer
	step //99
		'Go west to the Barrens|goto The Barrens
		only Troll Warrior
	step //100
		goto The Barrens,61.4,21.1
		.talk Uzzek##5810
		..turnin Veteran Uzzek##1505
		..accept Path of Defense##1498
		only Troll Warrior
	step //101
		'Go east to Durotar|goto Durotar
		only Troll Warrior
	step //102
		goto Durotar,39,32
		.from Thunder Lizard##3130, Lightning Hide##3131
		.get 5 Singed Scale|q 1498/1
		only Troll Warrior
	step //103
		'Go southwest to the Barrens|goto The Barrens
		only Troll Warrior
	step //104
		goto The Barrens,61.4,21.1
		.talk Uzzek##5810
		..turnin Path of Defense##1498
		only Troll Warrior
	step //105
		'Go east to Durotar|goto Durotar
		only Troll Warrior
	step //106
		goto Durotar,54.4,42.6
		.talk Swart##3173
		..accept Call of Fire (1)##2983
		only Troll Shaman
		info2 He is the Shaman Class Trainer
	step //107
		'Go west to the Barrens|goto The Barrens
		only Troll Shaman
	step //108
		goto The Barrens,55.8,19.8
		.talk Kranal Fiss##5907
		..turnin Call of Fire (1)##2983
		..accept Call of Fire (2)##1524
		only Troll Shaman
	step //109
		'Go east to Durotar|goto Durotar
		only Troll Shaman
	step //110
		goto Durotar,36.6,57.1|n
		.' The path up to Telf Joolam starts here|goto Durotar,36.6,57.1,0.5|noway|c
		only Troll Shaman
	step //111
		'Go up the path to 38,59|goto 38,59
		.talk Telf Joolam##5900
		..turnin Call of Fire (2)##1524
		..accept Call of Fire (3)##1525
		only Troll Shaman
	step //112
		'Go northwest to the Barrens|goto The Barrens
		only Troll Shaman
	step //113
		goto The Barrens,53.8,25.6
		.from Razormane Thornweaver##3268, Razormane Water Seeker##3267
		.get Fire Tar|q 1525/1
		only Troll Shaman
	step //114
		'Go northeast to Durotar|goto Durotar
		only Troll Shaman
	step //115
		goto Durotar,52.8,28.9
		.from Burning Blade Cultist##3199
		.get Reagent Pouch|q 1525/2
		only Troll Shaman
	step //116
		goto 38.6,58.9
		.talk Telf Joolam##5900
		..turnin Call of Fire (3)##1525
		..accept Call of Fire (4)##1526
		.' Drink the Fire Sapta in your bags next to the huge rock to your right
		only Troll Shaman
	step //117
		'Run up the big hill next to you to 39,58|goto 38.9,58.3
		.from Minor Manifestation of Fire##5893
		.get Glowing Ember|q 1526/1
		.' Click the silver Brazier of the Dormant Flame on the ground
		..turnin Call of Fire (4)##1526
		..accept Call of Fire (5)##1527
		only Troll Shaman
	step //118
		'Go northwest to the Barrens|goto The Barrens
		only Troll Shaman
	step //119
		goto The Barrens,55.8,19.8
		.talk Kranal Fiss##5907
		..turnin Call of Fire (5)##1527
		only Troll Shaman
	step //120
		'Go northeast to Durotar|goto Durotar
		only Troll Shaman
	step //121
		goto Durotar,51.9,43.5
		.talk Thotar##3171
		..accept Taming the Beast (1)##6062
		only Troll Hunter
		info2 He is the Hunter Class Trainer
	step //122
		goto 52.1,46.2
		.' Use your Taming Rod on a Dire Mottled Boar around this area|use Taming Rod##15917
		.' Tame a Dire Mottled Boar|goal Tame a Dire Mottled Boar|q 6062/1
		only Troll Hunter
	step //123
		goto 51.9,43.5
		.talk Thotar##3171
		..turnin Taming the Beast (1)##6062
		..accept Taming the Beast (2)##6083
		only Troll Hunter
		info2 He is the Hunter Class Trainer
	step //124
		goto 59,26.5
		.' Use your Taming Rod on a Surf Crawler around this area|use Taming Rod##15919
		.' Tame a Surf Crawler|goal Tame a Surf Crawler|q 6083/1
		only Troll Hunter
	step //125
		goto 51.9,43.5
		.talk Thotar##3171
		..turnin Taming the Beast (2)##6083
		..accept Taming the Beast (3)##6082
		only Troll Hunter
		info2 He is the Hunter Class Trainer
	step //126
		goto 48,39.3
		.' Use your Taming Rod on an Armored Scorpid around this area|use Taming Rod##15920
		.' Tame an Armored Scorpid|goal Tame an Armored Scorpid|q 6082/1
		only Troll Hunter
	step //127
		goto 51.9,43.5
		.talk Thotar##3171
		..turnin Taming the Beast (3)##6082
		..accept Training the Beast##6081
		only Troll Hunter
		info2 He is the Hunter Class Trainer
	step //128
		'Go north to Orgrimmar|goto Orgrimmar
		only Troll Hunter
	step //129
		goto Orgrimmar,65.8,18.3
		.talk Ormak Grimshot##3352
		..turnin Training the Beast##6081
		only Troll Hunter
		info2 He is the Hunter Class Trainer
	step //130
		'Go outside of Orgrimmar to Durotar|goto Durotar
		only Troll Hunter
	step //131
		goto Durotar,42.1,15.0
		.talk Rhinag##3190
		..accept Need for a Cure##812
	step //132
		'Go to Orgrimmar|goto Orgrimmar
	step //133
		goto Orgrimmar,43.1,50.2
		.talk Kor'ghan##3189
		..accept Finding the Antidote##813
	step //134
		'Go outside of Orgrimmar to Durotar|goto Durotar
	step //135
		goto Durotar,39.9,20.9
		.from Venomtail Scorpid##3127
		.get 4 Venomtail Poison Sac|q 813/1
	step //136
		'Go northeast to Orgrimmar|goto Orgrimmar
	step //137
		goto Orgrimmar,43.1,50.2
		.talk Kor'ghan##3189
		..turnin Finding the Antidote##813
	step //138
		goto 34.3,36.3
		.talk Vol'jin
		..turnin The Admiral's Orders##831
	step //139
		goto 34.3,36.3
		.talk Vol'jin##10540
		..turnin The Admiral's Orders##830
	step //140
		goto 31.8,37.8
		.talk Thrall##4949
		..accept Hidden Enemies (1)##5726
	step //141
		'Go outside of Orgrimmar to Durotar|goto Durotar
	step //142
		goto Durotar,42.1,15.0
		.talk Rhinag##3190
		..turnin Need for a Cure##812
	step //143
		goto 37.2,17.4
		.from Corrupted Dreadmaw Crocolisk##3231, Dreadmaw Crocolisk##3110
		.get Kron's Amulet|q 816/1
	step //144
		goto 39.2,32.5|n
		.' The path to 'Dark Storms' and 'Hidden Enemies' starts here|goto 39.2,32.5,0.5|noway|c
	step //145
		goto 42.1,26.6
		.from Fizzle Darkstorm##3203
		.get Fizzle's Claw|q 806/1
	step //146
		'Hearth to Razor Hill|goto 51.5,41.7,0.1|use hearthstone##6948|noway|c
	step //147
		goto 50.8,43.6
		.talk Takrin Pathseeker##3336
		..accept Conscript of the Horde##840
	step //148
		goto 52.2,43.2
		.talk Orgnil Soulscar##3142
		..turnin Dark Storms##806
		..accept Margoz##828
	step //149
		goto 43.1,30.2
		.talk Misha Tor'kren##3193
		..turnin Lost But Not Forgotten##816
	step //150
		goto 56.4,20
		.talk Margoz##3208
		..turnin Margoz##828
		..accept Skull Rock##827
	step //151
		goto 55.1,10.1
		.from Burning Blade Fanatic##3197, Burning Blade Apprentice##3198
		.get 6 Searing Collar|q 827/1
		.get Lieutenant's Insignia|q 5726/1
	step //152
		goto 56.4,20
		.talk Margoz##3208
		..turnin Skull Rock##827
		..accept Neeru Fireblade##829
	step //153
		ding 11
	step //154
		'Go to Orgrimmar|goto Orgrimmar
	step //155
		goto Orgrimmar,49.5,50.6
		.talk Neeru Fireblade##3216
		..turnin Neeru Fireblade##829
		..accept Ak'Zeloth##809
	step //156
		goto 31.8,37.8
		.talk Thrall##4949
		..turnin Hidden Enemies (1)##5726
		..accept Hidden Enemies (2)##5727
	step //157
		goto 49.5,50.6
		.talk Neeru Fireblade##3216
		.' Click "You may speak frankly, Neeru"
		.' Continue talking to him
		.' Gauge Neeru Fireblade's reaction to your being a member of the Burning Blade|goal Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade|q 5727/1
	step //158
		goto 31.8,37.8
		.talk Thrall##4949
		..turnin Hidden Enemies (2)##5727
	step //159
		'Go outside of Orgrimmar|goto Durotar
	'Go east to 50.8,13.3|goto Durotar,50.8,13.3|n
		.' Ride the zeppelin to Undercity|goto Tirisfal Glades|noway|c
		info You can ride zeppelins to either Undercity or the Grom'Gol Base Camp here
	step //160
		'Go to the Undercity|goto Undercity
	step //161
		goto Undercity,63.2,48.6
		.talk Michael Garrett##4551
		..fpath Undercity
	step //162
		'Go outside of the Undercity|goto Tirisfal Glades
	step //163
		'Go southwest to Silverpine Forest|goto Silverpine Forest
	step //164
		goto Silverpine Forest,45.6,42.6
		.talk Karos Razok##2226
		..fpath Sepulcher
	step //165
		goto 42.8,40.9
		.talk Apothecary Renferrel##1937
		..accept A Recipe For Death##447
	step //166
		'Go inside the crypt to 43.4,40.9|goto 43.4,40.9
		.talk High Executor Hadrec##1952
		..accept Lost Deathstalkers##428
		..accept The Dead Fields##437
	step //167
		goto 44.2,39.8
		.talk Dalar Dawnweaver##1938
		..accept Prove Your Worth##421
	step //168
		goto 49.2,39.6
		.kill 5 Moonrage Whitescalp|q 421/1
	step //169
		goto 45.5,21.3
		.' Enter the Dead Fields|goal Enter the Dead Fields|q 437/1
		.from Nightlash##1983
		.get Essence of Nightlash|q 437/2
	step //170
		goto 48.3,19.4
		.from Ferocious Grizzled Bear##1778
		.get 6 Grizzled Bear Heart|q 447/1
	step //171
		goto 35.7,15
		.from Moss Stalker##1780, Mist Creeper##1781
		.get 6 Skittering Blood|q 447/2
	step //172
		goto 53.5,13.4
		.talk Rane Yorick##1950
		..turnin Lost Deathstalkers##428
		..accept Wild Hearts##429
	step //173
		ding 12
	step //174
		goto 57.5,15.9
		.from Mottled Worg##1766, Worg##1765
		.get 6 Discolored Worg Heart|q 429/1
	step //175
		goto 56.2,9.2
		.talk Deathstalker Erland##1978
		..accept Escorting Erland##435
		.' Escort Deathstalker Erland|goal Erland must reach Rane Yorick##1950|q 435/1
	step //176
		goto 53.5,13.4
		.talk Rane Yorick##1950
		..turnin Escorting Erland##435
		..accept The Deathstalkers' Report##449
	step //177
		goto 44.2,39.8
		.talk Dalar Dawnweaver##1938
		..turnin Prove Your Worth##421
		..accept Arugal's Folly##422
	step //178
		'Go inside the crypt to 43.4,40.9|goto 43.4,40.9
		.talk High Executor Hadrec##1952
		..turnin The Dead Fields##437
		..turnin The Deathstalkers' Report##449
		..accept Speak with Renferrel##3221
	step //179
		goto 42.8,40.9
		.talk Apothecary Renferrel##1937
		..turnin Wild Hearts##429
		..turnin Speak with Renferrel##3221
		..accept Return to Quinn##430
	step //180
		goto 52.8,28.5
		Go inside of the house and up the stairs and click on the Dusty Spellbooks.
		.get Remedy of Arugal##3155 |q 422/1
	step //181
		goto 53.4,12.6
		.talk Deathstalker Quinn##1951
		..turnin Return to Quinn##430
	step //182
		goto 44.2,39.9
		.talk Dalar Dawnweaver##1938
		..turnin Arugal's Folly##422
	step //183
		'Fly to the Undercity|goto Undercity
	step //184
		goto Undercity,48.8,69.3
		.talk Master Apothecary Faranell##2055
		..turnin A Recipe For Death (1)##447
	step //185
		ding 13
	step //186
		'Hearth to Razor Hill|goto 51.5,41.7,0.1|use hearthstone##6948|noway|c
	step //187
		'Go west to the Barrens|goto The Barrens
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Blood Elf (1-13)",[[
	author support@zygorguides.com
	defaultfor BloodElf
	next Zygor's Horde Leveling Guides\\Main Guide (13-20)
	startlevel 1
	step //1
		goto Eversong Woods,38.0,21.0
		.talk Magistrix Erona##15278
		..accept Reclaiming Sunstrider Isle##8325
	step //2
		goto 36.2,20.5
		.kill 8 Mana Wyrm|q 8325/1
	step //3
		ding 2
	step //4
		goto 38.0,21.0
		.talk Magistrix Erona##15278
		..turnin Reclaiming Sunstrider Isle##8325
		..accept Unfortunate Measures##8326
		..accept Mage Training##8328 |only BloodElf Mage
		..accept Warlock Training##8563 |only BloodElf Warlock
		..accept Rogue Training##9392 |only BloodElf Rogue
		..accept Priest Training##8564 |only BloodElf Priest
		..accept Paladin Training##9676 |only BloodElf Paladin
		..accept Hunter Training##9393 |only BloodElf Hunter
	step //5
		goto 39.2,21.5
		.talk Julia Sunstriker##15279
		..turnin Mage Training##8328
		..accept Well Watcher Solanian##10068
		only BloodElf Mage
	step //6
		goto 38.9,21.4
		.talk Summoner Teli'Larien##15283
		..turnin Warlock Training##8563
		..accept Well Watcher Solanian##10073
		only BloodElf Warlock
		info2 He is the Warlock Class Trainer
	step //7
		goto 38.9,20
		.talk Pathstalker Kariel##15285
		..turnin Rogue Training##9392
		..accept Well Watcher Solanian##10071
		only BloodElf Rogue
		info2 He is the Rogue Class Trainer
	step //8
		goto 39.4,20.4
		.talk Matron Arena##15284
		..turnin Priest Training##8564
		..accept Well Watcher Solanian##10072
		only BloodElf Priest
		info2 She is the Priest Class Trainer
	step //9
		goto 39.5,20.6
		.talk Jesthenis Sunstriker##15280
		..turnin Paladin Training##9676
		..accept Well Watcher Solanian##10069
		only BloodElf Paladin
		info2 He is the Paladin Class Trainer
	step //10
		goto 39,20
		.talk Ranger Sallina##15513
		..turnin Hunter Training##9393
		..accept Well Watcher Solanian##10070
		only BloodElf Hunter
		info2 She is the Hunter Class Trainer
	step //11
		goto 38.8,19.4
		.talk Well Watcher Solanian##15295
		..turnin Well Watcher Solanian##10068 |only Mage
		..turnin Well Watcher Solanian##10073 |only Warlock
		..turnin Well Watcher Solanian##10071 |only Rogue
		..turnin Well Watcher Solanian##10069 |only Priest
		..turnin Well Watcher Solanian##10069 |only Paladin
		..turnin Well Watcher Solanian##10069 |only Hunter
		..accept Solanian's Belongings##8330
		..accept The Shrine of Dath'Remar##8345
	step //12
		goto 38.8,19.4
		.talk Well Watcher Solanian##15295
		..accept Solanian's Belongings##8330
		..accept The Shrine of Dath'Remar##8345
	step //13
		goto 38.3,19.1
		.talk Arcanist Ithanas##15296
		..accept A Fistful of Slivers##8336
		only BloodElf
	step //14
		goto 37.2,18.9
		.talk Arcanist Helion##15297
		..accept Thirst Unending##8346
		only BloodElf
	step //15
		goto 34.8,20.1
		.' Use your Arcane Torrent ability on a Mana Wyrm|q 8346/1|cast Arcane Torrent
		.from Mana Wyrm##15274
		.get 6 Arcane Sliver|q 8336/1
		info You must be very close for your Arcane Torrent ability to work.
	step //16
		goto 33.6,22.5
		.from Springpaw Cub##15366, Springpaw Lynx##15372
		.get 8 Lynx Collar|q 8326/1
	step //17
		ding 3
	step //18
		goto 38.2,20.8
		.talk Magistrix Erona##15278
		..turnin Unfortunate Measures##8326
		..accept Report to Lanthan Perilon##8327
	step //19
		goto 38.3,19.1
		.talk Arcanist Ithanas##15296
		..turnin A Fistful of Slivers##8336
	step //20
		goto 37.2,18.9
		.talk Arcanist Helion##15297
		..turnin Thirst Unending##8346
	step //21
		goto 35.4,22.5
		.talk Lanthan Perilon##15281
		..turnin Report to Lanthan Perilon##8327
		..accept Aggression##8334
	step //22
		goto 33.5,24.2
		.kill 7 Tender|q 8334/1
		.kill 7 Feral Tender|q 8334/2
	step //23
		ding 4
	step //24
		goto 29.6,19.4
		.' Click the shiny plaque on the side of the huge statue
		.' Read the Shrine of Dath'Remar|goal Shrine of Dath'Remar Read|q 8345/1
	step //25
		goto 31.3,22.7
		.' Click the Scroll of Scourge Magic
		.get Scroll of Scourge Magic|q 8330/2
		info It's a green glowing scroll laying flat on the ground on this platform.
	step //26
		goto 35.1,28.9
		.' Click Solanian's Scrying Orb
		.get Solanian's Scrying Orb|q 8330/1
		info It's a red crystal ball sitting in a glowing gold stand on a little hanging platform.
	step //27
		goto 37.7,24.9
		.' Click Solanian's Journal
		.get Solanian's Journal|q 8330/3
		info It's a blue glowing book laying on the ground under a huge green floating crystal.
	step //28
		goto 38.8,19.4
		.talk Well Watcher Solanian##15295
		..turnin Solanian's Belongings##8330
		..turnin The Shrine of Dath'Remar##8345
	step //29
		goto 35.4,22.5
		.talk Lanthan Perilon##15281
		..turnin Aggression##8334
		..accept Felendren the Banished##8335
	step //30
		goto 32.2,25.9
		.kill 8 Arcane Wraith|q 8335/1
		.kill 2 Tainted Arcane Wraith|q 8335/2
		.from Tainted Arcane Wraith##15298
		.get Tainted Arcane Sliver|n
		.' Click the Tainted Arcane Sliver|use Tainted Arcane Sliver##20483
		..accept Tainted Arcane Sliver##8338
	step //31
		'Follow the ramps all the way to the top to 30.8,27.1|goto 30.8,27.1
		.from Felendren the Banished##15367
		.get Felendren's Head|q 8335/3
	step //32
		goto 35.4,22.5
		.talk Lanthan Perilon##15281
		..turnin Felendren the Banished##8335
		..accept Aiding the Outrunners##8347
	step //33
		ding 5
	step //34
		goto 37.2,18.9
		.talk Arcanist Helion##15297
		..turnin Tainted Arcane Sliver##8338
	step //35
		'Go southeast over the bridge|goto Eversong Woods,40.0,31.4,0.5
	step //36
		goto 40.4,32.2
		.talk Outrunner Alarion##15301
		..turnin Aiding the Outrunners##8347
		..accept Slain by the Wretched##9704
	step //37
		goto 42,35.7
		.' Click the Slain Outrunner |tip It's a corpse laying in the middle of the road.
		..turnin Slain by the Wretched##9704
		..accept Package Recovery##9705
	step //38
		goto 40.4,32.2
		.talk Outrunner Alarion##15301
		..turnin Package Recovery##9705
		..accept Completing the Delivery##8350
	step //39
		goto 47.3,46.3
		.talk Magister Jaronis##15418
		..accept Major Malfunction##8472
	step //40
		goto 48.1,47.7
		.talk Innkeeper Delaniel##15433
		..turnin Completing the Delivery##8350
	step //41
		home Falconwing Square
	step //42
		goto 48.2,46
		.talk Aeldon Sunbrand##15403
		..accept Unstable Mana Crystals##8463
	step //43
		goto 48.2,46.3
		.' Click the Wanted Poster
		..accept Wanted: Thaelis the Hungerer##8468
		info Standing to the right of the entrance to the big building
	step //44
		goto 45.9,43.7
		.' Click the Unstable Mana Crystal Crates
		.get 6 Unstable Mana Crystal|q 8463/1
		.from Arcane Patroller##15638
		.get 6 Arcane Core|q 8472/1
		info The Unstable Mana Crystal Crates look like small glowing circle objects on the ground around this area.
	step //45
		goto 45,37.8
		.from Thaelis the Hungerer##15949
		.get Thaelis's Head|q 8468/1
	step //46
		goto 47.3,46.3
		.talk Magister Jaronis##15418
		..turnin Major Malfunction##8472
		..accept Delivery to the North Sanctum##8895
	step //47
		ding 6
	step //48
		goto 47.8,46.6
		.talk Sergeant Kan'ren##16924
		..turnin Wanted: Thaelis the Hungerer##8468
	step //49
		goto 48.2,46
		.talk Aeldon Sunbrand##15403
		..turnin Unstable Mana Crystals##8463
		..accept Darnassian Intrusions##9352
	step //50
		goto 44.6,53.1
		.talk Ley-Keeper Caidanis##15405
		..turnin Delivery to the North Sanctum##8895
		..accept Malfunction at the West Sanctum##9119
	step //51
		goto 45.2,56.4
		.talk Apprentice Ralen##15941
		..accept Roadside Ambush##9035
	step //52
		goto 36.7,57.4
		.talk Ley-Keeper Velania##15401
		..turnin Malfunction at the West Sanctum##9119
		..accept Arcane Instability##8486
	step //53
		goto 35.4,57.4
		.kill 5 Manawraith|q 8486/1
		.kill 5 Mana Stalker|q 8486/2
	step //54
		goto 33.9,58.4
		.' Kill a Darnassian Scout to defeat an Intruder|goal Intruder Defeated|q 9352/1
		.from Darnassian Scout##15968
		.get the Incriminating Documents|n
		.' Click the Incriminating Documents|use Incriminating Documents##20765
		..accept Incriminating Documents##8482
		info The Darnassian Scouts are all around the outskirts of the West Sanctum.
	step //55
		goto 36.7,57.4
		.talk Ley-Keeper Velania##15401
		..turnin Darnassian Intrusions##9352
		..turnin Arcane Instability##8486
	step //56
		ding 7
	step //57
		goto 30.2,58.3
		.talk Hathvelion Sungaze##15920
		..accept Fish Heads, Fish Heads...##8884
	step //58
		goto 27.3,57.2
		.from Grimscale Forager##15670, Grimscale Seer##15950
		.get 8 Grimscale Murloc Head|q 8884/1
		.get Captain Kelisendra's Lost Rutters|n
		.' Click Captain Kelisendra's Lost Rutters|use Captain Kelisendra's Lost Rutters##21776
		..accept Captain Kelisendra's Lost Rutters##8887
	step //59
		goto 30.2,58.3
		.talk Hathvelion Sungaze##15920
		..turnin Fish Heads, Fish Heads...##8884
	step //60
		goto 36.4,66.7
		.talk Captain Kelisendra##15921
		..turnin Captain Kelisendra's Lost Rutters##8887
		..accept Grimscale Pirates!##8886
		.talk Velendris Whitemorn##15404
		..accept Lost Armaments##8480
	step //61
		goto 31.7,69.1
		.' Click the Weapon Containers
		.get 8 Sin'dorei Armaments|q 8480/1
		info They look like wooden boxes on the ground all around this area.
	step //62
		goto 25.6,70.8
		.' Kill murlocs and click Captain Kelisendra's Cargo barrels on the beach
		.get 6 Captain Kelisendra's Cargo|q 8886/1
		info The Captain Kelisendra's Cargo barrels look like wooden barrels sitting upright next to the murloc huts.
	step //63
		goto 36.4,66.7
		.talk Captain Kelisendra##15921
		..turnin Grimscale Pirates!##8886
		.talk Velendris Whitemorn##15404
		..turnin Lost Armaments##8480
		..accept Wretched Ringleader##9076
	step //64
		ding 8
	step //65
		goto 32.8,69.6
		.' Go all the way to the top of the big building
		.from Aldaron the Reckless##16294
		.get Aldaron's Head|q 9076/1
	step //66
		goto 36.4,66.7
		.talk Velendris Whitemorn##15404
		..turnin Wretched Ringleader##9076
	step //67
		goto 44.7,69.6
		.talk Velan Brightoak##15417
		..accept Pelt Collection##8491
	step //68
		goto 44,70.8
		.talk Magistrix Landra Dawnstrider##16210
		..accept Saltheril's Haven##9395
		..accept The Wayward Apprentice##9254
	step //69
		goto 43.7,71.2
		.talk Marniel Amberlight##15397
		..accept Ranger Sareyn##9358
	step //70
		home Fairbreeze Village
	step //71
		goto 43.3,70.8
		.talk Ranger Degolien##15939
		..accept Situation at Sunsail Anchorage##8892
	step //72
		goto 44.9,61
		.talk Apprentice Meledor##15945
		..turnin Roadside Ambush##9035
		..accept Soaked Pages##9062
	step //73
		goto 44.3,62
		.' Click the Soaked Tome
		.get Antheol's Elemental Grimoire|q 9062/1
		info It's a little black book underwater here under the bridge.
	step //74
		goto 44.9,61
		.talk Apprentice Meledor##15945
		..turnin Soaked Pages##9062
		..accept Taking the Fall##9064
	step //75
		goto 48.2,46
		.talk Aeldon Sunbrand##15403
		..turnin Incriminating Documents##8482
		..accept The Dwarven Spy##8483
	step //76
		goto 44.6,53.1
		.talk Prospector Anvilward##15420
		..'Lure him away
		..from Prospector Anvilward##15420
		.get Prospector Anvilward's Head|q 8483/1
	step //77
		goto 48.2,46
		.talk Aeldon Sunbrand##15403
		..turnin The Dwarven Spy##8483
	step //78
		goto 50.3,50.8
		.talk Ranger Jaela##15416
		..accept The Dead Scar##8475
	step //79
		goto 50,52.8
		.kill 8 Plaguebone Pillager|q 8475/1
	step //80
		goto 50.3,50.8
		.talk Ranger Jaela##15416
		..turnin The Dead Scar##8475
	step //81
		goto 55.7,54.5
		.talk Instructor Antheol##15970
		..turnin Taking the Fall##9064
		..accept Swift Discipline##9066
	step //82
		goto 54.3,71
		.talk Apprentice Mirveda##15402
		..turnin The Wayward Apprentice##9254
		..accept Corrupted Soil##8487
	step //83
		goto 52.6,70.9
		.' Click the Corrupted Soil Samples
		.get 8 Tainted Soil Sample##20771|q 8487/1
		info They look like green glowing piles of dirt around this area.
	step //84
		goto 54.3,71
		.talk Apprentice Mirveda##15402
		..turnin Corrupted Soil##8487
		..'Prepare to fight
		..accept Unexpected Results##8488
	step //85
		goto 54.3,71
		'Protect Apprentice Mirveda from the ambushers
		.turnin Unexpected Results##8488
		.accept Research Notes##9255
		info Standing at the top of some white steps
	step //86
		ding 9
	step //87
		goto 46.9,71.8
		.talk Ranger Sareyn##15942
		..turnin Ranger Sareyn##9358
		..accept Defending Fairbreeze Village##9252
	step //88
		goto 50.7,75.5
		.kill 4 Rotlimb Marauder|q 9252/1
		.kill 4 Darkwraith|q 9252/2
	step //89
		goto 46.9,71.8
		.talk Ranger Sareyn##15942
		..turnin Defending Fairbreeze Village##9252
	step //90
		goto 44,70.8
		.talk Magistrix Landra Dawnstrider##16210
		..turnin Research Notes##9255
	step //91
		goto 38.1,73.6
		.talk Lord Saltheril##16144
		..turnin Saltheril's Haven##9395
		..accept The Party Never Ends##9067
	step //92
		goto 33.5,71.6
		.kill 5 Wretched Thug|q 8892/1
		.kill 5 Wretched Hooligan|q 8892/2
	step //93
		goto 40.1,66.2
		.from Springpaw Stalker##15651
		.get 6 Springpaw Pelt|q 8491/1
	step //94
		goto 44.7,69.6
		.talk Velan Brightoak##15417
		..turnin Pelt Collection##8491
	step //95
		goto 44.1,70.3
		.talk Halis Dawnstrider##16444
		..buy 1 Bundle of Fireworks|q 9067/3
	step //96
		goto 43.3,70.8
		.talk Ranger Degolien##15939
		..turnin Situation at Sunsail Anchorage##8892
		..accept Farstrider Retreat##9359
	step //97
		goto 44.9,61
		.' Use Antheol's Disciplinary Rod on Apprentice Meledor|use Antheol's Disciplinary Rod##22473
		.' Discipline Apprentice Meledor|goal Apprentice Meledor Disciplined|q 9066/1
		info Standing on the water bank, near the bridge
	step //98
		goto 45.2,56.4
		.' Use Antheol's Disciplinary Rod on Apprentice Ralen|use Antheol's Disciplinary Rod##22473
		.' Discipline Apprentice Ralen|goal Apprentice Ralen Disciplined|q 9066/2
		info Standing next to a broken down red wagon
	step //99
		goto 55.7,54.5
		.talk Instructor Antheol##15970
		.turnin Swift Discipline##9066
	step //100
		ding 10
	step //101
		'Go to Silvermoon City|goto Silvermoon City
		only BloodElf Warlock
	step //102
		goto Silvermoon City,74.4,47.1
		.talk Talionia##16647
		..accept The Stone##9529 |noobsolete
		only BloodElf Warlock
	step //103
		'Go outside to Eversong Woods|goto Eversong Woods
		only BloodElf Warlock
	step //104
		'Go southwest to the Ghostlands|goto Ghostlands
		only BloodElf Warlock
	step //105
		goto Ghostlands,43.8,15.6
		.' Click a Voidstone on the ground
		..turnin The Stone##9529
		..accept The Rune of Summoning##9619 |noobsolete
		only BloodElf Warlock
		info They are blue crystals laying on the ground
	step //106
		goto 27,15.2
		.' Go to the third top floor of this building
		.' Use your Voidstone while standing on the pink Summoning Circle|use Voidstone##23732
		.kill Summoned Voidwalker|q 9619/1
		only BloodElf Warlock
	step //107
		'Go northeast to Eversong Woods|goto Eversong Woods
		only BloodElf Warlock
	step //108
		'Go northeast to Silvermoon City|goto Silvermoon City
		only BloodElf Warlock
	step //109
		goto Silvermoon City,74.4,47.1
		.talk Talionia##16647
		..turnin The Rune of Summoning##9619
		only BloodElf Warlock
	step //110
		goto Eversong Woods,60.3,62.8
		.talk Lieutenant Dawnrunner##15399
		..accept Taming the Beast (1)##9484
		only BloodElf Hunter
	step //111
		goto 61.2,65.5
		.' Use your Taming Rod on a Crazed Dragonhawk around this area|use Taming Rod##23697
		.' Tame a Crazed Dragonhawk|goal Tame a Crazed Dragonhawk|q 9484/1
		only BloodElf Hunter
	step //112
		goto 60.3,62.8
		.talk Lieutenant Dawnrunner##15399
		..turnin Taming the Beast (1)##9484
		..accept Taming the Beast (2)##9486
		only BloodElf Hunter
	step //113
		goto 64.7,60.9
		.' Use your Taming Rod on an Elder Springpaw around this area|use Taming Rod##23702
		.' Tame an Elder Springpaw|goal Tame an Elder Springpaw|q 9486/1
		only BloodElf Hunter
	step //114
		goto 60.3,62.8
		.talk Lieutenant Dawnrunner##15399
		..turnin Taming the Beast (2)##9486
		..accept Taming the Beast (3)##9485
		only BloodElf Hunter
	step //115
		'Go southwest to the Ghostlands|goto Ghostlands
		only BloodElf Hunter
	step //116
		goto Ghostlands,51,15.2
		.' Use your Taming Rod on a Mistbat around this area|use Taming Rod##23703
		.' Tame a Mistbat|goal Tame a Mistbat|q 9485/1
		only BloodElf Hunter
	step //117
		'Go northwest to Eversong Woods|goto Eversong Woods
		only BloodElf Hunter
	step //118
		goto Eversong Woods,60.3,62.8
		.talk Lieutenant Dawnrunner##15399
		..turnin Taming the Beast (3)##9485
		..accept Beast Training##9673
		only BloodElf Hunter
	step //119
		'Go northwest to Silvermoon City|goto Silvermoon City
		only BloodElf Hunter
	step //120
		goto Silvermoon City,82.2,28.1
		.talk Halthenis##16675
		..turnin Beast Training##9673
		only BloodElf Hunter
		info2 He is the Pet Trainer
	step //121
		'Go to Silvermoon City|goto Silvermoon City
	step //122
		goto Silvermoon City,79.5,58.5
		.talk Vinemaster Suntouched##16442
		..buy Suntouched Special Reserve|get 1 Suntouched Special Reserve|q 9067/1
	step //123
		'Leave Silvermoon City|goto Eversong Woods
	step //124
		goto Eversong Woods,60.3,62.8
		.talk Lieutenant Dawnrunner##15399
		..turnin Farstrider Retreat##9359
		..accept Amani Encroachment##8476
	step //125
		goto 59.5,62.6
		.talk Arathel Sunforge##15400
		..accept The Spearcrafter's Hammer##8477
	step //126
		goto 60.3,61.4
		.talk Magister Duskwither##15951
		..accept The Magister's Apprentice##8888
	step //127
		goto 67.8,56.5
		.talk Apprentice Loralthalis##15924
		..turnin The Magister's Apprentice##8888
		..accept Deactivating the Spire##8889
		..accept Where's Wyllithen?##9394
	step //128
		goto 68.9,52.0 |n
		.' Click the orb of Translocation
		..'It will teleport you up to the building |goto 67.5,52.1,0.3 |noway |c
	step //129
		goto 68.9,51.9
		.' Click the Duskwither Spire Power Sources |tip The Power Sources are huge green floating crystals in this building.
		..' Deactivate the First Power Source|goal First Power Source Deactivated|q 8889/1
	step //130
		'Go upstairs to 68.9,51.9
		.' Click the Duskwither Spire Power Source |tip The Second Power Source is on the second floor. 
		.' Deactivate the Second Power Source|goal Second Power Source Deactivated|q 8889/2
	step //131
		goto 69.2,52.1
		.' Click Magister Duskwither's Journal |tip Magister Duskwither's Journal is a blue book sitting on a small stoll next to the Second Power Source crystal.
		..accept Abandoned Investigations##8891
	step //132
		'Go up the big staircase to 69.7,53.3|goto 69.7,53.3
		.' Click the Duskwither Spire Power Source |tip It's a huge green crystal all the way at the top of this building, up a huge staircase.
		.' Deactivate the Third Power Source|goal Third Power Source Deactivated|q 8889/3
		.' Click the Orb of Translocation
		..'It will teleport you back down|goto 68.9,52.0,0.1|noway|c
	step //133
		goto 68.7,46.9
		.talk Groundskeeper Wyllithen##15969
		..turnin Where's Wyllithen?##9394
		..accept Cleaning up the Grounds##8894
	step //134
		goto 69.5,48.1
		.kill 6 Mana Serpent|q 8894/1
		.kill 6 Ether Fiend|q 8894/2
	step //135
		goto 68.7,46.9
		.talk Groundskeeper Wyllithen##15969
		..turnin Cleaning up the Grounds##8894
	step //136
		goto 67.8,56.5
		.talk Apprentice Loralthalis##15924
		..turnin Deactivating the Spire##8889
		..accept Word from the Spire##8890
	step //137
		goto 60.4,62.5
		.talk Zalene Firstlight##16443
		..buy Springpaw Appetizers|get 1 Springpaw Appetizers|q 9067/2
	step //138
		goto 60.3,61.4
		.talk Magister Duskwither##15951
		..turnin Word from the Spire##8890
		..turnin Abandoned Investigations##8891
	step //139
		ding 11
	step //140
		goto 68.3,71.9
		.kill 5 Amani Berserker|q 8476/1
		.kill 5 Amani Axe Thrower|q 8476/2
	step //141
		goto 70,72.3
		.from Spearcrafter Otembe##15408
		.get Otembe's Hammer|q 8477/1
	step //142
		goto 70.5,72.3
		.talk Ven'jashi##15406
		..accept Zul'Marosh##8479
	step //143
		goto 62.6,79.7
		.from Chieftain Zul'Marosh##15407
		.get Chieftain Zul'Marosh's Head|q 8479/1
		.' Get the Amani Invasion Plans
		.' Click the Amani Invasion Plans|use Amani Invasion Plans##23249
		..accept Amani Invasion##9360
	step //144
		goto 70.5,72.3
		.talk Ven'jashi##15406
		..turnin Zul'Marosh##8479
	step //145
		goto 60.3,62.8
		.talk Lieutenant Dawnrunner##15399
		..turnin Amani Encroachment##8476
		..turnin Amani Invasion##9360
		..accept Warning Fairbreeze Village##9363
	step //146
		goto 59.5,62.6
		.talk Arathel Sunforge##15400
		..turnin The Spearcrafter's Hammer##8477
	step //147
		'Hearth to Fairbreeze Village|goto 43.7,71.2,0.5|use hearthstone##6948|noway|c
	step //148
		goto 43.3,70.8
		.talk Ranger Degolien##15939
		..turnin Warning Fairbreeze Village##9363
	step //149
		goto 38.1,73.6
		.talk Lord Saltheril##16144
		..turnin The Party Never Ends##9067
	step //150
		'Go northeast to Silvermoon City|goto Silvermoon City
	step //151
		goto Silvermoon City,49.5,14.8
		.' Click the Orb of Translocation
		..'It will teleport you to Undercity|goto Undercity|noway|c
		info It's a glowing red crystal ball all the way in the back room of this big building, up a ramp
	step //152
		goto Undercity,63.2,48.6
		.talk Michael Garrett##4551
		..fpath Undercity
	step //153
		'Go outside of the Undercity|goto Tirisfal Glades
	step //154
		'Go southwest to Silverpine Forest|goto Silverpine Forest
	step //155
		goto Silverpine Forest,45.6,42.6
		.talk Karos Razok##2226
		..fpath The Sepulcher
	step //156
		goto 42.8,40.9
		.talk Apothecary Renferrel##1937
		..accept A Recipe For Death##447
	step //157
		'Go inside the crypt to 43.4,40.9|goto 43.4,40.9
		.talk High Executor Hadrec##1952
		..accept Lost Deathstalkers##428
		..accept The Dead Fields##437
	step //158
		goto 44.2,39.8
		.talk Dalar Dawnweaver##1938
		..accept Prove Your Worth##421
	step //159
		goto 49.2,39.6
		.kill 5 Moonrage Whitescalp|q 421/1
	step //160
		ding 12
	step //161
		goto 44.2,39.8
		.talk Dalar Dawnweaver##1938
		..turnin Prove Your Worth##421
		..accept Arugal's Folly (1)##422
	step //162
		goto 52,28
		.Go inside the house and click the Dusty Spellbooks on the second floor
		..get Remedy of Arugal##3155|q 422/1
	step //163
		goto 45.5,21.3
		.' Enter the Dead Fields|goal Enter the Dead Fields|q 437/1
		.from Nightlash##1983
		.get Essence of Nightlash|q 437/2
	step //164
		goto 48.3,19.4
		.from Ferocious Grizzled Bear##1778
		.get 6 Grizzled Bear Heart|q 447/1
	step //165
		goto 35.7,15
		.from Moss Stalker##1780, Mist Creeper##1781
		.get 6 Skittering Blood|q 447/2
	step //166
		goto 53.5,13.4
		.talk Rane Yorick##1950
		..turnin Lost Deathstalkers##428
		..accept Wild Hearts##429
	step //167
		goto 57.5,15.9
		.from Mottled Worg##1766, Worg##1765
		.get 6 Discolored Worg Heart|q 429/1
	step //168
		goto 56.2,9.2
		.talk Deathstalker Erland##1978
		..accept Escorting Erland##435
		.' Escort Deathstalker Erland|goal Erland must reach Rane Yorick##1950|q 435/1
	step //169
		goto 53.5,13.4
		.talk Rane Yorick##1950
		..turnin Escorting Erland##435
	step //170
		goto 44.2,39.8
		.talk Dalar Dawnweaver##1938
		..turnin Arugal's Folly (1)##422
	step //171
		'Go inside the crypt to 43.4,40.9|goto 43.4,40.9
		.talk High Executor Hadrec##1952
		..turnin The Dead Fields##437
	step //172
		goto 42.8,40.9
		.talk Apothecary Renferrel##1937
		..turnin Wild Hearts##429
	step //173
		'Fly to the Undercity|goto Undercity
	step //174
		goto Undercity,48.8,69.3
		.talk Master Apothecary Faranell##2055
		..turnin A Recipe For Death (1)##447
	step //175
		ding 13
	step //176
		'Go outside of Undercity|goto Tirisfal Glades
	step //177
		goto Tirisfal Glades,60.8,58.8|n
		.' Ride the zeppelin to Orgrimmar|goto Durotar,50.8,13.2,1|noway|c
		info You can ride this zeppelin to Orgrimmar or Grom'Gol Base Camp
	step //178
		'Go northwest to Orgrimmar|goto Orgrimmar
	step //179
		goto Orgrimmar,45.1,63.9
		.talk Doras##3310
		..fpath Orgrimmar
	step //180
		'Go outside of Orgrimmar|goto Durotar
	step //181
		goto Durotar,50.8,43.6
		.talk Takrin Pathseeker##3336
		..accept Conscript of the Horde##840
	step //182
		'Go west to the Barrens|goto The Barrens
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Death Knight (55-60)",[[
	author support@zygorguides.com
	defaultfor DeathKnight
	next Zygor's Horde Leveling Guides\\Outland (60-62)
	startlevel 55
	step //1
		goto Plaguelands: The Scarlet Enclave,51.3,35.2
		.talk The Lich King##25462
		..accept In Service Of The Lich King##12593
	step //2
		goto 48,28.5
		.talk Instructor Razuvious##28357
		..turnin In Service Of The Lich King##12593
		..accept The Emblazoned Runeblade##12619
	step //3
		goto 48.56,33.47
		.' Click a weapon rack|tip They look like small square racks with weapons sitting on them.
		.get Battle-worn Sword|n
		.' Click the Battle-worn Sword in your bags next to a runeforge|use Battle-worn Sword##38607|tip The Runforges look like big demon skull furnace things.
		.get Runebladed Sword|q 12619/1
	step //4
		goto 48,28.5
		.talk Instructor Razuvious##28357
		..turnin The Emblazoned Runeblade##12619
		..accept Runeforging: Preparation For Battle##12842
	step //5
		goto 47.4,31
		.' Use your Runeforging ability while standing near the Runeforge|cast Runeforging|tip They look like big skull furnaces.
		.' Engrave your sword with the rune of your choice|goal Weapon emblazoned|q 12842/1
	step //6
		goto 48,28.5
		.talk Instructor Razuvious##28357
		..turnin Runeforging: Preparation For Battle##12842
		..accept The Endless Hunger##12848
	step //7
		goto 48.9,28.7
		.' Click the Acherus Soul Prison on the wall to free the Unworthy Initiate|tip It looks like a blue glowing skull.
		.' Dominate an Unworthy Initiate|goal Unworthy Initiate dominated|q 12848/1
	step //8
		goto 48,28.5
		.talk Instructor Razuvious##28357
		..turnin The Endless Hunger##12848
		..accept The Eye Of Acherus##12636
	step //9
		goto 51.3,35.2
		.talk The Lich King##25462
		..turnin The Eye Of Acherus##12636
		..accept Death Comes From On High##12641
	step //10
		goto 52.1,35.2
		.' Click the Eye of Acherus Control Mechanism|tip It looks like a big blue glowing ball floating above a small pillar statue thing.
		.' You will take control over the Eye of Acherus |havebuff Spell_Shadow_UnholyFrenzy |q 12641
		.' Once the Eye stops moving, go immediately left to the blacksmith building
		.' If you stay floating high enough, the soldiers will not attack you
		.' Use your Siphon of Acherus ability near the floating red arrow|petaction Siphon of Acherus
		.' Analyze the New Avalon Forge|goal New Avalon Forge Analyzed|q 12641/1
	step //11
		'Go south to the big fort
		.' Use your Siphon of Acherus ability near the floating red arrow|petaction Siphon of Acherus
		.' Analyze Scarlet Hold|goal Scarlet Hold Analyzed|q 12641/3
	step //12
		'Go southwest to the town hall building with the huge clock tower
		.' Use your Siphon of Acherus ability near the floating red arrow|petaction Siphon of Acherus
		.' Analyze the New Avalon Town Hall|goal New Avalon Town Hall Analyzed|q 12641/2
	step //13
		'Go south to the small church
		.' Use your Siphon of Acherus ability near the floating red arrow|petaction Siphon of Acherus
		.' Analyze the Chapel of the Crimson Flame|goal Chapel of the Crimson Flame Analyzed|q 12641/4
	step //14
		'Use your Recall Eye of Acherus ability to return to Ebon Hold |nobuff Spell_Shadow_UnholyFrenzy |petaction Recall Eye of Acherus |c |q 12641
	step //15
		goto 51.3,35.2
		.talk The Lich King##25462
		..turnin Death Comes From On High##12641
		..accept The Might Of The Scourge##12657
	step //16
		'Stand on the pink glowing circle at the bottom of the stairs to teleport to the bottom level of Ebon Hold|goto 50.45,33.26,0.3|noway|c
	step //17
		goto 48.9,29.7
		.talk Highlord Darion Mograine##28444
		..turnin The Might Of The Scourge##12657
		..accept Report To Scourge Commander Thalanor##12850
	step //18
		goto 47.5,26.5
		.talk Lord Thorval##28472
		..accept The Power Of Blood, Frost And Unholy##12849 |instant
	step //19
		goto 51.6,34.5
		.talk Scourge Commander Thalanor##28510
		..turnin Report To Scourge Commander Thalanor##12850
		..accept The Scarlet Harvest##12670
	step //20
		goto 52.1,35|n
		.' Click the Scourge Gryphon to ride it down to Death's Breach|goto Plaguelands: The Scarlet Enclave,53.2,31.1,0.5|noway|c|tip Flying in place on the balcony with green souls rising from it.
	step //21
		goto 52.3,34
		.talk Prince Valanar##28377
		..turnin The Scarlet Harvest##12670
		..accept If Chaos Drives, Let Suffering Hold The Reins##12678
	step //22
		goto 52.5,34.6
		.talk Salanar the Horseman##28653
		..accept Grand Theft Palomino##12680
	step //23
		goto 54.6,34.2
		.talk Olrun the Battlecaller##29047
		..accept Death's Challenge##12733
	step //24
		'Walk around Death's Breach
		.' Challenge Death Knight Initiates to duel
		.' Defeat 5 Death Knights in a duel|goal 5 Death Knights defeated in a duel|q 12733/1
	step //25
		goto 54.6,34.2
		.talk Olrun the Battlecaller##29047
		..turnin Death's Challenge##12733
	step //26
		goto 53.2,36.9
		.talk Orithos the Sky Darkener##28647
		..accept Tonight We Dine In Havenshire##12679
	step //27
		goto 51.8,45.2
		.from Scarlet Captain##28611, Scarlet Infantryman##28609, Scarlet Medic##28608, Scarlet Peasant##28557
		.kill 10 Scarlet Crusaders|q 12678/1
	step //28
		goto 55.31,46.21
		.' Click the Abandoned Mail on top of the mailbox|tip It's a rolled up scroll sitting on top of a mailbox.
		..accept Abandoned Mail##12711 |instant
	step //29
		goto 56.4,45
		.kill 10 Citizen of Havenshire##28660|q 12678/2
	step //30
		goto 56.2,49.4
		.' Click Saronite Arrows|tip They are green glowing arrows stuck in the ground around this area.
		.get 15 Saronite Arrow|q 12679/1
	step //31
		goto 55.6,43.2
		.' Click a horse to jump on it and steal it|invehicle|c
		.' Run back to Death's Breach quickly
	step //32
		goto 52.5,34.6
		.' Use your Deliver Stolen Horse ability on your bar when standing next to Salanar the Horseman|petaction Deliver Stolen Horse
		.talk Salanar the Horseman##28653
		..turnin Grand Theft Palomino##12680
		..accept Into the Realm of Shadows##12687
	step //33
		goto 52.8,43.7
		.' Kill a Dark Rider of Acherus and steal his horse|invehicle|c|tip They walk around on horses.
		.' Run back to Death's Breach
	step //34
		goto 52.5,34.6
		.' Use your Horseman's Call ability to call Salanar the Horseman|petaction Horseman's Call
		.' Complete the Horseman's Challenge|goal The Horseman's Challenge|q 12687/1
	step //35
		goto 52.5,34.6
		.talk Salanar the Horseman##28653
		..turnin Into the Realm of Shadows##12687
	step //36
		goto 52.3,34
		.talk Prince Valanar##28377
		..turnin If Chaos Drives, Let Suffering Hold The Reins##12678
	step //37
		goto 53.2,36.9
		.talk Orithos the Sky Darkener##28647
		..turnin Tonight We Dine In Havenshire##12679
	step //38
		ding 56
	step //39
		goto 52.3,34
		.talk Prince Valanar##28377
		..accept Gothik the Harvester##12697
	step //40
		goto 54.1,35
		.talk Gothik the Harvester##28658
		..turnin Gothik the Harvester##12697
		..accept The Gift That Keeps On Giving##12698
	step //41
		goto 58.2,31
		.' Use your Gift of the Harvester on Scarlet Miners inside this mine|use Gift of the Harvester##39253
		..Create 5 Scarlet Ghouls to follow you
		.' With the 5 Scarlet Ghouls, go back to 54.1,35
		.' Stand next to Gothik the Harvester|tip Standing in front of a small roundish stone altar thing.  He has a goat skull on his head.
		.' Return 5 Scarlet Ghouls |q 12698/1
		.talk Gothik the Harvester##28658
		..turnin The Gift That Keeps On Giving##12698
		..accept An Attack Of Opportunity##12700
	step //42
		goto 52.3,34
		.talk Prince Valanar##28377
		..turnin An Attack Of Opportunity##12700
		..accept Massacre At Light's Point##12701
	step //43
		goto 58.5,33
		.' Click the Inconspicuous Mine Car|tip It's a little mine car sitting next to an outhouse.
		.' The miner takes you to a ship
		.' Click a Scarlet Cannon on the side of the ship
		.' Shoot the soldiers on the beach with the cannon
		.kill 100 Scarlet Defender|q 12701/1
	step //44
		'Use your Skeletal Gryphon Escape ability on your hotbar to escape to Death's Breach|goto 52.6,34.5,0.5|noway|petaction Skeletal Gryphon Escape|c
	step //45
		goto 52.3,34
		.talk Prince Valanar##28377
		..turnin Massacre At Light's Point##12701
		..accept Victory At Death's Breach!##12706
	step //46
		goto 53.1,32.5|n
		.' Click the Scourge Gryphon to fly up to Ebon Hold|goto 51.1,34.7,0.5|noway|c|tip Flying in place, next to a blue flag.
	step //47
		goto 48.9,29.7
		.talk Highlord Darion Mograine##28444
		..turnin Victory At Death's Breach!##12706
		..accept The Will Of The Lich King##12714
	step //48
		goto 52.1,35|n
		.' Click the Scourge Gryphon to ride it down to Death's Breach|goto Plaguelands: The Scarlet Enclave,53.2,31.1,0.5|noway|c|tip Flying in place on the balcony with green souls rising from it.
	step //49
		goto 53.5,36.6
		.talk Prince Valanar##28907
		..turnin The Will Of The Lich King##12714
		..accept The Crypt of Remembrance##12715
	step //50
		goto 55.9,52.4
		.talk Noth the Plaguebringer##28919
		..accept The Plaguebringer's Request##12716
	step //51
		'Go southwest into the crypt to 54.3,57.3|goto 54.3,57.3
		.talk Prince Keleseth##28911
		..turnin The Crypt of Remembrance##12715
		..accept Nowhere To Run And Nowhere To Hide##12719
	step //52
		goto 54.7,57.4
		.talk Baron Rivendare##28910
		..accept Lambs To The Slaughter##12722
	step //53
		goto 57.8,61.8
		.' Click the Empty Cauldron|tip In the basement of the building that looks like an inn, it's a big black pot.
		.get Empty Cauldron|q 12716/1
	step //54
		goto 62,60.2
		.' Click the Iron Chain|tip It's a big chain in the corner inside the blacksmith house, above some barrels.
		.get Iron Chain|q 12716/2
	step //55
		'Run around the town and do the following:
		.kill 10 Scarlet Crusade Soldier|q 12722/1
		.get 10 Crusader Skull|q 12716/3
		.kill 15 Citizen of New Avalon|q 12722/2
	step //56
		goto 52.2,71.2
		.kill Mayor Quimby##28945|q 12719/1
	step //57
		goto 52.5,71
		.' Click the New Avalon Registry|tip It's a green book sitting on the table.
		.get New Avalon Registry|q 12719/2
	step //58
		'Go northeast into the crypt to 54.3,57.3|goto 54.3,57.3
		.talk Prince Keleseth##28911
		..turnin Nowhere To Run And Nowhere To Hide##12719
		..accept How To Win Friends And Influence Enemies##12720
	step //59
		goto 54.7,57.4
		.talk Baron Rivendare##28910
		..turnin Lambs To The Slaughter##12722
	step //60
		goto 55.9,52.4
		.talk Noth the Plaguebringer##28919
		..turnin The Plaguebringer's Request##12716
		..accept Noth's Special Brew##12717
	step //61
		goto 56.1,52.1
		'Click the big Plague Cauldron|tip It's a huge black pot bouncing around on the platform in the field.
		..turnin Noth's Special Brew##12717
	step //62
		goto 55.9,60.5
		'Open the Ornate Jewelry Box in your bags|use Ornate Jeweled Box##39418
		.' Equip the Keleseth's Persuader swords
		.' Attack Scarlet soldiers and stop hitting them when they start talking, so you don't kill them too fast
		.' Repeat until a soldier gives you information
		.' Reveal the "Crimson Dawn"|goal "Crimson Dawn" Revealed|q 12720/1
	step //63
		'Go northwest into the crypt to 54.3,57.3|goto 54.3,57.3
		.talk Prince Keleseth##28911
		..turnin How To Win Friends And Influence Enemies##12720
		..accept Behind Scarlet Lines##12723
	step //64
		goto 56.3,79.8
		.talk Orbaz Bloodbane##28914
		..turnin Behind Scarlet Lines##12723
		..accept The Path Of The Righteous Crusader##12724
	step //65
		goto 56.3,80.2
		.talk Thassarian##28913
		..accept Brothers In Death##12725
	step //66
		'Go northeast into Scarlet Hold and into the basement to 63.0,67.8|goto 63.0,67.8
		.talk Koltira Deathweaver##28912
		..turnin Brothers In Death##12725
		..accept Bloody Breakout##12727
	step //67
		'Koltira Deathweaver forms a bubble and you have to fight the mobs as the come in waves
		.' Stay inside the bubble, it reduces spell damage done to you, so you'll live
		.from High Inquisitor Valroth##29001
		.get Valroth's Head|q 12727/1
	step //68
		ding 57
	step //69
		'Go upstairs in the fort to 63.0,68.3|goto 63.0,68.3
		.' Click the New Avalon Patrol Schedule|tip It's a blue book sitting on the table.
		.get New Avalon Patrol Schedule|q 12724/1
	step //70
		goto 56.3,79.8
		.talk Orbaz Bloodbane##28914
		..turnin The Path Of The Righteous Crusader##12724
	step //71
		goto 56.3,80.2
		.talk Thassarian##28913
		..turnin Bloody Breakout##12727
		..accept A Cry For Vengeance!##12738
	step //72
		goto 52.9,81.5
		.talk Knight Commander Plaguefist##29053
		..turnin A Cry For Vengeance!##12738
		..accept A Special Surprise##12739 |only Tauren
		..accept A Special Surprise##12747 |only BloodElf
		..accept A Special Surprise##12748 |only Orc
		..accept A Special Surprise##12749 |only Troll
		..accept A Special Surprise##12750 |only Scourge
	step //73
		goto 54.5,83.9
		.kill Malar Bravehorn##29032|q 12739/1
		only Tauren
	step //74
		goto 53.8,83.8
		.kill Iggy Darktusk##29073|q 12749/1
		only Troll
	step //75
		goto 53.5,83.3
		.kill Antoine Brack##29071|q 12750/1
		only Scourge
	step //76
		goto 53.8,83.3
		.kill Kug Ironjaw##29072|q 12748/1
		only Orc
	step //77
		goto 54.3,83.3
		.kill Lady Eonys##29074|q 12747/1
		only BloodElf
	step //78
		goto 52.9,81.5
		.talk Knight Commander Plaguefist##29053
		..turnin A Special Surprise##12739 |only Tauren
		..turnin A Special Surprise##12747 |only BloodElf
		..turnin A Special Surprise##12748 |only Orc
		..turnin A Special Surprise##12749 |only Troll
		..turnin A Special Surprise##12750 |only Scourge
		..accept A Sort Of Homecoming##12751
	step //79
		goto 56.3,80.2
		.talk Thassarian##28913
		..turnin A Sort Of Homecoming##12751
	step //80
		goto 56.3,79.8
		.talk Orbaz Bloodbane##28914
		..accept Ambush At The Overlook##12754
	step //81
		goto 60,78.5
		.' Use your Makeshift Cover while standing on the edge of the hill|use Makeshift Cover##39645
		.from Scarlet Courier##29076
		.get Scarlet Courier's Belongings|q 12754/1
		.get Scarlet Courier's Message|q 12754/2
	step //82
		goto 56.3,79.8
		.talk Orbaz Bloodbane##28914
		..turnin Ambush At The Overlook##12754
		..accept A Meeting With Fate##12755
	step //83
		goto 65.6,83.8
		.talk High General Abbendis##29077
		..turnin A Meeting With Fate##12755
		..accept The Scarlet Onslaught Emerges##12756
	step //84
		goto 56.3,79.8
		.talk Orbaz Bloodbane##28914
		..turnin The Scarlet Onslaught Emerges##12756
		..accept Scarlet Armies Approach...##12757
	step //85
		'Click the Portal to Acherus to go to Ebon Hold|goto 50.2,32.6,0.5|noway|c
	step //86
		goto 48.9,29.7
		.talk Highlord Darion Mograine##28444
		..turnin Scarlet Armies Approach...##12757
		..accept The Scarlet Apocalypse##12778
	step //87
		goto 52.1,35|n
		.' Click the Scourge Gryphon to ride it down to Death's Breach|goto Plaguelands: The Scarlet Enclave,53.2,31.1,0.5|noway|c|tip Flying in place on the balcony with green souls rising from it.
	step //88
		goto 53.6,36.9
		.talk The Lich King##29110
		..turnin The Scarlet Apocalypse##12778
		..accept An End To All Things...##12779
	step //89
		'Click the Horn of the Frostbrood in your bags|use Horn of the Frostbrood##39700
		.' This will summon a dragon for you to ride around on
		.' Fly and and use your dragon abilities to do the following:
		.kill 150 Scarlet Soldiers|q 12779/1
		.' Destroy 10 Scarlet Ballistas|goal 10 Scarlet Ballista destroyed|q 12779/2
	step //90
		'Fly back to Death's Breach and jump off the dragon |script VehicleExit() |outvehicle |c
	step //91
		goto 53.6,36.9
		.talk The Lich King##29110
		..turnin An End To All Things...##12779
		..accept The Lich King's Command##12800
	step //92
		goto 50.4,31.9|n
		.' The path over to Browman Mill starts here|goto 50.4,31.9,0.5|noway|c
	step //93
		'Follow the path northwest to 33.9,30.4|goto 33.9,30.4
		.talk Scourge Commander Thalanor##31082
		..turnin The Lich King's Command##12800
		..accept The Light of Dawn##12801
	step //94
		goto 34.4,31.1
		.talk Highlord Darion Mograine##29173
		.' Tell him you are ready for the siege (you may be unable to do this if someone else already has, don't worry)
		.' Wait for the battle to start in 5 minutes
		.' Help fight the epic battle
		.' Uncover The Light of Dawn|goal The Light of Dawn Uncovered|q 12801/1
	step //95
		'Talk to Highlord Darion Mograine after the battle
		.turnin The Light of Dawn##12801
		.accept Taking Back Acherus##13165
	step //96
		'Use your new Death Gate spell and click the purple portal to go to Ebon Hold|goto Eastern Plaguelands,83.7,50.0,0.5|cast Death Gate|noway|c
	step //97
		goto 83.4,49.4
		.talk Highlord Darion Mograine##29173
		..turnin Taking Back Acherus##13165
		..accept The Battle For The Ebon Hold##13166
	step //98
		'Stand on the purple circle to teleport upstairs|goto 82.7,47.8,0.5|noway|c
	step //99
		goto 83,48
		.kill 10 Scourge|q 13166/2
		.kill Patchwerk##31099|q 13166/1
	step //100
		'Stand on the purple circle to teleport downstairs|goto 83.0,48.4,0.5|noway|c
	step //101
		goto 83.4,49.4
		.talk Highlord Darion Mograine##31084
		..turnin The Battle For The Ebon Hold##13166
		..accept Warchief's Blessing##13189
	step //102
		ding 58
	step //103
		'Click the Portal to Orgrimmar on the balcony|goto Durotar
	step //104
		'Go inside Orgrimmar|goto Orgrimmar
	step //105
		goto Orgrimmar,31.8,37.8
		.talk Thrall##4949
		..turnin Warchief's Blessing##13189
	step //106
		goto 47.6,65.7
		.talk Cenarion Emissary Blackhoof##15188
		..accept Taking Back Silithus##8276
	step //107
		'Fly to Everlook|goto Winterspring,60.5,36.3,0.1|noway|c
	step //108
		home Everlook
	step //109
		goto 61.3,39
		.talk Jessica Redpath##11629
		..accept Sister Pamela##5601
	step //110
		goto 60.9,37.6
		.talk Umi Rumplesnicker##10305
		..accept Are We There, Yeti? (1)##3783
	step //111
		goto 31.3,45.2
		.talk Donova Snowden##9298
		..accept Threat of the Winterfall##5082
	step //112
		goto 39.2,43.5
		.kill 8 Winterfall Totemic|q 5082/3
		.kill 8 Winterfall Den Watcher|q 5082/2
		.kill 8 Winterfall Pathfinder|q 5082/1
		.' Get an Empty Firewater Flask
		.' Click the Empty Firewater Flask in your bags|use Empty Firewater Flask##12771
		..accept Winterfall Firewater##5083
	step //113
		goto 31.3,45.2
		.talk Donova Snowden##9298
		..turnin Winterfall Firewater##5083
		..turnin Threat of the Winterfall##5082
	step //114
		goto 64.7,41.6
		.from Ice Thistle Yeti##7458, Ice Thistle Matriarch##7459, Ice Thistle Patriarch##7460
		.get 10 Thick Yeti Fur|q 3783/1
	step //115
		goto 60.9,37.6
		.talk Umi Rumplesnicker##10305
		..turnin Are We There, Yeti? (1)##3783
		..accept Are We There. Yeti? (2)##977
	step //116
		goto 67.6,41.7
		.from Ice Thistle Matriarch##7459, Ice Thistle Patriarch##7460
		.get 2 Pristine Yeti Horn|q 977/1
	step //117
		goto 60.9,37.6
		.talk Umi Rumplesnicker##10305
		..turnin Are We There. Yeti? (2)##977
		..accept Are We There, Yeti? (3)##5163
	step //118
		goto 61.5,38.6
		.' Use Umi's Mechanical Yeti on Legacki|use Umi's Mechanical Yeti##12928
		goal Scare Legacki|q 5163/1
		info Standing next to a table with a bunch of tools on it, under a blue canopy
	step //119
		'Fly to Gadgetzan|goto Tanaris,51.6,25.5,0.1|noway|c
	step //120
		goto Tanaris,51.1,26.9
		.' Use Umi's Mechanical Yeti on Sprinkle|use Umi's Mechanical Yeti##12928
		goal Scare Sprinkle|q 5163/2
		info Standing next to a small cart
	step //121
		'Fly to Marshal's Refuge|goto Un'Goro Crater,45.3,6.0,0.1|noway|c
	step //122
		goto Un'Goro Crater,43.7,9.4
		.' Use Umi's Mechanical Yeti on Quixxle|use Umi's Mechanical Yeti##12928
		goal Scare Quixxil|q 5163/3
		info Standing next to some trees.
	step //123
		'Fly to Cenarion Hold|goto Silithus,50.4,36.5,3
	step //124
		goto 51.2,38.3
		.talk Windcaller Proudhorn##15191
		..turnin Taking Back Silithus##8276
		..accept Securing the Supply Lines##8280
	step //125
		goto 51.7,38.6
		.talk Beetix Ficklespragg##15189
		..accept Deadly Desert Venom##8277
	step //126
		home Cenarion Hold
	step //127
		goto 49.7,37.5
		.talk Geologist Larksbane##15183
		..accept The Twilight Mystery##8284
	step //128
		goto 54,31
		.kill 15 Dredge Striker|q 8280/1
		.from Stonelash Scorpid##11735
		.get 8 Stonelash Scorpid Stinger|q 8277/1
		.from Sand Skitterer##11738
		.get 8 Sand Skitterer Fang|q 8277/2
	step //129
		goto 25,10
		.' Click Twilight Tablet Fragments
		.get 8 Twilight Tablet Fragment|q 8284/1
		info They look like little blue glowing fragments on the ground around this area.
	step //130
		'Hearth to Cenarion Hold|goto Silithus,51.9,39.2,0.1|use hearthstone##6948|noway|c
	step //131
		goto 51.7,38.6
		.talk Beetix Ficklespragg##15189
		..turnin Deadly Desert Venom##8277
		..accept Noggle's Last Hope##8278
	step //132
		goto 51.2,38.3
		.talk Windcaller Proudhorn##15191
		..turnin Securing the Supply Lines##8280
		..accept Stepping Up Security##8281
	step //133
		goto 49.7,37.5
		.talk Geologist Larksbane##15183
		..turnin The Twilight Mystery##8284
		..accept The Deserter##8285
	step //134
		goto 55,60
		.kill 20 Dredge Crusher|q 8281/1
		.from Stonelash Pincer##11736
		.get 3 Stonelash Pincer Stinger|q 8278/2
	step //135
		goto 67.2,69.8
		.talk Hermit Ortell##15194
		..turnin The Deserter##8285
	step //136
		goto 65.1,70.7
		.from Stonelash Flayer##11737
		.get 3 Stonelash Flayer Stinger|q 8278/1
		.from Rock Stalker##11739
		.get 3 Rock Stalker Fang|q 8278/3
		.' You can find more Stonelash Flayers and Rock Stalkers at 46.2,70.2|n
	step //137
		goto 51.2,38.3
		.talk Windcaller Proudhorn##15191
		..turnin Stepping Up Security##8281
	step //138
		goto 51.7,38.6
		.talk Beetix Ficklespragg##15189
		..turnin Noggle's Last Hope##8278
	step //139
		'Fly to Orgrimmar|goto Orgrimmar
	step //140
		goto Orgrimmar,43,38.4
		.talk Warcaller Gorlach##10880
		..accept A Call to Arms: The Plaguelands!##5093
	step //141
		'Go outside to Durotar|goto Durotar
	step //142
		goto Durotar,50.8,13.3|n
		.' Ride the zeppelin to Undercity|goto Tirisfal Glades|noway|c
		info You can ride zeppelins to either Undercity or the Grom'Gol Base Camp here
	step //143
		'Go south to Undercity|goto Undercity
	step //144
		home Undercity
	step //145
		'Go outside to Tirisfal Glades|goto Tirisfal Glades
	step //146
		goto Tirisfal Glades,83.57,69.95
		.talk Timothy Cunningham##37915
		..fpath The Bulwark
	step //147
		goto Tirisfal Glades,83.1,68.9
		.talk High Executor Derrington##10837
		..turnin A Call to Arms: The Plaguelands!##5093
		..accept Scarlet Diversions##5096
		.' Click the Box of Incendiaries on the ground
		.collect Flame in a Bottle##12814|q 5096
	step //148
		'Go east to the Western Plaguelands|goto Western Plaguelands
	step //149
		goto 38.4,54.1
		.talk Janice Felstone##10778
		..accept Better Late Than Never (1)##5021
	step //150
		'Go south inside the barn to 39,55|goto 38.7,55.3
		.' Click Janice's Parcel
		..turnin Better Late Than Never (1)##5021
		.' Click Janice's Parcel again
		..accept Better Late Than Never (2)##5023
		info It's a brown package on the floor inside the barn, next to the wall as you enter.
	step //151
		goto 40.7,51.9
		.' Click the Command Tent
		.' Burn the Command Tent
		.' Click the Scourge Banner in your bags|use Scourge Banner##12807
		.' Plant the Scourge Banner in the camp
		.goal Destroy the command tent and plant the Scourge banner in the camp|q 5096/1
		info It's a white tent.
	step //152
		'Go west to Tirisfal Glades|goto Tirisfal Glades
	step //153
		goto Tirisfal Glades,83.1,68.9
		.talk High Executor Derrington##10837
		..turnin Scarlet Diversions##5096
		..accept All Along the Watchtowers##5098
		..accept The Scourge Cauldrons##5228
	step //154
		goto 83,71.9
		.talk Shadow Priestess Vandis##11055
		..turnin The Scourge Cauldrons##5228
		..accept Target: Felstone Field##5229
	step //155
		'Go east to the Western Plaguelands|goto Western Plaguelands
	step //156
		goto 37,57.2
		.from Cauldron Lord Bilemaw##11075
		.get his Felstone Field Cauldron Key|n
		.' Click the Scourge Cauldron
		..turnin Target: Felstone Field##5229
		..accept Return to the Bulwark##5230
	step //157
		'Go west to Tirisfal Glades|goto Tirisfal Glades
	step //158
		goto Tirisfal Glades,83,71.9
		.talk Shadow Priestess Vandis##11055
		..turnin Return to the Bulwark##5230
		..accept Target: Dalson's Tears##5231
	step //159
		ding 59
	step //160
		'Go east to the Western Plaguelands|goto Western Plaguelands
	step //161
		goto Western Plaguelands,46.2,52.5
		.from Cauldron Lord Malvinious##11077
		.get his Dalson's Tears Cauldron Key|n
		.' Click the Scourge Cauldron
		..turnin Target: Dalson's Tears##5231
		..accept Return to the Bulwark##5232
	step //162
		'Go west to Tirisfal Glades|goto Tirisfal Glades
	step //163
		goto Tirisfal Glades,83,71.9
		.talk Shadow Priestess Vandis##11055
		..turnin Return to the Bulwark##5232
		..accept Target: Writhing Haunt##5233
	step //164
		'Go east to the Western Plaguelands|goto Western Plaguelands
	step //165
		goto 53,66
		.from Cauldron Lord Razarch##11076
		.get his Writhing Haunt Cauldron Key|n
		.' Click the Scourge Cauldron
		..turnin Target: Writhing Haunt##5233
		..accept Return to the Bulwark##5234
	step //166
		goto 53.7,64.7
		.talk Mulgris Deepriver##10739
		..accept The Wildlife Suffers Too (1)##4984
	step //167
		'Go northwest to Tirisfal Glades|goto Tirisfal Glades
	step //168
		goto Tirisfal Glades,83,71.9
		.talk Shadow Priestess Vandis##11055
		..turnin Return to the Bulwark##5234
		..accept Target: Gahrron's Withering##5235
	step //169
		'Go east to the Western Plaguelands|goto Western Plaguelands
	step //170
		goto 62.6,58.9
		.from Cauldron Lord Soulwrath##11078
		.get his Gahrron's Withering Cauldron Key|n
		.' Click the Scourge Cauldron
		..turnin Target: Gahrron's Withering##5235
		..accept Return to the Bulwark##5236
	step //171
		'Go west to Tirisfal Glades|goto Tirisfal Glades
	step //172
		goto Tirisfal Glades,83,71.9
		.talk Shadow Priestess Vandis##11055
		..turnin Return to the Bulwark##5236
	step //173
		goto 83.1,68.9
		.talk High Executor Derrington##10837
		..accept Mission Accomplished!##5237 |instant
	step //174
		'Go east to the Western Plaguelands|goto Western Plaguelands
	step //175
		goto Western Plaguelands,69.26,49.66
		.talk Frax Bucketdrop##37888
		..fpath Thondroril River
	step //176
		'Go east to the Eastern Plaguelands|goto Eastern Plaguelands
	step //177
		'Go north up the coast to 4.7,38.3|goto 4.7,38.3
		.talk Tirion Fordring##1855
		..accept Demon Dogs##5542
		..accept Blood Tinged Skies##5543
		..accept Carrion Grubbage##5544
	step //178
		goto 23.0,68.2
		.talk Nathanos Blightcaller##11878
		..accept Un-Life's Little Annoyances##6042
	step //179
		goto 25.1,63.1
		.kill 30 Plaguebat|q 5543/1
		.kill 20 Plaguehound Runt|q 5542/1
		.from Carrion Grub##8603
		.get 15 Slab of Carrion Worm Meat|q 5544/1
	step //180
		goto 32.4,83.7
		.talk Pamela Redpath##10926
		..turnin Sister Pamela##5601
		..accept Pamela's Doll##5149
	step //181
		goto 35.0,84.3
		.' The doll parts spawn in the house here, except the house Pamela is in
		.get Pamela's Doll's Head|n
		.get Pamela's Doll's Left Side|n
		.get Pamela's Doll's Right Side|n
		.' Click Pamela's Doll's Head to put the doll parts together to make Pamela's Doll|goal Pamela's Doll|q 5149/1|use Pamela's Doll's Head##12886
	step //182
		goto 32.4,83.7
		.talk Pamela Redpath##10926
		..turnin Pamela's Doll##5149
		..accept Auntie Marlene##5152
		..accept Uncle Carlin##5241
	step //183
		goto 46.5,57.9
		.kill 5 Plaguehound|q 5542/2
		.kill 20 Noxious Plaguebat|q 6042/1
	step //184
		goto 75.7,53.8
		.talk Carlin Redpath##11063
		..turnin Uncle Carlin##5241
		..accept Defenders of Darrowshire##5211
	step //185
		goto 58.3,38.4
		.kill 10 Monstrous Plaguebat|q 6042/2
		.kill 5 Frenzied Plaguehound|q 5542/3
	step //186
		goto 61.4,36.7
		.from Diseased Flayer##8532
		.talk Darrowshire Spirit##11064
		.' Free 15 Darrowshire spirits|goal 15 Darrowshire Spirits Freed|q 5211/1
	step //187
		'Hearth to Undercity|goto Undercity|use hearthstone##6948|noway|c
	step //188
		goto Undercity,69.8,43.1
		.talk Royal Overseer Bauhaus##10781
		..turnin Better Late Than Never (2)##5023
		..accept The Jeremiah Blues##5049
	step //189
		goto 67.6,44.1
		.talk Jeremiah Payson##8403
		..turnin The Jeremiah Blues##5049
		..accept Good Luck Charm##5050
	step //190
		'Go outside of Undercity|goto Tirisfal Glades
	step //191
		'Go east to the Western Plaguelands|goto Western Plaguelands
	step //192
		goto Western Plaguelands,38.4,54.1
		.talk Janice Felstone##10778
		..turnin Good Luck Charm##5050
		..accept Two Halves Become One##5051
	step //193
		goto 37.8,55.8
		.from Jabbering Ghoul##10801
		.get the Good Luck Other-Half Charm|n
		.' Click the Good Luck Other-Half Charm in your bags|use Good Luck Other-Half-Charm##12722
		.get Good Luck Charm|q 5051/1
	step //194
		goto 38.4,54.1
		.talk Janice Felstone##10778
		..turnin Two Halves Become One##5051
	step //195
		goto 42.8,55.4
		.kill 8 Diseased Wolf|q 4984/1 |tip The wolves in this area share a respawn with the spiders so killing them as well will spawn wolves faster.
		..'You can also find more wolves at 45.6,47.4 |n
	step //196
		goto 53.7,64.7
		.talk Mulgris Deepriver##10739
		..turnin The Wildlife Suffers Too (1)##4984
		..accept The Wildlife Suffers Too (2)##4985
	step //197
		goto 58,61
		.kill 8 Diseased Grizzly|q 4985/1
	step //198
		goto 53.7,64.7
		.talk Mulgris Deepriver##10739
		..turnin The Wildlife Suffers Too (2)##4985
	step //199
		goto 48.9,78.4
		.talk Marlene Redpath##10927
		..turnin Auntie Marlene##5152
		..accept A Strange Historian##5153
	step //200
		goto 49.7,76.8
		.' Click Joseph Redpath's Monument
		.get Joseph's Wedding Ring|q 5153/1
		info It's a squarish stone gravestone with a gold plaque on it. It's a lighter color than all the other graves.
	step //201
		goto 46.7,71
		.' Use your Beacon Torch near the tower entrance|use Beacon Torch##12815
		.' Mark Tower Four|goal Tower Four marked|q 5098/4
	step //202
		goto 40.1,71.5
		.' Use your Beacon Torch near the tower entrance|use Beacon Torch##12815
		.' Mark Tower One|goal Tower One marked|q 5098/1
	step //203
		goto 39.5,66.8
		.talk Chromie##10667
		..turnin A Strange Historian##5153
	step //204
		goto 42.3,66.2
		.' Use your Beacon Torch near the tower entrance|use Beacon Torch##12815
		.' Mark Tower Two|goal Tower Two marked|q 5098/2
	step //205
		goto 44.3,63.4
		.' Use your Beacon Torch near the tower entrance|use Beacon Torch##12815
		.' Mark Tower Three|goal Tower Three marked|q 5098/3
	step //206
		'Go northeast to the Eastern Plaguelands|goto Eastern Plaguelands
	step //207
		'Go north up the coast to 5,38|goto 4.7,38.3
		.talk Tirion Fordring##1855
		..turnin Demon Dogs##5542
		..turnin Blood Tinged Skies##5543
		..turnin Carrion Grubbage##5544
		..accept Redemption##5742
		..'Listen to his story
		..turnin Redemption##5742
	step //208
		goto 23.0,68.2
		.talk Nathanos Blightcaller##11878
		..turnin Un-Life's Little Annoyances##6042
	step //209
		goto 75.7,53.8
		.talk Carlin Redpath##11063
		..turnin Defenders of Darrowshire##5211
	step //210
		'Fly to Undercity|goto Undercity
	step //211
		'Go outside of Undercity|goto Tirisfal Glades
	step //212
		goto Tirisfal Glades,83.1,68.9
		.talk High Executor Derrington##10837
		..turnin All Along the Watchtowers##5098
		..accept Scholomance##838
	step //213
		goto 83.3,69.2
		.talk Apothecary Dithers##11057
		..turnin Scholomance##838
	step //214
		goto 60.8,58.8|n
		.' Ride the zeppelin to Orgrimmar|goto Durotar|noway|c
		info You can ride this zeppelin to Orgrimmar or Grom'Gol Base Camp
	step //215
		'Go northwest to Orgrimmar|goto Orgrimmar
	step //216
		'Fly to Everlook|goto Winterspring,60.5,36.3,0.1|noway|c
	step //217
		goto Winterspring,60.9,37.6
		.talk Umi Rumplesnicker##10305
		..turnin Are We There. Yeti? (3)##5163
	step //218
		'Fly to Orgrimmar|goto Orgrimmar
	step //219
		goto Durotar,51,14|n
		.' Ride the zeppelin to Undercity|goto Tirisfal Glades|noway|c
	step //220
		'Go to Undercity|goto Undercity
	step //221
		goto Undercity,85.3,17.0|n
		.'Click the Portal to Blasted Lands|goto Blasted Lands|noway|c
	step //222
		ding 60
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Main Guide (13-20)",[[
	author support@zygorguides.com
	next Zygor's Horde Leveling Guides\\Levels (20-25)
	startlevel 13
	step //1
		goto The Barrens,62.3,19.4
		.talk Kargal Battlescar##3337
		..turnin Conscript of the Horde##840
		..accept Crossroads Conscription##842
	step //2
		goto 62.3,20.1
		.talk Ak'Zeloth##3521
		..turnin Ak'Zeloth##809
		only Orc,Troll
	step //3
		goto 52.6,29.8
		.talk Zargh##3489
		..accept Meats to Orgrimmar##6365
		only Orc,Troll
	step //4
		goto 51.9,30.3
		.talk Gazrog##3464
		..accept Raptor Thieves##869
	step //5
		home the Crossroads
	step //6
		goto 51.5,30.3
		.talk Devrak##3615
		..fpath Crossroads
	step //7
		goto 51.5,30.3
		.talk Devrak##3615
		..turnin Meats to Orgrimmar##6365
		..accept Ride to Orgrimmar##6384
		only Orc,Troll
	step //8
		goto 51.4,30.2
		.talk Apothecary Helbrim##3390
		..accept Wharfmaster Dizzywig##1492
		..accept Fungal Spores##848
	step //9
		'Fly to Orgrimmar|goto Orgrimmar
		only Orc,Troll
	step //10
		goto Orgrimmar,54.1,68.4
		.talk Innkeeper Gryshka##6929
		..turnin Ride to Orgrimmar##6384
		..accept Doras the Wind Rider Master##6385
		only Orc,Troll
	step //11
		goto 45.1,63.9
		.talk Doras##3310
		..turnin Doras the Wind Rider Master##6385
		..accept Return to the Crossroads.##6386
		only Orc,Troll
	step //12
		'Fly to the Crossroads|goto The Barrens,51.5,30.4,0.1|noway|c
		only Orc,Troll
	step //13
		goto The Barrens,51.5,30.9
		.talk Thork##3429
		..accept Disrupt the Attacks##871
		..accept Supplies for the Crossroads##5041
	step //14
		goto 51.6,30.9
		.talk Darsok Swiftdagger##3449
		..accept Harpy Raiders##867
	step //15
		goto 52.2,31
		.talk Sergra Darkthorn##3338
		..turnin Crossroads Conscription##842
		..accept Plainstrider Menace##844
	step //16
		goto 52.3,31.9
		.talk Tonga Runetotem##3448
		..accept The Forgotten Pools##870
	step //17
		goto 52.6,29.8
		.talk Zargh##3489
		..turnin Return to the Crossroads.##6386
		only Orc,Troll
	step //18
		goto 53.3,29.1
		.' Kill Plainstriders
		.get 7 Plainstrider Beak|q 844/1
	step //19
		goto 54.2,25.3
		.kill 8 Razormane Water Seeker|q 871/1
		.kill 8 Razormane Thornweaver|q 871/2
		.kill 3 Razormane Hunter|q 871/3
	step //20
		goto 59.2,24.4
		.' Click the Crossroads' Supply Crates |tip They look like a pile of brown boxes.
		.get 1 Crossroads' Supply Crates|q 5041/1
	step //21
		goto 52.7,16.5
		.kill raptors|n
		.get 12 Raptor Head|q 869/1
		info You can find raptors scattered all around, there's not really any specific spot where a lot of low level raptors are.
	step //22
		ding 14
	step //23
		'Hearth to the Crossroads|goto The Barrens,52.0,29.9,0.1|use hearthstone##6948|noway|c
	step //24
		'Fly to Thunder Bluff|goto Thunder Bluff
		only Tauren Druid
	step //25
		goto Thunder Bluff,76,27
		.talk Turak Runetotem##3033
		..accept Lessons Anew##6126
		only Tauren Druid
	step //26
		'Remember, you have the spell Teleport: Moonglade
		.' Teleport to Moonglade|goto Moonglade|cast Teleport: Moonglade|noway|c
		only Tauren Druid
	step //27
		goto Moonglade,56.4,30.5
		.talk Dendrite Starblaze##11802
		..turnin Lessons Anew##6126
		..accept The Principal Source##6127
		only Tauren Druid
	step //28
		goto 44.3,45.9
		.talk Bunthen Plainswind##11798
		..'Fly to Thunder Bluff|goto Thunder Bluff|noway|c
		only Tauren Druid
	step //29
		'Buy the following from the Auction House:
		.buy 5 Earthroot|q 6128/1
		only Tauren Druid
	step //30
		'Fly to the Crossroads|goto The Barrens,51.5,30.4,0.1|noway|c
		only Tauren Druid
	step //31
		goto The Barrens,47.4,16.1|n
		.' The path up to 'The Principal Source' starts here|goto The Barrens,47.4,16.1,0.5|noway|c
		only Tauren Druid
	step //32
		'Go up the hill to 48,19|goto 48.4,18.9
		.' Use your Empty Dreadmist Peak Sampler while standing in the bubbling water pool|use Empty Dreadmist Peak Sampler##15842
		.get Filled Dreadmist Peak Sampler|q 6127/1
		only Tauren Druid
	step //33
		goto 52.3,31.9
		.talk Tonga Runetotem##3448
		..turnin The Principal Source##6127
		..accept Gathering the Cure##6128
		only Tauren Druid
	step //34
		'Find and kill 5 Lost Barrens Kodos around the Barrens
		.' They seem to be walking around randomly, so you may need to search a bit
		.get 5 Kodo Horn|q 6128/2
		only Tauren Druid
	step //35
		goto 52.3,31.9
		.talk Tonga Runetotem##3448
		..turnin Gathering the Cure##6128
		..accept Curing the Sick##6129
		only Tauren Druid
	step //36
		'Find 10 Sickly Gazelles in the Barrens
		.' They are random, so you will need to search around for them
		.' Use your Curative Animal Salve on them|use Curative Animal Salve##15826
		.' Cure 10 Sickly Gazelles|goal 10 Sickly Gazelle cured|q 6129/1
		only Tauren Druid
	step //37
		'Teleport to Moonglade|goto Moonglade|cast Teleport: Moonglade|noway|c
		only Tauren Druid
	step //38
		goto Moonglade,56.4,30.5
		.talk Dendrite Starblaze##11802
		..turnin Curing the Sick##6129
		..accept Power over Poison##6130
		only Tauren Druid
	step //39
		goto 44.3,45.9
		.talk Bunthen Plainswind##11798
		..'Fly to Thunder Bluff|goto Thunder Bluff|noway|c
		only Tauren Druid
	step //40
		goto Thunder Bluff,76.4,27.3
		.talk Turak Runetotem##3033
		..turnin Power over Poison##6130
		only Tauren Druid
		info2 He is the Druid Class Trainer
	step //41
		'Fly to the Crossroads|goto The Barrens,51.5,30.4,0.1|noway|c
		only Tauren Druid
	step //42
		goto The Barrens,51.9,30.3
		.talk Gazrog##3464
		..turnin Raptor Thieves##869
		..accept Stolen Silver##3281
	step //43
		goto 51.5,30.9
		.talk Thork##3429
		..turnin Disrupt the Attacks##871
		..turnin Supplies for the Crossroads##5041
		..accept The Disruption Ends##872
	step //44
		goto 52.2,31
		.talk Sergra Darkthorn##3338
		..turnin Plainstrider Menace##844
		..accept The Zhevra##845
	step //45
		goto 52,31.6
		.talk Mankrik##3432
		..accept Consumed by Hatred##899
		..accept Lost in Battle##4921
	step //46
		goto 45.3,28.4
		.talk Regthar Deathgate##3389
		..accept Centaur Bracers##855
		..accept Kolkar Leaders##850
	step //47
		goto 46,27.2
		.' Kill zhevras
		.get 4 Zhevra Hooves|q 845/1
	step //48
		goto 45.3,22.9
		.' Click the Laden Mushrooms |tip They look like big blue mushrooms around the lake.
		.get 4 Fungal Spores|q 848/1
		.' Swim underwater to the bubbles
		.' Explore the waters of the Forgotten Pools|goal Explore the waters of the Forgotten Pools|q 870/1
	step //49
		goto 42.6,23.4
		.' Kill Barak Kodobane
		.get Barak's Head|q 850/1
	step //50
		goto 46.1,26
		.' Kill centaurs
		.get 15 Centaur Bracers|q 855/1
	step //51
		goto 40.7,19.7
		.' Kill harpies
		.get 8 Witchwing Talon|q 867/1
	step //52
		'Hearth to the Crossroads|goto The Barrens,52.0,29.9,0.1|use hearthstone##6948|noway|c
	step //53
		goto 51.4,30.2
		.talk Apothecary Helbrim##3390
		..turnin Fungal Spores##848
	step //54
		goto 51.6,30.9
		.talk Darsok Swiftdagger##3449
		..turnin Harpy Raiders##867
		..accept Harpy Lieutenants##875
	step //55
		goto 52.3,31.9
		.talk Tonga Runetotem##3448
		..turnin The Forgotten Pools##870
		..accept The Stagnant Oasis##877
	step //56
		goto 52.2,31
		.talk Sergra Darkthorn##3338
		..turnin The Zhevra##845
		..accept Prowlers of the Barrens##903
	step //57
		ding 15
	step //58
		goto 56.4,24.2
		.kill 8 Razormane Geomancer|q 872/1
		.kill 8 Razormane Defender|q 872/2
	step //59
		goto 58.8,26.9
		.' Kill Kreenig Snarlsnout
		.get Kreenig Snarlsnout's Tusk|q 872/3
		info Kreenig Snarlsnout walks around this area.
	step //60
		goto 62.7,36.2
		.talk Gazlowe##3391
		..accept Southsea Freebooters##887
	step //61
		goto 63.1,37.2
		.talk Bragok##16227
		..fpath Ratchet
	step //62
		goto 63,37.2
		.talk Sputtervalve##3442
		..accept Samophlange (1)##894
	step //63
		goto 62.6,37.5
		.' Click the Wanted Poster
		..accept WANTED: Baron Longshore##895
		info Hanging on the wall next to a blue canopy.
	step //64
		goto 62.4,37.6
		.talk Mebok Mizzyrix##3446
		..accept Raptor Horns##865
		..accept Deepmoss Spider Eggs##1069
	step //65
		goto 63.4,38.5
		.talk Wharfmaster Dizzywig##3453
		..turnin Wharfmaster Dizzywig##1492
		..accept Miner's Fortune##896
	step //66
		goto 62.3,39
		.talk Captain Thalo'thas Brightsun##3339
		..accept The Guns of Northwatch##891
	step //67
		goto 63.7,43.5
		.kill 12 Southsea Brigand|q 887/1
		.kill 6 Southsea Cannoneer|q 887/2
	step //68
		goto 63.3,49.7
		.' He spawns randomly in the camps around this area
		.' Kill Baron Longshore
		.get Baron Longshore's Head|q 895/1
	step //69
		goto The Barrens,62.7,36.2
		.talk Gazlowe##3391
		..turnin Southsea Freebooters##887
		..accept The Missing Shipment (1)##890
		..turnin WANTED: Baron Longshore##895
	step //70
		goto 63.4,38.5
		.talk Wharfmaster Dizzywig##3453
		..turnin The Missing Shipment (1)##890
		..accept The Missing Shipment (2)##892
	step //71
		goto 62.7,36.2
		.talk Gazlowe##3391
		..turnin The Missing Shipment (2)##892
		..accept Stolen Booty##888
	step //72
		goto 63.6,49.3
		.' Click the Fragile - Do NOT Drop box
		.get Telescopic Lens|q 888/2
		info It looks like a wooden crate sitting next to a campfire.
	step //73
		goto 62.6,49.6
		.' Click the Drizzlik's Emporium box
		.get Shipment of Boots|q 888/1
		info It looks like a wooden crate sitting next to a tent.
	step //74
		goto 62.7,36.2
		.talk Gazlowe##3391
		..turnin Stolen Booty##888
	step //75
		'Fly to the Crossroads|goto The Barrens,51.5,30.4,0.1|noway|c
	step //76
		goto 51.5,30.9
		.talk Thork##3429
		..turnin The Disruption Ends##872
	step //77
		goto 45.3,28.4
		.talk Regthar Deathgate##3389
		..turnin Kolkar Leaders##850
		..turnin Centaur Bracers##855
		..accept Verog the Dervish##851
	step //78
		goto 35.2,27.8
		.talk Seereth Stonebreak##4049
		..accept Goblin Invaders##1062
		.talk Makaba Flathoof##11857
		..accept Avenge My Village##6548
	step //79
		'Go west to Stonetalon Mountains|goto Stonetalon Mountains
	step //80
		goto Stonetalon Mountains,80.6,90.3
		.kill 8 Grimtotem Ruffian|q 6548/1
		.kill 6 Grimtotem Mercenary|q 6548/2
	step //81
		'Go southeast to the Barrens|goto The Barrens
	step //82
		goto The Barrens,35.2,27.8
		.talk Makaba Flathoof##11857
		..turnin Avenge My Village##6548
		..accept Kill Grundig Darkcloud##6629
	step //83
		'Go west to Stonetalon Mountains|goto Stonetalon Mountains
	step //84
		goto Stonetalon Mountains,71.5,88
		.kill 6 Grimtotem Brute|q 6629/2
	step //85
		goto 73.7,86.1
		.kill 1 Grundig Darkcloud|q 6629/1
		info He's standing on the steps of a teepee.
	step //86
		'Go southeast to the Barrens|goto The Barrens
	step //87
		goto The Barrens,35.2,27.8
		.talk Makaba Flathoof##11857
		..turnin Kill Grundig Darkcloud##6629
	step //88
		ding 16
	step //89
		'Hearth to the Crossroads|goto The Barrens,52.0,29.9,0.5|use hearthstone##6948|noway|c
	step //90
		'Fly to Thunder Bluff|goto Thunder Bluff
		only Tauren Druid
	step //91
		goto Thunder Bluff,76.4,27.3
		.talk Turak Runetotem##3033
		..accept A Lesson to Learn##26
		only Tauren Druid
		info2 He is the Druid Class Trainer
	step //92
		'Teleport to Moonglade|goto Moonglade|cast Teleport: Moonglade|noway|c
		only Tauren Druid
	step //93
		goto Moonglade,56.4,30.5
		.talk Dendrite Starblaze##11802
		..turnin A Lesson to Learn##26
		..accept Trial of the Lake##28
		only Tauren Druid
	step //94
		'Go south in the lake to 58,58|goto 57.6,57.8
		.' Click the Bauble Container underwater
		..' They spawn randomly, so you may have to search around the lake for another Bauble container
		.collect 1 Shrine Bauble##15877|q 28
		only Tauren Druid
		info It looks like a wooden vase thing underwater on top of a big hill.
	step //95
		goto 36.1,41.6
		.' Use the Shrine Bauble in your bags next to the tree that looks like a woman|use Shrine Bauble##15877
		.' Complete the Trial of the Lake|goal Complete the Trial of the Lake|q 28/1
		only Tauren Druid
	step //96
		goto 36.5,41.8
		.talk Tajarri##11799
		..turnin Trial of the Lake##28
		..accept Trial of the Sea Lion##30
		only Tauren Druid
	step //97
		goto 44.3,45.9
		.talk Bunthen Plainswind##11798
		..'Fly to Thunder Bluff|goto Thunder Bluff|noway|c
		only Tauren Druid
	step //98
		'Fly to the Crossroads|goto The Barrens,51.5,30.4,0.1|noway|c
		only Tauren Druid
	step //99
		goto The Barrens,56.7,8.3
		.' Click the Strong Lockbox underwater
		.collect 1 Half Pendant of Aquatic Agility##15883|q 30
		only Tauren Druid
	step //100
		'Go to the Crossroads and fly to Orgrimmar|goto Orgrimmar
		only Tauren Druid
	step //101
		'Go outside to Durotar|goto Durotar
		only Tauren Druid
	step //102
		goto Durotar,51,14
		.' Ride the zeppelin to Undercity|goto Tirisfal Glades|noway|c
		only Tauren Druid
	step //103
		'Go southwest to Silverpine Forest|goto Silverpine Forest
		only Tauren Druid
	step //104
		'Go west into the Great Sea|goto Eastern Kingdoms
		only Tauren Druid
	step //105
		goto Eastern Kingdoms,39,38
		.' Click the Strong Lockbox underwater
		.collect 1 Half Pendant of Aquatic Endurance##15882|q 30
		only Tauren Druid
	step //106
		'Teleport to Moonglade|goto Moonglade|cast Teleport: Moonglade|noway|c
		only Tauren Druid
	step //107
		goto Moonglade,36.1,41.6
		.' Stand next to the tree that looks like a woman
		.' Click the Half Pendant of Aquatic Agility in your bags|use Half Pendant of Aquatic Agility##15883
		.get Pendant of the Sea Lion|q 30/1
		only Tauren Druid
	step //108
		goto 56.4,30.5
		.talk Dendrite Starblaze##11802
		..turnin Trial of the Sea Lion##30
		..accept Aquatic Form##31
		only Tauren Druid
	step //109
		goto 44.3,45.9
		.talk Bunthen Plainswind##11798
		..'Fly to Thunder Bluff|goto Thunder Bluff|noway|c
		only Tauren Druid
	step //110
		goto Thunder Bluff,76,27
		.talk Turak Runetotem##3033
		..turnin Aquatic Form##31
		only Tauren Druid
	step //111
		Fly to Orgrimmar|goto Orgrimmar
		//'Fly to Ratchet|goto The Barrens,63.1,37.1,0.1|noway|c
	step //112
		goto Durotar,51,14|n
		.' Ride the zeppelin to Undercity|goto Tirisfal Glades|noway|c
	step //113
		goto Undercity,48.8,69.3
		.talk Master Apothecary Faranell##2055
		..accept A Recipe For Death (2)##450
	step //114
		Fly to the Sepulcher|goto Silverpine Forest,45,42,0.5|noway
	step //115
		goto 44.2,39.8
		.talk Dalar Dawnweaver##1938
		..accept Arugal's Folly (1)##422
	step //116
		goto 44.0,40.9
		.talk Shadow Priest Allister##2121
		..accept Border Crossings##477
	step //117
		goto 43.2,41.3
		.talk Innkeeper Bates##6739
		.home The Sepulcher
	step //118
		'Go inside the crypt to 43.4,40.9|goto 43.4,40.9
		.talk High Executor Hadrec##1952
		..accept The Decrepit Ferry##438
	step //119
		goto 52.8,28.5
		.' Go inside of the house and up the stairs and click on the Dusty Spellbooks.
		.get Remedy of Arugal##3155 |q 422/1
	step //120
		goto 58.4,34.8
		.' Click the Corpse Laden Boat
		.turnin The Decrepit Ferry##438
		..accept Rot Hide Clues##439
	step //121
		goto 44.2,39.8
		.talk Dalar Dawnweaver##1938
		..turnin Arugal's Folly (1)##422
		..accept Arugal's Folly (2)##423
	step //122
		'Go inside the crypt to 43.4,40.9|goto 43.4,40.9
		.talk High Executor Hadrec##1952
		..turnin Rot Hide Clues##439
		..accept Rot Hide Ichor##443
	step //123
		goto 65.8,29.4
		.kill Rot Hide Gnolls|n
		..get 8 Rot Hide Ichor|q 443/1
	step //124
		goto 54.7,48.4
		.kill Moonrage Gluttons|n
		.get 6 Glutton Shackle|q 423/1
	step //125
		Go inside the mine at 56.5,46.0
		.kill Moonrage Darksouls|n
		.get 3 Darksoul Shackle|q 423/2
	step //126
		Leave the mine|goto 56.5,46.0,0.5
	step //127
		goto 49.9,60.5
		.' Click the Dalaran Crate
		..turnin Border Crossings##477
		..accept Maps and Runes##478
	step //128
		goto 43.0,73.3
		.' Click Berard's Bookshelf
		.get Berard's Journal|q 450/1
	step //129
		ding 17
	step //130
		Hearth to the Sepulcher|goto 43.2,41.4|use hearthstone##6948|noway|c
	step //131
		goto 42.8,40.9
		.talk Apothecary Renferrel##1937
		..turnin Rot Hide Ichor##443
		..accept Rot Hide Origins##444
		..turnin A Recipe For Death (2)##450
		..accept A Recipe For Death (3)##451
	step //132
		goto 44.0,40.9
		.talk Shadow Priest Allister##2121
		..turnin Maps and Runes##478
		..accept Dalar's Analysis##481
	step //133
		goto 44.2,39.8
		.talk Dalar Dawnweaver##1938
		..turnin Arugal's Folly (2)##422
		..accept Arugal's Folly (3)##424
		..turnin Dalar's Analysis##481
		..accept Dalaran's Intentions##482
	step //134
		goto 44.0,40.9
		.talk Shadow Priest Allister##2121
		..turnin Dalaran's Intentions##482
		..accept Ambermill Investigations##479
	step //135
		goto 72.1,35.7
		.kill Lake Skulkers|n
		.get 6 Lake Skulker Moss|q 451/1
	step //136
		goto 76.6,32.3
		.kill Vile Fin Murlocs|n
		.get Hardened Tumor|q 451/3
	step //137
		goto 77.8,27.0
		.kill Lake Creepers|n
		.get 6 Lake Creeper Moss|q 451/2
	step //138
		Go inside the mine at 56.5,46.0
		.from Grimson the Pale##1972
		.get Head of Grimson|q 424/1
	step //139
		Go to the Sepulcher|goto 46.7,41.1
	step //140
		goto 44.2,39.8
		.talk Dalar Dawnweaver##1938
		..turnin Arugal's Folly (3)##424
		..accept Arugal's Folly (4)##99
	step //141
		goto 59.8,64.3
		.kill Dalaran mobs|n
		.get 8 Dalaran Pendant|q 479/1
	step //142
		goto 47.9,72.1
		.kill Pyrewood Village mobs|n
		.get 6 Pyrewood Shackle|q 99/1
	step //143
		Hearth to the Sepulcher|goto 43.2,41.4|use hearthstone##6948|noway|c
	step //144
		goto 44.0,40.9
		.talk Shadow Priest Allister##2121
		..turnin Ambermill Investigations##479
	step //145
		goto 44.2,39.8
		.talk Dalar Dawnweaver##1938
		..turnin Arugal's Folly (4)##99
	step //146
		ding 18
	step //147
		Fly to Undercity|goto Undercity
	step //148
		goto 84.1,17.4
		.talk Bethor Iceshard##1498
		..turnin Rot Hide Origins##444
	step //149
		goto 48.8,69.3
		.talk Master Apothecary Faranell##2055
		..turnin A Recipe For Death (3)##451
	step //150
		'Go outside of the Undercity|goto Tirisfal Glades
	step //151
		goto Tirisfal Glades,60.8,58.8|n
		.' Ride the zeppelin to Orgrimmar|goto Durotar,50.8,13.2,1|noway|c
		info You can ride this zeppelin to Orgrimmar or Grom'Gol Base Camp
	step //152
		'Go northwest to Orgrimmar|goto Orgrimmar
	step //153
		Fly to the Crossroads|goto The Barrens,51.7,30.2,2|noway
        step //154
		home The Crossroads
	step //155
		goto 51.5,30.9
		.talk Thork##3429
		..accept Report to Kadrak##6541
	step //156
		goto 51.4,30.2
		.talk Apothecary Helbrim##3390
		..accept Apothecary Zamah##853
	step //157
		goto 51.1,29.6
		.talk Korran##3428
		..accept Egg Hunt##868
	step //158
		goto 49.3,50.3
		.' Click the Beaten Corpse and inspect it further |tip In a small camp of 2 houses to the side of the road.
		.' Find Mankrik's Wife|goal Find Mankrik's Wife|q 4921/1
	step //159
		goto 45.1,57.7
		.talk Tatternack Steelforge##3433
		..accept Weapons of Choice##893
	step //160
		goto 44.6,59.2
		.talk Mangletooth##3430
		..accept Tribes at War##878
	step //161
		goto The Barrens,44.4,59.2
		.talk Omusa Thunderhorn##10378
		..fpath Camp Taurajo
	step //162
		'Go west to Mulgore|goto Mulgore
	step //163
		'Go northwest to Thunder Bluff|goto Thunder Bluff
	step //164
		goto Thunder Bluff,22.8,20.9
		.talk Apothecary Zamah##3419
		..turnin Apothecary Zamah##853
	step //165
		goto 47,49.9
		.talk Tal##2995
		..fpath Thunder Bluff
		info2 Follow the spiral ramp to the top
	step //166
		'Hearth to the Crossroads|goto The Barrens,52.0,29.9,0.1|use hearthstone##6948|noway|c
	step //167
		goto The Barrens,52,31.6
		.talk Mankrik##3432
		..turnin Lost in Battle##4921
	step //168
		goto 41.2,23.9
		.' Kill Savannah Prowlers
		.get 7 Prowler Claws|q 903/1
	step //169
		goto 39.9,17.2
		.' Kill Witchwing Slayers
		.get 6 Harpy Lieutenant Ring|q 875/1
	step //170
		goto 45.5,13.9
		.' Kill raptors
		.get 5 Intact Raptor Horn|q 865/1
		.' You can find more raptors at 52.3,47.0|n
	step //171
		goto 52.4,11.6
		.' Click the Control Console
		..turnin Samophlange (1)##894
		..accept Samophlange (2)##900
		info It's a big machine.
	step //172
		goto 52.3,11.6
		.' Click the Main Control Valve
		.' Shut off the Main Control Valve|goal Shut off Main Control Valve|q 900/1
		info It's a red gnob at the bottom of the tall pipe
	step //173
		goto 52.3,11.4
		.' Click the Regulator Valve
		.' Shut off the Regulator Valve|goal Shut off Regulator Valve|q 900/3
		info On the back of the skinny leaning pipe
	step //174
		goto 52.4,11.4
		.' Click the Fuel Control Valve
		.' Shut off the Fuel Control Valve|goal Shut off Fuel Control Valve|q 900/2
		info It's a red gnob on the side of a big barrel
	step //175
		goto 52.4,11.6
		.' Click the Control Console
		..turnin Samophlange (2)##900
		..accept Samophlange (3)##901
		info It's a big machine.
	step //176
		goto 52.8,10.4
		.' Kill Tinkerer Sniggles
		.get Console Key|q 901/1
		info He's standing inside a little green hut.
	step //177
		goto 52.4,11.6
		.' Click the Control Console
		..turnin Samophlange (3)##901
		..accept Samophlange (4)##902
		info It's a big machine.
	step //178
		goto 56.5,7.5
		.talk Wizzlecrank's Shredder##3439
		..accept Ignition##858
	step //179
		goto 56.2,8.3
		.' Kill Supervisor Lugwizzle
		.get Ignition Key|q 858/1
		info He walks around on this platform.
	step //180
		goto 56.5,7.5
		.talk Wizzlecrank's Shredder##3439
		..turnin Ignition##858
		..accept The Escape##863
		.' Escort Wizzlecrank out of the Venture Co. drill site|goal Escort Wizzlecrank out of the Venture Co. drill site|q 863/1
	step //181
		goto 61.5,5.9
		.' Kill Venture Co. mobs
		.get Cats Eye Emerald|q 896/1
	step //182
		ding 19
	step //183
		goto 63,37.2
		.talk Sputtervalve##3442
		..turnin Samophlange (4)##902
		..turnin The Escape##863
		..accept Ziz Fizziks##1483
		..accept Wenikee Boltbucket##3921
	step //184
		goto 63.4,38.5
		.talk Wharfmaster Dizzywig##3453
		..turnin Miner's Fortune##896
	step //185
		goto 62.4,37.6
		.talk Mebok Mizzyrix##3446
		..turnin Raptor Horns##865
	step //186
		goto 52.9,41.8
		.' Kill centaurs until a centaur says 'I am slain! Summon Verog!' as it dies |tip Kill centaurs around this area until you see one say "I am slain! Summon Verog!", then manually skip to the next step.
		.from Verog the Dervish##3395
		.get Verog's Head|q 851/1
	step //187
		goto 55.6,42.8
		.' Click the Bubbling Fissure |tip Swim underwater towards the bubbles to this spot
		.' Test the Dried Seeds|goal Test the Dried Seeds|q 877/1
	step //188
		goto 52.3,31.9
		.talk Tonga Runetotem##3448
		..turnin The Stagnant Oasis##877
		..accept Altered Beings##880
	step //189
		goto 52.2,31
		.talk Sergra Darkthorn##3338
		..turnin Prowlers of the Barrens##903
		..accept Echeyakee##881
	step //190
		goto 51.6,30.9
		.talk Darsok Swiftdagger##3449
		..turnin Harpy Lieutenants##875
		..accept Serena Bloodfeather##876
	step //191
		goto 55.8,17.1
		.' Use the Horn of Echeyakee to summon him|use Horn of Echeyakee##10327
		.' Kill Echeyakee
		.get Echeyakee's Hide|q 881/1
	step //192
		goto 49.0,11.2
		.talkto Wenikee Boltbucket
		..turnin Wenikee Boltbucket##3921
		..accept Nugget Slugs##3922
	step //193
		goto 56.7,8.8
		.Click the Tool Buckets around this area
		.collect 15 Nugget Slug##11143|q 3922
	step //194
		goto 49.0,11.2
		.talk Wenikee Boltbucket##9316
		..turnin Nugget Slugs##3922
	step //195
		goto 48.1,5.4
		.talk Kadrak##8582
		..turnin Report to Kadrak##6541
	step //196
		goto 39.2,12.1
		.' Kill Serena Bloodfeather
		.get Serena's Head|q 876/1
	step //197
		'Hearth to the Crossroads|goto The Barrens,52.0,29.9,0.1|use hearthstone##6948|noway|c
	step //198
		goto 52.2,31
		.talk Sergra Darkthorn##3338
		..turnin Echeyakee##881
		..accept The Angry Scytheclaws##905
	step //199
		goto 51.6,30.9
		.talk Darsok Swiftdagger##3449
		..turnin Serena Bloodfeather##876
		..accept Letter to Jin'Zil##1060
	step //200
		goto 55.4,43.5
		.' Kill snapjaws underwater
		.get 8 Altered Snapjaw Shell|q 880/1
	step //201
		ding 20
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Levels (20-25)",[[
	author support@zygorguides.com
	next Zygor's Horde Leveling Guides\\Levels (25-30)
	startlevel 20
	step //1
		goto The Barrens,52.2,46.1
		.' Kill raptors
		.get 3 Sunscale Feathers|n
		.' Click the Blue Raptor Nest|goal Visit Blue Raptor Nest|q 905/1
		.' Click the Yellow Raptor Nest|goal Visit Yellow Raptor Nest|q 905/2
		.' Click the Red Raptor Nest|goal Visit Red Raptor Nest|q 905/3
	step //2
		goto 57.4,51.9|n
		.' The path to 'Stolen Silver' starts here|goto 57.4,51.9,0.5|noway|c
	step //3
		goto 58,53.9
		.' Click the chest of Stolen Silver
		.get Stolen Silver|q 3281/1
		info It's a little grey chest on the ground.
	step //4
		goto 53.5,52
		.kill 6 Bristleback Water Seeker|q 878/1
		.kill 12 Bristleback Thornweaver|q 878/2
		.kill 12 Bristleback Geomancer|q 878/3
		.' Kill Bristleback mobs
		.get 60 Bristleback Quilboar Tusk|q 899/1
		.collect 1 Blood Shard##5075|q 5052|future
	step //5
		'Go to Camp Taurajo and fly to Orgrimmar|goto Orgrimmar
		only Warlock
	step //6
		goto Orgrimmar,48.2,45.3
		.talk Gan'rul Bloodeye##5875
		..accept Devourer of Souls##1507 |noobsolete
		only Warlock
	step //7
		goto 47.8,46.9
		.talk Cazul##5909
		..turnin Devourer of Souls##1507
		..accept Blind Cazul##1508 |noobsolete
		only Warlock
	step //8
		goto 37.1,59.4
		.talk Zankaja##5910
		..turnin Blind Cazul##1508
		..accept News of Dogran (1)##1509 |noobsolete
		only Warlock
	step //9
		'Fly to the Crossroads|goto The Barrens,51.5,30.4,0.1|noway|c
		only Warlock
	step //10
		goto The Barrens,51.9,30.3
		.talk Gazrog##3464
		..turnin News of Dogran (1)##1509
		..accept News of Dogran (2)##1510 |noobsolete
		only Warlock
	step //11
		'Go west to Stonetalon Mountains|goto Stonetalon Mountains
		only Warlock
	step //12
		goto Stonetalon Mountains,73.26,95.14
		.talk Ken'zigla##4197
		..turnin News of Dogran (2)##1510
		..accept Ken'zigla's Draught##1511 |noobsolete
		only Warlock
	step //13
		'Go east to the Barrens|goto The Barrens
		only Warlock
	step //14
		'Go east to the Crossroads and fly to Camp Taurajo|goto The Barrens,44.5,59.1,0.1|noway|c
		only Warlock
	step //15
		goto 44.6,59.3
		.talk Grunt Logmar##5911
		..turnin Ken'zigla's Draught##1511
		..accept Dogran's Captivity##1515 |noobsolete
		only Warlock
	step //16
		goto 43.3,48
		.talk Grunt Dogran##5908
		..turnin Dogran's Captivity##1515
		..accept Love's Gift##1512 |noobsolete
		only Warlock
	step //17
		'Go south to Camp Taurajo and fly to Orgrimmar|goto Orgrimmar|noway|c
		only Warlock
	step //18
		goto Orgrimmar,48.2,45.3
		.talk Gan'rul Bloodeye##5875
		..turnin Love's Gift##1512
		..accept The Binding##1513 |noobsolete
		only Warlock
	step //19
		goto 49.4,50.1
		.' Use Dogran's Pendant in your bags while standing on the Summoning Circle|use Dogran's Pendant##6626
		.kill 1 Summoned Succubus|q 1513/1
		only Warlock
		info It's a pink rune circle on the ground in the small round hut
	step //20
		goto 48.2,45.3
		.talk Gan'rul Bloodeye##5875
		..turnin The Binding##1513
		only Warlock
	step //21
		'Fly to Camp Taurajo|goto The Barrens,44.5,59.1,0.1|noway|c
		only Warlock
	step //22
		'Go to Camp Taurajo and fly to Orgrimmar|goto Orgrimmar
		only Shaman
	step //23
		goto Orgrimmar,38,38.3
		.talk Searn Firewarder##5892
		..accept Call of Water (1)##1528 |noobsolete
		only Shaman
	step //24
		'Fly to Ratchet|goto The Barrens,63.1,37.1,0.5|noway|c
		only Shaman
	step //25
		goto The Barrens,65.8,43.8
		.talk Islen Waterseer##5901
		..turnin Call of Water (1)##1528
		..accept Call of Water (2)##1530 |noobsolete
		only Shaman
	step //26
		goto 63.1,37.2
		.talk Bragok##16227
		'Fly to Camp Taurajo|goto The Barrens,44.5,59.1,0.5|noway|c
		only shaman
	step //27
		goto 43.4,77.4
		.talk Brine##5899
		..turnin Call of Water (2)##1530
		..accept Call of Water (3)##1535 |noobsolete
		only Shaman
	step //28
		goto 44.2,77
		'Go down the hill to the pond at 44,77
		.' Use the Empty Brown Waterskin in your bags next to the pond|use Empty Brown Waterskin##7766
		.get Filled Brown Waterskin|q 1535/1
		only Shaman
	step //29
		'Go back up the hill to 43,77|goto 43.4,77.4
		.talk Brine##5899
		..turnin Call of Water (3)##1535
		..accept Call of Water (4)##1536 |noobsolete
		only Shaman
	step //30
		'Go north to Camp Taurajo and fly to Orgrimmar|goto Orgrimmar
		only Shaman
	step //31
		'Go outside to Durotar|goto Durotar
		only Shaman
	step //32
		'Go east to 50.8,13.3|goto Durotar,50.8,13.3|n
		.' Ride the zeppelin to Undercity|goto Tirisfal Glades|noway|c
		only Shaman
	step //33
		'Go to the Undercity|goto Undercity
		only shaman
	step //34
		'Fly to The Sepulcher|goto Silverpine Forest,45.6,42.4,0.1|noway|c
		only shaman
	step //35
		'Go south to Hillsbrad Foothills|goto Hillsbrad Foothills
		only Shaman
	step //36
		goto Hillsbrad Foothills,62.2,20.8
		.' Use your Empty Red Waterskin in your bags while standing next to the well|use Empty Red Waterskin##7768
		.get Filled Red Waterskin|q 1536/1
		only Shaman
	step //37
		'Go southwest to Silverpine Forest|goto Silverpine Forest
		only Shaman
	step //38
		'Go north to Tirisfal Glades|goto Tirisfal Glades
		only Shaman
	step //39
		goto Tirisfal Glades,60.8,58.8|n
		.' Ride the zeppelin to Orgrimmar|goto Durotar|noway|c
		only Shaman
		info You can ride this zeppelin to Orgrimmar or Grom'Gol Base Camp
	step //40
		'Go northwest to Orgrimmar|goto Orgrimmar
		only Shaman
	step //41
		'Fly to Camp Taurajo|goto The Barrens,44.5,59.1,0.1|noway|c
		only Shaman
	step //42
		goto The Barrens,43.4,77.4
		.talk Brine##5899
		..turnin Call of Water (4)##1536
		..accept Call of Water (5)##1534 |noobsolete
		only Shaman
	step //43
		'Go north to Ashenvale|goto Ashenvale
		only Shaman
	step //44
		goto Ashenvale,33.6,67.5
		.' Use your Empty Blue Waterskin in your bags while standing next to the Ruins of Stardust Fountain|use Empty Blue Waterskin##7767
		.get Filled Blue Waterskin|q 1534/1
		only Shaman
	step //45
		'Go southeast to the Barrens|goto The Barrens
		only Shaman
	step //46
		goto The Barrens,43.4,77.4
		.talk Brine##5899
		..turnin Call of Water (5)##1534
		..accept Call of Water (6)##220 |noobsolete
		only Shaman
	step //47
		'Go south to Camp Taurajo and fly to Ratchet|goto The Barrens,63.1,37.1,0.1|noway|c
		only Shaman
	step //48
		goto 65.8,43.8
		.talk Islen Waterseer##5901
		..turnin Call of Water (6)##220
		..accept Call of Water (7)##63 |noobsolete
		only Shaman
	step //49
		'Go northwest to Ratchet and fly to Orgrimmar|goto Orgrimmar|noway|c
		only Shaman
	step //50
		'Go outside to Durotar|goto Durotar
		only Shaman
	step //51
		'Go east to 50.8,13.3|goto Durotar,50.8,13.3|n
		.' Ride the zeppelin to Undercity|goto Tirisfal Glades|noway|c
		only Shaman
	step //52
		'Go to the Undercity|goto Undercity
		only shaman
	step //53
		'Fly to The Sepulcher|goto Silverpine Forest,45.6,42.4,0.1|noway|c
		only shaman
	step //54
		goto Silverpine Forest,38.8,44.2
		.' You can reach this spot by swimming down the shore
		.' Kill the Corrupt Minor Manifestation of Water
		.get Corrupt Manifestation's Bracers|q 63/1
		only Shaman
	step //55
		goto 38.3,44.6
		.' Click the Brazier of Everfount
		..turnin Call of Water (7)##63
		..accept Call of Water (8)##100 |noobsolete
		only Shaman
		info It looks like a small metal plate on the ground with a small fire in it
	step //56
		'Go to the huge rock with the rune symbol on it
		.' Drink the Water Sapta in your bags|use Water Sapta##6637
		only Shaman
	step //57
		goto 38.8,44.6
		.talk the Minor Manifestation of Water##5895
		..turnin Call of Water (8)##100
		..accept Call of Water (9)##96 |noobsolete
		only Shaman
	step //58
		'Go northeast to Tirisfal Glades|goto Tirisfal Glades
		only Shaman
	step //59
		goto Tirisfal Glades,60.8,58.8|n
		.' Ride the zeppelin to Orgrimmar|goto Durotar|noway|c
		only Shaman
	step //60
		'Go northwest to Orgrimmar|goto Orgrimmar
		only Shaman
	step //61
		'Fly to Ratchet|goto The Barrens,63.1,37.1,0.1|noway|c
		only Shaman
	step //62
		goto The Barrens,65.8,43.8
		.talk Islen Waterseer##5901
		..turnin Call of Water (9)##96
		only Shaman
	step //63
		'Go northwest to Ratchet and fly to Camp Taurajo|goto The Barrens,44.5,59.1,0.1|noway|c
		only Shaman
	step //64
		goto The Barrens,44.9,59.1
		.talk Jorn Skyseer##3387
		..accept Melor Sends Word##1130
	step //65
		goto 44.6,59.2
		.talk Mangletooth##3430
		..turnin Tribes at War##878
		..accept Blood Shards of Agamaggan##5052
		..turnin Blood Shards of Agamaggan##5052
		..accept Betrayal from Within (1)##879
	step //66
		'Hearth to the Crossroads|goto The Barrens,52.0,29.9,0.1|use hearthstone##6948|noway|c
	step //67
		goto 51.9,30.3
		.talk Gazrog##3464
		..turnin Stolen Silver##3281
	step //68
		goto 52.2,31
		.talk Sergra Darkthorn##3338
		..turnin The Angry Scytheclaws##905
		..accept Jorn Skyseer##3261
	step //69
		goto 52,31.6
		.talk Mankrik##3432
		..turnin Consumed by Hatred##899
	step //70
		goto 52.3,31.9
		.talk Tonga Runetotem##3448
		..turnin Altered Beings##880
		..accept Hamuul Runetotem##1489
	step //71
		'Fly to Orgrimmar|goto Orgrimmar
	step //72
		goto Orgrimmar,43,38.4
		.talk Warcaller Gorlach##10880
		..accept The Ashenvale Hunt (1)##235
	step //73
		'Fly to Ratchet|goto The Barrens,63.1,37.1,0.1|noway|c
	step //74
		goto The Barrens,62,53.7
		.' Kill Theramore Marines
		.get 10 Theramore Medal|q 891/4
	step //75
		goto 61.9,54.7
		.' Go to the top of the tower
		.kill 1 Captain Fairmount|q 891/1
	step //76
		goto 63.1,56.7
		.' Go to the top of the tower
		.kill 1 Cannoneer Smythe|q 891/3
	step //77
		goto 60.5,54.8
		.' Go to the top of the tower
		.kill 1 Cannoneer Whessan|q 891/2
	step //78
		goto 62,55
		.talk Gilthares Firebough##3465
		..accept Free From the Hold##898
		.' Escort Gilthares Firebough back to Ratchet|goal Escort Gilthares Firebough back to Ratchet|q 898/1
		info2 If he's not there, someone else is probably escorting him, so just wait a few minutes for him to respawn.
	step //79
		goto 62.3,39
		.talk Captain Thalo'thas Brightsun##3339
		..turnin The Guns of Northwatch##891
		..turnin Free From the Hold##898
	step //80
		ding 21
	step //81
		'Fly to the Crossroads|goto The Barrens,51.5,30.4,0.1|noway|c
	step //82
		goto 45.3,28.4
		.talk Regthar Deathgate##3389
		..turnin Verog the Dervish##851
	step //83
		'Go west to Stonetalon Mountains|goto Stonetalon Mountains
	step //84
		goto Stonetalon Mountains,71.2,95
		.talk Xen'Zilla##12816
		..accept Blood Feeders##6461
	step //85
		goto 74.5,97.9
		.talk Witch Doctor Jin'Zil##3995
		..turnin Letter to Jin'Zil##1060
		..accept Jin'Zil's Forest Magic##1058
	step //86
		goto 69.7,88.4
		.kill 10 Deepmoss Creeper|q 6461/1
		info Kill 10 Deepmoss Creepers alongside the path as you walk northwest
	step //87
		goto 61.3,67.2
		.kill 7 Deepmoss Venomspitter|q 6461/2
	step //88
		goto 61,64.2
		.' Click the Deepmoss Eggs
		.get 15 Deepmoss Egg|q 1069/1
		info They look like white, shaking eggs next to trees around this area. Get a couple of those on your way to the next step. They take some time to respawn, so it's better to do this in several passes.
	step //89
		goto 59,62.6
		.talk Ziz Fizziks##4201
		..turnin Ziz Fizziks##1483
		..accept Super Reaper 6000##1093
	step //90
		goto 64.5,57.7
		.kill 15 Venture Co. Logger|q 1062/1
	step //91
		goto 62.6,53.8
		.' Kill Venture Co. Operators on and around this big machine
		.get 1 Super Reaper 6000 Blueprints|q 1093/1
	step //92
		goto 61,64.2
		.' Click the Deepmoss Eggs
		.get 15 Deepmoss Egg|q 1069/1
		info Get the remaining eggs.
	step //93
		goto 59,62.6
		.talk Ziz Fizziks##4201
		..turnin Super Reaper 6000##1093
		..accept Further Instructions (1)##1094
	step //94
		goto 47.2,61.2
		.talk Maggran Earthbinder##11860
		..accept Harpies Threaten##6282
	step //95
		goto 47.5,58.4
		.talk Tammra Windfield##11864
		..accept Cycle of Rebirth##6301
	step //96
		goto 45.9,60.4
		.talk Braelyn Firehand##4198
		..accept Cenarius' Legacy##1087
	step //97
		goto 45.1,59.8
		.talk Tharm##4312
		..fpath Sun Rock Retreat
	step //98
		'To Tharm's right, there is a path up the hill
		.' Follow the path up and take the first left|goto Stonetalon Mountains,45.1,63.5,0.3|c
	step //99
		goto 47.2,64.2
		.talk Mor'rogal##11861
		..accept Boulderslide Ravine##6421
		.talk Tsunaman##11862
		..accept Trouble in the Deeps##6562
		..accept Elemental War##6393
	step //100
		goto 67.2,88.2|n
		.' The path to 'Boulderslide Ravine' starts here|goto 67.2,88.2,0.5|noway|c
	step //101
		goto 61.3,92.4
		.' Click the Resonite Crystals inside the cave
		.get 10 Resonite Crystal|q 6421/2
		.' While collecting, continue moving deep into the cave.
		info They look like big pink crystals inside the cave.
	step //102
		'Go northwest inside the cave to 59,90|goto 58.9,90.0
		.' Investigate the Cave in Boulderslide Ravine|goal Investigate Cave in Boulderslide Ravine|q 6421/1
	step //103
		'Leave the cave|goto Stonetalon Mountains,61.8,93.0,0.5
	step //104
		goto 71.2,95
		.talk Xen'Zilla##12816
		..turnin Blood Feeders##6461
	step //105
		'Go southeast to the Barrens|goto The Barrens
	step //106
		goto The Barrens,35.2,27.8
		.talk Seereth Stonebreak##4049
		..turnin Goblin Invaders##1062
		..accept The Elder Crone##1063
		..accept Shredding Machines##1068
	step //107
		'Hearth to the Crossroads|goto The Barrens,52.0,29.9,0.1|use hearthstone##6948|noway|c
	step //108
		'Fly to Ratchet|goto The Barrens,63.1,37.1,0.1|noway|c
	step //109
		goto 63,37.2
		.talk Sputtervalve##3442
		..turnin Further Instructions (1)##1094
		..accept Further Instructions (2)##1095
	step //110
		goto 62.4,37.6
		.talk Mebok Mizzyrix##3446
		..turnin Deepmoss Spider Eggs##1069
	step //111
		'Fly to Thunder Bluff|goto Thunder Bluff
	step //112
		goto Thunder Bluff,61.5,80.9
		.talk Melor Stonehoof##3441
		..turnin Melor Sends Word##1130
		..accept Steelsnap##1131
	step //113
		goto 69.9,30.9
		.talk Magatha Grimtotem##4046
		..turnin The Elder Crone##1063
		..'Wait a while
		..accept Forsaken Aid##1064
	step //114
		goto 78.6,28.5
		.talk Arch Druid Hamuul Runetotem##5769
		..turnin Hamuul Runetotem##1489
		..accept Nara Wildmane##1490
	step //115
		goto 75.7,31.6
		.talk Nara Wildmane##5770
		..turnin Nara Wildmane##1490
	step //116
		goto 22.8,20.9
		.talk Apothecary Zamah##3419
		..turnin Forsaken Aid##1064
		..accept Journey to Tarren Mill##1065
	step //117
		ding 22
	step //118
		'Fly to the Crossroads|goto The Barrens,51.5,30.4,1.0|noway|c
	step //119
		'Go north to Ashenvale|goto Ashenvale
	step //120
		goto Ashenvale,73.8,61.5
		.talk Senani Thunderheart##12696
		..turnin The Ashenvale Hunt (1)##235
		..accept The Ashenvale Hunt (2)##6383
	step //121
		goto 73.2,61.6
		.talk Vhulgra##12616
		..fpath Splintertree Post
	step //122
		goto 36.6,57.1|n
		.' The path to bypass Astranaar starts here|goto Ashenvale,36.6,57.2,0.3|noway|c
	step //123
		goto 12.2,33.8
		.talk Andruk##11901
		..fpath Zoram'gar Outpost
	step //124
		goto 11.7,34.9
		.talk Marukai##12719
		..accept Naga at the Zoram Strand##6442
	step //125
		goto 11.6,34.3
		.talk Je'neu Sancrea##12736
		..turnin Trouble in the Deeps##6562
	step //126
		goto 12.6,30.8
		.' Kill nagas
		.get 20 Wrathtail Head|q 6442/1
	step //127
		goto 11.7,34.9
		.talk Marukai##12719
		..turnin Naga at the Zoram Strand##6442
	step //128
		'Hearth to the Crossroads|goto The Barrens,52.0,29.9,0.1|use hearthstone##6948|noway|c
	step //129
		'Fly to Camp Taurajo|goto The Barrens,44.5,59.1,0.1|noway|c
	step //130
		goto 44.9,59.1
		.talk Jorn Skyseer##3387
		..turnin Jorn Skyseer##3261
		..accept Ishamuhale##882
	step //131
		home Camp Taurajo
	step //132
		goto 45,62.2
		'Click Chen's Empty Keg
		.get Chen's Empty Keg|n
		.' Click Chen's Empty Keg in your bags|use Chen's Empty Keg##4926
		..accept Chen's Empty Keg##819
		info Click the barrel laying on the ground
	step //133
		goto 45.1,69.2
		.' Click the Silithid Mounds |tip They look like huge eggs leaking green ooze.
		.get 12 Silithid Egg|q 868/1
	step //134
		goto 46,79.1
		.talk Gann Stonespire##3341
		..accept Gann's Reclamation##843
	step //135
		goto 43.4,80.5
		.from Kuz##3436 |tip He wanders around this area.
		.get Kuz's Skull|q 879/1
		.from Razormane Pathfinder##3456+
		.get Razormane Backstabber|q 893/1
	step //136
		goto 42,78.9
		.from Razormane Seer##3458+
		.get Charred Razormane Wand|q 893/2
		.from Razormane Warfrenzy##3459+
		.get Razormane War Shield|q 893/3
	step //137
		goto 41.1,80.6|n
		.' The path up to 'Betrayal From Within' starts here|goto The Barrens,41.1,80.6,0.3|noway|c
	step //138
		goto 40.1,80.6
		.from Lok Orcbane##3435 |tip He's up the hill, inside a large hut.
		.get Lok's Skull|q 879/3
	step //139
		goto 43.9,83.3
		.from Nak##3434 |tip He walks around this area.
		.get Nak's Skull|q 879/2
	step //140
		goto 46.5,85.2
		.kill 15 Bael'dun Excavator |q 843/1
		.kill 5 Bael'dun Foreman |q 843/2
	step //141
		goto 47.3,84.9
		.from Prospector Khazgorm##3392 |tip He spawns in different spots in this area, so you may need to search for him.
		.get Khazgorm's Journal|q 843/3
	step //142
		goto 46,79.1
		.talk Gann Stonespire##3341
		..turnin Gann's Reclamation##843
		..accept Revenge of Gann (1)##846
	step //143
		'Hearth to Camp Taurajo|goto The Barrens,45.5,59.0,0.5|use hearthstone##6948|noway|c
	step //144
		goto 45.1,57.7
		.talk Tatternack Steelforge##3433
		..turnin Weapons of Choice##893
	step //145
		goto 44.6,59.2
		.talk Mangletooth##3430
		..turnin Betrayal from Within (1)##879
		..accept Betrayal from Within (2)##906
	step //146
		ding 23
	step //147
		'Fly to the Crossroads|goto The Barrens,51.5,30.4,0.1|noway|c
	step //148
		goto 51.5,30.9
		.talk Thork##3429
		..turnin Betrayal from Within (2)##906
	step //149
		goto 51.1,29.6
		.talk Korran##3428
		..turnin Egg Hunt##868
	step //150
		'Kill a Zhevra anywhere and get a Fresh Zhevra Carcass|collect 1 Fresh Zhevra Carcass##10338|q 882
	step //151
		goto 59.8,30
		.' Stand next to the bushes at the base of the tree with no leaves
		.' Use the Fresh Zhevra Carcass to summon Ishamuhale |use Fresh Zhevra Carcass##10338
		.from Ishamuhale##3257
		.get Ishamuhale's Fang|q 882/1
	step //152
		goto 62.3,38.4
		.talk Brewmaster Drohn##3292
		..turnin Chen's Empty Keg##819
	step //153
		'Fly to Sun Rock Retreat|goto Stonetalon Mountains,45.2,59.9,0.1|noway|c
	step //154
		goto Stonetalon Mountains,47.2,61.2
		.talk Maggran Earthbinder##11860
		..accept Calling in the Reserves##5881
	step //155
		home Sun Rock Retreat
	step //156
		goto 47.2,64.2
		.talk Mor'rogal##11861
		..turnin Boulderslide Ravine##6421
	step //157
		goto 51.8,42.6
		.' Click the Gaea Seeds
		.get 10 Gaea Seed|q 6301/1
		info They look like brown pine cones on the ground around the lake.
	step //158
		goto 46.2,26.5
		.' Kill coursers
		.get 30 Courser Eye|q 1058/3
	step //159
		goto 37.7,18.6
		.' Kill Sap Beasts
		.get 5 Stonetalon Sap|q 1058/1
		.' Kill Fey Dragons
		.get Fey Dragon Scale|q 1058/4
	step //160
		goto 36.8,15.9
		.kill 4 Son of Cenarius|q 1087/1
		.kill 4 Daughter of Cenarius|q 1087/2
		.kill 4 Cenarion Botanist|q 1087/3
	step //161
		goto 33.7,8.2
		.' Kill Twilight Runners
		.get 5 Twilight Whisker|q 1058/2
	step //162
		goto 47.5,58.4
		.talk Tammra Windfield##11864
		..turnin Cycle of Rebirth##6301
		..accept New Life##6381
	step //163
		goto 45.9,60.4
		.talk Braelyn Firehand##4198
		..turnin Cenarius' Legacy##1087
	step //164
		goto 59,62.6
		.talk Ziz Fizziks##4201
		..turnin Further Instructions (2)##1095
		..accept Gerenzo Wrenchwhistle##1096
	step //165
		goto 59.1,75.7
		.' Click the Wanted Poster: Besseleth
		..accept Arachnophobia##6284
		info To the side of the road
	step //166
		goto 58.1,76.1|n
		.' The path up to 'Arachnophobia' starts here|goto Stonetalon Mountains,58.1,76.1,0.3|noway|c
	step //167
		goto 54.6,71.9
		.' She's a big orange spider
		.' She spawns in different spots in this valley
		.' Kill Besseleth
		.get Besseleth's Fang|q 6284/1
	step //168
		goto 61.5,54.6
		.' XT:9 wanders around this area
		.kill 1 XT:9|q 1068/2
	step //169
		goto 71.6,46.4
		.' XT:4 wanders around this area
		.kill 1 XT:4|q 1068/1
	step //170
		goto 74.5,97.9
		.talk Witch Doctor Jin'Zil##3995
		..turnin Jin'Zil's Forest Magic##1058
	step //171
		'Go southeast to the Barrens|goto The Barrens
	step //172
		goto The Barrens,35.2,27.8
		.talk Seereth Stonebreak##4049
		..turnin Shredding Machines##1068
	step //173
		'Hearth to Sun Rock Retreat|goto Stonetalon Mountains,47.5,62.1,0.1|use hearthstone##6948|noway|c
	step //174
		goto Stonetalon Mountains,47.2,61.2
		.talk Maggran Earthbinder##11860
		..turnin Arachnophobia##6284
	step //175
		'Fly to Camp Taurajo|goto The Barrens,44.5,59.1,0.1|noway|c
	step //176
		goto The Barrens,44.9,59.1
		.talk Jorn Skyseer##3387
		..turnin Ishamuhale##882
		..accept Enraged Thunder Lizards##907
	step //177
		home Camp Taurajo
	step //178
		ding 24
	step //179
		goto 47.8,56.6
		.' Kill Thunderheads
		.get 3 Thunder Lizard Blood|q 907/1
	step //180
		goto 48.5,84.6
		.from Bael'dun Soldier##3376+, Bael'dun Rifleman##3377+, Bael'dun Officer##3378+
		.get 6 Nitroglycerin |q 846/1
		.get 6 Wood Pulp |q 846/2
		.get 6 Sodium Nitrate |q 846/3
	step //181
		goto 46,79.1
		.talk Gann Stonespire##3341
		..turnin Revenge of Gann (1)##846
		..accept Revenge of Gann (2)##849
	step //182
		goto 47,85.6
		.' Click the Bael Modan Flying Machine at the top of the small tower
		.' Destroy the Bael Modan Flying Machine |q 849/1
	step //183
		goto 46,79.1
		.talk Gann Stonespire##3341
		..turnin Revenge of Gann (2)##849
	step //184
		'Go southwest to Thousand Needles|goto Thousand Needles
	step //185
		goto Thousand Needles,31.9,21.7
		.talk Grish Longrunner##12576
		..turnin Calling in the Reserves##5881
	step //186
		goto 32.2,22.2
		.talk Brave Moonhorn##10079
		..accept Message to Freewind Post##4542
	step //187
		goto 45.1,49.1
		.talk Nyse##4317
		..fpath Freewind Post
	step //188
		goto 44.6,50.3
		.talk Hagar Lightninghoof##10539
		..accept Alien Egg##4821
	step //189
		goto 45.6,50.8
		.talk Cliffwatcher Longhorn##10537
		..turnin Message to Freewind Post##4542
		..accept Pacify the Centaur##4841
	step //190
		goto 46,50.8
		.' Click the Wanted Poster - Arnak Grimtotem
		..accept Wanted - Arnak Grimtotem##5147
		info In front of a small house
	step //191
		goto 48.6,42.6
		.kill 12 Galak Scout|q 4841/1
		.kill 10 Galak Wrangler|q 4841/2
		.kill 6 Galak Windchaser|q 4841/3
	step //192
		goto 56.5,50.3
		.' Click the big white Alien Egg
		.get Alien Egg|q 4821/1
		.' If the egg is not here, there are 2 other places it could be - they are:
		..'At 52.5,55.2
		..'At 37.7,56.1
	step //193
		goto 45.6,50.8
		.talk Cliffwatcher Longhorn##10537
		..turnin Pacify the Centaur##4841
		..accept Grimtotem Spying##5064
	step //194
		goto 44.6,50.3
		.talk Hagar Lightninghoof##10539
		..turnin Alien Egg##4821
		..accept Serpent Wild##4865
	step //195
		'Hearth to Camp Taurajo|goto The Barrens,45.5,59.0,0.1|use hearthstone##6948|noway|c
	step //196
		goto The Barrens,44.9,59.1
		.talk Jorn Skyseer##3387
		..turnin Enraged Thunder Lizards##907
		..accept Cry of the Thunderhawk##913
	step //197
		goto 46.5,57
		.' Kill thunderhawks
		.get 1 Thunderhawk Wings|q 913/1
	step //198
		goto 44.9,59.1
		.talk Jorn Skyseer##3387
		..turnin Cry of the Thunderhawk##913
	step //199
		ding 25
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Levels (25-30)",[[
	author support@zygorguides.com
	next Zygor's Horde Leveling Guides\\Levels (30-35)
	startlevel 25
	step //1
		'Fly to Thunder Bluff|goto Thunder Bluff
	step //2
		goto Thunder Bluff,55,51.4
		.talk Zangen Stonehoof##4721
		..accept The Sacred Flame (1)##1195
	step //3
		'Fly to Sun Rock Retreat|goto Stonetalon Mountains,45.2,59.9,0.1|noway|c
	step //4
		'Go up the path to the right of the Flight Path
		.' Follow it over to the Charred Vale|goto Stonetalon Mountains,44.6,61.8,0.3|c
	step //5
		goto 37.8,66.2
		.' They look like dirt mounds around this area
		.' Click the Gaea Dirt Mounds
		.' Plant 10 Gaea Seeds|goal 10 Gaea seed planted|q 6381/1
	step //6
		goto 35.9,65.3
		.' Kill fire elementals
		.get 10 Incendrites|q 6393/1
	step //7
		goto 35.7,68.7
		.kill 7 Bloodfury Slayer|q 6282/3
		.kill 7 Bloodfury Roguefeather|q 6282/4
	step //8
		goto 32.6,67.2
		.kill 7 Bloodfury Ambusher|q 6282/2
		.kill 7 Bloodfury Harpy|q 6282/1
	step //9
		goto 47.2,64.2
		.talk Tsunaman##11862
		..turnin Elemental War##6393
	step //10
		goto 47.2,61.2
		.talk Maggran Earthbinder##11860
		..turnin Harpies Threaten##6282
		..accept Bloodfury Bloodline##6283
	step //11
		goto 47.5,58.4
		.talk Tammra Windfield##11864
		..turnin New Life##6381
	step //12
		goto 68.7,39.1|n
		.' The path up to 'Gerenzo Wrenchwhistle' starts here|goto Stonetalon Mountains,68.7,39.1,0.5|noway|c
	step //13
		goto 64.1,38.9
		.' He spawns in different places on this dock high rise thing
		.' Kill Gerenzo Wrenchwhistle
		.get Gerenzo's Mechanical Arm|q 1096/1
	step //14
		goto 59,62.6
		.talk Ziz Fizziks##4201
		..turnin Gerenzo Wrenchwhistle##1096
	step //15
		'Go to Sun Rock Retreat|goto Stonetalon Mountains,46.5,60.1
	step //16
		'Fly to Splintertree Post|goto Ashenvale,73.3,61.7,0.1|noway|c
	step //17
		home Splintertree Post
	step //18
		goto 73.7,60
		.talk Mastok Wrilehiss##12737
		..accept Stonetalon Standstill##25
	step //19
		goto 73.1,61.5
		.talk Pixel##12724
		..accept Satyr Horns##6441
	step //20
		goto 71.1,68.1
		.talk Kuray'bin##12867
		..accept Ashenvale Outrunners##6503
	step //21
		goto 72,70.6
		.' They are stealthed around this area
		.kill 9 Ashenvale Outrunner|q 6503/1
	step //22
		goto 68.3,75.3
		.talk Torek##12858
		..'Make sure the 3 Splintertree Raiders are there.  If they aren't, wait until they spawn
		..accept Torek's Assault##6544
		.' Escort Torek
		.' Take Silverwing Outpost|goal Take Silverwing Outpost.|q 6544/1
	step //23
		goto 48.9,69.6
		.' Stand in the glowing gazebo
		.' Scout the gazebo|goal Scout the gazebo on Mystral Lake that overlooks the nearby Alliance outpost.|q 25/1 |future
	step //24
		goto 47.7,69.7
		.kill 12 Befouled Water Elemental|q 25/2
		.' Tideress walks around this area
		.' Kill Tideress
		.get the Befouled Water Globe|n
		.' Click the Befouled Water Globe|use Befouled Water Globe##16408
		..accept The Befouled Element##1918
	step //25
		goto 42.3,65.6
		.' Ursangous wanders around this area
		.' Kill Ursangous
		.get Ursangous's Paw|n
		.' Click Ursangous's Paw|use Ursangous's Paw##16303
		..accept Ursangous's Paw##23
	step //26
		goto 57.9,56.2
		.' Kill Laughing Sisters
		.collect 1 Etched Phial##5867|q 1195
	step //27
		ding 26
	step //28
		'Go to Splintertree Post|goto Ashenvale,73.9,60.7,0.1
	step //29
		goto 73.7,60
		.talk Mastok Wrilehiss##12737
		..turnin Stonetalon Standstill##25
		..turnin The Befouled Element##1918
		..accept Je'neu of the Earthen Ring##824
	step //30
		goto 73.8,61.5
		.talk Senani Thunderheart##12696
		..turnin Ursangous's Paw##23
	step //31
		goto 73,62.5
		.talk Ertog Ragetusk##12877
		..turnin Torek's Assault##6544
	step //32
		goto 71.1,68.1
		.talk Kuray'bin##12867
		..turnin Ashenvale Outrunners##6503
	step //33
		goto 60.2,72.9
		.' Use your Etched Phial while standing in the moonwell water|use Etched Phial##5867
		.get Filled Etched Phial|q 1195/1
	step //34
		goto 58.7,56.1
		.' Shadumbra walks around this area
		.' Kill Shadumbra
		.get Shadumbra's Head|n
		.' Click Shadumbra's Head|use Shadumbra's Head##16304
		..accept Shadumbra's Head##24
	step //35
		'Hearth to Splintertree Post|goto Ashenvale,73.9,60.7,0.1|use hearthstone##6948|noway|c
	step //36
		'Fly to Zoram'gar Outpost|goto Ashenvale,12.2,33.8,0.1|noway|c
	step //37
		goto 11.6,34.3
		.talk Je'neu Sancrea##12736
		..turnin Je'neu of the Earthen Ring##824
	step //38
		goto 11.9,34.5
		.talk Karang Amakkar##12757
		..accept Between a Rock and a Thistlefur##216
	step //39
		goto 11.7,34.9
		.talk Mitsuwa##12721
		..accept Troll Charm##6462
	step //40
		goto 12.1,34.6
		.talk Muglash##12717
		..accept Vorsha the Lasher##6641
		.' Escort and protect Muglash
		.' Click the purple flame brazier when he tells you to
		.goal Defeat Vorsha the Lasher|q 6641/1
		info2 If he is not there, wait for him to respawn
	step //41
		goto 12.2,34.2
		.talk Warsong Runner##12863
		..turnin Vorsha the Lasher##6641
	step //42
		goto 31.3,46.6|n
		.' The path to 'Between a Rock and a Thistlefur' starts here|goto Ashenvale,31.3,46.6,0.5|noway|c
	step //43
		goto 31.3,44.8
		.kill 8 Thistlefur Avenger|q 216/1
		.kill 8 Thistlefur Shaman|q 216/2
	step //44
		goto 37.5,32.4|n
		.' The path up to 'Troll Charm' starts here|goto Ashenvale,37.5,32.4,0.3|noway|c
	step //45
		'Go into the cave|goto Ashenvale,38.4,30.6,0.5|c
	step //46
		goto 40,32.5
		.' Click the Troll Chests inside the cave
		.get 8 Troll Charm|q 6462/1
		info They look looke like little brown bamboo chests inside the cave.
	step //47
		goto 41.5,34.5
		.talk Ruul Snowhoof##12818
		..accept Freedom to Ruul##6482
		.goal Escort Ruul from the Thistlefurs.|q 6482/1
	step //48
		'Leave the cave and go to 11.9,34.5|goto 11.9,34.5
		.talk Karang Amakkar##12757
		..turnin Between a Rock and a Thistlefur##216
	step //49
		goto 11.7,34.9
		.talk Mitsuwa##12721
		..turnin Troll Charm##6462
	step //50
		'Hearth to Splintertree Post|goto Ashenvale,73.9,60.7,0.1|use hearthstone##6948|noway|c
	step //51
		goto 74,61
		.talk Yama Snowhoof##12837
		..turnin Freedom to Ruul##6482
	step //52
		goto 73.8,61.5
		.talk Senani Thunderheart##12696
		..turnin Shadumbra's Head##24
	step //53
		ding 27
	step //54
		goto 81.8,52
		.' Kill satyrs
		.get 16 Satyr Horns|q 6441/1
	step //55
		goto 73.1,61.5
		.talk Pixel##12724
		..turnin Satyr Horns##6441
	step //56
		'Fly to Sun Rock Retreat|goto Stonetalon Mountains,45.2,59.9,5.0|noway|c
	step //57
		'Follow the path to the right of the Flight Path over to the Charred Vale|goto Stonetalon Mountains,44.6,61.8,0.3|c
	step //58
		goto 30.8,62.4
		.' Kill the Bloodfury Ripper
		.get Bloodfury Ripper's Remains|q 6283/1
	step //59
		goto 47.2,61.2
		.talk Maggran Earthbinder##11860
		..turnin Bloodfury Bloodline##6283
	step //60
		home Sun Rock Retreat
	step //61
		'Fly to Thunder Bluff|goto Thunder Bluff
	step //62
		goto Thunder Bluff,55,51.4
		.talk Zangen Stonehoof##4721
		..turnin The Sacred Flame (1)##1195
		..accept The Sacred Flame (2)##1196
	step //63
		'Fly to Freewind Post|goto Thousand Needles,45.0,49.1,0.1|noway|c
	step //64
		goto Thousand Needles,46.1,51.7
		.talk Rau Cliffrunner##4722
		..turnin The Sacred Flame (2)##1196
		..accept The Sacred Flame (3)##1197
	step //65
		goto 46.2,50.4
		.talk Magistrix Elosai##17093
		..accept A Different Approach##9431
	step //66
		goto 44.8,49
		.talk Elu##10377
		..accept Wind Rider##4767
	step //67
		'The path to Dorn Plainstalker starts here|goto 54.7,44.7,0.5|c
	step //68
		goto 53.9,41.5
		.talk Dorn Plainstalker##2986
		..accept Test of Faith##1149
		info2 Standing in the back of the cave
	step //69
		goto 26.4,32.4
		.' Stand on the 2 planks
		.' Jump off of the plateau
		.' You will not die
		.' You will be teleported back to the cave|goto 53.8,41.7,0.1|noway|c
	step //70
		goto 53.9,41.5
		.talk Dorn Plainstalker##2986
		..turnin Test of Faith##1149
		..accept Test of Endurance##1150
		info2 Standing in the back of the cave
	step //71
		goto 21.5,32.4
		.talk Motega Firemane##10428
		..turnin Serpent Wild##4865
		..accept Sacred Fire##5062
	step //72
		goto 33.6,34.1
		.' Click the Incendia Agave in the water
		.get 10 Incendia Agave|q 5062/1
		info They look like aloe plants around the lake and inside the water.
	step //73
		goto 14.5,32.5|n
		.' The path up to 'Wind Rider' starts here|goto Thousand Needles,14.5,32.5,0.3|noway|c
	step //74
		goto 10.7,30.8
		.' Click the Highperch Wyvern Eggs on the ground
		.get 10 Highperch Wyvern Egg|q 4767/1
		info They look like white eggs with light blue spots on them around this area.
	step //75
		goto 13.2,39.5|n
		.' The path up to Pao'ka Swiftmountain starts here|goto Thousand Needles,13.2,39.5,1.0|noway|c
	step //76
		goto 17.9,40.6
		.talk Pao'ka Swiftmountain##10427
		..accept Homeward Bound##4770
		.' Escort Pao'ka Swiftmountain to safety|goal Escort Pao'ka from Highperch|q 4770/1
	step //77
		goto 13.2,26.3
		.' Kill Thundering Boulderkin
		.get 2 Purifying Earth|q 9431/1
	step //78
		'Hearth to Sun Rock Retreat|goto Stonetalon Mountains,47.5,62.1,0.1|use hearthstone##6948|noway|c
	step //79
		'Fly to Thunder Bluff|goto Thunder Bluff
	step //80
		goto Thunder Bluff,69.9,30.9
		.talk Magatha Grimtotem##4046
		..turnin Sacred Fire##5062
		..accept Arikara##5088
	step //81
		'Fly to Freewind Post|goto Thousand Needles,45.0,49.1,0.1|noway|c
	step //82
		goto Thousand Needles,44.8,49
		.talk Elu##10377
		..turnin Wind Rider##4767
	step //83
		home Freewind Post
	step //84
		goto 31.2,36.9|n
		.' The path up to 'Grimtotem Spying' starts here|goto Thousand Needles,31.2,36.9,0.3|noway|c
	step //85
		goto 31.8,32.6
		.' Click the Document Chest
		.get Secret Note #1|q 5064/1
		info It's a grey chest
	step //86
		goto 33.8,40
		.' Click the Document Chest in the big tent
		.get Secret Note #2|q 5064/2
		info It's a grey chest inside the big teepee hut
	step //87
		goto 39.3,41.5
		.' Click the Document Chest in the big tent
		.get Secret Note #3|q 5064/3
		info It's a grey chest inside the teepee house
	step //88
		goto 38,35.3
		.' Click the Sacred Fire of Life
		.' Light the Sacred Fire of Life to summon Arikara|goal Light the Sacred Fire of Life|q 5088/1
		.' Kill Arikara
		.get Arikara Serpent Skin|q 5088/2
	step //89
		goto 38.9,28.6
		.' Arnak Grimtotem walks around here
		.' Kill Arnak Grimtotem
		.get Arnak's Hoof|q 5147/1
	step //90
		ding 28
	step //91
		goto 37.7,26.7
		.talk Lakota Windsong##10646
		..accept Free at Last##4904
		.' Escort Lakota Windsong from the Darkcloud Pinnacle|goal Escort Lakota Windsong from the Darkcloud Pinnacle.|q 4904/1
	step //92
		goto 21.5,32.4
		.talk Motega Firemane##10428
		..turnin Homeward Bound##4770
		..turnin Arikara##5088
		.talk Wizlo Bearingshiner##10941
		..turnin A Different Approach##9431
		..accept A Dip in the Moonwell##9433
	step //93
		goto 44.1,37.3|n
		.' The path to The Sacred Flame (3) starts here
		.' Go inside the cave
		.' Follow the path to the left|goto Thousand Needles,44.1,37.3,0.3|noway|c
	step //94
		goto 42,31.5
		.' Click the Ancient Brazier
		.get Cloven Hoof|q 1197/1
		info It looks like a bowl with a blue flame in it.
	step //95
		goto 17.6,28.2
		.' Steelsnap wanders around this area
		.' Kill Steelsnap
		.get Steelsnap's Rib|q 1131/1
	step //96
		'Hearth to Freewind Post|goto Thousand Needles,46.0,51.4,2.0|use hearthstone##6948|noway|c
	step //97
		goto 46.1,51.7
		.talk Rau Cliffrunner##4722
		..turnin The Sacred Flame (3)##1197
	step //98
		goto 46.1,51.7
		.talk Thalia Amberhide##10645
		..turnin Free at Last##4904
	step //99
		goto 45.6,50.8
		.talk Cliffwatcher Longhorn##10537
		..turnin Grimtotem Spying##5064
		..turnin Wanted - Arnak Grimtotem##5147
	step //100
		'Fly to Thunder Bluff|goto Thunder Bluff
	step //101
		goto 61.5,80.9
		.talk Melor Stonehoof##3441
		..turnin Steelsnap##1131
		..accept Frostmaw##1136
	step //102
		'Fly to Freewind Post|goto Thousand Needles,45.0,49.1,0.1|noway|c
	step //103
		goto 22.1,31
		.' Find the Galak Messenger
		.' Kill the Galak Messenger
		.get the Assassination Note|n
		.' Click the Assassination Note|use Assassination Note##12564
		..accept Assassination Plot##4881
		info Walk this road east to west from this point to the fork in the road to the east until you find the Galak Messenger running along the road.
	step //104
		goto 21.3,32.1
		.talk Kanati Greycloud##10638
		..turnin Assassination Plot##4881
		..accept Protect Kanati Greycloud##4966
		.' Protect Kanati Greycloud from the centaur attack
		.talk Kanati Greycloud##10638
		..turnin Protect Kanati Greycloud##4966
	step //105
		goto 12,18.8|n
		.' The path to 'A Dip in the Moonwell' starts here
		..'You can get up on the ledge at this spot|goto Thousand Needles,12,18.8,0.3|noway|c
	step //106
		goto 9.5,18.7
		.' Stand next to the Concealed Control Panel
		.' Dismiss your pet if you have one
		.' Use your Robotron Control Unit|use Robotron Control Unit##23675
		.' While in control of the Robotron 3000:
		..'Walk west to the moonwell
		..'Use the Gather Water ability on the Roboton 3000 pet toolbar while standing in the moonwell water
		.get Thalanaar Moonwell Water|q 9433/1
		.Cancel the "Summon Robot" buff to dismiss the robot|nobuff INV_Gizmo_07
	step //107
		goto 21.5,32.4
		.talk Wizlo Bearingshiner##10941
		..turnin A Dip in the Moonwell##9433
		..accept Testing the Tonic##9434
	step //108
		ding 29
	step //109
		.The path up to 'Test of Endurance' starts here|goto 27.5,49.8,0.5|c
	step //110
		Go inside the cave at 27.4,51.0|goto 27.4,51.0,0.5
	step //111
		goto 26,55
		.Click the Harpy Foodstuffs
		.from Grenka Bloodscreech##4490
		.get Grenka's Claw|q 1150/1
	step //112
		Go outside the cave|goto 27.4,51.0,0.5
	step //113
		'Go to Freewind Post|goto Thousand Needles,45.8,50.0,0.1|c
	step //114
		goto 46.2,50.4
		.talk Magistrix Elosai##17093
		..turnin Testing the Tonic##9434
	step //115
		goto 54,41
		.talk Dorn Plainstalker##2986
		..turnin Test of Endurance##1150
		..accept Test of Strength##1151
	step //116
		goto 20.6,39.5
		.from Rok'Alim the Pounder##4499
		.get Fragments of Rok'Alim|q 1151/1
	step //117
		.'Hearth to Freewind Post|goto Thousand Needles,45.0,49.1,0.3|use hearthstone##6948|noway|c
	step //118
		goto 54,41
		.talk Dorn Plainstalker##2986
		..turnin Test of Strength##1151
	step //119
		'Go to Freewind Post|goto Thousand Needles,45.8,50.0,0.1|c
	step //120
		'Fly to Sun Rock Retreat|goto Stonetalon Mountains,45.2,59.9,0.1|noway|c
	step //121
		goto 45.9,60.4
		.talk Braelyn Firehand##4198
		..accept Ordanus##1088
	step //122
		'Fly to Splintertree Post|goto Ashenvale,73.3,61.7,0.1|noway|c
	step //123
		goto Ashenvale,73.2,60.4
		.talk Valusha##17355
		..accept Destroy the Legion##9534
	step //124
		goto 80,68
		.kill 6 Mannoroc Lasher|q 9534/1
		.kill 6 Roaming Felguard|q 9534/2
		.kill 6 Searing Infernal|q 9534/3
		. Kill Legion mobs
		. Get the Diabolical Plans
		. Click the Diabolical Plans|use Diabolical Plans##23797
		..accept Diabolical Plans##9535
	step //125
		goto 73.2,60.4
		.talk Valusha##17355
		..turnin Destroy the Legion##9534
		..turnin Diabolical Plans##9535
	step //126
		goto 74,70
		.from Sharptalon##12676
		. Get Sharptalon's Claw
		. Click Sharptalon's Claw|use Sharptalon's Claw##16305
		..accept Sharptalon's Claw##2
	step //127
		goto 62.1,51.2
		.from Keeper Ordanus##4273
		.get Ordanus' Head|q 1088/1
		info He is at the top of this tree tower
	step //128
		'Go to Splintertree Post|goto Ashenvale,73.3,61.7,0.1|c
	step //129
		goto 73.8,61.5
		.talk Senani Thunderheart##12696
		..turnin Sharptalon's Claw##2
		..accept The Hunt Completed##247
	//step //130.1
	//	'If you have a full set of "Shredder Operating Manual" pages, bind them into 3 Chapters and do the following quest.
	//	'Otherwise either fly to Orgrimmar to buy the remaining pages and complete the quest, or skip this step.
	//	goto 70.0,71.1
	//	.talk Gurda Ragescar##12718
	//	..accept The Lost Pages##6504
	//	..turnin The Lost Pages##6504
	step //130
		'Fly to Sun Rock Retreat|goto Stonetalon Mountains,45.2,59.9,0.1|noway|c
	step //131
		goto Stonetalon Mountains,45.9,60.4
		.talk Braelyn Firehand##4198
		..turnin Ordanus##1088
		..accept The Den##1089
	step //132
		home Sun Rock Retreat
	step //133
		goto 29.9,15.2
		.Click the Gatekeeper's Hold
		.collect Gatekeeper's Key##5687|q 1089
	step //134
		goto 29.5,15.8
		.Click the Druids' Cache
		.get Claw Key|q 1089/2
	step //135
		goto 28.0,13.8
		.Click the Barrow Cache
		.get Barrow Key|q 1089/3
		info It's on the ledge of the uppermost level across a bridge
	step //136
		goto 25.6,11.4
		.Click the Sleepers' Cache
		.get Sleepers' Key|q 1089/1
	step //137
		goto 26.6,10.8
		. Click the Talon Den Hoard
		..turnin The Den##1089
	step //138
		ding 30
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Levels (30-35)",[[
	author support@zygorguides.com
	next Zygor's Horde Leveling Guides\\Levels (35-40)
	startlevel 30
	step //1
		'Hearth to Sun Rock Retreat|goto Stonetalon Mountains,47.5,62.1,0.5|use hearthstone##6948|noway|c
	step //2
		'Fly to Orgrimmar|goto Orgrimmar
	step //3
		goto Orgrimmar,80.4,32.4
		.talk Sorek##3354
		..accept The Islander##1718
		only Warrior
		info2 He is the Warrior Class Trainer
	step //4
		'Fly to Ratchet|goto The Barrens,63.1,37.1,0.1|noway|c
		only Warrior
	step //5
		goto The Barrens,68.6,49.2
		.talk Klannoc Macleod##6236
		..turnin The Islander##1718
		..accept The Affray##1719
		only Warrior
		info2 He's hold a samurai sword
	step //6
		goto 68.6,48.7
		.' Step on the grate to begin the Affray
		.' Kill the challengers as they come
		.kill 1 Big Will|q 1719/2
		only Warrior
	step //7
		goto 68.6,49.2
		.talk Klannoc Mcleod##6236
		..turnin The Affray##1719
		only Warrior
	step //8
		'Go to Ratchet and fly to Orgrimmar|goto Orgrimmar
		only Warrior
	step //9
		goto Orgrimmar,38,38
		.talk Searn Firewarder##5892
		..accept Call of Air (1)##1531
		only Shaman
	step //10
		'Fly to Freewind Post|goto Thousand Needles,45.0,49.1,0.1|noway|c
		only Shaman
	step //11
		goto Thousand Needles,54.6,44.7|n
		.' The path up Prate Cloudseer starts here|goto Thousand Needles,54.6,44.7,0.3|noway|c
		only Shaman
	step //12
		'Go up to the path to 53.6,42.7|goto 53.6,42.7
		.talk Prate Cloudseer##5905
		..turnin Call of Air (1)##1531
		only Shaman
	step //13
		'Go southwest to Freewind Post and fly to Orgrimmar|goto Orgrimmar
		only Shaman
	step //14
		home Orgrimmar

// warlock quest missing?
//	step
//		goto Orgrimmar,48.2,45.3
//		.talk Gan'rul Bloodeye##5875
//		..accept Seeking Strahad##2996 |noobsolete
//		only Warlock
//	step
//		'Fly to Ratchet|goto The Barrens,63.1,37.1,0.5|noway|c
//		only Warlock
//	step
//		goto The Barrens,62.6,35.5
//		.talk Strahad Farsan##6251
//		..turnin Seeking Strahad##2996
//		..accept Tome of the Cabal (1)##1801 |noobsolete
//		only Warlock
//	step
//		'Fly to Orgrimmar|goto Orgrimmar
//		only Warlock
// ---

	step //15
		'Go outside to Durotar|goto Durotar
	step //16
		goto Durotar,50.82,13.52|n
		.' Ride the zeppelin to Undercity|goto Tirisfal Glades|noway|c
		info You can ride zeppelins to either Undercity or the Grom'Gol Base Camp here
	step //17
		'Go to the Undercity|goto Undercity

// Warlock cont'd
//	step
//		goto Undercity,76.0,37.7
//		.talk Jorah Annison##6293
//		..turnin Tome of the Cabal (1)##1801
//		..accept Tome of the Cabal (2)##1803
//		only Warlock
// ---

	step //18
		'Fly to The Sepulcher|goto Silverpine Forest,45.6,42.4,0.1|noway|c
	step //19
		'Go south to Hillsbrad Foothills|goto Hillsbrad Foothills,13.8,45.8,0.5
	step //20
		goto Hillsbrad Foothills,20.8,47.4
		.talk Deathstalker Lesh##2214
		..accept Time To Strike##494
	step //21
		goto 60.1,18.6
		.talk Zarise##2389
		..fpath Tarren Mill
	step //22
		goto 61.4,19.1
		.talk Apothecary Lydon##2216
		..turnin Journey to Tarren Mill##1065
		..accept Elixir of Pain (1)##501
	step //23
		goto 61.9,19.6
		.talk Tallow##2770
		..accept The Hammer May Fall##676
	step //24
		goto 62.4,20.3
		.talk High Executor Darthalia##2215
		..turnin Time To Strike##494
	step //25
		goto 63.2,20.7
		.talk Krusk##2229
		..accept Regthar Deathgate##1361
	step //26
		goto 63.9,19.7
		.talk Novice Thaivand##2429
		..accept Helcular's Revenge (1)##552
	step //27
		goto 48.1,31.4
		.' Kill yetis inside and around the cave
		.get Helcular's Rod|q 552/1
	step //28
		//goto Alterac Mountains,48.5,75.2
		goto Hillsbrad Foothills,52.3,33.0
		.' Kill Mountain Lions
		.get 10 Mountain Lion Blood|q 501/1
	step //29
		goto Hillsbrad Foothills,61.4,19.1
		.talk Apothecary Lydon##2216
		..turnin Elixir of Pain (1)##501
	step //30
		goto 63.9,19.7
		.talk Novice Thaivand##2429
		..turnin Helcular's Revenge (1)##552
		..accept Helcular's Revenge (2)##553
	step //31
		'Go southeast to Arathi Highlands|goto Arathi Highlands,20.0,29.3,0.2
	step //32
		goto Arathi Highlands,73,32.7
		.talk Urda##2851
		..fpath Hammerfall
	step //33
		goto 72.6,33.9
		.talk Gor'mul##2792
		..accept Hammerfall##655
	step //34
		goto 74.7,36.3
		.talk Tor'gan##2706
		..turnin Hammerfall##655
		..accept Raising Spirits (1)##672
	step //35
		goto 69.9,36.2
		.' Kill raptors
		.get 10 Highland Raptor Eye|q 672/1
	step //36
		goto 74.7,36.3
		.talk Tor'gan##2706
		..turnin Raising Spirits (1)##672
		..accept Raising Spirits (2)##674
	step //37
		goto 72.6,33.9
		.talk Gor'mul##2792
		..turnin Raising Spirits (2)##674
		..accept Raising Spirits (3)##675
	step //38
		goto 74.7,36.3
		.talk Tor'gan##2706
		..turnin Raising Spirits (3)##675
		..accept Foul Magics (1)##671
	step //39
		'Hearth to Orgrimmar|goto Orgrimmar|use hearthstone##6948|noway|c
	step //40
		'Go outside to Durotar|goto Durotar
	step //41
		goto Durotar,50.8,13.3|n
		.' Ride the zeppelin to Grom'Gol Base Camp|goto Stranglethorn Vale|noway|c
		info You can ride zeppelins to either Undercity or the Grom'Gol Base Camp here
	step //42
		goto Stranglethorn Vale,32.5,29.4
		.talk Thysta##1387
		..fpath Grom'gol Base Camp
	step //43
		goto 35.6,10.6
		.talk Barnil Stonepot##716
		..accept Welcome to the Jungle##583
		.talk Hemet Nesingwary Jr.##715
		..turnin Welcome to the Jungle##583
		..accept Raptor Mastery (1)##194
		.talk Ajeck Rouack##717
		..accept Tiger Mastery (1)##185
		.talk Sir S. J. Erlgadin##718
		..accept Panther Mastery (1)##190
		info2 Go here to Locate the hunters' camp
	step //44
		goto 41.2,12
		.kill 10 Young Panther|q 190/1
	step //45
		goto 35.6,10.6
		.talk Sir S. J. Erlgadin##718
		..turnin Panther Mastery (1)##190
		..accept Panther Mastery (2)##191
		info2 Go here to Locate the hunters' camp
	step //46
		goto 35.4,12.1
		.kill 10 Young Stranglethorn Tiger|q 185/1
	step //47
		goto 35.6,10.6
		.talk Ajeck Rouack##717
		..turnin Tiger Mastery (1)##185
		..accept Tiger Mastery (2)##186
		info2 Go here to Locate the hunters' camp
	step //48
		goto 29.6,10.7
		.kill 10 Stranglethorn Tiger|q 186/1
		.kill 10 Panther|q 191/1
	step //49
		goto 35.6,10.6
		.talk Ajeck Rouack##717
		..turnin Tiger Mastery (2)##186
		..accept Tiger Mastery (3)##187
		.talk Sir S. J. Erlgadin##718
		..turnin Panther Mastery (2)##191
		..accept Panther Mastery (3)##192
		info2 Go here to Locate the hunters' camp
	step //50
		ding 31
	step //51
		'Hearth to Orgrimmar|goto Orgrimmar|use hearthstone##6948|noway|c
	step //52
		'Fly to the Crossroads|goto The Barrens,51.5,30.4,0.1|noway|c
	step //53
		goto The Barrens,51.1,29.6
		.talk Korran##3428
		..accept The Swarm Grows##1145
	step //54
		goto 45.3,28.4
		.talk Regthar Deathgate##3389
		..turnin Regthar Deathgate##1361
		..accept The Kolkar of Desolace##1362
	step //55
		'Go east to the Crossroads and fly to Freewind Post|goto Thousand Needles,45.0,49.1,0.1|noway|c
	step //56
		goto Thousand Needles,78.1,77.1
		.talk Wizzle Brassbolts##4453
		..accept Hardened Shells##1105
		.talk Fizzle Brassbolts##4454
		..accept Salt Flat Venom##1104
	step //57
		goto 77.8,77.3
		.talk Kravel Koalbeard##4452
		..accept Rocket Car Parts##1110
		..accept Hemet Nesingwary Jr.##5762
		..accept Wharfmaster Dizzywig##1111
	step //58
		goto 80.2,75.9
		.talk Pozzik##4630
		..accept Load Lightening##1176
	step //59
		goto 81.6,78
		.talk Trackmaster Zherin##4629
		..accept A Bump in the Road##1175
	step //60
		'Get Rocket Car Parts as you quest around Shimmering Flats
	step //61
		goto 87.8,65.5
		.' Kill vultures
		.get 10 Hollow Vulture Bone|q 1176/1
	step //62
		goto 83.2,55.5
		.' Kill turtles
		.get 9 Hardened Tortoise Shell|q 1105/1
	step //63
		goto 75.5,54.9
		.kill 10 Saltstone Basilisk|q 1175/1
		.' Finish getting the 30 Rocket Car Parts you need|goal 30 Rocket Car Parts|q 1110/1
	step //64
		goto 71.7,72.6
		.' Kill scorpions
		.get 6 Salty Scorpid Venom|q 1104/1
	step //65
		goto 77.8,77.3
		.talk Kravel Koalbeard##4452
		..turnin Rocket Car Parts##1110
	step //66
		goto 78.1,77.1
		.talk Fizzle Brassbolts##4454
		..turnin Salt Flat Venom##1104
		.talk Wizzle Brassbolts##4453
		..turnin Hardened Shells##1105
		.talk Fizzle Brassbolts##4454
		..accept Martek the Exiled##1106
	step //67
		goto 80.2,75.9
		.talk Pozzik##4630
		..turnin Load Lightening##1176
		..accept Goblin Sponsorship (1)##1178
	step //68
		'Go southwest to Tanaris|goto Tanaris
	step //69
		goto Tanaris,51.6,25.4
		.talk Bulkrek Ragefist##7824
		..fpath Gadgetzan
	step //70
		'Hearth to Orgrimmar|goto Orgrimmar|use hearthstone##6948|noway|c
	step //71
		goto Orgrimmar,75.2,34.2
		.talk Belgrom Rockmaul##4485
		..turnin The Swarm Grows (1)##1145
	step //72
		goto 45.3,51.6
		.talk Craven Drok##5639
		..accept Alliance Relations (1)##1431
// and maybe somewhere here...
//  goto 48.5,45.5
//  .talk Zevrost##3326
//  ..accept In Search of Menara Voidrender##4737
//  only Warlock
	step //73
		goto 22.3,53.8
		.talk Keldran##5640
		..turnin Alliance Relations (1)##1431
		..accept Alliance Relations (2)##1432
	step //74
		'Go outside to Durotar|goto Durotar
	step //75
		goto Durotar,51,14|n
		. Ride the zeppelin to Undercity|goto Tirisfal Glades,60.7,58.8,2|noway|c
	step //76
		'Go to the Undercity|goto Undercity
	step //77
		'Fly to Tarren Mill|goto Hillsbrad Foothills,61.4,23.0,4
	step //78
		goto Arathi Highlands,30.9,48.4
		.kill 8 Boulderfist Ogre|q 676/1
		info Kill 8 Boulderfist Ogres around this area
	step //79
		goto 35.1,44.3
		'Inside the cave,
		.kill 10 Boulderfist Enforcer|q 676/2
	step //80
		goto 74.2,33.9
		.talk Drum Fel##2771
		..turnin The Hammer May Fall##676
	step //81
		'Fly to Undercity|goto Undercity
	step //82
		'Go outside of Undercity|goto Tirisfal Glades
	step //83
		goto Tirisfal Glades,62.0,59.1|n
		.Ride the zeppelin to Grom'Gol Base Camp|goto Stranglethorn Vale,31.9,28.4,3
	step //84
		goto Stranglethorn Vale,28,15.5
		.kill 10 Stranglethorn Raptor|q 194/1
	step //85
		ding 32
	step //86
		goto 35.6,10.6
		.talk Hemet Nesingwary Jr.##715
		..turnin Raptor Mastery (1)##194
		..accept Raptor Mastery (2)##195
		..turnin Hemet Nesingwary Jr.##5762
	step //87
		.Go to Grom'Gol Base Camp|goto Stranglethorn Vale,31.9,28.4,3
	step //88
		goto 31.4,30.1
		.Ride the zeppelin to Orgrimmar|goto Durotar,50.8,13.2,1|noway|c
	step //89
		.Go to Orgrimmar|goto Orgrimmar|noway
	step //90
		'Fly to Sun Rock Retreat|goto Stonetalon Mountains,45.2,59.9,0.1|noway|c
	step //91
		'Go southwest to Desolace|goto Desolace
	step //92
		goto Desolace,57.8,21.7
		.' Kill Burning Blade mobs
		.get a Flayed Demon Skin|n
		.' Click the Flayed Demon Skin|use Flayed Demon Skin##20310
		..accept The Corrupter (1)##1480
	step //93
		goto 60.9,61.9
		.talk Smeed Scrabblescrew##11596
		..accept Kodo Roundup##5561
	step //94
		goto 56.1,62.5
		.' Use your Kodo Kombobulator on Angient, Aged, or Dying Kodos|use Kodo Kombobulator##13892
		.' Lead the tamed kodo back to Smeed Scrabblescrew at 60.9,61.9|n
		.talk Tamed Kodo##11627
		.' Do this 5 times
		.' Tame 5 Kodos|goal 5 Kodos Tamed|q 5561/1
	step //95
		goto 60.9,61.9
		.talk Smeed Scrabblescrew##11596
		..turnin Kodo Roundup##5561
	step //96
		goto 56.2,59.6
		.talk Felgur Twocuts##5395
		..turnin The Kolkar of Desolace##1362
		..accept Khan Dez'hepah##1365
		.talk Gurda Wildmane##5412
		..accept Gelkis Alliance##1368
	step //97
		goto 52.6,54.4
		.talk Takata Steelblade##5641
		..turnin Alliance Relations (2)##1432
		..accept Alliance Relations (3)##1433
		..accept Befouled by Satyr##1434
	step //98
		goto 52.2,53.4
		.talk Maurin Bonesplitter##4498
		..turnin Alliance Relations (3)##1433
		..accept The Burning of Spirits##1435
		..turnin The Corrupter (1)##1480
		..accept The Corrupter (2)##1481
	step //99
		goto 72.3,23.6
		.kill 7 Hatefury Rogue|q 1434/1
		.kill 7 Hatefury Felsworn|q 1434/2
		.kill 7 Hatefury Betrayer|q 1434/3
		.kill 7 Hatefury Hellcaller|q 1434/4
		.' Kill Hatefury Shadowstalkers
		.get Shadowstalker Scalp|q 1481/1
	step //100
		goto 73.8,67
		//.' Kill Magram centaurs until you are friendly with the Gelkis Clan Centaur|goal Gelkis Clan Centaur: Friendly / Friendly|q 1368/1
		.' Kill Magram centaurs until you are friendly with the Gelkis Clan Centaur |rep Gelkis Clan Centaur,Friendly |q 1368
		.' It takes about 50 kills
	step //101
		goto 55.4,55.8
		.talk Nataka Longhorn##11259
		..accept Catch of the Day##5386
	step //102
		goto 52.6,54.4
		.talk Takata Steelblade##5641
		..turnin Befouled by Satyr##1434
	step //103
		goto 52.2,53.4
		.talk Maurin Bonesplitter##4498
		..turnin The Corrupter (2)##1481
		..accept The Corrupter (3)##1482
	step //104
		goto 62.3,39
		.talk Bibbly F'utzbuckle##11438
		..accept Bone Collector##5501
	step //105
		goto 54.4,60.5
		.' Click the Kodo Bones
		.' Run away if a Kodo Apparition spawns, if you cannot kill them
		.get 10 Kodo Bone|q 5501/1
		info They look like small bone kodo heads on the ground around this area.
	step //106
		goto 62.3,39
		.talk Bibbly F'utzbuckle##11438
		..turnin Bone Collector##5501
	step //107
		goto 74.6,48.8
		.' Kill Khan Dez'hepah
		.get Khan Dez'hepah's Head|q 1365/1
		info He spawns at different spots all around where these centaurs are.
		info I found him in this tent, but you may need to search for him around this area
	step //108
		goto 56.2,59.6
		.talk Felgur Twocuts##5395
		..turnin Khan Dez'hepah##1365
		..accept Centaur Bounty##1366
	step //109
		ding 33
	step //110
		goto 36.2,79.3
		.talk Uthek the Wise##5397
		..turnin Gelkis Alliance##1368
		..accept Stealing Supplies##1370
	step //111
		goto 25.1,72.3
		.talk Roon Wildmane##11877
		..accept Hunting in Stranglethorn##5763
	step //112
		goto 25.8,68.2
		.talk Taiga Wisemane##11624
		..accept Hand of Iruxos##5381
	step //113
		home Shadowprey Village
	step //114
		goto 23.3,72.9
		.talk Drulzegar Skraghook##12340
		..accept Other Fish to Fry##6143
	step //115
		goto 22.6,72
		.talk Mai'lahii##12031
		..accept Clam Bait##6142
	step //116
		goto 21.6,74.1
		.talk Thalon##6726
		..fpath Shadowprey Village
	step //117
		goto 19.5,75.9
		.' Click the Shellfish Traps underwater
		.collect 10 Shellfish##13545|q 5386 //actually it's for 5421, but we need it for 5386. go figure.
		info They look like yellow cages underwater around this area.
	step //118
		goto 22.5,73.1
		.talk Jinar'Zillen##11317
		..'Turn in 'Fish in a Bucket' twice
		..turnin Fish in a Bucket##5421
		..get 2 Bloodbelly Fish|q 5386/1
	step //119
		goto 25,40
		.' Click the Giant Softshell Clams and kill Enraged Reef Crawlers underwater
		.' Open the Soft-shelled Clams you get
		.get 10 Soft-shelled Clam Meat|q 6142/1
		info They look like giant clams underwater.
	step //120
		goto 36.1,30.4
		.' Click Rackmore's Log
		..accept Claim Rackmore's Treasure!##6161
		info It's a little black book sitting on a barrel in a small boatwreck on the shore
	step //121
		goto 33.8,30
		.' Kill Drysnaps underwater
		.get Rackmore's Silver Key|q 6161/1
	step //122
		goto 35.6,25.7
		.' Kill nagas underwater
		.get Rackmore's Golden Key|q 6161/2
		.kill 7 Slitherblade Naga|q 6143/2
		.kill 5 Slitherblade Sorceress|q 6143/3
	step //123
		goto 38.9,27.2
		.talk Azore Aldamort##11863
		..accept Sceptre of Light##5741
	step //124
		goto 56.4,30.8
		.' Kill Burning Blade mobs
		.' When they are almost dead, use you Burning Gem on them|use Burning Gem##6436
		.get 15 Infused Burning Gem|q 1435/1
	step //125
		goto 55.2,30.1
		.' Kill the Burning Blade Seer at the top of the tower
		.get Sceptre of Light|q 5741/1
	step //126
		goto 38.9,27.2
		.talk Azore Aldamort##11863
		..turnin Sceptre of Light##5741
		..accept Book of the Ancients##6027
	step //127
		goto 37.3,18.1
		.' Kill Slitherblade Oracles
		.get Oracle Crystal|q 1482/1
	step //128
		goto 32.8,14.9
		.kill 7 Slitherblade Myrmidon|q 6143/1
	step //129
		goto 30,8.7
		.' Click Rackmore's Chest
		..turnin Claim Rackmore's Treasure!##6161
		info Looks like a brown chest sitting between 2 trees.
	step //130
		goto 55.4,55.8
		.talk Nataka Longhorn##11259
		..turnin Catch of the Day##5386
	step //131
		goto 52.2,53.4
		.talk Maurin Bonesplitter##4498
		..turnin The Burning of Spirits##1435
		..turnin The Corrupter (3)##1482
		..accept The Corrupter (4)##1484
	step //132
		goto 52.6,54.4
		.talk Takata Steelblade##5641
		..turnin The Corrupter (4)##1484
	step //133
		goto 69.8,70.1
		.' Kill Magram centaurs
		.get 15 Centaur Ear|q 1366/1
	step //134
		goto 70.9,75.4
		.' Click the Sacks of Meat
		.get 6 Crudely Dried Meat|q 1370/1
		info They look like bright tan sacks sitting on the ground next to huts around this area.
	step //135
		ding 34
	step //136
		goto Desolace,56.2,59.6
		.talk Felgur Twocuts##5395
		..turnin Centaur Bounty##1366
	step //137
		goto 54.9,26.7
		.' Go inside the big building
		.' Kill all mobs inside this room
		.' Click the big red crystal in the middle of the room|goal Hand of Iruxos Crystal broken|n
		.' Kill the Demon Spirit that spawns
		.get Demon Box|q 5381/1
	step //138
		goto 28.2,6.6
		.' Click the Serpent Statue
		.' Kill Lord Kragaru that spawns
		.get Book of the Ancients|q 6027/1
	step //139
		goto 38.9,27.2
		.talk Azore Aldamort##11863
		..turnin Book of the Ancients##6027
	step //140
		'Hearth to Shadowprey Village|goto 24.1,68.2,0.1|use hearthstone##6948|noway|c
	step //141
		goto 25.8,68.2
		.talk Taiga Wisemane##11624
		..turnin Hand of Iruxos##5381
	step //142
		goto 23.3,72.9
		.talk Drulzegar Skraghook##12340
		..turnin Other Fish to Fry##6143
	step //143
		goto 22.6,72
		.talk Mai'Lahii##12031
		..turnin Clam Bait##6142
	step //144
		goto 36.2,79.3
		.talk Uthek the Wise##5397
		..turnin Stealing Supplies##1370
	step //145
		'Go northwest to Shadowprey Village|goto 21.6,74.1,0.5
	step //146
		'Fly to Freewind Post|goto Thousand Needles,45.0,49.1,0.3|noway|c
	step //147
		goto Thousand Needles,45.6,50.8
		.talk Cliffwatcher Longhorn##10537
		..accept Family Tree##5361
	step //148
		goto 78.6,84.7
		.kill 10 Saltstone Crystalhide|q 1175/2
		.kill 6 Saltstone Gazer|q 1175/3
	step //149
		goto 81.6,78
		.talk Trackmaster Zherin##4629
		..turnin A Bump in the Road##1175
	step //150
		'Go to Freewind Post|goto Thousand Needles,45.0,49.1,0.1|noway|c
	step //151
		'Fly to Camp Taurajo|goto The Barrens,44.5,59.1,0.1|noway|c
	step //152
		'Go southeast to Dustwallow Marsh|goto Dustwallow Marsh
	step //153
		goto Dustwallow Marsh,29.7,47.6
		.' Click the Hoofprints
		..accept Suspicious Hoofprints##1268
		info They look like a set of 3 toed tan muddy footprints on the ground next to the path. Click the Hoofprints.
	step //154
		goto 29.8,48.2
		.' Click the Theramore Guard Badge
		..accept Lieutenant Paval Reethe##1269
		info It looks like a very small grey badge laying on a log inside the burned down inn
	step //155
		goto 29.6,48.6
		.' Click the Black Shield
		..accept The Black Shield (1)##1251
		info Hanging on the brick chimney wall
	step //156
		goto 36.4,31.9
		.talk Krog##4926
		..turnin Suspicious Hoofprints##1268
		..turnin Lieutenant Paval Reethe##1269
		..turnin The Black Shield (1)##1251
		..accept The Black Shield (2)##1321
	step //157
		goto 36.5,30.8
		.talk Do'gol##5087
		..turnin The Black Shield (2)##1321
	step //158
		goto 35.6,31.9
		.talk Shardi##11899
		..fpath Brackenwall Village
	step //159
		'Fly to Ratchet|goto The Barrens,63.1,37.1,0.1|noway|c
	step //160
		goto The Barrens,62.7,36.2
		.talk Gazlowe##3391
		..turnin Goblin Sponsorship (1)##1178
		..accept Goblin Sponsorship (2)##1180
	step //161
		goto 63.4,38.5
		.talk Wharfmaster Dizzywig##3453
		..turnin Wharfmaster Dizzywig##1111
		..accept Parts for Kravel##1112
	step //162
		'Ride the boat to Booty Bay|goto Stranglethorn Vale|noway|c
	step //163
		goto Stranglethorn Vale,26.4,73.6
		.talk Wharfmaster Lozgil##4631
		..turnin Goblin Sponsorship (2)##1180
		..accept Goblin Sponsorship (3)##1181
	step //164
		goto 27.8,77.1
		.talk "Sea Wolf" MacKinley##2501
		..accept Scaring Shaky##606
	step //165
		goto 28.3,77.6
		.talk Drizzlik##2495
		..accept Supply and Demand##575
	step //166
		goto 27.1,77.2
		.talk Crank Fizzlebub##2498
		..accept Singing Blue Shards##605
	step //167
		home Booty Bay
	step //168
		goto 27,77.2
		.talk Kebok##737
		..accept Bloodscalp Ears##189
		..accept Hostile Takeover##213
		.talk Krazek##773
		..accept Investigate the Camp##201
	step //169
		goto 27.2,76.9
		.talk Baron Revilgaz##2496
		..turnin Goblin Sponsorship (3)##1181
		..accept Goblin Sponsorship (4)##1182
	step //170
		goto 26.9,77.1
		.talk Gringer##2858
		..fpath Booty Bay
	step //171
		'Fly to Grom'gol Base Camp|goto Stranglethorn Vale,32.5,29.3,0.1|noway|c
	step //172
		goto 32.1,29.2
		.talk Far Seer Mok'thardin##2465
		..accept Mok'thardin's Enchantment (1)##570
	step //173
		goto 32.2,28.9
		.talk Commander Aggro'gosh##2464
		..accept The Defense of Grom'gol (1)##568
	step //174
		goto 32.0,28.6
		.talk Nemeth Hawkeye##17094
		..accept Bloodscalp Insight##9436
	step //175
		goto 32.2,27.7
		.talk Nimboya##2497
		..accept Hunt for Yenniku##581
		.talk Kin'weelay##2519
		..accept Bloody Bone Necklaces##596
		..accept The Vile Reef##629
	step //176
		goto 26.7,18.5
		.' Kill basilisks
		.get 10 Singing Crystal Shard|q 605/1
	step //177
		goto 28.8,19.7
		.' Kill trolls
		.get 9 Bloodscalp Tusk|q 581/1
		.get 15 Bloodscalp Ear|q 189/1
		.get 25 Bloody Bone Necklace|q 596/1
		.' Kill Bloodscalp Shamans
		.get Bloodscalp Totem|q 9436/1
	step //178
		ding 35
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Levels (35-40)",[[
	author support@zygorguides.com
	next Zygor's Horde Leveling Guides\\Levels (40-45)
	startlevel 35
	step //1
		goto Stranglethorn Vale,31.8,19.2
		.kill 10 Elder Stranglethorn Tiger|q 187/1
	step //2
		goto 32.4,21.3
		.kill 15 Lashtail Raptor|q 568/1
	step //3
		goto 32.2,27.7
		.talk Nimboya##2497
		..turnin Hunt for Yenniku##581
		..accept Headhunting##582
		..accept Grim Message##2932
		.talk Kin'weelay##2519
		..turnin Bloody Bone Necklaces##596
	step //4
		goto 32,28.6
		.talk Nemeth Hawkeye##17094
		..turnin Bloodscalp Insight##9436
		..accept An Unusual Patron##9457
	step //5
		goto 32.2,28.9
		.talk Commander Aggro'gosh##2464
		..turnin The Defense of Grom'gol (1)##568
		..accept The Defense of Grom'gol (2)##569
	step //6
		goto 20.1,14
		.' Kill Bloodscalp Headhunters
		.get 20 Shrunken Head|q 582/1
	step //7
		goto 35.6,10.6
		.talk Hemet Nesingwary Jr.##715
		..turnin Raptor Mastery (2)##195
		..accept Raptor Mastery (3)##196
		..turnin Hunting in Stranglethorn##5763
		.talk Ajeck Rouack##717
		..turnin Tiger Mastery (3)##187
		..accept Tiger Mastery (4)##188
		.' See a message saying you Investigated the Camp|goal Locate the hunters' camp|q 201/1
	step //8
		goto 40.3,12.4
		.' Kill River Crocolisks
		.get 2 Large River Crocolisk Skin|q 575/1
	step //9
		goto 45.5,21.1
		.' Kill Venture Co. Geologists
		.get 8 Tumbled Crystal|q 213/1
	step //10
		goto 37.4,29.3
		.kill 10 Mosh'Ogg Brute|q 569/1
		.kill 5 Mosh'Ogg Witch Doctor|q 569/2
	step //11
		goto 32.2,28.9
		.talk Commander Aggro'gosh##2464
		..turnin The Defense of Grom'gol (2)##569
	step //12
		goto 32.2,27.7
		.talk Nimboya##2497
		..turnin Headhunting##582
		..accept Trollbane##638
	step //13
		'Hearth to Booty Bay|goto 27.1,77.3,0.1|use hearthstone##6948|noway|c
	step //14
		goto 27.1,77.2
		.talk Crank Fizzlebub##2498
		..turnin Singing Blue Shards##605
	step //15
		goto 27,77.2
		.talk Kebok##737
		..turnin Bloodscalp Ears##189
		..turnin Hostile Takeover##213
		.talk Krazek##773
		..turnin Investigate the Camp##201
	step //16
		ding 36
	step //17
		goto 27.1,77.2
		.talk Crank Fizzlebub##2498
		..accept Zanzil's Secret##621
	step //18
		goto 28.3,77.6
		.talk Drizzlik##2495
		..turnin Supply and Demand##575
		..accept Some Assembly Required##577
	step //19
		'Fly to Grom'gol Base Camp|goto Stranglethorn Vale,32.5,29.3,0.1|noway|c
	step //20
		'Ride the zeppelin to Undercity|goto Tirisfal Glades
	step //21
		'Go south to Undercity|goto Undercity
	step //22
		goto Undercity,63.8,49.5
		.talk Genavie Callow##4486
		..accept To Steal From Thieves##1164
	step //23
		'Fly to Hammerfall|goto Arathi Highlands,73.1,32.6,0.1|noway|c
	step //24
		goto Arathi Highlands,73.8,34
		.talk Zengu##2703
		..turnin Trollbane##638
		..accept Sigil of Strom##639
	step //25
		goto 74.2,33.9
		.talk Drum Fel##2771
		..accept Call to Arms (1)##677
	step //26
		goto 74.7,36.3
		.talk Tor'gan##2706
		..accept Guile of the Raptor (1)##701
	step //27
		goto 70.2,58.9
		.kill 10 Witherbark Axe Thrower|q 677/1
		.kill 10 Witherbark Headhunter|q 677/2
		.kill 8 Witherbark Witch Doctor|q 677/3
	step //28
		goto 62.5,33.8
		.' Click the Shards of Myzrael
		..accept The Princess Trapped##642
		info It's a huge floating black crystal.
	step //29
		goto 74.2,33.9
		.talk Drum Fel##2771
		..turnin Call to Arms (1)##677
		..accept Call to Arms (2)##678
	step //30
		home Hammerfall
	step //31
		goto 80.9,39.9|n
		.' The path up to 'The Princess Trapped' starts here|goto Arathi Highlands,80.9,39.9,0.5|noway|c
	step //32
		goto 82.6,36.5
		.' Kill kobolds inside and around this cave
		.get 12 Mote of Myzrael|q 642/1
	step //33
		goto 84.3,31
		.' Click the Iridescent Shards
		..turnin The Princess Trapped##642
		..accept Stones of Binding##651
		info Inside the cave, up on the ledge. It's a floating black crystal.
	step //34
		goto 56.4,36.1
		.' Kill Kenata Dabyrie
		.get Kenata's Head|q 1164/1
		info Standing inside a small house on a hill.
	step //35
		goto 54.2,38.3
		.' Kill Marcel Dabyrie
		.get Marcel's Head|q 1164/2
		info Standing inside the stables.
	step //36
		goto 56.7,40.4
		.' Kill Fardel Dabyrie
		.get Fardel's Head|q 1164/3
		info Standing in front of the barn.
	step //37
		goto 52.3,67.4
		.' Kill Highland Fleshstalkers
		.get 12 Raptor Heart|q 701/1
	step //38
		goto 53,72.8
		.kill 10 Boulderfist Brute|q 678/1
		.kill 4 Boulderfist Magus|q 678/2
	step //39
		goto 26,62
		.' Kill Syndicate mobs
		.get Sigil of Strom|q 639/1
	step //40
		goto 34.1,31.6
		.' Kill Syndicate mobs
		.get 10 Bloodstone Amulet|q 671/1
	step //41
		'Hearth to Hammerfall|goto 73.8,32.6,0.1|use hearthstone##6948|noway|c
	step //42
		goto 73.8,34
		.talk Zengu##2703
		..turnin Sigil of Strom##639
	step //43
		goto 74.2,33.9
		.talk Drum Fel##2771
		..turnin Call to Arms (2)##678
	step //44
		goto 74.7,36.3
		.talk Tor'gan##2706
		..turnin Foul Magics (1)##671
		..turnin Guile of the Raptor (1)##701
		..accept Guile of the Raptor (2)##702
	step //45
		goto 72.6,33.9
		.talk Gor'mul##2792
		..turnin Guile of the Raptor (2)##702
		..accept Guile of the Raptor (3)##847
	step //46
		goto 74.7,36.3
		.talk Tor'gan##2706
		..turnin Guile of the Raptor (3)##847
	step //47
		ding 37
	step //48
		'Fly to Tarren Mill|goto Hillsbrad Foothills,60.2,18.8,0.1|noway|c
	step //49
		goto Hillsbrad Foothills,61.5,20.9
		.talk Magus Wordeen Voidglare##2410
		..accept Prison Break In##544
		.talk Keeper Bel'varil##2437
		..accept Stone Tokens##556
	step //50
		'Go northwest to Alterac Mountains|goto Alterac Mountains
	step //51
		goto Alterac Mountains,21.3,83.9
		.' Kill Dalaran mobs
		.get 10 Worn Stone Token|q 556/1
	step //52
		goto 20.1,84.1
		.' Kill Ricter
		.get Bloodstone Marble|q 544/2
		info Standing to the right as you enter the camp.
	step //53
		goto 20.2,86.4
		.' Kill Alina
		.get Bloodstone Shard|q 544/3
		.' Kill Dermot
		.get Bloodstone Wedge|q 544/1
		info Standing inside the long house.
	step //54
		goto 17.8,83.2
		.' Kill Kegan Darkmar
		.get Bloodstone Oval|q 544/4
		info Standing upstairs in the big house.
	step //55
		'Go southeast to Hillsbrad Foothills|goto Hillsbrad Foothills
	step //56
		'Go inside the yeti cave at 46.2,31.8|goto Hillsbrad Foothills,46.2,31.8,0.5
	step //57
		'Go inside the cave to 43.9,28.1
		.' Click the Flame of Azel
		.' Charge the Flame of Azel|goal Flame of Azel charged|q 553/1
		info Follow the path to the right.
	step //58
		'Go inside the cave to 44.1,26.5
		.' Click the Flame of Veraz
		.' Charge the Flame of Veraz|goal Flame of Veraz charged|q 553/2
		info Follow the path to the bottom of the cave. It's in the room to the left.
	step //59
		.'Kill a mountain lion outside the yeti cave
		.collect Fresh Carcass##5810|q 1136
	step //60
		goto 61.5,20.9
		.talk Magus Wordeen Voidglare##2410
		..turnin Prison Break In##544
		..accept Dalaran Patrols##545
		.talk Keeper Bel'varil##2437
		..turnin Stone Tokens##556
		..accept Bracers of Binding##557
	step //61
		'Go north to Alterac Mountains|goto Alterac Mountains
	step //62
		goto Alterac Mountains,37.5,66.3
		.' Click the Flame of Uzel
		.' Charge the Flame of Uzel|goal Flame of Uzel charged|q 553/3
		.' Use your Fresh Carcass next to the Flame of Uzel|use Fresh Carcass##5810
		.' Frostmaw will walk to the mouth of the cave from outside
		.' Kill Frostmaw
		.get Frostmaw's Mane|q 1136/1
		info Inside a small cave.
	step //63
		goto 20,74
		.kill 6 Dalaran Summoner|q 545/1
		.kill 12 Elemental Slave|q 545/2
		.' Kill Elemental Slaves
		.get 4 Bracers of Earth Binding|q 557/1
	step //64
		'Go to southeast to Hillsbrad Foothills|goto Hillsbrad Foothills
	step //65
		goto Hillsbrad Foothills,61.5,20.9
		.talk Magus Wordeen Voidglare##2410
		..turnin Dalaran Patrols##545
		.talk Keeper Bel'varil##2437
		..turnin Bracers of Binding##557
	step //66
		goto 52.7,53.4
		.' Click Helcular's Grave
		..turnin Helcular's Revenge (2)##553
		info It's a tombstone in the graveyard on the side closest to the river
	step //67
		'Go northeast to Tarren Mill and fly to Undercity|goto Undercity
	step //68
		goto Undercity,63.8,49.5
		.talk Genavie Callow##4486
		..turnin To Steal From Thieves##1164
	step //69
		'Go outside of Undercity|goto Tirisfal Glades
	step //70
		goto 61.9,59.1|n
		.Ride the zeppelin to Grom'Gol Base Camp|goto Stranglethorn Vale,31.9,28.4,3
	step //71
		goto 19.8,22.6
		.' It looks like a stone box
		.' Use your Gift of Naias while standing next to the Altar of Naias|use Gift of Naias##23680
		.' Kill Naias
		.get Heart of Naias|q 9457/1
	step //72
		goto 24.8,23.1
		.' It looks like a stone tablet leaning against a wall underwater
		.' Click the Gri'lek the Wanderer Tabet
		.get Tablet Shard|q 629/1
	step //73
		goto 42.7,18.4
		.' Kill Foreman Cozzle
		.collect Cozzle's Key##5851|q 1182
		info Upstairs on the big metal platform thing, in the control room at the top.
	step //74
		goto 43.3,20.3
		.' It's a brown chest inside the small house
		.' Click Cozzle's Footlocker
		.get Fuel Regulator Blueprints|q 1182/1
		info It's a brown chest in the small house.
	step //75
		goto 47.1,22.9
		.kill 10 Shadowmaw Panther|q 192/1
		.' Kill Shadowmaw Panthers
		.get 8 Shadowmaw Claw|q 570/1
		.' Kill Stranglethorn Tigresses
		.get Pristine Tigress Fang|q 570/2
	step //76
		.Go to Grom'Gol Base Camp|goto Stranglethorn Vale,31.9,28.4,3
	step //77
		goto 32.1,29.2
		.talk Far Seer Mok'thardin##2465
		..turnin Mok'thardin's Enchantment (1)##570
		..accept Mok'thardin's Enchantment (2)##572
	step //78
		goto 32,28.6
		.talk Nemeth Hawkeye##17094
		..turnin An Unusual Patron##9457
	step //79
		goto 32.3,28.6
		.talk Kin'weelay##2519
		..turnin The Vile Reef##629
	step //80
		Fly to Booty Bay|goto Stranglethorn Vale,27.7,74.6,6
	step //81
		goto 27.2,76.9
		.talk Baron Revilgaz##2496
		..turnin Goblin Sponsorship (4)##1182
		..accept Goblin Sponsorship (5)##1183
	step //82
		ding 38
	step //83
		'Ride the boat to Ratchet|goto The Barrens,63.1,37.1,5|noway|c
	step //84
		'Fly to Shadowprey Village|goto Desolace,24.0,68.0,6.5
	step //85
		goto 55.4,55.8
		.talk Nataka Longhorn##11259
		..turnin Family Tree##5361
	step //86
		'Hearth to Hammerfall|goto Arathi Highlands,73.8,32.6,0.5|use hearthstone##6948|noway|c
	step //87
		goto 66.8,29.7
		.' Click the Stone of East Binding
		.get Cresting Key|q 651/2
		info It's a smaller rock in the middle of a circle of tall stones.
	step //88
		goto 52.1,50.7
		.' Click the Stone of Outer Binding
		.get Thundering Key|q 651/3
		info It's a smaller rock in the middle of a circle of tall stones.
	step //89
		goto 25.5,30.2
		.' Click the Stone of West Binding
		.get Burning Key|q 651/1
		info It's a smaller rock in the middle of a circle of tall stones.
	step //90
		goto 36.2,57.3
		.' Click the Stone of Inner Binding
		..turnin Stones of Binding##651
		info It's a smaller rock in the middle of a circle of tall stones.
	step //91
		goto 31.3,64.6|n
		.' The path over to Faldir's Cove starts here|goto Arathi Highlands,31.3,64.6,0.5|noway|c
	step //92
		goto 31.8,82.7
		.talk Lolo the Lookout##2766
		..accept Land Ho!##663
	step //93
		goto 32.3,81.4
		.talk Shakes O'Breen##2610
		..turnin Land Ho!##663
	step //94
		goto 32.8,81.5
		.talk First Mate Nilzlix##2767
		..accept Deep Sea Salvage##662
	step //95
		goto 33.9,80.7
		.talk Captain Steelgut##2769
		..accept Drowned Sorrows##664
		.talk Professor Phizzlethorpe##2768
		..accept Sunken Treasure (1)##665
		.' Escort Professor Phizzlethorpe
		.talk Doctor Draxlegauge##2774
		..turnin Sunken Treasure (1)##665
		..accept Sunken Treasure (2)##666
	step //96
		goto 25.2,84.7
		.kill 10 Daggerspine Raider|q 664/1
		.kill 3 Daggerspine Sorceress|q 664/2
	step //97
		goto 23.4,85.1
		.' Click the Maiden's Folly Log
		.get Maiden's Folly Log|q 662/2
		info It's a book sitting in a pot in a pile of junk ont he middle deck of the ship.
	step //98
		goto 23,84.5
		.' Click the Maiden's Folly Charts
		.get Maiden's Folly Charts|q 662/1
		info It's a small scroll onn the middle floor of the ship, sitting on a small ledge.
	step //99
		goto 20.5,85.6
		.' Click the Spirit of Silverpine Charts
		.get Spirit of Silverpine Charts|q 662/3
		info It's a flat scroll laying on a box next to a cannon on the middle deck of the ship.
	step //100
		goto 20.6,85.1
		.' Click the Spirit of Silverpine Log
		.get Spirit of Silverpine Log|q 662/4
		info It's a scroll laying flat on the ground at the very bottom of the ship.
	step //101
		goto 21.9,83.7
		.' Put on your Goggles of Gem Hunting
		.' Click the Calcified Elven Gems
		.get 10 Elven Gem|q 666/1
		info They look like tall stones standing upright underwater.
	step //102
		goto 32.8,81.5
		.talk First Mate Nilzlix##2767
		..turnin Deep Sea Salvage##662
	step //103
		goto 33.9,80.7
		.talk Captain Steelgut##2769
		..turnin Drowned Sorrows##664
		.talk Doctor Draxlegauge##2774
		..turnin Sunken Treasure (2)##666
		..accept Sunken Treasure (3)##668
	step //104
		goto 32.3,81.4
		.talk Shakes O'Breen##2610
		..turnin Sunken Treasure (3)##668
		..accept Sunken Treasure (4)##669
	step //105
		'Hearth to Hammerfall|goto 73.8,32.6,0.1|use hearthstone##6948|noway|c
	step //106
		'Fly to Undercity|goto Undercity
	step //107
		'Go outside of Undercity|goto Tirisfal Glades
	step //108
		goto Tirisfal Glades,60.8,58.8|n
		.' Ride the zeppelin to Orgrimmar|goto Durotar|noway|c
		info You can ride this zeppelin to Orgrimmar or Grom'Gol Base Camp
	step //109
		'Go northwest to Orgrimmar|goto Orgrimmar
	step //110
		goto Orgrimmar,75.2,34.2
		.talk Belgrom Rockmaul##4485
		..accept The Swarm Grows (2)##1146
	step //111
		'Fly to the Crossroads|goto The Barrens,51.5,30.4,0.1|noway|c
	step //112
		home The Crossroads
	step //113
		'Fly to Freewind Post|goto Thousand Needles,45.0,49.1,0.1|noway|c
	step //114
		goto Thousand Needles,67.6,63.9
		.talk Moktar Krin##4483
		..turnin The Swarm Grows (2)##1146
		..accept The Swarm Grows (3)##1147
	step //115
		goto 68.3,81.2
		.kill 5 Silithid Searcher|q 1147/1
		.kill 5 Silithid Hive Drone|q 1147/2
		.kill 5 Silithid Invader|q 1147/3
		.' Kill Silithid mobs
		.get a Cracked Silithid Carapace|n
		.' Click the Cracked Silithid Carapace|use Cracked Silithid Carapace##5877
		..accept Parts of the Swarm (1)##1148
	step //116
		goto 68.4,85.8
		.' Kill Silithid mobs
		.get 1 Silithid Heart|q 1148/1
		.get 5 Silithid Talon|q 1148/2
		.get 3 Intact Silithid Carapace|q 1148/3
	step //117
		goto 80.2,75.9
		.talk Pozzik##4630
		..turnin Goblin Sponsorship (5)##1183
		..accept The Eighteenth Pilot##1186
	step //118
		goto 80.3,76.1
		.talk Razzeric##4706
		..turnin The Eighteenth Pilot##1186
		..accept Razzeric's Tweaking##1187
	step //119
		goto 77.8,77.3
		.talk Kravel Koalbeard##4452
		..turnin Parts for Kravel##1112
		..accept Delivery to the Gnomes##1114
	step //120
		goto 78.1,77.1
		.talk Fizzle Brassbolts##4454
		..turnin Delivery to the Gnomes##1114
	step //121
		goto 77.8,77.3
		.talk Kravel Koalbeard##4452
		..accept The Rumormonger##1115
	step //122
		goto 67.6,63.9
		.talk Moktar Krin##4483
		..turnin The Swarm Grows (3)##1147
	step //123
		'Hearth to the Crossroads|goto The Barrens,52.0,29.9,0.1|use hearthstone##6948|noway|c
	step //124
		goto The Barrens,51.1,29.6
		.talk Korran##3428
		..turnin Parts of the Swarm (1)##1148
		..accept Parts of the Swarm (2)##1184
	step //125
		'Fly to Brackenwall Village|goto Dustwallow Marsh,35.6,31.8,0.1|noway|c
	step //126
		goto Dustwallow Marsh,35.2,30.7
		.talk Nazeer Bloodpike##4791
		..accept Theramore Spies##1201
		..accept Check Up on Tabetha##11213
	step //127
		goto 35.9,31.7
		.talk Balandar Brightstar##17095
		..accept Twilight of the Dawn Runner##9437
	step //128
		goto 36.4,31.9
		.talk Krog##4926
		..accept Inspecting the Ruins##11124
	step //129
		goto 29.7,47.6
		.talk Inspector Tarem##23567
		..turnin Inspecting the Ruins##11124
	step //130
		goto 42.8,72.4
		.talk Dyslix Silvergrub##23612
		..fpath Mudsprocket
	step //131
		goto 41.8,73.1
		.' Click the Wanted Poster
		..accept WANTED: Goreclaw the Ravenous##11184
		info To the right of the stairway entrance to the big hut
	step //132
		goto 41.9,74
		.talk Brogg##23579
		..accept Bloodfen Feathers##11158
	step //133
		goto 33.3,64.6
		.' Kill raptors
		.get 5 Bloodfen Feather|q 11158/1
	step //134
		goto 32.4,65.4
		.kill 1 Goreclaw the Ravenous|q 11184/1
		info He's a big green raptor standing at the entrance to the cave
	step //135
		goto 42.3,72.9
		.talk Drazzit Dripvalve##23572
		..turnin WANTED: Goreclaw the Ravenous##11184
	step //136
		goto 41.9,74
		.talk Brogg##23579
		..turnin Bloodfen Feathers##11158
	step //137
		ding 39
	step //138
		goto 46.1,57.2
		.talk Tabetha##6546
		..turnin Check Up on Tabetha##11213
		.talk Apprentice Morlann##23600
		..accept The Zeppelin Crash##11172
	step //139
		goto 53.6,56.9
		.talk Moxie Steelgrille##23797
		..turnin The Zeppelin Crash##11172
		..accept Corrosion Prevention##11174
		..accept Secure the Cargo!##11207
	step //140
		goto 53,56
		.' Click the Zeppelin Cargo
		.get 8 Zeppelin Cargo|q 11207/1
		.' Use your Ooze Buster on oozes|use Ooze Buster##33108
		..'You to be near a Power Core Fragment (the things that connect lightning to you)
		.' Dissolve 10 Oozes|goal 10 Oozes Dissolved|q 11174/1
		info The Zeppelin Cargo look like wooden boxes on the ground around this area.
	step //141
		goto 53.6,56.9
		.talk Moxie Steelgrille##23797
		..turnin Corrosion Prevention##11174
		..turnin Secure the Cargo!##11207
		..accept Delivery for Drazzit##11208
	step //142
		goto 54.1,56.5
		.' Click the Gizmorium Shipping Crate
		.get Seaforium Booster|q 1187/1
		info It's a wooden crate next to the crashed zeppelin, on the left side.
	step //143
		goto 42.8,31.3
		.' Run behind the tents along the road
		.kill 9 Theramore Infiltrator|q 1201/1
		.' They are stealted, so look really hard, they won't attack you first
	step //144
		goto 46.6,24.4
		.talk Ithania##17119
		.' Rescue Ithania from North Point Tower|goal Rescue Ithania from North Point Tower|q 9437/1
		.' Go to the top of the tower
		.' Click the Warped Crates
		.get Dawn Runner Cargo|q 9437/2
		info2 The Warped Crates are at the top of the tower, it is a pile of brown boxes.
	step //145
		goto 55.4,26.3
		.talk "Swamp Eye" Jarl##4792
		..accept Marsh Frog Legs##1218
		.talk Mordant Grimsby##23843
		..accept What's Haunting Witch Hill?##11180
	step //146
		goto 55.4,25.9
		.' Click the Loose Dirt
		..accept The Lost Report##1238
		info It looks like a dirt grave next to the small shack
	step //147
		'Kill Giant Marsh Frogs around "Swamp Eye" Jarl's house
		.get 10 Marsh Frog Leg|q 1218/1
	step //148
		goto 55.4,26.3
		.talk "Swamp Eye" Jarl##4792
		..turnin Marsh Frog Legs##1218
		..accept Jarl Needs Eyes##1206
	step //149
		goto 55,31
		.' Kill Risen Husks
		.' Kill Risen Spirits
		.' Gather 10 Information|goal 10 Information Gathered|q 11180/1
	step //150
		goto 55.4,26.3
		.talk Mordant Grimsby##23843
		..turnin What's Haunting Witch Hill?##11180
		..accept The Witch's Bane##11181
	step //151
		goto 55.2,27.7
		.' Click Witchbane plants
		.get 9 Witchbane|q 11181/1
		info It's a bright green fern looking plant with a tall pink flower in the middle of it.
	step //152
		goto 55.4,26.3
		.talk Mordant Grimsby##23843
		..turnin The Witch's Bane##11181
		..accept Cleansing Witch Hill##11183
	step //153
		goto 55.2,26.7
		'Use the Witchbane Torch while standing at the end of the dock right outside|use Witchbane Torch##33113
		.' A flying demon will appear
		.' Kill Zelfrax
		.' Cleanse Witch Hill|goal Witch Hill Cleansed|q 11183/1
	step //154
		goto 55.4,26.3
		.talk Mordant Grimsby##23843
		..turnin Cleansing Witch Hill##11183
	step //155
		goto Dustwallow Marsh,46.9,17.5
		.talk "Stinky" Ignatz##4880
		..accept Stinky's Escape##1270
		.' Escort Stinky Ignatz|goal Help Stinky find Bogbean Leaves|q 1270/1
	step //156
		goto 34.9,22.7
		.' Kill spiders
		.get 20 Unpopped Darkmist Eye|q 1206/1
	step //157
		goto 35.2,30.7
		.talk Nazeer Bloodpike##4791
		..turnin Theramore Spies##1201
		..turnin The Lost Report##1238
	step //158
		goto 35.9,31.7
		.talk Balandar Brightstar##17095
		..turnin Twilight of the Dawn Runner##9437
	step //159
		goto 55.4,26.3
		.talk "Swamp Eye" Jarl##4792
		..turnin Jarl Needs Eyes##1206
	step //160
		goto 55.4,25.9
		.' Click the Loose Dirt
		..accept The Severed Head##1239
		info It looks like a dirt grave next to the small shack
	step //161
		goto 35.2,30.7
		.talk Nazeer Bloodpike##4791
		..turnin The Severed Head##1239
		..accept The Troll Witchdoctor##1240
	step //162
		'Hearth to the Crossroads|goto The Barrens,52.0,29.9,0.1|use hearthstone##6948|noway|c
	step //163
		'Fly to Ratchet|goto The Barrens,63.1,37.1,0.1|noway|c
	step //164
		goto 62.4,37.6
		.talk Mebok Mizzyrix##3446
		..turnin Stinky's Escape##1270
	step //165
		'Ride the boat to Booty Bay|goto Stranglethorn Vale
	step //166
		goto Stranglethorn Vale,28.1,76.2
		.talk First Mate Crazz##2490
		..accept The Bloodsail Buccaneers (1)##595
	step //167
		home Booty Bay
	step //168
		goto 27.1,77.2
		.talk Crank Fizzlebub##2498
		..accept Venture Company Mining##600
	step //169
		goto 27,77.2
		.talk Krazek##773
		..turnin The Rumormonger##1115
	step //170
		goto 27.2,76.9
		.talk Fleet Master Seahorn##2487
		..turnin Sunken Treasure (4)##669
	step //171
		'Fly to Grom'gol Base Camp|goto Stranglethorn Vale,32.5,29.3,0.1|noway|c
	step //172
		goto 32.2,27.7
		.talk Kin'weelay##2519
		..turnin The Troll Witchdoctor##1240
		.' Click the Bubbling Cauldron
		..accept Marg Speaks##1261
	step //173
		ding 40
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Levels (40-45)",[[
	author support@zygorguides.com
	next Zygor's Horde Leveling Guides\\Levels (45-50)
	startlevel 40
	step //1
		goto Stranglethorn Vale,33.7,37.3
		.kill 10 Jungle Stalker|q 196/1
		.' Kill Jungle Stalkers
		.get 10 Jungle Stalker Feather|q 572/1
	step //2
		goto 41.1,43.6
		.' Kill goblins
		.get 10 Singing Blue Crystal|q 600/1
	step //3
		goto 39.9,27.6
		.' Kill Snapjaw Crocolisks around this area along the river
		.get 5 Snapjaw Crocolisk Skin|q 577/1
	step //4
		goto 32.2,17.4
		.' Kill Sin'Dall|tip On top of a big hill
		.get Paw of Sin'Dall|q 188/1
	step //5
		goto 35.6,10.6
		.talk Hemet Nesingwary Jr.##715
		..turnin Raptor Mastery (3)##196
		..accept Raptor Mastery (4)##197
		.talk Ajeck Rouack##717
		..turnin Tiger Mastery (4)##188
		.talk Sir S. J. Erlgadin##718
		..turnin Panther Mastery (3)##192
		..accept Panther Mastery (4)##193
	step //6
		goto 32.1,29.2
		.talk Far Seer Mok'thardin##2465
		..turnin Mok'thardin's Enchantment (2)##572
		..accept Mok'thardin's Enchantment (3)##571
	step //7
		goto 50,24
		.' Kill Bhag'thera
		.get Fang of Bhag'thera|q 193/1
		.'Bhag'thera can also be found at 47.2,28.6|goto 47.2,28.6|n
		info Bhag'thera is a non-stealth panther
	step //8
		goto 35.6,10.6
		.talk Sir S. J. Erlgadin##718
		..turnin Panther Mastery (4)##193
	step //9
		'Hearth to Booty Bay|goto 27.1,77.3,0.1|use hearthstone##6948|noway|c
	step //10
		goto 27.1,77.2
		.talk Crank Fizzlebub##2498
		..turnin Venture Company Mining##600
	step //11
		goto 28.3,77.6
		.talk Drizzlik##2495
		..turnin Some Assembly Required##577
		..accept Excelsior##628
	step //12

		goto 27.3,69.5
		.' Click the Bloodsail Correspondence
		..turnin The Bloodsail Buccaneers (1)##595
		..accept The Bloodsail Buccaneers (2)##597
		info It's a piece of paper sitting on top of a barrel
	step //13
		goto 31.6,67.3
		.' Kill gorillas
		.get 5 Mistvale Giblets|q 606/1
		.get 1 Aged Gorilla Sinew|q 571/1
	step //14
		'Go inside Booty Bay to 26.9,73.6|goto 26.9,73.6
		.talk "Shaky" Phillipe##2502
		..turnin Scaring Shaky##606
		..accept Return to MacKinley##607
	step //15
		goto 28.1,76.2
		.talk First Mate Crazz##2490
		..turnin The Bloodsail Buccaneers (2)##597
		..accept The Bloodsail Buccaneers (3)##599
	step //16
		goto 27.8,77.1
		.talk "Sea Wolf" MacKinley##2501
		..turnin Return to MacKinley##607
	step //17
		goto 27.2,76.9
		.talk Fleet Master Seahorn##2487
		..turnin The Bloodsail Buccaneers (3)##599
	step //18
		'Fly to Grom'gol Base Camp|goto Stranglethorn Vale,32.5,29.3,0.1|noway|c
	step //19
		goto 32.1,29.2
		.talk Far Seer Mok'thardin##2465
		..turnin Mok'thardin's Enchantment (3)##571
	step //20
		goto 30,26
		.kill 1 Elder Saltwater Crocolisk|n
		.get 1 Elder Crocolisk Skin|q 628/1
	step //21
		'Go to Grom'gol Base Camp and fly to Booty Bay|goto Stranglethorn Vale,26.8,77.0,0.1|noway|c
	step //22
		goto 28.3,77.6
		.talk Drizzlik##2495
		..turnin Excelsior##628
	step //23
		'Fly to Grom'gol Base Camp|goto Stranglethorn Vale,32.5,29.3,0.1|noway|c
	step //24
		'Ride the zeppelin to Undercity|goto Tirisfal Glades|noway|c
	step //25
		'Go south to Undercity|goto Undercity
	step //26
		'Buy the following items from the Auction House:
		.buy 1 Healing Potion|q 715/1
		.buy 1 Lesser Invisibility Potion|q 715/2
		.buy 1 Gyrochronatom|q 714/1
		.buy 1 Frost Oil|q 713/1
		info If you cannot buy some of these, ask people to make them for you in General and Trade chat.
		info2 Offer to pay well and you will usually get someone to do it for you.
	step //27
		'Fly to Hammerfall|goto Arathi Highlands,73.1,32.6,0.1|noway|c
	step //28
		'Go southwest to the Wetlands|goto Wetlands
	step //29
		'Go south to Loch Modan|goto Loch Modan
	step //30
		'Go southeast to the Badlands|goto Badlands
	step //31
		goto Badlands,42.4,52.8
		.talk Martek the Exiled##4618
		..turnin Martek the Exiled##1106
		..accept Indurium##1108
	step //32
		goto 25.9,44.6
		.talk Lotwil Veriatus##2921
		..accept Study of the Elements: Rock (1)##710
		..accept Coolant Heads Prevail##713
		..turnin Coolant Heads Prevail##713
		..accept Gyro... What?##714
		..turnin Gyro... What?##714
		.talk Lucien Tosselwrench##2920
		..accept Liquid Stone##715
		..turnin Liquid Stone##715
		info2 A little mechanical robot walks around this little area also.
	step //33
		ding 41
	step //34
		goto 22.9,44.5
		.' Kill Lesser Rock Elementals
		.get 10 Small Stone Shard|q 710/1
		info Kill Lesser Rock Elementals around this area
	step //35
		goto 25.9,44.6
		.talk Lotwil Veriatus##2921
		..turnin Study of the Elements: Rock (1)##710
		..accept Study of the Elements: Rock (2)##711
		info2 A little mechanical robot walks around this little area also.
	step //36
		goto 4,44.8
		.talk Gorrik##2861
		..fpath Kargath
	step //37
		goto 2.4,46.1
		.talk Jarkal Mossmeld##6868
		..accept Badlands Reagent Run##2258
	step //38
		goto 6,48.1
		.talk Advisor Sarophas##17097
		..accept Unclaimed Baggage##9439
	step //39
		goto 6.5,47.2
		.talk Neeka Bloodscar##5394
		..accept Coyote Thieves##1419
		..accept Report to Helgrum##1420
	step //40
		goto 17.4,60.1
		.' Kill buzzards
		.get 5 Buzzard Gizzard|q 2258/1
	step //41
		goto 20,49.4
		.' Kill Lesser Rock Elementals
		.get 5 Rock Elemental Shard|q 2258/3
	step //42
		goto 21.7,53.1
		.' Kill coyotes
		.get 10 Crag Coyote Fang|q 2258/2
		.get 30 Coyote Jawbone|q 1419/1
	step //43
		goto 38.2,72.3
		.' Kill Rock Elementals
		.get 3 Large Stone Slab|q 711/1
	step //44
		goto 48.1,73.1
		.' Kill Stonevault troggs
		.get 10 Indurium Flake|q 1108/1
	step //45
		goto 42.4,52.8
		.talk Martek the Exiled##4618
		..turnin Indurium##1108
		..accept News for Fizzle##1137
	step //46
		goto 41.1,29.2
		.' Inside Angor Fortress
		.' Click the Empty Barrel
		.get Advisor's Pack|q 9439/1
		info All the way down the hallway to the left, in the back room.  It's a big yellow barrel.
	step //47
		goto 41.7,26.8
		.' Inside Angor Fortress
		.' Click the Weapon Rack
		.get Advisor's Rapier|q 9439/2
		info All the way down the hallway to the right, in the back room.  It's a rack with some tall weapons on it.
	step //48
		goto 25.9,44.6
		.talk Lotwil Veriatus##2921
		..turnin Study of the Elements: Rock (2)##711
		..accept Study of the Elements: Rock (3)##712
		info2 A little mechanical robot walks around this little area also.
	step //49
		goto 6,48.1
		.talk Advisor Sarophas##17097
		..turnin Unclaimed Baggage##9439
	step //50
		goto 6.5,47.2
		.talk Neeka Bloodscar##5394
		..turnin Coyote Thieves##1419
	step //51
		goto 2.4,46.1
		.talk Jarkal Mossmeld##6868
		..turnin Badlands Reagent Run##2258
	step //52
		goto 8.9,72.2|n
		.' The path up to 'Study of the Elements: Rock' (3) starts here|goto Badlands,8.9,72.2,0.5|noway|c
	step //53
		goto 3.7,78
		.' Kill Greater Rock Elementals
		.get 5 Bracers of Rock Binding|q 712/1
	step //54
		goto 25.9,44.6
		.talk Lotwil Veriatus##2921
		..turnin Study of the Elements: Rock (3)##712
		..accept This Is Going to Be Hard (1)##734
		.talk Lucien Tosselwrench##2920
		..turnin This Is Going to Be Hard (1)##734
		..accept This Is Going to Be Hard (2)##777
	step //55
		goto 25.9,44.6
		.talk Lotwil Veriatus##2921
		..turnin This Is Going to Be Hard (2)##777
		..accept This Is Going to Be Hard (3)##778
		.' Kill the Fam'retor Guardian that spawns
		.get Lotwil's Shackles of Elemental Binding|q 778/1
	step //56
		.talk Lotwil Veriatus##2921
		..turnin This Is Going to Be Hard (3)##778
		info2 A little mechanical robot walks around this little area also.
	step //57
		ding 42
	step //58
		'Hearth to Booty Bay|goto Stranglethorn Vale,27.1,77.3,0.1|use hearthstone##6948|noway|c
	step //59
		'Fly to Grom'gol Base Camp|goto Stranglethorn Vale,32.5,29.3,0.1|noway|c
	step //60
		'Go northeast to Duskwood|goto Duskwood
	step //61
		goto Duskwood,87.6,35.5
		.talk Deathstalker Zraedus##5418
		..accept Nothing But The Truth (1)##1372
		.talk Apothecary Faustin##5414
		..turnin Nothing But The Truth (1)##1372
	step //62
		'Go southeast to Deadwind Pass|goto Deadwind Pass
	step //63
		'Go east to Swamp of Sorrows|goto Swamp of Sorrows
	step //64
		goto Swamp of Sorrows,44.7,57.2
		.talk Dar##5591
		..accept Lack of Surplus (1)##698
	step //65
		home Stonard
	step //66
		goto 46.1,54.8
		.talk Breyk##6026
		..fpath Stonard
	step //67
		goto 47.9,55
		.talk Helgrum the Swift##1442
		..turnin Report to Helgrum##1420
	step //68
		goto 82.2,68.3
		.' Kill Sawtooth Snappers
		.get 8 Unprepared Sawtooth Flank|q 698/1
	step //69
		goto 81.3,81
		.talk Tok'Kar##5592
		..turnin Lack of Surplus (1)##698
		..accept Lack of Surplus (2)##699
	step //70
		goto 82.2,68.3
		.' Kill Sawtooth Snappers
		.get 6 Sawtooth Snapper Claw|q 699/1
	step //71
		goto 81.3,81
		.talk Tok'Kar##5592
		..turnin Lack of Surplus (2)##699
		..accept Threat From the Sea (1)##1422
	step //72
		goto 83.8,80.4
		.talk Katar##5593
		..turnin Threat From the Sea (1)##1422
		..accept Threat From the Sea (2)##1426
	step //73
		goto 86,80.8
		.kill 10 Marsh Murloc|q 1426/1
		.kill 10 Marsh Inkspewer|q 1426/2
	step //74
		goto 91,72
		.kill 10 Marsh Flesheater|q 1426/3
	step //75
		goto 83.8,80.4
		.talk Katar##5593
		..turnin Threat From the Sea (2)##1426
		..accept Threat From the Sea (3)##1427
	step //76
		goto 81.3,81
		.talk Tok'Karr##5592
		..turnin Threat From the Sea (3)##1427
	step //77
		goto 83.8,80.4
		.talk Katar##5593
		..accept Continued Threat##1428
	step //78
		goto 86.8,78.7
		.' Complete this while heading north on the beach
		.kill 10 Marsh Inkspewer|q 1428/1
		.kill 10 Marsh Flesheater|q 1428/2
	step //79
		'Go into the cave at 66,76|goto 66.3,75.9
		.kill 10 Marsh Oracle|q 1428/3
	step //80
		goto 83.8,80.4
		.talk Katar##5593
		..turnin Continued Threat##1428
	step //81
		'Hearth to Stonard|goto Swamp of Sorrows,45.0,56.7,0.3|use hearthstone##6948|noway|c
	step //82
		'Fly to Grom'gol Base Camp|goto Stranglethorn Vale,32.5,29.3,0.1|noway|c
	step //83
		goto Stranglethorn Vale,32.1,29.2
		.talk Far Seer Mok'thardin##2465
		..accept Mok'thardin's Enchantment (4)##573
	step //84
		'Fly to Booty Bay|goto Stranglethorn Vale,26.8,77.0,0.1|noway|c
	step //85
		goto Stranglethorn Vale,27.2,76.9
		.talk Fleet Master Seahorn##2487
		..accept The Bloodsail Buccaneers (4)##604
	step //86
		goto 27,77.2
		.talk Krazek##773
		..accept Tran'rek##2864
	step //87
		goto 26.9,77.3
		.talk Deeg##2488
		..accept Up to Snuff##587
	step //88
		goto 27.1,77.5
		.talk Whiskey Slim##2491
		..accept Whiskey Slim's Lost Grog##580
	step //89
		home Booty Bay
	step //90
		goto 26.8,76.4
		.talk Privateer Bloads##2494
		..accept Akiris by the Bundle##617
	step //91
		goto 27.8,77.1
		.talk "Sea Wolf" MacKinley##2501
		..accept Voodoo Dues##609
		..accept Stoley's Debt##2872
	step //92
		goto 28.6,75.9
		.talk Dizzy One-Eye##2493
		..accept Keep An Eye Out##576
	step //93
		goto 33,75
		.' Kill Bloodsail pirates
		.get 15 Snuff|q 587/1
	step //94
		goto 31.9,78.6
		.kill 10 Bloodsail Swashbuckler|q 604/1
		.' Kill Bloodsail pirates
		.get Dizzy's Eye|q 576/1
	step //95
		goto 29.6,80.9
		.' Click the Bloodsail Orders
		.get Bloodsail Orders|q 604/3
		.' Click the Bloodsail Charts
		.get Bloodsail Charts|q 604/2
		.' They can also spawn in the camp to the southwest at 27.0,82.8|goto 27.0,82.8|n
		info They are scrolls laying on a box and in the tent here.
	step //96
		goto 26,61.7
		.kill 10 Naga Explorer|q 573/1
		.' Kill nagas around this area
		.get 10 Akiris Reed|q 617/1
	step //97
		goto 28.9,62
		.' Click the Holy Spring
		.get Holy Spring Water|q 573/2
		info It's a wall fountain on the other side of this wooden bridge.
	step //98
		goto 34.8,51.8
		.' Kill Jon-Jon the Crow
		.get Jon-Jon's Golden Spyglass|q 609/2
		info Standing next to a bonfire.
	step //99
		goto 35.2,51.2
		.' Kill Maury "Club Foot" Wilkins
		.get Maury's Clubbed Foot|q 609/1
		info In a small room in the ruins.
	step //100
		goto 40.1,58.2
		.' Kill Chucky "Ten Thumbs"
		.get Chucky's Huge Ring|q 609/3
		info Standing in the back of the ruins.
	step //101
		goto 39,59
		.' Kill Zanzil mobs
		.get 12 Zanzil's Mixture|q 621/1
	step //102
		ding 43
	step //103
		'Hearth to Booty Bay|goto 27.1,77.3,0.1|use hearthstone##6948|noway|c
	step //104
		goto 27.1,77.2
		.talk Crank Fizzlebub##2498
		..turnin Zanzil's Secret##621
	step //105
		goto 26.9,77.3
		.talk Deeg##2488
		..turnin Up to Snuff##587
	step //106
		goto 27.2,76.9
		.talk Fleet Master Seahorn##2487
		..turnin The Bloodsail Buccaneers (4)##604
	step //107
		goto 26.8,76.4
		.talk Privateer Bloads##2494
		..turnin Akiris by the Bundle##617
	step //108
		goto 27.8,77.1
		.talk "Sea Wolf" MacKinley##2501
		..turnin Voodoo Dues##609
	step //109
		goto 28.6,75.9
		.talk Dizzy One-Eye##2493
		..turnin Keep An Eye Out##576
	step //110
		'Fly to Grom'gol Base Camp|goto Stranglethorn Vale,32.5,29.3,0.1|noway|c
	step //111
		goto 32.1,29.2
		.talk Far Seer Mok'thardin##2465
		..turnin Mok'thardin's Enchantment (4)##573
	step //112
		'Ride the zeppelin to Orgrimmar|goto Durotar
	step //113
		'Go northwest to Orgrimmar|goto Orgrimmar
	step //114
		goto Orgrimmar,75.2,34.2
		.talk Belgrom Rockmaul##4485
		..turnin Parts of the Swarm (2)##1184
		..accept A Threat in Feralas##2981
	step //115
		'Fly to Thunder Bluff|goto Thunder Bluff
	step //116
		goto Thunder Bluff,61.5,80.9
		.talk Melor Stonehoof##3441
		..turnin Frostmaw##1136
		..accept Deadmire##1205
	step //117
		'Fly to Brackenwall Village|goto Dustwallow Marsh,35.6,31.8,0.1|noway|c
	step //118
		goto Dustwallow Marsh,36.3,31.4
		.talk Overlord Mok'Morokk##4500
		..accept Overlord Mok'Morokk's Concern##1166
	step //119
		goto 37.2,33.1
		.talk Draz'Zilb##4501
		..accept Identifying the Brood##1169
	step //120
		goto 37.4,31.4
		.talk Tharg##4502
		..accept Army of the Black Dragon##1168
	step //121
		goto 41,36.7
		.talk Ogron##4983
		..accept Questioning Reethe##1273
		.' Escort Ogron
		.goal Question Reethe with Ogron|q 1273/1
	step //122
		goto 45.6,52.7
		.' Kill Deadmire
		.get Deadmire's Tooth|q 1205/1
		info It's a big white crocodile that walks around in the water around this area.  He patrols, so you may need to search for him.
	step //123
		goto 46.1,57.2
		.talk Apprentice Morlann##23600
		..accept Direhorn Raiders##11156
		.talk Apprentice Garion##23601
		..accept The Grimtotem Weapon##11169
		..accept The Reagent Thief##11173
	step //124
		goto 43.8,57
		.' Use your Captured Totem|use Captured Totem##33101
		.kill Mottled Drywallow Crocolisks next to the totem|n
		.' Perform 10 Totem Tests|goal 10 Totem Tests Performed|q 11169/1|tip Hunter's on this step should put their pet's on passive
	step //125
		goto 45,54
		.' Kill Darkfang Creepers
		.' Kill Noxious Shredders
		.get 6 Marsh Venom|q 11173/1
	step //126
		goto 47,50
		.'Kill 12 Direhorn Grimtotems|goal 12 Direhorn Grimtotems killed|q 11156/1
	step //127
		goto 47.2,46.6
		.' Kill Apothecary Cylla
		.get the Sealed Letter|n
		.' Click the Sealed Letter|use Sealed Letter##33115
		..accept Signs of Treachery?##11186
		info Standing inside a teepee.
	step //128
		goto 46.1,57.2
		.talk Apprentice Garion##23601
		..turnin The Reagent Thief##11173
		..turnin The Grimtotem Weapon##11169
		.talk Apprentice Morlann##23600
		..turnin Direhorn Raiders##11156
	step //129
		goto 42.3,72.9
		.talk Drazzit Dripvalve##23572
		..turnin Delivery for Drazzit##11208
	step //130
		goto 41.9,74
		.talk Brogg##23579
		..accept Banner of the Stonemaul##11160
		..accept The Essence of Enmity##11161
	step //131
		goto 41.5,73
		.talk Gizzix Grimegurgle##23570
		..accept Catch a Dragon by the Tail##11217
	step //132
		goto 39,66
		.' Kill Firemane mobs
		.' Use Brogg's Totem on their corpses|use Brogg's Totem##33088
		.get 10 Black Dragonkin Essence|q 11161/1
	step //133
		goto 38.7,65.6
		.' Click Mok'Morokk's Grog
		.get Mok'Morokk's Grog|q 1166/2
		info It's a red vase sitting at the mouth of the cave.
	step //134
		'Go southwest into the cave to 38,69|goto 38.1,69.4
		.' Click the Stonemaul Banner
		.get Stonemaul Banner|q 11160/1
		info It looks like a hanging tiger skin with an eye painted on it inside the cave.
	step //135
		'Go southwest inside the cave to 37,70|goto 36.6,69.6
		.' Click Mok'Morokk's Strongbox
		.get Mok'Morokk's Strongbox|q 1166/3
		info It's a small grey chest laying on the floor inside the cave.
	step //136
		'Leave the cave|goto Dustwallow Marsh,38.5,66.0,0.5
	step //137
		goto 41.7,67.3
		.kill 10 Firemane Scout|q 1168/1
		.kill 10 Firemane Ash Tail|q 1168/2
	step //138
		goto 44.5,66
		.' Click Mok'Morokk's Snuff
		.get Mok'Morokk's Snuff|q 1166/1
		info It's a barrel sitting upright in the middle of the camp.
	step //139
		goto 46,74
		.' Click the Wyrmtails
		.get 8 Wyrmtail|q 11217/1
		info They look like green balls on the ground.
	step //140
		goto 42,77.8
		.' Kill Searing Hatchlings
		.' Kill Searing Whelps
		.get 7 Searing Tongue|q 1169/1
		.get 7 Searing Heart|q 1169/2
	step //141
		ding 44
	step //142
		goto 41.9,74
		.talk Brogg##23579
		..turnin Banner of the Stonemaul##11160
		..turnin The Essence of Enmity##11161
		..accept Spirits of Stonemaul Hold##11159
	step //143
		goto 41.5,73
		.talk Gizzix Grimegurgle##23570
		..turnin Catch a Dragon by the Tail##11217
	step //144
		goto 45,66.9
		.' Click the Ogre Remains
		.' Kill the Ogre Spirits
		.' Lay 10 Stonemaul Spirits to rest|goal 10 Stonemaul Spirits laid to rest|q 11159/1
		info They look like big white bones on the ground.
	step //145
		goto 41.9,74
		.talk Brogg##23579
		..turnin Spirits of Stonemaul Hold##11159
		..accept Challenge to the Black Flight##11162
	step //146
		goto 51.4,74.9
		.kill 5 Firemane Scalebane|q 1168/3
	step //147
		goto 52.1,75.8
		.' Use your Stonemaul Banner at the foot of the stone ramp at the entrance to Onyxia's Lair|use Stonemaul Banner##33095
		..'A dragon will appear
		.' Kill Smolderwing
		.' Avenge the Stonemaul Clan|goal Stonemaul Clan Avenged|q 11162/1
	step //148
		goto 55.5,67.9|n
		.' The path over to 'Marg Speaks' starts here|goto Dustwallow Marsh,55.5,67.9,0.5|noway|c
	step //149
		goto 55.8,65
		.' Kill Muckshell mobs underwater
		.get Jeweled Pendant|q 1261/1
	step //150
		goto 41.9,74
		.talk Brogg##23579
		..turnin Challenge to the Black Flight##11162
	step //151
		'Fly to Brackenwall Village|goto Dustwallow Marsh,35.6,31.8,0.1|noway|c
	step //152
		goto 35.2,30.7
		.talk Nazeer Bloodpike##4791
		..turnin Marg Speaks##1261
		..accept Report to Zor##1262
		..turnin Signs of Treachery?##11186
	step //153
		goto 36.3,31.4
		.talk Overlord Mok'Morokk##4500
		..turnin Overlord Mok'Morokk's Concern##1166
	step //154
		goto 36.4,31.9
		.talk Krog##4926
		..turnin Questioning Reethe##1273
	step //155
		goto 37.2,33.1
		.talk Draz'Zilb##4501
		..turnin Identifying the Brood##1169
		..accept The Brood of Onyxia (1)##1170
	step //156
		goto 36.3,31.4
		.talk Overlord Mok'Morokk##4500
		..turnin The Brood of Onyxia (1)##1170
		..accept The Brood of Onyxia (2)##1171
	step //157
		goto 37.2,33.1
		.talk Draz'Zilb##4501
		..turnin The Brood of Onyxia (2)##1171
		..accept The Brood of Onyxia (3)##1172
	step //158
		goto 37.4,31.4
		.talk Tharg##4502
		..turnin Army of the Black Dragon##1168
	step //159
		'Fly to Mudsprocket|goto Dustwallow Marsh,42.9,72.4,0.1|noway|c
	step //160
		goto 48.4,76
		.' Click the Eggs of Onyxia
		.' Destroy 4 Eggs of Onyxia|goal 4 Egg of Onyxia destroyed|q 1172/1
	step //161
		goto 48.5,73.6
		.' Click an Egg of Onyxia
		.' Destroy 1 Egg of Onyxia|goal 5 Egg of Onyxia destroyed|q 1172/1
		info They look like little brown eggs in a big rock bowl thing.
	step //162
		'Go west to Mudsprocket and fly to Brackenwall Village|goto Dustwallow Marsh,35.6,31.8,0.1|noway|c
	step //163
		goto 37.2,33.1
		.talk Draz'Zilb##4501
		..turnin The Brood of Onyxia (3)##1172
	step //164
		'Fly to Thunder Bluff|goto Thunder Bluff
	step //165
		goto Thunder Bluff,61.5,80.9
		.talk Melor Stonehoof##3441
		..turnin Deadmire##1205
	step //166
		'Fly to Gadgetzan|goto Tanaris,51.6,25.5,0.1|noway|c
	step //167
		goto Tanaris,51.6,26.8
		.talk Tran'rek##7876
		..turnin Tran'rek##2864
	step //168
		goto 51.8,27
		.' Click the Wanted Poster
		..accept WANTED: Caliph Scorpidsting##2781
		..accept WANTED: Andre Firebeard##2875
		info Right in front of the huge cage door
	step //169
		home Gadgetzan
	step //170
		goto 52.5,28.5
		.talk Spigot Operator Luglunket##7408
		..accept Water Pouch Bounty##1707
		.talk Chief Engineer Bilgewhizzle##7407
		..accept Wastewander Justice##1690
	step //171
		goto 50.2,27.5
		.talk Senior Surveyor Fizzledowser##7724
		..accept Gadgetzan Water Survey##992
	step //172
		'Go north to Thousand Needles|goto Thousand Needles
	step //173
		goto Thousand Needles,78.1,77.1
		.talk Fizzle Brassbolts##4454
		..turnin News for Fizzle##1137
	step //174
		goto 80.2,75.9
		.talk Pozzik##4630
		..accept Keeping Pace##1190
	step //175
		goto 79.8,77
		.talk Zamek##4709
		..turnin Zamek's Distraction##1191
		..'He will make a distraction
	step //176
		goto 77.2,77.4
		.' Click Rizzle's Unguarded Plans
		..turnin Keeping Pace##1190
		..accept Rizzle's Schematics##1194
		info Rizzle Brassbolts will run out of the house.  The plans look like a scroll laying on the ground inside a small house.
	step //177
		goto 80.2,75.9
		.talk Pozzik##4630
		..turnin Rizzle's Schematics##1194
	step //178
		goto 80.3,76.1
		.talk Razzeric##4706
		..turnin Razzeric's Tweaking##1187
		..accept Safety First (1)##1188
	step //179
		'Hearth to Gadgetzan|goto Tanaris,52.4,27.9,0.3|use hearthstone##6948|noway|c
	step //180
		goto Tanaris,51,27.2
		.talk Shreev##4708
		..turnin Safety First (1)##1188
		..accept Safety First (2)##1189
	step //181
		'Go north to Thousand Needles|goto Thousand Needles
	step //182
		goto Thousand Needles,80.3,76.1
		.talk Razzeric##4706
		..turnin Safety First (2)##1189
	step //183
		'Go southwest to Tanaris|goto Tanaris
	step //184
		goto Tanaris,38.6,29.4
		.' Use your Untapped Dowsing Widget while standing next to the water|use Untapped Dowsing Widget##8584
		.get Tapped Dowsing Widget|q 992/1
		.' Run away from the insects that spawn
	step //185
		goto 50.2,27.5
		.talk Senior Surveyor Fizzledowser##7724
		..turnin Gadgetzan Water Survey##992
	step //186
		goto 59.5,24.9
		.kill 10 Wastewander Bandit|q 1690/1
		.kill 10 Wastewander Thief|q 1690/2
		.' Kill Wastewander mobs
		.get 5 Wastewander Water Pouch|q 1707/1
		.' you can find more Wastewander Bandits and Wastewander Thieves at 62.9,29.2 |n
	step //187
		goto 67.1,23.9
		.talk Security Chief Bilgewhizzle##7882
		..accept Southsea Shakedown##8366
		.talk Stoley##7881
		..turnin Stoley's Debt##2872
		..accept Stoley's Shipment##2873
	step //188
		goto 66.6,22.3
		.talk Haughty Modiste##15165
		..accept Pirate Hats Ahoy!##8365
	step //189
		goto 67,22.4
		.talk Yeh'kinya##8579
		..accept Screecher Spirits##3520
	step //190
		goto 62.8,34.7
		.' Kill Caliph Scorpidsting
		.get Caliph Scorpidsting's Head|q 2781/1
		info He wanders around this area.
	step //191
		goto 70.8,42.7
		.kill 10 Southsea Pirate|q 8366/1
		.kill 10 Southsea Freebooter|q 8366/2
		.' Kill Southsea mobs
		.get 20 Southsea Pirate Hat|q 8365/1
	step //192
		ding 45
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Levels (45-50)",[[
	author support@zygorguides.com
	next Zygor's Horde Leveling Guides\\Levels (50-55)
	startlevel 45
	step //1
		goto Tanaris,73.3,46.2
		.kill 10 Southsea Dock Worker|q 8366/3
		.kill 10 Southsea Swashbuckler|q 8366/4
	step //2
		goto 73.3,47.1
		.' Kill Andre Firebeard
		.get Firebeard's Head|q 2875/1
		info Standing in the middle of the camp, next to a campfire.
	step //3
		goto 72.2,46.7
		.' Click the Stolen Cargo
		.get Stoley's Shipment|q 2873/1
		info Upstairs in the long house. It looks like a bunch of boxes upstairs.
	step //4
		'Hearth to Gadgetzan|goto Tanaris,52.4,27.9,0.3|use hearthstone##6948|noway|c
	step //5
		goto 52.5,28.5
		.talk Spigot Operator Luglunket##7408
		..turnin Water Pouch Bounty##1707
		.talk Chief Engineer Bilgewhizzle##7407
		..turnin Wastewander Justice##1690
		..accept More Wastewander Justice##1691
		..turnin WANTED: Caliph Scorpidsting##2781
	step //6
		goto 59.8,32.6
		.kill 8 Wastewander Rogue|q 1691/1
		.kill 6 Wastewander Assassin|q 1691/2
		.kill 10 Wastewander Shadow Mage|q 1691/3
		.' Save 5 Wastewander Water Pouches for later|collect 5 Wastewander Water Pouch##8483|q 379|future
	step //7
		goto 67.1,23.9
		.talk Security Chief Bilgewhizzle##7882
		..turnin WANTED: Andre Firebeard##2875
		..turnin Southsea Shakedown##8366
		.talk Stoley##7881
		..turnin Stoley's Shipment##2873
		..accept Deliver to MacKinley##2874
	step //8
		goto 66.6,22.3
		.talk Haughty Modiste##15165
		..turnin Pirate Hats Ahoy!##8365
	step //9
		goto 52.5,28.5
		.talk Chief Engineer Bilgewhizzle##7407
		..turnin More Wastewander Justice##1691
	step //10
		'Fly to Freewind Post|goto Thousand Needles,45.0,49.1,0.1|noway|c
	step //11
		'Go northwest to Feralas|goto Feralas
	step //12
		goto Feralas,75.9,42.7
		.talk Krueg Skullsplitter##4544
		..accept A New Cloak's Sheen##2973
	step //13
		goto 75.9,43.6
		.talk Rok Orhan##7777
		..turnin A Threat in Feralas##2981
		..accept The Ogres of Feralas (1)##2975
	step //14
		goto 76.2,43.8
		.talk Talo Thornhoof##7776
		..accept Dark Heart##3062
		..accept Vengeance on the Northspring##3063
	step //15
		goto 75.7,44.3
		.talk Orwin Gizzmick##8021
		..accept Gordunni Cobalt##2987
	step //16
		goto 75.4,44.4
		.talk Shyn##8020
		..fpath Camp Mojache
	step //17
		goto 74.9,42.5
		.talk Hadoken Swiftstrider##7875
		..accept War on the Woodpaw##2862
	step //18
		goto 74.4,42.9
		.talk Jangdor Swiftstrider##7854
		..accept The Mark of Quality##2822
	step //19
		goto 74.4,43.4
		.talk Witch Doctor Uzer'i##8115
		..accept A Strange Request##3121
	step //20
		home Camp Mojache
	step //21
		goto 72.5,40.2
		.' Kill Woodpaw gnolls
		.get 10 Woodpaw Gnoll Mane|q 2862/1
	step //22
		goto 75.4,34.3
		.kill 10 Gordunni Ogre|q 2975/1
		.kill 10 Gordunni Ogre Mage|q 2975/2
		.kill 5 Gordunni Brute|q 2975/3
		.' Use Orwin's Shovel on top of the blue glowing spots on the ground|use Orwin's Shovel##9466
		.' Click the dirt mounds
		.get 12 Gordunni Cobalt|q 2987/1
	step //23
		goto 80.6,34.3
		.' Click the Gordunni Scroll
		.get the Gordunni Scroll|n
		.' Click Gordunni Scroll in your bags|use Gordunni Scroll##9370
		..accept The Gordunni Scroll##2978
		info It's a scroll laying flat on the ground next to some small barrels.
		info2 It can spawn at different spots around this area, so just look for it on the ground
	step //24
		goto 74.9,42.5
		.talk Hadoken Swiftstrider##7875
		..turnin War on the Woodpaw##2862
		..accept Alpha Strike##2863
	step //25
		goto 75.7,44.3
		.talk Orwin Gizzmick##8021
		..turnin Gordunni Cobalt##2987
	step //26
		goto 75.9,43.6
		.talk Rok Orhan##7777
		..turnin The Ogres of Feralas (1)##2975
		..accept The Ogres of Feralas (2)##2980
		..turnin The Gordunni Scroll##2978
		..accept Dark Ceremony##2979
	step //27
		goto 73.5,55.5
		.kill 5 Woodpaw Alpha|q 2863/1
		info They are always in the little camps of gnolls next to tents
	step //28
		goto 74.9,42.5
		.talk Hadoken Swiftstrider##7875
		..turnin Alpha Strike##2863
		..accept Woodpaw Investigation##2902
	step //29
		goto 71.6,55.9
		.' Click the Woodpaw Battle Map
		..turnin Woodpaw Investigation##2902
		..accept The Battle Plans##2903
		info It's a scroll laying on a box in this gnoll camp.
	step //30
		ding 46
	step //31
		goto 69,49
		.' Kill Sprite Darters
		.get 10 Iridescent Sprite Darter Wing|q 2973/1
	step //32
		goto 74.9,42.5
		.talk Hadoken Swiftstrider##7875
		..turnin The Battle Plans##2903
		..accept Zukk'ash Infestation##7730
		..accept Stinglasher##7731
	step //33
		goto 75.9,42.7
		.talk Krueg Skullsplitter##4544
		..turnin A New Cloak's Sheen##2973
		..accept A Grim Discovery (1)##2974
	step //34
		goto 75.3,60.6
		.' Stinglasher wanders around this area and inside the hive
		.' Kill Stinglasher
		.get Stinglasher's Glands|q 7731/1
	step //35
		goto 72.8,62.8
		.' Kill Zukk'ash mobs
		.get 20 Zukk'ash Carapace|q 7730/1
	step //36
		goto 69.6,47.7
		.' Kill Grimtotem mobs
		.get 20 Grimtotem Horn|q 2974/1
	step //37
		goto 74.9,42.5
		.talk Hadoken Swiftstrider##7875
		..turnin Zukk'ash Infestation##7730
		..turnin Stinglasher##7731
		..accept Zukk'ash Report##7732
	step //38
		goto 75.9,42.7
		.talk Krueg Skullsplitter##4544
		..turnin A Grim Discovery (1)##2974
		..accept A Grim Discovery (2)##2976
	step //39
		goto 46.5,47.1
		.' Kill Rogue Vale Screechers
		.' Use Yeh'kinya's Bramble on the Vale Screecher corpses|use Yeh'kinya's Bramble##10699
		.talk Screecher Spirit##8612
		.' Collect 3 Screecher Spirits|goal 3 Screecher Spirits Collected|q 3520/1
	step //40
		goto 55.4,54.4
		.' Kill Feral Scar Yetis
		.get 10 Thick Yeti Hide|q 2822/1
	step //41
		goto 59.1,62.6
		.kill 10 Gordunni Shaman|q 2980/1
		.kill 10 Gordunni Warlock|q 2980/2
		.kill 5 Gordunni Mauler|q 2980/3
	step //42
		goto 59.5,68.4
		.' Kill Gordunni Mage-Lords
		.get Gordunni Orb|q 2979/1
	step //43
		goto 74.4,43.4
		.talk Witch Doctor Uzer'i##8115
		..accept The Sunken Temple##3380
	step //44
		goto 74.4,42.9
		.talk Jangdor Swiftstrider##7854
		..turnin The Mark of Quality##2822
		..accept Improved Quality##7734
	step //45
		goto 75.9,43.6
		.talk Rok Orhan##7777
		..turnin Dark Ceremony##2979
		..accept The Gordunni Orb##3002
		..turnin The Ogres of Feralas (2)##2980
	step //46
		'Fly to Orgrimmar|goto Orgrimmar
	step //47
		goto Orgrimmar,39.2,86.3
		.talk Uthel'nay##7311
		..turnin The Gordunni Orb##3002
	step //48
		goto 56.2,46.7
		.talk Zilzibin Drumlore##7010
		..turnin Zukk'ash Report##7732
	step //49
		goto 59.5,36.8
		.talk Dran Droffers##6986
		..accept Ripple Recover (1)##649
		.talk Malton Droffers##6987
		..turnin Ripple Recovery (1)##649
		..accept Ripple Recovery (2)##650
	step //50
		goto 75.2,34.2
		.talk Belgrom Rockmaul##4485
		..turnin A Grim Discovery (2)##2976
		..accept Betrayed (1)##3504
	step //51
		goto 38.9,38.4
		.talk Zor Lonetree##4047
		..turnin Report to Zor##1262
		..accept Service to the Horde##7541 |instant
	step //52
		ding 47
	step //53
		'Hearth to Camp Mojache|goto Feralas,74.8,45.1,0.1|use hearthstone##6948|noway|c
	step //54
		goto 76.8,37.5
		.talk Xerash Fireblade##36208
		..turnin A Strange Request##3121
		..accept Return to Witch Doctor Uzer'i##3122
	step //55
		goto Feralas,74.4,43.4
		.talk Witch Doctor Uzer'i##8115
		..turnin Return to Witch Doctor Uzer'i##3122
		..accept Natural Materials##3128
		..accept Testing the Vessel##3123
	step //56
		goto 68.4,49.2
		.' Kill Sprite Darters
		.get 6 Encrusted Minerals|q 3128/2
	step //57
		goto 56.3,61
		.' Kill Wandering Forest Walkers
		.get 2 Splintered Log|q 3128/1
		.' Kill hippogryphs
		.get 20 Resilient Sinew|q 3128/3
		.get 40 Metallic Fragments|q 3128/4
		info The Wandering Forest Walkers are walking trees.  They are rare, so you may need to search for them.
	step //58
		'Hearth to Camp Mojache|goto Feralas,74.8,45.1,0.1|use hearthstone##6948|noway|c
	step //59
		goto 74.4,43.4
		.talk Witch Doctor Uzer'i##8115
		..turnin Natural Materials##3128
	step //60
		'Fly to Splintertree Post|goto Ashenvale,73.3,61.7,0.1|noway|c
	step //61
		'Go northeast to Azshara|goto Azshara
	step //62
		goto Azshara,11.4,78.2
		.talk Loh'atu##11548
		..accept Spiritual Unrest##5535
		..accept A Land Filled with Hatred##5536
	step //63
		goto 13.4,73.9
		.kill 6 Highborne Apparition|q 5535/1
		.kill 6 Highborne Lichling|q 5535/2
		.' more can be found at 16.6,71.5
	step //64
		goto 19.3,64
		.kill 6 Haldarr Satyr|q 5536/1
		.kill 2 Haldarr Trickster|q 5536/2
		.kill 2 Haldarr Felsworn|q 5536/3
	step //65
		goto 11.4,78.2
		.talk Loh'atu##11548
		..turnin Spiritual Unrest##5535
		..turnin A Land Filled with Hatred##5536
	step //66
		goto 22.3,51.5
		.talk Ag'tor Bloodfist##8576
		..turnin Betrayed (1)##3504
	step //67
		goto 22,49.6
		.talk Kroum##8610
		..fpath Valormok
	step //68
		'Fly to Orgrimmar|goto Orgrimmar
	step //69
		'Go outside to Durotar|goto Durotar
	step //70
		goto Durotar,50.8,13.3|n
		'Ride the zeppelin to Undercity|goto Tirisfal Glades|noway|c
		info You can ride zeppelins to either Undercity or the Grom'Gol Base Camp here
	step //71
		'Go south to Undercity|goto Undercity
	step //72
		goto Undercity,73,32.9
		.talk Oran Snakewrithe##7825
		..accept Lines of Communication##2995
	step //73
		goto 48.4,71.8
		.talk Chemist Cuely##8390
		..accept Seeping Corruption (1)##3568
	step //74
		goto 49.9,68.4
		.talk Apothecary Zinge##5204
		..accept Errand for Apothecary Zinge (1)##232
	step //75
		goto 58.6,54.7
		.talk Alessandro Luca##7683
		..turnin Errand for Apothecary Zinge (1)##232
		..accept Errand for Apothecary Zinge (2)##238
	step //76
		goto 49.9,68.4
		.talk Apothecary Zinge##5204
		..turnin Errand for Apothecary Zinge (2)##238
		..accept Into the Field##243
	step //77
		'Fly to Tarren Mill|goto Hillsbrad Foothills,60.2,18.8,0.1|noway|c
	step //78
		home Tarren Mill
	step //79
		goto 84.9,31.8|n
		.' The path to the Hinterlands starts here|goto Hillsbrad Foothills,84.9,31.8,1|noway|c
	step //80
		'Go northeast to the Hinterlands|goto The Hinterlands
	step //81
		goto The Hinterlands,20.4,48.2|n
		.' The path up to Gilveradin Sunchaser starts here|goto The Hinterlands,20.4,48.2,0.5|noway|c
	step //82
		goto 26.7,48.6
		.talk Gilveradin Sunchaser##7801
		..turnin Ripple Recovery (2)##650
		..accept A Sticky Situation##77
	step //83
		goto 28.6,46.1
		.' Click the Highvale Report
		.' Burn the Highvale Report|goal Burn the Highvale Report|q 2995/3
		info It's a scroll laying flat on a stump under a dark gazebo.
	step //84
		goto 29.6,48.7
		.' Click the Highvale Notes
		.' Burn the Highvale Notes|goal Burn the Highvale Notes|q 2995/2
		info It's a scroll laying flat on the ground, next to a well.
	step //85
		goto 32,46.8
		.' Click the Highvale Records
		.' Burn the Highvale Records|goal Burn the Highvale Records|q 2995/1
		info It's a scroll laying falt on the ground inside the big building, next to some barrels, down the hallway to the right as you enter the front of the building.
	step //86
		goto 30.7,47
		.talk Rin'ji##7780
		..accept Rin'ji is Trapped!##2742
		.' Escort Rin'ji to safety|goal Escort Rin'ji to safety|q 2742/1
	step //87
		goto 32.6,56.8
		.' Kill Witherbark trolls
		.collect 20 Witherbark Skull##9320|q 2932 |n
		.' Click Nimboya's Pike in your bags once you have 20 Witherbark Skulls|use Nimboya's Pike##15002
		.' Click Nimboya's Laden Pike while inside the troll village|use Nimboya's Laden Pike##9319
		.' Plant the Grim Message|goal Place the grim message.|q 2932/1
	step //88
		goto 31.5,57.7
		.' Click a Venom Bottle
		..accept Venom Bottles##2933
		info They are green bottles sitting on a table.
	step //89
		goto 47.2,40.3
		.' Click the Horde Supply Crates
		.get 10 Hinterlands Honey Ripple|q 77/1
		info They look like wooden crates with red designs on the side of the them.
	step //90
		goto 71.2,64.7|n
		.' The path down to Revantusk Village starts here|goto The Hinterlands,71.2,64.7,0.5|noway|c
	step //91
		goto 78.8,78.2
		.talk Mystic Yayo'jin##14739
		..accept Cannibalistic Cousins##7844
	step //92
		goto 79.4,79.1
		.talk Otho Moji'ko##14738
		..accept Message to the Wildhammer##7841
	step //93
		goto 79.2,79.5
		.talk Huntsman Markhor##14741
		..accept Stalking the Stalkers##7828
		..accept Hunt the Savages##7829
		..accept Avenging the Fallen##7830
	step //94
		goto 81.7,81.8
		.talk Gorkas##4314
		..fpath Revantusk Village
	step //95
		goto 77.5,80.3
		.talk Smith Slagtree##14737
		..accept Vilebranch Hooligans##7839
	step //96
		goto 77.2,76.1
		.' Click the Pupellyverbos Port bottles
		.get 12 Pupellyverbos Port|q 580/1
		info They look like little blue bottles all along the beach around this area.
	step //97
		goto 86.3,59
		.' Click Rin'ji's Secret
		..turnin Rin'ji is Trapped!##2742
		..accept Rin'ji's Secret##2782
		info It's a big stone slab standing upright on the little island, under a stone arch
	step //98
		goto 70.3,58.9
		.kill 5 Silvermane Stalker|q 7828/1
	step //99
		goto 72.6,53.0
		'Slagtree's Lost Tools can be at any of these 5 spots:
		.'At 72.6,53.0
		.'At 71.0,48.6
		.'At 66.4,44.7
		.'At 57.5,42.6
		.'At 53.3,38.8
		.' Click Slagtree's Lost Tools
		.get Slagtree's Lost Tools|q 7839/1
		info It's a small bucket of tools.
	step //100
		goto 70.8,49.5
		.kill 6 Vilebranch Scalper|q 7844/1
		.kill 2 Vilebranch Soothsayer|q 7844/2
		.'You can also find them at 66.4,44.7
	step //101
		goto 59.4,53.7
		.' Kill a Razorbeak Skylord
		.get Skylord Plume|q 7830/1
	step //102
		goto 54.1,50.4
		.kill 10 Savage Owlbeast|q 7829/1
	step //103
		ding 48
	step //104
		goto 43.9,58.7
		.kill 5 Silvermane Howler|q 7828/2
	step //105
		goto 77.5,80.3
		.talk Smith Slagtree##14737
		..turnin Vilebranch Hooligans##7839
	step //106
		goto 78.8,78.2
		.talk Mystic Yayo'jin##14739
		..turnin Cannibalistic Cousins##7844
	step //107
		goto 79.2,79.5
		.talk Huntsman Markhor##14741
		..turnin Stalking the Stalkers##7828
		..turnin Hunt the Savages##7829
		..turnin Avenging the Fallen##7830
	step //108
		'Fly to Tarren Mill|goto Hillsbrad Foothills,60.2,18.8,0.1|noway|c
	step //109
		goto Hillsbrad Foothills,61.4,19.1
		.talk Apothecary Lydon##2216
		..turnin Venom Bottles##2933
		..accept Undamaged Venom Sac##2934
	step //110
		goto 84.9,31.8|n
		.' The path to the Hinterlands starts here|goto Hillsbrad Foothills,84.9,31.8,1|noway|c
	step //111
		'Go northeast to the Hinterlands|goto The Hinterlands
	step //112
		goto The Hinterlands,26.7,48.6
		.talk Gilveradin Sunchaser##7801
		..turnin A Sticky Situation##77
		..accept Ripple Delivery##81
	step //113
		goto 29.1,51.5
		.kill 8 Highvale Scout|q 7841/1
		.kill 5 Highvale Outrunner|q 7841/2
		.kill 5 Highvale Ranger|q 7841/3
		.kill 2 Highvale Marksman|q 7841/4
	step //114
		goto 35.7,64.8
		.kill spiders|n
		.get Undamaged Venom Sac|q 2934/1
		..'This item has a timed expiration, so hurry
	step //115
		goto 79.4,79.1
		.talk Otho Moji'ko##14738
		..turnin Message to the Wildhammer##7841
	step //116
		'Hearth to Tarren Mill|goto Hillsbrad Foothills,62.7,19.1,0.1|use hearthstone##6948|noway|c
	step //117
		goto Hillsbrad Foothills,61.4,19.1
		.talk Apothecary Lydon##2216
		..turnin Undamaged Venom Sac##2934
	step //118
		'Fly to Undercity|goto Undercity
	step //119
		goto Undercity,73,32.9
		.talk Oran Snakewrithe##7825
		..turnin Rin'ji's Secret##2782
		..turnin Lines of Communication##2995
		..accept Oran's Gratitude##8273 |instant
	step //120
		'Fly to Grom'gol Base Camp|goto Stranglethorn Vale,32.5,29.3,0.1|noway|c
	step //121
		goto Stranglethorn Vale,32.2,27.7
		.talk Nimboya##2497
		..turnin Grim Message##2932
	step //122
		goto 29.2,44.1
		.' Kill Tethis
		.get Talon of Tethis|q 197/1
		info He is a raptor that wanders around this area.
	step //123
		goto 35.6,10.6
		.talk Hemet Nesingwary Jr.##715
		..turnin Raptor Mastery (4)##197
		..accept Big Game Hunter##208
	step //124
		goto 38.2,36.4
		.from King Bangalash##731
		.get Head of Bangalash|q 208/1
		info He's a white tiger on top of this hill.
	step //125
		goto 35.6,10.6
		.talk Hemet Nesingwary Jr.##715
		..turnin Big Game Hunter##208
	step //126
		'Go southwest to Grom'gol Base Camp and fly to Booty Bay|goto Stranglethorn Vale,26.8,77.0,0.1|noway|c
	step //127
		goto 27.2,76.9
		.talk Fleet Master Seahorn##2487
		..accept The Bloodsail Buccaneers (5)##608
	step //128
		goto 27.1,77.5
		.talk Whiskey Slim##2491
		..turnin Whiskey Slim's Lost Grog##580
	step //129
		home Booty Bay
	step //130
		goto 27.8,77.1
		.talk "Sea Wolf" MacKinley##2501
		..turnin Deliver to MacKinley##2874
	step //131
		goto 27.6,76.7
		.talk Fin Fizracket##2486
		..accept Stranglethorn Fever##348
	step //132
		goto 31.1,68.1
		.' Kill gorillas
		.collect 1 Gorilla Fang##2799|q 348
	step //133
		goto 35.3,60.4
		.talk Witch Doctor Unbagwa##1449
		..'Give him 1 Gorilla Fang |n
		.' 3 gorillas will attack you one at a time
		..'Mokk the Savage is the final gorilla
		.' Kill Mokk the Savage
		.get Heart of Mokk|q 348/1
	step //134
		goto 35.1,72.9
		.' They are very small, blueish, bottles buried randomly in the sand near the water
		.' Click the Half-Buried Bottles
		.get the Carefully Folded Note|n
		.' Click the Carefully Folded Note|use Carefully Folded Note##4098
		..accept Message in a Bottle (1)##594
		info They are little blue bottles that can spawn anywhere along this beach close to the water.
	step //135
		goto 38.5,80.6
		.talk Princess Poobah##2634
		..turnin Message in a Bottle (1)##594
		..accept Message in a Bottle (2)##630
	step //136
		goto 41,83
		.' Kill King Mukla
		.get Shackle Key|q 630/1
		info He's a huge gorilla.
	step //137
		goto 38.5,80.6
		.talk Princess Poobah##2634
		..turnin Message in a Bottle (2)##630
	step //138
		'While doing the next 3 steps, look for Cortello's Riddle on the ships:
		.' It's a scroll
		.' Click Cortello's Riddle
		..accept Cortello's Riddle (1)##624|n
	step //139
		goto 32.9,88.2
		.' Kill Captain Stillwater on the ship|kill 1 Captain Stillwater|q 608/1
		info Standing on the middle deck of the ship.
	step //140
		goto 30.6,90.6
		.' Kill Fleet Master Firallon on the ship|kill 1 Fleet Master Firallon|q 608/3
		info Standing on the middle deck of the ship.
	step //141
		goto 29.2,88.3
		.' Kill Captain Keelhaul on the ship|kill 1 Captain Keelhaul|q 608/2
		info Standing on the middle deck of the ship
	step //142
		ding 49
	step //143
		'Make sure you have accepted the Cortello's Riddle quest:
		.'Click Cortello's Riddle|use Cortello's Riddle##4056
		..accept Cortello's Riddle (1)##624
	step //144
		'Hearth to Booty Bay|goto 27.1,77.3,0.1|use hearthstone##6948|noway|c
	step //145
		goto 27.2,76.9
		.talk Fleet Master Seahorn##2487
		..turnin The Bloodsail Buccaneers (5)##608
	step //146
		goto 27.6,76.7
		.talk Fin Fizracket##2486
		..turnin Stranglethorn Fever##348
	step //147
		'Ride the boat to Ratchet|goto The Barrens
	step //148
		'Fly to Camp Mojache|goto Feralas,75.4,44.3,0.1|noway|c
	step //149
		goto Feralas,70.6,42.9
		.' Kill Ironfur Bears|n
		.' Use Beast Muisek Vessel on their corpses|use Beast Muisek Vessel##9618
		.get 10 Beast Muisek|q 3123/1
	step //150
		goto 76.2,43.8
		.talk Talo Thornhoof##7776
		..accept The Strength of Corruption##4120
	step //151
		goto 74.4,43.4
		.talk Witch Doctor Uzer'i##8115
		..turnin Testing the Vessel##3123
		..accept Hippogryph Muisek##3124
	step //152
		home Camp Mojache
	step //153
		goto 56.7,62
		.' Kill hippogryphs
		.' Use the Hippogryph Muisek Vessel on their corpses|use Hippogryph Muisek Vessel##9619
		.get 10 Hippogryph Muisek|q 3124/1
	step //154
		goto 74.4,43.4
		.talk Witch Doctor Uzer'i##8115
		..turnin Hippogryph Muisek##3124
		..accept Faerie Dragon Muisek##3125
	step //155
		goto 69.4,46.4
		.' Kill Sprite Darters
		.' Use the Faerie Dragon Muisek Vessel on their corpses|use Faerie Dragon Muisek Vessel##9620
		.get 8 Faerie Dragon Muisek|q 3125/1
	step //156
		goto 74.4,43.4
		.talk Witch Doctor Uzer'i##8115
		..turnin Faerie Dragon Muisek##3125
	step //157
		goto 44.8,43.4
		.talk Zorbin Fandazzle##14637
		..accept Zapped Giants##7003
		..accept Fuel for the Zapping##7721
	step //158
		goto 44.6,51.4
		.' Kill water elementals
		.get 10 Water Elemental Core|q 7721/1
		.' Use Zorbin's Ultra-Shrinker on the giants|use Zorbin's Ultra-Shrinker##18904
		.' Kill the shrunken giants
		.get 15 Miniaturization Residue|q 7003/1
	step //159
		goto 44.8,43.4
		.talk Zorbin Fandazzle##14637
		..turnin Zapped Giants##7003
		..turnin Fuel for the Zapping##7721
	step //160
		goto Feralas,52.8,31.8
		.' Kill Rage Scar yetis
		.get 10 Rage Scar Yeti Hide|q 7734/1
	step //161
		goto 41,11
		.kill 4 Northspring Harpy|q 3063/1
		.kill 4 Northspring Roguefeather|q 3063/2
		.kill 4 Northspring Slayer|q 3063/3
		.kill 4 Northspring Windcaller|q 3063/4
		.' Kill harpies
		.collect 1 Horn of Hatetalon##9530|q 3063
	step //162
		goto 40.3,8.6
		.' Use the Horn of Hatetalon to summon Edana Hatetalon|use Horn of Hatetalon##9530
		.from Edana Hatetalon##8075
		.get Edana's Dark Heart|q 3062/1
	step //163
		'Hearth to Camp Mojache|goto Feralas,74.8,45.1,0.1|use hearthstone##6948|noway|c
	step //164
		goto 74.4,42.9
		.talk Jangdor Swiftstrider##7854
		..turnin Improved Quality##7734
	step //165
		goto 76.2,43.8
		.talk Talo Thornhoof##7776
		..turnin Dark Heart##3062
		..turnin Vengeance on the Northspring##3063
	step //166
		'Fly to Gadgetzan|goto Tanaris,51.6,25.5,0.1|noway|c
	step //167
		goto Tanaris,51.6,26.8
		.talk Tran'rek##7876
		..accept Thistleshrub Valley##3362
		..accept Super Sticky##4504
	step //168
		goto 50.2,27.5
		.talk Senior Surveyor Fizzledowser##7724
		..accept Noxious Lair Investigation##82
	step //169
		goto 51.8,28.6
		.talk Marin Noggenfogger##7564
		..accept The Thirsty Goblin##2605
	step //170
		goto 52.5,28.5
		.talk Chief Engineer Bilgewhizzle##7407
		..turnin Into the Field##243
		..accept Slake That Thirst##379
		..turnin Slake That Thirst##379
		.' Click the Model 4711-FTZ Power Source in your bags|use Model 4711-FTZ Power Source##8524
		..accept Tanaris Field Sampling##654
	step //171
		goto 50,34
		.' Kill basilisks
		.' Kill hyenas
		.' Kill scorpids
		.' Click their Untested Samples
		.get 8 Acceptable Basilisk Sample|q 654/1|use Untested Basilisk Sample##9437
		.get 8 Acceptable Hyena Sample|q 654/2|use Untested Hyena Sample##9439
		.get 8 Acceptable Scorpid Sample|q 654/3|use Untested Scorpid Sample##9442
	step //172
		goto 52.5,28.5
		.talk Chief Engineer Bilgewhizzle##7407
		..turnin Tanaris Field Sampling##654
		..accept Return to Apothecary Zinge##864
	step //173
		home Gadgetzan
	step //174
		ding 50
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Levels (50-55)",[[
	author support@zygorguides.com
	next Zygor's Horde Leveling Guides\\Levels (55-60)
	startlevel 50
	step //1
		goto Tanaris,52.8,27.4
		.talk Andi Lynn##11758
		..accept The Dunemaul Compound##5863
	step //2
		goto 52.7,45.9
		.talk Marvon Rivetseeker##7771
		..turnin The Sunken Temple##3380
		..accept The Stone Circle##3444
		..accept Gahz'ridian##3161
	step //3
		goto 42,54
		.kill 10 Dunemaul Brute|q 5863/1
		.kill 10 Dunemaul Enforcer|q 5863/2
	step //4
		goto 41.5,57.8
		.kill 1 Gor'marok the Ravager|q 5863/3
		info Standing inside the cave
	step //5
		goto 41,71
		.' Click the Gahz'ridian Ornaments
		.get 30 Gahz'ridian Ornament|q 3161/1
		info They look like white bumps on the ground around this area.
	step //6
		goto 29,63
		.kill 8 Gnarled Thistleshrub|q 3362/1
		.kill 8 Thistleshrub Rootshaper|q 3362/2
		.' Kill Thistleshrub Dew Collectors
		.get Laden Dew Gland|q 2605/1
	step //7
		goto 31,51
		.' Kill insects
		.get 5 Centipaar Insect Parts|q 82/1
	step //8
		'Hearth to Gadgetzan|goto Tanaris,52.4,27.9,0.3|use hearthstone##6948|noway|c
	step //9
		goto 51.8,28.6
		.talk Marin Noggenfogger##7564
		..turnin The Thirsty Goblin##2605
		..accept In Good Taste##2606
	step //10
		goto 51.1,26.9
		.talk Sprinkle##7583
		..turnin In Good Taste##2606
		..accept Sprinkle's Secret Ingredient##2641
	step //11
		goto 50.9,27
		.talk Alchemist Pestlezugg##5594
		..turnin Noxious Lair Investigation##82
	step //12
		goto 51.6,26.8
		.talk Tran'rek##7876
		..turnin Thistleshrub Valley##3362
	step //13
		goto 52.8,27.4
		.talk Andi Lynn##11758
		..turnin The Dunemaul Compound##5863
	step //14
		goto 50.2,27.5
		.talk Senior Surveyor Fizzledowser##7724
		..accept The Scrimshank Redemption##10
	step //15
		goto 52.7,45.9
		.talk Marvon Rivetseeker##7771
		..turnin Gahz'ridian##3161
	step //16
		goto 55.7,70.3|n
		.' The path down to 'The Scrimshank Redemption' starts here|goto Tanaris,56.0,70.2,0.3|noway|c
	step //17
		goto 55.8,68.9|n
		.' Enter this tunnel heading north|goto Tanaris,55.8,68.9,0.3|noway|c
	step //18
		goto 56,71.2
		.' Take a right at the fork in the path into a big round room
		.' Enter the tunnel on the other side of the room
		.' Take a right at the fork into a squarish big room
		.' Click Scrimshank's Surveying Gear
		.get Scrimshank's Surveying Gear|q 10/1
		info It's a small box with some levers on it in the corner of the room.
	step //19
		'Go outside to 67.1,23.9|goto 67.1,23.9
		.talk Yorba Screwspigot##9706
		..accept Yuka Screwspigot##4324
	step //20
		goto 67,22.4
		.talk Yeh'kinya##8579
		..turnin Screecher Spirits##3520
	step //21
		goto 50.2,27.5
		.talk Senior Surveyor Fizzledowser##7724
		..turnin The Scrimshank Redemption##10
		..accept Insect Part Analysis (1)##110
	step //22
		goto 50.9,27
		.talk Alchemist Pestlezugg##5594
		..turnin Insect Part Analysis (1)##110
		..accept Insect Part Analysis (2)##113
	step //23
		goto 50.2,27.5
		.talk Senior Surveyor Fizzledowser##7724
		..turnin Insect Part Analysis (2)##113
		..accept Rise of the Silithid##32
	step //24
		'Fly to Ratchet|goto The Barrens,63.1,37.1,0.1|noway|c
	step //25
		goto The Barrens,62.5,38.5
		.' Click Marvon's Chest
		.get Stone Circle|q 3444/1
		info It's a small wooden chest to the right of the doorway to a small house.
	step //26
		goto 62.4,38.7
		.talk Liv Rizzlefix##8496
		..accept Volcanic Activity##4502
	step //27
		'Fly to Orgrimmar|goto Orgrimmar
	step //28
		'Buy 15 silk cloth from the Auction House
		.buy 15 Silk Cloth |q 4449/1
	step //29
		'Fly to Ratchet|goto The Barrens,63.1,37.1,0.1|noway|c
	step //30
		'Ride the boat to Booty Bay|goto Stranglethorn Vale|noway|c
	step //31
		'Fly to Kargath|goto Badlands,4.1,44.9,0.1|noway|c
	step //32
		goto Badlands,4.5,61.3|n
		.' The path over to Searing Gorge starts here|goto Badlands,4.5,61.3,0.3|noway|c
	step //33
		'Go west to Searing Gorge|goto Searing Gorge
	step //34
		goto Searing Gorge,31.8,33.4|n
		'The path up to Thorium Point starts here|goto Searing Gorge,31.8,33.4,0.3|noway|c
	step //35
		goto 37.6,26.5
		.' Click the Wanted/Missing/Lost & Found Poster
		..accept JOB OPPORTUNITY: Culling the Competition##7729
		..accept STOLEN: Smithing Tuyere and Lookout's Spyglass##7728
		..accept WANTED: Overseer Maltorius##7701
		info Next to some boxes
	step //36
		goto 38.6,27.8
		.talk Hansel Heavyhands##14627
		..accept Curse These Fat Fingers##7723
		..accept Fiery Menace!##7724
		..accept Incendosaurs? Whateverosaur is More Like It##7727
	step //37
		goto 38.8,28.5
		.talk Master Smith Burninate##14624
		..accept What the Flux?##7722
	step //38
		goto 34.8,30.9
		.talk Grisha##3305
		..fpath Thorium Point
	step //39
		goto 39.1,39
		.talk Kalaran Windblade##8479
		..accept Divine Retribution##3441
		..'Listen to his story
		..turnin Divine Retribution##3441
		..accept The Flawless Flame##3442
	step //40
		goto 37,49
		.' Kill Dark Iron Steamsmiths
		.get Smithing Tuyere|q 7728/1
		.' Kill Dark Iron dwarves
		.get the Grimesilt Outhouse Key|n
		.' Click the Grimesilt Outhouse Key|use Grimesilt Outhouse Key##11818
		..accept The Key to Freedom##4451
	step //41
		goto 33,49
		.kill 20 Heavy War Golem|q 7723/1
	step //42
		goto 33,52
		.' Kill Dark Iron Lookouts
		.get Lookout's Spyglass|q 7728/2
	step //43
		goto 32,62
		.kill 20 Greater Lava Spider|q 7724/1
	step //44
		goto 31,75
		.' Kill Magma Elementals
		.get 4 Golem Oil|q 3442/2
		.' Kill Inferno Elementals
		.get 4 Heart of Flame|q 3442/1
	step //45
		goto 65.6,62.3
		.' Click the Wooden Outhouse
		..accept Caught!##4449
		info It's a wooden outhouse up the hill behind the dig site
	step //46
		goto 63,60
		.kill 8 Dark Iron Geologist|q 4449/1
	step //47
		goto 65.6,62.3
		.' Click the Wooden Outhouse
		..turnin Caught!##4449
		..accept Ledger from Tanaris##4450
		.' Click the book he slides under the door
		.get Goodsteel Ledger|q 4450/1
		info It's a wooden outhouse up the hill behind the dig site
	step //48
		ding 51
	step //49
		goto 62,72
		.' Kill Glassweb Spiders
		.get 20 Solid Crystal Leg Shaft|q 4450/2
		.' You can also find more spiders around 64,50.5
		.' There are also more at 74,19
	step //50
		goto 39.1,39
		.talk Kalaran Windblade##8479
		..turnin The Flawless Flame##3442
		..accept Forging the Shaft##3443
	step //51
		goto 39.8,50.5
		.' Kill Dark Iron mobs
		.get 8 Thorium Plated Dagger|q 3443/1
	step //52
		goto 39.1,39
		.talk Kalaran Windblade##8479
		..turnin Forging the Shaft##3443
		..accept The Flame's Casing##3452
	step //53
		goto 41.4,53.9|n
		.' The entrance to the Slag Pit starts here|goto Searing Gorge,41.4,53.9,0.5|noway|c
		..'It's up on the metal riser walkway things
	step //54
		'Follow the path
		.' Go through the Jail Door|goto Searing Gorge,37.6,44.3,0.5|c
	step //55
		'While in the Slag Pit:
		.kill 15 Dark Iron Taskmaster|q 7729/1
		.kill 15 Dark Iron Slaver|q 7729/2
	step //56
		'Go up the big metal ramp into the big room|goto Searing Gorge,44.2,24.4,0.5|c
	step //57
		goto 40.9,35.8
		.' Kill Overseer Maltorius
		.get Head of Overseer Maltorius|q 7701/1
		info Up the big metal ramp, on a balcony.
	step //58
		goto 40.5,35.7
		.' Click the Secret Plans: Fiery Flux
		..'It's behind Overseer Maltorius
		.get Secret Plans: Fiery Flux|q 7722/1
		info It's a scroll laying on a bench behind Overseer Maltorius.
	step //59
		goto 47.9,42.1|n
		.' Jump off the bridge at this spot to the path below|goto Searing Gorge,47.9,42.1,0.5|noway|c
	step //60
		goto 52,37
		.kill 20 Incendosaur|q 7727/1
	step //61
		'Go outside to 37.6,26.5|goto 37.6,26.5
		.talk Lookout Captain Lolo Longstriker##14634
		..turnin WANTED: Overseer Maltorius##7701
	step //62
		goto 38.6,27.8
		.talk Hansel Heavyhands##14627
		..turnin Curse These Fat Fingers##7723
		..turnin Fiery Menace!##7724
		..turnin Incendosaurs? Whateverosaur is More Like It##7727
	step //63
		goto 39,27.5
		.talk Taskmaster Scrange##14626
		..turnin STOLEN: Smithing Tuyere and Lookout's Spyglass##7728
		..turnin JOB OPPORTUNITY: Culling the Competition##7729
	step //64
		goto 38.8,28.5
		.talk Master Smith Burninate##14624
		..turnin What the Flux?##7722
	step //65
		goto 26,34
		.' Kill Twilight mobs
		.get Symbol of Ragnaros|q 3452/1
	step //66
		goto 39.1,39
		.talk Kalaran Windblade##8479
		..turnin The Flame's Casing##3452
		..accept The Torch of Retribution (1)##3453
		..turnin The Torch of Retribution (1)##3453
		..accept The Torch of Retribution (2)##3454
		.' Click the green glowing Torch of Retribution
		..turnin The Torch of Retribution (2)##3454
		..accept Squire Maltrake##3462
		.talk Squire Maltrake##8509
		..turnin Squire Maltrake##3462
		..accept Set Them Ablaze!##3463
	step //67
		'Equip the Torch of Retribution|use Torch of Retribution##10515
	step //68
		goto 33.3,54.5
		.' Click the Sentry Brazier
		.' Set the Northern Tower Ablaze|goal Northern Tower Ablaze|q 3463/4
		info At the top of the tower, click the little metal blazer on the ground
	step //69
		goto 35.7,60.7
		.' Click the Sentry Brazier
		.' Set the Western Tower Ablaze|goal Western Tower Ablaze|q 3463/1
		info At the top of the tower, click the little metal blazer on the ground
	step //70
		goto 44,60.9
		.' Click the Sentry Brazier
		.' Set the Southern Tower Ablaze|goal Southern Tower Ablaze|q 3463/2
		info At the top of the tower, click the little metal blazer on the ground
	step //71
		goto 50.1,54.7
		.' Click the Sentry Brazier
		.' Set the Eastern Tower Ablaze|goal Eastern Tower Ablaze|q 3463/3
		info At the top of the tower, click the little metal blazer on the ground
	step //72
		goto 39.1,39
		.talk Squire Maltrake##8509
		..turnin Set Them Ablaze!##3463
		.' Click the small grey chest on the ground
		..accept Trinkets...##3481
		.' Click the chest again
		..turnin Trinkets...##3481
		.' Open the Hoard of the Black Dragonflight in your bags|use Hoard of the Black Dragonflight##10569
		.' Make sure to save the Black Dragonflight Molt|collect Black Dragonflight Molt##10575|q 4022 |future
	step //73
		'Make sure to equip your weapon again
	step //74
		'Go south to Blackrock Mountain|goto Searing Gorge,34.5,83.6,1
	step //75
		'Run through Blackrock Mountain over to the Burning Steppes|goto Burning Steppes
	step //76
		goto Burning Steppes,65.7,24.2
		.talk Vahgruk##13177
		..fpath Flame Crest
	step //77
		'Fly to Stonard|goto Swamp of Sorrows,46.1,54.7,0.1|noway|c
	step //78
		home Stonard
	step //79
		goto 34.3,66.1
		.talk the Fallen Hero of the Horde##7572
		..accept Fall From Grace##2784
		..'Listen to his story
		..turnin Fall From Grace##2784
		..accept The Disgraced One##2621
	step //80
		goto 22.9,48.2
		.' Click the Soggy Scroll
		..turnin Cortello's Riddle (1)##624
		..accept Cortello's Riddle (2)##625
		info It's a rolled up scroll laying in the water under the bridge. It's very easy to to miss, so search hard.
	step //81
		'Hearth to Stonard|goto 45.1,56.7,0.1|use hearthstone##6948|noway|c
	step //82
		goto 47.9,55
		.talk Dispatch Commander Ruag##7623
		..turnin The Disgraced One##2621
		..accept The Missing Orders##2622
	step //83
		goto 45,57.4
		.talk Bengor##7643
		..turnin The Missing Orders##2622
		..accept The Swamp Talker##2623
	step //84
		goto 66.4,76.2|n
		.' The path to 'The Swamp Talker' starts here|goto Swamp of Sorrows,66.4,76.2,0.5|noway|c
	step //85
		goto 62.8,88.3
		.' Follow the path inside the cave to this spot
		.' Kill Swamp Talker
		.get Warchief's Orders|q 2623/1
	step //86
		goto 91.6,67.6
		.' He spawns at different spots all along this beach
		.' He is a grey Murloc
		.' Kill Jarquia
		.get Goodsteel's Balanced Flameberge|q 4450/4
	step //87
		goto 34.3,66.1
		.talk the Fallen Hero of the Horde##7572
		..turnin The Swamp Talker##2623
		..accept A Tale of Sorrow##2801
		..'Listen to his story
		..turnin A Tale of Sorrow##2801
	step //88
		ding 52
	step //89
		'Go northeast to Stonard and fly to Booty Bay|goto Stranglethorn Vale,26.8,77.0,0.1|noway|c
	step //90
		'Ride the boat to Ratchet|goto The Barrens
	step //91
		'Fly to Mudsprocket|goto Dustwallow Marsh,42.9,72.4,0.1|noway|c
	step //92
		goto Dustwallow Marsh,31.1,66.1
		.' Click the Musty Scroll
		..turnin Cortello's Riddle (2)##625
		..accept Cortello's Riddle (3)##626
		info It's a rolled up scroll sitting on a rock in the back of this cave
	step //93
		goto 54.1,55.9
		.' Click the Damaged Crate
		.get Overdue Package|q 4450/3
		info It's a half buried crate with a little fire on it.
	step //94
		'Go southwest to Mudsprocket and fly to Gadgetzan|goto Tanaris,51.6,25.5,0.1|noway|c
	step //95
		goto Tanaris,51.5,28.8
		.talk Krinkle Goodsteel##5411
		..turnin Ledger from Tanaris##4450
	step //96
		'Fly to Orgrimmar|goto Orgrimmar
	step //97
		home Orgrimmar
	step //98
		goto 59.5,36.8
		.talk Dran Droffers##6986
		..turnin Ripple Delivery##81
	step //99
		'Fly to Valormok|goto Azshara,22.0,49.7,0.1|noway|c
	step //100
		goto Azshara,22.6,51.4
		.talk Jediga##8587
		..accept Stealing Knowledge##3517
	step //101
		goto 22.3,51.5
		.talk Ag'tor Bloodfist##8576
		..accept Betrayed (2)##3505
	step //102
		goto 34.8,54.1
		.' They spawn in different spots around this area
		.' The Tablet of Sael'hai is a big stone slab with a yellow symbol on it
		..get Tablet of Sael'hai|q 3517/4
		.' The Tablet of Markri is a small stone slab with a green symbol on it
		..get Tablet of Markri|q 3517/3
		.' The Tablet of Beth'Amara is a small stone slab with a pink symbol on it
		..get Tablet of Beth'Amara|q 3517/1
		.' The Tablet of Jin'yael is a small stone slab with a blue symbol on it
		..get Tablet of Jin'yael|q 3517/2
		.' Click the 4 tablets
	step //103
		'Open the Box of Empty Vials|use Box of Empty Vials##10695
		.collect Empty Vial Labeled #1##10687|q 3568
		.collect Empty Vial Labeled #2##10688|q 3568
		.collect Empty Vial Labeled #3##10689|q 3568
		.collect Empty Vial Labeled #4##10690|q 3568
	step //104
		goto 47.6,61.1
		.' Use the Empty Vial Labeled #1 while standing in the small pool of water here|use Empty Vial Labeled #1##10687
		.' Fill the Vial Labeled #1|goal Filled Vial Labeled #1|q 3568/1
	step //105
		goto 47.9,51.6
		.' Use the Empty Vial Labeled #2 while standing in the small pool of water here|use Empty Vial Labeled #2##10688
		.' Fill the Vial Labeled #2|goal Filled Vial Labeled #2|q 3568/2
	step //106
		goto 48.6,48.6
		.' Use the Empty Vial Labeled #3 while standing in the small pool of water here|use Empty Vial Labeled #3##10689
		.' Fill the Vial Labeled #3|goal Filled Vial Labeled #3|q 3568/3
	step //107
		goto 47.4,46.5
		.' Use the Empty Vial Labeled #4 while standing in the small pool of water here|use Empty Vial Labeled #4##10690
		.' Fill the Vial Labeled #4|goal Filled Vial Labeled #4|q 3568/4
	step //108
		goto 43.3,47.5|n
		.' The path back up to the Ruins of Eldarath starts here|goto Azshara,43.3,47.5,0.5|noway|c
	step //109
		goto 22.6,51.4
		.talk Jediga##8587
		..turnin Stealing Knowledge##3517
		..accept Delivery to Magatha##3518
		..accept Delivery to Jes'rimon##3541
		..accept Delivery to Andron Gant##3542
		..accept Delivery to Archmage Xylem##3561
	step //110
		goto 28.1,50.1
		.talk Sanath Lim-yo##8395
		..accept Meeting with the Master##3503 |instant
		..'He will teleport you up into the mountains|goto Azshara,26.3,46.2,0.5|noway|c
	step //111
		'Follow the path up the mountain into the tower at the top|goto Azshara,29.0,41.0,0.5
	step //112
		goto 29.4,40.4
		.talk Archmage Xylem##8379
		..turnin Delivery to Archmage Xylem##3561
		..accept Xylem's Payment to Jediga##3565
	step //113
		'Go back down the path|goto Azshara,26.9,42.8,1
	step //114
		goto 26.5,46.3
		.talk Nyrill##8399
		..accept Return Trip##3421 |instant
		..'He will teleport you back down out of the mountains
	step //115
		goto 22.6,51.4
		.talk Jediga##8587
		..turnin Xylem's Payment to Jediga##3565
	step //116
		goto 53.9,18.9|n
		.' The path up to Kim'jael starts here|goto Azshara,53.9,18.9,0.5|noway|c
	step //117
		goto 53.5,21.8
		.talk Kim'jael##8420
		..accept Kim'jael Indeed!##3601
	step //118
		goto 56,25
		.kill 10 Blood Elf Reclaimer|q 3505/2
		.kill 10 Blood Elf Surveyor|q 3505/3
	step //119
		goto 58.5,25
		.' Click Kim'jael's Equipment box
		.' There are usually more boxes around at 58.7,29
		.get Kim'Jael's Compass|q 3601/1
		.get Kim'Jael's Scope|q 3601/2
		.get Kim'Jael's Stuffed Chicken|q 3601/3
		.get Kim'Jael's Wizzlegoober|q 3601/4
		info It's a small crate sitting on the ground.
	step //120
		goto 59.5,31.3
		.' Find Magus Rimtori's Camp|goal Find Magus Rimtori's camp|q 3505/1
		info Stand inside the circle of stone pillars.
	step //121
		goto 59.5,31.3
		.' Click the Kaldorei Tome of Summoning
		..turnin Betrayed (2)##3505
		..accept Betrayed (3)##3506
		info It's a book sitting on the little altar.
	step //122
		goto 59.5,31.6
		.' Click the Arcane Focusing Crystals
		.' Kill the Blood Elf Defender when it spawns
		.' After the Blood Elf Defender dies, Magus Rimtori will spawn
		.' Kill Magus Rimtori
		.get Head of Magus Rimtori|q 3506/1
	step //123
		goto 53.5,21.8
		.talk Kim'jael##8420
		..turnin Kim'jael Indeed!##3601
	step //124
		goto 22.3,51.5
		.talk Ag'tor Bloodfist##8576
		..turnin Betrayed (3)##3506
		..accept Betrayed (4)##3507
	step //125
		'Fly to Thunder Bluff|goto Thunder Bluff
	step //126
		goto Thunder Bluff,69.9,30.9
		.talk Magatha Grimtotem##4046
		..turnin Delivery to Magatha##3518
		..accept Magatha's Payment to Jediga##3562
	step //127
		'Hearth to Orgrimmar|goto Orgrimmar|use hearthstone##6948|noway|c
	step //128
		goto 55.6,34.1
		.talk Jes'rimon##8659
		..turnin Delivery to Jes'rimon##3541
		..accept Jes'rimon's Payment to Jediga##3563
		..accept Bone-Bladed Weapons##4300
	step //129
		goto 75.2,34.2
		.talk Belgrom Rockmaul##4485
		..turnin Betrayed (4)##3507
	step //130
		'Go outside of Orgrimmar|goto Durotar
	step //131
		goto Durotar,50.8,13.3|n
		'Ride the zeppelin to Undercity|goto Tirisfal Glades|noway|c
		info You can ride zeppelins to either Undercity or the Grom'Gol Base Camp here
	step //132
		'Go south to Undercity|goto Undercity
	step //133
		goto Undercity,54.8,75.4
		.talk Andron Gant##6522
		..turnin Delivery to Andron Gant##3542
		..accept Andron's Payment to Jediga##3564
	step //134
		goto 48.4,71.8
		.talk Chemist Cuely##8390
		..turnin Seeping Corruption (1)##3568
		..accept Seeping Corruption (2)##3569
		.talk Thersa Windsong##8393
		..turnin Seeping Corruption (2)##3569
	step //135
		goto 49.9,68.4
		.talk Apothecary Zinge##5204
		..turnin Return to Apothecary Zinge##864
		..accept Vivian Lagrave##4133
	step //136
		goto 47.5,73.1
		.talk Chemist Fuely##10136
		..accept A Sample of Slime...##4293
		..accept ... and a Batch of Ooze##4294
	step //137
		'Fly to Revantusk Village|goto The Hinterlands,81.7,81.9,0.1|noway|c
	step //138
		goto The Hinterlands,80.3,81.4
		.talk Katoom the Angler##14740
		..accept Snapjaws, Mon!##7815
		..accept Gammerita, Mon!##7816
	step //139
		goto 78.2,81.3
		.talk Lard##14731
		..accept Lard Lost His Lunch##7840
	step //140
		goto 78,69
		.kill 10 Saltwater Snapjaw|q 7815/1
	step //141
		goto 79,62
		.' Kill Gammerita
		.get Katoom's Best Lure|q 7816/1
		info She's a blue turtle that wanders this area.
	step //142
		goto 80.8,46.8
		.' Click Cortello's Treasure
		..turnin Cortello's Riddle (3)##626
		info It's a snall grey chest underwater at the base of the waterfall.
		info2 Click Cortello's Treasure
	step //143
		goto 84.3,41.2
		.' Click Lard's Picnic Basket
		.' Kill the trolls that spawn
		.get Lard's Lunch|q 7840/1
		info It's a small basket sitting on the ground on the island.
	step //144
		goto 78.2,81.3
		.talk Lard##14731
		..turnin Lard Lost His Lunch##7840
	step //145
		goto 80.3,81.4
		.talk Katoom the Angler##14740
		..turnin Snapjaws, Mon!##7815
		..turnin Gammerita, Mon!##7816
	step //146
		goto 41,59
		.' Click a Violet Tragan
		.get Violet Tragan|q 2641/1
		info They look like brown and white mushrooms underwater in this lake.
	step //147
		ding 53
	step //148
		'Hearth to Orgrimmar|goto Orgrimmar|use hearthstone##6948|noway|c
	step //149
		'Fly to Valormok|goto Azshara,22.0,49.7,0.1|noway|c
	step //150
		goto Azshara,22.6,51.4
		.talk Jediga##8587
		..turnin Magatha's Payment to Jediga##3562
		..turnin Jes'rimon's Payment to Jediga##3563
		..turnin Andron's Payment to Jediga##3564
	step //151
		'Fly to Ratchet|goto The Barrens,63.1,37.1,0.1|noway|c
	step //152
		'Ride the boat to Booty Bay|goto Stranglethorn Vale
	step //153
		'Fly to Stonard|goto Swamp of Sorrows,46.1,54.7,0.1|noway|c
	step //154
		'Go southwest to the Blasted Lands|goto Blasted Lands
	step //155
		goto Blasted Lands,50.6,14.2
		.talk Bloodmage Drazial##7505
		..accept Snickerfang Jowls##2581
		..accept A Boar's Vitality##2583
		..accept The Decisive Striker##2585
		.talk Bloodmage Lynnore##7506
		..accept The Basilisk's Bite##2601
		..accept Vulture's Vigor##2603
	step //156
		.' At Grind Point 1: 49,18
		.' At Grind Point 2: 45,26
		.' At Grind Point 3: 56,37
		.' At Grind Point 4: 56.3,30.5
		.' At Grind Point 5: 63,28
		'Follow the Grinding Circle killing boars, hyenas, vultures, basilisks, and scorpions until you have:
		..' 6 Blasted Boar Lungs|collect 6 Blasted Boar Lung##8392|q 2581 //? |q 2581/1,2582,2583,2584,2585,2586
		..' 5 Snickerfang Jowls|collect 5 Snickerfang Jowl##8391|q 2581 //? |q 2581/1,2582,2603,2604
		..' 14 Vulture Gizzards|collect 14 Vulture Gizzard##8396|q 2585 //? |q 2585/1,2586,2601,2602,2603,2604
		..' 11 Basilisk Brains|collect 11 Basilisk Brain##8394|q 2583 //? |q 2583/1,2584,2601,2602
		..' 6 Scorpok Pincers|collect 6 Scorpok Pincer##8393|q 2581 //? |q 2581/1,2582,2583,2584,2585,2586
	step //157
		goto 50.6,14.2
		.talk Bloodmage Drazial##7505
		..turnin Snickerfang Jowls##2581
		..turnin A Boar's Vitality##2583
		..turnin The Decisive Striker##2585
		.talk Bloodmage Lynnore##7506
		..turnin The Basilisk's Bite##2601
		..turnin Vulture's Vigor##2603
	step //158
		'Hearth to Orgrimmar|goto Orgrimmar|use hearthstone##6948|noway|c
	step //159
		'Buy a Mithril Casing from the Auction House
		.buy 1 Mithril Casing|q 4244/1
	step //160
		goto 56.5,46.5
		.talk Zilzibin Drumlore##7010
		..turnin Rise of the Silithid##32
		..accept March of the Silithid##4494
	step //161
		'Fly to Gadgetzan|goto Tanaris,51.6,25.5,0.1|noway|c
	step //162
		goto Tanaris,51.1,26.9
		.talk Sprinkle##7583
		..turnin Sprinkle's Secret Ingredient##2641
		..accept Delivery for Marin##2661
	step //163
		goto 51.8,28.6
		.talk Marin Noggenfogger##7564
		..turnin Delivery for Marin##2661
		..accept Noggenfogger Elixir##2662
		..turnin Noggenfogger Elixir##2662
	step //164
		goto 52.7,45.9
		.talk Marvon Rivetseeker##7771
		..turnin The Stone Circle##3444
	step //165
		goto 50.9,27
		.talk Alchemist Pestlezugg##5594
		..turnin March of the Silithid##4494
                ..accept Bungle in the Jungle##4496
	step //166
		'Go southwest to Un'Goro Crater|goto Un'Goro Crater
	step //167
		goto 71.6,76
		.talk Torwa Pathfinder##9619
		..accept The Apes of Un'Goro##4289
		..accept The Fare of Lar'korwi##4290
	step //168
		'While questing in Un'Goro Crater, look for the following items on the ground:
		.' Green Power Crystals - get 7 of these
		.' Red Power Crystals - get 7 of these
		.' Blue Power Crystals - get 7 of these
		.' Yellow Power Crystals - get 7 of these
		.' Un'Goro Dirt Piles - get 25 of these
		'Kill every ooze you see in Un'Goro Crater
		.get 15 Un'Goro Slime Samples|n
		.' Skip to the next step of the guide.
	step //169
		goto 68,76
		.' Kill Ravasaur Runners
		.get A Mangled Journal|n
		.' Click the Mangled Journal|use A Mangled Journal##11116
		..accept Williden's Journal##3884
		.' Kill Ravasaurs
		.get 8 White Ravasaur Claw|q 4300/1
	step //170
		goto 63,68.5
		.' Click the Wrecked Rift
		..accept It's a Secret to Everybody (1)##3844
		info It's a busted up wooden boat on the shore of this small pond
	step //171
		goto 63.1,69.1
		.' Click the Small Pack underwater next to the shore
		..turnin It's a Secret to Everybody (1)##3844
		..accept It's a Secret to Everybody (2)##3845
		.' Click the Small Pack in your bags|use A Small Pack##11107
		..get Large Compass|q 3845/1
		..get Curled Map Parchment|q 3845/2
		..get Lion-headed Key|q 3845/3
		info It's a big tan sac underwater in this pond
	step //172
		goto 68.6,57.2
		.' Click the Fresh Threshadon Carcass
		.get Piece of Threshadon Carcass|q 4290/1
		info It's a big dinosaur carcass laying on the ground.
	step //173
		goto 71.6,76
		.talk Torwa Pathfinder##9619
		..turnin The Fare of Lar'korwi##4290
		..accept The Scent of Lar'korwi##4291
	step //174
		goto 67.3,73
		.' Kill raptors near egg nests
		.' Stand on the egg nests around this area
		.' Kill Lar'korwi Mates
		.get 2 Ravasaur Pheromone Gland|q 4291/1
		info The eggs look like clusters of little purple eggs.
	step //175
		goto 71.6,76
		.talk Torwa Pathfinder##9619
		..turnin The Scent of Lar'korwi##4291
		..accept The Bait for Lar'korwi##4292
	step //176
		goto 79.9,49.9
		.' Stand on the big grey flat rock
		.' Click Torwa's Pouch in your bags and get the items inside it|use Torwa's Pouch##11568
		.' Click the Preserved Threshadon Meat in your bags|use Preserved Threshadon Meat##11569
		.' Click the Preserved Pheromone Mixture in your bags|use Preserved Pheromone Mixture##11570
		.' Kill Lar'korwi
		.get Lar'korwi's Head|q 4292/1
	step //177
		goto 66,16
		.' Kill Un'Goro Gorillas inside the cave
		.get 2 Un'Goro Gorilla Pelt|q 4289/1
		.' Kill Un'Goro Stompers inside the cave
		.get 2 Un'Goro Stomper Pelt|q 4289/2
		.' Kill Un'Goro Thunderers inside the cave
		.get 2 Un'Goro Thunderer Pelt|q 4289/3
	step //178
		goto 46.4,13.5
		.talk Karna Remtravel##9618
		..accept Chasing A-Me 01 (1)##4243
	step //179
		ding 54
	step //180
		goto 44.7,8.1
		.talk Linken##8737
		..turnin It's a Secret to Everybody (2)##3845
		..accept It's a Secret to Everybody (3)##3908
	step //181
		goto 45.5,8.7
		.talk Larion##9118
		..accept Larion and Muigin##4145
	step //182
		goto 45.2,5.8
		.talk Gryfe##10583
		..fpath Marshal's Refuge
	step //183
		goto 43.9,7.2
		.talk Williden Marshal##9270
		..turnin Williden's Journal##3884
		..accept Expedition Salvation##3881
		.talk Hol'anyee Marshal##9271
		..accept Alien Ecology##3883
	step //184
		goto 43.6,7.3
		.talk Spark Nilminer##9272
		..accept Roll the Bones##3882
	step //185
		'Go inside the cave to 41.9,2.7|goto 41.9,2.7
		.talk J.D. Collie##9117
		..accept Crystals of Power##4284
		..turnin Crystals of Power##4284
		..accept The Northern Pylon##4285
		..accept The Eastern Pylon##4287
		..accept The Western Pylon##4288
	step //186
		goto 43.6,8.4
		.' Click the sign
		..accept Beware of Pterrordax##4501
		.talk Spraggle Frock##9997
		..accept Lost!##4492
	step //187
		goto 44.2,11.6
		.talk Shizzle##9998
		..accept Shizzle's Flyer##4503
	step //188
		goto 47,19
		.' Kill Tar mobs
		.get 12 Super Sticky Tar|q 4504/1
	step //189
		goto 44.4,26.5
		.kill 5 Bloodpetal Flayer|q 4145/3
	step //190
		goto 56.5,12.4
		.' Go up the hill
		.' Click the Northern Pylon
		.' Examine the Northern Pylon|goal Discover and examine the Northern Crystal Pylon|q 4285/1
		info It looks like a big machine with a huge crystal spinning on top of it.
	step //191
		goto 57,9
		' Kill Pterrordaxes
		.get 8 Webbed Pterrordax Scale|q 4503/2
		.'You can find alot more of them at 56.9,87.5|goto 56.9,87.5
		..'If you need to go to this second spot, do so a little later, after you finish up at the insect area
	step //192
		'Go east into the gorilla cave|goto Un'Goro Crater,63.1,17.1,1|c
	step //193
		goto 67.6,16.8
		.talk A-Me 01##9623
		..turnin Chasing A-Me 01 (1)##4243
		..accept Chasing A-Me 01 (2)##4244
		..turnin Chasing A-Me 01 (2)##4244
	step //194
		goto 67,33
		.' Kill Diemetradons
		.get 8 Webbed Diemetradon Scale|q 4503/1
		.get 8 Dinosaur Bone|q 3882/1
		.kill 5 Bloodpetal Lasher|q 4145/1
		.kill 5 Bloodpetal Thresher|q 4145/4
	step //195
		goto 68.5,36.6
		.' Click the Crate of Foodstuffs
		.get Crate of Foodstuffs|q 3881/1
		info It's a big metal crate under a white canopy.
	step //196
		goto 77.2,49.9
		.' Go up the hill
		.' Click the Eastern Pylon
		.' Examine the Eastern Pylon|goal Discover and examine the Eastern Crystal Pylon|q 4287/1
		info It looks like a big machine with a huge crystal spinning on top of it.
	step //197
		goto 71.6,76
		.talk Torwa Pathfinder##9619
		..turnin The Apes of Un'Goro##4289
		..accept The Mighty U'cha##4301
		..turnin The Bait for Lar'korwi##4292
	step //198
		goto Un'Goro Crater,50.4,77.9|n
		.' The path down to 'Alien Ecology' starts here|goto Un'Goro Crater,50.4,77.9,0.5|noway|c
	step //199
		goto 48.6,85.2
		.' Go down the path
		.' Go left at the fork into the circular room
		.' Use your Unused Scraping Vial in the middle of the room|use Unused Scraping Vial##11132
		.get Hive Wall Sample|q 3883/1
	step //200
		'Go out of the hive to 48.8,77.6|goto 48.8,77.6
		.' Kill Gorishi insects
		.get Gorishi Scent Gland|q 4496/1
	step //201
		goto 49,69
		.kill 5 Bloodpetal Trapper|q 4145/2
	step //202
		goto 38.5,66.1
		.' Click the Research Equipment
		.get Research Equipment|q 3881/2
		info It's a pile of boxes.
	step //203
		goto 23.8,59.2
		.' Go up the hill
		.' Click the Western Pylon
		.' Examine the Western Pylon|goal Discover and examine the Western Crystal Pylon|q 4288/1
		info It looks like a big machine with a huge crystal spinning on top of it.
	step //204
		goto 21,59
		.kill 15 Frenzied Pterrordax|q 4501/1
	step //205
		'Make sure you have 15 Un'Goro Slime Samples
		.collect 15 Un'Goro Slime Sample##12235|q 4294
		'Make sure you have 25 Un'Goro Soil
		.collect 5 Un'Goro Soil##11018|q 4496
		.collect 25 Un'Goro Soil##11018|q 3761|tip You only need to collect 25 total Un'Goro Soil for this step, you do not need 30.
	step //206
		goto 30.9,50.4
		.talk Krakle##10302
		..accept Finding the Source##974
	step //207
		goto 52.7,42.1|n
		.' The path up to 'Finding the Source' starts here|goto Un'Goro Crater,52.7,42.1,0.5|noway|c
	step //208
		goto 49.7,45.7
		.' Follow the path up
		.' Use Krakle's Thermometer on the Fire Plume Ridge Hot Spot|use Krakle's Thermometer##12472
		.' Find the hottest area of Fire Plume Ridge|goal Find the hottest area of Fire Plume Ridge|q 974/1
		info It's a big black rock with a bunch of red cracks in it.
	step //209
		goto 46.6,52.9
		.' Kill fire elementals
		.get 9 Un'Goro Ash|q 4502/1
	step //210
		goto 30.9,50.4
		.talk Krakle##10302
		..turnin Finding the Source##974
		..accept The New Springs##980
	step //211
		goto 54.4,50.3|n
		.' The path up to 'Lost!' starts here|goto Un'Goro Crater,54.4,50.3,0.5|noway|c
	step //212
		goto 51.9,49.9
		.talk Ringo##9999
		..turnin Lost!##4492
		..accept A Little Help From My Friends##4491
		.goal Escort Ringo to Spraggle Frock at Marshal's Refuge|q 4491/1
		.' When Ringo faints, use Spraggle's Canteen on him to revive him|use Spraggle's Canteen##11804
	step //213
		goto 43.6,8.4
		.talk Spraggle Frock##9997
		..turnin A Little Help From My Friends##4491
		..turnin Beware of Pterrordax##4501
	step //214
		goto 43.6,7.3
		.talk Spark Nilminer##9272
		..turnin Roll the Bones##3882
	step //215
		goto 43.9,7.2
		.talk Williden Marshal##9270
		..turnin Expedition Salvation##3881
		.talk Hol'anyee Marshal##9271
		..turnin Alien Ecology##3883
	step //216
		ding 55
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Levels (55-60)",[[
	author support@zygorguides.com
	next Zygor's Horde Leveling Guides\\Outland (60-62)
	startlevel 55
	step //1
		goto Un'Goro Crater,45.5,8.7
		.talk Larion##9118
		..turnin Larion and Muigin##4145
		..accept Marvon's Workshop##4147
	step //2
		goto 44.2,11.6
		.talk Shizzle##9998
		..turnin Shizzle's Flyer##4503
	step //3
		goto 41.9,2.7
		.talk J.D. Collie##9117
		..turnin The Northern Pylon##4285
		..turnin The Eastern Pylon##4287
		..turnin The Western Pylon##4288
		..accept Making Sense of It##4321
		..turnin Making Sense of It##4321
	step //4
		'Go southeast to the gorilla cave|goto Un'Goro Crater,63.1,17.1,1
	step //5
		'Go inside the cave to 68.4,12.9|goto 68.4,12.9
		.' Inside the cave, follow the path up
		.' Kill U'cha
		.get U'cha's Pelt|q 4301/1
		info U'cha is a big orange gorilla
	step //6
		'Inside the cave, go to 68,17|goto 67.6,16.8
		.talk A-Me 01##9623
		..accept Chasing A-Me 01 (2)##4244
		..turnin Chasing A-Me 01 (2)##4244
		..accept Chasing A-Me 01 (3)##4245
		.goal Protect A-Me 01 until you reach Karna Remtravel|q 4245/1
	step //7
		goto 46.4,13.5
		.talk Karna Remtravel##9618
		..turnin Chasing A-Me 01 (3)##4245
	step //8
		goto 71.6,76
		.talk Torwa Pathfinder##9619
		..turnin The Mighty U'cha##4301
	step //9
		'Go southeast to Tanaris|goto Tanaris
	step //10
		goto Tanaris,51.6,26.8
		.talk Tran'rek##7876
		..turnin Super Sticky##4504
	step //11
		goto 50.9,27
		.talk Alchemist Pestlezugg##5594
		..turnin Bungle in the Jungle##4496
	step //12
		'Fly to Thunder Bluff|goto Thunder Bluff
	step //13
		goto Thunder Bluff,78.6,28.5
		.talk Arch Druid Hamuul Runetotem##5769
		..accept Un'Goro Soil##3761
	step //14
		goto 77.4,22
		.talk Ghede##9076
		..turnin Un'Goro Soil##3761
	step //15
		goto 78.6,28.5
		.talk Arch Druid Hamuul Runetotem##5769
		..accept Morrowgrain Research (1)##3782
	step //16
		goto 71.1,34.2
		.talk Bashana Runetotem##9087
		..turnin Morrowgrain Research (1)##3782
	step //17
		'Hearth to the Orgrimmar|goto Orgrimmar|use hearthstone##6948|noway|c
	step //18
		'Fly to Ratchet|goto The Barrens,63.1,37.1,0.1|noway|c
	step //19
		goto The Barrens,62.5,38.7
		.talk Liv Rizzlefix##8496
		..turnin Marvon's Workshop##4147
		..turnin Volcanic Activity##4502
	step //20
		'Ride the boat to Booty Bay|goto Stranglethorn Vale
	step //21
		'Fly to Kargath|goto Badlands,4.1,44.9,0.1|noway|c
	step //22
		goto Badlands,3,47.8
		.talk Shadowmage Vivian Lagrave##9078
		..turnin Vivian Lagrave##4133
		.talk Hierophant Theodora Mulvadania##9079
		..accept The Rise of the Machines (1)##4061
	step //23
		goto 3.4,48.1
		.talk Thal'trak Proudtusk##9082
		..accept Dreadmaul Rock##3821
		info2 If he, and the group of people he is with, are not there, just wait a few minutes and they will come back.
	step //24
		'Fly to Flame Crest|goto Burning Steppes,65.6,24.2,0.1|noway|c
	step //25
		goto Burning Steppes,65.2,23.9
		.talk Maxwort Uberglint##9536
		..accept Tablet of the Seven##4296
		.talk Tinkee Steamboil##10267
		..accept Broodling Essence##4726
	step //26
		goto 66.1,21.9
		.talk Yuka Screwspigot##9544
		..turnin Yuka Screwspigot##4324
	step //27
		goto 85,30
		.' Use your Draco-Incarcinatrix 900 on Black Broodlings|use Draco-Incarcinatrix 900##12284
		.' Kill Black Broodlings
		.' Click the red crystal hovering over their corpses
		.get 8 Broodling Essence|q 4726/1
		.' There are more Black Broodlings around 91.8,36.8
		.' There are also more around 88.3,58.8
	step //28
		goto 79.9,45.4
		.' Go to the top of this mountain
		.' Click Sha'ni Proudtusk's Remains to summon her
		.talk Sha'ni Proudtusk##9136
		..turnin Dreadmaul Rock##3821
		..accept Krom'Grul##3822
		info2 She is kind of invisible, so look hard
	step //29
		'Krom'Grul can spawn in any of the 3 caves on this mountain, so you will probably have to search for him:
		.' Kill Korm'Grul
		.get Sha'ni's Nose-Ring|q 3822/1
	step //30
		goto 68.8,37.8
		.' Kill War Reavers
		.get 10 Fractured Elemental Shard|q 4061/1
	step //31
		goto 54.1,40.7
		.' Click the Tablet of the Seven
		.' Transcribe the Tablet
		.get Tablet Transcript|q 4296/1
		info It looks like a small stone block in front of a dwarf statue.
	step //32
		goto 65.2,23.9
		.talk Tinkee Steamboil##10267
		..turnin Broodling Essence##4726
		..accept Felnok Steelspring##4808
		.talk Maxwort Uberglint##9536
		..turnin Tablet of the Seven##4296
	step //33
		'Fly to Kargath|goto Badlands,4.1,44.9,0.1|noway|c
	step //34
		goto Badlands,3.4,48.1
		.talk Thal'trak Proudtusk##9082
		..turnin Krom'Grul##3822
		info2 If he, and the group of people he is with, are not there, just wait a few minutes and they will come back.
	step //35
		goto 3,47.8
		.talk Hierophant Theodora Mulvadania##9079
		..turnin The Rise of the Machines (1)##4061
		..accept The Rise of the Machines (2)##4062
	step //36
		goto 25.9,44.6
		.talk Lotwil Veriatus##2921
		..turnin The Rise of the Machines (2)##4062
		info2 A little mechanical robot walks around this little area also.
	step //37
		ding 56
	step //38
		'Hearth to the Orgrimmar|goto Orgrimmar|use hearthstone##6948|noway|c
	step //39
		goto Orgrimmar,55.6,34.1
		.' Talk Hierophant Jes'rimon
		..turnin Bone-Bladed Weapons##4300
		info Upstairs in the house, on the balcony
	step //40
		goto 43,38.4
		.talk Warcaller Gorlach##10880
		..accept The New Frontier##1018
		..accept Camp Mojache##7492
	step //41
		goto 47.6,65.7
		.talk Cenarion Emissary Blackhoof##15188
		..accept Taking Back Silithus##8276
	step //42
		'Fly to Splintertree Post|goto Ashenvale,73.3,61.7,0.1|noway|c
	step //43
		'Go northwest to Felwood|goto Felwood
	step //44
		goto Felwood,50.9,85
		.talk Grazle##11554
		..accept Timbermaw Ally##8460
	step //45
		goto 51.2,82.2
		.talk Greta Mosshoof##10922
		..accept Forces of Jaedenar##5155
	step //46
		goto 51.5,82.2
		.talk Gorrim##22931
		..fpath Emerald Sanctuary
	step //47
		goto 50.9,81.6
		.talk Taronn Redfeather##10921
		..accept Verifying the Corruption##5156
	step //48
		goto 49.4,88.9
		.kill 6 Deadwood Warrior|q 8460/1
		.kill 6 Deadwood Pathfinder|q 8460/2
		.kill 6 Deadwood Gardener|q 8460/3
	step //49
		goto 50.9,85
		.talk Grazle##11554
		..turnin Timbermaw Ally##8460
		..accept Speak to Nafien##8462
	step //50
		goto 46.8,83.1
		.talk Maybess Riverbreeze##9529
		..accept Cleansing Felwood##4102
	step //51
		goto 42.4,67.8
		.' Kill oozes
		.collect 15 Felwood Slime Sample##12230|q 4293
		.' There are more slimes at 40.8,59
	step //52
		goto 39.4,58.2
		.kill 4 Jaedenar Hound|q 5155/1
		.kill 4 Jaedenar Guardian|q 5155/2
		.kill 6 Jaedenar Adept|q 5155/3
		.kill 6 Jaedenar Cultist|q 5155/4
	step //53
		'Go north to the river and follow the river west to 34.2,52.3|goto 34.2,52.3
		.talk Winna Hazzard##9996
		..accept Well of Corruption##4505
	step //54
		goto 34.8,52.7
		.talk Dreka'Sur##9620
		..accept A Husband's Last Battle##6162
		.talk Trull Failbaine##10306
		..accept Wild Guardians (1)##4521
	step //55
		goto 34.5,54
		.talk Brakkar##11900
		..fpath Bloodvenom Post
	step //56
		goto 42,40.3
		.' Go into this crater
		.' Explore the craters in Shatter Scar Vale|goal Explore the craters in Shatter Scar Vale|q 5156/1
		.kill 2 Entropic Beast|q 5156/2
		.kill 2 Entropic Horror|q 5156/3
	step //57
		goto 54.3,16.2
		.' Kill Warpwood elementals
		.get 15 Blood Amber|q 4102/1
	step //58
		goto 56,12.5
		.kill 12 Felpaw Ravager|q 4120/2
		.kill 12 Angerclaw Grizzly|q 4120/1
		.' There are more at 58.1,17.4
	step //59
		goto 64.8,8.1
		.talk Nafien##15395
		..turnin Speak to Nafien##8462
		..accept Deadwood of the North##8461
	step //60
		goto 63.1,8.9
		.kill 6 Deadwood Den Watcher|q 8461/1
		.kill 6 Deadwood Avenger|q 8461/2
		.kill 6 Deadwood Shaman|q 8461/3
	step //61
		goto 64.8,8.1
		.talk Nafien##15395
		..turnin Deadwood of the North##8461
		..accept Speak to Salfa##8465
	step //62
		'Go through the tunnel to Winterspring|goto Winterspring|c
		.' At the fork, the tunnel heading east leads to Winterspring
	step //63
		goto Winterspring,27.7,34.5
		.talk Salfa##11556
		..turnin Speak to Salfa##8465
		..accept Winterfall Activity##8464
	step //64
		goto 31.3,45.2
		.talk Donova Snowden##9298
		..turnin The New Springs##980
		..accept Strange Sources##4842
		..turnin It's a Secret to Everybody (3)##3908
		..accept The Videre Elixir##3909
		..accept Threat of the Winterfall##5082
	step //65
		goto 60.5,36.3
		.talk Yugrek##11139
		..fpath Everlook
	step //66
		'Go west into the tunnel
		.' Go north at the fork into Moonglade|goto Moonglade|c
	step //67
		goto Moonglade,32.1,66.6
		.talk Faustron##12740
		..fpath Moonglade
	step //68
		'Fly to Thunder Bluff|goto Thunder Bluff
	step //69
		goto Thunder Bluff,43.4,62.1
		.talk Bluff Runner Windstrider##10881
		.' He walks around Thunder Bluff
		..accept A Call to Arms: The Plaguelands!##5095
		info2 You may need to search for him
	step //70
		goto 78.6,28.5
		.talk Arch Druid Hamuul Runetotem##5769
		..turnin The New Frontier##1018
		..accept Rabine Saturna##1123
	step //71
		'Fly to Camp Mojache|goto Feralas,75.4,44.3,0.1|noway|c
	step //72
		goto Feralas,76.2,43.8
		.talk Talo Thornhoof##7776
		..turnin The Strength of Corruption##4120
		..turnin Camp Mojache##7492
	step //73
		goto 45.1,25.6
		.talk Gregan Brewspewer##7775
		..buy Bait##11141 |q 3909
	step //74
		goto 44.9,10.8
		.' Click the Bait in your bags to place it here|use Bait##11141
		.' Miblan Snarltooth will run over to the bait and start eating it
		.' The door behind him will slide open
		.' Run into the stone building
		.' Click the Evoroot on the pedestal
		.collect 1 Evoroot##11242 |q 3909
	step //75
		goto 45.1,25.6
		.talk Gregan Brewspewer##7775
		..' Give him the Evoroot
		.get Videre Elixir |q 3909/1
	step //76
		'Hearth to the Orgrimmar|goto Orgrimmar|use hearthstone##6948|noway|c
	step //77
		'Fly to Emerald Sanctuary|goto Felwood,51.4,82.3,0.1|noway|c
	step //78
		goto Felwood,51.2,82.1
		.talk Greta Mosshoof##10922
		..turnin Forces of Jaedenar##5155
		..accept Collection of the Corrupt Water##5157
	step //79
		goto 50.9,81.6
		.talk Taronn Redfeather##10921
		..turnin Verifying the Corruption##5156
	step //80
		goto 46.8,83.1
		.talk Maybess Riverbreeze##9529
		..turnin Cleansing Felwood##4102
		.talk Maybess Riverbreeze##9529
		..'Get a Cenarion Beacon
		.collect 1 Cenarion Beacon##11511|q 5882 |future
	step //81
		goto 48.6,90.8
		.' Kill furbolgs
		.collect 6 Corrupted Soul Shard##11515|q 5882 |future
	step //82
		goto 48.3,94.2
		.' Kill Overlord Ror
		.get Overlord Ror's Claw|q 6162/1
	step //83
		goto 46.8,83.1
		.talk Maybess Riverbreeze##9529
		..accept Salve via Hunting##5882 |instant
	step //84
		goto 32.3,66.5
		.' Use your Hardened Flasket in the small green pool of water|use Hardened Flasket##12566
		.get Filled Flasket|q 4505/1
	step //85
		goto 35.2,59.8
		.' Use your Empty Canteen in the small green pool of water|use Empty Canteen##12922
		.get Corrupt Moonwell Water|q 5157/1
	step //86
		'Go northeast to the green river, then go west to 34.2,52.3|goto 34.2,52.3
		.talk Winna Hazzard##9996
		..turnin Well of Corruption##4505
		..accept Corrupted Sabers##4506
	step //87
		goto 34.8,52.7
		.talk Dreka'Sur##9620
		..turnin A Husband's Last Battle##6162
	step //88
		goto 32.7,66.6
		.' Use Winna's Kitten Carrier near the green pool of water|use Winna's Kitten Carrier##12565
		.' Wait for the cat to go into the water and grow
		.' Lead the cat back to Winna Hazzard at Boodvenom Post
		.' Escort the cat back to Winna Hazzard|goto 34.2,52.3|n
		.talk Corrupted Saber##10042
		.' Release the corrupted saber to Winna
		.' Return the corrupted cat to Winna Hazzard|goal Return the corrupted cat to Winna Hazzard|q 4506/1
	step //89
		goto 34.2,52.3
		.talk Winna Hazzard##9996
		..turnin Corrupted Sabers##4506
	step //90
		'Fly to Emerald Sanctuary|goto Felwood,51.4,82.3,0.1|noway|c
	step //91
		goto 51.2,82.1
		.talk Greta Mosshoof##10922
		..turnin Collection of the Corrupt Water##5157
	step //92
		'Fly to Moonglade|goto Moonglade
	step //93
		goto Moonglade,51.7,45.1
		.talk Rabine Saturna##11801
		..turnin Rabine Saturna##1123
		..accept Wasteland##1124
	step //94
		ding 57
	step //95
		'Fly to Everlook|goto Winterspring,60.5,36.3,0.1|noway|c
	step //96
		goto Winterspring,61.3,39
		.talk Jessica Redpath##11629
		..accept Sister Pamela##5601
		.talk Gregor Greystone##10431
		..accept The Everlook Report##6029
		..accept Duke Nicholas Zverenhoff##6030
	step //97
		home Everlook
	step //98
		goto 61.6,38.6
		.talk Felnok Steelspring##10468
		..turnin Felnok Steelspring##4808
		..accept Chillwind Horns##4809
	step //99
		goto 60.9,37.6
		.talk Umi Rumplesnicker##10305
		..accept Are We There, Yeti? (1)##3783
	step //100
		goto 40.7,42.7
		.kill 8 Winterfall Pathfinder|q 5082/1
		.kill 8 Winterfall Den Watcher|q 5082/2
		.kill 8 Winterfall Totemic|q 5082/3
		.get an Empty Firewater Flask|n
		.' More of the above mobs can be found around 30.8,35.7
		.' Click the Empty Firewater Flask|use Empty Firewater Flask##12771
		..accept Winterfall Firewater##5083
	step //101
		goto 31.3,45.2
		.talk Donova Snowden##9298
		..turnin The Videre Elixir##3909
		..accept Meet at the Grave##3912
		..turnin Threat of the Winterfall##5082
		..turnin Winterfall Firewater##5083
	step //102
		goto 64.7,41.6
		.' Kill yetis
		.get 10 Thick Yeti Fur|q 3783/1
	step //103
		goto 60.9,37.6
		.talk Umi Rumplesnicker##10305
		..turnin Are We There, Yeti? (1)##3783
		..accept Are We There. Yeti? (2)##977
	step //104
		goto 66,43
		.' Kill Ice Thistle Matriarchs
		.' Kill Ice Thistle Patriarchs
		.get 2 Pristine Yeti Horn|q 977/1
	step //105
		goto 60.1,73.5
		.' Go to this spot to Discover Darkwhisper Gorge|goal Discover Darkwhisper Gorge|q 4842/1
	step //106
		'Hearth to Everlook|goto 61.3,38.8,0.1|use hearthstone##6948|noway|c
	step //107
		goto 60.9,37.6
		.talk Umi Rumplesnicker##10305
		..turnin Are We There. Yeti? (2)##977
		..accept Are We There, Yeti? (3)##5163
	step //108
		goto 61.5,38.6
		.' Use Umi's Mechanical Yeti on Legacki|use Umi's Mechanical Yeti##12928
		.' Scare Legacki|goal Scare Legacki|q 5163/1
		info Standing next to a table with a bunch of tools on it, under a blue canopy
	step //109
		goto 67,35
		.kill 8 Winterfall Shaman|q 8464/1
		.kill 8 Winterfall Den Watcher|q 8464/2
		..' You have these from before
		.kill 8 Winterfall Ursa|q 8464/3
	step //110
		goto 31.3,45.2
		.talk Donova Snowden##9298
		..turnin Strange Sources##4842
	step //111
		goto 27.7,34.5
		.talk Salfa##11556
		..turnin Winterfall Activity##8464
	step //112
		goto 38.5,38.7
		.'Kill 15 Ragged Owlbeasts while heading east in the mountains north and south of the road|kill 15 Ragged Owlbeast|q 4521/2
	step //113
		goto 59.3,28
		.kill 15 Raging Owlbeast|q 4521/1
	step //114
		goto 61,22
		.' Kill Chillwind Ravagers
		.get 8 Uncracked Chillwind Horn|q 4809/1
	step //115
		goto 61.6,38.6
		.talk Felnok Steelspring##10468
		..turnin Chillwind Horns##4809
		..accept Return to Tinkee##4810
	step //116
		'Fly to Bloodvenom Post|goto Felwood,34.4,53.9,0.1|noway|c
	step //117
		goto Felwood,34.7,52.8
		.talk Trull Failbaine##10306
		..turnin Wild Guardians (1)##4521
	step //118
		'Fly to Gadgetzan|goto Tanaris,51.6,25.5,0.1|noway|c
	step //119
		goto Tanaris,51.1,26.9
		.' Use Umi's Mechanical Yeti on Sprinkle|use Umi's Mechanical Yeti##12928
		.' Scare Sprinkle|goal Scare Sprinkle|q 5163/2
		info Standing next to a small cart
	step //120
		goto 54.1,28.4
		.' Drink a Videre Elixir in the graveyard|use Videre Elixir##11243
		.' You will die
		.' Release spirit, but DO NOT resurrect yet, and skip to the next step in the guide
	step //121
		'As a spirit, go north to 54,23.4|goto 54,23.4
		.talk Gaeriyan##9299
		..turnin Meet at the Grave##3912
		..accept A Grave Situation##3913
	step //122
		'Go south as a ghost to the graveyard
		.' Resurrect now in the graveyard, and skip to the next step in the guide
	step //123
		goto 53.8,29.1
		.' Click the Conspicious Gravestone
		..turnin A Grave Situation##3913
		..accept Linken's Sword##3914
		info It's the only grave that looks like a stone tombstone.
	step //124
		'Fly to Marshal's Refuge|goto Un'Goro Crater,45.3,6.0,0.1|noway|c
	step //125
		goto Un'Goro Crater,43.7,9.4
		.' Use Umi's Mechanical Yeti on Quixxle|use Umi's Mechanical Yeti##12928
		.' Scare Quixxil|goal Scare Quixxil|q 5163/3
		info Standing next to some trees.
	step //126
		goto 44.7,8.1
		.talk Linken##8737
		..turnin Linken's Sword##3914
		..accept A Gnome's Assistance##3941
	step //127
		goto 41.9,2.7
		.talk J.D. Collie##9117
		..turnin A Gnome's Assistance##3941
		..accept Linken's Memory##3942
	step //128
		goto 29.2,22.1|n
		.' The path over to Silithus starts here|goto Un'Goro Crater,29.2,22.1,0.5|noway|c
	step //129
		'Go west to Silithus|goto Silithus
	step //130
		goto Silithus,81.8,18.8
		.talk Layo Starstrike##13220
		..turnin Wasteland##1124
	step //131
		goto 51.2,38.3
		.talk Windcaller Proudhorn##15191
		..turnin Taking Back Silithus##8276
		..accept Securing the Supply Lines##8280
	step //132
		ding 58
	step //133
		home Cenarion Hold
	step //134
		goto 51.7,38.6
		.talk Beetix Ficklespragg##15189
		..accept Deadly Desert Venom##8277
	step //135
		goto 49.7,37.5
		.talk Geologist Larksbane##15183
		..accept The Twilight Mystery##8284
	step //136
		goto 48.7,36.7
		.talk Runk Windtamer##15178
		..fpath Cenarion Hold
	step //137
		goto 54,31
		.kill 15 Dredge Striker|q 8280/1
		.' Kill Stonelash Scorpids
		.get 8 Stonelash Scorpid Stinger|q 8277/1
		.' Kill Sand Skitterers
		.get 8 Sand Skitterer Fang|q 8277/2
	step //138
		goto 25,10
		.' Click Twilight Tablet Fragments
		.get 8 Twilight Tablet Fragment|q 8284/1
		info They look like little blue glowing fragments on the ground around this area.
	step //139
		'Hearth to Cenarion Hold|goto Silithus,51.9,39.2,0.3|noway|use hearthstone##6948|c
	step //140
		goto 51.7,38.6
		.talk Beetix Ficklespragg##15189
		..turnin Deadly Desert Venom##8277
		..accept Noggle's Last Hope##8278
	step //141
		goto 51.2,38.3
		.talk Windcaller Proudhorn##15191
		..turnin Securing the Supply Lines##8280
		..accept Stepping Up Security##8281
	step //142
		goto 49.7,37.5
		.talk Geologist Larksbane##15183
		..turnin The Twilight Mystery##8284
		..accept The Deserter##8285
	step //143
		goto 55,60
		.kill 20 Dredge Crusher|q 8281/1
		.' Kill Stonelash Pincers
		.get 3 Stonelash Pincer Stinger|q 8278/2
	step //144
		goto 67.2,69.8
		.talk Hermit Ortell##15194
		..turnin The Deserter##8285
	step //145
		goto 65,75
		.' Kill Stonelash Flayers
		.get 3 Stonelash Flayer Stinger|q 8278/1
		.' Kill Rock Stalkers
		.get 3 Rock Stalker Fang|q 8278/3
		.' You can find more Stonelash Flayers and Rock Stalkers at 46.2,70.2|n
	step //146
		goto 51.2,38.3
		.talk Windcaller Proudhorn##15191
		..turnin Stepping Up Security##8281
	step //147
		goto 51.7,38.6
		.talk Beetix Ficklespragg##15189
		..turnin Noggle's Last Hope##8278
	step //148
		'Fly to Emerald Sanctuary|goto Felwood,51.4,82.3,0.1|noway|c
	step //149
		goto Felwood,51.3,81.6
		.talk Eridan Bluewind##9116
		..turnin Linken's Memory##3942
	step //150
		'Fly to Ratchet|goto The Barrens,63.1,37.1,0.1|noway|c
	step //151
		'Ride the boat to Booty Bay|goto Stranglethorn Vale
	step //152
		'Fly to Flame Crest|goto Burning Steppes,65.6,24.2,0.1|noway|c
	step //153
		goto Burning Steppes,65.2,23.9
		.talk Tinkee Steamboil##10267
		..turnin Return to Tinkee##4810
	step //154
		'Fly to Undercity|goto Undercity
	step //155
		goto Undercity,47.5,73.1
		.' They look like 2 small pots with red and green liquid in them
		.' Click the Testing Equipment on the small table next to Chemist Fuely
		.' Click the Corrupt Tested Samples in your bags|use Corrupt Tested Sample##15103
		.' Click the Un'Goro Tested Samples in your bags|use Un'Goro Tested Sample##15102
		.get 5 Corrupted Felwood Sample|q 4293/1
		.get 5 Pure Un'Goro Sample|q 4294/1
		info Standing in front of a stack of barrels in the big underground room
	step //156
		goto 47.5,73.1
		.talk Chemist Fuely##10136
		..turnin A Sample of Slime...##4293
		..turnin ... and a Batch of Ooze##4294
	step //157
		goto 48.4,71.8
		.talk Chemist Cuely##8390
		..accept Seeping Corruption (3)##3570
		..turnin Seeping Corruption (3)##3570
	step //158
		home Undercity
	step //159
		'Go outside of Undercity|goto Tirisfal Glades
	step //160
		goto Tirisfal Glades,83.57,69.95
		.talk Timothy Cunningham##37915
		..fpath The Bulwark
	step //161
		goto Tirisfal Glades,83.1,68.9
		.talk High Executor Derrington##10837
		..turnin A Call to Arms: The Plaguelands!##5095
		..accept Scarlet Diversions##5096
		.' Click the Box of Incendiaries on the ground
		.collect 1 Flame in a Bottle##12814|q 5096
	step //162
		goto 83.2,68.5
		.talk Argent Officer Garush##10839
		..turnin The Everlook Report##6029
	step //163
		'Go east to the Western Plaguelands|goto Western Plaguelands
	step //164
		goto Western Plaguelands,38.4,54.1
		.talk Janice Felstone##10778
		..accept Better Late Than Never (1)##5021
	step //165
		'Go south inside the barn to 39,55|goto 38.7,55.3
		.' Click Janice's Parcel
		..turnin Better Late Than Never (1)##5021
		.' Click Janice's Parcel again
		..accept Better Late Than Never (2)##5023
		info It's a brown package on the floor inside the barn, next to the wall as you enter.
	step //166
		goto 40.7,51.9
		.' Click the Command Tent
		.' Burn the Command Tent
		.' Click the Scourge Banner in your bags|use Scourge Banner##12807
		.' Plant the Scourge Banner in the camp
		.goal Destroy the command tent and plant the Scourge banner in the camp|q 5096/1
		info It's a white tent.
	step //167
		'Go west to Tirisfal Glades|goto Tirisfal Glades
	step //168
		goto Tirisfal Glades,83.1,68.9
		.talk High Executor Derrington##10837
		..turnin Scarlet Diversions##5096
		..accept The Scourge Cauldrons##5228
	step //169
		goto 83,71.9
		.talk Shadow Priestess Vandis##11055
		..turnin The Scourge Cauldrons##5228
		..accept Target: Felstone Field##5229
	step //170
		'Go east to the Western Plaguelands|goto Western Plaguelands
	step //171
		goto Western Plaguelands,37,57.2
		.' Kill Cauldron Lord Bilemaw
		.get his Felstone Field Cauldron Key|n
		.' Click the Scourge Cauldron
		..turnin Target: Felstone Field##5229
		..accept Return to the Bulwark##5230
	step //172
		'Go west to Tirisfal Glades|goto Tirisfal Glades
	step //173
		goto Tirisfal Glades,83,71.9
		.talk Shadow Priestess Vandis##11055
		..turnin Return to the Bulwark##5230
		..accept Target: Dalson's Tears##5231
	step //174
		'Go east to the Western Plaguelands|goto Western Plaguelands
	step //175
		goto Western Plaguelands,46.2,52.5
		.' Kill Cauldron Lord Malvinious
		.get his Dalson's Tears Cauldron Key|n
		.' Click the Scourge Cauldron
		..turnin Target: Dalson's Tears##5231
		..accept Return to the Bulwark##5232
	step //176
		'Go west to Tirisfal Glades|goto Tirisfal Glades
	step //177
		goto Tirisfal Glades,83,71.9
		.talk Shadow Priestess Vandis##11055
		..turnin Return to the Bulwark##5232
		..accept Target: Writhing Haunt##5233
	step //178
		'Go east to the Western Plaguelands|goto Western Plaguelands
	step //179
		goto Western Plaguelands,53,66
		.' Kill Cauldron Lord Razarch
		.get his Writhing Haunt Cauldron Key|n
		.' Click the Scourge Cauldron
		..turnin Target: Writhing Haunt##5233
		..accept Return to the Bulwark##5234
	step //180
		'Go northwest to Tirisfal Glades|goto Tirisfal Glades
	step //181
		goto Tirisfal Glades,83,71.9
		.talk Shadow Priestess Vandis##11055
		..turnin Return to the Bulwark##5234
		..accept Target: Gahrron's Withering##5235
	step //182
		'Go east to the Western Plaguelands|goto Western Plaguelands
	step //183
		goto Western Plaguelands,62.6,58.9
		.' Kill Cauldron Lord Soulwrath
		.get his Gahrron's Withering Cauldron Key|n
		.' Click the Scourge Cauldron
		..turnin Target: Gahrron's Withering##5235
		..accept Return to the Bulwark##5236
	step //184
		ding 59
	step //185
		'Go west to Tirisfal Glades|goto Tirisfal Glades
	step //186
		goto Tirisfal Glades,83,71.9
		.talk Shadow Priestess Vandis##11055
		..turnin Return to the Bulwark##5236
	step //187
		goto 83.1,68.9
		.talk High Executor Derrington##10837
		..accept Mission Accomplished!##5237 |instant
	step //188
		'Go east to the Western Plaguelands|goto Western Plaguelands
	step //189
		'Go east to the Eastern Plaguelands|goto Eastern Plaguelands
	step //190
		'Go north up the coast to 5,38|goto 4.7,38.3
		.talk Tirion Fordring##1855
		..accept Demon Dogs##5542
		..accept Blood Tinged Skies##5543
		..accept Carrion Grubbage##5544
	step //191
		goto 23.0,68.2
		.talk Nathanos Blightcaller##11878
		..accept Un-Life's Little Annoyances##6042
	step //192
		goto 25.1,63.1
		.kill 20 Plaguehound Runt|q 5542/1
		.kill 30 Plaguebat|q 5543/1
		.' Kill Carrion Grubs
		.get 15 Slab of Carrion Worm Meat|q 5544/1
		.' You can find more around 29.6,76.7
	step //193
		goto 32.4,83.7
		.talk Pamela Redpath##10926
		..turnin Sister Pamela##5601
		..accept Pamela's Doll##5149
	step //194
		goto 35.0,84.3
		.' The doll parts spawn in the house here, except the house Pamela is in
		.get Pamela's Doll's Head|n
		.get Pamela's Doll's Left Side|n
		.get Pamela's Doll's Right Side|n
		.' Click Pamela's Doll's Head to put the doll parts together to make Pamela's Doll|goal Pamela's Doll|q 5149/1|use Pamela's Doll's Head##12886
	step //195
		goto 32.4,83.7
		.talk Pamela Redpath##10926
		..turnin Pamela's Doll##5149
		..accept Uncle Carlin##5241
	step //196
		goto 46.5,57.9
		.kill 5 Plaguehound|q 5542/2
		.kill 20 Noxious Plaguebat|q 6042/1
	step //197
		goto 74.5,51.2
		.talk Georgia##12636
		..fpath Light's Hope Chapel
	step //198
		goto 75.7,53.9
		.talk Duke Nicholas Zverenhoff##11039
		..turnin Duke Nicholas Zverenhoff##6030
		.talk Carlin Redpath##11063
		..turnin Uncle Carlin##5241
		..accept Defenders of Darrowshire##5211
	step //199
		goto 61.4,36.7
		.' Kill Diseased flayers
		.' Talk to the Darrowshire spirit
		.' Free 15 Darrowshire spirits|goal 15 Darrowshire Spirits Freed|q 5211/1
	step //200
		goto 58.3,38.4
		.kill 10 Monstrous Plaguebat|q 6042/2
		.kill 5 Frenzied Plaguehound|q 5542/3
	step //201
		goto 75.7,53.9
		..talk Carlin Redpath##11063
		..turnin Defenders of Darrowshire##5211
	step //202
		goto 23.0,68.2
		.talk Nathanos Blightcaller##11878
		..turnin Un-Life's Little Annoyances##6042
	step //203
		'Go northwest along the coast to 5,38|goto 4.7,38.3
		.talk Tirion Fordring##1855
		..turnin Demon Dogs##5542
		..turnin Blood Tinged Skies##5543
		..turnin Carrion Grubbage##5544
		..accept Redemption##5742
		.talk Tirion Fordring##1855
		..'Listen to his story
		..turnin Redemption##5742
	step //204
		Hearth to Undercity|goto Undercity|use hearthstone##6948|noway|c
	step //205
		goto Undercity,69.8,43.1
		.talk Royal Overseer Bauhaus##10781
		..turnin Better Late Than Never (2)##5023
		..accept The Jeremiah Blues##5049
	step //206
		goto 67.6,44.1
		.talk Jeremiah Payson##8403
		..turnin The Jeremiah Blues##5049
	step //207
		'Go outside of Undercity|goto Tirisfal Glades
	step //208
		goto Tirisfal Glades,60.8,58.8|n
		.' Ride the zeppelin to Orgrimmar|goto Durotar|noway|c
		info You can ride this zeppelin to Orgrimmar or Grom'Gol Base Camp
	step //209
		'Go northwest to Orgrimmar|goto Orgrimmar
	step //210
		'Fly to Everlook|goto Winterspring,60.5,36.3,0.1|noway|c
	step //211
		goto Winterspring,60.9,37.6
		.talk Umi Rumplesnicker##10305
		..turnin Are We There, Yeti? (3)##5163
	step //212
		'Fly to Orgrimmar|goto Orgrimmar
	step //213
		goto Durotar,51,14|n
		.' Ride the zeppelin to Undercity|goto Tirisfal Glades|noway|c
	step //214
		'Go to Undercity|goto Undercity
	step //215
		goto Undercity,85.3,17.0|n
		.'Click the Portal to Blasted Lands|goto Blasted Lands|noway|c
	step //216
		ding 60
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Outland (60-62)",[[
	author support@zygorguides.com
	next Zygor's Horde Leveling Guides\\Outland (62-64)
	startlevel 60
	step //1
		'Go to the Blasted Lands|goto Blasted Lands
	step //2
		goto Blasted Lands,58.1,56
		.talk Warlord Dar'toon##19254
		..accept Through the Dark Portal##9407
	step //3
		'Go into the big green portal to Outland|goto Hellfire Peninsula
	step //4
		goto Hellfire Peninsula,87.4,49.8
		.talk Lieutenant General Orion##19253
		..turnin Through the Dark Portal##9407
		..accept Arrival in Outland##10120
	step //5
		goto 87.3,48.1
		.talk Vlagga Freyfeather##18930
		..turnin Arrival in Outland##10120
		..accept Journey to Thrallmar##10289
	step //6
		'Fly to Thrallmar|goto Hellfire Peninsula,54.7,38.3,5|noway
	step //7
		goto 55.9,36.8
		.talk General Krakork##19255
		..turnin Journey to Thrallmar##10289
		..accept Report to Nazgrel##10291
	step //8
		goto 55,36
		.talk Nazgrel##3230
		..turnin Report to Nazgrel##10291
		..accept Eradicate the Burning Legion##10121
	step //9
		goto 55.1,36.4
		.talk Vurtok Axebreaker##21256
		..accept Bonechewer Blood##10450
	step //10
		goto 55.2,38.8
		.talk Megzeg Nukklebust##21283
		..accept I Work... For the Horde!##10086
	step //11
		home Thrallmar
	step //12
		goto 58,41.3
		.talk Sergeant Shatterskull##19256
		..turnin Eradicate the Burning Legion##10121
		..accept Felspark Ravine##10123
	step //13
		goto 60.8,35.9
		.kill 1 Dreadcaller|q 10123/1
		.kill 4 Flamewaker Imp|q 10123/2
		.kill 6 Infernal Warbringer|q 10123/3
		info Kill 1 Dreadcaller, 4 Flamewalker Imps, and 6 Infernal Warbringers around this area
	step //14
		goto 58,41.3
		.talk Sergeant Shatterskull##19256
		..turnin Felspark Ravine##10123
		..accept Forward Base: Reaver's Fall##10124
	step //15
		goto 65.9,43.6
		.talk Forward Commander To'arch##19273
		..turnin Forward Base: Reaver's Fall##10124
		..accept Disrupt Their Reinforcements##10208
	step //16
		goto 70.8,45.4
		.' Kill demons
		.collect 4 Demonic Rune Stone##28513|q 10208
		.' Stand inside the portal
		.' Click the portal
		.' Disrupt Port Xilus|goal Disrupt Port Xilus|q 10208/1
		info2 Stand inside the portal and click it to destroy it
	step //17
		goto 74,38.7
		.' Kill demons
		.collect 4 Demonic Rune Stone##28513|q 10208
		.' Click the portal
		.' Disrupt Port Kruul|goal Disrupt Port Kruul|q 10208/2
		info2 Stand inside the portal and click it to destroy it
	step //18
		goto 65.9,43.6
		.talk Forward Commander To'arch##19273
		..turnin Disrupt Their Reinforcements##10208
		..accept Mission: Gateways Murketh and Shaadraz##10129
	step //19
		goto 66.1,43.7
		.talk Wing Commander Brack##19401
		..'Take the flight
		..'Click the bomb in your bags, bomb Gateway Shaadraz|use Seaforium PU-36 Explosive Nether Modulator##28038|goal Gateway Shaadraz Destroyed|q 10129/2
		..'Click the bomb in your bags, bomb Gateway Murketh|use Seaforium PU-36 Explosive Nether Modulator##28038|goal Gateway Murketh Destroyed|q 10129/1
		info2 They look like big machines with giant green crystals floating above them.
	step //20
		goto 65.9,43.6
		.talk Forward Commander To'arch##19273
		..turnin Mission: Gateways Murketh and Shaadraz##10129
		..accept Mission: The Abyssal Shelf##10162
		..accept Return to Thrallmar##10388
	step //21
		goto 66.1,43.7
		.talk Wing Commander Brack##19401
		..'Fly to the Abyssal Shelf
		..'Use the bomb in your bags to bomb the mobs|use Area 52 Special##28132
		.goal 5 Fel Cannon Destroyed|q 10162/3
		.kill 5 Mo'arg Overseer|q 10162/2
		.kill 20 Gan'arg Peon|q 10162/1
		..'If you don't complete this in the first run, you can keep flying until it's done
	step //22
		goto 65.9,43.6
		.talk Forward Commander To'arch##19273
		..turnin Mission: The Abyssal Shelf##10162
	step //23
		goto 55.2,39.1
		.talk Martik Tor'seldori##16577
		..accept Falcon Watch##9498|only !BloodElf
		..accept Falcon Watch##9499|only BloodElf
	step //24
		goto 55,36
		.talk Nazgrel##3230
		..turnin Return to Thrallmar##10388
		..accept Forge Camp: Mageddon##10390
		..accept The Assassin##9400
	step //25
		goto 64.4,31.9
		.kill 10 Gan'arg Servant|q 10390/1
		.' Kill Razorsaw
		.get Head of Forgefiend Razorsaw|q 10390/2
		.get the Burning Legion Missive|n
		.' Click the Burning Legion Missive|use Burning Legion Missive##29590
		..accept Vile Plans##10393
		info Kill 10 Gan'arg Servants around this area.
		info2 Razorsaw wanders this area. Kill Razorsaw and get the Head of Forgefiend Razorsaw and the Burning Legion Missive. Click the Burning Legion Missive
	step //26
		goto 55,36
		.talk Nazgrel##3230
		..turnin Forge Camp: Mageddon##10390
		..accept Cannons of Rage##10391
	step //27
		goto 55.1,36
		.talk Magister Bloodhawk##21175
		..turnin Vile Plans##10393
	step //28
		goto 57.5,31.2
		.' Destroy 3 Fel Cannon MKI's
		.kill 3 Fel Cannon MKI|q 10391/1
		info Destroy 3 Fel Cannon MKI's around this area
	step //29
		goto 55,36
		.talk Nazgrel##3230
		..turnin Cannons of Rage##10391
		..accept Doorway to the Abyss##10392
	step //30
		goto 52.8,26.4
		.kill 1 Warbringer Arix'Amal|q 10392/1
		.get Burning Legion Gate Key|q 10392/3
	step //31
		goto 53.1,27.6
		.' Go inside the portal
		.' Click the floating thing inside the portal
		.' Close the Burning Legion Gate|goal Close Burning Legion Gate|q 10392/2
		info You might have to stand right underneath it and zoom in your view to be able to click the floating glyph inside the portal, I did.
	step //32
		goto 55,36
		.talk Nazgrel##3230
		..turnin Doorway to the Abyss##10392
	step //33
		goto 55.1,36
		.talk Magister Bloodhawk##21175
		..accept The Agony and the Darkness##10389
	step //34
		goto 56.6,47.1
		.get 8 Salvaged Metal|q 10086/1
		.get 8 Salvaged Wood|q 10086/2
		.' Kill Bonechewer Orcs
		..get 12 Bonechewer Blood|q 10450/1
		info The Salvaged Metal and Salvaged Wood are scraps on the ground around this area.
	step //35
		goto 55.2,38.8
		.talk Megzeg Nukklebust##21283
		..turnin I Work... For the Horde!##10086
		..accept Burn It Up... For the Horde!##10087
	step //36
		goto 55.1,36.4
		.talk Vurtok Axebreaker##21256
		..turnin Bonechewer Blood##10450
		..accept Apothecary Zelana##10449
	step //37
		goto 66.2,42
		.talk Apothecary Zelana##21257
		..turnin Apothecary Zelana##10449
		..accept Spinebreaker Post##10242
	step //38
		goto 66.1,43.7
		.talk Wing Commander Brack##19401
		..'Fly to Spinebreaker Post|goto Hellfire Peninsula,61.4,81.4,1|noway
	step //39
		goto 61.7,81.2
		.talk Amilya Airheart##19558
		..fpath Spinebreaker Post
	step //40
		goto 61.9,81.5
		.talk Ogath the Mad##19683
		..accept The Warp Rifts##10278
	step //41
		goto 61.8,81.7
		.talk Emissary Mordiba##19682
		..accept Make Them Listen##10220
	step //42
		goto 61.1,81.8
		.talk Apothecary Albreck##21279
		..turnin Spinebreaker Post##10242
		..accept Boiling Blood##10538
	step //43
		goto 60.9,81.7
		.talk Grelag##16858
		..accept Preparing the Salve##9345
	step //44
		goto 61.2,80.6
		.' Click the Wanted Poster
		..accept Wanted: Worg Master Kruush##10809
		info Next to the fence
	step //45
		goto 59.5,66.3
		.' They look like green plants on the ground
		.' Click the Hellfire Spineleaves
		goal 12 Hellfire Spineleaf|q 9345/1
	step //46
		goto 58,79
		.kill 12 Unyielding Footman|q 10220/1
		.kill 8 Unyielding Knight|q 10220/2
		.kill 6 Unyielding Sorcerer|q 10220/3
		.' Kill Unyielding Mobs
		.' Get A Mysterious Tome
		.' Click the Mysterious Tome|use A Mysterious Tome##28552
		..accept Decipher the Tome##10229
	step //47
		goto 60.9,81.7
		.talk Grelag##16858
		..turnin Preparing the Salve##9345
		..accept Investigate the Crash##10213
	step //48
		goto 61.8,81.7
		.talk Althen the Historian##19736
		..turnin Decipher the Tome##10229
		..accept The Battle Horn##10230
		.talk Emissary Mordiba##19682
		..turnin Make Them Listen##10220
	step //49
		goto 54.7,83.7
		.' Kill Lieutenant Commander Thalvos
		.get Unyielding Battle Horn|q 10230/1
		info Walking around on a black platform thing. He's a blue ghost dwarf.
	step //50
		goto 61.8,81.7
		.talk Althen the Historian##19736
		..turnin The Battle Horn##10230
		..accept Bloody Vengeance##10250
	step //51
		goto 63.5,77.6
		.' Click the Unyielding Battle Horn in your bags next to the white flag|use Unyielding Battle Horn##28651
		.kill 1 Urtrak|q 10250/1
	step //52
		goto 61.8,81.7
		.talk Althen the Historian##19736
		..turnin Bloody Vengeance##10250
		..accept Honor the Fallen##10258
	step //53
		goto 56.9,77.4
		.talk Commander Hogarth##19937
		..turnin Honor the Fallen##10258
	step //54
		goto 64.6,72.7
		.' Kill Bleeding Hollow Orcs
		.collect 12 Bleeding Hollow Blood##30425|q 10538
	step //55
		goto 65.2,71.2
		.' Click the big red glowing cauldron 12 times
		.get 12 Boiled Blood|q 10538/1
		.' Each time you click the cauldron, scarabs will run out
		.' Run away and stand away from the cauldron until the scarabs disappear
		info It's a big red glowing cauldron.
	step //56
		goto 68.4,73.6
		.' Kill Worg Master Kruush
		.get Worg Master's Head|q 10809/1
		info He's standing in the stables.
	step //57
		goto 61.2,81.3
		.talk Captain Darkhowl##22107
		..turnin Wanted: Worg Master Kruush##10809
		..accept Zeth'Gor Must Burn!##10792
	step //58
		goto 61.1,81.8
		.talk Apothecary Albreck##21279
		..turnin Boiling Blood##10538
		..accept Apothecary Antonivich##10835
	step //59
		goto 61.7,81.9
		.talk Zezzak##22231
		..accept The Eyes of Grillok##10813
	step //60
		goto 66.4,74
		.' Use Zezzak's Shard on an Eye of Grillok to absorb it|use Zezzak's Shard##31463
		info They look like floating green eyes around this area. It has to channel for 3 seconds and turn your character green.
	step //61
		goto 61.7,81.9
		.' Stand next to the cauldron
		.' Return the Eye of Grillok
		.talk Zezzak##22231
		..turnin The Eyes of Grillok##10813
		..accept Grillok "Darkeye"##10834
	step //62
		goto 66.6,71.4
		.' Go inside the cave
		.' Kill Grillok "Darkeye"
		.get Grillok's Eyepatch|q 10834/1
	step //63
		goto 68.7,69.8
		.kill 4 Bleeding Hollow Peons|n
		.collect 4 Bleeding Hollow Torch##31347|q 10792 |n
		.' Click the torches in your bags next to the forge|use Bleeding Hollow Torch##31347
		.collect 4 Burning Bleeding Hollow Torch##31346|q 10792
	step //64
		goto 69.5,70.2
		.' Stand near the Eastern Hovel
		.' Click a Burning Bleeding Hollow Torch|use Burning Bleeding Hollow Torch##31346|n
		.' Burn the Eastern Hovel|goal Eastern Hovel Burned|q 10792/2
	step //65
		goto 68.6,72.9
		.' Stand near the Stable
		.' Click a Burning Bleeding Hollow Torch in your bags|use Burning Bleeding Hollow Torch##31346|n
		.' Burn the Stable|goal Stable Burned|q 10792/4
	step //66
		goto 67.6,75.5
		.' Stand near the Western Hovel
		.' Click a Burning Bleeding Hollow Torch in your bags|use Burning Bleeding Hollow Torch##31346|n
		.' Burn the Western Hovel|goal Western Hovel Burned|q 10792/3
	step //67
		goto 68.8,76.4
		.' Stand near the Barracks
		.' Click a Burning Bleeding Hollow Torch in your bags|use Burning Bleeding Hollow Torch##31346
		.' Burn the Barracks|goal Barracks Burned|q 10792/1
	step //68
		goto 61.2,81.3
		.talk Captain Darkhowl##22107
		..turnin Zeth'Gor Must Burn!##10792
	step //69
		goto 61.7,81.9
		.talk Zezzak##22231
		..turnin Grillok "Darkeye"##10834
	step //70
		ding 61
	step //71
		goto 49.2,74.8
		.talk "Screaming" Screed Luckheed##19367
		..turnin Investigate the Crash##10213
		..accept In Case of Emergency...##10161
		.talk Legassi##19344
		..accept Ravager Egg Roundup##9349
	step //72
		goto 58.1,71.3
		.' Click Zeppelin Debris on the ground around this area
		.get 30 Zeppelin Debris|q 10161/1
	step //73
		goto 49.2,74.8
		.talk "Screaming" Screed Luckheed##19367
		..turnin In Case of Emergency...##10161
		..accept Voidwalkers Gone Wild##9351
	step //74
		goto 49.5,81.8
		.kill voidwalkers|n
		.get 10 Condensed Voidwalker Essence|q 9351/1
	step //75
		goto 46.8,83.1
		.' Use your Unstable Warp Rift Generator under the big black ball of lightning|use Unstable Warp Rift Generator##29027
		.' Click the Unstable Warp Rift Generator and place the green circle under the big black ball of lightning
		.kill Unstable Voidwalkers|n
		.get 3 Warp Nether|q 10278/1
	step //76
		goto 41.2,84.4
		.' Click Ravenger Eggs
		.kill Razorfury Ravagers|n
		.get 12 Ravager Egg|q 9349/1
	step //77
		goto 49.2,74.8
		.talk "Screaming" Screed Luckheed##19367
		..turnin Voidwalkers Gone Wild##9351
		.talk Legassi##19344
		..turnin Ravager Egg Roundup##9349
		..accept Helboar, the Other White Meat##9361
	step //78
		goto 50.2,74.8
		.kill Helboars|n
		.collect Tainted Helboar Meat##23270|q 9361 |n
		.' Use your Purification Mixture on the Tainted Helboar Meat|use Purification Mixture##23268
		.get 8 Purified Helboar Meat|q 9361/1|tip The meat won't become purified every time, it can become toxic as well.
	step //79
		goto 47.8,65.8
		.' Kill Crust Bursters
		.' Get an Eroded Leather Case
		.' Click the Eroded Leather Case|use Eroded Leather Case##23338
		..accept Missing Missive##9373
		info They are under the jumping piles of rocks, they come up to fight when you get close to the jumping rocks
	step //80
		goto 49.2,74.8
		.talk Legassi##19344
		..turnin Helboar, the Other White Meat##9361
		..accept Smooth as Butter##9356
	step //81
		goto 62.6,67.3
		.kill vultures|n
		.get 12 Plump Buzzard Wing|q 9356/1
	step //82
		goto 49.2,74.8
		.talk Legassi##19344
		..turnin Smooth as Butter##9356
	step //83
		'Go southeast to Spinebreaker Ridge|goto Hellfire Peninsula,61.4,81.4,1|c
	step //84
		goto 61.9,81.5
		.talk Ogath the Mad##19683
		..turnin The Warp Rifts##10278
		..accept Void Ridge##10294
	step //85
		goto 71.3,67.4|n
		.' The path over to 'Void Ridge' starts here|goto Hellfire Peninsula,71.3,67.4,0.5|noway|c
	step //86
		goto 75.4,66.3
		.' Kill Voidwalkers
		.get 40 Void Ridge Soul Shard|q 10294/1
	step //87
		'Go southwest to Spinebreaker Ridge|goto Hellfire Peninsula,61.4,81.4,1|c
	step //88
		goto 61.9,81.5
		.talk Ogath the Mad##19683
		..turnin Void Ridge##10294
		..accept From the Abyss##10295
	step //89
		goto 71.3,67.4|n
		.' The path over to 'Void Ridge' start here|goto Hellfire Peninsula,71.3,67.4,0.5|noway|c
	step //90
		goto 81.1,78.9
		.' Stand next to the 2 big pink crystals
		.' Click the Warp Rift Generator in  your bags|use Warp Rift Generator##29226
		.' Kill Void Baron Galaxis
		.get Galaxis Soul Shard|q 10295/1
	step //91
		'Hearth to Thrallmar|goto Hellfire Peninsula,56.7,37.5,5|use hearthstone##6948|noway|c
	step //92
		goto 52.3,36.5
		.talk Apothecary Antonivich##16588
		..turnin Apothecary Antonivich##10835
		..accept A Burden of Souls##10864
	step //93
		goto 51.4,30.6
		.talk Foreman Razelcraz##16915
		..accept Outland Sucks!##10236
	step //94
		goto 48.9,35.4
		.' Click the Shredder Parts boxes
		.get 6 Shredder Spare Parts|q 10236/1
		info They look like wooden crates around this area.
	step //95
		goto 45.9,39.8
		.kill Shattered Hand Orcs|n
		.' Reap 20 Shattered Hand Souls|goal 20 Shattered Hand Souls Reaped|q 10864/1
	step //96
		goto 51.4,30.6
		.talk Foreman Razelcraz##16915
		..turnin Outland Sucks!##10236
		..accept How to Serve Goblins##10238
	step //97
		goto 52.3,36.5
		.talk Apothecary Antonivich##16588
		..turnin A Burden of Souls##10864
		..accept The Demoniac Scryer##10838
	step //98
		goto 45.1,41
		.' Click Manni's Cage
		.' Save Manni|goal Manni Saved|q 10238/1
	step //99
		goto 46.5,45.2
		.' Click Moh's Cage
		.' Save Moh|goal Moh Saved|q 10238/2
	step //100
		goto 47.5,46.6
		.' Click Jakk's Cage
		.' Save Jakk|goal Jakk Saved|q 10238/3
	step //101
		goto 45.5,47.2
		.' Use your Demoniac Scryer in your bags at this spot|use Demoniac Scryer##31606
		.' Defend the Demoniac Scryer until a bunch of purple things start swirling around it
		.talk Demoniac Scryer##22258
		.get Demoniac Scryer Reading|q 10838/1
	step //102
		'Hearth to Thrallmar|goto Hellfire Peninsula,54.7,38.3,5|use hearthstone##6948|noway|c
	step //103
		goto 52.3,36.5
		.talk Apothecary Antonivich##16588
		..turnin The Demoniac Scryer##10838
		..accept Report to Nazgrel##10875
	step //104
		goto 55,36
		.talk Nazgrel##3230
		..turnin Report to Nazgrel##10875
	step //105
		goto 51.4,30.6
		.talk Foreman Razelcraz##16915
		..turnin How to Serve Goblins##10238
		..accept Shizz Work##10629
	step //106
		goto 51.4,30.6
		'Use the Felhound Whistle while standing next to Forman Razelcraz|use Felhound Whistle##30803
		info Standing near the entrance to the mine, next to a bunch of fel guard hounds
	step //107
		goto 49.9,29.3
		.' Kill Deranged Helboars
		.' The Fel Guard Hound will eat the corpses and poop
		.' Click the Felhound Poo
		.get Shredder Keys|q 10629/1
	step //108
		goto 51.4,30.6
		.talk Foreman Razelcraz##16915
		..turnin Shizz Work##10629
		..accept Beneath Thrallmar##10630
	step //109
		'Go to inside the mine to 54.4,31.4|goto 54.4,31.4
		.kill 1 Urga'zz|q 10630/1
		info All the way in the bottom of the mine.
	step //110
		'Leave the mine|goto Hellfire Peninsula,51.6,31.7,0.3|noway|c
	step //111
		goto 51.4,30.6
		.talk Foreman Razelcraz##16915
		..turnin Beneath Thrallmar##10630
	step //112
		goto 61.1,52.3
		.' Click the Flaming Torch in your bags near the huge tank|use Flaming Torch##27479
		.' Burn the Eastern Cannon|goal Eastern Cannon Burned|q 10087/1
	step //113
		goto 55,54
		.' Click the Flaming Torch in your bags near the huge tank|use Flaming Torch##27479
		.' Burn the Western Cannon|goal Western Cannon Burned|q 10087/2
	step //114
		goto 61.9,81.5
		.talk Ogath the Mad##19683
		..turnin From the Abyss##10295
	step //115
		'Fly to Thrallmar|goto Hellfire Peninsula,54.7,38.3,5|noway|c
	step //116
		goto 55.2,38.8
		.talk Megzeg Nukklebust##21283
		..turnin Burn It Up... For the Horde!##10087
	step //117
		goto 33.6,43.5
		.' Click the Fel Orc Corpse
		..turnin The Assassin##9400
		..accept A Strange Weapon##9401
		info It's a corpse laying halfway up the hill.
	step //118
		goto 26.4,60.3
		.talk Magistrix Carinda##16793
		..accept Arelion's Journal##9374
	step //119
		goto 26.8,59.7
		.talk Apothecary Azethen##16794
		..accept Source of the Corruption##9387
	step //120
		goto 27,59.5
		.talk Ryathen the Somber##16791
		..accept In Need of Felblood##9366
	step //121
		goto 27.1,59.8
		.talk Arcanist Calesthris Dawnstar##16792
		..accept Magic of the Arakkoa##9396
	step //122
		goto 27.7,60.3
		.talk Falconer Drenna Riverwind##16790
		..accept Trueflight Arrows##9381
		..accept Birds of a Feather##9397
		..accept Helping the Cenarion Post##10442
	step //123
		goto 27.8,60
		.talk Innalia##18942
		..fpath Falcon Watch
	step //124
		goto 28.5,60.2
		'Go inside the building next to the Flight Path
		.' Click the Orb of Translocation to go to the top of the tower
	step //125
		goto 28.5,60.2
		.talk Ranger Captain Venn'ren##16789
		..turnin Falcon Watch##9498|only !BloodElf
		..turnin Falcon Watch##9499|only BloodElf
		..accept The Great Fissure##9340
		..accept Report to Zurai##10103
	step //126
		'Click the Orb of Translocation to go to the bottom of the tower
	step //127
		ding 62
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Outland (62-64)",[[
	author support@zygorguides.com
	next Zygor's Horde Leveling Guides\\Outland (64-66)
	startlevel 62
	step //1
		goto Hellfire Peninsula,30.2,54
		.' Kill Bonestripper Vultures
		.get 8 Bonestripper Tail Feather|q 9381/1
		.' Another spot that you can find Bonestripper Vultures is at 23.8,47.3
	step //2
		goto 40.1,37.2
		.' Click Arelion's Knapsack
		..'Get Arelion's Knapsack
		..'Click Arelion's Knapsack in your bags|use Arelion's Knapsack##31955
		..'Get Arelion's Journal
		goal Arelion's Journal|q 9374/1
		info It's a brown bag hanging on the tree vine thing.
	step //3
		goto 39.4,36.1
		.kill 10 Terrorfiend|q 10389/1
		.' Kill Terrorfiends
		.get 6 Felblood Sample|q 9366/1
	step //4
		goto 35.5,57.4
		.kill 8 Stonescythe Whelp|q 9340/1
		.kill 3 Stonescythe Alpha|q 9340/2
	step //5
		goto 26.4,60.3
		.talk Magistrix Carinda##16793
		..turnin Arelion's Journal##9374
		..accept Arelion's Secret##10286
	step //6
		goto 27,59.5
		.talk Ryathen the Somber##16791
		..turnin In Need of Felblood##9366
		..accept The Cleansing Must Be Stopped##9370
	step //7
		goto 27.7,60.3
		.talk Falconer Drenna Riverwind##16790
		..turnin Trueflight Arrows##9381
	step //8
		goto 28.5,60.2
		'Go inside the building next to the flight path
		.' Click the Orb of Translocation to go to the top of the tower
		info Click the Orb of Translocation at the bottom of the tower to get to the top of the tower
	step //9
		goto 28.5,60.2
		.talk Ranger Captain Venn'ren##16789
		..turnin The Great Fissure##9340
		..accept Marking the Path##9391
		info2 Click the Orb of Translocation at the bottom of the tower to get to the top of the tower
	step //10
		'Click the Orb of Translocation to go to the bottom of the tower
	step //11
		goto 39,40.3
		.' Stand on the big stone block
		.' Click the Signaling Gem in your bags|use Signaling Gem##23358
		.' They come walking from the west
		.kill 1 Draenei Anchorite|q 9370/1
		info Stand on the big stone block and click the Signaling Gem in your bags.
	step //12
		goto 18.1,49.9
		.' He walks along the road from Falcon Watch to Zangarmarsh
		.talk Magister Aledis##20159
		..'Fight him until he's almost dead
		..turnin Arelion's Secret##10286
		..accept The Mistress Revealed##10287
		info2 You may need to search for him
	step //13
		goto 15.7,52
		.talk Thiah Redmane##16991
		..turnin Missing Missive##9373
		..turnin Helping the Cenarion Post##10442
		..accept Demonic Contamination##9372
		.talk Mahuram Stouthoof##16888
		..accept Keep Thornfang Hill Clear!##10159
		.talk Amythiel Mistwalker##16885
		..accept The Cenarion Expedition##9912
	step //14
		goto 24.9,54.3
		.' Kill Hulking Helboars
		.get 6 Helboar Blood Sample|q 9372/1
	step //15
		goto 26.4,60.3
		.talk Magistrix Carinda##16793
		..turnin The Mistress Revealed##10287
		..accept Arelion's Mistress##9472
	step //16
		goto 27,59.5
		.talk Ryathen the Somber##16791
		..turnin The Cleansing Must Be Stopped##9370
	step //17
		goto 30,60.5
		.' Click the Western Beacon
		.' Light the Western Beacon|goal Western Beacon|q 9391/1
		info It's a big bowl surrounded by 4 stones. Click the Western Beacon
		info2 Light the Western Beacon
	step //18
		goto 34,60
		.' Click the Central Beacon
		.' Light the Central Beacon|goal Central Beacon|q 9391/2
		info It's a big bowl surrounded by 4 stones. Click the Central Beacon
		info2 Light the Central Beacon
	step //19
		goto 36.1,65.4
		.' Click the Southern Beacon
		.' Light the Southern Beacon|goal Southern Beacon|q 9391/3
		info It's a big bowl surrounded by 4 stones. Click the Southern Beacon
		info2 Light the Southern Beacon
	step //20
		goto 28.5,60.2
		.' Go inside the building next to the flight path
		.' Click the Orb of Translocation to go to the top of the tower
		.talk Ranger Captain Venn'ren##16789
		..turnin Marking the Path##9391
		info2 Click the Orb of Translocation at the bottom of the tower to get to the top of the tower
	step //21
		'Click the Orb of Translocation to go to the bottom of the tower
	step //22
		goto 15.7,52
		.talk Thiah Redmane##16991
		..turnin Demonic Contamination##9372
		..accept Testing the Antidote##10255
	step //23
		goto 25,54
		.' Use the Cenarion Antidote on a Hulking Helboar|use Cenarion Antidote##23337
		.' Kill Dreadtusk
		.' Administer the Antidote|goal Administer Antidote|q 10255/1
	step //24
		goto 15.7,52
		.talk Thiah Redmane##16991
		..turnin Testing the Antidote##10255
	step //25
		goto 12.3,49.9
		.kill 8 Thornfang Ravager|q 10159/1
		.kill 8 Thornfang Venomspitter|q 10159/2
		info Kill 8 Thornfang Ravagers and 8 Thornfang Venomspitters around this area
	step //26
		'Go west to Zangarmash|goto Zangarmarsh
	step //27
		goto Zangarmarsh,78.5,62.9
		.talk Innkeeper Coryth Stoktron##18907
		..buy 1 Cenarion Spirits|q 9483/1
	step //28
		'Go east to Hellfire Peninsula|goto Hellfire Peninsula
	step //29
		goto Hellfire Peninsula,15.7,52
		.talk Mahuram Stouthoof##16888
		..turnin Keep Thornfang Hill Clear!##10159
	step //30
		goto 15.1,55.7
		.' Kill Illidari Taskmasters
		.get 5 Demonic Essence|q 9387/1
	step //31
		goto 15.6,58.8
		.talk Akoru the Firecaller##20678
		..accept Naladu##10403
		info2 Talk to him to free him
	step //32
		goto 16.3,65.1
		.talk Naladu##19361
		..turnin Naladu##10403
		..accept A Traitor Among Us##10367
	step //33
		goto 14.3,63.5
		.' Click the metal coffer in the big red hut
		.get Sha'naar Key|q 10367/1
		info In the back of the big red hut, on the floor
	step //34
		goto 16.3,65.1
		.talk Naladu##19361
		..turnin A Traitor Among Us##10367
		..accept The Dreghood Elders##10368
	step //35
		goto 15.6,58.8
		.talk Akoru the Firecaller##20678
		.' Free Akoru the Firecaller|goal Akoru Freed|q 10368/2
	step //36
		goto 13,58.4
		.talk Aylaan the Waterwaker##20679
		.' Free Aylaan the Waterwaker|goal Aylaan Freed|q 10368/3
	step //37
		goto 13.1,61
		.talk Morod the Windstirrer##20677
		.' Free Morod the Windstirrer|goal Morod Freed|q 10368/1
	step //38
		goto 16.3,65.1
		.talk Naladu##19361
		..turnin The Dreghood Elders##10368
		..accept Arzeth's Demise##10369
	step //39
		goto 14.4,62.3
		.' Wait until Arzeth the Merciless is up on top of the stairs by himself
		.' Use the Staff of the Dreghood Elders on Arzeth the Merciless|use Staff of the Dreghood Elders##29513
		.kill 1 Arzeth the Powerless|q 10369/1
		info Wait until he's up top of the steps to fight him
	step //40
		goto 16.3,65.1
		.talk Naladu##19361
		..turnin Arzeth's Demise##10369
	step //41
		goto 26.8,59.7
		.talk Apothecary Azethen##16794
		..turnin Source of the Corruption##9387
	step //42
		goto 27.1,62.1
		.talk Viera Sunwhisper##17226
		..turnin Life's Finer Pleasures##9483 |n
		.' Follow Viera Sunwhisper
		.' When she stops, use Carinda's Scroll of Retribution on her|goal Carinda's Scroll of Retribution used|q 9472/1|use Carinda's Scroll of Retribution##23693
	step //43
		goto 26.4,60.3
		.talk Magistrix Carinda##16793
		..turnin Arelion's Mistress##9472
	step //44
		goto 25.6,70.3
		.kill Haal'eshi arakkoas|n
		.get 4 Haal'eshi Scroll|q 9396/1
		info You can find them all around this area, and in the canyon also
	step //45
		goto 25.4,71.6
		.' Click the Kaliri nests|tip They are small, round grey nests with 3 glowing pinkish eggs in them.
		.' When a female Kaliri hatchling spawns, use your Empty Birdcage on it|use Empty Birdcage##23485
		.' Cage the Female Kaliri Hatchling|goal Caged Female Kaliri Hatchling|q 9397/1
	step //46
		goto 26.2,77.1|n
		.' The path up to Avruu starts here|goto Hellfire Peninsula,26.1,77.1,0.3|noway|c
	step //47
		goto 25.7,75.1
		.' Kill Avruu
		.get Avruu's Orb|n
		.' Click Avruu's Orb in your bags|use Avruu's Orb##23580
		..accept Avruu's Orb##9418
		info Up the path, and over the bride, to the left.
	step //48
		goto 29,81.5
		.' Click the Haal'eshi Altar|tip It looks like an orb sitting in a claw thing, right in front of a big purple hut.
		.' Fight Aeranas until he's almost dead
		.talk Aeranas##17085
		..turnin Avruu's Orb##9418
	step //49
		goto 24.6,76
		.talk Wounded Blood Elf Pilgrim##16993
		..accept The Road to Falcon Watch##9375
		.goal Escort Wounded Blood Elf Pilgrim to Falcon Watch|q 9375/1
	step //50
		goto 27.2,61.9
		.talk Taleris Dawngazer##17015
		..turnin The Road to Falcon Watch##9375
		..accept A Pilgrim's Plight##9376
	step //51
		goto 27.1,59.8
		.talk Arcanist Calesthris Dawnstar##16792
		..turnin Magic of the Arakkoa##9396
	step //52
		goto 27.7,60.3
		.talk Falconer Drenna Riverwind##16790
		..turnin Birds of a Feather##9397
	step //53
		'Fly to Thrallmar|goto Hellfire Peninsula,54.7,38.3,5|noway
	step //54
		goto 55.1,36
		.talk Magister Bloodhawk##21175
		..turnin The Agony and the Darkness##10389
	step //55
		goto 55,36
		.talk Nazgrel##3230
		..turnin A Strange Weapon##9401
		..accept The Warchief's Mandate##9405
	step //56
		goto 54.2,37.9
		.talk Far Seer Regulkut##16574
		..turnin The Warchief's Mandate##9405
		..accept A Spirit Guide##9410
	step //57
		goto 33.6,43.5
		.' Use your Ancestral Spirit Wolf Totem next to the Fel Orc Corpse|use Ancestral Spirit Wolf Totem##23669
		info It's a corpse laying halfway up the hill.
	step //58
		goto 32,27.8
		.talk Gorkan Bloodfist##16845
		..turnin A Spirit Guide##9410
		..accept The Mag'har##9406
	step //59
		'Hearth to Thrallmar|goto Hellfire Peninsula,54.7,38.3,5|use hearthstone##6948|noway|c
	step //60
		goto 55,36
		.talk Nazgrel##3230
		..turnin The Mag'har##9406
		..accept Messenger to Thrall##9438
	step //61
		'Fly to Shattrath City|goto Shattrath City|noway|c
	step //62
		goto 52.2,52.8|n
		'Go through the portal to Orgrimmar|goto Orgrimmar|c
	step //63
		goto Orgrimmar,31.8,37.8
		.talk Thrall##4949
		..turnin Messenger to Thrall##9438
		..accept Envoy to the Mag'har##9441
	step //64
		goto 38.1,86.7|n
		'Go through the portal to Blasted Lands|goto Blasted Lands|c
	step //65
		'Go south into The Dark Portal|goto Hellfire Peninsula
	step //66
		'Fly to Falcon Watch|goto Hellfire Peninsula,27.2,61.0,3|noway
	step //67
		goto 30.3,35.3|n
		.' The path up to Gorkan Bloodfist start here|goto Hellfire Peninsula,30.3,35.3,0.5|noway|c
	step //68
		goto 32,27.8
		.talk Gorkan Bloodfist##16845
		..turnin Envoy to the Mag'har##9441
	step //69
		goto 22.1,68.3
		.' Click the Torn Pilgrim's Pack
		.get Torn Pilgrim's Pack|q 9376/1
		info It's a small tan sack laying on a purple rug.
	step //70
		goto 27.2,61.9
		.talk Taleris Dawngazer##17015
		..turnin A Pilgrim's Plight##9376
	step //71
		'Go northwest to Zangarmarsh|goto Zangarmarsh
	step //72
		goto Zangarmarsh,80.4,64.2
		.talk Lauranna Thar'well##17909
		..accept Plants of Zangarmarsh##9802
		.talk Ikeyen##17956
		..accept The Umbrafen Tribe##9747
	step //73
		goto 79.1,65.3
		.talk Warden Hamoot##17858
		..accept A Warm Welcome##9728
	step //74
		goto 78.5,63.1
		.talk Lethyn Moonfire##17834
		..accept The Dying Balance##9895
	step //75
		goto 78.4,62
		.talk Ysiel Windsinger##17841
		..turnin The Cenarion Expedition##9912
		..accept Disturbance at Umbrafen Lake##9716
	step //76
		goto 80.1,73.3
		.' Kill all mobs in this area
		.get 10 Unidentified Plant Parts|q 9802/1
	step //77
		goto 81,72.2
		.kill 1 Boglash|q 9895/1|tip I found Boglash here. He is a tall alien looking thing with really long legs. Kill him, he's really easy, despite his elite status. He walks around in the water, so some searching may be necessary.
	step //78
		goto 82.6,72.3
		.' Kill Boglash and Fen Striders|tip It's easier if you just run around in the water all around the east part of Zangarmarsh
		.collect 6 Fertile Spores##24449|q 9806 |future
	step //79
		goto 80.4,64.2
		.talk Lauranna Thar'well##17909
		..turnin Plants of Zangarmarsh##9802
	step //80
		goto 78.5,63.1
		.talk Lethyn Moonfire##17834
		..turnin The Dying Balance##9895
	step //81
		goto 84.8,84.4
		.kill 6 Umbrafen Oracle|q 9747/2
		.kill 8 Umbrafen Seer|q 9747/3
		.kill 6 Umbrafen Witchdoctor|q 9747/4
	step //82
		goto 85.3,90.9
		.kill 1 Kataru|q 9747/1|tip In the big building, all the way at the top.
	step //83
		ding 63
	step //84
		goto 83.4,85.5
		.talk Kayra Longmane##17969
		..accept Escape from Umbrafen##9752
		.' Escort Kayra Longmane to safety|goal Escort Kayra Longmane to safety|q 9752/1
	step //85
		goto 80.4,64.2
		.talk Ikeyen##17956
		..turnin The Umbrafen Tribe##9747
		..accept A Damp, Dark Place##9788
		.talk Lauranna Thar'well##17909
		..accept Saving the Sporeloks##10096
	step //86
		goto 80.4,64.7
		.talk Windcaller Blackhoof##18070
		..accept Safeguarding the Watchers##9894
	step //87
		goto 78.4,62
		.talk Ysiel Windsinger##17841
		..turnin Escape from Umbrafen##9752
	step //88
		goto 75.7,90.2
		.kill 10 Marsh Lurker|q 10096/2
		.kill 10 Marsh Dredger|q 10096/1
	step //89
		'Go southwest inside the cave to 70.5,97.9|goto 70.5,97.9
		.get Ikeyen's Belongings|q 9788/1
		info A little tan metal chest sitting on a beg flat rock
	step //90
		'Go northeast inside the cave to72.5,94|goto 72.5,94
		.kill 1 Lord Klaq|q 9894/1
		info On the bottom level of the cave, in the small round room all the way in the back
	step //91
		goto 70.9,82.1
		.' Stand here to Investigate Umbrafen Lake|goal Umbrafen Lake Investigated|q 9716/1
		.' Kill nagas
		.get 30 Naga Claws|q 9728/1
	step //92
		goto 80.4,64.7
		.talk Windcaller Blackhoof##18070
		..turnin Safeguarding the Watchers##9894
	step //93
		goto 80.4,64.2
		.talk Ikeyen##17956
		..turnin A Damp, Dark Place##9788
		.talk Lauranna Thar'well##17909
		..turnin Saving the Sporeloks##10096
		..'Turn in any stacks of 10 Unidentified Plant Parts you have
		..'If you found an Uncatalogued Species, turn that in also
	step //94
		goto 79.1,65.3
		.talk Warden Hamoot##17858
		..turnin A Warm Welcome##9728
	step //95
		goto 80.4,64.7
		.talk Windcaller Blackhoof##18070
		..accept Blessings of the Ancients##9785
	step //96
		goto 78.5,63.1
		.talk Lethyn Moonfire##17834
		..accept Watcher Leesa'oh##9697
		..accept What's Wrong at Cenarion Thicket?##9957
	step //97
		goto 78.4,62
		.talk Ysiel Windsinger##17841
		..turnin Disturbance at Umbrafen Lake##9716
		..accept As the Crow Flies##9718
		.' Click the Stormcrow Amulet in your bags|use Stormcrow Amulet##25465
		.' Watch yourself fly as a crow
		..turnin As the Crow Flies##9718
		..accept Balance Must Be Preserved##9720
	step //98
		goto 78.1,63.8
		.talk Keleth##17901
		..'Get the Mark of War|goal Mark of War|q 9785/2
	step //99
		goto 81.1,63.9
		.talk Ashyen##17900
		..'Get the Mark of Lore|goal Mark of Lore|q 9785/1
		info2 Talk to Ashyen and ask for his blessing
	step //100
		goto 80.4,64.7
		.talk Windcaller Blackhoof##18070
		..turnin Blessings of the Ancients##9785
	step //101
		goto 70.6,80.3
		.' Use your Ironvine Seeds on the Umbrafen Lake Pump Controls|use Ironvine Seeds##24355
		.' Disable the Umbrafen Lake Pump Controls|goal Umbrafen Lake Controls Disabled|q 9720/1
		info The pump controls look like a little box with some levers on it
	step //102
		goto 63.1,64.1
		.' Use your Ironvine Seeds on the Lagoon Pump Controls|use Ironvine Seeds##24355
		.' Disable the Lagoon Pump Controls|goal Lagoon Controls Disabled|q 9720/4
		tip The pump controls look like a little box with some levers on it
	step //103
		goto 84.8,55.1
		.talk Gur'zil##20762
		..fpath Swamprat Post
	step //104
		goto 85.3,54.8
		.talk Zurai##18011
		..turnin Report to Zurai##10103
		..accept Thick Hydra Scales##9774
		..accept News from Zangarmarsh##9796
		..accept Report to Shadow Hunter Denjai##9775
	step //105
		goto 85,54
		.talk Reavij##18012
		..accept Menacing Marshfangs##9770
	step //106
		goto 84.4,54.3
		.talk Magasha##18016
		..accept There's No Explanation for Fashion##9769
		..accept No More Mushrooms!##9773
	step //107
		goto 74.2,60.7
		.' Kill Mire Hydras
		.get 12 Thick Hydra Scale|q 9774/1
		.' Kill Umbrafen Eels
		.get 8 Eel Filet|q 9773/1
	step //108
		goto 79.7,70.1
		.' Kill Umbraglow Stingers
		.get 8 Diaphanous Wing|q 9769/1
		info Kill Umbraglow Stingers in this area
	step //109
		goto 84.4,54.3
		.talk Magasha##18016
		..turnin There's No Explanation for Fashion##9769
		..turnin No More Mushrooms!##9773
		..accept A Job Undone##9899
	step //110
		goto 85.3,54.8
		.talk Zurai##18011
		..turnin Thick Hydra Scales##9774
		..accept Searching for Scout Jyoba##9771
	step //111
		goto 62,40.8
		.' Use your Ironvine Seeds on the Serpent Lake Controls|use Ironvine Seeds##24355
		.' Disable the Serpent Lake Controls|goal Serpent Lake Controls Disabled|q 9720/3
		.' Kill Steam Pump Overseers, Bloodscale Overseers, and Bloodscale Wavecallers
		..'Get a Drain Schematics
		.' Click the Drain Schematics in your bags|use Drain Schematics##24330
		..accept Drain Schematics##9731
		info The pump controls look like a little box with some levers on it
		info2 Use the Ironvine Seeds when standing in this spot
	step //112
		goto 73.2,41.5
		.kill 10 Marshfang Ripper|q 9770/1
	step //113
		goto 77.2,45.9
		.kill 1 Sporewing|q 9899/1|tip He looks like a Sporebat.
	step //114
		goto 78.3,45.2
		.' Kill Withered mobs
		.collect 6 Bog Lord Tendril##24291|q 9743 |future
		.' Kill Withered Giants
		.get a Withered Basidium|n
		.' Click the Withered Basidium|use Withered Basidium##24484
		..accept Withered Basidium##9828
		info The Bog Lord Tendrils and the Withered Basidium have a very low drop rate so it may take a while.
	step //115
		goto 80.8,36.3
		.talk Scout Jyoba##18035
		..turnin Searching for Scout Jyoba##9771
		..accept Jyoba's Report##9772
	step //116
		goto 81.6,35
		.' Kill Withered Giants
		.get Scout Jyoba's Report|q 9772/1
		info Kill Withered Giants around this area
	step //117
		goto 84.4,54.3
		.talk Magasha##18016
		..turnin A Job Undone##9899
	step //118
		goto 85,54
		.talk Reavij##18012
		..turnin Menacing Marshfangs##9770
		..accept Nothin' Says Lovin' Like a Big Stinger##9898
		..turnin Withered Basidium##9828
	step //119
		goto 85.3,54.8
		.talk Zurai##18011
		..turnin Jyoba's Report##9772
	step //120
		goto 50.4,40.8
		.' Swim straight down at this spot
		.' Locate the drain in Serpent Lake|goal Drain Located|q 9731/1
		info Locate the drain in Serpent Lake here
		info2 Swim straight down into the big bubbling pipe opening below until you discover the drain
	step //121
		goto 49.5,59.2
		.' Kill Blacksting
		.get Blacksting's Stinger|q 9898/1
		info He's a red, yellow and black flying wasp-looking bug.
	step //122
		goto 32.8,59.1
		.' Kill "Count" Ungula|tip He's a huge Marshfang.
		.' Get "Count" Ungula's Mandible
		.' Click "Count" Ungula's Mandible|use "Count" Ungula's Mandible##25459
		..accept The Count of the Marshes##9911
	step //123
		goto 32.9,48.9
		.talk Witch Doctor Tor'gash##18014
		..accept Burstcap Mushrooms, Mon!##9814
	step //124
		goto 32.2,49.6
		.talk Zurjaya##18018
		..accept Angling to Beat the Competition##9845
	step //125
		goto 32,49.3
		.' Click the Wanted Poster
		..accept WANTED: Boss Grog'ak##9820
		..accept Wanted: Chieftain Mummaki##10117
		info Next to some boxes
	step //126
		goto 31.6,49.2
		.talk Gambarinka##18015
		..accept Stinging the Stingers##9841
	step //127
		home Zabra'jin
	step //128
		goto 30.7,50.9
		.talk Shadow Hunter Denjai##18013
		..turnin Report to Shadow Hunter Denjai##9775
	step //129
		goto 32.4,52
		.talk Seer Janidi##18017
		..accept Spirits of the Feralfen##9846
	step //130
		goto 33.1,51.1
		.talk Du'ga##18791
		..fpath Zabra'jin
	step //131
		goto 46,60.3
		.' Kill Feralfen mobs
		.get 10 Feralfen Protection Totem|q 9846/1
		info Kill Feralfen mobs around this area
	step //132
		goto 48.1,38.4
		.kill 10 Fenclaw Thrasher|q 9845/1
		info Kill 10 Fenclaw Thrashers around this area
	step //133
		goto 32.2,49.6
		.talk Zurjaya##18018
		..turnin Angling to Beat the Competition##9845
		..accept The Biggest of Them All##9903
		..accept Pursuing Terrorclaw##9904
	step //134
		goto 32.4,52
		.talk Seer Janidi##18017
		..turnin Spirits of the Feralfen##9846
		..accept A Spirit Ally?##9847
	step //135
		goto 42.2,41.4
		.kill 1 Mragesh|q 9903/1
		info He is a big brown hydra underwater
	step //136
		goto 44.4,66
		.' Use your Feralfen Totem at the base of the big stairs|use Feralfen Totem##24498
		.' Kill the Feralfen Serpent Spirit that spawns|goal Summon Serpent Spirit|q 9847/1
	step //137
		'Hearth to Zabra'jin|goto Zangarmarsh,31.7,49.8,4|use hearthstone##6948|noway|c
	step //138
		goto 32.2,49.6
		.talk Zurjaya##18018
		..turnin The Biggest of Them All##9903
	step //139
		goto 32.4,52
		.talk Seer Janidi##18017
		..turnin A Spirit Ally?##9847
	step //140
		goto 28.9,52.6
		.' Click Burstcap Mushrooms
		.get 6 Burstcap Mushroom|q 9814/1
		info They look like tall dark mushrooms with a bump on top of them. Click Burstcap Mushrooms around this area
		info2 Get 6 Burstcap Mushrooms around this area
	step //141
		goto 32.9,48.9
		.talk Witch Doctor Tor'gash##18014
		..turnin Burstcap Mushrooms, Mon!##9814
		..accept Have You Ever Seen One of These?##9816
	step //142
		goto 23.3,66.2
		.talk Watcher Leesa'oh##17831
		..turnin Watcher Leesa'oh##9697
		..accept Observing the Sporelings##9701
		..turnin The Count of the Marshes##9911
	step //143
		goto 19,64
		.talk Fahssn##17923
		..accept The Sporelings' Plight##9739
		..accept Natural Enemies##9743
		..turnin Natural Enemies##9743
	step //144
		goto 14.5,61.6
		.' Click Mature Spore Sacs
		.collect 10 Mature Spore Sac##24290|q 9739|tip They look like pink balls tied to a little string bobbing on the ground.
		.collect 40 Mature Spore Sac##24290|q 9919|tip You need 30 extra for reputation.  You only need 40 total Mature Spore Sacs, not 50. |future
	step //145
		goto 13.6,59.8
		.goal Investigate the Spawning Glen|q 9701/1
		info Go to this spot to Investigate the Spawning Glen
	step //146
		goto 19.1,63.9
		.talk Fahssn##17923
		..turnin The Sporelings' Plight##9739
		..'Turn in all the Tendrils and Mature Spore Sacs you have
		..accept Sporeggar##9919
	step //147
		goto 23.3,66.2
		.talk Watcher Leesa'oh##17831
		..turnin Observing the Sporelings##9701
		..accept A Question of Gluttony##9702
	step //148
		ding 64
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Outland (64-66)",[[
	author support@zygorguides.com
	next Zygor's Horde Leveling Guides\\Outland (66-68)
	startlevel 64
	step //1
		goto Zangarmarsh,27,63.3
		.' Click Discarded Nutriments
		.get 10 Discarded Nutriment|q 9702/1
		info2 They look like green glowing mushroom stalks on the ground
	step //2
		goto 23.3,66.2
		.talk Watcher Leesa'oh##17831
		..turnin A Question of Gluttony##9702
		..accept Familiar Fungi##9708
	step //3
		goto 19.7,52.1
		.talk Msshi'fn##17924
		..turnin Sporeggar##9919
	step //4
		goto 19.5,50
		.talk Gzhun'tt##17856
		..accept Now That We're Friends...##9726
	step //5
		goto 19.2,49.4
		.talk Gshaff##17925
		..accept Fertile Spores##9806
		..turnin Fertile Spores##9806
	step //6
		goto 22.4,46.1
		.kill Terrorclaw|q 9904/1
		info On a little island. Kill the little guys first.
	step //7
		goto 16.3,39.6
		.kill 8 Marshlight Bleeder|q 9841/1
		.' More can be found around 26.3,33.7
	step //8
		goto 25.4,42.9
		.' Use your ironvine Seeds on the Marshlight Lake Pump Controls|use Ironvine Seeds##24355
		.' Disable the Marshlight Lake Pump Controls|goal Marshlight Lake Controls Disabled|q 9720/2
		info The pump controls look like a little box with some levers on it
		info2 Use the Ironvine Seeds when standing in this spot
	step //9
		goto 26.8,43
		.kill 12 Bloodscale Slavedriver|q 9726/1
		.kill 6 Bloodscale Enchantress|q 9726/2
	step //10
		goto 34.5,34.8
		.' Kill Boss Grog'ak
		.get Boss Grog'ak's Head|q 9820/1
		info Standing on the side of the road.
	step //11
		goto 29.6,28.3
		.' Kill ogres
		.get 15 Mushroom Sample|q 9708/1
	step //12
		goto 32.2,49.6
		.talk Zurjaya##18018
		..turnin Pursuing Terrorclaw##9904
	step //13
		goto 31.6,49.2
		.talk Gambarinka##18015
		..turnin Stinging the Stingers##9841
		..accept The Sharpest Blades##9842
	step //14
		goto 30.7,50.9
		.talk Shadow Hunter Denjai##18013
		..turnin WANTED: Boss Grog'ak##9820
		..accept Impending Attack##9822
	step //15
		goto 35.9,58.6
		.kill Marshfang Slicers|n
		.get 10 Marshfang Slicer Blade|q 9842/1
	step //16
		goto 31.6,49.2
		.talk Gambarinka##18015
		..turnin The Sharpest Blades##9842
	step //17
		goto 23.3,66.2
		.talk Watcher Leesa'oh##17831
		..turnin Familiar Fungi##9708
		..accept Stealing Back the Mushrooms##9709
	step //18
		goto 19.5,50
		.talk Gzhun'tt##17856
		..turnin Now That We're Friends...##9726
	step //19
		goto 19.9,27.1
		.' Click the Ango'rosh Attack Plans
		.get Ango'rosh Attack Plans|q 9822/1
		info It is a tan scroll laying flat on the ground at the top of the tower.
	step //20
		goto 30.7,50.9
		.talk Shadow Hunter Denjai##18013
		..turnin Impending Attack##9822
		..accept Us or Them##9823
		..accept Message to the Daggerfen##10118
	step //21
		goto 23.8,26.8
		.' Go to the top of the tower
		.' Kill Chieftain Mummaki
		.get Chieftain Mummaki's Totem|q 10117/1
		info At the top of the big tower, straight ahead as you reach the top of the stairs
	step //22
		goto 23.8,24.5
		.kill 3 Daggerfen Assassin|q 10118/1
		.kill 15 Daggerfen Muckdweller|q 10118/2
	step //23
		goto 26.8,22.6
		.' Click the Murloc Cage in your bags|use Murloc Cage##24470
		.' Release Murlocs at Daggerfen Village|goal Release Murlocs at Daggerfen Village|q 9816/1
		info Clear this area of all mobs before clicking the cage, or else they will all attack you.
		info2 Stand on this big flat gray rock and click your Murloc Cage to release the murlocs.
	step //24
		goto 17.3,10.2
		.kill 10 Ango'rosh Mauler|q 9823/2
		.kill 10 Ango'rosh Souleater|q 9823/3
		.' Kill ogres and click the brown crates
		.get 10 Box of Mushrooms|q 9709/1
		info There are more ogres and boxes of mushrooms across the mushroom bridge.
	step //25
		goto 18.3,7.7
		.kill 1 Overlord Gorefist|q 9823/1
		info Follow the path up the hill. Overlord Gorefist is inside the small house on the left
	step //26
		'Hearth to Zabra'jin|goto Zangarmarsh,31.7,49.8,4|use hearthstone##6948|noway|c
	step //27
		goto 30.7,50.9
		.talk Shadow Hunter Denjai##18013
		..turnin Us or Them##9823
		..turnin Message to the Daggerfen##10118
		..turnin Wanted: Chieftain Mummaki##10117
	step //28
		goto 32.9,48.9
		.talk Witch Doctor Tor'gash##18014
		..turnin Have You Ever Seen One of These?##9816
	step //29
		goto 23.3,66.2
		.talk Watcher Leesa'oh##17831
		..turnin Stealing Back the Mushrooms##9709
		.' Don't follow her when she walks away
	step //30
		goto 33.1,51.1
		.talk Du'ga##18791
		.'Fly to Swamprat Post|goto Zangarmarsh,85.2,54.2,2|noway|c
	step //31
		goto 85,54
		.talk Reavij##18012
		..turnin Nothin' Says Lovin' Like a Big Stinger##9898
	step //32
		goto 78.4,62
		.talk Ysiel Windsinger##17841
		..turnin Balance Must Be Preserved##9720
		..turnin Drain Schematics##9731
		..accept Warning the Cenarion Circle##9724
	step //33
		'Go east to Hellfire Peninsula|goto Hellfire Peninsula|noway|c
	step //34
		goto Hellfire Peninsula,15.7,52
		.talk Amythiel Mistwalker##16885
		..turnin Warning the Cenarion Circle##9724
		..accept Return to the Marsh##9732
	step //35
		'Go northwest to Zangarmarsh|goto Zangarmarsh|noway|c
	step //36
		goto Zangarmarsh,78.4,62
		.talk Ysiel Windsinger##17841
		..turnin Return to the Marsh##9732
	step //37
		'Go southeast to Terokkar Forest|goto Terokkar Forest
	step //38
		'Go south to Shattrath City|goto Shattrath City|noway|c
	step //39
		goto Shattrath City,61.2,12.6
		.talk Haggard War Veteran##19684
		..accept A'dal##10210
	step //40
		goto 54,44.8
		.talk A'dal##18481
		..turnin A'dal##10210
		info2 She is the big glowing floating being int he middle of the room
	step //41
		goto 54.8,44.3
		.talk Khadgar##18166
		..accept City of Light##10211
		.' Follow the pink voidwalker
	step //42
		goto 64,15.5
		'As you follow the pink voidwalker
		.talk Seth##18653
		..accept Rather Be Fishin'##10037
		info2 You see him as you follow the pink Voidwalker for City of Light quest
	step //43
		goto 52.6,21
		'Also while you follow the pink voidwalker:
		.talk Rilak the Redeemed##22292
		..accept The Eyes of Skettis##10847
		.'Finish the City of Light tour|goal City of Light|q 10211/1
		info2 You see them as you follow the pink Voidwalker for City of Light quest
	step //44
		'Follow the pink voidwalker until the tour is over|goal City of Light|q 10211/1
	step //45
		goto 54.8,44.3
		.talk Khadgar##18166
		..turnin City of Light##10211
		..accept Allegiance to the Scryers##10552 |instant
		..accept Voren'thal the Seer##10553
	step //46
		'Ride the elevator up to the Scryer Rise|goto Shattrath City,50.0,62.9,0.3|c
	step //47
		goto 42.8,91.7
		.talk Voren'thal the Seer##18530
		..turnin Voren'thal the Seer##10553
	step //48
		home Shattrath City
	step //49
		'Go outside to Terokkar Forest|goto Terokkar Forest|noway|c
	step //50
		goto Terokkar Forest,38.6,8.5
		.kill Shimmerscale Eels|n
		.get 8 Pristine Shimmerscale Eel|q 10037/1
	step //51
		goto 44.3,26.3
		.talk Earthbinder Tavgren##18446
		..turnin What's Wrong at Cenarion Thicket?##9957
		..accept Strange Energy##9968
		..accept Clues in the Thicket##9971
	step //52
		goto 45,22.5
		.talk Warden Treelos##18424
		..accept It's Watching You!##9951
	step //53
		goto 45.1,21.8
		.' Click the Strange Object
		.' Examine the Strange Object|goal Strange Object examined|q 9971/1
		info Inside the building, looks like a white ball on the floor next to a dead guy
	step //54
		goto 44.3,26.3
		.talk Earthbinder Tavgren##18446
		..turnin Clues in the Thicket##9971
	step //55
		goto 43.4,22.1
		.kill 1 Naphthal'ar|q 9951/1
		info At the top of the big tower
		info2 Kill Naphthal'ar
	step //56
		goto 45,22.5
		.talk Warden Treelos##18424
		..turnin It's Watching You!##9951
	step //57
		goto 44.1,23.8
		.' Kill Vicious Teromoths
		.get 4 Vicious Teromoth Sample|q 9968/2
	step //58
		goto 45.8,29.8
		.' Kill Teromoths
		.get 4 Teromoth Sample|q 9968/1
	step //59
		goto 44.3,26.3
		.talk Earthbinder Tavgren##18446
		..turnin Strange Energy##9968
		..accept By Any Means Necessary##9978
	step //60
		goto 47.1,27
		.talk Empoor##18482
		.' Fight Empoor until he's almost dead
		..turnin By Any Means Necessary##9978
		..accept Wind Trader Lathrai##9979
	step //61
		goto 49.9,16.5|n
		.' The path up to the Eye of Veil Reskk starts here|goto Terokkar Forest,49.9,16.5,0.3|noway|c
	step //62
		goto 50.1,19.4
		.' Click the Eye of Veil Reskk
		.get Eye of Veil Reskk|q 10847/1
		info Looks like a big white orb at the top of the tower across the hanging bridge.
	step //63
		goto 57.9,23.2
		.' Click the Eye of Veil Shienor
		.get Eye of Veil Shienor|q 10847/2
		info Climb the path inside the other tree, run across the bridge, looks like a big white orb on the ground.
	step //64
		'Go to Shatrath City|goto Shattrath City|noway|c
	step //65
		goto Shattrath City,52.6,21
		.talk Rilak the Redeemed##22292
		..turnin The Eyes of Skettis##10847
		..accept Seek Out Kirrik##10849
	step //66
		goto 64,15.5
		.talk Seth##18653
		..turnin Rather Be Fishin'##10037
	step //67
		goto 72.2,30.7
		.talk Wind Trader Lathrai##18484
		..turnin Wind Trader Lathrai##9979
		..accept A Personal Favor##10112
	step //68
		'Go outside to Terokkar Forest|goto Terokkar Forest|noway|c
	step //69
		goto Terokkar Forest,37.4,51.5
		.talk Kirrik the Awakened##22272
		..turnin Seek Out Kirrik##10849
		..accept Veil Skith: Darkstone of Terokk##10839
	step //70
		goto 37.7,51.3
		.talk Ethan##22365
		..accept Missing Friends##10852
	step //71
		goto 37.4,51.2
		.talk Mekeda##22370
		..accept Before Darkness Falls##10878
	step //72
		goto 37.9,51.7
		.talk Lakotae##22420
		..accept The Infested Protectors##10896
	step //73
		ding 65
	step //74
		goto 35.2,48.8
		.' Kill Infested Root-walkers
		.' Kill the Wood Mites that come out of their corpses
		.kill 25 Wood Mite|q 10896/1
		.' You can find more Infested Root-walkers at 39.1,47.0|n
	step //75
		goto 32.2,52.8
		.kill 8 Cabal Skirmisher|q 10878/1
		.kill Cabal orcs|n
		.get Cabal Orders|n
		.' Click the Cabal Orders|use Cabal Orders##31707
		..accept Cabal Orders##10880
	step //76
		goto 37.4,51.2
		.talk Mekeda##22370
		..turnin Cabal Orders##10880
		..accept The Shadow Tomb##10881
	step //77
		goto 37.9,51.7
		.talk Lakotae##22420
		..turnin The Infested Protectors##10896
	step //78
		goto 39.4,55.1
		.kill 4 Cabal Spell-weaver|q 10878/2
		.kill 2 Cabal Initiate|q 10878/3
	step //79
		goto 37.4,51.2
		.talk Mekeda##22370
		..turnin Before Darkness Falls##10878
	step //80
		goto 29.7,51.7
		.' Click the Cabal Chest
		.get Gavel of K'alen|q 10881/2
		info Inside the Shadow Tomb, inside a Cabal Chest in the back left of the room on the ground
	step //81
		goto 32.1,51.2
		.' Click the Cabal Chest
		.get Drape of Arunen|q 10881/1
		info Inside the Shadow Tomb, inside a Cabal Chest in the back left of the room on the ground
	step //82
		goto 31.2,46.7
		.' Click the Cabal Chest
		.get Scroll of Atalor|q 10881/3
		info Inside the Shadow Tomb, inside a Cabal Chest in the back right of the room on the ground
	step //83
		'Go outside to 37.4,51.2|goto 37.4,51.2
		.talk Mekeda##22370
		..turnin The Shadow Tomb##10881
	step //84
		goto 30.8,42.1
		.' Use the Rod of Purification on the Darkstone of Terokk|use Rod of Purification##31610|tip It's a big black floating crystal.
		.' Purify the Darkstone of Terokk|goal Attempt to purify the Darkstone of Terrok|q 10839/1
	step //85
		goto 32.3,41.7
		.kill arakkoas|n
		.get 5 Lathrai's Stolen Goods|q 10112/1
		.get Veil Skith Prison Keys|n
		.' Click the yellow cages around this area
		.' Rescue 12 Children|goal 12 Children Rescued|q 10852/1
	step //86
		goto 37.4,51.5
		.talk Kirrik the Awakened##22272
		..turnin Veil Skith: Darkstone of Terokk##10839
		..accept Veil Rhaze: Unliving Evil##10848
	step //87
		goto 37.7,51.3
		.talk Ethan##22365
		..turnin Missing Friends##10852
	step //88
		goto 30.2,51.1
		.kill 4 Deathtalon Spirit|q 10848/1
		.kill 4 Screeching Spirit|q 10848/2
		.kill 2 Spirit Raven|q 10848/3
	step //89
		goto 37.4,51.5
		.talk Kirrik the Awakened##22272
		..turnin Veil Rhaze: Unliving Evil##10848
		..accept Veil Lithic: Preemptive Strike##10861
	step //90
		goto 24.2,70.5
		.' Open the eggs on the ground
		.' Redeem 3 Hatchlings|goal 3 Hatchlings Redeemed|q 10861/1
		.kill 3 Malevolent Hatchling|q 10861/2
		info Pink glowing brown Eggs on the ground in nests next to the huts around this area.
	step //91
		goto 31,76.1
		.talk Commander Ra'vaj##22446
		..accept An Improper Burial##10913
		.talk Chief Archaeologist Letoll##22458
		..accept Digging Through Bones##10922
		.' Escort the Archaeologists|goal Protect the Explorers|q 10922/1
	step //92
		goto 31,76.1
		.talk Dwarfowitz##22481
		..turnin Digging Through Bones##10922
	step //93
		goto 35,76.5
		.' Use your Sha'tari Torch on corpses|use Sha'tari Torch##31769
		.' Burn 8 Slain Sha'tari Vindicator corpses|goal 8 Slain Sha'tar Vindicator corpse burned|q 10913/1
		.' Burn 8 Slain Auchenai Warrior corpses|goal 8 Slain Auchenai Warrior corpse burned|q 10913/2
		info They are corpses laying all over the ground around this area.
	step //94
		goto 31,76.1
		.talk Commander Ra'vaj##22446
		..turnin An Improper Burial##10913
		..accept A Hero Is Needed##10914
	step //95
		goto 36.7,74.4
		.kill 12 Auchenai Initiate|q 10914/1
		.kill 5 Auchenai Doomsayer|q 10914/2
	step //96
		goto 31,76.1
		.talk Commander Ra'vaj##22446
		..turnin A Hero Is Needed##10914
		..accept The Fallen Exarch##10915
	step //97
		goto 35.9,65.7
		.' Click the Auchenai Coffin
		.' Kill the Reanimated Exarch that appears|goal Contents of the Auchenai Coffin destroyed|q 10915/1
		info Up the steps, click the big stone coffin and defeat the Reanimated Exarch that appears
	step //98
		goto 31,76.1
		.talk Commander Ra'vaj##22446
		..turnin The Fallen Exarch##10915
	step //99
		goto 37.4,51.5
		.talk Kirrik the Awakened##22272
		..turnin Veil Lithic: Preemptive Strike##10861
		..accept Veil Shalas: Signal Fires##10874
	step //100
		goto 37.5,50.8
		.talk High Priest Orglum##22278
		..accept The Tomb of Lights##10840
	step //101
		goto 46.3,56.5
		.kill 10 Ethereal Nethermancer|q 10840/1
		.kill 10 Ethereal Plunderer|q 10840/2
	step //102
		goto 54.9,66.1|n
		.' The path up to Veil Shalas starts here|goto Terokkar Forest,54.9,66.0,0.5|noway|c
	step //103
		goto 57.3,65|n
		.' The path up to the Sapphire Signal Fire starts here|goto Terokkar Forest,57.3,65.0,0.3|noway|c
	step //104
		goto 55.2,67.1
		.' Click the Sapphire Signal Fire
		.' Extinguish the Sapphire Signal Fire|goal Sapphire Fire Extinguished|q 10874/1
		info Across the hanging bridge and down the spiraling stairs.
	step //105
		goto 57,71.8|n
		.' The path up to the Emerald Signal Fire starts here|goto Terokkar Forest,57.0,71.8,0.3|noway|c
	step //106
		goto 55.5,69.7
		.' Click the Emerald Signal Fire
		.' Extinguish the Emerald Signal Fire|goal Emerald Fire Extinguished|q 10874/2
		info Over the hanging bridge.
	step //107
		goto 56,72.7|n
		.' The path up to the Bloodstone and Violet Signal Fires starts here|goto Terokkar Forest,56.0,72.7,0.3|noway|c
		info It is a tunnel path inside the tree. The entrance is behind the tree to the right a little.
	step //108
		goto 56.1,72.4
		.' Go up the path
		.' Click the Bloodstone Signal Fire
		.' Extinguish the Bloodstone Signal Fire|goal Bloodstone Fire Extinguished|q 10874/4
		info Up the path inside the tree, on your left as you reach the top.
	step //109
		goto 56.7,69.2
		.' Click the Violet Signal Fire
		.' Extinguish the Violet Signal Fire|goal Violet Fire Extinguished|q 10874/3
		info Across the hanging bridge from the Bloodstone Signal Fire.
	step //110
		goto 37.4,51.5
		.talk Kirrik the Awakened##22272
		..turnin Veil Shalas: Signal Fires##10874
		..accept Return to Shattrath##10889
	step //111
		goto 37.5,50.8
		.talk High Priest Orglum##22278
		..turnin The Tomb of Lights##10840
	step //112
		goto 51.1,51.6|n
		.' The path up to Stonebreaker Hold starts here|goto Terokkar Forest,51.1,51.6,0.5|noway|c
	step //113
		goto 50.2,46.4
		.talk Malukaz##18384
		..accept Vestments of the Wolf Spirit##10018
	step //114
		goto 50.1,44.9
		.talk Rakoria##18385
		..accept Olemba Seed Oil##9993
	step //115
		goto 49.8,45.3
		.' Click the Wanted Poster
		..accept Wanted: Bonelashers Dead!##10034
		info In the center of town, next to a tall stone statue thing
	step //116
		goto 49.7,43.3
		.talk Mokasa##18249
		..turnin News from Zangarmarsh##9796
	step //117
		goto 49.2,43.4
		.talk Kerna##18807
		..fpath Stonebreaker Hold
	step //118
		goto 49,44.6
		.talk Rokag##18386
		..accept Stymying the Arakkoa##9987
		.talk Advisor Faila##18712
		..accept Speak with Scout Neftis##10039
		..accept Arakkoa War Path##10868
	step //119
		goto 48.8,45.7
		.talk Kurgatok##18383
		..accept An Unwelcome Presence##10000
		..accept Magical Disturbances##10027
	step //120
		home Stonebreaker Hold
	step //121
		'Fly to Shattrath City|goto Shattrath City|noway|c
	step //122
		goto Shattrath City,72.2,30.7
		.talk Wind Trader Lathrai##18484
		..turnin A Personal Favor##10112
		..accept Investigate Tuurem##9990
	step //123
		goto 52.6,21
		.talk Rilak the Redeemed##22292
		..turnin Return to Shattrath##10889
		.talk Defender Grashna##22373
		.' You're about to fight 3 waves of birds and a bird boss. Make sure you're ready.
		..accept The Skettis Offensive##10879
	step //124
		goto 52.6,21
		.' Kill the little birds that come to attack
		.' Kill the big bird that attacks last
		.' Thwart the Attack|goal Attack thwarted|q 10879/1
	step //125
		goto 52.6,21
		.talk Rilak the Redeemed##22292
		..turnin The Skettis Offensive##10879
	step //126
		'Fly to Stonebreaker Hold|goto Terokkar Forest,49.2,45.3,2.5|noway|c
	step //127
		goto Terokkar Forest,41.6,51.6
		.kill 20 Bonelasher|q 10034/1
	step //128
		goto 34.9,42.8
		.' Click the Olemba Cones
		.get 30 Olemba Seed|q 9993/1
		.kill 10 Warp Stalker|q 10027/1
		.' Kill Timber Worgs
		.get 12 Timber Worg Pelt|q 10018/1
		.' You can find more Timber Worgs at 36.8,37.5|n
		info The cones look like little white glowing pine cones on the ground.
	step //129
		goto 29.9,42.8|n
		.' The path up to Urdak starts here|goto Terokkar Forest,29.9,42.8,0.3|noway|c
	step //130
		goto 31.4,42.5
		.kill 1 Urdak|q 9987/3
		info Up ramp, across the hanging bridge, then on your left.
	step //131
		goto 39,43.7
		.talk Scout Neftis##18714
		..turnin Speak with Scout Neftis##10039
		..accept Who Are They?##10041
		'She puts an orc disguise on you|havebuff Shadowy Disguise
		.' Be careful, the hunter in the camp can see through the disguise|n
		.' The hunter is the guy walking around with a group of people|n
	step //132
		goto 40.3,39.1
		.' Talk the Shadowy Advisor|goal Shadowy Advisor Spoken To|q 10041/3
		info Inside the big building.
	step //133
		goto 39,39.7
		.' Talk the Shadowy Initiate|goal Shadowy Initiate Spoken To|q 10041/1
		info On a wooden platform next to a blue glowing symbol.
	step //134
		goto 38.4,39.3
		.' Talk the Shadowy Laborer|goal Shadowy Laborer Spoken To|q 10041/2
		info The Shadowy Laborer walks around this area hammering at things.  Some searching may be necessary.
	step //135
		goto 39,43.7
		.talk Scout Neftis##18714
		..turnin Who Are They?##10041
		..accept Kill the Shadow Council!##10043
	step //136
		goto 40.3,39.1
		.kill 1 Shadowmaster Grieve|q 10043/3
		info Inside the big building.
	step //137
		goto 39.8,40.8
		.kill 10 Shadowy Executioner|q 10043/1
		.kill 10 Shadowy Summoner|q 10043/2
	step //138
		goto 54,30
		.' Click the Sealed Box
		.get Sealed Box|q 9990/1
		info A green glowing crate inside the hut directly east of you if you are standing on the bridge.
	step //139
		goto 44.3,26.3
		.talk Earthbinder Tavgren##18446
		..turnin Investigate Tuurem##9990
		..accept What Are These Things?##9995
	step //140
		goto 49.9,16.5|n
		.' The path up to Ashkaz starts here|goto Terokkar Forest,49.9,16.5,0.3|noway|c
	step //141
		goto 49.1,16.9
		.kill 1 Ashkaz|q 9987/1
		info Up the ramp, on the right
	step //142
		goto 48.9,17.3
		.kill 14 Shienor Talonite|q 10868/1
		.kill 6 Shienor Sorcerer|q 10868/2
	step //143
		goto 59.4,23.4
		.kill 1 Ayit|q 9987/2
		info Inside a small purple hut
	step //144
		goto 65.5,50.6
		.kill 12 Warped Peon|q 10000/1
	step //145
		goto 63.4,42.7
		.talk Shadowstalker Kaide##18566
		..turnin An Unwelcome Presence##10000
		..accept The Firewing Liaison##10003
		..accept What Happens in Terokkar Stays in Terokkar##10008
	step //146
		goto 68,53.2
		.kill 1 Lisaile Fireweaver|q 10003/1
		info Inside the big building
	step //147
		goto 67.9,53.6
		.' Click the Fel Orc Plans
		..accept An Unseen Hand##10013
		info Inside the big building, it's a brown flat scroll laying on the floor next to some big logs.
	step //148
		goto 69.1,53
		.kill 10 Bonechewer Devastator|q 10008/1
		.kill 6 Bonechewer Backbreaker|q 10008/2
	step //149
		goto 63.4,42.7
		.talk Shadowstalker Kaide##18566
		..turnin The Firewing Liaison##10003
		..turnin What Happens in Terokkar Stays in Terokkar##10008
	step //150
		'Hearth to Stonebreaker Hold|goto Terokkar Forest,49.2,45.3,2.5|use hearthstone##6948|noway|c
	step //151
		goto 49,44.6
		.talk Advisor Faila##18712
		..turnin Kill the Shadow Council!##10043
		..turnin Arakkoa War Path##10868
		.talk Rokag##18386
		..turnin Stymying the Arakkoa##9987
		..turnin An Unseen Hand##10013
	step //152
		goto 48.8,45.7
		.talk Kurgatok##18383
		..turnin Magical Disturbances##10027
	step //153
		goto 49.3,45.9
		.talk Mawg Grimshot##18705
		..turnin Wanted: Bonelashers Dead!##10034
	step //154
		goto 50.2,46.4
		.talk Malukaz##18384
		..turnin Vestments of the Wolf Spirit##10018
		..accept Patriarch Ironjaw##10023
	step //155
		goto 50,45.9
		.talk Tooki##18447
		..turnin What Are These Things?##9995
		..accept Report to Stonebreaker Camp##10448
	step //156
		goto 50.1,44.9
		.talk Rakoria##18385
		..turnin Olemba Seed Oil##9993
		..accept And Now, the Moment of Truth##10201
	step //157
		goto 49.8,45.3
		.talk Grek##19606
		..'Ask him to try the weapon oil
		.' Have Grek Test Olemba Oil|goal Have Grek Test Olemba Oil|q 10201/1
	step //158
		goto 50.1,44.9
		.talk Rakoria##18385
		..turnin And Now, the Moment of Truth##10201
	step //159
		ding 66
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Outland (66-68)",[[
	author support@zygorguides.com
	next Zygor's Horde Leveling Guides\\Outland (68-70)
	startlevel 66
	step //1
		goto Terokkar Forest,63.3,42.4
		.talk Sergeant Chawni##21007
		..turnin Report to Stonebreaker Camp##10448
		..accept Attack on Firewing Point##9997
	step //2
		goto 66.3,34.7
		.' Kill Ironjaw
		.get Ironjaw's Pelt|q 10023/1
		info He is a brown wolf that wanders around this area, so some searching may be necessary.
	step //3
		goto 68.1,36.5
		.kill 10 Firewing Defender|q 9997/1
		.kill 10 Firewing Bloodwarder|q 9997/2
		.kill 10 Firewing Warlock|q 9997/3
	step //4
		goto 63.3,42.4
		.talk Sergeant Chawni##21007
		..turnin Attack on Firewing Point##9997
		..accept The Final Code##10447
	step //5
		goto 73.3,34.6
		.' Click the Orb of Translocation
		.' It will teleport you to the top of the tower|goto 73.5,35.0,0.2|noway|c
		info Upstairs from Isla Starmane, on the balcony
	step //6
		goto 73.9,35.8
		.' Kill Sharth Voldoun
		.collect 1 The Final Code##29912|q 10447
		info Up the winding ramp
	step //7
		goto 74.2,36.5
		.' Click the Orb of Translocation
		.' It will teleport you to the bottom of the tower|goto 73.3,36.3,0.2|noway|c
		info Up the ramp from Sharth Voldoun
	step //8
		goto 71.3,37.4
		.' Click the Mana Bomb
		.' Activate the Mana Bomb using the Final Code|goal Mana Bomb Activated|q 10447/1
	step //9
		goto 50,45.9
		.talk Tooki##18447
		..turnin The Final Code##10447
		..accept Letting Earthbinder Tavgren Know##10006
	step //10
		goto 50.2,46.4
		.talk Malukaz##18384
		..turnin Patriarch Ironjaw##10023
		..accept Welcoming the Wolf Spirit##10791
		.' Use the Ceremonial Incense he gave you|use Ceremonial Incense##31344
		.' Help Malukaz Summon the Wolf Spirit|goal Help Malukaz Summon the Wolf Spirit|q 10791/1
	step //11
		goto 50.2,46.4
		.talk Malukaz##18384
		..turnin Welcoming the Wolf Spirit##10791
	step //12
		'Fly to Shattrath City|goto Shattrath City|noway|c
	step //13
		'Go outside to Terokkar Forest|goto Terokkar Forest|noway|c
	step //14
		goto Terokkar Forest,44.3,26.3
		.talk Earthbinder Tavgren##18446
		..turnin Letting Earthbinder Tavgren Know##10006
	step //15
		'Go west to Shattrath City|goto Shattrath City|noway|c
	step //16
		'Fly to Zabra'jin|goto Zangarmarsh,31.7,49.8,4|noway|c
	step //17
		goto Zangarmarsh,32,50.4
		.talk Messenger Gazgrigg##18091
		..accept Reinforcements for Garadar##9797
	step //18
		'Fly to Swamprat Post|goto Zangarmarsh,85.2,54.2,2|noway|c
	step //19
		'Go southwest to Nagrand|goto Nagrand|noway|c
	step //20
		goto Nagrand,71.6,40.5
		.talk Shado "Fitz" Farstrider##18200
		..accept Windroc Mastery (1)##9854
		.talk Hemet Nesingwary##18180
		..accept Clefthoof Mastery (1)##9789
		.talk Harold Lane##18218
		..accept Talbuk Mastery (1)##9857
	step //21
		goto 72.2,38.4
		.kill 12 Talbuk Stag|q 9857/1
		.' You can find more Talbuk Stags at 70.8,46.4|n
	step //22
		goto 66.5,39.5
		.kill 12 Windroc|q 9854/1
	step //23
		goto 64,45.1
		.kill 12 Clefthoof|q 9789/1
		.' Kill Elekks
		.collect 3 Pair of Ivory Tusks##25463|q 9914 |future
		.' Kill Dust Howlers
		.get Howling Wind|n
		.' Click the Howling Wind|use Howling Wind##24504
		..accept The Howling Wind##9861
		.' You can find more Clefthoofs, Elekks, and Dust Howlers at 70.8,46.4|n
	step //24
		goto 71.6,40.5
		.talk Shado "Fitz" Farstrider##18200
		..turnin Windroc Mastery (1)##9854
		..accept Windroc Mastery (2)##9855
		.talk Hemet Nesingwary##18180
		..turnin Clefthoof Mastery (1)##9789
		..accept Clefthoof Mastery (2)##9850
		.talk Harold Lane##18218
		..turnin Talbuk Mastery (1)##9857
		..accept Talbuk Mastery (2)##9858
	step //25
		goto 57.2,35.2
		.talk Gursha##18808
		..fpath Garadar
	step //26
		goto 57.1,34.9
		.talk Matron Drakia##18302
		..accept Missing Mag'hari Procession##9944
	step //27
		home Garadar
	step //28
		goto 55.4,37.4
		.talk Captain Kroghan##18090
		..turnin Reinforcements for Garadar##9797
	step //29
		goto 55.5,37.6
		.talk Jorin Deadeye##18106
		..accept The Impotent Leader##9888
	step //30
		goto 55.8,38
		.talk Warden Bullrok##18407
		..accept Proving Your Strength##10479
		.' Click the Garadar Bulletin Board
		..accept Wanted: Giselda the Crone##9935
		..accept Wanted: Zorbo the Advisor##9939
	step //31
		goto 55,39
		.talk Elementalist Yal'hah##18234
		..accept The Throne of the Elements##9870
	step //32
		goto 54.7,39.7
		.talk Farseer Kurkush##18066
		..accept Vile Idolatry##9863
		.talk Farseer Corhuk##18067
		..accept The Missing War Party##9864
		.talk Farseer Margadesh##18068
		..accept Murkblood Leaders...##9867
	step //33
		goto 51.9,34.8
		.talk the Consortium Recruiter##18335
		..accept The Consortium Needs You!##9913
	step //34
		goto 60.5,22.4
		.talk Elementalist Morgh##18074
		..turnin The Howling Wind##9861
		..accept Murkblood Corrupters##9862
		.talk Elementalist Sharvak##18072
		..turnin The Throne of the Elements##9870
		.talk Elementalist Lo'ap##18073
		..accept A Rare Bean##9800
		..accept Muck Diving##9815
		.talk Elementalist Untrag##18071
		..accept The Underneath##9818
	step //35
		goto 61.8,24.4
		.talk Gordawg##18099
		..turnin The Underneath##9818
		..accept The Tortured Earth##9819
		info2 He may not be in this spot, he wanders around the Throne of Elements area
	step //36
		goto 52.1,25.6
		.kill 12 Talbuk Thorngrazer|q 9858/1
		.' Click the Dung piles
		.get 8 Digested Caracoli|q 9800/1
		info The Dung piles looks like green piles of swirled poop.
	step //37
		goto 51.6,30.8
		.kill 12 Clefthoof Bull|q 9850/1
		.' You can find more Clefthoof Bulls at 49.7,35.6|n
	step //38
		goto 46.5,18.2
		.kill 1 Zorbo the Advisor|q 9939/1
		info Inside the cave at the top of the hill
	step //39
		goto 48.3,21.5
		.kill 5 Warmaul Shaman|q 9939/2
		.kill 5 Warmaul Reaver|q 9939/3
		.' Kill ogres
		.get 10 Obsidian Warbeads|q 10479/1
	step //40
		goto 32.4,36.1
		.talk Saurfang the Younger##18229
		..turnin The Missing War Party##9864
		..accept Once Were Warriors##9865
		.talk Elder Yorley##18414
		..turnin Missing Mag'hari Procession##9944
		..accept War on the Warmaul##9945
		.talk Elder Ungriz##18415
		..accept Finding the Survivors##9948
	step //41
		goto 29.2,31.6|n
		.' The path up to 'War on the Warmaul' and 'Finding the Survivors' starts here|goto Nagrand,29.2,31.6,0.5|noway|c
	step //42
		goto 23.4,29.2
		.kill 8 Warmaul Brute|q 9945/1
		.kill 8 Warmaul Warlock|q 9945/2
		.' Kill ogres
		.collect 5 Warmaul Prison Key##25604|q 9948 |n
		.' Click the yellow cages around this area
		.' Free 5 Mag'har Prisoners|goal 5 Mag'har Prisoner Freed|q 9948/1
	step //43
		goto 32.4,36.1
		.talk Elder Yorley##18414
		..turnin War on the Warmaul##9945
		.talk Elder Ungriz##18415
		..turnin Finding the Survivors##9948
	step //44
		goto 41.5,40.9
		.' Kill Muck Spawns
		.get 5 Muck-ridden Core|q 9815/1
	step //45
		goto 32,39.1
		.kill 20 Murkblood Scavenger|q 9865/1
		.kill 10 Murkblood Raider|q 9865/2
		.kill 5 Murkblood Putrifier|q 9862/1
		.kill Murkbloods around this area|n
		.get 10 Murkblood Idol|q 9863/1
	step //46
		goto 30.9,42.3
		.from Ortor of Murkblood##18204
		.get Head of Ortor of Murkblood|q 9867/1
		info He's standing inside the big building here.
	step //47
		goto 32.4,36.1
		.talk Saurfang the Younger##18229
		..turnin Once Were Warriors##9865
		..accept He Will Walk The Earth...##9866
	step //48
		goto 30.8,58.1
		.talk Zerid##18276
		..accept Gava'xi##9900
		..accept Matters of Security##9925
	step //49
		goto 31.4,57.8
		.talk Gezhe##18265
		..turnin The Consortium Needs You!##9913
		..accept Stealing from Thieves##9882
	step //50
		goto 31.8,56.8
		.talk Shadrek##18333
		..accept A Head Full of Ivory##9914
		..turnin A Head Full of Ivory##9914
	step //51
		goto 33.4,62.4
		.' Click the Oshu'gun Crystal Fragments on the ground
		.' Kill the mobs here
		.get 10 Oshu'gun Crystal Fragment|q 9882/1
		info They are the green and white crystals on the ground.
	step //52
		goto 30.6,67.5
		.kill 8 Voidspawn|q 9925/1
	step //53
		goto 42.4,73.5
		.kill Gava'xi|q 9900/1
		info He is a mummy guy that spawns at the peak of a small hill at this location, sometimes he spawns at the base of the hill though, so keep an eye out.  He walks around all around this area, near this hill, so you may need to search for him.
	step //54
		goto 48.4,61.5
		.kill 12 Ravenous Windroc|q 9855/1
	step //55
		goto 30.8,58.1
		.talk Zerid##18276
		..turnin Gava'xi##9900
		..turnin Matters of Security##9925
	step //56
		goto 31.4,57.8
		.talk Gezhe##18265
		..turnin Stealing from Thieves##9882
	step //57
		goto 61.7,67.1
		.talk Wazat##19035
		..accept I Must Have Them!##10109
	step //58
		goto 65.4,70.8
		.kill 10 Tortured Earth Spirit|q 9819/1
	step //59
		goto 69.4,56.9
		.kill Dust Howlers|n
		.get 3 Air Elemental Gas|q 10109/1
		.' You can find more Dust Howlers at 65.5,46.9|n
	step //60
		goto 61.7,67.1
		.talk Wazat##19035
		..turnin I Must Have Them!##10109
	step //61
		'Go southeast to Terokkar Forest|goto Terokkar Forest|noway|c
	step //62
		goto Terokkar Forest,19.8,60.9
		.talk Kilrath##18273
		..turnin The Impotent Leader##9888
		..accept Don't Kill the Fat One##9889
	step //63
		goto 20,63.1
		.kill 10 Boulderfist Invader|q 9889/2
	step //64
		goto 20,63.1
		.' Fight Unkor the Ruthless until he submits
		.talk Unkor the Ruthless##18262
		..turnin Don't Kill the Fat One##9889
		..accept Success!##9890
	step //65
		goto 19.8,60.9
		.talk Kilrath##18273
		..turnin Success!##9890
		..accept Because Kilrath is a Coward##9891
	step //66
		ding 67
	step //67
		'Hearth to Garadar|goto Nagrand,55.0,36.8,6|use hearthstone##6948|noway|c
	step //68
		goto Nagrand,55.5,37.6
		.talk Jorin Deadeye##18106
		..turnin Because Kilrath is a Coward##9891
		..accept Message in a Battle##9906
	step //69
		goto 55.8,38
		.talk Warden Bullrok##18407
		..turnin Wanted: Zorbo the Advisor##9939
		..turnin Proving Your Strength##10479
	step //70
		goto 55.5,37.6
		.talk Elkay'gan the Mystic##18300
		..accept Standards and Practices##9910
	step //71
		goto 54.7,39.7
		.talk Farseer Kurkush##18066
		..turnin Vile Idolatry##9863
		.talk Farseer Corhuk##18067
		..turnin He Will Walk The Earth...##9866
		.talk Farseer Margadesh##18068
		..turnin Murkblood Leaders...##9867
	step //72
		goto 71.6,40.5
		.talk Harold Lane##18218
		..turnin Talbuk Mastery (2)##9858
		.talk Hemet Nesingwary##18180
		..turnin Clefthoof Mastery (2)##9850
		.talk Shado "Fitz" Farstrider##18200
		..turnin Windroc Mastery (2)##9855
	step //73
		goto 61.8,24.4
		.talk Gordawg##18099
		..turnin The Tortured Earth##9819
		..accept Eating Damnation##9821
		info2 He may not be in this spot, he wanders around the Throne of Elements area
	step //74
		goto 60.5,22.4
		.talk Elementalist Lo'ap##18073
		..turnin A Rare Bean##9800
		..accept Agitated Spirits of Skysong##9804
		..turnin Muck Diving##9815
		.talk Elementalist Morgh##18074
		..turnin Murkblood Corrupters##9862
	step //75
		goto 59.7,27.3
		.kill 8 Lake Spirit|q 9804/1
	step //76
		goto 60.5,22.4
		.talk Elementalist Lo'ap##18073
		..turnin Agitated Spirits of Skysong##9804
		..accept Blessing of Incineratus##9805
	step //77
		goto 52,20.2
		.kill Enraged Crushers|n|tip You can find them all along this cliffside.
		.get 10 Enraged Crusher Core|q 9821/1
	step //78
		goto 61.8,24.4
		.talk Gordawg##18099
		..turnin Eating Damnation##9821
		..accept Shattering the Veil##9849
		info2 He may not be in this spot, he wanders around the Throne of Elements area
	step //79
		goto 70.8,51.2
		.' Go inside the hut
		.' Use the Living Fire in your bags|use Living Fire##24467
		.' Destroy the Western Hut|goal Western Hut Destroyed|q 9805/2
	step //80
		goto 72.4,50.3
		.' Go inside the hut
		.' Use the Living Fire in your bags|use Living Fire##24467
		.' Destroy the Large Hut|goal Large Hut Destroyed|q 9805/1
	step //81
		goto 72.8,54.7
		.' Go inside the hut
		.' Use the Living Fire in your bags|use Living Fire##24467
		.' Destroy the Eastern Hut|goal Eastern Hut Destroyed|q 9805/4
	step //82
		goto 71.2,53.2
		.' Go inside the hut
		.' Use the Living Fire in your bags|use Living Fire##24467
		.' Destroy the Southern Hut|goal Southern Hut Destroyed|q 9805/3
	step //83
		goto 60.5,22.4
		.talk Elementalist Lo'ap##18073
		..turnin Blessing of Incineratus##9805
		..accept The Spirit Polluted##9810
	step //84
		goto 72.1,69.9
		.' Use your Mag'har Battle Standard next to the bonfire|use Mag'har Battle Standard##25458
		.' Place the First Battle Standard|goal First Battle Standard Placed|q 9910/1
	step //85
		goto 74.7,69.8
		.' Use your Mag'har Battle Standard next to the bonfire|use Mag'har Battle Standard##25458
		.' Place the Second Battle Standard|goal Second Battle Standard Placed|q 9910/2
		info Up the hill on the middle ledge, overlooking the camp.
	step //86
		goto 75.8,68.4
		.' Use your Mag'har Battle Standard next to the bonfire|use Mag'har Battle Standard##25458
		.' Place the Third Battle Standard|goal Third Battle Standard Placed|q 9910/3
		info All the way up the hill.
	step //87
		goto 72.9,69.8
		.kill 8 Boulderfist Mystic|q 9906/1
		.kill 8 Boulderfist Crusher|q 9906/2
	step //88
		goto 55.5,37.6
		.talk Jorin Deadeye##18106
		..turnin Message in a Battle##9906
		..accept An Audacious Advance##9907
	step //89
		goto 55.5,37.6
		.talk Elkay'gan the Mystic##18300
		..turnin Standards and Practices##9910
		..accept Bleeding Hollow Supply Crates##9916
	step //90
		goto 40.8,31.5
		.kill 10 Boulderfist Warrior|q 9907/1
		.kill 10 Boulderfist Mage|q 9907/2
		.' Click the Bleeding Hollow Supply Crates
		.get 10 Bleeding Hollow Supply Crate|q 9916/1
		info They look like wooden boxes with a red symbol on the side of them.  There are a lot of them inside the cave.
	step //91
		goto 33.8,48.9
		.kill 8 Lake Surger|q 9810/2
	step //92
		goto 33.1,50.8
		.kill 1 Watoosun's Polluted Essence|q 9810/1
		info He looks like a big elemental underwater.
	step //93
		goto 27.9,77.6
		.' Use Gordawg's Boulder on Shattered Rumblers|use Gordawg's Boulder##24501
		.' Kill the Minions of Gurok that spawn from their corpses
		.kill 30 Minion of Gurok|q 9849/1
		info Use Gordawg's Boulder on the Shattered Rumblers in this area.
	step //94
		'Hearth to Garadar|goto Nagrand,55.0,36.8,6|use hearthstone##6948|noway|c
	step //95
		goto 55.5,37.6
		.talk Elkay'gan the Mystic##18300
		..turnin Bleeding Hollow Supply Crates##9916
	step //96
		goto 55.5,37.6
		.talk Jorin Deadeye##18106
		..turnin An Audacious Advance##9907
		..accept Diplomatic Measures##10107
	step //97
		goto 73.8,68.1|n
		.' The path up to Lantressor of the Blade starts here|goto Nagrand,73.8,68.1,0.5|noway|c
	step //98
		goto 73.8,62.6
		.talk Lantresor of the Blade##18261
		..'Listen to his story
		..turnin Diplomatic Measures##10107
		..accept Armaments for Deception##9928
		..accept Ruthless Cunning##9927
	step //99
		goto 71.4,79.4
		.' Click the Kil'sorrow Armaments
		.get 10 Kil'sorrow Armaments|q 9928/1
		.from Kil'sorrow Deathsworn##17148, Kil'sorrow Cultist##17147, Kil'sorrow Spellbinder##17146
		.' Kill 10 Kil'sorrow Agents |q 9936/2
		.' Use your Warmaul Ogre Banner on their corpses|use Warmaul Ogre Banner##25552
		.' Plant 10 Warmaul Ogre Banners|goal 10 Warmaul Ogre Banner Planted|q 9927/1
		info The Kil'sorrow Armaments look like skinny, square, tan boxes on the ground with a red axe logo on them.
	step //100
		goto 71.1,82.4
		.kill 1 Giselda the Crone|q 9935/1
		info Inside the big circle building, in the middle.
	step //101
		goto 73.8,62.6
		.talk Lantresor of the Blade##18261
		..turnin Armaments for Deception##9928
		..turnin Ruthless Cunning##9927
		..accept Returning the Favor##9931
		..accept Body of Evidence##9932
	step //102
		goto 55.8,38
		.talk Warden Bullrok##18407
		..turnin Wanted: Giselda the Crone##9935
	step //103
		goto 61.8,24.4
		.talk Gordawg##18099
		..turnin Shattering the Veil##9849
	step //104
		goto 60.5,22.4
		.talk Elementalist Lo'ap##18073
		..turnin The Spirit Polluted##9810
	step //105
		goto 46.5,24.3
		.kill Warmaul ogres|n
		.' Use your Kil'sorrow Banner on their copses|use Kil'sorrow Banner##25555
		.' Plant 10 Kil'sorrow Banners|goal 10 Kil'sorrow Banner Planted|q 9931/1
		.' Use the Damp Woolen Blanket on the Blazing Warmaul Pyre|use Damp Woolen Blanket##25658
		.' Defend the 2 ogres that spawn until they finish placing corpses around
		.' Plant the Kil'sorrow Bodies|goal Kil'sorrow Bodies Planted|q 9932/1
		info The Blazing Warmaul Pyre looks like a big burning bonfire.
	step //106
		goto 73.8,62.6
		.talk Lantressor of the Blade##18261
		..turnin Returning the Favor##9931
		..turnin Body of Evidence##9932
		..accept Message to Garadar##9934
	step //107
		'Hearth to Garadar|goto Nagrand,55.0,36.8,6|use hearthstone##6948|noway|c
	step //108
		goto 55.5,37.6
		.talk Garrosh##18063
		..turnin Message to Garadar##9934
	step //109
		'Fly to Swamprat Post|goto Zangarmarsh,85.2,54.2,2|noway|c
	step //110
		goto Zangarmarsh,70.1,33.8|n
		.' The path to Blade's Edge Mountains starts here|goto Zangarmarsh,70.1,33.8,0.5|noway|c
	step //111
		'Go north to Blade's Edge Mountains|goto Blade's Edge Mountains|noway|c
	step //112
		goto Blade's Edge Mountains,53,96.2
		.talk Grunt Grahk##22489
		..accept Killing the Crawlers##10928
	step //113
		goto 52.4,93.3
		.kill 6 Cavern Crawler|q 10928/1
		info Kill the Cavern Crawlers as you walk through the tunnel.
	step //114
		goto 51.9,58.4
		.talk Tor'chunk Twoclaws##21147
		..turnin Killing the Crawlers##10928
		..accept The Bladespire Threat##10503
	step //115
		goto 51.9,57.8
		.' Click the Wanted Poster
		..accept Felling an Ancient Tree##10489
		info Next to the bonfire
	step //116
		goto 52.3,57.6
		.talk Gor'drek##21117
		..accept The Encroaching Wilderness##10486
	step //117
		home Thunderlord Stronghold
	step //118
		goto 52.1,54.1
		.talk Unoke Tenderhoof##18953
		..fpath Thunderlord Stronghold
	step //119
		goto 51.3,65.5
		.kill 12 Bladewing Bloodletter|q 10486/1
	step //120
		goto 52.3,57.6
		.talk Gor'drek##21117
		..turnin The Encroaching Wilderness##10486
		..accept Dust from the Drakes##10487
	step //121
		'Go west across the big bridge|goto Blade's Edge Mountains,42.8,65.6,0.5|c
	step //122
		goto 41.2,67.2
		.' Kill Fey Drakes
		.get 4 Dust of the Fey Drake|q 10487/1
	step //123
		goto 37.1,70
		.' He walks up and down this road
		.' Kill Stronglimb Deeproot
		.get Stronglimb Deeproot's Trunk|q 10489/1
		info Stronglimb Deeproot walks up and down this road.
	step //124
		goto 51.9,58.4
		.talk Tor'chunk Twoclaws##21147
		..turnin Felling an Ancient Tree##10489
	step //125
		goto 52.3,57.6
		.talk Gor'drek##21117
		..turnin Dust from the Drakes##10487
		..accept Protecting Our Own##10488
	step //126
		goto 50.4,60.9
		.' Use Gor'drek's Ointment on 5 Thunderlord Dire Wolves|use Gor'drek's Ointment##30175
		.' Strengthen 5 Thunderlord Dire Wolves|goal 5 Thunderlord Dire Wolf strengthened|q 10488/1
	step //127
		goto 52.3,57.6
		.talk Gor'drek##21117
		..turnin Protecting Our Own##10488
	step //128
		goto 49.8,54|n
		.' The path down to Bladespire Hold starts here|goto Blade's Edge Mountains,49.8,54.1,0.5|noway|c
	step //129
		goto 41.6,54.0
		.' Kill 30 Bladespire Ogres|goal 30 Bladespire Ogres killed|q 10503/1
		.kill 10 Bladespire Raptor|q 10503/2
		.' Kill ogres
		.' Get a Thunderlord Clan Artifact
		.' Click the Thunderlord Clan Artifact in your bags|use Thunderlord Clan Artifact##30431
		..accept Thunderlord Clan Artifacts##10524
	step //130
		goto 40.2,58.3
		.' Click the Thunderlord Clan Drum
		.get Thunderlord Clan Drum|q 10524/2
		info It's a medium sized conga looking drum sitting on the floor inside a small building up on a little hill.
	step //131
		goto 40.9,51.9|n
		.' The path up to the Thunderlord Clan Arrow starts here|goto Blade's Edge Mountains,40.9,51.8,0.3|noway|c
	step //132
		goto 41.5,52.6
		.' Click the Thunderlord Clan Arrow
		.get Thunderlord Clan Arrow|q 10524/1
		info It's a small glowing arrow standing straight up and down on top of the huge stone platform, near the edge.
	step //133
		goto 41.2,46.5
		.' Click the Thunderlord Clan Tablet
		.get Thunderlord Clan Tablet|q 10524/3
		info It's a large glowing stone tablet laying on the ground inside a small building.
	step //134
		goto 51.9,58.4
		.talk Tor'chunk Twoclaws##21147
		..turnin The Bladespire Threat##10503
		..accept The Bloodmaul Ogres##10505
	step //135
		goto 52.8,59
		.talk Rokgah Bloodgrip##21311
		..turnin Thunderlord Clan Artifacts##10524
		..accept Vision Guide##10525
		.' Use the Fiery Soul Fragment she just gave you|use Fiery Soul Fragment##30481
		.' Watch yourself fly around as a red whisp
		..turnin Vision Guide##10525
		..accept The Thunderspike##10526
	step //136
		goto 51.7,51.5|n
		.' Follow the path down|goto Blade's Edge Mountains,51.7,51.5,0.5|noway|c
	step //137
		goto 45,72.3
		.talk T'chali the Witch Doctor##21349
		..accept They Stole Me Hookah and Me Brews!##10542
	step //138
		goto 42.4,79.4
		.' Kill 30 Bloodmaul ogres|goal 30 Bloodmaul Ogres killed|q 10505/1
		.' Click the Bloodmaul Brew Kegs and kill Bloodmaul Brewmasters|tip Bloodmaul Brew Kegs look like big wooden barrels on the ground around this area.
		.' Get 16 Bloodmaul Brutebane Brew|collect 16 Bloodmaul Brutebane Brew##29443|q 10542|tip You need the extra Brew to make a later quest much easier.
	step //139
		goto 42.1,81.2
		.' Click T'chali's Hookah
		.get T'chali's Hookah|q 10542/1
		info It looks like a small golden pump thing next to a bonfire.
	step //140
		'Go south into the mine to 42.5,83.6|n
		.' Go all the way to the back of the cave|goto Blade's Edge Mountains,42.5,83.6,0.5|noway|c
	step //141
		'Go to 39.7,85.5 inside the mine|goto 39.7,85.5
		.' Click the Thunderspike
		.' Kill Gor Grimgut
		.get The Thunderspike|q 10526/1
		info All the way in the back of the cave. It looks like a feathered staff sticking out of the ground.
	step //142
		goto 45,72.3
		.talk T'chali the Witch Doctor##21349
		..turnin They Stole Me Hookah and Me Brews!##10542
		..accept Bladespire Kegger##10545
	step //143
		goto 42.7,55.8
		.' Use your Bloodmaul Brutebane Keg when semi-close to a Bladespire ogre|use Bloodmaul Brutebane Keg##30353
		.' The ogre will run and grab the beer and get drunk
		.get 5 Bladespire Ogres drunk|q 10545/1
	step //144
		goto 45,72.3
		.talk T'chali the Witch Doctor##21349
		..turnin Bladespire Kegger##10545
		..accept Grimnok and Korgaah, I Am For You!##10543
	step //145
		ding 68
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Outland (68-70)",[[
	author support@zygorguides.com
	next Zygor's Horde Leveling Guides\\Northrend (70-72)
	startlevel 68
	step //1
		'Go to the top of the tower to 45.4,80.4|goto Blade's Edge Mountains,45.4,80.4
		.kill 1 Grimnok Battleborn|q 10543/1
		info He's standing at the top of this tower.
	step //2
		goto 42.8,46.7|n
		.' The path up to Korgaah starts here|tip It's a stone ramp on the left side of the really tall house.
		.' Follow the path up|goto Blade's Edge Mountains,42.8,46.7,0.3|noway|c
	step //3
		goto 43.2,46.1
		.' Use your Bloodmaul Brutebane Keg at this spot on the ramp|use Bloodmaul Brutebane Keg##30353
		.' Or use your Bloodmaul Brutebane Brew at this spot on the ramp|use Bloodmaul Brutebane Brew##29443
		.' Lure thwe ogres out 1 by 1 and kill them
		.' Lure Korgaah out with the beer
		.kill 1 Korgaah|q 10543/2
	step //4
		goto 45,72.3
		.talk T'chali the Witch Doctor##21349
		..turnin Grimnok and Korgaah, I Am For You!##10543
		..accept A Curse Upon Both of Your Clans!##10544
	step //5
		goto 47.1,78
		.' Use your Wicked Strong Fetish in the doorway of this building|use Wicked Strong Fetish##30479
		.' Kill the spirit that spawns
		.' Use your Wicked Strong Fetish on this building 2 times
		.' Curse 2 Bloodmaul Outpost buildings|goal 2 Bloodmaul Outpost building cursed|q 10544/2
	step //6
		goto 42.4,53.8
		.' Use your Wicked Strong Fetish in the doorway of this building|use Wicked Strong Fetish##30479
		.' Kill the spirit that spawns
		.' Use your Wicked Strong Fetish on this building 5 times
		.' Curse 5 Bladespire Hold buildings|goal 5 Bladespire Hold building cursed|q 10544/1
	step //7
		goto 45,72.3
		.talk T'chali the Witch Doctor##21349
		..turnin A Curse Upon Both of Your Clans!##10544
	step //8
		.'Hearth to Thunderlord Stronghold|goto Blade's Edge Mountains,52.1,56.7,4|use hearthstone##6948
	step //9
		goto 51.9,58.4
		.talk Tor'chunk Twoclaws##21147
		..turnin The Bloodmaul Ogres##10505
	step //10
		goto 52.8,59
		.talk Rokgah Bloodgrip##21311
		..turnin The Thunderspike##10526
		.talk Garm Wolfbrother##21950
		..accept The Spirits Have Voices##10718
		info2 You can't see Garm Wolfbrother until after you've completed the quest The Thunderspike
	step //11
		goto 51.9,58.4
		.talk Rexxar##21984
		..turnin The Spirits Have Voices##10718
		..accept Whispers on the Wind##10614
	step //12
		goto 55.8,72.7|n
		.' Follow the road east to Mok'nathal Village|goto Blade's Edge Mountains,55.7,72.7,0.5
	step //13
		goto 76.4,65.9
		.talk Sky-Master Maxxor##22455
		..fpath Mok'Nathal Village
	step //14
		goto 75.1,62.1
		.talk Dertrok##21496
		..accept The Stones of Vekh'nir##10565
	step //15
		goto 75.3,60.9
		.talk Leoroxx##22004
		..turnin Whispers on the Wind##10614
		..accept Reunion##10709
	step //16
		goto 76.1,60.3
		.talk Matron Varah##21088
		..accept Mok'Nathal Treats##10860
		info2 She is the innkeeper
	step //17
		home Mok'Nathal Village
	step //18
		goto 75.9,61.5
		.talk Taerek##21895
		..accept Silkwing Cocoons##10617
		.talk Silmara##21896
		..accept The Softest Wings##10618
	step //19
		'Fly to Thunderlord Stronghold|goto Blade's Edge Mountains,52.1,56.7,4|noway
	step //20
		goto 51.9,58.4
		.talk Rexxar##21984
		..turnin Reunion##10709
		..accept On Spirit's Wings##10714
	step //21
		'Fly to Mok'Nathal Village|goto Blade's Edge Mountains,75.4,61.4,4.7|noway
	step //22
		goto 73.8,64.9
		.' Kill Silkwing Larvas
		.get 8 Silkwing Cocoon|q 10617/1
		.' Kill Silkwings
		.get 12 Iridescent Wing|q 10618/1
	step //23
		goto 76.4,75.4
		.' Kill Vekh'nir arakkoas
		collect 1 Vekh'nir Crystal##30561|q 10565
	step //24
		goto 77.8,74.7
		.' Stand on the big purple glowing circle on the ground
		.' Click the Vekh'nir Crystal in your bags|use Vekh'nir Crystal##30561
		.' Charge the Vekh'nir Crystal|goal Charged Vekh'nir Crystal|q 10565/1
	step //25
		goto 75.1,62.1
		.talk Dertrok##21496
		..turnin The Stones of Vekh'nir##10565
		..accept Trial and Error##10566
	step //26
		goto 75.9,61.5
		.talk Taerek##21895
		..turnin Silkwing Cocoons##10617
		.talk Silmara##21896
		..turnin The Softest Wings##10618
	step //27
		goto 75.3,60.9
		.talk Leoroxx##22004
		..accept Understanding the Mok'Nathal##10846
	step //28
		.' Click Dertrok's Wand Case in your bags|use Dertrok's Wand Case##30650
		.collect 1 Dertrok's First Wand##30651|q 10566
		.collect 1 Dertrok's Second Wand##30652|q 10566
		.collect 1 Dertrok's Third Wand##30653|q 10566
		.collect 1 Dertrok's Fourth Wand##30654|q 10566
	step //29
		goto 73.2,74.6
		.' Kill arakkoas
		.collect 4 Infused Vekh'nir Crystal##30655|q 10566 |n
		.' Use Dertrok's First Wand on the ogres|use Dertrok's First Wand##30651
		..'Test Dertrok's First Wand|goal 1 Test the first wand|q 10566/1
		.' Use Dertrok's Second Wand on the ogres|use Dertrok's Second Wand##30652
		..'Test Dertrok's Second Wand|goal 1 Test the second wand|q 10566/2
		.' Use Dertrok's Third Wand on the ogres|use Dertrok's Third Wand##30653
		..'Test Dertrok's Third Wand|goal 1 Test the third wand|q 10566/3
		.' Use Dertrok's Fourth Wand on the ogres|use Dertrok's Fourth Wand##30654
		..'Test Dertrok's Fourth Wand|goal 1 Test the fourth wand|q 10566/4
	step //30
		'Go inside the cave|n
		.' Keep going straight inside the cave to the back|goto Blade's Edge Mountains,71.3,74.4,0.3
		.kill 1 Vekh|q 10846/1
		info Inside the arrakoa cave.
		info2 Just keep going straight inside the cave and you will find him.
	step //31
		.'Leave the cave and go to 75.1,62.1|goto 75.1,62.1
		.talk Dertrok##21496
		..turnin Trial and Error##10566
		..accept Ruuan Weald##10615
	step //32
		goto 75.3,60.9
		.talk Leoroxx##22004
		..turnin Understanding the Mok'Nathal##10846
		..accept Since Time Forgotten...##10843
	step //33
		goto 74.9,60.5
		.talk Spiritcaller Dohgar##22312
		..accept The Totems of My Enemy##10851
	step //34
		goto 68.9,67.2
		.' Kill Scalewing Serpents
		.get 3 Serpent Flesh|q 10860/2
	step //35
		goto 65.2,56.9
		.' Kill Daggermaw Lashtails
		.get 3 Raptor Ribs|q 10860/1
	step //36
		goto 59.3,56
		.' Kill ogres
		.get 5 Bladespire Totem|q 10851/1
	step //37
		goto 57.1,54.6
		.kill 1 Gnosh Brognat|q 10843/1
		info He's Standing under a green canopy draped over some big rocks.
	step //38
		goto 75.3,60.9
		.talk Leoroxx##22004
		..turnin Since Time Forgotten...##10843
		..accept Slay the Brood Mother##10845
	step //39
		goto 74.9,60.5
		.talk Spiritcaller Dohgar##22312
		..turnin The Totems of My Enemy##10851
		..accept Spirit Calling##10853
	step //40
		goto 76.1,60.3
		.talk Matron Varah##21088
		..turnin Mok'Nathal Treats##10860
		info2 She is the innkeeper.
	step //41
		goto 65.6,75.6
		.' Use your Spirit Calling Totems to plant Spirit Calling Totems|use Spirit Calling Totems##31663
		.' Kill Lesser Nether Drakes while standing near the totems
		.' Make sure to kill at least 2 drakes per totem before the totem disappears
		.get 8 Lesser Nether Drake Spirit|q 10853/1
		.kill 1 Dreadwing|q 10845/1
		info If you run out of totems, you will have to go all the way back to Mok'Nathal Village to get more, so use them with care.
		info2 Dreadwing is a huge spirit dragon that walks around this area.
	step //42
		.'Hearth to Mok'Nathal Village|goto Blade's Edge Mountains,75.4,61.4,4.7|use hearthstone##6948
	step //43
		goto 75.3,60.9
		.talk Leoroxx##22004
		..turnin Slay the Brood Mother##10845
	step //44
		goto 74.9,60.5
		.talk Spiritcaller Dohgar##22312
		..turnin Spirit Calling##10853
		..accept Gather the Orbs##10859
	step //45
		goto 65.5,46.6
		.' Use the Orb Collecting Totem repeatedly at the base of the pole with the purple lightning circle on it|use Orb Collecting Totem##31668
		.' It will capture the Razaani Light Orbs as they are produced
		.' Collect 15 Razaani Light Orbs|goal 15 Razaani Light Orb collected|q 10859/1
	step //46
		goto 74.9,60.5
		.talk Spiritcaller Dohgar##22312
		..turnin Gather the Orbs##10859
		..accept Inform Leoroxx!##10865
	step //47
		goto 75.3,60.9
		.talk Leoroxx##22004
		..turnin Inform Leoroxx!##10865
		..accept There Can Be Only One Response##10867
	step //48
		goto 66.3,44.3
		.' Kill Razaani mummies around the portal
		.' After a while, Nexus-Prince Razaan will come out of the portal
		.' Kill Nexus-Prince Razaan
		.' Click the Collection of Souls hovering over his corpse
		.'Get the Collection of Souls|get Collection of Souls|q 10867/1
	step //49
		goto 62.2,39.1
		.talk Timeon##21782
		..turnin Ruuan Weald##10615
		..accept Creating the Pendant##10567
	step //50
		goto 62.6,38.2
		.talk Faradrella##22133
		..accept Culling the Wild##10753
	step //51
		goto 61.2,38.4
		.talk Mosswood the Ancient##22053
		..accept Little Embers##10770
		..accept From the Ashes##10771
	step //52
		goto 62,39.5
		.talk Tree Warden Chawn##22007
		..accept A Time for Negotiation...##10682
	step //53
		goto 61.7,39.6
		.talk Fhyn Leafshadow##22216
		..fpath Evergrove
	step //54
		'Fly to Mok'Nathal Village|goto Blade's Edge Mountains,75.4,61.4,4.7|noway
	step //55
		goto 74.9,60.5
		.talk Spiritcaller Dohgar##22312
		..turnin There Can Be Only One Response##10867
	step //56
		'Fly to Thunderlord Stronghold|goto Blade's Edge Mountains,52.1,56.7,4|noway
	step //57
		home Thunderlord Stronghold
	step //58
		'Fly to Evergrove|goto Blade's Edge Mountains,62.4,38.4,3|noway
	step //59
		goto 68.9,35.6
		.kill 2 Fel Corrupter|q 10753/3
		.kill 4 Felsworn Scalewing|q 10753/1
		.kill 4 Felsworn Daggermaw|q 10753/2
		.' Kill Fel Corrupters
		.get a Damaged Mask|n
		.' Click the Damaged Mask in your bags|use Damaged Mask##31384
		..accept Damaged Mask##10810
	step //60
		goto 71.7,22.4
		.' Click the Fertile Volcanic Soil
		.' Plant the Ironroot Seeds|goal Southern Volcanic Soil|q 10771/1
		info Looks like a dirt mound.
	step //61
		goto 71.6,20.3
		.' Click the Fertile Volcanic Soil
		.' Plant the Ironroot Seeds|goal Central Volcanic Soil|q 10771/2
		info Looks like a dirt mound.
	step //62
		goto 70.7,20.2
		.kill 8 Scorch Imp|q 10770/1
	step //63
		goto 71.6,18.5
		.' Click the Fertile Volcanice Soil
		.' Plant the Ironroot Seeds|goal Northern Volcanic Soil|q 10771/3
		info Looks like a dirt mound.
	step //64
		goto 62.7,40.4
		.' Talk O'Mally Zapnabber
		..turnin Damaged Mask##10810
		..accept Mystery Mask##10812
		info A litle gnome standing on a big bowl working on a spinning lightning rod thing
	step //65
		goto 62.2,40.1
		.talk Wildlord Antelarion##22127
		..turnin Mystery Mask##10812
		..accept Felsworn Gas Mask##10819
	step //66
		goto 62.6,38.2
		.talk Faradrella##22133
		..turnin Culling the Wild##10753
	step //67
		goto 61.2,38.4
		.talk Mosswood the Ancient##22053
		..turnin Little Embers##10770
		..turnin From the Ashes##10771
	step //68
		goto 58.8,39.1
		.talk Overseer Nuaar##21981
		.' He wanders around the Wyrmcult camps
		.' Negotiate with Overseer Nuaar|goal Negotiations with Overseer Nuaar complete|q 10682/1
	step //69
		goto 62,39.5
		.talk Tree Warden Chawn##22007
		..turnin A Time for Negotiation...##10682
		..accept ...and a Time for Action##10713
		.talk Samia Inkling##21983
		..accept Poaching from Poachers##10717
	step //70
		goto 59.9,37.8
		.kill 10 Wyrmcult Hewer|q 10713/1
		.' Kill Wyrmcult Poachers
		.get 5 Wyrmcult Net|q 10717/1
		.' Kill Wyrmcult mobs
		.get a Meeting note|n
		.' Click the Meeting Note in your bags|use Meeting Note##31120
		..accept Did You Get The Note?##10719
	step //71
		goto 62,39.5
		.talk Samia Inkling##21983
		..turnin Poaching from Poachers##10717
		..accept Whelps of the Wyrmcult##10747
		.talk Tree Warden Chawn##22007
		..turnin ...and a Time for Action##10713
		..turnin Did You Get The Note?##10719
		..accept Wyrmskull Watcher##10894
	step //72
		'Make sure you have your Felsworn Gas Mask in your bags|n
		.' It has a 60 minute timer on it|n
		.' If you need another one, talk to Wildlord Antelarion at Evergrove|n
	step //73
		'Put on your Felsworn Gas Mask to wear it|use Felsworn Gas Mask##31366
	step //74
		goto 73.2,40
		.' Click the Legion Communicator
		..turnin Felsworn Gas Mask##10819
		..accept Deceive thy Enemy##10820
		info Between 2 big green floating crystals. Click the Legion Communicator.
		info2 Must be wearing the Felsworn Gas Mask to use this.
	step //75
		goto 74.9,39.9
		.kill 4 Doomforge Attendant|q 10820/1
		.kill 4 Doomforge Engineer|q 10820/2
	step //76
		goto 73.2,40
		.' Put on your Felsworn Gas Mask
		.' Click the Legion Communicator
		..turnin Deceive thy Enemy##10820
		info Between 2 big green floating crystals. Click the Legion Communicator.
		info2 Must be wearing the Felsworn Gas Mask to use this.
	step //77
		goto 63.9,31.5
		.' Kill Ruuan'ok arakkoas
		.collect 6 Ruuan'ok Claw##30704|q 10567
	step //78
		goto 64.5,33.1
		.' Use the 6 Ruuan'ok Claws inside the glowing circle|use Ruuan'ok Claw##30704
		.' Kill the Harbinger of the Raven
		.get Harbinger's Pendant|q 10567/1
		info On the little island in the pond.
	step //79
		goto 58.4,30.8
		.' Stand near to the little torch stick on the hill
		.' Use Rexxar's Whistle|use Rexxar's Whistle##31128
		.' Position the green circle on the ground near the 2 ogres talking
		.' The owl will fly over to them
		.goal Eavesdrop on the Bloodmaul ogres' plans|q 10714/1
	step //80
		.'Hearth to Thunderlord Stronghold|goto Blade's Edge Mountains,52.1,56.7,4|use hearthstone##6948
	step //81
		goto 51.9,58.4
		.talk Rexxar##21984
		..turnin On Spirit's Wings##10714
		..accept Baron Sablemane##10783
	step //82
		'Fly to Evergrove|goto Blade's Edge Mountains,62.4,38.4,3|noway
	step //83
		goto 62.2,39.1
		.talk Timeon##21782
		..turnin Creating the Pendant##10567
		..accept Whispers of the Raven God##10607
	step //84
		goto 53.3,41.2
		.talk Baron Sablemane##22103
		..turnin Baron Sablemane##10783
		..accept Into the Churning Gulch##10715
	step //85
		goto 49,44.5
		.' Kill Crust Bursters
		.get 7 Crust Burster Venom Gland|q 10715/1
	step //86
		goto 53.3,41.2
		.talk Baron Sablemane##22103
		..turnin Into the Churning Gulch##10715
		..accept Baron Sablemane's Poison##10749
	step //87
		'Go east to Evergrove|goto Blade's Edge Mountains,62.4,38.4,3
	step //88
		'Fly to Thunderlord Stronghold|goto Blade's Edge Mountains,52.1,56.7,4|noway
	step //89
		goto 51.9,58.4
		.talk Rexxar##21984
		..turnin Baron Sablemane's Poison##10749
		..accept The Smallest Creatures##10720
		.talk Tor'chunk Twoclaws##21147
		..accept Crush the Bloodmaul Camp##10784
	step //90
		'Fly to Evergrove|goto Blade's Edge Mountains,62.4,38.4,3|noway
	step //91
		goto 56.2,26.7
		.kill 10 Bloodmaul Mauler|q 10784/1
		.kill 5 Bloodmaul Warlock|q 10784/2
		.' Clear the mobs around the kegs around this area to make the next few steps easier
	step //92
		goto 56.4,29.2|n
		.' Click your Kodohide Drum next to the small stone burrow|use Kodohide Drum##31141
		.' Coax a marmot|havebuff Coax Marmot
		info Use your Kodohide Drum next to this small stone burrow thing.
	step //93
		goto 55.4,28.2
		'As a marmot, do the following:
		.' Stand next to the wooden keg
		.' Click the Poison Kegs button on your pet bar
		.goal Poison the keg of Ripe Moonshine|q 10720/2
		info It's a wooden keg laying on its side on the ground. Stand next to the keg as a marmot and click the Poison Kegs button on your pet bar.
	step //94
		goto 55.3,26
		.' Stand next to the wooden keg
		.' Click the Poison Kegs button on your pet bar
		.goal Poison the keg of Green Spot Grog|q 10720/1
		info It's a wooden keg laying on its side on the ground. Stand next to the keg as a marmot and click the Poison Kegs button on your pet bar.
	step //95
		goto 55.9,23.1
		.' Stand next to the wooden keg
		.' Click the Poison Kegs button on your pet bar
		.goal Poison the keg of Fermented Seed Beer|q 10720/3
		info It's a wooden keg laying on its side on the ground. Stand next to the keg as a marmot and click the Poison Kegs button on your pet bar.
	step //96
		goto 56,29|n
		.' Right-click the marmot buff at the top right of your screen to stop playing as a marmot|n
	step //97
		'Go southeast to Evergrove|goto Blade's Edge Mountains,62.4,38.4,3
	step //98
		'Fly to Thunderlord Stronghold|goto Blade's Edge Mountains,52.1,56.7,4|noway
	step //99
		goto 51.9,58.4
		.talk Rexxar##21984
		..turnin The Smallest Creatures##10720
		..accept A Boaring Time for Grulloc##10721
		.talk Tor'chunk Twoclaws##21147
		..turnin Crush the Bloodmaul Camp##10784
	step //100
		'Fly to Evergrove|goto Blade's Edge Mountains,62.4,38.4,3|noway
	step //101
		goto 60.2,47.6
		.' Use Huffer's Whistle|use Huffer's Whistle##31350
		..'A boar will appear and start distraction Grulloc
		.' Run up and click Grulloc's Sack
		.get Grulloc's Sack|q 10721/1
		.' Run away
		info Grulloc's Sack is a big tan bag sitting at his feet.
	step //102
		goto 53.3,41.2
		.talk Baron Sablemane##22103
		..turnin A Boaring Time for Grulloc##10721
		..accept It's a Trap!##10785
	step //103
		.'Hearth to Thunderlord Stronghold|goto Blade's Edge Mountains,52.1,56.7,4|use hearthstone##6948
	step //104
		goto 51.9,58.4
		.talk Rexxar##21984
		..turnin It's a Trap!##10785
		..accept Gorgrom the Dragon-Eater##10723
		.talk Tor'chunk Twoclaws##21147
		..accept Slaughter at Boulder'mok##10786
	step //105
		'Fly to Evergrove|goto Blade's Edge Mountains,62.4,38.4,3|noway
	step //106
		'Go northwest across the big bridge|goto Blade's Edge Mountains,53.1,37.9,0.5
	step //107
		goto 49.9,35.9
		.talk Watcher Moonshade##22386
		..turnin Wyrmskull Watcher##10894
		..accept Longtail is the Lynchpin##10893
	step //108
		'Go into the tunnel|goto Blade's Edge Mountains,49.5,35.8,0.3
	step //109
		goto 46.7,32.9
		.kill 1 Draaca Longtail|q 10893/1
		info She walks near the Raven's Wood end of the cave.
	step //110
		goto 49.9,35.9
		.talk Watcher Moonshade##22386
		..turnin Longtail is the Lynchpin##10893
		..accept Meeting at the Blackwing Coven##10722
	step //111
		'Go northwest through the tunnel to Grishnath|goto Blade's Edge Mountains,43.1,29.9,0.3
	step //112
		goto 40.9,20.4
		.kill arakkoas|n
		.'Get the Understanding Ravenspeech buff|havebuff Understanding Ravenspeech
		..'Must be within melee range to receive the buff
		.' The buff lasts for 2 minutes
		.' Anytime the buff wears off, kill arakkoas again to get it back
	step //113
		goto 40.7,18.7
		.' Stand next to the wooden totem with the Understanding Ravenspeech buff on
		.' Receive the Third Prophecy|goal Receive the Third Prophecy|q 10607/3
		info On the ground, next to a pond with basilisks in it.
		info2 It looks like a wooden totem.
	step //114
		goto 39,17.2
		.' Stand next to the wooden totem with the Understanding Ravenspeech buff on
		.' Receive the First Prophecy|goal Receive the First Prophecy|q 10607/1
		info Up the left ramp, then left across the hanging bridge.
		info2 It looks like a wooden totem.
	step //115
		goto 42.5,21.6
		.' Stand next to the wooden totem with the Understanding Ravenspeech buff on
		.' Receive the Second Prophecy|goal Receive the Second Prophecy|q 10607/2
		info Up the right ramp, then go right across the hanging bridge, then down the stairs to the left. It looks like a wooden totem.
	step //116
		goto 40.2,23
		.' Stand next to the wooden totem with the Understanding Ravenspeech buff on
		.' Receive the Fourth Prophecy|goal Receive the Fourth Prophecy|q 10607/4
		.' Kill arakkoas
		.get the Orb of the Grishna|n
		.' Click the Orb of the Grishna in your bags|use Orb of the Grishna##31489
		..accept The Truth Unorbed##10825
		info On the ground, in front of a hut.
		info2 It looks like a wooden totem.
	step //117
		goto 32.3,34.9
		.' Go inside the cave
		.' Use the Blackwhelp Net on Wyrmcult Blackwhelps|use Blackwhelp Net##31129
		.' Capture 10 Wyrmcult Blackwhelps|goal 10 Wyrmcult Blackwhelp|q 10747/1
		.' Kill Wyrmcultists
		.collect 5 Costume Scraps##31121|q 10722
	step //118
		goto 32.6,37.5
		.' Combine your 5 Costume Scraps to make an Overseer Disguise|use Costume Scraps##31121
		.' Put on the Overseer Disguise|use Overseer Disguise##31122
		.talk Kolphis Darkscale##22019
		..'Attend the meeting with Kolphis Darkscale|goal Meeting with Kolphis Darkscale attended|q 10722/1
	step //119
		goto 30.3,24.6
		.kill 5 Boulder'mok Brute|q 10786/1
		.kill 3 Boulder'mok Shaman|q 10786/2
		.' Kill Boulder'mok mobs
		.collect 3 Grisly Totem##31754|q 10723
	step //120
		goto 30.6,22.2
		.' Click Gorgrom's Altar
		.' He will run up to the altar and die
		.' Use the Grisly Totems on his corpse|use Grisly Totem##31754
		.' Plant 3 Grisly Totems|goal 3 Plant Grisly Totem|q 10723/1
		info A big stone square block in the middle of the camp. You will need 3 Grisly Totems before you use this.
	step //121
		'Go east to Evergrove|goto Blade's Edge Mountains,62.4,38.4,3
	step //122
		goto 62,39.5
		.talk Samia Inkling##21983
		..turnin Whelps of the Wyrmcult##10747
		.talk Tree Warden Chawn##22007
		..turnin Meeting at the Blackwing Coven##10722
		..accept Maxnar Must Die!##10748
		..turnin The Truth Unorbed##10825
		..accept Treebole Must Know##10829
	step //123
		goto 62.2,39.1
		.talk Timeon##21782
		..turnin Whispers of the Raven God##10607
	step //124
		'Fly to Thunderlord Stronghold|goto Blade's Edge Mountains,52.1,56.7,4|noway
	step //125
		goto 51.9,58.4
		.talk Rexxar##21984
		..turnin Gorgrom the Dragon-Eater##10723
		.talk Tor'chunk Twoclaws##21147
		..turnin Slaughter at Boulder'mok##10786
	step //126
		'Fly to Evergrove|goto Blade's Edge Mountains,62.4,38.4,3|noway
	step //127
		goto 36.9,22.5
		.talk Treebole##22215
		..turnin Treebole Must Know##10829
		..accept Exorcising the Trees##10830
	step //128
		goto 39.3,20.2
		.' Click the purple balls in the claw looking rods
		.collect 5 Grishnath Orb##31495|q 10830
		info They look like purple balls in claw looking rods. They are around the huts in this area.
	step //129
		goto 30.1,28.6
		.' Kill Dire Ravens
		.collect 5 Dire Pinfeather##31517|q 10830
	step //130
		goto 33.8,29.4
		.' Click your Grishnath Orbs in your bags to combine the orbs and pinfeathers|use Grishnath Orb##31495
		.' Create 5 Exorcism Feathers|collect 5 Exorcism Feather|n
		.' Use Exorcism Feathers on the Raven's Wood Leafbeards|use Exorcism Feather##31518
		.' Kill the Koi Koi spirits that spawn to free the trees
		.' Free 5 Raven's Wood Leafbeards|goal 5 Leafbeard Exorcised|q 10830/1
		info The trees will stop attacking you once the spirit is dead.
	step //131
		goto 36.9,22.5
		.talk Treebole##22215
		..turnin Exorcising the Trees##10830
	step //132
		'Go southwest to the Blackwing Coven|goto Blade's Edge Mountains,31.9,33.1,0.5
	step //133
		'Go inside the cave|goto Blade's Edge Mountains,32.1,34.1,0.3
	step //134
		goto 33.9,35.4
		.kill 1 Maxnar the Ashmaw|q 10748/1
		info Follow the cave path until it dead ends into him.
	step //135
		.'Hearth to Thunderlord Stronghold|goto Blade's Edge Mountains,52.1,56.7,4|use hearthstone##6948
	step //136
		'Fly to Evergrove|goto Blade's Edge Mountains,62.4,38.4,3|noway
	step //137
		goto 62,39.5
		.talk Tree Warden Chawn##22007
		..turnin Maxnar Must Die!##10748
	step //138
		'Go northeast to Netherstorm|goto Netherstorm
	step //139
		goto Netherstorm,21.3,55.6
		.talk Netherologist Coppernickels##19569
		..accept Off To Area 52##10183
	step //140
		goto 31.5,56.6
		.talk Bot-Specialist Alley##19578
		..accept Recharging the Batteries##10190
	step //141
		goto 26.5,51.9
		.' Kill Phase Hunters
		.' You will see a message in your chat window saying 'Phase Hunter is very weak'
		.' Use your Battery Recharging Blaster on them when you see this message|use Battery Recharging Blaster##28369
		.goal 10 Battery Charge Level|q 10190/1
	step //142
		goto 31.5,56.6
		.talk Bot-Specialist Alley##19578
		..turnin Recharging the Batteries##10190
	step //143
		ding 69
	step //144
		'Go south to Area 52|goto Netherstorm,32.3,65.5,3|noway|c
	step //145
		goto 32.3,63.9
		.talk Boots##19617
		..accept Securing the Shaleskin Shale##10342
	step //146
		goto 32.4,64.2
		.talk Nether-Stalker Khay'ji##19880
		..accept Consortium Crystal Collection##10265
	step //147
		goto 32,64
		.talk Spymaster Thalodien##19468
		..accept Manaforge B'naar##10189
	step //148
		home Area 52
	step //149
		goto 32.7,65
		.talk Rocket-Chief Fuselage##19570
		..turnin Off To Area 52##10183
		..accept You're Hired!##10186
	step //150
		goto 31.4,66.2
		.talk Ravandwyr##19217
		..accept The Archmage's Staff##10173
	step //151
		goto 33.7,64
		.talk Krexcil##18938
		..fpath Area 52
	step //152
		goto 33.1,60
		.' Kill Shaleskin Flayers
		.get 5 Shaleskin Shale|q 10342/1
	step //153
		goto 31.5,56.6
		.talk Maxx A. Million Mk. V##19589
		..accept Mark V is Alive!##10191
		.' Escort Maxx A. Million Mk. V|goal Escort the Maxx A. Million Mk. V safely through the Ruins of Enkaat|q 10191/1
		.' Click the red glowing crystals on the ground while escorting Maxx A. Million Mk. V
		.get 10 Etherlithium Matrix Crystal|q 10186/1
	step //154
		goto 31.5,56.6
		.talk Bot-Specialist Alley##19578
		..turnin Mark V is Alive!##10191
	step //155
		goto 32.3,63.9
		.talk Boots##19617
		..turnin Securing the Shaleskin Shale##10342
		..accept That Little Extra Kick##10199
	step //156
		goto 32.7,65
		.talk Rocket-Chief Fuselage##19570
		..turnin You're Hired!##10186
		..accept Invaluable Asset Zapping##10203
		..accept Report to Engineering##10225
	step //157
		goto 32.4,66.8
		.talk Chief Engineer Trep##19709
		..turnin Report to Engineering##10225
		..accept Essence for the Engines##10224
	step //158
		goto 34.8,59.1
		.' Kill Mana Wraiths
		.get 7 Mana Wraith Essence|q 10224/1
	step //159
		goto 32.4,66.8
		.talk Chief Engineer Trep##19709
		..turnin Essence for the Engines##10224
		..accept Elemental Power Extraction##10226
	step //160
		goto 27.8,65
		.' Kill Captain Arathyn
		.get B'naar Personnel Roster|q 10189/1
		info He walks around this area on a big purple bird.
	step //161
		goto 35.4,76.5
		.' Use the Elemental Power Extractor on Sundered Rumblers and Warp Aberrations|use Elemental Power Extractor##28547
		.' Kill them
		.' Click the blue crystal floating over their corpses
		.get 5 Elemental Power|q 10226/1
	step //162
		goto 40.3,72.9
		.' Click the tall metal turret with the gun pointing at the ground
		.' Retrieve the Multi-Spectrum Terrain Analyzer|goal Multi-Spectrum Terrain Analyzer retrieved|q 10203/3
		info Looks like a tall metal turret with the gun pointing at the ground.
	step //163
		goto 41,73.8
		.' Click the wooden cart with a big digging wheel on it
		.' Retrieve the Hyper Rotational Dig-A-Matic|goal Hyper Rotational Dig-A-Matic retrieved|q 10203/1
		info Looks like a wooden cart with a big digging wheel on it.
	step //164
		goto 42.4,72.8
		.' Kill Pentatharon
		.get Arklon Crystal Artifact|q 10265/1
		info To the right as you enter the ruins, up on a small stage looking platform
	step //165
		goto 42.5,72.2
		.' Click the wagon with a bunch of explosives on it
		.' Retrieve the Big Wagon Full of Explosives|goal Big Wagon Full of Explosives retrieved|q 10203/4
		info Looks like a wagon with a bunch of explosives on it.
	step //166
		goto 41.4,71.8
		.' Click the crane digging machine with a bunch of gears on it
		.' Retrive the Servo-Penumatic Dredging Claw|goal Servo-Pneumatic Dredging Claw retrieved|q 10203/2
		info Looks like a crane digging machine with a bunch of gears on it.
	step //167
		goto 40.9,72.5
		.' Stand next to the broken, smoking altar on the small hill
		.' Use your Conjuring Powder to summon Ekkorash|use Conjuring Powder##29207
		.' Kill Ekkorash
		.get Archmage Vargoth's Staff|q 10173/1
	step //168
		goto 44.6,72.1
		.kill Nether Rays|n
		.get 5 Nether Ray Stinger|q 10199/1
	step //169
		goto 34.2,68.1
		.talk Lead Sapper Blastfizzle##19634
		..turnin Invaluable Asset Zapping##10203
		..accept Dr. Boom!##10221
	step //170
		goto 32.4,66.8
		.talk Chief Engineer Trep##19709
		..turnin Elemental Power Extraction##10226
	step //171
		goto 31.4,66.2
		.talk Ravandwyr##19217
		..turnin The Archmage's Staff##10173
		..accept Rebuilding the Staff##10300
	step //172
		goto 32.4,64.2
		.talk Nether-Stalker Khay'ji##19880
		..turnin Consortium Crystal Collection##10265
		..accept A Heap of Ethereals##10262
	step //173
		goto 32.3,63.9
		.talk Boots##19617
		..turnin That Little Extra Kick##10199
	step //174
		goto 33,64.7
		.talk Papa Wheeler##19645
		..accept Pick Your Part##10206
	step //175
		goto 32,64
		.talk Spymaster Thalodien##19468
		..turnin Manaforge B'naar##10189
		..accept High Value Targets##10193
		.talk Magistrix Larynna##19469
		..accept Bloodgem Crystals##10204
	step //176
		goto 33.5,53
		.kill Disembodied Ghosts|n
		.get 4 Flawless Crystal Shard|q 10300/1
	step //177
		goto 35,59.6
		.' Dr. Boom sends out little walking bombs that blow up|tip When you see a clear passage to Dr. Boom, click the Boom's Doom in your bags, then run close enough to Dr. Boom so you can put the green circle under him, then click to throw the bomb.  Get just close enough so that the very edge of the green circle is under his feet.  This way, you will be close enough to hit him, but far enough away that he won't throw bombs back at you.
		.'Click Boom's Doom in your bags|use Boom's Doom##29429
		.kill 1 Dr. Boom|q 10221/1
	step //178
		goto 31.4,66.2
		.talk Ravandwyr##19217
		..turnin Rebuilding the Staff##10300
		..accept Curse of the Violet Tower##10174
	step //179
		goto 34.2,68.1
		.talk Lead Sapper Blastfizzle##19634
		..turnin Dr. Boom!##10221
	step //180
		goto 26.3,66.7
		.' Kill Sunfury Magisters
		.get a Bloodgem Shard|n
		.' Use the Bloodgem Shard next to a big red floating crystal|use Bloodgem Shard##28452
		.' Siphon the Bloodgem Crystal|goal Siphon Bloodgem Crystal|q 10204/1
	step //181
		goto 26.9,70.5
		.kill 2 Sunfury Warp-Master|q 10193/1
		.kill 6 Sunfury Warp-Engineer|q 10193/2
		.kill 8 Sunfury Geologist|q 10193/3
	step //182
		goto 30.2,75.5
		.' Kill Zaxxis mummies
		.get 10 Zaxxis Insignia|q 10262/1
		.' Click the Theral Technology on the ground
		.get 10 Ethereal Technology|q 10206/1
		info The Ethereal Technology looks like little clear cases with purple electricity in them.
	step //183
		goto 33,64.7
		.talk Papa Wheeler##19645
		..turnin Pick Your Part##10206
	step //184
		goto 32.4,64.2
		.talk Nether-Stalker Khay'ji##19880
		..turnin A Heap of Ethereals##10262
		..accept Warp-Raider Nesaad##10205
	step //185
		goto 32,64
		.talk Spymaster Thalodien##19468
		..turnin High Value Targets##10193
		..accept Shutting Down Manaforge B'naar##10329
		.talk Magistrix Larynna##19469
		..turnin Bloodgem Crystals##10204
	step //186
		goto 23.9,70.7
		.' Kill Overseer Theredis
		.get B'naar Access Crystal |q 10329/1
		info Down one of the hallways inside Manaforge B'naar.
	step //187
		goto 23.2,68.1
		.' Click the B'naar Control Console
		.' Click "<Begin emergency shutdown>"
		.' Kill the technicians as they come to try to save the Manaforge
		..'Only takes 2 minutes
		.' Shut Down Manaforge B'naar|goal Manaforge B'naar Shut Down |q 10329/1
	step //188
		'Hearth to Area 52|goto Netherstorm,32.3,65.5,3|use hearthstone##6948|noway|c
	step //189
		goto 32,64
		.talk Spymaster Thalodien##19468
		..turnin Shutting Down Manaforge B'naar##10329
		..accept Stealth Flight##10194
	step //190
		goto 28.2,79.4
		.kill 1 Warp-Raider Nesaad|q 10205/1
		info In a small camp.
	step //191
		goto 32.4,64.2
		.talk Nether-Stalker Khay'ji##19880
		..turnin Warp-Raider Nesaad##10205
	step //192
		goto 33.8,64.2
		.talk Veronia##20162
		..turnin Stealth Flight##10194
		..accept Behind Enemy Lines##10652
		.talk Veronia##20162
		..'Click "I'm as ready as I'll ever be."
		..'You will fly to Manaforge Coruu|goto 48.0,86.0,2|noway|c
	step //193
		goto 48.2,86.6
		.talk Caledis Brightdawn##19840
		..turnin Behind Enemy Lines##10652
		..accept A Convincing Disguise##10197
	step //194
		goto 47.7,84.9
		.kill Sunfury Arcanists|n
		.get Sunfury Arcanist Robes|q 10197/3
	step //195
		'Go inside Manaforge Coruu to 49,81.5|goto 49,81.5
		.kill Sunfury Researchers|n
		.get Sunfury Researcher Gloves|q 10197/1
	step //196
		'Go outside to 50.8,83.2|goto 50.8,83.2
		.kill Sunfury Guardsmen|n
		.get Sunfury Guardsman Medallion|q 10197/2
	step //197
		goto 48.2,86.6
		.talk Caledis Brightdawn##19840
		..turnin A Convincing Disguise##10197
		..accept Information Gathering##10198
	step //198
		'Use the Sunfury Disguise in your bags|havebuff Sunfury Disguise|use Sunfury Disguise##28607
	step //199
		'Go inside Manaforge Coruu to 48.2,84.1|goto 48.2,84.1
		.' Be careful to avoid the Arcane Annihilator, he can see through the disguise and will attack you.
		.' Stand between the 2 blood elves at the back of the room with a bunch blood elves lined up in it
		.' Listen to them talk
		.' Gather the Information|goal Information Gathering|q 10198/1
		info Be careful to avoid the Arcane Annihilator inside the manaforge because it can see through the disguise and will attack you.
	step //200
		.' Go outside to 48.2,86.6|goto 48.2,86.6
		.talk Caledis Brightdawn##19840
		..turnin Information Gathering##10198
		..accept Shutting Down Manaforge Coruu##10330
	step //201
		'Go inside Manaforge Coruu to 49,81.5|goto 49,81.5
		.' Kill Overseer Seylanna
		.get Coruu Access Crystal |q 10330/1
		.' Click the Coruu Control Console
		.' Click "<Begin emergency shutdown>"
		.' Kill the technicians as they come to try to save the Manaforge
		..'Only takes 2 minutes
		.' Shut Down Manaforge Coruu|goal Manaforge Coruu Shut Down|q 10330/1
	step //202
		.' Go outside to 48.2,86.6|goto 48.2,86.6
		.talk Caledis Brightdawn##19840
		..turnin Shutting Down Manaforge Coruu##10330
		..accept Return to Thalodien##10200
	step //203
		goto 57.7,85.2
		.talk Thadell##20464
		..accept Needs More Cowbell##10334
		.talk Apprentice Andrethan##20463
		..accept Indispensable Tools##10331
	step //204
		goto 57.5,86.3
		.talk Custodian Dieworth##19488
		..accept Malevolent Remnants##10184
		.' Use Archmage Vargoth's Staff|use Archmage Vargoth's Staff##28455
		.talk Image of Archmage Vargoth##19644
		..turnin Curse of the Violet Tower##10174
		..accept The Sigil of Krasus##10188
		.talk Custodian Dieworth##19488
		..accept A Fate Worse Than Death##10185
		.talk Lieutenant-Sorcerer Morran##19489
		..accept The Unending Invasion##10343
	step //205
		.' Kill 20 Severed Spirits as you quest around this area
		.' Skip to the next step of the guide
	step //206
		goto 59.1,78.8
		.talk Bessy##20415
		..turnin Needs More Cowbell##10334
		..accept When the Cows Come Home##10337
		.' Escort Bessy to Thadell|goal Escort Bessy on her way home.|q 10337/1
		info2 When escorting Bessy, let her get hit first, or else she won't help you fight.
	step //207
		.'At 57.7,85.2|goto 57.7,85.2
		.talk Thadell##20464
		..turnin When the Cows Come Home##10337
	step //208
		goto 58.4,88.3
		.' Kill Abjurist Belmara
		.get Belmara's Tome|n
		.' Click Belmara's Tome in your bags|use Belmara's Tome##29234
		..accept Abjurist Belmara##10305
		info She walks around in this area, some searching may be necessary.
	step //209
		goto 59.6,87.7
		.' Kill Cohlien Frostweaver
		.get Cohlien's Cap |n
		.' Click Cohlien's Cap in your bags|use Cohlien's Cap##29234
		..accept Cohlien Frostweaver##10307
		info He is a gnome that walks around this area, so some searching may be necessary.
	step //210
		goto 60.4,88
		.' Kill Battle-Mage Dathric
		.get Dathric's Blade|n
		.' Click Dathric's Blade|use Dathric's Blade##29233
		..accept Battle-Mage Dathric##10182
		info He is inside the building that looks like a town hall, in the big room, in the back left corner on the stage.
	step //211
		goto 59.9,85.6
		.' Kill Conjurer Luminrath
		.get Luminrath's Mantle|n
		.' Click Luminrath's Mantle in your bags|use Luminrath's Mantle##29235
		..accept Conjurer Luminrath##10306
		info He walks around this area, so some searching may be necessary.
	step //212
		goto 61,85
		.' Kill Kirin'Var Apprentices
		.get Smithing Hammer|q 10331/1
	step //213
		'Make sure you have killed 20 Severed Spirits|kill 20 Severed Spirit|q 10184/1
	step //214
		goto 57.7,85.2
		.talk Apprentice Andrethan##20463
		..turnin Indispensable Tools##10331
		..accept Master Smith Rhonsus##10332
	step //215
		goto 57.5,86.3
		.talk Custodian Dieworth##19488
		..turnin Malevolent Remnants##10184
		..accept The Annals of Kirin'Var##10312
	step //216
		goto 61.3,85
		.kill 1 Rhonsus|q 10332/1
		info He is usually standing inside the blacksmith house.  He sometimes walks around this area, so you may need to look for him.
	step //217
		goto 57.7,85.2
		.talk Apprentice Andrethan##20463
		..turnin Master Smith Rhonsus##10332
	step //218
		.' Kill 10 Mana Seekers and 10 Mageslayers as you do the following steps:|n
		.' Skip to the next step of the guide
	step //219
		goto 56.9,86.8
		.' Go inside the little house
		.' Click Dathric's Blade when standing next to the Weapon Rack|use Dathric's Blade##28351
		.' Put Dathric's Spirit to Rest|goal Put Dathric's Spirit to Rest|q 10182/1
		info Inside a little house.
	step //220
		goto 56.4,87.8
		.' Go inside the little house
		.' Click Luminrath's Mantle when standing next to the Dresser|use Luminrath's Mantle##28352
		.' Put Luminrath's Spirit to Rest|goal Put Luminrath's Spirit to Rest|q 10306/1
		info Inside a little house.
	step //221
		goto 55.7,87.2
		.' Click the big white ball with blue dots on it
		.get Mana Bomb Fragment|q 10343/1
		info It looks like a big white ball with blue dots on it.
	step //222
		goto 55.1,87.5
		.' The Footlocker is in a pile of junk in a house with no roof
		.' Click Cohlien's Cap when standing next to the Foot Locker|use Cohlien's Cap##28353
		.' Put Cohlien's Spirit to Rest|goal Put Cohlien's Spirit to Rest|q 10307/1
		info A small rectangular wooden box in a pile of junk in the corner of a house with no roof.
	step //223
		goto 55.5,86.5
		.' Go inside the house with a huge log laying diagonally into it
		.' Click Belmara's Tome when standing next to the Bookshelf|use Belmara's Tome##28336
		.' Put Belmara's Spirit to Rest|goal Put Belmara's Spirit to Rest|q 10305/1
		info A little wooden bookshelf in a house with a huge log laying diagonally into the house, there is no roof.
	step //224
		goto 55.5,86.7
		.'Make sure you've done the following:
		..kill 10 Mana Seeker|q 10185/1
		..kill 10 Mageslayer|q 10185/2
	step //225
		goto 57.5,86.3
		.talk Custodian Dieworth##19488
		..turnin Abjurist Belmara##10305
		..turnin A Fate Worse Than Death##10185
		..turnin Cohlien Frostweaver##10307
		..turnin Battle-Mage Dathric##10182
		..turnin Conjurer Luminrath##10306
		.talk Lieutenant-Sorcerer Morran##19489
		..turnin The Unending Invasion##10343
		..accept Potential Energy Source##10239
	step //226
		goto 60.4,88
		.' Kill Battle-Mage Dathric
		.get Annals of Kirin'Var|q 10312/1
		info He is inside the building that looks like a town hall, in the big room, in the back left corner on the stage.
	step //227
		goto 57.5,86.3
		.talk Custodian Dieworth##19488
		..turnin The Annals of Kirin'Var##10312
		..accept Searching for Evidence##10316
	step //228
		goto 60.3,78
		.' Go inside the barn
		.' Click the Necromantic Focus
		..turnin Searching for Evidence##10316
		..accept A Lingering Suspicion##10314
		info Inside the barn, looks like a stone altar with a reddish pink ball of light floating above it.
	step //229
		goto 59.8,79.5
		.' Kill ghosts around this area
		.get 10 Loathsome Remnant|q 10314/1
	step //230
		goto 57.5,86.3
		.talk Custodian Dieworth##19488
		..turnin A Lingering Suspicion##10314
		..accept Capturing the Phylactery##10319
	step //231
		goto 59.9,80.4
		.' Go behind the first building on the right as you walk over the bridge
		.' Click the Suspicious Outhouse
		.get Naberius's Phylactery|q 10319/1
		info The middle outhouse behind the first building on your right as you walk over the bridge, headed away from the huge tower where the quest gives are.
	step //232
		goto 57.5,86.3
		.talk Custodian Dieworth##19488
		..turnin Capturing the Phylactery##10319
	step //233
		goto 51.1,82.5
		.' Click the Energy Isolation Cubes|tip They look like little clear boxes with purple light in them on the ground.
		.get 10 Energy Isolation Cube|q 10239/1
		.' Kill Spellbinder Maryana|tip I found her here, but she wanders around outside in this area, so some searching may be necessary.
		.get Sigil of Krasus|q 10188/1
	step //234
		goto 51.1,80.7
		.' Use Archmage Vargoth's Staff|use Archmage Vargoth's Staff##28455
		.talk Image of Archmage Vargoth##19644
		..turnin The Sigil of Krasus##10188
		..accept Krasus's Compendium##10192
	step //235
		goto 57.5,86.3
		.talk Lieutenant-Sorcerer Morran##19489
		..turnin Potential Energy Source##10239
	step //236
		goto 57.6,89.6
		.' Click the glowing scroll on the ground in the small house
		.get Krasus's Compendium - Chapter 2|q 10192/2
		info In a small house, it looks like a glowing scroll on the ground.
	step //237
		goto 58.6,89.2
		.' Click the glowing scroll on the ground in the small house
		.get Krasus's Compendium - Chapter 1|q 10192/1
		info In a small house, looks like a glowing scroll on a table.
	step //238
		goto 58.8,87.9
		.' Click the glowing scroll on the ground in the small house
		.get Krasus's Compendium - Chapter 3|q 10192/3
		info In a small house, looks like a glowing scroll on the ground
	step //239
		.' Use Archmage Vargoth's Staff|use Archmage Vargoth's Staff##28455
		.talk Image of Archmage Vargoth##19644
		..turnin Krasus's Compendium##10192
	step //240
		'Hearth to Area 52|goto Netherstorm,32.3,65.5,3|use hearthstone##6948|noway|c
	step //241
		goto 32,64
		.talk Spymaster Thalodien##19468
		..turnin Return to Thalodien##10200
	step //242
		goto 33,64.7
		.talk Papa Wheeler##19645
		..accept Help Mama Wheeler##10333
	step //243
		goto 46.6,56.5
		.talk Mama Wheeler##19728
		..turnin Help Mama Wheeler##10333
	step //244
		goto 46.4,56.4
		.talk Mehrdad##20810
		..accept Run a Diagnostic!##10417
		..accept New Opportunities##10348
	step //245
		goto 46.5,56.0
		.talk Shauly Pore##20921
		..accept Keeping Up Appearances##10433
	step //246
		goto 48.2,55.0
		.' Click the Diagnostic Equipment|tip It looks like a small cylinder machine with pink electricity inside of it.
		.get Diagnostic Results|q 10417/1
	step //247
		goto 48.2,53.9
		.' Click Ivory Bells around this area|tip The Ivory Bells look like tall flowers with a single purple and pink bulb at the top.
		.get 15 Ivory Bell|q 10348/1
		.from Ripfang Lynx##20671
		.get 10 Ripfang Lynx Pelt|q 10433/1
	step //248
		goto 46.4,56.4
		.talk Mehrdad##20810
		..turnin New Opportunities##10348
		..turnin Run a Diagnostic!##10417
		..accept Deal With the Saboteurs##10418
	step //249
		goto 46.5,56.0
		.talk Shauly Pore##20921
		..turnin Keeping Up Appearances##10433
	step //250
		goto 46.8,53.9
		.kill 8 Barbscale Crocolisk|q 10418/1
	step //251
		goto 46.4,56.4
		.talk Mehrdad##20810
		..turnin Deal With the Saboteurs##10418
	step //252
		goto 46.6,56.5
		.talk Mama Wheeler##19728
		..accept One Demon's Trash...##10234
	step //253
		goto 49.0,59.2
		.get 10 Fel Reaver Part|q 10234/1|tip They look like metal parts on the ground around this area.
	step //254
		goto 46.6,56.5
		.talk Mama Wheeler##19728
		..turnin One Demon's Trash...##10234
	step //255
		ding 70
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Northrend (70-72)",[[
	author support@zygorguides.com
	next Zygor's Horde Leveling Guides\\Northrend (72-74)
	startlevel 70
	step //1
		'Go to Orgrimmar|goto Orgrimmar|noway|c
	step //2
		'Go outside to Durotar|goto Durotar|noway|c
	step //3
		goto Durotar,41.4,17.8|n
		.' Ride the zeppelin to Borean Tundra|goto Borean Tundra|noway|c
	step //4
		goto Borean Tundra,41.6,54
		.talk Warsong Recruitment Officer##25273
		..accept Hellscream's Vigil##11585
	step //5
		'Go downstairs to 41.3,53.6|goto 41.3,53.6
		.talk Garrosh Hellscream##25237
		..turnin Hellscream's Vigil##11585
	step //6
		goto 41.3,53.6
		.talk High Overlord Saurfang##25256
		..accept The Defense of Warsong Hold##11596 // maybe it's this one..?
	step //7
		'Go outside to 43.2,55|goto 43.2,55
		.talk Overlord Razgor##25279
		..turnin The Defense of Warsong Hold##11596
		..accept Taking Back Mightstone Quarry##11598
	step //8
		goto 43.3,55.4
		.talk Quartermaster Holgoth##25327
		..accept Patience is a Virtue that We Don't Need##11606
	step //9
		goto 42.2,56.2
		.talk Foreman Mortuus##25280
		..accept Taken by the Scourge##11611
	step //10
		goto 43.3,57.9
		.kill 15 Nerub'ar|q 11598/1
		.' Click the Warsong Munitions crates|tip They look like wooden crates on the ground around this area.
		.get 15 Warsong Munitions|q 11606/1
	step //11
		goto 42.8,58.1
		.' Attack the shaking white cocoons on the ground|tip When you break the cocoons, you will not always free a peon.
		.' Free 5 Warsong Peons|goal 5 Warsong Peon Freed|q 11611/1
	step //12
		goto 42.2,56.2
		.talk Foreman Mortuus##25280
		..turnin Taken by the Scourge##11611
	step //13
		goto 43.3,55.4
		.talk Quartermaster Holgoth##25327
		..turnin Patience is a Virtue that We Don't Need##11606
		..accept Bury Those Cockroaches!##11608
	step //14
		goto 43.2,55
		.talk Overlord Razgor##25279
		..turnin Taking Back Mightstone Quarry##11598
		..accept Cutting Off the Source##11602
		.talk Shadowstalker Barthus##25394
		..accept Untold Truths##11614
	step //15
		'Go south up the metal stairs to 44.6,59.3|goto 44.6,59.3
		.' Attack the Nerub'ar Egg Sacs on the ground|tip They look like small white-ish eggs on the ground around this area, near structures.
		.' Destroy 10 Nerub'ar Egg Sacs|goal 10 Nerub'ar Egg Sac Destroyed|q 11602/1
	step //16
		goto 44.3,56.9
		.' Use your Seaforium Depth Charge Bundle while standing next to the hole|use Seaforium Depth Charge Bundle##34710|tip It's down the hill, looks like a bunch of cobwebs with rocks on a hole.
		.' Destroy the East Nerub'ar Sinkhole|goal East Nerub'ar Sinkhole Destroyed|q 11608/2
	step //17
		goto 41.7,58.3
		.' Use your Seaforium Depth Charge Bundle while standing next to the hole|use Seaforium Depth Charge Bundle##34710|tip It's down the hill, looks like a bunch of cobwebs with rocks on a hole.
		.' Destroy the South Nerub'ar Sinkhole|goal South Nerub'ar Sinkhole Destroyed|q 11608/1
	step //18
		goto 39.8,52.6
		.' Use your Seaforium Depth Charge Bundle while standing next to the hole|use Seaforium Depth Charge Bundle##34710|tip It's down the hill, looks like a bunch of cobwebs with rocks on a hole.
		.' Destroy the West Nerub'ar Sinkhole|goal West Nerub'ar Sinkhole Destroyed|q 11608/3
	step //19
		goto 40.1,52.1
		.talk Shadowstalker Luther##25328
		..turnin Untold Truths##11614
		..accept Nerub'ar Secrets##11615
	step //20
		goto 41.3,50.4
		.' Use your Seaforium Depth Charge Bundle while standing next to the hole|use Seaforium Depth Charge Bundle##34710|tip It's down the hill, looks like a bunch of cobwebs with rocks on a hole.
		.' Destroy the North Nerub'ar Sinkhole|goal North Nerub'ar Sinkhole Destroyed|q 11608/4
	step //21
		goto 43.3,55.4
		.talk Quartermaster Holgoth##25327
		..turnin Bury Those Cockroaches!##11608
	step //22
		goto 43.2,55
		.talk Overlord Razgor##25279
		..turnin Cutting Off the Source##11602
		..accept Wind Master To'bor##11634
		.talk Shadowstalker Barthus##25394
		..turnin Nerub'ar Secrets##11615
		..accept Message to Hellscream##11616
	step //23
		'Go into Warsong Hold to 41.3,53.6|goto 41.3,53.6
		.talk Garrosh Hellscream##25237
		..turnin Message to Hellscream##11616
		..accept Reinforcements Incoming...##11618
	step //24
		'Go to the very top of Warsong Hold to 40.4,51.4|goto 40.4,51.4
		.talk Turida Coldwind##25288
		..fpath Warsong Hold
	step //25
		goto 42.3,54.9
		.talk Wind Master To'bor##25289
		..turnin Wind Master To'bor##11634
		..accept Magic Carpet Ride##11636
	step //26
		'Go northwest outside to 38.1,52.6|goto 38.1,52.6
		.talk Shadowstalker Ickoris##25437
		..turnin Reinforcements Incoming...##11618
		..accept The Warsong Farms##11686
	step //27
		goto 37.9,52.6
		.talk Shadowstalker Canarius##25438
		..accept Merciful Freedom##11676
	step //28
		goto 37.9,52.3
		.talk Farmer Torp##25607
		..accept Damned Filthy Swine##11688
	step //29
		goto 37.2,51.4
		.kill 10 Unliving Swine|q 11688/1
	step //30
		goto 39.5,48.1
		.' Scout the Warsong Slaughterhouse|goal Scout Warsong Slaughterhouse|q 11686/3
	step //31
		goto 36.4,48.1
		.kill En'kilah Necrolord##25609+,Warsong Aberration##25611+|n
		.get 5 Scourge Cage Key##34908+|n
		.' Click the Scourge Cages as you see them|tip The Scourge Cages look like tall cages with big white skulls on top of them.
		.' Free 5 Scourge Prisoners|goal 5 Scourge Prisoner Freed|q 11676/1
	step //32
		goto 36.7,52.4
		.' Scout Torp's Farm|goal Scout Torp's Farm|q 11686/2
	step //33
		goto 35,54.7
		.' Scout the Warsong Granary|goal Scout Warsong Granary|q 11686/1
	step //34
		goto 37.9,52.6
		.talk Shadowstalker Canarius##25438
		..turnin Merciful Freedom##11676
		.talk Shadowstalker Ickoris##25437
		..turnin The Warsong Farms##11686
		..accept Get to Getry##11703
	step //35
		goto 37.9,52.3
		.talk Farmer Torp##25607
		..turnin Damned Filthy Swine##11688
		..accept Bring 'Em Back Alive##11690
	step //36
		'Search around for Infected Kodo Beasts
		.' Use Torp's Kodo Snaffle on Infected Kodo Beasts|use Torp's Kodo Snaffle##34954
		.' Ride the kodos back to Farmer Torp
		.' Use the Deliver Kodo skill to return the kodos|petaction Deliver Kodo
		.' Rescue 8 Kodos|goal 8 Kodo rescued|q 11690/1
	step //37
		goto 37.9,52.3
		.talk Farmer Torp##25607
		..turnin Bring 'Em Back Alive##11690
	step //38
		'Go northwest to the top of the tower at 34.6,46.4|goto 34.6,46.4
		.talk Shadowstalker Getry##25729
		..turnin Get to Getry##11703
		..accept Foolish Endeavors##11705
	step //39
		'Follow Shadowstalker Getry down the tower and watch the cutscene
		.' Make sure to hit Varidus the Flenser at least once, then let the NPCs fight for you
		.' Defeat Varidus the Flenser|goal Varidus the Flenser Defeated|q 11705/1
	step //40
		goto 41.3,53.6
		.talk Garrosh Hellscream##25237
		..turnin Foolish Endeavors##11705
		..accept Nork Bloodfrenzy's Charge##11709
	step //41
		'Go outside to 43.7,54.5|goto 43.7,54.5
		.talk Warden Nork Bloodfrenzy##25379
		..turnin Nork Bloodfrenzy's Charge##11709
		..accept Coward Delivery... Under 30 Minutes or it's Free##11711
	step //42
		goto 55.3,50.8
		.' Standing at the crossroads and use your Warsong Flare Gun|use Warsong Flare Gun##34971
		.' Deliver the Alliance Deserter|goal Alliance Deserter Delivered|q 11711/1
	step //43
		goto 53.1,51.6
		.talk Scout Tungok##25440
		..turnin Coward Delivery... Under 30 Minutes or it's Free##11711
		..accept Vermin Extermination##11714
	step //44
		goto 52.1,52.5
		.talk Bloodmage Laurith##25381
		..accept The Wondrous Bloodspore##11716
	step //45
		goto 52.7,52.7
		.' Click the Bloodspore Carpel around this area|tip The Bloodspore Carpel look like bright red tall flowers around this area.
		.get 10 Bloodspore Carpel|q 11716/1
		.kill 8 Bloodspore Harvester|q 11714/1
		.kill 5 Bloodspore Firestarter|q 11714/2
		.kill 2 Bloodspore Roaster|q 11714/3
	step //46
		goto 52.1,52.5
		.talk Bloodmage Laurith##25381
		..turnin The Wondrous Bloodspore##11716
		..accept Pollen from the Source##11717
	step //47
		goto 53.1,51.6
		.talk Scout Tungok##25440
		..turnin Vermin Extermination##11714
	step //48
		'Kill Bloodspore Moths all around this area
		.get 5 Bloodspore Moth Pollen|q 11717/1
	step //49
		goto 52.1,52.5
		.talk Bloodmage Laurith##25381
		..turnin Pollen from the Source##11717
		..accept A Suitable Test Subject##11719
		.' Use the Pollinated Bloodspore Flower in your bags|use Pollinated Bloodspore Flower##34978
		..turnin A Suitable Test Subject##11719
		..accept The Invasion of Gammoth##11720
	step //50
		goto 52.2,52.8
		.talk Primal Mighthorn##25380
		..turnin The Invasion of Gammoth##11720
		..accept Gammothra the Tormentor##11721
	step //51
		'Go southwest into the cave at 49.2,58.4|n
		.' Go inside the cave|goto 49.2,58.4,0.5|noway|c
	step //52
		'Follow the path all the way down to 46.1,62.1|goto 46.1,62.1
		.' Use your Pouch of Crushed Bloodspore on Gammothra the Tormentor|use Pouch of Crushed Bloodspore##34979
		.from Gammothra the Tormentor##25789
		.get Head of Gammothra|q 11721/1
	step //53
		'Leave the cave and go southeast to 49.4,65.6|goto 49.4,65.6|n
		.' The path up to the Massive Glowing Egg starts here|goto 49.4,65.6,0.5|noway|c
	step //54
		'Follow the path up and jump down to 48.5,59.1|goto 48.5,59.1
		.' Click the Massive Glowing Egg|tip Near the top of the hill, among a bunch of moths.  You will have to jump down to it.  It looks like a big round orange egg sac thing.
		..accept Massive Moth Omelet?##11724
	step //55
		goto 52.2,52.8
		.talk Primal Mighthorn##25380
		..turnin Gammothra the Tormentor##11721
		..accept Trophies of Gammoth##11722
	step //56
		goto 52.2,52.8
		.talk Bloodmage Laurith##25381
		..turnin Massive Moth Omelet?##11724
	step //57
		goto 41.3,53.6
		.talk Garrosh Hellscream##25237
		..turnin Trophies of Gammoth##11722
	step //58
		'Go to the top of Warsong Hold to 42.3,55.7|goto 42.3,55.7
		.talk Yanni##25459
		.' Go to Garrosh's Landing|goto 32.1,54.6,1|c|noway
	step //59
		goto 32.2,54.1
		.talk Gorge the Corpsegrinder##25329
		..turnin Magic Carpet Ride##11636
		..accept Tank Ain't Gonna Fix Itself##11642
	step //60
		goto 32.1,54.3
		.talk Mobu##25475
		..turnin Tank Ain't Gonna Fix Itself##11642
		..accept Mobu's Pneumatic Tank Transjigamarig##11643
		..accept Super Strong Metal Plates!##11644
	step //61
		goto 32.3,54.3
		.talk Waltor of Pal'ea##25476
		..accept Into the Mist##11655
		..accept Horn of the Ancient Mariner##11660
	step //62
		'Go north to the top of the tower to 31.9,52.3|goto 31.9,52.3
		.talk Mootoo the Younger##25504
		..accept Escaping the Mist##11664
		.' Escort Mootoo the Younger out of the tower|goal Mootoo Saved|q 11664/1
	step //63
		goto 31.7,54.4
		.talk Elder Mootoo##25503
		..turnin Escaping the Mist##11664
	step //64
		goto 29.9,54.4
		.' Click Super Strong Metal Plates on the ground|tip They look like tan-ish metal plates half buried in the sand.
		.get 10 Super Strong Metal Plate|q 11644/1
	step //65
		goto 30.4,53.5
		.kill Kvaldir mobs|n
		.get 8 Tuskarr Relic|q 11655/1
		.kill Kvaldir Mistweavers|n
		.get Horn of the Ancient Mariner|q 11660/1
	step //66
		goto 32.4,49.1
		.' Click the Pneumatic Tank Transjigamarig|tip Inside a small house, it looks like a small metal turret thing.
		.get Pneumatic Tank Transjigamarig|q 11643/1
	step //67
		goto 32.1,54.3
		.talk Mobu##25475
		..turnin Mobu's Pneumatic Tank Transjigamarig##11643
		..turnin Super Strong Metal Plates!##11644
		..accept Tanks a lot...##11651
	step //68
		goto 32.2,54.1
		.talk Gorge the Corpsegrinder##25329
		..turnin Tanks a lot...##11651
		..accept The Plains of Nasam##11652
	step //69
		goto 32.3,54.3
		.talk Waltor of Pal'ea##25476
		..turnin Into the Mist##11655
		..accept Burn in Effigy##11656
		..turnin Horn of the Ancient Mariner##11660
		..accept Orabus the Helmsman##11661
	step //70
		goto 29.8,52.6
		.' Stand at the front of the ship
		.' Use your Tuskarr Torch|use Tuskarr Torch##34830
		.' Destroy Bor's Hammer|goal Bor's Hammer destroyed|q 11656/3
	step //71
		goto 31,49
		.' Stand at the front of the ship
		.' Use your Tuskarr Torch|use Tuskarr Torch##34830
		.' Destroy The Kur Drakkar|goal The Kur Drakkar destroyed|q 11656/2
	step //72
		goto 31.7,48.3
		.' Stand at the front of the ship
		.' Use your Tuskarr Torch|use Tuskarr Torch##34830
		.' Destroy The Serpent's Maw|goal The Serpent's Maw destroyed|q 11656/1
	step //73
		goto 26.8,54.7
		.' Stand at the very edge of the rocks
		.' Use your Horn of the Ancient Mariner|use Horn of the Ancient Mariner##34844
		.kill 1 Orabus the Helmsman|q 11661/1
	step //74
		goto 30.1,61.7
		.' Stand at the front of the ship
		.' Use your Tuskarr Torch|use Tuskarr Torch##34830
		.' Destroy Bor's Anvil|goal Bor's Anvil destroyed|q 11656/4
	step //75
		goto 32.3,54.3
		.talk Waltor of Pal'ea##25476
		..turnin Burn in Effigy##11656
		..turnin Orabus the Helmsman##11661
		..accept Seek Out Karuk!##11662
	step //76
		'Click one of the Horde Siege Tanks sitting behind you to get into one|invehicle|c
	step //77
		'Ride south to 34,61.6|goto 34,61.6|n
		.' Use the buttons on your tank action bar to do the following around this area:
		.' Ride near the big undead structure to Identify the Scourge Leader|goal Scourge Leader identified|q 11652/1
		.' Obliterate 100 Scourge Units|goal 100 Scourge Unit obliterated|q 11652/2
		.' Rescue 3 Injured Warsong Soldiers|goal 3 Injured Warsong Soldier rescued|q 11652/3
	step //78
		'Exit the tank in a safe spot and go to Warsong Hold|goto 41.3,53.6
		.talk Garrosh Hellscream##25237
		..turnin The Plains of Nasam##11652
		..accept Hellscream's Champion##11916
	step //79
		goto 41.7,54.7
		.talk Endorah##25247
		..accept Too Close For Comfort##11574
	step //80
		'Go southeast outside to 47.1,75.5|goto 47.1,75.5
		.talk Karuk##25435
		..turnin Seek Out Karuk!##11662
		..accept Karuk's Oath##11613
	step //81
		goto 46.5,77.2
		.kill 6 Skadir Raider|q 11613/1
		.kill 5 Skadir Longboatsman|q 11613/2
	step //82
		goto 44.2,77.8
		.'Kill the Riplash Myrmidon and cheering Skadir mobs
		.talk Captured Tuskarr Prisoner##25636
		..accept Cruelty of the Kvaldir##12471
	step //83
		goto 47.1,75.5
		.talk Karuk##25435
		..turnin Karuk's Oath##11613
		..accept Gamel the Cruel##11619
		..turnin Cruelty of the Kvaldir##12471
	step //84
		goto 46.4,78.2
		.' Kill Gamel the Cruel inside the cave|kill 1 Gamel the Cruel|q 11619/1|tip He's standing inside a small cave.
	step //85
		goto 47.1,75.5
		.talk Karuk##25435
		..turnin Gamel the Cruel##11619
		..accept A Father's Words##11620
	step //86
		goto 43.6,80.5
		.talk Veehja##25450
		..turnin A Father's Words##11620
		..accept The Trident of Naz'jan##11625
	step //87
		goto 54.7,89.1
		.' Go into the big building
		.from Ragnar Drakkarlund##26451
		.get Trident of Naz'jan|q 11625/1
	step //88
		goto 43.6,80.5
		.talk Veehja##25450
		..turnin The Trident of Naz'jan##11625
		..accept The Emissary##11626
	step //89
		goto 52.2,88.2
		.' Swim underwater to the bubbling rock at the very bottom|tip Stand on the bubbling rock at the very bottom underwater, so you don't run out of air.
		.' Use your Trident of Naz'jan on Leviroth|use Trident of Naz'jan##35850
		.kill 1 Leviroth|q 11626/1|tip He's a huge blue sea monster underwater.
	step //90
		goto 47.1,75.5
		.talk Karuk##25435
		..turnin The Emissary##11626
	step //91
		goto 57,44.3
		.talk Arch Druid Lathorius##25809
		..accept A Mission Statement##11864 |instant
		..accept Ears of Our Enemies##11866
		..accept Help Those That Cannot Help Themselves##11876
	step //92
		goto 57.3,44.1
		.talk Hierophant Cenius##25810
		..accept Happy as a Clam##11869
	step //93
		goto 57,44
		.talk Killinger the Den Watcher##25812
		..accept Ned, Lord of Rhinos...##11884
	step //94
		goto 56.8,44
		.talk Zaza##25811
		..accept Unfit for Death##11865
	step //95
		goto 53.8,40.6
		.' Use your D.E.H.T.A. Trap Smasher while standing next to Trapped Mammoth Calves|use D.E.H.T.A. Trap Smasher##35228|tip They look like baby elephants laying on the ground in a trap.
		.' Free 8 Mammoth Calves|goal 8 Mammoth Calf Freed|q 11876/1
	step //96
		goto 53.4,42.7
		.kill 10 Loot Crazed Diver|q 11869/1
		.kill Loot Crazed Divers|n
		.get 15 Nesingwary Lackey Ear|q 11866/1
	step //97
		goto 46.4,40
		.' Find and kill "Lunchbox"|kill "Lunchbox"|q 11884/2
		.kill Nedar, Lord of Rhinos##25801|q 11884/1|tip He walks around this area.  Kill 'Lunchbox' and then Nedar, Lord of Rhinos will jump off.
	step //98
		goto 56.2,50.5
		.' Stand inside the Caribou Traps on the ground|tip They look like metal spiked traps on the ground.
		.' Use your Pile of Fake Furs|use Pile of Fake Furs##35127
		.' Trap 8 Nesingwary Trappers|goal 8 Nesingwary Trapper Trapped|q 11865/1
	step //99
		goto 57,44.3
		.talk Arch Druid Lathorius##25809
		..turnin Ears of Our Enemies##11866
		..turnin Help Those That Cannot Help Themselves##11876
		..accept Khu'nok Will Know##11878
	step //100
		goto 57.3,44.1
		.talk Hierophant Cenius##25810
		..turnin Happy as a Clam##11869
		..accept The Abandoned Reach##11870
	step //101
		goto 57,44
		.talk Killinger the Den Watcher##25812
		..turnin Ned, Lord of Rhinos...##11884
	step //102
		goto 56.8,44
		.talk Zaza##25811
		..turnin Unfit for Death##11865
		..accept The Culler Cometh##11868
	step //103
		goto 59.5,30.4
		.talk Khu'nok the Behemoth##25862
		..turnin Khu'nok Will Know##11878
		..accept Kaw the Mammoth Destroyer##11879
	step //104
		'Ride around and find a Wooly Mammoth Bull|n
		.' Click it to ride it|invehicle|c
	step //105
		'Go north on the Wooly Mammoth Bull to 53.7,23.9|goto 53.7,23.9
		.' Use the skills on your mammoth action bar to do the following:
		.from Kaw the Mammoth Destroyer##25802
		.' Click Kaw's War Halberd on the ground
		.get Kaw's War Halberd|q 11879/1
	step //106
		goto 57,44.3
		.talk Arch Druid Lathorius##25809
		..turnin Kaw the Mammoth Destroyer##11879
	step //107
		goto 57.3,56.5
		.kill 1 Karen "I Don't Caribou" the Culler|q 11868/1|tip She walks around in this spot.  Be careful, she has 2 stealthed guards that come with her.
	step //108
		goto 57.8,55.1
		.talk Hierophant Liandra##25838
		..turnin The Abandoned Reach##11870
		..accept Not On Our Watch##11871
	step //109
		goto 59.1,55.9
		.kill Northsea Thugs|n
		.' Click the Shipment of Animal Parts containers on the ground|tip They look like brown bags and crates sitting on the ground around this area.
		.get 12 Shipment of Animal Parts|q 11871/1
	step //110
		goto 57.8,55.1
		.talk Hierophant Liandra##25838
		..turnin Not On Our Watch##11871
		..accept The Nefarious Clam Master...##11872
	step //111
		goto 61.5,66.5
		.kill 1 Clam Master K|q 11872/1|tip He's walking around underwater.
	step //112
		goto 57.3,44.1
		.talk Hierophant Cenius##25810
		..turnin The Nefarious Clam Master...##11872
	step //113
		goto 56.8,44
		.talk Zaza##25811
		..turnin The Culler Cometh##11868
	step //114
		goto 54.3,36.1
		.talk Etaruk##25292
		..accept Reclaiming the Quarry##11612
	step //115
		goto 54.7,35.8
		.talk Elder Atkanok##187565
		..accept The Honored Ancestors##11605
	step //116
		goto 54.4,35.1
		.kill 12 Beryl Treasure Hunter|q 11612/1
	step //117
		goto 52.8,34
		.' Click the Elder Sagani|tip It looks like 2 small totem pole things at the base of the big stone on the huge bone cart.
		.' Identify the Elder Sagani|goal Elder Sagani identified|q 11605/2
	step //118
		goto 52.3,31.2
		.' Click the Elder Takret|tip It looks like 2 small totem pole things at the base of the big stone on the huge bone cart.
		.' Identify the Elder Takret|goal Elder Takret identified|q 11605/3
	step //119
		goto 50.9,32.4
		.' Click the Elder Kesuk|tip It looks like 2 small totem pole things at the base of the big stone on the huge bone cart.
		.' Identify the Elder Kesuk|goal Elder Kesuk identified|q 11605/1
	step //120
		goto 54.7,35.8
		.talk Elder Atkanok##187565
		..turnin The Honored Ancestors##11605
		..accept The Lost Spirits##11607
	step //121
		goto 54.3,36.1
		.talk Etaruk##25292
		..turnin Reclaiming the Quarry##11612
		..accept Hampering Their Escape##11617
	step //122
		goto 51.5,31.4
		.kill Beryl Hounds|n
		.get 6 Cores of Malice|n
		.' Use the Cores of Malice on Kaskala Craftsmen and Kaskala Shaman|use Core of Malice##34711
		.' Free 3 Kaskala Craftsman spirits|goal 3 Kaskala Craftsman spirits freed|q 11607/1
		.' Free 3 Kaskala Shaman spirits|goal 3 Kaskala Shaman spirits freed|q 11607/2
	step //123
		'Kill Beryl Reclaimers all around this area
		.collect 3 Gnomish Grenade##34772|q 11617
	step //124
		goto 52.2,32.1
		.' Use your Gnomish Grenade while standing under the floating platform|use Gnomish Grenade##34772|tip If you can fly, you can stand on the floating platform and use your Gnomish Grenade.
		.' Destroy the North Platform|goal North Platform Destroyed|q 11617/2
	step //125
		goto 51,33.9
		.' Use your Gnomish Grenade while standing under the floating platform|use Gnomish Grenade##34772|tip If you can fly, you can stand on the floating platform and use your Gnomish Grenade.
		.' Destroy the West Platform|goal West Platform Destroyed|q 11617/3
	step //126
		goto 52.8,34.5
		.' Use your Gnomish Grenade while standing under the floating platform|use Gnomish Grenade##34772|tip If you can fly, you can stand on the floating platform and use your Gnomish Grenade.
		.' Destroy the East Platform|goal East Platform Destroyed|q 11617/1
	step //127
		goto 54.7,35.8
		.talk Elder Atkanok##187565
		..turnin The Lost Spirits##11607
		..accept Picking Up the Pieces##11609
	step //128
		goto 54.3,36.1
		.talk Etaruk##25292
		..turnin Hampering Their Escape##11617
		..accept A Visit to the Curator##11623
	step //129
		goto 53.1,33.3
		.' Click the Tuskarr Ritual Objects on the ground|tip They look like small stone fish and blue smoking bowls on the ground around this area.
		.get 6 Tuskarr Ritual Object|q 11609/1
	step //130
		'Go west up the hill to 50.1,32.6|goto 50.1,32.6
		.kill 1 Curator Insivius|q 11623/1|tip He's standing on a big blue circle platform.
	step //131
		goto 54.7,35.8
		.talk Elder Atkanok##187565
		..turnin Picking Up the Pieces##11609
		..accept Leading the Ancestors Home##11610
	step //132
		goto 54.3,36.1
		.talk Etaruk##25292
		..turnin A Visit to the Curator##11623
	step //133
		goto 52.8,34
		.' Use your Tuskarr Ritual Object while standing next to the Elder Sagani|use Tuskarr Ritual Object##34715|tip It looks like 2 small totem pole things at the base of the big stone on the huge bone cart.
		.' Complete Elder Sagani's ceremony|goal Elder Sagani's ceremony completed|q 11610/2
	step //134
		goto 52.3,31.2
		.' Use your Tuskarr Ritual Object while standing next to the Elder Takret|use Tuskarr Ritual Object##34715|tip It looks like 2 small totem pole things at the base of the big stone on the huge bone cart.
		.' Complete Elder Takret's ceremony|goal Elder Takret's ceremony completed|q 11610/3
	step //135
		goto 50.9,32.4
		.' Use your Tuskarr Ritual Object while standing next to the Elder Kesuk|use Tuskarr Ritual Object##34715|tip It looks like 2 small totem pole things at the base of the big stone on the huge bone cart.
		.' Complete Elder Kesuk's ceremony|goal Elder Kesuk's ceremony completed|q 11610/1
	step //136
		goto 54.7,35.8
		.talk Elder Atkanok##187565
		..turnin Leading the Ancestors Home##11610
	step //137
		goto 45.3,34.5
		.talk Surristrasz##24795
		..fpath Amber Ledge
	step //138
		goto 45,33.4
		.talk Librarian Donathan##25262
		..turnin Too Close For Comfort##11574
		..accept Prison Break##11587
	step //139
		goto 45,33.4
		.talk Librarian Garren##25291
		..accept Monitoring the Rift: Cleftcliff Anomaly##11576
	step //140
		goto 40.5,39.2
		.kill Beryl Mage Hunters|n
		.get Beryl Prison Key|n
		.' Click an Arcane Prison
		.' Free an Arcane Prisoner|goal Arcane Prisoners Rescued|q 11587/1
	step //141
		goto 41.2,41.8|n
		.' The path down to Monitoring the Rift: Cleftcliff Anomaly starts here|goto 41.2,41.8,0.5|noway|c
	step //142
		goto 34.3,42
		.' Use your Arcanometer in this spot next to the purple glowing crack in the ground|use Arcanometer##34669
		.' Take the Cleftcliff Anomaly Reading|goal Cleftcliff Anomaly Reading Taken|q 11576/1
	step //143
		goto 45.3,33.3
		.talk Librarian Donathan##25262
		..turnin Prison Break##11587
		..accept Abduction##11590
	step //144
		goto 45,33.4
		.talk Librarian Garren##25291
		..turnin Monitoring the Rift: Cleftcliff Anomaly##11576
		..accept Monitoring the Rift: Sundered Chasm##11582
	step //145
		goto 46.8,29.3|n
		.' The path down to Monitoring the Rift: Sundered Chasm starts here|goto 46.8,29.3,0.5|noway|c
	step //146
		'Go down the path and underwater to 44,28.6|goto 44,28.6
		.' Use your Arcanometer next to the huge pink crack underwater|use Arcanometer##34669
		.' Take the Sundered Chasm Reading|goal Sundered Chasm Reading Taken|q 11582/1
	step //147
		goto 45,33.4
		.talk Librarian Garren##25291
		..turnin Monitoring the Rift: Sundered Chasm##11582
		..accept Monitoring the Rift: Winterfin Cavern##12728
	step //148
		goto 46.8,29.3|n
		.' The path down to Monitoring the Rift: Sundered Chasm starts here|goto 46.8,29.3,0.5|noway|c
	step //149
		goto 40.1,19.7
		.' Stand in the mouth of the cave, past the torches
		.' Use your Arcanometer|use Arcanometer##34669
		.' Take the Winterfin Cavern Reading|goal Winterfin Cavern Reading Taken|q 12728/1
	step //150
		goto 45,33.4
		.talk Librarian Garren##25291
		..turnin Monitoring the Rift: Winterfin Cavern##12728
	step //151
		goto 43.5,37.4
		.' Fight a Beryl Sorcerer
		.' Use your Arcane Binder on him when you see the "Beryl Sorcerer can now be captured" message in your chat window|use Arcane Binder##34691
		.' Capture a Beryl Sorcerer|goal Captured Beryl Sorcerer|q 11590/1
	step //152
		goto 45.3,33.3
		.talk Librarian Donathan##25262
		..turnin Abduction##11590
		..accept The Borean Inquisition##11646
	step //153
		'Go inside the tall tower to 46.3,32.8|goto 46.3,32.8
		.talk Librarian Normantis##25480
		..turnin The Borean Inquisition##11646
		..accept The Art of Persuasion##11648
	step //154
		'Use your Neural Needler on the Imprisoned Beryl Sorcerer repeatedly to Interrogate the Prisoner|use Neural Needler##34811
		.' Interrogate the Prisoner|goal Prisoner Interrogated|q 11648/1
	step //155
		goto 46.3,32.8
		.talk Librarian Normantis##25480
		..turnin The Art of Persuasion##11648
		..accept Sharing Intelligence##11663
	step //156
		'Go outside the tower to 45.3,33.3|goto 45.3,33.3
		.talk Librarian Donathan##25262
		..turnin Sharing Intelligence##11663
		..accept A Race Against Time##11671
	step //157
		goto 42.1,39.5
		.' Use your Beryl Shield Detonator inside the big blue glowing circle|use Beryl Shield Detonator##34897|tip If it won't let you, wait until Inquisitor Salrand appears again.
		.kill Inquisitor Salrand|n
		.' Click Salrand's Lockbox
		.get Salrand's Broken Key|q 11671/1
	step //158
		goto 45.3,33.3
		.talk Librarian Donathan##25262
		..turnin A Race Against Time##11671
		..accept Reforging the Key##11679
	step //159
		goto 45.3,34.5
		.talk Surristrasz##24795
		..turnin Reforging the Key##11679
		..accept Taking Wing##11680
	step //160
		goto 46.4,37.3
		.talk Warmage Anzim##25356
		..turnin Taking Wing##11680
		..accept Rescuing Evanor##11681
		'Watch the cutscene, then you'll get teleported back to Amber Ledge|goto 46.4,32.6,0.3|noway|c
	step //161
		goto 46.4,32.4
		.talk Archmage Evanor##25785
		..turnin Rescuing Evanor##11681
		..accept Dragonspeak##11682
	step //162
		'Go outside the tower to 45.3,34.5|goto 45.3,34.5
		.talk Surristrasz##24795
		..turnin Dragonspeak##11682
		..accept Traversing the Rift##11733
		.' Fly to Transitus Shield|goto 33.1,34.4,0.3|c|noway
	step //163
		goto 32.9,34.4
		.talk Archmage Berinand##25314
		..turnin Traversing the Rift##11733
		..accept Reading the Meters##11900
		..accept Secrets of the Ancients##11910
	step //164
		goto 33.3,34.5
		.talk Raelorasz##26117
		..accept Basic Training##11918
	step //165
		goto 33.5,34.4
		.talk Librarian Serrah##26110
		..accept Nuts for Berries##11912
	step //166
		'As you do the following steps, do the following:
		.' Kill Glacial Ancients and get 3 Glacial Splinters|n
		.' Kill Magic-Bound Ancients and get 3 Magic-Bound Splinters|n
		.' Kill 10 Coldarra Spellweaver|n
		.' Click Frostberry Bushes
		.get 10 Frostberry|n
	step //167
		goto 32.7,29
		.kill Coldarra Spellbinders|n
		.get Scintillating Fragment|n
		.' Click the Scintillating Fragment in your bags|use Scintillating Fragment##35648
		..accept Puzzling...##11941
	step //168
		goto 28.3,28.5
		.' Click the Coldarra Geological Monitor|tip It looks like a blue sphere on the ground at the base of the building.
		.' Take the Nexus Geological Reading|goal Nexus Geological Reading|q 11900/1
	step //169
		goto 31.7,20.6
		.' Click the Coldarra Geological Monitor|tip It looks like a blue sphere on the ground in the entrance of the building.
		.' Take the Northern Coldarra Reading|goal Northern Coldarra Reading|q 11900/3
	step //170
		goto 22.6,23.5
		.' Click the Coldarra Geological Monitor|tip It looks like a blue sphere on the ground in the entrance of the building.
		.' Take the Western Coldarra Reading|goal Western Coldarra Reading|q 11900/4
	step //171
		goto 28.3,35
		.' Click the Coldarra Geological Monitor|tip It looks like a blue sphere on the ground in the entrance of the building.
		.' Take the Southern Coldarra Reading|goal Southern Coldarra Reading|q 11900/2
	step //172
		'Make sure you have:
		.' 3 Glacial Splinters|goal 3 Glacial Splinter|q 11910/1
		.' 3 Magic-Bound Splinters|goal 3 Magic-Bound Splinter|q 11910/2
		.' Killed 10 Coldarra Spellweavers|kill 10 Coldarra Spellweaver|q 11918/1
		.' 10 Frostberries|get 10 Frostberry|q 11912/1
	step //173
		goto 32.9,34.4
		.talk Archmage Berninand##25314
		..turnin Reading the Meters##11900
		..turnin Secrets of the Ancients##11910
	step //174
		goto 33.3,34.5
		.talk Raelorasz##26117
		..turnin Basic Training##11918
		..accept Hatching a Plan##11936
		..turnin Puzzling...##11941
		..accept The Cell##11943
	step //175
		goto 33.5,34.4
		.talk Librarian Serrah##26110
		..turnin Nuts for Berries##11912
		..accept Keep the Secret Safe##11914
	step //176
		'As you do the following steps:
		.kill Coldarra Wyrmkin|n
		.get 5 Frozen Axe|n
		.' Skip to the next step of the guide
	step //177
		goto 24.1,29.6
		.from Warbringer Goredrak##25712
		.get Energy Core|q 11943/1
	step //178
		goto 27.3,20.5
		.from General Cerulean##25716
		.get Prison Casing|q 11943/2
	step //179
		'Make sure you have 5 Frozen Axes|collect 5 Frozen Axe##35586|q 11936
	step //180
		goto 27.8,24.2
		.kill Arcane Serpents|n
		.get 5 Nexus Mana Essence|q 11914/1
		.' Click Blue Dragon Eggs|tip The Blue Dragon Eggs look like big eggs with blue crystals on them on the ground.
		.' Destroy 5 Dragon Eggs|goal 5 Dragon Eggs destroyed|q 11936/1
	step //181
		goto 33.3,34.5
		.talk Raelorasz##26117
		..turnin Hatching a Plan##11936
		..accept Drake Hunt##11919
		..turnin The Cell##11943
	step //182
		goto 33.5,34.4
		.talk Librarian Serrah##26110
		..turnin Keep the Secret Safe##11914
	step //183
		ding 71
	step //184
		goto 24.6,27.1|n
		.' Use your Raelorasz's Spear on a Nexus Drake Hatchling|use Raelorasz's Spear##35506|tip They are flying above you in the sky.
		.' Do not kill it, let it hit you until it becomes friendly|havebuff Drake Hatchling Subdued|c
	step //185
		goto 33.3,34.5
		.' Capture the Nexus Drake|goal Captured Nexus Drake|q 11940/1 |n
		.talk Raelsorasz##26117
		..turnin Drake Hunt##11919
		..accept Cracking the Code##11931
	step //186
		'Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
		.talk Keristrasza##26237
		..accept Keristrasza##11946
		..turnin Keristrasza##11946
		..accept Bait and Switch##11951
	step //187
		goto 32.7,29
		.kill Coldarra Spellbinders|n
		.get 3 Shimmering Rune|q 11931/1
	step //188
		goto 32.7,27.8
		.from Inquisitor Caleras##25720
		.get Azure Codex|q 11931/2
	step //189
		'Wander all around and do the following:
		.' Click Crystallized Mana on the ground|tip They look like pink crystals.
		.get 10 Crystallized Mana Shard|q 11951/1
	step //190
		'Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
		.talk Keristrasza##26237
		..turnin Bait and Switch##11951
		..accept Saragosa's End##11957
	step //191
		'Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
		.talk Keristrasza##26206
		.'Tell her you are ready to face Saragosa|goto 21.2,22.5,0.5|noway|c
	step //192
		'She teleports you to a platform
		.' Click the Arcane Power Focus in your bags|use Arcane Power Focus##35690
		.from Saragosa##26231
		.get Saragosa's Corpse|q 11957/1
	step //193
		'Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
		.talk Keristrasza##26206
		..turnin Saragosa's End##11957
		..accept Mustering the Reds##11967
	step //194
		'Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
		.talk Keristrasza##26206
		.' Tell her to return you to Transitus Shield|goto 33.3,34.4,0.5|noway|c
	step //195
		goto 33.3,34.5
		.talk Raelorasz##26117
		..turnin Cracking the Code##11931
		..turnin Mustering the Reds##11967
		..accept Springing the Trap##11969
	step //196
		goto 25.4,21.7
		.' Use Raelorasz' Spark next to the Signal Fire|use Raelorasz' Spark##44950|tip The Signal Fire looks like an unlit bonfire.
		.' Watch the cutscene
		.' Lure Malygos|goal Malygos Lured|q 11969/1
	step //197
		goto 33.3,34.5
		.talk Raelorasz##26117
		..turnin Springing the Trap##11969
	step //198
		'Fly to Warsong Hold|goto 40.4,51.5,0.5|c|noway
	step //199
		'Go downstairs to 41.7,54.7|goto 41.7,54.7
		.talk Ambassador Talonga##25978
		..accept Ride to Taunka'le Village##11888
	step //200
		goto 41.6,53.5
		.talk Sauranok the Mystic##25272
		..accept To Bor'gorok Outpost, Quickly!##12486
	step //201
		'Fly to Amber Ledge|goto 45.1,34.1,0.5|noway|c
	step //202
		goto 63.8,46.1
		.talk Ataika##26169
		..accept Not Without a Fight!##11949
	step //203
		goto 64,45.7
		.talk Utaik##26213
		..accept Preparing for the Worst##11945
	step //204
		goto 65.3,47.2
		.kill 12 Kvaldir Raider|q 11949/1
		.' Click Kaskala Supplies baskets on the ground|tip The Kaskala Supplies look like wooden baskets on the ground.
		.get 8 Kaskala Supplies|q 11945/1
	step //205
		goto 63.8,46.1
		.talk Ataika##26169
		..turnin Not Without a Fight!##11949
		..accept Muahit's Wisdom##11950
	step //206
		goto 64,45.7
		.talk Utaik##26213
		..turnin Preparing for the Worst##11945
	step //207
		goto 67.2,54.9
		.talk Elder Muahit##26218
		..turnin Muahit's Wisdom##11950
		..accept Spirits Watch Over Us##11961
	step //208
		goto 67.7,50.4
		.' Click Iruk's body|tip His body is floating underwater.
		.' Search his corpse
		.get Issliruk's Totem|q 11961/1
	step //209
		goto 67.2,54.9
		.talk Elder Muahit##26218
		..turnin Spirits Watch Over Us##11961
		..accept The Tides Turn##11968
	step //210
		goto 67.4,56.8
		.kill 1 Heigarr the Horrible|q 11968/1|tip He is fighting amongst the raiders here.
	step //211
		goto 67.2,54.9
		.talk Elder Muahit##26218
		..turnin The Tides Turn##11968
	step //212
		goto 67.2,54.9
		.talk Hotawa##28382
		..accept Travel to Moa'ki Harbor##12117
	step //213
		goto 64,35.8
		.talk Crashed Recon Pilot##25984
		..accept Emergency Supplies##11887
	step //214
		goto 62.9,35.8
		.' Click Fizzcrank Recon Pilots on the ground around this area
		.' Search their bodies for the pilot's emergency toolkit
		.get 7 Gnomish Emergency Toolkit|q 11887/1
	step //215
		goto 77.8,37.8
		.talk Omu Spiritbreeze##26847
		..fpath Taunka'le Village
	step //216
		goto 77.5,37
		.talk Fezzix Geartwist##25849
		..turnin Emergency Supplies##11887
		..accept Load 'er Up!##11881
	step //217
		goto 77.3,36.9
		.talk Greatmother Taiga##25602
		..accept Sage Highmesa is Missing##11674
	step //218
		home Taunka'le Village
	step //219
		goto 75.9,37.2
		.talk Chieftain Wintergale##24703
		..turnin Hellscream's Champion##11916
	step //220
		goto 77.1,37.8
		.talk Greatfather Mahan##24702
		..accept Scouting the Sinkholes##11684
	step //221
		goto 77.3,38.5
		.talk Sage Earth and Sky##25982
		..turnin Ride to Taunka'le Village##11888
		..accept What Are They Up To?##11890
	step //222
		goto 70.6,36.9
		.' Use your Map of the Geyser Fields next to the huge hole in the ground|use Map of the Geyser Fields##34920
		.' Mark the Location of the South Sinkhole|goal Mark Location of South Sinkhole|q 11684/1
	step //223
		goto 69.9,32.8
		.' Use your Map of the Geyser Fields next to the huge hole in the ground|use Map of the Geyser Fields##34920
		.' Mark the Location of the Northeast Sinkhole|goal Mark Location of Northeast Sinkhole|q 11684/2
	step //224
		goto 66.4,32.9
		.' Use your Map of the Geyser Fields next to the huge hole in the ground|use Map of the Geyser Fields##34920
		.' Mark the Location of the Northwest Sinkhole|goal Mark Location of Northwest Sinkhole|q 11684/3
	step //225
		goto 63.5,37
		.' Use Jenny's Whistle next to this crashed airplane|use Jenny's Whistle##35272
		.' Escort Jenny back to Fezzix Geartwist at 77.5,37|goal Return Jenny to safety without losing cargo|q 11881/1
	step //226
		goto 77.5,37
		.talk Fezzix Geartwist##25849
		..turnin Load 'er Up!##11881
	step //227
		goto 77.6,36.9
		.talk Dorain Frosthoof##25983
		..accept The Power of the Elements##11893
	step //228
		goto 77.1,37.8
		.talk Greatfather Mahan##24702
		..turnin Scouting the Sinkholes##11684
		..accept The Heart of the Elements##11685
	step //229
		goto 75.5,33.6
		.' Use your Windsoul Totem to plant a Windsoul Totem in the ground|use Windsoul Totem##35281
		.kill Steam Ragers near the Totem|n
		.' Collect 10 Energy|goal 10 Energy collected|q 11893/1
	step //230
		goto 74.7,23.7
		.talk Sage Highmesa##25604
		..turnin Sage Highmesa is Missing##11674
		..accept A Proper Death##11675
	step //231
		goto 75.2,18.7
		.kill 10 Plagued Magnataur|q 11675/1
	step //232
		goto 74.7,23.7
		.talk Sage Highmesa##25604
		..turnin A Proper Death##11675
		..accept Stop the Plague##11677
	step //233
		goto 74.7,14.1
		.' Use Highmesa's Cleansing Seeds next to the Den of Dying Plague Cauldron|use Highmesa's Cleansing Seeds##34913|tip It looks like a big pot inside the cave.
		.' Neutralize the Plague Cauldron|goal Plague Cauldron neutralized|q 11677/1
	step //234
		goto 74.7,23.7
		.talk Sage Highmesa##25604
		..turnin Stop the Plague##11677
		..accept Find Bristlehorn##11678
		..accept Fallen Necropolis##11683
	step //235
		goto 68.2,17
		.kill Undead mobs|n
		.' Destroy 20 Talramas Scourge|goal 20 Talramas Scourge Destroyed|q 11683/1
	step //236
		'Go inside the undead building and upstairs to 69.8,12.6|goto 69.8,12.6
		.talk Longrunner Bristlehorn##25658
		..turnin Find Bristlehorn##11678
		..accept The Doctor and the Lich-Lord##11687
	step //237
		'Go outside and follow the path to the top of the building to 69.7,13.1|goto 69.7,13.1
		.kill 1 Doctor Razorgrin|q 11687/1|tip He walks around in a side room almost at the top of the undead building.
	step //238
		'Go to the very top of the building to 69.7,13.9|goto 69.7,13.9
		.kill 1 Lich-Lord Chillwinter|q 11687/2|tip Standing at the very top of the undead building.
	step //239
		goto 74.7,23.7
		.talk Sage Highmesa##25604
		..turnin The Doctor and the Lich-Lord##11687
		..accept Return with the Bad News##11689
		..turnin Fallen Necropolis##11683
	step //240
		goto 66.2,21.9
		.' Inspect the Fizzcrank Pumping Station environs|goal Fizzcrank Pumping Station environs inspected.|q 11890/1
	step //241
		'Hearth to Taunka'le Village|goto 76.3,37.2,0.5|use hearthstone##6948|noway|c
	step //242
		goto 77.3,36.9
		.talk Greatmother Taiga##25602
		..turnin Return with the Bad News##11689
	step //243
		goto 77.6,36.9
		.talk Dorain Frosthoof##25983
		..turnin The Power of the Elements##11893
	step //244
		goto 77.5,37
		.talk Fezzix Geartwist##25849
		..accept Patching Up##11894
	step //245
		goto 77.3,38.5
		.talk Sage Earth and Sky##25982
		..turnin What Are They Up To?##11890
		..accept Master the Storm##11895
	step //246
		goto 77.1,38.7
		.' Click the Storm Totem
		.from Storm Tempest##26045
		.' Master the Storm|goal Storm mastered|q 11895/1
	step //247
		goto 77.3,38.5
		.talk Sage Earth and Sky##25982
		..turnin Master the Storm##11895
		..accept Weakness to Lightning##11896
	step //248
		goto 76.9,37.6
		.talk Iron Eyes##26104
		..accept Cleaning Up the Pools##11906
	step //249
		goto 77.3,36.9
		.talk Greatmother Taiga##25602
		..accept Souls of the Decursed##11899
	step //250
		goto 76.5,40.7
		.kill Marsh Caribous|n
		.collect 5 Uncured Caribou Hide##35288|q 11894
	step //251
		goto 87.7,42.5
		.kill Frozen Elementals|n
		.get 5 Elemental Heart|q 11685/1
	step //252
		goto 75.6,35.8
		.talk Wind Tamer Barah##24730
		..turnin The Heart of the Elements##11685
		..accept The Horn of Elemental Fury##11695
	step //253
		goto 75.8,32.5
		.' Click the Uncured Caribou Hides in your bags next to the small steam vent|use Uncured Caribou Hide##35288|tip It looks like a small white bump on the ground with steam coming out of it.
		.get 5 Steam Cured Hide|q 11894/1
	step //254
		goto 78.7,28.4
		.from Chieftain Gurgleboggle##25725
		.get Gurbleboggle's Key|n
		.' Click Gurbleboggle's Bauble|tip Gurbleboggle's Bauble looks like a small stone altar in this small pond with a big white pearl sitting on it.
		.get Lower Horn Half|q 11695/2
	step //255
		goto 77.5,37
		.talk Fezzix Geartwist##25849
		..turnin Patching Up##11894
	step //256
		goto 75.9,37.2
		.talk Chieftain Wintergale##24703
		..accept Shrouds of the Scourge##11628
	step //257
		goto 82.2,30.4
		.kill Scourged Mammoths|n
		.get 5 Scourged Mammoth Pelt|q 11628/1
	step //258
		goto 75.9,37.2
		.talk Chieftain Wintergale##24703
		..turnin Shrouds of the Scourge##11628
		..accept The Bad Earth##11630
	step //259
		goto 76.1,28
		.' Click the Scourged Earth|tip They look like piles of dirt on the ground.
		.get 8 Scourged Earth|q 11630/1
	step //260
		goto 75.9,37.2
		.talk Chieftain Wintergale##24703
		..turnin The Bad Earth##11630
		..accept Blending In##11633
	step //261
		goto 84.1,31.1,1
		.' Equip the Imbued Scourge Shroud in your bags|havebuff Shroud of the Scourge|use Imbued Scourge Shroud##34782
	step //262
		goto 88.9,28.6
		.' Scout the Spire of Pain|goal Spire of Pain Scouted|q 11633/3|tip Go up the staircase into this room to Scout the Spire of Pain.
	step //263
		goto 88.11,20.9
		.' Scout the Spire of Blood|goal Spire of Blood Scouted|q 11633/2|tip Go all the way up the staircase into this room to Scout the Spire of Blood.
	step //264
		goto 83.91,20.5
		.' Scout the Spire of Decay|goal Spire of Decay Scouted|q 11633/1|tip Go up the staircase into this room to Scout the Spire of Decay.
	step //265
		goto 75.9,37.2
		.talk Chieftain Wintergale##24703
		..turnin Blending In##11633
		..accept Words of Power##11640
	step //266
		goto 76,37.3
		.talk Sage Aeire##24709
		..accept Neutralizing the Cauldrons##11647
		.talk Durm Icehide##24706
		..accept A Courageous Strike##11641
	step //267
		goto 68.6,40.4
		.from Chieftain Burblegobble##25726
		.get Burblegobble's Key|n
		.' Click Burblegobble's Bauble|tip Burblegobble's Bauble looks like a small stone altar in this small pond with a big white pearl sitting on it.
		.get Upper Horn Half|q 11695/1
	step //268
		'Click Fizzcrank Spare Parts on the ground as you do the following steps:|tip They look like metal parts on the ground.
		.get 15 Fizzcrank Spare Parts|n
		.' Skip to the next step of the guide
	step //269
		goto 68.1,27.5
		.' Use Sage's Lightning Rod on robots and kill them|use Sage's Lightning Rod##35352
		.' Weaken and destroy 15 Robots|goal 15 Robots weakened and destroyed|q 11896/1
	step //270
		goto 64.6,23.6
		.kill Fizzcrank Mechagnomes|n
		.' Use The Greatmother's Soulcatcher on their bodies|use The Greatmother's Soulcatcher##35401
		.' Capture 10 Gnome souls|goal 10 Gnome soul captured|q 11899/1
	step //271
		'Make sure you have 15 Fizzcrank Spare Parts|goal 15 Fizzcrank Spare Parts|q 11906/1
	step //272
		'Hearth to Taunka'le Village|goto 76.3,37.2,0.5|use hearthstone##6948|noway|c
	step //273
		goto 76.9,37.6
		.talk Iron Eyes##26104
		..turnin Cleaning Up the Pools##11906
	step //274
		goto 77.3,38.5
		.talk Sage Earth and Sky##25982
		..turnin Weakness to Lightning##11896
		..accept The Sub-Chieftains##11907
	step //275
		goto 77.3,36.9
		.talk Greatmother Taiga##25602
		..turnin Souls of the Decursed##11899
		..accept Defeat the Gearmaster##11909
	step //276
		goto 75.6,35.8
		.talk Wind Tamer Barah##24730
		..turnin The Horn of Elemental Fury##11695
		..accept The Collapse##11706
	step //277
		goto 85.2,28.5
		.kill 15 En'kilah Ghoul|q 11641/1
		.kill 5 En'kilah Necromancer|q 11641/2
	step //278
		goto 89.4,28.9
		.' Kill the 2 bug guards and the 2 cocoons next to him
		.from High Priest Talet-Kha##26073
		.get High Priest Talet-Kha's Scroll|q 11640/2
	step //279
		goto 87.7,29.8
		.' Use Sage Aeire's Totem next to this big cauldron|use Sage Aeire's Totem##34806
		.' Cleanse the East Cauldron|goal East Cauldron Cleansed|q 11647/1
	step //280
		goto 88.1,20.9
		.from High Priest Andorath##25392
		.get High Priest Andorath's Scroll|q 11640/3
	step //281
		goto 86.2,22.7
		.' Use Sage Aeire's Totem next to this big cauldron|use Sage Aeire's Totem##34806
		.' Cleanse the Central Cauldron|goal Central Cauldron Cleansed|q 11647/2
	step //282
		goto 83.9,20.5
		.kill the 3 guards|n
		.from High Priest Naferset##26076
		.get High Priest Naferset's Scroll|q 11640/1
	step //283
		goto 85.5,20.2
		.' Use Sage Aeire's Totem next to this big cauldron|use Sage Aeire's Totem##34806
		.' Cleanse the West Cauldron|goal West Cauldron Cleansed|q 11647/3
	step //284
		goto 87.7,22.0
		'Find and Kill Darkfallen Bloodbearer|tip He walks up and down the path to the biggest temple.
		.get Vial of Fresh Blood|n
		.' Click the Vial of Fresh Blood|use Vial of Fresh Blood##34815
		..accept The Spire of Blood##11654
	step //285
		'Go inside the big temple to 87.6,20|goto 87.6,20
		.talk Snow Tracker Grumm##25516
		..turnin The Spire of Blood##11654
		..accept Shatter the Orbs!##11659
	step //286
		'Walk around on this floor:
		.' Attack En'Kilah Blood Globes|tip They look like red globes sitting on golden pedestals.
		.' Shatter 5 Blood Globes|goal 5 Blood Globes Shattered|q 11659/1
	step //287
		goto 76.7,37.9
		.talk Snow Tracker Junek##24733
		..turnin Shatter the Orbs!##11659
	step //288
		goto 76,37.3
		.talk Sage Aeire##24709
		..turnin Neutralizing the Cauldrons##11647
	step //289
		goto 76,37.3
		.talk Durm Icehide##24706
		..turnin A Courageous Strike##11641
	step //290
		goto 75.9,37.2
		.talk Chieftain Wintergale##24703
		..turnin Words of Power##11640
	step //291
		goto 70.6,36.9
		.' Stand next to the sinkhole|tip It's a huge hole in the ground.
		.' Use The Horn of Elemental Fury in your bags|use The Horn of Elemental Fury##34968
		..' Collapse the Nerubian tunnels|goal Nerubian tunnels collapsed|q 11706/2
		.' Wait for Lord Kryxix that spawns
		.kill Lord Kryxix|q 11706/1
	step //292
		goto 65.2,28.8
		.' Click the South Point Station Valve|tip It looks like a red round handle on the side of the metal pipe.
		.kill 1 The Grinder|q 11907/4
	step //293
		'Go north on top of the pump station to 64.4,23.4|goto 64.4,23.4
		.' Click The Gearmaster's Manual|goal The Gearmaster's Manual researched|q 11909/1|tip It looks like a big closed book on the table in a small room at the very top of the pump station.
		.from Gearmaster Mechazod##25834
		.get Mechazod's Head|q 11909/2
	step //294
		goto 63.7,22.5
		.' Click the Mid Point Station Valve|tip It looks like a red round handle on the side of the metal pipe.
		.kill 1 Max Blasto|q 11907/3
	step //295
		goto 60.2,20.4
		.' Click the West Point Station Valve|tip It looks like a red round handle on the side of the metal pipe.
		.kill 1 Twonky|q 11907/1
	step //296
		goto 65.4,17.4
		.' Click the North Point Station Valve|tip It looks like a red round handle on the side of the metal pipe.
		.kill 1 ED-210|q 11907/2
	step //297
		'Hearth to Taunka'le Village|goto 76.3,37.2,0.5|use hearthstone##6948|noway|c
	step //298
		goto 75.6,35.8
		.talk Wind Tamer Barah##24730
		..turnin The Collapse##11706
	step //299
		goto 77.3,36.9
		.talk Greatmother Taiga##25602
		..turnin Defeat the Gearmaster##11909
	step //300
		goto 77.3,38.5
		.talk Sage Earth and Sky##25982
		..turnin The Sub-Chieftains##11907
	step //301
		'Fly to Amber Ledge|goto 45.1,34.1,0.5|noway|c
	step //302
		goto 48.4,19.7
		.talk Grunt Ragefist##25336
		..accept The Honored Dead##11593
		..accept Put Them to Rest##11594
	step //303
		goto 47.9,21.3
		.' Use Ragefist's Torch on Dead Caravan Guards and Workers|use Ragefist's Torch##34692|tip The Dead Caravan Guards and Workers are corpses laying on the ground around this area.
		.' Torch 10 Fallen Caravan Guards & Workers|goal 10 Fallen Caravan Guards & Workers Torched|q 11593/1
		.kill Ghostly Sages and Risen Longrunners|n
		.' Lay 20 Taunka spirits to rest|goal 20 Taunka spirits laid to rest|q 11594/1
	step //304
		goto 48.4,19.7
		.talk Grunt Ragefist##25336
		..turnin The Honored Dead##11593
		..turnin Put Them to Rest##11594
	step //305
		goto 48.3,19.7
		.talk Longrunner Proudhoof##25335
		..accept We Strike!##11592
	step //306
		'Follow and fight with Longrunner Proudhoof
		.' Make sure to keep him alive
		.' Successfully assist Longrunner Proudhoof's assault|goal Successfully assisted Longrunner Proudhoof's assault.|q 11592/1
	step //307
		goto 43.5,14
		.talk King Mrgl-Mrgl##25197
		..accept Learning to Communicate##11571
	step //308
		'Go southwest underwater to 42.5,15.9|goto 42.5,15.9
		.kill Scalder|n|tip He is a water elemental that walks back and forth on the pink trench underwater.
		.' Use The King's Empty Conch on Scalder's corpse|use The King's Empty Conch##34598
		.get The King's Filled Conch|q 11571/1
	step //309
		goto 43.5,14
		.talk King Mrgl-Mrgl##25197
		..turnin Learning to Communicate##11571
		..accept Winterfin Commerce##11559
	step //310
		goto 41.5,13.4
		.' Click Winterfin Clams underwater|tip They look like small tanish clams on the ground underwater.
		.get 5 Winterfin Clam|q 11559/1
	step //311
		goto 43,13.8
		.talk Ahlurglgr##25206
		..turnin Winterfin Commerce##11559
	step //312
		goto 42.8,13.7
		.talk Brglmurgl##25199
		..accept Them!##11561
	step //313
		goto 43.5,14
		.talk King Mrgl-Mrgl##25197
		..accept Oh Noes, the Tadpoles!##11560
	step //314
		goto 40.6,17.5
		.kill 15 Winterfin murlocs|q 11561/1
		.' Click the yellow cages
		.' Rescue 20 Winterfin Tadpoles|goal 20 Winterfin Tadpole rescued|q 11560/1
	step //315
		goto 42.8,13.7
		.talk Brglmurgl##25199
		..turnin Them!##11561
	step //316
		goto 43.5,14
		.talk King Mrgl-Mrgl##25197
		..turnin Oh Noes, the Tadpoles!##11560
		..accept I'm Being Blackmailed By My Cleaner##11562
	step //317
		goto 42,12.8
		.talk Mrmrglmr##25205
		..turnin I'm Being Blackmailed By My Cleaner##11562
		..accept Grmmurggll Mrllggrl Glrggl!!!##11563
	step //318
		goto 42,13.2
		.talk Cleaver Bmurglbrm##25211
		..accept Succulent Orca Stew##11564
	step //319
		goto 40.3,12.4
		.kill Glimmer Bay Orcas|n
		.get 7 Succulent Orca Blubber|q 11564/1
	step //320
		goto 37.4,9.8
		.from Glrggl##25203
		.get Glrggl's Head|q 11563/1
	step //321
		goto 42,12.8
		.talk Mrmrglmr##25205
		..turnin Grmmurggll Mrllggrl Glrggl!!!##11563
		..accept The Spare Suit##11565
	step //322
		goto 42,13.2
		.talk Cleaver Bmurglbrm##25211
		..turnin Succulent Orca Stew##11564
	step //323
		goto 43.5,14
		.talk King Mrgl-Mrgl##25197
		..turnin The Spare Suit##11565
		..accept Surrender... Not!##11566
	step //324
		'Go southwest to Winterfin Village|n
		.' Use King Mrgl-Mrgl's Spare Suit|havebuff INV_Misc_Head_Murloc_01|use King Mrgl-Mrgl's Spare Suit##34620
	step //325
		'Go inside the cave to 37.8,23.2|goto 37.8,23.2
		.talk Glrglrglr##28375
		..accept Keymaster Urmgrgl##11569
	step //326
		'Go down the path and underneath you to 38.4,22.7|goto 38.4,22.7
		.from Keymaster Urmgrgl##25210
		.get Urmgrgl's Key|q 11569/1
	step //327
		'Follow the path up and to the back of the cave to 37.6,27.4|goto 37.6,27.4
		.from Claximus##25209
		.get Claw of Claximus|q 11566/1
	step //328
		'Go back up the path to 37.8,23.2|goto 37.8,23.2
		.talk Glrglrglr##28375
		..turnin Keymaster Urmgrgl##11569
	step //329
		goto 37.8,23
		.talk Lurgglbr##25208
		..accept Escape from the Winterfin Caverns##11570
		.' Escort Lurgglbr to safety|goal Escort Lurgglbr to safety|q 11570/1
	step //330
		goto 43.5,14
		.talk King Mrgl-Mrgl##25197
		..turnin Surrender... Not!##11566
		..turnin Escape from the Winterfin Caverns##11570
	step //331
		goto 49.6,11.1
		.talk Kimbiza##26848
		..fpath Bor'gorok Outpost
	step //332
		goto 49.6,10.6
		.talk Overlord Bor'gorok##25326
		..turnin We Strike!##11592
	step //333
		goto 50.3,9.7
		.talk Spirit Talker Snarlfang##25339
		..turnin To Bor'gorok Outpost, Quickly!##12486
		..accept The Sky Will Know##11624
	step //334
		goto 46.6,9.3
		.talk Imperean##25376
		..turnin The Sky Will Know##11624
		..accept Boiling Point##11627
	step //335
		goto 45.9,13.1
		.' Fight Churn until he submits|goal Churn has submitted|q 11627/2|tip He's a big water elemental.
	step //336
		goto 50.8,15.5
		.' Fight Simmer until he submits|goal Simmer has submitted|q 11627/1|tip He's a big fire elemental.
	step //337
		goto 46.6,9.3
		.talk Imperean##25376
		..turnin Boiling Point##11627
		..accept Motes of the Enraged##11649
	step //338
		goto 45.2,9.3
		.kill Enraged Tempests|n
		.get 5 Tempest Mote|q 11649/1
	step //339
		goto 46.6,9.3
		.talk Imperean##25376
		..turnin Motes of the Enraged##11649
		..accept Return to the Spirit Talker##11629
	step //340
		goto 50.3,9.7
		.talk Spirit Talker Snarlfang##25339
		..turnin Return to the Spirit Talker##11629
		..accept Vision of Air##11631
	step //341
		'Use Imperean's Primal in your bags next to Spirit Talker Snarlfang's Totem|use Imperean's Primal##34779
		.' Divine Farseer Grimwalker's fate|goal Farseer Grimwalker's fate divined|q 11631/1
	step //342
		goto 50.3,9.7
		.talk Spirit Talker Snarlfang##25339
		..turnin Vision of Air##11631
		..accept Farseer Grimwalker's Spirit##11635
	step //343
		goto 49.5,10
		.talk Ortrosh##25374
		..accept Revenge Upon Magmoth##11639
	step //344
		goto 53.8,9.4
		.kill 10 Magmoth Shaman|q 11639/1
		.kill 5 Magmoth Forager|q 11639/2
		.kill 3 Magmoth Crusher|q 11639/3
	step //345
		goto 54.2,13.1
		.'Kill 3 Mate of Magmothregar inside this cave|kill 3 Mate of Magmothregar|q 11639/4
	step //346
		'Go to the bottom of the cave to 56.1,9.1|goto 56.1,9.1
		.talk Farseer Grimwalker's Spirit##25425
		..turnin Farseer Grimwalker's Spirit##11635
		..accept Kaganishu##11637
	step //347
		goto 56.2,12.8
		.from Kaganishu##25427
		.get Kaganishu's Fetish|q 11637/2
	step //348
		goto 56.1,9.1
		.' Use Kaganishu's Fetish on Farseer Grimwalker's Spirit|use Kaganishu's Fetish##34781
		.talk Farseer Grimwalker's Spirit##25425
		..turnin Kaganishu##11637
		..accept Return My Remains##11638
		.' Click Farseer Grimwalker's Remains on the ground that you're standing on
		.get Farseer Grimwalker's Remains|q 11638/1
	step //349
		'Leave the cave and go to 49.5,10|goto 49.5,10
		.talk Ortrosh##25374
		..turnin Revenge Upon Magmoth##11639
	step //350
		goto 50.3,9.7
		.talk Spirit Talker Snarlfang##25339
		..turnin Return My Remains##11638
	step //351
		'Fly to Warsong Hold|goto 40.4,51.5,0.5|noway|c
	step //352
		goto 41.4,53.7|n
		'Ride the zeppelin to Orgrimmar|goto Durotar|noway|c
	step //353
		goto Durotar,50.8,13.8|n
		'Ride the zeppelin to Undercity|goto Tirisfal Glades|noway|c
	step //354
		goto Tirisfal Glades,59.1,59.0|n
		'Ride the zeppelin to Howling Fjord|goto Howling Fjord|noway|c
	step //355
		'Go down the zeppelin tower to 78.5,29|goto Howling Fjord,78.5,29
		.talk Apothecary Lysander##24126
		..accept The New Plague##11167
	step //356
		goto 79,29.7
		.talk Bat Handler Adeline##27344
		..fpath Vengeance Landing
	step //357
		home Vengeance Landing
	step //358
		goto 79.2,31.2
		.talk Pontius##23938
		..accept Let Them Eat Crow##11227
	step //359
		goto 78.6,31.2
		.talk High Executor Anselm##23780
		..accept War is Hell##11270
	step //360
		goto 75.8,31.5
		.' Use your Burning Torch on Alliance and Forsaken Corpses|use Burning Torch##33278
		.' Burn 10 Fallen Combatants|goal 10 Fallen Combatant burned|q 11270/1
		.' Use your Plaguehound Cage|use Plaguehound Cage##33221
		.kill Fjord Crows|n|tip The Fjord Crows are flying overhead around this area.
		.collect 5 Crow Meat##33238|q 11227 |n
		.' Click the Crow Meat in your bags|use Crow Meat##33238
		.' Feed your Plaguehound 5 times|goal 5 Plaguehound Fed|q 11227/1
	step //361
		goto 81,35.5
		.' Click the Plague Containers|tip They look like barrels with green stripes on the middle of them.  They are on this ship and on the beach.
		.get 10 Intact Plague Container|q 11167/1
	step //362
		goto 78.6,31.2
		.talk High Executor Anselm##23780
		..turnin War is Hell##11270
		..accept Reports from the Field##11221
	step //363
		goto 79.2,31.2
		.talk Pontius##23938
		..turnin Let Them Eat Crow##11227
		..accept Sniff Out the Enemy##11253
	step //364
		goto 78.5,29
		.talk Apothecary Lysander##24126
		..turnin The New Plague##11167
		..accept Spiking the Mix##11168
	step //365
		ding 72
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Northrend (72-74)",[[
	author support@zygorguides.com
	next Zygor's Horde Leveling Guides\\Northrend (74-76)
	startlevel 72
	step //1
		goto Howling Fjord,77.6,34.7
		.talk Deathstalker Razael##23998
		.' Listen to Razael's Report|goal Listen to Razael's Report|q 11221/1
	step //2
		goto 79.5,36.2
		.talk Dark Ranger Lyana##23778
		.' Listen to Lyana's Report|goal Listen to Lyana's Report|q 11221/2
	step //3
		goto 78.6,31.2
		.talk High Executor Anselm##23780
		..turnin Reports from the Field##11221
		..accept The Windrunner Fleet##11229
	step //4
		goto 79.2,31.2
		.' Stand next to Pontius|tip Standing in front of some dog kennels.
		.' Use the Plaguehound Leash in your bags|use Plaguehound Leash##33486
		.' Follow the Plaguehound Tracker that spawns
		.' He leads you to a cave|goto 76.5,20.1,0.5|c
	step //5
		'Go inside the cave to 75.9,19.7|goto 75.9,19.7
		.' Click the Dragonskin Scroll|tip It looks like a opened scroll laying on the ground, next to a bubbling cauldron.
		..turnin Sniff Out the Enemy##11253
		..accept The Dragonskin Map##11254
	step //6
		'Go outside the cave to 76.9,20|goto 76.9,20
		.kill Giant Tidecrawlers|n
		.get 3 Giant Toxin Gland|q 11168/1
	step //7
		goto 78.5,29
		.talk Apothecary Lysander##24126
		..turnin Spiking the Mix##11168
		..accept Test at Sea##11170
	step //8
		goto 78.6,31.2
		.talk High Executor Anselm##23780
		..turnin The Dragonskin Map##11254
		..accept The Offensive Begins##11295
	step //9
		goto 79.1,29.8
		.talk Bat Handler Camille##23816
		.' Tell her you want to intercept the Alliance reinforcements
		.' Use the Plague Vials in your bags while flying over the Alliance ships|use Plague Vials##33349
		.' Infect 16 North Fleet Reservists|goal 16 North Fleet Reservist Infected|q 11170/1
	step //10
		goto 78.5,29
		.talk Apothecary Lysander##24126
		..turnin Test at Sea##11170
		..accept New Agamand##11304
	step //11
		goto 79.1,29.8
		.talk Bat Handler Camille##23816
		.' Fly to the Windrunner|goto 84.6,36.3,0.5|noway|c
	step //12
		goto 84.7,36.5
		.talk Captain Harker##24037
		..turnin The Windrunner Fleet##11229
		..accept Ambushed!##11230
	step //13
		'Run around on this ship
		.kill 15 North Fleet Marine|q 11230/1
	step //14
		goto 84.7,36.5
		.talk Captain Harker##24037
		..turnin Ambushed!##11230
		..accept Guide Our Sights##11232
	step //15
		goto 80.3,38.2
		.' Use Cannoneer's Smoke Flare next to the cannon|use Cannoneer's Smoke Flare##33335|tip It's a cannon on top of the wooden wall.
		.' Mark the Eastern Cannon|goal Eastern Cannon Marked|q 11232/1
	step //16
		goto 79.3,40.1
		.' Use Cannoneer's Smoke Flare next to the cannon|use Cannoneer's Smoke Flare##33335|tip It's a cannon on top of the wooden wall.
		.' Mark the Western Cannon|goal Western Cannon Marked|q 11232/2
	step //17
		goto 79.5,36.2
		.talk Dark Ranger Lyana##23778
		..turnin Guide Our Sights##11232
		..accept Landing the Killing Blow##11233
	step //18
		goto 82.2,40.8
		.kill 1 Sergeant Lorric|q 11233/3|tip He's standing between 2 cannons on the shore.
	step //19
		goto 81.5,43.4
		.kill 1 Captain Olster|q 11233/1|tip Standing in front of a tent.
	step //20
		goto 83.2,43.3
		.kill 1 Lieutenant Celeyne|q 11233/2|tip Standing on a big flat rock on the shore.
	step //21
		goto 83.2,43.2
		.talk Apothecary Hanes##23784
		..accept Trail of Fire##11241
		.' Escort Apothecary Hanes to safety|goal Rescue Apothecary Hanes|q 11241/1
	step //22
		goto 79.5,36.2
		.talk Dark Ranger Lyana##23778
		..turnin Landing the Killing Blow##11233
		..accept Report to Anselm##11234
	step //23
		goto 78.6,31.2
		.talk High Executor Anselm##23780
		..turnin Report to Anselm##11234
	step //24
		goto 78.5,29
		.talk Apothecary Lysander##24126
		..turnin Trail of Fire##11241
	step //25
		'Go southwest up the huge lift to 71.1,39.1|goto 71.1,39.1
		.talk Sergeant Gorth##24027
		..turnin The Offensive Begins##11295
		..accept A Lesson in Fear##11282
	step //26
		goto 71.5,39.2
		.talk Longrunner Nanik##28314
		..accept Help for Camp Winterhoof##12566
	step //27
		goto 69.1,38.5
		.kill Winterskorn Defenders close around this area|n
		.' Oric the Baleful will spawn here|tip You will see them yell in red text in your chat.
		.kill Oric the Baleful|n
		.' Use your Forsaken Banner on his corpse|use Forsaken Banner##33563
		.' Impale Oric the Baleful|goal Oric the Baleful's Corpse Impaled|q 11282/1
	step //28
		goto 69.6,40.1
		.kill Winterskorn Defenders close around this area|n
		.' Gunnar Thorvardsson will spawn here|tip You will see them yell in red text in your chat.
		.kill Gunnar Thorvardsson|n
		.' Use your Forsaken Banner on his corpse|use Forsaken Banner##33563
		.' Impale Gunnar Thorvardsson|goal Gunnar Thorvardsson's Corpse Impaled|q 11282/3
	step //29
		goto 69.4,39.5
		.kill Winterskorn Defenders close around this area|n
		.' Ulf the Bloodletter will spawn here|tip You will see them yell in red text in your chat.
		.kill Ulf the Bloodletter|n
		.' Use your Forsaken Banner on his corpse|use Forsaken Banner##33563
		.' Impale Ulf the Bloodletter|goal Ulf the Bloodletter's Corpse Impaled|q 11282/2
	step //30
		goto 71.1,39.1
		.talk Sergeant Gorth##24027
		..turnin A Lesson in Fear##11282
		..accept Baleheim Must Burn!##11285
		..accept Baleheim Bodycount##11283
	step //31
		goto 66.7,39.8
		.' Use Gorth's Torch while standing next to this tower|use Gorth's Torch##33472
		.' Burn the Winterskorn Watchtower|goal Winterskorn Watchtower Burned|q 11285/2
	step //32
		goto 66.2,39.6
		.' Use Gorth's Torch while standing next to this bridge|use Gorth's Torch##33472
		.' Burn the Winterskorn Bridge|goal Winterskorn Bridge Burned|q 11285/3
	step //33
		goto 63.8,40
		.' Use Gorth's Torch while standing next to this building|use Gorth's Torch##33472
		.' Burn the Winterskorn Barracks|goal Winterskorn Barracks Burned|q 11285/4
	step //34
		goto 64.9,40.9
		.' Use Gorth's Torch while standing next to this building|use Gorth's Torch##33472
		.' Burn the Winterskorn Dwelling|goal Winterskorn Dwelling Burned|q 11285/1
	step //35
		'Kill Winterskorn Vrykuls all around this town
		.get Baleheim Bodycount to 16|goal 16 Baleheim Bodycount|q 11283/1
	step //36
		goto 71.1,39.1
		.talk Sergeant Gorth##24027
		..turnin Baleheim Bodycount##11283
		..turnin Baleheim Must Burn!##11285
		..accept The Ambush##11303
	step //37
		goto 65.9,36.8
		.talk Lydell##24458
		..turnin The Ambush##11303
		..accept Adding Injury to Insult##12481
	step //38
		goto 64.2,38.8
		.' Use your Vrykul Insult on Bjorn Halgurdsson|use Vrykul Insult##33581|tip He's on a big red dragon, if he's not there, just wait a minute.
		.' Insult Bjorn Halgurdsson|goal Bjorn Halgurdsson insulted|q 12481/1
	step //39
		goto 65.9,36.8
		.' RUN BACK TO LYDELL|tip Next to a huge cart.
		.' Defeat Bjorn Halgurdsson|goal Bjorn Halgurdsson defeated|q 12481/2
	step //40
		goto 65.9,36.8
		.talk Lydell##24458
		..turnin Adding Injury to Insult##12481
	step //41
		goto 67.4,60.6
		.talk Ranger Captain Areiel##27922
		..accept Against Nifflevar##12482
	step //42
		goto 67.3,60.3
		.talk Scribe Seguine##24548
		..accept The Enemy's Legacy##11423
	step //43
		goto 69.6,57.1
		.kill 5 Dragonflayer Warrior|q 12482/1
		.kill 4 Dragonflayer Rune-Seer|q 12482/2
		.kill 4 Dragonflayer Hunting Hound|q 12482/3
	step //44
		goto 67.4,57.2
		.' Click the Saga of the Val'kyr|tip It's a scroll inside this building, sitting on the floor on a red rug.
		.get Saga of the Val'kyr|q 11423/2
	step //45
		goto 68.9,52.6
		.' Click the Saga of the Winter Curse|tip It's a scroll inside this building, sitting on the floor in the back of the room next to the wall.
		.get Saga of the Winter Curse|q 11423/3
	step //46
		goto 64.7,53.6
		.' Click the Saga of the Twins|tip It's a scroll inside this building, on the top floor, in the very back next to the wall.
		.get Saga of the Twins|q 11423/1
	step //47
		goto 67.4,60.6
		.talk Ranger Captain Areiel##27922
		..turnin Against Nifflevar##12482
	step //48
		goto 67.3,60.3
		.talk Scribe Seguine##24548
		..turnin The Enemy's Legacy##11423
	step //49
		goto 53.6,66.4
		.talk Chief Plaguebringer Harris##24251
		..turnin New Agamand##11304
		..accept A Tailor-Made Formula##11305
	step //50
		goto 53.7,65.2
		.talk "Hacksaw" Jenny##24252
		..accept Shield Hill##11424
	step //51
		goto 53.1,66.9
		.talk Plaguebringer Tillinghast##24157
		..accept Green Eggs and Whelps##11279
	step //52
		home New Agamand
	step //53
		goto 52,67.4
		.talk Tobias Sarkhoff##24155
		..fpath New Agamand
	step //54
		goto 57.6,76.5
		.kill Risen Vrykul Ancestors|n
		.get 5 Ancient Vrykul Bone|q 11424/1
	step //55
		goto 46.8,68.1
		.from Thorvald##27926
		.get Dragonflayer Patriarch's Blood|q 11305/1
	step //56
		goto 40.3,60.3
		.talk Orfus of Kamagua##23804
		..accept The Dead Rise!##11504
	step //57
		goto 42,54.4
		.' Use Tillinghast's Plague Canister on Proto-Drake Eggs|use Tillinghast's Plague Canister##33418|tip They look like big eggs sitting next to trees.
		.kill Plagued Proto-Whelps that spawn|n
		.get 10 Plagued Proto-Whelp Specimen|q 11279/1
	step //58
		goto 37.4,51.9
		.talk Ember Clutch Ancient##23870
		..accept Root Causes##11182
	step //59
		goto 40.6,51.5
		.kill 5 Dragonflayer Handler|q 11182/1
	step //60
		goto 41.5,52.3
		.kill 1 Skeld Drakeson|q 11182/2|tip Standing inside this small house.
	step //61
		goto 37.4,51.9
		.talk Ember Clutch Ancient##23870
		..turnin Root Causes##11182
	step //62
		'Hearth to New Agamand|goto 52.2,66.5,0.5|use hearthstone##6948|noway|c
	step //63
		goto 53.1,66.9
		.talk Plaguebringer Tillinghast##24157
		..turnin Green Eggs and Whelps##11279
		..accept Draconis Gastritis##11280
	step //64
		goto 53.7,65.2
		.talk "Hacksaw" Jenny##24252
		..turnin Shield Hill##11424
	step //65
		goto 53.6,66.4
		.talk Chief Plaguebringer Harris##24251
		..turnin A Tailor-Made Formula##11305
		..accept Apply Heat and Stir##11306
	step //66
		goto 53.6,66.5
		.' Stand next to the cauldron
		.' Use the Empty Apothecary's Flask in your bags|use Empty Apothecary's Flask##34023
		..collect 1 Flask of Vrykul Blood##33615|q 11306
		.' Stand next to the table at 53.5,66.3|n
		.' Use the Flask of Vrykul Blood in your bags|use Flask of Vrykul Blood##33615
		.' Keep filling the Empty Apothecary's Flasks at the cauldron|use Empty Apothecary's Flask##33614
		.' And then use the Flask of Vrykul Blood next to the table|use Flask of Vrykul Blood##33615
		.get 1 Balanced Concoction|q 11306/1
	step //67
		goto 53.6,66.4
		.talk Chief Plaguebringer Harris##24251
		..turnin Apply Heat and Stir##11306
		..accept Field Test##11307
	step //68
		goto 57.7,77.5
		.' Click the Mound of Debris|tip It looks like a pile of dirt in the bottom of this small pit, next to a skeleton.
		.get Fengir's Clue|q 11504/1
	step //69
		goto 59.2,77
		.' Click the Unlocked Chest|tip It looks like a small chest in the bottom of this small pit, next to a skeleton.
		.get Rodin's Clue|q 11504/2
	step //70
		goto 59.8,79.4
		.' Click the Long Tail Feather|tip It's a small blue feather sitting on a circular shield in this pit, on top of a skeleton.
		.get Isuldof's Clue|q 11504/3
	step //71
		goto 62,80
		.' Click the Cannonball|tip It looks like a big round grey ball sitting in the dirt in this pit, between a skeleton's legs.
		.get Windan's Clue|q 11504/4
	step //72
		goto 48.5,57.4
		.' Use your Plague Spray on Plagued Dragonflayer mobs|use Plague Spray##33621
		.' Spray 10 Plagued Vrykul|goal 10 Plagued Vrykul Sprayed|q 11307/1
	step //73
		goto 40.3,60.3
		.talk Orfus of Kamagua##23804
		..turnin The Dead Rise!##11504
		..accept Elder Atuik and Kamagua##11507
	step //74
		goto 41.7,53.7
		.' Use Tillinghast's Plagued Meat in your bags when a Proto-Drake is flying over you|use Tillinghast's Plagued Meat##33441
		.kill 1 Proto-Drake|n|tip They fly overhead.
		.' Observe the Proto-Drake Plague Results|goal Proto-Drake Plague Results Observed|q 11280/1
	step //75
		goto 53.1,66.9
		.talk Plaguebringer Tillinghast##24157
		..turnin Draconis Gastritis##11280
	step //76
		goto 53.6,66.4
		.talk Chief Plaguebringer Harris##24251
		..turnin Field Test##11307
		..accept Time for Cleanup##11308
	step //77
		goto 53.7,65.2
		.talk "Hacksaw" Jenny##24252
		..turnin Time for Cleanup##11308
		..accept Parts for the Job##11309
	step //78
		goto 50.3,65.8
		.kill Shoveltusks|n
		.get 6 Shoveltusk Ligament|q 11309/1
	step //79
		goto 49.4,74.3
		.talk Anton##24291
		..buy 1 Fresh Pound of Flesh|q 11309/2
	step //80
		goto 53.7,65.2
		.talk "Hacksaw" Jenny##24252
		..turnin Parts for the Job##11309
		..accept Warning: Some Assembly Required##11310
	step //81
		goto 49.6,57.2
		.' Use your Abomination Assembly Kit to control the Mindless Abomination|use Abomination Assembly Kit##33613
		.' Run around and gather a bunch of Plagued Dragonflayer mobs
		.' Use your Plagued Blood Explosion to explode the group of mobs|petaction Plagued Blood Explosion
		.' Exterminate 20 Plagued Vrykul|goal 20 Plagued Vrykul exterminated|q 11310/1
	step //82
		goto 53.7,65.2
		.talk "Hacksaw" Jenny##24252
		..turnin Warning: Some Assembly Required##11310
	step //83
		'Go northwest across the Ancient Lift to 25.0,57.0|goto 25.0,57.0
		.talk Elder Atuik##24755
		..turnin Elder Atuik and Kamagua##11507
		..accept Grezzix Spindlesnap##11508
		..accept Feeding the Survivors##11456
	step //84
		goto 24.7,57.8
		.talk Kip Trawlskip##28197
		..fpath Kamagua
	step //85
		goto 29.1,58.8
		.kill Island Shoveltusks|n
		.get 6 Island Shoveltusk Meat|q 11456/1
	step //86
		goto 25.0,57.0
		.talk Elder Atuik##24755
		..turnin Feeding the Survivors##11456
		..accept Arming Kamagua##11457
	step //87
		goto 26.4,62.9
		.kill Frostwing Chimaeras|n|tip You will only find them on the snowy parts of the ground.
		.get 3 Chimaera Horn|q 11457/1
	step //88
		goto 25.0,57.0
		.talk Elder Atuik##24755
		..turnin Arming Kamagua##11457
		..accept Avenge Iskaal##11458
	step //89
		goto 23.1,62.7
		.talk Grezzix Spindlesnap##24643
		..turnin Grezzix Spindlesnap##11508
		..accept Street "Cred"##11509
	step //90
		goto 35.1,80.9
		.talk "Silvermoon" Harry##24539
		..turnin Street "Cred"##11509
		..accept "Scoodles"##11510
	step //91
		goto 35.6,80.2
		.talk Handsome Terry##24537
		..accept Forgotten Treasure##11434
	step //92
		goto 37.8,79.6
		.talk Scuttle Frostprow##24784
		..accept Swabbin' Soap##11469
	step //93
		goto 38.3,83.4
		.from "Scoodles"##24899
		.get Sin'dorei Scrying Crystal|q 11510/1
	step //94
		goto 37.8,84.6
		.' Click the Eagle Figurine|tip It's a blue eagle statue inside this ship on the middle floor.
		.get Eagle Figurine|q 11434/2
	step //95
		goto 37.1,85.5
		.' Click the Amani Vase|tip It looks like a grey vase at the bottom of this wrecked ship.
		.get Amani Vase|q 11434/1
	step //96
		goto 31.4,77.9
		.from Big Roy##24785
		.get Big Roy's Blubber|q 11469/1
	step //97
		goto 35.1,80.9
		.talk "Silvermoon" Harry##24539
		..turnin "Scoodles"##11510
		..accept The Ancient Armor of the Kvaldir##11567
		..accept The Frozen Heart of Isuldof##11512
		..accept The Lost Shield of the Aesirites##11519
		..accept The Staff of Storm's Fury##11511
	step //98
		goto 35.6,80.2
		.talk Handsome Terry##24537
		..turnin Forgotten Treasure##11434
		..accept The Fragrance of Money##11455
	step //99
		goto 36.3,80.5
		.talk Taruk##24541
		..accept Gambling Debt##11464
	step //100
		goto 35.1,80.9
		.talk "Silvermoon" Harry##24539
		..'Tell him to pay up
		..'Fight him until he surrenders
		..get "Silvermoon" Harry's Debt|q 11464/1|goal "Silvermoon" Harry's Debt|q 11464/1
	step //101
		goto 36.3,80.5
		.talk Taruk##24541
		..turnin Gambling Debt##11464
		..accept Jack Likes His Drink##11466
	step //102
		'Go inside the long building to 35.3,79.6|goto 35.3,79.6
		.talk Olga, the Scalawag Wench##24639
		..' Pay 1 gold to bribe her into giving Jack Adams a drink
		.' He passes out on the table
		.talk Jack Adams##24788
		..'Search his pockets
		..get Jack Adams' Debt|q 11466/1|goal Jack Adams' Debt|q 11466/1
	step //103
		goto 36.3,80.5
		.talk Taruk##24541
		..turnin Jack Likes His Drink##11466
		..accept Dead Man's Debt##11467
	step //104
		goto 37.8,79.6
		.talk Scuttle Frostprow##24784
		..turnin Swabbin' Soap##11469
	step //105
		goto 37.2,74.8
		.talk Captain Ellis##24910
		..turnin The Lost Shield of the Aesirites##11519
		..accept Mutiny on the Mercy##11527
	step //106
		'Go downstairs in the ship
		.kill Mutinous Sea Dog ghouls|n
		.get 5 Barrel of Blasting Powder|q 11527/1
	step //107
		'Go upstairs to the ship deck to 37.2,74.8|goto 37.2,74.8
		.talk Captain Ellis##24910
		..turnin Mutiny on the Mercy##11527
		..accept Sorlof's Booty##11529
	step //108
		'Run to the other end of the ship deck to the big cannon
		.' Keep clicking The Big Gun until Sorlof is dead
		.' Sorlof will drop a big pile of gold on the shore
		.' Jump off the ship and click Sorlof's Booty
		.get Sorlof's Booty|q 11529/1
	step //109
		goto 37.2,74.8
		.talk Captain Ellis##24910
		..turnin Sorlof's Booty##11529
		..accept The Shield of the Aesirites##11530
	step //110
		goto 34.1,76.9
		.kill Rabid Brown Bears|n
		.get 4 Bear Musk|q 11455/1
	step //111
		'Go down into the cave to 33.5,75.4|goto 33.5,75.4,0.5|c
	step //112
		'Go down the hill and into the cave to 32.3,78.7|goto 32.3,78.7
		.' Hug the wall to the left inside the cave to avoid fighting "Mad" Jonah Sterling
		.' Follow the path around past the big white sleeping bear, he won't attack you if he's asleep
		.' Click The Frozen Heart of Isuldof|tip Inside the cave, it looks like a big blue jewel on the ground.
		.get The Frozen Heart of Isuldof|q 11512/1
	step //113
		'Leave the cave and go north to 33.2,63.9|goto 33.2,63.9
		.kill 8 Crazed Northsea Slaver|q 11458/1
	step //114
		'Go onto the ship to 35.3,64.8|goto 35.3,64.8
		.' Wait for Abdul the Insane to walk up to the top deck, then run downstairs
		.' Click The Staff of Storm's Fury|tip On the very bottom floor of this ship.  It looks like a staff standing upright with lightning shooting out of it.
		.get The Staff of Storm's Fury|q 11511/1
	step //115
		goto 29.0,60.5|n
		.' The path up to Dead Man's Debt starts here|goto 29.0,60.5,0.3|noway|c
	step //116
		goto 32.7,60.2
		.' Click the Dirt Mound|tip It looks like a big pile of dirt.
		.' Kill Black Conrad's Ghost and his friends that spawn
		.get Black Conrad's Treasure|q 11467/1
	step //117
		goto 25.0,57.0
		.talk Elder Atuik##24755
		..turnin Avenge Iskaal##11458
	step //118
		goto 24.6,58.9
		.talk Anuniaq##24810
		..accept The Way to His Heart...##11472
	step //119
		goto 28.9,74.8
		.' Use Anuniaq's Net on the Schools of Tasty Reef Fish|use Anuniaq's Net##40946|tip They look like swarms of fish in the water.
		.kill Great Reef Sharks|n
		.collect 10 Tasty Reef Fish##34127|q 11472
	step //120
		goto 31,74.4
		.' Use your Tasty Reef Fish on a Reef Bull as far away as you can|use Tasty Reef Fish##34127
		.' He will come to the spot where you're standing
		.' Keep doing this|tip The goal is to lead the Reef Bull to the other side of the water to a Reef Cow.
		.' Lead the Reef Bull to a Reef Cow on the other side of the water|goal Reef Bull led to a Reef Cow|q 11472/1
	step //121
		goto 35.6,80.2
		.talk Handsome Terry##24537
		..turnin The Fragrance of Money##11455
		..accept A Traitor Among Us##11473
	step //122
		goto 35.6,80.6
		.talk Zeh'gehn##24525
		..turnin A Traitor Among Us##11473
		..accept Zeh'gehn Sez##11459
	step //123
		goto 35.6,80.2
		.talk Handsome Terry##24537
		..turnin Zeh'gehn Sez##11459
		..accept A Carver and a Croaker##11476
	step //124
		goto 35.1,80.9
		.talk "Silvermoon" Harry##24539
		..buy 1 Shiny Knife|q 11476/2
	step //125
		goto 35.6,81.7
		.' Click a Scalawag Frog|tip They are blue and green frogs that hop around on the ground here.
		.get Scalawag Frog|q 11476/1
	step //126
		goto 35.6,80.6
		.talk Zeh'gehn##24525
		..turnin A Carver and a Croaker##11476
		..accept "Crowleg" Dan##11479
	step //127
		goto 36.3,80.5
		.talk Taruk##24541
		..turnin Dead Man's Debt##11467
	step //128
		goto 35.9,83.6
		.talk "Crowleg" Dan##24713
		.kill 1 "Crowleg" Dan|q 11479/1
	step //129
		goto 35.6,80.2
		.talk Handsome Terry##24537
		..turnin "Crowleg" Dan##11479
		..accept Meet Number Two##11480
	step //130
		'Go inside the long building to 35.4,79.4|goto 35.4,79.4
		.talk Annie Bonn##24741
		..turnin Meet Number Two##11480
	step //131
		goto 36.1,81.6
		.talk Alanya##27933
		..'Tell her to want to fly to Bael'gun's
		.' You will land near a ship|goto 80.9,75.1,0.3|noway|c
	step //132
		'Go onto the ship and downstairs to 81.8,73.9|goto 81.8,73.9
		.' Click The Ancient Armor of the Kvaldir|tip Inside this ship, on the very bottom floor in the very back of the room.  It looks like a floating chestplate.
		.get The Ancient Armor of the Kvaldir|q 11567/1
	step //133
		goto 80.9,75.1
		.' Click Harry's Bomber|n|tip It's a plane on the water's edge.
		.' Go back to Scalawag Point|goto 36.1,81.7,0.3|noway|c
	step //134
		'Ride the big lift to the top of the cliff and go to 40.3,60.3|goto 40.3,60.3
		.talk Orfus of Kamagua##23804
		..turnin The Ancient Armor of the Kvaldir##11567
		..turnin The Frozen Heart of Isuldof##11512
		..turnin The Shield of the Aesirites##11530
		..turnin The Staff of Storm's Fury##11511
		..accept A Return to Resting##11568
	step //135
		goto 57.6,77.4
		.' Use your Bundle of Vrykul Artifacts while standing near the skeleton|use Bundle of Vrykul Artifacts##34624
		.' Return the Shield of Aesirites|goal Shield of the Aesirites Returned|q 11568/1
	step //136
		goto 59.2,77
		.' Use your Bundle of Vrykul Artifacts while standing near the skeleton|use Bundle of Vrykul Artifacts##34624
		.' Return the Staff of Storm's Fury|goal Staff of Storm's Fury Returned|q 11568/2
	step //137
		goto 59.7,79.4
		.' Use your Bundle of Vrykul Artifacts while standing near the skeleton|use Bundle of Vrykul Artifacts##34624
		.' Return the Frozen Heart of Isuldof|goal Frozen Heart of Isuldof Returned|q 11568/3
	step //138
		goto 61.9,80.2
		.' Use your Bundle of Vrykul Artifacts while standing near the skeleton|use Bundle of Vrykul Artifacts##34624
		.' Return the Ancient Armor of the Kvaldir|goal Ancient Armor of the Kvaldir Returned|q 11568/4
	step //139
		goto 40.3,60.3
		.talk Orfus of Kamagua##23804
		..turnin A Return to Resting##11568
		..accept Return to Atuik##11572
	step //140
		'Go across the Ancient Lift to 25.0,57.0|goto 25.0,57.0
		.talk Elder Atuik##24755
		..turnin Return to Atuik##11572
	step //141
		goto 24.6,58.9
		.talk Anuniaq##24810
		..turnin The Way to His Heart...##11472
	step //142
		'Go back across the Ancient Lift and north to 31.3,24.4|goto 31.3,24.4
		.talk Longrunner Skycloud##24209
		..accept Rivenwood Captives##11296
	step //143
		goto 31.2,24.5
		.talk Sage Mistwalker##24186
		..accept The Artifacts of Steel Gate##11286
	step //144
		goto 31.1,20.9
		.' Attack Riven Widow Cocoons|tip They look like big squirming white cocoons.
		.' Free 7 Winterhoof Longrunners|goal 7 Winterhoof Longrunner Freed|q 11296/1
	step //145
		goto 31.3,24.4
		.talk Longrunner Skycloud##24209
		..turnin Rivenwood Captives##11296
	step //146
		goto 31.8,25.6
		.' Click the Steel Gate Artifacts|tip They look like big broken stone tablet pieces laying on the ground around this area.
		.get 10 Steel Gate Artifact|q 11286/1
	step //147
		'Go back up the hill to 31.2,24.5|goto 31.2,24.5
		.talk Sage Mistwalker##24186
		..turnin The Artifacts of Steel Gate##11286
		..accept The Cleansing##11317
	step //148
		goto 26,25.1
		.talk Lilleth Radescu##26844
		..fpath Apothecary Camp
	step //149
		goto 26.1,24.7
		.talk Apothecary Anastasia##24359
		..accept And You Thought Murlocs Smelled Bad!##11397
	step //150
		goto 26,24.4
		.talk Apothecary Grick##24218
		..accept Brains! Brains! Brains!##11301
	step //151
		goto 26.4,24.5
		.talk Apothecary Malthus##24152
		..accept What's in That Brew?##11298
	step //152
		goto 33.8,33.7|n
		.' The path down to Brains! Brains! Brains! and What's in That Brew? starts here|goto 33.8,33.7,0.5|noway|c
	step //153
		'Go down the hill to 33.3,36.5|goto 33.3,36.5
		.' Click the Dwarven Kegs|tip They look like huge barrels sitting on the ground around this area.
		.get 5 Dwarven Keg|q 11298/1
		.kill Deranged Explorers all around this area|n
		.' Use Grick's Bonesaw on their corpses|use Grick's Bonesaw##33554
		.get 12 Deranged Explorer Brain|q 11301/1
	step //154
		goto 26.4,24.5
		.talk Apothecary Malthus##24152
		..turnin What's in That Brew?##11298
	step //155
		goto 26,24.4
		.talk Apothecary Grick##24218
		..turnin Brains! Brains! Brains!##11301
	step //156
		goto 25.5,20.1|n
		.' The path down to the coast starts here|goto 25.5,20.1,0.3|noway|c
	step //157
		'Go down the path to 23,21.9|goto 23,21.9
		.kill undead murlocs and other mobs|n
		.'Kill 15 Chillmere Coast Scourge|goal 15 Chillmere Coast Scourge Killed|q 11397/1
		.kill undead mobs|n
		.get a Scourge Device|n
		.' Click the Scourge Device|use Scourge Device##33962
		..accept It's a Scourge Device##11398
	step //158
		goto 19.8,22.2
		.talk Old Icefin##24544
		..accept Trident of the Son##11422
	step //159
		goto 23.7,35.2
		.from Rotgill##24546
		.get Rotgill's Trident|q 11422/1
	step //160
		goto 19.8,22.2
		.talk Old Icefin##24544
		..turnin Trident of the Son##11422
	step //161
		goto 23.7,21.8|n
		.' The path back up from the coast starts here|goto 23.7,21.8|noway|c
	step //162
		'Go up the path and south to 26.1,24.7|goto 26.1,24.7
		.talk Apothecary Anastasia##24359
		..turnin And You Thought Murlocs Smelled Bad!##11397
		..turnin It's a Scourge Device##11398
		..accept Bring Down Those Shields##11399
	step //163
		ding 73
	step //164
		goto 25.5,20.1|n
		.' The path down to the coast starts here|goto 25.5,20.1,0.3|noway|c
	step //165
		'Go down the path to 22.9,20.1|goto 22.9,20.1
		.' Use your Scourging Crystal Controller on the Scourge Crystal|use Scourging Crystal Controller##33960|tip It looks like a big floating purple crystal.
		.' Attack the Scourge Crystal when the purple bubble shield disappears
		.' Destroy 1 Scourge Crystal|goal 1 Scourging Crystals Destroyed|q 11399/1
	step //166
		goto 22.6,17.6
		.' Use your Scourging Crystal Controller on the Scourge Crystal|use Scourging Crystal Controller##33960|tip It looks like a big floating purple crystal.
		.' Attack the Scourge Crystal when the purple bubble shield disappears
		.' Destroy 1 Scourge Crystal|goal 2 Scourging Crystals Destroyed|q 11399/1
	step //167
		goto 21.8,22.5
		.' Use your Scourging Crystal Controller on the Scourge Crystal|use Scourging Crystal Controller##33960|tip It looks like a big floating purple crystal.
		.' Attack the Scourge Crystal when the purple bubble shield disappears
		.' Destroy 1 Scourge Crystal|goal 3 Scourging Crystals Destroyed|q 11399/1
	step //168
		goto 23.7,21.8|n
		.' The path back up from the coast starts here|goto 23.7,21.8|noway|c
	step //169
		'Go up the path and south to 26.1,24.7|goto 26.1,24.7
		.talk Apothecary Anastasia##24359
		..turnin Bring Down Those Shields##11399
	step //170
		goto 48.9,12
		.talk Wind Tamer Kagan##24256
		..accept Suppressing the Elements##11311
	step //171
		goto 49.3,12
		.talk Nokoma Snowseer##24123
		..accept Making the Horn##11275
	step //172
		goto 49.6,11.6
		.talk Celea Frozenmane##24032
		..fpath Camp Winterhoof
	step //173
		goto 48.4,11
		.talk Ahota Whitefrost##24127
		..accept Hasty Preparations##11271
	step //174
		goto 48,10.7
		.talk Chieftain Ashtotem##24129
		..turnin Help for Camp Winterhoof##12566
	step //175
		goto 50.9,11
		.' Click Spotted Hippogryph Down feathers on the ground|tip They look like brown feathers on the ground all around this area.
		.get 10 Spotted Hippogryph Down|q 11271/1
		.kill Frosthorn Rams|n
		.get 6 Undamaged Ram Horn|q 11275/1
	step //176
		goto 52.5,6.5
		.' Kill Iceshard Elementals
		.kill 8 Mountain Elementals|q 11311/1
		.' You can find more Iceshard Elementals at 51.2,2.9|n
	step //177
		goto 48.4,11
		.talk Ahota Whitefrost##24127
		..turnin Hasty Preparations##11271
	step //178
		goto 48.9,12
		.talk Wind Tamer Kagan##24256
		..turnin Suppressing the Elements##11311
	step //179
		goto 49.3,12
		.talk Nokoma Snowseer##24123
		..turnin Making the Horn##11275
		..accept Mimicking Nature's Call##11281
		..accept The Frozen Glade##11312
	step //180
		goto 49.2,12.2
		.talk Longrunner Pembe##24362
		..accept The Book of Runes##11350
	step //181
		goto 52.4,3.7
		.' Use your Carved Horn next to the Frozen Waterfall|use Carved Horn##33450
		.kill Frostgore that spawns|n
		.' Test Nokoma's Horn|goal Test Nokoma's Horn|q 11281/1
	step //182
		goto 54.1,8.2|n
		.' The path up to The Cleansing starts here|goto 54.1,8.2,0.3|noway|c
	step //183
		'Follow the path up to 61.1,2|goto 61.1,2
		.' Click the Frostblade Shrine|tip It's a big blue glowing altar table thing.
		.'Kill Your Inner Turmoil that spawns|goal Cleansed of Your Inner Turmoil|q 11317/1
	step //184
		goto 61.5,22.8
		.talk Lurielle##24117
		..turnin The Frozen Glade##11312
		..accept Spirits of the Ice##11313
	step //185
		goto 60.6,22.4
		.kill Ice Elementals|n
		.get 15 Icy Core|q 11313/1
	step //186
		goto 61.5,22.8
		.talk Lurielle##24117
		..turnin Spirits of the Ice##11313
		..accept The Fallen Sisters##11314
		..accept Wild Vines##11315
	step //187
		goto 53.3,27.8
		.' Use Lurielle's Pendant on Chill Nymphs when they are weak|use Lurielle's Pendant##33606|tip Walk up to them until you're in combat and then use Lurielle's Pendant, you don't have to hit them.
		.' Free 7 Chill Nymphs|goal 7 Chill Nymphs Freed|q 11314/1
		.kill 8 Scarlet Ivy|q 11315/1
	step //188
		goto 61.5,22.8
		.talk Lurielle##24117
		..turnin The Fallen Sisters##11314
		..turnin Wild Vines##11315
		..accept Spawn of the Twisted Glade##11316
		..accept Seeds of the Blacksouled Keepers##11319
	step //189
		goto 54.7,20.5
		.kill 10 Thornvine Creeper|q 11316/1
		.kill Spores|n|tip The Spores look like orange plant things.
		.' Use your Enchanted Ice Core on Spore corpses|use Enchanted Ice Core##33607
		.' Freeze 8 Spores|goal 8 Spores frozen|q 11319/1
	step //190
		goto 61.5,22.8
		.talk Lurielle##24117
		..turnin Spawn of the Twisted Glade##11316
		..turnin Seeds of the Blacksouled Keepers##11319
		..accept Keeper Witherleaf##11428
	step //191
		goto 53.7,18.6
		.kill 1 Keeper Witherleaf|q 11428/1|tip He walks around this area.
	step //192
		goto 61.5,22.8
		.talk Lurielle##24117
		..turnin Keeper Witherleaf##11428
	step //193
		goto 65.0,28.5
		.kill Iron Rune Stonecallers and Iron Rune Binders|n
		.collect 1 Book of Runes - Chapter 1##33778|q 11350 |n
		.collect 1 Book of Runes - Chapter 2##33779|q 11350 |n
		.collect 1 Book of Runes - Chapter 3##33780|q 11350 |n
		.' Click a Book of Runes - Chapter in your bags|use Book of Runes - Chapter 1##33778
		.get The Book of Runes|q 11350/1
	step //194
		goto 49.2,12.2
		.talk Longrunner Pembe##24362
		..turnin The Book of Runes##11350
		..accept Mastering the Runes##11351
	step //195
		goto 49.3,12
		.talk Nokoma Snowseer##24123
		..turnin Mimicking Nature's Call##11281
	step //196
		goto 48,10.7
		.talk Chieftain Ashtotem##24129
		..accept Skorn Must Fall!##11256
	step //197
		goto 71.2,28.7
		.' Click the Iron Rune Carving Tools|tip It looks like a small metal chest.
		.get Iron Rune Carving Tools|q 11351/1
		.' If they are not there, they can also spawn at the following 5 locations as well:
		..' At 67.5,23.5
		..' At 69.1,22.8
		..' At 72.4,17.8
		..' At 73.4,24.9
		..' At 67.5,29.2
	step //198
		goto 49.2,12.2
		.talk Longrunner Pembe##24362
		..turnin Mastering the Runes##11351
		..accept The Rune of Command##11352
	step //199
		goto 71.9,24.6
		.' Use your Rune of Command on a Stone Giant around this area to control it|use Rune of Command##33796
		.' Once you are controlling the Stone Giant, come here
		.kill Binder Murdis|q 11352/2
	step //200
		goto 49.2,12.2
		.talk Longrunner Pembe##24362
		..turnin The Rune of Command##11352
	step //201
		goto 44.4,26.2
		.' Use your Winterhoof Emblem in your bags|use Winterhoof Emblem##33340
		.talk Winterhoof Brave##24130
		..turnin Skorn Must Fall!##11256
		..accept Gruesome, But Necessary##11257
		..accept Burn Skorn, Burn!##11258
		..accept Towers of Certain Doom##11259
	step //202
		goto 45.3,27
		.kill Winterskorn mobs|n
		.' Use The Brave's Machete on their corpses|use The Brave's Machete##33342
		.' Dismember 20 Winterskorn Vrykul|goal 20 Winterskorn Vrykul Dismembered|q 11257/1
		.get Vrykul Scroll of Ascension|n
		.' Click the Vrykul Scroll of Ascension in your bags|use Vrykul Scroll of Ascension##33345
		..accept Stop the Ascension!##11260
	step //203
		goto 43.7,28.5
		.' Use the Brave's Torch inside this house|use Brave's Torch##33343
		.' Set the Northwest Longhouse Ablaze|goal Northwest Longhouse Set Ablaze|q 11258/1
	step //204
		goto 43.6,30.3
		.' Use the Brave's Flare next to this tower|use Brave's Flare##33344
		.' Target the Northwest Tower|goal Northwest Tower Targeted|q 11259/1
	step //205
		goto 43.2,35.8
		.' Use the Brave's Flare next to this tower|use Brave's Flare##33344
		.' Target the Southwest Tower|goal Southwest Tower Targeted|q 11259/3
	step //206
		goto 44.9,35
		.' Use your Vrykul Scroll of Ascension next to the bonfire|use Vrykul Scroll of Ascension##33346
		.kill 1 Halfdan the Ice-Hearted|q 11260/1
	step //207
		goto 46.9,37.1
		.' Use the Brave's Flare next to this tower|use Brave's Flare##33344
		.' Target the Southeast Tower|goal Southeast Tower Targeted|q 11259/4
	step //208
		goto 46.5,33.2
		.' Use the Brave's Flare next to this tower|use Brave's Flare##33344
		.' Target the East Tower|goal East Tower Targeted|q 11259/2
	step //209
		goto 46,30.7
		.' Use the Brave's Torch inside this building|use Brave's Torch##33343
		.' Set the Barracks Ablaze|goal Barracks Set Ablaze|q 11258/3
	step //210
		goto 46.4,28.2
		.' Use the Brave's Torch inside this house|use Brave's Torch##33343
		.' Set the Northeast Longhouse Ablaze|goal Northeast Longhouse Set Ablaze|q 11258/2
	step //211
		'Use your Winterhoof Emblem in your bags|use Winterhoof Emblem##33340
		.talk Winterhoof Brave##24130
		..turnin Gruesome, But Necessary##11257
		..turnin Burn Skorn, Burn!##11258
		..turnin Towers of Certain Doom##11259
		..accept The Conqueror of Skorn!##11261
	step //212
		goto 48.2,10.7
		.talk Greatmother Ankha##24135
		..turnin Stop the Ascension!##11260
	step //213
		goto 48,10.7
		.talk Chieftain Ashtotem##24129
		..turnin The Conqueror of Skorn!##11261
		..accept Dealing With Gjalerbron##11263
	step //214
		goto 48.2,10.7
		.talk Greatmother Ankha##24135
		..accept Of Keys and Cages##11265
	step //215
		goto 31.2,24.5
		.talk Sage Mistwalker##24186
		..turnin The Cleansing##11317
		..accept In Worg's Clothing##11323
	step //216
		goto 29.7,5.7
		.' Use your Worg Disguise to turn into a Worg|use Worg Disguise##33618
		.talk Ulfang##24261
		..turnin In Worg's Clothing##11323
		..accept Brother Betrayers##11415
	step //217
		goto 28.3,23.9
		.kill 1 Bjomolf|q 11415/1|tip He's a big brownish worg that walks around this area.
	step //218
		goto 33.8,29.3
		.kill 1 Varg|q 11415/2|tip He's a big grayish worg that walks around this area.
	step //219
		goto 35.1,16
		.kill 15 Gjalerbron Warrior|q 11263/1
		.kill 8 Gjalerbron Rune-Caster|q 11263/2
		.kill 8 Gjalerbron Sleep-Watcher|q 11263/3
		.kill Gjalerbron mobs|n
		.get Gjalerbron Cage Keys|n
		.' Click Gjalerbron Cages
		.' Free 10 Gjalerbron Prisoners|goal 10 Gjalerbron Prisoner Freed|q 11265/1
		.get Gjalerbron Attack Plans|n
		.' Click the Gjalerbron Attack Plans in your bags|use Gjalerbron Attack Plans##33347
		..accept Gjalerbron Attack Plans##11266
	step //220
		goto 29.7,5.7
		.' Use your Worg Disguise to turn into a Worg|use Worg Disguise##33618
		.talk Ulfang##24261
		..turnin Brother Betrayers##11415
		..accept Eyes of the Eagle##11417
	step //221
		goto 41.4,37.7
		.' Click Talonshrike's Egg|tip It's an egg sitting in a nest with 2 other eggs at the base of this waterfall, in the water on a rock.
		.from Talonshrike##24518
		.get Eyes of the Eagle|q 11417/1
	step //222
		goto 29.7,5.7
		.' Use your Worg Disguise to turn into a Worg|use Worg Disguise##33618
		.talk Ulfang##24261
		..turnin Eyes of the Eagle##11417
		..accept Alpha Worg##11324
	step //223
		goto 26.3,12.8
		.kill 1 Garwal|q 11324/1|tip He's a whiteish worg that walks around thia area.
	step //224
		goto 31.2,24.5
		.talk Sage Mistwalker##24186
		..turnin Alpha Worg##11324
	step //225
		goto 48.2,10.7
		.talk Greatmother Ankha##24135
		..turnin Of Keys and Cages##11265
		..accept The Walking Dead##11268
	step //226
		goto 48,10.7
		.talk Chieftain Ashtotem##24129
		..turnin Dealing With Gjalerbron##11263
		..accept Necro Overlord Mezhen##11264
	step //227
		goto 48.4,11
		.talk Ahota Whitefrost##24127
		..accept Sleeping Giants##11433
	step //228
		goto 49.6,11.6
		.talk Celea Frozenmane##24032
		..turnin Gjalerbron Attack Plans##11266
	step //229
		home Camp Winterhoof
	step //230
		'Go up onto the platform to 35.7,15.8|goto 35.7,15.8
		.kill 10 Deathless Watcher|q 11268/1
		.kill 2 Putrid Wight|q 11268/3
		.' You can find another Putrid Wight and more Deathless Watchers at 38.2,11.8|goto 38.2,11.8
	step //231
		goto 38.8,13
		.kill 1 Necro Overlord Mezhen|q 11264/1|tip On a platform in the very back of Gjalerbron, surrounded by Nerolords.
		.get Mezhen's Writings|n
		.' Click Mezhen's Writings|use Mezhen's Writings##34091
		..accept The Slumbering King##11453
	step //232
		goto 39.8,7.6|n
		.' This is the entrance to The Slumbering King|goto 39.8,7.6,0.3|noway|c|tip Go up the big ramp to this spot.
	step //233
		'Go inside and downstairs to 40.9,6.5|goto 40.9,6.5
		.kill 1 Queen Angerboda|q 11453/1|tip She's standing up on the platform.
	step //234
		'Go outside to 34.5,13.2|goto 34.5,13.2|n
		.' The entrance down into the Walking Halls starts here|goto 34.5,13.2,0.3|noway|c
	step //235
		'Go down the stairs to 35,11.9|goto 35,11.9
		.kill 4 Fearsome Horror|q 11268/2|tip Underground in the Walking Halls.
		.kill Necrolords|n
		.collect 5 Awakening Rod##34083|q 11433 |n
		.' Use your Awakening Rods on Dormant Vrykul|use Awakening Rod##34083|tip They are sleeping upright inside the walls, like mummies.
		.kill 5 Dormant Vrykul|q 11433/1
	step //236
		'Hearth to Camp Winterhoof|goto 49.5,10.8,0.3|use hearthstone##6948|noway|c
	step //237
		goto 48.4,11
		.talk Ahota Whitefrost##24127
		..turnin Sleeping Giants##11433
	step //238
		goto 48.2,10.7
		.talk Greatmother Ankha##24135
		..turnin The Walking Dead##11268
	step //239
		goto 48,10.7
		.talk Chieftain Ashtotem##24129
		..turnin Necro Overlord Mezhen##11264
		..turnin The Slumbering King##11453
	step //240
		'Fly to New Agamand|goto 52.0,67.4,0.3|noway|c
	step //241
		goto 53.6,66.4
		.talk Chief Plaguebringer Harris##24251
		..accept Give it a Name##12181
	step //242
		goto 52,67.4
		.talk Tobias Sarkhoff##24155
		..turnin Give it a Name##12181
		..accept To Venomspite!##12182
	step //243
		'He will fly you to Dragonblight|goto Dragonblight,76.6,62.4,0.3|noway|c
	step //244
		goto Dragonblight,76.5,62.2
		.talk Junter Weiss##26845
		..fpath Venomspite
	step //245
		goto 77,62.9
		.talk Apothecary Vicky Levine##27248
		..accept Blighted Last Rites##12206
	step //246
		'Next to where you are standing, there is a Scarlet Onslaught Prisoner in a cage:
		.' Use your Flask of Blight on the Scarlet Onslaught Prisoner|use Flask of Blight##37129
		.' Test the Flask of Blight|goal Flask of Blight tested|q 12206/1
	step //247
		goto 77,62.9
		.talk Apothecary Vicky Levine##27248
		..turnin Blighted Last Rites##12206
		..accept Let Them Not Rise!##12211
	step //248
		goto 77.7,62.8
		.talk Chief Plaguebringer Middleton##27172
		..turnin To Venomspite!##12182
		..accept The Forsaken Blight and You: How Not to Die##12188
	step //249
		goto 76.9,62.8
		.' Click the Wanted Poster|tip On the left of the doorway entrance to the inn.
		..accept Wanted: The Scarlet Onslaught##12205
	step //250
		home Venomspite
	step //251
		goto 76.8,63.3
		.talk High Executor Wroth##27243
		..accept To Conquest Hold, But Be Careful!##12487
	step //252
		goto 76,63.3
		.talk Quartermaster Bartlett##27267
		..accept Funding the War Effort##12303
		..accept Materiel Plunder##12209
	step //253
		goto 79.3,65.1
		.talk Surveyor Hansen##32599
		..accept Beachfront Property##12304
	step //254
		goto 82.9,65.1
		.kill 20 Forgotten ghosts|q 12304/1
		.kill Forgotten ghosts|n
		.get 10 Ectoplasmic Residue|q 12188/1
	step //255
		goto 82.5,73.1
		.' Click the Forgotten Treasure|tip They look like brown chests underwater around this area.
		.get 6 Forgotten Treasure|q 12303/1
	step //256
		goto 79.3,65.1
		.talk Surveyor Hansen##32599
		..turnin Beachfront Property##12304
	step //257
		goto 76,63.3
		.talk Quartermaster Bartlett##27267
		..turnin Funding the War Effort##12303
	step //258
		goto 77.7,62.8
		.talk Chief Plaguebringer Middleton##27172
		..turnin The Forsaken Blight and You: How Not to Die##12188
		..accept Emerald Dragon Tears##12200
	step //259
		goto 73.7,66.6
		.kill 20 Members of the Scarlet Onslaught|q 12205/1
		.' Use your Container of Rats on Scarlet Onslaught corpses after you kill them|use Container of Rats##37187
		.' Pick 15 Scarlet Onslaught corpses clean|goal 15 Scarlet Onslaught corpses picked clean|q 12211/1
	step //260
		goto 72.6,69.7
		.' Click Scarlet Onslaught Weapon Racks|tip The Scarlet Onslaught Weapon Racks look like standing racks with weapons on them around this whole town.
		.get 8 Scarlet Onslaught Weapon|q 12209/2
		.' Click Scarlet Onslaught Armor Stands|tip The Scarlet Onslaught Armor Stands look like stands with a chainmail chest piece hanging on them around this whole town.
		.get 8 Scarlet Onslaught Armor|q 12209/1
	step //261
		'Go souhwest to 63.3,70.3|goto 63.3,70.3
		.' Click Emerald Dragon Tears|tip They look like green jewels laying on the ground around this area.
		.get 8 Emerald Dragon Tear|q 12200/1
	step //262
		goto 63.7,71.9
		.talk Nishera the Garden Keeper##27255
		..accept Cycle of Life##12454
	step //263
		.kill 5 Emerald Skytalon|q 12454/1|tip They fly around over your head around the lake.
	step //264
		goto 63.7,71.9
		.talk Nishera the Garden Keeper##27255
		..turnin Cycle of Life##12454
	step //265
		goto 76,63.3
		.talk Quartermaster Bartlett##27267
		..turnin Materiel Plunder##12209
	step //266
		goto 75.9,61.9
		.talk Hansel Bauer##27028
		..accept Fresh Remounts##12214
	step //267
		goto 77,62.9
		.talk Apothecary Vicky Levine##27248
		..turnin Let Them Not Rise!##12211
	step //268
		goto 76.8,63.3
		.talk High Executor Wroth##27243
		..turnin Wanted: The Scarlet Onslaught##12205
	step //269
		'Go upstairs to 76.7,63|goto 76.7,63
		.talk Spy Mistress Repine##27337
		..accept No Mercy for the Captured##12245
	step //270
		goto 77.7,62.8
		.talk Chief Plaguebringer Middleton##27172
		..turnin Emerald Dragon Tears##12200|tip Inside this building, on the bottom floor, facing a small table, on the right as you enter.
		..accept Spread the Good Word##12218
	step //271
		goto 77.5,62
		.talk Deathguard Molder##27320
		..accept Stealing from the Siegesmiths##12230
	step //272
		goto 74.5,65.8
		.kill an Onslaught Knight (be sure not to kill the horse)|n
		.' Loot it and get it's Onslaught Riding Crop|n
		.' Use the Onslaught Riding Crop on the Onslaught Warhorse|use Onslaught Riding Crop##37202
		.' Ride the horse back to Hansel Bauer at 75.9,61.9|n
		.' Use the Hand Over Reins ability to turn the horse in|petaction Hand Over Reins
		.' Repeat this 3 times
		.' Hand over 3 Scarlet Onslaught Warhorse reins|goal 3 Scarlet Onslaught Warhorse reins handed over|q 12214/1
	step //273
		goto 75.9,61.9
		.talk Hansel Bauer##27028
		..turnin Fresh Remounts##12214
	step //274
		goto 71.4,72.2
		.talk Deathguard Schneider##27376
		.kill 1 Deathguard Schneider|q 12245/1
	step //275
		goto 72.7,72.6
		.talk Chancellor Amai##27381
		.kill 1 Chancellor Amai|q 12245/4
	step //276
		goto 72.8,74.4
		.talk Engineer Burke##27379
		.kill 1 Engineer Burke|q 12245/3
	step //277
		goto 69.4,73.9
		.talk Senior Scrivener Barriga##27378
		.kill 1 Senior Scrivener Barriga|q 12245/2
	step //278
		goto 76.8,63.3
		.talk High Executor Wroth##27243
		..turnin No Mercy for the Captured##12245
		..accept Torture the Torturer##12252
	step //279
		'Go southwest into the basement of this building to 69.8,72|goto 69.8,72
		.' Use High Executor's Branding Iron 5 times on Torturer LeCraft|use High Executor's Branding Iron##37314|tip He's in the basement of this fort building.
		.' Fully Question Torturer LeCraft|goal Torturer LeCraft fully questioned|q 12252/1
		.kill Torturer LeCraft|q 12252/2
		.get Torturer's Rod|n
		.' Click the Torturer's Rod in your bags|use Torturer's Rod##37432
		..accept The Rod of Compulsion##12271
	step //280
		'Go northeast out of the fort to 76.8,63.3|goto 76.8,63.3
		.talk High Executor Wroth##27243
		..turnin Torture the Torturer##12252
		..turnin The Rod of Compulsion##12271
		..accept The Denouncement##12273
	step //281
		goto 70.8,70.5
		.' Use the Rod of Compulsion on Blacksmith Goodman when he's about halfway dead|use Rod of Compulsion##37438|tip He's inside the blacksmith building.
		.kill Blacksmith Goodman|n
		.'Get Blacksmith Goodman's denouncement & death|goal Blacksmith Goodman's denouncement & death|q 12273/3
	step //282
		'Go inside the fort and upstairs to 69.7,71.8|goto 69.7,71.8
		.' Use the Rod of Compulsion on Commander Jordan when he's about halfway dead|use Rod of Compulsion##37438|tip He's inside the big fort, upstairs in the big room.
		.kill Commander Jordan|n
		.'Get Commander Jordan's denouncement & death|goal Commander Jordan's denouncement & death|q 12273/1
	step //283
		'Go outside of the fort to 67.9,75.9|goto 67.9,75.9
		.' Use the Rod of Compulsion on Stable Master Mercer when he's about halfway dead|use Rod of Compulsion##37438|tip He's standing in front of the stables.
		.kill Stable Master Mercer|n
		.'Get Stable Master Mercer's denouncement & death|goal Stable Master Mercer's denouncement & death|q 12273/4
	step //284
		'Go southeast down the big hill to 72.9,78.1|goto 72.9,78.1
		.' Use the Rod of Compulsion on Lead Cannoneer Zierhut when he's about halfway dead|use Rod of Compulsion##37438|tip He's standing down a big hill, next to a cannon.
		.kill Lead Cannoneer Zierhut|n
		.'Get Lead Cannoneer Zierhut's denouncement & death|goal Lead Cannoneer Zierhut's denouncement & death|q 12273/2
	step //285
		'Hearth to Venomspite|goto 76.9,63.1,0.3|use hearthstone##6948|noway|c
	step //286
		goto 76.8,63.3
		.talk High Executor Wroth##27243
		..turnin The Denouncement##12273
	step //287
		goto 77.8,61.6|n
		.' Click a Forsaken Blight Spreader to ride it|invehicle|c|tip They look like big catapult car things.
	step //288
		goto 85.9,57.9
		.' Shoot your catapult toward the ghouls and skeletons to the northwest
		.kill 30 Hungering Dead|q 12218/1
	step //289
		'Click the red arrow button to Leave the Vehicle|script VehicleExit()|outvehicle|c
	step //290
		goto 85,51.1
		.' Click the Siegesmith Bombs on the ground|tip They look like metal spikey balls sitting on the ground around this area.
		.get 6 Siegesmith Bomb|q 12230/1
	step //291
		goto 77.5,62
		.talk Deathguard Molder##27320
		..turnin Stealing from the Siegesmiths##12230
		..accept Bombard the Ballistae##12232
	step //292
		goto 77.7,62.8
		.talk Chief Plaguebringer Middleton##27172
		..turnin Spread the Good Word##12218
		..accept The Forsaken Blight##12221
	step //293
		goto 77,62.9
		.talk Apothecary Vicky Levine##27248
		..accept A Means to an End##12240
	step //294
		'Go into the building to 76.7,63|goto 76.7,63
		.talk Spy Mistress Repine##27337
		..accept Need to Know##12234
	step //295
		goto 73.3,67.6
		.' Use your Siegesmith Bombs on New Hearthglen Ballistas|use Siegesmith Bombs##37259|tip They look like big arrow gun carts all around this area.
		.' Bombard 5 New Hearthglen Ballistas|goal 5 New Hearthglen Ballista bombarded|q 12232/1
	step //296
		'Go into the fort to 69.7,71.9|goto 69.7,71.9
		.' Click the Scarlet Onslaught Daily Orders: Barracks|tip Sitting on a small table next to the base of the stairs, inside the fort.
		.get Scarlet Onslaught Daily Orders: Barracks|q 12234/2
	step //297
		'Go across the courtyard into the cathedral to 73.4,72.6|goto 73.4,72.6
		.' Click the Scarlet Onslaught Daily Orders: Abbey|tip Sitting on a table with a bunch of books on it, in the Library Wing of the cathedral building.
		.get Scarlet Onslaught Daily Orders: Abbey|q 12234/1
	step //298
		'Go down the hill to the beach to 71.6,80.4|goto 71.6,80.4
		.' Click the Scarlet Onslaught Daily Orders: Beach|tip Sitting on a small crate on the beach, next to a bonfire and some tents.
		.get Scarlet Onslaught Daily Orders: Beach|q 12234/3
	step //299
		'Go back up the hill and into the lumber mill to 68.3,74.2|goto 68.3,74.2
		.' Stand inside the Lumber Mill here
		.' Use your Levine Family Termites|use Levine Family Termites##37300
		.kill 1 Foreman Kaleiki|q 12240/1
	step //300
		goto 77,62.9
		.talk Apothecary Vicky Levine##27248
		..turnin A Means to an End##12240
		..accept Fire Upon the Waters##12243
	step //301
		'Go inside the building to 76.7,63|goto 76.7,63
		.talk Spy Mistress Repine##27337
		..turnin Need to Know##12234
		..accept The Spy in New Hearthglen##12239
	step //302
		goto 77.5,62
		.talk Deathguard Molder##27320
		..turnin Bombard the Ballistae##12232
	step //303
		goto 73.6,73.5
		.talk Agent Skully##27350
		..turnin The Spy in New Hearthglen##12239
		..accept Without a Prayer##12254
	step //304
		goto 69.2,76.7
		.from Bishop Street##27246
		.get Bishop Street's Prayer Book|q 12254/1
	step //305
		goto 73.6,73.5
		.talk Agent Skully##27350
		..turnin Without a Prayer##12254
		..accept The Perfect Dissemblance##12260
	step //306
		'Run around this area and find an Onslaught Raven Priest
		.' Use Banshee's Magic Mirror on an Onslaught Raven Priest|use Banshee's Magic Mirror##37381
		.' Steal an Onslaught Raven Priest's image|goal Onslaught Raven Priest's image stolen|q 12260/1
	step //307
		goto 73.6,73.5
		.talk Agent Skully##27350
		..turnin The Perfect Dissemblance##12260
		..accept A Fall From Grace##12274
	step //308
		'Go to the top floor of the cathedral behind you to 72.9,73.5|goto 72.9,73.5
		.' Click the Abbey Bell Rope|tip It's a big rope hanging from the ceiling in the attic of the cathedral building.
		.' Ring the Abbey Bell|goal Abbey bell rung|q 12274/1
	step //309
		'Go downstairs to 73.5,74.3|goto 73.5,74.3
		.talk High Abbot Landgren##27245
		.' Go to the entrance of the cathedral building
		.' Follow the priest to a spot on a nearby cliff
		.' Speak with High Abbot Landgren|goal High Abbot spoken with|q 12274/2
	step //310
		goto 73.6,73.5
		.talk Agent Skully##27350
		..turnin A Fall From Grace##12274
		..accept The Truth Will Out##12283
	step //311
		goto 68.3,77
		.' Click The Diary of High General Abbendis|tip It's a purple book sitting on a nightstand between 2 beds, on the second floor of this house.
		.get The Diary of High General Abbendis|q 12283/1
	step //312
		'Go down the hill to the beach to 71.5,82.6|goto 71.5,82.6
		.' Stand on the plank
		.' Use you Apothecary's Burning Water and throw it at the ship's sail|use Apothecary's Burning Water##37304
		.' Set the Sails of the Sinner's Folly afire|goal Sails of the Sinner's Folly set afire|q 12243/1
	step //313
		'When the crew is distracted, go downstairs into the ship to 71.9,84|goto 71.9,84
		.from Captain Shely##27232
		.get Captain Shely's Rutters|q 12243/2
	step //314
		'Hearth to Venomspite|goto 76.9,63.1,0.3|use hearthstone##6948|noway|c
	step //315
		goto 76.8,63.3
		.talk High Executor Wroth##27243
		..turnin The Truth Will Out##12283
	step //316
		goto 77,62.9
		.talk Apothecary Vicky Levine##27248
		..turnin Fire Upon the Waters##12243
	step //317
		goto 48.5,74.4
		.talk Cid Flounderfix##28196
		..fpath Moa'ki Harbor
	step //318
		home Moa'ki Harbor
	step //319
		goto 48,74.9
		.talk Elder Ko'nani##26194
		..turnin Travel to Moa'ki Harbor##12117
		..accept Let Nothing Go To Waste##11958
	step //320
		goto 48,74.8
		.talk Envoy Ripfang##26441
		..accept Your Presence is Required at Agmar's Hammer##11996
	step //321
		goto 48.3,74.3
		.talk Trapper Mau'i##26228
		..accept Planning for the Future##11960
	step //322
		goto 45.3,63.7
		.kill Snowfall Glade mobs|n
		.get 6 Stolen Moa'ki Goods|q 11958/1
		.' Click Snowfall Glade Pups|tip The Snowfall Glade Pups are small creatures in front of the houses.
		.get 12 Snowfall Glade Pup|q 11960/1
	step //323
		goto 48.3,74.3
		.talk Trapper Mau'i##26228
		..turnin Planning for the Future##11960
	step //324
		goto 48,74.9
		.talk Elder Ko'nani##26194
		..turnin Let Nothing Go To Waste##11958
		..accept Slay Loguhn##11959
	step //325
		goto 46.3,59.2
		.kill Loguhn|n|tip Standing in front of a small house.
		.get Blood of Loguhn|n
		.' Click the Blood of Loguhn|use Blood of Loguhn##35688
		.' Smear the Blood of Loguhn on yourself|goal Loguhn's Blood Smeared|q 11959/1
	step //326
		goto 48,74.9
		.talk Elder Ko'nani##26194
		..turnin Slay Loguhn##11959
	step //327
		goto 49.2,75.6
		.talk Toalu'u the Mystic##26595
		..accept Spiritual Insight##12028
	step //328
		goto 48.9,75.8
		.' Use Toalu'u's Spiritual Incense next to Toalu'u's Brazier|use Toalu'u's Spiritual Incense##35907|tip Sitting next to the entrance to the small house.
		.' Watch yourself fly as a wisp
		.' Attain Spiritual Insight cocnerning Indu'le Village|goal Spiritual insight concerning Indu'le Village attained.|q 12028/1
	step //329
		goto 49.2,75.6
		.talk Toalu'u the Mystic##26595
		..turnin Spiritual Insight##12028
		..accept Elder Mana'loa##12030
	step //330
		goto 47.7,76.6
		.talk Tua'kea##26245
		..accept Tua'kea's Crab Traps##12009
	step //331
		goto 46.6,77.5
		.' Click Tua'kea's Crab Traps|tip They look like small cages on the ground underwater around this area.
		.get 8 Tua'kea Crab Trap|q 12009/1
	step //332
		goto 47.7,80
		.' Click the Wrecked Crab Trap|tip It looks like a broken version of Tue'kea's Crab Traps, on the ground underwater.
		..accept Signs of Big Watery Trouble##12011
	step //333
		goto 47.7,76.6
		.talk Tua'kea##26245
		..turnin Tua'kea's Crab Traps##12009
		..turnin Signs of Big Watery Trouble##12011
		..accept The Bait##12016
	step //334
		goto 43.7,82.3
		.from Kili'ua##26521
		.get The Flesh of "Two Huge Pincers"|q 12016/1
	step //335
		goto 47.7,76.6
		.talk Tua'kea##26245
		..turnin The Bait##12016
		..accept Meat on the Hook##12017
	step //336
		goto 46.7,78.2
		.' Use Tu'u'gwar's Bait next to Tua'kea's Fishing Hook|use Tu'u'gwar's Bait##35838|tip It looks like a rope leading into the water, with a big hook on the end.
		.kill 1 Tu'u'gwar|q 12017/1
	step //337
		goto 47.7,76.6
		.talk Tua'kea##26245
		..turnin Meat on the Hook##12017
	step //338
		goto 36.4,65
		.talk Elder Mana'loa##188419
		..turnin Elder Mana'loa##12030
		..accept Freedom for the Lingering##12031
	step //339
		goto 37.2,65.5
		.kill Indu'le mobs|n|tip Deranged Indu'le Villagers will not count toward the goal of 15 spirits.
		.' Put 15 Indu'le spirits to rest|goal 15 Indu'le spirits put to rest|q 12031/1
	step //340
		goto 36.4,65
		.talk Elder Mana'loa##188419
		..turnin Freedom for the Lingering##12031
		..accept Conversing With the Depths##12032
	step //341
		goto 34.3,79.9|n
		.' The path up to Conversing With the Depths starts here|goto 34.3,79.9,0.3|noway|c
	step //342
		'Follow the path up to 34,83.4
		.' Click The Pearl of the Depths|tip It's a big white pearl sitting on a altar thing.
		.' Oacha'noa appears and tells you to jump in the water
		.' Jump in the water when he tells you to
		.' Obey Oacha'noa's compulsion|goal Oacha'noa's compulsion obeyed.|q 12032/1
	step //343
		'Hearth to Moa'ki Harbor|goto 48.2,74.7,0.3|use hearthstone##6948|noway|c
	step //344
		goto 49.2,75.6
		.talk Toalu'u the Mystic##26595
		..turnin Conversing With the Depths##12032
	step //345
		ding 74
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Northrend (74-76)",[[
	author support@zygorguides.com
	next Zygor's Horde Leveling Guides\\Northrend (76-78)
	startlevel 74
	step //1
		goto Dragonblight,36.1,48.9
		.talk Doctor Sintar Malefious##26505
		..turnin The Forsaken Blight##12221
	step //2
		goto 37.3,46.8
		.talk Messenger Torvus##26649
		..accept Message from the West##12033
	step //3
		goto 37.4,46.7
		.' Click the Burning Brazier|tip It looks like a bowl with fire in it, next to the mailbox.
		.' Read and Destroy the Letter from Saurfang|goal Letter from Saurfang read and destroyed|q 12033/1
	step //4
		goto 37.3,46.8
		.talk Messenger Torvus##26649
		..turnin Message from the West##12033
	step //5
		goto 38.1,46.2
		.talk Image of Archmage Aethas Sunreaver##26471
		..turnin Your Presence is Required at Agmar's Hammer##11996
		..accept Rifle the Bodies##11999
		..accept The Magical Kingdom of Dalaran##12791
	step //6
		home Agmar's Hammer
	step //7
		goto 37.5,45.8
		.talk Narzun Skybreaker##26566
		..fpath Agmar's Hammer
	step //8
		goto 36.6,46.6
		.talk Senior Sergeant Juktok##26415
		..accept The Taunka and the Tauren##11979
	step //9
		goto 26.2,50.8
		.talk Kilix the Unraveler##26653
		..accept An Enemy in Arthas##12040
	step //10
		goto 26.1,49.6
		.'Kill 6 Anub'ar Underlords inside this cave|kill 6 Anub'ar Underlord|q 12040/1
	step //11
		goto 26.2,50.8
		.talk Kilix the Unraveler##26653
		..turnin An Enemy in Arthas##12040
		..accept The Lost Empire##12041
	step //12
		'Go outside the cave and southwest to 22.3,54.1|goto 22.3,54.1
		.' Click the Dead Mage Hunter bodies on the ground
		.get Mage Hunter Personal Effects bags|n
		.' Click the Mage Hunter Personal Effects bags|use Mage Hunter Personal Effects##35792
		.get Moonrest Gardens Plans|q 11999/1
	step //13
		goto 36.3,45.6
		.talk Overlord Agmar##26379
		..turnin The Lost Empire##12041
	step //14
		goto 38.1,46.2
		.talk Image of Archmage Aethas Sunreaver##26471
		..turnin Rifle the Bodies##11999
		..accept Prevent the Accord##12005
	step //15
		goto 18.4,58.9
		.from Wind Trader Mu'fah##26496
		.get Wind Trader Mu'fah's Remains|q 12005/1
	step //16
		'Go inside the building to 19.4,58.1|goto 19.4,58.1
		.from Goramosh##26349
		.get The Scales of Goramosh|q 12005/2
		.get Goramosh's Strange Device|n
		.' Click Goramosh's Strange Device|use Goramosh's Strange Device##36746
		..accept A Strange Device##12059
	step //17
		goto 38.1,46.2
		.talk Image of Archmage Aethas Sunreaver##26471
		..turnin Prevent the Accord##12005
		..turnin A Strange Device##12059
		..accept Projections and Plans##12061
	step //18
		goto 22.2,54.8
		.' Use your Surge Needle Teleporter anywhere inside Moonrest Gardens|use Surge Needle Teleporter##36747
		.' Move toward the center of the platform you get teleported onto
		.' Observe the Object on the Surge Needle|goal Object on the Surge Needle observed|q 12061/1
	step //19
		'Use your Surge Needle Teleporter to go back down to the ground|goto 22.6,57.0,0.3|use Surge Needle Teleporter##36747|noway|c
	step //20
		goto 38.1,46.2
		.talk Image of Archmage Aethas Sunreaver##26471
		..turnin Projections and Plans##12061
		..accept The Focus on the Beach##12066
	step //21
		goto 24.2,60.1
		.talk Ethenial Moonshadow##26501
		..accept Avenge this Atrocity!##12006
	step //22
		goto 20.9,60.4
		.kill 15 Blue Dragonflight forces at Moonrest Gardens|tip Moonrest Highbornes will not give you credit.|q 12006/1
	step //23
		goto 24.2,60.1
		.talk Ethenial Moonshadow##26501
		..turnin Avenge this Atrocity!##12006
		..accept End Arcanimus##12013
	step //24
		goto 20,59.7
		.kill 1 Arcanimus|q 12013/1|tip He's a huge white ghost looking thing, at the bottom of this pit.
	step //25
		goto 24.2,60.1
		.talk Ethenial Moonshadow##26501
		..turnin End Arcanimus##12013
	step //26
		goto 26.4,65
		.from Captain Emmy Malin##26762
		.get Ley Line Focus Control Ring|n
		.' Use the Ley Line Focus Control Ring next to the half-circle|use Ley Line Focus Control Ring##36751|tip It's a big half-circle purple glowing thing.
		.' Retrieve ley line focus information|goal Ley line focus information retrieved|q 12066/1
	step //27
		'Hearth to Agmar's Hammer|goto 38.1,46.6,1|use hearthstone##6948|noway|c
	step //28
		goto 38.1,46.2
		.talk Image of Archmage Aethas Sunreaver##26471
		..turnin The Focus on the Beach##12066
		..accept Atop the Woodlands##12084
	step //29
		goto 36.5,47.9
		.talk Earthwarden Grife##26854
		..accept Strengthen the Ancients##12096
	step //30
		goto 31.2,59.7
		.talk Woodlands Walker##26421
		.collect 3 Bark of the Walkers##36786|q 12096
	step //31
		goto 30.6,63.4
		.' Use your Bark of the Walkers on Lothalor Ancients|use Bark of the Walkers##36786|tip They just stand around this area and they are friendly toward you.
		.' Strengthen 3 Lothalor Ancients|goal 3 Lothalor Ancient strengthened|q 12096/1
	step //32
		goto 32.2,70.6
		.from Lieutenant Ta'zinni##26815
		.get Ley Line Focus Amulet|n
		.get Lieutenant Ta'zinni's Letter|n
		.' Click Lieutenant Ta'zinni's Letter|use Lieutenant Ta'zinni's Letter##36780
		..accept A Letter for Home##12085
	step //33
		goto 32.2,71.2
		.' Use your Ley Line Focus Control Amulet on the Ley Line Focus|use Ley Line Focus Control Amulet##36779|tip It's a big half-circle purple glowing thing.
		.' Retrieve Ley Line Focus information|goal Ley line focus information retrieved|q 12084/1
	step //34
		goto 36.5,47.9
		.talk Earthwarden Grife##26854
		..turnin Strengthen the Ancients##12096
	step //35
		goto 38.1,46.2
		.talk Image of Archmage Aethas Sunreaver##26471
		..turnin Atop the Woodlands##12084
		..accept Search Indu'le Village##12106
	step //36
		goto 36.3,45.6
		.talk Overlord Agmar##26379
		..turnin A Letter for Home##12085
	step //37
		goto 40.3,66.9
		.' Click Mage-Commander Evenstar's body floating underwater
		..turnin Search Indu'le Village##12106
		..accept The End of the Line##12110
	step //38
		goto 39.8,66.9
		.' Use your Ley Line Focus Control Talisman on the Ley Line Focus|use Ley Line Focus Control Talisman##36815|tip It's a big half-circle purple glowing thing underwater.
		.' Retrieve Ley Line Focus information|goal Ley Line Focus information retrieved|q 12110/1
	step //39
		goto 53,66.4
		.' Go to this spot on the cliff to Observe Azure Dragonshrine|goal Azure Dragonshrine observed|q 12110/2
	step //40
		goto 38.1,46.2
		.talk Image of Archmage Aethas Sunreaver##26471
		..turnin The End of the Line##12110
		..accept Gaining an Audience##12122
	step //41
		goto 14.2,49.8
		.talk Blood Guard Roh'kill##26180
		..accept Pride of the Horde##11980
	step //42
		goto 12.8,48.5
		.talk Emissary Brighthoof##26181
		..turnin The Taunka and the Tauren##11979
		..accept Into the Fold##11978
	step //43
		goto 15.5,51.2
		.kill 15 Anub'ar Ambusher|q 11980/1
		.' Click Horde Armament crates|tip The Horde Armaments look like crates sitting on the ground around this area.
		.get 10 Horde Armaments|q 11978/1
	step //44
		goto 14.2,49.8
		.talk Blood Guard Roh'kill##26180
		..turnin Pride of the Horde##11980
	step //45
		goto 12.8,48.5
		.talk Emissary Brighthoof##26181
		..turnin Into the Fold##11978
		..accept Blood Oath of the Horde##11983
	step //46
		.talk Taunka'le Refugee##26184
		.' Admit 5 Taunka Into the Horde|goal 5 Taunka Admitted Into the Horde|q 11983/1
	step //47
		goto 12.8,48.5
		.talk Emissary Brighthoof##26181
		..turnin Blood Oath of the Horde##11983
		..accept Agmar's Hammer##12008
	step //48
		'Hearth to Agmar's Hammer|goto 38.1,46.6,1|use hearthstone##6948|noway|c
	step //49
		goto 36.3,45.6
		.talk Overlord Agmar##26379
		..turnin Agmar's Hammer##12008
		..accept Victory Nears...##12034
	step //50
		goto 36.6,46.6
		.talk Senior Sergeant Juktok##26415
		..turnin Victory Nears...##12034
		..accept From the Depths of Azjol-Nerub##12036
	step //51
		goto 36.6,47.2
		.talk Borus Ironbender##26564
		..accept Black Blood of Yogg-Saron##12039
	step //52
		goto 37.1,48.6
		.talk Soar Hawkfury##26504
		..accept Containing the Rot##12100
	step //53
		goto 35.8,48.4
		.talk Captain Gort##26618
		..accept Marked for Death: High Cultist Zangus##12056
	step //54
		goto 29,50.7
		.kill Blighted Elk and Rabid Grizzlies|n
		.kill 15 Infected Wildlife|q 12100/1
		.get Rot Resistant Organ|q 12100/2
	step //55
		goto 26.5,49.6
		.' Click Black Blood of Yogg-Saron mining nodes|tip They look like green mining nodes inside this cave.
		.get 10 Black Blood of Yogg-Saron Sample|q 12039/1
	step //56
		'Go down into the cave to 28.9,49.7|goto 28.9,49.7
		.from High Cultist Zangus##26655
		.get Head of High Cultist Zangus|q 12056/1
	step //57
		'Inside the cave, go to 26.2,50.4|goto 26.2,50.4
		.' Explore the Pit of Narjun|goal Pit of Narjun Explored|q 12036/1|tip Next to the instance portal.
	step //58
		'Go outside the cave and east to 35.8,48.4|goto 35.8,48.4
		.talk Captain Gort##26618
		..turnin Marked for Death: High Cultist Zangus##12056
	step //59
		goto 37.1,48.6
		.talk Soar Hawkfury##26504
		..turnin Containing the Rot##12100
		..accept The Good Doctor...##12101
	step //60
		goto 36.1,48.9
		.talk Doctor Sintar Malefious##26505
		..turnin The Good Doctor...##12101
		..accept In Search of the Ruby Lilac##12102
	step //61
		goto 36.6,47.2
		.talk Borus Ironbender##26564
		..turnin Black Blood of Yogg-Saron##12039
		..accept Scourge Armaments##12048
	step //62
		goto 36.6,46.6
		.talk Senior Sergeant Juktok##26415
		..turnin From the Depths of Azjol-Nerub##12036
		..accept The Might of the Horde##12053
	step //63
		goto 35.8,46.7
		.talk Greatmother Icemist##26652
		..accept Strength of Icemist##12063
	step //64
		goto 26.9,43.3
		.kill Anub'ar mobs|n
		.get 8 Scourge Armament|q 12048/1
		.get Flesh-bound Tome|n
		.' Click the Flesh-bound Tome|use Flesh-bound Tome##36744
		..accept The Flesh-Bound Tome##12057
	step //65
		goto 22.6,41.7
		.talk Banthok Icemist##26733
		..turnin Strength of Icemist##12063
		..accept Chains of the Anub'ar##12064
	step //66
		goto 24.8,41.2
		.' Use your Warsong Battle Standard in this spot|use Warsong Battle Standard##36738
		.' Defend the Warsong Battle Standard|goal Warsong Battle Standard Defended|q 12053/1
	step //67
		goto 26.6,39.2
		.from Tivax the Breaker##26770
		.get Tivax's Key Fragment|q 12064/2
		.' You can also find Tivax the Breaker in another big hut at 24.0,39.5|c |n
	step //68
		goto 26.2,44.5
		.from Sinok the Shadowrager##26771
		.get Sinok's Key Fragment|q 12064/3
		.' Sinok the Shadowrager will has several spawn points inside of the building.
	step //69
		goto 24.9,43.9
		.from Anok'ra the Manipulator##26769
		.get Anok'ra's Key Fragment|q 12064/1
	step //70
		goto 22.6,41.7
		.talk Banthok Icemist##26733
		..turnin Chains of the Anub'ar##12064
		..accept Return of the High Chief##12069
	step //71
		goto 25.6,40.9
		.' Click the Anub'ar Mechanism to free Roanauk Icemist|tip It's a floating purple crystal.
		.' Help him kill Under-king Anub'et'kan
		.' Click Anub'et'kan's Carapace
		.get Fragment of Anub'et'kan's Husk|q 12069/1
	step //72
		'Hearth to Agmar's Hammer|goto 38.1,46.6,1|use hearthstone##6948|noway|c
	step //73
		goto 36.3,45.6
		.talk Overlord Agmar##26379
		..turnin Return of the High Chief##12069
		..accept All Hail Roanauk!##12140
	step //74
		goto 36.6,46.6
		.talk Senior Sergeant Juktok##26415
		..turnin The Might of the Horde##12053
		..accept Attack by Air!##12071
	step //75
		goto 36.6,47.2
		.talk Borus Ironbender##26564
		..turnin Scourge Armaments##12048
	step //76
		goto 35.8,48.4
		.talk Captain Gort##26618
		..turnin The Flesh-Bound Tome##12057
		..accept Koltira and the Language of Death##12115
	step //77
		goto 37.1,46.5
		.talk Koltira Deathweaver##26581
		..turnin Koltira and the Language of Death##12115
		..accept In Service of Blood##12125
		..accept In Service of the Unholy##12126
		..accept In Service of Frost##12127
	step //78
		goto 37.2,45.7
		.talk Valnok Windrager##26574
		..turnin Attack by Air!##12071
		..accept Blightbeasts be Damned!##12072
	step //79
		goto 36.2,45.4
		.talk Roanauk Icemist##26810
		.' Initiate Roanauk Icemist|goal Roanauk Icemist initiated|q 12140/1
	step //80
		goto 36.3,45.6
		.talk Overlord Agmar##26379
		..turnin All Hail Roanauk!##12140
	step //81
		goto 37.5,64.1
		.' Fight a Deranged Indu'le Villager
		.' Use your Blood Gem on it when it is almost dead|use Blood Gem##36827
		.get Filled Blood Gem|q 12125/1
	step //82
		goto 27.5,44.8
		.' Use Valnok's Flare Gun on this bridge to call a Kor'kron War Rider|use Valnok's Flare Gun##36774
		.' Click the Kor'kron War Rider to ride it|invehicle|c
	step //83
		goto 27.8,38.9
		.' Use the abilities on your action bar
		.kill 25 Anub'ar Blightbeast|q 12072/1|tip They are flying around the buildings here.
	step //84
		goto 37.1,46.5
		.talk Koltira Deathweaver##26581
		..turnin In Service of Blood##12125
	step //85
		goto 37.2,45.7
		.talk Valnok Windrager##26574
		..turnin Blightbeasts be Damned!##12072
	step //86
		goto 47.7,49.1
		.from Dahlia Suntouch##27680
		.get Ruby Brooch|n
		.' Click the Ruby Brooch in your bags|use Ruby Brooch##37833
		..accept The Fate of the Ruby Dragonshrine##12419
		.' Click the Ruby Lilac|tip The Ruby Lilac is a white flower plant inside the trunk of this huge tree.
		.get Ruby Lilac|q 12102/1
	step //87
		goto 46.9,50
		.' Fight Duke Vallenhaal|tip He walks around this tree on a horse.
		.' Use your Unholy Gem on him when he's almost dead|use Unholy Gem##36835
		.get Filled Unholy Gem|q 12126/1
	step //88
		goto 57.9,54.2
		.talk Tariolstrasz##26443
		..turnin Gaining an Audience##12122
		..accept Speak with your Ambassador##12767
	step //89
		goto 57.9,54.2
		.talk Tariolstrasz##26443
		..'Tell him you need to go to the top of the temple|goto 59.7,53.1,0.5|noway|c
	step //90
		goto 59.6,54.4
		.talk Lord Itharius##27785
		..accept Seeds of the Lashers##12458
	step //91
		goto 59.8,54.7
		.talk Krasus##27990
		..turnin The Fate of the Ruby Dragonshrine##12419
	step //92
		goto 60,54.5
		.talk Chromie##27856
		..accept Mystery of the Infinite##12470
	step //93
		goto 60.1,54.2
		.talk Nalice##27765
		..accept The Obsidian Dragonshrine##12447
	step //94
		goto 59.5,53.3
		.talk Torastrasza##26949
		..'Tell him you want to go to the ground level of the temple|goto 58.0,55.2,0.5|noway|c
	step //95
		goto 58,55.4
		.talk Golluck Rockfist##27804
		..turnin Speak with your Ambassador##12767
		..accept Report to the Ruby Dragonshrine##12461
	step //96
		home Wyrmrest Temple
	step //97
		goto 60.3,51.6
		.talk Nethestrasz##26851
		..fpath Wyrmrest Temple
	step //98
		goto 66.2,52.9
		.' Fight an Ice Revenant
		.' Use your Frost Gem on it when it's almost dead|use Frost Gem##36847
		.get Filled Frost Gem|q 12127/1
	step //99
		goto 60.3,51.6|n
		.'Fly to Agmar's Hammer|goto 37.5,45.7,0.5|noway|c
	step //100
		goto 37.1,46.5
		.talk Koltira Deathweaver##26581
		..turnin In Service of the Unholy##12126
		..turnin In Service of Frost##12127
		..accept The Power to Destroy##12132
	step //101
		'He puts you in the world of shadows
		.' They're all around town in Agmar's Hammer
		.kill 6 Shadowy Tormentor|q 12132/1
	step //102
		'Right click the World of Shadows buff at the top right of your screen to leave the world of shadows|nobuff World of Shadows|c
	step //103
		goto 37.1,46.5
		.talk Koltira Deathweaver##26581
		..turnin The Power to Destroy##12132
		..accept The Translated Tome##12136
	step //104
		goto 36.1,48.9
		.talk Doctor Sintar Malefious##26505
		..turnin In Search of the Ruby Lilac##12102
		..accept Return to Soar##12104
	step //105
		goto 35.8,48.4
		.talk Captain Gort##26618
		..turnin The Translated Tome##12136
	step //106
		goto 37.1,48.6
		.talk Soar Hawkfury##26504
		..turnin Return to Soar##12104
		..accept Where the Wild Things Roam##12111
	step //107
		goto 38.4,48.3
		.' Use your Pack of Vaccine and throw it at 5 Arctic Grizzlies and 5 Snowfall Elk|use Pack of Vaccine##36818
		.' Inoculate 5 Snowfall Elk|goal 5 Snowfall Elk Inoculated|q 12111/1
		.' Inoculate 5 Arctic Grizzlies|goal 5 Arctic Grizzly Inoculated|q 12111/2
	step //108
		goto 37.1,48.6
		.talk Soar Hawkfury##26504
		..turnin Where the Wild Things Roam##12111
	step //109
		goto 43,50.9
		.talk Vargastrasz##27763
		..turnin Report to the Ruby Dragonshrine##12461
		..accept Heated Battle##12448
	step //110
		goto 42.8,51.4
		.' Help kill the following:
		.' 12 Frigid Ghoul Attackers|kill 12 Frigid Ghoul Attacker|q 12448/1
		.' 8 Frigid Geist Attackers|kill 8 Frigid Geist Attacker|q 12448/2
		.' 1 Frigid Abomination Attacker|kill 1 Frigid Abomination Attacker|q 12448/3
	step //111
		'Go up the hill to 43,50.9|goto 43,50.9
		.talk Vargastrasz##27763
		..turnin Heated Battle##12448
		..accept Return to the Earth##12449
	step //112
		goto 46.7,52.8
		.' Click the Ruby Acorns|tip The Ruby Acorns look like red stones on the ground around this area.
		.get Ruby Acorns|n
		.' Use the Ruby Acorns on the Ruby Keeper corpses|use Ruby Acorn##37727|tip The Ruby Keepers look like huge red dragons on fire.
		.' Return 6 Ruby Keepers to the Earth|goal 6 Ruby Keeper Returned to the Earth|q 12449/1
	step //113
		'Go out of the valley to 43,50.9|goto 43,50.9
		.talk Vargastrasz##27763
		..turnin Return to the Earth##12449
		..accept Through Fields of Flame##12450
	step //114
		'Go into the valley to 48.2,47.8|goto 48.2,47.8
		.kill 6 Frigid Necromancer|q 12450/1
	step //115
		'Go into the tree trunk to 47.7,49.1|goto 47.7,49.1
		.from Dahlia Suntouch##27680
		.' Cleanse the Ruby Corruption|goal Ruby Corruption Cleansed|q 12450/2
	step //116
		'Go out of the valley to 43.0,50.9|goto 43.0,50.9
		.talk Vargastrasz##27763
		..turnin Through Fields of Flame##12450
		..accept The Steward of Wyrmrest Temple##12769
	step //117
		goto 57.9,54.2
		.talk Tariolstrasz##26443
		..turnin The Steward of Wyrmrest Temple##12769
		..accept Informing the Queen##12124
	step //118
		goto 57.9,54.2
		.talk Tariolstrasz##26443
		..'Tell him you want to go to the top of the temple|goto 59.7,53.1,0.5|noway|c
	step //119
		goto 59.8,54.7
		.talk Alexstrasza the Life-Binder##26917
		..turnin Informing the Queen##12124
		..accept Report to Lord Afrasastrasz##12435
	step //120
		goto 59.5,53.3
		.talk Torastrasza##26949
		..'Tell him you want to go to Lord Afrasastrasz|goto 59.2,54.3,0.5|noway|c
	step //121
		goto 59.2,54.3
		.talk Lord Afrasastrasz##27575
		..turnin Report to Lord Afrasastrasz##12435
		..accept Defending Wyrmrest Temple##12372
	step //122
		ding 75
	step //123
		goto 58.3,55.2
		.talk a Wyrmrest Defender##27629
		..'Tell him you are ready to get into the fight
		.' Fly around Wyrmrest Temple fighting the blue dragons in the sky using your abilities on your hotbar
		.kill 3 Azure Dragon|q 12372/1
		.kill 5 Azure Drake|q 12372/2
	step //124
		'Fly southwest to 55.1,66.4|goto 55.1,66.4
		.' Fly into the huge purple swirling column
		.' Use your Destabilize Azure Dragonshrine ability|petaction Destabilize Azure Dragonshrine
		.' Destabilize the Azure Dragonshrine|goal Destabilize the Azure Dragonshrine|q 12372/3
	step //125
		goto 58.7,54.5|n
		'Click the red arrow to get off the dragon on the middle level of the temple|script VehicleExit()|outvehicle|c
	step //126
		goto 59.2,54.3
		.talk Lord Afrasastrasz##27575
		..turnin Defending Wyrmrest Temple##12372
	step //127
		goto 59.2,54.3
		.talk Lord Afrasastrasz##27575
		..'Tell him you want to go to the ground level|goto 58.0,55.2,0.5|noway|c
	step //128
		goto 63.3,71
		.kill Emerald Lashers|n
		.get 3 Lasher Seed|q 12458/1
	step //129
		goto 57.9,54.2
		.talk Tariolstrasz##26443
		..'Tell him you want to go to the top of the temple|goto 59.7,53.1,0.5|noway|c
	step //130
		goto 59.6,54.4
		.talk Lord Itharius##27785
		..turnin Seeds of the Lashers##12458
		..accept That Which Creates Can Also Destroy##12459
	step //131
		goto 59.5,53.3
		.talk Torastrasza##26949
		..'Tell him you want to go to the ground level of the temple|goto 58.0,55.2,0.5|noway|c
	step //132
		goto 55.2,45.7
		.' Use your Seeds of Nature's Wrath on a Reanimated Frost Wyrm to weaken it|use Seeds of Nature's Wrath##37887|tip They fly around in the sky.
		.kill 1 Weakened Reanimated Frost Wyrm|q 12459/1
	step //133
		goto 60.3,51.6|n
		.'Fly to Venomspite|goto 76.6,62.4,0.5|noway|c
	step //134
		goto 87.2,57.4
		.talk Tilda Darathan##27348
		..accept The Call Of The Crusade##12542
	step //135
		goto 86.2,47
		.' Use your Seeds of Nature's Wrath on a Turgid the Vile to weaken him|use Seeds of Nature's Wrath##37887|tip He's an abomination standing in a small room inside this abandoned fort.
		.kill 1 Weakened Turgid the Vile|q 12459/2
	step //136
		goto 84,26.1
		.talk Crusader Valus##28228
		..turnin The Call Of The Crusade##12542
		..accept The Cleansing Of Jintha'kalar##12545
	step //137
		goto 89.5,19.1
		.' Use your Seeds of Nature's Wrath on Overseer Deathgaze to weaken him|use Seeds of Nature's Wrath##37887|tip He's standing on an undead looking platform.
		.kill 1 Weakened Overseer Deathgaze|q 12459/3
	step //138
		goto 86.8,22.4
		.kill undead mobs|n
		.'Kill 15 Jintha'kalar Scourge|goal 15 Jintha'kalar Scourge Slain|q 12545/1
	step //139
		goto 84,26.1
		.talk Crusader Valus##28228
		..turnin The Cleansing Of Jintha'kalar##12545
		..accept Into the Breach!##12789
	step //140
		goto 71.7,38.9
		.' Use your Hourglass of Eternity anywhere around this area|use Hourglass of Eternity##37923
		.' Fight the mobs that spawn
		.' Protect the Hourglass of Eternity|goal Hourglass of Eternity protected|q 12470/1
	step //141
		'Hearth to Wyrmrest Temple|goto 59.7,54.2,0.5|use hearthstone##6948|noway|c
	step //142
		goto 57.9,54.2
		.talk Tariolstrasz##26443
		..'Tell him you want to go to the top of the temple|goto 59.7,53.1,0.5|noway|c
	step //143
		goto 59.6,54.4
		.talk Lord Itharius##27785
		..turnin That Which Creates Can Also Destroy##12459
	step //144
		goto 60,54.5
		.talk Chromie##27856
		..turnin Mystery of the Infinite##12470
	step //145
		goto 59.5,53.3
		.talk Torastrasza##26949
		..'Tell him you want to go to the ground level of the temple|goto 58.0,55.2,0.5|noway|c
	step //146
		goto 46.7,33.5
		.talk Kontokanis##26979
		..accept Pest Control##12144
	step //147
		goto 37.2,31.8|n
		.' The path to Serinar starts here|goto 37.2,31.8,0.3|noway|c
	step //148
		'Go inside the cave to 35.2,30.0|goto 35.2,30.0
		.talk Serinar##26593
		..turnin The Obsidian Dragonshrine##12447
		..accept No One to Save You##12262
		..accept No Place to Run##12261
	step //149
		'Go outside the cave to 37.9,32.0|goto 37.9,32.0
		.kill 6 Burning Depths Necrolyte|q 12262/1
		.kill 10 Smoldering Skeleton|q 12262/2
	step //150
		goto 42.1,32
		.' Use your Destructive Wards in this spot|use Destructive Wards##37445
		.' Defend the Destructive Ward from the mobs that spawn
		.' Fully Charge the Destructive Ward|goal Destructive Ward Fully Charged|q 12261/1
	step //151
		'Go west into the cave to 35.2,30.0|goto 35.2,30.0
		.talk Serinar##26593
		..turnin No One to Save You##12262
		..turnin No Place to Run##12261
		..accept The Best of Intentions##12263
	step //152
		'Follow the path in the cave while disguised as a cultist to 31.8,30.5|goto 31.8,30.5
		.' Uncover the Magmawyrm Resurrection Chamber|goal Uncover the Magmawyrm Resurrection Chamber|q 12263/1
	step //153
		'Follow the path back down to 35.2,30.0|goto 35.2,30.0
		.talk Serinar##26593
		..turnin The Best of Intentions##12263
		..accept Culling the Damned##12264
		..accept Defiling the Defilers##12265
	step //154
		'Follow the path in the cave to 34.2,26.8|goto 34.2,26.8
		.kill 3 Burning Depths Necromancer|q 12264/1
		.kill 6 Smoldering Construct|q 12264/2
		.kill 6 Smoldering Geist|q 12264/3
		.' Click Necromantic Runes on the ground|tip The Necromantic Runes look like round purple symbols on the ground around this area in the cave.
		.' Destroy 8 Necromantic Runes|goal 8 Necromantic Rune destroyed|q 12265/1
	step //155
		'Go back down in the cave to 35.2,30.0|goto 35.2,30.0
		.talk Serinar##26593
		..turnin Culling the Damned##12264
		..turnin Defiling the Defilers##12265
		..accept Neltharion's Flame##12267
	step //156
		'Follow the path in the cave to 31.6,31.2|goto 31.6,31.2
		.' Use Neltharion's Flame to Cleanse the Summoning Area|use Neltharion's Flame##37539|tip Stand on the edge of the rock, next to the lava.
		.kill 1 Rothin the Decaying|q 12267/2
	step //157
		'Go back down in the cave to 35.2,30.0|goto 35.2,30.0
		.talk Serinar##26593
		..turnin Neltharion's Flame##12267
		..accept Tales of Destruction##12266
	step //158
		'Hearth to Wyrmrest Temple|goto 59.7,54.2,0.3|use hearthstone##6948|noway|c
	step //159
		goto 57.9,54.2
		.talk Tariolstrasz##26443
		..'Tell him you want to go to the top of the temple|goto 59.7,53.1,0.5|noway|c
	step //160
		goto 60.1,54.2
		.talk Nalice##27765
		..turnin Tales of Destruction##12266
	step //161
		goto 59.5,53.3
		.talk Torastrasza##26949
		..'Tell him you want to go to the ground level of the temple|goto 58.0,55.2,0.5|noway|c
	step //162
		goto 56.8,56.3
		.'Kill 3 Dragonblight Magnataurs|goal 3 Dragonblight Magnataur|q 12144/2
	step //163
		goto 55.6,52.8
		.'Kill 10 Snowplain Snobolds|goal 10 Snowplain Snobolds|q 12144/1
	step //164
		goto 46.7,33.5
		.talk Kontokanis##26979
		..turnin Pest Control##12144
		..accept Canyon Chase##12145
	step //165
		'Follow the running kobols to 42.4,38.9|goto 42.4,38.9
		.kill 1 Icefist|q 12145/1
		.get Emblazoned Battle Horn|n
		.' Click the Emblazoned Battle Horn|use Emblazoned Battle Horn##36856
		..accept Disturbing Implications##12147
	step //166
		goto 46.7,33.5
		.talk Kontokanis##26979
		..turnin Canyon Chase##12145
	step //167
		goto 48.5,24.1
		.talk Nozzlerust Supply Runner##26896
		..accept Return to Sender##12469
	step //168
		goto 54.5,23.6
		.talk Narf##26647
		..accept Nozzlerust Defense##12043
	step //169
		goto 54.7,23.2
		.talk Zivlix##26661
		..accept Shaved Ice##12045
	step //170
		goto 55,23.4
		.talk Xink##26660
		..turnin Return to Sender##12469
		..accept Stocking Up##12044
	step //171
		goto 53.7,18.9
		.kill Crystalline Ice Elementals|n
		.get 4 Ice Shard Cluster|q 12045/1
	step //172
		goto 54.7,23.2
		.talk Zivlix##26661
		..turnin Shaved Ice##12045
		..accept Soft Packaging##12046
	step //173
		goto 53.7,25.4
		.kill Jormungar Tunnelers|n
		.get 12 Thin Animal Hide|q 12046/1
	step //174
		goto 54.7,23.2
		.talk Zivlix##26661
		..turnin Soft Packaging##12046
		..accept Something That Doesn't Melt##12047
	step //175
		goto 55,23.4
		.talk Xink##26660
		..accept Hard to Swallow##12049
	step //176
		goto 57.5,23.9
		.' Click Splintered Bone Chunks|tip The Splintered Bone Chunks look like small white pointed bones on the ground next to the huge bones on the ground around this area.
		.get 12 Splintered Bone Chunk|q 12047/1
		.' Fight a Hulking Jormungar
		.' Use your Potent Explosive Charges on the Hulking Jormungar when he opens his mouth|use Potent Explosive Charges##36732
		.' Click the Jormungar Meat
		.get 6 Seared Jormungar Meat|q 12049/1
	step //177
		goto 55,23.4
		.talk Xink##26660
		..turnin Hard to Swallow##12049
	step //178
		goto 54.7,23.2
		.talk Zivlix##26661
		..turnin Something That Doesn't Melt##12047
	step //179
		goto 54.5,23.6
		.talk Narf##26647
		..accept Harp on This!##12052
	step //180
		goto 55,23.4
		.talk Xink##26660
		..accept Lumber Hack##12050
	step //181
		goto 53.1,19.5
		.' Use Xink's Shredder Control Device|use Xink's Shredder Control Device
		.' Click the shredder to ride it
		.'Kill 15 Coldwind Harpies|goal 15 Coldwind Harpies|q 12052/2
		.' Use your Gather Lumber ability next to Coldwind Trees|petaction Gather Lumber|tip The Coldwind Trees look like trees with small pieces of paper with X's on them.
		.get 50 Coldwind Lumber|q 12050/1
	step //182
		goto 44.9,9.1
		.kill 1 Mistress of the Coldwind|q 12052/1|tip She flies around this area.
	step //183
		goto 54.5,23.6
		.talk Narf##26647
		..turnin Harp on This!##12052
	step //184
		goto 55,23.4
		.talk Xink##26660
		..turnin Lumber Hack##12050
	step //185
		goto 54.5,23.6
		.talk Narf##26647
		..accept Stiff Negotiations##12112
	step //186
		goto 52.4,30.4
		.kill 12 Wastes Digger|q 12043/2
		.kill 1 Wastes Taskmaster|q 12043/1
		.' Click Composite Ore|tip They look like carts with ore piled in them.
		.get 8 Composite Ore|q 12044/1
		.' You can find more of all of these at 56.5,28.1|n
	step //187
		goto 54.5,23.6
		.talk Narf##26647
		..turnin Nozzlerust Defense##12043
	step //188
		goto 55,23.4
		.talk Xink##26660
		..turnin Stocking Up##12044
	step //189
		goto 59.4,18.2
		.talk Zort##26659
		..turnin Stiff Negotiations##12112
		..accept Slim Pickings##12075
	step //190
		'Go into the cave to 56.2,12.0|goto 56.2,12.0
		.' Click the Ravaged Crystalline Ice Giant|tip It's an ice giant corpse laying inside this cave.
		.get Sample of Rockflesh|q 12075/1
	step //191
		goto 59.4,18.2
		.talk Zort##26659
		..turnin Slim Pickings##12075
		..accept Messy Business##12076
	step //192
		goto 59,17.8
		.talk Ko'char the Unbreakable##26473
		..accept Stomping Grounds##12079
	step //193
		goto 57.5,12.4
		.' Fight Ice Heart Jormungar Feeders
		.' They will cast a poison on you
		.' Use Zort's Scraper when you are affected by the poison|use Zort's Scraper##36775
		.get 2 Vial of Corrosive Spit|q 12076/1
		.kill 8 Ice Heart Jormungar Feeder|q 12079/1
	step //194
		'Go outside the cave to 59.4,18.2|goto 59.4,18.2
		.talk Zort##26659
		..turnin Messy Business##12076
		..accept Apply This Twice A Day##12077
	step //195
		goto 59,17.8
		.talk Ko'char the Unbreakable##26473
		..turnin Apply This Twice A Day##12077
		..turnin Stomping Grounds##12079
	step //196
		goto 59.4,18.2
		.talk Zort##26659
		..accept Worm Wrangler##12078
	step //197
		'Go into the cave to 55.3,11.0|goto 55.3,11.0
		.' Use your Sturdy Crates on Ice Heart Jormungar Spawns|use Sturdy Crates##36771
		.' Click the Captured Jormungar Spawn crates
		.get 3 Captured Jormungar Spawn|q 12078/1
	step //198
		'Go outside the cave to 59.4,18.2|goto 59.4,18.2
		.talk Zort##26659
		..turnin Worm Wrangler##12078
	step //199
		'Hearth to Wyrmrest Temple|goto 59.7,54.2,0.5|use hearthstone##6948|noway|c
	step //200
		goto 60,55.2
		.talk Aurastasza##26983
		..turnin Disturbing Implications##12147
	step //201
		'Fly to Agmar's Hammer|goto 37.5,45.7,0.5|noway|c
	step //202
		goto 36.3,45.6
		.talk Overlord Agmar##26379
		..accept The Kor'kron Vanguard!##12224
	step //203
		goto 40.7,18.1
		.talk Saurfang the Younger##25257
		..turnin The Kor'kron Vanguard!##12224
		..accept Audience With The Dragon Queen##12496
	step //204
		goto 43.8,16.9
		.talk Numo Spiritbreeze##26850
		..fpath Kor'kron Vanguard
	step //205
		'Fly to Wyrmrest Temple|goto 60.3,51.4,0.5|noway|c
	step //206
		goto 57.9,54.2
		.talk Tariolstrasz##26443
		..'Tell him you want to go to the top of the temple|goto 59.7,53.1,0.5|noway|c
	step //207
		goto 59.8,54.7
		.talk Alexstrasza the Life-Binder##26917
		..turnin Audience With The Dragon Queen##12496
		..accept Galakrond and the Scourge##12497
	step //208
		goto 59.5,53.3
		.talk Torastrasza##26949
		..turnin Galakrond and the Scourge##12497
		..accept On Ruby Wings##12498
	step //209
		'Use your Ruby Beacon of the Dragon Queen|use Ruby Beacon of the Dragon Queen##38302
		.' Click the red dragon to ride it|invehicle|c
	step //210
		'Fly to 57.2,33.1|goto 57.2,33.1
		.' Use the abilities on your hotbar
		.kill 30 Wastes Scavenger|q 12498/1
	step //211
		'Fly to 54.5,31.3|goto 54.5,31.3
		.' Use the abilities on your hotbar
		.kill Thiassi the Lightning Bringer|n|tip At the peak of this mountain.
		.' Jump off the dragon|script VehicleExit()
		.from Grand Necrolord Antiok##28006
		.' Click the Scythe of Antiok
		.get Scythe of Antiok|q 12498/2
	step //212
		'Use your Ruby Beacon of the Dragon Queen|use Ruby Beacon of the Dragon Queen##38302
		.' Click the red dragon to ride it|invehicle|c
	step //213
		'Fly to 59.8,54.7|goto 59.8,54.7
		.' Jump off the dragon|script VehicleExit()
		.talk Alexstrasza the Life-Binder##26917
		..turnin On Ruby Wings##12498
		..accept Return To Angrathar##12500
	step //214
		goto 59.5,53.3
		.talk Torastrasza##26949
		..'Tell him you want to go to the ground level of the temple|goto 58.0,55.2,0.5|noway|c
	step //215
		'Fly to Kor'kron Vanguard|goto 43.9,16.8,0.5|noway|c
	step //216
		goto 40.7,18.1
		.talk Saurfang the Younger##25257
		..turnin Return To Angrathar##12500
	step //217
		goto 38.5,19.3
		.talk Alexstrasza the Life-Binder##31333
		..accept Darkness Stirs##13242
	step //218
		goto 38.2,18.7
		.' Click Saurfang's Battle Armor|tip It's a tiny helmet on the ground, next to a bunch of flowers.
		.get Saurfang's Battle Armor|q 13242/1
	step //219
		goto 43.8,16.9
		.talk Numo Spiritbreeze##26850
		.' Fly to Warsong Hold|goto Borean Tundra,40.4,51.5,0.5|noway|c
	step //220
		'Go downstairs to 41.4,53.7|goto Borean Tundra,41.4,53.7
		.talk High Overlord Saurfang##25256
		..turnin Darkness Stirs##13242
		..accept Herald of War##13257
	step //221
		'Click the Portal to Orgrimmar that spawns in the middle of the room.|goto Durotar|noway|c
	step //222
		'Go inside Orgrimmar|goto Orgrimmar|noway|c
	step //223
		goto Orgrimmar,31.8,37.8
		.talk Thrall##31412
		..turnin Herald of War##13257
		..accept A Life Without Regret##13266
	step //224
		'Click a Portal to Undercity that spawns in the middle of the room to go to Undercity|goto Tirisfal Glades|noway|c
	step //225
		goto Tirisfal Glades,61.7,62.7
		.talk Vol'jin##31649
		..turnin A Life Without Regret##13266
		..accept The Battle For The Undercity##13267
	step //226
		goto 62,62.7
		.talk Thrall##31650
		.' Tell him you are ready
		.' Wait for the battle to begin
		.' Help Thrall and Lady Sylvanas Windrunner take control of Undercity
		.' After the battle, talk to Thrall
		..turnin The Battle For The Undercity##13267
	step //227
		'Ride the zeppelin to Borean Tundra|goto Borean Tundra|noway|c
	step //228
		'Fly to Agmar's Hammer|goto Dragonblight,37.5,45.7,0.5|noway|c
	step //229
		goto Dragonblight,38.1,46.2
		.talk Image of Archmage Aethas Sunreaver##26471
		..'Teleport to Dalaran|goto Dalaran|noway|c
	step //230
		'Go downstairs to 56.3,46.8|goto Dalaran,56.3,46.8
		.talk Archmage Celindra##29156
		..turnin The Magical Kingdom of Dalaran##12791
		..accept Learning to Leave and Return: the Magical Way##12790
	step //231
		goto 56.3,46.8
		.' Click the Teleport to Violet Stand Crystal|tip Downstrairs in a small room.  It's a blue floating trianglular jewel.
		.' Use the Teleport to Violet Stand Crystal|goal Teleport to Violet Stand Crystal used|q 12790/1
	step //232
		goto Crystalsong Forest,15.8,42.5
		.' Click the Teleport to Dalaran Crystal|tip It's a blue triangular crystal floating about a blue and purple symbol on the ground.
		.' Use the Teleport to Dalaran Crystal|goal Teleport to Dalaran Crystal used|q 12790/2
	step //233
		'Go downstairs to 56.3,46.8|goto Dalaran,56.3,46.8
		.talk Archmage Celindra##29156
		..turnin Learning to Leave and Return: the Magical Way##12790
	step //234
		goto 72.2,45.8
		.talk Aludane Whitecloud##28674
		..fpath Dalaran
	step //235
		'Go underground into the sewer to 45.4,40.8|goto 45.4,40.8
		.talk Shifty Vickers##30137
		..accept The Champion's Call!##12974
	step //236
		'Go outside the sewer to 30.6,48.6|goto 30.6,48.6
		.talk Rhonin##16128
		..accept Discretion is Key##13158
	step //237
		goto 61.3,63.7
		.talk Warden Alturas##31080
		..turnin Discretion is Key##13158
	step //238
		'Fly to Venomspite|goto Dragonblight,76.6,62.4,0.5|noway|c
	step //239
		'Go east to the Grizzly Hills|goto Grizzly Hills|noway|c
	step //240
		goto Grizzly Hills,22.7,66.2
		.talk Provisioner Lorkran##26868
		..accept Supplemental Income##12436
	step //241
		goto 22,65.1
		.talk Hidetrader Jun'ik##27037
		..accept Gray Worg Hides##12175
	step //242
		goto 22,64.4
		.talk Kragh##26852
		..fpath Conquest Hold
	step //243
		home Conquest Hold
	step //244
		goto 20.7,64.2
		.talk Conqueror Krenna##26860
		..turnin To Conquest Hold, But Be Careful!##12487
		..accept The Conqueror's Task##12468
	step //245
		goto 21,64.1
		.talk Sergeant Nazgrim##27388
		..turnin The Conqueror's Task##12468
		..accept A Show of Strength##12257
		..accept The Flamebinders' Secrets##12256
	step //246
		goto 24.7,66.9
		.kill Graymist Hunters|n
		.get 3 Gray Worg Hide|q 12175/1
	step //247
		goto 24.4,60.7
		.kill Tallhorn Stags|n
		.get 5 Succulent Venison|q 12436/1
	step //248
		goto 22.7,66.2
		.talk Provisioner Lorkran##26868
		..turnin Supplemental Income##12436
	step //249
		goto 22,65.1
		.talk Hidetrader Jun'ik##27037
		..turnin Gray Worg Hides##12175
		..accept A Minor Substitution##12176
	step //250
		goto 28.4,56.5
		.kill Grizzly Bears|n
		.get 6 Grizzly Hide|q 12176/1
	step //251
		goto 22,65.1
		.talk Hidetrader Jun'ik##27037
		..turnin A Minor Substitution##12176
		..accept Jun'ik's Coverup##12177
	step //252
		goto 22.7,66.2
		.talk Provisioner Lorkran##26868
		..buy 5 Simple Flour|q 12177/2
	step //253
		goto 23.4,63.1
		.talk Smith Prigka##27134
		..buy 1 Coal|q 12177/1
	step //254
		goto 22,65.1
		.talk Hidetrader Jun'ik##27037
		..turnin Jun'ik's Coverup##12177
		..accept Delivery to Krenna##12178
	step //255
		goto 20.7,64.2
		.talk Conqueror Krenna##26860
		..turnin Delivery to Krenna##12178
	step //256
		goto 33.6,79
		.kill 12 Dragonflayer Huscarl|q 12257/1
		.kill Dragonflayer Flamebinders|n
		.get 3 Flame-Imbued Talisman|q 12256/1
	step //257
		goto 21,64.1
		.talk Sergeant Nazgrim##27388
		..turnin A Show of Strength##12257
		..turnin The Flamebinders' Secrets##12256
		..accept The Thane of Voldrune##12259
	step //258
		goto 26.6,77.9
		.talk Flamebringer##27292
		.' Unchain and control Flamebringer|invehicle|c
	step //259
		'Fly to 27.1,73.0|goto 27.1,73.0
		.' Use the abilities on your hotbar
		.kill 1 Thane Torvald Eriksson|q 12259/1|tip Standing at the top of this tower.
	step //260
		goto 21,64.1
		.talk Sergeant Nazgrim##27388
		..turnin The Thane of Voldrune##12259
		..accept Onward to Camp Oneqwah##12451
	step //261
		goto 20.7,64.2
		.talk Conqueror Krenna##26860
		..accept My Enemy's Friend##12412
	step //262
		goto 36.3,67.9
		.kill 1 Vladek|q 12412/2|tip Standing inside a house.
		.get Mikhail's Journal|n
		.' Click Mikhail's Journal|use Mikhail's Journal##37830
		..accept Mikhail's Journal##12423
	step //263
		goto 35.2,69.9
		.kill 8 Silverbrook Hunter|q 12412/1
	step //264
		goto 20.7,64.2
		.talk Conqueror Krenna##26860
		..turnin My Enemy's Friend##12412
		..accept Attack on Silverbrook##12413
		..turnin Mikhail's Journal##12423
		..accept Gorgonna##12424
	step //265
		goto 21,64
		.talk Gorgonna##27102
		..turnin Gorgonna##12424
		..accept Tactical Clemency##12422
	step //266
		goto 22.2,64.7
		.talk Sergeant Thurkin##27266
		..accept Good Troll Hunting##12208
	step //267
		goto 22.5,62.8
		.talk Windseer Grayhorn##27262
		..accept Eyes Above##12453
	step //268
		goto 16.2,47.6
		.talk Samir##26424
		..turnin Good Troll Hunting##12208
		..accept Filling the Cages##11984
	step //269
		goto 16.4,48.3
		.talk Budd##26429
		..'Tell him it's time to play with the ice trolls|havebuff INV_Misc_Head_Troll_01|q 11984
	step //270
		goto 13.2,60.5
		.' Use Budd's pet bar skill Tag Troll to have him stun a troll|petaction Tag Troll
		.' Use your Bounty Hunter's Cage on the stunned troll|use Bounty Hunter's Cage##35736
		.' Capture a Live Ice Troll|goal Captured Live Ice Troll|q 11984/1
	step //271
		goto 16.2,47.6
		.talk Samir##26424
		..turnin Filling the Cages##11984
	step //272
		goto 16.4,47.8
		.talk Drakuru##26423
		..accept Truce?##11989
	step //273
		goto 16.5,47.8
		.' Click the Dull Carving Knife|tip It's a knife stuck in the side of this tree trunk.
		.collect 1 Dull Carving Knife##38083|q 11989
	step //274
		goto 16.4,47.8
		.' Use your Dull Carving Knife next to the yellow cage|use Dull Carving Knife##38083
		.talk Drakuru##26423
		..'Shake his hand
		..'Make a Blood Pact With Drakuru|goal Blood Pact With Drakuru|q 11989/1
	step //275
		goto 16.4,47.8
		.talk Drakuru##26423
		..turnin Truce?##11989
		..accept Vial of Visions##11990
	step //276
		goto 16,47.8
		.talk Ameenah##26474
		..buy 1 Imbued Vial|q 11990/1
	step //277
		goto 14.6,45.3
		.' Click the Hazewood Bushes|tip They look like small flower bushes on the ground around this area.
		.get 3 Haze Leaf|q 11990/2
	step //278
		goto 15.2,40.3
		.' Click a Waterweed|tip They look like big green bushes underwater around this area.
		.get Waterweed Frond|q 11990/3
	step //279
		goto 16.4,47.8
		.talk Drakuru##26423
		..turnin Vial of Visions##11990
		..accept Subject to Interpretation##11991
	step //280
		goto 15.7,46.7
		.talk Prigmon##26519
		..accept Scourgekabob##12484
	step //281
		goto 15.7,46.9
		.' Click a Scourged Troll Mummy on the ground next to you
		.collect 1 Scourged Troll Mummy##38149|q 12484
	step //282
		goto 16.9,48.3
		.' Use your Scourged Troll Mummy next to the burning pile of mummies|use Scourged Troll Mummy##38149
		.' Burn a Mummified Carcass|goal Mummified Carcass Burned|q 12484/1
	step //283
		goto 16.7,48.3
		.talk Mack Fearsen##26604
		..turnin Scourgekabob##12484
		..accept Seared Scourge##12029
	step //284
		goto 15.7,46.7
		.talk Prigmon##26519
		..accept Shimmercap Stew##12483
	step //285
		goto 11.1,61.8
		.' Click the Shimmering Snowcaps|tip They look like blue glowing mushrooms on the ground at the base of the trees around this area.
		.get 5 Shimmering Snowcap|q 12483/2
	step //286
		goto 13.3,58.5
		.kill Ice Serpents|n
		.get 5 Ice Serpent Eye|q 12483/1
		.kill trolls|n
		.collect 5 Frozen Mojo##35799|q 11991
	step //287
		goto 13.2,60.9
		.' Use Drakuru's Elixir next to Drakuru's Brazier|use Drakuru's Elixir##35797|tip It's a square bowl at the top of these stairs.
		.talk Image of Drakuru##26500
		..turnin Subject to Interpretation##11991
		..accept Sacrifices Must be Made##12007
	step //288
		goto 18.4,38.5
		.' Click the Sweetroot plants|tip They look like aloe vera plants around this area.
		.get 5 Sweetroot|q 12483/3
	step //289
		goto 14.5,38
		.kill Warlord Zim'bo|n|tip Standing inside this hut, next to a bonfire.
		.collect 1 Zim'bo's Mojo##35836|q 12007
	step //290
		'Go up the huge stairs to 17.9,36.5|goto 17.9,36.5
		.' Click the Seer of Zeb'Halak statue|tip It's a huge blue glowing statue at the top of the stairs.
		.get Eye of the Prophets|q 12007/1
	step //291
		goto 17.4,36.4
		.' Use Drakuru's Elixir next to Drakuru's Brazier|use Drakuru's Elixir##35797
		.talk Image of Drakuru##26543
		..turnin Sacrifices Must be Made##12007
		..accept Heart of the Ancients##12042
	step //292
		goto 16,29.9
		.' Jump on the big rock and stand on it
		.' Use Mack's Dark Grog and throw it at the trolls running around to the north|use Mack's Dark Grog##35908
		.' Burn 20 Scourge Trolls|goal 20 Scourge Trolls Burned |q 12029/1
	step //293
		goto 21.9,29.9
		.talk Captured Trapper##27497
		..turnin Tactical Clemency##12422
	step //294
		goto 24,33.6
		.kill 8 Silverbrook Defender|q 12413/1
	step //295
		'Go on top of the control station to 36.9,32.4|goto 36.9,32.4
		.' Click the Heart of the Ancients|tip It's a small pointed stone laying on the floor at the top of this control station, in a small room, next to a dead goblin.
		..turnin Heart of the Ancients##12042
		..accept My Heart is in Your Hands##12802
	step //296
		goto 44.2,30.4
		.kill Drakkari Defenders|n
		.collect 5 Desperate Mojo##36743|q 12802
	step //297
		goto 45,28.4
		.' Use Drakuru's Elixir next to Drakuru's Brazier|use Drakuru's Elixir##35797|tip It's a square bowl in the middle of this stone courtyard.
		.talk Image of Drakuru##26701
		..turnin My Heart is in Your Hands##12802
		..accept Voices From the Dust##12068
	step //298
		'Hearth to Conquest Hold|goto 20.9,64.5,0.5|use hearthstone##6948|noway|c
	step //299
		goto 20.7,64.2
		.talk Conqueror Krenna##26860
		..turnin Attack on Silverbrook##12413
	step //300
		goto 22.5,62.8
		.talk Windseer Grayhorn##27262
		..accept Vordrassil's Fall##12207
		..accept The Darkness Beneath##12213
	step //301
		goto 16.7,48.3
		.talk Mack Fearsen##26604
		..turnin Seared Scourge##12029
	step //302
		goto 15.7,46.7
		.talk Prigmon##26519
		..turnin Shimmercap Stew##12483
		..accept Say Hello to My Little Friend##12190
	step //303
		goto Grizzly Hills,26.5,46.6
		.kill Entropic Oozes|n
		.get 6 Slime Sample|q 12207/1
	step //304
		goto 28.6,45.1|n
		.' The path down to Vordrassil's Tears starts here|goto 28.6,45.1,0.3|noway|c
	step //305
		'Go underground to 30.5,43.9|goto 30.5,43.9
		.' Use your Geomancer's Orb|use Geomancer's Orb##37173|tip Go underground into this tunnel, all the way to the end.  Stand under the black mist.
		.' Use the Orb beneath Vordrassil's Tears|goal Orb used beneath Vordrassil's Tears.|q 12213/3
	step //306
		'Go outside the tunnel to 33.3,48.5|goto 33.3,48.5|n
		.' The path down to Vordrassil's Limb starts here|goto 33.3,48.5,0.3|noway|c
	step //307
		'Go underground to 32.2,45.8|goto 32.2,45.8
		.' Use your Geomancer's Orb|use Geomancer's Orb##37173|tip Go underground into this tunnel, all the way to the end.  Stand under the black mist.
		.' Use the Orb beneath Vordrassil's Limb|goal Orb used beneath Vordrassil's Limb.|q 12213/2
	step //308
		'Go outside the tunnel to 40.7,52|goto 40.7,52|n
		.' The path down to Vordrassil's Heart starts here|goto 40.7,52,0.3|noway|c
	step //309
		'Go underground to 41.2,54.7|goto 41.2,54.7
		.' Use your Geomancer's Orb|use Geomancer's Orb##37173|tip Go underground into this tunnel, all the way to the end.  Stand under the black mist.
		.' Use the Orb beneath Vordrassil's Heart|goal Orb used beneath Vordrassil's Heart.|q 12213/1
	step //310
		'Go outside the tunnel to 43.8,53.3|goto 43.8,53.3
		.' Use your Silver Feather on Imperial Eagles|use Silver Feather##37877|tip They sit on big rocks around this area.
		.' Bind 6 Imperial Eagles' sight|goal 6 Imperial Eagle's sight bound|q 12453/1
	step //311
		goto 65,46.9
		.talk Makki Wintergale##26853
		..fpath Camp Oneqwah
	step //312
		goto 65,47.9
		.talk Soulok Stormfury##26944
		..accept The Horse Hollerer##12415
	step //313
		goto 65.2,47.7
		.talk Scout Vor'takh##26666
		..turnin Onward to Camp Oneqwah##12451
		..accept An Expedient Ally##12074
	step //314
		goto 65.3,47.5
		.talk Tormak the Scarred##27221
		..accept The Unexpected 'Guest'##12195
	step //315
		home Camp Oneqwah
	step //316
		'Fly to Conquest Hold|goto 22.0,64.5,0.5|noway|c
	step //317
		goto 21,64
		.talk Gorgonna##27102
		..accept Ruuna the Blind##12425
	step //318
		goto 22.5,62.8
		.talk Windseer Grayhorn##27262
		..turnin Vordrassil's Fall##12207
		..turnin The Darkness Beneath##12213
		..turnin Eyes Above##12453
		..accept A Possible Link##12229
		..accept The Bear God's Offspring##12231
	step //319
		'Fly to Camp Oneqwah|goto 64.9,46.9,0.5|noway|c
	step //320
		goto 60.4,54.3
		.kill Silvercoat Stags|n
		.get 5 Mature Stag Horn|q 12195/1
		.' another spot where you can find them is at 57.3,48.2
	step //321
		goto 66.9,62.4
		.talk Kodian##27275
		.' Listen to Kodian's Story|goal Kodian's Story|q 12231/2
	step //322
		goto 63.6,57.9
		.kill Redfang furbolgs|n
		.get 8 Crazed Furbolg Blood|q 12229/1
	step //323
		goto 48.1,58.9
		.talk Orsonn##27274
		..'Listen to Orsonn's Story|goal Orsonn's Story|q 12231/1
	step //324
		goto 44,47.9
		.talk Ruuna the Blind##27581
		..turnin Ruuna the Blind##12425
		..accept Ruuna's Request##12328
	step //325
		goto 46.8,35.7
		.kill Fern Feeder Moths|n
		.get 4 Gossamer Dust|q 12328/1
	step //326
		goto 44,47.9
		.talk Ruuna the Blind##27581
		..turnin Ruuna's Request##12328
		..accept Out of Body Experience##12327
	step //327
		'Drink the Gossamer Potion in your bags next to Ruuna's Crystal Ball right next to you|use Gossamer Potion##37661
		.' See the Vision from the Past|goal Vision from the Past|q 12327/1
	step //328
		ding 76
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Northrend (76-78)",[[
	author support@zygorguides.com
	next Zygor's Horde Leveling Guides\\Northrend (78-80)
	startlevel 76
	step //1
		goto Grizzly Hills,44,47.9
		.talk Ruuna the Blind##27581
		..turnin Out of Body Experience##12327
		..accept Fate and Coincidence##12329
	step //2
		goto 57.5,41.3
		.talk Sasha##26935
		..turnin Fate and Coincidence##12329
		..accept Sasha's Hunt##12134
		..accept Anatoly Will Talk##12330
	step //3
		goto 60.4,40.2
		.kill 12 Solstice Hunter|q 12134/1
	step //4
		goto 62.3,42
		.' Use your Tranquilizer Dart on Tatjana|use Tranquilizer Dart##37665|tip She's sitting on a horse.
		.' Click the horse to jump on it
		.' Deliver Tatjana|goal Tatjana Delivered|q 12330/1
	step //5
		goto 57.5,41.3
		.talk Sasha##26935
		..turnin Sasha's Hunt##12134
		..turnin Anatoly Will Talk##12330
		..accept A Sister's Pledge##12411
	step //6
		goto 64.8,43.4
		.talk Anya##27646
		..turnin A Sister's Pledge##12411
	step //7
		goto 65.3,47.5
		.talk Tormak the Scarred##27221
		..turnin The Unexpected 'Guest'##12195
		..accept An Intriguing Plan##12165
	step //8
		goto 69.1,40.1
		.talk Hugh Glass##26484
		..accept A Bear of an Appetite##12279
	step //9
		goto 73.8,34
		.talk Harkor##26884
		..turnin Say Hello to My Little Friend##12190
		..accept Nice to Meat You##12113
		..accept Therapy##12114
	step //10
		goto 73.9,34.1
		.talk Kraz##26886
		..accept It Takes Guts....##12116
	step //11
		goto 72.7,37.6
		.kill Longhoof Grazers|n
		.get 10 Shovelhorn Steak|q 12113/2
		.kill Duskhowl Prowlers|n
		.get 10 Fibrous Worg Meat|q 12113/1
	step //12
		goto 61.6,32.6
		.' Use your Flashbang Grenade on Highland Mustangs|use Flashbang Grenade##37716
		.' Frighten 15 Highland Mustangs|goal 15 Highland Mustangs Frightened|q 12415/1
	step //13
		goto 64.3,15.0|n
		.' The path up to Kurun starts here|goto 64.3,15.0,0.3|noway|c
	step //14
		'Follow the road into the mountains around to 65.8,17.8|goto 65.8,17.8
		.talk Kurun##26260
		..turnin An Expedient Ally##12074
		..accept Raining Down Destruction##11982
	step //15
		goto 66.1,13.8
		.' Click the Boulders|tip The Boulders look like huge rocks on the ground around this area.
		.collect 5 Boulder##35734|q 11982 |n
		.' Walk over to the nearby trench cliff
		.' Use your Boulders on Iron Rune mobs below|use Boulder##35734
		.' Disrupt 5 Iron Dwarf Operations|goal 5 Iron Dwarf Operations Disrupted|q 11982/1
	step //16
		goto 65.8,17.8
		.talk Kurun##26260
		..turnin Raining Down Destruction##11982
		..accept Rallying the Troops##12070
	step //17
		goto 68.3,10.1
		.' Use your Shard of the Earth on Grizzly Hills Giants that are physically fighting another mob|use Shard of the Earth##36764
		.' Rally 5 Grizzly Hills Giants|goal 5 Grizzly Hills Giants Rallied|q 12070/1
		.' Kill 5 Iron Rune Avengers that spawn|goal 5 Iron Rune Avengers Slain|q 12070/2
	step //18
		goto 65.8,17.8
		.talk Kurun##26260
		..turnin Rallying the Troops##12070
		..accept Into the Breach##11985
	step //19
		goto 64.3,19.8
		.' Click the Battered Journal|tip It's a thick book sitting on the ground.
		..accept The Damaged Journal##12026
	step //20
		'They look like torn pages that spawn all around this area on the ground
		.' Click the Missing Journal Pages
		.collect 8 Missing Journal Page##35737|q 12026 |n
		.' Click the Incomplete Journal in your bags|use Incomplete Journal##35739
		.get Brann Bronzebeard's Journal|q 12026/1
	step //21
		'Go into the building to 70.2,13.0|goto 70.2,13.0
		.kill 1 Iron Thane Argrum|q 11985/1|tip Standing at the very back of the trench inside the building.
	step //22
		'Go out of the building and up the path to 65.8,17.8|goto 65.8,17.8
		.talk Kurun##26260
		..turnin Into the Breach##11985
		..accept Gavrock##12081
	step //23
		goto 70.5,27.4
		.kill 10 Drakkari Protector|q 12114/1
		.kill 10 Drakkari Oracle|q 12114/2
		.kill Drakkari mobs|n
		.collect 5 Sacred Mojo##36758|q 12068
	step //24
		'Go inside the underground crypt to 70.8,21.8|goto 70.8,21.8
		.' Click the Drakkari Canopic Jars|tip They look like small gray urns sitting against the walls inside this underground crypt.
		.get 5 Drakkari Canopic Jar|q 12116/1
	step //25
		'Inside the crypt, go to 69.4,18.2|goto 69.4,18.2
		.' Click the Drakkari Tablets|tip It's a big stone tablet in the corner of a small room inside this underground crypt.
		.get Drakkari Tablets|q 12068/1
	step //26
		'Inside the crypt, go to 69.5,17.5|goto 69.5,17.5
		.talk Harrison Jones##26814
		..accept Dun-da-Dun-tah!##12082
		.' Escort Harrison from the Drakil'jin Ruins|goal Harrison has escorted you to safety.|q 12082/1
	step //27
		goto 71.7,26.2
		.' Use Drakuru's Elixir next to Drakuru's Brazier|use Drakuru's Elixir##35797|tip It's a square bowl at the top of the stairs.
		.talk Image of Drakuru##26787
		..turnin Voices From the Dust##12068
	step //28
		goto 75.5,26.9
		.' Use your Fishing Net on Schools of Northern Salmon|use Fishing Net##37542|tip They look like schools of fish in the water around this area.
		.get 6 Northern Salmon|q 12279/1
	step //29
		goto 79.8,33.6
		.talk Gavrock##26420
		..turnin Gavrock##12081
		..accept Runes of Compulsion##12093
	step //30
		goto 79.1,43.3
		.kill 4 Iron Rune-Weavers|n
		.kill 1 Overseer Brunon|q 12093/4
	step //31
		goto 75.3,36.7
		.kill 4 Iron Rune-Weavers|n
		.kill 1 Overseer Lochli|q 12093/3
	step //32
		goto 73.9,34.1
		.talk Kraz##26886
		..turnin It Takes Guts....##12116
		..accept Drak'aguul's Mallet##12120
	step //33
		goto 73.8,34
		.talk Harkor##26884
		..turnin Nice to Meat You##12113
		..turnin Therapy##12114
		..turnin Dun-da-Dun-tah!##12082
	step //34
		goto 72.1,33.9
		.kill 4 Iron Rune-Weavers|n
		.kill 1 Overseer Korgan|q 12093/2
	step //35
		goto 67.7,29.6
		.kill 4 Iron Rune-Weavers|n
		.kill 1 Overseer Durval|q 12093/1
	step //36
		goto 71.6,28.1
		.from Drak'aguul##26919
		.get Drakil'jin Mallet|q 12120/1
	step //37
		goto 73.9,34.1
		.talk Kraz##26886
		..turnin Drak'aguul's Mallet##12120
		..accept See You on the Other Side##12121
	step //38
		goto 79.8,33.6
		.talk Gavrock##26420
		..turnin Runes of Compulsion##12093
		..accept Latent Power##12094
	step //39
		goto 78.8,39.9
		.' Use your Shard of Gavrock next to the Second Ancient Stone|use Shard of Gavrock##36787|tip It's a big blue glowing stone statue.
		.' Draw Power from the Second Ancient Stone|goal Power Drawn from Second Ancient Stone|q 12094/2
	step //40
		goto 74.1,44.3
		.' Use your Shard of Gavrock next to the Third Ancient Stone|use Shard of Gavrock##36787|tip It's a big blue glowing stone statue.
		.' Draw Power from the Third Ancient Stone|goal Power Drawn from Third Ancient Stone|q 12094/3
	step //41
		goto 71.3,39.9
		.' Use your Shard of Gavrock next to the First Ancient Stone|use Shard of Gavrock##36787|tip It's a big blue glowing stone statue.
		.' Draw Power from the First Ancient Stone|goal Power Drawn from First Ancient Stone|q 12094/1
	step //42
		goto 71.5,24.7
		.' Use your Charged Drakil'jin Mallet next to a gong|use Charged Drakil'jin Mallet##36834|tip They are 3 gongs sitting close together here.
		.get killed by Warlord Jin'arrak|goal Death by Warlord Jin'arrak|q 12121/1
		.' STAY DEAD|havebuff On the Other Side
	step //43
		'While dead, go inside the crypt to 69.4,19.5|goto 69.4,19.5
		.talk Gan'jo##26924
		..turnin See You on the Other Side##12121
		..accept Chill Out, Mon##12137
	step //44
		goto 69.4,19.5
		.' Click Gan'jo's Chest in the sink next to you|tip Gan'jo's Chest is sitting in the wall sink.
		.get Snow of Eternal Slumber|q 12137/1
	step //45
		goto 69.4,19.5
		.talk Gan'jo##26924
		..'Tell him you are ready to return to the realm of the living|nobuff On the Other Side|c
	step //46
		goto 70,20.4
		.' Use your Snow of Eternal Slumber on Ancient Drakkari mobs|use Snow of Eternal Slumber##36859
		.' They run to nearby mummies on the ground, follow them
		.' Click the Drakkari Spirit Particles
		.get 5 Drakkari Spirit Particles|q 12137/2
	step //47
		'Go outside to 73.9,34.1|goto 73.9,34.1
		.talk Kraz##26886
		..turnin Chill Out, Mon##12137
		..accept Jin'arrak's End##12152
	step //48
		'Go into the crypt to 71.3,19.6|goto 71.3,19.6
		.' Click the Sacred Drakkari Offering|tip It's a small fruit bowl on the ground inside the crypt, next to a skull statue.
		.get Sacred Drakkari Offering|n
		.' Use your Drakkari Spirit Dust|use Drakkari Spirit Dust##36873
		.collect 1 Infused Drakkari Offering##37063|q 12152
	step //49
		'Go outside to 71.4,24.4|goto 71.4,24.4
		.' Use your Infused Drakkari Offering next to a gong|use Infused Drakkari Offering##37063
		.' Destroy Warlord Jin'arrak|goal Warlord Jin'arrak Destroyed|q 12152/1
	step //50
		goto 73.9,34.1
		.talk Kraz##26886
		..turnin Jin'arrak's End##12152
	step //51
		goto 79.8,33.6
		.talk Gavrock##26420
		..turnin Latent Power##12094
		..accept Free at Last##12099
	step //52
		goto 76.2,37.7
		.' Use Gavrock's Runebreaker on Runed Giants|use Gavrock's Runebreaker##36796
		.' Free 4 Runed Giants|goal 4 Runed Giants Freed|q 12099/1
	step //53
		goto 79.8,33.6
		.talk Gavrock##26420
		..turnin Free at Last##12099
	step //54
		'Hearth to Camp Oneqwah|goto 65.4,47.0,0.5|use hearthstone##6948|noway|c
	step //55
		goto 65.2,47.7
		.talk Sage Paluna##26584
		..turnin The Damaged Journal##12026
		..accept Deciphering the Journal##12054
	step //56
		goto 65.2,47.7
		.talk Scout Vor'takh##26666
		..accept In the Name of Loken##12204
	step //57
		goto 65,47.9
		.talk Soulok Stormfury##26944
		..turnin The Horse Hollerer##12415
	step //58
		goto 69.1,40.1
		.talk Hugh Glass##26484
		..turnin A Bear of an Appetite##12279
		..'Talk to him about Loken
		..'Question Hugh Glass|goal Hugh Glass Questioned|q 12204/1
	step //59
		goto 79.8,33.6
		.talk Gavrock##26420
		..'Talk to him about Loken|tip He's a huge rock elemental standing on a small island.
		..'Question Gavrock|goal Gavrock Questioned|q 12204/2
	step //60
		goto 76.6,55.1
		.kill Iron Rune-Smiths|n
		.collect Golem Blueprint Section 1##36849|q 12165 |n
		.collect Golem Blueprint Section 2##36850|q 12165 |n
		.collect Golem Blueprint Section 3##36851|q 12165 |n
		.' Click the Golem Blueprint Section 1 in your bags|use Golem Blueprint Section 1##36849
		.get War Golem Blueprint|q 12165/1
	step //61
		goto 66.6,58.8
		.from Grumbald One-Eye##26681
		.get Spiritsbreath|q 12054/1
	step //62
		goto 65.2,47.7
		.talk Sage Paluna##26584
		..turnin Deciphering the Journal##12054
		..accept The Runic Prophecies##12058
	step //63
		goto 65.2,47.7
		.talk Scout Vor'takh##26666
		..turnin In the Name of Loken##12204
		..accept The Overseer's Shadow##12201
		..accept Pounding the Iron##12073
	step //64
		goto 65,47
		.talk Prospector Rokar##27227
		..turnin An Intriguing Plan##12165
		..accept From the Ground Up##12196
	step //65
		goto 76.6,54.8
		.from Iron Rune Overseer##27177
		.get Overseer's Uniform|q 12201/1
		.' Click the War Golem Parts|tip The War Golem Parts look like metal parts sitting around inside this room and buildings around this area.
		.get 8 War Golem Part|q 12196/1
		.' You can find more Golem Parts around 75.3,57.3
	step //66
		goto 65.2,47.7
		.talk Scout Vor'takh##26666
		..turnin The Overseer's Shadow##12201
		..accept Cultivating an Image##12202
	step //67
		goto 65,47
		.talk Propector Rokar##27227
		..turnin From the Ground Up##12196
		..accept We Have the Power##12197
	step //68
		goto 76.2,53.4
		.kill Iron dwarves|n
		.' Use Rokar's Camera on their corpses|use Rokar's Camera##37125
		.' Capture 8 Iron Dwarf Images|goal 8 Iron Dwarf Images Captured|q 12202/1
	step //69
		goto 76.8,59.4
		.from Rune-Smith Kathorn##26410
		.get Kathorn's Power Cell|q 12197/2
	step //70
		goto 74.9,56.9
		.from Rune-Smith Durar##26409
		.get Durar's Power Cell|q 12197/1
	step //71
		goto 65.2,47.7
		.talk Scout Vor'takh##26666
		..turnin Cultivating an Image##12202
		..accept Loken's Orders##12203
	step //72
		goto 65,47
		.talk Prospector Rokar##27227
		..turnin We Have the Power##12197
		..accept ... Or Maybe We Don't##12198
	step //73
		goto 73.7,51.4
		.' Use your Golem Control Unit|use Golem Control Unit##36936
		.kill Lightning Sentries|n
		.get 10 Charge Level|q 12198/1
	step //74
		goto 81.5,60.3
		.' Use your Overseer Disguise Kit|use Overseer Disguise Kit##37071
		.' Click Loken's Pedastal|tip It's a big sqaure stone altar thing inside this building.
		.' Receive the Message from Loken|goal Message from Loken received|q 12203/1
	step //75
		goto 65.2,47.7
		.talk Scout Vor'takh##26666
		..turnin Loken's Orders##12203
	step //76
		goto 65,47
		.talk Prospector Rokar##27227
		..turnin ... Or Maybe We Don't##12198
		..accept Bringing Down the Iron Thane##12199
	step //77
		'Go into this building and downstairs to 76.2,63.2|goto 76.2,63.2
		.' Use your Golem Control Unit to ride in your War Golem|use Golem Control Unit##36865
		.' Use your EMP skill to stun The Anvil and remove Iron Thane Furyhammer's Shield
		.kill 1 Iron Thane Furyhammer|q 12199/1|tip He's in the highest building at the top of the hill, downstairs with a green shield bubble around him.
	step //78
		goto 65.3,47.5
		.talk Tormak the Scarred##27221
		..turnin Bringing Down the Iron Thane##12199
	step //79
		goto 65.2,19.4
		.'Kill 10 Iron Dwarf Defender|goal 10 Iron Dwarf Defenders Killed|q 12073/1
	step //80
		goto 68.5,16.2
		.' Click the Third Rune Plate|tip It looks like a brown strip across a metal door in the wall.
		.' Decipher the Third Prophecy|goal Third Prophecy Deciphered|q 12058/3
	step //81
		goto 69,14.4
		.' Click the First Rune Plate|tip It looks like a brown strip across a metal door in the wall.
		.' Decipher the First Prophecy|goal First Prophecy Deciphered|q 12058/1
	step //82
		goto 70.2,14.7
		.' Click the Second Rune Plate|tip It looks like a brown strip across a metal door in the wall.
		.' Decipher the Second Prophecy|goal Second Prophecy Deciphered|q 12058/2
	step //83
		'Hearth to Camp Oneqwah|goto 65.4,47.0,0.5|use hearthstone##6948|noway|c
	step //84
		goto 65.2,47.7
		.talk Scout Vor'takh##26666
		..turnin Pounding the Iron##12073
	step //85
		goto 65.2,47.7
		.talk Sage Paluna##26584
		..turnin The Runic Prophecies##12058
	step //86
		'Fly to Conquest Hold|goto 22.0,64.5,0.5|noway|c
	step //87
		goto 22.5,62.8
		.talk Windseer Grayhorn##27262
		..turnin A Possible Link##12229
		..turnin The Bear God's Offspring##12231
		..accept Destroy the Sapling##12241
		..accept Vordrassil's Seeds##12242
	step //88
		'Fly to Camp Oneqwah|goto 64.9,46.9,0.5|noway|c
	step //89
		goto 50.5,45.9|n
		.' The path down to Destroy the Sapling starts here|goto 50.5,45.9,0.5|noway|c
	step //90
		'Follow the path down to 50.8,42.6|goto 50.8,42.6
		.' Use your Verdant Torch next to the tall tree|use Verdant Torch##37306|tip It's a tall tree at the bottom of the spiral path.
		.get Vordrassil's Ashes|q 12241/1
	step //91
		'Go outside to 51.5,47.1|goto 51.5,47.1
		.' Click Vordrassil's Seeds|tip They look like brown pinecones sitting on the ground around this area.
		.get 8 Vordrassil's Seed|q 12242/1
	step //92
		'Go to Camp Oneqwah|n
		.' Fly to Conquest Hold|goto 22.0,64.5,0.5|noway|c
	step //93
		goto 22.5,62.8
		.talk Windseer Grayhorn##27262
		..turnin Destroy the Sapling##12241
		..turnin Vordrassil's Seeds##12242
	step //94
		'Fly to Dalaran|goto Dalaran|noway|c
	step //95
		goto Dalaran,68.6,42
		.talk Archmage Pentarus##28160
		..accept Where in the World is Hemet Nesingwary?##12521
	step //96
		'Fly to Camp Oneqwah|goto Grizzly Hills,64.9,46.9,0.5|noway|c
	step //97
		'Go north to Zul'Drak|goto Zul'Drak|noway|c
	step //98
		goto Zul'Drak,60,56.7
		.talk Maaka##28624
		..fpath Zim'Torga
	step //99
		goto 60,57.9
		.talk Chronicler To'kini##28527
		..accept Just Checkin'##13099
	step //100
		home Zim'Torga
	step //101
		goto 48.4,56.4
		.talk Gurgthock##30007
		..turnin The Champion's Call!##12974
	step //102
		goto 41.6,64.4
		.talk Gurric##28623
		..fpath The Argent Stand
	step //103
		goto 32.2,74.4
		.talk Danica Saint##28618
		..fpath Light's Breach
	step //104
		goto 32,74.4
		.talk Sergeant Riannah##29137
		..turnin Into the Breach!##12789
	step //105
		goto 32,75.6
		.talk Elder Shaman Moky##29733
		..accept This Just In: Fire Still Hot!##12859
	step //106
		goto 32.2,75.7
		.talk Crusader Lord Lantinga##29687
		..accept In Search Of Answers##12902
	step //107
		goto 32.2,75.7
		.talk Chief Rageclaw##29690
		..accept Trolls Is Gone Crazy!##12861
	step //108
		goto 34.9,83.9
		.' Click the Orders From Drakuru|tip It looks like a floating scroll above a small pillar.
		..turnin In Search Of Answers##12902
		..accept Orders From Drakuru##12883
	step //109
		goto 34.9,81
		.kill Drakuru mobs|n
		.get Drakuru "Lock Openers"|n
		.' Use your Drakuru "Lock Openers" next to Captured Rageclaws|use Drakuru "Lock Opener"##41161|tip The Captured Rageclaws look like wolverine mobs chained to the ground.
		.' Free 8 Captured Rageclaws|goal 8 Captured Rageclaw Freed|q 12861/1
		.' Use your Rageclaw Fire Extinguisher next to burning huts|use Rageclaw Fire Extinguisher##41131
		.' Douse 15 Hut Fires|goal 15 Hut Fire Doused|q 12859/1
	step //110
		goto 32.2,75.7
		.talk Crusader Lord Lantinga##29687
		..turnin Orders From Drakuru##12883
		..accept The Ebon Watch##12884
		..accept Crusader Forward Camp##12894
	step //111
		goto 32.2,75.7
		.talk Chief Rageclaw##29690
		..turnin Trolls Is Gone Crazy!##12861
	step //112
		goto 32,75.6
		.talk Elder Shaman Moky##29733
		..turnin This Just In: Fire Still Hot!##12859
	step //113
		goto 14,73.6
		.talk Baneflight##28615
		..fpath Ebon Watch
	step //114
		goto 14.1,73.8
		.talk Stefan Vadu##28518
		..turnin The Ebon Watch##12884
		..accept Kickin' Nass and Takin' Manes##12630
	step //115
		goto 15.5,69.8
		.kill Withered Trolls|n
		.' Use Stefan's Steel Toed Boot on Nass|use Stefan's Steel Toed Boot##38659
		.' Collect 10 Hair Samples|goal 10 Hair Samples Collected|q 12630/1
		.get Unliving Choker|n
		.' Click the Unliving Choker in your |use Unliving Choker##38660
		..accept An Invitation, of Sorts...##12631
	step //116
		goto 14.1,73.8
		.talk Stefan Vadu##28518
		..turnin Kickin' Nass and Takin' Manes##12630
		..turnin An Invitation, of Sorts...##12631
		..accept Near Miss##12637
	step //117
		goto 14.3,74
		.talk Bloodrose Datura##28532
		..accept Taking a Stand##12795
		..'Tell her Stefan said she would demonstrate the item's purpose
		.' Expose the Choker's Purpose|goal Choker's Purpose Exposed|q 12637/1
	step //118
		goto 14.1,73.8
		.talk Stefan Vadu##28518
		..turnin Near Miss##12637
		..accept You Can Run, But You Can't Hide##12629
	step //119
		goto 20.6,73.0
		.kill Putrid Abominations|n
		.get 5 Putrid Abomination Guts|q 12629/1
		.' Click the Gooey Ghoul Drool|tip The Gooey Ghoul Drool looks like jelly blobs on the ground around this area.
		.get 5 Gooey Ghoul Drool|q 12629/2
	step //120
		goto 14.1,73.8
		.talk Stefan Vadu##28518
		..turnin You Can Run, But You Can't Hide##12629
		..accept Dressing Down##12648
	step //121
		goto 19.9,75.5
		.' Use the Ensorcelled Choker to wear a ghoul costume|use Ensorcelled Choker##38699
		.talk Gristlegut##28589
		..accept Feedin' Da Goolz##12652
		..buy Bitter Plasma|goal Bitter Plasma|q 12648/1
	step //122
		goto 20.5,74.8
		.' Use your Bowels and Brains Bowl near Decaying Ghouls|use Bowels and Brains Bowl##38701
		.' Feed 10 Decaying Ghouls|goal 10 Decaying Ghouls Fed|q 12652/1
	step //123
		goto 19.9,75.5
		.talk Gristlegut##28589
		..turnin Feedin' Da Goolz##12652
	step //124
		goto 14.1,73.8
		.talk Stefan Vadu##28518
		..turnin Dressing Down##12648
		..accept Infiltrating Voltarus##12661
	step //125
		goto 25.3,64
		.talk Crusader MacKellar##29689
		..turnin Crusader Forward Camp##12894
		..accept That's What Friends Are For...##12903
	step //126
		goto 25.3,64
		.talk Engineer Reed##29688
		..accept Making Something Out Of Nothing##12901
	step //127
		goto 19.4,61.4
		.' Click the Scourge Scrap Metal|tip They look like big spiked metal stars and other metal pieces on the ground around this area.
		.get 10 Scourge Scrap Metal|q 12901/1
	step //128
		goto 17.6,57.6
		.' Find Gerk|goal Gerk found|q 12903/2
		.talk Gerk##29455
		..accept Light Won't Grant Me Vengeance##12904
	step //129
		goto 15.7,59.4
		.' Find Burr|goal Burr found|q 12903/3|tip Laying on a metal table.
	step //130
		goto 16.9,58.7
		.kill 15 Vargul|q 12904/1
	step //131
		goto 17.6,57.6
		.talk Gerk##29455
		..turnin Light Won't Grant Me Vengeance##12904
	step //132
		goto 19.7,56.4
		.talk Gymer##29647
		..accept A Great Storm Approaches##12912
	step //133
		goto 25.1,51.6
		.' Find Crusader Dargath|goal Crusader Dargath found|q 12903/1|tip Standing on a huge platform, with a spiral wind flowing around him.
	step //134
		goto 28.4,44.9
		.' Use your Ensorcelled Choker to become a ghoul|use Ensorcelled Choker##38699
		.' Stand on this green circle
		.' Get teleported up to Overlord Drakuru|goto 28.1,45.2,0.2|noway|c
	step //135
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..accept Dark Horizon##12664
	step //136
		goto 29.9,47.8
		.talk Gorebag##28666
		.' Go on the tour of Zul'Drak
		.' Complete the tour of Zul'Drak|goal Tour of Zul'Drak complete|q 12664/1
	step //137
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..turnin Dark Horizon##12664
		.' Complete Overlord Drakuru's task|goal Overlord Drakuru's task complete|q 12661/1
	step //138
		goto 28.4,44.9
		.' Stand on this green circle
		.' Teleport back down to the ground|goto 28.0,44.9,0.2|noway|c
	step //139
		'Use Stefan's Horn in your bags|use Stefan's Horn##41390
		.talk Stefan Vadu##28518
		..turnin Infiltrating Voltarus##12661
		..accept So Far, So Bad##12669
	step //140
		goto 28.4,44.9
		.' Stand on this green circle
		.' Get teleported up to Overlord Drakuru|goto 28.1,45.2,0.2|noway|c
	step //141
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..accept It Rolls Downhill##12673
	step //142
		goto 28.4,44.9
		.' Stand on this green circle
		.' Teleport back down to the ground|goto 28.0,44.9,0.2|noway|c
	step //143
		goto 27.2,45.1
		.' Use your Scepter of Suggestion on Blight Geists|use Scepter of Suggestion##39157
		.' Use the Harvest Blight Crystal ability near Crystallized Blight|petaction Harvest Blight Crystal|tip The Crystallized Blight look like orange crystals on the ground around this area.
		.' Follow the Blight Geists back to the teleport pad
		.' Collect 7 Blight Crystals|goal 7 Blight Crystals collected|q 12673/1
	step //144
		goto 26.8,47
		.' Use your Diluting Additive next to the big cauldron 5 times|use Diluting Additive##39154|tip It's a big cauldron on the back of this cart vehicle thing.  Wait about a minute and use your Diluting Additive next to the cauldron again.  Keep repeating this process.
		.' Dilute the Cauldron 5 times|goal 5 Blight Cauldrons diluted|q 12669/2
	step //145
		goto 28.4,44.9
		.' Stand on this green circle
		.' Get teleported up to Overlord Drakuru|goto 28.1,45.2,0.2|noway|c
	step //146
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..turnin It Rolls Downhill##12673
		.' Complete Drakuru's task|goal Drakuru's task complete|q 12669/1
	step //147
		goto 28.4,44.9
		.' Stand on this green circle
		.' Teleport back down to the ground|goto 28.0,44.9,0.2|noway|c
	step //148
		'Use Stefan's Horn in your bags|use Stefan's Horn##41390
		.talk Stefan Vadu##28518
		..turnin So Far, So Bad##12669
		..accept Hazardous Materials##12677
	step //149
		goto 28.4,44.9
		.' Stand on this green circle
		.' Get teleported up to Overlord Drakuru|goto 28.1,45.2,0.2|noway|c
	step //150
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..accept Zero Tolerance##12686
	step //151
		goto 27.1,43.9
		.' Click the Harvested Blight Crystal crates|tip They look like big wooden crates around this area in the halls and rooms.
		.get 5 Harvested Blight Crystal|q 12677/2
	step //152
		goto 28.4,44.9
		.' Stand on this green circle
		.' Teleport back down to the ground|goto 28.0,44.9,0.2|noway|c
	step //153
		goto 29.7,49.6
		.' Use your Scepter of Empowerment on a Servant of Drakaru|use Scepter of Empowerment##39206
		.' Take control of a Servant of Drakaru
		.' Use the abilities on your Servant of Drakaru's pet bar to fight Darmuk at 30.4,51.5|n|tip He's a huge undead mob walking around on this platform.
		.' Kill Darmuk|goal Darmuk Slain|q 12686/1
	step //154
		goto 28.4,44.9
		.' Stand on this green circle
		.' Get teleported up to Overlord Drakuru|goto 28.1,45.2,0.2|noway|c
	step //155
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..turnin Zero Tolerance##12686
	step //156
		goto 28.4,44.9
		.' Stand on this green circle
		.' Teleport back down to the ground|goto 28.0,44.9,0.2|noway|c
	step //157
		'Use Stefan's Horn in your bags|use Stefan's Horn##41390
		.talk Stefan Vadu##28518
		..turnin Hazardous Materials##12677
		..accept Sabotage##12676
	step //158
		goto 28.4,44.9
		.' Stand on this green circle
		.' Get teleported up to Overlord Drakuru|goto 28.1,45.2,0.2|noway|c
	step //159
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..accept Fuel for the Fire##12690
	step //160
		goto 28.4,44.9
		.' Stand on this green circle
		.' Teleport back down to the ground|goto 28.0,44.9,0.2|noway|c
	step //161
		goto 32.1,40.6
		.' Use your Scepter of Command on a Blaoted Abomination|use Scepter of Command##39238
		.' Take control of the Bloated Abomination
		.' Go up the hill
		.' Send your Bloated Abomination into groups of Drakkari Skullcrushers
		.' Use the Burst at the Seams ability on your pet hotbar|petaction Burst at the Seams
		.' Kill 60 Drakkari Skullcrushers|goal 60 Drakkari Skullcrushers Slain|q 12690/1
		.' Lure 3 Drakkari Chieftains|goal 3 Drakkari Chieftain Lured|q 12690/2
	step //162
		goto 30.6,45.3
		.' Use your Explosive Charges next to Scourgewagons|use Explosive Charges##39165|tip They look like small catapult carts.
		.' Destroy 5 Scourgewagons|goal 5 Scourgewagons destroyed|q 12676/1
	step //163
		goto 28.4,44.9
		.' Stand on this green circle
		.' Get teleported up to Overlord Drakuru|goto 28.1,45.2,0.2|noway|c
	step //164
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..turnin Fuel for the Fire##12690
		..accept Disclosure##12710
		.' Complete Drakuru's task|goal Drakuru's task complete|q 12676/2
	step //165
		goto 28.4,44.9
		.' Stand on this blue circle on the small platform above the green circle
		.' Teleport up to Drakuru's upper chamber|goto 27.4,42.5,0.2|noway|c
	step //166
		goto 27.2,42.3
		.' Click the Musty Coffin|tip It's a brown coffin.  Click on the Coffin again after he says "Ahh... there you are. The Master told us you'd be arriving soon."  This will allow you to complete the exploration without doing the tour.
		.' Explore Drakuru's upper chamber|goal Drakuru's upper chamber explored|q 12710/1
	step //167
		goto 28.4,44.9|n
		.' Stand on this green circle to go to the bottom level of Voltarus|goto 28.1,45.2,0.2|noway|c
	step //168
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..turnin Disclosure##12710
		.' Learn Drakuru's secret|goal Learn Drakuru's secret|q 12676/3
	step //169
		goto 28.4,44.9
		.' Stand on this green circle
		.' Teleport back down to the ground|goto 28.0,44.9,0.2|noway|c
	step //170
		'Use Stefan's Horn in your bags|use Stefan's Horn##41390
		.talk Stefan Vadu##28518
		..turnin Sabotage##12676
	step //171
		goto 25.3,64
		.talk Engineer Reed##29688
		..turnin Making Something Out Of Nothing##12901
		..turnin A Great Storm Approaches##12912
		..accept Gymer's Salvation##12914
	step //172
		goto 25.3,64
		.talk Crusader MacKellar##29689
		..turnin That's What Friends Are For...##12903
	step //173
		goto 23.9,62.4
		.kill Banshee Soulclaimers|n|tip They are flying around in the air.
		.get 6 Banshee Essence|q 12914/1
	step //174
		goto 15.9,71.5
		.kill Icetouched Earthragers|n
		.get 6 Diatomaceous Earth|q 12914/2
	step //175
		goto 25.3,64
		.talk Engineer Reed##29688
		..turnin Gymer's Salvation##12914
		..accept Our Only Hope##12916
	step //176
		ding 77
	step //177
		goto 19.7,56.4
		.' Click the Scourge Enclosure|tip It's Gymer's huge cage.
		.' Blow Up the Scourge Enclosure
		.talk Gymer##29647
		..turnin Our Only Hope##12916
	step //178
		goto 39.4,67
		.talk Commander Falstaav##28059
		..turnin Taking a Stand##12795
		..accept Defend the Stand##12503
		..accept Parachutes for the Argent Crusade##12740
	step //179
		home The Argent Stand
	step //180
		'Fly to Dalaran|goto Dalaran|noway|c
	step //181
		goto Dalaran,69.7,45.4
		.talk Hira Snowdawn##31238
		..Get your Expert Riding Training (if you don't already have it)
		..Get your Cold Weather Flying Training
	step //182
		'Fly to The Argent Stand|goto Zul'Drak,41.5,64.5,0.5|noway|c
	step //183
		goto Zul'Drak,40.5,65.6
		.talk Hexxer Ubungo##28062
		..accept The Blessing of Zim'Abwa##12565
	step //184
		goto 38.4,67.1
		.'Kill 10 Scourge|goal 10 Scourge at The Argent Stand destroyed|q 12503/1
		.' Use your Crusader Parachute on Argent Shieldmen and Argent Crusaders|use Crusader Parachute##39615|tip It won't work on all of them.
		.' Equip 10 Argent forces with a parachute|goal 10 Argent forces equipped with a parachute|q 12740/1
		.kill Scourge mobs|n
		..collect 10 Drakkari Offerings##38551|q 12565
	step //185
		goto 36.7,72.6
		.talk Zim'Abwa##190535
		..turnin The Blessing of Zim'Abwa##12565
	step //186
		goto 39.4,67
		.talk Commander Falstaav##28059
		..turnin Defend the Stand##12503
		..turnin Parachutes for the Argent Crusade##12740
	step //187
		goto 40.3,66.6
		.talk Commander Kunz##28039
		..accept New Orders for Sergeant Stackhammer##12505
		..accept Pa'Troll##12596
	step //188
		goto 40.5,65.6
		.talk Hexxer Ubungo##28062
		..accept Trouble at the Altar of Sseratus##12506
	step //189
		goto 35.6,52.2
		.talk Captain Arnath##28045
		..accept Siphoning the Spirits##12799
	step //190
		goto 35,52.1
		.talk Alchemist Finklestein##28205
		..accept Lab Work##12557
	step //191
		'Go into the 2 rooms next to you:
		.' They are items on shelves that you can click
		.' Click a Muddy Mire Maggot and get it|goal Muddy Mire Maggot found|q 12557/1|tip Muddy Mide Maggots look like an open bag of grain on the ground.
		.' Click a Withered Batwing and get it|goal Withered Batwing found|q 12557/2|tip Withered Batwings looks like bone wings.
		.' Click a Chilled Serpent Mucus and get it|goal Chilled Serpent Mucus found|q 12557/4|tip Chilled Serpent Mucus looks like a skinny green vial.
		.' Click an Amberseed and get it|goal Amberseed found|q 12557/3|tip Amberseeds look like spiked potatoes.
	step //192
		goto 35,52.1
		.talk Alchemist Finklestein##28205
		..turnin Lab Work##12557
		.' Complete Alchemist Finklestein's task|goal Alchemist Finklestein's Task|q 12596/4
	step //193
		goto 36.6,60.5
		.kill Lost Drakkari Spirits|n
		.get 5 Ancient Ectoplasm|q 12799/1
	step //194
		goto 35.6,52.2
		.talk Captain Arnath##28045
		..turnin Siphoning the Spirits##12799
		..accept Stocking the Shelves##12609
		..accept Clipping Their Wings##12610
	step //195
		goto 36.1,51.1
		.kill Trapdoor Crawlers|n
		.get 7 Fresh Spider Ichor|q 12609/1
		.kill Zul'Drak Bats|n
		.get 7 Unblemished Bat Wing|q 12610/1
	step //196
		goto 35.6,52.2
		.talk Captain Arnath##28045
		..turnin Stocking the Shelves##12609
		..turnin Clipping Their Wings##12610
	step //197
		goto 40.4,48.2
		.talk Sergeant Stackhammer##28056
		..turnin New Orders for Sergeant Stackhammer##12505
		..accept Argent Crusade, We Are Leaving!##12504
	step //198
		goto 40.4,48.2
		.talk Corporal Maga##28099
		..accept Mopping Up##12508
	step //199
		goto 40.4,47
		.talk Argent Soldier##28041
		.' Tell 10 Argent Soldiers told to report back to the sergeant|goal 10 Argent Soldier told to report back to the sergeant|q 12504/1
		.kill Sseratus mobs|n
		.kill 10 Followers of Sseratus|q 12508/1
		.get Strange Mojo|n
		.' Click the Strange Mojo|use Strange Mojo##38321
		..accept Strange Mojo##12507
	step //200
		'Fly inside the building to 40.3,39.3|goto 40.3,39.3
		.' Investigate the Main building at the Altar of Sseratus|goal Main building at the Altar of Sseratus investigated.|q 12506/1
	step //201
		goto 40.4,48.2
		.talk Sergeant Stackhammer##28056
		..turnin Argent Crusade, We Are Leaving!##12504
	step //202
		goto 40.4,48.2
		.talk Corporal Maga##28099
		..turnin Mopping Up##12508
	step //203
		goto 40.5,65.6
		.talk Hexxer Ubungo##28062
		..turnin Trouble at the Altar of Sseratus##12506
		..turnin Strange Mojo##12507
		..accept Precious Elemental Fluids##12510
	step //204
		goto 40.2,68.9
		.talk Sub-Lieutenant Jax##28309
		..accept The Drakkari Do Not Need Water Elementals!##12562
	step //205
		goto 40.2,73.6
		.kill 10 Drakkari Water Binder|q 12562/1
		.kill Crazed Water Spirits|n
		.collect 3 Water Elemental Links##38323|q 12510 |n
		.' Use the Water Elemental Links to create Tethers to the Plane of Water|use Water Elemental Link##38323
		.' Use the Tethers to the Plane of Water|use Tether to the Plane of Water##38324
		.kill Watery Lords that spawn|n
		.get 3 Precious Elemental Fluids|q 12510/1
	step //206
		goto 40.2,68.9
		.talk Sub-Lieutenant Jax##28309
		..turnin The Drakkari Do Not Need Water Elementals!##12562
	step //207
		goto 40.5,65.6
		.talk Hexxer Ubungo##28062
		..turnin Precious Elemental Fluids##12510
		..accept Mushroom Mixer##12514
	step //208
		goto 41.3,65.1
		.talk Apprentice Pestlepot##28204
		..accept Gluttonous Lurkers##12527
	step //209
		goto 41.4,57.4
		.' Click Zul'Drak Rats on the ground walking around this area
		.collect 25 Zul'Drak Rat##38380|q 12527 |n
		.' Use the Zul'Drak Rats on Lurking Basilisks|use Zul'Drak Rat##38380
		.' Click the Gorged Lurking Basilisks
		.get 5 Basilisk Crystals|q 12527/1
		.' Click Muddlecap Fungus|tip The Muddlecap Fungus looks like groups of tall mushrooms around this area.
		.get 10 Muddlecap Fungus|q 12514/1
	step //210
		goto 40.5,65.6
		.talk Hexxer Ubungo##28062
		..turnin Mushroom Mixer##12514
		..accept Too Much of a Good Thing##12516
	step //211
		goto 35,52.1
		.talk Alchemist Finklestein##28205
		..turnin Gluttonous Lurkers##12527
	step //212
		goto 40.2,42.6
		.' Use your Modified Mojo on the Prophet of Sseratus|use Modified Mojo##38332|tip He's a huge green snake.
		.kill 1 Muddled Prophet of Sseratus|q 12516/1
	step //213
		'Hearth to The Argent Stand|goto 40.8,66.2,0.5|use hearthstone##6948|noway|c
	step //214
		goto 40.5,65.6
		.talk Hexxer Ubungo##28062
		..turnin Too Much of a Good Thing##12516
		..accept To the Witch Doctor##12623
	step //215
		goto 48.2,63.9
		.talk Captain Grondel##28043
		..accept Creature Comforts##12599
	step //216
		goto 46.9,61.4
		.' Click Dead Thornwoods|tip They look like curved thorny roots coming out of the water around this area.
		.get 20 Dead Thornwood|q 12599/1
	step //217
		goto 48.2,63.9
		.talk Captain Grondel##28043
		..turnin Creature Comforts##12599
		.' Complete Captain Grondel's Task|goal Captain Grondel's Task|q 12596/3
	step //218
		goto 48.8,78.9
		.talk Captain Brandon##28042
		..accept Something for the Pain##12597
	step //219
		goto 44.9,79.5
		.' Click the Mature Water-Poppy plants|tip They look like tall white-leaved plants with purple bulbs at the top.
		.get 5 Mature Water-Poppy|q 12597/1
	step //220
		goto 48.8,78.9
		.talk Captain Brandon##28042
		..turnin Something for the Pain##12597
		.' Complete Captain Brandon's Task|goal Captain Brandon's Task|q 12596/1
	step //221
		goto 58.1,72.4
		.talk Captain Rupert##28044
		..accept Throwing Down##12598
	step //222
		goto 58.7,72.5
		.talk Dr. Rogers##28125
		..accept Leave No One Behind##12512
	step //223
		goto 53.6,75
		.' Use your Crusader's Bandage on Crusader Lamoof|use Crusader's Bandage##38330|tip Laying on the ground inside this building.
		.' Escort Crusader Lamoof back to Dr. Rogers at 58.1,72.4|n
		.' Save Crusader Lamoof|goal Saved Crusader Lamoof|q 12512/2
	step //224
		goto 49.4,74.7
		.' Use your Crusader's Bandage on Crusader Josephine|use Crusader's Bandage##38330|tip Laying on the ground inside this building.
		.' Escort Crusader Josephine back to Dr. Rogers at 58.1,72.4|n
		.' Save Crusader Josephine|goal Saved Crusader Josephine|q 12512/3
	step //225
		goto 53.4,68.7
		.' Use your High Impact Grenade next to Nerubian Tunnels|use High Impact Grenade##38574|tip They look like squarish pyramid dirt mounds around this area.
		.' Seal 5 Nerubian Tunnels|goal 5 Nerubian Tunnels Sealed|q 12598/1
	step //226
		goto 50.7,69.9
		.' Use your Crusader's Bandage on Crusader Jonathan|use Crusader's Bandage##38330|tip Laying on the ground inside this building.
		.' Escort Crusader Jonathan back to Dr. Rogers at 58.1,72.4|n
		.' Save Crusader Jonathan|goal Saved Crusader Jonathan|q 12512/1
	step //227
		goto 58.1,72.4
		.talk Captain Rupert##28044
		..turnin Throwing Down##12598
		..accept Cocooned!##12606
		.' Complete Captain Rupert's Task|goal Captain Rupert's Task|q 12596/2
	step //228
		goto 58.7,72.5
		.talk Dr. Rogers##28125
		..turnin Leave No One Behind##12512
	step //229
		goto 58.1,72
		.talk Sergeant Moonshard##28283
		..accept Death to the Necromagi##12552
	step //230
		goto 58.3,72
		.talk Specialist Cogwheel##28284
		..accept Skimmer Spinnerets##12553
	step //231
		goto 57.6,75.2
		.kill 8 Hath'ar Necromagus|q 12552/1
		.kill Hath'ar Skimmers|n
		.get 5 Intact Skimmer Spinneret|q 12553/1
	step //232
		goto 58.1,72
		.talk Sergeant Moonshard##28283
		..turnin Death to the Necromagi##12552
	step //233
		goto 58.3,72
		.talk Specialist Cogwheel##28284
		..turnin Skimmer Spinnerets##12553
		..accept Crashed Sprayer##12583
	step //234
		goto 58.1,72.4|tip Standing in the entrance to this building.
		.talk Captain Rupert##28044
		..accept Pure Evil##12584
	step //235
		goto 56.7,69.7
		.' Attack the Nerubian Cocoons|tip They look like squirming big white cocoons on the ground around this area.
		.' Free 3 Captive Footmen|goal 3 Freed Captive Footmen|q 12606/1
	step //236
		goto 48.8,75.6
		.' Click the Crashed Plague Sprayer|tip It looks like a stone cube with 4 pillars in the corners, with skull designs on it.
		.get Plague Sprayer Parts|q 12583/1
	step //237
		goto 58.1,72.4
		.talk Captain Rupert##28044
		..turnin Cocooned!##12606
	step //238
		goto 58.3,72
		.talk Specialist Cogwheel##28284
		..turnin Crashed Sprayer##12583
		..accept A Tangled Skein##12555
	step //239
		goto 58.3,74.3
		.' Use your Tangled Skein Thrower on Plague Sprayers|use Tangled Skein Thrower##38515|tip They hover around in this area.
		.' Web and destroy 5 Plague Sprayers|goal 5 Plague Sprayers webbed and destroyed|q 12555/1
	step //240
		goto 61,78.6
		.' Click the Chunks of Saronite|tip They look like tiny green mining nodes inside this building.
		.get 10 Chunk of Saronite|q 12584/1
	step //241
		goto 58.3,72
		.talk Specialist Cogwheel##28284
		..turnin A Tangled Skein##12555
	step //242
		'Make sure you have 10 Drakkari Offerings in your bags|collect 10 Drakkari Offerings|c |q 12565 |future
		.' If not, grind around this area until you do.
	step //243
		'Hearth to The Argent Stand|goto 40.8,66.2,0.5|use hearthstone##6948|noway|c
	step //244
		goto 41,67
		.talk Eitrigg##28244
		..turnin Pure Evil##12584
	step //245
		goto 40.3,66.6
		.talk Commander Kunz##28039
		..turnin Pa'Troll##12596
	step //246
		'Fly to Zim'Torga|goto 60.0,56.8,0.5|noway|c
	step //247
		goto 59.5,58.1
		.talk Witch Doctor Khufu##28479
		..turnin To the Witch Doctor##12623
		..accept Breaking Through Jin'Alai##12627
		..accept The Blessing of Zim'Torga##12615
	step //248
		goto 59.4,57.2
		.talk Zim'Torga##190602
		..turnin The Blessing of Zim'Torga##12615
	step //249
		home Zim'Torga
	step //250
		goto 59.2,56.2
		.talk Scalper Ahunae##28484
		..accept The Leaders at Jin'Alai##12622
	step //251
		goto 57.6,61.7
		.' Click the Purple Cauldron|tip It's a cauldron with purple smoke in it.
		.' Disturb the Purple Cauldron|goal Purple Cauldron disturbed|q 12627/3
	step //252
		goto 55.7,64.3
		.' Click the Green Cauldron|tip It's a cauldron with green smoke in it.
		.' Disturb the Green Cauldron|goal Green Cauldron disturbed|q 12627/2
	step //253
		goto 57.2,65.3
		.' Click the Blue Cauldron|tip It's a cauldron with blue smoke in it.
		.' Disturb the Blue Cauldron|goal Blue Cauldron disturbed|q 12627/1
	step //254
		goto 58.8,62.7
		.' Click the Red Cauldron|tip It's a cauldron with red smoke in it.
		.' Disturb the Red Cauldron|goal Red Cauldron disturbed|q 12627/4
	step //255
		.kill Jin'Alai mobs around this area|n
		.' Chulo the Mad, Gawanil, and Kutube'sa will spawn randomly next to the big totems in this area.
		.kill them and click their Treasure boxes that spawn|n
		.get 1 Treasure of Kutube'sa|q 12622/1
		.get 1 Treasure of Gawanil|q 12622/2
		.get 1 Treasure of Chulo the Mad|q 12622/3
	step //256
		goto 59.5,58.1
		.talk Witch Doctor Khufu##28479
		..turnin Breaking Through Jin'Alai##12627
		..accept To Speak With Har'koa##12628
	step //257
		goto 60,57.9
		.talk Chronicler To'kini##28527
		..accept Relics of the Snow Leopard Goddess##12635
	step //258
		goto 59.2,56.2
		.talk Scalper Ahunae##28484
		..turnin The Leaders at Jin'Alai##12622
		..accept Sealing the Rifts##12640
	step //259
		goto 59.4,56.4
		.talk Element-Tamer Dagoda##28480
		..accept The Frozen Earth##12639
	step //260
		goto 63.8,70.5
		.talk Har'koa##28401
		..turnin To Speak With Har'koa##12628
		..accept But First My Offspring##12632
	step //261
		goto 62.9,70.6
		.' Click the Har'koan Relics|tip The Har'koan Relics look like upright stone tablets on the ground around this area.
		.get 10 Har'koan Relic|q 12635/1
		.kill Cursed Offsprings of Har'koa|n
		.' Use your Whisker of Har'koa on their corpses|use Whisker of Har'koa##38676
		.' Resurrect 7 Cursed Offsprings of Har'koa|goal 7 Cursed Offspring of Har'koa resurrected|q 12632/1
	step //262
		goto 63.8,70.5
		.talk Har'koa##28401
		..turnin But First My Offspring##12632
		..accept Spirit of Rhunok##12642
	step //263
		goto 60,57.9
		.talk Chronicler To'kini##28527
		..turnin Relics of the Snow Leopard Goddess##12635
		..accept Plundering Their Own##12650
		..accept Tails Up##13549
	step //264
		goto 59.5,58.1
		.talk Witch Doctor Khufu##28479
		..accept The Blessing of Zim'Rhuk##12655
	step //265
		goto 56.4,52.8
		.kill Frozen Earths|n
		.get 7 Essence of the Frozen Earth|q 12639/1
		.' Fight the Elemental Rifts|tip The Elemental Rifts look like swirling lightning clouds around this area.
		.' Seal 7 Elemental Rifts|goal 7 Elemental Rifts sealed|q 12640/1
		.collect 10 Drakkari Offerings##38551|q 12655
	step //266
		goto 54,49.1
		.kill Priests of Rhunok|n
		.get 7 Rhunokian Artifact|q 12650/1
	step //267
		goto 53.4,39.2
		.talk Spirit of Rhunok##28561
		..turnin Spirit of Rhunok##12642
		..accept My Prophet, My Enemy##12646
	step //268
		goto 54,47.3
		.from Prophet of Rhunok##28442
		.get Arctic Bear God Mojo|q 12646/1
	step //269
		goto 53.4,39.2
		.talk Spirit of Rhunok##28561
		..turnin My Prophet, My Enemy##12646
		..accept An End to the Suffering##12647
	step //270
		goto 53.4,35.9
		.from Rhunok's Tormentor##28575
		.collect 1 Tormentor's Incense##38696|q 12647
	step //271
		goto 53.5,34.5
		.' Use your Tormentor's Incense next to Rhunok's body|use Tormentor's Incense##38696
		.kill 1 Rhunok|q 12647/1
	step //272
		goto 53.4,39.2
		.talk Spirit of Rhunok##28561
		..turnin An End to the Suffering##12647
		..accept Back to Har'koa##12653
	step //273
		goto 59.3,44.5
		.talk Zim'Rhuk##190657
		..turnin The Blessing of Zim'Rhuk##12655
	step //274
		goto 59.2,56.2
		.talk Scalper Ahunae##28484
		..turnin Sealing the Rifts##12640
		..accept Scalps!##12659
	step //275
		goto 59.4,56.4
		.talk Element-Tamer Dagoda##28480
		..turnin The Frozen Earth##12639
		..accept Bringing Down Heb'Jin##12662
	step //276
		goto 60,57.9
		.talk Chronicler To'kini##28527
		..turnin Plundering Their Own##12650
	step //277
		goto 63.8,70.5
		.talk Har'koa##28401
		..turnin Back to Har'koa##12653
		..accept I Sense a Disturbance##12665
	step //278
		goto 63.8,70.5
		.talk Har'koa##28401
		.' Ask to call one of her children to carry you into the Altar of Quetz'lun
		.' Reveal Quetz'lun's fate|goal Quetz'lun's fate revealed.|q 12665/1
	step //279
		'When you return to 63.8,70.5|goto 63.8,70.5
		.talk Har'koa##28401
		..turnin I Sense a Disturbance##12665
		..accept Preparations for the Underworld##12666
	step //280
		goto 64.1,69.9
		.kill Har'koan Subduers|n
		.kill Claws of Har'koa|n
		.get 8 Sacred Adornment|q 12666/1
	step //281
		goto 63.8,70.5
		.talk Har'koa##28401
		..turnin Preparations for the Underworld##12666
		..accept Seek the Wind Serpent Goddess##12667
	step //282
		goto 74.3,66.7
		.' Use To'kini's Blowgun on Frost Leopards and Icepaw Bears around this area|use To'kini's Blowgun##44890
		.' Click the mobs when they get knocked out and lift their tail to check if they are male or female
		.' Recover 3 Female Frost Leopards|goal 3 Female Frost Leopards recovered|q 13549/1
		.' Recover 3 Female Icepaw Bears|goal 3 Female Icepaw Bears recovered|q 13549/2
	step //283
		goto 75.4,58.6
		.talk Quetz'lun's Spirit##28030
		..turnin Seek the Wind Serpent Goddess##12667
		..accept Setting the Stage##12672
	step //284
		goto 74.6,59.8
		.' Click the Underworld Power Fragments|tip They look like brownish floating crystals.
		.get 10 Underworld Power Fragment|q 12672/1
	step //285
		goto 75.4,58.6
		.talk Quetz'lun's Spirit##28030
		..turnin Setting the Stage##12672
		..accept Foundation for Revenge##12668
	step //286
		'They look like altars all around this whole area.
		.kill Quetz'lun Worshippers and Serpent-Touched Berserkers next to the Soul Fonts|n
		.'Kill 12 Trolls near a Soul Font|goal 12 Trolls killed near a Soul Font|q 12668/1
	step //287
		goto 75.4,58.6
		.talk Quetz'lun's Spirit##28030
		..turnin Foundation for Revenge##12668
		..accept Hell Hath a Fury##12674
	step //288
		goto 74.5,57.4
		.' Use Quetz'lun's Hexxing Stick on High Priest Mu'funu|use Quetz'lun's Hexxing Stick##39158
		.from High Priest Mu'funu##28752
		.' Hex High Priest Mu'funu at death|goal High Priest Mu'funu hexed at death|q 12674/1
	step //289
		goto 73.5,60.8
		.' Use Quetz'lun's Hexxing Stick on High Priest Tua-Tua|use Quetz'lun's Hexxing Stick##39158
		.kill High Priest Tua-Tua|n
		.' Hex High Priest Tua-Tua at death|goal High Priestess Tua-Tua hexed at death|q 12674/2
	step //290
		goto 76,54.9
		.' Use Quetz'lun's Hexxing Stick on High Priest Hawinni|use Quetz'lun's Hexxing Stick##39158
		.kill High Priest Hawinni|n
		.' Hex High Priest Hawinni at death|goal High Priest Hawinni hexed at death|q 12674/3
	step //291
		goto 75.4,58.6
		.talk Quetz'lun's Spirit##28030
		..turnin Hell Hath a Fury##12674
		..accept One Last Thing##12675
	step //292
		goto 63.8,70.5
		.talk Har'koa##28401
		..turnin One Last Thing##12675
		..accept Blood of a Dead God##12684
	step //293
		goto 64.2,52.6
		.' Click Heb'Jin's Drum|tip It's a big drum in the middle of the road.
		.' Use your Bat Net on Heb'Jin's Bat to pin it to the ground|use Bat Net##39041
		.kill 1 Heb'Jin|q 12662/1
	step //294
		goto 64.6,57
		.kill Heb'Drakkar trolls|n
		.' Use Ahunae's Knife on their corpses to scalp them|use Ahunae's Knife##38731
		.' Scalp 10 Heb'Drakkar trolls|goal 10 Heb'Drakkar trolls scalped|q 12659/1
	step //295
		goto 70.5,50.4
		.kill Bloods of Mam'toth|n
		.get 7 Blood of Mam'toth|q 12684/1
	step //296
		'Hearth to Zim'Torga|goto Zul'Drak,59.3,57.2,0.5|use hearthstone##6948|noway|c
	step //297
		goto 59.4,56.4
		.talk Element-Tamer Dagoda##28480
		..turnin Bringing Down Heb'Jin##12662
	step //298
		goto 59.2,56.2
		.talk Scalper Ahunae##28484
		..turnin Scalps!##12659
	step //299
		goto 60,57.9
		.talk Chronicler To'kini##28527
		..turnin Tails Up##13549
	step //300
		goto 63.8,70.5
		.talk Har'koa##28401
		..turnin Blood of a Dead God##12684
		..accept You Reap What You Sow##12685
	step //301
		goto Zul'Drak,75.2,58.6
		.' Use Quetz'lun's Ritual next to Quetz'lun's body|use Quetz'lun's Ritual##39187
		.kill 1 Drained Prophet of Quetz'lun|q 12685/1
	step //302
		goto 59.5,58.1
		.talk Witch Doctor Khufu##28479
		..turnin You Reap What You Sow##12685
	step //303
		goto 60,57.9
		.talk Chronicler To'kini##28527
		..accept Hexed Caches##12709
	step //304
		goto 60.3,57.8
		.talk Har'koa##28401
		..accept The Key of Warlord Zol'Maz##12712
	step //305
		goto 59.4,56.4
		.talk Element-Tamer Dagoda##28480
		..accept Enchanted Tiki Warriors##12708
	step //306
		goto 59.2,56.2
		.talk Scalper Ahunae##28484
		..accept Wooly Justice##12707
	step //307
		goto 69.5,41.1
		.' Use your Medallion of Mam'toth on Enraged Mammoths to ride them|use Medallion of Mam'toth##39268
		.' Use the abilities on your mammoth hotbar
		.' Trample 12 Mam'toth Disciples to death|goal 12 Mam'toth Disciples trampled to death|q 12707/1
	step //308
		goto 68.2,35.3
		.kill Drek'Maz|n|tip Standing inside this building.
		.collect 1 Drek'Maz's Tiki##39315|q 12712
	step //309
		goto 67.9,32.8
		.kill Yara|n|tip Standing inside this building.
		.collect 1 Yara's Sword##39313|q 12712
	step //310
		goto 63.8,37.2
		.kill Tiri|n|tip Standing inside this building.
		.collect 1 Tiri's Magical Incantation##39316|q 12712
	step //311
		'Click Tiri's Magical Incantation in your bags|use Tiri's Magical Incantation##39316
		.collect 1 Tiki Dervish Ceremony##39314|q 12712
	step //312
		goto 69.2,35.9
		.'Kill 12 Enchanted Tiki Warrior|goal 12 Enchanted Tiki Warriors destroyed|q 12708/1
		.' Click the Zol'Maz Stronghold Caches|tip The Zol'Maz Stronghold Caches look like bamboo boxes on the ground around this area.
		.get 12 Zol'Maz Stronghold Cache|q 12709/1
	step //313
		goto 66.2,33.4
		.' Use your Tiki Dervish Ceremony in front of this huge metal gate|use Tiki Dervish Ceremony##39314
		.from Warlord Zol'Maz##28902
		.get Key of Warlord Zol'Maz|q 12712/1
	step //314
		goto 70.5,23.3
		.talk Rafae##30569
		..fpath Gundrak
	step //315
		goto 70.1,20.9
		.talk Chronicler Bah'Kini##30676
		..turnin Just Checkin'##13099
	step //316
		'Fly to Zim'Torga|goto 60.0,56.8,0.5|noway|c
	step //317
		goto 60.3,57.8
		.talk Har'koa##28401
		..turnin The Key of Warlord Zol'Maz##12712
		..accept Rampage##12721
	step //318
		goto 60,57.9
		.talk Chronicler To'kini##28527
		..turnin Hexed Caches##12709
	step //319
		goto 59.4,56.4
		.talk Element-Tamer Dagoda##28480
		..turnin Enchanted Tiki Warriors##12708
	step //320
		goto 59.2,56.2
		.talk Scalper Ahunae##28484
		..turnin Wooly Justice##12707
	step //321
		'Fly to Gundrak|goto 70.5,23.2,0.5|noway|c
	step //322
		goto 78.1,24.2
		.' Click the 4 Akali Chain Anchors|tip They look like stone pillars with fire coming out of the top.
		.' Unfetter Akali from his chains|goal Akali unfettered from his chains.|q 12721/1
	step //323
		goto 70.5,23.3
		.talk Rafae##30569
		.' Fly to Zim'Torga|goto 60.0,56.8,0.5|noway|c
	step //324
		goto 59.5,58.1
		.talk Witch Doctor Khufu##28479
		..turnin Rampage##12721
	step //325
		'Fly to Bor'gorok Outpost|goto Borean Tundra,49.6,11.0,0.5|noway|c
	step //326
		'Go north to Sholazar Basin|goto Sholazar Basin|noway|c
	step //327
		goto Sholazar Basin,27.2,59.9
		.talk Debaar##28032
		..accept Venture Co. Misadventure##12524
	step //328
		home Nesingwary Base Camp
	step //329
		goto 26.9,58.9
		.talk Chad##28497
		..accept It Could Be Anywhere!##12624
	step //330
		goto 25.4,58.5
		.talk Weslex Quickwrench##28033
		..accept Need an Engine, Take an Engine##12522
	step //331
		goto 38.7,56.7
		.' Click the Flying Machine Engine|tip It's an engine sitting on the ground, next to a crashed plane.
		.get Flying Machine Engine|q 12522/1
	step //332
		goto 39.7,58.7
		.talk Monte Muzzleshot##27987
		..turnin Where in the World is Hemet Nesingwary?##12521
		..accept Welcome to Sholazar Basin##12489
	step //333
		goto 35.5,47.4
		.talk Engineering Helice##28787
		..accept Engineering a Disaster##12688
		.' Escort Engineer Helice out of Swindlegrin's Dig|goal Escort Engineer Helice out of Swindlegrin's Dig|q 12688/1
	step //334
		goto 37.4,46.1
		.'Kill 15 Venture Company member|goal 15 Venture Company members killed|q 12524/1
		.kill Venture Company mobs|n
		.get Golden Engagement Ring|q 12624/1
	step //335
		goto 27.2,59.9
		.talk Debaar##28032
		..turnin Venture Co. Misadventure##12524
		..accept Wipe That Grin Off His Face##12525
	step //336
		goto 26.9,58.9
		.talk Chad##28497
		..turnin It Could Be Anywhere!##12624
	step //337
		goto 27.1,58.6
		.talk Hemet Nesingwary##27986
		..turnin Welcome to Sholazar Basin##12489
		..turnin Engineering a Disaster##12688
	step //338
		ding 78
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Northrend (78-80)",[[
	author support@zygorguides.com
	startlevel 78
	step //1
		goto Sholazar Basin,25.4,58.5
		.talk Weslex Quickwrench##28033
		..turnin Need an Engine, Take an Engine##12522
		..accept Have a Part, Give a Part##12523
	step //2
		goto 32.7,46.9
		.' Click the Venture Co. Spare Parts|tip They look like metal assorted parts on the ground around this area.
		.get 7 Venture Co. Spare Parts|q 12523/1
	step //3
		goto 35.8,50.3
		.kill 1 Meatpie|q 12525/2|tip Meatpie is a blue ogre that walks up and down this platform, and around this area.
		.kill 1 Foreman Swindlegrin|q 12525/1|tip Foreman Swindlegrin is on a machine shredder walking around on top of this platform.
	step //4
		goto 27.2,59.9
		.talk Debaar##28032
		..turnin Wipe That Grin Off His Face##12525
	step //5
		goto 25.4,58.5
		.talk Weslex Quickwrench##28033
		..turnin Have a Part, Give a Part##12523
	step //6
		goto 25.4,58.5
		.talk Professor Calvert##28266
		..accept Aerial Surveillance##12696
	step //7
		goto 25.3,58.5
		.talk The Spirit of Gnomeregan##28037
		..fpath Nesingwary Base Camp
	step //8
		goto 26.7,59
		.talk Buck Cantwell##28031
		..accept Dreadsaber Mastery: Becoming a Predator##12549
	step //9
		goto 27.1,58.6
		.talk Hemet Nesingwary##27986
		..accept Rhino Mastery: The Test##12520
	step //10
		goto 27.1,59.9
		.talk Drostan##28328
		..accept Kick, What Kick?##12589
	step //11
		'Use your RJR Rifle on the gnome close to you with an apple on his head|use RJR Rifle##38573
		.' Keep using the rifle until you hit the apple
		.' Shoot the apple on Lucky Wilhelm's Head|goal Shot apple on Lucky Wilhelm's Head|q 12589/1
	step //12
		goto 27.1,59.9
		.talk Drostan##28328
		..turnin Kick, What Kick?##12589
		..accept The Great Hunter's Challenge##12592
	step //13
		goto 28,56
		.kill 15 Dreadsaber|q 12549/1
		.kill 15 Shardhorn Rhino|q 12520/1
		.kill Dreadsabers and Shardhorn Rhinos|n
		.'Kill 60 Game Animals|goal 60 Game Animals Killed|q 12592/1
		.' Another spot you can find Rhino's and Dreadsabers is at 38.2,45.3
	step //14
		goto 26.7,59
		.talk Buck Cantwell##28031
		..turnin Dreadsaber Mastery: Becoming a Predator##12549
		..accept Dreadsaber Mastery: Stalking the Prey##12550
	step //15
		goto 27.1,58.6
		.talk Hemet Nesingwary##27986
		..turnin Rhino Mastery: The Test##12520
		..accept Rhino Mastery: The Chase##12526
	step //16
		goto 26.7,59.5
		.talk Korg the Cleaver##28046
		..accept A Steak Fit for a Hunter##12804
	step //17
		goto 26.8,60.1
		.talk Grimbooze Thunderbrew##29157
		..accept Some Make Lemonade, Some Make Liquor##12634
	step //18
		goto 27.1,59.9
		.talk Drostan##28328
		..turnin The Great Hunter's Challenge##12592
	step //19
		goto 27.2,59.9
		.talk Debaar##28032
		..accept Crocolisk Mastery: The Trial##12551
	step //20
		goto 25.6,66.5
		.talk Oracle Soo-rahm##28191
		..turnin Rhino Mastery: The Chase##12526
		..accept An Offering for Soo-rahm##12543
	step //21
		goto 29.5,66.4
		.kill Longneck Grazers|n
		.get 5 Longneck Grazer Steak|q 12804/1
	step //22
		goto 29,62.5
		.kill 15 Mangal Crocolisk|q 12551/1
	step //23
		goto 36.3,65.8
		.kill Emperor Cobras|n
		.get 5 Intact Cobra Fang|q 12543/1
	step //24
		goto 37.6,61.8
		.' Click the Sturdy Vines|tip They look like brown vines that hang from trees around this area.  Sometimes a Dwarf will fall out and give you fruit you need.
		.' Click the fruit that falls to the ground or talk to the dwarf that falls
		.get Orange|q 12634/1
		.get 2 Banana Bunch|q 12634/2
		.get Papaya|q 12634/3
	step //25
		goto 50,61.5
		.talk Pilot Vic##28746
		..turnin Aerial Surveillance##12696
		..accept An Embarassing Incident##12699
		..accept Force of Nature##12803
	step //26
		goto 50.5,62.1
		.talk Tamara Wobblesprocket##28568
		..accept The Part-time Hunter##12654
	step //27
		goto 48.6,64
		.' Click the Raised Mud|tip They look like piles of dirt underwater in this lake.
		.get Vic's Keys|q 12699/1
	step //28
		goto 50,61.5
		.talk Pilot Vic##28746
		..turnin An Embarassing Incident##12699
		..accept Reconnaissance Flight##12671
	step //29
		goto 50,61.5
		'You go flying in a plane
		.' Use the abilities on your hotbar to fight the bats
		.' The engine blows up and you have to fly back to Pilot Vic at 50.1,61.4|n
		.' Land the plane inside the blue crystal circle
		.' Use the Land Flying Machine ability on your hotbar to land the plane|petaction Land Flying Machine
		.' Complete the Reconnaissance Flight|goal Reconnaissance Flight|q 12671/1
	step //30
		goto 50,61.5
		.talk Pilot Vic##28746
		..turnin Reconnaissance Flight##12671
	step //31
		goto 39.9,43.7
		.' Click the Dreadsaber Tracks|tip They look like brown paw prints on the ground around this area.
		.' Identify 3 Shango Tracks|goal 3 Shango Track identified|q 12550/1
	step //32
		goto 26.7,59
		.talk Buck Cantwell##28031
		..turnin Dreadsaber Mastery: Stalking the Prey##12550
		..accept Dreadsaber Mastery: Ready to Pounce##12558
	step //33
		goto 26.7,59.5
		.talk Korg the Cleaver##28046
		..turnin A Steak Fit for a Hunter##12804
	step //34
		goto 26.8,60.1
		.talk Grimbooze Thunderbrew##29157
		..turnin Some Make Lemonade, Some Make Liquor##12634
		..accept Still At It##12644
	step //35
		goto 26.7,60
		.talk "Tipsy" McManus##28566
		..'Tell him you are ready to start the distillation process
		.' Click the items on the ground or on the machine that he yells at you during the process, it's random
		.' Click the barrel on the ground when the process is done
		.get Thunderbrew's Jungle Punch|q 12644/1
	step //36
		goto 26.8,60.1
		.talk Grimbooze Thunderbrew##29157
		..turnin Still At It##12644
		..accept The Taste Test##12645
	step //37
		goto 27.2,59.9
		.talk Debaar##28032
		..turnin Crocolisk Mastery: The Trial##12551
		..accept Crocolisk Mastery: The Plan##12560
	step //38
		goto 27.4,59.4
		.' Use your Jungle Punch Sample on Hadrius Harlowe|use Jungle Punch Sample##38697|tip Standing next to a tiki torch.
		.' Complete Hadrius' taste test|goal Hadrius' taste test|q 12645/2
	step //39
		goto 27.1,58.6
		.' Use your Jungle Punch Sample on Hemet Nesingwary|use Jungle Punch Sample##38697|tip Standing in front of a tent.
		.' Complete Hemet's taste test|goal Hemet's taste test|q 12645/1
	step //40
		goto 25.6,66.5
		.talk Oracle Soo-rahm##28191
		..turnin An Offering for Soo-rahm##12543
		..accept The Bones of Nozronn##12544
	step //41
		goto 26.1,71.6
		.' Use Soo-rahm's Incense next to the Offering Bowl|use Soo-rahm's Incense##38519|tip It's a small bowl in front of the skull of these bones.
		.' Reveal the Location of Farunn|goal Location of Farunn revealed|q 12544/1
	step //42
		goto 27.1,58.6
		.talk Hemet Nesingwary##27986
		..turnin The Bones of Nozronn##12544
		..accept Rhino Mastery: The Kill##12556
	step //43
		goto 33.4,34.7
		.from Shango##28297
		.get Shango's Pelt|q 12558/1
	step //44
		goto 34.7,41.5
		.' Click Sandferns|tip They look like ferns on the beach.
		.get 5 Sandfern|q 12560/1
	step //45
		goto 47.4,43.9
		.from Farunn##28288
		.get Farunn's Horn|q 12556/1
	step //46
		goto 50.5,62.1
		.' Use your Jungle Punch Sample on Tamara Wobblesprocket|use Jungle Punch Sample##38697|tip Standing in front of a tent.
		.' Complete Tamara's taste test|goal Tamara's taste test|q 12645/3
	step //47
		'Fly to Nesingwary Base Camp|goto 25.4,58.2,0.5|noway|c
	step //48
		goto 27.1,58.6
		.talk Hemet Nesingwary##27986
		..turnin Rhino Mastery: The Kill##12556
	step //49
		goto 26.7,59
		.talk Buck Cantwell##28031
		..turnin Dreadsaber Mastery: Ready to Pounce##12558
	step //50
		goto 26.8,60.1
		.talk Grimbooze Thunderbrew##29157
		..turnin The Taste Test##12645
	step //51
		goto 27.2,59.9
		.talk Debaar##28032
		..turnin Crocolisk Mastery: The Plan##12560
		..accept Crocolisk Mastery: The Ambush##12569
	step //52
		goto 46.3,63.4
		.' Use your Sandfern Disguise next to this big log laying halfway in the water|use Sandfern Disguise##38564
		.kill Bushwhacker that spawns|n
		.get Bushwhacker's Jaw|q 12569/1
	step //53
		goto 50.5,77.3
		.from Pitch##28097
		.get Pitch's Remains|q 12654/1
	step //54
		goto 50.5,76.6
		.talk Tracker Gekgek##28095
		..accept Playing Along##12528
	step //55
		goto 55,69.1
		.talk High-Shaman Rakjak##28082
		..turnin Playing Along##12528
		..accept The Ape Hunter's Slave##12529
	step //56
		'Talk to Goregek the Gorilla Hunter who is following you
		..accept Tormenting the Softknuckles##12530
	step //57
		goto 57.5,73.3
		.kill 8 Hardknuckle Forager|q 12529/1
	step //58
		goto 61.1,71.7
		.kill 6 Hardknuckle Charger|q 12529/2
	step //59
		goto 66.9,73.2
		.' Use your Softknuckle Poker on Softknuckles|use Softknuckle Poker##38467|tip Softknuckles are baby gorillas.
		.' A Hardknuckle Matriarch will spawn eventually
		.kill 1 Hardknuckle Matriarch|q 12530/1
	step //60
		goto 55,69.1
		.talk High-Shaman Rakjak##28082
		..turnin The Ape Hunter's Slave##12529
		..turnin Tormenting the Softknuckles##12530
		..accept The Wasp Hunter's Apprentice##12533
	step //61
		goto 55.5,69.7
		.talk Elder Harkek##28138
		..accept The Sapphire Queen##12534
	step //62
		goto 59.6,75.8
		.kill 6 Sapphire Hive Wasp|q 12533/1
		.kill 9 Sapphire Hive Drone|q 12533/2
	step //63
		goto 59.4,79.1|n
		.' The path down to The Sapphire Queen starts here|goto 59.4,79.1,0.3|noway|c
	step //64
		'Follow the path down to 57.1,79.3|goto 57.1,79.3
		.from Sapphire Hive Queen##28087
		.get Stinger of the Sapphire Queen|q 12534/1
	step //65
		'Go outside to 55.0,69.1|goto 55.0,69.1
		.talk High-Shaman Rakjak##28082
		..turnin The Wasp Hunter's Apprentice##12533
		..turnin The Sapphire Queen##12534
	step //66
		goto 55.5,69.7
		.talk Elder Harkek##28138
		..accept Flown the Coop!##12532
	step //67
		'They are all around the village
		.' Click the Chicken Escapees
		.get 12 Captured Chicken|q 12532/1
	step //68
		goto 55.5,69.7
		.talk Elder Harkek##28138
		..turnin Flown the Coop!##12532
		..accept The Underground Menace##12531
	step //69
		goto 55,69.1
		.talk High-Shaman Rakjak##28082
		..accept Mischief in the Making##12535
	step //70
		goto 56.6,84.6
		.' Click the Skyreach Crystal Formations|tip They look like white crystal cluster on the ground along the river bank.
		.get 8 Skyreach Crystal Cluster|q 12535/1
	step //71
		goto 49.8,85
		.from Serfex the Reaver##28083
		.get Claw of Serfex|q 12531/1
	step //72
		goto 55,69.1
		.talk High-Shaman Rakjak##28082
		..turnin The Underground Menace##12531
		..turnin Mischief in the Making##12535
		..accept A Rough Ride##12536
	step //73
		goto 57.3,68.4
		.talk Captive Crocolisk##28298
		..'Tell him let's do this
		.' Travel to Mistwhisper Refuge|goal Travel to Mistwhisper Refuge.|q 12536/1
	step //74
		'When you jump off the crocodile:
		.talk Zepik the Gorloc Hunter##28668
		..turnin A Rough Ride##12536
		..accept Lightning Definitely Strikes Twice##12537
		..accept The Mist Isn't Listening##12538
	step //75
		goto 45.4,37.2
		.' Use your Skyreach Crystal Clusters next to the stone monument|use Skyreach Crystal Clusters##38510|tip It's a tall rectangle stone monument.
		.' Click the Arranged Crystal Formation that appears
		.' Sabotage the Mistwhisper Weather Shrine|goal Sabotage the Mistwhisper Weather Shrine|q 12537/1
	step //76
		goto 45.5,39.8
		.'Kill 12 Mistwhisper Gorloc|goal 12 Mistwhisper Gorloc|q 12538/1
	step //77
		'Use Zepik's Hunting Horn if Zepik is not standing next to you:|use Zepik's Hunting Horn##38512
		.talk Zepik the Gorloc Hunter##28216
		..turnin Lightning Definitely Strikes Twice##12537
		..turnin The Mist Isn't Listening##12538
		..accept Hoofing It##12539
	step //78
		goto 55,69.1
		.talk High-Shaman Rakjak##28082
		..turnin Hoofing It##12539
		..accept Just Following Orders##12540
	step //79
		goto 55.7,64.9
		.talk Injured Rainspeaker Oracle##28217
		..' Pull it to its feet
		.kill the crocodile that spawns|n
		.' Locate the Injured Rainspeaker Oracle|goal Locate Injured Rainspeaker Oracle|q 12540/1
	step //80
		goto 55.7,64.9
		.talk Injured Rainspeaker Oracle##28217
		..turnin Just Following Orders##12540
		..accept Fortunate Misunderstandings##12570
		..'Tell him you are ready to travel to his village now.
		.' Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy|goal Escort the Injured Rainspeaker Oracle to Rainspaker Canopy|q 12570/1
	step //81
		goto 54.6,56.3
		.talk High-Oracle Soo-say##28027
		..turnin Fortunate Misunderstandings##12570
		..accept Make the Bad Snake Go Away##12571
	step //82
		'Use Lafoo's Bug Bag if Lafoo is not standing next to you:|use Lafoo's Bug Bag##38622
		.talk Lafoo##28120
		..accept Gods like Shiny Things##12572
	step //83
		goto 57.5,52.4
		.kill 1 Venomtip|q 12571/2|tip He walks back and forth on this small path near the waterfall.
	step //84
		goto 52.4,53.2
		'Use Lafoo's Bug Bag if Lafoo is not standing next to you:|use Lafoo's Bug Bag##38622
		.' Stand on top of the twinkles of light on the ground around this area
		.' Lafoo will dig up the treasure
		.' Click the random items that appear on the ground
		.get 6 Shiny Treasures|q 12572/1
		.kill 10 Emperor Cobra|q 12571/1
	step //85
		goto 54.6,56.3
		.talk High-Oracle Soo-say##28027
		..turnin Make the Bad Snake Go Away##12571
		..accept Making Peace##12573
		..turnin Gods like Shiny Things##12572
	step //86
		goto 51.3,64.6
		.talk Shaman Vekjik##28315
		..'Tell him you brought an offering
		.' Extend the Peace Offering to Shaman Vekjik|goal Extend Peace Offering to Shaman Vekjik|q 12573/1
	step //87
		goto 50.5,62.1
		.talk Tamara Wobblesprocket##28568
		..turnin The Part-time Hunter##12654
	step //88
		goto 54.6,56.3
		.talk High-Oracle Soo-say##28027
		..turnin Making Peace##12573
		..accept Back So Soon?##12574
	step //89
		goto 42.1,38.6
		.talk Mistcaller Soo-gan##28114
		..turnin Back So Soon?##12574
		..accept The Lost Mistwhisper Treasure##12575
		..accept Forced Hand##12576
	step //90
		goto 42.1,28.7
		.talk Colvin Norrington##28771
		..accept Burning to Help##12683
	step //91
		goto 40.4,26.4
		.kill 8 Frenzyheart Spearbearer|q 12576/1
		.kill 6 Frenzyheart Scavenger|q 12576/2
	step //92
		goto 41.3,19.8
		.kill 1 Warlord Tartek|q 12575/1|tip He comes walking up on a red dragon.
	step //93
		goto 41.6,19.5
		.' Click the Mistwhisper Treasure|tip It's a yellow glowing floating orb, hovering over a tree stump altar.
		.get Mistwhisper Treasure|q 12575/2
	step //94
		goto 39.7,38
		.' Fight Bittertide Hydras|tip They are underwater in this lake.
		.' They will spit on you with Hydra Sputum
		.' Use your Sample Container in your bags when you have the Hydra Sputum debuff|use Sample Container##39164
		.' Collect 5 Sputum Samples|goal 5 Sputum Samples Collected|q 12683/1
		.kill 5 Bittertide Hydra|q 12683/2
	step //95
		goto 42.1,38.6
		.talk Mistcaller Soo-gan##28114
		..turnin The Lost Mistwhisper Treasure##12575
		..turnin Forced Hand##12576
		..accept Home Time!##12577
	step //96
		goto 42.1,28.7
		.talk Colvin Norrington##28771
		..turnin Burning to Help##12683
	step //97
		'Hearth to Nesingwary Base Camp|goto 26.9,59.2,0.5|use hearthstone##6948|noway|c
	step //98
		goto 27.2,59.9
		.talk Debaar##28032
		..turnin Crocolisk Mastery: The Ambush##12569
	step //99
		goto 27.1,58.6
		.talk Hemet Nesingwary##27986
		..accept In Search of Bigger Game##12595
	step //100
		goto 42.3,28.7
		.talk Dorian Drakestalker##28376
		..turnin In Search of Bigger Game##12595
		..accept Sharpening Your Talons##12603
		..accept Securing the Bait##12605
	step //101
		goto 44.7,27.4
		.kill 6 Primordial Drake|q 12603/1|tip The Primordial Drakes fly around in the air around this area.
		.' Attack the Primordial Drake Eggs|tip The Primordial Drake Eggs look like white eggs next to trees around this area.
		.' Click the Primordial Hatchlings that spawn
		.get 6 Primordial Hatchling|q 12605/1
	step //102
		goto 42.3,28.7
		.talk Dorian Drakestalker##28376
		..turnin Sharpening Your Talons##12603
		..turnin Securing the Bait##12605
	step //103
		goto 42.1,28.7
		.talk Colvin Norrginton##28771
		..accept Reagent Agent##12681
	step //104
		goto 42.1,28.9
		.talk Zootfizzle##28374
		..accept A Mammoth Undertaking##12607
		..accept My Pet Roc##12658
	step //105
		goto 39.3,27.3
		.' Use your Mammoth Harness on a Shattertusk Mammoth|use Mammoth Harness##38627
		.' Ride the mammoth back to Zootfizzle at 42.1,28.9|n
		.' Use the Hand Over Mammoth ability on your hotbar|petaction Hand Over Mammoth
		.' Deliver the Shattertusk Mammoth|goal Shattertusk Mammoth Delivered|q 12607/1
	step //106
		goto 42.1,28.9
		.talk Zootfizzle##28374
		..turnin A Mammoth Undertaking##12607
	step //107
		goto 54.5,27.9
		.kill Goretalon Rocs|n
		.get 5 Twisted Roc Talon|q 12681/1
		.' Click the Roc Eggs|tip The Roc Eggs look like white eggs in nests on the ground around this area.
		.get 7 Roc Egg|q 12658/1
	step //108
		goto 42.1,28.7
		.talk Colvin Norrington##28771
		..turnin Reagent Agent##12681
	step //109
		goto 42.1,28.9
		.talk Zootfizzle##28374
		..turnin My Pet Roc##12658
	step //110
		goto 54.6,56.3
		.talk High-Oracle Soo-say##28027
		..turnin Home Time!##12577
		..accept The Angry Gorloc##12578
	step //111
		goto 64.5,48.7
		.talk Avatar of Freya##27801
		..turnin Force of Nature##12803
		..accept An Issue of Trust##12561
	step //112
		goto 67.3,51.4
		.kill 6 Blighted Corpse|q 12561/1
		.kill 10 Bonescythe Ravager|q 12561/2
	step //113
		goto 64.5,48.7
		.talk Avatar of Freya##27801
		..turnin An Issue of Trust##12561
		..accept Returned Sevenfold##12611
	step //114
		goto 66.5,44.2
		.' Fight Thalgran Blightbringer|tip He's a tall undead standing on this small hill.
		.' Use Freya's Ward in your bags to reflect Thalgran Blightbringer's Deathbolts back at him|use Freya's Ward##38657|tip Deathbolts are a purple shadow spell when he's casting it.
		.kill 1 Thalgran Blightbringer|q 12611/1
	step //115
		goto 64.5,48.7
		.talk Avatar of Freya##27801
		..turnin Returned Sevenfold##12611
		..accept The Fallen Pillar##12612
		..accept Salvaging Life's Strength##12805
	step //116
		goto 65.1,60.3
		.' Click the Cultist Corpse|tip On the ground at the very top of the pillar, next to a huge red crystal.
		..turnin The Fallen Pillar##12612
		..accept Cultist Incursion##12608
	step //117
		goto 69.7,57.9
		.kill Lifeblood Elementals|n
		.' Use your Lifeblood Gem on their corpses|use Lifeblood Gem##40397
		.' Recover 8 Lifeblood Energy|goal 8 Lifeblood Energy Recovered|q 12805/1
	step //118
		goto 75.3,54.1
		.' Travel to Mosswalker Village|goal Travel to Mosswalker Village.|q 12578/1
	step //119
		'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
		.talk Moodle##28122
		..turnin The Angry Gorloc##12578
		..accept The Mosswalker Savior##12580
		..accept Lifeblood of the Mosswalker Shrine##12579
	step //120
		goto 75.4,52.4
		.talk Mosswalker Victim##28113
		.' Rescue 6 Mosswalker Victims|goal 6 Mosswalker Victims Rescued|q 12580/1
	step //121
		'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
		.talk Moodle##28122
		..turnin The Mosswalker Savior##12580
	step //122
		goto 68.9,54.6
		.' Click Lifeblood Shards on the ground|tip They look like small red crystals on the ground around this area.
		.get 10 Lifeblood Shard|q 12579/1
	step //123
		'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
		.talk Moodle##28122
		..turnin Lifeblood of the Mosswalker Shrine##12579
	step //124
		goto 64.5,48.7
		.talk Avatar of Freya##27801
		..turnin Cultist Incursion##12608
		..turnin Salvaging Life's Strength##12805
		..accept Exterminate the Intruders##12617
		..accept Weapons of Destruction##12660
	step //125
		goto 57.5,41.1
		.kill 8 Cultist Infiltrator|q 12617/1
		.' Click the Unstable Explosives|tip The Unstable Explosives look like big metal spiked balls on the ground around this area.
		.' Destroy 4 Unstable Explosives|goal 4 Unstable Explosives destroyed|q 12660/1
	step //126
		goto 64.5,48.7
		.talk Avatar of Freya##27801
		..turnin Exterminate the Intruders##12617
		..turnin Weapons of Destruction##12660
		..accept The Lifewarden's Wrath##12620
	step //127
		goto 50.1,37.3
		.' Fly to the very top of this tall pillar
		.' Stand under the big floating structure
		.' Use Freya's Horn |use Freya's Horn##38684
		.' Release The Lifewarden's Wrath|goal The Lifewarden's Wrath|q 12620/1
	step //128
		goto 64.5,48.7
		.talk Avatar of Freya##27801
		..turnin The Lifewarden's Wrath##12620
		..accept Freya's Pact##12621
	step //129
		goto 64.5,48.7
		.talk Avatar of Freya##27801
		.' Ask her how you can help
		.get Freya's Pact|q 12621/1
	step //130
		goto 64.5,48.7
		.talk Avatar of Freya##27801
		..turnin Freya's Pact##12621
		..accept Powering the Waygate - The Maker's Perch##12559
	step //131
		'Hearth to Nesingwary Base Camp|goto 26.9,59.2,0.5|use hearthstone##6948|noway|c
	step //132
		goto 28.4,39.1|n
		.' The path to Activation Switch Gamma starts here|goto 28.4,39.1,0.5|noway|c|tip It's a big balcony you'll have to fly to.
	step //133
		goto 26.2,35.5
		.' Click the Activations Switch Gamma|goal Activation Switch Gamma|q 12559/1|tip It looks like a rectangle upright control panel in the middle between 3 huge windows.
	step //134
		goto 64.5,48.7
		.talk Avatar of Freya##27801
		..turnin Powering the Waygate - The Maker's Perch##12559
		..accept Powering the Waygate - The Maker's Overlook##12613
	step //135
		goto 80.4,55.8
		.' Click the Timeworn Coffer|tip It's a big stone box sitting on the big balcony.
		..accept A Timeworn Coffer##12691
	step //136
		goto 89.1,52.9
		.' Click the Activation Switch Theta|goal Activation Switch Theta|q 12613/1|tip At the very end of the hallway, it's a rectangle upright control panel.
	step //137
		goto 80.3,54.9
		.kill Sholazar Guardians|n
		.get Huge Stone Key|q 12691/1
	step //138
		goto 80.4,55.8
		.' Click the Timeworn Coffer|tip It's a big stone box sitting on the big balcony.
		..turnin A Timeworn Coffer##12691
	step //139
		goto 64.5,48.7
		.talk Avatar of Freya##27801
		..turnin Powering the Waygate - The Maker's Overlook##12613
		..accept The Etymidian##12548
	step //140
		goto 40.3,82.9|n
		.' Stand inside the light to go through the Waygate|goto Un'Goro Crater|noway|c
	step //141
		goto Un'Goro Crater,47.4,9.2
		.talk The Etymidian##28092
		..turnin The Etymidian##12548
		..accept The Activation Rune##12547
	step //142
		'Go up the steps and into the tunnel to 48.2,2.5|goto 48.2,2.5
		.from High Cultist Herenn##28601
		.get Omega Rune|q 12547/1
	step //143
		goto 47.4,9.2
		.talk The Etymidian##28092
		..turnin The Activation Rune##12547
		..accept Back Through the Waygate##12797
	step //144
		goto 50.5,7.8|n
		.' Stand inside the light to go through the Waygate|goto Sholazar Basin|noway|c
	step //145
		goto Sholazar Basin,64.5,48.7
		.talk Avatar of Freya##27801
		..turnin Back Through the Waygate##12797
	step //146
		ding 79
	step //147
		'Hearth to Nesingwary Base Camp|goto 26.9,59.2,0.5|use hearthstone##6948|noway|c
	step //148
		'Fly to Dalaran|goto Dalaran|noway|c
	step //149
		goto Dalaran,35,45.3|n
		.' The path down to Rin Duoctane starts here|goto 35,45.3,0.2|noway|c
	step //150
		'Go into the sewer to 30.9,50.2|goto 30.9,50.2
		.talk Rin Duoctane##30490
		..accept Luxurious Getaway!##12853
	step //151
		'Go back up to the top level of the city to 56.3,46.8|goto 56.3,46.8
		.' Click the Teleport to Violet Stand Crystal|goto Crystalsong Forest,15.8,42.8,0.5|noway|c|tip Downstrairs in a small room, it's a blue floating trianglular jewel.
	step //152
		'Go northeast to The Storm Peaks|goto The Storm Peaks|noway|c
	step //153
		goto The Storm Peaks,41,86.4
		.talk Jeer Sparksocket##29431
		..turnin Luxurious Getaway!##12853
		..accept Clean Up##12818
	step //154
		home K3
	step //155
		goto 41.1,86.1
		.talk Gretchen Fizzlespark##29473
		..accept They Took Our Men!##12843
		..accept Equipment Recovery##12844
	step //156
		goto 40.9,85.3
		.talk Ricket##29428
		..accept Reclaimed Rations##12827
		..accept Expression of Gratitude##12836
	step //157
		goto 40.8,84.5
		.talk Skizzle Slickslide##29721
		..fpath K3
	step //158
		goto 39.8,86.4
		.' Click the Charred Wreckage|tip They look like various metal parts on the ground around this area.
		.get 10 Charred Wreckage|q 12818/1
	step //159
		goto 35,83.8
		.kill Savage Hill gnolls|n
		.' Click Dried Gnoll Rations crates|tip The Dried Gnoll Rations crates look like wooden boxes sitting on the ground around this area.
		.get 16 Dried Gnoll Rations|q 12827/1
	step //160
		goto 30.3,85.7
		.kill 1 Gnarlhide|q 12836/1|tip Standing in front of a tent.
	step //161
		goto 41,86.4
		.talk Jeer Sparksocket##29431
		..turnin Clean Up##12818
		..accept Just Around the Corner##12819
	step //162
		goto 40.9,85.3
		.talk Ricket##29428
		..turnin Reclaimed Rations##12827
		..turnin Expression of Gratitude##12836
		..accept Ample Inspiration##12828
	step //163
		goto 35.1,87.8
		.' Click Sparksocket's Tools|tip They look like a box of tools in the middle of the mine field.  Navigate carefully through the wide paths in the mine field to get here.  You may get blown around in order to get to this spot, but just keep trying.
		.get Sparksocket's Tools|q 12819/1
	step //164
		goto 41,86.4
		.talk Jeer Sparksocket##29431
		..turnin Just Around the Corner##12819
		..accept Slightly Unstable##12826
	step //165
		goto 40.9,85.3
		.talk Ricket##29428
		..turnin Slightly Unstable##12826
		..accept A Delicate Touch##12820
	step //166
		goto 43.1,81.2
		.' Use your Improved Land Mines to place mines on the ground close to each other|use Improved Land Mines##40676|tip Garm Invaders and Snowblind Followers will run over the mines and die.
		.kill 12 Garm Attackers|q 12820/1
	step //167
		goto 41.7,80
		.talk Tore Rumblewrench##29430
		..accept Moving In##12829
		..accept Ore Repossession##12830
	step //168
		goto 41.7,80
		.' Click the U.D.E.D. Dispenser next to Tore Rumblewrench
		.' Retrieve a bomb from the dispenser
		.collect 1 U.D.E.D.##40686|q 12828
	step //169
		'HURRY HURRY to 43.9,79.0|goto 43.9,79.0
		.' Use your U.D.E.D. on an Ironwool Mammoth|use U.D.E.D.##40686|tip They walk around this area spread out.
		.' Click the Mammoth Meat on the ground
		.get 8 Hearty Mammoth Meat|q 12828/1
	step //170
		'Go into the cave to 40.4,77.8|goto 40.4,77.8
		.kill 12 Crystalweb Spiders|q 12829/1
	step //171
		goto 41.5,74.9
		.talk Injured Goblin Miner##29434
		..accept Only Partly Forgotten##12831
	step //172
		goto 44,75.9
		.kill Snowblind Diggers|n
		.get 5 Impure Saronite Ore|q 12830/1
	step //173
		goto 47.1,72.3
		.kill Icetip Crawlers|n|tip They are big purple spiders walking around this area inside the cave.
		.get 1 Icetip Venom Sac|q 12831/1
	step //174
		goto 43.5,75.2
		.talk Injured Goblin Miner##29434
		..turnin Only Partly Forgotten##12831
		..accept Bitter Departure##12832
	step //175
		goto 43.5,75.2
		.talk Injured Goblin Miner##29434
		..'Tell the miner you're ready
		.' Escort the Injured Goblin Miner to K3|goal Escort the Injured Goblin Miner to K3.|q 12832/1
	step //176
		'Fly up to 39.8,73.3|goto 39.8,73.3
		.kill Sifreldar Storm Maidens|n
		.collect 5 Cold Iron Key##40641|q 12843 |n
		.' Click the Rusty Cages
		.' Free 5 Goblin Prisoners|goal 5 Goblin Prisoner freed|q 12843/1
		.' Click the K3 Equipment crates|tip The K3 Equipment crates look like wooden crates on the ground around town.
		.get 8 K3 Equipment|q 12844/1
	step //177
		goto 41.7,80
		.talk Tore Rumblewrench##29430
		..turnin Moving In##12829
		..turnin Ore Repossession##12830
	step //178
		goto 40.9,85.3
		.talk Ricket##29428
		..turnin A Delicate Touch##12820
		..turnin Ample Inspiration##12828
		..turnin Bitter Departure##12832
		..accept Opening the Backdoor##12821
	step //179
		goto 41.1,86.1
		.talk Gretchen Fizzlespark##29473
		..turnin They Took Our Men!##12843
		..accept Leave No Goblin Behind##12846
		..turnin Equipment Recovery##12844
	step //180
		goto 45.1,82.4
		.' Click the Transporter Power Cell|tip It looks like a small red barrel.
		.get Transporter Power Cell|q 12821/2
	step //181
		goto 50.7,81.9
		.' Use your Transporter Power Cell next to the Teleportation Pad|use Transporter Power Cell##40731|tip It looks like a tall machine with a fan in the bottom of it.
		.' Activate the Garm Teleporter|goal Garm Teleporter Activated|q 12821/1
	step //182
		goto 40.9,85.3
		.talk Ricket##29428
		..turnin Opening the Backdoor##12821
		..accept Know No Fear##12822
	step //183
		'Go inside the cave to 48.1,81.9|goto 48.1,81.9
		.kill 6 Garm Watcher|q 12822/1
		.kill 8 Snowblind Devotee|q 12822/2
	step //184
		'Go outside and fly up into the cave to 42.8,68.9|goto 42.8,68.9
		.talk Lok'lira the Crone##29481
		..turnin Leave No Goblin Behind##12846
		..accept The Crone's Bargain##12841
	step //185
		goto 44.2,68.9
		.from Overseer Syra##29518
		.get 1 Runes of the Yrkvinn|q 12841/1
	step //186
		goto 42.8,68.9
		.talk Lok'lira the Crone##29481
		..turnin The Crone's Bargain##12841
		..accept Mildred the Cruel##12905
	step //187
		goto 44.4,68.9
		.talk Mildred the Cruel##29885
		..turnin Mildred the Cruel##12905
		..accept Discipline##12906
	step //188
		goto 44.8,70.3
		.' Use your Disciplining Rod on Exhausted Vrykul|use Disciplining Rod##42837|tip They are sitting on the ground inside these side tunnels inside this mine.
		.' Discipline 6 Exhausted Vrykul|goal 6 Exhausted Vrykul Disciplined|q 12906/1
	step //189
		goto 44.4,68.9
		.talk Mildred the Cruel##29885
		..turnin Discipline##12906
		..accept Examples to be Made##12907
	step //190
		goto 45.4,69.1
		.kill 1 Garhal|q 12907/1|tip Standing off to the side of the path, he has red tattoos on his torso.
	step //191
		goto 44.4,68.9
		.talk Mildred the Cruel##29885
		..turnin Examples to be Made##12907
		..accept A Certain Prisoner##12908
	step //192
		goto 42.8,68.9
		.talk Lok'lira the Crone##29481
		..turnin A Certain Prisoner##12908
		..accept A Change of Scenery##12921
	step //193
		'Follow the path in the mine east out to the other side to 47.5,69.1|goto 47.5,69.1
		.talk Lok'lira the Crone##29975
		..turnin A Change of Scenery##12921
		..accept Is That Your Goblin?##12969
	step //194
		goto 48.2,69.8
		.talk Agnetta Tyrsdottar##30154
		..'Tell her to skip the warmup
		.kill 1 Agnetta Tyrsdottar|q 12969/1
	step //195
		goto 47.5,69.1
		.talk Lok'lira the Crone##29975
		..turnin Is That Your Goblin?##12969
		..accept The Hyldsmeet##12970
	step //196
		goto 47.5,69.1
		.talk Lok'lira the Crone##29975
		..'Ask her about her proposal
		.' Listen to Lok'lira's proposal|goal Listen to Lok'lira's proposal|q 12970/1
	step //197
		goto 47.5,69.1
		.talk Lok'lira the Crone##29975
		..turnin The Hyldsmeet##12970
		..accept Taking on All Challengers##12971
	step //198
		goto 51,66.4
		.talk Victorious Challenger##30012
		.kill 6 Victorious Challenger|q 12971/1
	step //199
		goto 47.5,69.1
		.talk Lok'lira the Crone##29975
		..turnin Taking on All Challengers##12971
		..accept You'll Need a Bear##12972
	step //200
		goto 48.4,72.1
		.talk Iva the Vengeful##29997
		..accept Off With Their Black Wings##12942
		..accept Yulda's Folly##12968
	step //201
		goto 48.4,72.1
		.talk Thyra Kvinnshal##30041
		..accept Aberrations##12925
	step //202
		goto 53.1,65.7
		.talk Brijana##29592
		..turnin You'll Need a Bear##12972
		..accept Going Bearback##12851
	step //203
		goto 53.1,65.7
		.' Click Icefang to ride him|tip Standing down the hill, Icefang is a white bear.
		.' While riding Icefang, use the Flaming Arrow ability on your hotbar to shoot arrows at the Frostworgs and Frost Giants|petaction Flaming Arrow
		.' Burn 7 Frostworgs|goal 7 Frostworgs Burned|q 12851/1
		.' Burn 15 Frost Giants|goal 15 Frost Giants Burned|q 12851/2
	step //204
		goto 53.1,65.7
		.talk Brijana##29592
		..turnin Going Bearback##12851
		..accept Cold Hearted##12856
	step //205
		'Fly to 63.9,62.5|goto 63.9,62.5
		.' Click the Captive Proto-Drakes to ride them|tip The Captive Proto-Drakes are chained up flying in the sky.
		.' Use your Ice Shard ability on the Brunnhildar Prisoners|petaction Ice Shard|tip The Brunnhildar Prisoners look like blue blocks of ice around this area on the ground.
		.' When your Proto-Drake is holding 3 Brunnhildar Prisoners, start flying toward Brunnhildar Village, the drake will eventually go on autopilot.  Repeat this process 2 more times.
		.' Rescue 9 Brunnhildar Prisoners|goal 9 Rescued Brunnhildar Prisoners|q 12856/1
		.' Free 3 Proto-Drakes|goal 3 Freed Proto-Drakes|q 12856/2
	step //206
		goto 53.1,65.7
		.talk Brijana##29592
		..turnin Cold Hearted##12856
		..accept Deemed Worthy##13063
	step //207
		goto 49.7,71.8
		.talk Astrid Bjornrittar##29839
		..turnin Deemed Worthy##13063
		..accept Making a Harness##12900
	step //208
		goto 47.9,74.7
		.kill Icemane Yetis|n
		.get 3 Icemane Yeti Hide|q 12900/1
	step //209
		goto 49.7,71.8
		.talk Astrid Bjornrittar##29839
		..turnin Making a Harness##12900
		..accept The Last of Her Kind##12983
		..accept The Slithering Darkness##12989
	step //210
		goto 55.8,63.9
		.'Kill 8 Ravenous Jormungar inside this cave|kill 8 Ravenous Jormungar|q 12989/1
	step //211
		'Follow the path in the cave to 54.8,60.4|goto 54.8,60.4
		.' Click the Injured Icemaw Matriarch|tip She's a big white bear laying on the ground inside this cave.
		.' The bear runs back to Brunnhildar Village
		.' Rescue the Icemaw Matriarch|goal Icemaw Matriarch Rescued|q 12983/1
	step //212
		goto 49.7,71.8
		.talk Astrid Bjornrittar##29839
		..turnin The Last of Her Kind##12983
		..accept The Warm-Up##12996
		..turnin The Slithering Darkness##12989
	step //213
		'Use your Reins of the Icemaw Matriarch outside the building to ride a bear|invehicle|c|use Reins of the Warbear Matriarch##42481
	step //214
		goto 50.8,67.7
		.' Use the abilities on your hotbar to fight Kirgaraak|tip He's a big white yeti.
		.' Defeat Kirgaraak|goal Kirgaraak Defeated|q 12996/1
	step //215
		goto 49.7,71.8
		.talk Astrid Bjornrittar##29839
		..turnin The Warm-Up##12996
		..accept Into the Pit##12997
	step //216
		'Click the red arrow to get off the bear|script VehicleExit()|outvehicle|c
	step //217
		goto 49.1,69.4
		.' Use your Reins of the Icemaw Matriarch inside The Pit of the Fang to ride a bear|use Reins of the Warbear Matriarch##42499
		.' Use the abilities on your hotbar to fight Hyldsmeet Warbears
		.kill 6 Hyldsmeet Warbear|q 12997/1
	step //218
		'Click the red arrow to get off the bear|script VehicleExit()|outvehicle|c
	step //219
		goto 49.7,71.8
		.talk Astrid Bjornrittar##29839
		..turnin Into the Pit##12997
		..accept Prepare for Glory##13061
	step //220
		goto 47.5,69.1
		.talk Lok'lira the Crone##29975
		..turnin Prepare for Glory##13061
		..accept Lok'lira's Parting Gift##13062
	step //221
		goto 50.9,65.6
		.talk Gretta the Arbiter##29796
		..turnin Lok'lira's Parting Gift##13062
		..accept The Drakkensryd##12886
	step //222
		'You fly off on a drake and start flying in circles around a tower:
		.' Use your Hyldnir Harpoon in your bags on Hyldsmeet Proto-Drakes to harpoon over to a new drake|use Hyldnir Harpoon##41058
		.kill Hyldsmeet Drakeriders|n
		.' Repeat this process 9 more times
		.' Defeat 10 Hyldsmeet Drakeriders|goal 10 Hyldsmeet Drakerider Defeated|q 12886/1
	step //223
		'They look like light fixtures on the side of the stone columns.
		.' Use your Hyldnir Harpoon in your bags on a Column Ornament to get off the drake|outvehicle|c|use Hyldnir Harpoon##41058
	step //224
		goto 33.4,58
		.talk Thorim##29445
		..turnin The Drakkensryd##12886
		..accept Sibling Rivalry##13064
	step //225
		goto 33.4,58
		.talk Thorim##29445
		..'Ask him what became of Sif
		.' Hear Thorim's History|goal Thorim's History Heard|q 13064/1
	step //226
		goto 33.4,58
		.talk Thorim##29445
		..turnin Sibling Rivalry##13064
		..accept Mending Fences##12915
	step //227
		goto 27.3,63.7
		.kill 12 Nascent Val'kyr|q 12942/1
		.kill Valkyrion Aspirants|n
		.collect 6 Vial of Frost Oil##41612|q 12925
	step //228
		goto 23.7,58.3
		.' Use your Vials of Frost Oil on the Plagued Proto-Drake Eggs|use Vial of Frost Oil##41612|tip They look like brown spiked eggs sitting in the yellow water around this area.
		.' Try to get 6 at a time
		.' Destroy 30 Plagued Proto-Drake Eggs|goal 30 Plagued Proto-Drake Egg|q 12925/1
	step //229
		goto 24,61.8
		.kill 1 Yulda the Stormspeaker|q 12968/1|tip Yulda the Stormspeaker is standing inside this house.
		.' Click the Harpoon Crate|tip The Harpoon Crate looks like a huge square chest.
		..accept Valkyrion Must Burn##12953
	step //230
		goto 26,59.8
		.' Click the Valkyrion Harpoon Guns|tip They look like bronze dragon guns.
		.' Use the Flaming Harpoon abilitiy on your hotbar to shoot the tan bundles of straw near buildings and in wagons around this area|petaction Flaming Harpoon
		.' Start 6 Fires|goal 6 Fires Started|q 12953/1
	step //231
		'Click the red arrow to get off the gun|script VehicleExit()|outvehicle|c
	step //232
		'Hearth to K3|goto 41.0,85.9,0.5|use hearthstone##6948|noway|c
	step //233
		goto 40.9,85.3
		.talk Ricket##29428
		..turnin Know No Fear##12822
	step //234
		goto 48.4,72.1
		.talk Thyra Kvinnshal##30041
		..turnin Aberrations##12925
	step //235
		goto 48.4,72.1
		.talk Iva the Vengeful##29997
		..turnin Off With Their Black Wings##12942
		..turnin Yulda's Folly##12968
		..turnin Valkyrion Must Burn##12953
	step //236
		goto 75.8,63
		.' Click the Granite Boulders and get them 1 at a time|tip The Granite Boulders look like big grey rocks on the ground around this area.
		.' Use Thorim's Charm of Earth on the Stormforged Iron Giants|use Thorim's Charm of Earth##41505
		.' Help the dwarves kill them
		.kill 5 Stormforged Iron Giants|q 12915/2
		.' Get Slag Covered Metal
		.' Click the Slag Covered Metal in your bags|use Slag Covered Metal##41556
		..accept The Refiner's Fire##12922
	step //237
		goto 75.4,63.5
		.kill Seething Revenants|n
		.get 10 Furious Spark|q 12922/1
	step //238
		goto 77.2,62.9
		.' Click a Granite Boulder and get one|tip The Granite Boulders look like big grey rocks on the ground around this area.
		.' Use Thorim's Charm of Earth on Fjorn|use Thorim's Charm of Earth##41505|tip He's a huge fire giant, holding a huge smithing hammer.
		.' Help the dwarves kill him
		.kill 1 Fjorn|q 12915/1
	step //239
		goto 77.2,62.9
		.' Click Fjorn's Anvil|tip Fjorn's Anvil is a huge anvil.
		..turnin The Refiner's Fire##12922
		..accept A Spark of Hope##12956
	step //240
		goto 33.4,58
		.talk Thorim##29445
		..turnin A Spark of Hope##12956
		..turnin Mending Fences##12915
		..accept Forging an Alliance##12924
	step //241
		goto 62.6,60.9
		.talk Halvdan##32571
		..fpath Dun Niffelem
	step //242
		goto 65.4,60.2
		.talk King Jokkum##30105
		..accept You Can't Miss Him##12966
	step //243
		goto 75.4,63.6
		.talk Njormeld##30099
		..turnin You Can't Miss Him##12966
		..accept Battling the Elements##12967
	step //244
		goto 75.7,63.9
		.' Click Snorri to accompany on him|invehicle|c|tip Standing on the side of the road.
	step //245
		goto 76.7,63.4
		.' Use the Gather Snow ability on your hotbar to gather snow from Snowdrifts|petaction Gather Snow|tip The Snowdrifts look like piles of snow on the ground.
		.' Use the Throw Snowball ability on your hotbar to throw the snow at Seething Revenants|petaction Throw Snowball
		.kill 10 Seething Revenants|q 12967/1
	step //246
		'Click the red arrow on your hotbar to leave Snorri|script VehicleExit()|c
	step //247
		goto 75.4,63.6
		.talk Njormeld##30099
		..turnin Battling the Elements##12967
	step //248
		goto 63.2,63.2
		.talk Njormeld##30127
		..turnin Forging an Alliance##12924
		..accept A New Beginning##13009
	step //249
		goto 63.2,62.9
		.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
		..accept Hot and Cold##12981
	step //250
		goto 65.4,60.2
		.talk King Jokkum##30105
		..accept In Memoriam##12975
	step //251
		goto 69.7,60.2
		.kill Brittle Revenants|n
		.collect 6 Essence of Ice##42246|q 12981
	step //252
		goto 75.3,62.8
		.' Use your Essences of Ice next to Smoldering Scraps|use Essence of Ice##42246|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
		.' Click the Frozen Iron Scraps
		.get 6 Frozen Iron Scrap|q 12981/1
	step //253
		goto 72.1,49.4
		.' Click the Horn Fragments|tip The Horn Fragments look like grey scraps on the ground around this area.
		.get 8 Horn Fragment|q 12975/1
		.' Kill mobs in the area.
		.collect 10 Relic of Ulduar##42780|q 12975
	step //254
		goto 65.4,60.2
		.talk King Jokkum##30105
		..turnin In Memoriam##12975
		..accept A Monument to the Fallen##12976
	step //255
		goto 63.2,63.2
		.talk Njormeld##30127
		..turnin A Monument to the Fallen##12976
	step //256
		goto 63.2,62.9
		.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
		..turnin Hot and Cold##12981
	step //257
		goto 63.2,63.2
		.talk Njormeld##30127
		..accept Forging a Head##12985
	step //258
		goto 64.1,65.1
		.' Click Hodir's Horn|tip It's a huge bone war horn.
		..accept Blowing Hodir's Horn##12977
	step //259
		goto 65.4,60.2
		.talk King Jokkum##30105
		..accept Jormuttar is Soo Fat...##13011
	step //260
		goto 69.7,58.9
		.' Use your Diamond Tipped Pick on Dead Iron Giants|use Diamond Tipped Pick##42424
		.kill the Stormforged Ambushers that spawn|n
		.get 8 Stormforged Eye|q 12985/1
	step //261
		goto 72.1,51.8
		.kill Niffelem Forefathers and Restless Frostborn Ghosts|n
		.' Use Hodir's Horn on their corpses|use Hodir's Horn##42164
		.' Free 5 Niffelem Forefathers|goal 5 Niffelem Forefather freed|q 12977/1
		.' Free 5 Restless Frostborn|goal 5 Restless Frostborn freed|q 12977/2
	step //262
		goto 63.2,63.2
		.talk Njormeld##30127
		..turnin Forging a Head##12985
		..accept Mounting Hodir's Helm##12987
	step //263
		goto 64.1,65.1
		.' Click Hodir's Horn|tip It's a huge bone war horn.
		..turnin Blowing Hodir's Horn##12977
	step //264
		goto 64.3,59.2
		.' Fly to the tip of this ice spike
		.' Use the Tablets of Pronouncement in your bags|use Tablets of Pronouncement##42442
		.' Mount Hodir's Helm|goal Hodir's Helm Mounted|q 12987/1
	step //265
		goto 63.2,63.2
		.talk Njormeld##30127
		..turnin Mounting Hodir's Helm##12987
	step //266
		goto 64.2,59.2
		.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
		..accept Polishing the Helm##13006
	step //267
		goto 55.6,63.4
		.kill Viscous Oils inside this cave|n
		.get 5 Viscous Oil|q 13006/1
		.' Use your Everfrost Razor on Dead Icemaw Bears|use Everfrost Razor##42732
		.collect 1 Icemaw Bear Flank##42733|q 13011
	step //268
		goto 54.7,60.8
		.' Follow the path inside the cave to this spot
		.' Use your Icemaw Bear Flank while standing on the small frozen pond with a bunch of rocks on it|use Icemaw Bear Flank##42733
		.kill 1 Jormuttar|q 13011/1
	step //269
		'Go outside and go to 33.4,58.0|goto 33.4,58.0
		.talk Thorim##29445
		..turnin A New Beginning##13009
		..accept Veranus##13050
	step //270
		goto 43.7,67.4
		.' Click the Small Proto-Drake Eggs|tip They are big spiked brown eggs on top of this mountain in a nest.
		.get 5 Small Proto-Drake Egg|q 13050/1
		.' You can find more Small Proto-Drake Eggs at 45.2,66.9|n
	step //271
		goto 33.4,58
		.talk Thorim##29445
		..turnin Veranus##13050
		..accept Territorial Trespass##13051
	step //272
		goto 38.7,65.6
		.' Stand in this big nest
		.' Click the Stolen Proto-Dragon Eggs in your bags|use Stolen Proto-Dragon Eggs##42797
		.' Lure Veranus|goal Veranus Lured|q 13051/1
	step //273
		goto 33.4,58
		.talk Thorim##29445
		..turnin Territorial Trespass##13051
		..accept Krolmir, Hammer of Storms##13010
	step //274
		goto 64.2,59.2
		.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
		..turnin Polishing the Helm##13006
	step //275
		goto 65.4,60.2
		.talk King Jokkum##30105
		..turnin Jormuttar is Soo Fat...##13011
	step //276
		goto 65.4,60.2
		.talk King Jokkum##30105
		..'Ask him what has become of Krolmir
		.' Discover Krolmir's Fate|goal Krolmir's Fate Discovered|q 13010/1
	step //277
		goto 71.4,48.8
		.talk Thorim##30390
		..turnin Krolmir, Hammer of Storms##13010
		..accept The Terrace of the Makers##13057
	step //278
		goto 56.2,51.3
		.talk Thorim##30295
		..turnin The Terrace of the Makers##13057
		..accept The Earthen Oath##13005
		..accept Loken's Lackeys##13035
	step //279
		goto 57.3,46.7
		.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
		.' Fight mobs around this area
		.kill 7 Iron Sentinel|q 13005/1
		.kill 20 Iron Dwarf Assailant|q 13005/2
	step //280
		'Fly up into the building to 55.3,43.3|goto 55.3,43.3
		.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
		.kill Eisenfaust|q 13035/1|tip He's inside this Hall of the Shaper building in the very back of the room.
	step //281
		goto 48.6,45.6
		.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
		.kill Halefnir the Windborn|q 13035/2|tip Standing in the middle of this huge staircase.
	step //282
		goto 45,38.1
		.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
		.kill Duronn the Runewrought|q 13035/3|tip Standing at the bottom of this huge staircase.  Use Earth Shock to interrupt his Reconstruction, which will restore all of his health.
	step //283
		goto 56.3,51.4
		.talk Thorim##30295
		..turnin The Earthen Oath##13005
		..turnin Loken's Lackeys##13035
	step //284
		goto 36.2,49.4
		.talk Kabarg Windtamer##29757
		..fpath Grom'arsh Crash-Site
	step //285
		goto 36.4,49.1
		.talk Bloodguard Lorga##30247
		..accept The Missing Tracker##13054
		..accept Emergency Measures##13000
	step //286
		goto 37.0,49.5
		.talk Olut Alegut##30472
		..accept Ancient Relics##12882
	step //287
		goto 37.3,49.7
		.talk Boktar Bloodfury##29651
		..accept The Missing Bronzebeard##12895
	step //288
		home Grom'arsh Crash-Site
	step //289
		'Go inside the cave to 48.5,54.3|goto 48.5,54.3
		.talk Tracker Val'zij##30469
		..turnin The Missing Tracker##13054
		..accept Cave Medicine##13055
	step //290
		.collect 8 Cave Mushroom##42926|q 13055|tip They look like two mushrooms on the ground and are found throughout the cave.
		.kill Infesting Jormungars|n
		.collect 1 Toxin Gland##42927|q 13055
	step //291
		goto 48.5,54.3
		.talk Tracker Val'zij##30469
		..turnin Cave Medicine##13055
		..accept There's Always Time for Revenge##13056
	step //292
		'Go deeper into the cave to 48.2,48.1|goto 48.2,48.1
		.from Ravaged Cavedweller Worgs|n
		..collect 6 Worg Fur##42510|q 13056
		..kill Gimorak|q 13056/1|tip he patrols around the big room
	step //293
		goto 48.5,54.3
		.talk Tracker Val'zij##30469
		..turnin There's Always Time for Revenge##13056
	step //294
		goto 36.1,64.1
		.' Click the Disturbed Snow pile
		..collect Burlap-Wrapped Note##40947|q 12895
	step //295
		goto 36.4,49.1
		.talk Bloodguard Lorga##30247
		..turnin Emergency Measures##13000
	step //296
		goto 37.3,49.7
		.talk Boktar Bloodfury##29651
		..turnin The Missing Bronzebeard##12895
		..accept The Nose Knows##12909
	step //297
		goto 40.8,51.2
		.talk Khaliisi##29855
		..turnin The Nose Knows##12909
		..accept Sniffing Out the Perpetrator##12910
	step //298
		.' Click Frostbite to ride him.
		.' Use the abilities on your hotbar to keep the dwarves away from you
		.' Track scent to its source|goal Track scent to its source|q 12910/1
	step //299
		goto 48.5,60.8
		.kill Tracker Thulin|q 12910/2|tip He's sitting on the ground inside this small cave.
		.collect Brann's Communicator##40971|q 12910,12920,12926,12927,13416,12928 // multiple q
	step //300
		'Use Brann's Communicator in your bags|use Brann's Communicator##40971
		.talk Brann Bronzebeard##29579
		..turnin Sniffing Out the Perpetrator##12910
		..accept Speak Orcish, Man!##12913
	step //301
		goto 37.3,49.7
		.talk Moteha Windborn##29937
		..turnin Speak Orcish, Man!##12913
		..accept Speaking with the Wind's Voice##12917
	step //302
		goto 28.5,48.5
		.' Kill Stormriders around this area, they drop Voices of the Wind and Relics of Ulduar.
		..collect 5 Voice of the Wind##41514|q 12917
		..collect 10 Relic of Ulduar##42780|q 12882
	step //303
		goto 37.0,49.5
		.talk Olut Alegut##30472
		..turnin Ancient Relics##12882
	step //304
		goto 37.3,49.7
		.talk Moteha Windborn##29937
		..turnin Speaking with the Wind's Voice##12917
	step //305
		goto 37.3,49.7
		.talk Boktar Bloodfury##29651
		..accept Catching up with Brann##12920
	step //306
		.'Use Brann's Communicator in your bags|use Brann's Communicator##40971
		..talk Brann Bronzebeard##29579
		..goal Speak with Brann|q 12920/1
	step //307
		goto 37.3,49.7
		.talk Boktar Bloodfury##29651
		..turnin Catching up with Brann##12920
		..accept Pieces of the Puzzle##12926
	step //308
		goto 37.9,43.9
		.' Kill Library Guardians
		..collect 6 Inventor's Disk Fragment##41130|q 12926
	step //309
		'Click the Inventor's Disk Fragment|use Inventor's Disk Fragment##41130
		.get The Inventor's Disk|q 12926/1
	step //310
		..'Click Brann's Communicator|use Brann's Communicator##40971
		..talk Brann Bronzebeard##29579
		..turnin Pieces of the Puzzle##12926
	step //311
		ding 80
	step //312
		'Congratulations, you are now level 80!
]])

--TRIAL ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Main Guide (13-20)",[[
--TRIAL 	author support@zygorguides.com
--TRIAL 	step //1
--TRIAL 		' Thank you for trying the Zygor Guides Version 2.0 Leveling Guides Demo.  Please visit ZygorGuides.com to purchase the complete in-game Version 2.0 leveling guides.  Take care
--TRIAL 		level 13
--TRIAL ]])
ZygorGuidesViewer.HordeInstalled=true --!TRIAL
