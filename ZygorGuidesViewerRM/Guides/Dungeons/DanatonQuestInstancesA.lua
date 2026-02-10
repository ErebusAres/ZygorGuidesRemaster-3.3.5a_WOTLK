local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end

ZygorGuidesViewer:RegisterGuide("Ding80's Quest Instance Guides\\Deadmines (15)",[[
author danaton
startlevel 15
		step //1
			goto Ironforge,69.18,50.57
			.talk Gnoarn##6569
			..accept Speak with Shoni##2041
		step //2
			goto Stormwind,62.60,34.10
			.talk Shoni##6579
			..turnin Speak with Shoni##2041
			..accept Underground Assault##2040
		step //3
			.goto Stormwind,70.09,40.95
			.talk Wilder Thistlenettle##656
			..accept Oh Brother...##167
			..accept Collecting Memories##168
		step //4
			.goto Westfall,56.32,47.54
			.talk Marshal Gryan Stoutmantle##234
			..accept The Defias Brotherhood (1)##65
		step //5
			goto Westfall,52.89,53.66
			.talk Innkeeper Heather##8931
			home Sentinel Hill
		step //6
			goto Redridge Mountains,26.49,45.33
			.talk Wiley the Black##266
			..turnin The Defias Brotherhood (1)##65
			..accept The Defias Brotherhood (2)##132
		step //7
			.' Hearth to Sentinel Hill|goto Westfall,52.89,53.66,3|use Hearthstone##6948|noway|q 132
		step //8
			goto Westfall,56.32,47.54
			.talk Marshal Gryan Stoutmantle##234
			..turnin The Defias Brotherhood (2)##132
			..accept The Defias Brotherhood (3)##135
		step //9
			goto Stormwind,78.55,70.87
			.talk Master Mathias Shaw##332
			..turnin The Defias Brotherhood (3)##135
			..accept The Defias Brotherhood (4)##141
		step //10
			goto Westfall,56.32,47.54
			.talk Marshal Gryan Stoutmantle##234
			..turnin The Defias Brotherhood (4)##141
			..accept The Defias Brotherhood (5)##142
		step //11
			goto Westfall,45.70,68.57
			.from Defias Messenger##550
			.get A Mysterious Message##1381|q 142/1
			.' Moves variably into this position|at 36.23,43.97
			.' Or in this position|at 44.5,25.45
		step //12
			goto Westfall,56.32,47.54
			.talk Marshal Gryan Stoutmantle##234
			..turnin The Defias Brotherhood (5)##142
		step //13
			goto Westfall,55.68,47.51
			.talk The Defias Traitor##467
			..accept The Defias Brotherhood (6)##155
		step //14
			.' Follow the Defias Traitor.
			goto Westfall,42.56,71.71
			.goal Escort The Defias Traitor to discover where VanCleef is hiding.|q 155/1
		step //15
			goto Westfall,56.32,47.54
			.talk Marshal Gryan Stoutmantle##234
			..turnin The Defias Brotherhood (6)##155
			..accept The Defias Brotherhood (7)##166
		step //16
			goto Westfall,56.7,47.5
			.talk Scout Riell##820
			..accept Red Silk Bandanas##214
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Quest Instance Guides\\Wailing Caverns (15)",[[
author danaton
startlevel 15
		step
			goto The Barrens,62.4,37.6
			.talk Mebok Mizzyrix##3446
			..accept Raptor Horns##865
		step
			goto The Barrens,45.5,13.9
			.from Sunscale Scytheclaw##3256
			.get 5 Intact Raptor Horn|q 865/1
			.' You can find more around (1)|at 59.7,8.3
			.' You can find more around (2)|at 61,31.58
		step
			goto The Barrens,62.4,37.6
			.talk Mebok Mizzyrix##3446
			..turnin Raptor Horns##865
			..accept Smart Drinks##1491
		step
			goto The Barrens,63.1,37.6
			.talk Crane Operator Bigglefuzz##3665
			..accept Trouble at the Docks##959
		step
			goto The Barrens,46,35.7
			.talk Ebru##5768
			..accept Deviate Eradication##1487
			.talk Nalpak##5767
			..accept Deviate Hides##1486
		step
			goto The Barrens,47.73,34.82
			.' Go To Instance!
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Quest Instance Guides\\Blackfathom Deeps (20)",[[
author danaton
startlevel 20
		step //1
			goto Ironforge,50.8,5.6
			.talk Gerrig Bonegrip##2786
			..accept Knowledge in the Deeps##971
		step //2
			goto Stormwind,36.2,67.6
			.talk Argos Nightwhisper##4984
			..accept The Corruption Abroad##3765
		step //3
			goto Darnassus,55.3,24.5
			.talk Argent Guard Manados##4784
			..accept Twilight Falls##1199
			.talk Dawnwatcher Shaedlass##4786
			..accept In Search of Thaelrid##1198
		step //3
			goto Darkshore,38.3,43.0
			.talk Gershala Nightwhisper##8997
			..turnin The Corruption Abroad##3765
			..accept Researching the Corruption##1275
		step //4
			goto Darkshore,31.1,95.9
			.' Go To Instance!
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Quest Instance Guides\\Razorfen Kraul (23)",[[
author danaton
startlevel 23
		step
			goto Stormwind,80.6,59.9
			.talk Wu Shen##5479
			..accept Yorus Barleybrew##1698
			only Warrior
		step
			.goto Redridge Mountains,26.6,44.7
			.talk Yorus Barleybrew##6166
			..turnin Yorus Barleybrew##1698
			..accept The Rethban Gauntlet##1699
			only Warrior
		step
			.goto Redridge Mountains,19.1,24.7
			.' Enter the Rethban Caverns, reach the first fork|q 1699/1
			only Warrior
		step
			.goto Redridge Mountains,26.6,44.7
			.talk Yorus Barleybrew##6166
			..turnin The Rethban Gauntlet##1699
			..accept The Shieldsmith##1702
			only Warrior
		step
			goto Stormwind,64.6,37.2
			.talk Furen Longbeard##5413
			..turnin The Shieldsmith##1702
			..accept Fire Hardened Mail##1701
			only Warrior
		step
			goto The Barrens,62.4,37.6
			.talk Mebok Mizzyrix##3446
			..accept Blueleaf Tubers##1221
		step
			goto Thousand Needles,30.7,24.3
			.' Interact with gameobject: Lonebrow's Journal
			.collect Henrig Lonebrow's Journal##5791|q 1100 |future
		step
			.use Henrig Lonebrow's Journal##5791
			..accept Lonebrow's Journal##1100
		step
			goto Feralas,89.6,46.6
			.talk Falfindel Waywarder##4048
			..turnin Lonebrow's Journal##1100
			..accept The Crone of the Kraul##1101
		step
			goto The Barrens,40.6,88.7
			.' Go To Instance!
			.talk Heralath Fallowbrook##4510
			..accept Mortality Wanes##1142
			.info To take this quest you must be level 25.
			.talk Willix the Importer##4508
			..accept Willix the Importer##1144
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Quest Instance Guides\\Gnomeregan (25)",[[
author danaton
startlevel 25
		step //1
			goto Darnassus,59.50,45.40
			.talk Mathiel##6142
			..accept Klockmorts Essentials##2925
		step //2
			goto Stonetalon Mountains,59.50,67.10
			.talk Gaxim Rustfizzle##4077
			..accept Castpipes Task##2931
		step //3
			goto Stormwind,51.10,48.40
			.talk Brother Sarno##7917
			..accept Tinkmaster Overspark##2923
		step //4
			goto Stormwind,62.60,34.10
			.talk Shoni##6579
			..accept Gyrodrillmatic Excavationators##2928
		step //5
			goto Ironforge,69.80,48.10
			.talk Master Mechanic Castpipe##7950
			..turnin Castpipes Task##2931
			..accept Data Rescue##2930
		step //6
			goto Ironforge,67.90,46.10
			.talk Klockmort Spannerspan##6169
			..turnin Klockmorts Essentials##2925
			..accept Essential Artificials##2924
		step //7
			goto Ironforge,68.80,49.00
			.talk High Tinker Mekkatorque##7937
			..accept The Grand Betrayal##2929
		step //8
			goto Ironforge,69.50,50.30
			.talk Tinkmaster Overspark##7944
			..turnin Tinkmaster Overspark##2923
			..accept Save Techbots Brain!##2922
		step //9
			goto Ironforge,69.18,50.57
			.talk Gnoarn##6569
			..accept The Day After##2927
		step //10
			goto Dun Morogh,45.90,49.40
			.talk Ozzie Togglevolt##1268
			..turnin The Day After##2927
			..accept Gnogain##2926
		step //11
			goto Dun Morogh,22.09,34.15
			.from Irradiated Invader##6213
			.' Use Leaden Collection Phial on a living Irradiated Invader|use Empty Leaden Collection Phial##9283
			.collect Full Leaden Collection Phial##9284|q 2926/1
		step //12
			goto Dun Morogh,21.09,31.52
			.from Caverndeep Looter##6209
			.collect White Punch Card##9279|q 2930 |future
		step //13
			goto Dun Morogh,19.79,31.95
			.from Techbot##6231
			.get Techbot's Memory Core##9277|q 2922/1
		step //14
			goto Dun Morogh,21.85,32.2
			.' Interact with gameobject: Matrix Punchograph 3005-A
			.info May appear in various locations on this platform.
			.collect Yellow Punch Card##9280|q 2930 |future
		step //15
			goto Dun Morogh,45.90,49.40
			.talk Ozzie Togglevolt##1268
			..turnin Gnogain##2926
			..accept The Only Cure is More Green Glow##2962
		step //16
			goto Dun Morogh,17.74,39.17
			.' Go To Instance!
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Quest Instance Guides\\The Stockade (25)",[[
author danaton
startlevel 25
		step
			goto Wetlands,49.67,18.25
			.talk Motley Garmason##1074
			..accept The Dark Iron War##303
		step
			goto Wetlands,62.2,28.3
			.kill 10 Dark Iron Dwarf##1051|q 303/1
			.kill 5 Dark Iron Tunneler##1053|q 303/2
			.kill 5 Dark Iron Saboteur##1052|q 303/3
			.kill 5 Dark Iron Demolitionist##1054|q 303/4
		step
			goto Wetlands,49.67,18.25
			.talk Motley Garmason##1074
			..turnin The Dark Iron War##303
			..accept The Fury Runs Deep##378
		step
			goto Redridge Mountains,26.25,46.58
			.talk Guard Berton##859
			..accept What Comes Around...##386
		step
			goto Duskwood,71.90,47.80
			.talk Councilman Millstipe##270
			..accept Crime and Punishment##377
		step
			goto Stormwind,75.88,61.90
			.talk Nikova Raskol##1721
			..accept The Color of Blood##388
		step
			goto Stormwind,51.50,69.30
			.talk Warden Thelwater##1719
			..accept Quell The Uprising##387
		step
			goto Stormwind,50.49,66.41
			.' Go To Instance!
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Quest Instance Guides\\Razorfen Downs (32)",[[
author danaton
startlevel 32
		step
			goto Stormwind,50.3,45.5
			.talk Archbishop Benedictus##1284
			..accept Bring the Light##3636
		step
			.goto The Barrens,49,94.9
			.talk Myriam Moonsinger##12866
			..accept A Host of Evil##6626
		step
			goto The Barrens,48.60,90.95
			.' Go To Instance!
			.talk Belnistrasz##8516
			..accept Scourge of the Downs##3523
			..turnin Scourge of the Downs##3523
			..accept Extinguishing the Idol##3525
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Quest Instance Guides\\Uldaman (35)",[[
author danaton
startlevel 35
		step
			goto Ironforge,74.70,11.80
			.talk Prospector Stormpike##1356
			..accept Ironband Wants You!##707
			..accept The Lost Dwarves##2398
		step
			goto Ironforge,74.21,9.41
			.talk Krom Stoutarm##6294
			..accept Reclaimed Treasures##1360
		step
			goto Loch Modan,66.00,65.4
			.talk Prospector Ironband##1344
			..turnin Ironband Wants You!##707
			..accept Find Agmond##738
		step
			goto Badlands,53.00,33.9
			.' Interact with gameobject: Crumpled Map
			.info Laying on the ground under a white canopy.
			..accept A Sign of Hope##720
		step
			goto Badlands,53.38,43.33
			.talk Prospector Ryedol##2910
			..turnin A Sign of Hope##720
			..accept A Sign of Hope##721
		step
			goto Badlands,50.90,62.30
			.talk Battered Dwarven Skeleton##991001
			..turnin Find Agmond##738
			..accept Murdaloc##739
		step
			goto Badlands,50.70,67.70
			.kill 1 Murdaloc##2945|q 739/1
			.kill 12 Stonevault Bonesnapper##2893|q 739/2
		step
			goto Badlands,51.20,76.60
			.talk Theldurin the Lost##2785
			..accept Solution to Doom##709
		step
			goto Badlands,42.50,52.90
			.talk Rigglefuzz##2817
			..accept Power Stones##2418	
		step
			goto Loch Modan,66.00,65.4
			.talk Prospector Ironband##1344
			..turnin Murdaloc##739
			..accept Agmonds Fate##704
		step
			goto Badlands,37.9,10.58
			.talk Hammertoe Grez##2909
			..turnin A Sign of Hope##721
			..accept Amulet of Secrets##722
		step 
			goto Badlands,39.23,18.53
			.collect 1 Tablet of Ryun'eh##4631|q 709/1
		step
			goto Badlands,35.55,23.45
			.collect 1 Krom Stoutarm's Treasure##8027|q 1360/1
		step
			goto Badlands,35.3,13.4
			.collect 4 Carved Stone Urn##4610|q 704/1
			.kill Shadowforge Dwarf|n
			.get 8 Dentrium Power Stone##8009|q 2418/1
			.get 8 An'Alleum Power Stone##8052|q 2418/2
		step
			goto Badlands,35.22,10.66
			.' Go To Uldaman Instance!
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Quest Instance Guides\\Zul'Farrak (40)",[[
author danaton
startlevel 40
		step //1
			goto Stormwind,49.49,85.85
			.talk Jennea Cannon##5497
			..accept Tabetha's Task##2861
		step //2
			goto The Hinterlands,9.8,44.5
			.talk Gryphon Master Talonaxe##5636
			..accept Witherbark Cages##2988
		step //3
			goto The Hinterlands,23.2,58.8
			.goal Click the First Witherbark Cage to check it|q 2988/1
			.goal the Second Witherbark Cage to check it|q 2988/2
		step //4
			goto The Hinterlands,32.1,57.3
			.goal Click the Third Witherbark Cage to check it|q 2988/3
		step //5
			goto The Hinterlands,9.8,44.5
			.talk Gryphon Master Talonaxe##5636
			..turnin Witherbark Cages##2988
			..accept The Altar of Zul##2989
		step //6
			goto The Hinterlands,48.3,67.6
			.goal Search the Altar of Zul|q 2989/1
			.info Run up the stairs of the temple towards this spot to Search the Altar of Zul. There are a bunch of mobs at the top, so run around at the top of the temple and once you complete the quest, run away as fast as you can.
		step //7
			goto The Hinterlands,9.8,44.5
			.talk Gryphon Master Talonaxe##5636
			..turnin The Altar of Zul##2989
			..accept Thadius Grimshade##2990
		step //8
			goto Blasted Lands,67,19.4
			.talk Thadius Grimshade##8022
			..turnin Thadius Grimshade##2990
			..accept Nekrum's Medallion##2991
		step //9
			goto Stranglethorn Vale,26.96,77.22
			.talk Krazek##773
			..accept Tran'rek##2864
		step //10
			goto Dustwallow Marsh,45.98,57.17
			.talk Tabetha##6546
			..turnin Tabetha's Task##2861
			..accept Tiara of the Deep##2846
		step //11
			goto Thousand Needles,78.16,77.14
			.talk Wizzle Brassbolts##4453
			..accept Gahz'rilla##2770
		step //12
			goto Tanaris,51.57,26.77
			.talk Tran'rek##7876
			..turnin Tran'rek##2864
			..accept Scarab Shells##2865
		step //13
			goto Tanaris,52.46,28.53
			.talk Chief Engineer Bilgewhizzle##7407
			..accept Divino-matic Rod##2768
		step //14
			goto Tanaris,51.42,28.74
			.talk Trenton Lighthammer##7804
			..accept Troll Temper##3042
		step //15
			goto Tanaris,66.98,22.38
			.talk Yeh'kinya##8579
			..accept Screecher Spirits##3520
		step //16
			goto Feralas,46.6,48.2
			.from Vale Screecher##5307, Rogue Vale Screecher##5308
			.' Use Yeh'kinya's Bramble on their corpses|use Yeh'kinya's Bramble##10699
			.' Collect 3 Screecher Spirits|q 3520/1
			.info Talk to their spirits that appear to collect their spirits.
		step //17
			goto Tanaris,66.98,22.38
			.talk Yeh'kinya##8579
			..turnin Screecher Spirits##3520
			..accept The Prophecy of Mosh'aru##3527
		step //18
			goto Tanaris,38.74,20.05
			.' Go To Zul'Farrak Instance!
]])
ZygorGuidesViewer:RegisterGuide("Ding80's Quest Instance Guides\\Maraudon (45)",[[
author danaton
description This guide contain all quest-chain for Maraudon Dungeon.
startlevel 45
		step //1
			goto Dustwallow Marsh,66.40,49.30
			.talk Archmage Tervosh##4967
			..accept Shadowshard Fragments##7070
		step //2
			goto Desolace,63.80,10.70
			.talk Keeper Marandis##13698
			..accept Corruption of Earth and Seed##7065
		step //3
			goto Desolace,68.50,8.90
			.talk Talendria##11715
			..accept Vyletongue Corruption##7041
		step //4
			goto Desolace,62.20,39.60
			.talk Willow##13656
			..accept Twisted Evils##7028
		step //5
			goto Desolace,50.50,86.70
			.talk Centaur Pariah##13717
			..accept The Pariah's Instructions##7067
		step //6
			goto Desolace,29.10,62.57|n
			.' Go To Entrance|goto Maraudon,38.43,57.97,0.5|noway |q 7065
			.info If done, skip manually.
		step //7
			goto Desolace,28.1,62.4
			.kill The Nameless Prophet##13718|n
			.collect Amulet of Spirits##17757|q 7067
			.info If done, skip manually.
		step //8
			goto Desolace,28.43,63.98|n
			.' Go To Down Tunnel|goto Desolace,28.43,63.98,0.5|noway |q 7065
			.info If done, skip manually.
		step //9
			goto Desolace,29.09,61.76|n
			.' Next to Left Tunnel|goto Desolace,29.09,61.76,0.5|noway |q 7067
			.info If done, skip manually.
		step //10
			goto Desolace,29.05,55.43|n
			.' Jump off carefully|goto Desolace,29.05,55.43,0.5|noway |q 7067
			.info If done, skip manually.
		step //11
			goto Desolace,29.7,60.5
			.' Use Amulet of Spirits on Spirit of Gelk|use Amulet of Spirits##17757|n
			.from Spirit of Gelk##12239
			.collect Gem of the Second Khan##17762|q 7067
			.info If done, skip manually.
		step //12
			goto Desolace,28.51,55.96
			.' Next to Bridge|goto Desolace,28.51,55.96,0.5|noway |q 7067
			.info If done, skip manually.
		step //13
			goto Desolace,27.28,56.93
			.' Next to other Bridge|goto Desolace,27.28,56.93,0.5|noway |q 7067
			.from Shadowshard Smasher##11778
			.get 10 Shadowshard Fragment##17756|q 7070/1
			.info If done, skip manually.
		step //14
			goto Desolace,29.58,57.50
			.' Next to Right Tunnel|goto Desolace,29.58,57.50,0.5|noway |q 7067
			.info If done, skip manually.
		step //15
			goto Desolace,29.7,60.5
			.' Jump Down
			.' Use Amulet of Spirits on Spirit of Kolk|use Amulet of Spirits##17757|n
			.from Spirit of Kolk##12240|n
			.collect Gem of the First Khan##17761|q 7067
			.info If done, skip manually.
		step //16
			goto Desolace,29.3,63.9
			.' Next to Orange Tunnel|goto Desolace,29.3,63.9,0.5|noway |q 7065
			.info If done, skip manually.
		step //17
			goto Desolace,32.1,64
			.talk Cavindra##13697
			..accept Legends of Maraudon##7044
		step //18
			goto Desolace,33.15,65.74
			.use Coated Cerulean Vial##17693
			.collect Filled Cerulean Vial##17696|q 7041/2
		step //19
			goto Desolace,34.6,64.07
			.' Next to Upper Tunnel|goto Desolace,34.6,64.07,0.5|noway |q 7065
			.info If done, skip manually.
		step //20
			goto Desolace,34.3,60.63
			.' Jump Down|goto Desolace,34.6,60.46,0.5|noway |q 7065
			.info If done, skip manually.
		step //21
			goto Desolace,35.8,60.4
			.' Use Amulet of Spirits on Spirit of Magra|use Amulet of Spirits##17757|n
			.from Spirit of Magra##12241|n
			.collect Gem of the Third Khan##17763|q 7067
			.info If done, skip manually.
		step //22
			goto Desolace,36,64.2
			.' Go To Maraudon (Orange Entrance)!
]])
ZygorGuidesViewer:RegisterGuide("Ding80's Quest Instance Guides\\Sunken Temple (47)",[[
author danaton
startlevel 47
		step //1
			.' First you need to complete quest chain on Zul'Farrak!
			.info Manually skip this step.
		step //2
			goto Stormwind,69.50,40.40
			.talk Brohann Caskbelly ##5384
			..accept In Search of The Temple##1448
		step //3
			goto Swamp of Sorrows,70.00,53.20
			.' Search for the Temple of Atal'Hakkar|goal Check|q 1448/1
		step //4
			goto Stormwind,69.50,40.40
			.talk Brohann Caskbelly ##5384
			..turnin In Search of The Temple##1448
			..accept To The Hinterlands##1449
		step //5
			goto The Hinterlands,11.80,46.75
			.talk Falstad Wildhammer##5635
			..turnin To The Hinterlands##1449
			..accept Gryphon Master Talonaxe##1450
		step //6
			goto The Hinterlands,09.75,44.47
			.talk Gryphon Master Talonaxe##5636
			..turnin Gryphon Master Talonaxe##1450
			..accept Rhapsody Shindigger##1451
		step //7
			goto The Hinterlands,27.00,48.50
			.talk Rhapsody Shindigger##5634
			..turnin Rhapsody Shindigger##1451
			..accept Rhapsody's Kalimdor Kocktail##1452
		step //8
			goto Feralas,58.27,56.09
			.from Grizzled Ironfur Bear##5272, Ironfur Bear##5268, Ironfur Patriarch##5274
			.get 3 Ironfur Liver##6258|q 1452/2
			.from Groddoc Ape##5260, Groddoc Thunderer##5262
			.get 3 Groddoc Liver##6259|q 1452/3
			.' You can find more around|at 58.15,58.50
		step //9
			goto Feralas,31.90,45.60
			.talk Angelas Moonbreeze##7900
			..accept The Sunken Temple##3445
		step //10
			goto Un'Goro Crater,42.9,9.6
			.talk Muigin##9119
			..accept Muigin and Larion##4141
		step //11
			goto Un'Goro Crater,67.3,32.6
			.from Bloodpetal Lasher##6509, Bloodpetal Flayer##6510, Bloodpetal Thresher##6511, Bloodpetal Trapper##6512
			.get 15 Bloodpetal##11316|q 4141/1
		step //12
			goto Un'Goro Crater,42.9,9.6
			.talk Muigin##9119
			..turnin Muigin and Larion##4141
			..accept A Visit to Gregan##4142
		step //13
			goto Tanaris,45.20,37.93
			.from Roc##5428, Fire Roc##5429, Searing Roc##5430
			.get 3 Roc Gizzard##6257|q 1452/1
		step //14
			goto Tanaris,52.70,46.00
			.talk Marvon Rivetseeker##7771
			..turnin The Sunken Temple##3445
			..accept The Stone Circle##3444
		step //15
			goto Tanaris,66.98,22.38
			.talk Yeh'kinya##8579
			..turnin The Prophecy of Mosh'aru##3527
			.' This quest is from Zul'Farrak chain
			.info Check condition
			..accept The Ancient Egg##4787
		step //16
			goto Feralas,45.1,25.6
			.talk Gregan Brewspewer##7775
			..turnin A Visit to Gregan##4142
			..accept Haze of Evil##4143
		step //17
			goto The Barrens,62.5,38.5
			.collect Stone Circle##10556|q 3444/1
			.info It's a small wooden chest to the right of the doorway to a small house.
		step //18
			goto The Hinterlands,27.00,48.50
			.talk Rhapsody Shindigger##5634
			..turnin Rhapsody's Kalimdor Kocktail##1452
			.' Wait Rhapsod Drink Event.
			..accept Rhapsody's Tale##1469
		step //19
			goto The Hinterlands,33.8,75.2
			.talk Atal'ai Exile##5598
			..accept Jammal'an the Prophet##1446
		step //20
			goto The Hinterlands,57.56,86.76
			.collect Ancient Egg##12402|q 4787/1
			.info Inside the cave.
		step //21
			goto Stormwind,69.50,40.40
			.talk Brohann Caskbelly ##5384
			..turnin Rhapsody's Tale##1469
			..accept Into The Temple of Atal'Hakkar##1475
		step //22
			goto Tanaris,66.98,22.38
			.talk Yeh'kinya##8579
			..turnin The Ancient Egg##4787
			..accept The God Hakkar##3528
		step //23
			goto Tanaris,52.70,46.00
			.talk Marvon Rivetseeker##7771
			..turnin The Stone Circle##3444
			..accept Into the Depths##3446
			..accept Secret of the Circle##3447
		step //24
			.' Go To Instance!
]])
ZygorGuidesViewer:RegisterGuide("Ding80's Quest Instance Guides\\Blackrock Depth (50)",[[
author danaton
startlevel 50
		step //1
			.' Recommended start 52 level.
			goto Tanaris,67.00,24.00
			.talk Yorba Screwspigot##9706
			..accept Yuka Screwspigot##4324
		step //2
			goto Blasted Lands,63.60,20.60
			.talk Enohar Thunderbrew##9540
			..accept Ragnar Thunderbrew##4128
		step //3
			goto Dun Morogh,46.80,52.40
			.talk Ragnar Thunderbrew##1267
			..turnin Ragnar Thunderbrew##4128
			..accept Hurley Blackbreath##4126
		step //4
			goto Ironforge,38.40,55.30
			.talk Royal Historian Archesonus##8879
			..accept The Smoldering Ruins of Thaurissan (1)##3702
		step //5
			goto Ironforge,38.40,55.30
			.talk Royal Historian Archesonus##8879
			.goal Listen to Royal Historian Archesonus recant the history of Thaurissan|q 3702/1
		step //6
			goto Ironforge,38.40,55.30
			.talk Royal Historian Archesonus##8879
			..turnin The Smoldering Ruins of Thaurissan (1)##3702
			..accept The Smoldering Ruins of Thaurissan (2)##3701
		step //7
			goto Burning Steppes,84.60,68.10
			.talk Oralius##9177
			..accept The Good Stuff##4286
		step //8
			goto Burning Steppes,85.40,70.20
			.talk Jalinda Sprig##9561
			..accept Overmaster Pyron##4262
		step //9
			goto Burning Steppes,64.1,41.8
			.' Click the Thaurissan Relics
			.info They look like little white stone statues on the ground around this area.
			.' Gather Information from 12 Thaurissan Relics|goal 12 Information Recovered|q 3701/1
		step //10
			goto Burning Steppes,65.30,24.20
			.talk Maxwort Uberglint##9536
			..accept The Heart of the Mountain##4123
		step //11
			goto Burning Steppes,66.10,21.90
			.talk Yuka Screwspigot##9544
			..turnin Yuka Screwspigot##4324
			..accept Ribbly Screwspigot##4136
		step //12
			goto Burning Steppes,21.99,11.98
			.kill Overmaster Pyron##9026|q 4262/1
			.' Pyron standing at the entrance to Blackrock Depth.
		step //13
			goto Searing Gorge,37.94,30.84
			.talk Lanie Reed##2941
			.fpath Thorium Point, Searing Gorge
		step //14
			goto Searing Gorge,39.1,39
			.talk Kalaran Windblade##8479
			..accept Divine Retribution##3441
			.' Listen to his story.
			..turnin Divine Retribution##3441
			..accept The Flawless Flame##3442
		step //15
			goto Searing Gorge,30.8,72.8
			.from Tempered War Golem##5855, Heavy War Golem##5854
			.get 4 Golem Oil##10511|q 3442/2
			.from Blazing Elemental##5850, Inferno Elemental##5852, Magma Elemental##5855
			.get 4 Heart of Flame##10509|q 3442/1
		step //16
			goto Searing Gorge,39,38.9
			.talk Kalaran Windblade##8479
			..turnin The Flawless Flame##3442
			..accept Forging the Shaft##3443
		step //17
			goto Searing Gorge,42.4,47.1
			.from Dark Iron Steamsmith##5840, Dark Iron Slaver##5844, Dark Iron Taskmaster##5846
			.get 8 Thorium Plated Dagger##10551|q 3443/1
		step //18
			goto Searing Gorge,39,38.9
			.talk Kalaran Windblade##8479
			..turnin Forging the Shaft##3443
			..accept The Flame's Casing##3452
		step //19
			goto Searing Gorge,29.1,25.9
			.from Twilight Dark Shaman##5860, Twilight Fire Guard##5861, Twilight Geomancer##5862, Twilight Idolater##8419
			.get Symbol of Ragnaros##10552|q 3452/1
		step //20
			goto Searing Gorge,39,38.9
			.talk Kalaran Windblade##8479
			..turnin The Flame's Casing##3452
			..accept The Torch of Retribution (1)##3453
			..turnin The Torch of Retribution (1)##3453
			..accept The Torch of Retribution (2)##3454
			.' Click the green glowing floating Torch of Retribution.
			..turnin The Torch of Retribution (2)##3454
			..accept Squire Maltrake##3462
			.talk Squire Maltrake##8509
			..turnin Squire Maltrake##3462
			..accept Set Them Ablaze!##3463
		step //21
			goto Searing Gorge,33.3,54.5
			.' Set the Northern Tower Ablaze|goal Northern Tower Ablaze|q 3463/4
			.info At the top of the tower, click the little metal blazer on the ground.
		step //22
			goto Searing Gorge,35.7,60.7
			.' Set the Western Tower Ablaze|goal Western Tower Ablaze|q 3463/1
			.info At the top of the tower, click the little metal blazer on the ground.
		step //23
			goto Searing Gorge,44,60.9
			.' Set the Southern Tower Ablaze|goal Southern Tower Ablaze|q 3463/2
			.info At the top of the tower, click the little metal blazer on the ground.
		step //24
			goto Searing Gorge,50.1,54.7
			.' Set the Eastern Tower Ablaze|goal Eastern Tower Ablaze|q 3463/3
			.info At the top of the tower, click the little metal blazer on the ground.
		step //25
			goto Searing Gorge,39.1,39
			.talk Squire Maltrake##8509
			..turnin Set Them Ablaze!##3463
			.' Click the small grey chest on the ground.
			..accept Trinkets...##3481
			.' Click the chest again.
			..turnin Trinkets...##3481
			.' Open the Hoard of the Black Dragonflight in your bags|use Hoard of the Black Dragonflight##10569
			.' Make sure to save the Black Dragonflight Molt|collect Black Dragonflight Molt##10575|q 4022/1 |future
		step //26
			goto Burning Steppes,95.1,31.6
			.talk Cyrus Therepentous##9459
			..accept A Taste of Flame##4022
			.' Present proof of your deeds.
			..turnin A Taste of Flame##4022
			..accept A Taste of Flame##4024
		step //27
			goto Burning Steppes,85.40,70.20
			.talk Jalinda Sprig##9561
			..turnin Overmaster Pyron##4262
			..accept Incendius!##4263
		step //28
			goto Ironforge,38.40,55.30
			.talk Royal Historian Archesonus##8879
			..turnin The Smoldering Ruins of Thaurissan (2)##3701
		step //29
			goto Ironforge,39.10,56.30
			.talk King Magni Bronzebeard ##2784
			..accept Kharan Mighthammer##4341
		step //30
			goto Burning Steppes,28.19,24.47
			.' Die in lava! Necessary step!
			.info If done, skip manually.
		step //31
			goto Burning Steppes,29.0,28.9
			.' Speak with NPC in ghost form.
			.talk Franclorn Forgewright##8888
			..accept Dark Iron Legacy##3801
			..turnin Dark Iron Legacy##3801
			..accept Dark Iron Legacy##3802
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Quest Instance Guides\\Stratholme (55)",[[
author danaton
startlevel 55
		step //1
			goto Eastern Plaguelands,4.7,38.4
			.talk Tirion Fordring##1855
			..accept Demon Dogs##5542
			..accept Blood Tinged Skies##5543
			..accept Carrion Grubbage##5544
			.info Required for full completion.
			.info Can be skipped for a short route.
		step //2
			goto Eastern Plaguelands,24.9,63.6
			.kill 20 Plaguehound Runt##8596|q 5542/1
			.kill 30 Plaguebat##8600|q 5543/1
			.from Carrion Grub##8603, Carrion Devourer##8605
			.get 15 Slab of Carrion Worm Meat##13853|q 5544/1
			.info Required for full completion.
			.info Can be skipped for a short route.
		step //3
			goto Eastern Plaguelands,52.5,49.1
			.kill 5 Plaguehound##8597|q 5542/2
			.info Required for full completion.
			.info Can be skipped for a short route.
		step //4
			goto Eastern Plaguelands,44.4,35.5
			.kill 5 Frenzied Plaguehound##8598|q 5542/3
			.info Required for full completion.
			.info Can be skipped for a short route.
		step //5
			goto Eastern Plaguelands,4.7,38.4
			.talk Tirion Fordring##1855
			..turnin Demon Dogs##5542
			..turnin Blood Tinged Skies##5543
			..turnin Carrion Grubbage##5544
			..accept Redemption##5742
			.goal Listen to what Tirion Fordring has to say|q 5742
			..turnin Redemption##5742
			..accept Of Forgotten Memories##5781
			.info Required for full completion.
			.info Can be skipped for a short route.
		step //6
			goto Eastern Plaguelands,24.7,79.7
			.' Interact with Loose Dirt Mound.
			.from Mercutio Filthgorger##11886
			.get Taelan's Hammer##14613|q 5781/1
			.info Required for full completion.
			.info Can be skipped for a short route.
		step //7
			goto Eastern Plaguelands,4.7,38.4
			.talk Tirion Fordring##1855
			..turnin Of Forgotten Memories##5781
			..accept Of Lost Honor##5845
			.info Required for full completion.
			.info Can be skipped for a short route.
		step //8
			goto Eastern Plaguelands,66.2,28.9
			.collect 1 Symbol of Lost Honor##14625|q 5845/1
			.info Underwater.
			.info Required for full completion.
			.info Can be skipped for a short route.
		step //9
			goto Eastern Plaguelands,4.7,38.4
			.talk Tirion Fordring##1855
			..turnin Of Lost Honor##5845
			..accept Of Love and Family (1)##5846
			.info Required for full completion.
			.info Can be skipped for a short route.
		step //10
			goto Western Plaguelands,65.8,75.4
			.talk Artist Renfray##11936
			..turnin Of Love and Family (1)##5846
			..accept Of Love and Family (2)##5848
			.info Required for full completion.
			.info Can be skipped for a short route.
		step //11
			goto Eastern Plaguelands,75.63,53.89
			.talk Duke Nicholas Zverenhoff##11039
			..accept The Archivist##5251
		step //12
			goto Eastern Plaguelands,75.70,53.72
			.talk Betina Bigglezink##11035
			..accept The Flesh Does Not Lie##5212
			.info Chain: 1/2 // del this string
		step //13
			goto Eastern Plaguelands,75.7,52.6
			.talk Rohan the Assassin##16131
			..accept Bonescythe Digs##9126
		step //14
			goto Eastern Plaguelands,75.92,51.99
			.talk Leonid Barthalomew the Revered##11036
			..accept Houses of the Holy##5243
		step //15
			goto Eastern Plaguelands,74.87,52.12
			.talk Smokey LaRue##11033
			..accept The Great Fras Siabi##5214
		step //16
			goto Eastern Plaguelands,73.83,57.90
			.talk Caretaker Alen##11038
			..accept The Restless Souls##5281
		step //17
			goto Eastern Plaguelands,11.34,28.83
			.talk Egan##11140
			..turnin The Restless Souls##5281
			..accept The Restless Souls##5282
		step //18
			goto Eastern Plaguelands,27.1,12.8
			.' Go To Instance!
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Quest Instance Guides\\Blackrock Spire (57)",[[
author danaton
startlevel 57
		step
			.' First you need to complete quest chain on Sunken Temple!
			.info Manually skip this step.
		step
			goto Burning Steppes,65.2,23.9
			.talk Tinkee Steamboil##10267
			..accept Broodling Essence##4726
		step
			goto Burning Steppes,90.4,55.9
			.' Use your Draco-Incarcinatrix 900 on Black Broodlings and kill them|use Draco-Incarcinatrix 900##12284
			.' Click the red crystals that float over their corpses.
			.get 8 Broodling Essence##12283|q 4726/1
		step
			goto Burning Steppes,65.2,23.9
			.talk Tinkee Steamboil##10267
			..turnin Broodling Essence##4726
			..accept Felnok Steelspring##4808
		step
			goto Winterspring,61.60,38.50
			.talk Felnok Steelspring##10468
			..turnin Felnok Steelspring##4808
			..accept Chillwind Horns##4809
		step
			goto Winterspring,57.45,41
			.from Chillwind Chimaera##7448
			.get 8 Uncracked Chillwind Horn##12444|q 4809/1
		step
			goto Winterspring,61.63,38.61
			.talk Felnok Steelspring##10468
			..turnin Chillwind Horns##4809
			..accept Return to Tinkee##4810
		step
			goto Burning Steppes,65.2,23.9
			.talk Tinkee Steamboil##10267
			..turnin Return to Tinkee##4810
		step
			goto Winterspring,61.63,38.61
			.talk Felnok Steelspring##10468
			..accept Tinkee Steamboil##4907
		step
			goto Winterspring,63.60,73.80
			.talk Lorax##10918
			..accept Lorax's Tale##5126
			only if skill('Blacksmithing')>0
		step
			.goal Listen to Lorax's Tale|q 5126/1
			only if skill('Blacksmithing')>0
		step
			goto Winterspring,63.60,73.80
			.talk Lorax##10918
			..turnin Lorax's Tale##5126
			..accept The Demon Forge##5127
			only if skill('Blacksmithing')>0
		step
			goto Stormwind City,76.90,47.80
			.talk Count Remington Ridgewell##2285
			..accept Mayara Brightwing##4766
		step
			goto Burning Steppes,84.8,69.1
			.talk Mayara Brightwing##9565
			..turnin Mayara Brightwing##4766
			..accept Doomrigger's Clasp##4764
		step
			goto Burning Steppes,85.50,69.30
			.talk Helendis Riverhorn##9562
			..accept Put Her Down##4701
		step
			goto Burning Steppes,65.2,24
			.talk Tinkee Steamboil##10267
			..turnin Tinkee Steamboil##4907
			..accept Egg Freezing##4734
		step
			goto Burning Steppes,65,23.8
			.talk Ragged John##9563
			..accept Mother's Milk##4866
		step
			goto Burning Steppes,65.9,21.9
			.talk Kibler##10260
			..accept Kibler's Exotic Pets##4729
			..accept En-Ay-Es-Tee-Why##4862
		step
			goto Burning Steppes,32.85,25.3
			.' Go To Instance!
			.info Good luck!
			.info Next step contains hints.
		step
			.goal Test the Eggscilliscope Prototype|q 4734/1
			.info Left Wing: First Step.
		step
			.collect Doomrigger's Clasp##12352|q 4764/1
			.info Left Wing: Second Step.
		step
			.goal Soul Stained Pike|q 5127/1
			.collect Unforged Rune Covered Breastplate##12806|q 5127/2
			.info Left Wing: Third Step.
		step
			.talk Warosh##10799
			..accept Urok Doomhowl##4867
			.info Right Wing: First Step.
		step
			.collect Roughshod Pike##12533|q 4867 |future
			.info Right Wing: Second Step.
		step
			.collect Omokk's Head##12534|q 4867 |future
			.info Right Wing: Third Step.
		step
			.talk Bijou##10257
			..accept Bijou's Belongings##5001
			.info Right Wing: Four Step.
		step
			.collect Bijou's Belongings##12345|q 5001/1
			.info Appears randomly.
			.info Right Wing: Five Step.
		step
			.collect 15 Spire Spider Egg##12530|q 4862/1
			.info Right Wing: Six Step.
		step
			.use Omokk's Head##12534
			.from Urok Doomhowl##10584
			.get Warosh's Mojo##12712|q 4867/1
			.info Right Wing: Seven Step.
		step
			.kill Halycon##10220|q 4701/1
			.goal Caged Worg Pup|q 4729/1
			.info Right Wing: Eight Step.
		step
			.kill Overlord Wyrmthalak##9568|n
			.collect General Drakkisath's Command##12780|q 5089 |future
			..accept General Drakkisath's Command##5089|use General Drakkisath's Command##12780
			.info Right Wing: Nine Step.
		step
			.talk Bijou##10257
			..turnin Bijou's Belongings##5001
			..accept Message to Maxwell##5002
			.info Right Wing: Ten Step.
		step
			.talk Warosh##10799
			..turnin Urok Doomhowl##4867
			.info Right Wing: Eleven Step.
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Quest Instance Guides\\Scholomance (60) - [Skeleton Key]",[[
author danaton
startlevel 60
		step
			goto Ironforge,24.05,74.72
			.talk Auctioneer Redmuse##8720
			.buy 2 Thorium Bar##12359|q 5801 |future
			.info Don't sell it by accident! You'll need it later!
		step
			goto Ironforge,29.4,22.1
			.talk Courier Hammerfall##10877
			..accept A Call to Arms: The Plaguelands!##5090
		step
			goto Western Plaguelands,42.7,84
			.talk Commander Ashlam Valorfist##10838
			..turnin A Call to Arms: The Plaguelands!##5090
			..accept Clear the Way##5092
		step
			goto Western Plaguelands,48.2,81.2
			.kill 10 Skeletal Flayer##1783|q 5092/1
			.kill 10 Slavering Ghoul##1791|q 5092/2
		step
			goto Western Plaguelands,42.7,84
			.talk Commander Ashlam Valorfist##10838
			..turnin Clear the Way##5092
			..accept All Along the Watchtowers##5097
		step
			goto Western Plaguelands,49.3,73.2|n
			.' Enter the Ruins of Andorhal from this bridge|goto Western Plaguelands,49.3,73.2,0.5|noway|q 5097
		step
			goto Western Plaguelands,46.6,71.1
			.' Use your Beacon Torch near the tower entrance|use Beacon Torch##12815
			.goal Tower Four marked|q 5097/4
		step
			goto Western Plaguelands,40,71.6
			.' Use your Beacon Torch near the tower entrance|use Beacon Torch##12815
			.goal Tower One marked|q 5097/1
		step
			goto Western Plaguelands,42.3,66.3
			.' Use your Beacon Torch near the tower entrance|use Beacon Torch##12815
			.goal Tower Two marked|q 5097/2
		step
			goto Western Plaguelands,44.3,63.3
			.' Use your Beacon Torch near the tower entrance|use Beacon Torch##12815
			.goal Tower Three marked|q 5097/3
		step
			goto Western Plaguelands,42.7,84
			.talk Commander Ashlam Valorfist##10838
			..turnin All Along the Watchtowers##5097
			..accept Alas, Andorhal##211
			..accept Scholomance##5533
		step
			goto Western Plaguelands,42.7,83.8
			.talk Alchemist Arbington##11056
			..turnin Scholomance##5533
			..accept Skeletal Fragments##5537
		step
			goto Western Plaguelands,45.3,69.2
			.from Araj the Summoner##1852
			.get Araj's Phylactery Shard##17114|q 211/1
		step
			goto Western Plaguelands,36.85,57.4
			.from Skeletal Flayer##1783, Skeletal Sorcerer##1784
			.get 15 Skeletal Fragments##14619|q 5537/1
		step
			goto Western Plaguelands,42.7,84
			.talk Alchemist Arbington##11056
			..turnin Skeletal Fragments##5537
			..accept Mold Rhymes With...##5538
		step
			goto Western Plaguelands,42.7,84
			.talk Commander Ashlam Valorfist##10838
			..turnin Alas, Andorhal##211
		step
			goto Tanaris,51.5,28.8
			.talk Krinkle Goodsteel##5411
			..turnin Mold Rhymes With...##5538
			..accept Fire Plume Forged##5801
		step
			goto Un'Goro Crater,52.76,42.3|n
			.' Start lifting up here|goto 52.85,44.73,0.5|noway|q 5801
		step
			goto Un'Goro Crater,48.6,48.3
			.use Skeleton Key Mold##14644
			.collect Unfinished Skeleton Key##14645|q 5801/1
		step
			goto Western Plaguelands,42.7,84
			.talk Alchemist Arbington##11056
			..turnin Fire Plume Forged##5801
			..accept Araj's Scarab##5803
		step
			goto Western Plaguelands,45.3,69.2
			.from Araj the Summoner##1852
			.get Araj's Scarab##14610|q 5803/1
		step
			goto Western Plaguelands,42.7,84
			.talk Alchemist Arbington##11056
			..turnin Araj's Scarab##5803
			..accept The Key to Scholomance##5505|instant
		step
			.' Excellent! You have the Skeleton Key!
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Quest Instance Guides\\[Empty] Scholomance (60)",[[
	startlevel 60
	step //1
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Quest Instance Guides\\Hellfire Citadel: Hellfire Ramparts (59)",[[
author danaton
startlevel 59
		step
			'. Hellfire Ramparts first dungeon in the Hellfire Citadel questline chain.
			.info If done, skip manually.
		step
			goto Hellfire Peninsula,56.6,66.7
			.talk Force Commander Danath Trollbane##16819
			..accept The Legion Reborn##10141
			..accept Know your Enemy##10160
		step
			goto Hellfire Peninsula,61.7,60.9
			.talk Sergeant Altumus##19309
			..turnin The Legion Reborn##10141
			..accept The Path of Anguish##10142
		step
			goto Hellfire Peninsula,65.8,54.1
			.kill 1 Dreadcaller##19434|q 10142/1
			.kill 4 Flamewaker Imp##19136|q 10142/2
			.kill 6 Infernal Warbringer##19261|q 10142/3
		step
			goto Hellfire Peninsula,61.7,60.8
			.talk Sergeant Altumus##19309
			..turnin The Path of Anguish##10142
			..accept Expedition Point##10143
		step
			goto Hellfire Peninsula,50.9,60.2
			.talk Lieutenant Amadi##16820
			..turnin Know your Enemy##10160
			..accept Fel Orc Scavengers##10482
		step
			goto Hellfire Peninsula,60.4,52.1
			.' Slain 20 Bonechewer Orc|q 10482/1
		step
			goto Hellfire Peninsula,50.9,60.2
			.talk Lieutenant Amadi##16820
			..turnin Fel Orc Scavengers##10482
			..accept Ill Omens##10483
		step
			goto Hellfire Peninsula,65.8,67.2
			.from Bleeding Hollow Grunt##16871, Bleeding Hollow Dark Shaman##16873, Bleeding Hollow Peon##16907
			.get Cursed Talisman##30157|q 10483/1
		step
			goto Hellfire Peninsula,71,63.4
			.talk Corporal Ironridge##21133
			..turnin Ill Omens##10483
		step
			goto Hellfire Peninsula,71.3,62.8
			.talk Forward Commander Kingston##19310
			..turnin Expedition Point##10143
		step
			goto Hellfire Peninsula,56.7,66.3
			.talk Lieutenant Chadwick##17557
			..accept Weaken the Ramparts##9575
		step
			goto Hellfire Peninsula,47.7,53.54
			.' Go To Instance!
			.info Good luck!
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Quest Instance Guides\\Hellfire Citadel: The Blood Furnace (59)",[[
author danaton
startlevel 59
		step
			.' You must complete Hellfire Ramparts questline before proceeding with this chain.
			.' Next line will check the condition
			.info Manually skip this step.
			..turnin Weaken the Ramparts##9575
		step
			goto Hellfire Peninsula,56.4,66.7
			.talk Gunny##17479
			..accept Heart of Rage##9607
		step
			goto Hellfire Peninsula,46.05,51.76
			.' Go To Instance!
			.info Good luck!
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Quest Instance Guides\\Hellfire Citadel: The Shattered Halls (67)",[[
author danaton
startlevel 67
		step //1
			.' You must complete Hellfire Ramparts and The Blood Furnace questline before proceeding with this chain.
			.' Next line will check the condition|tip Manually skip this step
			..turnin Weaken the Ramparts##9575
			..turnin Heart of Rage##9607
		step //2
			goto Hellfire Peninsula,56.6,66.7
			.talk Force Commander Danath Trollbane##16819
			..accept Turning the Tide##9492
		step //3
			goto Hellfire Peninsula,56.8,62.7
			.talk Field Commander Romus##16830
			..accept Pride of the Fel Horde##9493
		step //4
			.' David Wayne has one more quest, but we will skip it.
			.info Manually skip this step
		step //5
			goto Hellfire Peninsula,48.0,51.9
			.' Go To Instance!|tip Good luck!
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Quest Instance Guides\\Heroic Instance Keys\\Hellfire Citadel (70)",[[
author danaton
startlevel 70
		step //1
			.' Need rep|tip Manually skip this step
		step //2
			goto Hellfire Peninsula,56.7,62.6
			.' Need friendly rep from Honor Hold |rep Honor Hold,Friendly
			.talk Logistics Officer Ulrike##17657
			.buy Flamewrought Key##30622
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Quest Instance Guides\\Heroic Instance Keys\\Auchindoun (70)",[[
author danaton
startlevel 70
		step //1
			.' Need rep|tip Manually skip this step
		step //2
			goto Shattrath City,62.0,68.8
			//.' Need honored rep from Lower City |rep Lower City,Honored
			.talk Nakodu##21655
			.buy Auchenai Key##30633
]])

ZygorGuidesViewer.AllianceInstalled=true