local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
--TRIAL if ZygorGuidesViewer.AllianceInstalled then return end
if UnitFactionGroup("player")~="Alliance" then return end

ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Human (1-13)",[[
	author support@zygorguides.com
	defaultfor Human
	next Zygor's Alliance Leveling Guides\\Main Guide (13-20)
	startlevel 1
	step //1
		goto Elwynn Forest,48.1,43.6
		.talk Deputy Willem##823
		..accept A Threat Within##783
	step //2
		goto 48.9,41.6
		.talk Marshal McBride##197
		..turnin A Threat Within##783
		..accept Kobold Camp Cleanup##7
	step //3
		goto 48.1,43.6
		.talk Deputy Willem##823
		..accept Eagan Peltskinner##5261
	step //4
		goto 48.9,40.2
		.talk Eagan Peltskinner##196
		..turnin Eagan Peltskinner##5261
		..accept Wolves Across the Border##33
	step //5
		goto 47.4,39.7
		.from Diseased Young Wolf##299+
		.get 8 Diseased Wolf Pelt|q 33/1
	step //6
		ding 2
	step //7
		goto 47.9,37.1
		.kill 8 Kobold Vermin|q 7/1
	step //8
		goto 48.9,40.2
		.talk Eagan Peltskinner##196
		..turnin Wolves Across the Border##33
	step //9
		goto 48.9,41.6
		.talk Marshal McBride##197
		..turnin Kobold Camp Cleanup##7
		..accept Investigate Echo Ridge##15
		..accept Glyphic Letter##3104
		only Human Mage
	step //10
		goto 48.9,41.6
		.talk Marshal McBride##197
		..turnin Kobold Camp Cleanup##7
		..accept Investigate Echo Ridge##15
		..accept Simple Letter##3100
		only Human Warrior
	step //11
		goto 48.9,41.6
		.talk Marshal McBride##197
		..turnin Kobold Camp Cleanup##7
		..accept Investigate Echo Ridge##15
		..accept Tainted Letter##3105
		only Human Warlock
	step //12
		goto 48.9,41.6
		.talk Marshal McBride##197
		..turnin Kobold Camp Cleanup##7
		..accept Investigate Echo Ridge##15
		..accept Encrypted Letter##3102
		only Human Rogue
	step //13
		goto 48.9,41.6
		.talk Marshal McBride##197
		..turnin Kobold Camp Cleanup##7
		..accept Investigate Echo Ridge##15
		..accept Hallowed Letter##3103
		only Human Priest
	step //14
		goto 48.9,41.6
		.talk Marshal McBride##197
		..turnin Kobold Camp Cleanup##7
		..accept Investigate Echo Ridge##15
		..accept Consecrated Letter##3101
		only Human Paladin
	step //15
		goto 49.7,39.4
		.talk Khelden Bremen##198
		..turnin Glyphic Letter##3104
		only Human Mage
	step //16
		goto 50.2,42.3
		.talk Llane Beshere##911
		..turnin Simple Letter##3100
		only Human Warrior
	step //17
		goto 49.8,39.5
		.talk Priestess Anetta##375
		..turnin Hallowed Letter##3103
		only Human Priest
	step //18
		goto 50.4,42.1
		.talk Brother Sammuel##925
		..turnin Consecrated Letter##3101
		only Human Paladin
	step //19
		goto 48.1,43.6
		.talk Deputy Willem##823
		..accept Brotherhood of Thieves##18
	step //20
		goto 49.9,42.6
		.talk Drusilla La Salle##459
		..turnin Tainted Letter##3105
		only Human Warlock
	step //21
		goto 50.3,39.9
		.talk Jorik Kerridan##915
		..turnin Encrypted Letter##3102
		only Human Rogue
	step //22
		ding 3
	step //23
		goto 51.3,37.0
		.kill 10 Kobold Workers|q 15/1
	step //24
		goto 54.3,41
		.from Defias Thug##38+
		.get 12 Red Burlap Bandana|q 18/1
	step //25
		goto 48.1,43.6
		.talk Deputy Willem##823
		..turnin Brotherhood of Thieves##18
		..accept Milly Osworth##3903
		..accept Bounty on Garrick Padfoot##6
	step //26
		ding 4
	step //27
		goto 48.9,41.6
		.talk Marshal McBride##197
		..turnin Investigate Echo Ridge##15
		..accept Skirmish at Echo Ridge##21
	step //28
		goto 50.7,39.3
		.talk Milly Osworth##9296
		..turnin Milly Osworth##3903
		..accept Milly's Harvest##3904
	step //29
		goto 53.6,47.3
		.' Click Milly's Harvest barrels around the vineyard|tip Milly's Harvest look like barrels of grapes.
		.get 8 Milly's Harvest|q 3904/1
	step //30
		goto 57.5,48.3
		.from Garrick Padfoot##103
		.get Garrick's Head|q 6/1
	step //31
		goto 50.7,39.3
		.talk Milly Osworth##9296
		..turnin Milly's Harvest##3904
		..accept Grape Manifest##3905
	step //32
		goto 48.1,43.6
		.talk Deputy Willem##823
		..turnin Bounty on Garrick Padfoot##6
	step //33
		'Go into the church and up the spiral staircase to the very top|goto Elwynn Forest,49.3,41.0,0.1|noway|c
	step //34
		goto 49.5,41.6
		.talk Brother Neals##952
		..turnin Grape Manifest##3905
	step //35
		goto 47.7,32
		.kill 12 Kobold Laborer##80|q 21/1
	step //36
		'Hearth to Northshire Valley|goto Elwynn Forest,48.1,43.7,1|use Hearthstone##6948|noway|c
	step //37
		goto 48.9,41.6
		.talk Marshal McBride##197
		..turnin Skirmish at Echo Ridge##21
		..accept Report to Goldshire##54
	step //38
		ding 5
	step //39
		goto 45.6,47.7
		.talk Falkhaan Isenstrider##6774
		..accept Rest and Relaxation##2158
	step //40
		goto 42.1,65.9
		.talk Marshal Dughan##240
		..turnin Report to Goldshire##54
		..accept The Fargodeep Mine##62
	step //41
		goto 43.3,65.7
		.talk William Pestle##253
		..accept Kobold Candles##60
	step //42
		goto 43.8,65.8
		.talk Innkeeper Farley##295
		..turnin Rest and Relaxation##2158
	step //43
		home Goldshire
	step //44
		goto 42.1,67.3
		.talk Remy "Two Times"##241
		..accept Gold Dust Exchange##47
	step //45
		goto 39,82.3
		.from Kobold Tunneler##475+, Kobold Miner##40+
		.get 10 Gold Dust|q 47/1
		.get 8 Large Candle|q 60/1
	step //46
		'Go northeast inside the mine to 41.3,79.1|goto 41.3,79.1
		.' Explore the Fargodeep Mine|goal Scout through the Fargodeep Mine|q 62/1
	step //47
		goto 42.1,67.3
		.talk Remy "Two Times"##241
		..turnin Gold Dust Exchange##47
	step //48
		ding 6
	step //49
		goto 42.1,65.9
		.talk Marshal Dughan##240
		..turnin The Fargodeep Mine##62
		..accept The Jasperlode Mine##76
	step //50
		goto 43.3,65.7
		.talk William Pestle##253
		..turnin Kobold Candles##60
		..accept Shipment to Stormwind##61
	step //51
		goto 34.5,84.2
		.talk "Auntie" Bernice Stonefield##246
		..accept Lost Necklace##85
	step //52
		goto 43.1,85.7
		.talk Billy Maclure##247
		..turnin Lost Necklace##85
		..accept Pie for Billy##86
	step //53
		goto 41.7,86.9
		.from Stonetusk Boar##113+
		.get 4 Chunk of Boar Meat|q 86/1
	step //54
		goto 43.2,89.6
		.talk Maybell Maclure##251
		..accept Young Lovers##106
	step //55
		goto 34.5,84.2
		.talk "Auntie" Bernice Stonefield##246
		..turnin Pie for Billy##86
		..accept Back to Billy##84
	step //56
		goto 29.8,86
		.talk Tommy Joe Stonefield##252
		..turnin Young Lovers##106
		..accept Speak with Gramma##111
	step //57
		goto 34.9,83.9
		.talk Gramma Stonefield##248
		..turnin Speak with Gramma##111
		..accept Note to William##107
	step //58
		goto 34.6,84.5
		.talk Ma Stonefield##244
		..accept Princess Must Die!##88
	step //59
		goto 43.1,85.7
		.talk Billy Maclure##247
		..turnin Back to Billy##84
		..accept Goldtooth##87
	step //60
		'Go northwest into the Fargodeep Mine to 38.3,81.6|goto 38.3,81.6|n
		.' Enter using the lower entrance|goto Elwynn Forest,38.3,81.6,0.5|noway|c
	step //61
		'Follow the path inside the cave to 41.7,78.3|goto 41.7,78.3
		.from Goldtooth##327
		.get Bernice's Necklace|q 87/1
	step //62
		ding 7
	step //63
		'Go outside to 42.1,67.3|goto 42.1,67.3
		.talk Remy "Two Times"##241
		..accept A Fishy Peril##40
	step //64
		goto 42.1,65.9
		.talk Marshal Dughan##240
		..turnin A Fishy Peril##40
		..accept Further Concerns##35
	step //65
		goto 43.3,65.7
		.talk William Pestle##253
		..turnin Note to William##107
		..accept Collecting Kelp##112
	step //66
		goto 49.7,66.3
		.from Murloc##285+, Murloc Steamrunner##735+
		.get 4 Crystal Kelp Frond|q 112/1
	step //67
		goto 43.3,65.7
		.talk William Pestle##253
		..turnin Collecting Kelp##112
		..accept The Escape##114
	step //68
		goto 43.2,89.6
		.talk Maybell Maclure##251
		..turnin The Escape##114
	step //69
		goto 34.5,84.2
		.talk "Auntie" Bernice Stonefield##246
		..turnin Goldtooth##87
	step //70
		goto 74,72.2
		.talk Guard Thomas##261
		..turnin Further Concerns##35
		..accept Find the Lost Guards##37
		..accept Protect the Frontier##52
	step //71
		goto 79.5,68.8
		.talk Sara Timberlain##278
		..accept Red Linen Goods##83
	step //72
		goto 81.4,66.1
		.talk Supervisor Raelen##10616
		..accept A Bundle of Trouble##5545
	step //73
		goto 81.3,60.6
		.' Click the small stacks of wood at the base of trees|tip They look like little stacks of 3 firewood at the base of trees in this area.
		.get 8 Bundle of Wood|q 5545/1
	step //74
		goto 72.7,60.3
		.' Click the Half-Eaten body|tip On the ground next to some big rocks by the river and a tree.
		..turnin Find the Lost Guards##37
		..accept Discover Rolf's Fate##45
	step //75
		goto 79.8,55.5
		.' Click Rolf's Corpse|tip On the ground next to a murloc hut.
		..turnin Discover Rolf's Fate##45
		..accept Report to Thomas##71
	step //76
		ding 8
	step //77
		goto 81.4,66.1
		.talk Supervisor Raelen##10616
		..turnin A Bundle of Trouble##5545
	step //78
		goto 74,72.2
		.talk Guard Thomas##261
		..turnin Report to Thomas##71
		..accept Deliver Thomas' Report##39
	step //79
		goto 80,77.8
		.kill 8 Prowler|q 52/1
		.kill 5 Young Forest Bear|q 52/2
	step //80
		goto 70.6,76.3
		.from Defias Bandit##116+
		.get 6 Red Linen Bandana|q 83/1
	step //81
		goto 69.7,79.5
		'Kill Princess
		.get Brass Collar##1006|q 88/1
	step //82
		goto 74,72.2
		.talk Guard Thomas##261
		..turnin Protect the Frontier##52
	step //83
		goto 79.5,68.8
		.talk Sara Timberlain##278
		..turnin Red Linen Goods##83
	step //84
		'Go inside the mine to 60.4,49.7|goto 60.4,49.7
		.' Explore the Jasperlode Mine|goal Scout through the Jasperlode Mine|q 76/1
	step //85
		ding 9
	step //86
		'Hearth to Goldshire|goto Elwynn Forest,42.4,65.8,2|use Hearthstone##6948|noway|c
	step //87
		goto 42.1,65.9
		.talk Marshal Dughan##240
		..turnin The Jasperlode Mine##76
		..turnin Deliver Thomas' Report##39
		..accept Westbrook Garrison Needs Help!##239
	step //88
		goto 41.7,65.6
		.talk Smith Argus##514
		..accept Elmore's Task##1097
	step //89
		goto 34.6,84.5
		.talk Ma Stonefield##244
		..turnin Princess Must Die!##88
	step //90
		goto 24.3,74.8
		.talk Deputy Rainer##963
		..turnin Westbrook Garrison Needs Help!##239
		..accept Riverpaw Gnoll Bounty##11
	step //91
		goto 26.8,86.3
		.from Riverpaw Outrunner##478+, Riverpaw Runt##97+
		.get 8 Painted Gnoll Armband|q 11/1
	step //92
		goto 24.3,74.8
		.talk Deputy Rainer##963
		..turnin Riverpaw Gnoll Bounty##11
	step //93
		ding 10
	step //94
		goto 44.5,66.3
		.talk Remen Marcot##6121
		..accept Gakin's Summons##1685
		only Human Warlock
	step //95
		goto 41.1,65.8
		.talk Lyria Du Lac##913
		..accept A Warrior's Training##1638
		only Human Warrior
	step //96
		'Go to Stormwind|goto Stormwind City|noway|c
	step //97
		goto Stormwind City,63.2,74.4
		.talk Morgan Pestle##279
		..turnin Shipment to Stormwind##61
	step //98
		goto 59.7,33.8
		.talk Grimand Elmore##1416
		..turnin Elmore's Task##1097
		..accept Stormpike's Delivery##353
	step //99
		goto 77.1,53.3
		.talk Harry Burlguard##6089
		..turnin A Warrior's Training##1638
		..accept Bartleby the Drunk##1639
		only Human Warrior
	step //100
		goto 76.8,52.5
		.talk Bartleby##6090
		..turnin Bartleby the Drunk##1639
		..accept Beat Bartleby##1640
		.' Fight Bartleby until you beat him|goal Beat Bartleby|q 1640/1
		only Human Warrior
	step //101
		goto 76.8,52.5
		.talk Bartleby##6090
		..turnin Beat Bartleby##1640
		..accept Bartleby's Mug##1665
		only Human Warrior
	step //102
		goto 77.1,53.3
		.talk Harry Burlguard##6089
		..turnin Bartleby's Mug##1665
		only Human Warrior
	step //103
		goto 39.2,85.3
		.talk Gakin the Darkbinder##6122
		..turnin Gakin's Summons##1685
		..accept Surena Caledon##1688
		only Human Warlock
	step //104
		'Go outside to Elwynn Forest|goto Elwynn Forest|noway|c
		only Human Warlock
	step //105
		goto Elwynn Forest,71,80.8
		.from Surena Caledon##881
		.get Surena's Choker|q 1688/1
		only Human Warlock
	step //106
		'Go northwest to Stormwind|goto Stormwind City|noway|c
		only Human Warlock
	step //107
		goto Stormwind City,39.2,85.3
		.talk Gakin the Darkbinder##6122
		..turnin Surena Caledon##1688
		..accept The Binding##1689
		only Human Warlock
	step //108
		'Go downstairs into the catacombs to 39.1,84.3|goto 39.1,84.3
		.' Use your Bloodstone Choker while standing on the pink Summoning Circle|use Bloodstone Choker##6928|tip In the catacombs below The Slaughtered Lamb.
		.kill Summoned Voidwalker|q 1689/1
		only Human Warlock
	step //109
		'Go upstairs to 39.2,85.3|goto 39.2,85.3
		.talk Gakin the Darkbinder##6122
		..turnin The Binding##1689
		only Human Warlock
	step //110
		goto 69,30.9|n
		'Ride the train to Ironforge|goto Ironforge|noway|c
	step //111
		goto Ironforge,55.5,47.7
		.talk Gryth Thurden##1573
		..fpath Ironforge
	step //112
		'Go outside to Dun Morogh|goto Dun Morogh|noway|c
	step //113
		goto Dun Morogh,68.7,56
		.talk Senator Mehr Stonehallow##1977
		..accept The Public Servant##433
	step //114
		goto 69.1,56.3
		.talk Foreman Stonebrow##1254
		..accept Those Blasted Troggs!##432
	step //115
		'Go inside the cave to 70.7,56.5|goto 70.7,56.5
		.kill 6 Rockjaw Skullthumper|q 432/1
		.kill 10 Rockjaw Bonesnapper|q 433/1
	step //116
		'Go outside to 68.7,56.0|goto 68.7,56.0
		.talk Senator Mehr Stonehallow##1977
		..turnin The Public Servant##433
	step //117
		goto 69.1,56.3
		.talk Foreman Stonebrow##1254
		..turnin Those Blasted Troggs!##432
	step //118
		'Go east to Loch Modan|goto Loch Modan|noway|c
	step //119
		goto Loch Modan,33.9,51
		.talk Thorgrum Borrelson##1572
		..fpath Thelsamar
	step //120
		goto 34.8,47.1
		.talk Mountaineer Kadrell##1340
		..accept Rat Catching##416
		..accept Mountaineer Stormpike's Task##1339
	step //121
		home Thelsamar
	step //122
		goto 34.8,49.3
		.talk Vidra Hearthstove##1963
		..accept Thelsamar Blood Sausages##418
	step //123
		goto 37.4,38.9
		.from Mountain Boar##1190+, Elder Black Bear##1186+, Forest Lurker##1195+
		.get 3 Boar Intestines|q 418/1
		.get 3 Bear Meat|q 418/2
		.get 3 Spider Ichor|q 418/3
	step //124
		goto 24.5,33.6
		.from Tunnel Rat Scout##1173+, Tunnel Rat Forager##1176+, Tunnel Rat Kobold##1202+, Tunnel Rat Vermin##1172+
		.get 12 Tunnel Rat Ear|q 416/1
	step //125
		ding 11
	step //126
		goto 24.8,18.4
		.talk Mountaineer Stormpike##1343
		..turnin Stormpike's Delivery##353
		..turnin Mountaineer Stormpike's Task##1339
		..accept Stormpike's Order##1338
	step //127
		'Hearth to Thelsamar|goto Loch Modan,35.5,48.3,0.5|use Hearthstone##6948|noway|c
	step //128
		goto 34.8,49.3
		.talk Vidra Hearthstove##1963
		..turnin Thelsamar Blood Sausages##418
	step //129
		goto 34.8,47.1
		.talk Mountaineer Kadrell##1340
		..'He wanders around town
		..turnin Rat Catching##416
	step //130
		goto 22.1,73.1
		.talk Mountaineer Cobbleflint##1089
		..accept In Defense of the King's Lands (1)##224
	step //131
		goto 23.2,73.7
		.talk Captain Rugelfuss##1092
		..accept The Trogg Threat##267
	step //132
		goto 31.1,70.7
		.kill 10 Stonesplinter Trogg|q 224/1
		.kill 10 Stonesplinter Scout|q 224/2
		.from Stonesplinter Scout##1162+, Stonesplinter Trogg##1161+
		.get 8 Trogg Stone Tooth|q 267/1
	step //133
		goto 22.1,73.1
		.talk Mountaineer Cobbleflint##1089
		..turnin In Defense of the King's Lands (1)##224
	step //134
		goto 23.2,73.7
		.talk Captain Rugelfuss##1092
		..turnin The Trogg Threat##267
	step //135
		ding 12
	step //136
		goto 33.9,51.0
		.talk Thorgrum Borrelson##1572
		.'Fly to Stormwind|goto Stormwind City|noway|c
	step //137
		goto Stormwind City,64.6,37.2
		.talk Furen Longbeard##5413
		..turnin Stormpike's Order##1338
	step //138
		goto 22.6,56.1|n
		'Ride the boat to Auberdine|goto Darkshore,32.4,43.7,1|noway|c
	step //139
		goto Darkshore,37,44.1
		.talk Wizbang Cranktoggle##3666
		..accept Buzzbox 827##983
	step //140
		home Auberdine
	step //141
		goto 36.3,45.6
		.talk Caylais Moonfeather##3841
		..fpath Auberdine
	step //142
		goto 36.6,45.6
		.talk Gwennyth Bly'Leggonde##10219
		..accept Washed Ashore (1)##3524
	step //143
		goto 39.4,43.5
		.talk Terenthis##3693
		..accept How Big a Threat? (1)##984
	step //144
		goto 37.4,40.1
		.talk Thundris Windweaver##3649
		..accept Bashal'Aran (1)##954
	step //145
		goto 36.1,47.3
		.from Pygmy Tide Crawler##2231+, Young Reef Crawler##2234+
		.get 6 Crawler Leg|q 983/1
	step //146
		goto 36.4,50.8
		.' Click the Beached Sea Creature|tip It looks like a big green rotting dinosaur laying on the beach.
		.get Sea Creature Bones|q 3524/1
	step //147
		goto 36.7,46.3
		.' Click Buzzbox 827|tip It looks like a mechanical box with levers on it sitting in the grass next to a big wooden platform.
		..turnin Buzzbox 827##983
		..accept Buzzbox 411##1001
	step //148
		goto 36.6,45.6
		.talk Gwennyth Bly'Leggonde##10219
		..turnin Washed Ashore (1)##3524
		..accept Washed Ashore (2)##4681
	step //149
		goto 31.7,42.9
		.from Darkshore Thresher##2185+
		.get 3 Thresher Eye|q 1001/1
	step //150
		goto 31.9,46.3
		.' Click the Skeletal Sea Turtle|tip It looks like a big turtle skull underwater here.
		.get Sea Turtle Remains|q 4681/1
	step //151
		goto 39.6,52.9
		.' Find a corrupt furbolg camp at this spot|goal Find a corrupt furbolg camp|q 984/1
	step //152
		goto 39.4,43.5
		.talk Terenthis##3693
		..turnin How Big a Threat? (1)##984
		..accept Thundris Windweaver##4761
	step //153
		goto 36.6,45.6
		.talk Gwennyth Bly'Leggonde##10219
		..turnin Washed Ashore (2)##4681
	step //154
		goto 37.4,40.1
		.talk Thundris Windweaver##3649
		..turnin Thundris Windweaver##4761
	step //155
		goto 44.2,36.3
		.talk Asterion##3650
		..turnin Bashal'Aran (1)##954
		..accept Bashal'Aran (2)##955
	step //156
		goto 44.6,36.9
		.from Wild Grell##2190+, Vile Sprite##2189+
		.get 8 Grell Earring|q 955/1
	step //157
		goto 44.2,36.3
		.talk Asterion##3650
		..turnin Bashal'Aran (2)##955
	step //158
		goto 42,28.6
		.' Click the Buzzbox 411|tip It's a metal box with levers on it, sitting on the beach.
		..turnin Buzzbox 411##1001
	step //159
		ding 13
	step //160
		'Hearth to Auberdine|goto Darkshore,37.0,44.1,0.5|use Hearthstone##6948|noway|c
	step //161
		goto 32.4,43.8|n
		'Ride the boat to Stormwind Harbor|goto Stormwind City|noway|c
	step //162
		'Go outside to Elwynn Forest|goto Elwynn Forest|noway|c
	step //163
		goto Elwynn Forest,41.1,66
		.talk Brother Wilhelm##927
		..accept Tome of Divinity##2998
		only Human Paladin
	step //164
		'Go northwest to Stormwind|goto Stormwind City|noway|c
		only Human Paladin
	step //165
		goto Stormwind City,50.6,47.5
		.talk Duthorian Rall##6171
		..turnin Tome of Divinity##2998
		only Human Paladin
	step //166
		goto 50.6,47.5
		'Click the Tome of Divinity in your bags|use Tome of Divinity##6775
		.accept The Tome of Divinity (1)##1642
		.talk Duthorian Rall##6171
		..turnin The Tome of Divinity (1)##1642
		..accept The Tome of Divinity (2)##1643
		only Human Paladin
	step //167
		goto 63.8,72.2
		.talk Stephanie Turner##6174
		..turnin The Tome of Divinity (2)##1643
		..accept The Tome of Divinity (3)##1644
		only Human Paladin
	step //168
		'Make sure you have 10 Linen Cloth|buy 10 Linen Cloth|q 1644/1|c|tip If you do not already have it, buy 10 Linen Cloth from the Auction House.
		only Human Paladin
	step //169
		goto 63.8,72.2
		.talk Stephanie Turner##6174
		..turnin The Tome of Divinity (3)##1644
		..accept The Tome of Divinity (4)##1780
		only Human Paladin
	step //170
		goto 50.6,47.5
		.talk Duthorian Rall##6171
		..turnin The Tome of Divinity (4)##1780
		..accept The Tome of Divinity (5)##1781
		only Human Paladin
	step //171
		goto 49.5,45.0
		.talk Gazin Tenorm##6173
		..turnin The Tome of Divinity (5)##1781
		..accept The Tome of Divinity (6)##1786
		only Human Paladin
	step //172
		'Go outside to Elwynn Forest|goto Elwynn Forest|noway|c
		only Human Paladin
	step //173
		goto Elwynn Forest,72.6,51.4
		.' Click the Symbol of Life in your bags to resurrect Henze Faulk|use Symbol of Life##6866
		.talk Henze Faulk##6172
		..turnin The Tome of Divinity (6)##1786
		..accept The Tome of Divinity (7)##1787
		only Human Paladin
	step //174
		goto 73.6,51.3
		.from Defias Rogue Wizard##474+
		.get Defias Script|q 1787/1
		only Human Paladin
	step //175
		'Go west to Stormwind|goto Stormwind City|noway|c
		only Human Paladin
	step //176
		goto Stormwind City,49.5,45.0
		.talk Gazin Tenorm##6173
		..turnin The Tome of Divinity (7)##1787
		..accept The Tome of Divinity (8)##1788
		only Human Paladin
	step //177
		goto 50.6,47.5
		.talk Duthorian Rall##6171
		..turnin The Tome of Divinity (8)##1788
		only Human Paladin
	step //178
		'Go outside to Elwynn Forest|goto Elwynn Forest|noway|c
		only Human Paladin
	step //179
		goto Elwynn Forest,42.1,65.9
		.talk Marshal Dughan##240
		..accept Report to Gryan Stoutmantle##109
	step //180
		'Go southwest to Westfall|goto Westfall|noway|c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Night Elf (1-13)",[[
	author support@zygorguides.com
	defaultfor NightElf
	next Zygor's Alliance Leveling Guides\\Main Guide (13-20)
	startlevel 1
	step //1
		goto Teldrassil,58.7,44.3
		.talk Conservator Ilthalaine##2079
		..accept The Balance of Nature (1)##456
	step //2
		goto 58.5,45.9
		.kill 7 Young Nightsaber|q 456/1
		.kill 4 Young Thistle Boar|q 456/2
	step //3
		ding 2
	step //4
		goto 58.7,44.3
		.talk Conservator Ilthalaine##2079
		..turnin The Balance of Nature (1)##456
		..accept The Balance of Nature (2)##457
		..accept Simple Sigil##3116
		only NightElf Warrior
	step //5
		goto 58.7,44.3
		.talk Conservator Ilthalaine##2079
		..turnin The Balance of Nature (1)##456
		..accept The Balance of Nature (2)##457
		..accept Encrypted Sigil##3118
		only NightElf Rogue
	step //6
		goto 58.7,44.3
		.talk Conservator Ilthalaine##2079
		..turnin The Balance of Nature (1)##456
		..accept The Balance of Nature (2)##457
		..accept Hallowed Sigil##3119
		only NightElf Priest
	step //7
		goto 58.7,44.3
		.talk Conservator Ilthalaine##2079
		..turnin The Balance of Nature (1)##456
		..accept The Balance of Nature (2)##457
		..accept Etched Sigil##3117
		only NightElf Hunter
	step //8
		goto 58.7,44.3
		.talk Conservator Ilthalaine##2079
		..turnin The Balance of Nature (1)##456
		..accept The Balance of Nature (2)##457
		..accept Verdant Sigil##3120
		only NightElf Druid
	step //9
		goto 59.9,42.5
		.talk Melithar Staghelm##2077
		..accept The Woodland Protector (1)##458
	step //10
		goto 59.6,38.4
		.talk Alyissia##3593
		..turnin Simple Sigil##3116
		only NightElf Warrior
	step //11
		goto 59.6,38.7
		.talk Frahun Shadewhisper##3594
		..turnin Encrypted Sigil##3118
		only NightElf Rogue
	step //12
		goto 59.2,40.4
		.talk Shanda##3595
		..turnin Hallowed Sigil##3119
		only NightElf Priest
	step //13
		goto 60.9,42
		.talk Dirania Silvershine##8583
		..accept A Good Friend##4495
	step //14
		goto 57.6,45.3
		.talk Tarindrella##1992
		..turnin The Woodland Protector (1)##458
		..accept The Woodland Protector (2)##459
	step //15
		goto 56.5,45.5
		.from Grell##1988+, Grellkin##1989+
		.get 8 Fel Moss|q 459/1
	step //16
		goto 57.6,45.3
		.talk Tarindrella##1992
		..turnin The Woodland Protector (2)##459
	step //17
		ding 3
	step //18
		goto 57.8,41.7
		.talk Gilshalan Windwalker##2082
		..accept Webwood Venom##916
	step //19
		'Go up the huge spiral ramp to 58.7,40.5|goto 58.7,40.5
		.talk Ayanna Everstride##3596
		..turnin Etched Sigil##3117
		only NightElf Hunter
	step //20
		'Go up the huge spiral ramp to 58.6,40.3|goto 58.6,40.3
		.talk Mardant Strongoak##3597
		..turnin Verdant Sigil##3120
		only NightElf Druid
	step //21
		goto 58.8,36.8
		.kill 7 Mangy Nightsaber|q 457/1
		.kill 7 Thistle Boar|q 457/2
	step //22
		goto 58.3,32.9
		.from Webwood Spider##1986+
		.get 10 Webwood Venom Sac|q 916/1
	step //23
		goto 54.6,33
		.talk Iverron##8584
		..turnin A Good Friend##4495
		..accept A Friend in Need##3519
	step //24
		ding 4
	step //25
		goto 57.8,41.7
		.talk Gilshalan Windwalker##2082
		..turnin Webwood Venom##916
		..accept Webwood Egg##917
	step //26
		goto 58.7,44.3
		.talk Conservator Ilthalaine##2079
		..turnin The Balance of Nature (2)##457
	step //27
		goto 60.9,42
		.talk Dirania Silvershine##8583
		..turnin A Friend in Need##3519
		..accept Iverron's Antidote (1)##3521
	step //28
		goto 55.2,39.6
		.from Grell##1988+, Grellkin##1989+
		.get 7 Hyacinth Mushroom|q 3521/1
	step //29
		goto 57.7,38.5
		.' Click Moonpetal Lilies|tip The Moonpetal Lillies look like tall flower with orange petals around the pond here.
		.get 4 Moonpetal Lily|q 3521/2
	step //30
		goto 56.7,32.1
		.from Webwood Spider##1986+
		.get Webwood Ichor|q 3521/3
	step //31
		'Go into the cave at 56.8,31.7|goto 56.8,31.7|n
		.' Follow the path in the middle, then go left
		.' Go up to the ledge above|goto Teldrassil,55.8,25.5,0.5|c
	step //32
		goto 56.7,26.4
		.' Click a Webwood Egg
		.get Webwood Egg|q 917/1
	step //33
		'Leave the cave|goto Teldrassil,56.8,32.0,0.5|noway|c
	step //34
		goto 57.8,41.7
		.talk Gilshalan Windwalker##2082
		..turnin Webwood Egg##917
		..accept Tenaron's Summons##920
	step //35
		'Follow the ramp to the top of the tree|goto Teldrassil,59.4,39.0,0.5|noway|c
	step //36
		goto 59.1,39.4
		.talk Tenaron Stormgrip##3514
		..turnin Tenaron's Summons##920
		..accept Crown of the Earth (1)##921
	step //37
		goto 60.9,42
		.talk Dirania Silvershine##8583
		..turnin Iverron's Antidote (1)##3521
		..accept Iverron's Antidote (2)##3522
	step //38
		ding 5
	step //39
		goto 54.6,33
		.talk Iverron##8584
		..turnin Iverron's Antidote (2)##3522
	step //40
		goto 59.9,33.1
		.' Use your Crystal Phial in the moonwell water|use Crystal Phial##5185
		.get Filled Crystal Phial|q 921/1
	step //41
		goto 59.1,39.4
		.talk Tenaron Stormgrip##3514
		..'Go to the top of the big tree
		..turnin Crown of the Earth (1)##921
		..accept Crown of the Earth (2)##928
	step //42
		goto 61.2,47.6
		.talk Porthannius##6780
		..accept Dolanaar Delivery##2159
	step //43
		goto 60.4,56.3
		.talk Zenn Foulhoof##2150
		..accept Zenn's Bidding##488
	step //44
		goto 63.8,54.2
		.from Strigid Owl##1995+
		.get 3 Strigid Owl Feather|q 488/2
	step //45
		goto 60.6,58.2
		.from Webwood Lurker##1998+
		.get 3 Webwood Spider Silk|q 488/3
		.from Nightsaber##2042+
		.get 3 Nightsaber Fang|q 488/1
	step //46
		goto 60.4,56.3
		.talk Zenn Foulhoof##2150
		..turnin Zenn's Bidding##488
	step //47
		ding 6
	step //48
		goto 56.1,57.7
		.talk Syral Bladeleaf##2083
		..accept Seek Redemption!##489
		..accept Denalan's Earth##997
	step //49
		goto 56,57.3
		.talk Athridas Bearmantle##2078
		..accept A Troubling Breeze##475
	step //50
		'Go to the top of the tower|goto Teldrassil,55.0,57.2,0.5|noway|c
	step //51
		goto 55.6,56.9
		.talk Tallonkai Swiftroot##3567
		..accept The Emerald Dreamcatcher##2438
		..accept Twisted Hatred##932
	step //52
		goto 55.6,59.8
		.talk Innkeeper Keldamyr##6736
		..turnin Dolanaar Delivery##2159
	step //53
		home Dolanaar
	step //54
		goto 56.1,61.7
		.talk Corithras Moonrage##3515
		..turnin Crown of the Earth (2)##928
		..accept Crown of the Earth (3)##929
	step //55
		goto 63.3,58.1
		.' Use your Jade Phial in the moonwell water|use Jade Phial##5619
		.get Filled Jade Phial|q 929/1
	step //56
		goto 66.3,58.5
		.talk Gaerolas Talvethren##2107
		..turnin A Troubling Breeze##475
		..accept Gnarlpine Corruption##476
	step //57
		goto 68,59.6
		.' Click Tallonkai's Dresser|tip To the right in the small house.
		.get Emerald Dreamcatcher|q 2438/1
	step //58
		goto 63.6,62.3
		.' Click Fel Cones|tip They are big, brown, green smoking pine cones at the base of trees.
		.get 3 Fel Cone|q 489/1
	step //59
		goto 56,57.3
		.talk Athridas Bearmantle##2078
		..turnin Gnarlpine Corruption##476
		..accept The Relics of Wakening##483
	step //60
		'Go to the top of the tower|goto Teldrassil,55.0,57.2,0.5|noway|c
	step //61
		goto 55.6,56.9
		.talk Tallonkai Swiftroot##3567
		..turnin The Emerald Dreamcatcher##2438
		..accept Ferocitas the Dream Eater##2459
	step //62
		goto 56.1,61.7
		.talk Corithras Moonrage##3515
		..turnin Crown of the Earth (3)##929
		..accept Crown of the Earth (4)##933
	step //63
		goto 60.4,56.3
		.talk Zenn Foulhoof##2150
		..turnin Seek Redemption!##489
	step //64
		ding 7
	step //65
		goto 60.9,68.5
		.talk Denalan##2080
		..turnin Denalan's Earth##997
		..accept Timberling Seeds##918
		..accept Timberling Sprouts##919
	step //66
		goto 61.2,66.8
		.from Timberling##2022+
		.get 8 Timberling Seed|q 918/1
		.' Click Timberling Sprouts|tip They are brown and green bulbs on the ground.
		.get 12 Timberling Sprout|q 919/1
	step //67
		goto 60.9,68.5
		.talk Denalan##2080
		..turnin Timberling Seeds##918
		..accept Rellian Greenspyre##922
		..turnin Timberling Sprouts##919
	step //68
		goto 68.3,53.7
		.kill 7 Gnarlpine Mystic|q 2459/1
	step //69
		goto 69.4,53.3
		.from Ferocitas the Dream Eater##7234
		.get Gnarlpine Necklace|n
		.' Click the Gnarlpine Necklace|use Gnarlpine Necklace##8049
		.get Tallonkai's Jewel|q 2459/2
	step //70
		'Go to the top of the tower to 55.6,56.9|goto 55.6,56.9
		.talk Tallonkai Swiftroot##3567
		..turnin Ferocitas the Dream Eater##2459
	step //71
		ding 8
	step //72
		goto 52.4,56.5
		.talk Moon Priestess Amara##2151
		..accept The Road to Darnassus##487
	step //73
		goto 46.7,53.5
		.kill 6 Gnarlpine Ambusher|q 487/1
	step //74
		'Go southwest into the cave at 44.4,57.8|goto Teldrassil,44.4,57.8,0.5|c
	step //75
		goto 43.7,61.2
		.' Click the Chest of the Black Feather|tip On the top floor of the cave, across the bridge to the right, in the small room, on the right on the ground.
		.get Black Feather Quill|q 483/2
	step //76
		goto 44.4,60.7
		.' Click the Chest of Nesting|tip On the top floor of the cave, across the middle bridge, on the ground to the right in the small room.
		.get Rune of Nesting|q 483/4
	step //77
		'Go downstairs to 44.9,61.6|goto 44.9,61.6
		.talk Oben Rageclaw##7317
		..accept The Sleeping Druid##2541
	step //78
		'Go to the next room over to 45.6,58.7|goto 45.6,58.7
		.from Gnarlpine Shaman##2009+
		.get Shaman Voodoo Charm|q 2541/1
	step //79
		goto 45.7,57.4
		.' Click the Chest of the Raven Claw|tip At the bottom of the cave, up across the bridge, on a ledge.
		.get Raven Claw Talisman|q 483/1
	step //80
		goto 44.9,61.6
		.talk Oben Rageclaw##7317
		..turnin The Sleeping Druid##2541
		..accept Druid of the Claw##2561
	step //81
		goto 45.6,58.7
		.kill Rageclaw##7318|n
		.' Use the Voodoo Charm on his corpse|use Voodoo Charm##8149
		.' Release Oben Rageclaw's spirit|goal Release Oben Rageclaw's spirit|q 2561/1
	step //82
		'Go through the tunnel back to where Oben Rageclaw is to 44.7,62.5|goto 44.7,62.5
		.' Click the Chest of the Sky|tip Down the path at the bottom of the cave, next to Greenpaw.
		.get Sapphire of Sky|q 483/3
	step //83
		'Go back up the path to 44.9,61.6|goto 44.9,61.6
		.talk Oben Rageclaw##7317
		..turnin Druid of the Claw##2561
	step //84
		ding 9
	step //85
		'Hearth to Dolanaar|goto Teldrassil,55.7,59.8,1|use Hearthstone##6948|noway|c
	step //86
		goto 56,57.3
		.talk Athridas Bearmantle##2078
		..turnin The Relics of Wakening##483
		..accept Ursal the Mauler##486
	step //87
		'Go north to Fel Rock|goto Teldrassil,54.7,52.8,0.5|c
	step //88
		'Go inside the cave to 52.8,50.2|goto 52.8,50.2
		.from Lord Melenas##2038
		.get Melenas' Head|q 932/1
	step //89
		'Go outside and go to the top of the tower to 55.6,56.9|goto 55.6,56.9
		.talk Tallonkai Swiftroot##3567
		..turnin Twisted Hatred##932
	step //90
		goto 42.4,67.1
		.' Use your Tourmaline Phial in the moonwell water|use Tourmaline Phial##5621
		.get Filled Tourmaline Phial|q 933/1
	step //91
		goto 42.6,76.1
		.' Click the Strange Fruited Plant|tip It looks like a big pink glowing plant.
		..accept The Glowing Fruit##930
	step //92
		goto 60.9,68.5
		.talk Denalan##2080
		..turnin The Glowing Fruit##930
	step //93
		goto 56.1,61.7
		.talk Corithras Moonrage##3515
		..turnin Crown of the Earth (4)##933
		..accept Crown of the Earth (5)##7383
	step //94
		goto 52.4,56.5
		.talk Moon Priestess Amara##2151
		..turnin The Road to Darnassus##487
	step //95
		goto 38.3,34.4
		.talk Sentinel Arynia Cloudsbreak##3519
		..accept The Enchanted Glade##937
	step //96
		goto 38.4,34.1
		.' Click the Amethyst Phial in your bags|use Amethyst Phial##18152
		.get Filled Amethyst Phial|q 7383/1
	step //97
		goto 37.4,37.3
		.from Bloodfeather Rogue##2017+, Bloodfeather Sorceress##2018+, Bloodfeather Harpy##2015+
		.get 6 Bloodfeather Belt|q 937/1
	step //98
		ding 10
	step //99
		goto 38.3,34.4
		.talk Sentinel Arynia Cloudsbreak##3519
		..turnin The Enchanted Glade##937
	step //100
		goto 34.7,29
		.' Click the Strange Fronded Plant|tip It's a big glowing pink plant up on a hill.
		..accept The Shimmering Frond##931
	step //101
		'Hearth to Dolanaar|goto Teldrassil,55.7,59.8,1|use Hearthstone##6948|noway|c
	step //102
		goto 56.1,61.7
		.talk Corithras Moonrage##3515
		..turnin Crown of the Earth (5)##7383
		..accept Crown of the Earth (6)##935
	step //103
		goto 56.2,59.2
		.talk Kyra Windblade##3598
		..accept Elanaria##1684
		only NightElf Warrior
	step //104
		'Go west to Darnassus|goto Darnassus|noway|c
		only NightElf Warrior
	step //105
		goto Darnassus,57.3,34.6
		.talk Elanaria##4088
		..turnin Elanaria##1684
		..accept Vorlus Vilehoof##1683
		only NightElf Warrior
	step //106
		'Go east out of Darnassus to Teldrassil|goto Teldrassil|noway|c
		only NightElf Warrior
	step //107
		goto 49.0,62.0|n
		.' The path up to 'Vorlus Vilehoof' starts here|goto Teldrassil,49.0,62.0,1|noway|c
		only NightElf Warrior
	step //108
		'Follow the path up to 47.4,63.6|goto 47.4,63.6
		.from Vorlus Vilehoof##6128
		.get Horn of Vorlus|q 1683/1
		only NightElf Warrior
	step //109
		'Go northwest to Darnassus|goto Darnassus|noway|c
		only NightElf Warrior
	step //110
		goto Darnassus,57.3,34.6
		.talk Elanaria##4088
		..turnin Vorlus Vilehoof##1683
		only NightElf Warrior
	step //111
		'Go east out of Darnassus to Teldrassil|goto Teldrassil|noway|c
		only NightElf Warrior
	step //112
		goto Teldrassil,56.7,59.5
		.talk Dazalar##3601
		..accept Taming the Beast (1)##6063
		only NightElf Hunter
	step //113
		goto 59,60
		.' Use your Taming Rod on a Webwood Lurker around this area|use Taming Rod##15921
		.goal Tame a Webwood Lurker|q 6063/1
		only NightElf Hunter
	step //114
		goto 56.7,59.5
		.talk Dazalar##3601
		..turnin Taming the Beast (1)##6063
		..accept Taming the Beast (2)##6101
		only NightElf Hunter
	step //115
		goto 56,72
		.' Use your Taming Rod on a Nightsaber Stalker around this area|use Taming Rod##15922
		.goal Tame a Nightsaber Stalker|q 6101/1
		only NightElf Hunter
	step //116
		goto 56.7,59.5
		.talk Dazalar##3601
		..turnin Taming the Beast (2)##6101
		..accept Taming the Beast (3)##6102
		only NightElf Hunter
	step //117
		goto 38.9,51.7
		.' Use your Taming Rod on a Strigid Screecher around this area|use Taming Rod##15923
		.goal Tame a Strigid Screecher|q 6102/1
		only NightElf Hunter
	step //118
		goto 56.7,59.5
		.talk Dazalar##3601
		..turnin Taming the Beast (3)##6102
		..accept Training the Beast##6103
		only NightElf Hunter
	step //119
		'Go west to Darnassus|goto Darnassus|noway|c
		only NightElf Hunter
	step //120
		goto Darnassus,40.4,8.5
		.talk Jocaste##4146
		..turnin Training the Beast##6103
		only NightElf Hunter
	step //121
		'Go east out of Darnassus to Teldrassil|goto Teldrassil|noway|c
		only NightElf Hunter
	step //122
		goto Teldrassil,56.0,61.5
		.talk Kal##3602
		..accept Heeding the Call##5925
		only NightElf Druid
	step //123
		'Go west to Darnassus|goto Darnassus|noway|c
		only NightElf Druid
	step //124
		goto Darnassus,35.2,8.1
		.talk Mathrengyl Bearwalker##4217
		..turnin Heeding the Call##5925
		..accept Moonglade##5921
		only NightElf Druid
	step //125
		'He gives you a spell called Teleport: Moonglade
		.' Teleport to Moonglade|goto Moonglade|cast Teleport: Moonglade|c
		only NightElf Druid
	step //126
		goto Moonglade,56.2,30.5
		.talk Dendrite Starblaze##11802
		..turnin Moonglade##5921
		..accept Great Bear Spirit##5929
		only NightElf Druid
	step //127
		goto 39.1,27.3
		.talk Great Bear Spirit##11956
		.goal Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear.|q 5929/1
		only NightElf Druid
	step //128
		'He gives you a spell called Teleport: Moonglade
		.' Teleport to Moonglade|goto Moonglade|cast Teleport: Moonglade|c
		only NightElf Druid
	step //129
		goto 56.2,30.5
		.talk Dendrite Starblaze##11802
		..turnin Great Bear Spirit##5929
		..accept Back to Darnassus##5931
		only NightElf Druid
	step //130
		goto 44.2,45.3|n
		.talk Silva Fil'naveth##11800
		..'Fly to Rut'theran Village|goto Teldrassil,56.3,92.4,6|noway|c
		only NightElf Druid
	step //131
		'Go northwest into the big pink portal to Darnassus|goto Darnassus|noway|c
		only NightElf Druid
	step //132
		goto Darnassus,35.2,8.1
		.talk Mathrengyl Bearwalker##4217
		..turnin Back to Darnassus##5931
		..accept Body and Heart##6001
		only NightElf Druid
	step //133
		goto 31,42|n
		.' Go into the pink portal to Rut'theran Village|goto Teldrassil|noway|c
		only NightElf Druid
	step //134
		'Fly to Auberdine|goto Darkshore,36.4,45.6,0.3|noway|c
		only NightElf Druid
	step //135
		'Go into the cave at 43,46|goto Darkshore,43,46
		.' Use your Cenarion Moondust on the Moonkin Stone to summon Lunaclaw|use Cenarion Moondust##15208
		.from Lunaclaw##12138
		.talk Lunaclaw Spirit##12144
		.goal Face Lunaclaw and earn the strength of body and heart it possesses.|q 6001/1
		only NightElf Druid
	step //136
		'Go west to Auberdine and fly to Rut'theran Village|goto Teldrassil,56.3,92.4,6|noway|c
		only NightElf Druid
	step //137
		goto Darnassus|goto Darnassus|noway|c
		only NightElf Druid
	step //138
		goto Darnassus,35.2,8.1
		.talk Mathrengyl Bearwalker##4217
		..turnin Body and Heart##6001
		only NightElf Druid
	step //139
		'Go east outside of Darnassus to Teldrassil|goto Teldrassil|noway|c
		only NightElf Druid
	step //140
		goto Teldrassil,39.2,80.1
		.kill Ursal the Mauler##2039|q 486/1
	step //141
		goto 60.9,68.5
		.talk Denalan##2080
		..turnin The Shimmering Frond##931
	step //142
		goto 56,57.3
		.talk Athridas Bearmantle##2078
		..turnin Ursal the Mauler##486
	step //143
		'Go west to Darnassus|goto Darnassus|noway|c
	step //144
		goto Darnassus,70.7,45.4
		.talk Mydrannul##4241
		..accept Nessa Shadowsong##6344
	step //145
		goto 38.2,21.6
		.talk Rellian Greenspyre##3517
		..turnin Rellian Greenspyre##922
	step //146
		goto 35.1,9.1
		.talk Arch Druid Fandral Staghelm##3516
		..turnin Crown of the Earth (6)##935
	step //147
		.' Go into the pink portal to Rut'theran Village|goto Teldrassil,56.3,92.4,6|noway|c
	step //148
		goto Teldrassil,56.3,92.4
		.talk Nessa Shadowsong##10118
		..turnin Nessa Shadowsong##6344
		..accept The Bounty of Teldrassil##6341
	step //149
		goto 58.4,94
		.talk Vesprystus##3838
		..turnin The Bounty of Teldrassil##6341
		..accept Flight to Auberdine##6342
	step //150
		'Fly to Auberdine|goto Darkshore,36.4,45.6,0.5|noway|c
	step //151
		goto Darkshore,36.6,45.6
		.talk Gwennyth Bly'Leggonde##10219
		..accept Washed Ashore (1)##3524
	step //152
		goto 36.8,44.3
		.talk Laird##4200
		..turnin Flight to Auberdine##6342
		..accept Return to Nessa##6343
	step //153
		ding 11
	step //154
		'Fly to Rut'theran Village|goto Teldrassil,56.3,92.4,6|noway|c
	step //155
		goto Teldrassil,56.3,92.4
		.talk Nessa Shadowsong##10118
		..turnin Return to Nessa##6343
	step //156
		'Fly to Auberdine|goto Darkshore,36.4,45.6,0.5|noway|c
	step //157
		goto Darkshore,37,44.1
		.talk Wizbang Cranktoggle##3666
		..accept Buzzbox 827##983
	step //158
		home Auberdine
	step //159
		goto 39.4,43.5
		.talk Terenthis##3693
		..accept How Big a Threat? (1)##984
	step //160
		goto 37.4,40.1
		.talk Thundris Windweaver##3649
		..accept Bashal'Aran (1)##954
	step //161
		goto 36.1,47.3
		.from Pygmy Tide Crawler##2231+, Young Reef Crawler##2234+
		.get 6 Crawler Leg|q 983/1
	step //162
		goto 36.4,50.8
		.' Click the Beached Sea Creature|tip It looks like a big green rotting dinosaur laying on the beach.
		.get Sea Creature Bones|q 3524/1
	step //163
		goto 36.7,46.3
		.' Click Buzzbox 827|tip It looks like a mechanical box with levers on it sitting in the grass next to a big wooden platform.
		..turnin Buzzbox 827##983
		..accept Buzzbox 411##1001
	step //164
		goto 36.6,45.6
		.talk Gwennyth Bly'Leggonde##10219
		..turnin Washed Ashore (1)##3524
		..accept Washed Ashore (2)##4681
	step //165
		goto 32.7,47.7
		.from Darkshore Thresher##2185+
		.get 3 Thresher Eye|q 1001/1
	step //166
		goto 31.9,46.3
		.' Click the Skeletal Sea Turtle|tip It looks like a big turtle skull underwater here.
		.get Sea Turtle Remains|q 4681/1
	step //167
		goto 39.6,52.9
		.' Find a corrupt furbolg camp at this spot|goal Find a corrupt furbolg camp|q 984/1
	step //168
		goto 39.4,43.5
		.talk Terenthis##3693
		..turnin How Big a Threat? (1)##984
		..accept Thundris Windweaver##4761
	step //169
		goto 36.6,45.6
		.talk Gwennyth Bly'Leggonde##10219
		..turnin Washed Ashore (2)##4681
	step //170
		goto 37.4,40.1
		.talk Thundris Windweaver##3649
		..turnin Thundris Windweaver##4761
	step //171
		goto 44.2,36.3
		.talk Asterion##3650
		..turnin Bashal'Aran (1)##954
		..accept Bashal'Aran (2)##955
	step //172
		goto 44.6,36.9
		.from Wild Grell##2190+, Vile Sprite##2189+
		.get 8 Grell Earring|q 955/1
	step //173
		ding 12
	step //174
		goto 44.2,36.3
		.talk Asterion##3650
		..turnin Bashal'Aran (2)##955
	step //175
		goto 42,28.6
		.' Click the Buzzbox 411|tip It's a metal box with levers on it, sitting on the beach.
		..turnin Buzzbox 411##1001
	step //176
		'Hearth to Auberdine|goto Darkshore,37.0,44.1,0.5|use Hearthstone##6948|noway|c
	step //177
		goto 32.4,43.8|n
		'Ride the boat to Stormwind Harbor|goto Stormwind City|noway|c
	step //178
		goto Stormwind City,71,72.5
		.talk Dungar Longdrink##352
		..fpath Stormwind City
	step //179
		goto 69,30.9|n
		'Ride the train to Ironforge|goto Ironforge|noway|c
	step //180
		goto Ironforge,55.5,47.7
		.talk Gryth Thurden##1573
		..fpath Ironforge
	step //181
		'Go outside to Dun Morogh|goto Dun Morogh|noway|c
	step //182
		goto Dun Morogh,68.7,56
		.talk Senator Mehr Stonehallow##1977
		..accept The Public Servant##433
	step //183
		goto 69.1,56.3
		.talk Foreman Stonebrow##1254
		..accept Those Blasted Troggs!##432
	step //184
		'Go inside the cave to 70.7,56.5|goto 70.7,56.5
		.kill 6 Rockjaw Skullthumper|q 432/1
		.kill 10 Rockjaw Bonesnapper|q 433/1
	step //185
		'Go outside to 68.7,56|goto 68.7,56
		.talk Senator Mehr Stonehallow##1977
		..turnin The Public Servant##433
	step //186
		goto 69.1,56.3
		.talk Foreman Stonebrow##1254
		..turnin Those Blasted Troggs!##432
	step //187
		'Go east to Loch Modan|goto Loch Modan|noway|c
	step //188
		goto Loch Modan,33.9,51
		.talk Thorgrum Borrelson##1572
		..fpath Thelsamar
	step //189
		goto 34.8,47.1
		.talk Mountaineer Kadrell##1340
		..'He wanders around town
		..accept Rat Catching##416
		..accept Mountaineer Stormpike's Task##1339
	step //190
		home Thelsamar
	step //191
		goto 34.8,49.3
		.talk Vidra Hearthstove##1963
		..accept Thelsamar Blood Sausages##418
	step //192
		goto 37.4,38.9
		.from Mountain Boar##1190+, Elder Black Bear##1186+, Forest Lurker##1195+
		.get 3 Boar Intestines|q 418/1
		.get 3 Bear Meat|q 418/2
		.get 3 Spider Ichor|q 418/3
	step //193
		goto 24.5,33.6
		.from Tunnel Rat Scout##1173+, Tunnel Rat Forager##1176+, Tunnel Rat Kobold##1202+, Tunnel Rat Vermin##1172+
		.get 12 Tunnel Rat Ear|q 416/1
	step //194
		goto 24.8,18.4
		.talk Mountaineer Stormpike##1343
		..turnin Mountaineer Stormpike's Task##1339
		..accept Stormpike's Order##1338
	step //195
		'Hearth to Thelsamar|goto Loch Modan,35.5,48.3,0.5|use Hearthstone##6948|noway|c
	step //196
		goto 34.8,49.3
		.talk Vidra Hearthstove##1963
		..turnin Thelsamar Blood Sausages##418
	step //197
		goto 34.8,47.1
		.talk Mountaineer Kadrell##1340
		..turnin Rat Catching##416
	step //198
		goto 22.1,73.1
		.talk Mountaineer Cobbleflint##1089
		..accept In Defense of the King's Lands (1)##224
	step //199
		goto 23.2,73.7
		.talk Captain Rugelfuss##1092
		..accept The Trogg Threat##267
	step //200
		goto 31.1,70.7
		.kill 10 Stonesplinter Trogg|q 224/1
		.kill 10 Stonesplinter Scout|q 224/2
		.from Stonesplinter Scout##1162+, Stonesplinter Trogg##1161+
		.get 8 Trogg Stone Tooth|q 267/1
	step //201
		goto 22.1,73.1
		.talk Mountaineer Cobbleflint##1089
		..turnin In Defense of the King's Lands (1)##224
	step //202
		goto 23.2,73.7
		.talk Captain Rugelfuss##1092
		..turnin The Trogg Threat##267
	step //203
		ding 13
	step //204
		goto 33.9,51
		.talk Thorgrum Borrelson##1572
		'Fly to Stormwind|goto Stormwind City|noway|c
	step //205
		goto Stormwind City,64.6,37.2
		.talk Furen Longbeard##5413
		..turnin Stormpike's Order##1338
	step //206
		'Go outside to Elwynn Forest|goto Elwynn Forest|noway|c
	step //207
		goto Elwynn Forest,42.1,65.9
		.talk Marshal Dughan##240
		..accept Report to Gryan Stoutmantle##109
	step //208
		'Go southwest to Westfall|goto Westfall|noway|c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Gnome (1-13)",[[
	author support@zygorguides.com
	defaultfor Gnome
	next Zygor's Alliance Leveling Guides\\Main Guide (13-20)
	startlevel 1
	step //1
		  goto Dun Morogh,29.9,71.9
		.talk Sten Stoutarm##658
		..accept Dwarven Outfitters##179
	step //2
		goto 29,74
		.from Ragged Young Wolf##705+
		.get 8 Tough Wolf Meat|q 179/1
	step //3
		ding 2
	step //4
		goto 29.8,71.3
		.talk Sten Stoutarm##658
		..turnin Dwarven Outfitters##179
		..accept Coldridge Valley Mail Delivery (1)##233
		..accept Glyphic Memorandum##3114
		.talk Balir Frosthammer##713
		..accept A New Threat##170
		only Gnome Mage
	step //5
		goto 29.8,71.3
		.talk Sten Stoutarm##658
		..turnin Dwarven Outfitters##179
		..accept Coldridge Valley Mail Delivery (1)##233
		..accept Simple Memorandum##3112
		.talk Balir Frosthammer##713
		..accept A New Threat##170
		only Gnome Warrior
	step //6
		goto 29.8,71.3
		.talk Sten Stoutarm##658
		..turnin Dwarven Outfitters##179
		..accept Coldridge Valley Mail Delivery (1)##233
		..accept Tainted Memorandum##3115
		.talk Balir Frosthammer##713
		..accept A New Threat##170
		only Gnome Warlock
	step //7
		goto 29.8,71.3
		.talk Sten Stoutarm##658
		..turnin Dwarven Outfitters##179
		..accept Coldridge Valley Mail Delivery (1)##233
		..accept Encrypted Memorandum##3113
		.talk Balir Frosthammer##713
		..accept A New Threat##170
		only Gnome Rogue
	step //8
		goto 31,75
		.kill 6 Rockjaw Trogg|q 170/1
		.kill 6 Burly Rockjaw Trogg|q 170/2
	step //9
		goto 29.8,71.3
		.talk Balir Frosthammer##713
		..turnin A New Threat##170
	step //10
		ding 3
	step //11
		'Go inside Anvilmar to 28.5,67.7|goto 28.5,67.7
		.talk Felix Whindlebolt##8416
		..accept A Refugee's Quandary##3361
	step //12
		goto 28.7,66.4
		.talk Marryk Nurribit##944
		..turnin Glyphic Memorandum##3114
		only Gnome Mage
	step //13
		goto 28.8,67.2
		.talk Thran Khorman##912
		..turnin Simple Memorandum##3112
		only Gnome Warrior
	step //14
		goto 28.7,66.1
		.talk Alamar Grimm##460
		..turnin Tainted Memorandum##3115
		only Gnome Warlock
	step //15
		goto 28.4,67.5
		.talk Solm Hargrin##916
		..turnin Encrypted Memorandum##3113
		only Gnome Rogue
	step //16
		goto 22.6,71.4
		.talk Talin Keeneye##714
		..turnin Coldridge Valley Mail Delivery (1)##233
		..accept Coldridge Valley Mail Delivery (2)##234
		..accept The Boar Hunter##183
	step //17
		goto 22,70
		.kill 12 Small Crag Boar|q 183/1
	step //18
		goto 22.6,71.4
		.talk Talin Keeneye##714
		..turnin The Boar Hunter##183
	step //19
		goto 25,76
		.talk Grelin Whitebeard##786
		..turnin Coldridge Valley Mail Delivery (2)##234
		..accept The Troll Cave##182
	step //20
		goto 26.3,79.3
		.' Click Felix's Bucket of Bolts|tip Outside troll cave entrance on the ground next to the campfire.
		.get Felix's Bucket of Bolts|q 3361/3
		.kill 14 Frostmane Troll Whelp|q 182/1
	step //21
		ding 4
	step //22
		goto 25.1,75.7
		.talk Grelin Whitebeard##786
		..turnin The Troll Cave##182
		..accept The Stolen Journal##218
	step //23
		'Enter the troll cave at 26.8,79.8|goto 26.8,79.8|c
	step //24
		'Follow the path on the left to 30.5,80.2|goto 30.5,80.2
		.from Grik'nir the Cold##808
		.get Grelin Whitebeard's Journal|q 218/1
	step //25
		'Go outside to 22.8,79.9|goto 22.8,79.9
		.' Click Felix's Chest|tip In the troll camp on the ground, to the left directly next to the campfire.
		.get Felix's Chest|q 3361/2
	step //26
		goto 20.9,76.1
		.' Click Felix's Box|tip In the troll camp on the ground to the right of the campfire.
		.get Felix's Box|q 3361/1
	step //27
		goto 25,76
		.talk Grelin Whitebeard##786
		..turnin The Stolen Journal##218
		..accept Senir's Observations (1)##282
		.talk Nori Pridedrift##12738
		..accept Scalding Mornbrew Delivery##3364
	step //28
		goto 28.5,67.7
		.talk Felix Whindlebolt##8416
		..turnin A Refugee's Quandary##3361
	step //29
		goto 28.8,66.4
		.talk Durnan Furcutter##836
		..turnin Scalding Mornbrew Delivery##3364
		..accept Bring Back the Mug##3365
	step //30
		ding 5
	step //31
		goto 25,76
		.talk Nori Pridedrift##12738
		..turnin Bring Back the Mug##3365
	step //32
		goto 33.5,71.8
		.talk Mountaineer Thalos##1965
		..turnin Senir's Observations (1)##282
		..accept Senir's Observations (2)##420
		.talk Hands Springsprocket##6782
		..accept Supplies to Tannok##2160
	step //33
		'Go through the tunnel to the other side|goto Dun Morogh,35.6,65.8,0.3|noway|c
	step //34
		goto 46.7,53.8
		.talk Senir Whitebeard##1252
		..turnin Senir's Observations (2)##420
	step //35
		goto 46.8,52.4
		.talk Ragnar Thunderbrew##1267
		..accept Beer Basted Boar Ribs##384
	step //36
		goto 47.3,52.3
		.talk Tannok Frosthammer##6806
		..turnin Supplies to Tannok##2160
		.talk Innkeeper Belm##1247
		..buy Rhapsody Malt|goal 1 Rhapsody Malt|q 384/2
	step //37
		home Kharanos
	step //38
		goto 46,51.7
		.talk Tharek Blackstone##1872
		..accept Tools for Steelgrill##400
	step //39
		goto 50.4,49.1
		.talk Beldin Steelgrill##1376
		..turnin Tools for Steelgrill##400
	step //40
		goto 49.6,48.5
		.talk Pilot Bellowfiz##1378
		..accept Stocking Jetsteam##317
		.talk Pilot Stonegear##1377
		..accept The Grizzled Den##313
	step //41
		goto 50.1,49.4
		.talk Loslor Rudge##1694
		..accept Ammo for Rumbleshot##5541
	step //42
		goto 49.7,50.8
		.from Large Crag Boar##1126+, Crag Boar##1125+, Young Black Bear##1128+, Ice Claw Bear##1196+
		.get 4 Chunk of Boar Meat|q 317/1
		.get 6 Crag Boar Rib|q 384/1
		.get 2 Thick Bear Fur|q 317/2
	step //43
		ding 6
	step //44
		goto 44.1,57
		.' Click the crate|tip In the small camp next to a tent.
		.get Rumbleshot's Ammo|q 5541/1
	step //45
		goto 42.4,54.1
		.from Young Wendigo##1134+, Wendigo##1135+
		.get 8 Wendigo Mane|q 313/1
	step //46
		goto 40.7,65.1
		.talk Hegnar Rumbleshot##1243
		..turnin Ammo for Rumbleshot##5541
	step //47
		goto 46.8,52.4
		.talk Ragnar Thunderbrew##1267
		..turnin Beer Basted Boar Ribs##384
	step //48
		goto 49.6,48.5
		.talk Pilot Bellowfiz##1378
		..turnin Stocking Jetsteam##317
		..accept Evershine##318
		.talk Pilot Stonegear##1377
		..turnin The Grizzled Den##313
	step //49
		ding 7
	step //50
		goto 30.2,45.6
		.talk Rejold Barleybrew##1374
		..turnin Evershine##318
		..accept A Favor for Evershine##319
		..accept The Perfect Stout##315
		.talk Marleth Barleybrew##1375
		..accept Bitter Rivals##310
	step //51
		goto 27.8,48.3
		.kill 6 Ice Claw Bear|q 319/1
		.kill 8 Elder Crag Boar|q 319/2
		.kill 8 Snow Leopard|q 319/3
	step //52
		goto 30.2,45.6
		.talk Rejold Barleybrew##1374
		..turnin A Favor for Evershine##319
		..accept Return to Bellowfiz##320
	step //53
		goto 37.9,42.1|n
		.' The path up to Shimmerweed starts here|goto Dun Morogh,37.9,42.1,0.3|noway|c
	step //54
		goto 41.2,36.4
		.from Frostmane Seer##1397+
		.' Click the Shimmerweed Baskets|tip The Shimmerweed Baskets look like woven wooden baskets on the ground around this area.
		.get 6 Shimmerweed|q 315/1
	step //55
		goto 49.6,48.5
		.talk Pilot Bellowfiz##1378
		..turnin Return to Bellowfiz##320
	step //56
		ding 8
	step //57
		goto 47.3,52.3
		.talk Innkeeper Belm##1247
		..buy 1 Thunder Ale|q 308/1
	step //58
		goto 47.6,52.7
		.talk Jarven Thunderbrew##1373
		..'Give him the Thunder Ale
		.' Click the barrel next to him
		..turnin Bitter Rivals##310
		..accept Return to Marleth##311
	step //59
		goto 46.7,53.8
		.talk Senir Whitebeard##1252
		..accept Frostmane Hold##287
	step //60
		goto 45.8,49.4
		.talk Razzle Sprysprocket##1269
		..accept Operation Recombobulation##412
	step //61
		goto 30.2,45.6
		.talk Rejold Barleybrew##1374
		..turnin The Perfect Stout##315
		..accept Shimmer Stout##413
		.talk Marleth Barleybrew##1375
		..turnin Return to Marleth##311
	step //62
		goto 25,51
		.kill 5 Frostmane Headhunter|q 287/2
	step //63
		goto 21.2,52.3
		.' Explore Frostmane Hold|goal Fully explore Frostmane Hold|q 287/1|tip By the time you reach this point, you should have seen the "Explore Frostmane Hold" completed message.
	step //64
		goto 25.9,43.2
		.from Leper Gnome##1211+
		.get 8 Restabilization Cog|q 412/1
		.get 8 Gyromechanic Gear|q 412/2
	step //65
		ding 9
	step //66
		'Hearth to Kharanos|goto Dun Morogh,47.3,52.5,0.5|use Hearthstone##6948|noway|c
	step //67
		goto 45.8,49.4
		.talk Razzle Sprysprocket##1269
		..turnin Operation Recombobulation##412
	step //68
		goto 46.7,53.8
		.talk Senir Whitebeard##1252
		..turnin Frostmane Hold##287
	step //69
		goto 46.7,53.8
		.talk Senir Whitebeard##1252
		..turnin Frostmane Hold##287
		..accept The Reports##291
	step //70
		goto 63.1,49.9
		.talk Rudra Amberstill##1265
		..accept Protecting the Herd##314
	step //71
		goto 59.8,50.0|n
		.' The path up to Protecting the Herd starts here|goto Dun Morogh,59.8,50.0,0.5|noway|c
	step //72
		goto 62.6,46.1
		.from Vagash##1388
		.get Fang of Vagash|q 314/1
	step //73
		goto 63.1,49.9
		.talk Rudra Amberstill##1265
		..turnin Protecting the Herd##314
	step //74
		goto 68.7,56
		.talk Senator Mehr Stonehallow##1977
		..accept The Public Servant##433
	step //75
		goto 69.1,56.3
		.talk Foreman Stonebrow##1254
		..accept Those Blasted Troggs!##432
	step //76
		'Go inside the cave to 70.7,56.5|goto 70.7,56.5
		.kill 6 Rockjaw Skullthumper|q 432/1
		.kill 10 Rockjaw Bonesnapper|q 433/1
	step //77
		'Go outside to 68.7,56.0|goto 68.7,56.0
		.talk Senator Mehr Stonehallow##1977
		..turnin The Public Servant##433
	step //78
		goto 69.1,56.3
		.talk Foreman Stonebrow##1254
		..turnin Those Blasted Troggs!##432
	step //79
		ding 10
	step //80
		goto 47.4,52.6
		.talk Granis Swiftaxe##1229
		..accept Muren Stormpike##1679
		only Gnome Warrior
	step //81
		'Go northeast to Ironforge|goto Ironforge|noway|c
		only Gnome Warrior
	step //82
		goto Ironforge,70.8,90.3
		.talk Muren Stormpike##6114
		..turnin Muren Stormpike##1679
		..accept Vejrek##1678
		only Gnome Warrior
	step //83
		'Go outside to Dun Morogh|goto Dun Morogh|noway|c
		only Gnome Warrior
	step //84
		goto Dun Morogh,27.8,58
		.from Vejrek##6113
		.get Vejrek's Head|q 1678/1
		only Gnome Warrior
	step //85
		'Go northeast to Ironforge|goto Ironforge|noway|c
		only Gnome Warrior
	step //86
		goto Ironforge,70.8,90.3
		.talk Muren Stormpike##6114
		..turnin Vejrek##1678
		only Gnome Warrior
	step //87
		'Go outside to Dun Morogh|goto Dun Morogh|noway|c
		only Gnome Warrior
	step //88
		goto Dun Morogh,86.3,48.8
		.talk Mountaineer Barleybrew##1959
		..turnin Shimmer Stout##413
		..accept Stout to Kadrell##414
	step //89
		'Go southeast to Loch Modan|goto Loch Modan|noway|c
	step //90
		goto Loch Modan,33.9,51
		.talk Thorgrum Borrelson##1572
		..fpath Thelsamar
	step //91
		'Fly to Ironforge|goto Ironforge|noway|c
		only Gnome Warlock
	step //92
		goto Ironforge,47.6,9.3
		.talk Lago Blackwrench##6120
		..accept The Slaughtered Lamb##1715
		only Gnome Warlock
	step //93
		goto 76.9,51.2
		'Ride the tram to Stormwind City|goto Stormwind City|noway|c
		only Gnome Warlock
	step //94
		goto Stormwind City,39.2,85.3
		.talk Gakin the Darkbinder##6122
		..turnin The Slaughtered Lamb##1715
		..accept Surena Caledon##1688
		only Gnome Warlock
	step //95
		'Go outside to Elwynn Forest|goto Elwynn Forest|noway|c
		only Gnome Warlock
	step //96
		goto Elwynn Forest,71,80.8
		.from Surena Caledon##881
		.get Surena's Choker|q 1688/1
		only Gnome Warlock
	step //97
		'Go northwest to Stormwind|goto Stormwind City|noway|c
		only Gnome Warlock
	step //98
		goto Stormwind City,39.2,85.3
		.talk Gakin the Darkbinder##6122
		..turnin Surena Caledon##1688
		..accept The Binding##1689
		only Gnome Warlock
	step //99
		'Go downstairs into the catacombs to 39.1,84.3|goto 39.1,84.3
		.' Use your Bloodstone Choker while standing on the pink Summoning Circle|use Bloodstone Choker##6928
		.kill Summoned Voidwalker|q 1689/1
		only Gnome Warlock
	step //100
		'Go upstairs to 39.2,85.3|goto 39.2,85.3
		.talk Gakin the Darkbinder##6122
		..turnin The Binding##1689
		only Gnome Warlock
	step //101
		goto 69,30.9
		'Ride the train to Ironforge|goto Ironforge|noway|c
		only Gnome Warlock
	step //102
		'Fly to Thelsamar|goto Loch Modan,33.9,50.8,0.5|noway|c
		only Gnome Warlock
	step //103
		goto Loch Modan,34.8,47.1
		.talk Mountaineer Kadrell##1340
		..turnin Stout to Kadrell##414
		..accept Rat Catching##416
		..accept Mountaineer Stormpike's Task##1339
	step //104
		home Thelsamar
	step //105
		goto 34.8,49.3
		.talk Vidra Hearthstove##1963
		..accept Thelsamar Blood Sausages##418
	step //106
		goto 37.4,38.9
		.from Mountain Boar##1190+, Elder Black Bear##1186+, Forest Lurker##1195+
		.get 3 Boar Intestines|q 418/1
		.get 3 Bear Meat|q 418/2
		.get 3 Spider Ichor|q 418/3
	step //107
		goto 24.5,33.6
		.from Tunnel Rat Scout##1173+, Tunnel Rat Forager##1176+, Tunnel Rat Kobold##1202+, Tunnel Rat Vermin##1172+
		.get 12 Tunnel Rat Ear|q 416/1
	step //108
		goto 24.8,18.4
		.talk Mountaineer Stormpike##1343
		..turnin Mountaineer Stormpike's Task##1339
		..accept Stormpike's Order##1338
	step //109
		ding 11
	step //110
		'Hearth to Thelsamar|goto Loch Modan,35.5,48.3,0.5|use Hearthstone##6948|noway|c
	step //111
		goto 34.8,49.3
		.talk Vidra Hearthstove##1963
		..turnin Thelsamar Blood Sausages##418
	step //112
		goto 34.8,47.1
		.talk Mountaineer Kadrell##1340
		..turnin Rat Catching##416
	step //113
		goto 22.1,73.1
		.talk Mountaineer Cobbleflint##1089
		..accept In Defense of the King's Lands (1)##224
	step //114
		goto 23.2,73.7
		.talk Captain Rugelfuss##1092
		..accept The Trogg Threat##267
	step //115
		goto 31.1,70.7
		.kill 10 Stonesplinter Trogg|q 224/1
		.kill 10 Stonesplinter Scout|q 224/2
		.from Stonesplinter Scout##1162+, Stonesplinter Trogg##1161+
		.get 8 Trogg Stone Tooth|q 267/1
	step //116
		goto 22.1,73.1
		.talk Mountaineer Cobbleflint##1089
		..turnin In Defense of the King's Lands (1)##224
	step //117
		goto 23.2,73.7
		.talk Captain Rugelfuss##1092
		..turnin The Trogg Threat##267
	step //118
		goto 33.9,51
		.talk Thorgrum Borrelson##1572
		..'Fly to Ironforge|goto Ironforge|noway|c
	step //119
		goto Ironforge,39.5,57.5
		.talk Senator Barin Redstone##1274
		..turnin The Reports##291
	step //120
		goto 76.9,51.2|n
		'Ride the train to Stormwind|goto Stormwind City|noway|c
	step //121
		goto Stormwind City,64.6,37.2
		.talk Furen Longbeard##5413
		..turnin Stormpike's Order##1338
	step //122
		goto 71,72.5
		.talk Dungar Longdrink##352
		..fpath Stormwind City
	step //123
		goto 22.6,56.1|n
		'Ride the boat to Auberdine|goto Darkshore,32.4,43.7,1|noway|c
	step //124
		goto Darkshore,37,44.1
		.talk Wizbang Cranktoggle##3666
		..accept Buzzbox 827##983
	step //125
		home Auberdine
	step //126
		goto 36.3,45.6
		.talk Caylais Moonfeather##3841
		..fpath Auberdine
	step //127
		goto 36.6,45.6
		.talk Gwennyth Bly'Leggonde##10219
		..accept Washed Ashore (1)##3524
	step //128
		goto 39.4,43.5
		.talk Terenthis##3693
		..accept How Big a Threat? (1)##984
	step //129
		goto 37.4,40.1
		.talk Thundris Windweaver##3649
		..accept Bashal'Aran (1)##954
	step //130
		goto 36.1,47.3
		.from Pygmy Tide Crawler##2231+, Young Reef Crawler##2234+
		.get 6 Crawler Leg|q 983/1
	step //131
		ding 12
	step //132
		goto Darkshore,36.4,50.8
		.' Click the Beached Sea Creature|tip It looks like a big green rotting dinosaur laying on the beach.
		.get Sea Creature Bones|q 3524/1
	step //133
		goto 36.7,46.3
		.' Click Buzzbox 827|tip It looks like a mechanical box with levers on it sitting in the grass next to a big wooden platform.
		..turnin Buzzbox 827##983
		..accept Buzzbox 411##1001
	step //134
		goto 36.6,45.6
		.talk Gwennyth Bly'Leggonde##10219
		..turnin Washed Ashore (1)##3524
		..accept Washed Ashore (2)##4681
	step //135
		goto 32.7,47.7
		.from Darkshore Thresher##2185+
		.get 3 Thresher Eye|q 1001/1
	step //136
		goto 31.9,46.3
		.' Click the Skeletal Sea Turtle|tip It looks like a big turtle skull underwater here.
		.get Sea Turtle Remains|q 4681/1
	step //137
		goto 39.6,52.9
		.' Find a corrupt furbolg camp at this spot|goal Find a corrupt furbolg camp|q 984/1
	step //138
		goto 39.4,43.5
		.talk Terenthis##3693
		..turnin How Big a Threat? (1)##984
		..accept Thundris Windweaver##4761
	step //139
		goto 36.6,45.6
		.talk Gwennyth Bly'Leggonde##10219
		..turnin Washed Ashore (2)##4681
	step //140
		goto 37.4,40.1
		.talk Thundris Windweaver##3649
		..turnin Thundris Windweaver##4761
	step //141
		goto 44.2,36.3
		.talk Asterion##3650
		..turnin Bashal'Aran (1)##954
		..accept Bashal'Aran (2)##955
	step //142
		goto 44.6,36.9
		.from Wild Grell##2190+, Vile Sprite##2189+
		.get 8 Grell Earring|q 955/1
	step //143
		goto 44.2,36.3
		.talk Asterion##3650
		..turnin Bashal'Aran (2)##955
	step //144
		goto 42,28.6
		.' Click the Buzzbox 411|tip It's a metal box with levers on it, sitting on the beach.
		..turnin Buzzbox 411##1001
	step //145
		ding 13
	step //146
		'Hearth to Auberdine|goto Darkshore,37.0,44.1,0.5|use Hearthstone##6948|noway|c
	step //147
		goto 32.4,43.8|n
		'Ride the boat to Stormwind Harbor|goto Stormwind City|noway|c
	step //148
		'Go outside to Elwynn Forest|goto Elwynn Forest|noway|c
	step //149
		goto Elwynn Forest,42.1,65.9
		.talk Marshal Dughan##240
		..accept Report to Gryan Stoutmantle##109
	step //150
		'Go southwest to Westfall|goto Westfall|noway|c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Dwarf (1-13)",[[
	author support@zygorguides.com
	defaultfor Dwarf
	next Zygor's Alliance Leveling Guides\\Main Guide (13-20)
	startlevel 1
	step //1
		  goto Dun Morogh,29.9,71.9
		.talk Sten Stoutarm##658
		..accept Dwarven Outfitters##179
	step //2
		goto 29.8,73.8
		.from Ragged Young Wolf##705+
		.get 8 Tough Wolf Meat|q 179/1
	step //3
		ding 2
	step //4
		goto 29.8,71.3
		.talk Sten Stoutarm##658
		..turnin Dwarven Outfitters##179
		..accept Coldridge Valley Mail Delivery (1)##233
		..accept Simple Rune##3106
		.talk Balir Frosthammer##713
		..accept A New Threat##170
		only Dwarf Warrior
	step //5
		goto 29.8,71.3
		.talk Sten Stoutarm##658
		..turnin Dwarven Outfitters##179
		..accept Coldridge Valley Mail Delivery (1)##233
		..accept Encrypted Rune##3109
		.talk Balir Frosthammer##713
		..accept A New Threat##170
		only Dwarf Rogue
	step //6
		goto 29.8,71.3
		.talk Sten Stoutarm##658
		..turnin Dwarven Outfitters##179
		..accept Coldridge Valley Mail Delivery (1)##233
		..accept Hallowed Rune##3110
		.talk Balir Frosthammer##713
		..accept A New Threat##170
		only Dwarf Priest
	step //7
		goto 29.8,71.3
		.talk Sten Stoutarm##658
		..turnin Dwarven Outfitters##179
		..accept Coldridge Valley Mail Delivery (1)##233
		..accept Consecrated Rune##3107
		.talk Balir Frosthammer##713
		..accept A New Threat##170
		only Dwarf Paladin
	step //8
		goto 29.8,71.3
		.talk Sten Stoutarm##658
		..turnin Dwarven Outfitters##179
		..accept Coldridge Valley Mail Delivery (1)##233
		..accept Etched Rune##3108
		.talk Balir Frosthammer##713
		..accept A New Threat##170
		only Dwarf Hunter
	step //9
		goto 30.4,74.8
		.kill 6 Rockjaw Trogg|q 170/1
		.kill 6 Burly Rockjaw Trogg|q 170/2
	step //10
		goto 29.8,71.3
		.talk Balir Frosthammer##713
		..turnin A New Threat##170
	step// 10
		ding 3
	step //11
		goto 28.5,67.7
		.talk Felix Whindlebolt##8416
		..accept A Refugee's Quandary##3361
	step //12
		goto 28.8,67.2
		.talk Thran Khorman##912
		..turnin Simple Rune##3106
		only Dwarf Warrior
	step //13
		goto 28.4,67.5
		.talk Solm Hargrin##916
		..turnin Encrypted Rune##3109
		only Dwarf Rogue
	step //14
		goto 28.6,66.4
		.talk Branstock Khalder##837
		..turnin Hallowed Rune##3110
		only Dwarf Priest
	step //15
		goto 28.8,68.3
		.talk Bromos Grummner##926
		..turnin Consecrated Rune##3107
		only Dwarf Paladin
	step //16
		goto 29.2,67.5
		.talk Thorgas Grimson##895
		..turnin Etched Rune##3108
		only Dwarf Hunter
	step //17
		goto 22.6,71.4
		.talk Talin Keeneye##714
		..turnin Coldridge Valley Mail Delivery (1)##233
		..accept Coldridge Valley Mail Delivery (2)##234
		..accept The Boar Hunter##183
	step //18
		goto 22.0,71.3
		.kill 12 Small Crag Boar|q 183/1
	step //19
		goto 22.6,71.4
		.talk Talin Keeneye##714
		..turnin The Boar Hunter##183
	step //20
		goto 25.1,75.7
		.talk Grelin Whitebeard##786
		..turnin Coldridge Valley Mail Delivery (2)##234
		..accept The Troll Cave##182
	step //21
		goto 26.3,79.3
		.' Click Felix's Bucket of Bolts|tip Outside troll cave entrance on the ground next to the campfire.
		.get Felix's Bucket of Bolts|q 3361/3
		.kill 10 Frostmane Troll Whelp|q 182/1
	step //22
		ding 4
	step //23
		goto 25.1,75.7
		.talk Grelin Whitebeard##786
		..turnin The Troll Cave##182
		..accept The Stolen Journal##218
	step //24
		'Go into the cave at 26.8,79.8|goto 26.8,79.8|c
	step //25
		goto 30.5,80.2
		.from Grik'nir the Cold##808
		.get Grelin Whitebeard's Journal|q 218/1
	step //26
		'Go outside to 22.8,80.0|goto 22.8,80.0
		.' Click Felix's Chest|tip In the troll camp on the ground, to the left directly next to the campfire.
		.get Felix's Chest|q 3361/2
	step //27
		goto 20.9,76.1
		.' Click Felix's Box|tip In the troll camp on the ground, to the right of the campfire.
		.get Felix's Box|q 3361/1
	step //28
		goto 25.1,75.7
		.talk Grelin Whitebeard##786
		..turnin The Stolen Journal##218
		..accept Senir's Observations (1)##282
		.talk Nori Pridedrift##12738
		..accept Scalding Mornbrew Delivery##3364
	step //29
		'Go northeast to Anvilmar|goto Dun Morogh,28.8,69.8,0.3|noway|c
	step //30
		goto 28.5,67.7
		.talk Felix Whindlebolt##8416
		..turnin A Refugee's Quandary##3361
	step //31
		goto 28.8,66.4
		.talk Durnan Furcutter##836
		..turnin Scalding Mornbrew Delivery##3364
		..accept Bring Back the Mug##3365
	step //32
		ding 5
	step //33
		goto 25.0,76.0
		.talk Nori Pridedrift##12738
		..turnin Bring Back the Mug##3365
	step //34
		goto 33.5,71.8
		.talk Mountaineer Thalos##1965
		..turnin Senir's Observations (1)##282
		..accept Senir's Observations (2)##420
		.talk Hands Springsprocket##6782
		..accept Supplies to Tannok##2160
	step //35
		'Go through the tunnel to the other side|goto Dun Morogh,35.6,65.8,0.3|noway|c
	step //36
		goto 46.7,53.8
		.talk Senir Whitebeard##1252
		..turnin Senir's Observations (2)##420
	step //37
		goto 46.8,52.4
		.talk Ragnar Thunderbrew##1267
		..accept Beer Basted Boar Ribs##384
	step //38
		goto 47.3,52.3
		.talk Tannok Frosthammer##6806
		..turnin Supplies to Tannok##2160
		.talk Innkeeper Belm##1247
		..buy Rhapsody Malt|goal 1 Rhapsody Malt|q 384/2
	step //39
		home Kharanos
	step //40
		goto 50.1,49.4
		.talk Loslor Rudge##1694
		..accept Ammo for Rumbleshot##5541
	step //41
		goto 46.0,51.7
		.talk Tharek Blackstone##1872
		..accept Tools for Steelgrill##400
	step //42
		goto 50.4,49.1
		.talk Beldin Steelgrill##1376
		..turnin Tools for Steelgrill##400
	step //43
		goto 49.6,48.5
		.talk Pilot Stonegear##1377
		..accept The Grizzled Den##313
		.talk Pilot Bellowfiz##1378
		..accept Stocking Jetsteam##317
	step //44
		goto 49.7,50.8
		.from Large Crag Boar##1126+, Crag Boar##1125+, Young Black Bear##1128+, Ice Claw Bear##1196+
		.get 4 Chunk of Boar Meat|q 317/1
		.get 6 Crag Boar Rib|q 384/1
		.get 2 Thick Bear Fur|q 317/2
	step //45
		ding 6
	step //46
		goto 44.1,57
		.' Click the crate|tip In the small camp next to a tent.
		.get Rumbleshot's Ammo|q 5541/1
	step //47
		goto 42.4,54.1
		.from Young Wendigo##1134+, Wendigo##1135+
		.get 8 Wendigo Mane|q 313/1
	step //48
		goto 40.7,65.1
		.talk Hegnar Rumbleshot##1243
		..turnin Ammo for Rumbleshot##5541
	step //49
		goto 46.8,52.4
		.talk Ragnar Thunderbrew##1267
		..turnin Beer Basted Boar Ribs##384
	step //50
		goto 49.6,48.5
		.talk Pilot Stonegear##1377
		..turnin The Grizzled Den##313
		.talk Pilot Bellowfiz##1378
		..turnin Stocking Jetsteam##317
		..accept Evershine##318
	step //51
		ding 7
	step //52
		goto 30.2,45.6
		.talk Rejold Barleybrew##1374
		..turnin Evershine##318
		..accept A Favor for Evershine##319
		..accept The Perfect Stout##315
		.talk Marleth Barleybrew##1375
		..accept Bitter Rivals##310
	step //53
		goto 27.8,48.3
		.kill 6 Ice Claw Bear|q 319/1
		.kill 8 Elder Crag Boar|q 319/2
		.kill 8 Snow Leopard|q 319/3
	step //54
		goto 30.2,45.6
		.talk Rejold Barleybrew##1374
		..turnin A Favor for Evershine##319
		..accept Return to Bellowfiz##320
	step //55
		goto 37.9,42.1|n
		.' The path up to Shimmerweed starts here|goto Dun Morogh,37.9,42.1,0.3|noway|c
	step //56
		goto 41.2,36.4
		.from Frostmane Seer##1397+
		.' Click the Shimmerweed Baskets|tip The Shimmerweed Baskets look like woven wooden baskets on the ground around this area.
		.get 6 Shimmerweed|q 315/1
	step //57
		goto 49.6,48.5
		.talk Pilot Bellowfiz##1378
		..turnin Return to Bellowfiz##320
	step //58
		ding 8
	step //59
		goto 47.3,52.3
		.talk Innkeeper Belm##1247
		..buy 1 Thunder Ale|q 308/1
	step //60
		goto 47.6,52.7
		.talk Jarven Thunderbrew##1373
		..'Give him the Thunder Ale
		.' Click the barrel next to him
		..turnin Bitter Rivals##310
		..accept Return to Marleth##311
	step //61
		goto 46.7,53.8
		.talk Senir Whitebeard##1252
		..accept Frostmane Hold##287
	step //62
		goto 45.8,49.4
		.talk Razzle Sprysprocket##1269
		..accept Operation Recombobulation##412
	step //63
		goto 30.2,45.6
		.talk Rejold Barleybrew##1374
		..turnin The Perfect Stout##315
		..accept Shimmer Stout##413
		.talk Marleth Barleybrew##1375
		..turnin Return to Marleth##311
	step //64
		goto 25.1,51.1
		.kill 5 Frostmane Headhunter|q 287/2
	step //65
		goto 21.2,52.3
		.' Explore Frostmane Hold|goal Fully explore Frostmane Hold|q 287/1|tip By the time you reach this point, you should have seen the "Explore Frostmane Hold" completed message.
	step //66
		goto 25.9,43.2
		.from Leper Gnome##1211+
		.get 8 Restabilization Cog|q 412/1
		.get 8 Gyromechanic Gear|q 412/2
	step //67
		ding 9
	step //68
		'Hearth to Kharanos|goto Dun Morogh,47.3,52.5,0.5|use Hearthstone##6948|noway|c
	step //69
		goto 45.8,49.4
		.talk Razzle Sprysprocket##1269
		..turnin Operation Recombobulation##412
	step //70
		goto 46.7,53.8
		.talk Senir Whitebeard##1252
		..turnin Frostmane Hold##287
		..accept The Reports##291
	step //71
		goto 63.1,49.9
		.talk Rudra Amberstill##1265
		..accept Protecting the Herd##314
	step //72
		goto 59.8,50.0|n
		.' The path up to Protecting the Herd starts here|goto Dun Morogh,59.8,50.0,0.5|noway|c
	step //73
		goto 62.6,46.1
		.from Vagash##1388
		.get Fang of Vagash|q 314/1
	step //74
		goto 63.1,49.9
		.talk Rudra Amberstill##1265
		..turnin Protecting the Herd##314
	step //75
		goto 68.7,56
		.talk Senator Mehr Stonehallow##1977
		..accept The Public Servant##433
	step //76
		goto 69.1,56.3
		.talk Foreman Stonebrow##1254
		..accept Those Blasted Troggs!##432
	step //77
		'Go inside the cave to 70.7,56.5|goto 70.7,56.5
		.kill 6 Rockjaw Skullthumper|q 432/1
		.kill 10 Rockjaw Bonesnapper|q 433/1
	step //78
		'Go outside to 68.7,56.0|goto 68.7,56.0
		.talk Senator Mehr Stonehallow##1977
		..turnin The Public Servant##433
	step //79
		goto 69.1,56.3
		.talk Foreman Stonebrow##1254
		..turnin Those Blasted Troggs!##432
	step //80
		'Hearth to Kharanos|goto Dun Morogh,47.4,52.5,0.5|use Hearthstone##6948|noway|c
	step //81
		ding 10
	step //82
		goto 47.4,52.6
		.talk Granis Swiftaxe##1229
		..accept Muren Stormpike##1679
		only Dwarf Warrior
	step //83
		'Go northeast to Ironforge|goto Ironforge|noway|c
		only Dwarf Warrior
	step //84
		goto Ironforge,70.8,90.3
		.talk Muren Stormpike##6114
		..turnin Muren Stormpike##1679
		..accept Vejrek##1678
		only Dwarf Warrior
	step //85
		'Go outside to Dun Morogh|goto Dun Morogh|noway|c
		only Dwarf Warrior
	step //86
		goto Dun Morogh,27.8,58
		.from Vejrek##6113
		.get Vejrek's Head|q 1678/1
		only Dwarf Warrior
	step //87
		'Go northeast to Ironforge|goto Ironforge|noway|c
		only Dwarf Warrior
	step //88
		goto Ironforge,70.8,90.3
		.talk Muren Stormpike##6114
		..turnin Vejrek##1678
		only Dwarf Warrior
	step //89
		'Go outside to Dun Morogh|goto Dun Morogh|noway|c
		only Dwarf Warrior
	step //90
		goto Dun Morogh,45.8,53
		.talk Grif Wildheart##1231
		..accept Taming the Beast (1)##6064
		only Dwarf Hunter
	step //91
		goto 47.9,56.6
		.' Use your Taming Rod on a Large Crag Boar around this area|use Taming Rod##15911
		.goal Tame a Large Crag Boar|q 6064/1
		only Dwarf Hunter
	step //92
		goto 45.8,53
		.talk Grif Wildheart##1231
		..turnin Taming the Beast (1)##6064
		..accept Taming the Beast (2)##6084
		only Dwarf Hunter
	step //93
		goto 48.5,56.4
		.' Use your Taming Rod on a Snow Leopard around this area|use Taming Rod##15913
		.goal Tame a Snow Leopard|q 6084/1
		only Dwarf Hunter
	step //94
		goto 45.8,53
		.talk Grif Wildheart##1231
		..turnin Taming the Beast (2)##6084
		..accept Taming the Beast (3)##6085
		only Dwarf Hunter
	step //95
		goto 49.3,62.3
		.' Use your Taming Rod on an Ice Claw Bear around this area|use Taming Rod##15908
		.goal Tame an Ice Claw Bear|q 6085/1
		only Dwarf Hunter
	step //96
		goto 45.8,53
		.talk Grif Wildheart##1231
		..turnin Taming the Beast (3)##6085
		..accept Training the Beast##6086
		only Dwarf Hunter
	step //97
		'Go northeast to Ironforge|goto Ironforge|noway|c
		only Dwarf Hunter
	step //98
		goto Ironforge,70.9,85.8
		.talk Belia Thundergranite##10090
		..turnin Training the Beast##6086
		only Dwarf Hunter
	step //99
		'Go outside to Dun Morogh|goto Dun Morogh|noway|c
		only Dwarf Hunter
	step //100
		goto Dun Morogh,86.3,48.8
		.talk Mountaineer Barleybrew##1959
		..turnin Shimmer Stout##413
		..accept Stout to Kadrell##414
	step //101
		'Go southeast to Loch Modan|goto Loch Modan|noway|c
	step //102
		goto Loch Modan,33.9,51
		.talk Thorgrum Borrelson##1572
		..fpath Thelsamar
	step //103
		goto 34.8,47.1
		.talk Mountaineer Kadrell##1340
		..turnin Stout to Kadrell##414
		..accept Rat Catching##416
		..accept Mountaineer Stormpike's Task##1339
	step //104
		home Thelsamar
	step //105
		goto 34.8,49.3
		.talk Vidra Hearthstove##1963
		..accept Thelsamar Blood Sausages##418
	step //106
		goto 37.4,38.9
		.from Mountain Boar##1190+, Elder Black Bear##1186+, Forest Lurker##1195+
		.get 3 Boar Intestines|q 418/1
		.get 3 Bear Meat|q 418/2
		.get 3 Spider Ichor|q 418/3
	step //107
		goto 24.5,33.6
		.from Tunnel Rat Scout##1173+, Tunnel Rat Forager##1176+, Tunnel Rat Kobold##1202+, Tunnel Rat Vermin##1172+
		.get 12 Tunnel Rat Ear|q 416/1
	step //108
		ding 11
	step //109
		goto 24.8,18.4
		.talk Mountaineer Stormpike##1343
		..turnin Mountaineer Stormpike's Task##1339
		..accept Stormpike's Order##1338
	step //110
		'Hearth to Thelsamar|goto Loch Modan,35.5,48.3,0.5|use Hearthstone##6948|noway|c
	step //111
		goto 34.8,49.3
		.talk Vidra Hearthstove##1963
		..turnin Thelsamar Blood Sausages##418
	step //112
		goto 34.8,47.1
		.talk Mountaineer Kadrell##1340
		..turnin Rat Catching##416
	step //113
		goto 22.1,73.1
		.talk Mountaineer Cobbleflint##1089
		..accept In Defense of the King's Lands (1)##224
	step //114
		goto 23.2,73.7
		.talk Captain Rugelfuss##1092
		..accept The Trogg Threat##267
	step //115
		goto 31.1,70.7
		.kill 10 Stonesplinter Trogg|q 224/1
		.kill 10 Stonesplinter Scout|q 224/2
		.from Stonesplinter Scout##1162+, Stonesplinter Trogg##1161+
		.get 8 Trogg Stone Tooth|q 267/1
	step //116
		goto 22.1,73.1
		.talk Mountaineer Cobbleflint##1089
		..turnin In Defense of the King's Lands (1)##224
	step //117
		goto 23.2,73.7
		.talk Captain Rugelfuss##1092
		..turnin The Trogg Threat##267
	step //118
		goto 33.9,51|n
		.talk Thorgrum Borrelson##1572
		'Fly to Ironforge|goto Ironforge|noway|c
	step //119
		goto Ironforge,39.5,57.5
		.talk Senator Barin Redstone##1274
		..turnin The Reports##291
	step //120
		goto 76.9,51.2|n
		'Ride the train to Stormwind|goto Stormwind City|noway|c
	step //121
		goto Stormwind City,64.6,37.2
		.talk Furen Longbeard##5413
		..turnin Stormpike's Order##1338
	step //122
		goto 71,72.5
		.talk Dungar Longdrink##352
		..fpath Stormwind City
	step //123
		goto 22.6,56.1|n
		'Ride the boat to Auberdine|goto Darkshore,32.4,43.7,1|noway|c
	step //124
		goto Darkshore,37,44.1
		.talk Wizbang Cranktoggle##3666
		..accept Buzzbox 827##983
	step //125
		home Auberdine
	step //126
		goto 36.3,45.6
		.talk Caylais Moonfeather##3841
		..fpath Auberdine
	step //127
		goto 36.6,45.6
		.talk Gwennyth Bly'Leggonde##10219
		..accept Washed Ashore (1)##3524
	step //128
		goto 39.4,43.5
		.talk Terenthis##3693
		..accept How Big a Threat? (1)##984
	step //129
		goto 37.4,40.1
		.talk Thundris Windweaver##3649
		..accept Bashal'Aran (1)##954
	step //130
		goto 36.1,47.3
		.from Pygmy Tide Crawler##2231+, Young Reef Crawler##2234+
		.get 6 Crawler Leg|q 983/1
	step //131
		ding 12
	step //132
		goto 32.4,43.8|n
		'Ride the boat to Stormwind Harbor|goto Stormwind City|noway|c
		only Dwarf Paladin
	step //133
		goto 69,30.9|n
		'Ride the train to Ironforge|goto Ironforge|noway|c
		only Dwarf Paladin
	step //134
		goto Ironforge,27.6,12.2
		.talk Tiza Battleforge##6179
		..turnin The Tome of Divinity##3000
		..Click the Tome of Divinity|use Tome of Divinity##6775
		..accept The Tome of Divinity##1646
		.talk Tiza Battleforge##6179
		..turnin The Tome of Divinity##1646
		..accept The Tome of Divinity##1647
		only Dwarf Paladin
	step //135
		goto 31.8,78.2
		.talk John Turner
		..turnin The Tome of Divinity##1647
		..accept The Tome of Divinity##1648
		..If you don't have 10 Linen Cloth, buy it from the Auction House|get 10 Linen Cloth|n
		..turnin The Tome of Divinity##1648
		..accept The Tome of Divinity##1778
		only Dwarf Paladin
	step //136
		goto 27.6,12.2
		.talk Tiza Battleforge##6179
		..turnin The Tome of Divinity##1778
		..accept The Tome of Divinity##1779
		only Dwarf Paladin
	step //137
		'Go outside to Dun Morogh|goto Dun Morogh|noway|c
		only Dwarf Paladin
	step //138
		goto Dun Morogh,78.3,58.1
		.Use the Symbol of Life on Narm Faulk|use Symbol of Life##6866
		.talk to Narm Faulk
		..turnin The Tome of Divinity##1783
		..accept The Tome of Divinity##1784
		only Dwarf Paladin
	step //139
		goto 77.9,58.4
		.from Dark Iron Spy##6123+
		.get Dark Iron Script|q 1784/1
		only Dwarf Paladin
	step //140
		'Go to Ironforge|goto Ironforge|noway|c
		only Dwarf Paladin
	step //141
		goto Ironforge,23.5,8.3
		.talk Muiredon Battleforge##6179
		..turnin The Tome of Divinity##1784
		..accept The Tome of Divinity##1785
		only Dwarf Paladin
	step //142
		goto 27.6,12.2
		.talk Tiza Battleforge##6179
		..turnin The Tome of Divinity##1785
		only Dwarf Paladin
	step //143
		'Ride the train to Stormwind|goto Stormwind City|noway|c
		only Dwarf Paladin
	step //144
		goto 21.6,54|noway|n
		.' Ride the boat to Auberdine|goto Darkshore|noway|c
		only Dwarf Paladin
	step //145
		goto 36.4,50.8
		.' Click the Beached Sea Creature|tip It looks like a big green rotting dinosaur laying on the beach.
		.get Sea Creature Bones|q 3524/1
	step //146
		goto 36.7,46.3
		.' Click Buzzbox 827|tip It looks like a mechanical box with levers on it sitting in the grass next to a big wooden platform.
		..turnin Buzzbox 827##983
		..accept Buzzbox 411##1001
	step //147
		goto 36.6,45.6
		.talk Gwennyth Bly'Leggonde##10219
		..turnin Washed Ashore (1)##3524
		..accept Washed Ashore (2)##4681
	step //148
		goto 32.7,47.7
		.from Darkshore Thresher##2185+
		.get 3 Thresher Eye|q 1001/1
	step //149
		goto 31.9,46.3
		.' Click the Skeletal Sea Turtle|tip It looks like a big turtle skull underwater here.
		.get Sea Turtle Remains|q 4681/1
	step //150
		goto 39.6,52.9
		.' Find a corrupt furbolg camp at this spot|goal Find a corrupt furbolg camp|q 984/1
	step //151
		goto 39.4,43.5
		.talk Terenthis##3693
		..turnin How Big a Threat? (1)##984
		..accept Thundris Windweaver##4761
	step //152
		goto 36.6,45.6
		.talk Gwennyth Bly'Leggonde##10219
		..turnin Washed Ashore (2)##4681
	step //153
		goto 37.4,40.1
		.talk Thundris Windweaver##3649
		..turnin Thundris Windweaver##4761
	step //154
		goto 44.2,36.3
		.talk Asterion##3650
		..turnin Bashal'Aran (1)##954
		..accept Bashal'Aran (2)##955
	step //155
		goto 44.6,36.9
		.from Wild Grell##2190+, Vile Sprite##2189+
		.get 8 Grell Earring|q 955/1
	step //156
		goto 44.2,36.3
		.talk Asterion##3650
		..turnin Bashal'Aran (2)##955
	step //157
		goto 42,28.6
		.' Click the Buzzbox 411|tip It's a metal box with levers on it, sitting on the beach.
		..turnin Buzzbox 411##1001
	step //158
		ding 13
	step //159
		'Hearth to Auberdine|goto Darkshore,37.0,44.1,0.5|use Hearthstone##6948|noway|c
	step //160
		goto 32.4,43.8|n
		'Ride the boat to Stormwind Harbor|goto Stormwind City|noway|c
	step //161
		'Go outside to Elwynn Forest|goto Elwynn Forest|noway|c
	step //162
		goto Elwynn Forest,42.1,65.9
		.talk Marshal Dughan##240
		..accept Report to Gryan Stoutmantle##109
	step //163
		'Go southwest to Westfall|goto Westfall|noway|c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Draenei (1-13)",[[
	author support@zygorguides.com
	defaultfor Draenei
	next Zygor's Alliance Leveling Guides\\Main Guide (13-20)
	startlevel 1
	step //1
		goto Azuremyst Isle,84.2,43.0
		.talk Megelon##16475
		..accept You Survived!##9279
	step //2
		goto 80.4,45.9
		.talk Proenitus##16477
		..turnin You Survived!##9279
		..accept Replenishing the Healing Crystals##9280
	step //3
		goto 79.1,46.5
		.talk Botanist Taerix##16514
		..accept Volatile Mutations##10302
	step //4
		goto 78.6,45.4
		.kill 8 Volatile Mutation|q 10302/1
		.from Vale Moth##16520+
		.get 8 Vial of Moth Blood|q 9280/1
	step //5
		ding 2
	step //6
		goto 79.1,46.5
		.talk Botanist Taerix##16514
		..turnin Volatile Mutations##10302
		..accept What Must Be Done...##9293
		.talk Apprentice Vishael##20233
		..accept Botanical Legwork##9799
	step //7
		goto 80.4,45.9
		.talk Proenitus##16477
		..turnin Replenishing the Healing Crystals##9280
		..accept Urgent Delivery!##9409
	step //8
		goto 80.1,48.8
		.talk Zalduun##16502
		..turnin Urgent Delivery!##9409
		..accept Rescue the Survivors!##9283
	step //9
		goto 79.6,48.8
		.talk Valaatu##16500
		..accept Mage Training##9290|instant
		only Draenei Mage
	step //10
		goto 79.6,49.4
		.talk Kore##16503
		..accept Warrior Training##9289|instant
		only Draenei Warrior
	step //11
		goto 79.3,49.1
		.talk Firmanvaar##17089
		..accept Shaman Training##9421|instant
		only Draenei Shaman
	step //12
		goto 80.1,48.8
		.talk Zalduun##16502
		..accept Priest Training##9291|instant
		only Draenei Priest
	step //13
		goto 79.7,48.2
		.talk Aurelon##16501
		..accept Paladin Training##9287|instant
		only Draenei Paladin
	step //14
		goto 79.9,49.7
		.talk Keilnei##16499
		..accept Hunter Training##9288|instant
		only Draenei Hunter
	step //15
		goto 79.5,51.4
		.talk Technician Zhanaa##17071
		..accept Spare Parts##9305
		.talk Vindicator Aldar##16535
		..accept Inoculation##9303
	step //16
		goto 80.3,42.4
		.' Use your racial ability, Gift of the Naaru, on a Draenei Survivor|cast Gift of the Naaru|tip They are Draeneis that are laying on the ground in this area.  I found a Dranei Survivor here, but you may have to search around the area.
		.' Save a Draenei Survivor|goal Draenei Survivors Saved|q 9283/1
	step //17
		goto 80.1,48.8
		.talk Zalduun##16502
		..turnin Rescue the Survivors!##9283
	step //18
		ding 3
	step //19
		goto 74.9,50.4
		.from Mutated Root Lasher##16517+
		.get 10 Lasher Sample|q 9293/1
		.' Click the Corrupted Flowers|tip The Corrupted Flowers are tall red flowers around this area.
		.get 3 Corrupted Flower|q 9799/1
	step //20
		goto 79.1,46.5
		.talk Botanist Taerix##16514
		..turnin What Must Be Done...##9293
		..accept Healing the Lake##9294
		.talk Apprentice Vishael##20233
		..turnin Botanical Legwork##9799
	step //21
		goto 77.3,58.7
		.' Click the Irradiated Power Crystal|tip It's a huge purple crystal sitting in the lake.
		.' Disperse the Neutralizing Agent|goal Disperse the Neutralizing Agent|q 9294/1
	step //22
		goto 78.4,60.4
		.' Use your Inoculating Crystal on Nestlewood Owlkins|use Inoculating Crystal##22962
		.' Inoculate 6 Nestlewood Owlkins|goal 6 Nestlewood Owlkin inoculated|q 9303/1
	step //23
		goto 84.7,65.6
		.' Go through the tunnel into the small clearing
		.' Click the Emitter Spare Parts|tip They look like purple crystal guns sitting on the ground.
		.get 4 Emitter Spare Part|q 9305/1
	step //24
		'Hearth to Ammen Vale|goto Azuremyst Isle,84.3,43.0,0.5|use Hearthstone##6948|noway|c
	step //25
		goto 79.1,46.5
		.talk Botanist Taerix##16514
		..turnin Healing the Lake##9294
	step //26
		ding 4
	step //27
		goto 79.3,49.1
		.talk Firmanvaar##17089
		..accept Call of Earth (1)##9449
		only Draenei Shaman
	step //28
		goto 74.0,42.0|n
		.' The path over to the Spirit of the Vale starts here|goto Azuremyst Isle,74.0,42.0,0.5|noway|c
		only Draenei Shaman
	step //29
		goto 71.3,39
		.talk Spirit of the Vale##17087
		..turnin Call of Earth (1)##9449
		..accept Call of Earth (2)##9450
		only Draenei Shaman
	step //30
		goto 70.8,37.8
		.kill 4 Restless Spirit of Earth|q 9450/1
		only Draenei Shaman
	step //31
		goto 71.3,39
		.talk Spirit of the Vale##17087
		..turnin Call of Earth (2)##9450
		..accept Call of Earth (3)##9451
		only Draenei Shaman
	step //32
		goto 79.3,49.1
		.talk Firmanvaar##17089
		..turnin Call of Earth (3)##9451
		only Draenei Shaman
	step //33
		goto 79.5,51.4
		.talk Technician Zhanaa##17071
		..turnin Spare Parts##9305
		.talk Vindicator Aldar##16535
		..turnin Inoculation##9303
		..accept The Missing Scout##9309
	step //34
		goto 72,60.8
		.talk Tolaan##16546
		..turnin The Missing Scout##9309
		..accept The Blood Elves##10303
	step //35
		goto 71.3,60.7
		.kill 10 Blood Elf Scout|q 10303/1
	step //36
		goto 72,60.8
		.talk Tolaan##16546
		..turnin The Blood Elves##10303
		..accept Blood Elf Spy##9311
	step //37
		goto 69.3,65.7
		.kill Surveyor Candress##16522|q 9311/1
		.'Get the Blood Elf Plans
		.' Click the Blood Elf Plans|use Blood Elf Plans##24414
		..accept Blood Elf Plans##9798
	step //38
		goto 79.5,51.4
		.talk Vindicator Aldar##16535
		..turnin Blood Elf Spy##9311
		..turnin Blood Elf Plans##9798
		..accept The Emitter##9312
		.talk Technician Zhanaa##17071
		..turnin The Emitter##9312
		..accept Travel to Azure Watch##9313
	step //39
		ding 5
	step //40
		'Go west through the mountains|goto Azuremyst Isle,67.6,53.7,0.5
	step //41
		goto 64.5,54
		.talk Aeun##16554
		..accept Word from Azure Watch##9314
	step //42
		goto 61.1,54.2
		.talk Diktynna##17101
		..accept Red Snapper - Very Tasty!##9452
	step //43
		goto 61.9,51.6
		.' Use your Draenei Fishing Net next to the Schools of Red Snapper|use Draenei Fishing Net##23654|tip They look like little round schools of fish in the water.
		.get 10 Red Snapper|q 9452/1
	step //44
		goto 61.1,54.2
		.talk Diktynna##17101
		..turnin Red Snapper - Very Tasty!##9452
		..accept Find Acteon!##9453
	step //45
		goto 49.8,51.9
		.talk Acteon##17110
		..turnin Find Acteon!##9453
		..accept The Great Moongraze Hunt (1)##9454
	step //46
		goto 48.4,51.8
		.talk Anchorite Fateema##17214
		..accept Medicinal Purpose##9463
	step //47
		goto 48.7,50.3
		.talk Technician Dyvuun##16551
		..turnin Travel to Azure Watch##9313
	step //48
		goto 48.3,49.2
		.talk Caregiver Chellan##16553
		..turnin Word from Azure Watch##9314
	step //49
		home Azure Watch
	step //50
		goto 50.3,56.6
		.from Moongraze Stag##17200+
		.get 6 Moongraze Stag Tenderloin|q 9454/1
		.from Root Trapper##17196+
		.get 8 Root Trapper Vine|q 9463/1
	step //51
		ding 6
	step //52
		goto 47,70.2
		.talk Admiral Odesyus##17240
		..accept A Small Start##9506
	step //53
		goto 46.7,70.5
		.talk "Cookie" McWeaksauce##17246
		..accept Cookie's Jumbo Gumbo##9512
	step //54
		goto 47.6,73
		.from Skittering Crawler##17216+
		.get 6 Skittering Crawler Meat|q 9512/1
	step //55
		goto 46.7,70.5
		.talk "Cookie" McWeaksauce##17246
		..turnin Cookie's Jumbo Gumbo##9512
	step //56
		goto 47,70.2
		.talk Priestess Kyleen Il'dinare##17241
		..accept Reclaiming the Ruins##9513
	step //57
		goto 47.2,70
		.talk Archaeologist Adamant Ironheart##17242
		..accept Precious and Fragile Things Need Special Handling##9523
	step //58
		goto 58.6,66.4
		.' Click the Nautical Map sitting on a box under a green canopy
		.get Nautical Map##23739|q 9506/2
	step //59
		goto 59.6,67.6
		.' Click the Nautical Compass under the blue canopy with a green stripe on it
		.get Nautical Compass##23738|q 9506/1
	step //60
		goto 47,70.2
		.talk Admiral Odesyus##17240
		..turnin A Small Start##9506
		..accept I've Got a Plant##9530
	step //61
		ding 7
	step //62
		goto 45.9,65.7
		.' Click a Hollowed Out Tree|tip They look like tall, skinny tree stumps around this area.
		.get Hollowed Out Tree|q 9530/1
		.' Click the small piles of purple leaves
		.get 5 Pile of Leaves|q 9530/2
	step //63
		goto 47,70.2
		.talk Admiral Odesyus##17240
		..turnin I've Got a Plant##9530
		..accept Tree's Company##9531
	step //64
		goto 36.1,77
		.' Click the white glowing orbs
		.get 8 Ancient Relic|q 9523/1
		.kill 5 Wrathscale Myrmidon|q 9513/1
		.kill 5 Wrathscale Naga|q 9513/2
		.kill 5 Wrathscale Siren|q 9513/3
		.from Wrathscale Myrmidon##17194+, Wrathscale Naga##17193+, Wrathscale Siren##17195+
		.' Get a Rune Covered Tablet
		.' Click the Rune Covered Tablet|use Rune Covered Tablet##23759
		..accept Rune Covered Tablet##9514
	step //65
		goto 18.5,84.3
		.' Use your Tree Disguise Kit next to the Naga Flag on the beach|use Tree Disguise Kit##23792
		.' Watch the conversation
		.' Uncover the Traitor|goal The Traitor Uncovered|q 9531/1
	step //66
		'Hearth to Azure Watch|goto Azuremyst Isle,49.2,50.8,2|use Hearthstone##6948|noway|c
	step //67
		goto 48.4,51.8
		.talk Anchorite Fateema##17214
		..turnin Medicinal Purpose##9463
		.talk Daedal##17215
		..accept An Alternative Alternative##9473
	step //68
		goto 49.8,51.9
		.talk Acteon##17110
		..turnin The Great Moongraze Hunt (1)##9454
		..accept The Great Moongraze Hunt (2)##10324
	step //69
		goto 50.6,46.2
		.from Moongraze Buck##17201+
		.get 6 Moongraze Buck Hide|q 10324/1
		.from Infected Nightstalker Runt##17202+
		.' Get a Faintly Glowing Crystal
		.' Click the Faintly Glowing Crystal|use Faintly Glowing Crystal##23678
		..accept Strange Findings##9455
	step //70
		goto 50.4,37.1
		.' Click the Azure Snapdragons|tip They are tall flowers with big bulbs that puff smoke at the base of trees.
		.get 5 Azure Snapdragon Bulb|q 9473/1
	step //71
		goto 47.1,50.6
		.talk Exarch Menelaous##17116
		..turnin Strange Findings##9455
		..accept Nightstalker Clean Up, Isle 2...##9456
	step //72
		goto 48.4,51.8
		.talk Daedal##17215
		..turnin An Alternative Alternative##9473
	step //73
		ding 8
	step //74
		goto 49,51.1
		.talk Dulvi##17488
		..accept The Missing Fisherman##10428
	step //75
		goto 49.8,51.9
		.talk Acteon##17110
		..turnin The Great Moongraze Hunt (2)##10324
	step //76
		goto 45.7,43.9
		.kill 8 Infected Nightstalker Runt|q 9456/1
	step //77
		goto 47.1,50.6
		.talk Exarch Menelaous##17116
		..turnin Nightstalker Clean Up, Isle 2...##9456
	step //78
		goto 47,70.2
		.talk Admiral Odesyus##17240
		..turnin Tree's Company##9531
		..accept Show Gnomercy##9537
		.talk Priestess Kyleen Il'dinare##17241
		..turnin Reclaiming the Ruins##9513
		..turnin Rune Covered Tablet##9514
		..accept Warlord Sriss'tiz##9515
	step //79
		goto 47.2,70
		.talk Archaeologist Adamant Ironheart##17242
		..turnin Precious and Fragile Things Need Special Handling##9523
	step //80
		goto 48.2,72.5
		.from Engineer "Spark" Overgrind##17243
		.get Traitor's Communication|q 9537/1
	step //81
		goto 47,70.2
		.talk Admiral Odesyus##17240
		..turnin Show Gnomercy##9537
		..accept Deliver Them From Evil...##9602
	step //82
		goto 47.1,50.6
		.talk Exarch Menelaous##17116
		..turnin Deliver Them From Evil...##9602
	step //83
		ding 9
	step //84
		goto 49.40,51.0
		.talk Cryptographer Aurren##17232
		..accept Learning the Language##9538
		.' Click the Stillpine Furbolg Language Primer in your bags|use Stillpine Furbolg Language Primer##23818
		.' Click the Totem of Akida next to Cryptographer Aurren|tip In the middle of town, next to the giant bone altar thing with the huge pink crystal in it.
		..turnin Learning the Language##9538
		..accept Totem of Coo##9539
	step //85
		'Follow the ghost furbolg as he runs up the hill northeast to 55.2,41.6|goto 55.2,41.6
		.' Click the Totem of Coo
		..turnin Totem of Coo##9539
		..accept Totem of Tikti##9540
	step //86
		'Follow the ghost furbolg to the edge of the cliff
		.' He will give you wings
		.' Jump off the cliff and glide to the ground to 64.5,39.8|goto 64.5,39.8|n
		.' Click the Totem of Tikti
		..turnin Totem of Tikti##9540
		..accept Totem of Yor##9541
	step //87
		'Follow the ghost furbolg to the river
		.' He will give you a swim speed buff
		.' Swim south to 63,67.9|goto 63,67.9|n
		.' Click the Totem of Yor underwater
		..turnin Totem of Yor##9541
		..accept Totem of Vark##9542
	step //88
		'Follow the ghost furbolg out of the water
		.' He will turn you into a ghost panther
		.' Follow him as he runs northwest to 28.1,62.4|goto 28.1,62.4|n
		.' Click the Totem of Vark
		..turnin Totem of Vark##9542
		..accept The Prophecy of Akida##9544
	step //89
		goto 28.5,66.4
		.from Bristlelimb Ursa##17185+, Bristlelimb Windcaller##17184+, Bristlelimb Furbolg##17183+
		.collect 8 Bristlelimb Key##23801|n
		.' Click the yellow cages
		.' Free 8 Stillpine Captives|goal 8 Stillpine Captive Freed|q 9544/1
	step //90
		goto 27,76.7|n
		.' The path down to 'Warlord Sriss'tiz' starts here
		.' Go inside the cave|goto Azuremyst Isle,27.0,76.7,0.3|noway|c
	step //91
		'Follow the path to the bottom of the cave to 25.2,74.2|goto 25.2,74.2
		.kill Warlord Sriss'tiz|q 9515/1
	step //92
		'Leave the cave|goto Azuremyst Isle,27.0,76.7,0.3|noway|c
	step //93
		goto 16.6,94.5
		.talk Cowlen##17311
		..turnin The Missing Fisherman##10428
		..accept All That Remains##9527
	step //94
		goto 14.8,92
		.from Raving Owlbeast##17188+, Aberrant Owlbeast##17187+, Deranged Owlbeast##17186+
		.get Remains of Cowlen's Family|q 9527/1
	step //95
		goto 16.6,94.5
		.talk Cowlen##17311
		..turnin All That Remains##9527
	step //96
		'Hearth to Azure Watch|goto Azuremyst Isle,49.2,50.8,2|use Hearthstone##6948|noway|c
	step //97
		goto 49.41,51.0
		.talk Arugoo the Stillpine##17114
		..turnin The Prophecy of Akida##9544
		..accept Stillpine Hold##9559
	step //98
		goto 47,70.2
		.talk Priestess Kyleen Il'dinare##17241
		..turnin Warlord Sriss'tiz##9515
	step //99
		ding 10
	step //100
		goto 50,50.5
		.talk Ruada##17480
		..accept Strength of One##9582
		only Draenei Warrior
	step //101
		goto 53.9,10
		.' Click the Ravager Cage
		.kill Death Ravager|q 9582/1
		only Draenei Warrior
	step //102
		goto 50,50.5
		.talk Ruada##17480
		..turnin Strength of One##9582
		..accept Behomat##10350
		only Draenei Warrior
	step //103
		'Go northwest to the Exodar|goto The Exodar|noway|c
		only Draenei Warrior
	step //104
		goto The Exodar,55.6,82.3
		.talk Behomat##17120
		..turnin Behomat##10350
		only Draenei Warrior
	step //105
		'Go outside to Azuremyst Isle|goto Azuremyst Isle|noway|c
		only Draenei Warrior
	step //106
		'Go northwest to the Exodar|goto The Exodar|noway|c
		only Draenei Shaman
	step //107
		goto The Exodar,32.3,23.9
		.talk Sulaa##17219
		..accept Call of Fire (1)##9462
		only Draenei Shaman
	step //108
		'Go outside to Azuremyst Isle|goto Azuremyst Isle|noway|c
		only Draenei Shaman
	step //109
		goto Azuremyst Isle,48.1,50.4
		.talk Tuluun##17212
		..turnin Call of Fire (1)##9462
		..accept Call of Fire (2)##9464
		only Draenei Shaman
	step //110
		goto 59.5,18.1
		.talk Temper##17205
		..turnin Call of Fire (2)##9464
		..accept Call of Fire (3)##9465
		only Draenei Shaman
	step //111
		'Go west into Stillpine Hold to 46.1,16.6|goto 46.1,16.6
		.from Crazed Wildkin##17189+
		.get Ritual Torch|q 9465/1
		only Draenei Shaman
	step //112
		'Leave the cave and go east to 59.5,18.1|goto 59.5,18.1
		.talk Temper##17205
		..turnin Call of Fire (3)##9465
		..accept Call of Fire (4)##9467
		only Draenei Shaman
	step //113
		goto 11.4,82.3
		.' Unpack the Ritual Torch and Orb of Returning from your Fireproof Satchel in your bags|use Fireproof Satchel##24336
		.' Click the Wickerman Effigy to summon Hauteur
		.from Hauteur##17206
		.get Hauteur's Ashes|q 9467/1
		.' Click the Orb of Returning in your bags to return to Temper|goto 59.5,18.1,1|c|use Orb of Returning##24335
		only Draenei Shaman
	step //114
		goto 59.5,18.1
		.talk Temper##17205
		..turnin Call of Fire (4)##9467
		..accept Call of Fire (5)##9468
		only Draenei Shaman
	step //115
		goto 48.1,50.4
		.talk Tuluun##17212
		..turnin Call of Fire (5)##9468
		..accept Call of Fire (6)##9461
		only Draenei Shaman
	step //116
		'Go northwest to the Exodar|goto The Exodar|noway|c
		only Draenei Shaman
	step //117
		goto The Exodar,32.8,54.5
		.talk Prophet Velen##17468
		..turnin Call of Fire (6)##9461
		..accept Call of Fire (7)##9555
		only Draenei Shaman
	step //118
		goto 31.4,27.7
		.talk Farseer Nobundo##17204
		..turnin Call of Fire (7)##9555
		only Draenei Shaman
	step //119
		'Go outside to Azuremyst Isle|goto Azuremyst Isle|noway|c
		only Draenei Shaman
	step //120
		goto Azuremyst Isle,49.8,51.9
		.talk Acteon##17110
		..accept Seek Huntress Kella Nightbow##9757
		only Draenei Hunter
	step //121
		goto 24.2,54.3
		.talk Huntress Kella Nightbow##17614
		..turnin Seek Huntress Kella Nightbow##9757
		..accept Taming the Beast (1)##9591
		only Draenei Hunter
	step //122
		goto 22.8,75
		.' Use your Taming Totem on a Barbed Crawler around this area|use Taming Totem##23896
		.goal Tame a Barbed Crawler|q 9591/1
		only Draenei Hunter
	step //123
		goto 24.2,54.3
		.talk Huntress Kella Nightbow##17614
		..turnin Taming the Beast (1)##9591
		..accept Taming the Beast (2)##9592
		only Draenei Hunter
	step //124
		goto 34.9,35.1
		.' Use your Taming Totem on a Greater Timberstrider around this area|use Taming Totem##23897
		.goal Tame a Greater Timberstrider|q 9592/1
		only Draenei Hunter
	step //125
		goto 24.2,54.3
		.talk Huntress Kella Nightbow##17614
		..turnin Taming the Beast (2)##9592
		..accept Taming the Beast (3)##9593
		only Draenei Hunter
	step //126
		goto 36.6,40.8
		.' Use your Taming Totem on a Nightstalker around this area|use Taming Totem##23898
		.goal Tame a Nightstalker|q 9593/1
		only Draenei Hunter
	step //127
		goto 24.2,54.3
		.talk Huntress Kella Nightbow##17614
		..turnin Taming the Beast (3)##9593
		..accept Beast Training##9675
		only Draenei Hunter
	step //128
		'Go northeast to the Exodar|goto The Exodar|noway|c
		only Draenei Hunter
	step //129
		goto The Exodar,44,86.7
		.talk Ganaar##16712
		..turnin Beast Training##9675
		only Draenei Hunter
	step //130
		'Go outside of the Exodar to Azuremyst Isle|goto Azuremyst Isle|noway|c
		only Draenei Hunter
	step //131
		goto Azuremyst Isle,47.1,50.6
		.talk Exarch Menelaous##17116
		..accept Coming of Age##9623
	step //132
		goto 46.7,20.6
		.talk High Chief Stillpine##17440
		..turnin Stillpine Hold##9559
	step //133
		goto 44.7,23.6
		.talk Gurf##17441
		..accept Murlocs... Why Here? Why Now?##9562
	step //134
		goto 33.8,25.7
		.from Siltfin Hunter##17192+, Siltfin Murloc##17190+, Siltfin Oracle##17191+
		.' Click the Stillpine Grain bags near the murloc huts
		.get 5 Stillpine Grain|q 9562/1
		.from Murgurgala##17475
		.' Get Gurf's Dignity|n
		.' Click Gurf's Dignity|use Gurf's Dignity##23850
		..accept Gurf's Dignity##9564
	step //135
		goto 44.7,23.6
		.talk Gurf##17441
		..turnin Murlocs... Why Here? Why Now?##9562
		..turnin Gurf's Dignity##9564
	step //136
		goto 46.7,20.6
		.talk High Chief Stillpine##17440
		..accept Search Stillpine Hold##9565
	step //137
		goto 46.9,21.2
		.talk Stillpine the Younger##17445
		..accept Chieftain Oomooroo##9573
	step //138
		'Go inside the big cave to 50.5,11.5|goto 50.5,11.5
		.' Click the Blood Crystal|tip It's a huge red crystal on a little dirt island in the water.
		..turnin Search Stillpine Hold##9565
		..accept Blood Crystals##9566
	step //139
		'Go upstairs in the cave to 47.4,16.0|goto 47.4,16.0
		.kill 9 Crazed Wildkin|q 9573/2
	step //140
		goto 47.4,14.1
		.kill Chieftain Oomooroo##17448|q 9573/1
	step //141
		'Go outside the cave to 46.7,20.6|goto 46.7,20.6
		.talk High Chief Stillpine##17440
		..turnin Blood Crystals##9566
	step //142
		goto 46.9,21.2
		.talk Stillpine the Younger##17445
		..turnin Chieftain Oomooroo##9573
	step //143
		goto 47,22.3
		.talk Kurz the Revelator##17443
		..accept The Kurken is Lurkin'##9570
	step //144
		'Go inside the big cave to 49.9,13.0|goto 49.9,13.0
		.from The Kurken##17447
		.get The Kurken's Hide|q 9570/1
	step //145
		'Go outside the cave to 47.0,22.3|goto 47.0,22.3
		.talk Kurz the Revelator##17443
		..turnin The Kurken is Lurkin'##9570
		..accept The Kurken's Hide##9571
	step //146
		goto 44.8,23.9
		.talk Moordo##17442
		..turnin The Kurken's Hide##9571
	step //147
		'Hearth to Azure Watch|goto Azuremyst Isle,49.2,50.8,2|use Hearthstone##6948|noway|c
	step //148
		goto 35.1,43.4
		.talk Torallius the Pack Handler##17584
		..turnin Coming of Age##9623
	step //149
		ding 11
	step //150
		goto 21.6,54|n
		.' Ride the boat to Auberdine|goto Darkshore|noway|c
	step //151
		goto Darkshore,36.3,45.6
		.talk Caylais Moonfeather##3841
		..fpath Auberdine
	step //152
		goto 36.6,45.6
		.talk Gwennyth Bly'Leggonde##10219
		..accept Washed Ashore (1)##3524
	step //153
		goto 37,44.1
		.talk Wizbang Cranktoggle##3666
		..accept Buzzbox 827##983
	step //154
		home Auberdine
	step //155
		goto 39.4,43.5
		.talk Terenthis##3693
		..accept How Big a Threat? (1)##984
	step //156
		goto 37.4,40.1
		.talk Thundris Windweaver##3649
		..accept Bashal'Aran (1)##954
	step //157
		goto 36.1,47.3
		.from Pygmy Tide Crawler##2231+, Young Reef Crawler##2234+
		.get 6 Crawler Leg|q 983/1
	step //158
		goto 36.4,50.8
		.' Click the Beached Sea Creature|tip It looks like a big green rotting dinosaur laying on the beach.
		.get Sea Creature Bones|q 3524/1
	step //159
		goto 36.7,46.3
		.' Click Buzzbox 827|tip It looks like a mechanical box with levers on it sitting in the grass next to a big wooden platform.
		..turnin Buzzbox 827##983
		..accept Buzzbox 411##1001
	step //160
		goto 36.6,45.6
		.talk Gwennyth Bly'Leggonde##10219
		..turnin Washed Ashore (1)##3524
		..accept Washed Ashore (2)##4681
	step //161
		goto 32.7,47.7
		.from Darkshore Thresher##2185+
		.get 3 Thresher Eye|q 1001/1
	step //162
		goto 31.9,46.3
		.' Click the Skeletal Sea Turtle|tip It looks like a big turtle skull underwater here.
		.get Sea Turtle Remains|q 4681/1
	step //163
		goto 39.6,52.9
		.' Find a corrupt furbolg camp at this spot|goal Find a corrupt furbolg camp|q 984/1
	step //164
		goto 39.4,43.5
		.talk Terenthis##3693
		..turnin How Big a Threat? (1)##984
		..accept Thundris Windweaver##4761
	step //165
		goto 36.6,45.6
		.talk Gwennyth Bly'Leggonde##10219
		..turnin Washed Ashore (2)##4681
	step //166
		goto 37.4,40.1
		.talk Thundris Windweaver##3649
		..turnin Thundris Windweaver##4761
	step //167
		goto 44.2,36.3
		.talk Asterion##3650
		..turnin Bashal'Aran (1)##954
		..accept Bashal'Aran (2)##955
	step //168
		goto 44.6,36.9
		.from Wild Grell##2190+, Vile Sprite##2189+
		.get 8 Grell Earring|q 955/1
	step //169
		ding 12
	step //170
		goto 44.2,36.3
		.talk Asterion##3650
		..turnin Bashal'Aran (2)##955
	step //171
		goto 42,28.6
		.' Click the Buzzbox 411|tip It's a metal box with levers on it, sitting on the beach.
		..turnin Buzzbox 411##1001
	step //172
		'Hearth to Auberdine|goto Darkshore,37.0,44.1,0.5|use Hearthstone##6948|noway|c
	step //173
		goto 30.80,41.02|n
		'Ride the boat to Azuremyst Isle|goto Azuremyst Isle|noway|c
		only Draenei Paladin
	step //174
		goto Azuremyst Isle,48.4,49.6
		.talk Tullas##17483
		..accept Jol##10366
		only Draenei Paladin
	step //175
		'Go west to the Exodar|goto The Exodar|noway|c
		only Draenei Paladin
	step //176
		goto The Exodar,38,82
		.talk Jol##17509
		..turnin Jol##10366
		..accept Redemption (1)##9598
		.' Click the Tome of Divinity in your bags to read it|use Tome of Divinity##23926
		..turnin Redemption (1)##9598
		..accept Redemption (2)##9600
		only Draenei Paladin
	step //177
		'Go outside to Azuremyst Isle|goto Azuremyst Isle|noway|c
		only Draenei Paladin
	step //178
		'Go northeast to Bloodmyst Isle|goto Bloodmyst Isle|noway|c
		only Draenei Paladin
	step //179
		goto Bloodmyst Isle,65.3,77.6
		.' Use your Symbol of Life in your bags on the Young Furbolg Shaman|use Symbol of Life##6866|tip He's a white furbolg laying on the ground.
		.' Resurrect the Young Furbolg Shaman|goal Young Furbolg Shaman Resurrected|q 9600/1
		only Draenei Paladin
	step //180
		'Go south to Azuremyst Isle|goto Azuremyst Isle|noway|c
		only Draenei Paladin
	step //181
		'Go southwest to the Exodar|goto The Exodar|noway|c
		only Draenei Paladin
	step //182
		goto The Exodar,38,82
		.talk Jol##17509
		..turnin Redemption (2)##9600
		only Draenei Paladin
	step //183
		goto 22,54|n
		.' Ride the boat to Auberdine|goto Darkshore|noway|c
		only Draenei Paladin
	step //184
		goto Darkshore,32.4,43.8|n
		'Ride the boat to Stormwind Harbor|goto Stormwind City|noway|c
	step //185
		goto Stormwind City,71,72.5
		.talk Dungar Longdrink##352
		..fpath Stormwind City
	step //186
		goto 69,30.9|n
		'Ride the train to Ironforge|goto Ironforge|noway|c
	step //187
		goto Ironforge,55.5,47.7
		.talk Gryth Thurden##1573
		..fpath Ironforge
	step //188
		'Go outside to Dun Morogh|goto Dun Morogh|noway|c
	step //189
		goto Dun Morogh,68.7,56
		.talk Senator Mehr Stonehallow##1977
		..accept The Public Servant##433
	step //190
		goto 69.1,56.3
		.talk Foreman Stonebrow##1254
		..accept Those Blasted Troggs!##432
	step //191
		'Go inside the cave to 70.7,56.5|goto 70.7,56.5
		.kill 6 Rockjaw Skullthumper|q 432/1
		.kill 10 Rockjaw Bonesnapper|q 433/1
	step //192
		'Go outside to 68.7,56.0|goto 68.7,56.0
		.talk Senator Mehr Stonehallow##1977
		..turnin The Public Servant##433
	step //193
		goto 69.1,56.3
		.talk Foreman Stonebrow##1254
		..turnin Those Blasted Troggs!##432
	step //194
		'Go east to Loch Modan|goto Loch Modan|noway|c
	step //195
		goto Loch Modan,33.9,51
		.talk Thorgrum Borrelson##1572
		..fpath Thelsamar
	step //196
		goto 34.8,47.1
		.talk Mountaineer Kadrell##1340
		..accept Rat Catching##416
		..accept Mountaineer Stormpike's Task##1339
	step //197
		home Thelsamar
	step //198
		goto 34.8,49.3
		.talk Vidra Hearthstove##1963
		..accept Thelsamar Blood Sausages##418
	step //199
		goto 37.4,38.9
		.from Mountain Boar##1190+, Elder Black Bear##1186+, Forest Lurker##1195+
		.get 3 Boar Intestines|q 418/1
		.get 3 Spider Ichor|q 418/3
		.get 3 Bear Meat|q 418/2
	step //200
		goto 24.5,33.6
		.from Tunnel Rat Scout##1173+, Tunnel Rat Forager##1176+, Tunnel Rat Kobold##1202+, Tunnel Rat Vermin##1172+
		.get 12 Tunnel Rat Ear|q 416/1
	step //201
		goto 24.8,18.4
		.talk Mountaineer Stormpike##1343
		..turnin Mountaineer Stormpike's Task##1339
		..accept Stormpike's Order##1338
	step //202
		'Hearth to Thelsamar|goto Loch Modan,35.5,48.3,0.5|use Hearthstone##6948|noway|c
	step //203
		goto 34.8,49.3
		.talk Vidra Hearthstove##1963
		..turnin Thelsamar Blood Sausages##418
	step //204
		goto 34.8,47.1
		.talk Mountaineer Kadrell##1340
		..turnin Rat Catching##416
	step //205
		goto 22.1,73.1
		.talk Mountaineer Cobbleflint##1089
		..accept In Defense of the King's Lands (1)##224
	step //206
		goto 23.2,73.7
		.talk Captain Rugelfuss##1092
		..accept The Trogg Threat##267
	step //207
		goto 31.1,70.7
		.kill 10 Stonesplinter Trogg|q 224/1
		.kill 10 Stonesplinter Scout|q 224/2
		.from Stonesplinter Scout##1162+, Stonesplinter Trogg##1161+
		.get 8 Trogg Stone Tooth|q 267/1
	step //208
		goto 22.1,73.1
		.talk Mountaineer Cobbleflint##1089
		..turnin In Defense of the King's Lands (1)##224
	step //209
		goto 23.2,73.7
		.talk Captain Rugelfuss##1092
		..turnin The Trogg Threat##267
	step //210
		ding 13
	step //211
		goto 33.9,51|n
		.talk Thorgrum Borrelson##1572
		'Fly to Stormwind|goto Stormwind City|noway|c
	step //212
		goto Stormwind City,64.6,37.2
		.talk Furen Longbeard##5413
		..turnin Stormpike's Order##1338
	step //213
		'Go outside to Elwynn Forest|goto Elwynn Forest|noway|c
	step //214
		goto Elwynn Forest,42.1,65.9
		.talk Marshal Dughan##240
		..accept Report to Gryan Stoutmantle##109
	step //215
		'Go southwest to Westfall|goto Westfall|noway|c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Death Knight (55-60)",[[
	author support@zygorguides.com
	defaultfor DeathKnight
	next Zygor's Alliance Leveling Guides\\Outland (60-62)
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
		goto 47.4,31
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
		.' You will take control over the Eye of Acherus|havebuff Spell_Shadow_UnholyFrenzy
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
		'Use your Recall Eye of Acherus ability to return to Ebon Hold|outvehicle|petaction Recall Eye of Acherus|n
	step //15
		goto 51.3,35.2
		.talk The Lich King##25462
		..turnin Death Comes From On High##12641
		..accept The Might Of The Scourge##12657
	step //16
		'Stand on the pink glowing circle at the bottom of the stairs to teleport to the bottom level of Ebon Hold|goto 50.1,32.5,0.3|noway|c
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
		.from Scarlet Captain##28611+, Scarlet Infantryman##28609+, Scarlet Medic##28608+, Scarlet Peasant##28557+
		.kill 10 Scarlet Crusader|q 12678/1
	step //28
		goto 55.2,46.2
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
		.' Create 5 Scarlet Ghouls to follow you
	step //42
		goto 54.1,35
		.' Stand next to Gothik the Harvester|tip Standing in front of a small roundish stone altar thing.  He has a goat skull on his head.
		.' Return 5 Scarlet Ghouls
		.talk Gothik the Harvester##28658
		..turnin The Gift That Keeps On Giving##12698
		..accept An Attack Of Opportunity##12700
	step //43
		goto 52.3,34
		.talk Prince Valanar##28377
		..turnin An Attack Of Opportunity##12700
		..accept Massacre At Light's Point##12701
	step //44
		goto 58.5,33
		.' Click the Inconspicuous Mine Car|tip It's a little mine car sitting next to an outhouse.
		.' The miner takes you to a ship
		.' Click a Scarlet Cannon on the side of the ship
		.' Shoot the soldiers on the beach with the cannon
		.kill 100 Scarlet Defender|q 12701/1
	step //45
		'Use your Skeletal Gryphon Escape ability on your hotbar to escape to Death's Breach|goto 52.6,34.5,0.5|noway|petaction Skeletal Gryphon Escape|c
	step //46
		goto 52.3,34
		.talk Prince Valanar##28377
		..turnin Massacre At Light's Point##12701
		..accept Victory At Death's Breach!##12706
	step //47
		goto 53.1,32.5|n
		.' Click the Scourge Gryphon to fly up to Ebon Hold|goto 51.1,34.7,0.5|noway|c|tip Flying in place, next to a blue flag.
	step //48
		goto 48.9,29.7
		.talk Highlord Darion Mograine##28444
		..turnin Victory At Death's Breach!##12706
		..accept The Will Of The Lich King##12714
	step //49
		goto 52.1,35|n
		.' Click the Scourge Gryphon to ride it down to Death's Breach|goto Plaguelands: The Scarlet Enclave,53.2,31.1,0.5|noway|c|tip Flying in place on the balcony with green souls rising from it.
	step //50
		goto 53.5,36.6
		.talk Prince Valanar##28907
		..turnin The Will Of The Lich King##12714
		..accept The Crypt of Remembrance##12715
	step //51
		goto 55.9,52.4
		.talk Noth the Plaguebringer##28919
		..accept The Plaguebringer's Request##12716
	step //52
		'Go southwest into the crypt to 54.3,57.3|goto 54.3,57.3
		.talk Prince Keleseth##28911
		..turnin The Crypt of Remembrance##12715
		..accept Nowhere To Run And Nowhere To Hide##12719
	step //53
		goto 54.7,57.4
		.talk Baron Rivendare##28910
		..accept Lambs To The Slaughter##12722
	step //54
		goto 57.8,61.8
		.' Click the Empty Cauldron|tip In the basement of the building that looks like an inn, it's a big black pot.
		.get Empty Cauldron|q 12716/1
	step //55
		goto 62,60.2
		.' Click the Iron Chain|tip It's a big chain in the corner inside the blacksmith house, above some barrels.
		.get Iron Chain|q 12716/2
	step //56
		'Run around the town and do the following:
		.kill 10 Scarlet Crusade Soldier|q 12722/1
		.get 10 Crusader Skull|q 12716/3
		.kill 15 Citizen of New Avalon|q 12722/2
	step //57
		goto 52.2,71.2
		.kill Mayor Quimby##28945|q 12719/1
	step //58
		goto 52.5,71
		.' Click the New Avalon Registry|tip It's a green book sitting on the table.
		.get New Avalon Registry|q 12719/2
	step //59
		'Go northeast into the crypt to 54.3,57.3|goto 54.3,57.3
		.talk Prince Keleseth##28911
		..turnin Nowhere To Run And Nowhere To Hide##12719
		..accept How To Win Friends And Influence Enemies##12720
	step //60
		goto 54.7,57.4
		.talk Baron Rivendare##28910
		..turnin Lambs To The Slaughter##12722
	step //61
		goto 55.9,52.4
		.talk Noth the Plaguebringer##28919
		..turnin The Plaguebringer's Request##12716
		..accept Noth's Special Brew##12717
	step //62
		goto 56.1,52.1
		'Click the big Plague Cauldron|tip It's a huge black pot bouncing around on the platform in the field.
		..turnin Noth's Special Brew##12717
	step //63
		goto 55.9,60.5
		'Open the Ornate Jeweled Box in your bags|use Ornate Jeweled Box##39418
		.' Equip the Keleseth's Persuader swords
		.' Attack Scarlet soldiers and stop hitting them when they start talking, so you don't kill them too fast
		.' Repeat until a soldier gives you information
		.' Reveal the "Crimson Dawn"|goal "Crimson Dawn" Revealed|q 12720/1
	step //64
		'Go northwest into the crypt to 54.3,57.3|goto 54.3,57.3
		.talk Prince Keleseth##28911
		..turnin How To Win Friends And Influence Enemies##12720
		..accept Behind Scarlet Lines##12723
	step //65
		goto 56.3,79.8
		.talk Orbaz Bloodbane##28914
		..turnin Behind Scarlet Lines##12723
		..accept The Path Of The Righteous Crusader##12724
	step //66
		goto 56.3,80.2
		.talk Thassarian##28913
		..accept Brothers In Death##12725
	step //67
		'Go northeast into Scarlet Hold and into the basement to 63.0,67.8|goto 63.0,67.8
		.talk Koltira Deathweaver##28912
		..turnin Brothers In Death##12725
		..accept Bloody Breakout##12727
	step //68
		'Koltira Deathweaver forms a bubble and you have to fight the mobs as the come in waves
		.' Stay inside the bubble, it reduces spell damage done to you, so you'll live
		.from High Inquisitor Valroth##29001
		.get Valroth's Head|q 12727/1
	step //69
		ding 57
	step //70
		'Go upstairs in the fort to 63.0,68.3|goto 63.0,68.3
		.' Click the New Avalon Patrol Schedule|tip It's a blue book sitting on the table.
		.get New Avalon Patrol Schedule|q 12724/1
	step //71
		goto 56.3,79.8
		.talk Orbaz Bloodbane##28914
		..turnin The Path Of The Righteous Crusader##12724
	step //72
		goto 56.3,80.2
		.talk Thassarian##28913
		..turnin Bloody Breakout##12727
		..accept A Cry For Vengeance!##12738
	step //73
		goto 52.9,81.5
		.talk Knight Commander Plaguefist##29053
		..turnin A Cry For Vengeance!##12738
		..accept A Special Surprise##12742 |only Human
		..accept A Special Surprise##12743 |only NightElf
		..accept A Special Surprise##12744 |only Dwarf
		..accept A Special Surprise##12745 |only Gnome
		..accept A Special Surprise##12746 |only Draenei
	step //74
		goto 54.5,83.4
		.kill Valok the Righteous##29070|q 12746/1
		only Draenei
	step //75
		goto 54.2,83.9
		.kill Yazmina Oakenthorn##29065|q 12743/1
		only NightElf
	step //76
		goto 53.9,83.8
		.kill Goby Blastenheimer##29068|q 12745/1
		only Gnome
	step //77
		goto 53.5,83.8
		.kill Ellen Stanbridge##29061|q 12742/1
		only Human
	step //78
		goto 54,83.3
		.kill Donovan Pulfrost##29067|q 12744/1
		only Dwarf
	step //79
		goto 52.9,81.5
		.talk Knight Commander Plaguefist##29053
		..turnin A Special Surprise##12742 |only Human
		..turnin A Special Surprise##12743 |only NightElf
		..turnin A Special Surprise##12744 |only Dwarf
		..turnin A Special Surprise##12745 |only Gnome
		..turnin A Special Surprise##12746 |only Draenei
		..accept A Sort Of Homecoming##12751
	step //80
		goto 56.3,80.2
		.talk Thassarian##28913
		..turnin A Sort Of Homecoming##12751
	step //81
		goto 56.3,79.8
		.talk Orbaz Bloodbane##28914
		..accept Ambush At The Overlook##12754
	step //82
		goto 60,78.5
		.' Use your Makeshift Cover while standing on the edge of the hill|use Makeshift Cover##39645
		.from Scarlet Courier##29076
		.get Scarlet Courier's Belongings|q 12754/1
		.get Scarlet Courier's Message|q 12754/2
	step //83
		goto 56.3,79.8
		.talk Orbaz Bloodbane##28914
		..turnin Ambush At The Overlook##12754
		..accept A Meeting With Fate##12755
	step //84
		goto 65.6,83.8
		.talk High General Abbendis##29077
		..turnin A Meeting With Fate##12755
		..accept The Scarlet Onslaught Emerges##12756
	step //85
		goto 56.3,79.8
		.talk Orbaz Bloodbane##28914
		..turnin The Scarlet Onslaught Emerges##12756
		..accept Scarlet Armies Approach...##12757
	step //86
		'Click the Portal to Acherus to go to Ebon Hold|goto 50.2,32.6,0.5|noway|c
	step //87
		goto 48.9,29.7
		.talk Highlord Darion Mograine##28444
		..turnin Scarlet Armies Approach...##12757
		..accept The Scarlet Apocalypse##12778
	step //88
		goto 52.1,35|n
		.' Click the Scourge Gryphon to ride it down to Death's Breach|goto Plaguelands: The Scarlet Enclave,53.2,31.1,0.5|noway|c|tip Flying in place on the balcony with green souls rising from it.
	step //89
		goto 53.6,36.9
		.talk The Lich King##29110
		..turnin The Scarlet Apocalypse##12778
		..accept An End To All Things...##12779
	step //90
		'Click the Horn of the Frostbrood in your bags|use Horn of the Frostbrood##39700
		.' This will summon a dragon for you to ride around on
		.' Fly and and use your dragon abilities to do the following:
		.kill 150 Scarlet Soldiers|q 12779/1
		.' Destroy 10 Scarlet Ballistas|goal 10 Scarlet Ballista destroyed|q 12779/2
	step //91
		'Fly back to Death's Breach and jump off the dragon|script VehicleExit()|outvehicle|c
	step //92
		goto 53.6,36.9
		.talk The Lich King##29110
		..turnin An End To All Things...##12779
		..accept The Lich King's Command##12800
	step //93
		goto 50.4,31.9|n
		.' The path over to Browman Mill starts here|goto 50.4,31.9,0.5|noway|c
	step //94
		'Follow the path northwest to 33.9,30.4|goto 33.9,30.4
		.talk Scourge Commander Thalanor##31082
		..turnin The Lich King's Command##12800
		..accept The Light of Dawn##12801
	step //95
		goto 34.4,31.1
		.talk Highlord Darion Mograine##29173
		.' Tell him you are ready for the siege (you may be unable to do this if someone else already has, don't worry)
		.' Wait for the battle to start in 5 minutes
		.' Help fight the epic battle
		.' Uncover The Light of Dawn|goal The Light of Dawn Uncovered|q 12801/1
	step //96
		'Talk to Highlord Darion Mograine after the battle
		.turnin The Light of Dawn##12801
		.accept Taking Back Acherus##13165
	step //97
		'Use your new Death Gate spell and click the purple portal to go to Ebon Hold|goto Eastern Plaguelands,83.7,50.0,0.5|cast Death Gate|noway|c
	step //98
		goto 83.4,49.4
		.talk Highlord Darion Mograine##29173
		..turnin Taking Back Acherus##13165
		..accept The Battle For The Ebon Hold##13166
	step //99
		'Stand on the purple circle to teleport upstairs|goto 82.7,47.8,0.5|noway|c
	step //100
		goto 83,48
		.kill 10 Scourge|q 13166/2
		.kill Patchwerk##31099|q 13166/1
	step //101
		'Stand on the purple circle to teleport downstairs|goto 83.0,48.4,0.5|noway|c
	step //102
		goto 83.4,49.4
		.talk Highlord Darion Mograine##31084
		..turnin The Battle For The Ebon Hold##13166
		..accept Where Kings Walk##13188
	step //103
		ding 58
	step //104
		'Click the Portal to Stormwind on the balcony|goto Elwynn Forest|noway|c
	step //105
		'Go inside Stormwind City|goto Stormwind City|noway|c
	step //106
		goto 80,38.4
		.talk King Varian Wrynn##29611
		..turnin Where Kings Walk##13188
	step //107
		'Fly to Morgan's Vigil|goto Burning Steppes,84.9,69.1,2|noway|c
	step //108
		goto Burning Steppes,84.6,68.7
		.talk Oralius##9177
		..accept Extinguish the Firegut##3823
		..accept FIFTY! YEP!##4283
	step //109
		goto 74.2,48.0
		.kill 7 Firegut Brute|q 3823/3
		.kill 7 Firegut Ogre|q 3823/2
		.kill 15 Firegut Ogre Mage|q 3823/1
	step //110
		goto 44.4,36.4
		.from Blackrock Sorcerer##7026+, Blackrock Slayer##7027+, Blackrock Warlock##7028+, Blackrock Battlemaster##7029+
		.get 50 Blackrock Medallion|q 4283/1
	step //111
		goto 84.6,68.7
		.talk Oralius##9177
		..turnin Extinguish the Firegut##3823
		..accept Gor'tesh the Brute Lord##3824
		..turnin FIFTY! YEP!##4283
	step //112
		'Go northwest to 39.3,55.4|goto 39.3,55.4
		.from Gor'tesh##9176
		.get Gor'tesh's Lopped Off Head|q 3824/1
	step //113
		goto 84.6,68.7
		.talk Oralius##9177
		..turnin Gor'tesh the Brute Lord##3824
		..accept Ogre Head On A Stick = Party##3825
	step //114
		'Go north to to the top of Dreadmaul Rock 81.0,46.8|goto 81.0,46.8
		.' Plant Gor'tesh's Head in the Soft Dirt Mound|q 3825/1|tip On the ground by the fire in front of the cave.
	step //115
		goto 84.6,68.7
		.talk Oralius##9177
		..turnin Ogre Head On A Stick = Party##3825
	step //116
		'Fly to Ironforge|goto Ironforge|noway|c
	step //117
		goto Ironforge,58.6,47.3
		.talk Cenarion Emissary Jademoon##15187
		..accept Taking Back Silithus##8275
	step //118
		'Fly to Menethil Harbor|goto Wetlands,9.5,59.7,0.1|noway|c
	step //119
		'Ride the boat to Theramore|goto Dustwallow Marsh|noway|c
	step //120
		'Fly to Cenarion Hold in Silithus|goto Silithus,50.4,36.5,3|noway|c
	step //121
		goto Silithus,49.7,37.5
		.talk Geologist Larksbane##15183
		..accept The Twilight Mystery##8284
	step //122
		goto 51.2,38.3
		.talk Windcaller Proudhorn##15191
		..turnin Taking Back Silithus##8275
		..accept Securing the Supply Lines##8280
	step //123
		home Cenarion Hold
	step //124
		goto 51.6,38.6
		.talk Beetix Ficklespragg##15189
		..accept Deadly Desert Venom##8277
	step //125
		'Go northeast to 54.4,30.6|goto 54.4,30.6
		.from Stonelash Scorpid##11735+
		.get 8 Stonelash Scorpid Stinger|q 8277/1
		.from Sand Skitterer##11738+
		.get 8 Sand Skitterer Fang|q 8277/2
		.kill 15 Dredge Striker|q 8280/1
	step //126
		'Go west to 24.8,10.4|goto 24.8,10.4
		.' Click Twilight Tablet Fragments|tip They are blue glowing shards scattered on the ground around this area.
		.get 8 Twilight Tablet Fragment|q 8284/1
	step //127
		'Hearth to Cenarion Hold|goto Silithus,50.4,36.5,3|use Hearthstone##6948|noway|c
	step //128
		goto 51.6,38.6
		.talk Beetix Ficklespragg##15189
		..turnin Deadly Desert Venom##8277
		..accept Noggle's Last Hope##8278
	step //129
		goto 51.2,38.3
		.talk Windcaller Proudhorn##15191
		..turnin Securing the Supply Lines##8280
		..accept Stepping Up Security##8281
	step //130
		goto 49.7,37.5
		.talk Geologist Larksbane##15183
		..turnin The Twilight Mystery##8284
		..accept The Deserter##8285
	step //131
		goto 49.2,34.2
		.talk Commander Mar'alith##15181
		..accept Dearest Natalia##8304
	step //132
		'Go southwest to 55.1,59.7|goto 55.1,59.7
		.kill 20 Dredge Crusher|q 8281/1
		.from Stonelash Pincer##11736+
		.get 3 Stonelash Pincer Stinger|q 8278/2
	step //133
		'Go into the cave to 67.2,69.8|goto 67.2,69.8
		.talk Hermit Ortell##15194
		..turnin The Deserter##8285
	step //134
		'Go southwest to 65.2,74.7|goto 65.2,74.7
		.from Stonelash Flayer##11737+
		.get 3 Stonelash Flayer Stinger|q 8278/1
		.from Rock Stalker##11739+
		.get 3 Rock Stalker Fang|q 8278/3
		.' You can find more Stonelash Flayers and Rock Stalkers at 46.2,70.2|n
	step //135
		goto 41.3,88.5
		.talk Rutgar Glyphshaper##15170
		..' Question Rutgar|goal Rutgar Questioned|q 8304/2
	step //136
		goto 40.8,88.9
		.talk Frankal Stonebridge##15171
		..' Question Frankal|goal Frankal Questioned|q 8304/1
	step //137
		'Hearth to Cenarion Hold|goto Silithus,50.4,36.5,3|use Hearthstone##6948|noway|c
	step //138
		goto 51.6,38.6
		.talk Beetix Ficklespragg##15189
		..turnin Noggle's Last Hope##8278
	step //139
		goto 51.2,38.3
		.talk Windcaller Proudhorn##15191
		..turnin Stepping Up Security##8281
	step //140
		goto 49.2,34.2
		.talk Commander Mar'alith##15181
		..turnin Dearest Natalia##8304
	step //141
		ding 59
	step //142
		'Fly to Theramore|goto Dustwallow Marsh,67.5,50.3,9|noway|c
	step //143
		'Ride the boat to Menethil Harbor|goto Wetlands|noway|c
	step //144
		'Fly to Ironforge|goto Ironforge|noway|c
	step //145
		goto Ironforge,29.4,22.1
		.talk Courier Hammerfall##10877
		..accept A Call to Arms: The Plaguelands!##5090
	step //146
		home Ironforge
	step //147
		'Fly to Chillwind Camp|goto Western Plaguelands,42.95,84.95,8|noway|c
	step //148
		goto Western Plaguelands,42.7,84
		.talk Commander Ashlam Valorfist##10838
		..turnin A Call to Arms: The Plaguelands!##5090
		..accept Clear the Way##5092
	step //149
		goto 42.9,84.5
		.talk Anchorite Truuen##17238
		..accept The Mark of the Lightbringer##9474
	step //150
		goto 48.2,81.2
		.kill 10 Slavering Ghoul|q 5092/2
		.kill 10 Skeletal Flayer|q 5092/1
	step //151
		goto 42.7,84
		.talk Commander Ashlam Valorfist##10838
		..turnin Clear the Way##5092
		..accept The Scourge Cauldrons##5215
		..accept All Along the Watchtowers##5097
	step //152
		goto 42.9,84.5
		.talk High Priestess MacDonnell##11053
		..turnin The Scourge Cauldrons##5215
		..accept Target: Felstone Field##5216
	step //153
		goto 49.3,73.2|n
		.' Enter the Ruins of Andorhal from this bridge|goto Western Plaguelands,49.3,73.2,0.3|noway|c
	step //154
		goto 46.6,71.1
		.' Use your Beacon Torch near the tower entrance|use Beacon Torch##12815
		.' Mark Tower Four|goal Tower Four marked|q 5097/4
	step //155
		goto 40,71.6
		.' Use your Beacon Torch near the tower entrance|use Beacon Torch##12815
		.' Mark Tower One|goal Tower One marked|q 5097/1
	step //156
		goto 42.3,66.3
		.' Use your Beacon Torch near the tower entrance|use Beacon Torch##12815
		.' Mark Tower Two|goal Tower Two marked|q 5097/2
	step //157
		goto 44.3,63.3
		.' Use your Beacon Torch near the tower entrance|use Beacon Torch##12815
		.' Mark Tower Three|goal Tower Three marked|q 5097/3
	step //158
		goto 37,57.1
		.from Cauldron Lord Bilemaw##11075
		.get the Felstone Field Cauldron Key|n
		.' Click the Scourge Cauldron
		..turnin Target: Felstone Field##5216
		..accept Return to Chillwind Camp##5217
	step //159
		goto 38.4,54
		.talk Janice Felstone##10778
		..accept Better Late Than Never (1)##5021
	step //160
		goto 38.7,55.3
		.' Click Janice's Parcel|tip It's a brown package on the floor inside the barn, next to the wall as you enter.
		..turnin Better Late Than Never (1)##5021
		..accept Better Late Than Never (2)##5022
	step //161
		goto 42.7,84
		.talk Commander Ashlam Valorfist##10838
		..turnin All Along the Watchtowers##5097
		..accept Scholomance##5533
		.talk Alchemist Arbington##11056
		..turnin Scholomance##5533
	step //162
		goto 42.9,84.5
		.talk High Priestess MacDonnell##11053
		..turnin Return to Chillwind Camp##5217
		..accept Target: Dalson's Tears##5219
	step //163
		goto 46.2,52.4
		.from Cauldron Lord Malvinious##11077
		.get the Dalson's Tears Cauldron Key|n
		.' Click the Scourge Cauldron
		..turnin Target: Dalson's Tears##5219
		..accept Return to Chillwind Camp##5220
	step //164
		goto 47.7,50.7
		.' Click Mrs. Dalson's Diary|tip Inside the barn, on the floor in the middle of the room, it's an opened book.
		..accept Mrs. Dalson's Diary##5058
	step //165
		goto 48.1,49.7
		.from Wandering Skeleton##10816
		.get the Dalson Outhouse Key|n
		.' Unlock the Outhouse with the Dalson Outhouse Key|tip The Outhouse is behind the barn, next to a big tree stump.
		.from Farmer Dalson##10836
		.collect Dalson Cabinet Key##12739|q 5060/1 |future
	step //166
		goto 47.4,49.7
		.' Unlock the Locked Cabinet with the Dalson Cabinet Key|tip In the house, on the second floor in the small room.
		..accept Locked Away##5060
	step //167
		goto 50,30.5|n
		.' The path down to Kirsta Deepshadow starts here|goto Western Plaguelands,50.0,30.4,0.5|noway|c
	step //168
		goto 51.9,28
		.talk Kirsta Deepshadow##11610
		..accept Unfinished Business (1)##6004
	step //169
		goto 50.3,41.5
		.kill 2 Scarlet Mage|q 6004/3
		.kill 2 Scarlet Knight|q 6004/4
	step //170
		goto 51.1,43.7
		.kill 2 Scarlet Medic|q 6004/1
		.kill 2 Scarlet Hunter|q 6004/2
	step //171
		goto 51.9,28
		.talk Kirsta Deepshadow##11610
		..turnin Unfinished Business (1)##6004
		..accept Unfinished Business (2)##6023
	step //172
		goto 56.4,34|n
		.' The path up to Huntsman Radley starts here|goto Western Plaguelands,56.4,34.0,0.5|noway|c
	step //173
		goto 57.7,36.3
		.kill Huntsman Radley##11613|q 6023/1
	step //174
		goto 54.2,24.2
		.' Kill Cavalier Durgen when he comes out in front of the tower|kill 1 Cavalier Durgen|q 6023/2|tip Stay in front of the tower. Cavalier Durgen will eventually walk out of the tower down the front.
		.' Go to the top of the tower
		.' Click the small brown chest
		.get Mark of the Lightbringer|q 9474/1
	step //175
		goto 52.5,25.2|n
		.' Jump off the cliff down to Kirsta Deepshadow|goto Western Plaguelands,52.8,25.2,0.3|noway|c
	step //176
		goto 51.9,28
		.talk Kirsta Deepshadow##11610
		..turnin Unfinished Business (2)##6023
	step //177
		goto 42.9,84.5
		.talk High Priestess MacDonnell##11053
		..turnin Return to Chillwind Camp##5220
		..accept Target: Writhing Haunt##5222
		.talk Anchorite Truuen##17238
		..turnin The Mark of the Lightbringer##9474
	step //178
		'Fly to Stormwind|goto Stormwind City|noway|c
	step //179
		goto Stormwind City,57.2,48.1
		.talk Royal Factor Bathrilor##10782
		..turnin Better Late Than Never (2)##5022
		..accept Good Natured Emma##5048
	step //180
		goto 60.2,57
		.talk Ol' Emma##3520
		..turnin Good Natured Emma##5048
		..accept Good Luck Charm##5050
	step //181
		goto 80,38.4
		.talk King Varian Wrynn##29611
		..accept The First and the Last##6182
	step //182
		goto 78.3,70.7
		.talk Master Mathias Shaw##332
		..turnin The First and the Last##6182
		..accept Honor the Dead##6183
		..turnin Honor the Dead##6183
		..accept Flint Shadowmore##6184
	step //183
		'Fly to Chillwind Camp|goto Western Plaguelands,43.0,84.3,1.5|noway|c
	step //184
		goto Western Plaguelands,43.6,84.5
		.talk Flint Shadowmore##12425
		..turnin Flint Shadowmore##6184
		..accept The Eastern Plagues##6185
	step //185
		goto 38.4,54
		.talk Janice Felstone##10778
		..turnin Good Luck Charm##5050
		..accept Two Halves Become One##5051
	step //186
		goto 37.5,55
		.from Jabbering Ghoul##10801
		.get the Good Luck Other-Half-Charm|n
		.' Click the Good Luck Other-Half-Charm in your bags|use Good Luck Other-Half-Charm##12722
		.get Good Luck Charm|q 5051/1
	step //187
		goto 38.4,54
		.talk Janice Felstone##10778
		..'Combine the two halves of the charm
		..turnin Two Halves Become One##5051
	step //188
		goto 53,66
		.from Cauldron Lord Razarch##11076
		.get the Writhing Haunt Cauldron Key|n
		.' Click the Scourge Cauldron
		..turnin Target: Writhing Haunt##5222
		..accept Return to Chillwind Camp##5223
	step //189
		goto 42.9,84.5
		.talk High Priestess MacDonnell##11053
		..turnin Return to Chillwind Camp##5223
		..accept Target: Gahrron's Withering##5225
		.talk Anchorite Truuen##17238
		..accept Tomb of the Lightbringer##9446
		..'Escort Anchorite Truuen|goal Escort Anchorite Truuen to Uther's Tomb|q 9446/1
	step //190
		goto 53.7,64.7
		.talk Mulgris Deepriver##10739
		..accept The Wildlife Suffers Too (1)##4984
	step //191
		goto 42.8,55.4
		.kill 8 Diseased Wolf|q 4984/1 |tip The wolves in this area share a respawn with the spiders so killing them as well will spawn wolves faster.
		..'You can also find more wolves at 45.6,47.4 |n
	step //192
		goto 53.7,64.7
		.talk Mulgris Deepriver##10739
		..turnin The Wildlife Suffers Too (1)##4984
		..accept The Wildlife Suffers Too (2)##4985
	step //193
		goto 57.9,61.2
		.kill 8 Diseased Grizzly|q 4985/1
	step //194
		goto 62.6,59.9
		.from Cauldron Lord Soulwrath##11078
		.get the Gahrron's Withering Cauldron Key|n
		.' Click the Scourge Cauldron
		..turnin Target: Gahrron's Withering##5225
		..accept Return to Chillwind Camp##5226
	step //195
		goto 53.7,64.7
		.talk Mulgris Deepriver##10739
		..turnin The Wildlife Suffers Too (2)##4985
	step //196
		goto 42.9,84.5
		.talk High Priestess MacDonnell##11053
		..turnin Tomb of the Lightbringer##9446
		..turnin Return to Chillwind Camp##5226
	step //197
		goto 42.7,84
		.talk Commander Ashlam Valorfist##10838
		..accept Mission Accomplished!##5238 |instant
	step //198
		'Fly to Ironforge|goto Ironforge|noway|c
	step //199
		goto Ironforge,27.3,7.0|n
		.'Click the Portal to Blasted Lands|goto Blasted Lands|noway|c
	step //200
		ding 60
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Main Guide (13-20)",[[
	author support@zygorguides.com
	next Zygor's Alliance Leveling Guides\\Levels (20-25)
	startlevel 13
	step //1
		goto Westfall,60,19.4
		.talk Farmer Furlbrow##237
		..accept The Forgotten Heirloom##64
		.talk Verna Furlbrow##238
		..accept Westfall Stew (1)##36
		..accept Poor Old Blanchy##151
	step //2
		goto 56,31.2
		.talk Farmer Saldean##233
		..accept The Killing Fields##9
	step //3
		goto 56.4,30.5
		.talk Salma Saldean##235
		..turnin Westfall Stew (1)##36
		..accept Westfall Stew (2)##38
		..accept Goretusk Liver Pie##22
	step //4
		goto 56.6,52.6
		.talk Thor##523
		..fpath Sentinel Hill
	step //5
		goto 54.0,52.9
		.talk Scout Galiaan##878
		..accept Red Leather Bandanas##153
	step //6
		home Sentinel Hill
	step //7
		goto 56.3,47.5
		.talk Gryan Stoutmantle##234
		..turnin Report to Gryan Stoutmantle##109
		..accept The People's Militia (1)##12
		.talk Captain Danuvin##821
		..accept Patrolling Westfall##102
	step //8
		goto 48.6,46.8
		.kill 15 Defias Trapper|q 12/1
		.kill 15 Defias Smuggler|q 12/2
		.get 15 Red Leather Bandana|q 153/1
	step //9
		goto Westfall,56.3,47.5
		.talk Gryan Stoutmantle##234
		..turnin The People's Militia (1)##12
		..accept The People's Militia (2)##13
	step //10
		goto 54.0,52.9
		.talk Scout Galiaan##878
		..turnin Red Leather Bandanas##153
	step //11
		ding 14
	step //12
		'Fly to Stormwind|goto Stormwind City|noway|c
		only NightElf Druid
	step //13
		'Buy the following from the Auction House:
		.' 5 Earthroot|buy 5 Earthroot|q 6123/1
		only NightElf Druid
	step //14
		'Ride the boat to Auberdine|goto Darkshore,32.8,42.0,9|noway|c
		only NightElf Druid
	step //15
		'Fly to Rut'theran Village|goto Teldrassil,56.3,92.4,6|noway|c
		only NightElf Druid
	step //16
		goto Darnassus|goto Darnassus|noway|c
		only NightElf Druid
	step //17
		goto Darnassus,35.2,8.1
		.talk Mathrengyl Bearwalker##4217
		..accept Lessons Anew##6121
		only NightElf Druid
	step //18
		'Remember, you have the spell Teleport: Moonglade
		.' Teleport to Moonglade|goto Moonglade|cast Teleport: Moonglade|c
		only NightElf Druid
	step //19
		goto 56.2,30.5
		.talk Dendrite Starblaze##11802
		..turnin Lessons Anew##6121
		..accept The Principal Source##6122
		only NightElf Druid
	step //20
		goto 44.2,45.3|n
		.talk Silva Fil'naveth##11800
		..'Fly to Rut'theran Village|goto Teldrassil,58.4,93.9,0.3|c
		only NightElf Druid
	step //21
		'Fly to Auberdine|goto Darkshore,36.4,45.6,0.3|noway|c
		only NightElf Druid
	step //22
		goto 54.6,31.7|n
		.' The path up to 'The Principal Source' starts here|goto Darkshore,54.6,31.7,0.5|noway|c
		only NightElf Druid
	step //23
		goto 54.7,33.1
		.' Stand in the calmer looking water
		.' Use the Empty Cliffspring Falls Sampler in your bags|use Empty Cliffspring Falls Sampler##15844
		.get Filled Cliffspring Falls Sampler|q 6122/1
		only NightElf Druid
	step //24
		goto 38,41
		.talk Alanndarian Nightsong##3702
		..turnin The Principal Source##6122
		..accept Gathering the Cure##6123
		only NightElf Druid
	step //25
		goto 43,50.5
		.' Click the Lunar Fungal Blooms inside the 3 caves around this area
		.get 12 Lunar Fungus|q 6123/2
		only NightElf Druid
	step //26
		goto 37.7,40.6
		.talk Alanndarian Nightsong##3702
		..turnin Gathering the Cure##6123
		..accept Curing the Sick##6124
		only NightElf Druid
	step //27
		'They are all around Darkshore in no specific spot:
		.' Use your Curative Animal Salve on Sickly Deers|use Curative Animal Salve##15826
		.' Cure 10 Sickly Deers|goal 10 Sickly Deer cured|q 6124/1
		only NightElf Druid
	step //28
		'Teleport to Moonglade|goto Moonglade|cast Teleport: Moonglade|c
		only NightElf Druid
	step //29
		goto 56.2,30.5
		.talk Dendrite Starblaze##11802
		..turnin Curing the Sick##6124
		..accept Power over Poison##6125
		only NightElf Druid
	step //30
		goto 44.2,45.3
		.talk Silva Fil'naveth##11800
		..'Fly to Rut'theran Village|goto Teldrassil,56.3,92.4,6|noway|c
		only NightElf Druid
	step //31
		goto Darnassus|goto Darnassus|noway|c
		only NightElf Druid
	step //32
		goto Darnassus,35.2,8.1
		.talk Mathrengyl Bearwalker##4217
		..turnin Power over Poison##6125
		only NightElf Druid
	step //33
		'Hearth to Sentinel Hill|goto Westfall,52.9,53.6,0.5|use Hearthstone##6948|noway|c
	step //34
		goto 53.8,42.5
		.from Goretusk##157+, Young Goretusk##454+
		.get 8 Goretusk Liver|q 22/1
		.get 3 Goretusk Snout|q 38/3
	step //35
		goto 59,43.7
		.from Fleshripper##1109+
		.get 3 Stringy Vulture Meat|q 38/1
	step //36
		goto 57.1,19.3
		.' Click the Sack of Oats (if it's not there, wait a few minutes, it will reappear)|tip This is where I get my first Sack of Oats for "Poor Old Blanchy".  Get the rest of them as you see them around Westfall.
		.get a Handful of Oats|n
		.get the other 7 Handfuls of Oats as you see them around Westfall|n
	step //37
		goto 57,15.1
		.from Riverpaw Gnoll##725+, Riverpaw Scout##500+
		.get 8 Gnoll Paw|q 102/1
		.' You can find more gnolls at 52.4,16.2|n
	step //38
		goto 55.1,12.3
		.from Murloc Raider##515+, Murloc Coastrunner##126+
		.get 3 Murloc Eye|q 38/2
	step //39
		goto 49.4,19.2
		.' Click Furlbrow's Wardrobe|tip Inside the small house on the right, click the wooden wardrobe.
		.get Furlbrow's Pocket Watch|q 64/1
	step //40
		goto 51.1,21.8
		.kill 20 Harvest Watcher|q 9/1
		.get 3 Okra|q 38/4
		.from Harvest Watcher##114+
		.collect 5 Flask of Oil##814|q 103 |future
		.' You can find more Harvest Watchers at 53.5,29.4|n
	step //41
		goto 56,31.2
		.talk Farmer Saldean##233
		..turnin The Killing Fields##9
	step //42
		ding 15
	step //43
		goto 56.4,30.5
		.talk Salma Saldean##235
		..turnin Westfall Stew (2)##38
		..turnin Goretusk Liver Pie##22
	step //44
		'Make sure you have 8 Handfuls of Oats|get 8 Handful of Oats|q 151/1
	step //45
		goto 60,19.4
		.talk Farmer Furlbrow##237
		..turnin The Forgotten Heirloom##64
		.talk Verna Furlbrow##238
		..turnin Poor Old Blanchy##151
	step //46
		goto 56.3,47.5
		.talk Captain Danuvin##821
		..turnin Patrolling Westfall##102
	step //47
		'Fly to Stormwind City|goto Stormwind City|noway|c
	step //48
		goto Stormwind City,22.6,56.1|n
		'Ride the boat to Auberdine|goto Darkshore|noway|c
	step //49
		goto Darkshore,37.7,43.4
		.talk Sentinel Glynda Nal'Shea##2930
		..accept The Red Crystal##4811
	step //50
		goto 38.8,43.4
		.talk Tharnariun Treetender##3701
		..accept Plagued Lands##2118
	step //51
		goto 39.4,43.5
		.talk Terenthis##3693
		..accept How Big a Threat? (2)##985
	step //52
		goto 38.1,41.2
		.talk Gorbold Steelhand##6301
		..accept Deep Ocean, Vast Sea##982
	step //53
		goto 37.4,40.1
		.talk Thundris Windweaver##3649
		..accept The Cliffspring River##4762
	step //54
		goto 40.3,53
		.kill 8 Blackwood Pathfinder|q 985/1
		.kill 5 Blackwood Windtalker|q 985/2
	step //55
		goto 38.4,52.9
		.' Use Tharnariun's Hope on a Rabid Thistle Bear|use Tharnariun's Hope##7586
		.' Capture a Rabid Thistle Bear|goal Rabid Thistle Bear Captured|q 2118/1
	step //56
		goto 38.8,43.4
		.talk Tharnariun Treetender##3701
		..turnin Plagued Lands##2118
		..accept Cleansing of the Infected##2138
	step //57
		goto 39.4,43.5
		.talk Terenthis##3693
		..turnin How Big a Threat? (2)##985
	step //58
		goto 47.4,48.7
		.' Walk up next to the big red crystal at the top of this hill
		.' Locate the large, red crystal on Darkshore's eastern mountain range|goal Locate the large, red crystal on Darkshore's eastern mountain range|q 4811/1
	step //59
		goto 37.7,43.4
		.talk Sentinel Glynda Nal'Shea##2930
		..turnin The Red Crystal##4811
		..accept As Water Cascades##4812
	step //60
		goto 37.8,44.1
		.' Use your Empty Water Tube in your bags in the moonwell water|use Empty Water Tube##14338
		.get Moonwell Water Tube|q 4812/1
	step //61
		goto 47.3,48.7
		.' Click the Mysterious Red Crystal|tip It's a big red crystal sitting at the top of this hill.
		..turnin As Water Cascades##4812
		..accept The Fragments Within##4813
	step //62
		goto 44.2,36.3
		.talk Asterion##3650
		..accept Bashal'Aran (3)##956
	step //63
		goto 47.4,36.8
		.from Deth'ryll Satyrs##2212+
		.get Ancient Moonstone Seal|q 956/1
	step //64
		goto 44.2,36.3
		.talk Asterion##3650
		..turnin Bashal'Aran (3)##956
		..accept Bashal'Aran (4)##957
	step //65
		goto 42,28.6
		.' Click the Buzzbox 411|tip It's a metal box with levers on it, sitting on the beach.
		..accept Buzzbox 323##1002
	step //66
		goto 48.4,30.7
		.kill 20 Rabid Thistle Bear|q 2138/1
		.from Moonstalker##2069+
		.get 6 Moonstalker Fang|q 1002/1
	step //67
		ding 16
	step //68
		goto 51.3,24.6
		.' Click Buzzbox 323|tip It's a metal box with some levers on it, on the side of the road.
		..turnin Buzzbox 323##1002
		..accept Buzzbox 525##1003
	step //69
		'Jump down into the water below the bridge to 50.9,25.7|goto 50.9,25.7
		.' Use your Empty Sampling Tube at the bottom of this waterfall|use Empty Sampling Tube##12350
		.get Cliffspring River Sample|q 4762/1
	step //70
		goto 44.2,20.6
		.' Click the Beached Sea Turtle's hand|tip It looks like a huge sea turtle skeleton on the beach.
		..accept Beached Sea Turtle##4725 //? or 4725,4727,4731,4732
	step //71
		'Go underwater to 39.6,27.5|goto 39.6,27.5
		.' Click the Mist Veil's Lockbox|tip It's a small grey chest at the very bottom of the ship.
		.get Mist Veil's Lockbox|q 982/2
	step //72
		'Go underwater to 38.2,28.8|goto 38.2,28.8
		.' Click the Silver Dawning's Lockbox|tip It's a small grey chest at the very bottom of this ship.
		.get Silver Dawning's Lockbox|q 982/1
	step //73
		goto 38.1,41.2
		.talk Gorbold Steelhand##6301
		..turnin Deep Ocean, Vast Sea##982
	step //74
		goto 37.4,40.1
		.talk Thundris Windweaver##3649
		..turnin The Cliffspring River##4762
		..accept Tools of the Highborne##958
	step //75
		goto 37.7,43.4
		.talk Sentinel Glynda Nal'Shea##2930
		..turnin The Fragments Within##4813
	step //76
		goto 37.3,43.6
		.talk Barithras Moonshade##3583
		..accept Cave Mushrooms##947
	step //77
		goto 35.7,43.7
		.talk Cerellean Whiteclaw##3644
		..accept For Love Eternal##963
	step //78
		goto 36.6,45.6
		.talk Gwennyth Bly'Leggonde##10219
		..turnin Beached Sea Turtle##4725//? or 4725,4727,4731,4732
	step //79
		goto 38.8,43.4
		.talk Tharnariun Treetender##3701
		..turnin Cleansing of the Infected##2138
		..accept Tharnariun's Hope##2139
	step //80
		goto 40.3,59.7
		.talk Sentinel Tysha Moonblade##3639
		..accept The Fall of Ameth'Aran##953
	step //81
		goto 41.5,59.1
		.from Cursed Highborne##2176+, Writhing Highborne##2177+, Wailing Highborne##2178+
		.get 7 Highborne Relic|q 958/1
	step //82
		goto 43.3,58.7
		.' Click the Lay of Ameth'Aran |tip It's a stone tablet laying flat on the ground.
		.' Read the Lay of Ameth'Aran |q 953/1
	step //83
		goto 43.3,59.7
		.from Anaya Dawnrunner##3667
		.get Anaya's Pendant|q 963/1
	step //84
		goto 42.4,61.8
		.' Click the Ancient Flame|tip It's a stone podium with a green coming out of the top of it, inside a dark colored broken gazebo.
		.' Destroy the seal at the ancient flame|goal Destroy the seal at the ancient flame|q 957/1
	step //85
		goto 42.6,63.1
		.' Click the Fall of Ameth'Aran|tip It's a stone tablet standing upright on the ground.
		.' Read the Fall of Ameth'Aran|goal Read the Fall of Ameth'Aran|q 953/2
	step //86
		goto 40.3,59.7
		.talk Sentinel Tysha Moonblade##3639
		..turnin The Fall of Ameth'Aran##953
	step //87
		goto 35.7,43.7
		.talk Cerellean Whiteclaw##3644
		..turnin For Love Eternal##963
	step //88
		goto 37.4,40.1
		.talk Thundris Windweaver##3649
		..turnin Tools of the Highborne##958
	step //89
		goto 44.2,36.3
		.talk Asterion##3650
		..turnin Bashal'Aran (4)##957
	step //90
		goto 52.4,35.9|n
		.' The path up to Tharnariun's Hope starts here|goto Darkshore,52.4,35.9,0.5|noway|c
	step //91
		goto 51.5,38.2
		.kill Den Mother|q 2139/1
	step //92
		goto 54.6,31.8|n
		.' The path up to Cave Mushrooms starts here|goto Darkshore,54.6,31.8,0.5|noway|c
	step //93
		goto 55.1,33.6
		.' Click the mushrooms up the hill, inside the cave
		.get 5 Scaber Stalk|q 947/1
		.get 1 Death Cap|q 947/2
	step //94
		goto 38.8,43.4
		.talk Tharnariun Treetender##3701
		..turnin Tharnariun's Hope##2139
	step //95
		goto 37.3,43.6
		.talk Barithras Moonshade##3583
		..turnin Cave Mushrooms##947
	step //96
		ding 17
	step //97
		'Fly to Rut'theran Village|goto Teldrassil,56.3,92.4,6|noway|c
		only NightElf Druid
	step //98
		goto Darnassus|goto Darnassus|noway|c
		only NightElf Druid
	step //99
		goto Darnassus,35.2,8.1
		.talk Mathrengyl Bearwalker##4217
		..accept A Lesson to Learn##27
		only NightElf Druid
	step //100
		'Remember, you have the spell Teleport: Moonglade
		.' Teleport to Moonglade|goto Moonglade|cast Teleport: Moonglade|c
		only NightElf Druid
	step //101
		goto Moonglade,56.2,30.5
		.talk Dendrite Starblaze##11802
		..turnin A Lesson to Learn##27
		..accept Trial of the Lake##29
		only NightElf Druid
	step //102
		'Go south in the lake to 57.6,57.8|goto 57.6,57.8
		.' Click the Bauble Container underwater|tip It looks like a wooden vase thing underwater on top of a big hill.  They spawn randomly, so you may have to search around the lake for another Bauble container.
		.collect Shrine Bauble##15877|q 29/1
		only NightElf Druid
	step //103
		goto 36.1,41.6
		.' Use the Shrine Bauble in your bags next to the tree that looks like a woman|use Shrine Bauble##15877
		.' Complete the Trial of the Lake|goal Complete the Trial of the Lake|q 29/1
		only NightElf Druid
	step //104
		goto 36.5,41.8
		.talk Tajarri##11799
		..turnin Trial of the Lake##29
		..accept Trial of the Sea Lion##272
		only NightElf Druid
	step //105
		goto 44.2,45.3
		.talk Silva Fil'naveth##11800
		..'Fly to Rut'theran Village|goto Teldrassil,56.3,92.4,6|noway|c
		only NightElf Druid
	step //106
		'Fly to Auberdine|goto Darkshore,36.4,45.6,0.3|noway|c
		only NightElf Druid
	step //107
		goto Darkshore,48.9,11.3
		.' Click the Strange Lockbox underwater
		.collect Half Pendant of Aquatic Agility##15883|q 272/1
		only NightElf Druid
	step //108
		goto 32.4,43.8|n
		'Ride the boat to Stormwind Harbor|goto Stormwind City|noway|c
		only NightElf Druid
	step //109
		'Fly to Sentinel Hill|goto Westfall,53.4,50.8,3|noway|c
		only NightElf Druid
	step //110
		goto Westfall,18.0,33.0
		.' Click the Strange Lockbox underwater
		.collect Half Pendant of Aquatic Endurance##15882|q 272/1
		only NightElf Druid
	step //111
		'Teleport to Moonglade|goto Moonglade|cast Teleport: Moonglade|c
		only NightElf Druid
	step //112
		goto Moonglade,36,42
		.' Stand next to the tree that looks like a woman
		.' Click the Half Pendant of Aquatic Agility in your bags|use Half Pendant of Aquatic Agility##15883
		.get Pendant of the Sea Lion|q 272/1
		only NightElf Druid
	step //113
		goto 56.2,30.5
		.talk Dendrite Starblaze##11802
		..turnin Trial of the Sea Lion##272
		..accept Aquatic Form##5061
		only NightElf Druid
	step //114
		goto 44.2,45.3|n
		.talk Silva Fil'naveth##11800
		..'Fly to Rut'theran Village|goto Teldrassil,56.3,92.4,6|noway|c
		only NightElf Druid
	step //115
		goto Darnassus|goto Darnassus|noway|c
		only NightElf Druid
	step //116
		goto Darnassus,35.2,8.1
		.talk Mathrengyl Bearwalker##4217
		..turnin Aquatic Form##5061
		only NightElf Druid
	step //117
		'Go to Rut'theran Village|goto Teldrassil,56.3,92.4,6|noway|c
		only NightElf Druid
	step //118
		'Fly to Auberdine|goto Darkshore,36.4,45.6,0.3|noway|c
		only NightElf Druid
	step //119
		'Hearth to Sentinel Hill|goto Westfall,52.9,53.6,0.5|use Hearthstone##6948|noway|c
	step //120
		goto Westfall,31.4,44.5
		.kill 15 Defias Looter|q 13/2
		.kill 15 Defias Pillager|q 13/1
	step //121
		goto 56.3,47.5
		.talk Gryan Stoutmantle##234
		..turnin The People's Militia (2)##13
		..accept The People's Militia (3)##14
		..accept The Defias Brotherhood (1)##65
	step //122
		goto 52.6,72.3
		.kill 15 Defias Highwayman|q 14/1
		.kill 5 Defias Pathstalker|q 14/2
		.kill 5 Defias Knuckleduster|q 14/3
	step //123
		goto 56.3,47.5
		.talk Gryan Stoutmantle##234
		..turnin The People's Militia (3)##14
	step //124
		'Fly to Thelsamar|goto Loch Modan,33.9,50.8,0.5|noway|c
	step //125
		home Thelsamar
	step //126
		goto 34.7,43.2
		.talk Magistrate Bluntnose##1139
		..accept Mercenaries##255
	step //127
		goto 24.8,18.4
		.talk Mountaineer Stormpike##1343
		..accept Filthy Paws##307
	step //128
		goto 35.4,18.5
		.' Click Miners' League Crates inside the cave
		.get 4 Miners' Gear|q 307/1
	step //129
		'Go outside to 24.8,18.4|goto 24.8,18.4
		.talk Mountaineer Stormpike##1343
		..turnin Filthy Paws##307
	step //130
		goto 37.2,47.4
		.talk Jern Hornhelm##1105
		..accept Ironband's Excavation##436
	step //131
		goto 64.9,66.7
		.talk Magmar Fellhew##1345
		..turnin Ironband's Excavation##436
		..accept Gathering Idols##297
	step //132
		'Go northeast to 65.9,65.6|goto 65.9,65.6
		.talk Prospector Ironband##1344
		..accept Excavation Progress Report##298
	step //133
		goto 68.1,63.2
		.from Stoneplinter Digger##1167+, Stonesplinter Geomancer##1165+ 
		.get 8 Carved Stone Idol|q 297/1
	step //134
		goto 64.9,66.7
		.talk Magmar Fellhew##1345
		..turnin Gathering Idols##297
	step //135
		ding 18
	step //136
		goto 83.5,65.5
		.talk Daryl the Youngling##1187
		..accept A Hunter's Boast##257
	step //137
		goto 81.8,61.7
		.talk Marek Ironheart##1154
		..accept Crocolisk Hunting##385
	step //138
		goto 77.4,58.3
		.kill 6 Mountain Buzzard|q 257/1
	step //139
		goto 83.5,65.5
		.talk Daryl the Youngling##1187
		..turnin A Hunter's Boast##257
		.'The next quest is timed. Make sure you are ready.
		..accept A Hunter's Challenge##258
	step //140
		goto 65.3,39.1
		.kill 5 Elder Mountain Boar|q 258/1
	step //141
		goto 83.5,65.5
		.talk Daryl the Youngling##1187
		..turnin A Hunter's Challenge##258
	step //142
		goto 63.6,47.9
		.talk Bingles Blastenheimer##6577
		..accept Bingles' Missing Supplies##2038
	step //143
		goto 55.2,54
		.from Loch Crocolisk##1693+
		.get 5 Crocolisk Meat|q 385/1
		.get 6 Crocolisk Skin|q 385/2
	step //144
		goto 48.7,30.1
		.' Click Bingles's Toolbucket|tip It's a little silver bucket on the ground.
		.get Bingles' Wrench|q 2038/1
	step //145
		goto 54.2,26.6
		.' Click Bingles' Blastencapper|tip It's the little bitty barrel to the right of the hut entrance with a fuse on it.
		.get Bingles' Blastencapper|q 2038/4
	step //146
		goto 51.8,24.1
		.' Click Bingles's Toolbucket|tip It's a little silver bucket on the ground.
		.get Bingles' Hammer|q 2038/3
	step //147
		goto 48.1,21.1
		.' Click Bingles' Toolbucket|tip It's a little silver bucket on the ground.
		.get Bingles' Screwdriver|q 2038/2
	step //148
		goto 46,13.6
		.talk Chief Engineer Hinderweir VII##1093
		..accept A Dark Threat Looms (1)##250
	step //149
		goto 56,13.3
		.' Click the Suspicious Barrel|tip Its a little barrel sitting on the ground right next to the wall.
		..turnin A Dark Threat Looms (1)##250
		..accept A Dark Threat Looms (2)##199
	step //150
		goto 46,13.6
		.talk Chief Engineer Hinderweir VII##1093
		..turnin A Dark Threat Looms (2)##199
	step //151
		goto 67.1,22.2
		.kill 4 Mo'grosh Ogre|q 255/1
		.kill 4 Mo'grosh Enforcer|q 255/3
	step //152
		goto 75,19.8
		.kill 4 Mo'grosh Brute|q 255/2
	step //153
		goto 63.6,47.9
		.talk Bingles Blastenheimer##6577
		..turnin Bingles' Missing Supplies##2038
	step //154
		goto 81.8,61.7
		.talk Marek Ironheart##1154
		..turnin Crocolisk Hunting##385
	step //155
		goto 81.7,64.2
		.talk Vyrin Swiftwind##1156
		..accept Vyrin's Revenge (1)##271
	step //156
		goto 43,64
		.from Ol' Sooty##1225
		.get Ol' Sooty's Head|q 271/1
	step //157
		goto 83.5,65.5
		.talk Daryl the Youngling##1187
		..turnin Vyrin's Revenge (1)##271
		..accept Vyrin's Revenge (2)##531
	step //158
		goto 81.7,64.2
		.talk Vyrin Swiftwind##1156
		..turnin Vyrin's Revenge (2)##531
	step //159
		'Hearth to Thelsamar|goto Loch Modan,35.1,46.9,3|use Hearthstone##6948|noway|c
	step //160
		goto 34.7,43.2
		.talk Magistrate Bluntnose##1139
		..turnin Mercenaries##255
	step //161
		goto 37.2,47.4
		.talk Jern Hornhelm##1105
		..turnin Excavation Progress Report##298
		..accept Report to Ironforge##301
	step //162
		ding 19
	step //163
		'Fly to Ironforge|goto Ironforge|noway|c
	step //164
		goto Ironforge,74.7,11.7
		.talk Prospector Stormpike##1356
		..turnin Report to Ironforge##301
	step //165
		'Fly to Stormwind City|goto Stormwind City|noway|c
	step //166
		'Go outside to Elwynn Forest|goto Elwynn Forest|noway|c
	step //167
		'Go east to Redridge Mountains|goto Redridge Mountains|noway|c
	step //168
		goto Redridge Mountains,15.3,71.5
		.talk Guard Parker##464
		..accept Encroaching Gnolls##244
	step //169
		goto 30.7,60
		.talk Deputy Feldon##1070
		..turnin Encroaching Gnolls##244
		..accept Assessing the Threat##246
	step //170
		goto 30.6,59.4
		.talk Ariena Stormfeather##931
		..fpath Lakeshire
	step //171
		goto 33.5,49
		.talk Marshal Marris##382
		..accept Blackrock Menace##20
	step //172
		goto 32.1,48.6
		.talk Foreman Oslow##341
		..accept The Lost Tools##125
	step //173
		goto 31,47.3
		.talk Verner Osgood##415
		..accept The Price of Shoes##118
	step //174
		goto 29.3,53.6
		.talk Shawn##8965
		..accept Hilary's Necklace##3741
	step //175
		goto 29.1,55.1
		.' Click the Glinting Mud|tip The Glinting Mud spawns in random places around this area, so some searching may be necessary.
		.get Hilary's Necklace|q 3741/1
	step //176
		goto 41.5,54.6
		.' Click the Sunken Chest
		.get Oslow's Toolbox|q 125/1
	step //177
		goto 32.1,48.6
		.talk Foreman Oslow##341
		..turnin The Lost Tools##125
		..accept The Everstill Bridge##89
	step //178
		goto 29.3,53.6
		.talk Hilary##8962
		..turnin Hilary's Necklace##3741
	step //179
		goto 30,44.4
		.talk Bailiff Conacher##900
		..accept Solomon's Law##91
	step //180
		goto 27.7,47.4
		.talk Dockmaster Baren##381
		..accept Selling Fish##127
	step //181
		goto 26.6,44.3
		.talk Darcy##379
		..accept A Free Lunch##129
	step //182
		home Lakeshire
	step //183
		goto 26.5,45.3
		.talk Wiley the Black##266
		..turnin The Defias Brotherhood (1)##65
		..accept The Defias Brotherhood (2)##132
	step //184
		goto 22.7,43.8
		.talk Chef Breanna##343
		..accept Redridge Goulash##92
	step //185
		goto 21.9,46.3
		.talk Martie Jainrose##342
		..accept An Unwelcome Guest##34
	step //186
		goto 15.3,71.5
		.talk Guard Parker##464
		..turnin A Free Lunch##129
		..accept Visit the Herbalist##130
	step //187
		'Fly to Sentinel Hill|goto Westfall,53.4,50.8,3|noway|c
	step //188
		goto Westfall,56.3,47.5
		.talk Gryan Stoutmantle##234
		..turnin The Defias Brotherhood (2)##132
		..accept The Defias Brotherhood (3)##135
	step //189
		'Fly to Stormwind City|goto Stormwind City|noway|c
	step //190
		goto Stormwind City,78.3,70.7
		.talk Master Mathias Shaw##332
		..turnin The Defias Brotherhood (3)##135
		..accept The Defias Brotherhood (4)##141
	step //191
		'Fly to Sentinel Hill|goto Westfall,53.4,50.8,3|noway|c
	step //192
		goto Westfall,56.3,47.5
		.talk Gryan Stoutmantle##234
		..turnin The Defias Brotherhood (4)##141
		..accept The Defias Brotherhood (5)##142
	step //193
		'Fly to Stormwind City|goto Stormwind City|noway|c
	step //194
		'Go outside to Elwynn Forest|goto Elwynn Forest|noway|c
	step //195
		goto Elwynn Forest,41.7,65.5
		.talk Smith Argus##514
		..turnin The Price of Shoes##118
		..accept Return to Verner##119
	step //196
		'Hearth to Lakeshire|goto Redridge Mountains,26.9,44.9,0.5|use Hearthstone##6948|noway|c
	step //197
		goto Redridge Mountains,21.9,46.3
		.talk Martie Jainrose##342
		..turnin Visit the Herbalist##130
		..accept Delivering Daffodils##131
	step //198
		goto 26.6,44.3
		.talk Darcy##379
		..turnin Delivering Daffodils##131
	step //199
		goto 31,47.3
		.talk Verner Osgood##415
		..turnin Return to Verner##119
		..accept Underbelly Scales##122
		..accept A Baying of Gnolls##124
	step //200
		goto 34.2,67.4
		.from Black Dragon Whelp##1221+
		.get 6 Underbelly Whelp Scale|q 122/1
		.from Great Goretusk##2296+
		.get 5 Great Goretusk Snout|q 92/1
	step //201
		goto 19.3,73.2
		.from Tarantula##442+
		.get 5 Crisp Spider Meat|q 92/3
	step //202
		goto 26.8,80.2
		.kill 10 Redridge Mongrel|q 246/1
		.kill 6 Redridge Poacher|q 246/2
	step //203
		goto 30.7,60
		.talk Deputy Feldon##1070
		..turnin Assessing the Threat##246
	step //204
		goto 31,47.3
		.talk Verner Osgood##415
		..turnin Underbelly Scales##122
	step //205
		ding 20
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Levels (20-25)",[[
	author support@zygorguides.com
	next Zygor's Alliance Leveling Guides\\Levels (25-30)
	startlevel 20
	step //1
		goto Redridge Mountains,48.2,73.3
		.from Murloc Flesheater##422+, Murloc Shorestriker##1083+, Murloc Minor Tidecaller##548+
		.get 10 Spotted Sunfish|q 127/1
		.' Get 8 Murloc Fins for a later quest|collect 8 Murloc Fin##1468|q 150 |future
	step //2
		goto 55.5,74.7
		.from Dire Condor##428+
		.get 5 Tough Condor Meat|q 92/2
	step //3
		goto 70.6,78.8
		.from Blackrock Grunt##440+, Blackrock Outrunner##485+
		.get 10 Battleworn Axe|q 20/1
	step //4
		'Hearth to Lakeshire|goto Redridge Mountains,26.9,44.9,0.5|use Hearthstone##6948|noway|c
	step //5
		'Fly to Stormwind|goto Stormwind City|noway|c
		only Gnome Warlock,Human Warlock
	step //6
		'Ride the train to Ironforge|goto Ironforge|noway|c
		only Gnome Warlock,Human Warlock
	step //7
		goto Ironforge,47.6,9.3
		.talk Lago Blackwrench##6120
		..accept Gakin's Summons##1717 |noobsolete
		only Gnome Warlock,Human Warlock
	step //8
		'Ride the train to Stormwind|goto Stormwind City|noway|c
		only Gnome Warlock,Human Warlock
	step //9
		goto Stormwind City,39.6,84.6
		.talk Gakin the Darkbinder##6122
		..turnin Gakin's Summons##1717
		..accept Devourer of Souls##1716 |noobsolete
		only Gnome Warlock,Human Warlock
	step //10
		goto 22.6,56.1|n
		'Ride the boat to Auberdine|goto Darkshore,32.4,43.7,1|noway|c
		only Gnome Warlock,Human Warlock
	step //11
		'Go southeast to Ashenvale|goto Ashenvale|noway|c
		only Gnome Warlock,Human Warlock
	step //12
		'Go southeast to the Barrens|goto The Barrens|noway|c
		only Gnome Warlock,Human Warlock
	step //13
		goto The Barrens,49.3,57.2
		.talk Takar the Seer##6244
		..turnin Devourer of Souls##1716
		..accept Heartswood##1738 |noobsolete
		only Gnome Warlock,Human Warlock
	step //14
		'Go north to Ashenvale|goto Ashenvale|noway|c
		only Gnome Warlock,Human Warlock
	step //15
		goto Ashenvale,31.2,31.2
		.' Click the Heartswood tree|tip It's a tall tree.
		.get Heartswood|q 1738/1
		only Gnome Warlock,Human Warlock
	step //16
		'Go north to Darkshore|goto Darkshore|noway|c
		only Gnome Warlock,Human Warlock
	step //17
		goto Darkshore,32.4,43.8
		'Ride the boat to Stormwind Harbor|goto Stormwind City|noway|c
		only Gnome Warlock,Human Warlock
	step //18
		goto Stormwind City,39.6,84.6
		.talk Gakin the Darkbinder##6122
		..turnin Heartswood##1738
		..accept The Binding##1739 |noobsolete
		only Gnome Warlock,Human Warlock
	step //19
		'Go downstairs into the crypt to 22.1,84.4|goto 22.1,84.4
		.' Use your Heartswood Core while standing on the pink Summoning Circle|use Heartswood Core##6913
		.kill Summoned Succubus|q 1739/1
		only Gnome Warlock,Human Warlock
	step //20
		'Go upstairs to 39.6,84.6|goto 39.6,84.6
		.talk Gakin the Darkbinder##6122
		..turnin The Binding##1739
		only Gnome Warlock,Human Warlock
	step //21
		'Fly to Lakeshire|goto Redridge Mountains|noway|c
		only Gnome Warlock,Human Warlock
	step //22
		goto Redridge Mountains,22.7,43.8
		.talk Chef Breanna##343
		..turnin Redridge Goulash##92
	step //23
		goto 27.7,47.4
		.talk Dockmaster Baren##381
		..turnin Selling Fish##127
		..accept Murloc Poachers##150
		..turnin Murloc Poachers##150
	step //24
		goto 33.5,49
		.talk Marshal Marris##382
		..turnin Blackrock Menace##20
	step //25
		goto 29,37.4
		.kill 10 Redridge Brute|q 124/1
		.kill 8 Redridge Mystic|q 124/2
		.from Redridge Brute##426+, Redridge Mystic##430+
		.get 5 Iron Pike|q 89/1
		.get 5 Iron Rivet|q 89/2
	step //26
		goto 32.1,48.6
		.talk Foreman Oslow##341
		..turnin The Everstill Bridge##89
	step //27
		goto 31,47.3
		.talk Verner Osgood##415
		..turnin A Baying of Gnolls##124
	step //28
		'Fly to Sentinel Hill|goto Westfall,56.5,52.7,0.5|noway|c
	step //29
		home Sentinel Hill
	step //30
		goto Westfall,44.2,69.3
		.from Defias Messenger##550
		.get A Mysterious Message|q 142/1
	step //31
		goto 30.1,85.9
		.talk Captain Grayson##392
		..accept Keeper of the Flame##103
		..turnin Keeper of the Flame##103
		..accept The Coastal Menace##104
	step //32
		goto 29.7,79.9
		.from Old Murk-Eye##391
		.get Scale of Old Murk-Eye|q 104/1
	step //33
		goto 30.1,85.9
		.talk Captain Grayson##392
		..turnin The Coastal Menace##104
	step //34
		ding 21
	step //35
		'Hearth to Sentinel Hill|goto Westfall,53.4,50.8,3|use Hearthstone##6948|noway|c
	step //36
		goto 56.3,47.5
		.talk Gryan Stoutmantle##234
		..turnin The Defias Brotherhood (5)##142
		.talk Defias Traitor##467
		..accept The Defias Brotherhood (6)##155
		..'Escort The Defias Traitor to discover where VanCleef is hiding|goal Escort The Defias Traitor to discover where VanCleef is hiding|q 155/1
	step //37
		goto 56.3,47.5
		.talk Gryan Stoutmantle##234
		..turnin The Defias Brotherhood (6)##155
	step //38
		'Fly to Stormwind|goto Stormwind City|noway|c
	step //39
		goto Stormwind City,22.6,56.1|n
		'Ride the boat to Auberdine|goto Darkshore,32.4,43.7,1|noway|c
	step //40
		goto 36.1,44.9
		.talk Gubber Blump##10216
		..accept Fruit of the Sea##1138
	step //41
		home Auberdine
	step //42
		goto 37.2,44.2
		.' Click the Wanted Poster|tip On the side of the road, next to the wall of the inn.
		..accept WANTED: Murkdeep!##4740
	step //43
		goto 37.3,43.6
		.talk Barithras Moonshade##3583
		..accept Onu##948
	step //44
		goto 39.4,43.5
		.talk Terenthis##3693
		..accept A Lost Master (1)##986
	step //45
		goto 39,43.6
		.talk Sentinel Elissa Starbreeze##3657
		..accept The Tower of Althalaxx (1)##965
	step //47
		goto 55,24.9
		.talk Balthule Shadowstrike##3661
		..turnin The Tower of Althalaxx (1)##965
		..accept The Tower of Althalaxx (2)##966
	step //48
		goto 55.2,26.4
		.from Dark Strand Fanatic##2336+
		.get 4 Worn Parchment|q 966/1
	step //49
		goto 55,24.9
		.talk Balthule Shadowstrike##3661
		..turnin The Tower of Althalaxx (2)##966
		..accept The Tower of Althalaxx (3)##967
	step //50
		goto 36.3,76.7
		.kill Murkdeep##10323|q 4740/1
	step //51
		goto 34.9,80
		.from Reef Crawler##2235+, Encrusted Tide Crawler##2233+
		.get 6 Fine Crab Chunks|q 1138/1
	step //52
		goto 32.9,81.1
		.' Click the Beached Sea Creature|tip It's a big sea creature skeleton on the beach.
		..accept Beached Sea Creature##4730 //? or 4728,4730,4733
	step //53
		goto 37.6,82.4
		.from Grizzled Thistle Bear##2165+
		.get 4 Grizzled Scalp|q 1003/1
		.from Moonstalker Sire##2237+, Moonstalker Matriarch##2071+
		.get 5 Fine Moonstalker Pelt|q 986/1
	step //54
		goto 41.4,80.6
		.' Click Buzzbox 525|tip It's a metal box with levers on it, on the side of the road.
		..turnin Buzzbox 525##1003
	step //55
		goto 43.5,76.3
		.talk Onu##3616
		..turnin Onu##948
		..accept The Master's Glaive##944
	step //56
		goto 38.5,86.2
		.' Clear the mobs around the table
		.' Jump on the table with the remains on it
		.' Click your Phial of Scrying in your bags|use Phial of Scrying##5251
		.' Create the Scrying Bowl
		.' Click the Scrying Bowl
		..turnin The Master's Glaive##944
		..accept The Twilight Camp##949
		.' Click the Twilight Tome
		..turnin The Twilight Camp##949
		..accept Return to Onu##950
	step //57
		goto 38.7,87.4
		.talk Therylune##3584
		..accept Therylune's Escape##945
		.' Escort Therylune away from the Master's Glaive|goal Escort Therylune away from the Master's Glaive|q 945/1
	step //58
		goto 43.5,76.3
		.talk Onu##3616
		..turnin Return to Onu##950
		..accept Mathystra Relics##951
	step //59
		goto 44.4,76.4
		.talk Kerlonian Evershade##11218
		..accept The Sleeper Has Awakened##5321
		.' Click Kerlonian's Chest next to him
		.collect Horn of Awakening##13536|q 5321/2
	step //60
		goto Ashenvale,26.8,36.8
		'Escort Kerlonian Evershade south to Ashenvale, then south to Maestra's Post|goal Escort Kerlonian Evershade to Maestra's Post|q 5321/1|tip Do NOT follow the road. Walk in the forest as much as you can. This will allow you to avoid the ambushes along the way.
		.' Use your Horn of Awakening on Kerlonian Evershade when he falls asleep to wake him up|use Horn of Awakening##13536
	step //61
		goto 27.3,35.6
		.talk Liladris Moonriver##11219
		..turnin The Sleeper Has Awakened##5321
	step //62
		goto 26.2,38.6
		.talk Delgren the Purifier##3663
		..turnin The Tower of Althalaxx (3)##967
		..accept The Tower of Althalaxx (4)##970
	step //63
		goto 26.4,38.6
		.talk Orendil Broadleaf##3847
		..accept Bathran's Hair##1010
	step //64
		goto 22.7,51.9
		.talk Therysil##3585
		..turnin Therylune's Escape##945
	step //65
		goto 34.4,48
		.talk Daelyshia##4267
		..fpath Astranaar
	step //66
		goto 34.9,49.8
		.talk Sentinel Thenysil##4079
		..accept On Guard in Stonetalon (1)##1070
	step //67
		goto 35.8,49.1
		.talk Faldreas Goeth'Shael##3996
		..accept Journey to Stonetalon Peak##1056
	step //68
		goto 36.6,49.6
		.talk Raene Wolfrunner##3691
		..accept Raene's Cleansing (1)##991
		..accept Culling the Threat##1054
	step //69
		ding 22
	step //70
		'Fly to Auberdine|goto Darkshore,36.4,45.6,0.3|noway|c
	step //71
		goto Darkshore,36.6,45.6
		.talk Gwennyth Bly'Leggonde##10219
		..turnin Beached Sea Creature##4730 //? or 4728,4730,4733
	step //72
		goto 36.1,44.9
		.talk Gubber Blump##10216
		..turnin Fruit of the Sea##1138
	step //73
		goto 37.7,43.4
		.talk Sentinel Glynda Nal'Shea##2930
		..turnin WANTED: Murkdeep!##4740
	step //74
		goto 39.4,43.5
		.talk Terenthis##3693
		..turnin A Lost Master (1)##986
		..accept A Lost Master (2)##993
	step //75
		goto 57.2,23.5
		.' Click the Mathystra Relics|tip They look like stone balls and figurines on the ground around this area.
		.get 6 Mathystra Relic|q 951/1
	step //76
		'Hearth to Auberdine|goto Darkshore,38.1,43.1,9|use Hearthstone##6948|noway|c
	step //77
		goto 43.5,76.3
		.talk Onu##3616
		..turnin Mathystra Relics##951
	step //78
		goto 45,85.3
		.talk Volcor##3692
		..turnin A Lost Master (2)##993
		..accept Escape Through Force##994
		.goal Help Volcor to the road|q 994/1
	step //79
		'Go south to Ashenvale|goto Ashenvale|noway|c
	step //80
		goto Ashenvale,29.6,24
		.' Click the Plant Bundles|tip They look like little white straw teepees on the ground around this area.
		.get 5 Bathran's Hair|q 1010/1
	step //81
		goto 32.7,28.7
		.from Dark Strand Cultist##3725+, Dark Strand Adept##3728+, Dark Strand Excavator##3730+, Dark Strand Enforcer##3727+
		.get Glowing Soul Gem|q 970/1
	step //82
		goto 26.2,38.6
		.talk Delgren the Purifier##3663
		..turnin The Tower of Althalaxx (4)##970
	step //83
		goto 26.4,38.6
		.talk Orendil Broadleaf##3847
		..turnin Bathran's Hair##1010
		..accept Orendil's Cure##1020
	step //84
		goto 34.6,48.8
		.talk Shindrell Swiftfire##3845
		..accept The Zoram Strand##1008
	step //85
		goto 37.4,51.8
		.talk Pelturas Whitemoon##3894
		..turnin Orendil's Cure##1020
		..accept Elune's Tear##1033
	step //86
		home Astranaar
	step //87
		goto 20.3,42.3
		.' Click Teronis' Corpse|tip Teronis' Corpse is on the little island in the middle of the lake.
		..turnin Raene's Cleansing (1)##991
		..accept Raene's Cleansing (2)##1023
		.from Saltspittle Warrior##3739+, Saltspittle Puddlejumper##3737+, Saltspittle Muckdweller##3740+, Saltspittle Oracle##3742+
		.get Glowing Gem|q 1023/1
	step //88
		goto 14.8,31.3
		.talk Talen##3846
		..accept The Ancient Statuette##1007
	step //89
		goto 14.2,26.8
		.from Wrathtail Sorceress##3717+, Wrathtail Wave Rider##3713+
		.get 20 Wrathtail Head|q 1008/1
	step //90
		goto 14.2,20.6
		.' Click the Ancient Statuette|tip Looks like a stone figurine on the ground.
		.get Ancient Statuette|q 1007/1
	step //91
		goto 14.8,31.3
		.talk Talen##3846
		..turnin The Ancient Statuette##1007
		..accept Ruuzel##1009
	step //92
		goto 7.4,12.6
		.from Ruuzel##3943
		.get Ring of Zoram|q 1009/1
	step //93
		goto 14.8,31.3
		.talk Talen##3846
		..turnin Ruuzel##1009
	step //94
		ding 23
	step //95
		'Hearth to Astranaar|goto Ashenvale,35.5,50.2,5|use Hearthstone##6948|noway|c
	step //96
		goto 36.6,49.6
		.talk Raene Wolfrunner##3691
		..turnin Raene's Cleansing (2)##1023
		..accept Raene's Cleansing (3)##1024
		..accept An Aggressive Defense##1025
	step //97
		goto 34.7,48.8
		.talk Shindrell Swiftfire##3845
		..turnin The Zoram Strand##1008
		..accept Pridewings of Stonetalon##1134
	step //98
		goto 37.4,33.9
		.from Dal Bloodclaw##3987
		.get Dal Bloodclaw's Skull|q 1054/1
	step //99
		goto 36.6,49.6
		.talk Raene Wolfrunner##3691
		..turnin Culling the Threat##1054
	step //100
		goto 50.1,56.4|n
		.' The path to Shael'dryn starts here.|goto Ashenvale,50.1,56.4,0.5|noway|c
	step //101
		goto 53.5,46.3
		.talk Shael'dryn##3916
		..turnin Raene's Cleansing (3)##1024
		..accept Raene's Cleansing (4)##1026
	step //102
		goto 50.9,60.2
		.kill 1 Foulweald Den Watcher|q 1025/1
		.kill 2 Foulweald Ursa|q 1025/2
		.kill 10 Foulweald Totemic|q 1025/3
		.kill 12 Foulweald Warrior|q 1025/4
	step //103
		goto 44.0,55.0|n
		.' The path to 'Elune's Tear' starts here|goto Ashenvale,44.0,55.0,0.5|noway|c
	step //104
		goto 46.2,46
		.' Click an Elune's Tear|tip They look like big white pearls at the base of the tree on the island in the middle of the lake.
		.get Elune's Tear|q 1033/1
	step //105
		'Hearth to Astranaar|goto Ashenvale,35.5,50.2,5|use Hearthstone##6948|noway|c
	step //106
		goto 36.6,49.6
		.talk Raene Wolfrunner##3691
		..turnin An Aggressive Defense##1025
	step //107
		goto 34.9,49.8
		.talk Vindicator Palanaar##17106
		..accept A Helping Hand##9533
	step //108
		goto 37.4,51.8
		.talk Pelturas Whitemoon##3894
		..turnin Elune's Tear##1033
		..accept The Ruins of Stardust##1034
	step //109
		goto 37.4,55.2|n
		.' The path to the Ruins of Stardust starts here|goto Ashenvale,37.4,55.2,0.5|noway|c
	step //110
		goto 33.7,66.5
		.' Click the Stardust Covered Bushes|tip They look like sparkling bushes around this area.
		.get 5 Handful of Stardust|q 1034/1
	step //111
		goto 37.4,51.8
		.talk Pelturas Whitemoon##3894
		..turnin The Ruins of Stardust##1034
		..accept Fallen Sky Lake##1035
	step //112
		goto 49.8,67.2
		.talk Sentinel Velene Starstrike##3885
		..accept Elemental Bracers##1016
	step //113
		goto 49.4,69.3
		.from Befouled Water Elemental##3917+
		.collect 5 Intact Elemental Bracer##12220|n
		.' Use your Divining Scroll on the Intact Elemental Bracers|use Divining Scroll##5456
		.get Divined Scroll|q 1016/1
	step //114
		goto 49.8,67.2
		.talk Sentinel Velene Starstrike##3885
		..turnin Elemental Bracers##1016
	step //115
		'Go southwest to Talondeep path at 42.3,71.1|goto Ashenvale,42.3,71.1|n
		.' Go through the tunnel to Stonetalon Mountains|goto Stonetalon Mountains,78.2,42.9,0.5|noway|c
	step //116
		goto Stonetalon Mountains,59,62.6
		.talk Ziz Fizziks##4201
		..accept Super Reaper 6000##1093
	step //117
		goto 59.7,67
		.talk Kaela Shadowspear##4080
		..turnin On Guard in Stonetalon (1)##1070
		..accept On Guard in Stonetalon (2)##1085
		.talk Gaxim Rustfizzle##4077
		..turnin On Guard in Stonetalon (2)##1085
		..accept A Gnome's Respite##1071
	step //118
		ding 24
	step //119
		goto 61.7,55.5
		.kill 10 Venture Co. Logger|q 1071/1
		.kill 10 Venture Co. Deforester|q 1071/2
	step //120
		goto 62.8,53.8
		.from Venture Co. Operator##3988+
		.get Super Reaper 6000 Blueprints |q 1093/1
	step //121
		goto 59,62.6
		.talk Ziz Fizziks##4201
		..turnin Super Reaper 6000##1093
	step //122
		goto 59.7,67
		.talk Gaxim Rustfizzle##4077
		..turnin A Gnome's Respite##1071
		..accept An Old Colleague##1072
		..accept A Scroll from Mauren##1075
	step //123
		goto 51.5,46
		.from Pridewing Wyvern##4012+, Pridewing Consort##4014+
		.get 12 Pridewing Venom Sac|q 1134/1
	step //124
		goto 37.1,8.1
		.talk Keeper Albagorm##3994
		..turnin Journey to Stonetalon Peak##1056
	step //125
		goto 36.4,7.2
		.talk Teloren##4407
		..fpath Stonetalon Peak
	step //126
		'Fly to Astranaar|goto Ashenvale,35.5,50.2,5|noway|c
	step //127
		goto Ashenvale,34.7,48.8
		.talk Shindrell Swiftfire##3845
		..turnin Pridewings of Stonetalon##1134
		..accept Kayneth Stillwind##4581
	step //128
		'Fly to Auberdine|goto Darkshore,36.4,45.6,0.3|noway|c
	step //129
		goto Darkshore,39.4,43.5
		.talk Terenthis##3693
		..turnin Escape Through Force##994
	step //130
		goto 32.4,43.8|n
		'Ride the boat to Stormwind Harbor|goto Stormwind City|noway|c
	step //131
		goto Stormwind City,53,86.6
		.talk Collin Mauren##4078
		..turnin A Scroll from Mauren##1075
	step //132
		'Fly to Ironforge|goto Ironforge|noway|c
	step //133
		goto Ironforge,72.1,51.9
		.talk Lomac Gearstrip##4081
		..turnin An Old Colleague##1072
	step //134
		'Fly to Thelsamar|goto Loch Modan,33.9,50.8,0.5|noway|c
	step //135
		goto Loch Modan,34.8,47.1
		.talk Mountaineer Kadrell##1340
		..accept Report to Mountaineer Rockgar##468
	step //136
		goto 25.4,10.4
		.talk Mountaineer Rockgar##1342
		..turnin Report to Mountaineer Rockgar##468
		..accept The Algaz Gauntlet##455
	step //137
		'Go into the tunnel to 49.7,79.5|goto Wetlands,49.7,79.5
		.kill 8 Dragonmaw Scout|q 455/2
		.kill 6 Dragonmaw Grunt|q 455/3
	step //138
		'Follow the path through the tunnels to 53.9,70.3|goto 53.9,70.3|n
		.' Traverse Dun Algaz|goal Traverse Dun Algaz|q 455/1
	step //139
		goto 49.9,39.4
		.talk Einar Stonegrip##2093
		..accept Daily Delivery##469
	step //140
		goto 11.5,52.2
		.talk Tarrel Rockweaver##2096
		..accept In Search of The Excavation Team (1)##305
	step //141
		goto 8.5,55.7
		.talk James Halloran##2094
		..turnin Daily Delivery##469
		..accept Young Crocolisk Skins##484
	step //142
		goto 8.3,58.6
		.talk Karl Boran##1242
		..accept Claws from the Deep##279
	step //143
		goto 9.5,59.7
		.talk Shellei Brondir##1571
		..fpath Menethil Harbor
	step //144
		goto 10.9,59.6
		.talk First Mate Fitzsimmons##1239
		..accept The Third Fleet##288
		..accept The Greenwarden##463
	step //145
		goto 10.8,60.8
		.talk Innkeeper Helbrek##1464
		..buy Flagon of Mead|goal Flagon of Mead|q 288/1
	step //146
		home Menethil Harbor
	step //147
		goto 10.9,59.6
		.talk First Mate Fitzsimmons##1239
		..turnin The Third Fleet##288
	step //148
		goto 11.8,58
		.talk Sida##2111
		..accept Digging Through the Ooze##470
	step //149
		goto 10.1,56.9
		.talk Valstag Ironjaw##2086
		..turnin The Algaz Gauntlet##455
		..accept Report to Captain Stoutfist##473
	step //150
		goto 9.9,57.5
		.talk Captain Stoutfist##2104
		..turnin Report to Captain Stoutfist##473
		..accept War Banners##464
	step //151
		goto 13.8,41.9
		.kill 12 Bluegill Murloc|q 279/1
	step //152
		goto 15,40.7
		.from Gobbler##1259
		.get Gobbler's Head|q 279/2
	step //153
		ding 25
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Levels (25-30)",[[
	author support@zygorguides.com
	next Zygor's Alliance Leveling Guides\\Levels (30-35)
	startlevel 25
	step //1
		goto Wetlands,38.1,51.1
		.talk Ormer Ironbraid##1078
		..accept Ormer's Revenge (1)##294
	step //2
		goto 38.8,52.3
		.talk Merrin Rockweaver##1076
		..turnin In Search of The Excavation Team (1)##305
		..accept In Search of The Excavation Team (2)##306
		.talk Prospector Whelgar##1077
		..accept Uncovering the Past##299
	step //3
		goto 29.1,44.8
		.kill 10 Mottled Raptor|q 294/1
		.kill 10 Mottled Screecher|q 294/2
	step //4
		goto Wetlands,38.1,51.1
		.talk Ormer Ironbraid##1078
		..turnin Ormer's Revenge (1)##294
		..accept Ormer's Revenge (2)##295
	step //5
		goto 34.8,45.4
		.kill 10 Mottled Scytheclaw|q 295/1
		.kill 10 Mottled Razormaw|q 295/2
		.' Get the 4 Relics that spawn randomly in different places around this area.  They can spawn up the hill next to Sarltooth also:
		..'Ados Fragment|get Ados Fragment|q 299/1|tip The Ados Fragment looks like a big stone box.
		..'Modr Fragment|get Modr Fragment|q 299/2|tip The Modr Fragment looks like a thin, tall red vase with a yellow face on it.
		..'Golm Fragment|get Golm Fragment|q 299/3|tip The Golm Fragment looks like a wide yellow vase with black silhouettes on it.
		..'Neru Fragment|get Neru Fragment|q 299/4|tip The Neru Fragment looks like a mound of dirt.
	step //6
		goto 38.1,51.1
		.talk Ormer Ironbraid##1078
		..turnin Ormer's Revenge (2)##295
		..accept Ormer's Revenge (3)##296
	step //7
		goto 38.8,52.3
		.talk Prospector Whelgar##1077
		..turnin Uncovering the Past##299
	step //8
		goto 42.9,41.2
		.from Dragonmaw Raider##1034+
		.get 8 Dragonmaw War Banner|q 464/1
	step //9
		goto 52.4,40.3
		.from Young Wetlands Crocolisk##1417+
		.get 4 Young Crocolisk Skin|q 484/1
	step //10
		goto 56.3,40.5
		.talk Rethiel the Greenwarden##1244
		..turnin The Greenwarden##463
		..accept Tramping Paws##276
	step //11
		goto 63.9,61.8
		.kill 15 Mosshide Gnoll|q 276/1
		.kill 10 Mosshide Mongrel|q 276/2
	step //12
		goto 56.3,40.5
		.talk Rethiel the Greenwarden##1244
		..turnin Tramping Paws##276
		..accept Fire Taboo##277
	step //13
		goto 46.4,35.3
		.from Mosshide Trapper##1011+, Mosshide Brute##1012+, Mosshide Fenrunner##1010+, Mosshide Mistweaver##1009+|tip Mosshide Gnolls and Mosshide Mongrels will not drop the Crude Flint.
		.get 9 Crude Flint|q 277/1
	step //14
		goto 56.3,40.5
		.talk Rethiel the Greenwarden##1244
		..turnin Fire Taboo##277
		..accept Blisters on The Land##275
	step //15
		'Hearth to Menethil Harbor|goto Wetlands,10.1,56.7,9|use Hearthstone##6948|noway|c
	step //16
		'Fly to Stormwind|goto Stormwind City|noway|c
		only Draenei Shaman
	step //17
		goto Stormwind City,22.6,56.1
		'Ride the boat to Auberdine|goto Darkshore,32.4,43.7,1|noway|c
		only Draenei Shaman
	step //18
		'Ride the boat to Azuremyst Isle|goto Azuremyst Isle|noway|c
		only Draenei Shaman
	step //19
		'Go northeast to the Exodar|goto The Exodar|noway|c
		only Draenei Shaman
	step //20
		goto The Exodar,32.3,23.9
		.talk Sulaa##17219
		..accept Call of Water (1)##9502|noobsolete
		only Draenei Shaman
	step //21
		goto 31.4,27.7
		.talk Farseer Nobundo##17204
		..turnin Call of Water (1)##9502|noobsolete
		..accept Call of Water (2)##9501|noobsolete
		only Draenei Shaman
	step //22
		'Go outside to Azuremyst Isle|goto Azuremyst Isle|noway|c
		only Draenei Shaman
	step //23
		'Go northeast to Bloodmyst Isle|goto Bloodmyst Isle|noway|c
		only Draenei Shaman
	step //24
		goto Bloodmyst Isle,32.2,16.3
		.talk Aqueous##17275
		..turnin Call of Water (2)##9501|noobsolete
		..accept Call of Water (3)##9503|noobsolete
		only Draenei Shaman
	step //25
		goto 32.9,39.3
		.from Fouled Water Spirit##17358+
		.get 6 Foul Essence|q 9503/1
		only Draenei Shaman
	step //26
		goto 32.2,16.3
		.talk Aqueous##17275
		..turnin Call of Water (3)##9503|noobsolete
		..accept Call of Water (4)##9504|noobsolete
		only Draenei Shaman
	step //27
		'Go southest to Azuremyst Isle|goto Azuremyst Isle|noway|c
		only Draenei Shaman
	step //28
		'Go southwest to ride the boat to Auberdine|goto Darkshore,32.8,42.0,9|noway|c
		only Draenei Shaman
	step //29
		'Fly to Astranaar|goto Ashenvale,35.5,50.2,5|noway|c
		only Draenei Shaman
	step //30
		goto Ashenvale,33.5,67.4
		.' Stand next to the Ruins of Stardust Fountain|tip The fountain is in the middle of a black gazebo.
		.' Click the Empty Bota Bag in your bags|use Empty Bota Bag##23749
		.get Filled Bota Bag|q 9504/1
		only Draenei Shaman
	step //31
		'Go north to Astranaar and fly to Auberdine|goto Darkshore,36.4,45.6,0.3|noway|c
		only Draenei Shaman
	step //32
		'Ride the boat to Azuremyst Isle|goto Azuremyst Isle|noway|c
		only Draenei Shaman
	step //33
		'Go northeast to Bloodmyst Isle|goto Bloodmyst Isle|noway|c
		only Draenei Shaman
	step //34
		goto Bloodmyst Isle,32.2,16.3
		.talk Aqueous##17275
		..turnin Call of Water (4)##9504|noobsolete
		..accept Call of Water (5)##9508|noobsolete
		only Draenei Shaman
	step //35
		goto 25.6,40.8
		.' Click the Barrel of Filth sitting next to the red river
		.from Tel'athion the Impure##17359
		.get Head of Tel'athion|q 9508/1
		only Draenei Shaman
	step //36
		goto 32.2,16.3
		.talk Aqueous##17275
		..turnin Call of Water (5)##9508|noobsolete
		..accept Call of Water (6)##9509|noobsolete
		only Draenei Shaman
	step //37
		'Go southeast to Azuremyst Isle|goto Azuremyst Isle|noway|c
		only Draenei Shaman
	step //38
		'Go southwest to the Exodar|goto The Exodar|noway|c
		only Draenei Shaman
	step //39
		goto The Exodar,31.4,27.7
		.talk Farseer Nobundo##17204
		..turnin Call of Water (6)##9509|noobsolete
		only Draenei Shaman
	step //40
		'Go outside to Azuremyst Isle|goto Azuremyst Isle|noway|c
		only Draenei Shaman
	step //41
		'Go southwest to ride the boat to Auberdine|goto Darkshore,32.8,42.0,9|noway|c
		only Draenei Shaman
	step //42
		'Ride the boat to Stormwind Harbor|goto Stormwind City|noway|c
		only Draenei Shaman
	step //43
		'Fly to Menethil Harbor|goto Wetlands,9.5,59.7,0.5|noway|c
		only Draenei Shaman
	step //44
		goto Wetlands,8.3,58.6
		.talk Karl Boran##1242
		..turnin Claws from the Deep##279
		..accept Reclaiming Goods##281
	step //45
		goto 8.5,55.7
		.talk James Halloran##2094
		..turnin Young Crocolisk Skins##484
		..accept Apprentice's Duties##471
	step //46
		goto 9.9,57.5
		.talk Captain Stoutfist##2104
		..turnin War Banners##464
		..accept Nek'rosh's Gambit##465
	step //47
		goto 11.5,52.2
		.talk Tarrel Rockweaver##2096
		..turnin In Search of The Excavation Team (2)##306
	step //48
		ding 26
	step //49
		goto 13.5,41.4
		.' Click the Damaged Crate on the ground by the murloc huts
		..turnin Reclaiming Goods##281
		..accept The Search Continues##284
	step //50
		goto 13.6,38.2
		.' Click the Sealed Barrel on the ground next to the murloc huts
		..turnin The Search Continues##284
		..accept Search More Hovels##285
	step //51
		goto 13.9,34.8
		.' Click the Half-buried Barrel next to the murloc hut
		..turnin Search More Hovels##285
		..accept Return the Statuette##286
	step //52
		goto 18.5,27.3
		.kill 8 Fen Creeper|q 275/1
		.kill Giant Wetlands Crocolisks|n
		.get 6 Giant Crocolisk Skin|q 471/1
	step //53
		goto 44.3,25.5
		.from Black Ooze##1032+, Crimson Ooze##1031+
		.get Sida's Bag|q 470/1
	step //54
		goto 56.3,40.5
		.talk Rethiel the Greenwarden##1244
		..turnin Blisters on The Land##275
	step //55
		goto 11.8,58
		.talk Sida##2111
		..turnin Digging Through the Ooze##470
	step //56
		goto 8.5,55.7
		.talk James Halloran##2094
		..turnin Apprentice's Duties##471
	step //57
		goto 8.3,58.6
		.talk Karl Boran##1242
		..turnin Return the Statuette##286
	step //58
		'Fly to Stormwind|goto Stormwind City|noway|c
	step //59
		'Buy a Bronze Tube from the Auction House|buy 1 Bronze Tube|q 174/1
	step //60
		'Fly to Lakeshire|goto Redridge Mountains,30.4,59.0,0.5|noway|c
	step //61
		goto Redridge Mountains,31.5,57.9
		.talk Guard Howe##903
		..accept Blackrock Bounty##128
	step //62
		goto 15.9,49.5
		.from Bellygrub##345
		.get Bellygrub's Tusk|q 34/1
	step //63
		goto 21.9,46.3
		.talk Martie Jainrose##342
		..turnin An Unwelcome Guest##34
	step //64
		goto 26.8,46.5
		.' Click the Wanted Poster|tip To the right of the entrance to the inn.
		..accept Wanted: Lieutenant Fangore##180
	step //65
		home Lakeshire
	step //66
		goto 33.5,49
		.talk Marshal Marris##382
		..accept Shadow Magic##115
	step //67
		goto 67,52
		.from Blackrock Shadowcaster##436+
		.get 3 Midnight Orb|q 115/1
	step //68
		goto 71.7,41.6
		.from Rabid Shadowhide Gnoll##434+, Shadowhide Gnoll##433+
		.get 10 Shadowhide Pendant|q 91/1
	step //69
		goto 33.5,49
		.talk Marshal Marris##382
		..turnin Shadow Magic##115
	step //70
		goto 31,47.3
		.talk Verner Osgood##415
		..accept Howling in the Hills##126
	step //71
		goto 30,44.4
		.talk Bailiff Conacher##900
		..turnin Solomon's Law##91
	step //72
		goto 27.4,21.8
		.from Yowler##518
		.get Yowler's Paw|q 126/1
	step //73
		goto 32.9,6.8
		.kill 15 Blackrock Champion|q 128/1
	step //74
		ding 27
	step //75
		goto 28.4,12.6
		.talk Corporal Keeshan##349
		..accept Missing In Action##219
		.goal Escort Corporal Keeshan back to Redridge|q 219/1
	step //76
		goto 33.5,49
		.talk Marshal Marris##382
		..turnin Missing In Action##219
	step //77
		goto 31,47.3
		.talk Verner Osgood##415
		..turnin Howling in the Hills##126
	step //78
		goto 31.5,57.9
		.talk Guard Howe##903
		..turnin Blackrock Bounty##128
	step //79
		goto 79.9,37.7
		.from Lieutenant Fangore##703
		.get Fangore's Paw|q 180/1
	step //80
		'Hearth to Lakeshire|goto Redridge Mountains,26.9,44.9,0.5|use Hearthstone##6948|noway|c
	step //81
		goto 30,44.4
		.talk Magistrate Solomon##344
		..turnin Wanted: Lieutenant Fangore##180
	step //82
		'Go southwest to Duskwood|goto Duskwood|noway|c
	step //83
		goto Duskwood,75.8,45.3
		.talk Madame Eva##265
		..accept The Totem of Infliction##101
		..accept The Legend of Stalvan (1)##66
	step //84
		goto 77.5,44.3
		.talk Felicia Maline##2409
		..fpath Darkshire
	step //85
		goto 79.8,48.1
		.talk Viktori Prism'Antras##276
		..accept Look To The Stars (1)##174
		..turnin Look To The Stars (1)##174
		..accept Look To The Stars (2)##175
	step //86
		goto 75.7,47.6
		.talk Calor##663
		..accept Worgen in the Woods (1)##173
	step //87
		goto 75.3,48.7
		.talk Elaine Carevin##633
		..accept Deliveries to Sven##164
		..accept The Hermit##165
		..accept Raven Hill##163
	step //88
		goto 73.5,46.8
		.talk Commander Althea Ebonlocke##264
		..accept The Night Watch (1)##56
	step //89
		goto 72.5,46.8
		.talk Clerk Daltry##267
		..turnin The Legend of Stalvan (1)##66
		..accept The Legend of Stalvan (2)##67
	step //90
		home Darkshire
	step //91
		'Fly to Sentinel Hill|goto Westfall,56.6,52.7,0.1|noway|c
	step //92
		goto Westfall,41.5,66.7
		.' Click the Old Footlocker|tip It's a small rectangular wooden box on the floor inside this house.
		..turnin The Legend of Stalvan (2)##67
		..accept The Legend of Stalvan (3)##68
	step //93
		'Go to Sentinel Hill and fly to Darkshire|goto Duskwood,77.6,44.4,0.1|noway|c
	step //94
		goto Duskwood,72.5,46.8
		.talk Clerk Daltry##267
		..turnin The Legend of Stalvan (3)##68
		..accept The Legend of Stalvan (4)##69
	step //95
		'Fly to Stormwind|goto Stormwind City|noway|c
	step //96
		'Go outside to Elwynn Forest|goto Elwynn Forest|noway|c
	step //97
		goto Elwynn Forest,43.8,65.8
		.talk Innkeeper Farley##295
		..turnin The Legend of Stalvan (4)##69
		..accept The Legend of Stalvan (5)##70
	step //98
		'Go upstairs in the inn to 44.3,65.8|goto 44.3,65.8
		.' Click the Storage Chest|tip It's a brown chest sitting on the floor in this room, upstairs inside the inn.
		.get An Undelivered Letter|q 70/1
	step //99
		'Go northwest to Stormwind|goto Stormwind City|noway|c
	step //100
		goto Stormwind City,42.5,72.4
		.talk Caretaker Folsom##297
		..turnin The Legend of Stalvan (5)##70
		..accept The Legend of Stalvan (6)##72
	step //101
		goto 42.5,72.41
		.' Click the Sealed Crate|tip It's a wooden crate on the side of the road.
		..turnin The Legend of Stalvan (6)##72
		..accept The Legend of Stalvan (7)##74
	step //102
		'Go outside to Elwynn Forest|goto Elwynn Forest|noway|c
	step //103
		goto Elwynn Forest,84.6,69.4
		.talk Marshal Haggard##294
		..turnin The Legend of Stalvan (7)##74
		..accept The Legend of Stalvan (8)##75
	step //104
		goto 85.7,69.5
		.' Click Marshal Haggard's Chest|tip It's a brown chest on the floor next to a bed, upstairs in this house.
		.get A Faded Journal Page|q 75/1
	step //105
		goto 84.6,69.4
		.talk Marshal Haggard##294
		..turnin The Legend of Stalvan (8)##75
		..accept The Legend of Stalvan (9)##78
	step //106
		'Hearth to Darkshire|goto Duskwood,73.9,44.5,0.5|use Hearthstone##6948|noway|c
	step //107
		goto Duskwood,74.1,44.7
		.talk Tavernkeep Smitts##273
		..turnin The Legend of Stalvan (9)##78
		..accept The Legend of Stalvan (10)##79
	step //108
		goto 73.5,46.8
		.talk Commander Althea Ebonlocke##264
		..turnin The Legend of Stalvan (10)##79
		..accept The Legend of Stalvan (11)##80
	step //109
		goto 72.5,46.8
		.talk Clerk Daltry##267
		..turnin The Legend of Stalvan (11)##80
		..accept The Legend of Stalvan (12)##97
	step //110
		goto 73.5,46.8
		.talk Commander Althea Ebonlocke##264
		..turnin The Legend of Stalvan (12)##97
		..accept The Legend of Stalvan (13)##98
	step //111
		goto 70.2,45.1|n
		.' The path over to Worgen in the Woods starts here
		.' Run up the hill behind the town hall building|goto Duskwood,70.2,45.1,0.5|noway|c
	step //112
		goto 66,47
		.kill 6 Nightbane Shadow Weaver|q 173/1
	step //113
		goto 75.7,47.6
		.talk Calor##663
		..turnin Worgen in the Woods (1)##173
		..accept Worgen in the Woods (2)##221
	step //114
		goto 66,47
		.kill 12 Nightbane Dark Runner|q 221/1
	step //115
		goto 75.7,47.6
		.talk Calor##663
		..turnin Worgen in the Woods (2)##221
		..accept Worgen in the Woods (3)##222
	step //116
		ding 28
	step //117
		goto 81.9,59.2
		.talk Blind Mary##302
		..turnin Look To The Stars (2)##175
		..accept Look To The Stars (3)##177
	step //118
		goto 79.3,70.3
		.kill 8 Skeletal Warrior|q 56/1
		.kill 6 Skeletal Mage|q 56/2
		.from Skeletal Warrior##48+, Skeletal Mage##203+
		.get 10 Skeleton Finger|q 101/3
	step //119
		goto 80.9,71.6
		.from Insane Ghoul##511
		.get Mary's Looking Glass|q 177/1
	step //120
		goto 72.7,69.7
		.kill 8 Nightbane Vile Fang|q 222/1
		.kill 8 Nightbane Tainted One|q 222/2
	step //121
		goto 73.5,46.8
		.talk Commander Althea Ebonlocke##264
		..turnin The Night Watch (1)##56
		..accept The Night Watch (2)##57
	step //122
		goto 75.7,47.6
		.talk Calor##663
		..turnin Worgen in the Woods (3)##222
		..accept Worgen in the Woods (4)##223
	step //123
		goto 75.3,48.7
		.talk Jonathan Carevin##661
		..turnin Worgen in the Woods (4)##223
	step //124
		goto 79.8,48.1
		.talk Viktori Prism'Antras##276
		..turnin Look To The Stars (3)##177
		..accept Look To The Stars (4)##181
	step //125
		goto 36.1,80.6
		.from Zzarc'Vul##300
		.' He spawns at random points inside of the cave.
		.get Ogre's Monocle|q 181/1
	step //126
		'Go outside to 18.2,56.6|goto 18.2,56.6
		.talk Jitters##288
		..turnin Raven Hill##163
		..accept Jitters' Growling Gut##5
	step //127
		goto 17.6,47.2
		.kill 15 Skeletal Fiend|q 57/1
		.kill 15 Skeletal Horror|q 57/2
	step //128
		goto 27.2,45.9
		.from Black Widow Hatching##930+
		.get 5 Vial of Spider Venom|q 101/2
	step //129
		goto 23.5,39.1
		.from Flesh Eater##3+, Rotted One##948+, Bone Chewer##210+, Plague Spreader##604+
		.get 10 Ghoul Fang|q 101/1
	step //130
		goto 28,31.5
		.talk Abercrombie##289
		..turnin The Hermit##165
		..accept Supplies from Darkshire##148
	step //131
		goto 17.7,29
		.' Click the Weathered Grave|tip It's a grave on the hillside all by itself.
		..accept The Weathered Grave##225
	step //132
		goto 7.8,34.2
		.talk Sven Yorgen##311
		..turnin Deliveries to Sven##164
		..accept Sven's Revenge##95
	step //133
		'Hearth to Darkshire|goto Duskwood,73.9,44.5,0.5|use Hearthstone##6948|noway|c
	step //134
		goto 73.8,43.5
		.talk Chef Grual##272
		..turnin Jitters' Growling Gut##5
	step //135
		goto 73.5,46.8
		.talk Commander Althea Ebonlocke##264
		..turnin The Night Watch (2)##57
		..accept The Night Watch (3)##58
	step //136
		goto 72.6,47.7
		.talk Sirra Von'Indi##268
		..turnin The Weathered Grave##225
		..accept Morgan Ladimore##227
	step //137
		goto 73.5,46.8
		.talk Commander Althea Ebonlocke##264
		..turnin Morgan Ladimore##227
	step //138
		goto 75.8,45.3
		.talk Madame Eva##265
		..turnin The Totem of Infliction##101
		..turnin Supplies from Darkshire##148
		..accept Ghost Hair Thread##149
	step //139
		goto 79.8,48.1
		.talk Viktori Prism'Antras##276
		..turnin Look To The Stars (4)##181
	step //140
		ding 29
	step //141
		goto 81.9,59.2
		.talk Blind Mary##302
		..turnin Ghost Hair Thread##149
		..accept Return the Comb##154
	step //142
		goto 75.8,45.3
		.talk Madame Eva##265
		..turnin Return the Comb##154
		..accept Deliver the Thread##157
	step //143
		goto 49.9,77.7
		.' Click the Mound of Loose Dirt|tip It's easiest to work your way around to behind the farm around this spot.
		..turnin Sven's Revenge##95
		..accept Sven's Camp##230
	step //144
		goto 28,31.5
		.talk Abercrombie##289
		..turnin Deliver the Thread##157
		..accept Zombie Juice##158
	step //145
		goto 24.1,32.7
		.kill 20 Plague Spreader|q 58/1
	step //146
		goto 7.8,34.2
		.talk Sven Yorgen##311
		..turnin Sven's Camp##230
		..accept The Shadowy Figure##262
	step //147
		'Go west to Westfall|goto Westfall|noway|c
	step //148
		.' Go to Sentinel Hill and fly to Darkshire|goto Duskwood,77.6,44.4,0.5|noway|c
	step //149
		goto Duskwood,75.8,45.3
		.talk Madame Eva##265
		..turnin The Shadowy Figure##262
		..accept The Shadowy Search Continues##265
	step //150
		goto 73.5,46.8
		.talk Commander Althea Ebonlocke##264
		..turnin The Night Watch (3)##58
	step //151
		goto 72.5,46.8
		.talk Clerk Daltry##267
		..turnin The Shadowy Search Continues##265
		..accept Inquire at the Inn##266
	step //152
		goto 74.1,44.7
		.talk Tavernkeep Smitts##273
		..turnin Inquire at the Inn##266
		..accept Finding the Shadowy Figure##453
		..turnin Zombie Juice##158
		..accept Gather Rot Blossoms##156
	step //153
		goto 18.2,56.6
		.talk Jitters##288
		..turnin Finding the Shadowy Figure##453
		..accept Return to Sven##268
	step //154
		goto 7.8,34.2
		.talk Sven Yorgen##311
		..turnin Return to Sven##268
		..accept Proving Your Worth##323
	step //155
		goto 15.3,37.6
		.kill 15 Skeletal Raider|q 323/1
		.kill 3 Skeletal Healer|q 323/2
	step //156
		goto 15.4,37
		.kill 3 Skeletal Warder|q 323/3
	step //157
		goto 14.2,42.2
		.from Skeletal Horror##202+, Skeletal Fiend##531+
		.get 8 Rot Blossom|q 156/1
	step //158
		goto 7.8,34.2
		.talk Sven Yorgen##311
		..turnin Proving Your Worth##323
		..accept Seeking Wisdom##269
	step //159
		'Hearth to Darkshire|goto Duskwood,73.9,44.5,0.5|use Hearthstone##6948|noway|c
	step //160
		goto 74.1,44.7
		.talk Tavernkeep Smitts##273
		..turnin Gather Rot Blossoms##156
		..accept Juice Delivery##159
	step //161
		'Fly to Stormwind|goto Stormwind City|noway|c
	step //162
		goto Stormwind City,49.9,46
		.talk Bishop Farthing##1212
		..turnin Seeking Wisdom##269
		..accept The Doomed Fleet##270
	step //163
		'Fly to Sentinel Hill|goto Westfall,56.6,52.7,0.1|noway|c
	step //164
		'Go east to Duskwood|goto Duskwood|noway|c
	step //165
		goto Duskwood,28,31.5
		.talk Abercrombie##289
		..turnin Juice Delivery##159
		..accept Ghoulish Effigy##133
	step //166
		goto 25.5,34.6
		.from Flesh Eater##3+, Rotted One##948+, Bone Chewer##210+, Plague Spreader##604+
		.get 7 Ghoul Rib|q 133/1
	step //167
		goto 28,31.5
		.talk Abercrombie##289
		..turnin Ghoulish Effigy##133
		..accept Ogre Thieves##134
	step //168
		goto 33.4,76.4
		.' Click Abercrombie's Crate|tip It looks like a wooden crate sitting next to a bunch of wooden barrels.
		.get Abercrombie's Crate|q 134/1
	step //169
		goto 28,31.5
		.talk Abercrombie##289
		..turnin Ogre Thieves##134
		..accept Note to the Mayor##160
	step //170
		'Hearth to Darkshire|goto Duskwood,73.9,44.5,0.5|use Hearthstone##6948|noway|c
	step //171
		goto 71.9,46.4
		.talk Lord Ello Ebonlocke##263
		..turnin Note to the Mayor##160
		..accept Translate Abercrombie's Note##251
	step //172
		goto 72.6,47.7
		.talk Sirra Von'Indi##268
		..turnin Translate Abercrombie's Note##251
		..accept Wait for Sirra to Finish##401
		..turnin Wait for Sirra to Finish##401
		..accept Translation to Ello##252
	step //173
		goto 71.9,46.4
		.talk Lord Ello Ebonlocke##263
		..turnin Translation to Ello##252
		..accept Bride of the Embalmer##253
	step //174
		goto 28.9,30.8
		.' Click Eliza's Grave Dirt|tip It looks like a single dirt grave.
		..accept Digging Through the Dirt##254 |instant
		.from Eliza##314
		.get The Embalmer's Heart|q 253/1
	step //175
		goto 71.9,46.4
		.talk Lord Ello Ebonlocke##263
		..turnin Bride of the Embalmer##253
	step //176
		ding 30
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Levels (30-35)",[[
	author support@zygorguides.com
	next Zygor's Alliance Leveling Guides\\Levels (35-40)
	startlevel 30
	step //1
		'Fly to Stormwind|goto Stormwind City|noway|c
		only Draenei Warrior,Gnome Warrior,NightElf Warrior,Dwarf Warrior,Human Warrior
	step //2
		goto Stormwind City,80.6,59.9
		.talk Wu Shen##5479
		..accept The Islander##1718
		only Draenei Warrior,Gnome Warrior,NightElf Warrior,Dwarf Warrior,Human Warrior
	step //3
		goto 22.6,56.1|n
		.'Ride the boat to Auberdine|goto Darkshore,32.4,43.7,1|noway|c
		only Draenei Warrior,Gnome Warrior,NightElf Warrior,Dwarf Warrior,Human Warrior
	step //4
		'Fly to Astranaar|goto Ashenvale,35.5,50.2,5|noway|c
		only Draenei Warrior,Gnome Warrior,NightElf Warrior,Dwarf Warrior,Human Warrior
	step //5
		'Go southeast to The Barrens|goto The Barrens|noway|c
		only Draenei Warrior,Gnome Warrior,NightElf Warrior,Dwarf Warrior,Human Warrior
	step //6
		goto The Barrens,68.6,49.2
		.talk Klannoc Macleod##6236
		..turnin The Islander##1718
		..accept The Affray##1719
		only Draenei Warrior,Gnome Warrior,NightElf Warrior,Dwarf Warrior,Human Warrior
	step //7
		goto 68.6,48.7
		.goal Step on the grate to begin the Affray|q 1719/1
		.kill 1 Big Will|q 1719/2
		only Draenei Warrior,Gnome Warrior,NightElf Warrior,Dwarf Warrior,Human Warrior
	step //8
		goto 68.6,49.2
		.talk Klannoc Macleod##6236
		..turnin The Affray##1719
		only Draenei Warrior,Gnome Warrior,NightElf Warrior,Dwarf Warrior,Human Warrior
	step //9
		'Go northwest to Ashenvale|goto Ashenvale|noway|c
		only Draenei Warrior,Gnome Warrior,NightElf Warrior,Dwarf Warrior,Human Warrior
	step //10
		'Go northwest to Astranaar and fly to Auberdine|goto Darkshore,36.4,45.6,0.3|noway|c
		only Draenei Warrior,Gnome Warrior,NightElf Warrior,Dwarf Warrior,Human Warrior
	step //11
		'Ride the boat to Stormwind Harbor|goto Stormwind City|noway|c
		only Draenei Warrior,Gnome Warrior,NightElf Warrior,Dwarf Warrior,Human Warrior
	step //12
		'Fly to Darkshire|goto Duskwood,74.7,46.9,7|noway|c
		only Draenei Warrior,Gnome Warrior,NightElf Warrior,Dwarf Warrior,Human Warrior
	step //13
		'Fly to Stormwind|goto Stormwind City|noway|c
		only Draenei Shaman
	step //14
		goto Stormwind City,22.6,56.1
		'Ride the boat to Auberdine|goto Darkshore,32.4,43.7,1|noway|c
		only Draenei Shaman
	step //15
		'Ride the boat to Azuremyst Isle|goto Azuremyst Isle|noway|c
		only Draenei Shaman
	step //16
		'Go northeast to the Exodar|goto The Exodar|noway|c
		only Draenei Shaman
	step //17
		goto The Exodar,32.3,23.9
		.talk Sulaa##17219
		..accept Call of Air (1)##9551
		only Draenei Shaman
	step //18
		goto 31.4,27.7
		.talk Farseer Nobundo##17204
		..turnin Call of Air (1)##9551
		..accept Call of Air (2)##9552
		only Draenei Shaman
	step //19
		'Go outside to Azuremyst Isle|goto Azuremyst Isle|noway|c
		only Draenei Shaman
	step //20
		goto Azuremyst Isle,26.8,25.6|n
		.' The path up to Call of Air (2) starts here|goto Azuremyst Isle,26.8,25.6,1|noway|c
		only Draenei Shaman
	step //21
		'Go up the path to 24.6,35.6|goto 24.6,35.6
		.talk Velaada##17431
		..turnin Call of Air (2)##9552
		..accept Call of Air (3)##9553
		only Draenei Shaman
	step //22
		goto 22.6,32.4
		.talk Susurrus##17435
		..turnin Call of Air (3)##9553
		..accept Call of Air (4)##9554
		..'Click -I am ready-
		..'He brings you back down the mountain to the Exodar at 78,55|noway|c
		only Draenei Shaman
	step //23
		'Go inside the Exodar to 31.4,27.7|goto The Exodar,31.4,27.7
		.talk Farseer Nobundo##17204
		..turnin Call of Air (4)##9554
		only Draenei Shaman
	step //24
		'Go outside to Azuremyst Isle|goto Azuremyst Isle|noway|c
		only Draenei Shaman
	step //25
		'Go southwest to ride the boat to Auberdine|goto Darkshore,38.1,43.1,9|noway|c
		only Draenei Shaman
	step //26
		'Ride the boat to Stormwind Harbor|goto Stormwind City|noway|c
		only Draenei Shaman
	step //27
		'Fly to Darkshire|goto Duskwood,74.7,46.9,7|noway|c
		only Draenei Shaman
	step //28
		goto Duskwood,77.4,36.1
		.from Stalvan Mistmantle##315
		.get Mistmantle Family Ring|q 98/1
	step //29
		goto 75.8,45.3
		.talk Madame Eva##265
		..turnin The Legend of Stalvan (13)##98
	step //30
		'Fly to Stormwind|goto Stormwind City|noway|c
	step //31
		goto Stormwind City,22.6,56.1|n
		'Ride the boat to Auberdine|goto Darkshore,32.4,43.7,1|noway|c
	step //32
		'Fly to Astranaar|goto Ashenvale,35.5,50.2,5|noway|c
	step //33
		home Astranaar
	step //34
		goto 54.4,35.4
		.from Withered Ancient##3919+, Crazed Ancient##3834+
		.collect Wooden Key##5475|q 1026/1|sticky
		.' Open the small chest here
		.get Iron Shaft|q 1026/1
	step //35
		goto 50.1,56.4|n
		.' The path to Shael'dryn starts here.|goto Ashenvale,50.1,56.4,0.5|noway|c
	step //36
		goto 53.5,46.3
		.talk Shael'dryn##3916
		..turnin Raene's Cleansing (4)##1026
		..accept Raene's Cleansing (5)##1027
	step //37
		goto 86.4,46.5
		.talk Gnarl##17310
		..accept Reclaiming Felfire Hill##9526
	step //38
		goto 86.8,44.8
		.talk Architect Nemos##17291
		..turnin A Helping Hand##9533
		..accept A Shameful Waste##9517
	step //39
		goto 87.1,43.5
		.talk Illiyana##3901
		..accept Vile Satyr! Dryads in Danger!##1021
	step //40
		goto 86.5,43.6
		.talk Vindicator Vedaar##17303
		..accept Destroy the Legion##9516
	step //41
		goto 86,44.1
		.talk Sentinel Melyria Frostshadow##3880
		..accept The Howling Vale##1022
		.talk Sentinel Luciel Starwhisper##17287
		..accept Report from the Northern Front##9521
		..accept Agents of Destruction##9518
	step //42
		goto 85.2,44.7
		.talk Kayneth Stillwind##3848
		..turnin Kayneth Stillwind##4581
		..accept Forsaken Diseases##1011
		..accept The Lost Chalice##9519
	step //43
		goto 84.7,43.9
		.talk Suralais Farwind##22935
		..fpath Forest Song
	step //44
		goto 78.3,44.8
		.talk Anilia##3920
		..turnin Vile Satyr! Dryads in Danger!##1021
		..accept The Branch of Cenarius##1031
	step //45
		goto 78,42.6
		.from Geltharis##4619
		.get Branch of Cenarius|q 1031/1
	step //46
		goto 80.3,49.1
		.' Click the Tainted Wood bundles|tip They look like little bundles of wood on the ground around this area.
		.get 5 Satyrnaar Fel Wood|q 9517/2
	step //47
		goto 81.3,49.1
		.' Click the Chalice of Elune|tip It's a blue glowing pedestal sitting ont he right side of the red tower thing.
		.get Chalice of Elune|q 9519/1
	step //48
		goto 86.4,52.9
		.' Click the Lumber Piles|tip The Lumber Piles look like stacked planks of wood around this area.
		.get 15 Warsong Lumber|q 9517/1
		.kill 2 Warsong Shredder|q 9518/2
		.kill 5 Horde Deforester|q 9518/3
		.kill 10 Horde Scout|q 9518/4
	step //49
		goto 88.8,59.5
		.kill Overseer Gorthak##17304|q 9518/1
	step //50
		goto 83.8,67.7
		.kill 6 Mannoroc Lasher|q 9516/1
		.kill 6 Roaming Felguard|q 9516/2
		.kill 6 Searing Infernal|q 9516/3
		.' Click the Fertile Dirt Mounds
		.' Plant 8 Tree Seedlings|goal 8 Tree Seedling Planted|q 9526/1
		.get Diabolical Plans|n
		.' Click the Diabolical Plans|use Diabolical Plans##23777
		..accept Diabolical Plans##9520
	step //51
		goto 75.3,72.3
		.' Click the Bottle of Disease on the table
		.get Bottle of Disease|q 1011/1
	step //52
		goto 74.1,73.6
		.from Rotting Slime##3928+
		.' Click the Rusty Chest that spawns
		.get Iron Pommel|q 1027/1
	step //53
		goto 66.7,82.2
		.from Shadethicket Oracle##3931
		.get Fallen Moonstone|q 1035/1
	step //54
		goto 61.9,83.9
		.talk Sentinel Farsong##14733
		..turnin Report from the Northern Front##9521
	step //55
		goto 53.4,33.2|n
		.' The path up to 'The Howling Vale' starts here|goto Ashenvale,53.4,33.2,0.5|noway|c
	step //56
		goto 50.5,39.1
		.' Click the Tome of Mel'Thandris|tip Through the cave, down the path, sitting on a little round table.
		.' View the Tome of Mel'Thandris|goal View the Tome of Mel'Thandris|q 1022/1
	step //57
		goto 86.4,46.5
		.talk Gnarl##17310
		..turnin A Shameful Waste##9517
		..turnin Reclaiming Felfire Hill##9526
	step //58
		goto 87.1,43.5
		.talk Illiyana##3901
		..turnin The Branch of Cenarius##1031
		..accept Satyr Slaying!##1032
	step //59
		goto 86.5,43.6
		.talk Vindicator Vedaar##17303
		..turnin Destroy the Legion##9516
		..turnin Diabolical Plans##9520
	step //60
		goto 86,44.1
		.talk Sentinel Melyria Frostshadow##3880
		..turnin The Howling Vale##1022
		..accept Velinde Starsong##1037
		.talk Sentinel Luciel Starwhisper##17287
		..turnin Agents of Destruction##9518
	step //61
		goto 85.2,44.7
		.talk Kayneth Stillwind##3848
		..turnin Forsaken Diseases##1011
		..turnin The Lost Chalice##9519
	step //62
		ding 31
	step //63
		goto 79,46.2
		.from Xavian Felsworn##3755+, Xavian Betrayer##3754+, Xavian Rogue##3752+, Xavian Hellcaller##3757+
		.get 16 Satyr Horns|q 1032/1
	step //64
		goto 87.1,43.5
		.talk Illiyana##3901
		..turnin Satyr Slaying!##1032
	step //65
		'Go east to Azshara|goto Azshara|noway|c
	step //66
		goto Azshara,11.9,77.6
		.talk Jarrodenus##12577
		..fpath Talrendis Point
	step //67
		'Fly to Astranaar|goto Ashenvale,35.5,50.2,5|noway|c
	step //68
		goto Ashenvale,37.4,51.8
		.talk Pelturas Whitemoon##3894
		..turnin Fallen Sky Lake##1035
	step //69
		goto 50.1,56.4|n
		.' The path to Shael'dryn starts here.|goto Ashenvale,50.1,56.4,0.5|noway|c
	step //70
		goto 53.5,46.3
		.talk Shael'dryn##3916
		..turnin Raene's Cleansing (5)##1027
		..accept Raene's Cleansing (6)##1028
	step //71
		goto 56.0,51.4|n
		.' The path up to 'Raene's Cleansing (6)' starts here|goto Ashenvale,56.0,51.4,0.5|noway|c
	step //72
		goto 56.4,49.2
		.' Click the Hidden Shrine|tip Follow the path up the mountain. It's a little stone shrine in a hollowed out tree. The path dead ends into the Hidden Shrine.
		..turnin Raene's Cleansing (6)##1028
		..accept Raene's Cleansing (7)##1055
	step //73
		goto 53.5,46.3
		.talk Shael'dryn##3916
		..turnin Raene's Cleansing (7)##1055
		..accept Raene's Cleansing (8)##1029
	step //74
		'Hearth to Astranaar|goto Ashenvale,35.5,50.2,5|use Hearthstone##6948|noway|c
	step //75
		goto 36.6,49.6
		.talk Raene Wolfrunner##3691
		..turnin Raene's Cleansing (8)##1029
	step //76
		'Fly to Auberdine|goto Darkshore,36.4,45.6,0.3|noway|c
	step //77
		'Ride the boat to Rut'theran Village|goto Teldrassil,56.3,92.4,6|noway|c
	step //78
		goto Teldrassil,58.4,94
		.talk Vesprystus##3838
		..fpath Rut'theran Village
		only Gnome,Human,Dwarf,Draenei
	step //79
		'Go through the big pink portal to Darnassus|goto Darnassus|noway|c
	step //80
		goto Darnassus,61.8,39.2
		.talk Thyn'tel Bladeweaver##8026
		..turnin Velinde Starsong##1037
		..accept Velinde's Effects##1038
	step //81
		goto 62.3,83.3
		.' Click Velinde's Locker|tip Over the bridge on the second floor of the building. It is a chest on the ground.
		.get Velinde's Journal|q 1038/1
	step //82
		goto 61.8,39.2
		.talk Thyn'tel Bladeweaver##8026
		..turnin Velinde's Effects##1038
		..accept The Barrens Port##1039
	step //83
		'Go to Rut'theran Village|goto Teldrassil,56.3,92.4,6|noway|c
	step //84
		'Fly to Auberdine|goto Darkshore,36.4,45.6,0.5|noway|c
	step //85
		'Ride the boat to Stormwind Harbor|goto Stormwind City|noway|c
	step //86
		'Fly to Menethil Harbor|goto Wetlands,9.5,59.7,0.5|noway|c
	step //87
		goto Wetlands,8.4,61.8
		.talk Vincent Hyal##5082
		..accept James Hyal##1302
	step //88
		goto 10.9,59.6
		.talk First Mate Fitzsimmons##1239
		..accept The Cursed Crew##289
	step //89
		goto 10.6,60.6
		.talk Glorin Steelbrow##1217
		..turnin The Doomed Fleet##270
		..accept Lightforge Iron##321
	step //90
		home Menethil Harbor
	step //91
		goto 12.1,64.2
		.' Click the Waterlogged Chest|tip It's a brown chest sitting on this tiny island between 2 broken ship halves.
		..turnin Lightforge Iron##321
		..accept The Lost Ingots##324
	step //92
		goto 12.4,65.7
		.from Bluegill Raider##1418+
		.get 5 Lightforge Ingot|q 324/1
	step //93
		goto 10.6,60.6
		.talk Glorin Steelbrow##1217
		..turnin The Lost Ingots##324
		..accept Blessed Arm##322
	step //94
		goto 10.8,55.9
		.talk Harlo Barnaby##2097
		..accept Fall of Dun Modr##472
	step //95
		goto 14.1,29.3
		.kill 13 Cursed Sailor|q 289/1
		.kill 5 Cursed Marine|q 289/2
	step //96
		'Go downstairs in the ship to 14.1,30.1|goto 14.1,30.1
		.from First Mate Snellig##1159
		.get Snellig's Snuffbox|q 289/3
	step //97
		ding 32
	step //98
		goto 10.9,59.6
		.talk First Mate Fitzsimmons##1239
		..turnin The Cursed Crew##289
		..accept Lifting the Curse##290
	step //99
		goto 15.5,23.5
		.from Captain Halyndor##1160
		.get Intrepid Strongbox Key|q 290/1
	step //100
		'Go underwater to the bottom of the ship to 14.4,24|goto 14.4,24
		.' Click Intrepid's Locked Strongbox|tip At the very bottom of this sunken ship, underwater.  It looks like a small metal chest.
		..turnin Lifting the Curse##290
		..accept The Eye of Paleth##292
	step //101
		goto 33.2,51.4
		.from Sarltooth##1353
		.get Sarltooth's Talon|q 296/1
	step //102
		goto 38.1,51.1
		.talk Ormer Ironbraid##1078
		..turnin Ormer's Revenge (3)##296
	step //103
		goto 47.5,46.9
		.' Click the Dragonmaw Catapult
		..turnin Nek'rosh's Gambit##465
		..accept Defeat Nek'rosh##474
	step //104
		goto 53.5,54.7
		.from Chieftain Nek'rosh##2091
		.get Nek'rosh's Head|q 474/1
	step //105
		'Hearth to Menethil Harbor|goto Wetlands,10.1,56.7,9|use Hearthstone##6948|noway|c
	step //106
		goto 10.6,60.6
		.talk Glorin Steelbrow##1217
		..turnin The Eye of Paleth##292
		..accept Cleansing the Eye##293
	step //107
		goto 9.9,57.5
		.talk Captain Stoutfist##2104
		..turnin Defeat Nek'rosh##474
	step //108
		goto 49.8,18.3
		.talk Longbraid the Grim##1071
		..turnin Fall of Dun Modr##472
		..accept A Grim Task##304
		.talk Rhag Garmason##1075
		..accept The Thandol Span (1)##631
		.talk Motley Garmason##1074
		..accept The Dark Iron War##303
	step //109
		goto 62.2,28.3
		.kill 10 Dark Iron Dwarf|q 303/1
		.kill 5 Dark Iron Tunneler|q 303/2
		.kill 5 Dark Iron Saboteur|q 303/3
		.kill 5 Dark Iron Demolitionist|q 303/4
		.from Balgaras the Foul##1364
		.get Ear of Balgaras|q 304/1
	step //110
		goto 49.8,18.3
		.talk Longbraid the Grim##1071
		..turnin A Grim Task##304
		.talk Motley Garmason##1074
		..turnin The Dark Iron War##303
	step //111
		goto 51.3,8
		.' Click Ebenezer Rustlocke's Corpse|tip Down the passage to the right in the middle of the bridge, all the way downstairs.
		..turnin The Thandol Span (1)##631
		..accept The Thandol Span (2)##632
	step //112
		goto 49.8,18.3
		.talk Rhag Garmason##1075
		..turnin The Thandol Span (2)##632
		..accept The Thandol Span (3)##633
	step //113
		'Go north to the Arathi Highlands|goto Arathi Highlands|noway|c
	step //114
		goto Arathi Highlands,48.8,88.1
		.' Click the Cache of Explosives|tip To the right across the hanging bridge after walking across the big bridge from the Wetlands.
		.' Destroy the Cache of Explosives|goal Cache of Explosives Destroyed|q 633/1
	step //115
		'Go south to the Wetlands|goto Wetlands|noway|c
	step //116
		goto Wetlands,49.8,18.3
		.talk Rhag Garmason##1075
		..turnin The Thandol Span (3)##633
		..accept Plea To The Alliance##634
	step //117
		'Go north to the Arathi Highlands|goto Arathi Highlands|noway|c
	step //118
		goto Arathi Highlands,45.8,47.6
		.talk Captain Nials##2700
		..turnin Plea To The Alliance##634
		..accept Northfold Manor##681
	step //119
		goto 45.8,46.1
		.talk Cedrik Prose##2835
		..fpath Refuge Pointe
	step //120
		'Go northwest to the Hillsbrad Foothills|goto Hillsbrad Foothills|noway|c
	step //121
		goto Hillsbrad Foothills,49.3,52.3
		.talk Darla Harris##2432
		..fpath Southshore
	step //122
		goto 49.5,58.7
		.talk Marshal Redpath##2263
		..accept Crushridge Bounty##500
	step //123
		goto 48.1,59.1
		.talk Magistrate Henry Maleb##2276
		..accept Syndicate Assassins##505
	step //124
		goto 50.3,59
		.talk Phin Odelic##2711
		..accept Hints of a New Plague? (1)##659
	step //125
		goto 51,58.7
		.talk Huraan##17218
		..accept Missing Crystals##9435
	step //126
		home Southshore
	step //127
		goto 51.5,58.4
		.talk Lieutenant Farren Orinelle##2228
		..accept Down the Coast##536
	step //128
		goto 51.9,58.7
		.talk Chef Jessen##2430
		..accept Soothing Turtle Bisque##555
	step //129
		goto 52.4,56
		.talk Darren Malvew##2382
		..accept Costly Menace##564
	step //130
		goto 55.7,57
		.from Snapjaw##2408
		.get 10 Turtle Meat|q 555/1
	step //131
		goto 51.9,58.7
		.talk Chef Jessen##2430
		..turnin Soothing Turtle Bisque##555
	step //132
		goto 46.4,64
		.kill 10 Torn Fin Tidehunter|q 536/1
		.kill 10 Torn Fin Oracle|q 536/2
	step //133
		goto 51.5,58.4
		.talk Lieutenant Farren Orinelle##2228
		..turnin Down the Coast##536
		..accept Farren's Proof (1)##559
	step //134
		goto 46.4,64
		.from Torn Fin Tidehunter##2377+, Torn Fin Oracle##2376+
		.get 10 Murloc Head|q 559/1
	step //135
		ding 33
	step //136
		goto 51.5,58.4
		.talk Lieutenant Farren Orinelle##2228
		..turnin Farren's Proof (1)##559
		..accept Farren's Proof (2)##560
	step //137
		goto 49.5,58.7
		.talk Marshal Redpath##2263
		..turnin Farren's Proof (2)##560
		..accept Farren's Proof (3)##561
	step //138
		goto 51.5,58.4
		.talk Lieutenant Farren Orinelle##2228
		..turnin Farren's Proof (3)##561
		..accept Stormwind Ho!##562
	step //139
		goto 56.2,65
		.kill 10 Daggerspine Shorehunter|q 562/1
		.kill 10 Daggerspine Siren|q 562/2
	step //140
		goto 51.5,58.4
		.talk Lieutenant Farren Orinelle##2228
		..turnin Stormwind Ho!##562
		..accept Reassignment##563
	step //141
		goto 55.6,35.2
		.' Click the Unopened Crate|tip Inside the crumbled tower, under the broken staircase, on the floor to the right as you enter.
		.get Shipment of Rare Crystals|q 9435/1
	step //142
		'Go north to the Alterac Mountains|goto Alterac Mountains|noway|c
	step //143
		goto Alterac Mountains,44.3,78.5
		.kill 8 Mountain Lion|q 564/1
		.kill 10 Hulking Mountain Lion|q 564/2
	step //144
		goto 56.9,66.7
		.kill 12 Syndicate Footpad|q 505/1
		.kill 8 Syndicate Thief|q 505/2
		.' You can find more of these around 47.9,79.5|goto 47.9,79.5|n
	step //145
		goto 58.3,68
		.' Click the Syndicate Documents on the little round table in the middle of the small camp
		..accept Foreboding Plans##510
		..accept Encrypted Letter##511
	step //146
		'Hearth to Southshore|goto Hillsbrad Foothills,51.2,58.9,0.5|use Hearthstone##6948|noway|c
	step //147
		goto Hillsbrad Foothills,51,58.7
		.talk Huraan##17218
		..turnin Missing Crystals##9435
	step //148
		goto 50.6,57.1
		.talk Loremaster Dibbs##2277
		..turnin Encrypted Letter##511
		..accept Letter to Stormpike##514
	step //149
		goto 48.1,59.1
		.talk Magistrate Henry Maleb##2276
		..turnin Syndicate Assassins##505
		..turnin Foreboding Plans##510
		..accept Noble Deaths##512
	step //150
		goto 52.4,56
		.talk Darren Malvew##2382
		..turnin Costly Menace##564
	step //151
		'Fly to Refuge Point|goto Arathi Highlands,45.8,46.1,0.5|noway|c
	step //152
		goto Arathi Highlands,34.2,29.2
		.kill 10 Syndicate Highwayman|q 681/1
		.kill 6 Syndicate Mercenary|q 681/2
	step //153
		goto 45.8,47.6
		.talk Captain Nials##2700
		..turnin Northfold Manor##681
	step //154
		'Fly to Ironforge|goto Ironforge|noway|c
	step //155
		goto Ironforge,72.7,94
		.talk Pilot Longbeard##2092
		..accept The Brassbolts Brothers##1179
	step //156
		goto 69.9,21.2
		.talk Roetten Stonehammer##5637
		..accept Reclaimers' Business in Desolace##1453
	step //157
		goto 74.7,11.7
		.talk Prospector Stormpike##1356
		..turnin Letter to Stormpike##514
		..accept Further Mysteries##525
	step //158
		'Fly to Stormwind|goto Stormwind City|noway|c
	step //159
		'Buy 4 Lesser Bloodstone Ore from the Auction House|buy 4 Lesser Bloodstone Ore|q 627/1
	step //160
		goto 75.8,36.7
		.talk Major Samuelson##2439
		..turnin Reassignment##563
	step //161
		goto 59.7,33.8
		.talk Grimand Elmore##1416
		..turnin Blessed Arm##322
	step //162
		goto 50.3,45.5
		.talk Archbishop Benedictus##1284
		..turnin Cleansing the Eye##293
	step //163
		ding 34
	step //164
		'Fly to Darkshire|goto Duskwood,74.7,46.9,7|noway|c
	step //165
		'Go southwest to Stranglethorn Vale|goto Stranglethorn Vale|noway|c
	step //166
		goto Stranglethorn Vale,38.2,4
		.talk Nizzle##24366
		..fpath Rebel Camp
	step //167
		goto 38,3.3
		.talk Sergeant Yohwa##733
		..accept The Second Rebellion##203
		..accept Bad Medicine##204
	step //168
		goto 37.7,3.3
		.talk Corporal Kaleb##770
		..accept Krazek's Cookery##210
	step //169
		goto 35.8,10.7
		.talk Barnil Stonepot##716
		..accept Welcome to the Jungle##583
		.talk Hemet Nesingwary Jr.##715
		..turnin Welcome to the Jungle##583
		..accept Raptor Mastery (1)##194
		.talk Ajeck Rouack##717
		..accept Tiger Mastery (1)##185
		.talk Sir S. J. Erlgadin##718
		..accept Panther Mastery (1)##190
	step //170
		goto 40.8,10.9
		.kill 10 Young Panther|q 190/1
	step //171
		goto 44,11.2
		.kill 15 Kurzen Jungle Fighter|q 203/1
		.from Kurzen Medicine Man##940+, Kurzen Jungle Fighter##937+
		.get 7 Jungle Remedy|q 204/1
	step //172
		goto 44.5,9.7
		.' Click the Kurzen Supplies|tip They look like a pile of brown boxes in the small camp.
		.get Venom Fern Extract|q 204/2
	step //173
		goto 38,3.3
		.talk Sergeant Yohwa##733
		..turnin The Second Rebellion##203
		..turnin Bad Medicine##204
	step //174
		goto 35.8,10.7
		.talk Sir S. J. Erlgadin##718
		..turnin Panther Mastery (1)##190
		..accept Panther Mastery (2)##191
	step //175
		goto 33.6,11.5
		.kill 10 Young Stranglethorn Tiger|q 185/1
	step //176
		goto 35.8,10.7
		.talk Ajeck Rouack##717
		..turnin Tiger Mastery (1)##185
		..accept Tiger Mastery (2)##186
	step //177
		goto 31,10
		.kill 10 Panther|q 191/1
		.kill 10 Stranglethorn Tiger|q 186/1
	step //178
		goto 27,16.3
		.kill 10 Stranglethorn Raptor|q 194/1
	step //179
		goto 35.8,10.7
		.talk Hemet Nesingwary Jr.##715
		..turnin Raptor Mastery (1)##194
		..accept Raptor Mastery (2)##195
		.talk Ajeck Rouack##717
		..turnin Tiger Mastery (2)##186
		..accept Tiger Mastery (3)##187
		.talk Sir S. J. Erlgadin##718
		..turnin Panther Mastery (2)##191
		..accept Panther Mastery (3)##192
	step //180
		'Go south to Booty Bay to 26.9,77.2|goto 26.9,77.2
		.talk Krazek##773
		..turnin Krazek's Cookery##210
		..accept Favor for Krazek##627
		..turnin Favor for Krazek##627
		..accept Return to Corporal Kaleb##622
		..accept Investigate the Camp##201
		..accept Supplies to Private Thorsen##198
	step //181
		goto 27.5,77.8
		.talk Gyll##2859
		..fpath Booty Bay
	step //182
		'Ride the boat to Ratchet|goto The Barrens|noway|c
	step //183
		goto The Barrens,63.4,38.5
		.talk Wharfmaster Dizzywig##3453
		..turnin The Barrens Port##1039
		..accept Passage to Booty Bay##1040
	step //184
		goto 63.1,37.2
		.talk Bragok##16227
		..fpath Ratchet
	step //185
		'Go southwest to Thousand Needles|goto Thousand Needles|noway|c
	step //186
		goto Thousand Needles,30.7,24.3
		.' Click Henrig Lonebrow's Journal|tip In the hand of a corpse laying on the side of the road at the bottom of the Great Lift.
		.' Click Henrig Lonebrow's Journal in your bags|use Henrig Lonebrow's Journal##5791
		..accept Lonebrow's Journal##1100
	step //187
		goto 7.8,17.9
		.talk Thyssiana##4319
		..fpath Thalanaar
	step //188
		goto 8.1,19
		.talk Falfindel Waywarder##4048
		..turnin Lonebrow's Journal##1100
	step //189
		goto 78.1,77.1
		.talk Wizzle Brassbolts##4453
		..turnin The Brassbolts Brothers##1179
		..accept Hardened Shells##1105
		.talk Fizzle Brassbolts##4454
		..accept Salt Flat Venom##1104
	step //190
		goto 77.8,77.3
		.talk Kravel Koalbeard##4452
		..accept Hemet Nesingwary Jr.##5762
		..accept Rocket Car Parts##1110
		..accept Wharfmaster Dizzywig##1111
	step //191
		goto 80.2,75.9
		.talk Pozzik##4630
		..accept Load Lightening##1176
	step //192
		goto 81.6,77.9
		.talk Trackmaster Zherin##4629
		..accept A Bump in the Road##1175
	step //193
		'Get Rocket Car Parts as you walk around in the Shimmering Flats|n|tip They look like metal scraps on the ground.
	step //194
		goto 79.1,85.2
		.kill 10 Saltstone Crystalhide|q 1175/2
		.kill 6 Saltstone Gazer|q 1175/3
	step //195
		goto 87.6,66.7
		.from Salt Flats Scavenger##4154+
		.get 10 Hollow Vulture Bone|q 1176/1
	step //196
		goto 83.2,55.4
		.from Sparkleshell Snapper##4143+
		.get 9 Hardened Tortoise Shell|q 1105/1
	step //197
		goto 75.4,55
		.kill 10 Saltstone Basilisk|q 1175/1
		.' Finish getting the 30 Rocket Car Parts you need|goal 30 Rocket Car Parts|q 1110/1
	step //198
		ding 35
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Levels (35-40)",[[
	author support@zygorguides.com
	next Zygor's Alliance Leveling Guides\\Levels (40-45)
	startlevel 35
	step //1
		goto Thousand Needles,72.4,72.6
		.from Scorpid Reaver##4140+, Scorpid Terror##4139+
		.get 6 Salty Scorpid Venom|q 1104/1
	step //2
		goto 77.8,77.3
		.talk Kravel Koalbeard##4452
		..turnin Rocket Car Parts##1110
	step //3
		goto 78.1,77.1
		.talk Wizzle Brassbolts##4453
		..turnin Hardened Shells##1105
		.talk Fizzle Brassbolts##4454
		..turnin Salt Flat Venom##1104
		..accept Martek the Exiled##1106
	step //4
		goto 80.2,75.9
		.talk Pozzik##4630
		..turnin Load Lightening##1176
		..accept Goblin Sponsorship (1)##1178
	step //5
		goto 81.6,77.9
		.talk Trackmaster Zherin##4629
		..turnin A Bump in the Road##1175
	step //6
		'Go southwest to Tanaris|goto Tanaris|noway|c
	step //7
		goto Tanaris,51,29.3
		.talk Bera Stonehammer##7823
		..fpath Gadgetzan
	step //8
		'Hearth to Southshore|goto Hillsbrad Foothills,51.2,58.9,0.5|use Hearthstone##6948|noway|c
	step //9
		goto Hillsbrad Foothills,48.1,59.1
		.talk Magistrate Henry Maleb##2276
		..turnin Further Mysteries##525
	step //10
		'Fly to Menethil Harbor|goto Wetlands,9.5,59.7,0.5|noway|c
	step //11
		goto Wetlands,5.1,63.4|n
		'Ride the boat to Theramore|goto Dustwallow Marsh,67.5,50.3,9|noway|c
	step //12
		goto Dustwallow Marsh,67.5,51.3
		.talk Baldruc##4321
		..fpath Theramore
	step //13
		'Fly to Stonetalon Peak|goto Stonetalon Mountains,36.5,7.3,6|noway|c
	step //14
		'Go south to Desolace|goto Desolace|noway|c
	step //15
		goto Desolace,67.5,15.9|n
		.' The path up to Nijel's Point starts here|goto Desolace,67.5,15.9,0.5|noway|c
	step //16
		goto 66.4,11.8
		.talk Vahlarriel Demonslayer##5642
		..accept Vahlarriel's Search (1)##1437
	step //17
		goto 66.2,9.6
		.talk Kreldig Ungor##5638
		..turnin Reclaimers' Business in Desolace##1453
		..accept Reagents for Reclaimers Inc. (1)##1458
		..accept The Karnitol Shipwreck (1)##1454
	step //18
		goto 64.7,10.5
		.talk Baritanas Skyriver##6706
		..fpath Nijel's Point
	step //19
		home Nijel's Point
	step //20
		goto 56.5,17.8
		.' Click the Malem Chest|tip It's the only light brown colored box next to the crashed wagon.
		..turnin Vahlarriel's Search (1)##1437
		..accept Vahlarriel's Search (2)##1465
	step //21
		goto 66.4,11.8
		.talk Vahlarriel Demonslayer##5642
		..turnin Vahlarriel's Search (2)##1465
		..accept Vahlarriel's Search (3)##1438
	step //22
		goto 71.8,17.8
		.from Hatefury Trickster##4671+, Hatefury Shadowstalker##4674+, Hatefury Betrayer##4673+, Hatefury Hellcaller##4675+, Hatefury Rogue##4670+, Hatefury Felsworn##4672+
		.get 10 Hatefury Claw|q 1458/1
		.get 10 Hatefury Horn|q 1458/2
	step //23
		goto 66.2,9.6
		.talk Kreldig Ungor##5638
		..turnin Reagents for Reclaimers Inc. (1)##1458
	step //24
		goto 62.3,39
		.talk Bibbly F'utzbuckle##11438
		..accept Bone Collector##5501
	step //25
		goto 60.9,61.9
		.talk Smeed Scrabblescrew##11596
		..accept Kodo Roundup##5561
	step //26
		goto 55.8,62.9
		.' Use your Kodo Kombobulator on Ancient, Aged, or Dying Kodos|use Kodo Kombobulator##13892
		.' Lead them back to Smeed Scrabblescrew one at a time
		.talk each Kodo after you lead it back to Smeed Scrabblescrew
		.' Lead 5 Tamed Kodos back to Smeed Scrabblescrew|goal 5 Kodos Tamed|q 5561/1
	step //27
		goto 60.9,61.9
		.talk Smeed Scrabble##11596
		..turnin Kodo Roundup##5561
	step //28
		goto 54.4,63.8
		.' Click the Kodo Bones|tip They look like white rhino skulls on the ground around this area.  If a Kodo Apparition spawns, just run away from it.
		.get 10 Kodo Bone|q 5501/1
	step //29
		goto 38.9,27.2
		.talk Azore Aldamort##11863
		..accept Sceptre of Light##5741
	step //30
		goto 36.1,30.4
		.' Click Karnitol's Chest|tip Karnitol's Chest is a chest sitting on the beach.
		..turnin The Karnitol Shipwreck (1)##1454
		..accept The Karnitol Shipwreck (2)##1455
		.' Click Rackmore's Log|tip Rackmore's Log is a little black book sitting on a barrel in a small boatwreck on the shore.
		..accept Claim Rackmore's Treasure!##6161
	step //31
		goto 34.4,31.3
		.from Drysnap Pincer##11563+, Drysnap Crawler##11562+
		.get Rackmore's Silver Key|q 6161/1
	step //32
		goto 35.6,25.6
		.from Slitherblade Naga##4711+, Slitherblade Warrior##4713+, Slitherblade Sorceress##4712+, Slitherblade Oracle##4718+
		.get Rackmore's Golden Key|q 6161/2
	step //33
		goto 55.2,30.1
		.from Burning Blade Seer##13019
		.get Sceptre of Light|q 5741/1
	step //34
		goto 54.9,26.1
		.talk Dalinda Malem##5644
		..turnin Vahlarriel's Search (3)##1438
		..accept Search for Tyranis##1439
	step //35
		goto 53,29.1
		.from Tyranis Malem##5643
		.get Tyranis' Pendant|q 1439/1
	step //36
		goto 54.9,26.1
		.talk Dalinda Malem##5644
		..turnin Search for Tyranis##1439
		..accept Return to Vahlarriel##1440
		.goal Rescue Dalinda Malem|q 1440/1
	step //37
		goto 62.3,39
		.talk Bibbly F'utzbuckle##11438
		..turnin Bone Collector##5501
	step //38
		goto 38.9,27.2
		.talk Azore Aldamort##11863
		..turnin Sceptre of Light##5741
		..accept Book of the Ancients##6027
	step //39
		ding 36
	step //40
		goto 30,8.7
		.' Click Rackmore's Chest|tip Looks like a brown chest sitting between 2 trees.  It's kind of hidden.
		..turnin Claim Rackmore's Treasure!##6161
	step //41
		goto 28.2,6.6
		.' Click the Serpent Statue
		.from Lord Kragaru##12369
		.get Book of the Ancients|q 6027/1
	step //42
		goto 38.9,27.2
		.talk Azore Aldamort##11863
		..turnin Book of the Ancients##6027
	step //43
		'Hearth to Nijel's Point|goto Desolace,66.8,10.1,4|use Hearthstone##6948|noway|c
	step //44
		goto 66.2,9.6
		.talk Kreldig Ungor##5638
		..turnin The Karnitol Shipwreck (2)##1455
	step //45
		goto 66.4,11.8
		.talk Vahlarriel Demonslayer##5642
		..turnin Return to Vahlarriel##1440
	step //46
		'Go southwest to Feralas|goto Feralas|noway|c
	step //47
		goto Feralas,43.5,42.8|n
		.' Ride the boat to Feathermoon Stronghold|goto Feralas,31.0,39.9,0.5|noway|c
	step //48
		goto 30.2,43.2
		.talk Fyldren Moonfeather##8019
		..fpath Feathermoon Stronghold
	step //49
		'Fly to Ratchet|goto The Barrens,63.0,38.1,2|noway|c
	step //50
		goto The Barrens,62.7,36.2
		.talk Gazlowe##3391
		..turnin Goblin Sponsorship (1)##1178
		..accept Goblin Sponsorship (2)##1180
	step //51
		goto 63.4,38.5
		.talk Wharfmaster Dizzywig##3453
		..turnin Wharfmaster Dizzywig##1111
		..accept Parts for Kravel##1112
	step //52
		'Ride the boat to Booty Bay|goto Stranglethorn Vale|noway|c
	step //53
		goto Stranglethorn Vale,26.3,73.6
		.talk Wharfmaster Lozgil##4631
		..turnin Goblin Sponsorship (2)##1180
		..accept Goblin Sponsorship (3)##1181
	step //54
		goto 27.4,74.1
		.talk Caravaneer Ruzzgot##3945
		..turnin Passage to Booty Bay##1040
	step //55
		home Booty Bay
	step //56
		goto 27.1,77.2
		.talk Crank Fizzlebub##2498
		..accept Singing Blue Shards##605
	step //57
		goto 27,77.1
		.talk Kebok##737
		..accept Bloodscalp Ears##189
		..accept Hostile Takeover##213
	step //58
		goto 26.9,77.2
		.talk Krazek##773
		..accept The Haunted Isle##616
	step //59
		goto 27.2,77
		.talk Baron Revilgaz##2496
		..turnin The Haunted Isle##616
		..accept The Stone of the Tides##578
		..turnin Goblin Sponsorship (3)##1181
		..accept Goblin Sponsorship (4)##1182
	step //60
		goto 28.3,77.6
		.talk Drizzlik##2495
		..accept Supply and Demand##575
	step //61
		goto 39.4,34.7
		.kill 10 Shadowmaw Panther##684|q 192/1
	step //62
		goto 44.4,21.6
		.from Venture Co. Geologist##1096
		.get 8 Tumbled Crystal|q 213/1
	step //63
		goto 42.7,18.3
		.from Foreman Cozzle##4723
		.collect Cozzle's Key##5851|q 1182
	step //64
		goto 43.3,20.3
		.' Click Cozzle's Footlocker|tip It's a brown chest in the small house.
		.get Fuel Regulator Blueprints|q 1182/1
	step //65
		goto 37.1,24.4
		.kill 10 Lashtail Raptor|q 195/1
	step //66
		goto 32.5,18.8
		.kill 10 Elder Stranglethorn Tiger|q 187/1
	step //67
		goto 40.6,13.3
		.from River Crocolisk##1150
		.get 2 Large River Crocolisk Skin|q 575/1
	step //68
		goto 35.8,10.7
		.talk Sir S. J. Erlgadin##718
		..turnin Panther Mastery (3)##192
		..accept Panther Mastery (4)##193
		.talk Ajeck Rouack##717
		..turnin Tiger Mastery (3)##187
		..accept Tiger Mastery (4)##188
		.talk Hemet Nesingwary Jr.##715
		..turnin Hemet Nesingwary Jr.##5762
		..turnin Raptor Mastery (2)##195
		..accept Raptor Mastery (3)##196
		.' See a message saying you Investigated the Camp|goal Locate the hunters' camp|q 201/1
	step //69
		goto 32.2,17.3
		.from Sin'Dall##729
		.get Paw of Sin'Dall|q 188/1
	step //70
		goto 35.8,10.7
		.talk Ajeck Rouack##717
		..turnin Tiger Mastery (4)##188
	step //71
		goto 38.9,5.1
		.talk Private Thorsen##738
		..turnin Supplies to Private Thorsen##198
	step //72
		goto 38,3.3
		.talk Sergeant Yohwa##733
		..accept Special Forces##574
	step //73
		goto 37.7,3.3
		.talk Corporal Kaleb##770
		..turnin Return to Corporal Kaleb##622
	//////////
	step //74
		goto 45.7,8.2
		.kill 10 Kurzen Commando|q 574/1
		.kill 6 Kurzen Headshrinker|q 574/2
	step //75
		'Go outside to 38.0,3.1|goto 38.0,3.1
		.talk Lieutenant Doren##469
		..turnin Special Forces##574
	step //76
		goto 28.9,20.7
		.kill Bloodscalp trolls|n
		.get 15 Bloodscalp Ear|q 189/1
	step //77
		ding 37
	step //78
		goto 25.1,17.7
		.kill basilisks|n
		.get 10 Singing Crystal Shard|q 605/1
	step //79
		goto 21.5,22.7
		.goal Locate the haunted island|q 578/1
	step //80
		'Hearth to Booty Bay|goto Stranglethorn Vale,27.0,77.3,0.5|use Hearthstone##6948|noway|c
	step //81
		goto 27.1,77.2
		.talk Crank Fizzlebub##2498
		..turnin Singing Blue Shards##605
	step //82
		goto 27,77.1
		.talk Kebok##737
		..turnin Bloodscalp Ears##189
		..turnin Hostile Takeover##213
	step //83
		goto 26.9,77.2
		.talk Krazek##773
		..turnin Investigate the Camp##201
	step //84
		goto 27.2,77
		.talk Baron Revilgaz##2496
		..turnin Goblin Sponsorship (4)##1182
		..accept Goblin Sponsorship (5)##1183
		..turnin The Stone of the Tides##578
		..accept Water Elementals##601
	step //85
		goto 28.3,77.6
		.talk Drizzlik##2495
		..turnin Supply and Demand##575
		..accept Some Assembly Required##577
	step //86
		'Ride the boat to Ratchet|goto The Barrens|noway|c
	step //87
		'Fly to Gadgetzan|goto Tanaris,51.0,29.3,0.5|noway|c
	step //88
		'Go north to Thousand Needles|goto Thousand Needles|noway|c
	step //89
		goto Thousand Needles,77.8,77.3
		.talk Kravel Koalbeard##4452
		..turnin Parts for Kravel##1112
		..accept Delivery to the Gnomes##1114
	step //90
		goto 78.1,77.1
		.talk Fizzle Brassbolts##4454
		..turnin Delivery to the Gnomes##1114
	step //91
		goto 77.8,77.3
		.talk Kravel Koalbeard##4452
		..accept The Rumormonger##1115
	step //92
		goto 80.2,75.9
		.talk Pozzik##4630
		..turnin Goblin Sponsorship (5)##1183
		..accept The Eighteenth Pilot##1186
		.talk Razzeric##4706
		..turnin The Eighteenth Pilot##1186
		..accept Razzeric's Tweaking##1187
	step //93
		'Go southwest to Tanaris|goto Tanaris|noway|c
	step //94
		'Fly to Ratchet|goto The Barrens,63.0,38.1,2|noway|c
	step //95
		'Ride the boat to Booty Bay|goto Stranglethorn Vale|noway|c
	step //96
		goto Stranglethorn Vale,26.9,77.2
		.talk Krazek##773
		..turnin The Rumormonger##1115
	step //97
		'Fly to Southshore|goto Hillsbrad Foothills,50.0,56.9,8|noway|c
	step //98
		home Southshore
	step //99
		'Go north to the Alterac Mountains|goto Alterac Mountains|noway|c
	step //100
		goto Alterac Mountains,49.7,60.8
		.kill ogres|n
		.get 9 Dirty Knucklebones|q 500/1
	step //101
		goto 62.3,45.4
		.kill Syndicate mobs|n
		.get 7 Alterac Signet Ring|q 512/1
	step //102
		'Hearth to Southshore|goto Hillsbrad Foothills,51.2,58.9,0.5|use Hearthstone##6948|noway|c
	step //103
		goto Hillsbrad Foothills,49.5,58.7
		.talk Marshal Redpath##2263
		..turnin Crushridge Bounty##500
	step //104
		goto 48.1,59.1
		.talk Magistrate Henry Maleb##2276
		..turnin Noble Deaths##512
	step //105
		'Fly to Refuge Point|goto Arathi Highlands,45.8,46.1,0.5|noway|c
	step //106
		goto Arathi Highlands,46.2,47.8
		.talk Apprentice Kryten##2788
		..accept Worth Its Weight in Gold##691
	step //107
		goto 62.5,33.8
		.' Click the Shards of Myzrael|tip It's a huge floating black crystal.
		..accept The Princess Trapped##642
	step //108
		goto 80.9,39.9|n
		.' The path up to 'The Princess Trapped' starts here behind the tree|goto Arathi Highlands,80.9,39.9,0.5|noway|c
	step //109
		goto 82.8,36
		.kill kobolds|n
		.get 12 Mote of Myzrael|q 642/1
	step //110
		goto 84.3,30.9
		.' Click the Iridescent Shards|tip Inside the cave, follow the path curving up to the left. It's a big black floating crystal.
		..turnin The Princess Trapped##642
		..accept Stones of Binding##651
	step //111
		ding 38
	step //112
		'Go outside to 66.7,29.7|goto 66.7,29.7
		.' Click the Stone of East Binding|tip In the middle of a circle of stones.
		.get Cresting Key|q 651/2
	step //113
		goto 71.7,62.9
		.kill Witherbark trolls|n
		.get 10 Witherbark Tusk|q 691/1
		.kill Witherbark Witch Doctors|n
		.get 4 Witherbark Medicine Pouch|q 691/2
	step //114
		goto 68.3,75.1
		.kill Witherbark Shadow Hunters|tip They are inside the cave.|n
		.get Shadow Hunter Knife|q 691/3
	step //115
		'Go outside to 60.2,53.9|goto 60.2,53.9
		.talk Quae##2712
		..turnin Hints of a New Plague? (1)##659
		..accept Hints of a New Plague? (2)##658
	step //116
		'The Forsaken Courier walks the road from the Go'Shek Farm to Tauren Mill in the Hillsbrad Foothills. If you see him while walking around, kill only the Forsaken Courier then run away. If you still have not found him after you're done questing, walk the road until you find him.
		.'Get the Sealed Folder from the Forsaken Courier|get Sealed Folder|q 658/1
	step //117
		goto 52,50.7
		.' Click the Stone of Outer Binding|tip In the middle of a circle of stones.
		.get Thundering Key|q 651/3
	step //118
		goto 46.2,47.8
		.talk Apprentice Kryten##2788
		..turnin Worth Its Weight in Gold##691
	step //119
		goto 46.6,47
		.talk Skuerto##2789
		..accept Wand over Fist##693
	step //120
		goto 54.8,81.9
		.from Kor'gresh Coldrage##2793
		.get Trelane's Wand of Invocation|q 693/1
	step //121
		goto 46.6,47
		.talk Skuerto##2789
		..turnin Wand over Fist##693
		..accept Trelane's Defenses##694
	step //122
		goto 46,47.7
		.' Click the Wanted Board|tip Next to a tent.
		..accept Wanted!  Marez Cowl##684
		..accept Wanted!  Otto and Falconcrest##685
	step //123
		goto 45.8,47.6
		.talk Captain Nials##2700
		..accept Stromgarde Badges##682
	step //124
		goto 25.5,30.1
		.' Click the Stone of West Binding|tip In the middle of a circle of stones.
		.get Burning Key|q 651/1
	step //125
		goto 26.1,59.8
		.kill Syndicate mobs|n
		.get 7 Stromgarde Badge|q 682/1
	step //126
		goto 29.6,64.2
		.from Marez Cowl##2783
		.get Marez's Head|q 684/1
		..'She can also be at 29.6,63.0|tip At 29,63, she is standing behind a big house, next to a table with a bunch of raw meat on it.
	step //127
		goto 26,65.5
		.from Otto##2599
		.get Otto's Head|q 685/1
		.from Lord Falconcrest##2597
		.get Falconcrest's Head|q 685/2
	step //128
		'Go outside to 24.4,61.2|goto 24.4,61.2|n
		.' The path to Trelane's Defenses starts here|goto Arathi Highlands,24.4,61.2,0.5|noway|c
	step //129
		goto 21.7,66.9
		.kill Boulderfist Shamans|n
		.get Azure Agate|q 694/1
	step //130
		'Go outside Stromgarde to 36.2,57.3|goto 36.2,57.3
		.' Click the Stone of Inner Binding|tip In the middle of a circle of stones.
		.turnin Stones of Binding##651
	step //131
		goto 31.5,64.1|n
		.' The path over to Faldir's Cove starts here|goto Arathi Highlands,31.5,64.1,0.5|noway|c
	step //132
		goto 31.8,82.7
		.talk Lolo the Lookout##2766
		..accept Land Ho!##663
	step //133
		goto 32.3,81.4
		.talk Shakes O'Breen##2610
		..turnin Land Ho!##663
	step //134
		goto 32.7,81.5
		.talk First Mate Nilzlix##2767
		..accept Deep Sea Salvage##662
	step //135
		goto 33.9,80.6
		.talk Captain Steelgut##2769
		..accept Drowned Sorrows##664
		.talk Professor Phizzlethorpe##2768
		..accept Sunken Treasure (1)##665
		..'Escort Professor Phizzlethorpe
		.talk Doctor Draxlegauge##2774
		..turnin Sunken Treasure (1)##665
		..accept Sunken Treasure (2)##666
	step //136
		goto 23.5,85.1
		.' Click the Maiden's Folly Log|tip On the middle deck, in a pile of junk, sitting in a cauldron looking pot.
		.get Maiden's Folly Log|q 662/2
	step //137
		goto 23.1,84.5
		.' Click the Maiden's Folly Charts|tip On a wooden ledge on the middle deck. It looks like a tan, flat scroll.
		.get Maiden's Folly Charts|q 662/1
	step //138
		goto 20.5,85.6
		.' Click the Spirit of Silverpine Charts|tip It's a flat scroll laying on a box next to a cannon on the middle deck of the ship.
		.get Spirit of Silverpine Charts|q 662/3
	step //139
		goto 20.6,85.1
		.' Click the Spirit of Silverpine Log|tip It's a scroll laying flat on the ground at the very bottom of the ship.
		.get Spirit of Silverpine Log|q 662/4
	step //140
		goto 22.4,83.7
		.' Put on your Goggles of Gem Hunting|use Goggles of Gem Hunting##4491
		.' Click the Calcified Elven Gems|tip Use your Goggles of Gem Hunting. The Calcified Elven Gems will show up as yellow dots on your mini map.
		.get 10 Elven Gem|q 666/1
	step //141
		goto 25.3,85.2
		.kill 10 Daggerspine Raider|q 664/1
		.kill 3 Daggerspine Sorceress|q 664/2
	step //142
		goto 32.7,81.5
		.talk First Mate Nilzlix##2767
		..turnin Deep Sea Salvage##662
	step //143
		goto 33.9,80.6
		.talk Doctor Draxlegauge##2774
		..turnin Sunken Treasure (2)##666
		..accept Sunken Treasure (3)##668
		.talk Captain Steelgut##2769
		..turnin Drowned Sorrows##664
	step //144
		goto 32.3,81.4
		.talk Shakes O'Breen##2610
		..turnin Sunken Treasure (3)##668
		..accept Sunken Treasure (4)##669
	step //145
		'If you haven't killed the Forsaken Courier for 'Hints of a New Plague?' (2), do it now
		.get Sealed Folder|q 658/1
	step //146
		'Go to Arathi Highlands if you are in Hillsbrad Foothills|goto Arathi Highlands|noway|c
	step //147
		goto Arathi Highlands,45.8,47.6
		.talk Captain Nials##2700
		..turnin Stromgarde Badges##682
		..turnin Wanted!  Marez Cowl##684
		..turnin Wanted!  Otto and Falconcrest##685
	step //148
		goto 46.2,47.8
		.talk Apprentice Kryten##2788
		..turnin Trelane's Defenses##694
		..accept An Apprentice's Enchantment##695
	step //149
		goto 46.6,47
		.talk Skuerto##2789
		..turnin An Apprentice's Enchantment##695
	step //150
		ding 39
	step //151
		goto 60.2,53.9
		.talk Quae##2712
		..turnin Hints of a New Plague? (2)##658
		..accept Hints of a New Plague? (3)##657
		.talk Kinelory##2713
		..turnin Hints of a New Plague? (3)##657
		..accept Hints of a New Plague? (4)##660
		..'Escort Kinelory
		.talk Quae##2712
		..turnin Hints of a New Plague? (4)##660
		..accept Hints of a New Plague? (5)##661
	step //152
		'Hearth to Southshore|goto Hillsbrad Foothills,51.2,58.9,0.5|use Hearthstone##6948|noway|c
	step //153
		goto Hillsbrad Foothills,50.3,59
		.talk Phin Odelic##2711
		..turnin Hints of a New Plague? (5)##661
	step //154
		'Fly to Menethil Harbor|goto Wetlands,9.5,59.7,0.5|noway|c
	step //155
		'Ride the boat to Theramore|goto Dustwallow Marsh|noway|c
	step //156
		goto Dustwallow Marsh,67.9,51.6
		.talk Sergeant Amelyn##23835
		..accept This Old Lighthouse##11191
	step //157
		goto 68.3,51.0
		.talk Calia Hastings##23566
		..accept Traitors Among Us##11126
	step //158
		talk 5 Deserter Agitator##23602
		.'Expose 5 Deserter Agitators|goal 5 Deserter Agitator Exposed|q 11126/1
	step //159
		goto 65.1,47.1
		.talk Lieutenant Aden##23951
		..accept Mission to Mudsprocket##11214
	step //160
		goto 66.2,46.1
		.talk Guard Byron##4921
		..accept They Call Him Smiling Jim##1282
		..accept Tabetha's Farm##11212
	step //161
		home Theramore
	step //162
		goto 66.3,45.5
		.talk Morgan Stern##4794
		..accept Mudrock Soup and Bugs##1204
	step //163
		goto 67.9,48.2
		.talk Clerk Lendry##5083
		..turnin James Hyal##1302
	step //164
		goto 68.2,48.6
		.talk Captain Garran Vimes##4944
		..turnin They Call Him Smiling Jim##1282
		..accept Inspecting the Ruins##11123
	step //165
		goto 68.3,51.0
		.talk Calia Hastings##23566
		..turnin Traitors Among Us##11126
		..accept Propaganda War##11128
	step //166
		goto 67.9,58.7
		.' Click the Deserter Propoganda boxes on the ship|tip A pile of boxes on the bottom deck of the ship in the Captain's quarters.
		.get Deserter Propaganda|q 11128/1
	step //167
		goto 68.3,51.0
		.talk Calia Hastings##23566
		..turnin Propaganda War##11128
		..accept Discrediting the Deserters##11133
	step //168
		talk 6 Theramore Guard##4979
		.' Give them each a flier
		.'Distribute 6 Leaflets|goal 6 Leaflets Distributed|q 11133/1
	step //169
		goto 68.3,51.0
		.talk Calia Hastings##23566
		..turnin Discrediting the Deserters##11133
		..accept The End of the Deserters##11134
	step //170
		goto 76.2,57
		.' Fight Gavis Greyshield until he surrenders|tip He's downstairs in this ship, in the captain's quarters.
		.' Capture Gavis Greyshield|goal Gavis Greyshield Captured|q 11134/1
	step //171
		goto 68.3,51.0
		.talk Calia Hastings##23566
		..turnin The End of the Deserters##11134
	step //172
		goto 68.3,51.8
		.talk Sergeant Amelyn##23835
		..accept The Hermit of Swamplight Manor##11177
	step //173
		goto 72,47.1
		.talk Babs Fizzletorque##23892
		..turnin This Old Lighthouse##11191
		..accept Thresher Oil##11192
	step //174
		goto 72,50
		.kill Young Murk Threshers|n|tip Underwater around this area.
		.get 4 Thresher Oil|q 11192/1
	step //175
		goto 72,47.1
		.talk Babs Fizzletorque##23892
		..turnin Thresher Oil##11192
		..accept Dastardly Denizens of the Deep##11193
	step //176
		goto 69.1,52.1
		.talk "Dirty" Michael Crowe##23896
		..turnin Dastardly Denizens of the Deep##11193
		..accept Is it Real?##11194
	step //177
		goto 65.1,47.1
		.talk Lieutenant Aden##23951
		..accept A Disturbing Development##11136
	step //178
		goto 59.8,41.1
		.talk Captain Wymor##5086
		..turnin A Disturbing Development##11136
		..accept Defias in Dustwallow?##11137
	step //179
		goto 64.7,41.3
		.kill turtles|n
		.get 8 Forked Mudrock Tongue|q 1204/1
	step //180
		goto 64,30
		.from Garn Mathers##23679
		.get Defias Orders|q 11137/1
	step //181
		goto 59.8,41.1
		.talk Captain Wymor##5086
		..turnin Defias in Dustwallow?##11137
	step //182
		goto 55.4,26.3
		.talk "Swamp Eye" Jarl##4792
		..turnin The Hermit of Swamplight Manor##11177
		..accept Marsh Frog Legs##1218
		.talk Mordant Grimsby##23843
		..accept What's Haunting Witch Hill?##11180
	step //183
		goto 55.4,25.9
		.' Click the Loose Dirt|tip It looks like a dirt grave next to the small shack.
		..accept The Orc Report##1219
	step //184
		'Kill Giant Marsh Frogs around "Swamp Eye" Jarl's house
		.get 10 Marsh Frog Leg|q 1218/1
	step //185
		goto 55.4,26.3
		.talk "Swamp Eye" Jarl##4792
		..turnin Marsh Frog Legs##1218
		..accept Jarl Needs Eyes##1206
	step //186
		goto 55,31
		.kill Risen Husks|n
		.kill Risen Spirits|n
		.' Gather 10 Information|goal 10 Information Gathered|q 11180/1
	step //187
		goto 55.4,26.3
		.talk Mordant Grimsby##23843
		..turnin What's Haunting Witch Hill?##11180
		..accept The Witch's Bane##11181
	step //188
		goto 56,27
		.' Click Witchbane plants|tip They are bright green fern looking plants with a tall pink flower in the middle of them.
		.get 9 Witchbane|q 11181/1
	step //189
		goto 55.4,26.3
		.talk Mordant Grimsby##23843
		..turnin The Witch's Bane##11181
		..accept Cleansing Witch Hill##11183
	step //190
		ding 40
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Levels (40-45)",[[
	author support@zygorguides.com
	next Zygor's Alliance Leveling Guides\\Levels (45-50)
	startlevel 40
	step //1
		goto Dustwallow Marsh,55.2,26.7
		.' Use your Witchbane Torch in your bags|use Witchbane Torch##33113
		..'A flying demon will appear
		.kill Zelfrax|n
		.' Cleanse Witch Hill|goal Witch Hill Cleansed|q 11183/1
	step //2
		goto 55.4,26.3
		.talk Mordant Grimsby##23843
		..turnin Cleansing Witch Hill##11183
	step //3
		goto 46.7,23.1
		.talk Sergeant Lukas##23723
		..accept Raptor Captor##11146
	step //4
		goto 47,19
		.' Fight Bloodfen Screechers and Bloodfen Raptors
		.' Use your Sturdy Rope on the raptors when they are almost dead|use Sturdy Rope##33069|tip You will see a message in your chat window letting you know when you can capture the raptor.  Do not kill the raptors or you won't be able to capture them.
		.' Capture 6 Raptors|goal 6 Raptors Captured|q 11146/1
	step //5
		goto 46.9,17.5
		.talk "Stinky" Ignatz##4880
		..accept Stinky's Escape##1222
		.' Help Stinky find Bogbean Leaves|goal Help Stinky find Bogbean Leaves|q 1222/1
	step //6
		goto 46.7,23.1
		.talk Sergeant Lukas##23723
		..turnin Raptor Captor##11146
		..accept Prisoners of the Grimtotems##11145
		..accept Unleash the Raptors##11147
	step //7
		goto 44,16
		.kill Grimtotem mobs|n
		.get Grimtotem Keys|n
		.' Click the Blackhoof Cages|tip The Blackhoof Cages are yellow cages around this area.
		.' Free 5 Theramore Prisoners|goal 5 Theramore Prisoners Freed|q 11145/1
	step //8
		goto 42,12
		.' Use your Raptor Bait next to the windmill|use Raptor Bait##33070
		.' Release the Raptors|goal Raptors Released|q 11147/1
	step //9
		goto 46.7,23.1
		.talk Sergeant Lukas##23723
		..turnin Unleash the Raptors##11147
		..turnin Prisoners of the Grimtotems##11145
	step //10
		goto 35.1,23
		.kill Darkmist spiders|n
		.get 20 Unpopped Darkmist Eye|q 1206/1
	step //11
		goto 29.7,47.6
		.talk Inspector Tarem##23567
		..turnin Inspecting the Ruins##11123
		.' Click the Suspicious Hoofprints'|tip They look like a set of 3 toed tan muddy footprints on the ground next to the path.
		..accept Suspicious Hoofprints##1284
	step //12
		goto 29.8,48.3
		.' Click the Theramore Guard Badge|tip A very tiny grey badge laying on a board ont he floor in the burnt down house.
		..accept Lieutenant Paval Reethe (1)##1252
	step //13
		goto 29.6,48.6
		.' Click the Black Shield|tip Hanging on the brick chimney wall.
		..accept The Black Shield (1)##1253
	step //14
		goto 42.8,72.4
		.talk Dyslix Silvergrub##23612
		..fpath Mudsprocket
	step //15
		goto 42.3,72.9
		.talk Drazzit Dripvalve##23572
		..turnin Mission to Mudsprocket##11214
	step //16
		goto 41.8,73.1
		.' Click the Wanted Poster|tip To the right of the stairway entrance to the big hut.
		..accept WANTED: Goreclaw the Ravenous##11184
	step //17
		goto 41.9,74
		.talk Brogg##23579
		..accept Bloodfen Feathers##11158
	step //18
		goto 41.5,73
		.talk Gizzix Grimegurgle##23570
		..accept Catch a Dragon by the Tail##11217
	step //19
		goto 46.1,57.2
		.talk Tabetha##6546
		..turnin Tabetha's Farm##11212
		.talk Apprentice Morlann##23600
		..accept The Zeppelin Crash##11172
	step //20
		goto 53.6,56.9
		.talk Moxie Steelgrille##23797
		..turnin The Zeppelin Crash##11172
		..accept Corrosion Prevention##11174
		..accept Secure the Cargo!##11207
	step //21
		goto 53,56
		.' Click the Zeppelin Cargo|tip They look like wooden boxes on the ground around this area.
		.get 8 Zeppelin Cargo|q 11207/1
		.' Use your Ooze Buster on oozes|use Ooze Buster##33108|tip You have to be near a Power Core Fragment (the things that connect lightning to you).
		.' Dissolve 10 Oozes|goal 10 Oozes Dissolved|q 11174/1
	step //22
		goto 53.6,56.9
		.talk Moxie Steelgrille##23797
		..turnin Corrosion Prevention##11174
		..turnin Secure the Cargo!##11207
		..accept Delivery for Drazzit##11208
	step //23
		goto 54.1,56.5
		.' Click the Gizmorium Shipping Crate|tip It's a wooden crate next to the crashed zeppelin, on the left side.
		.get Seaforium Booster|q 1187/1
	step //24
		goto 54.6,58.1|n
		.' The path down to Nat Pagle starts here|goto Dustwallow Marsh,54.6,58.1,0.5|noway|c
	step //25
		goto 58.5,60
		.talk Nat Pagle##12919
		..turnin Is it Real?##11194
		..accept Nat's Bargain##11209
	step //26
		goto 56.2,62
		.' Use Pagle's Fish Paste, Extra Strength|use Pagle's Fish Paste, Extra Strength##33166
		.' Kill the Lurking Shark that spawns underwater
		.' Test the Fish Paste|goal Fish Paste Tested|q 11209/1
	step //27
		goto 58.5,60
		.talk Nat Pagle##12919
		..turnin Nat's Bargain##11209
		..accept Oh, It's Real##11210
	step //28
		'Hearth to Theramore|goto Dustwallow Marsh,66.6,45.2,0.5|use Hearthstone##6948|noway|c
	step //29
		goto 66.3,45.5
		.talk Morgan Stern##4794
		..turnin Mudrock Soup and Bugs##1204
		..turnin Stinky's Escape##1222
	step //30
		goto 65.1,47.1
		.talk the Lieutenant Aden##23951
		..turnin The Orc Report##1219
		..accept Captain Vimes##1220
	step //31
		goto 68.2,48.6
		.talk Captain Garran Vimes##4944
		..turnin Captain Vimes##1220
		..turnin Lieutenant Paval Reethe (1)##1252
		..accept Lieutenant Paval Reethe (2)##1259
		..turnin The Black Shield (1)##1253
		..accept The Black Shield (2)##1319
		..turnin Suspicious Hoofprints##1284
	step //32
		goto 68,48.1
		.talk Adjutant Tesoran##4948
		..turnin Lieutenant Paval Reethe (2)##1259
		..accept Daelin's Men##1285
	step //33
		goto 68.2,48.6
		.talk Captain Garran Vimes##4944
		..turnin Daelin's Men##1285
		..accept The Deserters (1)##1286
	step //34
		goto 69.7,51.2
		.talk Major Mills##23905
		..turnin Oh, It's Real##11210
		..accept Take Down Tethyr!##11198
	step //35
		'A huge monster will spawn in the water
		.' Run around on the dock clicking the big metal cannons until the big monster dies
		.goal Defend Theramore Docks from Tethyr|q 11198/1
	step //36
		goto 69.7,51.2
		.talk Major Mills##23905
		..turnin Take Down Tethyr!##11198
	step //37
		goto 64.8,50.4
		.talk Caz Twosprocket##4941
		..turnin The Black Shield (2)##1319
		..accept The Black Shield (3)##1320
	step //38
		goto 68.2,48.6
		.talk Captain Garran Vimes##4944
		..turnin The Black Shield (3)##1320
	step //39
		'Go outside to 55.4,26.3|goto 55.4,26.3
		.talk "Swamp Eye" Jarl##4792
		..turnin Jarl Needs Eyes##1206
	step //40
		'Go southeast to Theramore and fly to Mudsprocket|goto Dustwallow Marsh,42.0,73.3,2|noway|c
	step //41
		goto 42.3,72.9
		.talk Drazzit Dripvalve##23572
		..turnin Delivery for Drazzit##11208
	step //42
		goto 36.1,54.3
		.' Fight Balos Jacken until he surrenders
		.talk Balos Jacken##5089
		..turnin The Deserters (1)##1286
		..accept The Deserters (2)##1287
	step //43
		goto 35,65
		.kill raptors|n
		.get 5 Bloodfen Feather|q 11158/1
	step //44
		ding 41
	step //45
		goto 32,65.7
		.kill Goreclaw the Ravenous|q 11184/1|tip He's a big green raptor standing at the entrance to the cave.
	step //46
		goto 42.3,72.9
		.talk Drazzit Dripvalve##23572
		..turnin WANTED: Goreclaw the Ravenous##11184
	step //47
		goto 41.9,74
		.talk Brogg##23579
		..turnin Bloodfen Feathers##11158
		..accept Banner of the Stonemaul##11160
		..accept The Essence of Enmity##11161
	step //48
		goto 39,66
		.kill Firemane mobs|n
		.' Use Brogg's Totem on their corpses|use Brogg's Totem##33088
		.get 10 Black Dragonkin Essence|q 11161/1
	step //49
		'Go inside the cave to 38.1,69.4|goto 38.1,69.4
		.' Click the Stonemaul Banner|tip It looks like a hanging tiger skin with an eye painted on it inside the cave.
		.get Stonemaul Banner|q 11160/1
	step //50
		'Go outside to 41.9,74|goto 41.9,74
		.talk Brogg##23579
		..turnin Banner of the Stonemaul##11160
		..turnin The Essence of Enmity##11161
		..accept Spirits of Stonemaul Hold##11159
	step //51
		goto 46,74
		.' Click the Wyrmtails|tip They look like green balls on the ground.
		.get 8 Wyrmtail|q 11217/1
	step //52
		goto 46,69
		.' Click the Ogre Remains|tip They look like big white bones on the ground.
		.kill the Ogre Spirits|n
		.' Lay 10 Stonemaul Spirits to rest|goal 10 Stonemaul Spirits laid to rest|q 11159/1
	step //53
		goto 41.5,73
		.talk Gizzix Grimegurgle##23570
		..turnin Catch a Dragon by the Tail##11217
	step //54
		goto 41.9,74
		.talk Brogg##23579
		..turnin Spirits of Stonemaul Hold##11159
		..accept Challenge to the Black Flight##11162
	step //55
		goto 52.1,75.8
		.' Use your Stonemaul Banner at the foot of the stone ramp at the entrance to Onyxia's Lair|use Stonemaul Banner##33095
		..'A dragon will appear
		.kill Smolderwing|n
		.' Avenge the Stonemaul Clan|goal Stonemaul Clan Avenged|q 11162/1
	step //56
		goto 41.9,74
		.talk Brogg##23579
		..turnin Challenge to the Black Flight##11162
	step //57
		goto 46.1,57.2
		.talk Apprentice Morlann##23600
		..accept Direhorn Raiders##11156
		.talk Apprentice Garion##23601
		..accept The Reagent Thief##11173
		..accept The Grimtotem Weapon##11169
	step //58
		goto 43.8,57
		.' Use your Captured Totem|use Captured Totem##33101
		.kill Mottled Drywallow Crocolisks next to the totem|n
		.' Perform 10 Totem Tests|goal 10 Totem Tests Performed|q 11169/1
	step //59
		goto 41.7,51.4
		.kill Darkfang Creepers|n
		.kill Noxious Shredders|n
		.get 6 Marsh Venom|q 11173/1
	step //60
		goto 47,50
		.kill Grimtotem mobs|n
		.' Kill 12 Direhorn Grimtotems|goal 12 Direhorn Grimtotems killed|q 11156/1
	step //61
		goto 47.2,46.6
		.from Apothecary Cylla##23881
		.get the Sealed Letter|n
		.' Click the Sealed Letter|use Sealed Letter##33114
		..accept The Apothecary's Letter##11185
	step //62
		goto 45.5,57.8
		.talk Andello Porter##23942
		..turnin The Apothecary's Letter##11185
	step //63
		goto 46.1,57.2
		.talk Apprentice Garion##23601
		..turnin The Reagent Thief##11173
		..turnin The Grimtotem Weapon##11169
		.talk Apprentice Morlann##23600
		..turnin Direhorn Raiders##11156
	step //64
		'Hearth to Theramore|goto Dustwallow Marsh,67.5,50.3,9|use Hearthstone##6948|noway|c
	step //65
		goto 68.2,48.6
		.talk Captain Garran Vimes##4944
		..turnin The Deserters (2)##1287
		..accept A Grim Connection##11143
	step //66
		'Go outside to 46.6,24.6|goto 46.6,24.6
		.talk Captain Darill##23568
		..turnin A Grim Connection##11143
		..accept Confirming the Suspicion##11144
		..accept Arms of the Grimtotems##11148
	step //67
		goto 43.1,15
		.kill Grimtotem Elders|n
		.get 4 Grimtotem Note|n
		.' Click the Grimtotem Notes in your bags to combine them|use Grimtotem Note##33050
		.get Grimtotem Battle Plan|q 11144/1
		.' Click the Blackhoof Armaments|tip The Blackhoof Armaments look like wooden weapon with huge spears on them around this area.
		.get 7 Blackhoof Armaments|q 11148/1
	step //68
		goto 46.6,24.6
		.talk Captain Darill##23568
		..turnin Confirming the Suspicion##11144
		..turnin Arms of the Grimtotems##11148
		..accept Tabetha's Assistance##11149
	step //69
		goto 46.1,57.2
		.talk Tabetha##6546
		..turnin Tabetha's Assistance##11149
		..accept Raze Direhorn Post!##11150
	step //70
		goto 47.4,47.6
		.' Use Tabetha's Torch inside this tent|use Tabetha's Torch##33072
		.' Burn the East Tent|goal East Tent Burned|q 11150/3
	step //71
		goto 47.3,46.6
		.' Use Tabetha's Torch inside this tent|use Tabetha's Torch##33072
		.' Burn the Northeast Tent|goal Northeast Tent Burned|q 11150/2
	step //72
		goto 46.6,46
		.' Use Tabetha's Torch inside this tent|use Tabetha's Torch##33072
		.' Burn the North Tent|goal North Tent Burned|q 11150/1
	step //73
		goto 46.1,57.2
		.talk Tabetha##6546
		..turnin Raze Direhorn Post!##11150
		..accept Justice for the Hyals##11151
	step //74
		ding 42
	step //75
		'Go southwest to Mudsprocket and fly to Theramore|goto Dustwallow Marsh,67.5,51.2,0.5|noway|c
	step //76
		goto 68.2,48.6
		.talk Captain Garran Vimes##4944
		..turnin Justice for the Hyals##11151
		..accept Peace at Last##11152
	step //77
		'Go outside to 63.7,42.8|goto 63.7,42.8
		.' Use your Wreath in your bags|use Wreath##33082
		.' Lay the Wreath at the Hyal Family Monument|q 11152/1|tip It's a big gray tombstone in this graveyard.
	step //78
		goto 68.2,48.6
		.talk Captain Garran Vimes##4944
		..turnin Peace at Last##11152
	step //79
		'Fly to Gadgetzan|goto Tanaris,51.0,29.3,0.5|noway|c
	step //80
		'Go north to Thousand Needles|goto Thousand Needles|noway|c
	step //81
		goto Thousand Needles,80.2,75.9
		.talk Razzeric##4706
		..turnin Razzeric's Tweaking##1187
		..accept Safety First (1)##1188
	step //82
		'Go southwest to Tanaris|goto Tanaris|noway|c
	step //83
		goto Tanaris,51,27.2
		.talk Shreev##4708
		..turnin Safety First (1)##1188
		..accept Safety First (2)##1189
	step //84
		'Go north to Thousand Needles|goto Thousand Needles|noway|c
	step //85
		goto Thousand Needles,80.2,75.9
		.talk Razzeric##4706
		..turnin Safety First (2)##1189
	step //86
		'Go southwest to Tanaris|goto Tanaris|noway|c
	step //87
		'Fly to Ratchet|goto The Barrens,63.0,38.1,2|noway|c
	step //88
		'Ride the boat to Booty Bay|goto Stranglethorn Vale|noway|c
	step //89
		goto Stranglethorn Vale,28.1,76.2
		.talk First Mate Crazz##2490
		..accept The Bloodsail Buccaneers (1)##595
	step //90
		goto 27.8,77.1
		.talk "Sea Wolf" MacKinley##2501
		..accept Scaring Shaky##606
	step //91
		home Booty Bay
	step //92
		goto 27.1,77.2
		.talk Crank Fizzlebub##2498
		..accept Venture Company Mining##600
	step //93
		goto 27,77.1
		.talk Kebok##737
		..accept Skullsplitter Tusks##209
	step //94
		goto 27.2,77
		.talk Fleet Master Seahorn##2487
		..turnin Sunken Treasure (4)##669
	step //95
		goto 32.6,40.4
		.kill 10 Jungle Stalker|q 196/1
	step //96
		goto 41.4,42.3
		.kill goblins|n
		.get 10 Singing Blue Crystal|q 600/1
	step //97
		goto 42.5,36.7
		.kill Skullsplitter trolls|n
		.get 18 Skullsplitter Tusk|q 209/1
		.' You can find more of these trolls at 45.4,32
	step //98
		goto 50,24
		.from Bhag'thera##728
		.get Fang of Bhag'thera|q 193/1
		.'Bhag'thera can also be found:
		.'At 47.2,28.6|goto 47.2,28.6|n
		.'At 48.8,20.1|goto 48.8,20.1|n
	step //99
		goto 40,29
		.kill Snapjaw Crocolisks|n
		.get 5 Snapjaw Crocolisk Skin|q 577/1
	step //100
		goto 21.7,25
		.kill Lesser Water Elementals|n
		.get 6 Water Elemental Bracers|q 601/1
	step //101
		'Hearth to Booty Bay|goto Stranglethorn Vale,27.7,74.6,6|use Hearthstone##6948|noway|c
	step //102
		goto 27.1,77.2
		.talk Crank Fizzlebub##2498
		..turnin Venture Company Mining##600
	step //103
		goto 27,77.1
		.talk Kebok##737
		..turnin Skullsplitter Tusks##209
	step //104
		goto 27.2,77
		.talk Baron Revilgaz##2496
		..turnin Water Elementals##601
	step //105
		goto 28.3,77.6
		.talk Drizzlik##2495
		..turnin Some Assembly Required##577
		..accept Excelsior##628
	step //106
		goto 27.3,69.5
		.' Click the Bloodsail Correspondence|tip It's a piece of paper sitting on top of a barrel.
		..turnin The Bloodsail Buccaneers (1)##595
		..accept The Bloodsail Buccaneers (2)##597
	step //107
		goto 32.2,66.8
		.kill Elder Mistvale Gorillas|n
		.get 5 Mistvale Giblets|q 606/1
	step //108
		'Go inside Booty Bay to 26.9,73.6|goto 26.9,73.6
		.talk "Shaky" Phillipe##2502
		..turnin Scaring Shaky##606
		..accept Return to MacKinley##607
	step //109
		goto 28.1,76.2
		.talk First Mate Crazz##2490
		..turnin The Bloodsail Buccaneers (2)##597
		..accept The Bloodsail Buccaneers (3)##599
	step //110
		goto 27.8,77.1
		.talk "Sea Wolf" MacKinley##2501
		..turnin Return to MacKinley##607
		..accept Voodoo Dues##609
	step //111
		goto 26.9,77.3
		.talk Deeg##2488
		..accept Up to Snuff##587
	step //112
		goto 27.2,77
		.talk Fleet Master Seahorn##2487
		..turnin The Bloodsail Buccaneers (3)##599
		..accept The Bloodsail Buccaneers (4)##604
	step //113
		'Fly to the Rebel Camp|goto Stranglethorn Vale,38.0,3.7,2|noway|c
	step //114
		goto 35.8,10.7
		.talk Sir S. J. Erlgadin##718
		..turnin Panther Mastery (4)##193
		.talk Hemet Nesingwary Jr.##715
		..turnin Raptor Mastery (3)##196
		..accept Raptor Mastery (4)##197
	step //115
		ding 43
	step //116
		goto 25.3,19
		.from Elder Saltwater Crocolisk##2635
		.get Elder Crocolisk Skin|q 628/1
	step //117
		goto 38.2,4|n
		.talk Nizzle##24366
		..'Fly to Booty Bay|goto Stranglethorn Vale,27.7,74.6,6|noway|c
	step //118
		goto 28.3,77.6
		.talk Drizzlik##2495
		..turnin Excelsior##628
	step //119
		'Fly to Ironforge|goto Ironforge|noway|c
	step //120
		'Buy the following items from the Auction House:|tip If you cannot buy some of these, ask people to make them for you in General and Trade chat.  Offer to pay well and you will usually get someone to do it for you.
		.buy 1 Healing Potion|q 715/1
		.buy 1 Lesser Invisibility Potion|q 715/2
		.buy 1 Gyrochronatom|q 714/1
		.buy 1 Frost Oil|q 713/1
	step //121
		'Fly to Thelsamar|goto Loch Modan,33.9,50.8,0.5|noway|c
	step //122
		home Thelsamar
	step //123
		goto 65.9,65.6
		.talk Prospector Ironband##1344
		..accept Find Agmond##738
	step //124
		'Go southwest to the Badlands|goto Badlands|noway|c
	step //125
		goto Badlands,53.6,43.3
		.talk Prospector Ryedol##2910
		..accept A Dwarf and His Tools##719
		.talk Sigrun Ironhew##2860
		..accept Mirages##718
	step //126
		goto 42.2,52.7
		.talk Martek the Exiled##4618
		..turnin Martek the Exiled##1106
		..accept Indurium##1108
	step //127
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
	step //128
		goto 21.9,44.6
		.kill Lesser Rock Elementals|n
		.get 10 Small Stone Shard|q 710/1
	step //129
		goto 25.9,44.6
		.talk Lotwil Veriatus##2921
		..turnin Study of the Elements: Rock (1)##710
		..accept Study of the Elements: Rock (2)##711
	step //130
		goto 52.3,30.4
		.kill Dark Iron dwarves|n
		.get Ryedol's Lucky Pick|q 719/1
	step //131
		goto 53,33.9
		.' Click the Crumpled Map|tip Laying on the ground under a white canopy.
		..accept A Sign of Hope##720
	step //132
		goto 66.6,21.5
		.' Click the Excavation Supply Crate|tip It's a wooden crate, sitting next to a very small tent, canopy thing in the small ogre camp, or sitting on the ground next to a cauldron.
		.get Supply Crate|q 718/1
		.' The crate can also be located at 66.9,23.4|n
	step //133
		goto 53.6,43.3
		.talk Prospector Ryedol##2910
		..turnin A Sign of Hope##720
		..turnin A Dwarf and His Tools##719
		.talk Sigrun Ironhew##2860
		..turnin Mirages##718
		..accept Scrounging##733
	step //134
		goto 50.9,62.4
		.' Click the Battered Dwarven Skeleton on the ground
		..turnin Find Agmond##738
		..accept Murdaloc##739
	step //135
		goto 51.8,65.6
		.kill 12 Stonevault Bonesnapper|q 739/2
		.kill Murdaloc|q 739/1|tip Murdaloc walks around the trogg camp.
		.kill Stonevault mobs|n
		.get 10 Indurium Flake|q 1108/1
	step //136
		goto 46.3,77.2|n
		.' The path up to Study of the Elements: Rock (2) starts here|goto 46.3,77.2,0.5|noway|c
	step //137
		goto 44.8,80.6
		.kill Rock Elementals|n
		.get 3 Large Stone Slab|q 711/1
	step //138
		goto 13.5,78.3
		.kill ogres|n
		.get 7 Scrap Metal|q 733/1
	step //139
		goto 25.9,44.6
		.talk Lotwil Veriatus##2921
		..turnin Study of the Elements: Rock (2)##711
		..accept Study of the Elements: Rock (3)##712
	step //140
		goto 7.9,74.1|n
		.' The path up to 'Study of the Elements: Rock (3)' starts here|goto Badlands,7.9,74.1,0.5|noway|c
	step //141
		goto 4.2,81.5
		.kill Greater Rock Elementals|n
		.get 5 Bracers of Rock Binding|q 712/1
	step //142
		goto 25.9,44.6
		.talk Lotwil Veriatus##2921
		..turnin Study of the Elements: Rock (3)##712
		..accept This Is Going to Be Hard (1)##734
		.talk Lucien Tosselwrench##2920
		..turnin This Is Going to Be Hard (1)##734
		..accept This Is Going to Be Hard (2)##777
	step //143
		goto 25.9,44.6
		.talk Lotwil Veriatus##2921
		..turnin This Is Going to Be Hard (2)##777
		..accept This Is Going to Be Hard (3)##778
		.' Kill the Fam'retor Guardian that spawns
		.get Lotwil's Shackles of Elemental Binding|n
		.talk Lotwil Veriatus##2921
		..turnin This Is Going to Be Hard (3)##778
	step //144
		goto 42.2,52.7
		.talk Martek the Exiled##4618
		..turnin Indurium##1108
		..accept News for Fizzle##1137
	step //145
		goto 53.6,43.3
		.talk Sigrun Ironhew##2860
		..turnin Scrounging##733
	step //146
		'Go northwest to Loch Modan|goto Loch Modan|noway|c
	step //147
		goto Loch Modan,65.9,65.6
		.talk Prospector Ironband##1344
		..turnin Murdaloc##739
	step //148
		'Hearth to Thelsamar|goto Loch Modan,35.1,46.9,3|use Hearthstone##6948|noway|c
	step //149
		'Fly to Darkshire|goto Duskwood,74.7,46.9,7|noway|c
	step //150
		goto Duskwood,75.8,46.2
		.talk Watchmaster Sorigal##5464
		..accept Supplies for Nethergarde##1395
	step //151
		'Go east to Deadwind Pass|goto Deadwind Pass|noway|c
	step //152
		'Go east to the Swamp of Sorrows|goto Swamp of Sorrows|noway|c
	step //153
		'Go southeast to the Blasted Lands|goto Blasted Lands|noway|c
	step //154
		goto Blasted Lands,66.5,21.4
		.talk Quartermaster Lungertz##5393
		..turnin Supplies for Nethergarde##1395
	step //155
		goto 65.5,24.3
		.talk Alexandra Constantine##8609
		..fpath Nethergarde Keep
	step //156
		'Fly to Booty Bay|goto Stranglethorn Vale,27.7,74.6,6|noway|c
	step //157
		goto Stranglethorn Vale,26.9,77.2
		.talk Krazek##773
		..accept Tran'rek##2864
	step //158
		goto 27.1,77.2
		.talk Crank Fizzlebub##2498
		..accept Zanzil's Secret##621
	step //159
		goto 27.1,77.5
		.talk Whiskey Slim##2491
		..accept Whiskey Slim's Lost Grog##580
	step //160
		home Booty Bay
	step //161
		goto 26.8,76.4
		.talk Privateer Bloads##2494
		..accept Akiris by the Bundle (1)##617
	step //162
		goto 27.8,77.1
		.talk "Sea Wolf" MacKinley##2501
		..accept Stoley's Debt##2872
	step //163
		goto 28.6,75.9
		.talk Dizzy One-Eye##2493
		..accept Keep An Eye Out##576
	step //164
		goto 32.8,76.2
		.kill 10 Bloodsail Swashbuckler|q 604/1
		.' Kill Bloodsail pirates along the beach around this area
		.get Dizzy's Eye|q 576/1
		.get 15 Snuff|q 587/1
	step //165
		ding 44
	step //166
		goto 29.6,80.9
		.' Click the Bloodsail Orders|tip They are scrolls laying on a box and in the tent here.
		.get Bloodsail Orders|q 604/3
		.' Click the Bloodsail Charts|tip They are scrolls laying on a box and in the tent here.
		.get Bloodsail Charts|q 604/2
		.' They can also spawn in the camp to the southwest at 27.0,82.8|goto 27.0,82.8|n
	step //167
		'Go north to Booty Bay to 26.9,77.3|goto 26.9,77.3
		.talk Deeg##2488
		..turnin Up to Snuff##587
	step //168
		goto 27.2,77
		.talk Fleet Master Seahorn##2487
		..turnin The Bloodsail Buccaneers (4)##604
		..accept The Bloodsail Buccaneers (5)##608
	step //169
		goto 28.6,75.9
		.talk Dizzy One-Eye##2493
		..turnin Keep An Eye Out##576
	step //170
		goto 24.7,63.7
		.kill Naga Explorers|n
		.get 10 Akiris Reed|q 617/1
		.' More can be found at 26.1,61.9
	step //171
		goto 39.2,57.1
		.kill Zanzil mobs|n
		.get 12 Zanzil's Mixture|q 621/1
	step //172
		goto 40,58.2
		.from Chucky "Ten Thumbs"##2537
		.get Chucky's Huge Ring|q 609/3
	step //173
		goto 34.9,51.9
		.from Jon-Jon the Crow##2536
		.get Jon-Jon's Golden Spyglass|q 609/2
	step //174
		goto 35.1,51.1
		.from Maury "Club Foot" Wilkins##2535
		.get Maury's Clubbed Foot|q 609/1
	step //175
		goto 32.1,43.4
		.from Tethis##730
		.get Talon of Tethis|q 197/1
	step //176
		'Hearth to Booty Bay|goto Stranglethorn Vale,27.7,74.6,6|use Hearthstone##6948|noway|c
	step //177
		goto 27.1,77.2
		.talk Crank Fizzlebub##2498
		..turnin Zanzil's Secret##621
	step //178
		'Fly to the Rebel Camp|goto Stranglethorn Vale,38.2,4.1,0.5|noway|c
	step //179
		goto 35.8,10.7
		.talk Hemet Nesingwary Jr.##715
		..turnin Raptor Mastery (4)##197
		..accept Big Game Hunter##208
	step //180
		goto 38.2,4|n
		.talk Nizzle##24366
		..'Fly to Booty Bay|goto Stranglethorn Vale,27.7,74.6,6|noway|c
	step //181
		goto 27.8,77.1
		.talk "Sea Wolf" MacKinley##2501
		..turnin Voodoo Dues##609
	step //182
		goto 26.8,76.4
		.talk Privateer Bloads##2494
		..turnin Akiris by the Bundle (1)##617
		..accept Akiris by the Bundle (2)##623
	step //183
		'Ride the boat to Ratchet|goto The Barrens|noway|c
	step //184
		'Fly to Theramore|goto Dustwallow Marsh,67.5,50.3,9|noway|c
	step //185
		goto Dustwallow Marsh,67.7,51.7
		.talk Privateer Groy##2616
		..turnin Akiris by the Bundle (2)##623
	step //186
		'Fly to Gadgetzan|goto Tanaris,51.0,29.3,0.5|noway|c
	step //187
		goto Tanaris,52.5,28.5
		.talk Chief Engineer Bilgewhizzle##7407
		..accept Wastewander Justice##1690
		.talk Spigot Operator Luglunket##7408
		..accept Water Pouch Bounty##1707
	step //188
		home Gadgetzan
	step //189
		goto 51.8,27
		.' Click the Wanted Poster|tip Right in front of the huge cage door.
		..accept WANTED: Andre Firebeard##2875
		..accept WANTED: Caliph Scorpidsting##2781
	step //190
		goto 51.6,26.8
		.talk Tran'rek##7876
		..turnin Tran'rek##2864
	step //191
		'Go north to Thousand Needles|goto Thousand Needles|noway|c
	step //192
		goto Thousand Needles,78.1,77.1
		.talk Fizzle Brassbolts##4454
		..turnin News for Fizzle##1137
	step //193
		goto 80.2,75.9
		.talk Pozzik##4630
		..accept Keeping Pace##1190
	step //194
		goto 79.8,77
		.talk Zamek##4709
		.' He will create a diversion to distract Rizzle Brassbolts
		.' After you talk to him, skip to the next step of the guide
	step //195
		goto 77.2,77.4
		.' Click Rizzle's Unguarded Plans|tip Rizzle Brassbolts will run out of the house.  The plans look like a scroll laying on the ground inside a small house.
		..turnin Keeping Pace##1190
		..accept Rizzle's Schematics##1194
	step //196
		goto 80.2,75.9
		.talk Pozzik##4630
		..turnin Rizzle's Schematics##1194
	step //197
		'Go south to Tanaris|goto Tanaris|noway|c
	step //198
		goto 59.8,24.7
		.kill 10 Wastewander Bandit|q 1690/1
		.kill 10 Wastewander Thief|q 1690/2
		.kill Wastewander mobs|n
		.get 5 Wastewander Water Pouch|q 1707/1
		.' You can find more Wastewander Bandits and Thieves at 62.8,29.4|n
	step //199
		goto 67.1,23.9
		.talk Stoley##7881
		..turnin Stoley's Debt##2872
		..accept Stoley's Shipment##2873
		.talk Security Chief Bilgewhizzle##7882
		..accept Southsea Shakedown##8366
	step //200
		goto 66.6,22.3
		.talk Haughty Modiste##15165
		..accept Pirate Hats Ahoy!##8365
	step //201
		goto 67,22.4
		.talk Yeh'kinya##8579
		..accept Screecher Spirits##3520
	step //202
		goto 64.7,35.3
		.from Caliph Scorpidsting##7847
		.get Caliph Scorpidsting's Head|q 2781/1
	step //203
		goto 70.4,42.7
		.kill 10 Southsea Pirate|q 8366/1
		.kill 10 Southsea Freebooter|q 8366/2
		.kill Southsea Pirates|n
		.get 20 Southsea Pirate Hat|q 8365/1
	step //204
		goto 72.2,46.8
		.' Click the Stolen Cargo
		.get Stoley's Shipment|q 2873/1
	step //205
		goto 73.4,47.1
		.from Andre Firebeard##7883
		.get Firebeard's Head|q 2875/1
	step //206
		goto 74.3,46.4
		.kill 10 Southsea Dock Worker|q 8366/3
		.kill 10 Southsea Swashbuckler|q 8366/4
	step //207
		ding 45
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Levels (45-50)",[[
	author support@zygorguides.com
	next Zygor's Alliance Leveling Guides\\Levels (50-55)
	startlevel 45
	step //1
		'Hearth to Gadgetzan|goto Tanaris,51.7,27.8,6|use Hearthstone##6948|noway|c
	step //2
		goto 52.5,28.5
		.talk Chief Engineer Bilgewhizzle##7407
		..turnin Wastewander Justice##1690
		..accept More Wastewander Justice##1691
		..turnin WANTED: Caliph Scorpidsting##2781
		.talk Spigot Operator Luglunket##7408
		..turnin Water Pouch Bounty##1707
	step //3
		goto 64.3,38.2
		.kill 8 Wastewander Rogue|q 1691/1
		.kill 6 Wastewander Assassin|q 1691/2
		.kill 10 Wastewander Shadow Mage|q 1691/3
	step //4
		goto 67.1,23.9
		.talk Stoley##7881
		..turnin Stoley's Shipment##2873
		..accept Deliver to MacKinley##2874
		.talk Security Chief Bilgewhizzle##7882
		..turnin Southsea Shakedown##8366
		..turnin WANTED: Andre Firebeard##2875
	step //5
		goto 66.6,22.3
		.talk Haughty Modiste##15165
		..turnin Pirate Hats Ahoy!##8365
	step //6
		'Hearth to Gadgetzan|goto Tanaris,51.7,27.8,6|use Hearthstone##6948|noway|c
	step //7
		goto 52.5,28.5
		.talk Chief Engineer Bilgewhizzle##7407
		..turnin More Wastewander Justice##1691
	step //8
		goto 52.4,26.9
		.talk Curgle Cranklehop##7763
		..accept Handle With Care##3022
	step //9
		'Fly to Feathermoon Stronghold|goto Feralas,30.3,43.3,0.5|noway|c
	step //10
		goto Feralas,30.6,42.7
		.talk Pratt McGrubben##7852
		..accept The Mark of Quality##2821
	step //11
		home Feathermoon Stronghold
	step //12
		goto 30.3,46.2
		.talk Shandris Feathermoon##3936
		..accept The Ruins of Solarsal##2866
		.talk Latronicus Moonspear##7877
		..accept The Missing Courier (1)##4124
	step //13
		goto 31.8,45.6
		.talk Troyas Moonbreeze##7764
		..accept In Search of Knowledge##2939
		.talk Angelas Moonbreeze##7900
		..accept The High Wilderness##2982
	step //14
		goto 31.9,45.1
		.talk Ginro Hearthkindle##7880
		..turnin The Missing Courier (1)##4124
		..accept The Missing Courier (2)##4125
	step //15
		goto 26.3,52.3
		.' Click the Solarsal Gazebo|tip It's a big dark colored gazebo.
		..turnin The Ruins of Solarsal##2866
		..accept Return to Feathermoon Stronghold##2867
	step //16
		goto 30.3,46.2
		.talk Shandris Feathermoon##3936
		..turnin Return to Feathermoon Stronghold##2867
		..accept Against the Hatecrest (1)##3130
		.talk Latronicus Moonspear##7877
		..turnin Against the Hatecrest (1)##3130
		..accept Against the Hatecrest (2)##2869
	step //17
		goto 27.2,52.2
		.kill Hatecrest nagas|n
		.get 10 Hatecrest Naga Scale|q 2869/1
	step //18
		goto 30.3,46.2
		.talk Latronicus Moonspear##7877
		..turnin Against the Hatecrest (2)##2869
		..accept Against Lord Shalzaru##2870
	step //19
		goto 25.5,64.5|n
		.' The path down to 'Against Lord Shalzaru' starts here
		.' Follow the path into the cave|goto Feralas,25.5,64.5,0.5|noway|c
	step //20
		goto 28.5,70.7
		.from Lord Shalzaru##8136
		.get Mysterious Relic|q 2870/1
	step //21
		'Go outside the cave to 30.3,46.2|goto 30.3,46.2
		.talk Latronicus Moonspear##7877
		..turnin Against Lord Shalzaru##2870
		..accept Delivering the Relic##2871
	step //22
		goto 30.1,45.1
		.talk Vestia Moonspear##7878
		..turnin Delivering the Relic##2871
	step //23
		goto 31.0,39.9|n
		'Ride the boat to the main continent of Feralas|goto Feralas,43.5,42.7,1|noway|c
	step //24
		goto 46.6,48.2
		.kill 3 Rogue Vale Screechers|n
		.' Use Yeh'kinya's Bramble on their corpses|use Yeh'kinya's Bramble##10699
		.' Talk to their spirits that appear to collect their spirits
		.' Collect 3 Screecher Spirits|goal 3 Screecher Spirits Collected|q 3520/1
	step //25
		goto 45.5,65
		.' Click the Wrecked Row Boat|tip It's underwater and hard to see.
		..turnin The Missing Courier (2)##4125
		..accept Boat Wreckage##4127
	step //26
		goto 43.5,42.7|n
		.' Ride the boat to Feathermoon Stronghold|goto Feralas,31.0,39.9,0.5|noway|c
	step //27
		goto 31.9,45.1
		.talk Ginro Hearthkindle##7880
		..turnin Boat Wreckage##4127
		..accept The Knife Revealed##4129
	step //28
		goto 32.4,43.8
		.talk Quintis Jonespyre##7879
		..turnin The Knife Revealed##4129
		..accept Psychometric Reading##4130
	step //29
		goto 31.9,45.1
		.talk Ginro Hearthkindle##7880
		..turnin Psychometric Reading##4130
		..accept The Woodpaw Gnolls##4131
	step //30
		goto 31.0,39.9|n
		'Ride the boat to the main continent of Feralas|goto Feralas,43.5,42.7,1|noway|c
	step //31
		goto 55.5,54.8
		.kill yetis|n
		.get 10 Thick Yeti Hide|q 2821/1
	step //32
		ding 46
	step //33
		goto 57.9,66.9
		.kill 8 Gordunni Shaman|q 2982/2
	step //34
		goto 60.4,58.8
		.kill 8 Gordunni Warlock|q 2982/1
		.kill 8 Gordunni Brute|q 2982/3
	step //35
		goto 65.6,46.9|n
		.' The path up to the Moonweavers starts here hidden behind the tree|goto Feralas,65.6,46.9,0.3|noway|c
	step //36
		goto 65.9,45.6
		.talk Kindal Moonweaver##7956
		..accept Freedom for All Creatures##2969
	step //37
		goto 66.7,46.8
		.' Click the Cage Door on the huge cage
		.' Free the Sprite Darters|tip The Grimtotems will attack the Sprite Darters, you have try to protect them.
		.' Save at least 6 Sprite Darters from capture|goal Save at least 6 Sprite Darters from capture|q 2969/1
	step //38
		goto 65.9,45.6
		.talk Kindal Moonweaver##7956
		..turnin Freedom for All Creatures##2969
		.talk Jer'kai Moonweaver##7957
		..accept Doling Justice (1)##2970
	step //39
		goto 67.5,46.4
		.kill 12 Grimtotem Naturalist|q 2970/1
		.kill 10 Grimtotem Raider|q 2970/2
		.kill 6 Grimtotem Shaman|q 2970/3
	step //40
		goto 65.9,45.6
		.talk Jer'kai Moonweaver##7957
		..turnin Doling Justice (1)##2970
		..accept Doling Justice (2)##2972
	step //41
		goto 73.3,56.3
		.' Click the Large Leather Backpacks|tip They are 2 black bags hanging together at the bas of the huge tree.
		..turnin The Woodpaw Gnolls##4131
		..accept The Writhing Deep##4135
		.' Click the Undelivered Parcel|use Undelivered Parcel##11463
		..accept Thalanaar Delivery##4281
	step //42
		goto 73.5,63.1|n
		Follow the path all the way to the bottom
		.' Enter the tunnel heading southwest
		.' Turn right at the fork into the small circular room
		.' Click the Zukk'ash Pod
		..turnin The Writhing Deep##4135
		..accept Freed from the Hive##4265
		.' Stay around until Raschal talks and disappears
		.' Free Raschal|goal Free Raschal.|q 4265/1
	step //43
		'Hearth to Feathermoon Stronghold|goto Feralas,31.0,44.0,5|use Hearthstone##6948|noway|c
	step //44
		goto 30.6,42.7
		.talk Pratt McGrubben##7852
		..turnin The Mark of Quality##2821
		..accept Improved Quality##7733
	step //45
		goto 31.8,45.6
		.talk Angelas Moonbreeze##7900
		..turnin The High Wilderness##2982
	step //46
		goto 31.9,45.1
		.talk Ginro Hearthkindle##7880
		..turnin Freed from the Hive##4265
		..accept A Hero's Welcome##4266
	step //47
		goto 30.3,46.2
		.talk Shandris Feathermoon##3936
		..turnin A Hero's Welcome##4266
		..accept Rise of the Silithid##4267
	step //48
		'Fly to Thalanaar|goto Feralas,89.5,45.8,0.3|noway|c|tip On the border of Thousand Needles and Feralas, if you didn't remember.
	step //49
		goto 89.6,46.6
		.talk Falfindel Waywarder##4048
		..turnin Thalanaar Delivery##4281
	step //50
		'Fly to Rut'theran Village|goto Teldrassil,56.3,92.4,6|noway|c
	step //51
		goto Teldrassil,55.5,92
		.talk Erelas Ambersky##7916
		..turnin Handle With Care##3022
		..accept Favored of Elune?##3661
	step //52
		goto 55.5,92
		.talk Daryn Lightwind##7907
		..turnin In Search of Knowledge##2939
	step //53
		goto 55.2,91.5
		.' Click the green book on the floor, next to a bookshelf, named Feralas: A History
		..accept Feralas: A History##2940
	step //54
		goto 55.4,92.2
		.talk Daryn Lightwind##7907
		..turnin Feralas: A History##2940
		..accept The Borrower##2941
	step //55
		'Go to Darnassus|goto Darnassus|noway|c
	step //56
		goto Darnassus,41.8,85.6
		.talk Gracina Spiritmight##7740
		..turnin Rise of the Silithid##4267
	step //57
		goto 38.3,80.9
		.talk Tyrande Whisperwind##7999
		..turnin Doling Justice (2)##2972
	step //58
		'Go to Rut'theran Village|goto Teldrassil,56.3,92.4,6|noway|c
	step //59
		'Fly to Gadgetzan|goto Tanaris,51.0,29.3,0.5|noway|c
	step //60
		goto Tanaris,52.4,26.9
		.talk Curgle Cranklehop##7763
		..turnin The Borrower##2941
		..accept The Super Snapper FX##2944
	step //61
		'Fly to Ratchet|goto The Barrens,63.0,38.1,2|noway|c
	step //62
		'Ride the boat to Booty Bay|goto Stranglethorn Vale|noway|c
	step //63
		goto Stranglethorn Vale,27.8,77.1
		.talk "Sea Wolf" MacKinley##2501
		..turnin Deliver to MacKinley##2874
	step //64
		'Fly to Stormwind|goto Stormwind City|noway|c
	step //65
		'Buy 2 Elixirs of Fortitude from the Auction House
		.buy 2 Elixir of Fortitude|q 3842/1
	step //66
		'Fly to Southshore|goto Hillsbrad Foothills,50.0,56.9,8|noway|c
	step //67
		goto Hillsbrad Foothills,84.9,31.8|n
		.' The path to the Hinterlands starts here|goto Hillsbrad Foothills,84.9,31.8,1|noway|c
	step //68
		'Go northeast to the Hinterlands|goto The Hinterlands|noway|c
	step //69
		goto The Hinterlands,11.1,46.2
		.talk Guthrum Thunderfist##8018
		..fpath Aerie Peak
	step //70
		goto 9.8,44.5
		.talk Gryphon Master Talonaxe##5636
		..accept Witherbark Cages##2988
	step //71
		goto 14.8,44.6
		.talk Fraggar Thundermantle##7884
		..accept Skulk Rock Clean-up##2877
		..accept Troll Necklace Bounty##2880
	step //72
		goto 13.8,41.7
		.talk Innkeeper Thulfram##7744
		..home Aerie Peak
	step //73
		goto 15.1,47.2
		.talk Ambassador Rualeth##17223
		..accept Featherbeard's Endorsement##9469
		..accept A Gesture of Goodwill##9470
		..accept Preying on the Predators##9471
	step //74
		goto 13.4,55.2
		.' Click Featherbeard's Journal|tip Inside the little house, downstairs, laying right in front of the fireplace.
		..turnin Featherbeard's Endorsement##9469
		..accept In Pursuit of Featherbeard##9476
	step //75
		goto 20.5,52.7
		.kill 10 Mangy Silvermane|q 9471/1
	step //76
		goto 22.9,54.8
		.' Click Wildkin Feathers|tip They look like big brown and white feathers on the ground here and around Quel'Danil Lodge.
		.get 15 Wildkin Feather|q 3661/1
	step //77
		goto 24.8,55.4
		.kill trolls|n
		.get 5 Troll Tribal Necklace|q 2880/1
	step //78
		goto 23.2,58.8
		.' Click the First Witherbark Cage to check it|goal Check First Cage|q 2988/1
		.' Click the Second Witherbark Cage to check it|goal Check Second Cage|q 2988/2
	step //79
		goto 24.6,65.6
		.kill Tcha'kaz|q 9470/2|tip Inside the cave.
		.kill Witch Doctor Mai'jin|q 9470/1|tip Inside the cave.
	step //80
		goto 27.1,66.5
		.kill 5 Silvermane Wolf|q 9471/2
	step //81
		goto 32.1,57.3
		.' Click the Third Witherbark Cage to check it|goal Check Third Cage|q 2988/3
	step //82
		goto 48.2,41.7
		.kill 10 Green Sludge|q 2877/1
		.kill 10 Jade Ooze|q 2877/2
	step //83
		ding 47
	step //84
		goto 71.5,65.1|n
		.' The path down to Gammerita starts here|goto The Hinterlands,71.5,65.1,0.3|noway|c
	step //85
		goto 76.9,64.9
		.' Use your Super Snapper FX on Gammerita to get a snapshot of her|q 2944/1|use Super Snapper FX##9328|tip You do not need to fight her, just run away.  I found her here, but she wanders around on this beach, so you may need to search this beach for a little bit.
	step //86
		goto 78.8,63.4
		.' Click the little blue bottles of Pupellyverbos Port
		.get 12 Pupellyverbos Port|q 580/1
	step //87
		'Hearth to Aerie Peak|goto The Hinterlands,13.9,42.1,0.5|use Hearthstone##6948|noway|c
	step //88
		goto 14.8,44.6
		.talk Fraggar Thundermantle##7884
		..turnin Skulk Rock Clean-up##2877
		..turnin Troll Necklace Bounty##2880
	step //89
		goto 15.1,47.2
		.talk Ambassador Rualeth##17223
		..turnin A Gesture of Goodwill##9470
		..turnin Preying on the Predators##9471
	step //90
		goto 9.8,44.5
		.talk Gryphon Master Talonaxe##5636
		..turnin Witherbark Cages##2988
		..accept The Altar of Zul##2989
	step //91
		goto 37.2,71.5
		.' Click Featherbeard's Remains at the top of the temple, up the stairs
		..turnin In Pursuit of Featherbeard##9476
		..accept Reclaiming the Eggs##9475
	step //92
		goto 34.1,72.9
		.' Click the Gryphon Eggs|tip They look like medium sized white eggs with blue spots on them.
		.get 5 Gryphon Egg|q 9475/1
	step //93
		goto 48.3,67.6
		.' Search the Altar of Zul|q 2989/1|tip Run up the stairs of the temple towards this spot to Search the Altar of Zul.  There are a bunch of mobs at the top, so run around at the top of the temple and once you complete the quest, run away as fast as you can.
	step //94
		goto 15.1,47.2
		.talk Ambassador Rualeth##17223
		..turnin Reclaiming the Eggs##9475
	step //95
		goto 9.8,44.5
		.talk Gryphon Master Talonaxe##5636
		..turnin The Altar of Zul##2989
		..accept Thadius Grimshade##2990
	step //96
		'Fly to Stormwind|goto Stormwind City|noway|c
	step //97
		goto Stormwind City,22.6,56.1|n
		.'Ride the boat to Auberdine|goto Darkshore,32.4,43.7,1|noway|c
	step //98
		'Fly to Rut'theran Village|goto Teldrassil,56.3,92.4,6|noway|c
	step //99
		goto Teldrassil,55.5,92
		.talk Erelas Ambersky##7916
		..turnin Favored of Elune?##3661
	step //100
		goto 55.4,92.2
		.talk Daryn Lightwind##7907
		..turnin The Super Snapper FX##2944
		..accept Return to Troyas##2943
	step //101
		'Fly to Feathermoon Stronghold|goto Feralas,30.3,43.3,0.5|noway|c
	step //102
		home Feathermoon Stronghold
	step //103
		goto 31.8,45.6
		.talk Troyas Moonbreeze##7764
		..turnin Return to Troyas##2943
		..accept The Stave of Equinex##2879
		.talk Angelas Moonbreeze##7900
		..accept The Sunken Temple##3445
	step //104
		goto 31.0,39.9|n
		'Ride the boat to the main continent of Feralas|goto Feralas,43.5,42.7,1|noway|c
	step //105
		goto 44.8,43.4
		.talk Zorbin Fandazzle##14637
		..accept Zapped Giants##7003
		..accept Fuel for the Zapping##7721
	step //106
		goto 44.8,47.3
		.' Use Zorbin's Ultra-Shrinker on giants|use Zorbin's Ultra-Shrinker##18904
		.kill the shrunken giants|n
		.get 15 Miniaturization Residue|q 7003/1
		.kill water elementals|n
		.get 10 Water Elemental Core|q 7721/1
	step //107
		goto 44.8,43.4
		.talk Zorbin Fandazzle##14637
		..turnin Zapped Giants##7003
		..turnin Fuel for the Zapping##7721
	step //108
		goto 51.5,32.4|n
		.' The path up to the yeti cave starts here|goto Feralas,51.5,32.4,0.3|noway|c
	step //109
		goto 52.2,31.6
		.kill Rage Scar Yetis|n
		.get 10 Rage Scar Yeti Hide|q 7733/1
	step //110
		goto 42.4,22
		.talk Rockbiter##7765
		..accept The Giant Guardian##2844
	step //111
		goto 38.5,15.8
		.' Click the Flame of Byltan|tip It's a purple flame in the dark gazeebo.
		.collect 1 Byltan Essence##9258|q 2879/1
	step //112
		goto 40.3,11|n
		.' The path up to the Flame of Samha starts here
		.' Jump on the broken pillars to get up to the Flame of Samha|goto Feralas,40.3,11,0.1|noway|c
	step //113
		goto 40.5,12.7
		.' Click the Flame of Samha|tip On top of the white building.
		.collect 1 Samha Essence##9257|q 2879/1
	step //114
		goto 39.9,9.4
		.' Click the Flame of Imbel|tip In the middle of 3 rocks.
		.collect 1 Imbel Essence##9256|q 2879/1
	step //115
		goto 37.7,12.2
		.' Click the Flame of Lahassa|tip It's a purple flame in a dark gazeebo.
		.collect 1 Lahassa Essence##9255|q 2879/1
	step //116
		goto 38.8,13.2
		.' Use Troyas' Stave next to the Equinex Monolith|use Troyas' Stave##9263|tip On a white platform, looks like a Japanese building.
		.' Click the Equinex Monolith
		..turnin The Stave of Equinex##2879
		..accept The Morrow Stone##2942
	step //117
		ding 48
	step //118
		goto 38.2,10.3
		.talk Shay Leafrunner##7774
		..turnin The Giant Guardian##2844
		..accept Wandering Shay##2845
		.' Click the small chest next to Shay Leafrunner
		.collect 1 Shay's Bell##9189|q 2845/2
		.' Take Shay Leafrunner to Rockbiter's camp at 42.4,22|goal Take Shay Leafrunner to Rockbiter's camp|q 2845/1
		..'When she runs off, use Shay's Bell to call her back|use Shay's Bell##9189
	step //119
		goto 42.4,22
		.talk Rockbiter##7765
		..turnin Wandering Shay##2845
	step //120
		goto 65.9,45.6
		.talk Kindal Moonweaver##7956
		..accept An Orphan Looking For a Home##3841
	step //121
		'Hearth to Feathermoon Stronghold|goto Feralas,31.0,44.0,5|use Hearthstone##6948|noway|c
	step //122
		goto 30.6,42.7
		.talk Pratt McGrubben##7852
		..turnin Improved Quality##7733
	step //123
		goto 31.8,45.6
		.talk Troyas Moonbreeze##7764
		..turnin The Morrow Stone##2942
	step //124
		'Fly to Gadgetzan|goto Tanaris,51.0,29.3,0.1|noway|c
	step //125
		goto Tanaris,51.8,28.7
		.talk Marin Noggenfogger##7564
		..accept The Thirsty Goblin##2605
	step //126
		home Gadgetzan
	step //127
		goto 52.8,27.4
		.talk Andi Lynn##11758
		..accept The Dunemaul Compound##5863
	step //128
		goto 51.6,26.8
		.talk Tran'rek##7876
		..accept Thistleshrub Valley##3362
	step //129
		goto 50.2,27.5
		.talk Senior Surveyor Fizzledowser##7724
		..accept Gadgetzan Water Survey##992
	step //130
		goto 38.6,29.4
		.' Use your Untapped Dowsing Widget near the water|use Untapped Dowsing Widget##8584|tip Run away from the insects that spawn.
		.get Tapped Dowsing Widget|q 992/1
	step //131
		goto 50.2,27.5
		.talk Senior Surveyor Fizzledowser##7724
		..turnin Gadgetzan Water Survey##992
		..accept Noxious Lair Investigation##82
	step //132
		goto 52.7,45.9
		.talk Marvon Rivetseeker##7771
		..turnin The Sunken Temple##3445
		..accept The Stone Circle##3444
		..accept Gahz'ridian##3161
	step //133
		goto 40.8,55
		.kill 10 Dunemaul Brute|q 5863/1
		.kill 10 Dunemaul Enforcer|q 5863/2
	step //134
		goto 41.5,57.8
		.kill Gor'marok the Ravager|q 5863/3|tip Standing inside the cave.
	step //135
		goto 34.8,51
		.kill Centipaar insects|n
		.get 5 Centipaar Insect Parts|q 82/1
	step //136
		goto 28.5,65.3
		.kill 8 Gnarled Thistleshrub|q 3362/1
		.kill 8 Thistleshrub Rootshaper|q 3362/2
		.kill Thistleshrub Dew Collectors|n
		.get Laden Dew Gland|q 2605/1
	step //137
		goto 38.5,72.6
		.' Click Gahz'ridian Ornaments|tip They look like white bumps on the ground.
		.get 30 Gahz'ridian Ornament|q 3161/1
	step //138
		goto 52.7,45.9
		.talk Marvon Rivetseeker##7771
		..turnin Gahz'ridian##3161
	step //139
		goto 67,24
		.talk Yorba Screwspigot##9706
		..accept Yuka Screwspigot##4324
	step //140
		goto 67,22.4
		.talk Yeh'kinya##8579
		..turnin Screecher Spirits##3520
	step //141
		'Hearth to Gadgetzan|goto Tanaris,51.7,27.8,6|use Hearthstone##6948|noway|c
	step //142
		goto 51.8,28.7
		.talk Marin Noggenfogger##7564
		..turnin The Thirsty Goblin##2605
		..accept In Good Taste##2606
	step //143
		goto 52.8,27.4
		.talk Andi Lynn##11758
		..turnin The Dunemaul Compound##5863
	step //144
		goto 51.6,26.8
		.talk Tran'rek##7876
		..turnin Thistleshrub Valley##3362
	step //145
		goto 51.1,26.9
		.talk Sprinkle##7583
		..turnin In Good Taste##2606
		..accept Sprinkle's Secret Ingredient##2641
	step //146
		goto 50.9,27
		.talk Alchemist Pestlezugg##5594
		..turnin Noxious Lair Investigation##82
	step //147
		goto 50.2,27.5
		.talk Senior Surveyor Fizzledowser##7724
		..accept The Scrimshank Redemption##10
	step //148
		goto 56.0,70.2|n
		.' The path down to 'The Scrimshank Redemption' starts here|goto Tanaris,56.0,70.2,0.3|noway|c
	step //149
		goto 55.8,68.9|n
		.' Enter this tunnel heading north|goto Tanaris,55.8,68.9,0.3|noway|c
	step //150
		goto 56,71.2
		.' Take a right at the fork in the path into a big round room
		.' Enter the tunnel on the other side of the room
		.' Take a right at the fork into a squarish big room
		.' Click Scrimshank's Surveying Gear|tip It's a small box with some levers on it in the corner of the room.
		.get Scrimshank's Surveying Gear|q 10/1
	step //151
		'Go outside to 50.2,27.5|goto 50.2,27.5
		.talk Senior Surveyor Fizzledowser##7724
		..turnin The Scrimshank Redemption##10
		..accept Insect Part Analysis (1)##110
	step //152
		goto 50.9,27
		.talk Alchemist Pestlezugg##5594
		..turnin Insect Part Analysis (1)##110
		..accept Insect Part Analysis (2)##113
	step //153
		goto 50.2,27.5
		.talk Senior Surveyor Fizzledowser##7724
		..turnin Insect Part Analysis (2)##113
		..accept Rise of the Silithid##162
	step //154
		ding 49
	step //155
		'Make sure you have your 2 Elixirs of Fortitude in your bags|collect 2 Elixir of Fortitude|q 3842/1|future
	step //156
		'Go north to Thousand Needles|goto Thousand Needles|noway|c
	step //157
		goto Thousand Needles,78.3,74.7
		.talk Quentin##9238
		..turnin An Orphan Looking For a Home##3841
		..accept A Short Incubation##3842
		..turnin A Short Incubation##3842
		..accept The Newest Member of the Family##3843
	step //158
		'Go south to Tanaris|goto Tanaris|noway|c
	step //159
		'Fly to Theramore|goto Dustwallow Marsh,67.5,50.3,9|noway|c
	step //160
		'Ride the boat to Menethil Harbor|goto Wetlands,4.6,56.8,9|noway|c
	step //161
		'Fly to Ironforge|goto Ironforge|noway|c
	step //162
		goto Ironforge,77.5,11.8
		.talk Historian Karnik##2916
		..accept Passing the Burden##3448
	step //163
		goto 31,4.8
		.talk Tymor##8507
		..turnin Passing the Burden##3448
		..accept Arcane Runes##3449
		..accept An Easy Pickup##3450
	step //164
		goto 70.9,94.6
		.talk Xiggs Fuselighter##8517
		..turnin An Easy Pickup##3450
		..accept Signal for Pickup##3451
		..turnin Signal for Pickup##3451
	step //165
		'Fly to Aerie Peak|goto The Hinterlands,13.4,46.5,4|noway|c
	step //166
		goto The Hinterlands,14.2,43.6
		.talk Agnar Beastamer##9660
		..turnin The Newest Member of the Family##3843
		..accept Food for Baby##4297
	step //167
		goto 40.7,59.1
		.' Click a Violet Tragan|tip They are brown and white mushrooms underwater.
		.get Violet Tragan|q 2641/1
	step //168
		goto 70,58
		.kill Silvermane Stalkers|n
		.get 5 Silvermane Stalker Flank|q 4297/1
	step //169
		goto 14.2,43.6
		.talk Agnar Beastamer##9660
		..turnin Food for Baby##4297
		..accept Becoming a Parent##4298
		..turnin Becoming a Parent##4298
	step //170
		'Fly to Booty Bay|goto Stranglethorn Vale,27.7,74.6,6|noway|c
	step //171
		home Booty Bay
	step //172
		goto 27.1,77.5
		.talk Whiskey Slim##2491
		..turnin Whiskey Slim's Lost Grog##580
	step //173
		goto 27.6,76.7
		.talk Fin Fizracket##2486
		..accept Stranglethorn Fever##348
	step //174
		goto 35.1,72.9
		.' Click the Half-Buried Bottles|tip They are little blue bottles that can spawn anywhere along this beach close to the water.
		.get the Carefully Folded Note|n
		.' Click the Carefully Folded Note|use Carefully Folded Note##4098
		..accept Message in a Bottle (1)##594
	step //175
		goto 31.2,68
		.kill gorillas|n
		.collect 1 Gorilla Fang##2799|q 348
	step //176
		goto 35.3,60.4
		.talk Witch Doctor Unbagwa##1449
		.' Give him 1 Gorilla Fang
		.' 3 gorillas will attack you one at a time
		..'Mokk the Savage is the final gorilla
		.from Mokk the Savage##1514
		.get Heart of Mokk|q 348/1
	step //177
		goto 38.2,36.4
		.from King Bangalash##731
		.get Head of Bangalash|q 208/1
	step //178
		goto 35.8,10.7
		.talk Hemet Nesingwary Jr.##715
		..turnin Big Game Hunter##208
	step //179
		goto 38.2,4|n
		.talk Nizzle##24366
		..'Fly to Booty Bay|goto Stranglethorn Vale,27.7,74.6,6|noway|c
	step //180
		goto 27.6,76.7
		.talk Fin Fizracket##2486
		..turnin Stranglethorn Fever##348
	step //181
		goto 38.5,80.6
		.talk Princess Poobah##2634
		..turnin Message in a Bottle (1)##594
		..accept Message in a Bottle (2)##630
	step //182
		goto 41,83
		.from King Mukla##1559
		.get Shackle Key|q 630/1
	step //183
		goto 38.5,80.6
		.talk Princess Poobah##2634
		..turnin Message in a Bottle (2)##630
	step //184
		'While doing the next 3 steps, look for Cortello's Riddle on the ships:
		.' Click Cortello's Riddle|tip It's a scroll.
		..accept Cortello's Riddle (1)##624|n
		.' Skip to the next step of the guide
	step //185
		goto 32.9,88.2
		.kill 1 Captain Stillwater|q 608/1|tip Standing on the middle deck of the ship.
	step //186
		goto 30.6,90.6
		.kill 1 Fleet Master Firallon|q 608/3|tip Standing on the middle deck of the ship.
	step //187
		goto 29.2,88.3
		.kill 1 Captain Keelhaul|q 608/2|tip Standing on the middle deck of the ship.
	step //188
		'Make sure you have accepted the Cortello's Riddle quest:
		.'Click Cortello's Riddle|use Cortello's Riddle##4056
		..accept Cortello's Riddle (1)##624
	step //189
		'Hearth to Booty Bay|goto Stranglethorn Vale,27.7,74.6,6|use Hearthstone##6948|noway|c
	step //190
		goto 27.2,77
		.talk Fleet Master Seahorn##2487
		..turnin The Bloodsail Buccaneers (5)##608
	step //191
		'Fly to Stormwind|goto Stormwind City|noway|c
	step //192
		'Buy a Mithril Casing from the Auction House|buy 1 Mithril Casing|q 4244/1
	step //193
		'Fly to Darkshire|goto Duskwood,74.7,46.9,7|noway|c
	step //194
		'Go east to Deadwind Pass|goto Deadwind Pass|noway|c
	step //195
		'Go east to the Swamp of Sorrows|goto Swamp of Sorrows|noway|c
	step //196
		goto Swamp of Sorrows,22.9,48.2
		.' Click the Soggy Scroll|tip It's a rolled up scroll laying in the water under the bridge. It's very easy to to miss, so search hard.
		.turnin Cortello's Riddle (1)##624
		.accept Cortello's Riddle (2)##625
	step //197
		'Go southeast to the Blasted Lands|goto Blasted Lands|noway|c
	step //198
		goto Blasted Lands,50.6,14.2
		.talk Bloodmage Drazial##7505
		..accept Snickerfang Jowls##2581
		..accept A Boar's Vitality##2583
		..accept The Decisive Striker##2585
		.talk Bloodmage Lynnore##7506
		..accept The Basilisk's Bite##2601
		..accept Vulture's Vigor##2603
	step //199
		.' At Grind Point 1: 49,18
		.' At Grind Point 2: 45,26
		.' At Grind Point 3: 46,34
		.' At Grind Point 4: 56,37
		.' At Grind Point 5: 56.3,30.5
		.' At Grind Point 6: 63,28
		'Follow the Grinding Circle killing boars, hyenas, vultures, basilisks, and scorpions until you:
		..collect 6 Blasted Boar Lung##8392
		..collect 5 Snickerfang Jowl##8391
		..collect 14 Vulture Gizzard##8396
		..collect 11 Basilisk Brain##8394
		..collect 6 Scorpok Pincer##8393
		'Skip this step if you have done the quests from the previous step already.
		//only if not (ZGV.completedQuests[2581] and ZGV.completedQuests[2583] and ZGV.completedQuests[2585] and ZGV.completedQuests[2601] and ZGV.completedQuests[2603]
	step //200
		goto 50.7,14.2
		.talk Bloodmage Lynnore##7506
		..turnin The Basilisk's Bite##2601
		..turnin Vulture's Vigor##2603
		.talk Bloodmage Drazial##7505
		..turnin Snickerfang Jowls##2581
		..turnin A Boar's Vitality##2583
		..turnin The Decisive Striker##2585
	step //201
		ding 50
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Levels (50-55)",[[
	author support@zygorguides.com
	next Zygor's Alliance Leveling Guides\\Levels (55-60)
	startlevel 50
	step //1
		goto Blasted Lands,67,19.4
		.talk Thadius Grimshade##8022
		..turnin Thadius Grimshade##2990
	step //2
		'Fly to Booty Bay|goto Stranglethorn Vale,27.7,74.6,6|noway|c
	step //3
		'Ride the boat to Ratchet|goto The Barrens|noway|c
	step //4
		goto The Barrens,62.5,38.5
		.' Click the little brown box outside the house on the ground|tip It's a small wooden chest to the right of the doorway to a small house.
		.get Stone Circle|q 3444/1
	step //5
		goto 62.4,38.7
		.talk Liv Rizzlefix##8496
		..accept Volcanic Activity##4502
	step //6
		'Fly to Gadgetzan|goto Tanaris,51.0,29.3,0.5|noway|c
	step //7
		goto Tanaris,51.1,26.9
		.talk Sprinkle##7583
		..turnin Sprinkle's Secret Ingredient##2641
		..accept Delivery for Marin##2661
	step //8
		goto 51.8,28.7
		.talk Marin Noggenfogger##7564
		..turnin Delivery for Marin##2661
		..accept Noggenfogger Elixir##2662
		..turnin Noggenfogger Elixir##2662
	step //9
		goto 52.7,45.9
		.talk Marvon Rivetseeker##7771
		..turnin The Stone Circle##3444
	step //10
		'Go north to Gadgetzan and fly to Theramore|goto Dustwallow Marsh,67.5,50.3,9|noway|c
	step //11
		'Ride the boat to Menethil Harbor|goto Wetlands,4.6,56.8,9|noway|c
	step //12
		'Fly to Ironforge|goto Ironforge|noway|c
	step //13
		'Buy 15 Silk Cloth from the Auction House|buy 15 Silk Cloth |q 4449/1
	step //14
		goto 18.2,51.5
		.talk Innkeeper Firebrew##5111
		..accept Assisting Arch Druid Staghelm##3790
	step //15
		home Ironforge
	step //16
		'Fly to Thelsamar|goto Loch Modan,33.9,50.8,0.5|noway|c
	step //17
		'Go southeast to the Badlands|goto Badlands|noway|c
	step //18
		goto Badlands,4.9,61.2|n
		.' The path over to Searing Gorge starts here|goto Badlands,4.9,61.2,0.3|noway|c
	step //19
		'Follow the path over to Searing Gorge|goto Searing Gorge|noway|c
	step //20
		goto Searing Gorge,31.7,33.4|n
		.' The path up to Thorium Point starts here|goto Searing Gorge,31.7,33.4,0.5|noway|c
	step //21
		goto 37.6,26.5
		.' Click the Wanted/Missing/Lost & Found Poster|tip Next to some boxes.
		..accept JOB OPPORTUNITY: Culling the Competition##7729
		..accept STOLEN: Smithing Tuyere and Lookout's Spyglass##7728
		..accept WANTED: Overseer Maltorius##7701
	step //22
		goto 38.6,27.8
		.talk Hansel Heavyhands##14627
		..accept Curse These Fat Fingers##7723
		..accept Fiery Menace!##7724
		..accept Incendosaurs? Whateverosaur is More Like It##7727
	step //23
		goto 38.8,28.5
		.talk Master Smith Burninate##14624
		..accept What the Flux?##7722
	step //24
		goto 37.9,30.9
		.talk Lanie Reed##2941
		..fpath Thorium Point
	step //25
		goto 39.1,39
		.talk Kalaran Windblade##8479
		..accept Divine Retribution##3441
		..'Listen to his story
		..turnin Divine Retribution##3441
		..accept The Flawless Flame##3442
	step //26
		goto 36.8,49.4
		.kill Dark Iron Steamsmiths|n
		.get Smithing Tuyere|q 7728/1
		.kill Dark Iron dwarves|n
		.get Grimesilt Outhouse Key|n
		.' Click the Grimesilt Outhouse Key|use Grimesilt Outhouse Key##11818
		..accept The Key to Freedom##4451
	step //27
		goto 32.5,49.2
		.kill 20 Heavy War Golem|q 7723/1
	step //28
		goto 33.1,51.8
		.kill Dark Iron Lookouts|n
		.get Lookout's Spyglass|q 7728/2
	step //29
		goto 32,62.2
		.kill 20 Greater Lava Spider|q 7724/1
	step //30
		goto 30.8,72.8
		.kill Magma Elementals|n
		.get 4 Golem Oil|q 3442/2
		.kill Inferno Elementals and Magma Elementals|n
		.get 4 Heart of Flame|q 3442/1
	step //31
		goto 65.2,76.3|n
		.' The path up to Margol the Rager starts here|goto Searing Gorge,65.2,76.3,0.3|noway|c
	step //32
		goto 70.7,73.3
		.from Margol the Rager##5833
		.get Margol's Horn|n
		.' Click Margol's Horn|use Margol's Horn##10000
		..accept The Horn of the Beast##3181
	step //33
		goto 65.5,62.3
		.' Click the Wooden Outhouse
		..turnin The Key to Freedom##4451
		..accept Caught!##4449
	step //34
		goto 63.3,59.7
		.kill 8 Dark Iron Geologist|q 4449/1
	step //35
		goto 65.5,62.3
		.' Click the Wooden Outhouse
		..turnin Caught!##4449
		..accept Ledger from Tanaris##4450
		.' Click the book he slides under the door
		.get Goodsteel Ledger|q 4450/1
	step //36
		goto 61.7,72
		.kill Glassweb Spiders|n
		.get 20 Solid Crystal Leg Shaft|q 4450/2
		.' You can find more Glassweb Spiders at 61.9,54.6|n
	step //37
		goto 63.9,61
		.talk Dorius Stonetender##8284
		..accept Suntara Stones (1)##3367
		.' Escort him until he gets murdered(it's part of the quest)
		.' He drops a note when he dies
		.' Click the Singed Letter
		..turnin Suntara Stones (1)##3367
		..accept Suntara Stones (2)##3368
	step //38
		goto 39,38.9
		.talk Kalaran Windblade##8479
		..turnin The Flawless Flame##3442
		..accept Forging the Shaft##3443
	step //39
		goto 42.4,47.1
		.kill Dark Iron dwarves|n
		.get 8 Thorium Plated Dagger|q 3443/1
	step //40
		goto 39,38.9
		.talk Kalaran Windblade##8479
		..turnin Forging the Shaft##3443
		..accept The Flame's Casing##3452
	step //41
		goto 38.6,27.8
		.talk Hansel Heavyhands##14627
		..turnin Curse These Fat Fingers##7723
		..turnin Fiery Menace!##7724
		.talk Taskmaster Scrange##14626
		..turnin STOLEN: Smithing Tuyere and Lookout's Spyglass##7728
	step //42
		ding 51
	step //43
		'Hearth to Ironforge|goto Ironforge|use Hearthstone##6948|noway|c
	step //44
		goto Ironforge,67.8,8.3
		.talk Curator Thorius##8256
		..turnin Suntara Stones (2)##3368
		..accept Dwarven Justice##3371
	step //45
		'Fly to Thelsamar|goto Loch Modan,33.9,50.8,0.5|noway|c
	step //46
		goto Loch Modan,18.2,84
		.talk Mountaineer Pebblebitty##3836
		..turnin The Horn of the Beast##3181
		..accept Proof of Deed##3182
	step //47
		'Go northeast to Thelsamar and fly to Ironforge|goto Ironforge|noway|c
	step //48
		goto Ironforge,67.8,8.3
		.talk Curator Thorius##8256
		..turnin Proof of Deed##3182
		..accept At Last!##3201
	step //49
		goto 75.8,23.4
		.talk Laris Geardawdle##9616
		..accept A Little Slime Goes a Long Way (1)##4512
	step //50
		'Fly to Thelsamar|goto Loch Modan,33.9,50.8,0.5|noway|c
	step //51
		goto Loch Modan,18.2,84
		.talk Mountaineer Pebblebitty##3836
		..turnin At Last!##3201
	step //52
		'Go northeast to Thelsamar and fly to Thorium Point|goto Searing Gorge,35.9,27.7,3|noway|c
	step //53
		goto Searing Gorge,41.5,54.7|n
		.' The entrance to the Slag Pit is here|goto Searing Gorge,41.5,54.7,0.5|noway|c|tip It's up on the Metal Riser Walkway things.
	step //54
		'Follow the path, go left though the Jail Door|goto Searing Gorge,37.6,44.3,0.5|noway|c
	step //55
		goto 41.2,25.5
		.talk the Dying Archeologist##8417
		..turnin Dwarven Justice##3371
		..accept Release Them##3372
	step //56
		'While in the Slag Pit:
		.kill 15 Dark Iron Taskmaster|q 7729/1
		.kill 15 Dark Iron Slaver|q 7729/2
	step //57
		'Go up the big metal ramp into the big room|goto Searing Gorge,44.2,24.4,0.5|c
	step //58
		goto 40.9,35.8
		.from Overseer Maltorius##14621
		.get Head of Overseer Maltorius|q 7701/1
	step //59
		goto 40.5,35.7
		.' Click the Secret Plans: Fiery Flux|tip It's a scroll laying on a bench behind Overseer Maltorius.
		.get Secret Plans: Fiery Flux|q 7722/1
	step //60
		goto 47.9,42.1|n
		.' Jump off the bridge at this spot to the path below|goto Searing Gorge,47.9,42.1,0.5|noway|c
	step //61
		goto 52,37
		.kill 20 Incendosaur|q 7727/1
	step //62
		'Go outside to 37.6,26.5|goto 37.6,26.5
		.talk Lookout Captain Lolo Longstriker##14634
		..turnin WANTED: Overseer Maltorius##7701
	step //63
		goto 38.6,27.8
		.talk Hansel Heavyhands##14627
		..turnin Incendosaurs? Whateverosaur is More Like It##7727
	step //64
		goto 39,27.5
		.talk Taskmaster Scrange##14626
		..turnin JOB OPPORTUNITY: Culling the Competition##7729
	step //65
		goto 38.8,28.5
		.talk Master Smith Burninate##14624
		..turnin What the Flux?##7722
	step //66
		goto 29.1,25.9
		.' Slowly work your way to this spot
		.' Jump onto the red crystal in the lava
		.' Click it and get the Mysterious Artifact|goal Mysterious Artifact|q 3372/1
		.' Kill Twilight mobs around the lava
		.get Symbol of Ragnaros|q 3452/1
	step //67
		goto 29.6,26.4
		.talk Zamael Lunthistle##8436
		..accept Prayer to Elune (1)##3377
	step //68
		goto 29.6,26.4
		.talk Zamael Lunthistle##8436
		..'Listen to his story|goal Zamael Story|q 3377/1
	step //69
		goto 29.6,26.4
		.talk Zamael Lunthistle##8436
		..turnin Prayer to Elune (1)##3377
		..accept Prayer to Elune (2)##3378
		.kill Twilight mobs|n
		.get Prayer to Elune|q 3378/1
	step //70
		goto 39,38.9
		.talk Kalaran Windblade##8479
		..turnin The Flame's Casing##3452
		..accept The Torch of Retribution (1)##3453
		..turnin The Torch of Retribution (1)##3453
		..accept The Torch of Retribution (2)##3454
		.' Click the green glowing floating Torch of Retribution
		..turnin The Torch of Retribution (2)##3454
		..accept Squire Maltrake##3462
		.talk Squire Maltrake##8509
		..turnin Squire Maltrake##3462
		..accept Set Them Ablaze!##3463
	step //71
		'Go into the Slag Pit|goto Searing Gorge,41.5,54.7,0.5|c
	step //72
		goto 41.2,25.5
		.' Click the Altar of Suntara|tip Inside the Slag Pit laying on the ground.
		..turnin Release Them##3372
		.talk the Dying Archeologist##8417
		..accept Rise, Obsidion!##3566
		.from Lathoric the Black##8391
		.get Head of Lathoric the Black|q 3566/1
		.from Obsidion##8400
		.get Heart of Obsidion|q 3566/2
	step //73
		'Leave the Slag Pit, go up top of the Cauldron|n
		.' Skip to the next step of the guide|n
	step //74
		'Equip the Torch of Retribution|use Torch of Retribution##10515|n
		.' Skip to the next step of the guide|n
	step //75
		goto 33.3,54.5
		.' Click the Sentry Brazier|tip At the top of the tower, click the little metal blazer on the ground.
		.' Set the Northern Tower Ablaze|goal Northern Tower Ablaze|q 3463/4
	step //76
		goto 35.7,60.7
		.' Click the Sentry Brazier|tip At the top of the tower, click the little metal blazer on the ground.
		.' Set the Western Tower Ablaze|goal Western Tower Ablaze|q 3463/1
	step //77
		goto 44,60.9
		.' Click the Sentry Brazier|tip At the top of the tower, click the little metal blazer on the ground.
		.' Set the Southern Tower Ablaze|goal Southern Tower Ablaze|q 3463/2
	step //78
		goto 50.1,54.7
		.' Click the Sentry Brazier|tip At the top of the tower, click the little metal blazer on the ground.
		.' Set the Eastern Tower Ablaze|goal Eastern Tower Ablaze|q 3463/3
	step //79
		goto 39.1,39
		.talk Squire Maltrake##8509
		..turnin Set Them Ablaze!##3463
		.' Click the small grey chest on the ground
		..accept Trinkets...##3481
		.' Click the chest again
		..turnin Trinkets...##3481
		.' Open the Hoard of the Black Dragonflight in your bags|use Hoard of the Black Dragonflight##10569
		.' Make sure to save the Black Dragonflight Molt|collect Black Dragonflight Molt##10575|q 4022/1 |future
	step //80
		'Go north to Thorium Point and fly to Nethergarde Keep|goto Blasted Lands,65.4,19.2,9|noway|c
	step //81
		goto Blasted Lands,67.5,19.3
		.talk Ambassador Ardalan##7826
		..accept Petty Squabbles##2783
	step //82
		'Go northwest to the Swamp of Sorrows|goto Swamp of Sorrows|noway|c
	step //83
		goto Swamp of Sorrows,34.3,66.1
		.talk the Fallen Hero of the Horde##7572
		..turnin Petty Squabbles##2783
		..accept A Tale of Sorrow##2801
		..'Listen to his story
		..turnin A Tale of Sorrow##2801
	step //84
		goto 91.6,67.6
		.from Jarquia##9916
		.get Goodsteel's Balanced Flameberge|q 4450/4
	step //85
		'Hearth to Ironforge|goto Ironforge|use Hearthstone##6948|noway|c
	step //86
		goto Ironforge,67.8,8.3
		.talk Curator Thorius##8256
		..turnin Rise, Obsidion!##3566
	step //87
		'Fly to Stormwind|goto Stormwind City|noway|c
	step //88
		goto Stormwind City,22.6,56.1|n
		'Ride the boat to Auberdine|goto Darkshore,32.4,43.7,1|noway|c
	step //89
		'Fly to Rut'theran Village|goto Teldrassil,56.3,92.4,6|noway|c
	step //90
		goto Darnassus
	step //91
		goto Darnassus,38.3,80.9
		.talk Astarii Starseeker##4090
		..turnin Prayer to Elune (2)##3378
	step //92
		goto 41.8,85.6
		.talk Gracina Spiritmight##7740
		..turnin Rise of the Silithid##162
		..accept March of the Silithid##4493
	step //93
		goto 35.1,9.1
		.talk Arch Druid Fandral Staghelm##3516
		..turnin Assisting Arch Druid Staghelm##3790
		..accept Un'Goro Soil##3764
	step //94
		goto 31,42|n
		.' Go into the pink portal to Rut'theran Village|goto Teldrassil,56.3,92.4,6|noway|c
	step //95
		'Fly to Mudsprocket|goto Dustwallow Marsh,42.9,72.4,0.5|noway|c
	step //96
		goto Dustwallow Marsh,54.1,55.9
		.' Click the Damaged Crate|tip It's a half buried crate with a little fire on it.
		.get Overdue Package|q 4450/3
	step //97
		goto 31.1,66.2
		.' Click the Musty Scroll|tip A little white scroll on a small rock in the cave.
		..turnin Cortello's Riddle (2)##625
	step //98
		'Go southeast to Mudsprocket and fly to Gadgetzan|goto Tanaris,51.0,29.3,0.5|noway|c
	step //99
		goto Tanaris,51.5,28.8
		.talk Krinkle Goodsteel##5411
		..turnin Ledger from Tanaris##4450
	step //100
		goto 51.6,26.8
		.talk Tran'rek##7876
		..accept Super Sticky##4504
	step //101
		goto 50.9,27
		.talk Alchemist Pestlezugg##5594
		..turnin March of the Silithid##4493
		..accept Bungle in the Jungle##4496
	step //102
		'Go southwest to the Un'Goro Crater|goto Un'Goro Crater|noway|c
	step //103
		ding 52
	step //104
		goto 71.6,76
		.talk Torwa Pathfinder##9619
		..accept The Apes of Un'Goro##4289
		..accept The Fare of Lar'korwi##4290
	step //105
		'While questing in Un'Goro Crater, look for the following items on the ground:
		.' Green Power Crystals - get 7 of these
		.' Red Power Crystals - get 7 of these
		.' Blue Power Crystals - get 7 of these
		.' Yellow Power Crystals - get 7 of these
		.' Un'Goro Dirt Piles - get 25 of these
		.' Skip to the next step of the guide
	step //106
		goto 68,76
		.kill Ravasaurs|n
		.get A Mangled Journal|n
		.' Click the Mangled Journal|use A Mangled Journal##11116
		..accept Williden's Journal##3884
	step //107
		goto 63,68.5
		.' Click the Wrecked Raft|tip It's a busted up wooden boat on the shore of this small pond.
		..accept It's a Secret to Everybody (1)##3844
	step //108
		goto 63.1,69.1
		.' Click the Small Pack|tip It's a big tan sac underwater in this pond.
		..turnin It's a Secret to Everybody (1)##3844
		..accept It's a Secret to Everybody (2)##3845
		.' Click the Small Pack|use A Small Pack##11107
		..get Large Compass|q 3845/1
		..get Curled Map Parchment|q 3845/2
		..get Lion-headed Key|q 3845/3
	step //109
		goto 68.6,56.7
		.' Click the Fresh Threshadon Carcass|tip Looks like a big dead dinosaur with a bunch of wounds.
		.get Piece of Threshadon Carcass|q 4290/1
	step //110
		goto 71.6,76
		.talk Torwa Pathfinder##9619
		..turnin The Fare of Lar'korwi##4290
		..accept The Scent of Lar'korwi##4291
	step //111
		goto 67.3,73.1
		.' Kill raptors near the egg nest here
		.' Kill the Lar'korwi Mate that spawns
		.' You can find another egg nest at 63.2,77.4|n
		.get 2 Ravasaur Pheromone Gland|q 4291/1
	step //112
		goto 71.6,76
		.talk Torwa Pathfinder##9619
		..turnin The Scent of Lar'korwi##4291
		..accept The Bait for Lar'korwi##4292
	step //113
		goto 79.9,49.9
		.' Stand on the big grey flat rock
		.' Click Torwa's Pouch in your bags|use Torwa's Pouch##11568
		.' Click the Preserved Threshadon Meat in your bags|use Preserved Threshadon Meat##11569
		.' Click the Preserved Pheromone Mixture in your bags|use Preserved Pheromone Mixture##11570
		.from Lar'korwi##9684
		.get Lar'korwi's Head|q 4292/1
	step //114
		goto 65.7,15.5
		.' Kill Un'Goro Gorillas inside the cave
		.get 2 Un'Goro Gorilla Pelt|q 4289/1
		.' Kill Un'Goro Stompers inside the cave
		.get 2 Un'Goro Stomper Pelt|q 4289/2
		.' Kill Un'Goro Thunderers inside the cave
		.get 2 Un'Goro Thunderer Pelt|q 4289/3
	step //115
		goto 46.4,13.4
		.talk Karna Remtravel##9618
		..accept Chasing A-Me 01 (1)##4243
	step //116
		goto 44.7,8.1
		.talk Linken##8737
		..turnin It's a Secret to Everybody (2)##3845
		..accept It's a Secret to Everybody (3)##3908
	step //117
		goto 45.2,5.8
		.talk Gryfe##10583
		..fpath Marshal's Refuge
	step //118
		goto 43.9,7.2
		.talk Williden Marshal##9270
		..turnin Williden's Journal##3884
		..accept Expedition Salvation##3881
		.talk Hol'anyee Marshal##9271
		..accept Alien Ecology##3883
	step //119
		goto 43.5,7.4
		.talk Spark Nilminer##9272
		..accept Roll the Bones##3882
	step //120
		goto 41.9,2.7
		.talk J.D. Collie##9117
		..accept Crystals of Power##4284
		..turnin Crystals of Power##4284
		..accept The Northern Pylon##4285
		..accept The Eastern Pylon##4287
		..accept The Western Pylon##4288
	step //121
		goto 43.6,8.5
		.' Click the sign|tip Next to a big tree, looks like a sign.
		..accept Beware of Pterrordax##4501
		.talk Spraggle Frock##9997
		..accept Lost!##4492
	step //122
		goto 42.9,9.6
		.talk Muigin##9119
		..accept Muigin and Larion##4141
	step //123
		goto 44.2,11.6
		.talk Shizzle##9998
		..accept Shizzle's Flyer##4503
	step //124
		goto 47.2,18.7
		.kill Tar mobs|n
		.get 12 Super Sticky Tar|q 4504/1
	step //125
		goto 56.5,12.4
		.' Go up the hill
		.' Click the Northern Pylon|tip It looks like a big machine with a huge crystal spinning on top of it.
		.' Examine the Northern Pylon|goal Discover and examine the Northern Crystal Pylon|q 4285/1
	step //126
		'Go east into the gorilla cave|goto Un'Goro Crater,63.1,17.1,1|c
	step //127
		'Go into the gorilla cave to 67.7,16.8|goto 67.7,16.8
		.talk A-Me 01##9623
		..turnin Chasing A-Me 01 (1)##4243
	step //128
		goto 67.3,32.6
		.kill Diemetradons|n
		.get 8 Webbed Diemetradon Scale|q 4503/1
		.get 8 Dinosaur Bone|q 3882/1
		.kill Bloodpetals|n
		.get 15 Bloodpetal|q 4141/1
	step //129
		goto 68.5,36.5
		.' Click the Crate of Foodstuffs|tip In a small camp under a white canopy.
		.get Crate of Foodstuffs|q 3881/1
	step //130
		goto 77.2,50
		.' Go up the hill
		.' Click the Eastern Pylon|tip Up the big hill, looks like a structure with a big blue crysal spinning above it.
		.' Examine the Eastern Pylon|goal Discover and examine the Eastern Crystal Pylon|q 4287/1
	step //131
		goto 71.6,76
		.talk Torwa Pathfinder##9619
		..turnin The Bait for Lar'korwi##4292
		..turnin The Apes of Un'Goro##4289
	step //132
		goto 50.5,78.4|n
		.' The path down into the Slithering Scar starts here|goto Un'Goro Crater,50.5,78.4,0.5|noway|c
	step //133
		goto 48.7,85.3
		.' Go down the path
		.' Go left at the fork into the circular room
		.' In the middle of the room, use your Unused Scraping Vial|use Unused Scraping Vial##11132
		.get Hive Wall Sample|q 3883/1
	step //134
		'Go out of the hive to 50.5,78.4|goto 50.5,78.4
		.kill Gorishi insects|n
		.get Gorishi Scent Gland|q 4496/1
	step //135
		goto 38.5,66.1
		.' Click the Research Equipment|tip It's a pile of boxes.
		.get Research Equipment|q 3881/2
	step //136
		goto 23.8,59.2
		.' Go up the hill
		.' Click the Western Pylon|tip It looks like a big machine with a huge crystal spinning on top of it.
		.' Examine the Western Pylon|goal Discover and examine the Western Crystal Pylon|q 4288/1
	step //137
		goto 21.4,59.4
		.kill 10 Frenzied Pterrordax|q 4501/1
		.from Frenzied Pterrordax##9167
		.get 8 Webbed Pterrordax Scale|q 4503/2
		.' You can find more Frenzied Pterrordax at 23.3,42.3|n
	step //138
		goto 30.9,50.4
		.talk Krakle##10302
		..accept Finding the Source##974
	step //139
		goto 45.8,53.2
		.kill fire elementals|n
		.get 9 Un'Goro Ash|q 4502/1
	step //140
		'Follow the path up the moutain to 49.7,45.7|goto 49.7,45.7
		.' Use Krakle's Thermometer on the Fire Plume Ridge Hot Spot|use Krakle's Thermometer##12472|tip It's a big black rock with a bunch of red cracks in it.
		.' Find the hottest area of Fire Plume Ridge|goal Find the hottest area of Fire Plume Ridge|q 974/1
	step //141
		goto 30.9,50.4
		.talk Krakle##10302
		..turnin Finding the Source##974
		..accept The New Springs##980
	step //142
		ding 53
	step //143
		goto 51.9,49.9
		.talk Ringo##9999
		..turnin Lost!##4492
		..accept A Little Help From My Friends##4491
		.goal Escort Ringo to Spraggle Frock at Marshal's Refuge|q 4491/1
		.' When Ringo faints, use Spraggle's Canteen on him to revive him|use Spraggle's Canteen##11804
		.' When escorting Ringo, bring him to 43.6,8.5|n
	step //144
		goto 43.6,8.5
		.talk Spraggle Frock##9997
		..turnin Beware of Pterrordax##4501
		..turnin A Little Help From My Friends##4491
	step //145
		goto 43.9,7.2
		.talk Williden Marshal##9270
		..turnin Expedition Salvation##3881
		.talk Hol'anyee Marshal##9271
		..turnin Alien Ecology##3883
	step //146
		goto 43.5,7.4
		.talk Spark Nilminer##9272
		..turnin Roll the Bones##3882
	step //147
		goto 41.9,2.7
		.talk J.D. Collie##9117
		..turnin The Northern Pylon##4285
		..turnin The Eastern Pylon##4287
		..turnin The Western Pylon##4288
		..accept Making Sense of It##4321
		..turnin Making Sense of It##4321
	step //148
		goto 42.9,9.6
		.talk Muigin##9119
		..turnin Muigin and Larion##4141
		..accept A Visit to Gregan##4142
	step //149
		goto 44.2,11.6
		.talk Shizzle##9998
		..turnin Shizzle's Flyer##4503
	step //150
		goto 29.3,22.2|n
		.' The path over to Silithus starts here|goto Un'Goro Crater,29.3,22.2,0.5|noway|c
	step //151
		'Go to Silithus|goto Silithus|noway|c
	step //152
		goto Silithus,50.6,34.5
		.talk Cloud Skydancer##15177
		..fpath Cenarion Hold
	step //153
		'Fly to Gadgetzan|goto Tanaris,51.0,29.3,0.5|noway|c
	step //154
		goto Tanaris,51.6,26.8
		.talk Tran'rek##7876
		..turnin Super Sticky##4504
	step //155
		goto 50.9,27
		.talk Alchemist Pestlezugg##5594
		..turnin Bungle in the Jungle##4496
	step //156
		'Fly to Rut'theran Village|goto Teldrassil,56.3,92.4,6|noway|c
	step //157
		'Go into the pink portal to Darnassus|goto Darnassus|noway|c
	step //158
		goto Darnassus,31.5,8.2
		.talk Jenal##9047
		..turnin Un'Goro Soil##3764
	step //159
		goto 35.1,9.1
		.talk Arch Druid Fandral Staghelm##3516
		..accept Morrowgrain Research (1)##3781
	step //160
		goto 35.2,8.1
		.talk Mathrengyl Bearwalker##4217
		..turnin Morrowgrain Research (1)##3781
	step //161
		'Go to Rut'theran Village|goto Teldrassil,56.3,92.4,6|noway|c
	step //162
		goto Teldrassil,55.5,92
		.talk Erelas Ambersky##7916
		..accept Moontouched Wildkin##978
	step //163
		'Fly to Astranaar|goto Ashenvale,35.5,50.2,5|noway|c
	step //164
		home Astranaar
	step //165
		'Fly to Talrendis Point in Azshara|goto Azshara,11.9,77.6,1|noway|c
	step //166
		goto Azshara,11.4,78.2
		.talk Loh'atu##11548
		..accept Spiritual Unrest##5535
		..accept A Land Filled with Hatred##5536
	step //167
		goto 17.3,70.6
		.kill 6 Highborne Apparition|q 5535/1
		.kill 6 Highborne Lichling|q 5535/2
	step //168
		goto 19.3,62.4
		.kill 6 Haldarr Satyr|q 5536/1
		.kill 2 Haldarr Trickster|q 5536/2
		.kill 2 Haldarr Felsworn|q 5536/3
	step //169
		goto 11.4,78.2
		.talk Loh'atu##11548
		..turnin Spiritual Unrest##5535
		..turnin A Land Filled with Hatred##5536
	step //170
		goto 42.3,64.1
		.' Click the Rune of Sael'hai|tip A tall, purple glowing monument looking thing.
		.get Rubbing: Rune of Sael'hai|q 3449/4
	step //171
		goto 39.3,55.5
		.' Click the Rune of Markri|tip A tall, purple glowing looking monument thing.
		.get Rubbing: Rune of Markri|q 3449/3
	step //172
		goto 39.5,50.2
		.' Click the Rune of Jin'yael|tip A tall, purple glowing monument looking thing.
		.get Rubbing: Rune of Jin'yael|q 3449/2
	step //173
		goto 36.9,53.2
		.' Click the Rune of Beth'Amara|tip A tall, purple glowing monument looking thing.
		.get Rubbing: Rune of Beth'Amara|q 3449/1
	step //174
		'Follow the road west out of the canyon|goto Azshara,31.1,57.6,0.5|c
	step //175
		goto 52.9,19.6|n
		.' The path up to Kim'jael starts here|goto Azshara,52.9,19.6,0.3|noway|c
	step //176
		goto 53.5,21.8
		.talk Kim'jael##8420
		..accept Kim'jael Indeed!##3601
	step //177
		goto 58.5,25
		.' Click Kim'jael's Equipment box|tip It's a small crate sitting on the ground.
		.' There are usually more boxes around at 58.7,29
		.get Kim'jael's Compass|q 3601/1
		.get Kim'jael's Scope|q 3601/2
		.get Kim'jael's Stuffed Chicken|q 3601/3
		.get Kim'jael's Wizzlegoober|q 3601/4
	step //178
		goto 53.5,21.8
		.talk Kim'jael##8420
		..turnin Kim'jael Indeed!##3601
		..accept Kim'jael's "Missing" Equipment##5534
	step //179
		ding 54
	step //180
		goto 45.5,37.7|n
		.' The path down to Some Rune starts here|goto Azshara,45.5,37.7,0.5|noway|c
	step //181
		goto 47.2,42.9
		.kill nagas|n
		.get Some Rune|q 5534/1
	step //182
		goto 46.1,39.0|n
		.' The path out of the naga beach starts here|goto Azshara,46.1,39.0,0.5|noway|c
	step //183
		goto 53.5,21.8
		.talk Kim'jael##8420
		..turnin Kim'jael's "Missing" Equipment##5534
	step //184
		goto 77.8,91.3
		.' Stand on the landing pad on the small island
		.' Use your Standard Issue Flare Gun|use Standard Issue Flare Gun##10444
		.talk Pilot Xiggs Fuselighter##8392
		..turnin Arcane Runes##3449
		..accept Return to Tymor##3461
	step //185
		'Hearth to Astranaar|goto Ashenvale,35.5,50.2,5|use Hearthstone##6948|noway|c
	step //186
		'Go northeast to Felwood|goto Felwood|noway|c
	step //187
		goto Felwood,54.2,86.8
		.talk Arathandris Silversky##9528
		..accept Cleansing Felwood##4101
	step //188
		goto 50.9,85
		.talk Grazle##11554
		..accept Timbermaw Ally##8460
	step //189
		goto 51.2,82.3
		.talk Greta Mosshoof##10922
		..accept Forces of Jaedenar##5155
	step //190
		goto 51.3,81.5
		.talk Eridan Bluewind##9116
		..accept The Corruption of the Jadefire##4421
	step //191
		goto 50.9,81.7
		.talk Taronn Redfeather##10921
		..accept Verifying the Corruption##5156
		.talk Ivy Leafrunner##10924
		..accept To Winterspring!##5249
	step //192
		goto 51.5,82.2
		.talk Gorrim##22931
		..fpath Emerald Sanctuary
	step //193
		goto 49.1,89.1
		.kill 6 Deadwood Warrior|q 8460/1
		.kill 6 Deadwood Pathfinder|q 8460/2
		.kill 6 Deadwood Gardener|q 8460/3
	step //194
		goto 50.9,85
		.talk Grazle##11554
		..turnin Timbermaw Ally##8460
		..accept Speak to Nafien##8462
	step //195
		'Click the Package of Empty Ooze Containers in your bags|use Package of Empty Ooze Containers##11912
		.collect 6 Empty Cursed Ooze Jar##11914|q 4512
		.collect 6 Empty Tainted Ooze Jar##11948|q 4512
	step //196
		goto 41.9,68.2
		.kill Cursed Oozes|n
		.' Use your Empty Cursed Ooze Jars on their corpses|use Empty Cursed Ooze Jar##11914
		.get 6 Filled Cursed Ooze Jar|q 4512/1
	step //197
		goto 41,59.7
		.kill Tainted Oozes|n
		.' Use your Empty Tainted Ooze Jars on their corpses|use Empty Tainted Ooze Jar##11948
		.get 6 Filled Tainted Ooze Jar|q 4512/2
		.' You can find more Tainted Oozes at 40.5,55.7|n
	step //198
		goto 38.5,59.2
		.kill 4 Jaedenar Hound|q 5155/1
		.kill 4 Jaedenar Guardian|q 5155/2
		.kill 6 Jaedenar Adept|q 5155/3
		.kill 6 Jaedenar Cultist|q 5155/4
	step //199
		goto 37.5,68.4
		.kill 11 Jadefire Felsworn|q 4421/1
		.kill 9 Jadefire Shadowstalker|q 4421/2
		.kill 9 Jadefire Rogue|q 4421/3
	step //200
		goto 32.2,67.1
		.kill Xavathras|q 4421/4|tip To the left of the green bubbling slime pool.
	step //201
		goto 51.2,82.3
		.talk Greta Mosshoof##10922
		..turnin Forces of Jaedenar##5155
		..accept Collection of the Corrupt Water##5157
	step //202
		goto 51.3,81.5
		.talk Eridan Bluewind##9116
		..turnin The Corruption of the Jadefire##4421
		..accept Further Corruption##4906
	step //203
		goto 35.2,59.8
		.' Use your Empty Canteen near the green moonwell|use Empty Canteen##12922
		.get Corrupt Moonwell Water|q 5157/1
	step //204
		goto 51.2,82.3
		.talk Greta Mosshoof##10922
		..turnin Collection of the Corrupt Water##5157
		..accept Seeking Spiritual Aid##5158
	step //205
		goto 41.3,42.4
		.kill 2 Entropic Beast|q 5156/2
		.kill 2 Entropic Horror|q 5156/3
		.' Explore the craters in the Shatter Scar Vale|goal Explore the craters in Shatter Scar Vale|q 5156/1
	step //206
		goto 43.1,21.3|n
		.' The path up to 'Further Corruption' starts here|goto Felwood,43.1,21.3,0.5|noway|c
	step //207
		goto 42,19.2
		.kill 8 Jadefire Hellcaller|q 4906/1
		.kill 8 Jadefire Betrayer|q 4906/2
		.kill 8 Jadefire Trickster|q 4906/3
	step //208
		goto 39.1,22.3
		.from Xavaric##10648|q 4906/4
		.get Flute of Xavaric|n
		.' Click the Flute of Xavaric|use Flute of Xavaric##11668
		..accept Flute of Xavaric##939
	step //209
		goto 39.3,21.4
		.kill Jadefire demons|n
		.get 5 Jadefire Felbind|q 939/1
	step //210
		goto 54.3,16.5
		.kill Warpwood Tree Elementals|n
		.get 15 Blood Amber|q 4101/1
	step //211
		goto 62.5,24.2
		.talk Mishellena##12578
		..fpath Talonbranch Glade
	step //212
		goto 64.8,8.1
		.talk Nafien##15395
		..turnin Speak to Nafien##8462
		..accept Deadwood of the North##8461
	step //213
		goto 63.1,8.9
		.kill 6 Deadwood Den Watcher|q 8461/1
		.kill 6 Deadwood Avenger|q 8461/2
		.kill 6 Deadwood Shaman|q 8461/3
	step //214
		goto 64.8,8.1
		.talk Nafien##15395
		..turnin Deadwood of the North##8461
		..accept Speak to Salfa##8465
	step //215
		'Go through the tunnel to Winterspring|goto Winterspring|noway|c
		.' At the fork, the tunnel heading east is the tunnel to Winterspring
	step //216
		'Right outside the tunnel at 27.7,34.5|goto Winterspring,27.7,34.5
		.talk Salfa##11556
		..turnin Speak to Salfa##8465
	step //217
		goto 31.3,45.2
		.talk Donova Snowden##9298
		..turnin The New Springs##980
		..accept Strange Sources##4842
		..turnin It's a Secret to Everybody (3)##3908
		..accept The Videre Elixir##3909
		..accept Threat of the Winterfall##5082
	step //218
		'Go northwest into the tunnel|goto Felwood,68.2,5.6,0.3|c
	step //219
		'Go north at the fork into Moonglade|goto Moonglade|noway|c
	step //220
		goto Moonglade,48.1,67.4
		.talk Sindrayl##10897
		..fpath Moonglade
	step //221
		'Hearth to Astranaar|goto Ashenvale,35.5,50.2,5|use Hearthstone##6948|noway|c
	step //222
		'Fly to Feathermoon Stronghold|goto Feralas,30.3,43.3,0.5|noway|c
	step //223
		goto Feralas,31,43.5
		.talk Innkeeper Shyria##7736
		..accept Jonespyre's Request##3788
	step //224
		goto 32.4,43.8
		.talk Quintis Jonespyre##7879
		..turnin Jonespyre's Request##3788
	step //225
		'Ride the boat to the main continent of Feralas|goto Feralas,43.5,42.7,1|noway|c
	step //226
		goto 45.1,25.6
		.talk Gregan Brewspewer##7775
		..turnin A Visit to Gregan##4142
		..'Buy 1 Bait from Gregan Brewspewer|collect 1 Bait##11141|q 3909
	step //227
		goto 44.9,10.8
		.' Click the Bait in your bags to place it here|use Bait##11141
		.' Miblan Snarltooth will run over to the bait and start eating it
		.' The door behind him will slide open
		.' Run into the stone building
		.' Click the Evoroot on the pedestal
		.collect 1 Evoroot##11242|q 4041/1 |future
	step //228
		goto 45.1,25.6
		.talk Gregan Brewspewer##7775
		..'Accept The Videre Elixir from him to give him the Evoroot
		..collect 3 Videre Elixir##11243|q 3909/1
	step //229
		goto 43.5,42.8|n
		.' Ride the boat to Feathermoon Stronghold|goto Feralas,31.0,39.9,0.5|noway|c
	step //230
		'Fly to Emerald Sanctuary|goto Felwood,51.1,81.6,2|noway|c
	step //231
		goto Felwood,51.3,81.5
		.talk Eridan Bluewind##9116
		..turnin Flute of Xavaric##939
		..turnin Further Corruption##4906
		..accept Felbound Ancients##4441
	step //232
		goto 50.9,81.7
		.talk Taronn Redfeather##10921
		..turnin Verifying the Corruption##5156
	step //233
		goto 54.2,86.8
		.talk Arathandris Silversky##9528
		..turnin Cleansing Felwood##4101
	step //234
		ding 55
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Levels (55-60)",[[
	author support@zygorguides.com
	next Zygor's Alliance Leveling Guides\\Outland (60-62)
	startlevel 55
	step //1
		'Fly to Talonbranch Glade|goto Felwood,62.3,25.0,2|noway|c
	step //2
		'Go north to Winterspring through the tunnel|goto Winterspring|noway|c
	step //3
		'Outside the tunnel to the right at 27.7,34.5|goto Winterspring,27.7,34.5
		.talk Salfa##11556
		..accept Winterfall Activity##8464
	step //4
		goto 31.3,45.2
		.talk Donova Snowden##9298
		..turnin The Videre Elixir##3909
		..accept Meet at the Grave##3912
	step //5
		goto 62.3,36.6
		.talk Maethrya##11138
		..fpath Everlook
	step //6
		'Fly to Ratchet|goto The Barrens,63.0,38.1,2|noway|c
	step //7
		goto The Barrens,62.4,38.7
		.talk Liv Rizzlefix##8496
		..turnin Volcanic Activity##4502
	step //8
		goto 65.8,43.8
		.talk Islen Waterseer##5901
		..turnin Seeking Spiritual Aid##5158
		..accept Cleansed Water Returns to Felwood##5159
	step //9
		'Go northwest to Ratchet and fly to Theramore|goto Dustwallow Marsh,67.5,50.3,9|noway|c
	step //10
		'Ride the boat to Menethil Harbor|goto Wetlands,4.6,56.8,9|noway|c
	step //11
		'Fly to Ironforge|goto Ironforge|noway|c
	step //12
		goto Ironforge,75.8,23.4
		.talk Laris Geardawdle##9616
		..turnin A Little Slime Goes a Long Way (1)##4512
		..accept A Little Slime Goes a Long Way (2)##4513
	step //13
		goto 31,4.8
		.talk Tymor##8507
		..turnin Return to Tymor##3461
	step //14
		goto 29.4,22.1
		.talk Courier Hammerfall##10877
		..'He wanders around Ironforge
		..accept The New Frontier (1)##1019
	step //15
		'Make sure you have a Mithril Casing in your bags|collect 1 Mithril Casing|q 4244/1
	step //16
		'Fly to Menethil Harbor|goto Wetlands,9.5,59.7,0.5|noway|c
	step //17
		'Ride the boat to Theramore|goto Dustwallow Marsh,67.5,50.3,9|noway|c
	step //18
		'Fly to Gadgetzan|goto Tanaris,51.0,29.3,0.5|noway|c
	step //19
		goto Tanaris,54,28.7
		.' Drink a Videre Elixir in the graveyard|use Videre Elixir##11243
		.' You will die.  Release your spirit, but DON'T resurrect yet
		.' Skip to the next step of the guide
	step //20
		goto 54,23.4
		.talk Gaeriyan##9299
		..turnin Meet at the Grave##3912
		..accept A Grave Situation##3913
	step //21
		'Go south as a ghost to the graveyard
		.' Resurrect now in the graveyard, and skip to the next step in the guide
	step //22
		goto 53.8,29.1
		.' Click the Conspicuous Gravestone|tip It's the only grave that looks like a stone tombstone.
		..turnin A Grave Situation##3913
		..accept Linken's Sword##3914
	step //23
		'Go southwest to Un'Goro Crater|goto Un'Goro Crater|noway|c
	step //24
		'Click the Bag of Empty Ooze Containers in your bags|use Bag of Empty Ooze Containers##11955
		.collect 10 Empty Pure Sample Jar##11953|q 4513
	step //25
		'Kill Oozes as you see them in Un'Goro Crater while doing other quests
		.' Use your Empty Pure Sample Jars on their corpses
		.get 10 Filled Pure Sample Jar##11954|n
		.' Skip to the next step of the guide
	step //26
		goto Un'Goro Crater,71.6,76
		.talk Torwa Pathfinder##9619
		..accept The Mighty U'cha##4301
	step //27
		goto 68.3,12.7
		.from U'cha##9622
		.get U'cha's Pelt|q 4301/1
	step //28
		goto 67.7,16.8
		.talk A-Me 01##9623
		..accept Chasing A-Me 01 (2)##4244
		..turnin Chasing A-Me 01 (2)##4244
		..accept Chasing A-Me 01 (3)##4245
		.' Escort A-Me 01 to Karna Remtravel|goal Protect A-Me 01 until you reach Karna Remtravel|q 4245/1
	step //29
		goto 46.4,13.4
		.talk Karna Remtravel##9618
		..turnin Chasing A-Me 01 (3)##4245
	step //30
		goto 44.7,8.1
		.talk Linken##8737
		..turnin Linken's Sword##3914
		..accept A Gnome's Assistance##3941
	step //31
		goto 41.9,2.7
		.talk J.D. Collie##9117
		..turnin A Gnome's Assistance##3941
		..accept Linken's Memory##3942
	step //32
		goto 71.6,76
		.talk Torwa Pathfinder##9619
		..turnin The Mighty U'cha##4301
	step //33
		'Make sure you have 10 Filled Pure Sample Jars
		.get 10 Filled Pure Sample Jar##11954|q 4513/1
		..'If you don't have them, kill Oozes all over Un'Goro Crater
		..' Use your Empty Pure Sample Jars on their corpses|use Empty Pure Sample Jar##11953
	step //34
		'Hearth to Astranaar|goto Ashenvale,35.5,50.2,5|use Hearthstone##6948|noway|c
	step //35
		'Fly to Rut'theran Village|goto Teldrassil,56.3,92.4,6|noway|c
	step //36
		'Go to Darnassus|goto Darnassus|noway|c
	step //37
		goto Darnassus,39.5,83.9
		.' Use Eridan's Vial at the moonwell in the Temple of the Moon|use Eridan's Vial##11682
		.get Vial of Blessed Water|q 4441/1
	step //38
		'Go to Rut'theran Village|goto Teldrassil,56.3,92.4,6|noway|c
	step //39
		'Fly to Emerald Sanctuary|goto Felwood,51.1,81.6,2|noway|c
	step //40
		goto Felwood,51.2,82.3
		.talk Greta Mosshoof##10922
		..turnin Cleansed Water Returns to Felwood##5159
		..accept Dousing the Flames of Protection##5165
	step //41
		goto 51.3,81.5
		.talk Eridan Bluewind##9116
		..turnin Felbound Ancients##4441
		..accept Purified!##4442
		..turnin Purified!##4442
		..turnin Linken's Memory##3942
		..accept Silver Heart##4084
	step //42
		goto 48.7,79.2
		.kill wolves and bears|n
		.get 11 Silvery Claws|q 4084/1
	step //43
		goto 35.4,58.7|n
		.' The cave entrance and path down to Dousing the Flames of Protection starts here|goto Felwood,35.4,58.7,0.3|noway|c
	step //44
		goto 36.3,56.3
		.' Click the Brazier of Pain|tip Underground in the cave, looks like a purple flame in a bowl.
		.' Extinguish the Brazier of Pain|goal Extinguish the Brazier of Pain|q 5165/1
	step //45
		goto 36.5,55.2
		.' Click the Brazier of Hatred|tip Underground in the cave, looks like a purple flame in a bowl.
		.' Extinguish the Brazier of Hatred|goal Extinguish the Brazier of Hatred|q 5165/4
	step //46
		goto 36.7,53.3
		.' Click the Brazier of Suffering|tip Underground in the cave, looks like a purple flame in a bowl.
		.' Extinguish the Brazier of Suffering|goal Extinguish the Brazier of Suffering|q 5165/3
	step //47
		goto 37.7,52.7
		.' Click the Brazier of Malice|tip Underground in the cave, looks like a purple flame in a bowl.
		.' Extinguish the Brazier of Malice|goal Extinguish the Brazier of Malice|q 5165/2
	step //48
		'Leave the cave and go to 48.5,20.2|goto 48.5,20.2
		.kill Irontree Stompers|n
		.get Irontree Heart|q 4084/2
	step //49
		'Go east to Talonbranch Glade and fly to Emerald Sanctuary|goto Felwood,51.1,81.6,2|noway|c
	step //50
		goto 51.2,82.3
		.talk Greta Mosshoof##10922
		..turnin Dousing the Flames of Protection##5165
	step //51
		goto 51.3,81.5
		.talk Eridan Bluewind##9116
		..turnin Silver Heart##4084
		..accept Aquementas##4005
	step //52
		'Fly to Everlook|goto Winterspring,61.2,38.3,3|noway|c
	step //53
		goto Winterspring,61.1,38.4
		.talk Harlo Wigglesworth##11755
		..accept Enraged Wildkin (1)##6604
	step //54
		goto 61.3,39
		.talk Jessica Redpath##11629
		..accept Sister Pamela##5601
		.talk Gregor Greystone##10431
		..accept The Everlook Report##6028
		..accept Duke Nicholas Zverenhoff##6030
	step //55
		home Everlook
	step //56
		goto 60.9,37.6
		.talk Umi Rumplesnicker##10305
		..accept Are We There, Yeti? (1)##3783
	step //57
		'As you run around Winterspring, look for big blue feathers on the ground:
		.' Click them and get 10 Moontouched Feathers
		.' Skip to the next step of the guide
	step //58
		goto 52.1,30.4
		.talk Wynd Nightchaser##11079
		..turnin To Winterspring!##5249
		..accept The Ruins of Kel'Theril##5244
		.talk Jaron Stoneshaper##10301
		..turnin Enraged Wildkin (1)##6604
		..turnin The Ruins of Kel'Theril##5244
	step //59
		ding 56
	step //60
		goto 39.4,43.8
		.kill 8 Winterfall Pathfinder|q 5082/1
		.kill 8 Winterfall Den Watcher|q 5082/2
		.kill 8 Winterfall Totemic|q 5082/3
		.kill Winterfall furbolgs|n
		.get Empty Firewater Flask|n
		.' Click the Empty Firewater Flask|use Empty Firewater Flask##12771
		..accept Winterfall Firewater##5083
	step //61
		goto 65,41.6
		.kill yetis|n
		.get 10 Thick Yeti Fur|q 3783/1
	step //62
		goto 60.9,37.6
		.talk Umi Rumplesnicker##10305
		..turnin Are We There, Yeti? (1)##3783
		..accept Are We There. Yeti? (2)##977
	step //63
		goto 66,42.8
		.kill Ice Thistle Matriarchs|n
		.kill Ice Thistle Patriarchs|n
		.get 2 Pristine Yeti Horn|q 977/1
	step //64
		goto 59.8,74.3
		.' Discover Darkwhisper Gorge|goal Discover Darkwhisper Gorge|q 4842/1
	step //65
		'Hearth to Everlook|goto Winterspring,61.2,38.3,3|use Hearthstone##6948|noway|c
	step //66
		goto 60.9,37.6
		.talk Umi Rumplesnicker##10305
		..turnin Are We There. Yeti? (2)##977
		..accept Are We There, Yeti? (3)##5163
	step //67
		goto 61.5,38.5
		.' Use Umi's Mechanical Yeti on Legacki|use Umi's Mechanical Yeti##12928|tip Under a blue canopy, next to a table.
		.' Scare Legacki|goal Scare Legacki|q 5163/1
	step //68
		goto 67,35
		.kill 8 Winterfall Shaman |q 8464/1
		.kill 8 Winterfall Den Watcher|q 8464/2|tip You have these from before.
		.kill 8 Winterfall Ursa |q 8464/3
	step //69
		'Make sure you have 10 Moontouched Feathers in your bags|get 10 Moontouched Feather|q 978/1|c
	step //70
		goto 31.3,45.2
		.talk Donova Snowden##9298
		..turnin Strange Sources##4842
		..turnin Threat of the Winterfall##5082
		..turnin Winterfall Firewater##5083
		..accept Falling to Corruption##5084
	step //71
		goto 27.7,34.5
		.talk Salfa##11556
		..turnin Winterfall Activity##8464
	step //72
		'Go through the tunnel to Felwood|goto Felwood|noway|c
	step //73
		goto Felwood,60.2,5.8
		.' Click the Deadwood Cauldron|tip Up the hill, in a camp of furbolgs. You may need help with this.
		..turnin Falling to Corruption##5084
		..accept Mystery Goo##5085
	step //74
		'Go through the tunnel to Winterspring|goto Winterspring|noway|c
	step //75
		goto Winterspring,31.3,45.2
		.talk Donova Snowden##9298
		..turnin Mystery Goo##5085
		..accept Toxic Horrors##5086
	step //76
		'Go northwest through the tunnel to Felwood|goto Felwood|noway|c
	step //77
		goto Felwood,50.4,26.4
		.kill Toxic Horrors|n
		.get 3 Toxic Horror Droplet|q 5086/1
	step //78
		'Go northeast through the tunnel to Winterspring|goto Winterspring|noway|c
	step //79
		goto Winterspring,31.3,45.2
		.talk Donova Snowden##9298
		..turnin Toxic Horrors##5086
	step //80
		'Hearth to Everlook|goto Winterspring,61.3,38.9,0.5|use Hearthstone##6948|noway|c
	step //81
		'Fly to Rut'theran Village|goto Teldrassil,56.3,92.4,6|noway|c
	step //82
		goto Teldrassil,55.5,92
		.talk Erelas Ambersky##7916
		..turnin Moontouched Wildkin##978
	step //83
		'Go to Darnassus|goto Darnassus|noway|c
	step //84
		goto Darnassus,35.1,9.1
		.talk Arch Druid Fandral Staghelm##3516
		..turnin The New Frontier (1)##1019
		..accept The New Frontier (2)##6761
	step //85
		goto 35.2,8.1
		.talk Mathrengyl Bearwalker##4217
		..turnin The New Frontier (2)##6761
		..accept Rabine Saturna##6762
	step //86
		'Go to Rut'theran Village|goto Teldrassil,56.3,92.4,6|noway|c
	step //87
		'Fly to Moonglade|goto Moonglade|noway|c
	step //88
		goto Moonglade,51.7,45.1
		.talk Rabine Saturna##11801
		..turnin Rabine Saturna##6762
		..accept Wasteland##1124
	step //89
		'Fly to Auberdine|goto Darkshore,36.4,45.6,0.3|noway|c
	step //90
		'Ride the boat to Stormwind Harbor|goto Stormwind City|noway|c
	step //91
		'Fly to Ironforge|goto Ironforge|noway|c
	step //92
		goto Ironforge,58.6,47.3
		.talk Cenarion Emissary Jademoon##15187
		..accept Taking Back Silithus##8275
	step //93
		goto 75.8,23.4
		.talk Laris Geardawdle##9616
		..turnin A Little Slime Goes a Long Way (2)##4513
	step //94
		goto 38.4,55.3
		.talk Royal Historian Archesonus##8879
		..accept The Smoldering Ruins of Thaurissan (1)##3702
		.' Listen to her story
		..turnin The Smoldering Ruins of Thaurissan (1)##3702
		..accept The Smoldering Ruins of Thaurissan (2)##3701
	step //95
		'Fly to Lakeshire|goto Redridge Mountains,30.4,59.0,0.5|noway|c
	step //96
		home Lakeshire
	step //97
		'Make sure you have your Black Dragonflight Molt in your bags|collect 1 Black DragonFlight Molt##10575|q 4022/1|future
	step //98
		'Go northeast to the Burning Steppes|goto Burning Steppes|noway|c
	step //99
		goto Burning Steppes,82.8,63.4|n
		.' The path up to Morgan's Vigil starts here|goto Burning Steppes,82.8,63.4,0.3|noway|c
	step //100
		goto 84.3,68.3
		.talk Borgus Stoutarm##2299
		..fpath Morgan's Vigil
	step //101
		goto 84.6,68.7
		.talk Oralius##9177
		..accept Extinguish the Firegut##3823
		..accept FIFTY! YEP!##4283
	step //102
		goto 64.1,41.8
		.' Click the Thaurissan Relics|tip They look like little white stone statues on the ground around this area.
		.' Gather Information from 12 Thaurissan Relics|goal 12 Information Recovered|q 3701/1
	step //103
		goto 66.1,21.9
		.talk Yuka Screwspigot##9544
		..turnin Yuka Screwspigot##4324
	step //104
		goto 65.2,23.9
		.talk Tinkee Steamboil##10267
		..accept Broodling Essence##4726
		.talk Maxwort Uberglint##9536
		..accept Tablet of the Seven##4296
	step //105
		goto 54.1,40.7
		.' Click the Tablet of Seven to Transcribe it|tip It looks like a small stone block in front of a dwarf statue.
		.get Tablet Transcript|q 4296/1
	step //106
		goto 44.4,36.4
		.kill Blackrock orcs|n
		.get 50 Blackrock Medallion|q 4283/1
	step //107
		goto 74.7,42
		.kill 15 Firegut Ogre Mage|q 3823/1
		.kill 7 Firegut Ogre|q 3823/2
		.kill 7 Firegut Brute|q 3823/3
	step //108
		goto 84.6,68.7
		.talk Oralius##9177
		..turnin Extinguish the Firegut##3823
		..accept Gor'tesh the Brute Lord##3824
		..turnin FIFTY! YEP!##4283
	step //109
		goto 90.4,55.9
		.' Use your Draco-Incarcinatrix 900 on Black Broodlings and kill them|use Draco-Incarcinatrix 900##12284
		.' Click the red crystals that float over their corpses
		.get 8 Broodling Essence|q 4726/1
	step //110
		goto 95.1,31.6
		.talk Cyrus Therepentous##9459
		..accept A Taste of Flame (1)##4022
		.' Present proof of your deeds
		..turnin A Taste of Flame (1)##4022
	step //111
		ding 57
	step //112
		goto 65.2,23.9
		.talk Tinkee Steamboil##10267
		..turnin Broodling Essence##4726
		..accept Felnok Steelspring##4808
		.talk Maxwort Uberglint##9536
		..turnin Tablet of the Seven##4296
	step //113
		goto 39.3,55.4
		.from Gor'tesh##9176
		.get Gor'tesh's Lopped Off Head|q 3824/1
	step //114
		goto 84.6,68.7
		.talk Oralius##9177
		..turnin Gor'tesh the Brute Lord##3824
		..accept Ogre Head On A Stick = Party##3825
	step //115
		'Go to the top of Dreadmaul Rock to 81,46.8|goto 81,46.8
		.' Plant Gor'tesh's Head in the Soft Dirt Mound|q 3825/1|tip On the ground by the fire in front of the cave.
	step //116
		goto 84.6,68.7
		.talk Oralius##9177
		..turnin Ogre Head On A Stick = Party##3825
	step //117
		'Fly to Ironforge|goto Ironforge|noway|c
	step //118
		goto Ironforge,38.4,55.3
		.talk Royal Historian Archesonus##8879
		..turnin The Smoldering Ruins of Thaurissan (2)##3701
	step //119
		'Fly to Menethil Harbor|goto Wetlands,9.5,59.7,0.5|noway|c
	step //120
		'Ride the boat to Theramore|goto Dustwallow Marsh,67.5,50.3,9|noway|c
	step //121
		'Fly to Gadgetzan|goto Tanaris,51.0,29.3,0.5|noway|c
	step //122
		goto Tanaris,51.1,26.9
		.' Use Umi's Mechanical Yeti on Sprinkle|use Umi's Mechanical Yeti##12928|tip Standing next to a small cart.
		.' Scare Sprinkle|goal Scare Sprinkle|q 5163/2
	step //123
		home Gadgetzan
	step //124
		goto 70.4,49.9
		.' Unpack Eridan's Supplies into your bags|use Eridan's Supplies##11617
		.' Use the Book of Aquor to summon Aquementas inside the circle of stones|use Book of Aquor##11169
		.from Aquementas##9453
		.get Silver Totem of Aquementas|q 4005/1
	step //125
		'Hearth to Gadgetzan|goto Tanaris,51.7,27.8,6|use Hearthstone##6948|noway|c
	step //126
		'Fly to Marshal's Refuge|goto Un'Goro Crater,44.9,8.2,3|noway|c
	step //127
		goto Un'Goro Crater,43.7,9.4
		.' Use Umi's Mechanical Yeti on Quixxil|use Umi's Mechanical Yeti##12928|tip Standing next to some trees.
		.' Scare Quixxil|goal Scare Quixxil|q 5163/3
	step //128
		goto 41.9,2.7
		.talk J.D. Collie##9117
		..turnin Aquementas##4005
		..accept Linken's Adventure##3961
	step //129
		goto 44.7,8.1
		.talk Linken##8737
		..turnin Linken's Adventure##3961
	step //130
		'Fly to Cenarion Hold in Silithus|goto Silithus,50.4,36.5,3|noway|c
	step //131
		goto Silithus,49.7,37.5
		.talk Geologist Larksbane##15183
		..accept The Twilight Mystery##8284
	step //132
		goto 51.2,38.3
		.talk Windcaller Proudhorn##15191
		..turnin Taking Back Silithus##8275
		..accept Securing the Supply Lines##8280
	step //133
		home Cenarion Hold
	step //134
		goto 51.6,38.6
		.talk Beetix Ficklespragg##15189
		..accept Deadly Desert Venom##8277
	step //135
		goto 54.4,30.6
		.kill 15 Dredge Striker|q 8280/1
		.kill Stonelash Scorpids|n
		.get 8 Stonelash Scorpid Stinger|q 8277/1
		.kill Sand Skitterers|n
		.get 8 Sand Skitterer Fang|q 8277/2
	step //136
		goto 81.9,18.9
		.talk Layo Starstrike##13220
		..turnin Wasteland##1124
		..accept The Spirits of Southwind##1125
	step //137
		goto 24.8,10.4
		.' Click Twilight Tablet Fragments|tip They are blue glowing shards scattered on the ground around this area.
		.get 8 Twilight Tablet Fragment|q 8284/1
	step //138
		'Hearth to Cenarion Hold|goto 51.9,39.0,0.5|use Hearthstone##6948|noway|c
	step //139
		goto 51.6,38.6
		.talk Beetix Ficklespragg##15189
		..turnin Deadly Desert Venom##8277
		..accept Noggle's Last Hope##8278
	step //140
		goto 51.2,38.3
		.talk Windcaller Proudhorn##15191
		..turnin Securing the Supply Lines##8280
		..accept Stepping Up Security##8281
	step //141
		goto 49.7,37.5
		.talk Geologist Larksbane##15183
		..turnin The Twilight Mystery##8284
		..accept The Deserter##8285
	step //142
		goto 60.8,48.1
		.kill 8 Tortured Druid|q 1125/1
		.kill 8 Tortured Sentinel|q 1125/2
	step //143
		goto 55.1,59.7
		.kill 20 Dredge Crusher|q 8281/1
		.kill Stonelash Pincers|n
		.get 3 Stonelash Pincer Stinger|q 8278/2
	step //144
		goto 67.2,69.8
		.talk Hermit Ortell##15194
		..turnin The Deserter##8285
	step //145
		goto 65.2,74.7
		.kill Stonelash Flayers|n
		.get 3 Stonelash Flayer Stinger|q 8278/1
		.kill Rock Stalkers|n
		.get 3 Rock Stalker Fang|q 8278/3
		.' You can find more Stonelash Flayers and Rock Stalkers at 46.2,70.2|n
	step //146
		goto 51.2,38.3
		.talk Windcaller Proudhorn##15191
		..turnin Stepping Up Security##8281
	step //147
		goto 51.6,38.6
		.talk Beetix Ficklespragg##15189
		..turnin Noggle's Last Hope##8278
	step //148
		goto 81.9,18.9
		.talk Layo Starstrike##13220
		..turnin The Spirits of Southwind##1125
	step //149
		ding 58
	step //150
		'Go southwest to Cenarion Hold and fly to Theramore|goto Dustwallow Marsh,67.5,50.3,9|noway|c
	step //151
		'Ride the boat to Menethil Harbor|goto Wetlands,4.6,56.8,9|noway|c
	step //152
		'Fly to Ironforge|goto Ironforge|noway|c
	step //153
		goto Ironforge,29.4,22.1
		.talk Courier Hammerfall##10877
		..accept A Call to Arms: The Plaguelands!##5090
	step //154
		home Ironforge
	step //155
		'Fly to Southshore|goto Hillsbrad Foothills,50.0,56.9,8|noway|c
	step //156
		'Go north to the Alterac Mountains|goto Alterac Mountains|noway|c
	step //157
		'Go northeast to the Western Plaguelands|goto Western Plaguelands|noway|c
	step //158
		goto Western Plaguelands,43,83.5
		.talk Argent Officer Pureheart##10840
		..turnin The Everlook Report##6028
	step //159
		goto 42.7,84
		.talk Commander Ashlam Valorfist##10838
		..turnin A Call to Arms: The Plaguelands!##5090
		..accept Clear the Way##5092
	step //160
		goto 42.9,84.5
		.talk Anchorite Truuen##17238
		..accept The Mark of the Lightbringer##9474
	step //161
		goto 42.9,85.1
		.talk Bibilfaz Featherwhistle##12596
		..fpath Chillwind Camp
	step //162
		goto 48.2,81.2
		.kill 10 Skeletal Flayer|q 5092/1
		.kill 10 Slavering Ghoul|q 5092/2
	step //163
		goto 42.7,84
		.talk Commander Ashlam Valorfist##10838
		..turnin Clear the Way##5092
		..accept The Scourge Cauldrons##5215
		..accept All Along the Watchtowers##5097
	step //164
		goto 42.9,84.5
		.talk High Priestess MacDonnell##11053
		..turnin The Scourge Cauldrons##5215
		..accept Target: Felstone Field##5216
	step //165
		goto 49.3,73.2|n
		.' Enter the Ruins of Andorhal from this bridge|goto Western Plaguelands,49.3,73.2,0.3|noway|c
	step //166
		goto 46.6,71.1
		.' Use your Beacon Torch near the tower entrance|use Beacon Torch##12815
		.' Mark Tower Four|goal Tower Four marked|q 5097/4
	step //167
		goto 40,71.6
		.' Use your Beacon Torch near the tower entrance|use Beacon Torch##12815
		.' Mark Tower One|goal Tower One marked|q 5097/1
	step //168
		goto 42.3,66.3
		.' Use your Beacon Torch near the tower entrance|use Beacon Torch##12815
		.' Mark Tower Two|goal Tower Two marked|q 5097/2
	step //169
		goto 44.3,63.3
		.' Use your Beacon Torch near the tower entrance|use Beacon Torch##12815
		.' Mark Tower Three|goal Tower Three marked|q 5097/3
	step //170
		goto 37,57.1
		.from Cauldron Lord Bilemaw##11075
		.get Felstone Field Cauldron Key|n
		.' Click the Scourge Cauldron
		..turnin Target: Felstone Field##5216
		..accept Return to Chillwind Camp##5217
	step //171
		goto 38.4,54
		.talk Janice Felstone##10778
		..accept Better Late Than Never (1)##5021
	step //172
		goto 38.7,55.3
		.' Click Janice's Parcel|tip It's a brown package on the floor inside the barn, next to the wall as you enter.
		..turnin Better Late Than Never (1)##5021
		..accept Better Late Than Never (2)##5022
	step //173
		goto 42.7,84
		.talk Commander Ashlam Valorfist##10838
		..turnin All Along the Watchtowers##5097
		..accept Scholomance##5533
		.talk Alchemist Arbington##11056
		..turnin Scholomance##5533
		..accept Skeletal Fragments##5537
	step //174
		goto 42.9,84.5
		.talk High Priestess MacDonnell##11053
		..turnin Return to Chillwind Camp##5217
		..accept Target: Dalson's Tears##5219
	step //175
		goto 46.2,52.4
		.from Cauldron Lord Malvinious##11077
		.get Dalson's Tears Cauldron Key|n
		.' Click the Scourge Cauldron
		..turnin Target: Dalson's Tears##5219
		..accept Return to Chillwind Camp##5220
	step //176
		goto 47.7,50.7
		.' Click Mrs. Dalson's Diary|tip Inside the barn, on the floor in the middle of the room, it's an opened book.
		..accept Mrs. Dalson's Diary##5058|instant
	step //177
		goto 48.1,49.7
		.from Wandering Skeleton##10816
		.get Dalson Outhouse Key|n
		.' Unlock the Outhouse with the Dalson Outhouse Key|tip Behind the barn, next to a big tree stump.
		.from Farmer Dalson##10836
		.collect 1 Dalson Cabinet Key##12739|q 5060|instant
	step //178
		goto 47.4,49.7
		.' Unlock the Locked Cabinet with the Dalson Cabinet Key|tip In the house, on the second floor in the small room.
		..accept Locked Away##5059/1|instant
	step //179
		goto 50.0,30.4|n
		.' The path down to Kirsta Deepshadow starts here|goto Western Plaguelands,50.0,30.4,0.5|noway|c
	step //180
		goto 51.9,28
		.talk Kirsta Deepshadow##11610
		..accept Unfinished Business (1)##6004
	step //181
		goto 50.3,41.5
		.kill 2 Scarlet Knight|q 6004/4
		.kill 2 Scarlet Mage|q 6004/3
	step //182
		goto 51.1,43.7
		.kill 2 Scarlet Hunter|q 6004/2
		.kill 2 Scarlet Medic|q 6004/1
	step //183
		goto 51.9,28
		.talk Kirsta Deepshadow##11610
		..turnin Unfinished Business (1)##6004
		..accept Unfinished Business (2)##6023
	step //184
		goto 56.4,34.0|n
		.' The path up to Huntsman Radley starts here|goto Western Plaguelands,56.4,34.0,0.5|noway|c
	step //185
		goto 57.7,36.3
		.kill Huntsman Radley|q 6023/1
	step //186
		goto 54.2,24.2
		.kill 1 Cavalier Durgen|q 6023/2|tip Stay in front of the tower. Cavalier Durgen will eventually walk out of the tower down the front.
		.' Go to the top of the tower
		.' Click the small brown chest
		.get Mark of the Lightbringer|q 9474/1
	step //187
		goto 52.8,25.2|n
		.' Jump off the cliff down to Kirsta Deepshadow|goto Western Plaguelands,52.8,25.2,0.3|noway|c
	step //188
		goto 51.9,28
		.talk Kirsta Deepshadow##11610
		..turnin Unfinished Business (2)##6023
	step //189
		goto 42.9,84.5
		.talk High Priestess MacDonnell##11053
		..turnin Return to Chillwind Camp##5220
		..accept Target: Writhing Haunt##5222
		.talk Anchorite Truuen##17238
		..turnin The Mark of the Lightbringer##9474
	step //190
		'Fly to Stormwind|goto Stormwind City|noway|c
	step //191
		goto Stormwind City,57.2,48.1
		.talk Royal Factor Bathrilor##10782
		..turnin Better Late Than Never (2)##5022
		..accept Good Natured Emma##5048
	step //192
		goto 60.2,57
		.talk Ol' Emma##3520
		..turnin Good Natured Emma##5048
		..accept Good Luck Charm##5050
	step //193
		goto 80,38.4
		.talk King Varian Wrynn##29611
		..accept The First and the Last##6182
	step //194
		goto 78.3,70.7
		.talk Master Mathias Shaw##332
		..turnin The First and the Last##6182
		..accept Honor the Dead##6183
		..turnin Honor the Dead##6183
		..accept Flint Shadowmore##6184
	step //195
		'Fly to Chillwind Camp|goto Western Plaguelands,43.0,84.3,1.5|noway|c
	step //196
		goto Western Plaguelands,43.6,84.5
		.talk Flint Shadowmore##12425
		..turnin Flint Shadowmore##6184
		..accept The Eastern Plagues##6185
	step //197
		goto 38.4,54
		.talk Janice Felstone##10778
		..turnin Good Luck Charm##5050
		..accept Two Halves Become One##5051
	step //198
		goto 37.5,55
		.kill a Jabbering Ghoul|n|tip If a Jabbering Ghoul is not in this spot, you can find one somewhere in this field.
		.get Good Luck Other-Half Charm|n
		.' Click the Good Luck Other-Half-Charm in your bags|use Good Luck Other-Half-Charm##12722
		.get Good Luck Charm|q 5051/1
		.kill skeletons|n
		.get 15 Skeletal Fragments|q 5537/1
	step //199
		goto 38.4,54
		.talk Janice Felstone##10778
		..turnin Two Halves Become One##5051
	step //200
		goto 53,66
		.from Cauldron Lord Razarch##11076
		.get Writhing Haunt Cauldron Key|n
		.' Click the Scourge Cauldron
		..turnin Target: Writhing Haunt##5222
		..accept Return to Chillwind Camp##5223
	step //201
		goto 42.7,84
		.talk Alchemist Arbington##11056
		..turnin Skeletal Fragments##5537
	step //202
		goto 42.9,84.5
		.talk High Priestess MacDonnell##11053
		..turnin Return to Chillwind Camp##5223
		..accept Target: Gahrron's Withering##5225
		.talk Anchorite Truuen##17238
		..accept Tomb of the Lightbringer##9446
		..'Escort Anchorite Truuen|goal Escort Anchorite Truuen to Uther's Tomb|q 9446/1
	step //203
		goto 53.7,64.7
		.talk Mulgris Deepriver##10739
		..accept The Wildlife Suffers Too (1)##4984
	step //204
		goto 42.8,55.4
		.kill 8 Diseased Wolf|q 4984/1 |tip The wolves in this area share a respawn with the spiders so killing them as well will spawn wolves faster.
		..'You can also find more wolves at 45.6,47.4 |n
	step //205
		goto 53.7,64.7
		.talk Mulgris Deepriver##10739
		..turnin The Wildlife Suffers Too (1)##4984
		..accept The Wildlife Suffers Too (2)##4985
	step //206
		ding 59
	step //207
		goto 57.9,61.2
		.kill 8 Diseased Grizzly|q 4985/1
		.' You can find more at 57.4,53.1
	step //208
		goto 53.7,64.7
		.talk Mulgris Deepriver##10739
		..turnin The Wildlife Suffers Too (2)##4985
	step //209
		goto 62.6,59.9
		.from Cauldron Lord Soulwrath##11078
		.get Gahrron's Withering Cauldron Key|n
		.' Click the Scourge Cauldron
		..turnin Target: Gahrron's Withering##5225
		..accept Return to Chillwind Camp##5226
	step //210
		goto 69.2,49.6
		..fpath Thondroril River

	step //211
		'Go northeast to the Eastern Plaguelands|goto Eastern Plaguelands|noway|c
	step //212
		'Go north up the coast to 4.7,38.4|goto Eastern Plaguelands,4.7,38.4
		.talk Tirion Fordring##1855
		..accept Demon Dogs##5542
		..accept Blood Tinged Skies##5543
		..accept Carrion Grubbage##5544
	step //213
		goto 25.1,73.1
		.' Click the Mangled Human Remains
		.get SI:7 Insignia (Rutger)##16003|q 6185/2
	step //214
		goto 25.1,68.4
		.' Click the Mangled Human Remains
		.get SI:7 Insignia (Turyen)##16002|q 6185/4
	step //215
		goto 23.5,68.4
		.' Click the Mangled Human Remains
		.get SI:7 Insignia (Fredo)##16001|q 6185/3
		.' See a message saying you Uncovered the Blightcaller|goal The Blightcaller Uncovered|q 6185/1
	step //216
		goto 24.9,63.6
		.kill 20 Plaguehound Runt|q 5542/1
		.kill 30 Plaguebat|q 5543/1
		.kill Carrion Grubs|n
		.get 15 Slab of Carrion Worm Meat|q 5544/1
	step //217
		goto 32.4,83.7
		.talk Pamela Redpath##10926
		..turnin Sister Pamela##5601
		..accept Pamela's Doll##5149
	step //218
		goto 35.0,84.3
		.' The doll parts spawn in the house here, except the house Pamela is in
		.get Pamela's Doll's Head|n
		.get Pamela's Doll's Left Side|n
		.get Pamela's Doll's Right Side|n
		.' Click Pamela's Doll's Head to put the doll parts together to make Pamela's Doll|q 5149/1|use Pamela's Doll's Head##12886
	step //219
		goto 32.4,83.7
		.talk Pamela Redpath##10926
		..turnin Pamela's Doll##5149
		..accept Uncle Carlin##5241
		..accept Auntie Marlene##5152
	step //220
		goto 52.5,49.1
		.kill 5 Plaguehound|q 5542/2
	step //221
		goto 50.3,25.9
		.kill 5 Frenzied Plaguehound|q 5542/3
	step //222
		goto 75.7,53.9
		.talk Duke Nicholas Zverenhoff##11039
		..turnin Duke Nicholas Zverenhoff##6030
		.talk Carlin Redpath##11063
		..turnin Uncle Carlin##5241
	step //223
		goto 75.9,53.4
		.talk Khaelyn Steelwing##12617
		..fpath Light's Hope Chapel
	step //224
		'Fly to Chillwind Camp|goto Western Plaguelands,43.0,84.3,1.5|noway|c
	step //225
		goto Western Plaguelands,42.9,84.5
		.talk High Priestess MacDonnell##11053
		..turnin Tomb of the Lightbringer##9446
		..turnin Return to Chillwind Camp##5226
	step //226
		goto 43.6,84.5
		.talk Flint Shadowmore##12425
		..turnin The Eastern Plagues##6185
		..accept The Blightcaller Cometh##6186
	step //227
		'Fly to Stormwind|goto Stormwind City|noway|c
	step //228
		goto Stormwind City,80,38.4
		.talk King Varian Wrynn##29611
		..turnin The Blightcaller Cometh##6186
	step //229
		'Fly to Chillwind Camp|goto Western Plaguelands,43.0,84.3,1.5|noway|c
	step //230
		goto Western Plaguelands,49.2,78.5
		.talk Marlene Redpath##10927
		..turnin Auntie Marlene##5152
		..accept A Strange Historian##5153
	step //231
		goto 49.7,76.8
		.' Click Joseph Redpath's Monument|tip It's a squarish stone gravestone with a gold plaque on it. It's a lighter color than all the other graves.
		.get Joseph's Wedding Ring|q 5153/1
	step //232
		goto 39.5,66.8
		.talk Chromie##10667
		..turnin A Strange Historian##5153
		..accept The Annals of Darrowshire##5154
		..accept A Matter of Time##4971
	step //233
		goto 43.5,69.4
		.get Annals of Darrowshire|q 5154/1|tip In the building that isn's crumbled in the middle of the town - you can enter from the south side by hugging the wall of the building until you get inside safely.
	step //234
		goto 46.9,65.7
		.' Use your Temporal Displacer on the disco ball towers|use Temporal Displacer##12627|tip In this area, you will see towers that have light shining out of them like a disco ball.
		.kill 10 Temporal Parasite|q 4971/1
	step //235
		goto 39.5,66.8
		.talk Chromie##10667
		..turnin The Annals of Darrowshire##5154
		..turnin A Matter of Time##4971
		..accept Counting Out Time##4972
	step //236
		goto 38.8,68.3
		.' Click the Small Lockboxes on the ground in the crumbled houses
		.get 5 Andorhal Watch |q 4972/1
	step //237
		goto 39.5,66.8
		.talk Chromie##10667
		..turnin Counting Out Time##4972
	step //238
		goto 42.9,85.1
		.talk Bibilfaz Featherwhistle##12596
		.' Fly to Thondroril River, Western Plaguelands|goto Western Plaguelands,69.2,49.7,0.5 |c
	step //239
		'Go northeast to the Eastern Plaguelands|goto Eastern Plaguelands|noway|c
	step //240
		'Go north up the coast to 4.7,38.4|goto Eastern Plaguelands,4.7,38.4
		.talk Tirion Fordring##1855
		..turnin Demon Dogs##5542
		..turnin Blood Tinged Skies##5543
		..turnin Carrion Grubbage##5544
		..accept Redemption##5742
		..'Listen to his story
		..turnin Redemption##5742
	step //241
		'Hearth to Ironforge|goto Ironforge|use Hearthstone##6948|noway|c
	step //242
		'Fly to Stormwind|goto Stormwind City|noway|c
	step //243
		goto Stormwind City,22.6,56.1|n
		'Ride the boat to Auberdine|goto Darkshore,32.4,43.7,1|noway|c
	step //244
		'Fly to Everlook|goto Winterspring,61.2,38.3,3|noway|c
	step //245
		goto Winterspring,60.9,37.6
		.talk Umi Rumplesnicker##10305
		..turnin Are We There, Yeti? (3)##5163
	step //246
		goto 61.6,38.6
		.talk Felnok Steelspring##10468
		..turnin Felnok Steelspring##4808
	step //247
		'Fly to Darnassus|goto Darnassus|noway|c
	step //248
		goto Darnassus,40.4,82.0|n
		.'Click the Portal to Blasted Lands|goto Blasted Lands|noway|c
	step //249
		ding 60
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Outland (60-62)",[[
	author support@zygorguides.com
	next Zygor's Alliance Leveling Guides\\Levels (62-64)
	startlevel 60
	step //1
		'Go inside Nethergarde Keep at 63.5,17|goto Blasted Lands,63.5,17
		.talk Bernie Heisten##3546
		..buy 1 Nethergarde Bitter|q 9563/1
	step //2
		goto 58.3,55.9
		.talk Watch Commander Relthorn Netherwane##16841
		..accept Through the Dark Portal##10119
	step //3
		'Go into the big green portal to the Outlands|goto Hellfire Peninsula|noway|c
	step //4
		goto Hellfire Peninsula,87.3,50.7
		.talk Commander Duron##19229
		..turnin Through the Dark Portal##10119
		..accept Arrival in Outland##10288
	step //5
		goto 87.4,52.4
		.talk Amish Wildhammer##18931
		..turnin Arrival in Outland##10288
		..accept Journey to Honor Hold##10140
	step //6
		'Fly to Honor Hold|goto Hellfire Peninsula,54.6,62.6,0.5|noway|c
	step //7
		goto 54.5,62.8
		.talk Marshal Isildor##19308
		..turnin Journey to Honor Hold##10140
		..accept Force Commander Danath##10254
	step //pre 8
		goto 54.3,62.6
		.' Buy a Flying mount.
		.talk Grunda Bronzewing##35101
		.' Train your Riding Skill. |achieve 890
		.talk Hargen Bronzewing##35100 
	step //8
		home Honor Hold
	step //9
		goto 56.6,66.7
		.talk Force Commander Danath Trollbane##16819
		..turnin Force Commander Danath##10254
		..accept The Legion Reborn##10141
		..accept Know your Enemy##10160
	step //10
		goto 51.2,60
		.talk Dumphry##21209
		..accept Waste Not, Want Not##10055
	step //11
		goto 50.9,60.2
		.talk Lieutenant Amadi##16820
		..turnin Know your Enemy##10160
		..accept Fel Orc Scavengers##10482
	step //12
		goto 61.7,60.8
		.talk Sergeant Altumus##19309
		..turnin The Legion Reborn##10141
		..accept The Path of Anguish##10142
	step //13
		goto 60.4,52.1
		.' Click the Salvaged Metal and Wood|They are scraps on the ground around this area.
		.get 8 Salvaged Metal|q 10055/1
		.get 8 Salvaged Wood|q 10055/2
		.kill 20 Bonechewer Orc|q 10482/1
	step //14
		goto 65.8,54.1
		.' Be on the lookout for the giant Fel Reaver
		.kill 1 Dreadcaller|q 10142/1
		.kill 4 Flamewaker Imp|q 10142/2
		.kill 6 Infernal Warbringer|q 10142/3
	step //15
		goto 61.7,60.8
		.talk Sergeant Altumus##19309
		..turnin The Path of Anguish##10142
		..accept Expedition Point##10143
	step //16
		goto 51.2,60
		.talk Dumphry##21209
		..turnin Waste Not, Want Not##10055
		..accept Laying Waste to the Unwanted##10078
	step //17
		goto 50.9,60.2
		.talk Lieutenant Amadi##16820
		..turnin Fel Orc Scavengers##10482
		..accept Ill Omens##10483
	step //18
		goto 71.3,62.8
		.talk Forward Commander Kingston##19310
		..turnin Expedition Point##10143
		..accept Disrupt Their Reinforcements##10144
	step //19
		goto 72.0,59.6
		.kill the demons here|n
		.collect 4 Demonic Rune Stone##28513|q 10144
	step //20
		goto 71.4,55.2
		.' Stand inside the portal and click it to destroy it|goal Disrupt Portal Grimh|q 10144/1
	step //21
		goto 71.7,56.4
		.kill the demons here|n
		.collect 4 Demonic Rune Stone##28513|q 10144
	step //22
		goto 72.7,59
		.' Stand inside the portal and click it to destroy it|goal Disrupt Portal Kaalez|q 10144/2 |tip If you're unable to click to destroy, relog.
	step //23
		goto 71.3,62.8
		.talk Forward Commander Kingston##19310
		..turnin Disrupt Their Reinforcements##10144
		..accept Mission: The Murketh and Shaadraz Gateways##10146
	step //24
		goto 71.3,62.8
		.talk Wing Commander Dabir'ee##19409
		..'Take the flight
		..'Click the bomb in your bags, bomb Gateway Shaadraz|goal Gateway Shaadraz Destroyed|q 10146/2|use Seaforium PU-36 Explosive Nether Modulator##28038
		..'Click the bomb in your bags, bomb Gateway Murketh|goal Gateway Murketh Destroyed|q 10146/1|use Seaforium PU-36 Explosive Nether Modulator##28038
	step //25
		goto 71.4,62.7
		.talk Forward Commander Kingston##19310
		..turnin Mission: The Murketh and Shaadraz Gateways##10146
		..accept Shatter Point##10340
	step //26
		goto 71.4,62.5
		.talk Wing Commander Dabir'ee##19409
		..'Fly to Shatter Point|goto Hellfire Peninsula,78.5,35.1,1|noway|c
	step //27
		goto 78.4,34.9
		.talk Runetog Wildhammer##20234
		..fpath Shatter Point
	step //28
		goto 78.4,34.9
		.talk Runetog Wildhammer##20234
		..turnin Shatter Point##10340
		..accept Wing Commander Gryphongar##10344
	step //29
		goto 79.3,33.9
		.talk Wing Commander Gryphongar##20232
		..turnin Wing Commander Gryphongar##10344
		..accept Mission: The Abyssal Shelf##10163
	step //30
		goto 78.3,34.5
		.talk Gryphoneer Windbellow##20235
		.' Take a flight to the Abyssal Shelf
		.' Use the Area 52 Special bomb in your bags to bomb the mobs|use Area 52 Special##28132|tip If you don't complete this in the first run, you can keep flying until it's done.
		..kill 20 Gan'arg Peon|q 10163/1
		..kill 5 Mo'arg Overseer|q 10163/2
		..'Destroy 5 Fel Cannons|goal 5 Fel Cannon Destroyed|q 10163/3
	step //31
		goto 79.3,33.9
		.talk Wing Commander Gryphongar##20232
		..turnin Mission: The Abyssal Shelf##10163
		..accept Go to the Front##10382
	step //32
		goto 78.3,34.5|n
		.talk Gryphoneer Windbellow|tip Right next to an Armored Gryphon Destroyer.
		..'Fly to Honor Point|goto Hellfire Peninsula,68.7,28.2,1|noway|c
	step //33
		goto 68.3,28.6
		.talk Field Marshal Brock##20793
		..turnin Go to the Front##10382
	step //34
		'Hearth to Honor Hold|goto Hellfire Peninsula,55.7,63.3,5|use Hearthstone##6948|noway|c
	step //35
		goto 54.3,63.4
		.talk Father Malgor Devidicus##16825
		..accept An Old Gift##10058
		.talk Sid Limbardi##16826
		..accept The Longbeards##9558
	step //36
		goto 56.7,66.5
		.talk Warp-Scryer Kryv##16839
		..accept The Path of Glory##10047
	step //37
		goto 50.9,60.2
		.talk Honor Guard Wesilow##16827
		..accept Unyielding Souls##10050
	step //38
		goto 52,62.6
		.talk Foreman Biggums##16837
		..accept A Job for an Intelligent Man##9355
		..accept When This Mine's a-Rockin'##10079
	step //39
		'Go inside the cave to 54.9,62.9|goto 54.9,62.9
		.kill 12 Gan'arg Sapper|q 10079/1
	step //40
		'Go outside the cave to 52,62.6|goto 52,62.6
		.talk Foreman Biggums##16837
		..turnin When This Mine's a-Rockin'##10079
		..accept The Mastermind##10099
	step //41
		'Go inside the cave to 56.3,61.4|goto 56.3,61.4
		.kill Z'kral|q 10099/1|tip He is all the way at the bottom of the cave way in the back of the big room.
	step //42
		'Go outside the cave to 52,62.6|goto 52,62.6
		.talk Foreman Biggums##16837
		..turnin The Mastermind##10099
	step //43
		goto 66.1,48.8
		.' Click the Trampled Skeletons|tip They look like little brown ribcages and spines.  You will find them on the grey road.  They are very easy to miss, but once you find one you will find them really fast.
		.' Cleanse 8 Trampled Skeletons|goal 8 Cleanse Trampled Skeleton|q 10047/1
	step //44
		goto 58.7,47
		.' Use your Flaming Torch on the Eastern Thrower to burn it|goal Eastern Thrower Burned|q 10078/1|use Flaming Torch##26002|tip It's a big catapult.
	step //45
		goto 55.9,46.7
		.' Use your Flaming Torch on the Central Eastern Thrower to burn it|goal Central Eastern Thrower Burned|q 10078/2|use Flaming Torch##26002|tip It's a big catapult.
	step //46
		goto 53.5,47.2
		.' Use your Flaming Torch on the Central Western Thrower to burn it|goal Central Western Thrower Burned|q 10078/3|use Flaming Torch##26002|tip It's a big catapult.
	step //47
		goto 52.8,47.1
		.' Use your Flaming Torch on the Western Thrower to burn it|goal Western Thrower Burned|q 10078/4|use Flaming Torch##26002|tip It's a big catapult.
	step //48
		goto 65.8,67.2
		.kill Bleeding Hollow orcs|n
		.get Cursed Talisman|q 10483/1
	step //49
		goto 71,63.4
		.talk Corporal Ironridge##21133
		..turnin Ill Omens##10483
		..accept Cursed Talismans##10484
	step //50
		goto 55,86.8
		.' Click the small book|tip It's a small white book laying on the steps of the house.
		.get Mysteries of the Light|q 10058/1
	step //51
		goto 58,79
		.kill 10 Unyielding Sorcerer|q 10050/2
		.kill 5 Unyielding Knight|q 10050/3
		.kill 12 Unyielding Footman|q 10050/1
	step //52
		goto 49.2,74.8
		.talk "Screaming" Screed Luckheed##19367
		..accept In Case of Emergency...##10161
		.talk Legassi##19344
		..accept Ravager Egg Roundup##9349
	step //53
		goto 41.2,84.4
		.' Click Ravenger Eggs|tip They look like big white eggs on the ground around this area.
		.kill Razorfury Ravagers|n
		.get 12 Ravager Egg|q 9349/1
	step //54
		goto 49.2,74.8
		.talk Legassi##19344
		..turnin Ravager Egg Roundup##9349
		..accept Helboar, the Other White Meat##9361
	step //55
		goto 50.2,74.8
		.kill Helboars|n
		.get Tainted Helboar Meat|n
		.' Use your Purification Mixture on the Tainted Helboar Meat|use Purification Mixture##23268|tip The meat won't become purified every time, it can become toxic as well.
		.get 8 Purified Helboar Meat|q 9361/1
	step //56
		goto 49.2,74.8
		.talk Legassi##19344
		..turnin Helboar, the Other White Meat##9361
		..accept Smooth as Butter##9356
	step //57
		goto 58.1,71.3
		.kill vultures|n
		.get 12 Plump Buzzard Wing|q 9356/1
		.get 30 Zeppelin Debris|q 10161/1|tip They look like scraps of metal all over the ground.
	step //58
		goto 49.2,74.8
		.talk "Screaming" Screed Luckheed##19367
		..turnin In Case of Emergency...##10161
		..accept Voidwalkers Gone Wild##9351
		.talk Legassi##19344
		..turnin Smooth as Butter##9356
	step //59
		goto 47.8,65.8
		.kill 15 Marauding Crust Burster|q 9355/1|tip They are under the jumping piles of rocks, they come up to fight when you get close to the jumping rocks.
		.kill Marauding Crustbusters|n
		.get Eroded Leather Case|n
		.' Click the Eroded Leather Case|use Eroded Leather Case##23338
		..accept Missing Missive##9373
	step //60
		goto 52,62.6
		.talk Foreman Biggums##16837
		..turnin A Job for an Intelligent Man##9355
	step //61
		goto 51.2,60
		.talk Dumphry##21209
		..turnin Laying Waste to the Unwanted##10078
	step //62
		goto 50.9,60.2
		.talk Honor Guard Wesilow##16827
		..turnin Unyielding Souls##10050
		..accept Looking to the Leadership##10057
	step //63
		goto 54.3,63.4
		.talk Father Malgor Devidicus##16825
		..turnin An Old Gift##10058
	step //64
		goto 56.7,66.5
		.talk Warp-Scryer Kryv##16839
		..turnin The Path of Glory##10047
		..accept The Temple of Telhamat##10093
	step //65
		goto 23.1,40.3
		.talk Anchorite Obadei##16834
		..accept In Search of Sedai##9390
		.talk Ikan##16799
		..accept Cruel Taskmasters##9399
	step //66
		goto 23.4,39.7
		.talk Scout Vanura##16797
		..accept Deadly Predators##9398
	step //67
		goto 23.4,36.5
		.talk Amaan the Wise##16796
		..turnin The Temple of Telhamat##10093
		..accept The Pools of Aggonar##9426
	step //68
		home Temple of Telhamat
	step //69
		goto 25.2,37.2
		.talk Kuma##18785
		..fpath Temple of Telhamat
	step //70
		goto 26.9,37.4
		.' Click Sedai's Corpse|tip Right down the hill from the Temple of Telhamat Flight Path.
		..turnin In Search of Sedai##9390
		..accept Return to Obadei##9423
	step //71
		goto 23.1,40.3
		.talk Anchorite Obadei##16834
		..turnin Return to Obadei##9423
		.talk Makuru##16833
		..accept Makuru's Vengeance##9424
	step //72
		ding 61
	step //73
		goto 34.6,34.7
		.kill Mag'har Grunts and Debilitated Mag'har Grunts|n
		.get 10 Mag'har Ancestral Beads|q 9424/1
	step //74
		goto 38.9,29.1
		.kill 6 Terrorfiend|q 9426/1
		.kill 6 Blistering Rot|q 9426/2
	step //75
		goto 23.1,40.3
		.talk Makuru##16833
		..turnin Makuru's Vengeance##9424
		.talk Anchorite Obadei##16834
		..accept Atonement##9543
	step //76
		goto 23.4,36.5
		.talk Amaan the Wise##16796
		..turnin Atonement##9543
		..accept Sha'naar Relics##9430
		..turnin The Pools of Aggonar##9426
		..accept Cleansing the Waters##9427
		..accept Helping the Cenarion Post##10443
	step //77
		goto 23.2,36.7
		.talk Elsaana##17006
		..accept An Ambitious Plan##9383
	step //78
		goto 40.3,30.9
		.' Get close to the ribcage of the skeleton and next to the poisoned water
		.' Empty your Cleansing Vial in this spot|use Cleansing Vial##23361
		.' Kill Aggonis|goal Aggonar's Presence Cleansed|q 9427/1
	step //79
		goto 23.4,36.5
		.talk Amaan the Wise##16796
		..turnin Cleansing the Waters##9427
	step //80
		goto 15.7,52
		.talk Thiah Redmane##16991
		..turnin Missing Missive##9373
		..turnin Helping the Cenarion Post##10443
		..accept Demonic Contamination##9372
	step //81
		goto 18.4,54.7
		.kill Hulking Helboars|n
		.get 6 Helboar Blood Sample|q 9372/1
	step //82
		goto 15.7,52
		.talk Thiah Redmane##16991
		..turnin Demonic Contamination##9372
		..accept Testing the Antidote##10255
	step //83
		goto 25,54
		.' Use the Cenarion Antidote on a Hulking Helboar|use Cenarion Antidote##23337
		.' Administer the Antidote|goal Administer Antidote|q 10255/1
	step //84
		goto 15.7,52
		.talk Thiah Redmane##16991
		..turnin Testing the Antidote##10255
	step //85
		goto 15.1,55.7
		.kill 4 Illidari Taskmaster|q 9399/1|tip If you kill the taskmaster first, his friends leave you alone.
		.get 10 Sha'naar Relic|q 9430/1|tip The Sha'naar Relics look like little blue vases on the ground.
	step //86
		goto 15.6,58.8
		.talk Akoru the Firecaller##20678
		..accept Naladu##10403
	step //87
		goto 16.3,65.1
		.talk Naladu##19361
		..turnin Naladu##10403
		..accept A Traitor Among Us##10367
	step //88
		goto 14.3,63.5
		.' Click the metal coffer on the floor in the big red hut
		.get Sha'naar Key|q 10367/1
	step //89
		goto 16.3,65.1
		.talk Naladu##19361
		..turnin A Traitor Among Us##10367
		..accept The Dreghood Elders##10368
	step //90
		goto 15.6,58.8
		.talk Akoru the Firecaller##20678
		..' Free Akoru the Firecaller|goal Akoru Freed|q 10368/2
	step //91
		goto 13,58.4
		.talk Aylaan the Waterwaker##20679
		..' Free Aylaan the Waterwaker|goal Aylaan Freed|q 10368/3
	step //92
		goto 13.1,61
		.talk Morod the Windstirrer##20677
		..' Free Morod the Windstirrer|goal Morod Freed|q 10368/1
	step //93
		goto 16.3,65.1
		.talk Naladu##19361
		..turnin The Dreghood Elders##10368
		..accept Arzeth's Demise##10369
	step //94
		goto 14.4,62.3
		.' Wait until Arzeth the Merciless is up top of the stairs by himself
		.' Use the Staff of the Dreghood Elders on Arzeth the Merciless|use Staff of the Dreghood Elders##29513
		.kill Arzeth the Powerless|q 10369/1
	step //95
		goto 16.3,65.1
		.talk Naladu##19361
		..turnin Arzeth's Demise##10369
	step //96
		goto 24,72.1
		.talk Gremni Longbeard##16850
		..turnin The Longbeards##9558
		..accept The Arakkoa Threat##9417
		..accept Rampaging Ravagers##9385
		.talk Mirren Longbeard##16851
		..accept Gaining Mirren's Trust##9563
		..turnin Gaining Mirren's Trust##9563
		..accept The Finest Down##9420
	step //97
		goto 25.6,70.3
		.kill 4 Haal'eshi Windwalker|q 9417/1
		.kill 6 Haal'eshi Talonguard|q 9417/2
		.' Click the Kaliri nests and kill Kaliri birds|tip The nests look like little brown nests with pink eggs in them.
		.get 8 Kaliri Feather|q 9420/1
	step //98
		goto 26.1,77.1|n
		.' The path up to Avruu starts here|goto Hellfire Peninsula,26.1,77.1,0.5|noway|c
	step //99
		goto 25.7,75.1
		.from Avruu##17084
		.get Avruu's Orb|n
		.' Click Avruu's Orb|use Avruu's Orb##23580
		..accept Avruu's Orb##9418
	step //100
		goto 29,81.5
		.' Click the Haal'eshi Altar|tip It looks like an orb sitting in a claw thing, right in front of a big purple hut.
		.' Fight Aeranas until he's almost dead
		.talk Aeranas##17085
		..turnin Avruu's Orb##9418
	step //101
		goto 24,72.1
		.talk Gremni Longbeard##16850
		..turnin The Arakkoa Threat##9417
		.talk Mirren Longbeard##16851
		..turnin The Finest Down##9420
	step //102
		goto 23.7,69.2
		.kill 10 Quillfang Ravager|q 9385/1
	step //103
		goto 24,72.1
		.talk Gremni Longbeard##16850
		..turnin Rampaging Ravagers##9385
	step //104
		goto 26.9,69.5
		.kill 8 Stonescythe Whelp|q 9398/2
	step //105
		goto 32.1,59.3
		.kill 4 Stonescythe Alpha|q 9398/1
		.' You can find 2 more Stonescythe Alphas at 33.7,62.1|n
	step //106
		goto 49.5,81.8
		.kill voidwalkers|n
		.get 10 Condensed Voidwalker Essence|q 9351/1
		.' Use your Sanctified Crystal on an Uncontrolled Voidwalker when it's almost dead|use Sanctified Crystal##23417
		.' Click the red floating crystal over its corpse
		.get Glowing Sanctified Crystal|q 9383/1
	step //107
		goto 53.6,81.1
		.kill Arch Mage Xintor|q 10057/1|tip Near a bunch of practice fighting dummies.
	step //108
		goto 54.7,83.7
		.kill Lieutenant Commander Thalvos|q 10057/2|tip Walking around on a black platform thing. He's a blue ghost dwarf.
	step //109
		goto 49.2,74.8
		.talk "Screaming" Screed Luckheed##19367
		..turnin Voidwalkers Gone Wild##9351
	step //110
		'Hearth to the Temple of Telhamat|goto Hellfire Peninsula,23.4,37.2,3|use Hearthstone##6948|noway|c
	step //111
		goto 23.4,36.5
		.talk Amaan the Wise##16796
		..turnin Sha'naar Relics##9430
		..accept The Seer's Relic##9545
		.talk Elsaana##17006
		..turnin An Ambitious Plan##9383
	step //112
		goto 23.4,39.7
		.talk Scout Vanura##16797
		..turnin Deadly Predators##9398
	step //113
		goto 23.1,40.3
		.talk Ikan##16799
		..turnin Cruel Taskmasters##9399
	step //114
		goto 26.9,37.4
		.' Use the Seer's Relic on Sedai's Corpse|use Seer's Relic##23645|tip Right down the hill from the Temple of Telhamat Flight Path.
		.' See the vision|goal Vision Granted|q 9545/1
	step //115
		goto 23.4,36.5
		.talk Amaan the Wise##16796
		..turnin The Seer's Relic##9545
	step //116
		ding 62
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Levels (62-64)",[[
	author support@zygorguides.com
	next Zygor's Alliance Leveling Guides\\Levels (64-66)
	startlevel 62
	step //1
		'Fly to Honor Hold|goto Hellfire Peninsula,54.6,62.6,0.5|noway|c
	step //2
		goto 50.9,60.2
		.talk Honor Guard Wesilow##16827
		..turnin Looking to the Leadership##10057
	step //3
		goto 64.2,71.8
		.kill Bleeding Hollow Orcs|n
		.get 12 Cursed Talisman|q 10484/1
	step //4
		goto 71,63.4
		.talk Corporal Ironridge##21133
		..turnin Cursed Talismans##10484
		..accept Warlord of the Bleeding Hollow##10485
	step //5
		goto 71.3,62.8
		.talk Wing Commander Dabir'ee##19409
		..accept Zeth'Gor Must Burn!##10895
	step //6
		goto 70.1,69.1
		.' Use your Smoke Beacon under the tower|use Smoke Beacon##31739
		.' Mark the Forge Tower|goal Forge Tower Marked|q 10895/3
	step //7
		goto 70.9,71.3
		.' Use your Smoke Beacon under the tower|use Smoke Beacon##31739
		.' Mark the Foothill Tower|goal Foothill Tower Marked|q 10895/4
	step //8
		goto 70.1,76.9
		.from Warlord Morkh##16964
		.get Morkh's Shattered Armor|q 10485/1
	step //9
		goto 66.4,76.6
		.' Use your Smoke Beacon under the tower|use Smoke Beacon##31739
		.' Mark the Southern Tower|goal Southern Tower Marked|q 10895/2
	step //10
		goto 67.9,67
		.' Use your Smoke Beacon under the tower|use Smoke Beacon##31739
		.' Mark the Northern Tower|goal Northern Tower Marked|q 10895/1
	step //11
		goto 71,63.4
		.talk Corporal Ironridge##21133
		..turnin Warlord of the Bleeding Hollow##10485
		..accept Return to Honor Hold##10903
	step //12
		goto 71.3,62.8
		.talk Wing Commander Dabir'ee##19409
		..turnin Zeth'Gor Must Burn!##10895
	step //13
		goto 54.3,63.6
		.talk Assistant Klatu##22430
		..turnin Return to Honor Hold##10903
		..accept Fel Spirits##10909
		..accept Digging for Prayer Beads##10916
	step //14
		'Go outside and behind the inn to 54.2,63.3|goto 54.2,63.3
		.' Click Fei Fei's Cache|tip It's a small mound of dirt behind the inn.
		.get Draenei Prayer Beads|q 10916/1
	step //15
		goto 45,75
		.' Use the Anchorite Relic in your bags|use Anchorite Relic##31772
		.' Pull orcs to the relic
		.' Kill the orcs and a Fel Spirit will spawn
		.' Kill 10 Fel Spirits|goal 10 Jules Avenged|q 10909/1
	step //16
		goto 54.3,63.6
		.talk Assistant Klatu##22430
		..turnin Fel Spirits##10909
		..turnin Digging for Prayer Beads##10916
		..accept The Exorcism of Colonel Jules##10935
	step //17
		goto 54.0,63.5
		.talk Anchorite Barada##22431
		..'Click 'I am ready...'
		..'Target the purple skulls and oozes
		..'Use the Ritual Prayer Beads when enemies are in the room|use Ritual Prayer Beads##31828
		..'After the exorcism is done, talk Colonel Jules on the bed to save him|goal Colonel Jules Saved|q 10935/1
	step //18
		goto 54.3,63.6
		.talk Assistant Klatu##22430
		..turnin The Exorcism of Colonel Jules##10935
		..accept Trollbane is Looking for You##10936
	step //19
		goto 56.6,66.7
		.talk Force Commander Danath Trollbane##16819
		..turnin Trollbane is Looking for You##10936
	step //20
		'Hearth to the Temple of Telhamat|goto Hellfire Peninsula,23.4,36.4,0.5|use Hearthstone##6948|noway|c
	step //21
		goto 15.7,52
		.talk Amythiel Mistwalker##16885
		..accept The Cenarion Expedition##9912
		.talk Mahuram Stouthoof##16888
		..accept Keep Thornfang Hill Clear!##10159
	step //22
		goto 12.3,49.9
		.kill 8 Thornfang Ravager|q 10159/1
		.kill 8 Thornfang Venomspitter|q 10159/2
	step //23
		goto 15.7,52
		.talk Mahuram Stouthoof##16888
		..turnin Keep Thornfang Hill Clear!##10159
	step //24
		'Go northwest to Zangarmarsh|goto Zangarmarsh|noway|c
	step //25
		goto Zangarmarsh,80.4,64.2
		.talk Ikeyen##17956
		..accept The Umbrafen Tribe##9747
	step //26
		goto 78.4,62
		.talk Ysiel Windsinger##17841
		..turnin The Cenarion Expedition##9912
		..accept Warden Hamoot##9778
		..accept Disturbance at Umbrafen Lake##9716
	step //27
		goto 79.1,65.3
		.talk Warden Hamoot##17858
		..turnin Warden Hamoot##9778
		..accept A Warm Welcome##9728
	step //28
		goto 78.5,63.1
		.talk Lethyn Moonfire##17834
		..accept The Dying Balance##9895
	step //29
		goto 80.1,73.3
		.kill Boglash|q 9895/1|tip I found Boglash here. He is a tall alien looking thing with really long legs. He walks around in the water, so some searching may be necessary.
		.kill Boglash and Fen Striders|n|tip It's easier if you just run around in the water all around the east part of Zangarmarsh.
		.collect 6 Fertile Spores##24449|q 9806/1|future
		.kill all mobs in this area|n
		.collect 10 Unidentified Plant Parts|q 9802/1|future
	step //30
		goto 78.5,63.1
		.talk Lethyn Moonfire##17834
		..turnin The Dying Balance##9895
	step //31
		goto 85.3,90.9
		.kill Kataru|q 9747/1|tip In the big building, all the way at the top.
	step //32
		goto 84.8,84.4
		.kill 6 Umbrafen Oracle|q 9747/2
		.kill 8 Umbrafen Seer|q 9747/3
		.kill 6 Umbrafen Witchdoctor|q 9747/4
	step //33
		goto 83.4,85.5
		.talk Kayra Longmane##17969
		..accept Escape from Umbrafen##9752
		..'Escort Kayra Longmane|goal Escort Kayra Longmane to safety|q 9752/1
	step //34
		goto 80.4,64.2
		.talk Ikeyen##17956
		..turnin The Umbrafen Tribe##9747
		..accept A Damp, Dark Place##9788
		.talk Lauranna Thar'well##17909
		..accept Saving the Sporeloks##10096
	step //35
		goto 80.4,64.7
		.talk Windcaller Blackhoof##18070
		..accept Safeguarding the Watchers##9894
	step //36
		goto 78.4,62
		.talk Ysiel Windsinger##17841
		..turnin Escape from Umbrafen##9752
	step //37
		goto 74.7,91.6|n
		.' The path to 'Ikeyen's Belongings' starts here|goto Zangarmarsh,74.7,91.6,0.3|noway|c
	step //38
		'Go southwest inside the cave to 70.5,97.9|goto 70.5,97.9
		.' Head right as you enter the cave.
		.' Defeat the creatures in the cave as you go.
		.kill 10 Marsh Lurker|q 10096/2|n
		.kill 10 Marsh Dredger|q 10096/1|n
		.' Click Ikeyen's Belongings|tip A little tan metal chest sitting on a beg flat rock.
		.get Ikeyen's Belongings|q 9788/1
	step //39
		'Go northeast inside the cave to 72.5,94.0|goto 72.5,94.0
		.kill Lord Klaq|q 9894/1|tip On the bottom level of the cave, in the small round room all the way in the back.
	step //40
		goto 75.7,90.2
		.' There should be exactly enough if you do a full loop around to the boss and leave back out to the left.
		.kill 10 Marsh Lurker|q 10096/2
		.kill 10 Marsh Dredger|q 10096/1
	step //41
		goto 70.9,82.1
		.' Stand here to Investigate Umbrafen Lake|goal Umbrafen Lake Investigated|q 9716/1
		.kill nagas|n
		.get 30 Naga Claws|q 9728/1
	step //42
		goto 80.4,64.7
		.talk Windcaller Blackhoof##18070
		..turnin Safeguarding the Watchers##9894
	step //43
		goto 80.4,64.2
		.talk Ikeyen##17956
		..turnin A Damp, Dark Place##9788
	step //44
		goto 80.4,64.2
		.' Return to Nagas and grind Cenarion Expedition rep, until friendly. |condition rep('Cenarion Expedition')>=Friendly
		.talk Lauranna Thar'well##17909
		..turnin Saving the Sporeloks##10096
		.' You should have 10 Unidentified Plant Parts by now..
		.' If not, continue killing random Zangarmarsh creatures until you have at least 10.
		..accept Plants of Zangarmarsh##9802
		.get 10 Unidentified Plant Parts|q 9802/1
		..turnin Plants of Zangarmarsh##9802
	step //45
		goto 79.1,65.3
		.talk Warden Hamoot##17858
		..turnin A Warm Welcome##9728
	step //46
		goto 80.4,64.7
		.talk Windcaller Blackhoof##18070
		..accept Blessings of the Ancients##9785
	step //47
		goto 78.5,63.1
		.talk Lethyn Moonfire##17834
		..accept Watcher Leesa'oh##9697
		..accept What's Wrong at Cenarion Thicket?##9957
	step //48
		goto 78.4,62
		.talk Ysiel Windsinger##17841
		..turnin Disturbance at Umbrafen Lake##9716
		..accept As the Crow Flies##9718
		..'Use the Stormcrow Amulet in your bags|use Stormcrow Amulet##25465
		..'Watch yourself fly as a crow
		.talk Ysiel Windsinger##17841
		..turnin As the Crow Flies##9718
		..accept Balance Must Be Preserved##9720
	step //49
		goto 78.1,63.8
		.talk Keleth##17901
		.'Get the Mark of War|goal Mark of War|q 9785/2
	step //50
		goto 81.1,63.9
		.talk Ashyen##17900
		.'Get the Mark of Lore|goal Mark of Lore|q 9785/1
	step //51
		goto 80.4,64.7
		.talk Windcaller Blackhoof##18070
		..turnin Blessings of the Ancients##9785
	step //52
		goto 70.6,80.3
		.' Use your Ironvine Seeds on the Umbrafen Lake Pump Controls|use Ironvine Seeds##24355|tip The pump controls look like a little box with some levers on it.
		.' Disable the Umbrafen Lake Pump Controls|goal Umbrafen Lake Controls Disabled|q 9720/1
	step //53
		goto 63.1,64.1
		.' Use your Ironvine Seeds on the Lagoon Pump Controls|use Ironvine Seeds##24355|tip The pump controls look like a little box with some levers on it.
		.' Disable the Lagoon Pump Controls|goal Lagoon Controls Disabled|q 9720/4
	step //54
		'Go northeast to Telredor|goto Zangarmarsh,68.3,49.2,2|noway|c
	step //55
		'Ride the elevator up into Telredor and go to 68.3,50.1|goto 68.3,50.1
		.talk Vindicator Idaar##18004
		..accept The Fate of Tuurem##9793
		..accept The Dead Mire##9782
	step //56
		goto 68.2,49.4
		.talk Anchorite Ahuurn##18003
		..accept The Orebor Harborage##9776
		..accept The Boha'mu Ruins##9786
	step //57
		goto 68.6,49.4
		.talk Prospector Conall##18295
		..accept Unfinished Business##9901
	step //58
		goto 68.6,48.7
		.talk Ruam##18007
		..accept Fulgor Spores##9777
	step //59
		goto 67.7,48
		.talk Haalrun##18005
		..accept Too Many Mouths to Feed##9781
		.talk Noraani##18006
		..accept Menacing Marshfangs##9791
	step //60
		goto 67.8,51.5
		.talk Munci##18788
		..fpath Telredor
	step //61
		goto 71.3,46.9
		.' Click the little green glowing mushrooms around this area
		.get 6 Fulgor Spore|q 9777/1
	step //62
		goto 73.2,41.5
		.kill 10 Marshfang Ripper|q 9791/1
	step //63
		goto 77.2,45.9
		.kill Sporewing|q 9901/1|tip He looks like a Sporebat.
	step //64
		goto 80.7,43.4
		.' Click the Dead Mire Soil mound
		.get Dead Mire Soil Sample|q 9782/1
	step //65
		goto 68.3,50.1
		.talk Vindicator Idaar##18004
		..turnin The Dead Mire##9782
		..accept An Unnatural Drought##9783
	step //66
		goto 68.6,49.4
		.talk Prospector Conall##18295
		..turnin Unfinished Business##9901
		..accept Blacksting's Bane##9896
	step //67
		goto 68.6,48.7
		.talk Ruam##18007
		..turnin Fulgor Spores##9777
	step //68
		goto 67.7,48
		.talk Noraani##18006
		..turnin Menacing Marshfangs##9791
		..accept Umbrafen Eel Filets##9780
	step //69
		ding 63
	step //70
		goto 78.3,45.2
		.kill 12 Withered Giant|q 9783/1
		.kill Withered Bog Lords|n
		.' Get 6 Bog Lord Tendrils for a later quest|collect 6 Bog Lord Tendril##24291|q 9743/1 |future
		.kill Withered mobs|n
		.get Withered Basidium|n
		.' Click the Withered Basidium|use Withered Basidium##24483
		..accept Withered Basidium##9827
	step //71
		goto 74.2,60.7
		.kill 10 Mire Hydra|q 9781/1
		.kill Umbrafen Eels|n
		.get 8 Eel Filet|q 9780/1
	step //72
		goto 68.3,50.1
		.talk Vindicator Idaar##18004
		..turnin An Unnatural Drought##9783
	step //73
		goto 68.6,48.7
		.talk Ruam##18007
		..turnin Withered Basidium##9827
		..accept Withered Flesh##10355
	step //74
		goto 67.7,48
		.talk Noraani##18006
		..turnin Umbrafen Eel Filets##9780
		.talk Haalrun##18005
		..turnin Too Many Mouths to Feed##9781
		..accept Diaphanous Wings##9790
	step //75
		goto 79.7,70.1
		.kill Umbraglow Stingers|n
		.get 8 Diaphanous Wing|q 9790/1
	step //76
		goto 82.6,43.7
		.kill Parched Hydras|n
		.get 5 Parched Hydra Sample|q 10355/1
		.kill Withered Bog Lords|n
		.get 5 Withered Bog Lord Sample|q 10355/2
	step //77
		goto 68.6,48.7
		.talk Ruam##18007
		..turnin Withered Flesh##10355
	step //78
		goto 67.7,48
		.talk Haalrun##18005
		..turnin Diaphanous Wings##9790
	step //79
		goto 62,40.8
		.' Use your Ironvine Seeds on the Serpent Lake Controls|use Ironvine Seeds##24355|tip The pump controls look like a little box with some levers on it.
		.' Disable the Serpent Lake Controls|goal Serpent Lake Controls Disabled|q 9720/3
		.' Kill Steam Pump Overseers, Bloodscale Overseers, and Bloodscale Wavecallers
		.get Drain Schematics|n
		.' Click the Drain Schematics in your bags|use Drain Schematics##24330
		..accept Drain Schematics##9731
	step //80
		goto 49.5,59.2
		.from Blacksting##18283
		.get Blacksting's Stinger|q 9896/1
	step //81
		goto 44.5,66.1|n
		.' The path up to 'The Boha'mu Ruins' starts here|goto Zangarmarsh,44.5,66.1,0.5|noway|c
	step //82
		goto 44.1,68.8
		.' Explore the Boha'mu Ruins|goal Explore the Boha'mu Ruins|q 9786/1
	step //83
		goto 32.8,59.1
		.from "Count" Ungula##18285
		.get "Count" Ungula's Mandible|n
		.' Click "Count" Ungula's Mandible|use "Count" Ungula's Mandible##25459
		..accept The Count of the Marshes##9911
	step //84
		goto 23.3,66.2
		.talk Watcher Leesa'oh##17831
		..turnin Watcher Leesa'oh##9697
		..accept Observing the Sporelings##9701
		..turnin The Count of the Marshes##9911
	step //86
		goto 14.5,61.6
		.' You must be Friendly with Sporeggar to accept the next quests.|condition rep('Sporeggar')>=Friendly
		.' Gain reputation by killing Starving Fungal Giants and Starving Bog Lords in the nearby area.
		.' Pick up Mature Spore Sacs while grinding reputation.
		.collect 40 Mature Spore Sac##24290|q 9739|tip They look like pink balls tied to a little string bobbing on the ground.  You need 30 extra to turn in for Sporeggar reputation, so you can accept quests. |future
	step //85
		goto 19.1,63.9
		.talk Fahssn##17923
		..accept The Sporelings' Plight##9739
		..accept Natural Enemies##9743
		..turnin Natural Enemies##9743
	step //87
		goto 13.6,59.8
		.' Go here to Investigate the Spawning Glen|goal Investigate the Spawning Glen|q 9701/1
	step //88
		goto 19.1,63.9
		.talk Fahssn##17923
		..turnin The Sporelings' Plight##9739
		..'Turn in all your Mature Spore Sacs
		..'Turn in all your Bog Lord Tendrils
		..accept Sporeggar##9919
	step //89
		goto 23.3,66.2
		.talk Watcher Leesa'oh##17831
		..turnin Observing the Sporelings##9701
		..accept A Question of Gluttony##9702
	step //90
		goto 27,63.3
		.' Click the Discarded Nutriments|tip They look like green glowing mushroom stalks on the ground.
		.get 10 Discarded Nutriment|q 9702/1
	step //91
		goto 23.3,66.2
		.talk Watcher Leesa'oh##17831
		..turnin A Question of Gluttony##9702
		..accept Familiar Fungi##9708
	step //92
		goto 19.7,52.1
		.talk Msshi'fn##17924
		..turnin Sporeggar##9919
	step //93
		goto 19.5,50
		.talk Gzhun'tt##17856
		..accept Now That We're Friends...##9726
	step //94
		goto 19.2,49.4
		.talk Gshaff##17925
		..accept Fertile Spores##9806
		..turnin Fertile Spores##9806
	step //95
		goto 25.4,42.9
		.' Use your Ironvine Seeds on the Marshlight Lake Pump Controls|use Ironvine Seeds##24355|tip The pump controls look like a little box with some levers on it.
		.' Disable the Marshlight Lake Pump Controls|goal Marshlight Lake Controls Disabled|q 9720/2
	step //96
		goto 26.8,43
		.kill 12 Bloodscale Slavedriver|q 9726/1
		.kill 6 Bloodscale Enchantress|q 9726/2
	step //97
		goto 19.5,50
		.talk Gzhun'tt##17856
		..turnin Now That We're Friends...##9726
	step //98
		goto 41.3,29
		.talk Halu##22485
		..fpath Orebor Harborage
	step //99
		goto 41.2,28.7
		.talk Timothy Daniels##18019
		..accept Secrets of the Daggerfen##9848
	step //100
		goto 41.7,27.3
		.' Click the Wanted Poster|tip On a pink crystal post.
		..accept Wanted: Chieftain Mummaki##10116
	step //101
		goto 41.9,27.2
		.talk Ikuti##18008
		..turnin The Orebor Harborage##9776
		..accept Ango'rosh Encroachment##9835
		..accept Daggerfen Deviance##10115
	step //102
		goto 26.4,22.8
		.' Click the Daggerfen Poison Vial|tip Little clear bottle with white liquid in it, sitting on the ground next to a hut.
		.get Daggerfen Poison Vial|q 9848/2
	step //103
		goto 24.4,27
		.' Click the Daggerfen Poison Manual|tip At the top of the big tower, to the right as you reach the top, on the floor.
		.get Daggerfen Poison Manual|q 9848/1
	step //104
		goto 23.8,26.8
		.from Chieftain Mummaki##19174
		.get Chieftain Mummaki's Totem|q 10116/1
	step //105
		goto 28.2,22.1
		.kill 3 Daggerfen Assassin|q 10115/1
		.kill 15 Daggerfen Muckdweller|q 10115/2
	step //106
		goto 29.6,28.3
		.kill 5 Ango'rosh Shaman|q 9835/1
		.kill 10 Ango'rosh Ogre|q 9835/2
		.get 15 Mushroom Sample|q 9708/1
	step //107
		goto 41.2,28.7
		.talk Timothy Daniels##18019
		..turnin Secrets of the Daggerfen##9848
	step //108
		goto 41.9,27.2
		.talk Ikuti##18008
		..turnin Ango'rosh Encroachment##9835
		..accept Overlord Gorefist##9839
		..turnin Wanted: Chieftain Mummaki##10116
		..turnin Daggerfen Deviance##10115
	step //109
		home Orebor Harborage
	step //110
		goto 41.6,27.3
		.talk Maktu##18010
		..accept Natural Armor##9834
	step //111
		goto 40.8,28.7
		.talk Puluu##18009
		..accept Stinger Venom##9830
		..accept Lines of Communication##9833
		..accept The Terror of Marshlight Lake##9902
	step //112
		goto 48.1,38.4
		.kill Fenclaw Thrashers|n
		.get 8 Fenclaw Hide|q 9834/1
	step //113
		goto 50.4,40.8
		.' Locate the drain in Serpent Lake|q 9731/1|tip Swim straight down at this spot.
	step //114
		goto 35.9,58.6
		.kill 12 Marshfang Slicer|q 9833/1
	step //115
		goto 23.3,66.2
		.talk Watcher Leesa'oh##17831
		..turnin Familiar Fungi##9708
		..accept Stealing Back the Mushrooms##9709
	step //116
		goto 22.4,46.1
		.kill Terrorclaw|q 9902/1|tip On a little island.
	step //117
		goto 17.3,38.4
		.kill Marshlight Bleeders|n|tip They are all around this area on the land, to the north and south.
		.get 6 Marshlight Bleeder Venom|q 9830/1
		.' You'll be able to find more around 19.6,33.3
	step //118
		goto 17.3,10.2
		.kill 10 Ango'rosh Mauler|q 9839/2
		.' Click the brown crates and kill ogres around this area
		.get 10 Box of Mushrooms|q 9709/1
	step //119
		goto 18.3,7.7
		.kill 1 Overlord Gorefist|q 9839/1|tip Follow the path up the hill. Overlord Gorefist is inside the small house on the left.
	step //120
		goto 40.8,28.7
		.talk Puluu##18009
		..turnin Stinger Venom##9830
		..turnin Lines of Communication##9833
		..turnin The Terror of Marshlight Lake##9902
	step //121
		goto 41.6,27.3
		.talk Maktu##18010
		..turnin Natural Armor##9834
		..accept Maktu's Revenge##9905
	step //122
		goto 41.9,27.2
		.talk Ikuti##18008
		..turnin Overlord Gorefist##9839
	step //123
		ding 64
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Levels (64-66)",[[
	author support@zygorguides.com
	next Zygor's Alliance Leveling Guides\\Levels (66-68)
	startlevel 64
	step //1
		goto Zangarmarsh,42.2,41.4
		.kill Mragesh|q 9905/1|tip He is a big brown hydra underwater.
	step //2
		goto 23.3,66.2
		.talk Watcher Leesa'oh##17831
		..turnin Stealing Back the Mushrooms##9709
		..'Don't follow her when she walks away
	step //3
		goto 41.6,27.3
		.talk Maktu##18010
		..turnin Maktu's Revenge##9905
	step //4
		'Fly to Telredor|goto Zangarmarsh,68.3,49.2,2|noway|c
	step //5
		goto 68.2,49.4
		.talk Anchorite Ahuurn##18003
		..turnin The Boha'mu Ruins##9786
		..accept Idols of the Feralfen##9787
	step //6
		goto 68.6,49.4
		.talk Prospector Conall##18295
		..turnin Blacksting's Bane##9896
	step //7
		goto 49.3,60.6
		.' Click the Feralfen Idols|tip They are small grey and green eagle statues on the ground.
		.get 6 Feralfen Idol|q 9787/1
	step //8
		goto 68.2,49.4
		.talk Anchorite Ahuurn##18003
		..turnin Idols of the Feralfen##9787
		..accept Gathering the Reagents##9801
	step //9
		goto 63.3,52.1
		.kill Spore Bats|n
		.get 4 Sporebat Eye|q 9801/1
		.kill Fen Striders|n
		.get 4 Fen Strider Tentacle|q 9801/2
	step //10
		goto 68.2,49.4
		.talk Anchorite Ahuurn##18003
		..turnin Gathering the Reagents##9801
		..accept Messenger to the Feralfen##9803
	step //11
		goto 44.6,66.1
		.' Drink Ahuurn's Elixir|use Ahuurn's Elixir##24428
		.' Walk up the big steps
		.talk Elder Kuruti##18197
		.' Get Elder Kuruti's Response|goal Elder Kuruti's Response|q 9803/1
	step //12
		goto 68.2,49.4
		.talk Anchorite Ahuurn##18003
		..turnin Messenger to the Feralfen##9803
	step //13
		goto 78.4,62
		.talk Ysiel Windsinger##17841
		..turnin Balance Must Be Preserved##9720
		..turnin Drain Schematics##9731
		..accept Warning the Cenarion Circle##9724
	step //14
		'Go east to Hellfire Peninsula|goto Hellfire Peninsula|noway|c
	step //15
		goto Hellfire Peninsula,15.7,52
		.talk Amythiel Mistwalker##16885
		..turnin Warning the Cenarion Circle##9724
		..accept Return to the Marsh##9732
	step //16
		'Go west to Zangarmarsh|goto Zangarmarsh|noway|c
	step //17
		goto Zangarmarsh,78.4,62
		.talk Ysiel Windsinger##17841
		..turnin Return to the Marsh##9732
	step //18
		'Go south to Terokkar Forest|goto Terokkar Forest|noway|c
	step //19
		'Go south to Shattrath City|goto Shattrath City|noway|c
	step //20
		goto Shattrath City,61.2,12.6
		.talk the Haggard War Veteran##19684
		..accept A'dal##10210
	step //21
		goto 54,44.8
		.talk A'dal##18481
		..turnin A'dal##10210
	step //22.1
		'Go outside, South to Terokkar Forest|goto Terokkar Forest|noway|c
	step //22.2
		goto Terokkar Forest,37.6,51.6
		.talk Kirrik the Awakened##22272
		..accept Speak with Rilak the Redeemed##10908
	step //22.3
		'Go North to Shattrath City|goto Shattrath City|noway|c
	step //23
		goto 54.8,44.3
		.talk Khadgar##18166
		..accept City of Light##10211
		..'Follow the pink voidwalker
	step //24
		'As you follow the pink voidwalker, go to 64.0,15.5||goto 64.0,15.5
		.talk Seth##18653
		..accept Rather Be Fishin'##10037
	step //25
		'As you follow the pink voidwalker, go to 52.6,21.0|goto 52.6,21.0
		.talk Rilak the Redeemed##22292
		..accept The Eyes of Skettis##10847
	step //26
		'Follow the pink voidwalker until the tour is over|goal City of Light|q 10211/1
	step //27
		goto 54.8,44.3
		.talk Khadgar##18166
		..turnin City of Light##10211
		..accept Allegiance to the Aldor##10551 |instant
		..accept Ishanah##10554
	step //28
		'Ride the elevator up to the Aldor Rise|goto Shattrath City,41.7,38.6,0.5|c
	step //29
		goto 30.7,34.6
		.talk Adyen the Lightwarden##18537
		..accept Marks of Kil'jaeden##10325
	step //30
		goto 24,29.7
		.talk Ishanah##18538
		..turnin Ishanah##10554
		..accept Restoring the Light##10021
	step //31
		home Shattrath City
	step //32
		'Go outside to Terokkar Forest|goto Terokkar Forest|noway|c
	step //33
		goto Terokkar Forest,38.6,8.5
		.kill Shimmerscale Eels|n
		.get 8 Pristine Shimmerscale Eel|q 10037/1
	step //34
		goto 44.3,26.3
		.talk Earthbinder Tavgren##18446
		..turnin What's Wrong at Cenarion Thicket?##9957
		..accept Strange Energy##9968
		..accept Clues in the Thicket##9971
	step //35
		goto 45,22.5
		.talk Warden Treelos##18424
		..accept It's Watching You!##9951
	step //36
		goto 45.1,21.8
		.' Examine the Strange Object|goal Strange Object examined|q 9971/1|tip Inside the building, looks like a white ball on the floor next to a dead guy.
	step //37
		goto 44.3,26.3
		.talk Earthbinder Tavgren##18446
		..turnin Clues in the Thicket##9971
	step //38
		goto 43.4,22.1
		.kill Naphthal'ar|q 9951/1|tip At the top of the big tower.
	step //39
		goto 45,22.5
		.talk Warden Treelos##18424
		..turnin It's Watching You!##9951
	step //40
		goto 44.1,23.8
		.kill Vicious Teromoths|n
		.get 4 Vicious Teromoth Sample|q 9968/2
	step //41
		goto 45.8,29.8
		.kill Teromoths|n
		.get 4 Teromoth Sample|q 9968/1
	step //42
		goto 44.3,26.3
		.talk Earthbinder Tavgren##18446
		..turnin Strange Energy##9968
		..accept By Any Means Necessary##9978
	step //43
		goto 47.1,27
		.' Fight Empoor until he's almost dead
		.talk Empoor##18482
		..turnin By Any Means Necessary##9978
		..accept Wind Trader Lathrai##9979
	step //44
		goto 49.2,20.3
		.' Click the Eastern Altar
		.' Purify the Eastern Altar|goal Eastern Altar|q 10021/2
	step //45
		goto 49.9,16.5|n
		.' The path up to the Eye of Veil Reskk starts here|goto Terokkar Forest,49.9,16.5,0.3|noway|c
	step //46
		goto 50.1,19.4
		.' Click the Eye of Veil Reskk|tip Looks like a big white orb at the top of the tower across the hanging bridge.
		.get Eye of Veil Reskk|q 10847/1
	step //47
		goto 50.7,16.6
		.' Click the Northern Altar
		.' Purify the Northern Altar|goal Northern Altar|q 10021/1
	step //48
		goto 48.1,14.5
		.' Click the Western Altar
		.' Purify the Western Altar|goal Western Altar|q 10021/3
	step //49
		goto 57.9,23.2
		.' Click the Eye of Veil Shienor|tip Climb the path inside the other tree, run across the bridge, looks like a big white orb on the ground.
		.get Eye of Veil Shienor|q 10847/2
	step //50
		'Hearth to Shattrath City|goto Shattrath City|use Hearthstone##6948|noway|c
	step //51
		goto Shattrath City,24,29.7
		.talk Ishanah##18538
		..turnin Restoring the Light##10021
	step //52
		goto 52.6,21
		.talk Rilak the Redeemed##22292
		..turnin The Eyes of Skettis##10847
		..accept Seek Out Kirrik##10849
	step //53
		goto 64,15.5
		.talk Seth##18653
		..turnin Rather Be Fishin'##10037
	step //54
		goto 72.2,30.7
		.talk Wind Trader Lathrai##18484
		..turnin Wind Trader Lathrai##9979
		..accept A Personal Favor##10112
	step //55
		'Go outside to Terokkar Forest|goto Terokkar Forest|noway|c
	step //56
		goto Terokkar Forest,37.4,51.5
		.talk Kirrik the Awakened##22272
		..turnin Seek Out Kirrik##10849
		..accept Veil Skith: Darkstone of Terokk##10839
	step //57
		goto 37.7,51.3
		.talk Ethan##22365
		..accept Missing Friends##10852
	step //58
		goto 37.8,49.9
		.talk Mekeda##22370
		..accept Before Darkness Falls##10878
	step //59
		goto 37.9,51.7
		.talk Lakotae##22420
		..accept The Infested Protectors##10896
	step //60
		goto 35.2,48.8
		.kill Infested Root-walkers|n
		.kill the Wood Mites that come out of their corpses|n
		.kill 25 Wood Mite|q 10896/1
		.' You can find more Infested Root-walkers at 39.1,47.0|n
	step //61
		goto 32.2,52.8
		.kill 8 Cabal Skirmisher|q 10878/1
		.kill Cabal orcs|n
		.get 10 Mark of Kil'jaeden|q 10325/1
		.get Cabal Orders|n
		.' Click the Cabal Orders|use Cabal Orders##31707
		..accept Cabal Orders##10880
	step //62
		goto 37.8,49.9
		.talk Mekeda##22370
		..turnin Cabal Orders##10880
		..accept The Shadow Tomb##10881
	step //63
		goto 37.9,51.7
		.talk Lakotae##22420
		..turnin The Infested Protectors##10896
	step //64
		goto 39.4,55.1
		.kill 4 Cabal Spell-weaver|q 10878/2
		.kill 2 Cabal Initiate|q 10878/3
	step //65
		goto 37.8,49.9
		.talk Mekeda##22370
		..turnin Before Darkness Falls##10878
	step //66
		goto 29.7,51.7
		.' Click the Cabal Chest|tip Inside the Shadow Tomb, inside a Cabal Chest in the back left of the room on the ground.
		.get Gavel of K'alen|q 10881/2
	step //67
		goto 32.1,51.2
		.' Click the Cabal Chest|tip Inside the Shadow Tomb, inside a Cabal Chest in the back left of the room on the ground.
		.get Scroll of Atalor|q 10881/3
	step //68
		goto 31.2,46.7
		.' Click the Cabal Chest|tip Inside the Shadow Tomb, inside a Cabal Chest in the back right of the room on the ground.
		.get Drape of Arunen|q 10881/1
	step //69
		'Go outside to 37.8,49.9|goto 37.8,49.9
		.talk Mekeda##22370
		..turnin The Shadow Tomb##10881
	step //70
		goto 32.3,41.7
		.kill arakkoas|n
		.get 5 Lathrai's Stolen Goods|q 10112/1
		.collect 1 Veil Skith Prison Keys##31655|q 10852/1 |tip You'll need up to 8 keys.
		.' Click the yellow cages around this area
		.' Rescue 12 Children|goal 12 Children Rescued|q 10852/1
	step //71
		goto 30.8,42.1
		.' Use the Rod of Purification on the Darkstone of Terokk|use Rod of Purification##31610
		.' Purify the Darkstone of Terokk|goal Attempt to purify the Darkstone of Terrok|q 10839/1
	step //72
		goto Terokkar Forest,37.4,51.5
		.talk Kirrik the Awakened##22272
		..turnin Veil Skith: Darkstone of Terokk##10839
		..accept Veil Rhaze: Unliving Evil##10848
	step //73
		goto 37.7,51.3
		.talk Ethan##22365
		..turnin Missing Friends##10852
	step //74
		goto 30.2,51.1
		.kill 4 Deathtalon Spirit|q 10848/1
		.kill 4 Screeching Spirit|q 10848/2
		.kill 2 Spirit Raven|q 10848/3
	step //75
		goto Terokkar Forest,37.4,51.5
		.talk Kirrik the Awakened##22272
		..turnin Veil Rhaze: Unliving Evil##10848
		..accept Veil Lithic: Preemptive Strike##10861
	step //76
		goto 24.2,70.5
		.' Open the purple glowing, brown eggs on the ground around this area
		.' Redeem 3 Hatchlings|goal 3 Hatchlings Redeemed|q 10861/1
		.kill 3 Malevolent Hatchling|q 10861/2
	step //77
		goto 31,76.1
		.talk Commander Ra'vaj##22446
		..accept An Improper Burial##10913
		.talk Chief Archaeologist Letoll##22458
		..accept Digging Through Bones##10922
		..'Escort the Archaeologists|goal Protect the Explorers|q 10922/1
	step //78
		goto 31,76.1
		.talk Dwarfowitz##22481
		..turnin Digging Through Bones##10922
	step //79
		goto 35,76.5
		.' Use your Sha'tari Torch on corpses|use Sha'tari Torch##31769
		.' Burn 8 Slain Sha'tar Vindicator corpses|goal 8 Slain Sha'tar Vindicator corpse burned|q 10913/1
		.' Burn 8 Slain Auchenai Warrior corpses|goal 8 Slain Auchenai Warrior corpse burned|q 10913/2
	step //80
		goto 31,76.1
		.talk Commander Ra'vaj##22446
		..turnin An Improper Burial##10913
		..accept A Hero Is Needed##10914
	step //81
		goto 36.7,74.4
		.kill 12 Auchenai Initiate|q 10914/1
		.kill 5 Auchenai Doomsayer|q 10914/2
	step //82
		goto 31,76.1
		.talk Commander Ra'vaj##22446
		..turnin A Hero Is Needed##10914
		..accept The Fallen Exarch##10915
	step //83
		ding 65
	step //84
		goto 35.9,65.7
		.' Click the black coffin up the steps
		.'Kill the Reanimated Exarch|goal Contents of the Auchenai Coffin destroyed|q 10915/1
	step //85
		goto 31,76.1
		.talk Commander Ra'vaj##22446
		..turnin The Fallen Exarch##10915
	step //86
		goto Terokkar Forest,37.4,51.5
		.talk Kirrik the Awakened##22272
		..turnin Veil Lithic: Preemptive Strike##10861
		..accept Veil Shalas: Signal Fires##10874
	step //87
		goto 37.5,50.8
		.talk High Priest Orglum##22278
		..accept The Tomb of Lights##10840
	step //88
		goto 46.3,56.5
		.kill 10 Ethereal Nethermancer|q 10840/1
		.kill 10 Ethereal Plunderer|q 10840/2
	step //89
		goto 54.9,66.0|n
		.' The path up to Veil Shalas starts here|goto Terokkar Forest,54.9,66.0,0.5|noway|c
	step //90
		goto 57.3,65.0|n
		.' The path up to the Sapphire Signal Fire starts here|goto Terokkar Forest,57.3,65.0,0.3|noway|c
	step //91
		goto 55.2,67.1
		.' Click the Sapphire Signal Fire|tip Across the hanging bridge and down the spiraling stairs.
		.' Extinguish the Sapphire Signal Fire|goal Sapphire Fire Extinguished|q 10874/1
	step //92
		goto 57.0,71.8|n
		.' The path up to the Emerald Signal Fire starts here|goto Terokkar Forest,57.0,71.8,0.3|noway|c
	step //93
		goto 55.5,69.7
		.' Click the Emerald Signal Fire|tip Over the hanging bridge.
		.' Extinguish the Emerald Signal Fire|goal Emerald Fire Extinguished|q 10874/2
	step //94
		goto 56.0,72.7|n
		.' The path up to the Bloodstone and Violet Signal Fires starts here|goto Terokkar Forest,56.0,72.7,0.3|noway|c|tip It is a tunnel path inside the tree. The entrance is behind the tree to the right a little.
	step //95
		goto 56.1,72.4
		.' Click the Bloodstone Signal Fire|tip Up the path inside the tree, on your left as you reach the top.
		.' Extinguish the Bloodstone Signal Fire|goal Bloodstone Fire Extinguished|q 10874/4
	step //96
		goto 56.7,69.2
		.' Click the Violet Signal Fire|tip Across the hanging bridge from the Bloodstone Signal Fire.
		.' Extinguish the Violet Signal Fire|goal Violet Fire Extinguished|q 10874/3
	step //97
		goto Terokkar Forest,37.4,51.5
		.talk Kirrik the Awakened##22272
		..turnin Veil Shalas: Signal Fires##10874
		..accept Return to Shattrath##10889
		.talk High Priest Orglum##22278
		..turnin The Tomb of Lights##10840
	step //98
		goto 57.6,54.7
		.' Click the Wanted Poster|tip Right in front of the town hall building, next to light post.
		..accept Wanted: Bonelashers Dead!##10033
	step //99
		goto 57.4,55.4
		.talk Ros'eleth##18390
		..accept Olemba Seeds##9992
	step //100
		goto 57.5,55.8
		.talk Lieutenant Gravelhammer##18713
		..accept Speak with Private Weeks##10038
		..accept Thin the Flock##10869
	step //101
		goto 57.8,54.3
		.talk Thander##18389
		..accept Stymying the Arakkoa##9986
	step //102
		goto 58.3,54.8
		.talk Bertelm##18387
		..accept Unruly Neighbors##9998
		..accept Timber Worg Tails##10016
	step //103
		goto 58.5,53.6
		.talk Andarl##18252
		..turnin The Fate of Tuurem##9793
		..accept Magical Disturbances##10026
	step //104
		home Allerian Stronghold
	step //105
		goto 59.4,55.4
		.talk Furnan Skysoar##18809
		..fpath Allerian Stronghold
	step //106
		'Fly to Shattrath City|goto Shattrath City|noway|c
	step //107
		goto Shattrath City,72.2,30.7
		.talk Wind Trader Lathrai##18484
		..turnin A Personal Favor##10112
		..accept Investigate Tuurem##9990
	step //108
		goto 52.6,21
		.talk Rilak the Redeemed##22292
		..turnin Return to Shattrath##10889
		.' You are about to fight three waves of birds and a bird boss. Make sure you're ready.
		.talk Defender Grashna##22373
		..accept The Skettis Offensive##10879
	step //109
		goto 52.6,21
		.' Kill the little birds that come to attack
		.' Kill the big bird that attacks last
		.' Thwart the Attack|goal Attack thwarted|q 10879/1
	step //110
		goto 52.6,21
		.talk Rilak the Redeemed##22292
		..turnin The Skettis Offensive##10879
	step //111
		goto 30.7,34.6
		.talk Adyen the Lightwarden##18537
		..turnin Marks of Kil'jaeden##10325
	step //112
		'Fly to Allerian Stronghold|goto Terokkar Forest,57.5,54.2,3|noway|c
	step //113
		goto Terokkar Forest,41.6,51.6
		.kill 20 Bonelasher|q 10033/1
	step //114
		goto 34.9,42.8
		.' Click the Olemba Cones|tip The cones look like little white glowing pine cones on the ground.
		.get 30 Olemba Seed|q 9992/1
		.kill 10 Warp Stalker|q 10026/1
		.' Kill Timber Worgs
		.get 12 Timber Worg Tail|q 10016/1
		.' You can find more Timber Worgs at 36.8,37.5|n
	step //115
		goto 30.1,42.5|n
		.' The path up to Urdak starts here|goto Terokkar Forest,30.1,42.5,0.3|noway|c
	step //116
		goto 31.4,42.5
		.kill Urdak##18541|q 9986/3
	step //117
		goto 40.5,36.2
		.talk Private Weeks##18715
		..turnin Speak with Private Weeks##10038
		..accept Who Are They?##10040
		.'He puts an orc disguise on you|havebuff Shadowy Disguise|q 10040
		.' Be careful, the hunter in the camp can see through the disguise
		..'The hunter is the guy walking around the camp with a group of mobs
	step //118
		goto 40.3,39.1
		.talk Shadowy Advisor##18719|goal Shadowy Advisor Spoken To|q 10040/3
	step //119
		goto 39,39.7
		.talk Shadowy Initiate##18716|goal Shadowy Initiate Spoken To|q 10040/1
	step //120
		goto 38.3,40.6
		.talk Shadowy Laborer##18717|goal Shadowy Laborer Spoken To|q 10040/2
	step //121
		goto 40.5,36.2
		.talk Private Weeks##18715
		..turnin Who Are They?##10040
		..accept Kill the Shadow Council!##10042
	step //122
		goto 40.3,39.1
		.kill Shadowmaster Grieve##18720|q 10042/3
	step //123
		goto 39.8,40.8
		.kill 10 Shadowy Executioner|q 10042/1
		.kill 10 Shadowy Summoner|q 10042/2
	step //124
		goto 54,30
		.' Click the Sealed Box|tip A green glowing crate inside the hut directly east of you if you are standing on the bridge.
		.get Sealed Box|q 9990/1
	step //125
		goto 44.3,26.3
		.talk Earthbinder Tavgren##18446
		..turnin Investigate Tuurem##9990
		..accept What Are These Things?##9994
	step //126
		goto 49.9,16.5|n
		.' The path up to Ashkaz starts here|goto Terokkar Forest,49.9,16.5,0.3|noway|c
	step //127
		goto 49.1,16.9
		.kill Ashkaz##18539|q 9986/1
	step //128
		goto 48.9,17.3
		.kill 14 Shienor Talonite|q 10869/1
		.kill 6 Shienor Sorcerer|q 10869/2
	step //129
		goto 59.4,23.4
		.kill Ayit##18540|q 9986/2
	step //130
		goto 65.5,50.6
		.kill 12 Warped Peon|q 9998/1
	step //131
		goto 69.7,44.2
		.talk Theloria Shadecloak##18565
		..turnin Unruly Neighbors##9998
		..accept The Firewing Liaison##10002
		..accept Thinning the Ranks##10007
	step //132
		goto 68,53.2
		.kill Lisaile Fireweaver##18583|q 10002/1
	step //133
		goto 67.9,53.6
		.' Click the Fel Orc Plans|tip Inside the big building, it's a brown flat scroll laying on the floor next to some big logs.
		..accept Fel Orc Plans##10012
	step //134
		goto 66.3,55.0
		.kill 10 Bonechewer Devastator|q 10007/1
		.kill 6 Bonechewer Backbreaker|q 10007/2
	step //135
		goto 69.7,44.2
		.talk Theloria Shadecloak##18565
		..turnin The Firewing Liaison##10002
		..turnin Thinning the Ranks##10007
	step //136
		'Hearth to Allerian Stronghold|goto Terokkar Forest,57.5,54.2,3|use Hearthstone##6948|noway|c
	step //137
		goto 57,53.5
		.talk Jenai Starwhisper##18459
		..turnin What Are These Things?##9994
		..accept Report to the Allerian Post##10444
	step //138
		goto 57.4,55.4
		.talk Ros'eleth##18390
		..turnin Olemba Seeds##9992
		..accept Vessels of Power##10028
	step //139
		goto 57.5,55.8
		.talk Lieutenant Gravelhammer##18713
		..turnin Kill the Shadow Council!##10042
		..turnin Thin the Flock##10869
	step //140
		goto 57.8,54.3
		.talk Thander##18389
		..turnin Stymying the Arakkoa##9986
	step //141
		goto 58.3,54.8
		.talk Bertelm##18387
		..turnin Timber Worg Tails##10016
		..accept The Elusive Ironjaw##10022
		..turnin Fel Orc Plans##10012
	step //142
		goto 58.5,53.6
		.talk Andarl##18252
		..turnin Magical Disturbances##10026
	step //143
		goto 58.1,53.4
		.talk Taela Everstride##18704
		..turnin Wanted: Bonelashers Dead!##10033
	step //144
		goto 69.7,44.2
		.talk Lieutenant Meridian##21006
		..turnin Report to the Allerian Post##10444
		..accept Attack on Firewing Point##9996
	step //145
		goto 66.3,34.7
		.from Ironjaw##18670
		.get Ironjaw's Pelt|q 10022/1
	step //146
		goto 68.1,36.5
		.kill 10 Firewing Defender|q 9996/1
		.kill 10 Firewing Bloodwarder|q 9996/2
		.kill 10 Firewing Warlock|q 9996/3
	step //147
		goto 73.9,35.2
		.talk Isla Starmane##18760
		..accept Escape from Firewing Point!##10051
		..'Escort Isla Starmane to safety|goal Escort Isla Starmane to safety|q 10051/1
	step //148
		goto 54.1,32.1
		.' Click the Draenei Vessels on the ground|tip They look like little pink glowing lanterns. Not all of the little lanters give you a Dranei Vessel, some will AoE you. Note: you can reach some of them through the walls.
		.get 8 Draenei Vessel|q 10028/1
	step //149
		'Hearth to Allerian Stronghold|goto Terokkar Forest,57.5,54.2,3|use Hearthstone##6948|noway|c
	step //150
		goto 57.4,55.4
		.talk Ros'eleth##18390
		..turnin Vessels of Power##10028
	step //151
		goto 57.2,55.7
		.talk Captain Auric Sunchaser##18745
		..turnin Escape from Firewing Point!##10051
	step //152
		goto 58.3,54.8
		.talk Bertelm##18387
		..turnin The Elusive Ironjaw##10022
	step //153
		goto 69.7,44.2
		.talk Lieutenant Meridian##21006
		..turnin Attack on Firewing Point##9996
		..accept The Final Code##10446
	step //154
		goto 73.3,34.6
		.' Click the Orb of Translocation|tip Upstairs from Isla Starmane, on the balcony.
		.' It will teleport you to the top of the tower|goto 73.5,35.0,0.2|noway|c
	step //155
		goto 73.9,35.8
		.from Sharth Voldoun##18554
		.collect 1 The Final Code##29912|q 10446
	step //156
		goto 74.2,36.5
		.' Click the Orb of Translocation|tip Up the ramp from Sharth Voldoun.
		.' It will teleport you to the bottom of the tower|goto 73.3,36.3,0.2|noway|c
	step //157
		goto 71.3,37.4
		.' Click the Mana Bomb
		.' Activate the Mana Bomb using the Final Code|goal Mana Bomb Activated|q 10446/1
	step //158
		goto 57,53.5
		.talk Jenai Starwhisper##18459
		..turnin The Final Code##10446
		..accept Letting Earthbinder Tavgren Know##10005
	step //159
		goto 44.3,26.3
		.talk Earthbinder Tavgren##18446
		..turnin Letting Earthbinder Tavgren Know##10005
	step //160
		ding 66
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Levels (66-68)",[[
	author support@zygorguides.com
	next Zygor's Alliance Leveling Guides\\Levels (68-70)
	startlevel 66
	step //1
		'Go west to Shattrath City|goto Shattrath City|noway|c
	step //2
		'Fly to Orebor Harborage|goto Zangarmarsh,41.8,26.6,4|noway|c
	step //3
		goto Zangarmarsh,41.9,27.2
		.talk Ikuti##18008
		..accept A Message to Telaar##9792
	step //4
		'Fly to to Telredor|goto Zangarmarsh,68.3,49.2,2|noway|c
	step //5
		'Go south to Nagrand|goto Nagrand|noway|c
	step //6
		goto Nagrand,71.6,40.5
		.talk Shado "Fitz" Farstrider##18200
		..accept Windroc Mastery (1)##9854
		.talk Hemet Nesingwary##18180
		..accept Clefthoof Mastery (1)##9789
		.talk Harold Lane##18218
		..accept Talbuk Mastery (1)##9857
	step //7
		goto 72.2,38.4
		.kill 12 Talbuk Stag|q 9857/1
		.' You can find more Talbuk Stags at 70.8,46.4|n
	step //8
		goto 66.5,39.5
		.kill 12 Windroc|q 9854/1
	step //9
		goto 64,45.1
		.kill 12 Clefthoof|q 9789/1
		.' Kill Elekks
		.collect 3 Pair of Ivory Tusks##25463|q 9914 |future
		.' Kill Dust Howlers
		.get Howling Wind|n
		.' Click the Howling Wind|use Howling Wind##24504
		..accept The Howling Wind##9861
		.' You can find more Clefthoofs, Elekks, and Dust Howlers at 70.8,46.4|n
	step //10
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
	step //11
		goto 60.5,22.4
		.talk Elementalist Morgh##18074
		..turnin The Howling Wind##9861
		..accept Murkblood Corrupters##9862
		.talk Elementalist Untrag##18071
		..accept The Underneath##9818
		.talk Elementalist Lo'ap##18073
		..accept A Rare Bean##9800
		..accept Muck Diving##9815
	step //12
		goto 61.8,24.4
		.talk Gordawg##18099
		..turnin The Underneath##9818
		..accept The Tortured Earth##9819
	step //13
		goto 52.1,25.6
		.' Click the Dung on the ground|tip The Dung looks like green piles of swirled poop.
		.get 8 Digested Caracoli|q 9800/1
		.kill 12 Talbuk Thorngrazer|q 9858/1
	step //14
		goto 51.6,30.8
		.kill 12 Clefthoof Bull|q 9850/1
		.' You can find more Clefthoof Bulls at 49.7,35.6|n
	step //15
		goto 51.8,34.8
		.talk Consortium Recruiter##18335
		..accept The Consortium Needs You!##9913
	step //16
		goto 41.5,40.9
		.' Kill Muck Spawns in the water
		.get 5 Muck-ridden Core|q 9815/1
	step //17
		goto 33.8,43.7
		.kill 5 Murkblood Putrifier|q 9862/1
	step //18
		goto 30.8,58.1
		.talk Zerid##18276
		..accept Gava'xi##9900
		..accept Matters of Security##9925
	step //19
		goto 31.4,57.8
		.talk Gezhe##18265
		..turnin The Consortium Needs You!##9913
		..accept Stealing from Thieves##9882 
		.' Skip Stealing from Thieves if you're Friendly or Higher|condition rep('The Consortium')>=Friendly|tip Skip if you don't see the quest as well.|or

	step //20
		goto 31.8,56.8
		.talk Shadrek##18333
		..accept A Head Full of Ivory##9914
		..turnin A Head Full of Ivory##9914
	step //21
		goto 33.4,62.4
		.' Click the Oshu'gun Crystal Fragments on the ground|tip They are the green and white crystals on the ground.
		.' Kill the mobs here
		.get 10 Oshu'gun Crystal Fragment##25416 |goal 10 Oshu'gun Crystal Fragment collected |q 9882/1|tip Skip doing so if you didnt pick up the Stealing From Thieves quest.
	step //22
		goto 30.6,67.5
		.kill 8 Voidspawn|q 9925/1
	step //23
		goto 42.4,73.5
		.kill Gava'xi##18298|q 9900/1
	step //24
		goto 48.4,61.5
		.kill 12 Ravenous Windroc|q 9855/1
	step //25
		goto 30.8,58.1
		.talk Zerid##18276
		..turnin Gava'xi##9900
		..turnin Matters of Security##9925
	step //26
		goto 31.4,57.8
		.talk Gezhe##18265
		..turnin Stealing from Thieves##9882
	step //27
		goto 54.2,70
		.talk Huntress Kima##18416
		..accept The Ravaged Caravan##9956
	step //28
		goto 55.5,68.8
		.talk Elementalist Ioki##18233
		..accept The Throne of the Elements##9869
	step //29
		goto 55,70.5
		.talk Huntress Bintook##18353
		..accept Do My Eyes Deceive Me##9917
	step //30
		goto 54.6,70.7
		.' Click the Telaar Bulletin Board|tip To the left of a big tree in a little circle island section in the road.
		..accept Wanted: Giselda the Crone##9936
		..accept Wanted: Zorbo the Advisor##9940
	step //31
		goto 54.8,71
		.talk Warden Moi'bff Jill##18408
		..accept Fierce Enemies##10476
		.talk Nahuud##18097
		..turnin A Message to Telaar##9792
	step //32
		goto 54.5,72.2
		.talk Otonbu the Sage##18222
		..accept Stopping the Spread##9874
		.talk Poli'lukluk the Wiser##18224
		..accept Solving the Problem##9878
	step //33
		goto 54.2,75.1
		.talk Furgu##18789
		..fpath Telaar
	step //34
		goto 61.7,67.1
		.talk Wazat##19035
		..accept I Must Have Them!##10109
	step //35
		goto 63.1,73.2
		.' Kill Boulderfist Hunters
		.get Boulderfist Plans|q 9917/1
	step //36
		goto 65.4,70.8
		.kill 10 Tortured Earth Spirit|q 9819/1
	step //37
		goto 67.9,79.3
		.kill 10 Kil'sorrow Agent|q 9936/2
	step //38
		goto 71.1,82.4
		.kill Giselda the Crone##18391|q 9936/1
	step //39
		goto 72.6,70.7
		.talk Corki##18369
		..accept HELP!##9923
		.' Kill Boulderfist ogres
		.get Boulderfist Key|n
		.' Click Corki's cage to free him|goal Corki Freed|q 9923/1
	step //40
		goto 69.4,56.9
		.kill Dust Howlers|n
		.get 3 Air Elemental Gas|q 10109/1
		.' You can find more Dust Howlers at 65.5,46.9|n
	step //41
		goto 71.6,40.5
		.talk Harold Lane##18218
		..turnin Talbuk Mastery (2)##9858
		.talk Hemet Nesingwary##18180
		..turnin Clefthoof Mastery (2)##9850
		.talk Shado "Fitz" Farstrider##18200
		..turnin Windroc Mastery (2)##9855
	step //42
		goto 61.8,24.4
		.talk Gordawg##18099
		..turnin The Tortured Earth##9819
		..accept Eating Damnation##9821
	step //43
		goto 60.5,22.4
		.talk Elementalist Lo'ap##18073
		..turnin A Rare Bean##9800
		..accept Agitated Spirits of Skysong##9804
		..turnin Muck Diving##9815
		.talk Elementalist Sharvak##18072
		..turnin The Throne of the Elements##9869
		.talk Elementalist Morgh##18074
		..turnin Murkblood Corrupters##9862
	step //44
		goto 59.7,27.3
		.kill 8 Lake Spirit|q 9804/1
	step //45
		goto 60.5,22.4
		.talk Elementalist Lo'ap##18073
		..turnin Agitated Spirits of Skysong##9804
		..accept Blessing of Incineratus##9805
	step //46
		goto 52,20.2
		.' Kill Enraged Crushers
		.get 10 Enraged Crusher Core|q 9821/1
	step //47
		goto 48.3,21.5
		.kill 5 Warmaul Shaman|q 9940/2
		.kill 5 Warmaul Reaver|q 9940/3
		.' Kill Warmaul mobs
		.get 10 Obsidian Warbeads|q 10476/1
	step //48
		goto 46.5,18.2
		.kill Zorbo the Advisor##18413|q 9940/1
	step //49
		goto 61.8,24.4
		.talk Gordawg##18099
		..turnin Eating Damnation##9821
		..accept Shattering the Veil##9849
	step //50
		goto 70.8,51.2
		.' Go inside the hut
		.' Use your Living Fire|use Living Fire##24467
		.' Burn the Western Hut|goal Western Hut Destroyed|q 9805/2
	step //51
		goto 72.4,50.3
		.' Go inside the hut
		.' Use your Living Fire|use Living Fire##24467
		.' Burn the Large Hut|goal Large Hut Destroyed|q 9805/1
	step //52
		goto 72.8,54.7
		.' Go inside the hut
		.' Use your Living Fire|use Living Fire##24467
		.' Burn the Eastern Hut|goal Eastern Hut Destroyed|q 9805/4
	step //53
		goto 71.2,53.2
		.' Go inside the hut
		.' Use your Living Fire|use Living Fire##24467
		.' Burn the Southern Hut|goal Southern Hut Destroyed|q 9805/3
	step //54
		goto 60.5,22.4
		.talk Elementalist Lo'ap##18073
		..turnin Blessing of Incineratus##9805
		..accept The Spirit Polluted##9810
	step //55
		goto 27.9,29.7
		.get 10 Telaar Supply Crate|q 9956/1|tip They look like little grey boxes on the ground.
	step //56
		goto 29.5,43.5
		.kill 10 Murkblood Scavenger|q 9878/1
		.kill 5 Murkblood Raider|q 9878/2
	step //57
		goto 33.2,47.7
		.' Use the Torch of Liquid Fire on Sunspring Villager Corpses in the water|use Torch of Liquid Fire##24560
		.' Burn 10 Sunspring Villager Corpses|goal 10 Sunspring Villager Corpse Burned|q 9874/1
	step //58
		goto 33.8,48.9
		.kill 8 Lake Surger|q 9810/2
	step //59
		goto 33.1,50.8
		.kill Watoosun's Polluted Essence##18145|q 9810/1
	step //60
		goto 27.9,77.6
		.' Use Gordawg's Boulder on Shattered Rumblers|use Gordawg's Boulder##24501
		.kill 30 Minion of Gurok|q 9849/1
	step //61
		goto 54.5,72.2
		.talk Poli'lukluk the Wiser##18224
		..turnin Solving the Problem##9878
		.talk Otonbu the Sage##18222
		..turnin Stopping the Spread##9874
	step //62
		goto 54.2,70
		.talk Huntress Kima##18416
		..turnin The Ravaged Caravan##9956
	step //63
		goto 55.5,68.8
		.talk Arechron##18183
		..turnin HELP!##9923
		..accept Corki's Gone Missing Again!##9924
	step //64
		goto 55,70.5
		.talk Huntress Bintook##18353
		..turnin Do My Eyes Deceive Me##9917
		..accept Not On My Watch!##9918
	step //65
		goto 54.8,71
		.talk Warden Moi'bff Jill##18408
		..turnin Wanted: Giselda the Crone##9936
		..turnin Wanted: Zorbo the Advisor##9940
		..turnin Fierce Enemies##10476
	step //66
		goto 61.7,67.1
		.talk Wazat##19035
		..turnin I Must Have Them!##10109
	step //67
		goto 62.7,71.4
		.' Fight Lump until he's almost dead|tip Sleeping on the hill.
		.'Talk to Lump to interrogate him|goal Lump Interrogated|q 9918/1
	step //68
		goto 55,70.5
		.talk Huntress Bintook##18353
		..turnin Not On My Watch!##9918
		..accept Mo'mor the Breaker##9920
	step //69
		goto 54.5,72.2
		.talk Mo'mor the Breaker##18223
		..turnin Mo'mor the Breaker##9920
		..accept The Ruins of Burning Blade##9921
	step //70
		goto 72.9,69.8
		.kill 8 Boulderfist Crusher|q 9921/1
		.kill 8 Boulderfist Mystic|q 9921/2
	step //71
		goto 54.5,72.2
		.talk Mo'mor the Breaker##18223
		..turnin The Ruins of Burning Blade##9921
		..accept The Twin Clefts of Nagrand##9922
	step //72
		goto 40.7,35.6
		.kill 10 Boulderfist Warrior|q 9922/1
		.kill 10 Boulderfist Mage|q 9922/2
		.' Kill ogres
		.collect 1 Northwind Cleft Key##25509|q 9924|sticky
	step //73
		goto 39.3,27.5
		.' Free Corki inside the cave|goal Corki Freed Again|q 9924/1|tip Inside the cave, way in the back, in a yellow cage again.
	step //74
		'Go outside to 54.5,72.2|goto 54.5,72.2
		.talk Mo'mor the Breaker##18223
		..turnin The Twin Clefts of Nagrand##9922
		..accept Diplomatic Measures##10108
	step //75
		goto 55.5,68.8
		.talk Arechron##18183
		..turnin Corki's Gone Missing Again!##9924
	step //76
		goto 73.8,68.1|n
		'The path up to Lantresor of the Blade starts here|goto Nagrand,73.8,68.1,0.5|noway|c
	step //77
		goto 73.8,62.6
		.talk Lantressor of the Blade##18261
		..'Listen to his story
		..turnin Diplomatic Measures##10108
		..accept Armaments for Deception##9928
		..accept Ruthless Cunning##9927
	step //78
		ding 67
	step //79
		goto 71.4,79.4
		.' Click the Kil'sorrow Armaments on the ground|tip The Kil'sorrow Armaments look like skinny, square, tan boxes with a red axe logo on them.
		.get 10 Kil'sorrow Armaments|q 9928/1
		.' Kill Kil'sorrow mobs
		.' Use your Warmaul Ogre Banners on their corpses|use Warmaul Ogre Banner##25552
		.' Plant 10 Warmaul Ogre Banners|goal 10 Warmaul Ogre Banner Planted|q 9927/1
	step //80
		goto 73.8,62.6
		.talk Lantresor of the Blade##18261
		..turnin Armaments for Deception##9928
		..turnin Ruthless Cunning##9927
		..accept Returning the Favor##9931
		..accept Body of Evidence##9932
	step //81
		goto 61.8,24.4
		.talk Gordawg##18099
		..turnin Shattering the Veil##9849
	step //82
		goto 60.5,22.4
		.talk Elementalist Lo'ap##18073
		..turnin The Spirit Polluted##9810
	step //83
		goto 46.5,24.3
		.kill 10 Warmaul ogres|n
		.' Use your Kil'sorrow Banners on their corpses|use Kil'sorrow Banner##25555
		.' Plant 10 Kil'sorrow Banners|goal 10 Kil'sorrow Banner Planted|q 9931/1
		.' Use the Damp Woolen Blanket on the Blazing Warmaul Pyre|use Damp Woolen Blanket##25658
		.' Defend the 2 ogres that appear until they are done placing the corpses|goal Kil'sorrow Bodies Planted|q 9932/1
	step //84
		goto 73.8,62.6
		.talk Lantresor of the Blade##18261
		..turnin Returning the Favor##9931
		..turnin Body of Evidence##9932
		..accept Message to Telaar##9933
	step //85
		goto 55.5,68.8
		.talk Arechron##18183
		..turnin Message to Telaar##9933
	step //86
		'Fly to Orebor Harborage|goto Zangarmarsh,41.8,26.6,4|noway|c
	step //87
		goto Zangarmarsh,41.2,28.7
		.talk Timothy Daniels##18019
		..accept No Time for Curiosity##9794
	step //88
		goto Blade's Edge Mountains,32.2,91.1
		.talk Sentinel Moonwhisper##22488
		..accept Killing the Crawlers##10927
	step //89
		'Go into the tunnel|goto Blade's Edge Mountains,32.7,90.6,0.3|c
	step //90
		goto 34.5,87.3
		.'Kill 6 Cavern Crawlers before you reach the other side|kill 6 Cavern Crawler|q 10927/1
	step //91
		goto 36,67.8
		.talk Kialon Nightblade##18098
		..turnin No Time for Curiosity##9794
	step //92
		goto 36.2,67.1
		.talk Rina Moonspring##21066
		..accept The Encroaching Wilderness##10455
	step //93
		goto 36.6,67.3
		.' Click the Wanted Poster|tip Next to the road, to the left.
		..accept The Den Mother##10690
	step //94
		goto 36.3,66.2
		.talk Commander Skyshadow##21158
		..turnin Killing the Crawlers##10927
		..accept The Bloodmaul Ogres##10502
	step //95
		goto 37.1,65.6
		.talk Daranelle##21469
		..accept Malaise##10555
	step //96
		home Sylvanaar|goto 35.8,63.9
	step //97
		goto 37.4,65
		.talk Bronwyn Stouthammer##21197
		..accept Into the Draenethyst Mine##10510
	step //98
		goto 37.4,64.6
		.talk Borgrim Stouthammer##21151
		..accept Strange Brew##10511
	step //99
		goto 37.8,61.4
		.talk Amerun Leafshade##18937
		..fpath Sylvanaar
	step //100
		goto 37.1,70.5
		.kill 12 Grovestalker Lynx|q 10455/1
	step //101
		goto 35,74.4
		.' Kill Lashh'an bird men
		.get 18 Plucked Lashh'an Feather|q 10555/1
	step //102
		goto 34.3,77.4
		.' Click the Lashh'an Tome|tip It's an open book, up the ramp, to the right.
		..turnin Malaise##10555
		..accept Scratches##10556
	step //103
		goto 35.2,77.3
		.' Walk inside the Lashh'an Summoning Circle|tip It's a circle with the purple hologram on the ground.
		.' Use the Fistful of Feathers in your bag|use Fistful of Feathers##30530
		.' Get the Kaliri aura cast on you|havebuff Ability_Hunter_Pet_DragonHawk|q 10556
	step //104
		goto 36.2,67.1
		.talk Rina Moonspring##21066
		..turnin The Encroaching Wilderness##10455
		..accept Marauding Wolves##10456
	step //105
		goto 37.1,65.6
		.talk Daranelle##21469
		..goal Have Daranelle analyze the Kaliri aura|q 10556/1
		..turnin Scratches##10556
	step //106
		goto 39.0,76.6|n
		.' The path down to the Bloodmaul Ravine starts here|goto Blade's Edge Mountains,39.0,76.6,0.3|noway|c
	step //107
		goto 42.4,79.4
		.' Kill 30 Bloodmaul Ogres|goal 30 Bloodmaul Ogres killed|q 10502/1
		.from Bloodmaul Brewmaster##19957
		.' Click the Bloodmaul Brew Kegs|tip The Bloodmaul Brew Kegs look like barrels.
		.get 16 Bloodmaul Brutebane Brew|q 10511/1
	step //108
		'Go inside the cave to 42.4,83.4|goto 42.4,83.4 
		.' Click Draenethyst Mine Crystals|tip They look like huge crystals growing out of the ground.
		.get 5 Draenethyst Mine Crystal|q 10510/1
	step //109
		'Go outside to 36.3,66.2|goto 36.3,66.2
		.talk Commander Skyshadow##21158
		..turnin The Bloodmaul Ogres##10502
		..accept The Bladespire Ogres##10504
	step //110
		goto 37.4,65
		.talk Bronwyn Stouthammer##21197
		..turnin Into the Draenethyst Mine##10510
	step //111
		goto 37.4,64.6
		.talk Borgrim Stouthammer##21151
		..turnin Strange Brew##10511
		..accept Getting the Bladespire Tanked##10512
	step //112
		'Go east across the bridge|goto Blade's Edge Mountains,48.6,65.8,0.5|c
	step //113
		goto 51.3,65.5
		.' Kill Thunderlord Dire Wolves
		.get 4 Thunderlord Dire Wolf Tail|q 10456/1
	step //114
		goto 51.6,75
		.kill Rema##21596|q 10690/1
	step //115
		goto 44,51.9
		.talk Vindicator Vuuleen##21277
		..accept The Trappings of a Vindicator##10516
	step //116
		goto 39.3,53
		.' Pull the 2 non-elite guards one at a time and kill them
		..'Don't aggro the ogres, though
		.' Pull Droggam outside and kill him
		.get Vindicator Vuuleen's Blade|q 10516/1
	step //117
		goto 42.1,57.8
		.' Pull the 2 non-elite guards one at a time and kill them
		..'Don't aggro the ogres, though
		.' Pull Mugdorg outside and kill him
		.get Vindicator Vuuleen's Shield|q 10516/2
	step //118
		goto 44,51.9
		.talk Vindicator Vuuleen##21277
		..turnin The Trappings of a Vindicator##10516
		..accept Gorr'Dim, Your Time Has Come...##10517
	step //119
		goto 39.9,49.6
		..'Don't aggro the ogres.
		.' Pull Gorr'dim outside and kill him|kill Gorr'Dim|q 10517/1
	step //120
		goto 44,51.9
		.talk Vindicator Vuuleen##21277
		..turnin Gorr'Dim, Your Time Has Come...##10517
		..accept Planting the Banner##10518
	step //121
		goto 48.2,50.6
		.get Bladespire Clan Banner|q 10518/1
	step //122
		goto 46.4,74.6
		.' Plant the Bladespire Clan Banner on top of the tower |use Bladespire Clan Banner##30416
		.' Kill Gurn Grubnosh
		.get Helm of Gurn Grubnosh|q 10518/2
	step //123
		goto 40.3,53
		.' Kill 30 Bladespire ogres|goal 30 Bladespire Ogres killed|q 10504/1
		.' Use your Bloodmaul Brutebane Keg when semi-close to an ogre|use Bloodmaul Brutebane Keg##30353
		..'Don't aggro the ogre, though
		.' The ogre will run up to the beer and drink it
		.' Get 5 Bladespire ogres drunk|goal 5 Bladespire Ogres drunk|q 10512/1
	step //124
		'Fly to Sylvanaar|goto Blade's Edge Mountains,37.8,61.5,0.5|noway|c
	step //125
		goto 36.3,66.2
		.talk Commander Skyshadow##21158
		..turnin The Den Mother##10690
		..turnin The Bladespire Ogres##10504
		..turnin Planting the Banner##10518
		..accept Where Did Those Darn Gnomes Go?##10580
	step //126
		goto 36.2,67.1
		.talk Rina Moonspring##21066
		..turnin Marauding Wolves##10456
		..accept Protecting Our Own##10457
	step //127
		home Sylvanaar
	step //128
		goto 36.7,70.7
		.' Click Grove Seedlings|tip They look like little green plant bulbs on the ground.
		.' Summon 5 Living Grove Defenders|goal 5 Living Grove Defenders summoned|q 10457/1
	step //129
		goto 36.2,67.1
		.talk Rina Moonspring##21066
		..turnin Protecting Our Own##10457
		..accept A Dire Situation##10506
	step //130
		goto 42.3,79.8
		.' Use Rina's Diminution Powder on Bloodmaul Dire Wolves|use Rina's Diminution Powder##30251
		.' Weaken 5 Bloodmaul Dire Wolves|goal 5 Bloodmaul Dire Wolf weakened|q 10506/1
	step //131
		'Hearth to Sylvanaar|goto Blade's Edge Mountains,38.3,65.3,3|use Hearthstone##6948|noway|c
	step //132
		goto 37.4,64.6
		.talk Borgrim Stouthammer##21151
		..turnin Getting the Bladespire Tanked##10512
	step //133
		goto 36.2,67.1
		.talk Rina Moonspring##21066
		..turnin A Dire Situation##10506
	step //134
		goto 55,72.8
		.talk R-3D0##21690
		..turnin Where Did Those Darn Gnomes Go?##10580
		..accept Follow the Breadcrumbs##10581
	step //135
		goto 60.2,68.9
		.talk Nickwinkle the Metro-Gnome##21755
		..accept Crystal Clear##10608
	step //136
		goto 60.5,69
		.talk Toshley##21691
		..turnin Follow the Breadcrumbs##10581
		..accept Picking Up Some Power Converters##10584
	step //137
		goto 60.7,69.5|n
		.' The path up to the Toshley's Station Flight Path starts here|goto Blade's Edge Mountains,60.7,69.5,0.3|noway|c
	step //138
		goto 61.2,70.4
		.talk Rip Pedalslam##21107
		..fpath Toshley's Station
	step //139
		goto 61,68.1
		.talk Fizit "Doc" Clocktock##21110
		..accept What Came First, the Drake or the Egg?##10609
	step //140
		goto 60.3,68.4
		.talk Tally Zapnabber##21460
		..accept Test Flight: The Zephyrium Capacitorium##10557
	step //141
		goto 60.2,68.9
		.talk Rally Zapnabber##21461
		..'Test the Zephyrium Capacitorium|goal Test Tally's Experiment|q 10557/1
	step //142
		goto 60.3,68.4
		.talk Tally Zapnabber##21460
		..turnin Test Flight: The Zephyrium Capacitorium##10557
		..accept Test Flight: The Singing Ridge##10710
	step //143
		goto 58.4,59.2
		.' Click the Power Converters on the ground|tip They look like small lantern boxes.
		.' Use your Protovoltaic Magneto Collector on the Electromentals that spawn|use Protovoltaic Magneto Collector##30656
		.' Kill the Electromentals
		.' Get 5 Electromentals|goal 5 Electromentals collected|q 10584/1
	step //144
		goto 60.5,69
		.talk Toshley##21691
		..turnin Picking Up Some Power Converters##10584
		..accept Ride the Lightning##10657
	step //145
		goto 60.4,68.8
		.talk Dizzy Dina##21824
		..accept Ridgespine Menace##10620
	step //146
		goto 60.5,68.4
		.talk Razak Ironsides##21118
		..accept Cutting Your Teeth##10632
	step //147
		goto 60.2,68.9
		.talk Rally Zapnabber##21461
		..'Sign Tally's Waiver in your bags|use Tally's Waiver (Unsigned)##30540
		..'Go to the Singing Ridge|goto Blade's Edge Mountains,67.0,72.0,2|noway|c
	step //148
		goto 67.9,72.9
		.' Kill Scalewing Serpents
		.get 5 Scalewing Lightning Gland|q 10657/2
		.' Use your Repolarized Magneto Sphere when fighting Scalewing Serpents|use Repolarized Magneto Sphere##30818
		.' Absorb 25 Lightning Strikes|goal 25 Lightning Strikes Absorbed|q 10657/1
		..'Put your pet on passive, if you have one, to make this go faster
	step //149
		goto 68.2,76.2
		.kill 10 Crystal Flayer|q 10608/1
		.' Click the Nether Drake Eggs
		.' Use the Temporal Phase Modulator on the Nether Whelps that spawn|use Temporal Phase Modulator##30742
		..'You can use the Modulator repeatedly to get the type of drake you need
		.' Kill the changed drakes
		.get 3 Proto-Nether Drake Essence|q 10609/1
		.get 3 Adolescent Nether Drake Essence|q 10609/2
		.get 3 Mature Nether Drake Essence|q 10609/3
	step //150
		goto 65,55.2
		.' Kill Daggermaw Lashtails
		.get 5 Extra Sharp Daggermaw Tooth|q 10632/1
		.kill 10 Ridgespine Stalker|q 10620/1
	step //151
		goto 60.5,68.4
		.talk Razak Ironsides##21118
		..turnin Cutting Your Teeth##10632
	step //152
		goto 60.3,68.4
		.talk Tally Zapnabber##21460
		..turnin Test Flight: The Singing Ridge##10710
	step //153
		goto 61,68.1
		.talk Fizit "Doc" Clocktock##21110
		..turnin What Came First, the Drake or the Egg?##10609
	step //154
		goto 60.5,69
		.talk Toshley##21691
		..turnin Ride the Lightning##10657
		..accept Trapping the Light Fantastic##10674
	step //155
		goto 60.4,68.8
		.talk Dizzy Dina##21824
		..turnin Ridgespine Menace##10620
		..accept More than a Pound of Flesh##10671
	step //156
		goto 60.2,68.9
		.talk Nickwinkle the Metro-Gnome##21755
		..turnin Crystal Clear##10608
		..accept Gauging the Resonant Frequency##10594
	step //157
		goto 60.3,68.4
		.talk Tally Zapnabber##21460
		..accept Test Flight: Razaan's Landing##10711
	step //158
		home Toshley's Station
	step //159
		goto 60.2,68.9|n
		.talk Rally Zapnabber##21461
		..'Go to the Singing Ridge|goto Blade's Edge Mountains,67.0,72.0,4|noway|c
	step //160
		goto 66.4,75.9
		.' Clear out a good big area so you are safe
		.' Place the Oscillating Frequency Scanners on the ground kind of far apart|use Oscillating Frequency Scanners##30701
		.' Try to place them so that the lines overlap each other, like a star
		.' Stand in the middle of the design you made
		.' Gauge the Singing Crystal Resonant Frequency|goal Singing crystal resonant frequency gauged|q 10594/1
	step //161
		'Hearth to Toshley's Station|goto Blade's Edge Mountains,60.7,69.3,2|use Hearthstone##6948|noway|c
	step //162
		goto 60.2,68.9
		.talk Nickwinkle the Metro-Gnome##21755
		..turnin Gauging the Resonant Frequency##10594
	step //163
		goto 60.2,68.9
		.talk Rally Zapnabber##21461
		..'Go to Razaan's Landing|goto Blade's Edge Mountains,66.8,49.9,2|noway|c
	step //164
		goto 65.5,46.6
		.' Lay the Multi-Spectrum Light Trap at the foot of this pole repeatedly|use Multi-Spectrum Light Trap##30852
		..'The pole has a purple lightning circle on it
		.' Trap 15 Razaani Light Orbs|goal 15 Razaani Light Orbs trapped|q 10674/1
	step //165
		goto 65.8,45.8
		.kill Fiendling Flesh Beasts|n
		.get 5 Ether-Energized Flesh|q 10671/1
	step //166
		goto 60.3,68.4
		.talk Tally Zapnabber##21460
		..turnin Test Flight: Razaan's Landing##10711
	step //167
		goto 60.4,68.8
		.talk Dizzy Dina##21824
		..turnin More than a Pound of Flesh##10671
	step //168
		goto 60.5,69
		.talk Toshley##21691
		..turnin Trapping the Light Fantastic##10674
		..accept Show Them Gnome Mercy!##10675
	step //169
		goto 66.3,44.3
		.' Kill Razaani mummies around the portal until Nexus-Prince Razaan comes out
		.' Kill Nexus-Prince Razaan
		.' Click the Collection of Souls|tip The Collection of Souls appears hovering over his corpse.
		.get Collection of Souls|q 10675/1
	step //170
		goto 60.5,69
		.talk Toshley##21691
		..turnin Show Them Gnome Mercy!##10675
	step //171
		'Fly to Toshley's Station|goto Blade's Edge Mountains,60.7,69.3,2|noway|c
	step //172
		goto 60.3,68.4
		.talk Tally Zapnabber##21460
		..accept Test Flight: Ruuan Weald##10712
	step //173
		goto 60.2,68.9
		.talk Rally Zapnabber##21461
		..'Go to Ruuan Weald|goal Launch to Ruuan Weald.|q 10712/1
		..'Use your Nether-weather Vane while in flight|use Nether-weather Vane##31124
		..get Spinning Nether-weather Vane|q 10712/2
	step //174
		goto 62,39.5
		.talk Tree Warden Chawn##22007
		..accept A Time for Negotiation...##10682
	step //175
		goto 61.7,39.6
		.talk Fhyn Leafshadow##22216
		..fpath Evergrove
	step //176
		goto 61.2,38.4
		.talk Mosswood the Ancient##22053
		..accept Little Embers##10770
		..accept From the Ashes##10771
	step //177
		goto 62.2,39.1
		.talk Timeon##21782
		..accept Creating the Pendant##10567
	step //178
		goto 62,38
		.talk Commander Haephus Stonewall##22149
		..accept A Date with Dorgok##10795
		.talk Lieutenant Fairweather##22150
		..accept Crush the Bloodmaul Camp!##10796
	step //179
		goto 62.6,38.2
		.talk Faradrella##22133
		..accept Culling the Wild##10753
	step //180
		goto 62.7,40.4
		.talk O'Mally Zapnabber##22020
		..turnin Test Flight: Ruuan Weald##10712
	step //181
		goto 68.9,35.6
		.kill 4 Felsworn Scalewing|q 10753/1
		.kill 4 Felsworn Daggermaw|q 10753/2
		.kill 2 Fel Corrupter|q 10753/3
		.' Kill Fel Corrupters
		.get Damaged Mask|n
		.' Click the Damaged Mask|use Damaged Mask##31384
		..accept Damaged Mask##10810
	step //182
		goto 71.7,22.4
		.' Click the Fertile Volcanic Soil|tip It looks like a dirt mound.
		.' Plant the Ironroot Seeds|goal Southern Volcanic Soil|q 10771/1
	step //183
		goto 71.6,20.3
		.' Click the Fertile Volcanic Soil|tip It looks like a dirt mound.
		.' Plant the Ironroot Seeds|goal Central Volcanic Soil|q 10771/2
	step //184
		goto 71.6,18.5
		.' Click the Fertile Volcanic Soil|tip It looks like a dirt mound.
		.' Plant the Ironroot Seeds|goal Northern Volcanic Soil|q 10771/3
	step //185
		goto 70.7,20.2
		.kill 8 Scorch Imp|q 10770/1
	step //186
		goto 63.9,31.5
		.' Kill Ruuan'ok arakkoas
		.collect 6 Ruuan'ok Claw##30704|q 10567
	step //187
		goto 64.5,33.1
		.' Use the 6 Ruuan'ok Claws inside the glowing circle|use Ruuan'ok Claw##30704
		.' Kill the Harbinger of the Raven
		.get Harbinger's Pendant|q 10567/1
	step //188
		goto 62.6,38.2
		.talk Faradrella##22133
		..turnin Culling the Wild##10753
	step //189
		goto 62.2,39.1
		.talk Timeon##21782
		..turnin Creating the Pendant##10567
		..accept Whispers of the Raven God##10607
	step //190
		goto 62.7,40.4
		.talk O'Mally Zapnabber##22020
		..turnin Damaged Mask##10810
		..accept Mystery Mask##10812
	step //191
		goto 62.2,40.1
		.talk Wildlord Antelarion##22127
		..turnin Mystery Mask##10812
		..accept Felsworn Gas Mask##10819
	step //192
		goto 61.2,38.4
		.talk Mosswood the Ancient##22053
		..turnin Little Embers##10770
		..turnin From the Ashes##10771
	step //193
		ding 68
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Levels (68-70)",[[
	author support@zygorguides.com
	next Zygor's Alliance Leveling Guides\\Northrend (70-72)
	startlevel 68
	step //1
		goto Blade's Edge Mountains,58.8,39.1
		.talk Overseer Nuaar##21981
		..'He wanders around the Wyrmcult camps
		.' Negotiate with Overseer Nuaar|goal Negotiations with Overseer Nuaar complete|q 10682/1
	step //2
		goto 62,39.5
		.talk Tree Warden Chawn##22007
		..turnin A Time for Negotiation...##10682
		..accept ...and a Time for Action##10713
		.talk Samia Inkling##21983
		..accept Poaching from Poachers##10717
	step //3
		goto 59.9,37.8
		.kill 10 Wyrmcult Hewer|q 10713/1
		.' Kill Wyrmcult Poachers
		.get 5 Wyrmcult Net|q 10717/1
		.' Kill Wyrmcult mobs
		.get Meeting Note|n
		.' Click the Meeting Note|use Meeting Note##31120
		..accept Did You Get The Note?##10719
	step //4
		goto 62,39.5
		.talk Samia Inkling##21983
		..turnin Poaching from Poachers##10717
		..accept Whelps of the Wyrmcult##10747
		.talk Tree Warden Chawn##22007
		..turnin ...and a Time for Action##10713
		..turnin Did You Get The Note?##10719
		..accept Wyrmskull Watcher##10894
	step //5
		'Make sure you have your Felsworn Gas Mask in your bags|collect Felsworn Gas Mask##31366|q 10819
		.' It has a 60 minute timer on it|n
		.' If you need another one, talk to Wildlord Antelarion at Evergrove|n
	step //6
		goto 73.2,40
		'Put on your Felsworn Gas Mask|use Felsworn Gas Mask##31366
		.' Click the Legion Communicator|tip Between 2 big green floating crystals.  Must be wearing the Felsworn Gas Mask to use this.
		..turnin Felsworn Gas Mask##10819
		..accept Deceive thy Enemy##10820
	step //7
		goto 74.9,39.9
		.kill 4 Doomforge Attendant|q 10820/1
		.kill 4 Doomforge Engineer|q 10820/2
	step //8
		goto 73.2,40
		.' Put on your Felsworn Gas Mask|use Felsworn Gas Mask##31366
		.' Click the Legion Communicator|tip |tip Between 2 big green floating crystals.  Must be wearing the Felsworn Gas Mask to use this.
		..turnin Deceive thy Enemy##10820
	step //9
		goto 55.2,24
		.' Go up the ramp on the left side of the tower
		.kill Dorgok|q 10795/1
		.get Gorgrom's Favor|n
		.' Click Gorgrom's Favor|use Gorgrom's Favor##31363
		..accept Favor of the Gronn##10797 |tip You have to have the quest "A Date with Dorgok" in your questlog to be able to accept this quest from this item.
	step //10
		goto 56.2,26.7
		.kill 10 Bloodmaul Mauler|q 10796/1
		.kill 5 Bloodmaul Warlock|q 10796/2
	step //11
		goto 62,38
		.talk Lieutenant Fairweather##22150
		..turnin Crush the Bloodmaul Camp!##10796
		.talk Commander Haephus Stonewall##22149
		..turnin A Date with Dorgok##10795
		..turnin Favor of the Gronn##10797
		..accept Pay the Baron a Visit##10798
	step //12
		goto 53.3,41.2
		.talk Baron Sablemane##22103
		..turnin Pay the Baron a Visit##10798
		..accept Into the Churning Gulch##10799
	step //13
		goto 49,44.5
		.' Kill Greater Crust Bursters and Young Crust Bursters
		.get 7 Crust Burster Venom Gland|q 10799/1
	step //14
		goto 53.3,41.2
		.talk Baron Sablemane##22103
		..turnin Into the Churning Gulch##10799
		..accept Goodnight, Gronn##10800
	step //15
		goto 60.2,47.6
		.' Use Sablemane's Sleeping Powder on Grulloc|use Sablemane's Sleeping Powder##31403
		.' Click Grulloc's Sack to get it and run away|get Grulloc's Sack|q 10800/1|tip Grulloc's Sack is a big tan bag sitting at his feet.
	step //16
		goto 53.3,41.2
		.talk Baron Sablemane##22103
		..turnin Goodnight, Gronn##10800
		..accept It's a Trap!##10801
	step //17
		goto 62,38
		.talk Commander Haephus Stonewall##22149
		..turnin It's a Trap!##10801
		..accept Gorgrom the Dragon-Eater##10802
		.talk Lieutenant Fairweather##22150
		..accept Slaughter at Boulder'mok##10803
	step //18
		'Go west across the bridge|goto Blade's Edge Mountains,53.1,37.9,0.5|c
	step //19
		goto 49.9,35.9
		.talk Watcher Moonshade##22386
		..turnin Wyrmskull Watcher##10894
		..accept Longtail is the Lynchpin##10893
	step //20
		'Go into the tunnel|goto Blade's Edge Mountains,49.5,35.8,0.3|c
	step //21
		goto 46.7,32.9
		.kill Draaca Longtail##22396|q 10893/1
	step //22
		goto 49.9,35.9
		.talk Watcher Moonshade##22386
		..turnin Longtail is the Lynchpin##10893
		..accept Meeting at the Blackwing Coven##10722
	step //23
		'Go northwest through the tunnel to Grishnath|goto Blade's Edge Mountains,43.1,29.9,0.3|c
	step //24
		goto 42.2,25.1
		'Kill arakkoas
		.' Get the Understanding Ravenspeech buff|havebuff Ability_Hunter_Pet_DragonHawk|q 10607
		..'Must be within melee range to receive the buff
		.' The buff lasts for 2 minutes
		.' Anytime the buff wears off, kill arakkoas again to get it back
	step //25
		goto 40.7,18.7
		.' Stand next to the wooden totem with the Understanding Ravenspeech buff on you|tip On the ground, next to a pond with basilisks in it.  It looks like a wooden totem.
		.' Receive the Third Prophecy|goal Receive the Third Prophecy|q 10607/3
	step //26
		goto 39,17.2
		.' Stand next to the wooden totem with the Understanding Ravenspeech buff on you|tip Up the left ramp, then left across the hanging bridge.  It looks like a wooden totem.
		.' Receive the First Prophecy|goal Receive the First Prophecy|q 10607/1
	step //27
		goto 42.5,21.6
		.' Stand next to the wooden totem with the Understanding Ravenspeech buff on you|tip Up the right ramp, then go right across the hanging bridge, then down the stairs to the left.  It looks like a wooden totem.
		.' Receive the Second Prophecy|goal Receive the Second Prophecy|q 10607/2
	step //28
		goto 40.2,23
		.' Stand next to the wooden totem with the Understanding Ravenspeech buff on you|tip On the ground, in front of a hut.  It looks like a wooden totem.
		.' Receive the Fourth Prophecy|goal Receive the Fourth Prophecy|q 10607/4
		.' Kill arakkoas
		.get Orb of the Grishna|n
		.' Click the Orb of the Grishna|use Orb of the Grishna##31489
		..accept The Truth Unorbed##10825
	step //29
		goto 32.3,34.9
		.' Go inside the cave
		.' Use the Blackwhelp Net on Wyrmcult Blackwhelps|use Blackwhelp Net##31129
		.' Capture 10 Wyrmcult Blackwhelps|goal 10 Wyrmcult Blackwhelp|q 10747/1
		.' Kill Wyrmcultists
		.collect 5 Costume Scraps##31121|q 10722
	step //30
		goto 32.6,37.5
		.' Combine your 5 Costume Scraps to make an Overseer Disguise|use Costume Scraps##31121
		.' Put on the Overseer Disguise|use Overseer Disguise##31122
		.talk Kolphis Darkscale##22019
		..'Attend the meeting with Kolphis Darkscale|goal Meeting with Kolphis Darkscale attended|q 10722/1
	step //31
		goto 30.3,24.6
		.kill 5 Boulder'mok Brute|q 10803/1
		.kill 3 Boulder'mok Shaman|q 10803/2
		.' Kill Boulder'mok mobs
		.collect 3 Grisly Totem##31754|q 10803
	step //32
		goto 30.6,22.2
		.' Click Gorgrom's Altar|tip A big stone square block in the middle of the camp.
		.' He will run up to the altar and die
		.' Use the Grisly Totems on his corpse|use Grisly Totem##31754
		.' Plant 3 Grisly Totems|goal 3 Plant Grisly Totem|q 10802/1
	step //33
		'Go through the tunnel to 62,39.5|goto 62,39.5
		.talk Samia Inkling##21983
		..turnin Whelps of the Wyrmcult##10747
		.talk Tree Warden Chawn##22007
		..turnin Meeting at the Blackwing Coven##10722
		..accept Maxnar Must Die!##10748
		..turnin The Truth Unorbed##10825
		..accept Treebole Must Know##10829
	step //34
		goto 62.2,39.1
		.talk Timeon##21782
		..turnin Whispers of the Raven God##10607
	step //35
		goto 62,38
		.talk Commander Haephus Stonewall##22149
		..turnin Gorgrom the Dragon-Eater##10802
		..accept Baron Sablemane Has Requested Your Presence##10818
		.talk Lieutenant Fairweather##22150
		..turnin Slaughter at Boulder'mok##10803
	step //36
		goto 53.3,41.2
		.talk Baron Sablemane##22103
		..turnin Baron Sablemane Has Requested Your Presence##10818
	step //37
		'Go through the tunnel to 36.9,22.5|goto 36.9,22.5
		.talk Treebole##22215
		..turnin Treebole Must Know##10829
		..accept Exorcising the Trees##10830
	step //38
		goto 39.3,20.2
		.' Click the purple balls in the claw looking rods|tip They are around the huts in this area.
		.collect 5 Grishnath Orb##31495|q 10830
	step //39
		goto 30.1,28.6
		.' Kill Dire Ravens
		.collect 5 Dire Pinfeather##31517|q 10830
	step //40
		goto 33.8,29.4
		.' Click your Grishnath Orbs to combine the orbs and pinfeathers|use Grishnath Orb##31495
		.' Create 5 Exorcism Feathers
		.' Use the Exorcism Feathers on the Raven's Wood Leafbeards|use Exorcism Feather##31518
		.' Kill the Koi Koi spirits that spawn to free the trees
		.' Exorcise 5 Raven's Wood Leafbeards|goal 5 Leafbeard Exorcised|q 10830/1
	step //41
		goto 36.9,22.5
		.talk Treebole##22215
		..turnin Exorcising the Trees##10830
	step //42
		goto 32.3,34.9
		.' Go inside the cave
		.' Kill Wyrmcultists
		.collect 5 Costume Scraps##31121|q 10748
	step //43
		.' Combine your 5 Costume Scraps to make an Overseer Disguise|use Costume Scraps##31121
		.' Put on the Overseer Disguise|havebuff Overseer Disguise|use Overseer Disguise##31122|q 10748/1
	step //44
		'Go inside the cave to 33.9,35.4|goto 33.9,35.4
		.kill Maxnar the Ashmaw##21389|q 10748/1
	step //45
		'Hearth to Sylvanaar|goto Blade's Edge Mountains,35.9,63.9,0.3|use Hearthstone##6948|noway|c
	step //46
		'Fly to Evergrove|goto Blade's Edge Mountains,61.7,39.6,0.3|noway|c
	step //47
		goto 62,39.5
		.talk Tree Warden Chawn##22007
		..turnin Maxnar Must Die!##10748
	step //48
		'Go northeast to Netherstorm|goto Netherstorm|noway|c
	step //49
		goto Netherstorm,21.3,55.6
		.talk Netherologist Coppernickels##19569
		..accept Off To Area 52##10183
	step //50
		goto 31.5,56.6
		.talk Bot-Specialist Alley##19578
		..accept Recharging the Batteries##10190
	step //51
		goto 26.5,51.9
		.' Kill Phase Hunters
		.' You will see a message in your chat window saying 'Phase Hunter is very weak'
		.' Use your Battery Recharging Blaster on them when you see this message|use Battery Recharging Blaster##28369
		.goal 10 Battery Charge Level|q 10190/1
	step //52
		goto 31.5,56.6
		.talk Bot-Specialist Alley##19578
		..turnin Recharging the Batteries##10190
	step //53
		goto 32.3,63.9
		.talk Boots##19617
		..accept Securing the Shaleskin Shale##10342
	step //54
		goto 32.0,64.2
		.talk Anchorite Karja##19467
		..accept Assisting the Consortium##10263
	step //55
		goto 32.4,64.2
		.talk Nether-Stalker Khay'ji##19880
		..turnin Assisting the Consortium##10263
		..accept Consortium Crystal Collection##10265
	step //56
		goto 32.1,64.2
		.talk Exarch Orelis##19466
		..accept Distraction at Manaforge B'naar##10241
	step //57
		home Area 52
	step //58
		goto 32.7,65
		.talk Rocket-Chief Fuselage##19570
		..turnin Off To Area 52##10183
		..accept You're Hired!##10186
	step //59
		goto 31.4,66.2
		.talk Ravandwyr##19217
		..accept The Archmage's Staff##10173
	step //60
		goto 33.7,64
		.talk Krexcil##18938
		..fpath Area 52
	step //61
		goto 33.1,60.0
		.' Kill Shaleskin Flayers
		.get 5 Shaleskin Shale|q 10342/1
	step //62
		goto 31.5,56.6
		.talk Maxx A. Million Mk. V##19589
		..accept Mark V is Alive!##10191
		.' Escort Maxx A. Million Mk. V|goal Escort the Maxx A. Million Mk. V safely through the Ruins of Enkaat|q 10191/1
		.' Click the red glowing crystals on the ground while escorting Maxx A. Million Mk. V
		.get 10 Etherlithium Matrix Crystal|q 10186/1
	step //63
		goto 31.5,56.6
		.talk Bot-Specialist Alley##19578
		..turnin Mark V is Alive!##10191
	step //64
		goto 32.3,63.9
		.talk Boots##19617
		..turnin Securing the Shaleskin Shale##10342
		..accept That Little Extra Kick##10199
	step //65
		goto 32.7,65
		.talk Rocket-Chief Fuselage##19570
		..turnin You're Hired!##10186
		..accept Invaluable Asset Zapping##10203
		..accept Report to Engineering##10225
	step //66
		goto 32.4,66.8
		.talk Chief Engineer Trep##19709
		..turnin Report to Engineering##10225
		..accept Essence for the Engines##10224
	step //67
		goto 33.8,58.5
		.' Kill Mana Wraiths
		.get 7 Mana Wraith Essence|q 10224/1
	step //68
		goto 32.4,66.8
		.talk Chief Engineer Trep##19709
		..turnin Essence for the Engines##10224
		..accept Elemental Power Extraction##10226
	step //69
		goto 26.3,66.7
		.kill 8 Sunfury Magister|q 10241/1
		.kill 8 Sunfury Bloodwarder|q 10241/2
	step //70
		goto 35.4,76.5
		.' Use the Elemental Power Extractor on Sundered Rumblers and Warp Aberrations|use Elemental Power Extractor##28547
		.' Kill them
		.' Click the blue crystal floating above their corpses
		.get 5 Elemental Power|q 10226/1
	step //71
		goto 40.3,72.9
		.' Click the tall metal turret with the gun pointing at the ground
		.' Retrieve the Multi-Spectrum Terrain Analyzer|goal Multi-Spectrum Terrain Analyzer retrieved|q 10203/3
	step //72
		goto 41,73.8
		.' Click the wooden cart with a big digging wheel on it
		.' Retrieve the Hyper Rotational Dig-A-Matic|goal Hyper Rotational Dig-A-Matic retrieved|q 10203/1
	step //73
		goto 42.4,72.8
		.from Pentatharon##20215
		.get Arklon Crystal Artifact|q 10265/1
	step //74
		goto 42.5,72.2
		.' Click the wagon with a bunch of explosives on it
		.' Retrieve the Big Wagon Full of Explosives|goal Big Wagon Full of Explosives retrieved|q 10203/4
	step //75
		goto 41.4,71.8
		.' Click the crane digging machine with a bunch of gears on it
		.' Retrieve the Servo-Pneumatic Dredging Claw|goal Servo-Pneumatic Dredging Claw retrieved|q 10203/2
	step //76
		goto 40.9,72.5
		.' Stand next to the broken, smoking altar on the small hill
		.' Use your Conjuring Powder to summon Ekkorash|use Conjuring Powder##29207
		.' Kill Ekkorash
		.get Archmage Vargoth's Staff|q 10173/1
	step //77
		goto 44.6,72.1
		.kill Nether Rays|n
		.get 5 Nether Ray Stinger|q 10199/1
	step //78
		goto 34.2,68.1
		.talk Lead Sapper Blastfizzle##19634
		..turnin Invaluable Asset Zapping##10203
		..accept Dr. Boom!##10221
	step //79
		goto 32.4,66.8
		.talk Chief Engineer Trep##19709
		..turnin Elemental Power Extraction##10226
	step //80
		goto 31.4,66.2
		.talk Ravandwyr##19217
		..turnin The Archmage's Staff##10173
		..accept Rebuilding the Staff##10300
	step //81
		goto 32.1,64.2
		.talk Exarch Orelis##19466
		..turnin Distraction at Manaforge B'naar##10241
		..accept Measuring Warp Energies##10313
		.talk Anchorite Karja##19467
		..accept Naaru Technology##10243
	step //82
		goto 32.4,64.2
		.talk Nether-Stalker Khay'ji##19880
		..turnin Consortium Crystal Collection##10265
		..accept A Heap of Ethereals##10262
	step //83
		goto 32.3,63.9
		.talk Boots##19617
		..turnin That Little Extra Kick##10199
	step //84
		goto 33,64.7
		.talk Papa Wheeler##19645
		..accept Pick Your Part##10206
	step //85
		goto 33.5,53
		.' Kill Disembodied Ghosts
		.get 4 Flawless Crystal Shard|q 10300/1
	step //86
		goto 35,59.6
		.' Dr. Boom sends out little walking bombs that blow up|tip When you see a clear passage to Dr. Boom, click the Boom's Doom in your bags, then run close enough to Dr. Boom so you can put the green circle under him, then click to throw the bomb.  Get just close enough so that the very edge of the green circle is under his feet.  This way, you will be close enough to hit him, but far enough away that he won't throw bombs back at you.
		.'Click Boom's Doom in your bags|use Boom's Doom##29429
		.kill 1 Dr. Boom|q 10221/1
	step //87
		goto 31.4,66.2
		.talk Ravandwyr##19217
		..turnin Rebuilding the Staff##10300
		..accept Curse of the Violet Tower##10174
	step //88
		goto 34.2,68.1
		.talk Lead Sapper Blastfizzle##19634
		..turnin Dr. Boom!##10221
	step //89
		goto 25.7,60.6
		.' Stand next to the Northern Pipeline
		.' Use your Warp-Attuned Orb|use Warp-Attuned Orb##29324
		.' Measure the Northern Pipeline|goal Northern Pipeline Measured|q 10313/1
	step //90
		goto 20.9,66.9
		.' Stand next to the Western Pipeline
		.' Use your Warp-Attuned Orb|use Warp-Attuned Orb##29324
		.' Measure the Western Pipeline|goal Western Pipeline Measured|q 10313/4
	step //91
		goto 20.7,70.7
		.' Stand next to the Southern Pipeline
		.' Use your Warp-Attuned Orb|use Warp-Attuned Orb##29324
		.' Measure the Southern Pipeline|goal Southern Pipeline Measured|q 10313/3
	step //92
		goto 23.2,68.2
		.' Click the B'naar Control Console|tip Inside the doorway northeast of the Southern Pipeline, to the left.
		..turnin Naaru Technology##10243
		..accept B'naar Console Transcription##10245
	step //93
		goto 29,72.7
		.' Stand next to the Eastern Pipeline
		.' Use your Warp-Attuned Orb|use Warp-Attuned Orb##29324
		.' Measure the Eastern Pipeline|goal Eastern Pipeline Measured|q 10313/2
	step //94
		goto 30.2,75.5
		.' Kill Zaxxis mummies
		.get 10 Zaxxis Insignia|q 10262/1
		.' Click the Ethereal Technology on the ground|tip The Ethereal Technology looks like little clear cases with purple electricity in them.
		.get 10 Ethereal Technology|q 10206/1
	step //95
		goto 33,64.7
		.talk Papa Wheeler##19645
		..turnin Pick Your Part##10206
		..accept In A Scrap With The Legion##10232
		..accept Help Mama Wheeler##10333
	step //96
		goto 32.4,64.2
		.talk Nether-Stalker Khay'ji##19880
		..turnin A Heap of Ethereals##10262
		..accept Warp-Raider Nesaad##10205
	step //97
		goto 32.1,64.2
		.talk Exarch Orelis##19466
		..turnin Measuring Warp Energies##10313
		.talk Anchorite Karja##19467
		..turnin B'naar Console Transcription##10245
		..accept Shutting Down Manaforge B'naar##10299
	step //98
		ding 69
	step //99
		'Go inside Manaforge B'naar to 23.3,68.6|goto 23.9,70.7
		.from Overseer Theredis##20416
		.get B'naar Access Crystal|q 10299/2
	step //100
		goto 23.2,68.1
		.' Kill all Warp-Engineers in the nearest area to make your life easier.
		.' Click the B'naar Control Console
		.' Click "<Begin emergency shutdown>"
		.' Kill the technicians as they come to try to save the Manaforge
		..'Only takes 2 minutes
		.' Shut Down Manaforge B'naar|goal Manaforge B'naar Shut Down|q 10299/1
	step //101
		'Go outside to 32.1,64.2|goto 32.1,64.2
		.talk Anchorite Karja##19467
		..turnin Shutting Down Manaforge B'naar##10299
		..accept Shutting Down Manaforge Coruu##10321
	step //102
		goto 28.2,79.4
		.kill Warp-Raider Nesaad##19641|q 10205/1
	step //103
		goto 32.4,64.2
		.talk Nether-Stalker Khay'ji##19880
		..turnin Warp-Raider Nesaad##10205
		..accept Request for Assistance##10266
	step //104
		'Go inside Manaforge Coruu to 49,81.5|goto 49,81.5
		.' Kill Overseer Seylanna
		..collect Coruu Access Crystal##29396|q 10321|sticky
		.' Click the Coruu Control Console
		..' Click "<Begin emergency shutdown>"
		.' Kill the technicians as they come to try to save the Manaforge
		..'Only takes 2 minutes
		.' Shut Down Manaforge Coruu|goal Manaforge Coruu Shut Down |q 10321/1
	step //105
		goto 32.1,64.2
		.talk Anchorite Karja##19467
		..turnin Shutting Down Manaforge Coruu##10321
		.talk Exarch Orelis##19466
		..accept Attack on Manaforge Coruu##10246
	step //106
		goto 45.9,79.4
		.' 3 Researchers inside, you'll have to wait for them to respawn.
		.kill 5 Sunfury Researcher|q 10246/1
		.' Arcanists are outside all over.
		.kill 8 Sunfury Arcanist|q 10246/2
	step //107
		'Go outside to 57.7,85.2|goto 57.7,85.2
		.talk Thadell##20464
		..accept Needs More Cowbell##10334
		.talk Apprentice Andrethan##20463
		..accept Indispensable Tools##10331
	step //108
		goto 57.5,86.3
		.' Use Archmage Vargoth's Staff|use Archmage Vargoth's Staff##28455
		.talk Image of Archmage Vargoth##19644
		..turnin Curse of the Violet Tower##10174
		..accept The Sigil of Krasus##10188
		.talk Custodian Dieworth##19488
		..accept Malevolent Remnants##10184
		..accept A Fate Worse Than Death##10185
		.talk Lieutenant-Sorcerer Morran##19489
		..accept The Unending Invasion##10343
//	step //108
//		.' Kill 20 Severed Spirits as you quest around this area |q 10184/1
//		.' Skip to the next step of the guide
	step //109
		goto 59.1,78.8
		.talk Bessy##20415
		..turnin Needs More Cowbell##10334
		..accept When the Cows Come Home##10337
		.' Escort Bessy to Thadell|goal Escort Bessy on her way home.|q 10337/1
	step //110
		'At 57.7,85.2|goto 57.7,85.2
		.talk Thadell##20464
		..turnin When the Cows Come Home##10337
	step //111
		goto 58.4,88.3
		.from Abjurist Belmara##19546
		.get Belmara's Tome|n
		.' Click Belmara's Tome|use Belmara's Tome##29234
		..accept Abjurist Belmara##10305
	step //112
		goto 59.6,87.7
		.from Cohlien Frostweaver##19545
		.get Cohlien's Cap|n
		.' Click Cohlien's Cap|use Cohlien's Cap##29236
		..accept Cohlien Frostweaver##10307
	step //113
		goto 60.4,88
		.from Battle-Mage Dathric##19543
		.get Dathric's Blade|n
		.' Click Dathric's Blade|use Dathric's Blade##29233
		..accept Battle-Mage Dathric##10182
	step //114
		goto 59.9,85.6
		.from Conjurer Luminrath##19544
		.get Luminrath's Mantle|n
		.' Click Luminrath's Mantle|use Luminrath's Mantle##29235
		..accept Conjurer Luminrath##10306
	step //115
		goto 61,85
		.' Kill Kirin'Var Apprentices
		.get Smithing Hammer|q 10331/1
	step //115
		'Make sure you have killed 20 Severed Spirits|kill 20 Severed Spirit|q 10184/1
	step //116
		goto 57.7,85.2
		.talk Apprentice Andrethan##20463
		..turnin Indispensable Tools##10331
		..accept Master Smith Rhonsus##10332
	step //117
		goto 57.5,86.3
		.talk Custodian Dieworth##19488
		..turnin Malevolent Remnants##10184
		..accept The Annals of Kirin'Var##10312
	step //118
		goto 61.3,85
		.kill Rhonsus##20410|q 10332/1
	step //119
		goto 57.7,85.2
		.talk Apprentice Andrethan##20463
		..turnin Master Smith Rhonsus##10332
	step //120
		.' Kill 10 Mana Seekers and 10 Mageslayers as you do the following steps:|n
		.' Skip to the next step of the guide
	step //121
		goto 56.9,86.8
		.' Go inside the little house
		.' Click Dathric's Blade when standing next to the Weapon Rack|use Dathric's Blade##28351|tip Inside a little house.
		.' Put Dathric's Spirit to Rest|goal Put Dathric's Spirit to Rest|q 10182/1
	step //122
		goto 56.4,87.8
		.' Go inside the little house
		.' Click Luminrath's Mantle when standing next to the Dresser|use Luminrath's Mantle##28352|tip Inside a little house.
		.' Put Luminrath's Spirit to Rest|goal Put Luminrath's Spirit to Rest|q 10306/1
	step //123
		goto 55.7,87.2
		.' Click the Mana Bomb Fragment|tip It looks like a big white ball with blue dots on it.
		.get Mana Bomb Fragment|q 10343/1
	step //124
		goto 55.1,87.5
		.' The Foot Locker is in a pile of junk in the corner in a house with no roof
		.' Click Cohlien's Cap when standing next to the Foot Locker|use Cohlien's Cap##28353
		.' Put Cohlien's Spirit to Rest|goal Put Cohlien's Spirit to Rest|q 10307/1
	step //125
		goto 55.5,86.5
		.' Go inside the house with a huge log laying diagonally into it
		.' Click Belmara's Tome when standing next to the Bookshelf|use Belmara's Tome##28336|tip A little wooden bookshelf in a house with a huge log laying diagonally into the house, there is no roof.
		.' Put Belmara's Spirit to Rest|goal Put Belmara's Spirit to Rest|q 10305/1
	step //126
		goto 55.5,86.7
		.'Make sure you've done the following:
		..kill 10 Mana Seeker|q 10185/1
		..kill 10 Mageslayer|q 10185/2
	step //127
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
	step //128
		goto 60.4,88
		.from Battle-Mage Dathric##19543
		.get Annals of Kirin'Var|q 10312/1
	step //129
		goto 57.5,86.3
		.talk Custodian Dieworth##19488
		..turnin The Annals of Kirin'Var##10312
		..accept Searching for Evidence##10316
	step //130
		goto 60.3,78
		.' Go inside the barn
		.' Click the Necromantic Focus|tip Inside the barn, looks like a stone altar with a reddish pink ball of light floating above it.
		..turnin Searching for Evidence##10316
		..accept A Lingering Suspicion##10314
	step //131
		goto 59.8,79.5
		.' Kill ghosts around this area
		.get 10 Loathsome Remnant|q 10314/1
	step //132
		goto 57.5,86.3
		.talk Custodian Dieworth##19488
		..turnin A Lingering Suspicion##10314
		..accept Capturing the Phylactery##10319
	step //133
		goto 59.9,80.4
		.' Click the Supicious Outhouse|tip The middle outhouse behind the first building on your right as you walk over the bridge, headed away from the huge tower where the quest gives are.
		.get Naberius's Phylactery|q 10319/1
	step //134
		goto 57.5,86.3
		.talk Custodian Dieworth##19488
		..turnin Capturing the Phylactery##10319
	step //135
		goto 51.1,82.5
		.' Click the Energy Isolation Cubes|tip They look like little clear boxes with purple light in them on the ground.
		.get 10 Energy Isolation Cube|q 10239/1
		.' Kill Spellbinder Maryana|tip I found her here, but she wanders around outside in this area, so some searching may be necessary.
		.get Sigil of Krasus|q 10188/1
	step //136
		goto 51.1,80.7
		.' Use Archmage Vargoth's Staff|use Archmage Vargoth's Staff##28455
		.talk Image of Archmage Vargoth##19644
		..turnin The Sigil of Krasus##10188
		..accept Krasus's Compendium##10192
	step //137
		goto 57.5,86.3
		.talk Lieutenant-Sorcerer Morran##19489
		..turnin Potential Energy Source##10239
		..accept Building a Perimeter##10240
	step //138
		goto 57.6,89.6
		.' Click the glowing scroll on the ground in the small house
		.get Krasus's Compendium - Chapter 2|q 10192/2
	step //139
		goto 58.6,89.2
		.' Click the glowing scroll on a table in the small house
		.get Krasus's Compendium - Chapter 1|q 10192/1
	step //140
		goto 58.8,87.9
		.' Click the glowing scroll on the ground in the small house
		.get Krasus's Compendium - Chapter 3|q 10192/3
	step //141
		.' Use Archmage Vargoth's Staff|use Archmage Vargoth's Staff##28455
		.talk Image of Archmage Vargoth##19644
		..turnin Krasus's Compendium##10192
		..accept Unlocking the Compendium##10301
	step //142
		goto 59.2,85.4
		.' Use your Rune Activation Device on the blue floating symbol|use Rune Activation Device##28725
		.' Activate the Eastern Rune|goal Activate Eastern Rune|q 10240/1
	step //143
		goto 57.3,82.9
		.' Use your Rune Activation Device on the blue floating symbol|use Rune Activation Device##28725
		.' Activate the Northeastern Rune|goal Activate Northeastern Rune|q 10240/2
	step //144
		goto 54.3,86.1
		.' Use your Rune Activation Device on the blue floating symbol|use Rune Activation Device##28725
		.' Activate the Western Rune|goal Activate Western Rune|q 10240/3
	step //145
		goto 57.5,86.3
		.talk Lieutenant-Sorcerer Morran##19489
		..turnin Building a Perimeter##10240
		..accept Torching Sunfury Hold##10233
		.talk Custodian Dieworth##19488
		..accept The Sunfury Garrison##10222
	step //146
		goto 56.5,78.5
		.kill 10 Sunfury Archer|q 10222/1
		.' Kill a Sunfury Flamekeeper
		.get Flaming Torch|n
		.' Use the torch on the tall hut looking things and the big spear gun cars|use Flaming Torch##28550|tip The tents are tall hut looking things, and the Sunfury Ballistas look like big spear gun cars.
		.' Destroy 4 Sunfury Ballistas|goal 4 Sunfury Ballista Destroyed|q 10233/1
		.' Destroy 4 Sunfury Tents|goal 4 Sunfury Tent Destroyed|q 10233/2
		.' Kill Spellweaver Marathelle|tip She walks around this area, so some searching may be necessary.
		.get Heliotrope Oculus|q 10301/1
	step //147
		'Use Archmage Vargoth's Staff|use Archmage Vargoth's Staff##28455
		.talk Image of Archmage Vargoth##19644
		..turnin Unlocking the Compendium##10301
		..accept Summoner Kanthin's Prize##10209
	step //148
		goto 57.5,86.3
		.talk Lieutenant-Sorcerer Morran##19489
		..turnin Torching Sunfury Hold##10233
		.talk Custodian Dieworth##19488
		..turnin The Sunfury Garrison##10222
		..accept Down With Daellis##10223
	step //149
		goto 56.6,66.1
		.kill Master Daellis Dawnstrike|q 10223/1|tip He runs along the cliff in this area.
	step //150
		goto 57.4,64.6
		.from Summoner Kanthin##19657
		.get 1 Stone of Glacius|q 10209/1
	step //151
		'Use Archmage Vargoth's Staff|use Archmage Vargoth's Staff##28455
		.talk Image of Archmage Vargoth##19644
		..turnin Summoner Kanthin's Prize##10209
		..accept Ar'kelos the Guardian##10176
	step //152
		goto 57.5,86.3
		.talk Custodian Dieworth##19488
		..turnin Down With Daellis##10223
	step //153
		'Go inside the tower to 58.2,86.5|goto 58.2,86.5
		.kill Ar'kelos|q 10176/1|tip He's right inside the tower.
	step //154
		'Go to the top of the tower to 58.3,86.4|goto 58.3,86.4
		.talk Archmage Vargoth##19481
		..turnin Ar'kelos the Guardian##10176
	step //155
		goto 32.1,64.2
		.talk Exarch Orelis##19466
		..turnin Attack on Manaforge Coruu##10246
		.talk Anchorite Karja##19467
		..turnin Shutting Down Manaforge Coruu##10321
		..accept Shutting Down Manaforge Duro##10322
		.talk Exarch Orelis##19466
		..accept Sunfury Briefings##10328
	step //156
		goto 46.7,56.9
		.talk Gahruj##20066
		..turnin Request for Assistance##10266
		..accept Rightful Repossession##10267
		..accept Drijya Needs Your Help##10311
	step //157
		goto 46.6,56.5
		.talk Mama Wheeler##19728
		..turnin Help Mama Wheeler##10333
		..accept One Demon's Trash...##10234
	step //158
		goto 46.4,56.4
		.talk Mehrdad##20810
		..accept Run a Diagnostic!##10417
		..accept New Opportunities##10348
	step //159
		goto 46.5,56.0
		.talk Shauly Pore##20921
		..accept Keeping Up Appearances##10433
	step //160
		goto 48.2,55.0
		.' Click the Diagnostic Equipment|tip It looks like a small cylinder machine with pink electricity inside of it.
		.get Diagnostic Results|q 10417/1
	step //161
		goto 48.2,53.9
		.' Click Ivory Bells around this area|tip The Ivory Bells look like tall flowers with a single purple and pink bulb at the top.
		.get 15 Ivory Bell|q 10348/1
		.from Ripfang Lynx##20671
		.get 10 Ripfang Lynx Pelt|q 10433/1
	step //162
		goto 46.5,56.0
		.talk Shauly Pore##20921
		..turnin Keeping Up Appearances##10433
		..accept The Dynamic Duo##10434
	step //163
		goto 46.4,56.4
		.talk Mehrdad##20810
		..turnin New Opportunities##10348
		..turnin Run a Diagnostic!##10417
		..accept Deal With the Saboteurs##10418
	step //164
		goto 46.8,53.9
		.kill 8 Barbscale Crocolisk|q 10418/1
	step //165
		goto 46.4,56.4
		.talk Mehrdad##20810
		..turnin Deal With the Saboteurs##10418
		..accept To the Stormspire##10423
	step //166
		goto 48.1,63.5
		.talk Drijya##20281
		..turnin Drijya Needs Your Help##10311
	step //167
		goto 48.4,59.3
		.' Click Fel Reaver Parts|n|tip The Feal Reaver Parts look like brownish-green metal parts laying on the ground around this area.
		.get 10 Fel Reaver Part|q 10234/1
		.kill 15 Gan'arg Engineer|q 10232/2
		.kill 5 Mo'arg Doomsmith|q 10232/1
	step //168
		goto 46.6,56.5
		.talk Mama Wheeler##19728
		..turnin One Demon's Trash...##10234
		..accept Declawing Doomclaw##10235
	step //169
		goto 50.7,57.1
		.from Doomclaw##19738
		.get 1 Doomclaw's Hand|q 10235/1
	step //170
		goto 46.6,56.5
		.talk Mama Wheeler##19728
		..turnin Declawing Doomclaw##10235
		..accept Warn Area 52!##10237
	step //171
		goto 57.9,63.4
		.kill Sunfury Conjurers|n
		.get 1 Sunfury Arcane Briefing|q 10328/2
		.kill Sunfury Bowmen and Sunfury Centurions|n
		.get 1 Sunfury Military Briefing|q 10328/1
		.' Click Boxes of Surveying Equipment|tip They look like small grey boxes on the ground around this area.
		.get 10 Box of Surveying Equipment|q 10267/1
	step //172
		'Go inside Manaforge Duro to 60.0,68.5|goto 60.0,68.5
		.from Overseer Athanel##20435
		.get 1 Duro Access Crystal|q 10322/2
	step //173
		goto 59.1,66.8
		.' Click the Duro Control Console
		.' Click "<Begin emergency shutdown>"
		.' Kill the technicians as they come to try to save the Manaforge
		..'Only takes 2 minutes
		.' Shut Down Manaforge Duro|goal Manaforge Duro Shut Down|q 10322/1
	step //174
		goto 46.7,56.9
		.talk Gahruj##20066
		..turnin Rightful Repossession##10267
		..accept An Audience with the Prince##10268
	step //175
		goto 42.3,32.6
		.talk Aurine Moonblaze##20871
		..accept Flora of the Eco-Domes##10426
	step //176
		goto 40.4,33.5
		.' Use your Energy Field Modulator on Farahlon Lashers|use Energy Field Modulator##29818
		.kill Mutated Farahlon Lashers|n
		.' Test the Energy Field Modulator 10 times|goal 10 Test Energy Modulator|q 10426/1
	step //177
		goto 42.3,32.6
		.talk Aurine Moonblaze##20871
		..turnin Flora of the Eco-Domes##10426
		..accept Creatures of the Eco-Domes##10427
	step //178
		goto 43.7,30.2
		.' Fight Talbuk Does and Talbuk Sires|tip You will see a message in your chat window when they are at about 20% health, saying "Talbuk Doe, or Sire, seems to have weakened."
		.' Use your Talbuk Tagger on Talbuk when you see the message in your chat|use Talbuk Tagger##29817
		.' Tag 12 Talbuks|goal 12 Talbuk Tagged|q 10427/1
	step //179
		goto 42.3,32.6
		.talk Aurine Moonblaze##20871
		..turnin Creatures of the Eco-Domes##10427
		..accept When Nature Goes Too Far##10429
	step //180
		goto 44.6,28.4
		.from Markaru##20775
		.get 1 Hulking Hydra Heart|q 10429/1
	step //181
		goto 42.3,32.6
		.talk Aurine Moonblaze##20871
		..turnin When Nature Goes Too Far##10429
	step //182
		'Ride the elevating platform up and go to 43.5,35.1|goto 43.5,35.1
		.talk Ghabar##20811
		..turnin To the Stormspire##10423
		..accept Diagnosis: Critical##10424
	step //183
		goto 44.7,36.7
		.talk Audi the Needle##20205
		..turnin The Dynamic Duo##10434
		..accept Retrieving the Goods##10435
	step //184
		goto 45.9,36.0
		.talk Image of Nexus-Prince Haramad##20084
		..turnin An Audience with the Prince##10268
	step //185
		goto 45.3,34.9
		.talk Grennik##19583
		..fpath The Stormspire
	step //186
		goto 47.6,26.8
		.' Use your Diagnostic Device next to the big floating cylinder|use Diagnostic Device##29803
		.get 1 Diagnostic Results|q 10424/1
	step //187
		goto 43.5,35.1
		.talk Ghabar##20811
		..turnin Diagnosis: Critical##10424
		..accept Testing the Prototype##10430
	step //188
		goto 44.7,14.6
		.talk Tashar##20913
		..turnin Testing the Prototype##10430
		..accept All Clear!##10436
	step //189
		goto 44.0,14.0
		.kill 12 Scythetooth Raptor|q 10436/1
		.' Click Dome Generator Segments|tip They look like small glass cylinders on the ground with purple lightning in them.
		.get 10 Dome Generator Segment|q 10435/1
	step //190
		goto 44.7,14.6
		.talk Tashar##20913
		..turnin All Clear!##10436
		.' Wait a few seconds for him to return to where he was once standing.
		..accept Success!##10440
	step //191
		goto 43.5,35.1
		.talk Ghabar##20811
		..turnin Success!##10440
	step //192
		goto 44.7,36.7
		.talk Audi the Needle##20205
		..turnin Retrieving the Goods##10435
	step //193
		'Fly to Area 52|goto 33.9,63.9,0.5|noway|c
	step //194
		goto 33,64.7
		.talk Papa Wheeler##19645
		..turnin In A Scrap With The Legion##10232
	step //195
		goto 32.7,65
		.talk Rocket-Chief Fuselage##19570
		..turnin Warn Area 52!##10237
	step //196
		goto 32.1,64.2
		.talk Exarch Orelis##19466
		..turnin Sunfury Briefings##10328
		.talk Anchorite Karja##19467
		..turnin Shutting Down Manaforge Duro##10322
	step //197
		ding 70
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Northrend (70-72)",[[
	author support@zygorguides.com
	next Zygor's Alliance Leveling Guides\\Northrend (72-74)
	startlevel 70
	step //1
		'Go to Stormwind|goto Stormwind City|noway|c
	step //2
		'Go to the Auction House or get an Engineer to make you one:
		.' Buy 1 Overcharged Capacitor|buy 1 Overcharged Capacitor |q 11650/1
	step //3
		goto 18.2,25.5|n
		.'Ride the boat to Borean Tundra|goto Borean Tundra|noway|c
	step //4
		goto Borean Tundra,59,68.3
		.talk Tomas Riverwell##26879
		..fpath Valiance Keep
	step //5
		home Valiance Keep
	step //6
		goto 57.8,67.6
		.talk Recruitment Officer Blythe##25307
		..accept Enlistment Day##11672
	step //7
		goto 56.7,72.6
		.talk General Arlos##25250
		..turnin Enlistment Day##11672
		..accept A Time for Heroes##11727
	step //8
		goto 56.4,69.6
		.talk Sergeant Hammerhill##25816
		..turnin A Time for Heroes##11727
		..accept The Siege##11797
	step //9
		goto 55,68.9
		.talk Medic Hawthorn##25825
		..accept A Soldier in Need##11789
	step //10
		goto 54.4,69.6
		.kill 6 Crypt Crawler|q 11797/1
	step //11
		goto 56.4,69.6
		.talk Sergeant Hammerhill##25816
		..turnin The Siege##11797
		..accept Death From Above##11889
	step //12
		goto 57.5,69.3
		.' Click the First Aid Supplies|tip It's a small brown chest, downstairs in this ship, next to a candle shrine.
		.get Hawthorn's Anti-Venom|q 11789/1
	step //13
		goto 57.5,69.1
		.' Click the Cultist Shrine|tip It looks like a small candle shrine on the ground downstairs in this ship, next to the wall.
		..accept Cultists Among Us##11920 // 11720 is the same quest, but it was 11920 for me... odd.
	step //14
		goto 57.8,69.2
		.talk Captain "Lefty" Lugsail##25298
		..turnin Cultists Among Us##11920
	step //15
		goto 57.8,69.2
		.talk Admiral Cantlebree##25299
		..accept Notify Arlos##11791
	step //16
		goto 56.7,72.6
		.talk General Arlos##25250
		..turnin Notify Arlos##11791
	step //17
		goto 56.7,72.6
		.talk Counselor Talbot##25301
		..accept A Diplomatic Mission##12141
	step //18
		goto 56.6,72.5
		.talk Harbinger Vurenn##25285
		..accept Enemies of the Light##11792
	step //19
		goto 55,68.9
		.talk Medic Hawthorn##25825
		..turnin A Soldier in Need##11789
	step //20
		goto 55,70.5
		.' Use your Reinforced Net on Scourged Flamespitters flying next to the fortress wall|use Reinforced Net##35278
		.kill 6 Scourged Flamespitter|q 11889/1
	step //21
		goto 56.4,69.6
		.talk Sergeant Hammerhill##25816
		..turnin Death From Above##11889
		..accept Plug the Sinkholes##11897
	step //22
		goto 50.9,72.1
		.' Click your Incendiary Explosives|use Incendiary Explosives##35704
		.' Set the Explosive at the Southern Sinkhole|goal Explosives set at southern sinkhole|q 11897/1|tip It looks like a hole in the ground with webs all over it.  Stand on the edge of the sinkhole.
	step //23
		goto 54.1,63.7
		.' Click your Incendiary Explosives|use Incendiary Explosives##35704
		.' Set the Explosives at the Northern Sinkhole|goal Explosives set at northern sinkhole|q 11897/2|tip It looks like a hole in the ground with webs all over it.  Stand on the edge of the sinkhole.
	step //24
		goto 53.7,60.1
		.kill Cultist Necrolytes|n
		.get Cultist Communique|q 11792/1
	step //25
		goto 56.4,69.6
		.talk Sergeant Hammerhill##25816
		..turnin Plug the Sinkholes##11897
		..accept Farshire##11928
	step //26
		goto 56.8,69.5
		.talk Mark Hanes##26155
		..accept Word on the Street##11927
	step //27
		goto 56.6,72.5
		.talk Harbinger Vurenn##25285
		..turnin Enemies of the Light##11792
		..accept Further Investigation##11793
	step //28
		goto 58.4,67.8
		.talk Midge##25249
		..accept Nick of Time##11575
	step //29
		goto 58.7,68.4
		.talk Leryssa##25251
		..turnin Word on the Street##11927
		..accept Thassarian, My Brother##11599
	step //30
		goto 58.6,67.3
		.talk Vindicator Yaala##25826
		..turnin Further Investigation##11793
		..accept The Hunt is On##11794
	step //31
		goto 58.6,67.1
		.' Use your Oculus of the Exorcist on "Salty" John Thorpe|use Oculus of the Exorcist##35125
		.talk "Salty" John Thorpe##25248
		..'Tell him you have reason to believe he is involved in cultist activity
		.from "Salty" John Thorpe##25248
		.' Defeat the Cultist in the kitchen|goal Cultist in kitchen defeated|q 11794/3
	step //32
		goto 58.8,68.7
		.talk Airman Skyhopper##25737
		..accept Distress Call##11707
	step //33
		goto 59.2,68.3
		.' Use your Oculus of the Exorcist on Tom Hegger|use Oculus of the Exorcist##35125
		.talk Tom Hegger##25827
		..'Ask him about the Cult of the Damed
		.from Tom Hegger##25827
		.' Defeat the Cultist on the docks|goal Cultist in docks defeated|q 11794/1
	step //34
		goto 56.7,71.8
		.' Use your Oculus of the Exorcist on Guard Mitchells|use Oculus of the Exorcist##35125
		.talk Guard Mitchells##25828
		..'Ask him how long he has worked for the Cult of the Damned
		.from Guard Mitchells##25828
		.' Defeat the Cultist in the jail|goal Cultist in jail defeated|q 11794/2
	step //35
		goto 58.6,67.3
		.talk Vindicator Yaala##25826
		..turnin The Hunt is On##11794
	step //36
		goto 58.2,62.8
		.talk Gerald Green##26083
		..turnin Farshire##11928
		..accept Military?  What Military?##11901
	step //37
		'Go inside the mine to 56.8,55.6|goto 56.8,55.6
		.' Click the Plagued Grain|tip Inside the mine, it looks like a bag full of grain, next to a wheel barrow.
		..turnin Military? What Military?##11901
		..accept Pernicious Evidence##11902
	step //38
		goto 56,55.4
		.talk William Allerton##25385
		..turnin Thassarian, My Brother##11599
		..accept The Late William Allerton##11600
	step //39
		goto 58.2,62.8
		.talk Gerald Green##26083
		..turnin Pernicious Evidence##11902
		..accept It's Time for Action##11903
	step //40
		goto 58.3,62.8
		.talk Wendy Darren##26085
		..accept Take No Chances##11913
	step //41
		goto 58.2,63
		.talk Jeremiah Hawning##26084
		..accept Reference Material##11908
	step //42
		goto 57,61.7
		.kill 14 Plagued Scavenger|q 11903/1
		.' Use Wendy's Torch next to Farshire Grain bags|use Wendy's Torch##35491|tip They look like bags with patches on the ground around this area.
		.' Burn 8 Farshire Grain|goal 8 Farshire Grain burnt|q 11913/1
	step //43
		goto 55.8,58.3
		.' Click Fields, Factories and Workshops|tip It's a little red book lying inside the burning house.
		.get Fields, Factories and Workshops##35481|q 11908/1
	step //44
		goto 58.3,62.8
		.talk Wendy Darren##26085
		..turnin Take No Chances##11913
	step //45
		goto 58.2,62.8
		.talk Gerald Green##26083
		..turnin It's Time for Action##11903
		..accept Fruits of Our Labor##11904
	step //46
		goto 58.2,63
		.talk Jeremiah Hawning##26084
		..turnin Reference Material##11908
		..accept Repurposed Technology##12035
	step //47
		goto 58.1,61.1
		.kill Harvest Collectors|n
		.' Use Jeremiahs Tools on their corpses|use Jeremiah's Tools##35943
		.' Rewire 5 Harvest Collectors|goal 5 Harvest Collector Rewired|q 12035/1
	step //48
		'Go inside the cave to 57.9,53.4|goto 57.9,53.4
		.from Captain Jacobs##26252
		.collect Cart Release Key##35705|q 11904
	step //49
		goto 57.2,54.6
		.' Click the Cart Release switch|tip It's a switch on the side of a cart with blue ore inside of it.
		.' Release the Ore Cart|goal Ore Cart released|q 11904/1
	step //50
		'Go outside to 58.2,62.8|goto 58.2,62.8
		.talk Gerald Green##26083
		..turnin Fruits of Our Labor##11904
		..accept One Last Delivery##11962
	step //51
		goto 58.2,63
		.talk Jeremiah Hawning##26084
		..turnin Repurposed Technology##12035
	step //52
		goto 57.3,66.6
		.talk Hilda Stoneforge##25235
		..turnin One Last Delivery##11962
		..accept Weapons for Farshire##11963
	step //53
		goto 58.7,68.4
		.talk Leryssa##25251
		..turnin The Late William Allerton##11600
		..accept Lost and Found##11601
	step //54
		goto 58.3,68
		.talk James Deacon##25245
		..turnin Lost and Found##11601
		..accept In Wine, Truth##11603
	step //55
		goto 58.2,62.8
		.talk Gerald Green##26083
		..turnin Weapons for Farshire##11963
		..accept Call to Arms!##11965
	step //56
		goto 57.3,59.4
		.' Click the Bell Rope|tip It's a huge rope hanging up the stairs in the stairwell of the town hall building.
		.' Ring the Farshire Bell|goal Farshire Bell Rung|q 11965/1
	step //57
		goto 58.2,62.8
		.talk Gerald Green##26083
		..turnin Call to Arms!##11965
	step //58
		'Go underwater to 61.9,65.7|goto 61.9,65.7
		.' Click the Wine Crate underwater in the broken ship
		.get Kul Tiras Wine|q 11603/1
	step //59
		goto 58.5,68.1
		.talk Old Man Colburn##25302
		..turnin In Wine, Truth##11603
		..accept A Deserter##11604
	step //60
		goto 56.7,71.5
		.talk Private Brau##25395
		..turnin A Deserter##11604
		..accept Cowards and Fools##11932
	step //61
		goto 47.1,75.5
		.talk Karuk##25435
		..turnin A Diplomatic Mission##12141
		..accept Karuk's Oath##11613
	step //62
		goto 46.5,77.2
		.kill 6 Skadir Raider|q 11613/1
		.kill 5 Skadir Longboatsman|q 11613/2
	step //63
		goto 44.2,77.8
		.'Kill the Riplash Myrmidon and cheering Skadir mobs
		.talk Captured Tuskarr Prisoner##25636
		..accept Cruelty of the Kvaldir##12471
	step //64
		goto 47.1,75.5
		.talk Karuk##25435
		..turnin Karuk's Oath##11613
		..accept Gamel the Cruel##11619
		..turnin Cruelty of the Kvaldir##12471
	step //65
		'Go inside the cave to 46.4,78.2|goto 46.4,78.2
		.kill Gamel the Cruel##26449|q 11619/1
	step //66
		goto 47.1,75.5
		.talk Karuk##25435
		..turnin Gamel the Cruel##11619
		..accept A Father's Words##11620
	step //67
		goto 43.6,80.5
		.talk Veehja##25450
		..turnin A Father's Words##11620
		..accept The Trident of Naz'jan##11625
	step //68
		'Go into the big building to 54.7,89.1|goto 54.7,89.1
		.from Ragnar Drakkarlund##26451
		.get Trident of Naz'jan|q 11625/1
	step //69
		goto 43.6,80.5
		.talk Veehja##25450
		..turnin The Trident of Naz'jan##11625
		..accept The Emissary##11626
	step //70
		goto 52.2,88.2
		.' Swim underwater to the bubbling rock at the very bottom, so you don't run out of air
		.' Use your Trident of Naz'jan on Leviroth|use Trident of Naz'jan##35850
		.kill Leviroth##26452|q 11626/1
	step //71
		goto 47.1,75.5
		.talk Karuk##25435
		..turnin The Emissary##11626
	step //72
		goto 57,44.3
		.talk Arch Druid Lathorius##25809
		..accept A Mission Statement##11864|instant
		..accept Ears of Our Enemies##11866
		..accept Help Those That Cannot Help Themselves##11876
	step //73
		goto 57.3,44.1
		.talk Hierophant Cenius##25810
		..accept Happy as a Clam##11869
	step //74
		goto 57,44
		.' He walks around the small pond in the middle of the camp
		.talk Killinger the Den Watcher##25812
		..accept Ned, Lord of Rhinos...##11884
	step //75
		goto 56.8,44
		.talk Zaza##25811
		..accept Unfit for Death##11865
	step //76
		goto 53.8,40.6
		.' Use your D.E.H.T.A. Trap Smasher while standing next to Trapped Mammoth Calves|use D.E.H.T.A. Trap Smasher##35228|tip They look like baby elephants laying on the ground in a trap.
		.' Free 8 Mammoth Calves|goal 8 Mammoth Calf Freed|q 11876/1
	step //77
		goto 53.4,42.7
		.kill 10 Loot Crazed Diver|q 11869/1
		.kill Loot Crazed Divers|n
		.get 15 Nesingwary Lackey Ear|q 11866/1
	step //78
		goto 46.4,40
		.' Find and kill "Lunchbox"|kill "Lunchbox"|q 11884/2
		.kill Nedar, Lord of Rhinos##25801|q 11884/1|tip He walks around this area.  Kill 'Lunchbox' and then Nedar, Lord of Rhinos will jump off.
	step //79
		goto 56.2,50.5
		.' Stand inside the Caribou Traps on the ground|tip They look like metal spiked traps on the ground.
		.' Use your Pile of Fake Furs|use Pile of Fake Furs##35127
		.' Trap 8 Nesingwary Trappers|goal 8 Nesingwary Trapper Trapped|q 11865/1
	step //80
		'Make sure you don't have Animal Blood on you. If you do, go for a swim to wash it off, before approaching the druids.|nobuff Ability_Seal
	step //81
		goto 57,44.3
		.talk Arch Druid Lathorius##25809
		..turnin Ears of Our Enemies##11866
		..turnin Help Those That Cannot Help Themselves##11876
		..accept Khu'nok Will Know##11878
	step //82
		goto 57.3,44.1
		.talk Hierophant Cenius##25810
		..turnin Happy as a Clam##11869
		..accept The Abandoned Reach##11870
	step //83
		goto 57,44
		.' He walks around the small pond in the middle of the camp
		.talk Killinger the Den Watcher##25812
		..turnin Ned, Lord of Rhinos...##11884
	step //84
		goto 56.8,44
		.talk Zaza##25811
		..turnin Unfit for Death##11865
		..accept The Culler Cometh##11868
	step //85
		goto 59.5,30.4
		.'Deliver the Orphaned Mammoth Calf to Khu'nok |q 11878/1
		.talk Khu'nok the Behemoth##25862
		..turnin Khu'nok Will Know##11878
		..accept Kaw the Mammoth Destroyer##11879
	step //86
		'Ride around and find a Wooly Mammoth Bull|n
		.' Click it to ride it|invehicle
	step //87
		'Go north on the Wooly Mammoth Bull to 53.7,23.9|goto 53.7,23.9
		.' Use the skills on your mammoth action bar to do the following:
		.from Kaw the Mammoth Destroyer##25802
		.' Click Kaw's War Halberd on the ground
		.get Kaw's War Halberd|q 11879/1
	step //88
		goto 57,44.3
		.talk Arch Druid Lathorius##25809
		..turnin Kaw the Mammoth Destroyer##11879
	step //89
		goto 57.3,56.5
		.kill Karen "I Don't Caribou" the Culler##25803|q 11868/1
	step //90
		goto 57.8,55.1
		.talk Hierophant Liandra##25838
		..turnin The Abandoned Reach##11870
		..accept Not On Our Watch##11871
	step //91
		goto 59.1,55.9
		.kill Northsea Thugs|n
		.' Click the Shipment of Animal Parts containers on the ground|tip They look like brown bags and crates sitting on the ground around this area.
		.get 12 Shipment of Animal Parts|q 11871/1
	step //92
		goto 57.8,55.1
		.talk Hierophant Liandra##25838
		..turnin Not On Our Watch##11871
		..accept The Nefarious Clam Master...##11872
	step //93
		goto 61.5,66.5
		.kill Clam Master K##25800|q 11872/1
	step //94
		goto 57.3,44.1
		.talk Hierophant Cenius##25810
		..turnin The Nefarious Clam Master...##11872
	step //95
		goto 56.8,44
		.talk Zaza##25811
		..turnin The Culler Cometh##11868
	step //96
		goto 54.3,36.1
		.talk Etaruk##25292
		..accept Reclaiming the Quarry##11612
	step //97
		goto 54.7,35.8
		.talk Elder Atkanok##187565
		..accept The Honored Ancestors##11605
	step //98
		goto 54.4,35.1
		.kill 12 Beryl Treasure Hunter|q 11612/1
	step //99
		goto 52.8,34
		.' Click the Elder Sagani|tip It looks like 2 small totem pole things at the base of the big stone on the huge bone cart.
		.' Identify the Elder Sagani|goal Elder Sagani identified|q 11605/2
	step //100
		goto 52.3,31.2
		.' Click the Elder Takret|tip It looks like 2 small totem pole things at the base of the big stone on the huge bone cart.
		.' Identify the Elder Takret|goal Elder Takret identified|q 11605/3
	step //101
		goto 50.9,32.4
		.' Click the Elder Kesuk|tip It looks like 2 small totem pole things at the base of the big stone on the huge bone cart.
		.' Identify the Elder Kesuk|goal Elder Kesuk identified|q 11605/1
	step //102
		goto 54.7,35.8
		.talk Elder Atkanok##187565
		..turnin The Honored Ancestors##11605
		..accept The Lost Spirits##11607
	step //103
		goto 54.3,36.1
		.talk Etaruk##25292
		..turnin Reclaiming the Quarry##11612
		..accept Hampering Their Escape##11617
	step //104
		goto 51.5,31.4
		.kill Beryl Hounds|n
		.get 6 Cores of Malice|n
		.' Use the Cores of Malice on Kaskala Craftsmen and Kaskala Shaman|use Core of Malice##34711
		.' Free 3 Kaskala Craftsman spirits|goal 3 Kaskala Craftsman spirits freed|q 11607/1
		.' Free 3 Kaskala Shaman spirits|goal 3 Kaskala Shaman spirits freed|q 11607/2
	step //105
		'Kill Beryl Reclaimers all around this area:
		.collect 3 Gnomish Grenade##34772|q 11617
	step //106
		goto 52.2,32.1
		.' Use your Gnomish Grenade while standing under the floating platform|use Gnomish Grenade##34772|tip If you can fly, you can stand on the floating platform and use your Gnomish Grenade.
		.' Destroy the North Platform|goal North Platform Destroyed|q 11617/2
	step //107
		goto 51,33.9
		.' Use your Gnomish Grenade while standing under the floating platform|use Gnomish Grenade##34772|tip If you can fly, you can stand on the floating platform and use your Gnomish Grenade.
		.' Destroy the West Platform|goal West Platform Destroyed|q 11617/3
	step //108
		goto 52.8,34.5
		.' Use your Gnomish Grenade while standing under the floating platform|use Gnomish Grenade##34772|tip If you can fly, you can stand on the floating platform and use your Gnomish Grenade.
		.' Destroy the East Platform|goal East Platform Destroyed|q 11617/1
	step //109
		goto 54.7,35.8
		.talk Elder Atkanok##187565
		..turnin The Lost Spirits##11607
		..accept Picking Up the Pieces##11609
	step //110
		goto 54.3,36.1
		.talk Etaruk##25292
		..turnin Hampering Their Escape##11617
		..accept A Visit to the Curator##11623
	step //111
		goto 53.1,33.3
		.' Click the Tuskarr Ritual Objects|tip They look like small stone fish and blue smoking bowls on the ground around this area.
		.get 6 Tuskarr Ritual Object|q 11609/1
	step //112
		'Go up the hill to 50.1,32.6|goto 50.1,32.6
		.kill Curator Insivius##25448|q 11623/1
	step //113
		goto 54.7,35.8
		.talk Elder Atkanok##187565
		..turnin Picking Up the Pieces##11609
		..accept Leading the Ancestors Home##11610
	step //114
		goto 54.3,36.1
		.talk Etaruk##25292
		..turnin A Visit to the Curator##11623
	step //115
		goto 52.8,34
		.' Use your Tuskarr Ritual Object while standing next to the Elder Sagani|use Tuskarr Ritual Object##34715|tip It looks like 2 small totem pole things at the base of the big stone on the huge bone cart.
		.' Complete Elder Sagani's ceremony|goal Elder Sagani's ceremony completed|q 11610/2
	step //116
		goto 52.3,31.2
		.' Use your Tuskarr Ritual Object while standing next to the Elder Takret|use Tuskarr Ritual Object##34715|tip It looks like 2 small totem pole things at the base of the big stone on the huge bone cart.
		.' Complete Elder Takret's ceremony|goal Elder Takret's ceremony completed|q 11610/3
	step //117
		goto 50.9,32.4
		.' Use your Tuskarr Ritual Object while standing next to the Elder Kesuk|use Tuskarr Ritual Object##34715|tip It looks like 2 small totem pole things at the base of the big stone on the huge bone cart.
		.' Complete Elder Kesuk's ceremony|goal Elder Kesuk's ceremony completed|q 11610/1
	step //118
		goto 54.7,35.8
		.talk Elder Atkanok##187565
		..turnin Leading the Ancestors Home##11610
	step //119
		goto 45.3,34.5
		.talk Surristrasz##24795
		..fpath Amber Ledge
	step //120
		goto 45.3,33.3
		.talk Librarian Donathan##25262
		..turnin Nick of Time##11575
		..accept Prison Break##11587
	step //121
		goto 45,33.4
		.talk Librarian Garren##25291
		..accept Monitoring the Rift: Cleftcliff Anomaly##11576
	step //122
		goto 40.5,39.2
		.kill Beryl Mage Hunters|n
		.collect Beryl Prison Key##34688|sticky |q 11587
		.' Click an Arcane Prison
		.' Free an Arcane Prisoner|goal Arcane Prisoners Rescued|q 11587/1
	step //123
		goto 41.2,41.8|n
		.' The path down to Monitoring the Rift: Cleftcliff Anomaly starts here|goto 41.2,41.8,0.5|noway|c
	step //124
		goto 34.3,42
		.' Use your Arcanometer in this spot next to the purple glowing crack in the ground|use Arcanometer##34669
		.' Take the Cleftcliff Anomaly Reading|goal Cleftcliff Anomaly Reading Taken|q 11576/1
	step //125
		goto 45,33.4
		.talk Librarian Garren##25291
		..turnin Monitoring the Rift: Cleftcliff Anomaly##11576
		..accept Monitoring the Rift: Sundered Chasm##11582
	step //126
		goto 45.3,33.3
		.talk Librarian Donathan##25262
		..turnin Prison Break##11587
		..accept Abduction##11590
	step //127
		goto 46.8,29.3|n
		.' The path down to Monitoring the Rift: Sundered Chasm starts here|goto 46.8,29.3,0.5|noway|c
	step //128
		'Go down the path and underwater to 44,28.6|goto 44,28.6
		.' Use your Arcanometer next to the huge purple glowing crack underwater|use Arcanometer##34669
		.' Take the Sundered Chasm Reading|goal Sundered Chasm Reading Taken|q 11582/1
	step //129
		goto 45,33.4
		.talk Librarian Garren##25291
		..turnin Monitoring the Rift: Sundered Chasm##11582
		..accept Monitoring the Rift: Winterfin Cavern##12728
	step //130
		goto 46.8,29.3|n
		.' The path down to Monitoring the Rift: Winterfin Cavern starts here|goto 46.8,29.3,0.5|noway|c
	step //131
		goto 40.1,19.7
		.' Stand in the mouth of the cave, past the torches
		.' Use your Arcanometer|use Arcanometer##34669
		.' Take the Winterfin Cavern Reading|goal Winterfin Cavern Reading Taken|q 12728/1
	step //132
		goto 45,33.4
		.talk Librarian Garren##25291
		..turnin Monitoring the Rift: Winterfin Cavern##12728
	step //133
		goto 43.5,37.4
		.' Fight a Beryl Sorcerer
		.' Use your Arcane Binder on him when you see the 'Beryl Sorcerer can now be captured' message in your chat|use Arcane Binder##34691
		.' Capture a Beryl Sorcerer|goal Captured Beryl Sorcerer|q 11590/1
	step //134
		goto 45.3,33.3
		.talk Librarian Donathan##25262
		..turnin Abduction##11590
		..accept The Borean Inquisition##11646
	step //135
		'Go inside the tall tower to 46.3,32.8|goto 46.3,32.8
		.talk Librarian Normantis##25480
		..turnin The Borean Inquisition##11646
		..accept The Art of Persuasion##11648
	step //136
		'Use your Neural Needler on the Imprisoned Beryl Sorcerer repeatedly to Interrogate the Prisoner|use Neural Needler##34811
		.' Interrogate the Prisoner|goal Prisoner Interrogated|q 11648/1
	step //137
		goto 46.3,32.8
		.talk Librarian Normantis##25480
		..turnin The Art of Persuasion##11648
		..accept Sharing Intelligence##11663
	step //138
		'Go outside the tower to 45.3,33.3|goto 45.3,33.3
		.talk Librarian Donathan##25262
		..turnin Sharing Intelligence##11663
		..accept A Race Against Time##11671
	step //139
		goto 42.1,39.5
		.' Use your Beryl Shield Detonator inside the big blue glowing circle|use Beryl Shield Detonator##34897|tip If it won't let you, wait until Inquisitor Salrand appears again.
		.kill Inquisitor Salrand|n
		.' Click Salrand's Lockbox
		.get Salrand's Broken Key|q 11671/1
	step //140
		goto 45.3,33.3
		.talk Librarian Donathan##25262
		..turnin A Race Against Time##11671
		..accept Reforging the Key##11679
	step //141
		goto 45.3,34.5
		.talk Surristrasz##24795
		..turnin Reforging the Key##11679
		..accept Taking Wing##11680
	step //142
		goto 46.4,37.3
		.talk Warmage Anzim##25356
		..turnin Taking Wing##11680
		..accept Rescuing Evanor##11681
	step //143
		'Watch the cutscene, then you'll get teleported back to Amber Ledge|goto 46.4,32.6,0.3|noway
	step //144
		goto 46.4,32.4
		.talk Archmage Evanor##25785
		..turnin Rescuing Evanor##11681
		..accept Dragonspeak##11682
	step //145
		'Go outside the tower to 45.3,34.5|goto 45.3,34.5
		.talk Surristrasz##24795
		..turnin Dragonspeak##11682
		..accept Traversing the Rift##11733
	step //146
		goto 45.3,34.5
		.talk Surristrasz##24795
		.' Fly to Transitus Shield, Coldarra|goto 33.1,34.4,0.5|noway|c
	step //147
		goto 32.9,34.4
		.talk Archmage Berinand##25314
		..turnin Traversing the Rift##11733
		..accept Reading the Meters##11900
		..accept Secrets of the Ancients##11910
	step //148
		goto 33.3,34.5
		.talk Raelorasz##26117
		..accept Basic Training##11918
	step //149
		goto 33.5,34.4
		.talk Librarian Serrah##26110
		..accept Nuts for Berries##11912
// why not just check for those later on?
//	step //148
//		'As you do the following steps, do the following:
//		.' Kill Glacial Ancients and get 3 Glacial Splinters|n
//		.' Kill Magic-Bound Ancients and get 3 Magic-Bound Splinters|n
//		.' Kill 10 Coldarra Spellweavers|n
//		.' Click Frostberry Bushes
//		.get 10 Frostberry|n
//		.' Skip to the next step in the guide
	step //150
		goto 35,28
		.kill Coldarra Spellbinders|n
		.get Scintillating Fragment|n
		.' Click the Scintillating Fragment in your bags|use Scintillating Fragment##35648
		..accept Puzzling...##11941
	step //151
		goto 28.3,28.5
		.' Click the Coldarra Geological Monitor|tip It looks like a blue sphere on the ground at the base of the building.
		.' Take the Nexus Geological Reading|goal Nexus Geological Reading|q 11900/1
	step //152
		goto 31.7,20.6
		.' Click the Coldarra Geological Monitor|tip It looks like a blue sphere on the ground in the entrance of the building.
		.' Take the Northern Coldarra Reading|goal Northern Coldarra Reading|q 11900/3
	step //153
		goto 22.6,23.5
		.' Click the Coldarra Geological Monitor|tip It looks like a blue sphere on the ground in the entrance of the building.
		.' Take the Western Coldarra Reading|goal Western Coldarra Reading|q 11900/4
	step //154
		goto 28.3,35
		.' Click the Coldarra Geological Monitor|tip It looks like a blue sphere on the ground in the entrance of the building.
		.' Take the Southern Coldarra Reading|goal Southern Coldarra Reading|q 11900/2
	step //155
//		'Make sure you have:
		kill 10 Coldarra Spellweaver|q 11918/1
		from Glacial Ancient+
		.get 3 Glacial Splinter|q 11910/1
		info Don't forget to harvest the Ancients for herbs.|only if skill('Herbalism')>0
		from Magic-Bound Ancient+
		.get 3 Magic-Bound Splinter|q 11910/2
		'Click Frostberry Bushes
		.get 10 Frostberry|q 11912/1
	step //156
		goto 32.9,34.4
		.talk Archmage Berinand##25314
		..turnin Reading the Meters##11900
		..turnin Secrets of the Ancients##11910
	step //157
		goto 33.3,34.5
		.talk Raelorasz##26117
		..turnin Basic Training##11918
		..accept Hatching a Plan##11936
		..turnin Puzzling...##11941
		..accept The Cell##11943
	step //158
		goto 33.5,34.4
		.talk Librarian Serrah##26110
		..turnin Nuts for Berries##11912
		..accept Keep the Secret Safe##11914
	step //159
		'As you do the following steps:
		.kill Coldarra Wyrmkin|n
		.get 5 Frozen Axe|n
		.' Skip to the next step in the guide
	step //160
		goto 24.1,29.6
		.from Warbringer Goredrak##25712
		.get Energy Core|q 11943/1
	step //161
		goto 27.3,20.5
		.from General Cerulean##25716
		.get Prison Casing|q 11943/2
	step //162
		'Make sure you have 5 Frozen Axes|collect 5 Frozen Axe##35586|q 11936
	step //163
		goto 27.8,24.2
		.kill Arcane Serpents|n
		.get 5 Nexus Mana Essence|q 11914/1
		.' Click Blue Dragon Eggs|tip They look like big eggs with blue crystals on them on the ground.
		.' Destroy 5 Dragon Eggs|goal 5 Dragon Eggs destroyed|q 11936/1
	step //164
		goto 33.3,34.5
		.talk Raelorasz##26117
		..turnin Hatching a Plan##11936
		..accept Drake Hunt##11919
		..turnin The Cell##11943
	step //165
		goto 33.5,34.4
		.talk Librarian Serrah##26110
		..turnin Keep the Secret Safe##11914
	step //166
		goto 24.6,27.1|n
		.' Use your Raelorasz's Spear on a Nexus Drake Hatchling|use Raelorasz's Spear##35506|tip They are flying above you in the sky.
		.' Do not kill it, let it hit you until it becomes friendly|havebuff Drake Hatchling Subdued|c|q 11919/1
	step //167
		goto 33.3,34.5
		.' Capture the Nexus Drake|goal Captured Nexus Drake|q 11919/1
		.talk Raelorasz##26117
		..turnin Drake Hunt##11919
		..accept Cracking the Code##11931
	step //168
		'Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
		.talk Keristrasza##26237
		..accept Keristrasza##11946
		..turnin Keristrasza##11946
		..accept Bait and Switch##11951
	step //169
		goto 32.7,29
		.kill Coldarra Spellbinders|n
		.get 3 Shimmering Rune|q 11931/1
	step //170
		goto 32.7,27.8
		.from Inquisitor Caleras##25720
		.get Azure Codex|q 11931/2
	step //171
		'Wander all around and do the following:
		.' Click Crystallized Mana on the ground|tip They look like pink crystals.
		.get 10 Crystallized Mana Shard|q 11951/1
	step //172
		'Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
		.talk Keristrasza##26237
		..turnin Bait and Switch##11951
		..accept Saragosa's End##11957
	step //173
		'Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
		.talk Keristrasza##26206
		.'Tell her you are ready to face Saragosa|goto 21.2,22.5,0.5|noway|c
	step //174
		'She teleports you to a platform
		.' Click the Arcane Power Focus in your bags|use Arcane Power Focus##35690
		.'Wait for Saragosa to appear and become human
		.from Saragosa##26231
		.get Saragosa's Corpse|q 11957/1
	step //175
		'Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
		.talk Keristrasza##26206
		..turnin Saragosa's End##11957
		..accept Mustering the Reds##11967
	step //176
		goto 33.3,34.5
		.talk Raelorasz##26117
		..turnin Cracking the Code##11931
		..turnin Mustering the Reds##11967
		..accept Springing the Trap##11969
	step //177
		ding 71
	step //178
		goto 25.4,21.7
		.' Use Raelorasz' Spark next to the Signal Fire|use Raelorasz' Spark##44950|tip The Signal Fire looks like an unlit bonfire.
		.' Watch the cutscene
		.' Lure Malygos|goal Malygos Lured|q 11969/1
	step //179
		goto 33.3,34.5
		.talk Raelorasz##26117
		..turnin Springing the Trap##11969
	step //180
		'Fly to Amber Ledge|goto 45.1,34.1,0.5|noway|c
	step //181
		goto 56.6,20.1
		.talk Kara Thricestar##26602
		..fpath Fizzcrank Airstrip
	step //182
		home Fizzcrank Airstrip
	step //183
		goto 57,18.7
		.talk Fizzcrank Fullthrottle##25590
		..turnin Distress Call##11707
		..accept The Mechagnomes##11708
		.talk Fizzcrank Fullthrottle##25590
		..'Listen to Fizzcrank Fullthrottle's tale|goal Fizzcrank's tale listened to.|q 11708/1
	step //184
		goto 57.4,18.7
		.talk Jinky Wingnut##25747
		..turnin The Mechagnomes##11708
		..accept Re-Cursive##11712
	step //185
		goto 57.4,18.7
		.talk Mordle Cogspinner##25702
		..accept What's the Matter with the Transmatter?##11710
		..accept King Mrgl-Mrgl##11704
	step //186
		goto 57.6,18.7
		.talk Crafty Wobblesprocket##25477
		..accept Dirty, Stinkin' Snobolds!##11645
	step //187
		goto 53.1,13.5
		.' Click Crafty's Stuff|tip They look like wooden crates on the ground around this area.
		.get 10 Crafty's Stuff|q 11645/1
	step //188
		goto 54,13.5|n
		.' The path down to Bonker Togglevolt starts here|goto 54,13.5,0.3|noway|c
	step //189
		'Go inside the cave to 55.6,12.6|goto 55.6,12.6
		.talk Bonker Togglevolt##25589
		..accept Get Me Outa Here!##11673
		.' Escort Bonker Togglevolt to safety|goal Bonker Togglevolt escorted to safety.|q 11673/1
	step //190
		'Go outside the cave to 57,18.7|goto 57,18.7
		.talk Fizzcrank Fullthrottle##25590
		..turnin Get Me Outa Here!##11673
	step //191
		goto 57.6,18.7
		.talk Crafty Wobblesprout##25477
		..turnin Dirty, Stinkin' Snobolds!##11645
		..accept Just a Few More Things...##11650
	step //192
		goto 58.5,17.6
		.kill Fizzcrank Mechagnomes|n
		..' Use the Re-Cursive Transmatter Injection on their corpses|use Re-Cursive Transmatter Injection##34973
		...' Curse & port 6 Fizzcrank Gnomes|goal 6 Fizzcrank Gnome cursed & ported|q 11712/1
		.' Click Fizzcrank Spare Parts
		..get 15 Fizzcrank Spare Parts|q 11710/1
		info Remember to salvage all corpses for spare parts. Note: don't salvage Mechagnomes until you've ported 6 of them, as it destroys their bodies.|only if skill('Engineering')>0
	step
		goto 58.5,17.6
		.kill mechanical mobs|n
		..get The Ultrasonic Screwdriver|n
		...' Click The Ultrasonic Screwdriver|use The Ultrasonic Screwdriver##34984
		....accept The Ultrasonic Screwdriver##11729
	step //193
		goto 57.6,18.7
		.talk Crafty Wobblesprout##25477
		..turnin The Ultrasonic Screwdriver##11729
		..accept Master and Servant##11730
	step //194
		goto 57.4,18.7
		.talk Mordle Cogspinner##25702
		..turnin What's the Matter with the Transmatter?##11710
		..accept Check in With Bixie##11692
	step //195
		goto 57.4,18.7
		.talk Jinky Wingnut##25747
		..turnin Re-Cursive##11712
		..accept Lefty Loosey, Righty Tighty##11788
	step //196
		goto 57,18.7
		.talk Fizzcrank Fullthrottle##25590
		..accept Finding Pilot Tailspin##11725
	step //197
		goto 58.7,18.5
		.kill robots in this area|n
		.' Use the Ultrasonic Screwdriver on their corpses|use The Ultrasonic Screwdriver##35116
		.' Reprogram 15 Robots|goal 15 Robots reprogrammed|q 11730/1
	step //198
		goto 60.2,20.4
		.' Click the West Point Station Valve|tip It looks like a red round handle on the side of the metal pipe.
		.kill Twonky|q 11788/1
	step //199
		goto 65.4,17.4
		.' Click the North Point Station Valve|tip It looks like a red round handle on the side of the metal pipe.
		.kill ED-210|q 11788/2
	step //200
		goto 63.7,22.5
		.' Click the Mid Point Station Valve|tip It looks like a red round handle on the side of the metal pipe.
		.kill Max Blasto|q 11788/3
	step //201
		goto 64.4,23.1
		.' Click Crafty's Tools|tip It looks like a small chest, next to some steel beams on the ground.
		.get Crafty's Tools|q 11650/1
	step //202
		goto 65.2,28.8
		.' Click the South Point Station Valve|tip It looks like a red round handle ont he side of the metal pipe.
		.kill The Grinder|q 11788/4
	step //203
		goto 61.7,35.8
		.talk Iggy "Tailspin" Cogtoggle##25807
		..turnin Finding Pilot Tailspin##11725
		..accept A Little Bit of Spice##11726
	step //204
		goto 61.1,44.6
		.kill Gorlocs|n
		.get 4 Gorloc Spice Pouch|q 11726/1
	step //205
		goto 61.7,35.8
		.talk Iggy "Tailspin" Cogtoggle##25807
		..turnin A Little Bit of Spice##11726
		..accept Lupus Pupus##11728
	step //206
		'All around this area:
		.' Use your Wolf Bait on Oil-stained Wolves around this area|use Wolf Bait##35121
		.' Click the Wolf Droppings that spawn
		.get 8 Microfilm|q 11728/1
	step //207
		goto 61.7,35.8
		.talk Iggy "Tailspin" Cogtoggle##25807
		..turnin Lupus Pupus##11728
		..accept Emergency Protocol: Section 8.2, Paragraph C##11795
	step //208
		goto 61,37.8
		.talk Fizzcrank Recon Pilots##25841
		.' Search their bodies for their Insignia
		.get 6 Fizzcrank Pilot's Insignia|q 11795/1
	step //209
		goto 61.7,35.8
		.talk Iggy "Tailspin" Cogtoggle##25807
		..turnin Emergency Protocol: Section 8.2, Paragraph C##11795
		..accept Emergency Protocol: Section 8.2, Paragraph D##11796
	step //210
		goto 59.7,39.2
		.' Use your Emergency Torch next to the crashed plane|use Emergency Torch##35224|tip It's a crashed plane in the water.
		.' Scuttle a Southern Wreck|goal Scuttle a Southern Wreck|q 11796/2
	step //211
		goto 63.3,37
		.' Use your Emergency Torch next to the crashed plane|use Emergency Torch##35224|tip It's a crashed plane in the water.
		.' Scuttle a Eastern Wreck|goal Scuttle the Eastern Wreck|q 11796/1
	step //212
		goto 60.9,33.7
		.' Use your Emergency Torch next to the crashed plane|use Emergency Torch##35224|tip It's a crashed plane in the water.
		.' Scuttle a Northwestern Wreck|goal Scuttle a Northwestern Wreck|q 11796/3
	step //213
		goto 61.7,35.8
		.talk Iggy "Tailspin" Cogtoggle##25807
		..turnin Emergency Protocol: Section 8.2, Paragraph D##11796
		..accept Give Fizzcrank the News##11873
	step //214
		goto 63.8,46.1
		.talk Ataika##26169
		..turnin Cowards and Fools##11932
		..accept The Son of Karkut##12086
		..accept Not Without a Fight!##11949
	step //215
		goto 64,45.7
		.talk Utaik##26213
		..accept Preparing for the Worst##11945
	step //216
		goto 65.3,47.2
		.kill 12 Kvaldir Raider|q 11949/1
		.' Click Kaskala Supplies baskets|tip They look like wooden baskets on the ground.
		.get 8 Kaskala Supplies|q 11945/1
	step //217
		goto 63.8,46.1
		.talk Ataika##26169
		..turnin Not Without a Fight!##11949
		..accept Muahit's Wisdom##11950
	step //218
		goto 64,45.7
		.talk Utaik##26213
		..turnin Preparing for the Worst##11945
	step //219
		goto 67.2,54.9
		.talk Elder Muahit##26218
		..turnin Muahit's Wisdom##11950
		..accept Spirits Watch Over Us##11961
	step //220
		goto 67.7,50.4
		.' Click Iruk's body|tip His body is floating underwater.
		.' Search his corpse
		.get Issliruk's Totem|q 11961/1
	step //221
		goto 67.2,54.9
		.talk Elder Muahit##26218
		..turnin Spirits Watch Over Us##11961
		..accept The Tides Turn##11968
	step //222
		goto 67.4,56.8
		.kill Heigarr the Horrible##26266|q 11968/1
	step //223
		goto 67.2,54.9
		.talk Elder Muahit##26218
		..turnin The Tides Turn##11968
	step //224
		goto 67.2,54.9
		.talk Hotawa##28382
		..accept Travel to Moa'ki Harbor##12117
	step //225
		goto 82,46.4
		.talk Corporal Venn##26187
		..turnin The Son of Karkut##12086
		..accept Surrounded!##11944
	step //226
		goto 82,46.4
		.talk Private Casey##26186
		..accept The Lost Courier##12157
	step //227
		goto 81.5,42.5
		.from Rocknar##25514
		.get A Handful of Rocknar's Grit|q 11650/3
	step //228
		goto 82.2,44.8
		.kill 7 Ziggurat Defender|q 11944/1
	step //229
		goto 82,46.4
		.talk Corporal Venn##26187
		..turnin Surrounded!##11944
		..accept Thassarian, the Death Knight##12088
	step //230
		goto 84.8,41.7
		.talk Thassarian##26170
		..turnin Thassarian, the Death Knight##12088
		..accept Finding the Phylactery##11956
	step //231
		goto 82.4,46.6
		.' Click Dusk to ride him|invehicle|tip He is a skeletal death knight mount with hooves that glow blue. |q 11956
	step //232
		goto 85.4,33.3
		.' Click the Frozen Phylactery|tip It looks like a green canister with a purple top underwater.
		.' Kill Phylactery Guardian that spawns
		.get Tanathal's Phylactery|q 11956/1
	step //233
		goto 84.8,41.7
		.talk Thassarian##26170
		..turnin Finding the Phylactery##11956
		..accept Buying Some Time##11938
	step //234
		goto 84.4,31.4
		.kill 20 En'kilah mob|goal 20 En'kilah Casualty|q 11938/1
	step //235
		goto 84.8,41.7
		.talk Thassarian##26170
		..turnin Buying Some Time##11938
		..accept Words of Power##11942
	step //236
		goto 89.4,28.9
		.' Kill 2 bug guards and kill the 2 cocoons next to High Priest Talet-Kha
		.from High Priest Talet-Kha##26073
		.get High Priest Talet-Kha's Scroll|q 11942/3
	step //237
		goto 88.1,20.9
		.from High Priest Andorath##25392
		.get High Priest Andorath's Scroll|q 11942/1
	step //238
		goto 83.9,20.5
		.' Kill the 3 guards
		.from High Priest Naferset##26076
		.get High Priest Naferset's Scroll|q 11942/2
	step //239
		goto 84.8,41.7
		.talk Thassarian##26170
		..turnin Words of Power##11942
	step //240
		'Hearth to Fizzcrank Airstrip|goto 57.1,18.8,1|use Hearthstone##6948|noway|c
	step //241
		goto 57,18.7
		.talk Fizzcrank Fullthrottle##25590
		..turnin Give Fizzcrank the News##11873
	step //242
		goto 57.1,20.1
		.talk Abner Fizzletorque##25780
		..accept Scouting the Sinkholes##11713
	step //243
		goto 57.4,18.7
		.talk Jinky Wingnut##25747
		..turnin Lefty Loosey, Righty Tighty##11788
		..accept The Gearmaster##11798
	step //244
		goto 57.6,18.7
		.talk Crafty Wobblesprocket##25477
		..turnin Just a Few More Things...##11650
		..turnin Master and Servant##11730
		..accept Hah... You're Not So Big Now!##11653
	step //245
		goto 54.2,13|n
		.' The path down to Hah... You're Not So Big Now! starts here|goto 54.2,13,0.3|noway|c
	step //246
		'Go down into the cave to 54.2,11.2|goto 54.2,11.2
		.' Use Crafty's Ultra-Advanced Proto-Typical Shortening Blaster on Mates of Magmothregar|use Crafty's Ultra-Advanced Proto-Typical Shortening Blaster##34812
		.' Kill them while the device's effects are still on them
		.' Test Crafty's Blaster 5 times|goal 5 Crafty's Blaster Tested|q 11653/1
	step //247
		'Go outside to 57.6,18.7|goto 57.6,18.7
		.talk Crafty Wobblesprocket##25477
		..turnin Hah... You're Not So Big Now!##11653
		..accept Plan B##11658
	step //248
		goto 47.9,21.3
		.' Click Dead Caravan mob corpses
		.' Take their clothing
		.get 10 Warsong Outfit|q 11658/1
	step //249
		goto 49.6,26.7
		.' Click the Warsong Banner|tip It's a tall red flag.
		.get Warsong Banner|q 11658/2
	step //250
		goto 43.5,14
		.talk King Mrgl-Mrgl##25197
		..turnin King Mrgl-Mrgl##11704
		..accept Learning to Communicate##11571
	step //251
		'Go underwater to 42.5,15.9|goto 42.5,15.9
		.from Scalder##25226
		.' Use The King's Empty Conch on Scalder's corpse|use The King's Empty Conch##34598
		.get The King's Filled Conch|q 11571/1
	step //252
		goto 43.5,14
		.talk King Mrgl-Mrgl##25197
		..turnin Learning to Communicate##11571
		..accept Winterfin Commerce##11559
	step //253
		goto 41.5,13.4
		.' Click Winterfin Clams underwater|tip They look like small tanish clams on the ground underwater.
		.get 5 Winterfin Clam|q 11559/1
	step //254
		goto 43,13.8
		.talk Ahlurglgr##25206
		..turnin Winterfin Commerce##11559
	step //255
		goto 42.8,13.7
		.talk Brglmurgl##25199
		..accept Them!##11561
	step //256
		goto 43.5,14
		.talk King Mrgl-Mrgl##25197
		..accept Oh Noes, the Tadpoles!##11560
	step //257
		goto 40.6,17.5
		.kill 15 Winterfin murlocs|q 11561/1
		.' Click the yellow cages
		.' Rescue 20 Winterfin Tadpoles|goal 20 Winterfin Tadpole rescued|q 11560/1
	step //258
		goto 42.8,13.7
		.talk Brglmurgl##25199
		..turnin Them!##11561
	step //259
		goto 43.5,14
		.talk King Mrgl-Mrgl##25197
		..turnin Oh Noes, the Tadpoles!##11560
		..accept I'm Being Blackmailed By My Cleaner##11562
	step //260
		goto 42,12.8
		.talk Mrmrglmr##25205
		..turnin I'm Being Blackmailed By My Cleaner##11562
		..accept Grmmurggll Mrllggrl Glrggl!!!##11563
	step //261
		goto 42,13.2
		.talk Cleaver Bmurglbrm##25211
		..accept Succulent Orca Stew##11564
	step //262
		goto 40.3,12.4
		.kill Glimmer Bay Orcas|n
		.get 7 Succulent Orca Blubber|q 11564/1
	step //263
		goto 37.4,9.8
		.from Glrggl##25203
		.get Glrggl's Head|q 11563/1
	step //264
		goto 42,12.8
		.talk Mrmrglmr##25205
		..turnin Grmmurggll Mrllggrl Glrggl!!!##11563
		..accept The Spare Suit##11565
	step //265
		goto 42,13.2
		.talk Cleaver Bmurglbrm##25211
		..turnin Succulent Orca Stew##11564
	step //266
		goto 43.5,14
		.talk King Mrgl-Mrgl##25197
		..turnin The Spare Suit##11565
		..accept Surrender... Not!##11566
	step //267
		'Go southwest to Winterfin Village|n
		.' Use King Mrgl-Mrgl's Spare Suit|havebuff INV_Misc_Head_Murloc_01|use King Mrgl-Mrgl's Spare Suit##34620|q 11566
	step //268
		'Go inside the cave to 37.8,23.2|goto 37.8,23.2
		.talk Glrglrglr##28375
		..accept Keymaster Urmgrgl##11569
	step //269
		'Go down the path and underneath you to 38.4,22.7|goto 38.4,22.7
		.from Keymaster Urmgrgl##25210
		.get Urmgrgl's Key|q 11569/1
	step //270
		.' Use King Mrgl-Mrgl's Spare Suit|havebuff INV_Misc_Head_Murloc_01|use King Mrgl-Mrgl's Spare Suit##34620|q 11566
	step //271
		'Follow the path up and to the back of the cave to 37.6,27.4|goto 37.6,27.4
		.from Claximus##25209
		.get Claw of Claximus|q 11566/1
	step //272
		.' Use King Mrgl-Mrgl's Spare Suit|havebuff INV_Misc_Head_Murloc_01|use King Mrgl-Mrgl's Spare Suit##34620|q 11569/1
	step //273
		'Go back up the path to 37.8,23.2|goto 37.8,23.2
		.talk Glrglrglr##28375
		..turnin Keymaster Urmgrgl##11569
	step //274
		goto 37.8,23
		.talk Lurgglbr##25208
		..accept Escape from the Winterfin Caverns##11570
		.' Escort Lurgglbr to safety|goal Escort Lurgglbr to safety|q 11570/1
	step //275
		goto 43.5,14
		.talk King Mrgl-Mrgl##25197
		..turnin Surrender... Not!##11566
		..turnin Escape from the Winterfin Caverns##11570
	step //276
		goto 57.6,18.7
		.talk Crafty Wobblesprocket##25477
		..turnin Plan B##11658
		..accept It Was The Orcs, Honest!##11670
	step //277
		goto 54,13.5|n
		.' The path down to It Was The Orcs, Honest! starts here|goto 54,13.5,0.5|noway|c
	step //278
		'Go down into the cave to 54.9,12|goto 54.9,12
		.' Open Crafty's Sack and get the Warsong Banner and Warsong Orc Disguise|use Crafty's Sack##34871
		.' Use your Warsong Orc Disguise|use Warsong Orc Disguise##34870
		.from Magmothregar##25430
		.' Use your Warsong Banner on Magmothregar's corpse|use Warsong Banner##34869
		.' Plant the Warson Banner in Magmothregar|goal Warsong Banner Planted in Magmothregar|q 11670/1
	step //279
		'Go outside to 57.6,18.7|goto 57.6,18.7
		.talk Crafty Wobblesprocket##25477
		..turnin It Was The Orcs, Honest!##11670
	step //280
		'Go on top of the pump station to 64.5,23.4|goto 64.5,23.4
		.' Click The Gearmaster's Manual|tip It looks like a big closed book on the table in a small room at the very top of the pump station.
		.from Gearmaster Mechazod##25834
		.get Mechazod's Head|q 11798/2
	step //281
		goto 66.4,32.9
		.' Use your Map of the Geyser Fields next to the huge hole in the ground|use Map of the Geyser Fields##34920
		.' Mark the Location of the Northwest Sinkhole|goal Mark Location of Northwest Sinkhole|q 11713/3
	step //282
		goto 69.9,32.8
		.' Use your Map of the Geyser Fields next to the huge hole in the ground|use Map of the Geyser Fields##34920
		.' Mark the Location of the Northeast Sinkhole|goal Mark Location of Northeast Sinkhole|q 11713/2
	step //283
		goto 70.6,36.9
		.' Use your Map of the Geyser Fields next to the huge hole in the ground|use Map of the Geyser Fields##34920
		.' Mark the Location of the South Sinkhole|goal Mark Location of South Sinkhole|q 11713/1
	step //284
		goto 73.4,18.8
		.talk Bixie Wrenchshanker##25705
		..turnin Check in With Bixie##11692
		..accept Oh Great... Plagued Magnataur!##11693
	step //285
		goto 73.3,19.6
		.kill 10 Plagued Magnataur|q 11693/1
	step //286
		goto 73.4,18.8
		.talk Bixie Wrenchshanker##25705
		..turnin Oh Great... Plagued Magnataur!##11693
		..accept There's Something Going On In Those Caves##11694
	step //287
		goto 74.7,14.1
		.' Use Bixie's Inhibiting Powder next to the Den of Dying Plague Cauldron|use Bixie's Inhibiting Powder##34915|tip It looks like a big pot inside the cave.
		.' Neutralize the Plague Cauldron|goal Plague Cauldron Neutralized|q 11694/1
	step //288
		goto 73.4,18.8
		.talk Bixie Wrenchshanker##25705
		..turnin There's Something Going On In Those Caves##11694
		..accept Rats, Tinky Went into the Necropolis!##11697
		..accept Might As Well Wipe Out the Scourge##11698
	step //289
		goto 68.2,17
		.kill Undead mobs|n
		.' Destroy 20 Talramas Scourge|goal 20 Talramas Scourge Destroyed|q 11698/1
	step //290
		'Go inside the undead building to 69.9,14.7|goto 69.9,14.7
		.talk Tinky Wickwhistle##25714
		..turnin Rats, Tinky Went into the Necropolis!##11697
		..accept I'm Stuck in this Damned Cage... But Not For Long!##11699
	step //291
		'Go outside to 68.6,17.5|goto 68.6,17.5
		.kill Festering Ghouls|n
		.get Engine-Core Crystal|q 11699/1
	step //292
		'Go around to the back of the building and up to 69.7,13.9|goto 69.7,13.9
		.from Lich-Lord Chillwinter##25682
		.get Piloting Scourgestone|q 11699/3
	step //293
		'Jump down into the huge hole to 69.7,13|goto 69.7,13
		.from Doctor Razorgrin##25678
		.get Magical Gyroscope|q 11699/2
	step //294
		'Go inside the undead building to 69.9,14.7|goto 69.9,14.7
		.talk Tinky Wickwhistle##25714
		..turnin I'm Stuck in this Damned Cage... But Not For Long!##11699
		..accept Let Bixie Know##11700
	step //295
		'Go outside to 73.4,18.8|goto 73.4,18.8
		.talk Bixie Wrenchshanker##25705
		..turnin Might As Well Wipe Out the Scourge##11698
		..turnin Let Bixie Know##11700
		..accept Back to the Airstrip##11701
	step //296
		goto 57.1,20.1
		.talk Abner Fizzletorque##25780
		..turnin Scouting the Sinkholes##11713
		..accept Fueling the Project##11715
	step //297
		goto 57,18.7
		.talk Fizzcrank Fullthrottle##25590
		..turnin Back to the Airstrip##11701
		..turnin The Gearmaster##11798
	step //298
		goto 57.6,23.7
		.' Use your Portable Oil Collector next to the bubbling oil spots in the water|use Portable Oil Collector##34975
		.' Collect 8 Barrels of Oil|goal 8 Barrels of Oil Collected|q 11715/1
	step //299
		goto 57.1,20.1
		.talk Abner Fizzletorque##25780
		..turnin Fueling the Project##11715
		..accept A Bot in Mammoth's Clothing##11718
	step //300
		goto 56.9,29.1
		.kill mammoths|n
		.get 6 Thick Mammoth Hide|q 11718/1
	step //301
		goto 57.1,20.1
		.talk Abner Fizzletorque##25780
		..turnin A Bot in Mammoth's Clothing##11718
		..accept Deploy the Shake-n-Quake!##11723
	step //302
		goto 70.6,36.9
		.' Stand next to the sinkhole|tip It's a huge hole in the ground.
		.' Use The Shake-n-Quake 5000 Control Unit in your bags|use Shake-n-Quake 5000 Control Unit##34981
		.kill 1 Lord Kryxix|q 11723/1
	step //303
		'Hearth to Fizzcrank Airstrip|goto 57.1,18.8,1|use Hearthstone##6948|noway|c
	step //304
		goto 57.1,20.1
		.talk Abner Fizzletorque##25780
		..turnin Deploy the Shake-n-Quake!##11723
	step //305
		'Fly to Valiance Keep|goto Borean Tundra,58.9,68.4,0.1|noway|c
	step //306
		'Ride the boat to Stormwind City|goto Stormwind City|noway|c
	step //307
		'Fly to Menethil Harbor|goto Wetlands,9.5,59.7,0.1|noway|c
	step //308
		goto 4.6,57.2|n
		'Ride the boat to Howling Fjord|goto Howling Fjord|noway|c
	step //309
		goto Howling Fjord,61.1,62.7
		.talk Macalroy##23547
		..accept Hell Has Frozen Over...##11228
	step //310
		goto 60.5,61.1
		.talk Vice Admiral Keller##23546
		..turnin Hell Has Frozen Over...##11228
		..accept If Valgarde Falls...##11243
	step //311
		goto 59.8,63.2
		.talk Pricilla Winterwind##23736
		..fpath Valgarde
	step //312
		home Valgarde
	step //313
		goto 58.9,59.6
		.kill Dragonflayer Worgs|n
		.kill Dragonflayer Invaders|n
		.kill 12 Dragonflayer Invader|q 11243/1
	step //314
		goto 60.5,61.1
		.talk Vice Admiral Keller##23546
		..turnin If Valgarde Falls...##11243
		..accept Rescuing the Rescuers##11244	
	step //315
		goto 58.1,57
		.' Click the Ceremonial Dragonflayer Harpoons|tip They look like poles sticking out of the ground, next to dead dwarf bodies around this area.
		.' Rescue 8 Valgarde Scouts|goal 8 Valgarde Scout Rescued|q 11244/1
	step //316
		goto 56,55.8
		.talk Scout Valory##24106
		..accept Fresh Legs##11251
	step //317
		goto 59.6,48.9
		.talk Defender Mordun##24111
		..turnin Fresh Legs##11251
	step //318
		goto 60.5,61.1
		.talk Vice Admiral Keller##23546
		..turnin Rescuing the Rescuers##11244
		..accept Prisoners of Wyrmskull##11255
	step //319
		goto 60.2,61
		.talk Beltrand McSorf##23548
		..accept The Human League##11273
	step //320
		goto 59.8,61.5
		.talk Thoralius the Wise##23975
		..accept Into the World of Spirits##11333
	step //321
		goto 60.1,62.4
		.talk Guard Captain Zorek##23728
		..accept The Path to Payback##11420
	step //322
		'Go underwater to 62.4,59.3|goto 62.4,59.3
		.' Click the Reagent Pouch|tip It looks like a bag of green plants, sitting on the deck of this ship.
		.get Reagent Pouch|q 11333/1
	step //323
		goto 63,60
		.talk Harold Lagras##23730
		..accept Daggercap Divin'##11443
	step //324
		goto 62.2,59.7
		.' Equip your Diving Helm|use Diving Helm##34082
		.' Click the Valgarde Supply Crates|tip They look like crates all around this area underwater.
		.get 10 Valgarde Supply Crate|q 11443/1
	step //325
		goto 63,60
		.talk Harold Lagras##23730
		..turnin Daggercap Divin'##11443
	step //326
		goto 59.2,54.6
		.' Make sure to equip your real helmet again, so you don't accidentally sell it
		.talk Pulroy the Archaeologist##24122
		..turnin The Human League##11273
		..accept Zedd's Probably Dead##11274
	step //327
		goto 58.8,54.1
		.kill Dragonflayer Tribesmen|n
		.kill Dragonflayer Death Weavers|n
		.kill Dragonflayer Thanes|n
		.collect 3 Dragonflayer Cage Key##33308|n
		.' Click the Dragonflayer Cages
		.' Rescue 3 Captured Valgarde Prisoners|goal 3 Captured Valgarde Prisoner Rescued|q 11255/1
	step //328
		goto 56.6,52.4
		.talk Zedd##24145
		..turnin Zedd's Probably Dead##11274
		..accept And Then There Were Two...##11276
	step //329
		goto 56.6,49.6|n
		.' The entrance to the Utgarde Catacombs starts here|goto 56.6,49.6,0.5|noway|c
	step //330
		'Go inside the cave to 56.9,53.8|goto 56.9,53.8
		.talk Glorenfeld##24150
		..turnin And Then There Were Two...##11276
		..accept The Depths of Depravity##11277
	step //331
		goto 57.3,54.5
		.' Click the Wyrmskull Tablets|tip They look like broken stone tablets laying on the ground inside this cave.
		.get 10 Wyrmskull Tablet|q 11277/1
	step //332
		goto 59.3,55.4
		.' Click the Harpoon Operation Manual|tip It's a book laying at the foot of this small altar.
		.get Harpoon Operation Manual|q 11420/1
	step //333
		goto 59.3,55.4
		.talk Ares the Oathbound##24189
		..accept The Shining Light##11288
	step //334
		'Go downstairs into the ghoul pit to 56.6,53.4|goto 56.6,53.4
		.' The ghouls will die from your aura, so just run through them.
		.' Click the Sacred Artifact|tip It's downstairs in the ghoul pit, a sword stuck in the ground in a pillar of light.
		.get Sacred Artifact|q 11288/1
	step //335
		'Go upstairs to 59.3,55.4|goto 59.3,55.4
		.talk Ares the Oathbound##24189
		..turnin The Shining Light##11288
		..accept Guided by Honor##11289
	step //336
		goto 56.9,53.8
		.talk Glorenfeld##24150
		..turnin The Depths of Depravity##11277
		..accept The Ring of Judgement##11299
	step //337
		'Go downstairs to 55.7,57.4|goto 55.7,57.4
		.talk Daegarn##24151
		..turnin The Ring of Judgement##11299
		..accept Stunning Defeat at the Ring##11300
	step //338
		goto 55,57.5
		.' Kill gladiators, the named mobs
		.' Kill Oluf the Violent when he runs out
		.' Click the Ancient Cipher that falls to the ground
		.get Ancient Cipher|q 11300/1
	step //339
		'Go upstairs to 56.9,53.8|goto 56.9,53.8
		.talk Glorenfeld##24150
		..turnin Stunning Defeat at the Ring##11300
		..accept Return to Valgarde##11278
	step //340
		'Hearth to Valgarde|goto Howling Fjord,58.4,62.5,0.5|use Hearthstone##6948|noway|c
	step //341
		goto 59.8,62.4
		.talk Lord Irulon Trueblade##24191
		..turnin Guided by Honor##11289
	step //342
		goto 60.1,62.4
		.talk Guard Captain Zorek##23728
		..turnin The Path to Payback##11420
		..accept Locating the Mechanism##11426
	step //343
		goto 60.5,61.1
		.talk Vice Admiral Keller##23546
		..turnin Prisoners of Wyrmskull##11255
		..accept Dragonflayer Battle Plans##11290
	step //344
		goto 60.2,61
		.talk Beltrand McSorf##23548
		..turnin Return to Valgarde##11278
		..accept The Explorers' League Outpost##11448
	step //345
		goto 59.8,61.5
		.talk Thoralius the Wise##23975
		..turnin Into the World of Spirits##11333
		..accept The Echo of Ymiron##11343
	step //346
		ding 72
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Northrend (72-74)",[[
	author support@zygorguides.com
	next Zygor's Alliance Leveling Guides\\Northrend (74-76)
	startlevel 72
	step //1
		goto Howling Fjord,55.7,52.6
		.' Click the Dragonflayer Battle Plans|tip It's a big scroll hanging on the wall inside this small cave.
		.get Dragonflayer Battle Plans|q 11290/1
	step //2
		goto 60.2,51.7
		.' Kill Dragonflayer Harpooners on this dock
		.get Harpoon Control Mechanism|q 11426/1
	step //3
		goto 60.1,50.8
		.' Use your Incense Burner in your bags inside the doorway of this house|use Incense Burner##33637
		.' Watch the cutscene
		.' Uncover the Secrets of the Wyrmskull|goal Secrets of Wyrmskull Uncovered|q 11343/1
	step //4
		goto 59.8,61.5
		.talk Thoralius the Wise##23975
		..turnin The Echo of Ymiron##11343
		..accept Anguish of Nifflevar##11344
	step //5
		goto 60.5,61.1
		.talk Vice Admiral Keller##23546
		..turnin Dragonflayer Battle Plans##11290
		..accept To Westguard Keep!##11291
	step //6
		goto 60.1,62.4
		.talk Guard Captain Zorek##23728
		..turnin Locating the Mechanism##11426
		..accept Meet Lieutenant Icehammer...##11427
	step //7
		goto 60.8,61.5|n
		.talk McGoyver##24040
		..'Tell him to take you to the Explorers' League Outpost|goto Howling Fjord,74.7,65.3,1|noway|c
	step //8
		goto 75,65.4
		.talk Stanwad##24717
		..turnin The Explorers' League Outpost##11448
		..accept Problems on the High Bluff##11474
	step //9
		goto 75.1,65.5
		.talk Walt##24807
		..turnin Problems on the High Bluff##11474
		..accept Tools to Get the Job Done##11475
	step //10
		goto 75.3,65
		.talk Hidalgo the Master Falconer##24750
		..accept Trust is Earned##11460
	step //11
		goto 75.5,66.8
		.' Click the Loose Rocks|tip They are grey stones on the ground around this area.
		.collect 1 Fjord Grub##34102|q 11460
	step //12
		goto 75.3,65
		.talk a Rock Falcon##24752
		.' Feed the grub to the rock falcon|goal Fjord Rock Falcon Fed|q 11460/1
	step //13
		goto 75.3,65
		.talk Hidalgo the Master Falconer##24750
		..turnin Trust is Earned##11460
		..accept The Ransacked Caravan##11465
	step //14
		goto 75.5,66.8
		.' Click the Loose Rocks|tip They are grey stones on the ground around this area.
		.collect 5 Fjord Grub##34102|q 11465
	step //15
		goto 69.6,64.8
		.' Make sure you have 5 Fjord Grubs|collect 5 Fjord Grub##34102|n
		.' Use your Trained Rock Falcon in your bags on Fjord Turkeys|use Trained Rock Falcon##34111
		.get 5 Fjord Turkey##34112|q 11465/1
	step //16
		goto 75.3,65
		.talk Hidalgo the Master Falconer##24750
		..turnin The Ransacked Caravan##11465
		..accept Falcon Versus Hawk##11468
	step //17
		goto 75.5,66.8
		.' Click the Loose Rocks|tip They are grey stones on the ground around this area.
		.collect 10 Fjord Grub##34102|q 11468
	step //18
		goto 72.2,64.1
		.' Make sure you have 10 Fjord Grubs|collect 10 Fjord Grub##34102|n
		.' Use your Trained Rock Falcon in your bags on Fjord Hawks|use Trained Rock Falcon##34121
		.get 10 Fjord Hawk|q 11468/1
	step //19
		goto 75.3,65
		.talk Hidalgo the Master Falconer##24750
		..turnin Falcon Versus Hawk##11468
		..accept There Exists No Honor Among Birds##11470
	step //20
		goto 76.7,67.7
		.' Use your Trained Rock Falcon in your bags next to the Vrykul Hawk Roost|use Trained Rock Falcon##34124|tip It looks like a stone monument thing, with a chain connected to it.
		.' Use the Scavenge ability to steal the eggs in the nests on the side of the cliff in front of you|petaction Scavenge
		.get 8 Fjord Hawk Egg|q 11470/1
	step //21
		goto 75.3,65
		.talk Hidalgo the Master Falconer##24750
		..turnin There Exists No Honor Among Birds##11470
	step //22
		goto 64.4,47
		.talk Lieutenant Icehammer##24634
		..turnin Meet Lieutenant Icehammer...##11427
		..accept Drop It then Rock It!##11429
	step //23
		goto 65,39.9
		.' Use your Alliance Banner in your bags|use Alliance Banner##34051
		.' Fight the defenders that come
		.' Place the Alliance Banner|goal Alliance Banner Placed|q 11429/2
		.' Defend the Alliance Banner|goal Alliance Banner Defended|q 11429/1
	step //24
		goto 64.4,47
		.talk Lieutenant Icehammer##24634
		..turnin Drop It then Rock It!##11429
		..accept Harpoon Master Yavus##11430
	step //25
		goto 65.1,56.6
		.kill Harpoon Master Yavus##24644|q 11430/1
	step //26
		goto 69,54.7
		.' Use your Incense Burner in your bags|use Incense Burner##33774
		.' Watch the cutscene
		.' Uncover the Secrets of Nifflevar|goal Secrets of Nifflevar Uncovered|q 11344/1
	step //27
		goto 64.4,47
		.talk Lieutenant Icehammer##24634
		..turnin Harpoon Master Yavus##11430
		..accept It Goes to 11...##11421
	step //28
		goto 64.8,52.7
		.' Use your Harpoon Control Mechanism next to the big metal harpoon guns|use Harpoon Control Mechanism##34032
		.' Use the abilities on your hotbar to shoot the buildings across the water, on the water's edge, and shoot Dragonflayer Defenders
		.' Destroy the Dragonflayer Longhouse|goal Dragonflayer Longhouse Destroyed|q 11421/2
		.' Destroy the Dragonflayer Dockhouse|goal Dragonflayer Dockhouse Destroyed|q 11421/3
		.' Destroy the Dragonflayer Storage Facility|goal Dragonflayer Storage Facility Destroyed|q 11421/4
		.kill 8 Dragonflayer Defender|q 11421/1
		.' Click the red arrow on your action bar to get off the harpoon gun|outvehicle
	step //29
		goto 64.4,47
		.talk Lieutenant Icehammer##24634
		..turnin It Goes to 11...##11421
		..accept Let's Go Surfing Now##11436
	step //30
		goto 78.8,48.9
		.talk Donny##24811
		..accept Out of My Element?##11477
	step //31
		goto 79,47.6
		.kill 5 Iron Rune Laborer|q 11477/2
		.kill 2 Iron Rune Sage|q 11477/3
	step //32
		goto 79,47.6
		.' Click the Building Tools|tip They look like a small metal bucket of tools, sitting next to a wooden wheelbarrow.
		.get Building Tools|q 11475/1
	step //33
		goto 78.4,45.9
		.kill 10 Iron Rune Destroyer|q 11477/1
	step //34
		goto 78.8,48.9
		.talk Donny##24811
		..turnin Out of My Element?##11477
	step //35
		goto 75.1,65.5
		.talk Walt##24807
		..turnin Tools to Get the Job Done##11475
		..accept We Can Rebuild It##11483
		..accept We Have the Technology##11484
	step //36
		goto 75.4,63.3
		.kill Shoveltusks|n
		.get Pristine Shoveltusk Hide|q 11484/1
	step //37
		goto 64.8,40.9
		.' Click the Industrial Strength Rope|tip It's a rope wound around a small wooden post.
		.get Industrial Strength Rope|q 11483/2
	step //38
		goto 67.6,52.2
		.' Click the Large Barrel|tip It looks like a barrel sitting next to this building.
		.get Large Barrel|q 11483/1
	step //39
		goto 67.9,52.7
		.kill Dragonflayer mobs|n
		.get Steel Ribbing|q 11484/2
	step //40
		goto 65.3,57.2
		.' Click the Large Harpoon Lever|tip It looks like a metal lever on this wooden balcony.
		.' Go Harpoon Surfing|goal Go Harpoon Surfing|q 11436/1
	step //41
		goto 60.1,62.4
		.talk Guard Captain Zorek##23728
		..turnin Let's Go Surfing Now##11436
	step //42
		goto 59.8,61.5
		.talk Thoralius the Wise##23975
		..turnin Anguish of Nifflevar##11344
	step //43
		goto 60.8,61.5
		.talk McGoyver##24040
		.' Ask him for some dark iron ingots
		.get Dark Iron Ingots|q 11483/3
	step //44
		goto 60.8,61.5|n
		.talk McGoyver##24040
		..'Tell him to take you to the Explorers' League Outpost|goto Howling Fjord,74.7,65.3,1|noway|c
	step //45
		goto 75.1,65.5
		.talk Walt##24807
		..turnin We Can Rebuild It##11483
		..turnin We Have the Technology##11484
		..accept Iron Rune Constructs and You: Rocket Jumping##11485
	step //46
		goto 75.1,65.5
		'Click the Work Bench tablet next to the iron golem next to you
		.' Get on the work bench and let Walt put you in the golem suit
		.' Use the Rocket Jump ability on your hotbar|petaction Rocket Jump
		.' Master Rocket Jump|goal Rocket Jump Mastered|q 11485/1
	step //47
		'Click the red arrow on your hotbar to leave the golem suit|outvehicle
	step //48
		goto 75.1,65.5
		.talk Walt##24807
		..turnin Iron Rune Constructs and You: Rocket Jumping##11485
		..accept Iron Rune Constructs and You: Collecting Data##11489
	step //49
		'Click the Work Bench tablet next to the iron golem next to you
		.' Get on the work bench and let Walt put you in the golem suit|invehicle
	step //50
		goto 74.8,65.7
		.' Use your Collect Data ability on your hotbar next to the blue crystal|petaction Collect Data|tip It's a floating blue crystal next to the wagon.
		.' Collect Test Data|q 11489/1
	step //51
		'Click the red arrow on your hotbar to leave the golem suit|outvehicle
	step //52
		goto 75.1,65.5
		.talk Walt##24807
		..turnin Iron Rune Constructs and You: Collecting Data##11489
		..accept Iron Rune Constructs and You: The Bluff##11491
	step //53
		'Click the Work Bench tablet next to the iron golem next to you
		.' Get on the work bench and let Walt put you in the golem suit|invehicle
	step //54
		goto 74.8,65.3
		.' Walk on Lebronski's Rug|tip It's a long rug on the ground.
		.' Use your Bluff ability on your hotbar on Lebronski when he gets mad that you walked on his rug|petaction Bluff
		.' Bluff Lebronski|goal Lebronski Bluffed|q 11491/1
	step //55
		'Click the red arrow on your hotbar to leave the golem suit|outvehicle
	step //56
		goto 75.1,65.5
		.talk Walt##24807
		..turnin Iron Rune Constructs and You: The Bluff##11491
		..accept Lightning Infused Relics##11494
	step //57
		'Click the Work Bench tablet next to the iron golem next to you
		.' Get on the work bench and let Walt put you in the golem suit|invehicle
	step //58
		goto 72.7,67.3|n
		.' The path down to Lightning Infused Relics starts here|goto 72.7,67.3,0.5|noway|c
	step //59
		goto 71.8,69.2
		.' Use your Collect Data ability next to the blue crystals|petaction Collect Data|tip They look like blue crystals on the ground around this area.
		.' Use your Bluff ability to get rid of suspicious dwarves|petaction Bluff
		.' Collect 15 Iron Rune Data|goal 15 Iron Rune Data Collected|q 11494/1
	step //60
		'Get to a safe place, then click the red arrow on your hotbar to leave the golem suit|outvehicle
	step //61
		goto 75.1,65.5
		.talk Walt##24807
		..turnin Lightning Infused Relics##11494
	step //62
		goto 40.3,60.3
		.talk Orfus of Kamagua##23804
		..accept The Dead Rise!##11504
	step //63
		goto 57.7,77.5
		.' Click the Mound of Debris|tip It looks like a pile of dirt in the bottom of this small pit, next to a skeleton.
		.get Fengir's Clue|q 11504/1
	step //64
		goto 59.2,77
		.' Click the Unlocked Chest|tip It looks like a small chest in the bottom of this small pit, next to a skeleton.
		.get Rodin's Clue|q 11504/2
	step //65
		goto 59.8,79.4
		.' Click the Long Tail Feather|tip It's a small blue feather sitting on a circular shield in this pit, on top of a skeleton.
		.get Isuldof's Clue|q 11504/3
	step //66
		goto 62,80
		.' Click the Cannonball|tip It looks like a big round grey ball sitting in the dirt in this pit, between a skeleton's legs.
		.get Windan's Clue|q 11504/4
	step //67
		goto 40.3,60.3
		.talk Orfus of Kamagua##23804
		..turnin The Dead Rise!##11504
		..accept Elder Atuik and Kamagua##11507
	step //68
		'Go across The Ancient Lift to 25.0,57.0|goto 25.0,57.0
		.talk Elder Atuik##24755
		..turnin Elder Atuik and Kamagua##11507
		..accept Grezzix Spindlesnap##11508
		..accept Feeding the Survivors##11456
	step //69
		goto 24.7,57.8
		.talk Kip Trawlskip##28197
		..fpath Kamagua
	step //70
		goto 29.1,58.8
		.kill Island Shoveltusks|n
		.get 6 Island Shoveltusk Meat|q 11456/1
	step //71
		goto 25.0,57.0
		.talk Elder Atuik##24755
		..turnin Feeding the Survivors##11456
		..accept Arming Kamagua##11457
	step //72
		goto 26.4,62.9
		.from Frostwing Chimaera##24673
		.get 3 Chimaera Horn|q 11457/1
	step //73
		goto 25.0,57.0
		.talk Elder Atuik##24755
		..turnin Arming Kamagua##11457
		..accept Avenge Iskaal##11458
	step //74
		goto 23.1,62.7
		.talk Grezzix Spindlesnap##24643
		..turnin Grezzix Spindlesnap##11508
		..accept Street "Cred"##11509
	step //75
		goto 35.1,80.9
		.talk "Silvermoon" Harry##24539
		..turnin Street "Cred"##11509
		..accept "Scoodles"##11510
	step //76
		goto 35.6,80.2
		.talk Handsome Terry##24537
		..accept Forgotten Treasure##11434
	step //77
		goto 37.8,79.6
		.talk Scuttle Frostprow##24784
		..accept Swabbin' Soap##11469
	step //78
		goto 38.3,83.4
		.from "Scoodles"##24899
		.get Sin'dorei Scrying Crystal|q 11510/1
	step //79
		goto 37.8,84.6
		.' Click the Eagle Figurine|tip It's a blue eagle statue inside this ship on the middle floor.
		.get Eagle Figurine|q 11434/2
	step //80
		goto 37.1,85.5
		.' Click the Amani Vase|tip It looks like a grey vase at the bottom of this wrecked ship.
		.get Amani Vase|q 11434/1
	step //81
		goto 31.4,77.9
		.from Big Roy##24785
		.get Big Roy's Blubber|q 11469/1
	step //82
		goto 35.1,80.9
		.talk "Silvermoon" Harry##24539
		..turnin "Scoodles"##11510
		..accept The Ancient Armor of the Kvaldir##11567
		..accept The Frozen Heart of Isuldof##11512
		..accept The Lost Shield of the Aesirites##11519
		..accept The Staff of Storm's Fury##11511
	step //83
		goto 35.6,80.2
		.talk Handsome Terry##24537
		..turnin Forgotten Treasure##11434
		..accept The Fragrance of Money##11455
	step //84
		goto 36.3,80.5
		.talk Taruk##24541
		..accept Gambling Debt##11464
	step //85
		goto 35.1,80.9
		.talk "Silvermoon" Harry##24539
		..'Tell him you want to collect a debt he owes
		..'Fight him until he surrenders
		.talk "Silvermoon" Harry##24539
		..'Tell him to pay up
		.get "Silvermoon" Harry's Debt|q 11464/1|goal "Silvermoon" Harry's Debt|q 11464/1
	step //86
		goto 36.3,80.5
		.talk Taruk##24541
		..turnin Gambling Debt##11464
		..accept Jack Likes His Drink##11466
	step //87
		'Go inside the long building to 35.3,79.6|goto 35.3,79.6
		.talk Olga, the Scalawag Wench##24639
		..' Pay 1 gold to bribe her into giving Jack Adams a drink
		.' He passes out on the table
		.talk Jack Adams##24788
		..'Search his pockets
		..get Jack Adams' Debt|q 11466/1|goal Jack Adams' Debt|q 11466/1
	step //88
		goto 36.3,80.5
		.talk Taruk##24541
		..turnin Jack Likes His Drink##11466
		..accept Dead Man's Debt##11467
	step //89
		goto 37.8,79.6
		.talk Scuttle Frostprow##24784
		..turnin Swabbin' Soap##11469
	step //90
		goto 37.2,74.8
		.talk Captain Ellis##24910
		..turnin The Lost Shield of the Aesirites##11519
		..accept Mutiny on the Mercy##11527
	step //91
		'Go downstairs in the ship
		.kill Mutinous Sea Dog ghouls|n
		.get 5 Barrel of Blasting Powder|q 11527/1
	step //92
		'Go upstairs to the ship deck
		.talk Captain Ellis##24910
		..turnin Mutiny on the Mercy##11527
		..accept Sorlof's Booty##11529
	step //93
		'Run to the other end of the ship deck to the big cannon
		.' Keep clicking The Big Gun until Sorlof is dead
		.' Sorlof will drop a big pile of gold on the shore
		.' Jump off the ship and click Sorlof's Booty
		.get Sorlof's Booty|q 11529/1
	step //94
		goto 37.2,74.8
		.talk Captain Ellis##24910
		..turnin Sorlof's Booty##11529
		..accept The Shield of the Aesirites##11530
	step //95
		goto 34.1,76.9
		.kill Rabid Brown Bears|n
		.get 4 Bear Musk|q 11455/1
	step //96
		'Go down the hill to 33.5,75.3|goto 33.5,75.3
		'Go into the cave to 32.3,78.7|goto 32.3,78.7
		.' Hug the wall to the left inside the cave to avoid fighting "Mad" Jonah Sterling
		.' Follow the path around past the big white sleeping bear, he won't attack you if he's asleep
		.' Click The Frozen Heart of Isuldof|tip Inside the cave, it looks like a big blue jewel on the ground.
		.get The Frozen Heart of Isuldof|q 11512/1
	step //97
		'Leave the cave and go to 33.2,63.9|goto 33.2,63.9
		.kill 8 Crazed Northsea Slaver|q 11458/1
	step //98
		'Go onto the ship to 35.3,64.8|goto 35.3,64.8
		.' Wait for Abdul the Insane to walk up to the top deck, then run downstairs
		.' Click The Staff of Storm's Fury|tip On the very bottom floor of this ship.  It looks like a staff standing upright with lightning shooting out of it.
		.get The Staff of Storm's Fury|q 11511/1
	step //99
		goto 29.0,60.5|n
		.' The path up to Dead Man's Debt starts here|goto 29.0,60.5,0.3|noway|c
	step //100
		goto 32.7,60.2
		.' Click the mound of dirt|tip It looks like a huge pile of dirt.
		.' Kill Black Conrad's Ghost and his friends that spawn
		.get Black Conrad's Treasure|q 11467/1
	step //101
		goto 25,57
		.talk Elder Atuik##24755
		..turnin Avenge Iskaal##11458
	step //102
		goto 24.6,58.9
		.talk Anuniaq##24810
		..accept The Way to His Heart...##11472
	step //103
		goto 28.9,74.8
		.' Use Anuniaq's Net on the Schools of Tasty Reef Fish|use Anuniaq's Net##40946|tip They look like swarms of fish in the water.
		.kill Great Reef Sharks|n
		.collect 10 Tasty Reef Fish##34127|q 11472
	step //104
		goto 31,74.4
		.' Use your Tasty Reef Fish on a Reef Bull as far away as you can|use Tasty Reef Fish##34127
		.' He will come to the spot where you're standing
		.' Keep doing this
		.' Lead the Reef Bull to a Reef Cow on the other side of the water|goal Reef Bull led to a Reef Cow|q 11472/1
	step //105
		goto 35.6,80.2
		.talk Handsome Terry##24537
		..turnin The Fragrance of Money##11455
		..accept A Traitor Among Us##11473
	step //106
		goto 35.6,80.6
		.talk Zeh'gehn##24525
		..turnin A Traitor Among Us##11473
		..accept Zeh'gehn Sez##11459
	step //107
		goto 35.6,80.2
		.talk Handsome Terry##24537
		..turnin Zeh'gehn Sez##11459
		..accept A Carver and a Croaker##11476
	step //108
		goto 35.1,80.9
		.talk "Silvermoon" Harry##24539
		..buy 1 Shiny Knife|q 11476/2
	step //109
		goto 35.6,81.7
		.' Click a Scalawag Frog|tip They are blue and green frogs that hop around on the ground here.
		.get Scalawag Frog|q 11476/1
	step //110
		goto 35.6,80.6
		.talk Zeh'gehn##24525
		..turnin A Carver and a Croaker##11476
		..accept "Crowleg" Dan##11479
	step //111
		goto 36.3,80.5
		.talk Taruk##24541
		..turnin Dead Man's Debt##11467
	step //112
		goto 35.9,83.6
		.talk "Crowleg" Dan##24713
		.kill "Crowleg" Dan|q 11479/1
	step //113
		goto 35.6,80.2
		.talk Handsome Terry##24537
		..turnin "Crowleg" Dan##11479
		..accept Meet Number Two##11480
	step //114
		'Go inside the long building to 35.4,79.4|goto 35.4,79.4
		.talk Annie Bonn##24741
		..turnin Meet Number Two##11480
	step //115
		goto 36.1,81.6|n
		.talk Alanya##27933
		..'Tell her to want to fly to Bael'gun's
		..' You will land near a ship|goto 80.9,75.3,1|noway|c
	step //116
		'Go onto the ship and downstairs to 81.8,73.9|goto 81.8,73.9
		.' Click The Ancient Armor of the Kvaldir|tip Inside this ship, on the very bottom floor in the very back of the room.  It looks like a floating chestplate.
		.get The Ancient Armor of the Kvaldir|q 11567/1
	step //117
		goto 80.9,75.1|n
		.' Click Harry's Bomber|tip It's a plane on the water's edge.
		.' Go back to Scalawag Point|goto 36.1,81.7,1|noway|c
	step //118
		'Ride the big lift to the top of the cliff and go to 40.3,60.3|goto 40.3,60.3
		.talk Orfus of Kamagua##23804
		..turnin The Ancient Armor of the Kvaldir##11567
		..turnin The Frozen Heart of Isuldof##11512
		..turnin The Shield of the Aesirites##11530
		..turnin The Staff of Storm's Fury##11511
		..accept A Return to Resting##11568
	step //119
		goto 57.6,77.4
		.' Use your Bundle of Vrykul Artifacts while standing near the skeleton|use Bundle of Vrykul Artifacts##34624
		.' Return the Shield of Aesirites|goal Shield of the Aesirites Returned|q 11568/1
	step //120
		goto 59.2,77
		.' Use your Bundle of Vrykul Artifacts while standing near the skeleton|use Bundle of Vrykul Artifacts##34624
		.' Return the Staff of Storm's Fury|goal Staff of Storm's Fury Returned|q 11568/2
	step //121
		goto 59.8,79.4
		.' Use your Bundle of Vrykul Artifacts while standing near the skeleton.|use Bundle of Vrykul Artifacts##34624
		.' Return the Frozen Heart of Isuldof|goal Frozen Heart of Isuldof Returned|q 11568/3
	step //122
		goto 62,80
		.' Use your Bundle of Vrykul Artifacts while standing near the skeleton.|use Bundle of Vrykul Artifacts##34624
		.' Return the Ancient Armor of the Kvaldir|goal Ancient Armor of the Kvaldir Returned|q 11568/4
	step //123
		goto 40.3,60.3
		.talk Orfus of Kamagua##23804
		..turnin A Return to Resting##11568
		..accept Return to Atuik##11572
	step //124
		'Go across the Ancient Lift to 25.0,57.0|goto 25.0,57.0
		.talk Elder Atuik##24755
		..turnin Return to Atuik##11572
	step //125
		goto 24.6,58.9
		.talk Anuniaq##24810
		..turnin The Way to His Heart...##11472
	step //126
		'Go across the Ancient Lift to 37.4,51.9|goto 37.4,51.9
		.talk Ember Clutch Ancient##23870
		..accept Root Causes##11182
	step //127
		goto 40.6,51.5
		.kill 5 Dragonflayer Handler|q 11182/1
	step //128
		'Go inside the small house to 41.5,52.3|goto 41.5,52.3
		.kill Skeld Drakeson##23940|q 11182/2
	step //129
		goto 37.4,51.9
		.talk Ember Clutch Ancient##23870
		..turnin Root Causes##11182
	step //130
		goto 34,43.8
		.talk Cannoneer Ely##23770
		..accept One Size Does Not Fit All##11190
	step //131
		goto 31.3,44
		.talk Greer Orehammer##23859
		..fpath Westguard Keep
	step //132
		home Westguard Keep
	step //133
		goto 31.2,40.8
		.talk Chef Kettleblack##23773
		..accept Shoveltusk Soup Again?##11155
	step //134
		goto 29,41.9
		.talk Bombardier Petrov##23895
		..accept Break the Blockade##11153
	step //135
		goto 28.1,42.1
		.' Wait for the zeppelin to come back, if it is there already, then get on it
		.' Use Petrov's Cluster Bombs in your bags to throw them off the zeppelin at the pirates as you ride|use Petrov's Cluster Bombs##33098
		.kill 25 Blockade Pirate|q 11153/1
		.' Destroy 10 Blockade Cannons|goal 10 Blockade Cannons destroyed|q 11153/2
	step //136
		goto 29,41.9
		.talk Bombardier Petrov##23895
		..turnin Break the Blockade##11153
	step //137
		'Go inside the fort to 28.8,44.1|goto 28.8,44.1
		.talk Captain Adams##23749
		..turnin To Westguard Keep!##11291
		..accept The Clutches of Evil##11157
	step //138
		goto 35.6,40.6
		.' Click the Westguard Cannonballs|tip They look like grey round rocks on the ground around this area.
		.get 10 Westguard Cannonball|q 11190/1
		.kill Shoveltusks|n
		.get 6 Shoveltusk Meat|q 11155/1
	step //139
		goto 38.3,47.3
		.' Destroy 15 Proto-Drake Eggs|goal 15 Proto-Drake Egg destroyed|q 11157/1|tip The Proto-Drake Eggs look like huge eggs on the ground around this area.
		.kill 15 Proto-Whelp##23688|q 11157/2
	step //140
		goto 34,43.8
		.talk Cannoneer Ely##23770
		..turnin One Size Does Not Fit All##11190
	step //141
		goto 31.2,40.8
		.talk Chef Kettleblack##23773
		..turnin Shoveltusk Soup Again?##11155
	step //142
		'Go inside the fort to 28.8,44.1|goto 28.8,44.1
		.talk Captain Adams##23749
		..turnin The Clutches of Evil##11157
		..accept Mage-Lieutenant Malister##11187
	step //143
		goto 28.9,44.2
		.talk Mage-Lieutenant Malister##23888
		..turnin Mage-Lieutenant Malister##11187
		..accept Two Wrongs...##11188
	step //144
		goto 36.1,47.6
		.' Use Malister's Frost Wand on Proto-Drakes|use Malister's Frost Wand##33119
		.kill 3 Proto-Drake##23689|q 11188/1
	step //145
		'Go inside the fort to 28.9,44.2|goto 28.9,44.2
		.talk Mage-Lieutenant Malister##23888
		..turnin Two Wrongs...##11188
	step //146
		goto 28.8,44.1
		.talk Captain Adams##23749
		..accept Report to Scout Knowles##11199
	step //147
		goto 29.1,41.8
		.talk Sapper Steelring##23976
		..accept Danger! Explosives!##11218
	step //148
		goto 31.6,41.5
		.talk Explorer Abigail##23978
		..accept Send Them Packing##11224
	step //149
		goto 33.8,34.0|n
		'The path down into the canyon starts here|goto 33.8,34.0,0.5|noway|c
	step //150
		goto 33.5,36.1
		.' Use Steelring's Foolproof Dynamite on the mining nodes|use Steelring's Foolproof Dynamite##33190|tip They look like mining nodes around this area.
		.' Click the Whisper Gulch Ore Fragments that spawn
		.get 6 Whisper Gulch Ore Fragment|q 11218/1
		.' Click the Whisper Gulch Ore Gems that spawn
		.get 18 Whisper Gulch Gem|q 11218/2
		.' Use the emote /raise on the Abandoned Pack Mules|tip They look like mules with a bunch of supplies tied to them around this area.
		.' Send 10 Abandoned Pack Mules Packing|goal 10 Abandoned Pack Mule Sent Packing|q 11224/1
	step //151
		.' Go out of the canyon to 31.6,41.5|goto 31.6,41.5
		.talk Explorer Abigail##23978
		..turnin Send Them Packing##11224
	step //152
		goto 29.1,41.8
		.talk Sapper Steelring##23976
		..turnin Danger! Explosives!##11218
		..accept Leader of the Deranged##11240
	step //153
		goto 33.8,34.0|n
		'The path down into the canyon starts here|goto 33.8,34.0,0.5|noway|c
	step //154
		goto 31.6,34.8
		.kill Squeeg Idolhunter##24048|q 11240/1
	step //155
		'Go out of the canyon to 29,41.9|goto 29,41.9
		.talk Sapper Steelring##23976
		..turnin Leader of the Deranged##11240
	step //156
		goto 31.7,42
		.talk Old Man Stonemantle##23831
		..accept My Daughter##11175
	step //157
		goto 44.5,57.6
		.talk Scout Knowles##23906
		..turnin Report to Scout Knowles##11199
		..accept Mission: Eternal Flame##11202
	step //158
		goto 48.4,55.8
		.' Use your Ever-burning Torches next to the big shaking cart|use Ever-burning Torches##33164|tip It looks like a big shaking cart up on a hill, overlooking the town.
		.' Destroy the Southwest Plague Tank|goal Southwest Plague Tank Destroyed|q 11202/1
	step //159
		goto 48.2,52.9
		.' Use your Ever-burning Torches next to the big shaking cart|use Ever-burning Torches##33164|tip It looks like a big shaking cart up on a hill, overlooking the town.
		.' Destroy the Northwest Plague Tank|goal Northwest Plague Tank Destroyed|q 11202/2
	step //160
		goto 51.2,50.2
		.' Use your Ever-burning Torches next to the big shaking cart|use Ever-burning Torches##33164|tip It looks like a big shaking cart up on a hill, overlooking the town.
		.' Destroy the Northeast Plague Tank|goal Northeast Plague Tank Destroyed|q 11202/3
	step //161
		goto 51.5,57.7
		.' Use your Ever-burning Torches next to the big shaking cart|use Ever-burning Torches##33164|tip It looks like a big shaking cart up on a hill, overlooking the town.
		.' Destroy the Southeast Plague Tank|goal Southeast Plague Tank Destroyed|q 11202/4
	step //162
		goto 44.5,57.6
		.talk Scout Knowles##23906
		..turnin Mission: Eternal Flame##11202
		..accept Mission: Package Retrieval##11327
	step //163
		goto 47.8,58.2|n
		.' The path down to Mission: Package Retrieval starts here|goto 47.8,58.2,0.5|noway|c
	step //164
		goto 50.8,53.9
		.' Click the Apothecary's Package|tip It's a small tan package on the ground.
		.get Apothecary's Package|q 11327/1
	step //165
		goto 44.5,57.6
		.talk Scout Knowles##23906
		..turnin Mission: Package Retrieval##11327
		..accept Mission: Forsaken Intel##11328
	step //166
		goto 30.8,41.6
		.talk Peppy Wrongnozzle##24283
		..turnin Mission: Forsaken Intel##11328
		..accept Absholutely... Thish Will Work!##11330
	step //167
		goto 29.3,44.1|n
		.' The path down to Absholutely... Thish Will Work! starts here|goto 29.3,44.1,0.5|noway|c
	step //168
		goto 29.5,43.4
		.' Use Peppy's Special Mix on the Dragonflayer Vrykul Prisoner|use Peppy's Special Mix##33627|tip In the jail under the fort, sitting in a jail cell.
		.' Administer Peppy's Mix To The Vrykul Prisoner|goal Peppy's Mix Administered To The Vrykul Prisoner|q 11330/1
	step //169
		goto 30.8,41.6
		.talk Peppy Wrongnozzle##24283
		..turnin Absholutely... Thish Will Work!##11330
		..accept You Tell Him ...Hic!##11331
	step //170
		'Go into the fort to 28.8,44.1|goto 28.8,44.1
		.talk Captain Adams##23749
		..turnin You Tell Him ...Hic!##11331
		..accept Mission: Plague This!##11332
	step //171
		goto 31.3,44
		.talk Greer Orehammer##23859
		..'Tell him you need a gryphon to ride
		.' Use Orehammer's Precision Bombs in your bags on the big green carts as you fly over New Agamand|use Orehammer's Precision Bombs##33634
		.' Hit 5 Plague Tanks|goal 5 Plague Tank Hits|q 11332/1
	step //172
		'Go into the fort to 28.8,44.1|goto 28.8,44.1
		.talk Captain Adams##23749
		..turnin Mission: Plague This!##11332
		..accept Operation: Skornful Wrath##11248
	step //173
		goto 30.6,42.8
		.talk Quartermaster Brevin##24494
		..accept Everything Must Be Ready##11406
	step //174
		goto 30.2,28.7
		.talk Overseer Irena Stonemantle##23891
		..turnin My Daughter##11175
		..accept See to the Operations##11176
		..accept Where is Explorer Jaren?##11393
	step //175
		goto 30.2,28.7
		.talk Engineer Feknut##24227
		..accept Scare the Guano Out of Them!##11154
	step //176
		goto 30.2,28.7
		.talk Watcher Moonleaf##24273
		..accept The Cleansing##11322
	step //177
		goto 30.8,28.6
		.talk Steel Gate Chief Archaeologist##24399
		..turnin See to the Operations##11176
		..accept I've Got a Flying Machine!##11390
	step //178
		'Click the plane near you on the wooden platform to ride in it|invehicle
	step //179
		'Fly down into the valley below
		.' They look like huge sacks with yellow stuff in them on the ground
		.' Use your Grappling Hook ability on your hotbar near a big sack on the ground|petaction Grappling Hook
		.' Fly back to the top of the valley and fly toward the red arrows on the big scale things to Deliver a Sack of Relics
		.' Repeat this 2 more time
		.' Deliver 3 Sacks of Relics|goal 3 Sack of Relics Delivered|q 11390/1
	step //180
		'Fly back to the wooden platform and click the red arrow button on your hotbar to get out of the plane|outvehicle
	step //181
		goto 30.8,28.6
		.talk Steel Gate Chief Archaeologist##24399
		..turnin I've Got a Flying Machine!##11390
		..accept Steel Gate Patrol##11391
	step //182
		'Click the plane near you on the wooden platform to ride in it|invehicle
	step //183
		'Use the abilities on your hotbar as you fly around to fight the flying gargoyles
		.kill 8 Gjalerbron Gargoyle|q 11391/1
	step //184
		'Fly back to the wooden platform and click the red arrow button on your hotbar to get out of the plane|outvehicle
	step //185
		goto 30.8,28.6
		.talk Steel Gate Chief Archaeologist##24399
		..turnin Steel Gate Patrol##11391
	step //186
		goto 27.4,32.2|n
		.' The path down to Explorer Jaren starts here|goto 27.4,32.2,0.5|noway|c
	step //187
		goto 24.2,32.5
		.talk Explorer Jaren##23833
		..turnin Where is Explorer Jaren?##11393
		..accept And You Thought Murlocs Smelled Bad!##11394
	step //188
		goto 22.6,28.6
		.' Kill 15 Scourge murlocs, humanoids, or ghosts|goal 15 Chillmere Coast Scourge Killed|q 11394/1
		.kill Scourge mobs|n
		.get Scourge Device|n
		.' Click the Scourge Device in your bags|use Scourge Device##33961
		..accept It's a Scourge Device##11395
	step //189
		goto 19.8,22.2
		.talk Old Icefin##24544
		..accept Trident of the Son##11422
	step //190
		goto 24.2,32.5
		.talk Explorer Jaren##23833
		..turnin And You Thought Murlocs Smelled Bad!##11394
		..turnin It's a Scourge Device##11395
		..accept Bring Down Those Shields##11396
	step //191
		goto 23.7,35.2
		.from Rotgill##24546
		.get Rotgill's Trident|q 11422/1
	step //192
		goto 22.7,31.2
		.' Use your Scourging Crystal Controller on the Scourge Crystal|use Scourging Crystal Controller##33960|tip It looks like a big floating purple crystal.
		.' Attack the Scourge Crystal when the purple bubble shield disappears
		.' Destroy 1 Scourge Crystal|goal 1 Scourging Crystals Destroyed|q 11396/1
	step //193
		goto 21.9,28.8
		.' Use your Scourging Crystal Controller on the Scourge Crystal|use Scourging Crystal Controller##33960|tip It looks like a big floating purple crystal.
		.' Attack the Scourge Crystal when the purple bubble shield disappears
		.' Destroy 1 Scourge Crystal|goal 2 Scourging Crystals Destroyed|q 11396/1
	step //194
		goto 21.5,24.6
		.' Use your Scourging Crystal Controller on the Scourge Crystal|use Scourging Crystal Controller##33960|tip It looks like a big floating purple crystal.
		.' Attack the Scourge Crystal when the purple bubble shield disappears
		.' Destroy 1 Scourge Crystal|goal 3 Scourging Crystals Destroyed|q 11396/1
	step //195
		goto 19.8,22.2
		.talk Old Icefin##24544
		..turnin Trident of the Son##11422
	step //196
		goto 24.2,32.5
		.talk Explorer Jaren##23833
		..turnin Bring Down Those Shields##11396
	step //197
		goto 25.1,32.6|n
		.' The path back up to the top of the cliff starts here|goto 25.1,32.6,0.5|noway|c
	step //198
		'Follow the path up to 30.8,20.9|goto 30.8,20.9
		.' Use Feknut's Firecrackers on the ground under Darkclaw Bats|use Feknut's Firecrackers##33129|tip They are bats that fly around in the air around this area.
		.' Click the Darkclaw Guano that spawns
		.get 10 Darkclaw Guano|q 11154/1
	step //199
		goto 30.2,28.7
		.talk Engineer Feknut##24227
		..turnin Scare the Guano Out of Them!##11154
	step //200
		goto 44.4,26.4
		.' Use your Westguard Command Insignia in your bags|use Westguard Command Insignia##33311
		.talk Westguard Sergeant##24060
		..turnin Operation: Skornful Wrath##11248
		..accept Towers of Certain Doom##11245
		..accept Gruesome, But Necessary##11246
		..accept Burn Skorn, Burn!##11247
	step //201
		goto 45.3,27
		.kill Winterskorn mobs|n
		.' Use The Sergeant's Machete on their corpses|use The Sergeant's Machete##33310
		.' Dismember 20 Winterskorn Vrykul|goal 20 Winterskorn Vrykul Dismembered|q 11246/1
		.get Vrykul Scroll of Ascension|n
		.' Click the Vrykul Scroll of Ascension in your bags|use Vrykul Scroll of Ascension##33314
		..accept Stop the Ascension!##11249
	step //202
		goto 43.7,28.5
		.' Use the Sergeant's Torch inside this house|use Sergeant's Torch##33321
		.' Set the Northwest Longhouse Ablaze|goal Northwest Longhouse Set Ablaze|q 11247/1
	step //203
		goto 43.6,30.3
		.' Use the Sergeant's Flare next to this tower|use Sergeant's Flare##33323
		.' Target the Northwest Tower|goal Northwest Tower Targeted|q 11245/1
	step //204
		goto 43.2,35.8
		.' Use the Sergeant's Flare next to this tower|use Sergeant's Flare##33323
		.' Target the Southwest Tower|goal Southwest Tower Targeted|q 11245/3
	step //205
		goto 44.9,35
		.' Use your Vrykul Scroll of Ascension next to the bonfire|use Vrykul Scroll of Ascension##33339
		.kill Halfdan the Ice-Hearted|q 11249/1
	step //206
		goto 46.9,37.1
		.' Use the Sergeant's Flare next to this tower|use Sergeant's Flare##33323
		.' Target the Southeast Tower|goal Southeast Tower Targeted|q 11245/4
	step //207
		goto 46.5,33.2
		.' Use the Sergeant's Flare next to this tower|use Sergeant's Flare##33323
		.' Target the East Tower|goal East Tower Targeted|q 11245/2
	step //208
		goto 46,30.7
		.' Use the Sergeant's Torch inside this building|use Sergeant's Torch##33321
		.' Set the Barracks Ablaze|goal Barracks Set Ablaze|q 11247/3
	step //209
		goto 46.4,28.2
		.' Use the Sergeant's Torch inside this house|use Sergeant's Torch##33321
		.' Set the Northeast Longhouse Ablaze|goal Northeast Longhouse Set Ablaze|q 11247/2
	step //210
		'Use your Westguard Command Insignia in your bags|use Westguard Command Insignia##33311
		.talk Westguard Sergeant##24060
		..turnin Towers of Certain Doom##11245
		..turnin Gruesome, But Necessary##11246
		..turnin Burn Skorn, Burn!##11247
		..accept All Hail the Conqueror of Skorn!##11250
	step //211
		ding 73
	step //212
		goto 60.3,18.7
		.talk Christopher Sloan##24056
		..accept I'll Try Anything!##11329
	step //213
		goto 61.5,18.8
		.' Click the Water Plants|tip They look like tall bushy plants underwater around this area.
		.from Northern Barbfish##24285
		.get 5 Northern Barbfish|q 11329/1
	step //214
		goto 60.3,18.7
		.talk Christopher Sloan##24056
		..turnin I'll Try Anything!##11329
		..accept The One That Got Away##11410
	step //215
		goto 64,19.6
		.' Use your Fresh Barbfish Bait next to the Sunken Boat underwater|use Fresh Barbfish Bait##34013
		.kill Frostfin|q 11410/1
	step //216
		goto 60.3,18.7
		.talk Christopher Sloan##24056
		..turnin The One That Got Away##11410
	step //217
		goto 61.8,17.2
		.talk Lieutenant Maeve##24282
		..accept The Enigmatic Frost Nymphs##11302
	step //218
		goto 62.3,17.2
		.talk Prospector Belvar##24328
		..accept The Book of Runes##11346
	step //219
		goto 62.6,16.8
		.talk Gil Grisert##24139
		..turnin Everything Must Be Ready##11406
		..accept Down to the Wire##11269
	step //220
		goto 62.6,16.8
		.talk Trapper Jethan##24131
		..accept Preying Upon the Weak##11292
	step //221
		goto 60.1,16.1
		.talk James Ormsby##24061
		..fpath Fort Wildervar
	step //222
		goto 60.2,15.6
		.talk Foreman Colbey##24176
		..accept The Yeti Next Door##11284
	step //223
		goto 57.3,18.6
		.kill Frosthorn Rams|n
		.collect 4 Tough Ram Meat##33352|n
		.' Click the Tough Ram Meat in your bags|use Tough Ram Meat##33352
		.collect 1 Giant Yeti Meal##33477|q 11284
		.' Click the Spotted Hippogryph Down feathers|tip They look like brown feathers on the ground around this area.
		.get 10 Spotted Hippogryph Down|q 11269/1
		.' Click the Sprung Traps|tip They look like small animals stuck in traps on the ground around this area.
		.get 8 Trapped Prey|q 11292/1
	step //224
		goto 54.1,8.2|n
		.' The path up to The Cleansing starts here|goto 54.1,8.2,0.5|noway|c
	step //225
		'Follow the path up to 61.1,2|goto 61.1,2
		.' Click the Frostblade Shrine|tip It's a big blue glowing altar table thing.
		.kill Inner Turmoil that spawns|n
		.get Cleansed of Your Inner Turmoil|q 11322/1
	step //226
		'Hearth to Westguard Keep|goto Howling Fjord,30.9,41.5,1|use Hearthstone##6948|noway|c
	step //227
		'Go inside the fort to 28.8,44.1|goto 28.8,44.1
		.talk Captain Adams##23749
		..turnin All Hail the Conqueror of Skorn!##11250
		..accept Dealing With Gjalerbron##11235
	step //228
		goto 28.9,44
		.talk Father Levariol##24038
		..turnin Stop the Ascension!##11249
		..accept Of Keys and Cages##11231
	step //229
		goto 30.2,28.7
		.talk Watcher Moonleaf##24273
		..turnin The Cleansing##11322
		..accept In Worg's Clothing##11325
	step //230
		goto 29.7,5.7
		'Use your Worg Disguise to turn into a Worg|use Worg Disguise##33618
		.talk Ulfang##24261
		..turnin In Worg's Clothing##11325
		..accept Brother Betrayers##11414
	step //231
		goto 28.3,23.9
		.kill Bjomolf##24516|q 11414/1
	step //232
		goto 33.8,29.3
		.kill Varg##24517|q 11414/2
	step //233
		goto 35.1,16
		.kill 15 Gjalerbron Warrior|q 11235/1
		.kill 8 Gjalerbron Rune-Caster|q 11235/2
		.kill 8 Gjalerbron Sleep-Watcher|q 11235/3
		.kill Gjalerbron mobs|n
		.collect 10 Gjalerbron Cage Key##33284|n
		.collect 1 Large Gjalerbron Cage Key##33290|n
		.' Click Gjalerbron Cages
		.' Free 10 Gjalerbron Prisoners|goal 10 Gjalerbron Prisoner Freed|q 11231/1
		.get Gjalerbron Attack Plans|n
		.' Click the Gjalerbron Attack Plans in your bags|use Gjalerbron Attack Plans##33289
		..accept Gjalerbron Attack Plans##11237
	step //234
		goto 29.7,5.7
		.' Use your Worg Disguise to turn into a Worg|use Worg Disguise##33618
		.talk Ulfang##24261
		..turnin Brother Betrayers##11414
		..accept Eyes of the Eagle##11416
	step //235
		goto 41.4,37.7
		.' Click Talonshrike's Egg|tip It's an egg sitting in a nest with 2 other eggs at the base of this waterfall, in the water on a rock.
		.from Talonshrike##24518
		.get Eyes of the Eagle|q 11416/1
	step //236
		goto 29.7,5.7
		.' Use your Worg Disguise to turn into a Worg|use Worg Disguise##33618
		.talk Ulfang##24261
		..turnin Eyes of the Eagle##11416
		..accept Alpha Worg##11326
	step //237
		goto 26.3,12.8
		.kill Garwal##24277|q 11326/1
	step //238
		goto 30.1,28.6
		.talk Watcher Moonleaf##24273
		..turnin Alpha Worg##11326
	step //239
		goto 28.9,44.2
		.talk Mage-Lieutenant Malister##23888
		..turnin Gjalerbron Attack Plans##11237
	step //240
		goto 28.8,44.1
		.talk Captain Adams##23749
		..turnin Dealing With Gjalerbron##11235
		..accept Necro Overlord Mezhen##11236
	step //241
		goto 28.9,44
		.talk Father Levariol##24038
		..turnin Of Keys and Cages##11231
		..accept In Service to the Light##11239
	step //242
		goto 28.9,44.2
		.talk Mage-Lieutenant Malister##23888
		..accept Sleeping Giants##11432
	step //243
		'Go up onto the platform to 35.7,15.8|goto 35.7,15.8
		.kill 10 Deathless Watcher|q 11239/1
		.kill 2 Putrid Wight|q 11239/3
		.' You can find another Putrid Wight and more Deathless Watchers at 38.2,11.8|goto 38.2,11.8
	step //244
		goto 38.8,13
		.kill Necro Overlord Mezhen##24018|q 11236/1
		.get Mezhen's Writings|n
		.' Click Mezhen's Writings|use Mezhen's Writings##34090
		..accept The Slumbering King##11452
	step //245
		goto 39.8,7.6|n
		.' This is the entrance to The Slumbering King|goto 39.8,7.6,0.3|noway|c|tip Go up the big ramp to this spot.
	step //246
		'Go inside and downstairs to 40.9,6.5|goto 40.9,6.5
		.kill Queen Angerboda##24023|q 11452/1|tip She's standing up on the platform.
	step //247
		'Go outside to 34.5,13.2|goto 34.5,13.2|n
		.' The entrance down into the Walking Halls starts here|goto 34.5,13.2,0.3|noway|c
	step //248
		'Go down the stairs to 35,11.9|goto 35,11.9
		.kill 4 Fearsome Horror|q 11239/2|tip Underground in the Walking Halls.
		.kill Necrolords|n
		.collect 5 Awakening Rod##34083|n
		.' Use your Awakening Rods on Dormant Vrykul|use Awakening Rod##34083|tip They are sleeping upright inside the walls, like mummies.
		.kill 5 Dormant Vrykul|q 11432/1
	step //249
		'Hearth to Westguard Keep|goto Howling Fjord,30.9,41.5,0.5|use Hearthstone##6948|noway|c
	step //250
		'Go inside the fort to 28.9,44.2|goto 28.9,44.2
		.talk Mage-Lieutenant Malister##23888
		..turnin Sleeping Giants##11432
	step //251
		goto 28.8,44.1
		.talk Captain Adams##23749
		..turnin Necro Overlord Mezhen##11236
		..turnin The Slumbering King##11452
	step //252
		goto 28.9,44
		.talk Father Levariol##24038
		..turnin In Service to the Light##11239
	step //253
		'Fly to Fort Wildervar|goto Howling Fjord,60.1,16.0,0.5|noway|c
	step //254
		goto 59.7,13.8|n
		.' The path into the mine for The Yeti Next Door starts here|goto 59.7,13.8,0.5|noway|c
	step //255
		goto 60.5,11.9
		.' Use your Giant Yeti Meal in your bags on Shatterhorn|use Giant Yeti Meal##33477|tip In the back of the mine, he's a big sleeping yeti.
		.kill Shatterhorn|q 11284/1
	step //256
		'Go outside to 60.2,15.6|goto 60.2,15.6
		.talk Foreman Colbey##24176
		..turnin The Yeti Next Door##11284
	step //257
		goto 62.6,16.8
		.talk Gil Grisert##24139
		..turnin Down to the Wire##11269
		..accept We Call Him Steelfeather##11418
	step //258
		goto 62.6,16.8
		.talk Trapper Jethan##24131
		..turnin Preying Upon the Weak##11292
	step //259
		'She flies in the sky above town
		.' Use your Feathered Charm in your bags on Steelfeather|use Feathered Charm##34026
		.' Learn Steelfeather's Secret|goal Learn Steelfeather's Secret|q 11418/1
	step //260
		goto 62.6,16.8
		.talk Gil Grisert##24139
		..turnin We Call Him Steelfeather##11418
	step //261
		goto 61.5,22.8
		.talk Lurielle##24117
		..turnin The Enigmatic Frost Nymphs##11302
		..accept Spirits of the Ice##11313
	step //262
		goto 60.6,22.4
		.kill Ice Elementals|n
		.get 15 Icy Core|q 11313/1
	step //263
		goto 61.5,22.8
		.talk Lurielle##24117
		..turnin Spirits of the Ice##11313
		..accept The Fallen Sisters##11314
		..accept Wild Vines##11315
	step //264
		goto 53.3,27.8
		.' Use Lurielle's Pendant on Chill Nymphs|use Lurielle's Pendant##33606
		.' Free 7 Chill Nymphs|goal 7 Chill Nymphs Freed|q 11314/1
		.kill 8 Scarlet Ivy|q 11315/1
	step //265
		goto 61.5,22.8
		.talk Lurielle##24117
		..turnin The Fallen Sisters##11314
		..turnin Wild Vines##11315
		..accept Spawn of the Twisted Glade##11316
		..accept Seeds of the Blacksouled Keepers##11319
	step //266
		goto 54.7,20.5
		.kill 10 Thornvine Creeper|q 11316/1
		.from Spore##23876
		.' Use your Enchanted Ice Core on Spore corpses|use Enchanted Ice Core##33607
		.' Freeze 8 Spores|q 11319/1
	step //267
		goto 61.5,22.8
		.talk Lurielle##24117
		..turnin Spawn of the Twisted Glade##11316
		..turnin Seeds of the Blacksouled Keepers##11319
		..accept Keeper Witherleaf##11428
	step //268
		goto 53.7,18.6
		.kill Keeper Witherleaf##24638|q 11428/1
	step //269
		goto 61.5,22.8
		.talk Lurielle##24117
		..turnin Keeper Witherleaf##11428
	step //270
		goto 65.0,28.5
		.kill Iron Rune Stonecallers and Iron Rune Binders|n
		.collect 1 Book of Runes - Chapter 1##33778|n
		.collect 1 Book of Runes - Chapter 2##33779|n
		.collect 1 Book of Runes - Chapter 3##33780|n
		.' Click a Book of Runes - Chapter in your bags|use Book of Runes - Chapter 1##33778
		.get The Book of Runes|q 11346/1
	step //271
		goto 62.3,17.2
		.talk Prospector Belvar##24328
		..turnin The Book of Runes##11346
		..accept Mastering the Runes##11349
	step //272
		goto 71.2,28.7
		.' Click the Iron Rune Carving Tools|tip It looks like a small metal chest.
		.get Iron Rune Carving Tools|q 11349/1
		.' If they are not there, they can also spawn at the following 5 locations as well:
		..' At 67.5,23.5
		..' At 69.1,22.8
		..' At 72.4,17.8
		..' At 73.4,24.9
		..' At 67.5,29.2
	step //273
		goto 62.3,17.2
		.talk Prospector Belvar##24328
		..turnin Mastering the Runes##11349
		..accept The Rune of Command##11348
	step //274
		goto 71.9,24.6
		.' Use your Rune of Command on a Stone Giant around this area to control it|use Rune of Command##33796
		.' Once you are controlling the Stone Giant, come here
		.kill Binder Murdis|q 11348/2
	step //275
		goto 62.3,17.2
		.talk Prospector Belvar##24328
		..turnin The Rune of Command##11348
	step //276
		'Fly to Valgarde|goto Howling Fjord,59.7,63.3,0.5|noway|c
	step //277
		'Ride the boat to Menethil Harbor|goto Wetlands|noway|c
	step //278
		'Fly to Stormwind|goto Stormwind City|noway|c
	step //279
		'Ride the boat to Borean Tundra|goto Borean Tundra|noway|c
	step //280
		'Go northeast to Dragonblight|goto Dragonblight|noway|c
	step //281
		goto Dragonblight,29,55.5
		.talk Image of Archmage Modera##26673
		..accept Rifle the Bodies##12000
	step //282
		goto 29.2,55.3
		.talk Palena Silvercloud##26881
		..fpath Stars' Rest
	step //283
		goto 29.2,55.6
		.talk Warden Jodi Moonsong##26973
		..accept The Liquid Fire of Elune##12166
	step //284
		home Stars' Rest
	step //285
		goto 28.8,56.2
		.talk Courier Lanson##27060
		..turnin The Lost Courier##12157
		..accept Of Traitors and Treason##12171
	step //286
		goto 29.2,55.3
		.' She is the Flight Path Master
		.talk Palena Silvercloud##26881
		..turnin Of Traitors and Treason##12171
	step //287
		goto 26.3,52.3
		.from Blighted Elks
		.from Rabid Grizzlies
		.' Use your Liquid Fire of Elune on their corpses|use Liquid Fire of Elune##36956
		.' Cleanse 6 Blighted Elk corpses|goal 6 Blighted Elk's corpse cleansed|q 12166/1
		.' Cleanse 6 Rabid Grizzly corpses|goal 6 Rabid Grizzly's corpse cleansed|q 12166/2
	step //288
		goto 24.1,53.7
		.' Click the Dead Mage Hunter bodies on the ground
		.get Mage Hunter Personal Effects bags|n
		.' Click the Mage Hunter Personal Effects bags in your bags|use Mage Hunter Personal Effects##35792
		.get Moonrest Gardens Plans|q 12000/1
	step //289
		goto 29,55.5
		.talk Image of Archmage Modera##26673
		..turnin Rifle the Bodies##12000
		..accept Prevent the Accord##12004
	step //290
		goto 29.2,55.6
		.talk Warden Jodi Moonsong##26973
		..turnin The Liquid Fire of Elune##12166
		..accept Kill the Cultists##12167
	step //291
		goto 24.2,60.1
		.talk Ethenial Moonshadow##26501
		..accept Avenge this Atrocity!##12006
	step //292
		goto 20.9,60.4
		.kill 15 Blue Dragonflight forces at Moonrest Gardens|q 12006/1|tip Kill all types of mobs except the Moonrest Highbornes around this area.
	step //293
		goto 18.4,58.9
		.from Wind Trader Mu'fah##26496
		.get Wind Trader Mu'fah's Remains|q 12004/1
	step //294
		'Go inside the building to 19.4,58.1|goto 19.4,58.1
		.from Goramosh##26349
		.get The Scales of Goramosh|q 12004/2
		.get Goramosh's Strange Device|n
		.' Click Goramosh's Strange Device|use Goramosh's Strange Device##36742
		..accept A Strange Device##12055
	step //295
		goto 24.2,60.1
		.talk Ethenial Moonshadow##26501
		..turnin Avenge this Atrocity!##12006
		..accept End Arcanimus##12013
	step //296
		goto 20,59.7
		.kill Arcanimus##26370|q 12013/1
	step //297
		goto 24.2,60.1
		.talk Ethenial Moonshadow##26501
		..turnin End Arcanimus##12013
	step //298
		goto 29,55.5
		.talk Image of Archmage Modera##26673
		..turnin Prevent the Accord##12004
		..turnin A Strange Device##12055
		..accept Projections and Plans##12060
	step //299
		goto 24.2,55.6
		.' Use your Surge Needle Teleporter|use Surge Needle Teleporter##36747
		.' Walk around on the platform you get teleported onto
		.' Observe the Object on the Surge Needle|goal Object on the Surge Needle observed|q 12060/1
	step //300
		'Use your Surge Needle Teleporter to go back down to the ground|goto Dragonblight,22.6,57.0,1.0|use Surge Needle Teleporter##36747|noway|c
	step //301
		goto 29,55.5
		.talk Image of Archmage Modera##26673
		..turnin Projections and Plans##12060
		..accept The Focus on the Beach##12065
	step //302
		goto 26.4,65
		.from Captain Emmy Malin##26762
		.get Ley Line Focus Control Ring|n
		.' Use the Ley Line Focus Control Ring next to the half-circle|use Ley Line Focus Control Ring##36751|tip It's a big half-circle purple glowing thing.
		.' Retrieve ley line focus information|goal Ley line focus information retrieved|q 12065/1
		.get Captain Malin's Letter|n
		.' Click Captain Malin's Letter in your bags|use Captain Malin's Letter##36756
		..accept A Letter for Home##12067
	step //303
		goto 29,55.5
		.talk Image of Archmage Modera##26673
		..turnin The Focus on the Beach##12065
		..accept Atop the Woodlands##12083
	step //304
		goto 29,55.5
		.talk Commander Saia Azuresteel##26459
		..turnin A Letter for Home##12067
	step //305
		goto 28.7,57.1
		.talk Sarendryana##26837
		..accept Strengthen the Ancients##12092
	step //306
		goto 31.2,59.7
		.talk Woodlands Walker##26421
		.collect 3 Bark of the Walkers##36786|q 12092
	step //307
		goto 30.6,63.4
		.' Use your Bark of the Walkers on Lothalor Ancients|use Bark of the Walkers##36786|tip They just stand around this area and they are friendly toward you.
		.' Strengthen 3 Lothalor Ancients|goal 3 Lothalor Ancient strengthened|q 12092/1
	step //308
		goto 32.2,70.6
		.from Lieutenant Ta'zinni##26815|tip He walks in a circle around the half-circle purple glowing thing.
		.collect Ley Line Focus Control Amulet##36779|q 12083
	step //309
		goto 32.2,71.2
		.' Use your Ley Line Focus Control Amulet on the Ley Line Focus|use Ley Line Focus Control Amulet##36779|tip It's a big half-circle purple glowing thing.
		.' Retrieve ley line focus information|goal Ley line focus information retrieved|q 12083/1
	step //310
		goto 28.7,57.1
		.talk Sarendryana##26837
		..turnin Strengthen the Ancients##12092
	step //311
		goto 29,55.5
		.talk Image of Archmage Modera##26673
		..turnin Atop the Woodlands##12083
		..accept Search Indu'le Village##12098
	step //312
		goto 26.4,45.7
		.from Anub'ar Cultist##26319
		.get 5 Functional Cultist Suit|q 12167/1
		.get The Favor of Zangus|n
		.' Click the Favor of Zangus in your bags|use The Favor of Zangus##36958
		..accept The Favor of Zangus##12168
	step //313
		goto 29.2,55.6
		.talk Warden Jodi Moonsong##26973
		..turnin Kill the Cultists##12167
		..turnin The Favor of Zangus##12168
		..accept The High Cultist##12169
	step //314
		goto 27.0,50.4|n
		.' The path down to High Cultist Zangus starts here|goto Dragonblight,27.0,50.4,0.5|noway|c
	step //315
		'Go down into the cave to 28.9,49.7|goto 28.9,49.7
		.kill High Cultist Zangus##26655|q 12169/1
	step //316
		'Go out of the cave to 29.2,55.6|goto 29.2,55.6
		.talk Warden Jodi Moonsong##26973
		..turnin The High Cultist##12169
	step //317
		goto 40.3,66.9
		.' Click Mage-Commander Evenstar's body|tip His body is floating underwater here.
		..turnin Search Indu'le Village##12098
		..accept The End of the Line##12107
	step //318
		goto 39.8,66.9
		.' Use your Ley Line Focus Control Talisman on the Ley Line Focus|use Ley Line Focus Control Talisman##36815|tip It's a big half-circle purple glowing thing underwater.
		.' Retrieve ley line focus information|goal Ley Line Focus information retrieved|q 12107/1
	step //319
		goto 53,66.4
		.' Go to this spot on the cliff to Observe Azure Dragonshrine|goal Azure Dragonshrine observed|q 12107/2
	step //320
		goto 48.5,74.4
		.talk Cid Flounderfix##28196
		..fpath Moa'ki
	step //321
		home Moa'ki Harbor
	step //322
		goto 48,74.9
		.talk Elder Ko'nani##26194
		..turnin Travel to Moa'ki Harbor##12117
		..accept Let Nothing Go To Waste##11958
	step //323
		goto 48.3,74.3
		.talk Trapper Mau'i##26228
		..accept Planning for the Future##11960
	step //324
		goto 45.3,63.7
		.kill Snowfall Glade mobs|n
		.get 6 Stolen Moa'ki Goods|q 11958/1
		.' Click Snowfall Glade Pups|tip The Snowfall Glade Pups are small creatures in front of the houses.
		.get 12 Snowfall Glade Pup|q 11960/1
	step //325
		goto 48.3,74.3
		.talk Trapper Mau'i##26228
		..turnin Planning for the Future##11960
	step //326
		goto 48,74.9
		.talk Elder Ko'nani##26194
		..turnin Let Nothing Go To Waste##11958
		..accept Slay Loguhn##11959
	step //327
		goto 46.3,59.2
		.from Loguhn##26196
		.get Blood of Loguhn|n
		.' Click the Blood of Loguhn in your bags|use Blood of Loguhn##35688
		.' Smear the Blood of Loguhn on yourself|goal Loguhn's Blood Smeared|q 11959/1
	step //328
		goto 48,74.9
		.talk Elder Ko'nani##26194
		..turnin Slay Loguhn##11959
	step //329
		goto 49.2,75.6
		.talk Toalu'u the Mystic##26595
		..accept Spiritual Insight##12028
	step //330
		goto 48.9,75.8
		.' Use Toalu'u's Spiritual Incense next to Toalu'u's Brazier|use Toalu'u's Spiritual Incense##35907|tip Sitting next to the entrance to the small house.
		.' Watch yourself fly as a wisp
		.' Attain Spiritual Insight concerning Indu'le Village|goal Spiritual insight concerning Indu'le Village attained.|q 12028/1
	step //331
		goto 49.2,75.6
		.talk Toalu'u the Mystic##26595
		..turnin Spiritual Insight##12028
		..accept Elder Mana'loa##12030
	step //332
		goto 47.7,76.6
		.talk Tua'kea##26245
		..accept Tua'kea's Crab Traps##12009
	step //333
		goto 46.6,77.5
		.' Click Tua'kea's Crab Traps|tip They look like small cages on the ground underwater around this area.
		.get 8 Tua'kea Crab Trap|q 12009/1
	step //334
		goto 47.7,80
		.' Click the Wrecked Crab Trap|tip It looks like a broken version of Tue'kea's Crab Traps, on the ground underwater.
		..accept Signs of Big Watery Trouble##12011
	step //335
		goto 47.7,76.6
		.talk Tua'kea##26245
		..turnin Tua'kea's Crab Traps##12009
		..turnin Signs of Big Watery Trouble##12011
		..accept The Bait##12016
	step //336
		goto 43.7,82.3
		.from Kili'ua##26521
		.get The Flesh of "Two Huge Pincers"|q 12016/1
	step //337
		goto 47.7,76.6
		.talk Tua'kea##26245
		..turnin The Bait##12016
		..accept Meat on the Hook##12017
	step //338
		goto 46.7,78.2
		.' Use Tu'u'gwar's Bait next to Tua'kea's Fishing Hook|use Tu'u'gwar's Bait##35838|tip It looks like a rope leading into the water, with a big hook on the end.
		.' Kill Tu'u'gwar when he comes|kill 1 Tu'u'gwar|q 12017/1
	step //339
		goto 47.7,76.6
		.talk Tua'kea##26245
		..turnin Meat on the Hook##12017
	step //340
		goto 36.4,65
		.talk Elder Mana'loa##188419
		..turnin Elder Mana'loa##12030
		..accept Freedom for the Lingering##12031
	step //341
		goto 37.2,65.5
		.kill Indu'le mobs|n
		.' Put 15 Indu'le spirits to rest|goal 15 Indu'le spirits put to rest|q 12031/1
	step //342
		goto 36.4,65
		.talk Elder Mana'loa##188419
		..turnin Freedom for the Lingering##12031
		..accept Conversing With the Depths##12032
	step //343
		goto 34.3,79.8|n
		.' The path up to Conversing With the Depths starts here|goto Dragonblight,34.3,79.8,0.5|noway|c
	step //344
		'Follow the path up to 34,83.4|goto 34,83.4
		.' Click The Pearl of the Depths|tip It's a big white pearl sitting on a altar thing.
		.' Oacha'noa appears and tells you to jump in the water
		.' Jump in the water when he tells you to
		.' Obey Oacha'noa's compulsion|goal Oacha'noa's compulsion obeyed.|q 12032/1
	step //345
		goto 49.2,75.6
		.talk Toalu'u the Mystic##26595
		..turnin Conversing With the Depths##12032
	step //346
		'Fly to Stars' Rest|goto Dragonblight,29.2,55.4,0.5|noway|c
	step //347
		goto 29,55.5
		.talk Image of Archmage Modera##26673
		..turnin The End of the Line##12107
		..accept Gaining an Audience##12119
	step //348
		'Hearth to Moa'ki Harbor|goto Dragonblight,48.2,74.8,0.5|use Hearthstone##6948|noway|c
	step //349
		goto 57.9,54.2
		.talk Tariolstrasz##26443
		..turnin Gaining an Audience##12119
		..accept Speak with your Ambassador##12766
	step //350
		home Wyrmrest Temple
	step //351
		goto 60,55.1
		.talk Lauriel Trueblade##27803
		..turnin Speak with your Ambassador##12766
		..accept Report to the Ruby Dragonshrine##12460
	step //352
		goto 60.3,51.6
		.talk Nethestrasz##26851
		..fpath Wyrmrest Temple
	step //353
		goto 57.9,54.2|n
		.talk Tariolstrasz##26443
		..'Tell him you need to go to the top of the temple|goto Dragonblight,59.7,53.1,0.1|noway|c
	step //354
		goto 59.6,54.4
		.talk Lord Itharius##27785
		..accept Seeds of the Lashers##12458
	step //355
		goto 60,54.5
		.talk Chromie##27856
		..accept Mystery of the Infinite##12470
	step //356
		goto 60.1,54.2
		.talk Nalice##27765
		..accept The Obsidian Dragonshrine##12447
	step //357
		goto 59.5,53.3|n
		.talk Torastrasza##26949
		..'Tell him you want to go to the ground level of the temple|goto Dragonblight,58.0,55.2,0.1|noway|c
	step //358
		goto 63.3,66.9|n
		.' The path down to Seeds of the Lashers starts here|goto Dragonblight,63.3,66.9,0.5|noway|c
	step //359
		goto 63.3,71
		.kill Emerald Lashers|n
		.get 3 Lasher Seed|q 12458/1
	step //360
		goto 63.7,71.9
		.talk Nishera the Garden Keeper##27255
		..accept Cycle of Life##12454
	step //361
		'They fly around over your head around the lake
		.kill 5 Emerald Skytalon|q 12454/1
	step //362
		goto 63.7,71.9
		.talk Nishera the Garden Keeper##27255
		..turnin Cycle of Life##12454
	step //363
		goto 57.9,54.2|n
		.talk Tariolstrasz##26443
		..'Tell him you need to go to the top of the temple|goto Dragonblight,59.7,53.1,0.1|noway|c
	step //364
		goto 59.6,54.4
		.talk Lord Itharius##27785
		..turnin Seeds of the Lashers##12458
		..accept That Which Creates Can Also Destroy##12459
	step //365
		goto 59.5,53.3|n
		.talk Torastrasza##26949
		..'Tell him you want to go to the ground level of the temple|goto Dragonblight,58.0,55.2,0.1|noway|c
	step //366
		goto 52.2,50
		.talk Ceristrasz##27506
		..turnin Report to the Ruby Dragonshrine##12460
		..accept Heated Battle##12416
	step //367
		goto 52.7,46.2
		.' Help kill the following:
		..'12 Frigid Ghoul Attackers|kill 12 Frigid Ghoul Attacker|q 12416/1
		..'8 Frigid Geist Attackers|kill 8 Frigid Geist Attacker|q 12416/2
		..'1 Frigid Abomination Attacker|kill 1 Frigid Abomination Attacker|q 12416/3
		.' You can find more of these at 50.9,52.4|n
	step //368
		goto 52.2,50
		.talk Ceristrasz##27506
		..turnin Heated Battle##12416
		..accept Return to the Earth##12417
	step //369
		goto 46.7,52.8
		.' Click the Ruby Acorns|tip The Ruby Acorns look like red stones on the ground around this area.
		.collect 6 Ruby Acorn##37727|n
		.' Use the Ruby Acorns on the Ruby Keeper corpses|use Ruby Acorn##37727|tip The Ruby Keepers look like huge red dragons on fire.
		.' Return 6 Ruby Keepers to the Earth|goal 6 Ruby Keeper Returned to the Earth|q 12417/1
	step //370
		goto 52.2,50
		.talk Ceristrasz##27506
		..turnin Return to the Earth##12417
		..accept Through Fields of Flame##12418
	step //371
		'Go into the valley to 48.2,47.8|goto 48.2,47.8
		.kill 6 Frigid Necromancer|q 12418/1
	step //372
		ding 74
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Northrend (74-76)",[[
	author support@zygorguides.com
	next Zygor's Alliance Leveling Guides\\Northrend (76-78)
	startlevel 74
	step //1
		'Go into the tree trunk to 47.6,49|goto Dragonblight,47.6,49
		.from Dahlia Suntouch##27680
		.' Cleanse the Ruby Corruption|goal Ruby Corruption Cleansed|q 12418/2
		.get Ruby Brooch|n
		.' Click the Ruby Brooch in your bags|use Ruby Brooch##37833
		..accept The Fate of the Ruby Dragonshrine##12419
	step //2
		goto 52.2,50
		.talk Ceristrasz##27506
		..turnin Through Fields of Flame##12418
		..accept The Steward of Wyrmrest Temple##12768
	step //3
		goto 57.9,54.2
		.talk Tariolstrasz##26443
		..turnin The Steward of Wyrmrest Temple##12768
		..accept Informing the Queen##12123
	step //4
		goto 57.9,54.2|n
		.talk Tariolstrasz##26443
		..'Tell him you need to go to the top of the temple|goto Dragonblight,59.7,53.1,0.1|noway|c
	step //5
		goto 59.8,54.7
		.talk Alexstrasza the Life-Binder##26917
		..turnin Informing the Queen##12123
		..accept Report to Lord Afrasastrasz##12435
	step //6
		goto 59.8,54.7
		.talk Krasus##27990
		..turnin The Fate of the Ruby Dragonshrine##12419
	step //7
		goto 59.5,53.3|n
		.talk Torastrasza##26949
		..'Tell him you want to go to Lord Afrasastrasz|goto Dragonblight,59.2,54.3,0.1|noway|c
	step //8
		goto 59.2,54.3
		.talk Lord Afrasastrasz##27575
		..turnin Report to Lord Afrasastrasz##12435
		..accept Defending Wyrmrest Temple##12372
	step //9
		goto 58.3,55.2
		.talk Wyrmrest Defender##27629
		..'Tell him you are ready to get into the fight
		.' Fly around Wyrmrest Temple fighting the blue dragons in the sky using your abilities on your hotbar
		.kill 3 Azure Dragon|q 12372/1
		.kill 5 Azure Drake|q 12372/2
	step //10
		'Fly southwest to 55.1,66.4|goto 55.1,66.4
		.' Fly into the huge purple swirling column
		.' Use your Destabilize Azure Dragonshrine ability|petaction Destabilize Azure Dragonshrine
		.' Destabilize the Azure Dragonshrine|goal Destabilize the Azure Dragonshrine|q 12372/3
	step //11
		goto 58.7,54.5|n
		'Click the red arrow to get off the dragon on the middle level of the temple|script VehicleExit()|outvehicle|c
	step //12
		goto 59.2,54.3
		.talk Lord Afrasastrasz##27575
		..turnin Defending Wyrmrest Temple##12372
	step //13
		goto 59.2,54.3|n
		.talk Lord Afrasastrasz##27575
		..'Tell him you want to go to the ground level|goto Dragonblight,58.0,55.2,0.1|noway|c
	step //14
		goto 55.2,45.7
		.' Use your Seeds of Nature's Wrath on a Reanimated Frost Wyrm to weaken it|use Seeds of Nature's Wrath##37887|tip They fly around in the sky.
		.kill Weakened Reanimated Frost Wyrm|q 12459/1
	step //15
		'Go to Wyrmrest Temple and fly to Stars' Rest|goto Dragonblight,29.2,55.4,0.1|noway|c
	step //16
		goto 29,55.5
		.talk Image of Archmage Modera##26673
		..accept The Magical Kingdom of Dalaran##12794
	step //17
		goto 29.2,55.3
		'She is the Flight Path Master
		.talk Palena Silvercloud##26881
		..accept High Commander Halford Wyrmbane##12174
	step //18
		'You will fly to Wintergarde Keep|goto Dragonblight,77.1,49.8,0.1|noway|c
	step //19
		goto 77,49.8
		.talk Rodney Wells##26878
		..fpath Wintergarde Keep
	step //20
		goto 78.61,48.2
		.talk High Commander Halford Wyrmbane##27136
		..turnin High Commander Halford Wyrmbane##12174
		..accept Naxxramas and the Fall of Wintergarde##12235
	step //21
		goto 77.1,50.1
		.talk Gryphon Commander Urik##27317
		..turnin Naxxramas and the Fall of Wintergarde##12235
		..accept Flight of the Wintergarde Defender##12237
	step //22
		'Use the Wintergarde Gryphon Whistle in your bags|use Wintergarde Gryphon Whistle##37287
		.' Click the Wintergarde Gryphon to ride it|invehicle
	step //23
		'Fly to 83.6,48.8|goto 83.6,48.8
		.' Use your Rescue Villager ability on your hotbar on Helpless Wintergarde Villagers on the ground around this area|petaction Rescue Villager
		.' Fly them back to Gryphon Commander Urik at 77.1,50.1|n|petaction Soar
		.' Use your Drop Off Villager ability on your hotbar|petaction Drop Off Villager
		.' Rescue 10 Helpless Villagers|goal 10 Helpless Villager Rescued|q 12237/1
	step //24
		'Click the red arrow button on your hotbar to get off the gryphon|script VehicleExit()|outvehicle
	step //25
		goto 77.1,50.1
		.talk Gryphon Commander Urik##27317
		..turnin Flight of the Wintergarde Defender##12237
		..accept Return to the High Commander##12251
	step //26
		goto 78.61,48.2
		.talk High Commander Halford Wyrmbane##27136
		..turnin Return to the High Commander##12251
		..accept Rescue from Town Square##12253
		..accept The Demo-gnome##12275
	step //27
		goto 78.6,48.2
		.talk Commander Lynore Windstryke##27155
		..accept The Fate of the Dead##12258
	step //28
		goto 79.1,47.2
		.talk Zelig the Visionary##27314
		..accept Imprints on the Past##12282
	step //29
		goto 77.8,50.3
		.talk Siege Engineer Quarterflash##27159
		..turnin The Demo-gnome##12275
		..accept The Search for Slinkin##12276
		..accept The Bleeding Ore##12272
	step //30
		goto 77.8,50.3
		.talk Highlord Leoric Von Zeldig##27156
		..accept Not In Our Mine##12269
	step //31
		home Wintergarde Keep
	step //32
		goto 79.9,49.7
		.' Kill Vengeful Geists next to Trapped Wintergarde Villagers|tip The Trapped Wintergarde Villagers looked like scared villagers getting harrassed by Vengeful Geists around this area and inside buildings.
		.' Rescue 6 Trapped Wintergarde Villagers|goal 6 Trapped Wintergarde Villager Rescued|q 12253/1
		.kill 15 Vengeful Geist|q 12258/1
	step //33
		'Go upstairs in this building to 78.9,50.9|goto 78.9,50.9
		.' Click the Scrying Orb|tip Upstairs in this building, in the back of the room, next to some boxes.  It looks like a glowing ball with wings on it.
		.get Scrying Orb|q 12282/1
	step //34
		goto 78.6,48.2
		.talk Commander Lynore Windstryke##27155
		..turnin The Fate of the Dead##12258
	step //35
		goto 78.61,48.2
		.talk High Commander Halford Wyrmbane##27136
		..turnin Rescue from Town Square##12253
		..accept Find Durkon!##12309
	step //36
		goto 79.1,47.2
		.talk Zelig the Visionary##27314
		..turnin Imprints on the Past##12282
		..accept Orik Trueheart and the Forgotten Shore##12287
	step //37
		goto 79.1,53.2
		.talk Cavalier Durkon##27318
		..turnin Find Durkon!##12309
		..accept The Noble's Crypt##12311
	step //38
		'Go inside the crypt to 78.6,52.4|goto 78.6,52.4
		.from Necrolord Amarion##27508
		.' Click the Flesh-bound Tome|tip The Flesh-bound Tome is a small red book on the floor.
		..accept Secrets of the Scourge##12312
	step //39
		'Go outside the crypt to 79.1,53.2|goto 79.1,53.2
		.talk Cavalier Durkon##27318
		..turnin The Noble's Crypt##12311
		..turnin Secrets of the Scourge##12312
		..accept Mystery of the Tome##12319
	step //40
		goto 78.61,48.2
		.talk High Commander Halford Wyrmbane##27136
		..turnin Mystery of the Tome##12319
		..accept Understanding the Language of Death##12320
	step //41
		goto 76.8,47.4
		.talk Inquisitor Hallard##27316
		..turnin Understanding the Language of Death##12320
		..accept A Righteous Sermon##12321
	step //42
		goto 76.8,47.4
		.' Watch the dialogue|tip Downstairs in the fort, in front of a jail cell.
		.' Hear the Righteous Sermon|goal Righteous Sermon Heard|q 12321/1
	step //43
		goto 78.61,48.2
		.talk High Commander Halford Wyrmbane##27136
		..turnin A Righteous Sermon##12321
	step //44
		goto 80.4,45.1
		.' Kill Risen Wintergarde Miners inside this mine
		.get 10 Wintergarde Miner's Card|q 12269/1
		.' Click the Strange Ore nodes|tip They look like green mining nodes.
		.get 10 Strange Ore|q 12272/1
	step //45
		goto 81.5,42.2
		.talk Slinkin the Demo-gnome##27412
		..turnin The Search for Slinkin##12276
		..accept Leave Nothing to Chance##12277
	step //46
		goto 80.7,41.3
		.' Click the Wintergarde Mine Bomb|tip It looks like a bunch of big dymanite sticks on the ground, next to this wooden stage.
		.collect Wintergarde Mine Bomb##37465|q 12277
	step //47
		'Follow the path in the mine to 80.4,44.8|goto 80.4,44.8
		.' Use your Wintergarde Mine Bomb in the doorway|use Wintergarde Mine Bomb##37465|tip It's an entrance to the mine.
		.' Destroy the Lower Wintergarde Mine Shaft|goal Lower Wintergarde Mine Shaft Destroyed|q 12277/2
	step //48
		'Go outside and around to 80.2,45.3|goto 80.2,45.3
		.' Use your Wintergarde Mine Bomb in the doorway|use Wintergarde Mine Bomb##37465|tip It's an entrance to the mine.
		.' Destroy the Upper Wintergarde Mine Shaft|goal Upper Wintergarde Mine Shaft Destroyed|q 12277/1
	step //49
		'Follow the path up into town to 77.8,50.3|goto 77.8,50.3
		.talk Siege Engineer Quarterflash##27159
		..turnin Leave Nothing to Chance##12277
		..turnin The Bleeding Ore##12272
		..accept Understanding the Scourge War Machine##12281
	step //50
		goto 77.8,50.3
		.talk Highlord Leoric Von Zeldig##27156
		..turnin Not In Our Mine##12269
	step //51
		goto 78.61,48.2
		.talk High Commander Halford Wyrmbane##27136
		..turnin Understanding the Scourge War Machine##12281
		..accept Into Hostile Territory##12325
	step //52
		goto 77.1,49.6
		.' Click a Wintergarde Gryphon to ride it|invehicle|tip They are standing here in a row.
	step //53
		goto 89.7,46.4
		.talk Duke August Foehammer##27157
		..turnin Into Hostile Territory##12325
		..accept Steamtank Surprise##12326
	step //54
		goto 89.6,45.6
		.' Click an Alliance Steam Tank to ride it|invehicle|tip They look like big siege carts.
	step //55
		goto 88.8,46.8
		.' Use your Drop Off Gnome ability on your hotbar to drop off gnomes next to the Plague Wagons in this field|petaction Drop Off Gnome
		.' Sabotage 6 Plague Wagons|goal 6 Plague Wagon Sabotaged|q 12326/1
	step //56
		goto 85.6,49.8
		.' Use your Drop Off Soldier ability on your hotbar to drop off your soldiers in front of this crypt entrance|petaction Drop Off Soldier
		.' Drop Off the 7th Legion Elite|goal 7th Legion Elite Safely Dropped Off|q 12326/2
	step //57
		'Go inside the crypt to 85.9,50.9|goto 85.9,50.9
		.talk Ambo Cash##1293
		..turnin Steamtank Surprise##12326
		..accept Scattered To The Wind##12455
	step //58
		goto 85.9,51
		.talk Yord "Calamity" Icebeard##27319
		..accept Breaking Off A Piece##12462
	step //59
		'Go outside of the crypt to 85.1,49.5|goto 85.1,49.5
		.' Click the Wintergarde Munitions Crates|tip They look like long wooden boxes on the ground around this area.
		.get 8 Wintergarde Munitions|q 12455/1
	step //60
		goto 86.2,47
		.' Use your Seeds of Nature's Wrath on a Turgid the Vile to weaken him|use Seeds of Nature's Wrath##37887|tip He's an abomination standing in a small room inside this abandoned fort.
		.kill Weakened Turgid the Vile|q 12459/2
	step //61
		'Go into the crypt to 85.9,50.9|goto 85.9,50.9
		.talk Ambo Cash##1293
		..turnin Scattered To The Wind##12455
		..accept The Chain Gun And You##12457
	step //62
		goto 86.2,51
		.' Click a 7th Legion Chain Gun to use it|tip They look like metal turrets.
		.' Use the abilities on your hotbar Call Out Injured Soldiers and clear a path for them
		.' Save 8 Injured 7th Legion Soldiers|goal 8 Injured 7th Legion Soldier Saved|q 12457/1
	step //63
		'Click the red arrow button on your hotbar to get off the gun|script VehicleExit()|outvehicle
	step //64
		goto 85.9,50.9
		.talk Ambo Cash##1293
		..turnin The Chain Gun And You##12457
		..accept Plunderbeard Must Be Found!##12463
	step //65
		'Go downstairs to 84.4,51|goto 84.4,51
		.kill Necrolord X'avius##27826|q 12462/2
	step //66
		goto 86.7,52.9
		.kill Necrolord Horus##27805|q 12462/1
	step //67
		goto 85.6,52
		.kill 15 Naxxramas Scourge|q 12462/3
	step //68
		goto 84.2,54.7
		.talk Plunderbeard##27828
		..turnin Plunderbeard Must Be Found!##12463
		..accept Plunderbeard's Journal##12465
	step //69
		'Follow the tunnel to the other side to 83,55|goto 83,55
		.kill undead mobs|n
		.get 1 Page 4 of Plunderbeard's Journal|q 12465/1
		.get 1 Page 5 of Plunderbeard's Journal|q 12465/2
		.get 1 Page 6 of Plunderbeard's Journal|q 12465/3
		.get 1 Page 7 of Plunderbeard's Journal|q 12465/4
	step //70
		'Follow the tunnel back to the other side to 85.9,51|goto 85.9,51
		.talk Yord "Calamity" Icebeard##27319
		..turnin Breaking Off A Piece##12462
	step //71
		goto 85.9,50.9
		.talk Ambo Cash##1293
		..turnin Plunderbeard's Journal##12465
		..accept Chasing Icestorm: The 7th Legion Front##12466
	step //72
		'Go outside the crypt to 87.2,57.4|goto 87.2,57.4
		.talk Orik Trueheart##27347
		..turnin Orik Trueheart and the Forgotten Shore##12287
		..accept The Murkweed Elixir##12290
	step //73
		goto 87.2,57.4
		.talk Tilda Darathan##27348
		..accept The Call Of The Crusade##12542
	step //74
		goto 90.8,64.4
		.' Click the Murkweed plants|tip They look like little purple plants on the ground around this area.
		.get 5 Murkweed|q 12290/1
	step //75
		goto 87.2,57.4
		.talk Orik Trueheart##27347
		..turnin The Murkweed Elixir##12290
		..accept The Forgotten Tale##12291
	step //76
		'As a spirit, go to 84.2,66.4|goto 84.2,66.4
		.' Use the Murkweed Elixir in your bags|use Murkweed Elixir##37570
		.talk Forgotten Peasant##27226
		.' Question a Forgotten Peasant|goal Forgotten Peasant Questioned|q 12291/1
		.talk a Forgotten Rifleman##27225
		.' Question a Forgotten Rifleman|goal Forgotten Rifleman Questioned|q 12291/2
		.talk a Forgotten Knight##27224
		.' Question a Forgotten Knight|goal Forgotten Knight Questioned|q 12291/3
		.talk a Forgotten Footman##27229
		.' Question a Forgotten Footman|goal Forgotten Footman Questioned|q 12291/4
	step //77
		goto 87.2,57.4
		.talk Orik Trueheart##27347
		..turnin The Forgotten Tale##12291
		..accept The Truth Shall Set Us Free##12301
	step //78
		goto 86.8,66.2
		.' Use Orik's Crystalline Orb while standing on the Forgotten Ruins blue circle|use Orik's Crystalline Orb##37577|tip It looks like a blue glowing circle on the ground.
		.' Watch the cutscene
		.' Redeem the Forgotten|goal The Forgotten Redeemed|q 12301/1
	step //79
		goto 87.2,57.4
		.talk Orik Trueheart##27347
		..turnin The Truth Shall Set Us Free##12301
		..accept Parting Thoughts##12305
	step //80
		'Hearth to Wintergarde Keep|goto Dragonblight,77.4,51.5,0.5|use Hearthstone##6948|noway|c
	step //81
		goto 79.1,47.2
		.talk Zelig the Visionary##27314
		..turnin Parting Thoughts##12305
		..accept What Secrets Men Hide##12475
	step //82
		goto 78.6,48.2
		.talk Commander Lynore Windstryke##27155
		..accept The Return of the Crusade?##12476
	step //83
		goto 78.61,48.2
		.talk High Commander Halford Wyrmbane##27136
		..accept The Path of Redemption##12477
	step //84
		goto 71.7,38.9
		.' Use your Hourglass of Eternity|use Hourglass of Eternity##37923
		.' Fight the mobs that spawn
		.' Protect the Hourglass of Eternity|goal Hourglass of Eternity protected|q 12470/1
	step //85
		goto 84,26.1
		.talk Crusader Valus##28228
		..turnin The Call Of The Crusade##12542
		..accept The Cleansing Of Jintha'kalar##12545
	step //86
		goto 89.5,19.1
		.' Use your Seeds of Nature's Wrath on Overseer Deathgaze to weaken him|use Seeds of Nature's Wrath##37887
		.kill Weakened Overseer Deathgaze##27122|q 12459/3
	step //87
		goto 86.8,22.4
		.kill undead mobs|n
		.' Kill 15 Jintha'kalar Scourge|goal 15 Jintha'kalar Scourge Slain|q 12545/1
	step //88
		goto 84,26.1
		.talk Crusader Valus##28228
		..turnin The Cleansing Of Jintha'kalar##12545
		..accept Into the Breach!##12789
	step //89
		goto 87.6,38.1
		.' Click the Onslaught Map|tip It looks like a map laid out on a table inside this broken tower.
		.get Onslaught Map|q 12475/1
	step //90
		goto 84.9,35.5
		.kill Onslaught mobs|n
		.get The Path of Redemption|q 12477/1
		.kill 20 Scarlet Onslaught|q 12476/1
	step //91
		goto 78.6,48.2
		.talk Commander Lynore Windstryke##27155
		..turnin The Return of the Crusade?##12476
	step //92
		goto 78.61,48.2
		.talk High Commander Halford Wyrmbane##27136
		..turnin The Path of Redemption##12477
	step //93
		goto 79.1,47.2
		.talk Zelig the Visionary##27314
		..turnin What Secrets Men Hide##12475
		..accept Frostmourne Cavern##12478
	step //94
		goto 74.2,23.8|n
		.' The path to Frostmourne Cavern starts here|goto Dragonblight,74.2,23.8,0.5|noway|c
	step //95
		'Go inside the cave to 75.1,20.2|goto 75.1,20.2
		.' Use Zelig's Scrying Orb next to the Frostmourne Altar|use Zelig's Scrying Orb##37933|tip It looks like a small stone chair on the ground.
		.' Reveal the Secrets of the Past|goal Secrets of the Past Revealed|q 12478/1
	step //96
		goto 64.7,27.9
		.talk Legion Commander Tyralion##27844
		..turnin Chasing Icestorm: The 7th Legion Front##12466
		..accept Chasing Icestorm: Thel'zan's Phylactery##12467
	step //97
		goto 64.4,26.9
		.talk Duane##26978
		..accept Pest Control##12142
	step //98
		goto 64.6,27.5
		.talk "Wyrmbait"##27843
		..'Tell him to fetch Icestorm
		.' He will bring Icestorm
		.kill Icestorm|n
		.' Click Thel'zan's Phylactery that spawns
		.get Thel'zan's Phylactery|q 12467/1
	step //99
		goto 68.1,33.1
		.kill Magnataurs|n
		.' Kill 3 Dragonblight Magnataur|goal 3 Dragonblight Magnataur|q 12142/2
	step //100
		goto 70.4,32
		.kill Snowplain kobolds|n
		.' Kill 10 Snowplain Snobolds|goal 10 Snowplain Snobolds|q 12142/1
		.' You can find more Snowplain Snobolds at 64.9,43.0|n
	step //101
		goto 64.4,26.9
		.talk Duane##26978
		..turnin Pest Control##12142
		..accept Canyon Chase##12143
	step //102
		'Follow the fleeing kobolds to 72.5,29.2|goto 72.5,29.2
		.kill Chilltusk|q 12143/1
		.get Emblazoned Battle Horn|n
		.' Click the Emblazoned Battle Horn|use Emblazoned Battle Horn##36855
		..accept Disturbing Implications##12146
	step //103
		goto 64.4,26.9
		.talk Duane##26978
		..turnin Canyon Chase##12143
	step //104
		goto 60,55.1
		.talk Aurastrasza##26983
		..turnin Disturbing Implications##12146
	step //105
		goto 57.9,54.2|n
		.talk Tariolstrasz##26443
		..'Tell him you want to go to the top of the temple.|goto Dragonblight,59.7,53.1,0.1|noway|c
	step //106
		goto 59.6,54.4
		.talk Lord Itharius##27785
		..turnin That Which Creates Can Also Destroy##12459
	step //107
		goto 60,54.5
		.talk Chromie##27856
		..turnin Mystery of the Infinite##12470
	step //108
		goto 59.5,53.3|n
		.talk Torastrasza##26949
		..'Tell him you want to go to the ground level of the temple|goto Dragonblight,58.0,55.2,0.1|noway|c
	step //109
		home Wyrmrest Temple
	step //110
		'Fly to Wintergarde Keep|goto Dragonblight,77.1,49.8,0.1|noway|c
	step //111
		goto 78.61,48.2
		.talk High Commander Halford Wyrmbane##27136
		..turnin Chasing Icestorm: Thel'zan's Phylactery##12467
		..accept Finality##12472
	step //112
		goto 79.1,47.2
		.talk Zelig the Visionary##27314
		..turnin Frostmourne Cavern##12478
	step //113
		goto 82.0,50.6|n
		.' The path down to Legion Commander Yorik starts here|goto Dragonblight,82.0,50.6,0.5|noway|c
	step //114
		goto 81.2,50.7
		.talk Legion Commander Yorik##27857
		..turnin Finality##12472
		..accept An End And A Beginning##12473
	step //115
		'Watch the dialogue
		.' Help fight the battle
		.' Defeat Thel'zan the Duskbringer|goal Thel'zan the Duskbringer Defeated|q 12473/1
	step //116
		'Go outside the crypt to 78.61,48.2|goto 78.61,48.2
		.talk High Commander Halford Wyrmbane##27136
		..turnin An End And A Beginning##12473
		..accept To Fordragon Hold!##12474
	step //117
		'Fly to Stars' Rest|goto Dragonblight,29.2,55.4,0.1|noway|c
	step //118
		goto 37.2,31.8|n
		.' The path to Serinar starts here|goto Dragonblight,37.2,31.8,0.5|noway|c
	step //119
		'Go inside the cave to 35.2,30.0|goto 35.2,30.0
		.talk Serinar##26593
		..turnin The Obsidian Dragonshrine##12447
		..accept No One to Save You##12262
		..accept No Place to Run##12261
	step //120
		'Go outside the cave to 37.9,32|goto 37.9,32
		.kill 6 Burning Depths Necrolyte|q 12262/1
		.kill 10 Smoldering Skeleton|q 12262/2
	step //121
		goto 42.1,32
		.' Use your Destructive Wards in this spot|use Destructive Wards##37445
		.' Defend the Destructive Ward from the mobs that spawn
		.' Fully Charge the Destructive Ward|goal Destructive Ward Fully Charged|q 12261/1
	step //122
		'Go into the cave to 35.2,30|goto 35.2,30
		.talk Serinar##26593
		..turnin No One to Save You##12262
		..turnin No Place to Run##12261
		..accept The Best of Intentions##12263
	step //123
		'Follow the path in the cave while disguised as a cultist to 31.8,30.5|goto 31.8,30.5
		.' Uncover the Magmawyrm Resurrection Chamber|goal Uncover the Magmawyrm Resurrection Chamber|q 12263/1
	step //124
		'Follow the path back down to 35.2,30|goto 35.2,30
		.talk Serinar##26593
		..turnin The Best of Intentions##12263
		..accept Culling the Damned##12264
		..accept Defiling the Defilers##12265
	step //125
		'Follow the path in the cave to 34.2,26.8|goto 34.2,26.8
		.kill 3 Burning Depths Necromancer|q 12264/1
		.kill 6 Smoldering Construct|q 12264/2
		.kill 6 Smoldering Geist|q 12264/3
		.' Click Necromantic Runes|tip They look like round purple symbols on the ground around this area in the cave.
		.' Destroy 8 Necromantic Runes|goal 8 Necromantic Rune destroyed|q 12265/1
	step //126
		'Go back down in the cave to 35.2,30|goto 35.2,30
		.talk Serinar##26593
		..turnin Culling the Damned##12264
		..turnin Defiling the Defilers##12265
		..accept Neltharion's Flame##12267
	step //127
		'Follow the path in the cave to 31.6,31.2|goto 31.6,31.2
		.' Use Neltharion's Flame to Cleanse the Summoning Area|use Neltharion's Flame##37539|tip Stand on the edge of the rock, next to the lava.
		.kill Rothin the Decaying|q 12267/2
	step //128
		'Go back down in the cave to 35.2,30|goto 35.2,30
		.talk Serinar##26593
		..turnin Neltharion's Flame##12267
		..accept Tales of Destruction##12266
	step //129
		'Go outside to 48.5,24.1|goto 48.5,24.1
		.talk Nozzlerust Supply Runner##26896
		..accept Return to Sender##12469
	step //130
		goto 54.5,23.6
		.talk Narf##26647
		..accept Nozzlerust Defense##12043
	step //131
		goto 54.7,23.2
		.talk Zivlix##26661
		..accept Shaved Ice##12045
	step //132
		goto 55,23.4
		.talk Xink##26660
		..turnin Return to Sender##12469
		..accept Stocking Up##12044
	step //133
		goto 53.7,18.9
		.kill Crystalline Ice Elementals|n
		.get 4 Ice Shard Cluster|q 12045/1
	step //134
		goto 54.7,23.2
		.talk Zivlix##26661
		..turnin Shaved Ice##12045
		..accept Soft Packaging##12046
	step //135
		goto 53.7,25.4
		.kill Jormungar Tunnelers|n
		.get 12 Thin Animal Hide|q 12046/1
	step //136
		goto 54.7,23.2
		.talk Zivlix##26661
		..turnin Soft Packaging##12046
		..accept Something That Doesn't Melt##12047
	step //137
		'Also to 55,23.4|goto 55,23.4
		.talk Xink##26660
		..accept Hard to Swallow##12049
	step //138
		goto 57.5,23.9
		.' Click Splintered Bone Chunks|tip They look like small white pointed bones on the ground next to the huge bones on the ground around this area.
		.get 12 Splintered Bone Chunk|q 12047/1
		.' Fight a Hulking Jormungar
		.' Use your Potent Explosive Charges on the Hulking Jormungar when he opens his mouth|use Potent Explosive Charges##36732
		.' Click the Jormungar Meat
		.get 6 Seared Jormungar Meat|q 12049/1
	step //139
		goto 55,23.4
		.talk Xink##26660
		..turnin Hard to Swallow##12049
	step //140
		goto 54.7,23.2
		.talk Zivlix##26661
		..turnin Something That Doesn't Melt##12047
	step //141
		goto 54.5,23.6
		.talk Narf##26647
		..accept Harp on This!##12052
	step //142
		goto 55,23.4
		.talk Xink##26660
		..accept Lumber Hack##12050
	step //143
		goto 53.1,19.5
		.' Use Xink's Shredder Control Device|use Xink's Shredder Control Device##36734
		.' Click the shredder to ride it
		.' Use your Gather Lumber ability next to Coldwind Trees|petaction Gather Lumber|tip They look like trees with small pieces of paper with X's on them.
		.get 50 Coldwind Lumber|q 12050/1
		.' Kill 15 harpies|goal 15 Coldwind Harpies|q 12052/2
	step //144
		goto 44.9,9.1
		.' Kill Mistress of the Coldwind using Xink's Shredder|kill Mistress of the Coldwind|q 12052/1|tip She flies around this area.
	step //145
		goto 54.5,23.6
		.talk Narf##26647
		..turnin Harp on This!##12052
	step //146
		goto 55,23.4
		.talk Xink##26660
		..turnin Lumber Hack##12050
	step //147
		goto 54.5,23.6
		.talk Narf##26647
		..accept Stiff Negotiations##12112
	step //148
		goto 52.4,30.4
		.kill 12 Wastes Digger|q 12043/2
		.kill 1 Wastes Taskmaster|q 12043/1
		.' Click Composite Ore|tip They look like carts with ore piled in them.
		.get 8 Composite Ore|q 12044/1
		.' You can find more of all of these at 56.5,28.1|n
	step //149
		goto 54.5,23.6
		.talk Narf##26647
		..turnin Nozzlerust Defense##12043
	step //150
		goto 55,23.4
		.talk Xink##26660
		..turnin Stocking Up##12044
	step //151
		goto 59.4,18.2
		.talk Zort##26659
		..turnin Stiff Negotiations##12112
		..accept Slim Pickings##12075
	step //152
		'Go into the cave to 56.2,12|goto 56.2,12
		.' Click the Ravaged Crystalline Ice Giant|tip It's an ice giant corpse laying inside this cave.
		.get Sample of Rockflesh|q 12075/1
	step //153
		goto 59.4,18.2
		.talk Zort##26659
		..turnin Slim Pickings##12075
		..accept Messy Business##12076
	step //154
		goto 59,17.8
		.talk Ko'char the Unbreakable##26473
		..accept Stomping Grounds##12079
	step //155
		goto 57.5,12.4
		.' Fight Ice Heart Jormungar Feeders
		.' They will cast a poison on you
		.' Use Zort's Scraper when you are affected by the poison|use Zort's Scraper##36775
		.get 2 Vial of Corrosive Spit|n
		.kill 8 Ice Heart Jormungar Feeder|q 12079/1
	step //156
		'Go outside the cave to 59.4,18.2|goto 59.4,18.2
		.talk Zort##26659
		..turnin Messy Business##12076
		..accept Apply This Twice A Day##12077
	step //157
		goto 59,17.8
		.talk Ko'char the Unbreakable##26473
		..turnin Apply This Twice A Day##12077
		..turnin Stomping Grounds##12079
	step //158
		goto 59.4,18.2
		.talk Zort##26659
		..accept Worm Wrangler##12078
	step //159
		'Go into the cave to 55.3,11|goto 55.3,11
		.' Use your Sturdy Crates on Ice Heart Jormungar Spawns|use Sturdy Crates##36771
		.' Click the Captured Jormungar Spawn crates
		.get 3 Captured Jormungar Spawn|q 12078/1
	step //160
		'Go outside the cave to 59.4,18.2|goto 59.4,18.2
		.talk Zort##26659
		..turnin Worm Wrangler##12078
	step //161
		goto 39.5,25.9
		.talk Derek Rammel##26877
		..fpath Fordragon Hold
	step //162
		goto 38.5,26.5|n
		.' The path up to Highlord Bolvar Fordragon in the End Battle starts here|goto Dragonblight,38.5,26.5,0.5|noway|c
	step //163
		'Follow the path up the mountain to 37.8,23.4|goto 37.8,23.4
		.talk Highlord Bolvar Fordragon##27872
		..turnin To Fordragon Hold!##12474
		..accept Audience With The Dragon Queen##12495
	step //164
		'Fly to Wyrmrest Temple|goto Dragonblight,60.3,51.4,0.1|noway|c
	step //165
		goto 57.9,54.2|n
		.talk Tariolstrasz##26443
		..'Tell him you want to go to the top of the temple|goto Dragonblight,59.7,53.1,0.1|noway|c
	step //166
		goto 60.1,54.2
		.talk Nalice##27765
		..turnin Tales of Destruction##12266
	step //167
		goto 59.8,54.7
		.talk Alexstrasza the Life-Binder##26917
		..turnin Audience With The Dragon Queen##12495
		..accept Galakrond and the Scourge##12497
	step //168
		goto 59.5,53.3
		.talk Torastrasza##26949
		..turnin Galakrond and the Scourge##12497
		..accept On Ruby Wings##12498
	step //169
		'Use your Ruby Beacon of the Dragon Queen|use Ruby Beacon of the Dragon Queen##38302
		.' Click the red dragon to ride it|invehicle
	step //170
		'Fly to 57.2,33.1|goto 57.2,33.1
		.' Use the abilities on your hotbar
		.kill 30 Wastes Scavenger|q 12498/1
	step //171
		'Fly to 54.5,31.3|goto 54.5,31.3
		.' Use the abilities on your hotbar
		.from Thiassi the Lightning Bringer##28018
		.' Jump off the dragon|script VehicleExit()
		.from Grand Necrolord Antiok##28006
		.' Click the Scythe of Antiok
		.get Scythe of Antiok|q 12498/2
	step //172
		'Use your Ruby Beacon of the Dragon Queen|use Ruby Beacon of the Dragon Queen##38302
		.' Click the red dragon to ride it|invehicle
	step //173
		'Fly to 59.8,54.7|goto 59.8,54.7
		.'Click the red arrow on your hot bar to jump off the dragon|script VehicleExit()
		.talk Alexstrasza the Life-Binder##26917
		..turnin On Ruby Wings##12498
		..accept Return To Angrathar##12499
	step //174
		goto 59.5,53.3|n
		.talk Torastrasza##26949
		..'Tell him you want to go to the ground level of the temple|goto Dragonblight,58.0,55.2,0.1|noway|c
	step //175
		'Fly to Fordragon Hold|goto Dragonblight,39.6,25.7,0.1|noway|c
	step //176
		'Follow the path up the mountain to 37.8,23.4|goto 37.8,23.4
		.talk Highlord Bolvar Fordragon##27872
		..turnin Return To Angrathar##12499
	step //177
		goto 38.5,19.3
		.talk Alexstrasza the Life-Binder##31333
		..accept Reborn From The Ashes##13347
	step //178
		goto 38,19.6
		.' Click Fordragon's Shield|tip It looks like a small metal shield on the ground.
		.get Fordragon's Shield|q 13347/1
	step //179
		goto 39.5,25.9|n
		.talk Derek Rammel##26877
		..'Fly to Valiance Keep|goto Borean Tundra,58.9,68.4,0.1|noway|c
	step //180
		'Ride the boat to Stormwind City|goto Stormwind City|noway|c
	step //181
		goto Stormwind City,80,38.4
		.talk King Varian Wrynn##29611
		..turnin Reborn From The Ashes##13347
	step //182
		'Hearth to Wyrmrest Temple|goto Dragonblight,59.8,54.3,0.5|use Hearthstone##6948|noway|c
	step //183
		ding 75
	step //184
		'Fly to Stars' Rest|goto Dragonblight,29.2,55.4,0.5|noway|c
	step //185
		goto 29,55.5|n
		.talk Image of Archmage Modera##26673
		..'Teleport to Dalaran|goto Dalaran,55.9,46.8,0.5|noway|c
	step //186
		'Go downstairs to 56.3,46.8|goto Dalaran,56.3,46.8
		.talk Archmage Celindra##29156
		..turnin The Magical Kingdom of Dalaran##12794
		..accept Learning to Leave and Return: the Magical Way##12790
	step //187
		goto 56.3,46.8
		.' Click the Teleport to Violet Stand Crystal|tip Downstrairs in a small room.  It's a blue floating trianglular jewel.
		.' Use the Teleport to Violet Stand Crystal|goal Teleport to Violet Stand Crystal used|q 12790/1
	step //188
		goto Crystalsong Forest,15.7,42.5
		.' Click the Teleport to Dalaran Crystal
		.' Use the Teleport to Dalaran Crystal|goal Teleport to Dalaran Crystal used|q 12790/2
	step //189
		'Go downstairs to 56.3,46.8|goto Dalaran,56.3,46.8
		.talk Archmage Celindra##29156
		..turnin Learning to Leave and Return: the Magical Way##12790
	step //190
		goto 72.2,45.8
		.talk Aludane Whitecloud##28674
		..fpath Dalaran
	step //191
		'Go underground into the sewer to 45.4,40.8|goto 45.4,40.8
		.talk Shifty Vickers##30137
		..accept The Champion's Call!##12974
	step //192
		'Go upstairs to 30.6,48.6|goto 30.6,48.6
		.talk Rhonin##16128
		..accept Discretion is Key##13158
	step //193
		goto 61.3,63.7
		.talk Warden Alturas##31080
		..turnin Discretion is Key##13158
	step //194
		'Fly to Wintergarde Keep|goto Dragonblight,77.1,49.8,0.1|noway|c
	step //195
		goto Dragonblight,77.1,50.1
		.talk Gryphon Commander Urik##27317
		..accept The Hills Have Us##12511
	step //196
		goto Grizzly Hills,31.3,59.1
		.talk Vana Grey##26880
		..fpath Amberpine Lodge
	step //197
		goto 31.8,59.6
		.' Click the Amberseed|tip It's a small bucket with seeds in it, to left as you enter the door, under the stairs.
		..accept Mmm... Amberseeds!##12225
	step //198
		goto 31.8,60.2
		.talk Lieutenant Dumont##26875
		..turnin The Hills Have Us##12511
		..accept Local Support##12292
	step //199
		goto 32.1,60
		.talk Master Woodsman Anderhol##27277
		..turnin Mmm... Amberseeds!##12225
		..accept Just Passing Through##12226
		..accept Replenishing the Storehouse##12212
		..accept Them or Us!##12215
	step //200
		home Amberpine Lodge
	step //201
		goto 33.3,58
		.kill Tallhorn Stags|n
		.get 8 Succulent Venison|q 12212/1
	step //202
		goto 32.1,60
		.talk Master Woodsman Anderhol##27277
		..turnin Replenishing the Storehouse##12212
		..accept Take Their Rear!##12216
	step //203
		goto 31.8,60.2
		.talk Lieutenant Dumont##26875
		..accept Troll Season!##12210
	step //204
		goto 30.6,53.4
		.' Click the Blackroot plants|tip They look like grassy plants on the ground around this area.
		.get 5 Blackroot Stalk|q 12226/1
		.kill Grizzly Bears|n
		.get 8 Grizzly Flank|q 12216/1
	step //205
		goto 32.1,60
		.talk Master Woodsman Anderhol##27277
		..turnin Take Their Rear!##12216
		..turnin Just Passing Through##12226
		..accept Doing Your Duty##12227
	step //206
		goto 32.2,58.9
		.' Click the Amberpine Outhouse|tip It looks like a wooden outhouse.
		.' Use the outhouse
		.get Partially Processed Amberseeds|q 12227/1
	step //207
		goto 32.1,60
		.talk Master Woodsman Anderhol##27277
		..turnin Doing Your Duty##12227
	step //208
		goto 26,67.4
		.kill 6 Graymist Hunter|q 12215/1
	step //209
		goto 15.9,65.3
		.' Click the Cedar Chest|tip It's a small brown chest inside this tower.
		.get Cedar Chest|q 12292/1
	step //210
		goto 16.2,47.6
		.talk Samir##26424
		..turnin Troll Season!##12210
		..accept Filling the Cages##11984
	step //211
		goto 16.4,48.3
		.talk Budd##26429
		..'Tell him it's time to play with the ice trolls|havebuff Budd's Attention Span|c
	step //212
		goto 13.2,60.5
		.' Use Budd's pet bar skill Tag Troll to have him stun a troll|petaction Tag Troll
		.' Use your Bounty Hunter's Cage on the stunned troll|use Bounty Hunter's Cage##35736
		.' Capture a Live Ice Troll|goal Captured Live Ice Troll|q 11984/1
	step //213
		goto 16.2,47.6
		.talk Samir##26424
		..turnin Filling the Cages##11984
	step //214
		goto 16.4,47.8
		.talk Drakuru##26423
		..accept Truce?##11989
	step //215
		goto 16.5,47.8
		.' Click the Dull Carving Knife|tip It's a knife stuck in the side of this tree trunk.
		.collect Dull Carving Knife##38083|q 11989
	step //216
		goto 16.4,47.8
		.' Use your Dull Carving Knife next to the yellow cage|use Dull Carving Knife##38083
		.talk Drakuru##26423
		..'Shake his hand
		.' Make a Blood Pact With Drakuru|goal Blood Pact With Drakuru|q 11989/1
	step //217
		goto 16.4,47.8
		.talk Drakuru##26423
		..turnin Truce?##11989
		..accept Vial of Visions##11990
	step //218
		goto 16,47.8
		.talk Ameenah##26474
		..buy 1 Imbued Vial|q 11990/1
	step //219
		goto 14.6,45.3
		.' Click the Hazewood Bushes|tip They look like small flower bushes on the ground around this area.
		.get 3 Haze Leaf|q 11990/2
	step //220
		goto 15.2,40.3
		.' Click a Waterweed|tip They look like big green bushes underwater around this area.
		.get Waterweed Frond|q 11990/3
	step //221
		goto 16.4,47.8
		.talk Drakuru##26423
		..turnin Vial of Visions##11990
		..accept Subject to Interpretation##11991
	step //222
		goto 15.7,46.7
		.talk Prigmon##26519
		..accept Scourgekabob##12484
	step //223
		goto 15.7,46.9
		.' Click a Scourged Troll Mummy on the ground next to you|tip They look like mummies laying on the ground.
		.collect Scourged Troll Mummy##38149|q 12484
	step //224
		goto 16.9,48.3
		.' Use your Scourged Troll Mummy next to the burning pile of mummies|use Scourged Troll Mummy##38149
		.' Burn a Mummified Carcass|goal Mummified Carcass Burned|q 12484/1
	step //225
		goto 16.7,48.3
		.talk Mack Fearsen##26604
		..turnin Scourgekabob##12484
		..accept Seared Scourge##12029
	step //226
		goto 15.7,46.7
		.talk Prigmon##26519
		..accept Shimmercap Stew##12483
	step //227
		goto 11.1,61.8
		.' Click the Shimmering Snowcaps|tip They look like blue glowing mushrooms on the ground at the base of the trees around this area.
		.get 5 Shimmering Snowcap|q 12483/2
	step //228
		goto 13.3,58.5
		.kill Ice Serpents|n
		.get 5 Ice Serpent Eye|q 12483/1
		.kill trolls|n
		.collect 5 Frozen Mojo##35799|q 11991
	step //229
		goto 13.2,60.9
		.' Use Drakuru's Elixir next to Drakuru's Brazier|use Drakuru's Elixir##35797
		.talk Image of Drakuru##26500
		..turnin Subject to Interpretation##11991
		..accept Sacrifices Must be Made##12007
	step //230
		goto 18.4,38.5
		.' Click the Sweetroot plants|tip They look like aloe vera plants around this area.
		.get 5 Sweetroot|q 12483/3
	step //231
		goto 14.5,38
		.from Warlord Zim'bo##26544
		.collect Zim'bo's Mojo##35836|q 12007
	step //232
		'Go up the huge stairs to 17.9,36.5|goto 17.9,36.5
		.' Click the Seer of Zeb'Halak statue|tip It's a huge blue glowing statue at the top of the stairs.
		.get Eye of the Prophets|q 12007/1
	step //233
		goto 17.4,36.4
		.' Use Drakuru's Elixir next to Drakuru's Brazier|use Drakuru's Elixir##35797
		.talk Image of Drakuru##26543
		..turnin Sacrifices Must be Made##12007
		..accept Heart of the Ancients##12042
	step //234
		goto 16,29.9
		.' Jump on the big rock and stand on it
		.' Use Mack's Dark Grog and throw it at the trolls running around to the north|use Mack's Dark Grog##35908
		.' Burn 20 Scourge Trolls|goal 20 Scourge Trolls Burned |q 12029/1
	step //235
		goto 25.6,33.3
		.talk Katja##27545
		..accept Wolfsbane Root##12307
	step //236
		goto 28.6,35.1
		.' Click the Wolfsbane Roots|tip They look like spiraling green roots on the ground around this area.
		.' Uproot 8 Wolfsbane Roots|goal 8 Wolfsbane Root|q 12307/1
	step //237
		goto 25.6,33.3
		.talk Katja##27545
		..turnin Wolfsbane Root##12307
	step //238
		'Go on top of the control station to 36.9,32.4|goto 36.9,32.4
		.' Click the Heart of the Ancients|tip It's a small pointed stone laying on the floor at the top of this control station, in a small room, next to a dead goblin.
		..turnin Heart of the Ancients##12042
		..accept My Heart is in Your Hands##12802
	step //239
		goto 44.2,30.4
		.kill Drakkari Defenders|n
		.collect 5 Desperate Mojo##36743|q 12802
	step //240
		goto 45.0,28.4
		.' Use Drakuru's Elixir next to Drakuru's Brazier|use Drakuru's Elixir##35797
		.talk Image of Drakuru##26701
		..turnin My Heart is in Your Hands##12802
		..accept Voices From the Dust##12068
	step //241
		'Hearth to Amberpine Lodge|goto Grizzly Hills,32.0,60.3,0.1|use Hearthstone##6948|noway|c
	step //242
		goto 31.8,60.2
		.talk Lieutenant Dumont##26875
		..turnin Local Support##12292
		..accept Close the Deal##12293
	step //243
		goto 32.1,60
		.talk Master Woodsman Anderhol##27277
		..turnin Them or Us!##12215
		..accept Eagle Eyes##12217
	step //244
		goto 34.8,55.6
		.talk Ivan##27469
		..turnin Close the Deal##12293
		..accept A Tentative Pact##12294
	step //245
		goto 31.8,60.2
		.talk Lieutenant Dumont##26875
		..turnin A Tentative Pact##12294
		..accept An Exercise in Diplomacy##12295
	step //246
		goto 32.4,59.9
		.talk Woodsman Drake##27391
		..accept Secrets of the Flamebinders##12222
		..accept Thinning the Ranks##12223
	step //247
		goto 33.6,79
		.kill 12 Dragonflayer Huscarl|q 12223/1
		.kill Dragonflayer Flamebinders|n
		.get 3 Flame-Imbued Talisman|q 12222/1
	step //248
		goto 32.4,59.9
		.talk Woodsman Drake##27391
		..turnin Secrets of the Flamebinders##12222
		..turnin Thinning the Ranks##12223
		..accept The Thane of Voldrune##12255
	step //249
		goto 26.6,77.9
		.talk Flamebringer##27292
		.' Unchain and control Flamebringer|invehicle
	step //250
		'Fly to 27.1,73|goto 27.1,73
		.' Use the abilities on your hotbar.
		.kill Thane Torvald Eriksson##27377|q 12255/1
	step //251
		goto 32.4,59.9
		.talk Woodsman Drake##27391
		..turnin The Thane of Voldrune##12255
	step //252
		goto 34.4,58.3
		.kill 5 Imperial Eagle##26369|q 12217/1
	step //253
		goto 32.1,60
		.talk Master Woodsman Anderhol##27277
		..turnin Eagle Eyes##12217
	step //254
		goto 16.7,48.3
		.talk Mack Fearsen##26604
		..turnin Seared Scourge##12029
	step //255
		goto 15.7,46.7
		.talk Prigmon##26519
		..turnin Shimmercap Stew##12483
		..accept Say Hello to My Little Friend##12190
	step //256
		goto 26.4,35.7
		.talk Envoy Ducal##26821
		..turnin An Exercise in Diplomacy##12295
	step //257
		goto 26.5,35.8
		.talk Sergei##27486
		..accept Northern Hospitality##12299
	step //258
		goto 24.3,34.5
		.kill 8 Conquest Hold Marauder|q 12299/1
	step //259
		goto 26.5,35.8
		.talk Sergei##27486
		..turnin Northern Hospitality##12299
		..accept Test of Mettle##12300
	step //260
		goto 21.9,29.9
		.from Sergeant Bonesnap##27493
		.' Do the Test of Mettle|goal Test of Mettle|q 12300/1
	step //261
		goto 21.9,29.9
		.talk Captured Trapper##27497
		..turnin Test of Mettle##12300
		..accept Words of Warning##12302
	step //262
		goto 26.5,31.8
		.talk Caged Prisoner##27499
		..turnin Words of Warning##12302
		..accept Escape from Silverbrook##12308
	step //263
		'Follow the Caged Prisoner to a horse, click the horse to ride it.
		.' As you ride, use the abilities on your hotbar to fight and slow down the zombies.
		.' Escape from Silverbrook|goal Escape from Silverbrook |q 12308/1
	step //264
		goto 31.8,60.2
		.talk Lieutenant Dumont##26875
		..turnin Escape from Silverbrook##12308
		..accept A Swift Response##12310
	step //265
		goto 36.3,67.9
		.kill Vladek##27547|q 12310/2
	step //266
		goto 37,66.5
		.kill 7 Silverbrook Hunter|q 12310/1
		.get Mikhail's Journal|n
		.' Click Mikhail's Journal in your bags|use Mikhail's Journal##36940
		..accept Descent into Darkness##12105
	step //267
		goto 31.8,60.2
		.talk Lieutenant Dumont##26875
		..turnin A Swift Response##12310
		..turnin Descent into Darkness##12105
		..accept Report to Gryan Stoutmantle... Again##12109
	step //268
		goto 31.2,59.5
		.talk Hierophant Thayreen##27295
		..accept The Failed World Tree##12219
		..accept A Dark Influence##12220
	step //269
		goto 28.5,45.0|n
		.' The path down to Vordrassil's Tears starts here|goto Grizzly Hills,28.5,45.0,0.5|noway|c
	step //270
		'Go underground to 30.5,43.9|goto 30.5,43.9
		.' Use your Geomancer's Orb|use Geomancer's Orb##37173|tip Go underground into this tunnel, all the way to the end.  Stand under the black mist.
		.' Use the Orb beneath Vordrassil's Tears|goal Orb used beneath Vordrassil's Tears|q 12220/3
	step //271
		'Go outside the tunnel to 33.3,48.5|goto 33.3,48.5|n
		.' The path down to Vordrassil's Limb starts here|goto Grizzly Hills,33.3,48.5,0.5|noway|c
	step //272
		'Go underground to 32.2,45.8|goto 32.2,45.8|n
		.' Use your Geomancer's Orb|use Geomancer's Orb##37173|tip Go underground into this tunnel, all the way to the end.  Stand under the black mist.
		.' Use the Orb beneath Vordrassil's Limb|goal Orb used beneath Vordrassil's Limb|q 12220/2
	step //273
		'Go outside the tunnel to 40.7,52|goto 40.7,52|n
		.' The path down to Vordrassil's Heart starts here|goto Grizzly Hills,40.7,52.0,0.5|noway|c
	step //274
		'Go underground to 41.2,54.7|goto 41.2,54.7
		.' Use your Geomancer's Orb|use Geomancer's Orb##37173|tip Go underground into this tunnel, all the way to the end.  Stand under the black mist.
		.' Use the Orb beneath Vordrassil's Heart|goal Orb used beneath Vordrassil's Heart|q 12220/1
	step //275
		'Go outside the tunnel to 40.4,50.6|goto 40.4,50.6
		.kill Entropic Oozes|n
		.get 6 Slime Sample|q 12219/1
	step //276
		'Hearth to Amberpine Lodge|goto Grizzly Hills,32.0,60.3,0.1|use Hearthstone##6948|noway|c
	step //277
		goto 31.2,59.5
		.talk Hierophant Thayreen##27295
		..turnin The Failed World Tree##12219
		..turnin A Dark Influence##12220
		..accept A Possible Link##12246
		..accept Children of Ursoc##12247
	step //278
		goto 66.9,62.4
		.talk Kodian##27275
		..'Listen to Kodian's Story|goal Kodian's Story|q 12247/2
	step //279
		goto 63.6,57.9
		.kill Redfang furbolgs|n
		.get 8 Crazed Furbolg Blood|q 12246/1
	step //280
		goto 48.1,58.9
		.talk Orsonn##27274
		..'Listen to Orsonn's Story|goal Orsonn's Story|q 12247/1
	step //281
		goto 49.2,34.1
		.talk Emily##26588
		..accept Mr. Floppy's Perilous Adventure##12027
		.' Escort Emily and protect Mr. Floppy
		.' Help Emily and Mr. Floppy return to the camp|goal Help Emily and Mr. Floppy return to the camp|q 12027/1
	step //282
		goto 59.1,26.5
		.talk Squire Percy##26377
		..accept Mounting Up##12414
	step //283
		goto 59.1,26.5
		.talk Squire Walter##26371
		..turnin Mr. Floppy's Perilous Adventure##12027
	step //284
		goto 59.4,26
		.talk Captain Gryan Stoutmantle##26212
		..turnin Report to Gryan Stoutmantle... Again##12109
		..accept Hollowstone Mine##12158
		..accept Softening the Blow##11998
	step //285
		home Westfall Brigade Encampment
	step //286
		goto 59.9,26.7
		.talk Samuel Clearbook##26876
		..fpath Westfall Brigade Encampment
	step //287
		goto 55.1,23.4
		.talk Petrov##26932
		..turnin Hollowstone Mine##12158
		..accept Souls at Unrest##12159
	step //288
		goto 54.9,23
		.kill Undead Miners|n
		.' Use your Miner's Lantern on their corpses|use Miner's Lantern##37932
		.' Put 8 Miners at Rest|goal 8 Miner at Rest|q 12159/1
	step //289
		goto 55.1,23.4
		.talk Petrov##26932
		..turnin Souls at Unrest##12159
		..accept A Name from the Past##12160
	step //290
		goto 59.4,26
		.talk Captain Gryan Stoutmantle##26212
		..turnin A Name from the Past##12160
	step //291
		goto 59.2,26.2
		.talk Private Arun##27582
		..accept Ruuna the Blind##12161
	step //292
		'Fly to Amberpine Lodge|goto Grizzly Hills,31.3,59.2,0.1|noway|c
	step //293
		goto 31.2,59.5
		.talk Hierophant Thayreen##27295
		..turnin A Possible Link##12246
		..turnin Children of Ursoc##12247
		..accept Vordrassil's Sapling##12248
		..accept Vordrassil's Seeds##12250
	step //294
		goto 44,47.9
		.talk Ruuna the Blind##27581
		..turnin Ruuna the Blind##12161
		..accept Ruuna's Request##12328
	step //295
		goto 46.8,35.7
		.kill Fern Feeder Moths|n
		.get 4 Gossamer Dust|q 12328/1
	step //296
		goto 44,47.9
		.talk Ruuna the Blind##27581
		..turnin Ruuna's Request##12328
		..accept Out of Body Experience##12327
	step //297
		'Drink the Gossamer Potion in your bags next to Ruuna's Crystal Ball right next to you|use Gossamer Potion##37661
		.' See the Vision from the Past|goal Vision from the Past|q 12327/1
	step //298
		goto 44,47.9
		.talk Ruuna the Blind##27581
		..turnin Out of Body Experience##12327
		..accept Fate and Coincidence##12329
	step //299
		goto 50.5,46.0|n
		.' The path down to Vordrassil's Sapling starts here|goto Grizzly Hills,50.5,46.0,0.5|noway|c
	step //300
		'Follow the path down to 50.8,42.6|goto 50.8,42.6
		.' Use your Verdant Torch next to the tall tree|use Verdant Torch##37306|tip It's a tall tree at the bottom of the spiral path.
		.get Vordrassil's Ashes|q 12248/1
	step //301
		'Go outside to 51.5,47.1|goto 51.5,47.1
		.' Click Vordrassil's Seeds|tip They look like brown pinecones sitting on the ground around this area.
		.get 8 Vordrassil's Seed|q 12250/1
	step //302
		'Go outside to 57.5,41.3|goto 57.5,41.3
		.talk Sasha##26935
		..turnin Fate and Coincidence##12329
		..accept Sasha's Hunt##12134
		..accept Anatoly Will Talk##12330
	step //303
		goto 60.4,40.2
		.kill 12 Solstice Hunter|q 12134/1
	step //304
		goto 62.3,42
		.' Use your Tranquilizer Dart on Tatjana|use Tranquilizer Dart##37665|tip She's sitting on a horse.  Make sure to target her, and NOT the horse, when using the Tranquilizer Dart.
		.' Click the horse to jump on it
		.' Deliver Tatjana|goal Tatjana Delivered|q 12330/1
	step //305
		goto 57.5,41.3
		.talk Sasha##26935
		..turnin Sasha's Hunt##12134
		..turnin Anatoly Will Talk##12330
		..accept A Sister's Pledge##12411
	step //306
		goto 64.8,43.4
		.talk Anya##27646
		..turnin A Sister's Pledge##12411
	step //307
		goto 69.1,40.1
		.talk Hugh Glass##26484
		..accept A Bear of an Appetite##12279
		..buy Howlin' Good Moonshine|q 11998/1
	step //308
		goto 61.6,32.8
		.' Click the Wild Carrots on the ground
		.collect 5 Wild Carrot##37707|q 12414
	step //309
		goto 60.3,25.4
		.' Use your Stick on Highland Mustangs to ride them|use Stick##37708
		.' Ride them back to Squire Percy at 59.1,26.6|n
		.' Use the Hand Over Reins ability on your hotbar to return the horses|petaction Hand Over Reins
		.' Return 5 Highland Mustangs|goal 5 Highland Mustangs Returned|q 12414/1
	step //310
		goto 59.1,26.5
		.talk Squire Percy##26377
		..turnin Mounting Up##12414
	step //311
		goto 59.8,27.5
		.talk Brugar Stoneshear##26226
		..turnin Softening the Blow##11998
		..accept Brothers in Battle##12002
	step //312
		goto 63.7,23.2
		.talk Fallen Earthen Warrior##26335
		..accept Find Kurun!##11981
	step //313
		goto 64.3,19.8
		.' Click the Battered Journal|tip It's a thick book sitting on the ground.
		..accept The Damaged Journal##11986
	step //314
		'They look like torn pages that spawn all around this area on the ground
		.' Click the Missing Journal Pages
		.collect 8 Missing Journal Page##35737|n
		.' Click the Incomplete Journal in your bags|use Incomplete Journal##35739
		.get Brann Bronzebeard's Journal|q 11986/1
	step //315
		goto 63.1,24.1
		.kill 10 Runic Battle Golem|q 12002/1
	step //316
		.' The path up to Kurun starts here|goto Grizzly Hills,61.5,23.9,0.5
	step //317
		'Follow the road into the mountains around to 66,18|goto 65.8,17.8
		.talk Kurun##26260
		..turnin Find Kurun!##11981
		..accept Raining Down Destruction##11982
	step //318
		goto 66.1,13.8
		.' Click the Boulders|tip They look like huge rocks on the ground around this area.
		.collect 5 Boulder##35734|q 11982
	step //319
		goto 66.9,14.9
		.' Use your Boulders on Iron Rune Shapers below|use Boulder##35734
		.' Disrupt 5 Iron Dwarf Operations|goal 5 Iron Dwarf Operations Disrupted|q 11982/1
	step //320
		goto 65.8,17.8
		.talk Kurun##26260
		..turnin Raining Down Destruction##11982
		..accept Rallying the Troops##12070
	step //321
		goto 68.3,10.1
		.' Use your Shard of the Earth on Grizzly Hills Giants that are physically fighting another mob|use Shard of the Earth##36764
		.' Rally 5 Grizzly Hills Giants|goal 5 Grizzly Hills Giants Rallied|q 12070/1
		.' Kill 5 Iron Rune Avengers that spawn|goal 5 Iron Rune Avengers Slain|q 12070/2
	step //322
		goto 65.8,17.8
		.talk Kurun##26260
		..turnin Rallying the Troops##12070
		..accept Into the Breach##11985
	step //323
		'Go down the hill and into the building to 70.2,13|goto 70.2,13
		.kill Iron Thane Argrum##26348|q 11985/1
	step //324
		'Go out of the building and up the path to 65.8,17.8|goto 65.8,17.8
		.talk Kurun##26260
		..turnin Into the Breach##11985
		..accept Gavrock##12081
	step //325
		goto 59.8,27.5
		.talk Brugar Stoneshear##26226
		..turnin Brothers in Battle##12002
		..accept Uncovering the Tunnels##12003
	step //326
		goto 59.8,27.5
		.talk Torthen Deepdig##26361
		..turnin The Damaged Journal##11986
		..accept The Runic Keystone##11988
	step //327
		goto 62.7,20.8
		.' Investigate the North Building|goal Investigate North Building|q 12003/1|tip Go to this spot inside this building to Investigate the North Building.
	step //328
		goto 63.5,28.2
		.' Investigate the South Building|goal Investigate South Building|q 12003/3|tip Go to this spot inside this building to Investigate the South Building.
	step //329
		goto 66.6,24.3
		.' Investigate the East Building|goal Investigate East Building|q 12003/2|tip Go to this spot inside this building to Investigate the East Building.
	step //330
		goto 65.1,19.3
		.kill iron dwarves|n
		.get 5 Runic Keystone Fragment|q 11988/1
	step //331
		goto 59.8,27.5
		.talk Brugar Stoneshear##26226
		..turnin Uncovering the Tunnels##12003
		..accept The Fate of Orlond##12010
	step //332
		goto 59.8,27.5
		.talk Torthen Deepdig##26361
		..turnin The Runic Keystone##11988
		..accept The Runic Prophecies##11993
	step //333
		goto 67.5,15.3
		.talk Surveyor Orlond##26514
		..turnin The Fate of Orlond##12010
		..accept Steady as a Rock?##12014
	step //334
		goto 67.8,15.5
		.kill Subterranean Threshers in the water|n
		.get Portable Seismograph|q 12014/2
	step //335
		goto 68.5,16.2
		.' Click the Third Rune Plate|tip It looks like a brown strip across a metal door in the wall.
		.' Decipher the Third Prophecy|goal Third Prophecy Deciphered|q 11993/3
	step //336
		goto 69,14.4
		.' Click the First Rune Plate|tip It looks like a brown strip across a metal door in the wall.
		.' Decipher the First Prophecy|goal First Prophecy Deciphered|q 11993/1
	step //337
		goto 70.2,14.7
		.' Click the Second Rune Plate|tip It looks like a brown strip across a metal door in the wall.
		.' Decipher the Second Prophecy|goal Second Prophecy Deciphered|q 11993/2
	step //338
		goto 70.6,13.4
		.' Use your Portable Seismograph next to this bridge in this spot|use Portable Seismograph##35837
		.' Click the Portable Seismograph that appears
		.get Thor Modan Stability Profile|q 12014/1
	step //339
		goto 59.8,27.5
		.talk Brugar Stoneshear##26226
		..turnin Steady as a Rock?##12014
		..accept Check Up on Raegar##12128
	step //340
		goto 59.8,27.5
		.talk Torthen Deepdig##26361
		..turnin The Runic Prophecies##11993
	step //341
		goto 73.8,34
		.talk Harkor##26884
		..turnin Say Hello to My Little Friend##12190
		..accept Nice to Meat You##12113
		..accept Therapy##12114
	step //342
		goto 73.9,34.1
		.talk Kraz##26886
		..accept It Takes Guts....##12116
	step //343
		goto 72.7,37.6
		.kill Longhoof Grazers|n
		.get 10 Shovelhorn Steak|q 12113/2
		.kill Duskhowl Prowlers|n
		.get 10 Fibrous Worg Meat|q 12113/1
	step //344
		goto 73.8,34
		.talk Harkor##26884
		..turnin Nice to Meat You##12113
	step //345
		goto 70.5,27.4
		.kill 10 Drakkari Protector|q 12114/1
		.kill 10 Drakkari Oracle|q 12114/2
		.from Drakkari Protector##26797+, Drakkari Oracle##26795+
		.collect 5 Sacred Mojo##36758|q 12068
	step //346
		'Go inside the underground crypt to 70.8,21.8|goto 70.8,21.8
		.' Click the Drakkari Canopic Jars|tip They look like small gray urns sitting against the walls inside this underground crypt.
		.get 5 Drakkari Canopic Jar|q 12116/1
	step //347
		'Inside the crypt, go to 69.4,18.2|goto 69.4,18.2
		.' Click the Drakkari Tablets|tip It's a big stone tablet in the corner of a small room inside this underground crypt.
		.get Drakkari Tablets|q 12068/1
	step //348
		'Inside the crypt, go to 69.5,17.5|goto 69.5,17.5
		.talk Harrison Jones##26814
		..accept Dun-da-Dun-tah!##12082
		.' Escort Harrison from the Drakil'jin Ruins|goal Harrison has escorted you to safety.|q 12082/1
	step //349
		goto 71.7,26.2
		.' Use Drakuru's Elixir next to Drakuru's Brazier|use Drakuru's Elixir##35797
		.talk Image of Drakuru##26787
		..turnin Voices From the Dust##12068
	step //350
		goto 75.5,26.9
		.' Use your Fishing Net on Schools of Northern Salmon|use Fishing Net##37542|tip They look like schools of fish in the water around this area.
		.get 6 Northern Salmon|q 12279/1
	step //351
		goto 79.8,33.6
		.talk Gavrock##26420
		..turnin Gavrock##12081
		..accept Runes of Compulsion##12093
	step //352
		goto 79.1,43.3
		.kill 4 Iron Rune-Weavers|n
		.kill Overseer Brunon|q 12093/4
	step //353
		goto 75.3,36.7
		.kill 4 Iron Rune-Weavers|n
		.kill Overseer Lochli|q 12093/3
	step //354
		goto 73.9,34.1
		.talk Kraz##26886
		..turnin It Takes Guts....##12116
		..accept Drak'aguul's Mallet##12120
	step //355
		goto 73.8,34
		.talk Harkor##26884
		..turnin Dun-da-Dun-tah!##12082
		..turnin Therapy##12114
	step //356
		goto 72.1,33.9
		.kill 4 Iron Rune-Weavers|n
		.kill Overseer Korgan|q 12093/2
	step //357
		goto 67.7,29.6
		.kill 4 Iron Rune-Weavers|n
		.kill Overseer Durval|q 12093/1
	step //358
		goto 71.6,28.1
		.from Drak'aguul##26919
		.get Drakil'jin Mallet|q 12120/1
	step //359
		goto 73.9,34.1
		.talk Kraz##26886
		..turnin Drak'aguul's Mallet##12120
		..accept See You on the Other Side##12121
	step //360
		ding 76
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Northrend (76-78)",[[
	author support@zygorguides.com
	next Zygor's Alliance Leveling Guides\\Northrend (78-80)
	startlevel 76
	step //1
		goto Grizzly Hills,79.8,33.6
		.talk Gavrock##26420
		..turnin Runes of Compulsion##12093
		..accept Latent Power##12094
	step //2
		goto 78.8,39.9
		.' Use your Shard of Gavrock next to the Second Ancient Stone|use Shard of Gavrock##36787|tip It's a big blue glowing stone statue.
		.' Draw Power from the Second Ancient Stone|goal Power Drawn from Second Ancient Stone|q 12094/2
	step //3
		goto 74.1,44.3
		.' Use your Shard of Gavrock next to the Third Ancient Stone|use Shard of Gavrock##36787|tip It's a big blue glowing stone statue.
		.' Draw Power from the Third Ancient Stone|goal Power Drawn from Third Ancient Stone|q 12094/3
	step //4
		goto 71.3,39.9
		.' Use your Shard of Gavrock next to the First Ancient Stone|use Shard of Gavrock##36787|tip It's a big blue glowing stone statue.
		.' Draw Power from the First Ancient Stone|goal Power Drawn from First Ancient Stone|q 12094/1
	step //5
		goto 71.5,24.7
		.' Use your Charged Drakil'jin Mallet next to a gong|use Charged Drakil'jin Mallet##36834|tip They are 3 gongs sitting close together here.
		.get killed by Warlord Jin'arrak|goal Death by Warlord Jin'arrak|q 12121/1
		.' STAY DEAD|havebuff On the Other Side|q 12121/1
	step //6
		'While dead, go inside the crypt to 69.4,19.5|goto 69.4,19.5
		.talk Gan'jo##26924
		..turnin See You on the Other Side##12121
		..accept Chill Out, Mon##12137
	step //7
		goto 69.4,19.5
		.' Click Gan'jo's Chest in the sink next to you
		.get Snow of Eternal Slumber|q 12137/1
	step //8
		goto 69.4,19.5
		.talk Gan'jo##26924
		..'Tell him you are ready to return to the realm of the living|nobuff On the Other Side|c
	step //9
		goto 70,20.4
		.' Use your Snow of Eternal Slumber on Ancient Drakkari mobs|use Snow of Eternal Slumber##36859
		.' They run to nearby mummies on the ground, follow them
		.' Click the Drakkari Spirit Particles
		.get 5 Drakkari Spirit Particles|q 12137/2
	step //10
		'Go outside to 73.9,34.1|goto 73.9,34.1
		.talk Kraz##26886
		..turnin Chill Out, Mon##12137
		..accept Jin'arrak's End##12152
	step //11
		'Go into the crypt to 71.3,19.6|goto 71.3,19.6
		.' Click the Sacred Drakkari Offering|tip It's a small fruit bowl on the ground inside the crypt, next to a skull statue.
		.get Sacred Drakkari Offering|n
		.' Use your Drakkari Spirit Dust in your bags|use Drakkari Spirit Dust##36873
		.collect Infused Drakkari Offering##37063|q 12152
	step //12
		'Go outside to 71.4,24.4|goto 71.4,24.4
		.' Use your Infused Drakkari Offering next to a gong|use Infused Drakkari Offering##37063
		.' Destroy Warlord Jin'arrak
		goal Warlord Jin'arrak Destroyed|q 12152/1
	step //13
		goto 73.9,34.1
		.talk Kraz##26886
		..turnin Jin'arrak's End##12152
	step //14
		goto 79.8,33.6
		.talk Gavrock##26420
		..turnin Latent Power##12094
		..accept Free at Last##12099
	step //15
		goto 76.2,37.7
		.' Use Gavrock's Runebreaker on Runed Giants|use Gavrock's Runebreaker##36796
		.' Free 4 Runed Giants|goal 4 Runed Giants Freed|q 12099/1
	step //16
		goto 79.8,33.6
		.talk Gavrock##26420
		..turnin Free at Last##12099
	step //17
		goto 69.1,40.1
		.talk Hugh Glass##26484
		..turnin A Bear of an Appetite##12279
	step //18
		goto 77,48.4
		.talk Mountaineer Kilian##26885
		..accept The Captive Prospectors##12180
	step //19
		goto 77.1,48.6
		.talk Raegar Breakbrow##26883
		..turnin Check Up on Raegar##12128
		..accept The Perfect Plan##12129
	step //20
		goto 76.6,55.1
		.kill Iron Rune-Smiths|n
		.collect 3 Dun Argol Cage Key##37013|q 12180
		.collect Golem Blueprint Section 1##36849|n
		.collect Golem Blueprint Section 2##36850|n
		.collect Golem Blueprint Section 3##36851|n
		.' Click the Golem Blueprint Section 1 in your bags|use Golem Blueprint Section 1##36849
		.get War Golem Blueprint##36848|q 12129/1
	step //21
		goto 76.5,55.4
		.' Click the Dun Argol Cage|tip Inside this building, locked in a metal cage.
		.' Rescue Prospector Gann|goal Prospector Gann Rescued|q 12180/1
	step //22
		goto 76.3,58.5
		.' Click the Dun Argol Cage|tip On the side of this building, locked in a metal cage.
		.' Rescue Prospector Torgan|goal Prospector Torgan Rescued|q 12180/2
	step //23
		goto 76,61
		.' Click the Dun Argol Cage|tip On the side of this building, locked in a metal cage.
		.' Rescue Prospector Varana|goal Prospector Varana Rescued|q 12180/3
	step //24
		goto 77.1,48.6
		.talk Raegar Breakbrow##26883
		..turnin The Perfect Plan##12129
		..accept Why Fabricate When You Can Appropriate?##12130
	step //25
		goto 77,48.4
		.talk Mountaineer Kilian##26885
		..turnin The Captive Prospectors##12180
		..accept Looking the Part##12183
	step //26
		goto 76.6,54.8
		.from Iron Rune Overseer##27177
		.get Overseer's Uniform|q 12183/1
		.' Click the War Golem Parts|tip They look like metal parts sitting around inside this room and buildings around this area.
		.get 8 War Golem Part|q 12130/1
	step //27
		goto 77.1,48.6
		.talk Raegar Breakbrow##26883
		..turnin Why Fabricate When You Can Appropriate?##12130
		..accept We Have the Power##12131
	step //28
		goto 77,48.4
		.talk Mountaineer Kilian##26885
		..turnin Looking the Part##12183
		..accept Cultivating an Image##12184
	step //29
		goto 76.1,56.4
		.kill Iron dwarves|n
		.' Use Kilian's Camera on their corpses|use Kilian's Camera##37045
		.' Capture 8 Iron Dwarf Images|goal 8 Iron Dwarf Images Captured|q 12184/1
	step //30
		goto 76.8,59.4
		.from Rune-Smith Kathorn##26410
		.get Kathorn's Power Cell|q 12131/2
	step //31
		goto 74.9,56.9
		.from Rune-Smith Durar##26409
		.get Durar's Power Cell|q 12131/1
	step //32
		goto 77.1,48.6
		.talk Raegar Breakbrow##26883
		..turnin We Have the Power##12131
		..accept ... Or Maybe We Don't##12138
	step //33
		goto 77,48.4
		.talk Mountaineer Kilian##26885
		..turnin Cultivating an Image##12184
		..accept Put on Your Best Face for Loken##12185
	step //34
		goto 76.6,51.4
		.' Use your Golem Control Unit|use Golem Control Unit##36936
		.kill Lightning Sentries|n
		.get 10 Charge Level|q 12138/1
	step //35
		goto 81.5,60.3
		.' Use your Overseer's Disguise Kit|use Overseer Disguise Kit##37071
		.' Click Loken's Pedastal|tip Go up the hill into this building at the end of the path.  It's a big sqaure stone altar thing inside this building.
		.' Receive the Message from Loken|goal Message from Loken received|q 12185/1
	step //36
		goto 77.1,48.6
		.talk Raegar Breakbrow##26883
		..turnin ... Or Maybe We Don't##12138
		..accept The Iron Thane and His Anvil##12153
		..accept Blackout##12154
	step //37
		goto 77,48.4
		.talk Mountaineer Kilian##26885
		..turnin Put on Your Best Face for Loken##12185
	step //38
		'Go into this building and downstairs to 77,63|goto 76.5,63.2
		.' Use Raegar's Explosives next to the Dun Argol Power Core|use Raegar's Explosives##36935|tip It looks like a big floating crystal in the middle of the room, on the bottom floor of this building.
		.' Destroy the Dun Argol Power Crystal|goal Dun Argol Power Core Destroyed|q 12154/1
	step //39
		goto 76.2,63.2
		.' Use your Golem Control Unit to ride in your War Golem|use Golem Control Unit##36865
		.' Use your EMP skill to stun The Anvil and remove Iron Thane Furyhammer's Shield|petaction EMP
		.kill Iron Thane Furyhammer##26405|q 12153/1
	step //40
		'Click the Leave Vehicle button to stop controlling the golem|script VehicleExit()|outvehicle
	step //41
		goto 77.1,48.6
		.talk Raegar Breakbrow##26883
		..turnin The Iron Thane and His Anvil##12153
		..turnin Blackout##12154
	step //42
		'Hearth to Westfall Brigade Encampment|goto Grizzly Hills,59.5,26.3,0.5|use Hearthstone##6948|noway|c
	step //43
		'Fly to Amberpine Lodge|goto Grizzly Hills,31.3,59.2,0.5|noway|c
	step //44
		goto 31.2,59.5
		.talk Hierophant Thayreen##27295
		..turnin Vordrassil's Sapling##12248
		..turnin Vordrassil's Seeds##12250
	step //45
		'Fly to Westfall Brigade Encampment|goto Grizzly Hills,59.9,26.6,0.5|noway|c
	step //46
		'Go north to Zul'Drak|goto Zul'Drak|noway|c
	step //47
		goto Zul'Drak,60,56.7
		.talk Maaka##28624
		..fpath Zim'Torga
	step //48
		goto 60,57.9
		.talk Chronicler To'kini##28527
		..accept Just Checkin'##13099
	step //49
		home Zim'Torga
	step //50
		goto 48.4,56.4
		.talk Gurgthock##30007
		..turnin The Champion's Call!##12974
	step //51
		goto 41.6,64.4
		.talk Gurric##28623
		..fpath The Argent Stand
	step //52
		goto 32.2,74.4
		.talk Danica Saint##28618
		..fpath Light's Breach
	step //53
		goto 32,74.4
		.talk Sergeant Riannah##29137
		..turnin Into the Breach!##12789
	step //54
		goto 32,75.6
		.talk Elder Shaman Moky##29733
		..accept This Just In: Fire Still Hot!##12859
	step //55
		goto 32.2,75.7
		.talk Crusader Lord Lantinga##29687
		..accept In Search Of Answers##12902
	step //56
		goto 32.2,75.7
		.talk Chief Rageclaw##29690
		..accept Trolls Is Gone Crazy!##12861
	step //57
		goto 34.9,83.9
		.' Click the Orders From Drakuru|tip It looks like a floating scroll above a small pillar.
		..turnin In Search Of Answers##12902
		..accept Orders From Drakuru##12883
	step //58
		goto 34.9,81
		.kill Drakuru mobs|n
		.get Drakuru "Lock Openers"|n
		.' Use your Drakuru "Lock Openers next to Captured Rageclaws|use Drakuru "Lock Opener"##41161|tip They look like wolverine mobs chained to the ground.
		.' Free 8 Captured Rageclaws|goal 8 Captured Rageclaw Freed|q 12861/1
		.' Use your Rageclaw Fire Extinguisher next to burning huts|use Rageclaw Fire Extinguisher##41131
		.' Douse 15 Hut Fires|goal 15 Hut Fire Doused|q 12859/1
	step //59
		goto 32.2,75.7
		.talk Crusader Lord Lantinga##29687
		..turnin Orders From Drakuru##12883
		..accept The Ebon Watch##12884
		..accept Crusader Forward Camp##12894
	step //60
		goto 32.2,75.7
		.talk Chief Rageclaw##29690
		..turnin Trolls Is Gone Crazy!##12861
	step //61
		goto 32,75.6
		.talk Elder Shaman Moky##29733
		..turnin This Just In: Fire Still Hot!##12859
	step //62
		goto 14,73.6
		.talk Baneflight##28615
		..fpath Ebon Watch
	step //63
		goto 14.1,73.8
		.talk Stefan Vadu##28518
		..turnin The Ebon Watch##12884
		..accept Kickin' Nass and Takin' Manes##12630
	step //64
		goto 15.5,69.8
		.kill Withered Trolls|n
		.' Use Stefan's Steel Toed Boot on Nass|use Stefan's Steel Toed Boot##38659
		.' Collect 10 Hair Samples|goal 10 Hair Samples Collected|q 12630/1
		.get a Writhing Choker|n
		.' Click the Writhing Choker in your bags|use Unliving Choker##38673
		..accept Darkness Calling##12633
	step //65
		goto 14.1,73.8
		.talk Stefan Vadu##28518
		..turnin Kickin' Nass and Takin' Manes##12630
		..turnin Darkness Calling##12633
		..accept Close Call##12638
	step //66
		goto 14.3,74
		.talk Bloodrose Datura##28532
		..accept Taking a Stand##12795
		.' Tell her Stefan said she would demonstrate the item's purpose
		.' Expose the Choker's Purpose|goal Choker's Purpose Exposed|q 12638/1
	step //67
		goto 14.1,73.8
		.talk Stefan Vadu##28518
		..turnin Close Call##12637
		..accept Silver Lining##12643
	step //68
		goto 19.9,73.5
		.kill Putrid Abominations|n
		.get 5 Putrid Abomination Guts|q 12643/1
		.' Click the Gooey Ghoul Drool on the ground|tip They look like jelly blobs on the ground around this area.
		.get 5 Gooey Ghoul Drool|q 12643/2
	step //69
		goto 14.1,73.8
		.talk Stefan Vadu##28518
		..turnin Silver Lining##12643
		..accept Suit Up!##12649
	step //70
		goto 19.9,75.5
		.' Use the Ensorcelled Choker to wear a ghoul costume|use Ensorcelled Choker##38699
		.talk Gristlegut##28589
		..accept Feedin' Da Goolz##12652
		..buy 1 Bitter Plasma|q 12649/1
	step //71
		goto 20.5,74.8
		.' Use your Bowels and Brains Bowel near Decaying Ghouls|use Bowels and Brains Bowl##38701
		.' Feed 10 Decaying Ghouls|goal 10 Decaying Ghouls Fed|q 12652/1
	step //72
		goto 19.9,75.5
		.talk Gristlegut##28589
		..turnin Feedin' Da Goolz##12652
	step //73
		goto 14.1,73.8
		.talk Stefan Vadu##28518
		..turnin Suit Up!##12649
		..accept Infiltrating Voltarus##12661
	step //74
		goto 25.3,64
		.talk Crusader MacKellar##29689
		..turnin Crusader Forward Camp##12894
		..accept That's What Friends Are For...##12903
	step //75
		goto 25.3,64
		.talk Engineer Reed##29688
		..accept Making Something Out Of Nothing##12901
	step //76
		goto 19.4,61.4
		.' Click the Scourge Scrap Metal|tip They look like big spiked metal stars and other metal pieces on the ground around this area.
		.get 10 Scourge Scrap Metal|q 12901/1
	step //77
		goto 17.6,57.6
		.' Find Gerk|goal Gerk found|q 12903/2
		.talk Gerk##29455
		..accept Light Won't Grant Me Vengeance##12904
	step //78
		goto 15.7,59.4
		.' Find Burr|goal Burr found|q 12903/3|tip Laying on a metal table.
	step //79
		goto 16.9,58.7
		.kill 15 Vargul|q 12904/1
	step //80
		goto 17.6,57.6
		.talk Gerk##29455
		..turnin Light Won't Grant Me Vengeance##12904
	step //81
		goto 19.7,56.4
		.talk Gymer##29647
		..accept A Great Storm Approaches##12912
	step //82
		goto 25.1,51.6
		.' Find Crusader Dargath|goal Crusader Dargath found|q 12903/1|tip Standing on a huge platform, with a spiral wind flowing around him.
	step //83
		goto 28.4,44.9
		.' Use your Ensorcelled Choker to become a ghoul|use Ensorcelled Choker##38699
		.' Stand on this green circle
		.'Get teleported up to Overlord Drakuru|goto Zul'Drak,28.1,45.2,0.2|noway|c
	step //84
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..accept Dark Horizon##12664
	step //85
		goto 29.9,47.8
		.talk Gorebag##28666
		.' Go on the tour of Zul'Drak
		.' Complete the tour of Zul'Drak|goal Tour of Zul'Drak complete|q 12664/1
	step //86
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..turnin Dark Horizon##12664
		.' Complete Overlord Drakuru's task|goal 1 Overlord Drakuru's task complete|q 12661/1|c
	step //87
		goto 28.4,44.9
		.' Stand on this green circle
		.' Teleport back down to the ground|goto 28.0,44.9,0.1|noway|c
	step //88
		'Use Stefan's Horn in your bags|use Stefan's Horn##41390
		.talk Stefan Vadu##28518
		..turnin Infiltrating Voltarus##12661
		..accept So Far, So Bad##12669
	step //89
		goto 28.4,44.9
		.' Stand on this green circle
		.' Get teleported up to Overlord Drakuru|goto 28.1,45.2,0.1|noway|c
	step //90
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..accept It Rolls Downhill##12673
	step //91
		goto 28.4,44.9
		.' Stand on this green circle
		.' Teleport back down to the ground|goto 28.0,44.9,0.1|noway|c
	step //92
		goto 27.2,45.1
		.' Use your Scepter of Suggestion on Blight Geists|use Scepter of Suggestion##39157
		.' Use the Harvest Blight Crystal ability near Crystallized Blight|petaction Harvest Blight Crystal|tip The Crystallized Blight look like orange crystals on the ground around this area.
		.' Follow the Blight Geists back to the teleport pad
		.' Collect 7 Blight Crystals|goal 7 Blight Crystals collected|q 12673/1
	step //93
		goto 26.8,47
		.' Use your Diluting Additive next to the big cauldron 5 times|use Diluting Additive##39154|tip It's a big cauldron on the back of this cart vehicle thing. Several Blightguards may pop out for you to fight.  Wait about a minute and use your Diluting Additive next to the cauldron again.  Keep repeating this process.
		.' Dilute the Cauldron 5 times|goal 5 Blight Cauldrons diluted|q 12669/2
	step //94
		goto 28.4,44.9
		.' Stand on this green circle
		.' Get teleported up to Overlord Drakuru|goto 28.1,45.2,0.1|noway|c
	step //95
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..turnin It Rolls Downhill##12673
		.' Complete Drakuru's task|goal Drakuru's task complete|q 12669/1
	step //96
		goto 28.4,44.9
		.' Stand on this green circle
		.' Teleport back down to the ground|goto 28.0,44.9,0.1|noway|c
	step //97
		'Use Stefan's Horn in your bags|use Stefan's Horn##41390
		.talk Stefan Vadu##28518
		..turnin So Far, So Bad##12669
		..accept Hazardous Materials##12677
	step //98
		goto 28.4,44.9
		.' Stand on this green circle
		.' Get teleported up to Overlord Drakuru|goto 28.1,45.2,0.1|noway|c
	step //99
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..accept Zero Tolerance##12686
	step //100
		goto 27.1,43.9
		.' Click the Harvested Blight Crystal crates|tip They look like big wooden crates around this area in the halls and rooms.
		.get 5 Harvested Blight Crystal|q 12677/2
	step //101
		goto 28.4,44.9
		.' Stand on this green circle
		.' Teleport back down to the ground|goto 28.0,44.9,0.1|noway|c
	step //102
		goto 29.7,49.6
		.' Use your Scepter of Empowerment on a Servant of Drakaru|use Scepter of Empowerment##39206
		.' Take control of a Servant of Drakaru
		.' Use the abilities on your Servant of Drakaru's pet bar to fight Darmuk at 30.4,51.5|n
		.' Kill Darmuk|goal Darmuk Slain|q 12686/1|tip He's a huge undead mob walking around on this platform.
	step //103
		goto 28.4,44.9
		.' Stand on this green circle
		.' Get teleported up to Overlord Drakuru|goto 28.1,45.2,0.1|noway|c
	step //104
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..turnin Zero Tolerance##12686
	step //105
		goto 28.4,44.9
		.' Stand on this green circle
		.' Teleport back down to the ground|goto 28.0,44.9,0.1|noway|c
	step //106
		'Use Stefan's Horn in your bags|use Stefan's Horn##41390
		.talk Stefan Vadu##28518
		..turnin Hazardous Materials##12677
		..accept Sabotage##12676
	step //107
		goto 28.4,44.9
		.' Stand on this green circle
		.' Get teleported up to Overlord Drakuru|goto 28.1,45.2,0.1|noway|c
	step //108
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..accept Fuel for the Fire##12690
	step //109
		goto 28.4,44.9
		.' Stand on this green circle
		.' Teleport back down to the ground|goto 28.0,44.9,0.1|noway|c
	step //110
		goto 32.1,40.6
		.' Use your Scepter of Command on a Bloated Abomination|use Scepter of Command##39238
		.' Take control of the Bloated Abomination
		.' Go up the hill
		.' Send your Bloated Abomination into groups of Drakkari Skullcrushers
		.' Use the Burst at the Seams ability on your pet hotbar|petaction Burst at the Seams
		.' Kill 60 Drakkari Skullcrushers|goal 60 Drakkari Skullcrushers Slain|q 12690/1
		.' Lure 3 Drakkari Chieftains|goal 3 Drakkari Chieftain Lured|q 12690/2
	step //111
		goto 30.6,45.3
		.' Use your Explosive Charges next to Scourgewagons|use Explosive Charges##39165|tip They look like small catapult carts.
		.' Destroy 5 Scourgewagons|goal 5 Scourgewagons destroyed|q 12676/1
	step //112
		goto 28.4,44.9
		.' Stand on this green circle
		.' Get teleported up to Overlord Drakuru|goto 28.1,45.2,0.1|noway|c
	step //113
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..turnin Fuel for the Fire##12690
		..accept Disclosure##12710
		.' Complete Drakuru's task|goal Drakuru's task complete|q 12676/2
	step //114
		goto 28.4,44.9
		.' Stand on this blue circle on the small platform above the green circle
		.' Teleport up to Drakuru's upper chamber|goto 27.4,42.5,0.1|noway|c
	step //115
		goto 27.2,42.3
		.' Click the Musty Coffin|tip It's a brown coffin.
		.' Explore Drakuru's upper chamber|goal Drakuru's upper chamber explored|q 12710/1
	step //116
		goto 28.4,44.9|n
		.' Stand on this green circle to go to the bottom level of Voltarus|goto 28.1,45.2,0.1|noway|c
	step //117
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..turnin Disclosure##12710
		.' Learn Drakuru's secret|goal Learn Drakuru's secret|q 12676/3
	step //118
		goto 28.4,44.9
		.' Stand on this green circle
		.' Teleport back down to the ground|goto 28.0,44.9,0.1|noway|c
	step //119
		'Use Stefan's Horn in your bags|use Stefan's Horn##41390
		.talk Stefan Vadu##28518
		..turnin Sabotage##12676
	step //120
		goto 25.3,64
		.talk Engineer Reed##29688
		..turnin Making Something Out Of Nothing##12901
		..turnin A Great Storm Approaches##12912
		..accept Gymer's Salvation##12914
	step //121
		goto 25.3,64
		.talk Crusader MacKellar##29689
		..turnin That's What Friends Are For...##12903
	step //122
		goto 23.9,62.4
		.from Banshee Soulclaimer##29646
		.get 6 Banshee Essence|q 12914/1
	step //123
		goto 15.9,71.5
		.kill Icetouched Earthragers|n
		.get 6 Diatomaceous Earth|q 12914/2
	step //124
		goto 25.3,64
		.talk Engineer Reed##29688
		..turnin Gymer's Salvation##12914
		..accept Our Only Hope##12916
	step //125
		goto 19.7,56.4
		.' Click the Scourge Enclosure, it's Gymer's huge cage
		.' Blow Up the Scourge Enclosure
		.talk Gymer##29647
		..turnin Our Only Hope##12916
	step //126
		goto 39.4,67
		.talk Commander Falstaav##28059
		..turnin Taking a Stand##12795
		..accept Defend the Stand##12503
		..accept Parachutes for the Argent Crusade##12740
	step //127
		home The Argent Stand
	step //128
		goto 40.5,65.6
		.talk Hexxer Ubungo##28062
		..accept The Blessing of Zim'Abwa##12565
	step //129
		goto 38.4,67.1
		.'Kill 10 Scourge|goal 10 Scourge at The Argent Stand destroyed|q 12503/1
		.' Use your Crusader Parachute on Argent Shieldmen and Argent Crusaders|use Crusader Parachute##39615
		.' It won't work on all of them
		.' Equip 10 Argent forces with a parachute|goal 10 Argent forces equipped with a parachute|q 12740/1
		.kill Scourge mobs|n
		..collect 10 Drakkari Offerings##38551|q 12565
	step //130
		goto 36.7,72.6
		.talk Zim'Abwa##190535
		..turnin The Blessing of Zim'Abwa##12565
	step //131
		goto 39.4,67
		.talk Commander Falstaav##28059
		..turnin Defend the Stand##12503
		..turnin Parachutes for the Argent Crusade##12740
	step //132
		goto 40.3,66.6
		.talk Commander Kunz##28039
		..accept New Orders for Sergeant Stackhammer##12505
		..accept Pa'Troll##12596
	step //133
		goto 40.5,65.6
		.talk Hexxer Ubungo##28062
		..accept Trouble at the Altar of Sseratus##12506
	step //134
		goto 35.6,52.2
		.talk Captain Arnath##28045
		..accept Siphoning the Spirits##12799
	step //135
		goto 35,52.1
		.talk Alchemist Finklestein##28205
		..accept Lab Work##12557
	step //136
		'Go into the 2 rooms next to you:
		.' They are items on shelves that you can click
		.' Click a Muddy Mire Maggot and get it|goal Muddy Mire Maggot found|q 12557/1|tip Muddy Mide Maggots look like an open bag of grain on the ground.
		.' Click a Withered Batwing and get it|goal Withered Batwing found|q 12557/2|tip Withered Batwings looks like bone wings.
		.' Click a Chilled Serpent Mucus and get it|goal Chilled Serpent Mucus found|q 12557/4|tip Chilled Serpent Mucus looks like a skinny green vial.
		.' Click an Amberseed and get it|goal Amberseed found|q 12557/3|tip Amberseeds look like spiked potatoes.
	step //137
		goto 35,52.1
		.talk Alchemist Finklestein##28205
		..turnin Lab Work##12557
		.' Complete Alchemist Finklestein's task|goal Alchemist Finklestein's Task|q 12596/4
	step //138
		goto 36.6,60.5
		.kill Lost Drakkari Spirits|n
		.get 5 Ancient Ectoplasm|q 12799/1
	step //139
		goto 35.6,52.2
		.talk Captain Arnath##28045
		..turnin Siphoning the Spirits##12799
		..accept Stocking the Shelves##12609
		..accept Clipping Their Wings##12610
	step //140
		goto 36.1,51.1
		.kill Trapdoor Crawlers|n
		.get 7 Fresh Spider Ichor|q 12609/1
		.kill Zul'Drak Bats|n
		.get 7 Unblemished Bat Wing|q 12610/1
	step //141
		goto 35.6,52.2
		.talk Captain Arnath##28045
		..turnin Stocking the Shelves##12609
		..turnin Clipping Their Wings##12610
	step //142
		goto 40.4,48.2
		.talk Sergeant Stackhammer##28056
		..turnin New Orders for Sergeant Stackhammer##12505
		..accept Argent Crusade, We Are Leaving!##12504
	step //143
		goto 40.4,48.2
		.talk Corporal Maga##28099
		..accept Mopping Up##12508
	step //144
		goto 40.4,47
		.talk Argent Soldier##28041
		.' Tell 10 Argent Soldiers told to report back to the sergeant|goal 10 Argent Soldiers told to report back to the sergeant|q 12504/1
		.kill Sseratus mobs|n
		.kill 10 Followers of Sseratus|q 12508/1
		.get a Strange Mojo|n
		.' Click the Strange Mojo in your bags|use Strange Mojo##38321
		..accept Strange Mojo##12507
	step //145
		'Go inside the building to 40,39|goto 40,39
		.' Investigate the Main building at the Altar of Sseratus|goal Main building at the Altar of Sseratus investigated.|q 12506/1
	step //146
		goto 40.4,48.2
		.talk Sergeant Stackhammer##28056
		..turnin Argent Crusade, We Are Leaving!##12504
	step //147
		goto 40.4,48.2
		.talk Corporal Maga##28099
		..turnin Mopping Up##12508
	step //148
		goto 40.5,65.6
		.talk Hexxer Ubungo##28062
		..turnin Trouble at the Altar of Sseratus##12506
		..turnin Strange Mojo##12507
		..accept Precious Elemental Fluids##12510
	step //149
		goto 40.2,68.9
		.talk Sub-Lieutenant Jax##28309
		..accept The Drakkari Do Not Need Water Elementals!##12562
	step //150
		goto 40.2,73.6
		.kill 10 Drakkari Water Binder|q 12562/1
		.kill Crazed Water Spirits|n
		.collect 3 Water Elemental Link##38323|n
		.' Use the Water Elemental Links to create Tethers to the Plane of Water|use Water Elemental Link##38323
		.' Use the Tethers to the Plane of Water|use Tether to the Plane of Water##38324
		.kill Watery Lords that spawn|n
		.get 3 Precious Elemental Fluids|q 12510/1
	step //151
		goto 40.2,68.9
		.talk Sub-Lieutenant Jax##28309
		..turnin The Drakkari Do Not Need Water Elementals!##12562
	step //152
		goto 40.5,65.6
		.talk Hexxer Ubungo##28062
		..turnin Precious Elemental Fluids##12510
		..accept Mushroom Mixer##12514
	step //153
		goto 41.3,65.1
		.talk Apprentice Pestlepot##28204
		..accept Gluttonous Lurkers##12527
	step //154
		goto 41.4,57.4
		.' Click Zul'Drak Rats on the ground walking around this area
		.collect 25 Zul'Drak Rat##38380|n
		.' Use the Zul'Drak Rats on Lurking Basilisks|use Zul'Drak Rat##38380
		.' Click the Gorged Lurking Basilisks
		.get 5 Basilisk Crystals|q 12527/1
		.' Click Muddlecap Fungus|tip The Muddlecap Fungus looks like groups of tall mushrooms around this area.
		.get 10 Muddlecap Fungus|q 12514/1
	step //155
		goto 40.5,65.6
		.talk Hexxer Ubungo##28062
		..turnin Mushroom Mixer##12514
		..accept Too Much of a Good Thing##12516
	step //156
		goto 35,52.1
		.talk Alchemist Finklestein##28205
		..turnin Gluttonous Lurkers##12527
	step //157
		goto 40.2,42.6
		.' Use your Modified Mojo on the Prophet of Sseratus|use Modified Mojo##38332|tip He's a huge green snake.
		.kill 1 Muddled Prophet of Sseratus|q 12516/1
	step //158
		'Hearth to The Argent Stand|goto Zul'Drak,40.8,66.3,0.5|use Hearthstone##6948|noway|c
	step //159
		goto 40.5,65.6
		.talk Hexxer Ubungo##28062
		..turnin Too Much of a Good Thing##12516
		..accept To the Witch Doctor##12623
	step //160
		goto 48.2,63.9
		.talk Captain Grondel##28043
		..accept Creature Comforts##12599
	step //161
		goto 46.9,61.4
		.' Click Dead Thornwoods|tip They look like curved thorny roots coming out of the water around this area.
		.get 20 Dead Thornwood|q 12599/1
	step //162
		goto 48.2,63.9
		.talk Captain Grondel##28043
		..turnin Creature Comforts##12599
		.' Complete Captain Grondel's Task|goal Captain Grondel's Task|q 12596/3
	step //163
		goto 48.8,78.9
		.talk Captain Brandon##28042
		..accept Something for the Pain##12597
	step //164
		goto 44.9,79.5
		.' Click the Mature Water-Poppy plants|tip They look like tall white-leaved plants with purple bulbs at the top.
		.get 5 Mature Water-Poppy|q 12597/1
	step //165
		goto 48.8,78.9
		.talk Captain Brandon##28042
		..turnin Something for the Pain##12597
		.' Complete Captain Brandon's Task|goal Captain Brandon's Task|q 12596/1
	step //166
		goto 58.1,72.4
		.talk Captain Rupert##28044
		..accept Throwing Down##12598
	step //167
		goto 58.7,72.5
		.talk Dr. Rogers##28125
		..accept Leave No One Behind##12512
	step //168
		goto 53.6,75
		.' Use your Crusader's Bandage on Crusader Lamoof|use Crusader's Bandage##38330|tip Laying on the ground inside this building.
		.' Escort Crusader Lamoof back to Dr. Rogers at 58.1,72.4|n
		.' Save Crusader Lamoof|goal Saved Crusader Lamoof|q 12512/2
	step //169
		goto 49.4,74.7
		.' Use your Crusader's Bandage on Crusader Josephine|use Crusader's Bandage##38330|tip Laying on the ground inside this building.
		.' Escort Crusader Josephine back to Dr. Rogers at 58.1,72.4|n
		.' Save Crusader Josephine|goal Saved Crusader Josephine|q 12512/3
	step //170
		goto 53.4,68.7
		.' Use your High Impact Grenade next to Nerubian Tunnels|use High Impact Grenade##38574|tip They look like squarish pyramid dirt mounds around this area.
		.' Seal 5 Nerubian Tunnels|goal 5 Nerubian Tunnels Sealed|q 12598/1
	step //171
		goto 50.7,69.9
		.' Use your Crusader's Bandage on Crusader Jonathan|use Crusader's Bandage##38330|tip Laying on the ground inside this building.
		.' Escort Crusader Jonathan back to Dr. Rogers at 58.1,72.4|n
		.' Save Crusader Jonathan|goal Saved Crusader Jonathan|q 12512/1
	step //172
		goto 58.1,72.4
		.talk Captain Rupert##28044
		..turnin Throwing Down##12598
		..accept Cocooned!##12606
		.' Complete Captain Rupert's Task|goal Captain Rupert's Task|q 12596/2
	step //173
		goto 58.7,72.5
		.talk Dr. Rogers##28125
		..turnin Leave No One Behind##12512
	step //174
		goto 58.1,72
		.talk Sergeant Moonshard##28283
		..accept Death to the Necromagi##12552
	step //175
		goto 58.3,72
		.talk Specialist Cogwheel##28284
		..accept Skimmer Spinnerets##12553
	step //176
		goto 57.6,75.2
		.kill 8 Hath'ar Necromagus|q 12552/1
		.kill Hath'ar Skimmers|n
		.get 5 Intact Skimmer Spinneret|q 12553/1
	step //177
		goto 58.1,72
		.talk Sergeant Moonshard##28283
		..turnin Death to the Necromagi##12552
	step //178
		goto 58.3,72
		.talk Specialist Cogwheel##28284
		..turnin Skimmer Spinnerets##12553
		..accept Crashed Sprayer##12583
	step //179
		goto 58.1,72.4
		.talk Captain Rupert##28044
		..accept Pure Evil##12584
	step //180
		goto 56.7,69.7
		.' Attack the Nerubian Cocoons|tip They look like squirming big white cocoons on the ground around this area.
		.' Free 3 Captive Footmen|goal 3 Freed Captive Footmen|q 12606/1
	step //181
		goto 48.8,75.6
		.' Click the Crashed Plague Sprayer|tip It looks like a stone cube with 4 pillars in the corners, with skull designs on it.
		.get Plague Sprayer Parts|q 12583/1
	step //182
		goto 58.1,72.4
		.talk Captain Rupert##28044
		..turnin Cocooned!##12606
	step //183
		goto 58.3,72
		.talk Specialist Cogwheel##28284
		..turnin Crashed Sprayer##12583
		..accept A Tangled Skein##12555
	step //184
		ding 77
	step //185
		goto 58.3,74.3
		.' Use your Tangled Skein Thrower on Plague Sprayers|use Tangled Skein Thrower##38515|tip They hover around in this area.
		.' Web and destroy 5 Plague Sprayers|goal 5 Plague Sprayers webbed and destroyed|q 12555/1
	step //186
		goto 61,78.6
		.' Click the Chunks of Saronite|tip They look like tiny green mining nodes inside this building.
		.get 10 Chunks of Saronite|goal 10 Chunk of Saronite|q 12584/1
	step //187
		goto 58.3,72
		.talk Specialist Cogwheel##28284
		..turnin A Tangled Skein##12555
	step //188
		'Make sure you have 10 Drakkari Offerings in your bags|collect 10 Drakkari Offerings##38551 |q 12565 |future
		.' If not, grind around this area until you do.
	step //189
		'Hearth to The Argent Stand|goto Zul'Drak,40.8,66.3,0.1|use Hearthstone##6948|noway|c
	step //190
		'Fly to Dalaran|goto Dalaran,72.4,45.5,1|noway|c
	step //191
		goto Dalaran,69.7,45.4
		.talk Hira Snowdawn##31238
		..get your Expert Riding Training (if you don't already have it)|n
		..get your Cold Weather Flying Training|n
		.' Skip to the next step of the guide
	step //192
		goto 68.6,42
		.talk Archmage Pentarus##28160
		..accept Where in the World is Hemet Nesingwary?##12521
	step //193
		'Fly to The Argent Stand|goto Zul'Drak,41.5,64.5,0.5|noway|c
	step //194
		goto Zul'Drak,40.8,66.6
		.talk Eitrigg##28244
		..turnin Pure Evil##12584
	step //195
		goto 40.3,66.6
		.talk Commander Kunz##28039
		..turnin Pa'Troll##12596
	step //196
		'Fly to Zim'Torga|goto Zul'Drak,60.0,56.8,0.1|noway|c
	step //197
		goto 59.5,58.1
		.talk Witch Doctor Khufu##28479
		..turnin To the Witch Doctor##12623
		..accept Breaking Through Jin'Alai##12627
		..accept The Blessing of Zim'Torga##12615
	step //198
		goto 59.4,57.2
		.talk Zim'Torga##190602
		..turnin The Blessing of Zim'Torga##12615
	step //199
		goto 59.3,57.3
		home Zim'Torga
	step //200
		goto 59.2,56.2
		.talk Scalper Ahunae##28484
		..accept The Leaders at Jin'Alai##12622
	step //201
		goto 57.6,61.7
		.' Click the Purple Cauldron|tip It's a cauldron with purple smoke in it.
		.' Disturb the Purple Cauldron|goal Purple Cauldron disturbed|q 12627/3
	step //202
		goto 55.7,64.3
		.' Click the Green Cauldron|tip It's a cauldron with green smoke in it.
		.' Disturb the Green Cauldron|goal Green Cauldron disturbed|q 12627/2
	step //203
		goto 57.2,65.3
		.' Click the Blue Cauldron|tip It's a cauldron with blue smoke in it.
		.' Disturb the Blue Cauldron|goal Blue Cauldron disturbed|q 12627/1
	step //204
		goto 58.8,62.7
		.' Click the Red Cauldron|tip It's a cauldron with red smoke in it.
		.' Disturb the Red Cauldron|goal Red Cauldron disturbed|q 12627/4
	step //205
		.kill Jin'Alai mobs around this area|n
		.' Chulo the Mad, Gawanil, and Kutube'sa will spawn randomly next to the big totems in this area.
		.kill them and click their Treasure boxes that spawn|n
		.get 1 Treasure of Kutube'sa|q 12622/1
		.get 1 Treasure of Gawanil|q 12622/2
		.get 1 Treasure of Chulo the Mad|q 12622/3
	step //206
		goto 59.5,58.1
		.talk Witch Doctor Khufu##28479
		..turnin Breaking Through Jin'Alai##12627
		..accept To Speak With Har'koa##12628
	step //207
		goto 60,57.9
		.talk Chronicler To'kini##28527
		..accept Relics of the Snow Leopard Goddess##12635
	step //208
		goto 59.2,56.2
		.talk Scalper Ahunae##28484
		..turnin The Leaders at Jin'Alai##12622
		..accept Sealing the Rifts##12640
	step //209
		goto 59.4,56.4
		.talk Element-Tamer Dagoda##28480
		..accept The Frozen Earth##12639
	step //210
		goto 63.8,70.5
		.talk Har'koa##28401
		..turnin To Speak With Har'koa##12628
		..accept But First My Offspring##12632
	step //211
		goto 62.9,70.6
		.' Click the Har'koan Relics|tip The Har'koan Relics look like upright stone tablets on the ground around this area.
		.get 10 Har'koan Relic|q 12635/1
		.kill Cursed Offsprings of Har'koa|n
		.' Use your Whisker of Har'koa on their corpses|use Whisker of Har'koa##38676
		.' Resurrect 7 Cursed Offsprings of Har'koa|goal 7 Cursed Offspring of Har'koa resurrected|q 12632/1
	step //212
		goto 63.8,70.5
		.talk Har'koa##28401
		..turnin But First My Offspring##12632
		..accept Spirit of Rhunok##12642
	step //213
		goto 60,57.9
		.talk Chronicler To'kini##28527
		..turnin Relics of the Snow Leopard Goddess##12635
		..accept Plundering Their Own##12650
		..accept Tails Up##13549
	step //214
		goto 59.5,58.1
		.talk Witch Doctor Khufu##28479
		..accept The Blessing of Zim'Rhuk##12655
	step //215
		goto 56.4,52.8
		.kill Frozen Earths|n
		.get 7 Essence of the Frozen Earth|q 12639/1
		.' Fight the Elemental Rifts|tip The Elemental Rifts look like swirling lightning clouds around this area.
		.' Seal 7 Elemental Rifts|goal 7 Elemental Rifts sealed|q 12640/1
		.collect 10 Drakkari Offerings##38551|q 12655
	step //216
		goto 54,49.1
		.kill Priests of Rhunok|n
		.get 7 Rhunokian Artifact|q 12650/1
	step //217
		goto 53.4,39.2
		.talk Spirit of Rhunok##28561
		..turnin Spirit of Rhunok##12642
		..accept My Prophet, My Enemy##12646
	step //218
		goto 54,47.3
		.from Prophet of Rhunok##28442
		.get Arctic Bear God Mojo|q 12646/1
	step //219
		goto 53.4,39.2
		.talk Spirit of Rhunok##28561
		..turnin My Prophet, My Enemy##12646
		..accept An End to the Suffering##12647
	step //220
		goto 53.4,35.9
		.from Rhunok's Tormentor##28575
		.collect 1 Tormentor's Incense##38696|q 12647
	step //221
		goto 53.5,34.5
		.' Use your Tormentor's Incense next to Rhunok's body|use Tormentor's Incense##38696
		.kill 1 Rhunok|q 12647/1
	step //222
		goto 53.4,39.2
		.talk Spirit of Rhunok##28561
		..turnin An End to the Suffering##12647
		..accept Back to Har'koa##12653
	step //223
		goto 59.3,44.5
		.talk Zim'Rhuk##190657
		..turnin The Blessing of Zim'Rhuk##12655
	step //224
		goto 59.2,56.2
		.talk Scalper Ahunae##28484
		..turnin Sealing the Rifts##12640
		..accept Scalps!##12659
	step //225
		goto 59.4,56.4
		.talk Element-Tamer Dagoda##28480
		..turnin The Frozen Earth##12639
		..accept Bringing Down Heb'Jin##12662
	step //226
		goto 60,57.9
		.talk Chronicler To'kini##28527
		..turnin Plundering Their Own##12650
	step //227
		goto 63.8,70.5
		.talk Har'koa##28401
		..turnin Back to Har'koa##12653
		..accept I Sense a Disturbance##12665
	step //228
		goto 63.8,70.5
		.talk Har'koa##28401
		.' Ask to call one of her children to carry you into the Altar of Quetz'lun
		.' Reveal Quetz'lun's fate|goal Quetz'lun's fate revealed.|q 12665/1
	step //229
		'When you return to 63.8,70.5|goto 63.8,70.5
		.talk Har'koa##28401
		..turnin I Sense a Disturbance##12665
		..accept Preparations for the Underworld##12666
	step //230
		goto 64.1,69.9
		.kill Har'koan Subduers|n
		.kill Claws of Har'koa|n
		.get 8 Sacred Adornment|q 12666/1
	step //231
		goto 63.8,70.5
		.talk Har'koa##28401
		..turnin Preparations for the Underworld##12666
		..accept Seek the Wind Serpent Goddess##12667
	step //232
		goto 74.3,66.7
		.' Use To'kini's Blowgun on Frost Leopards and Icepaw Bears around this area|use To'kini's Blowgun##44890
		.' Click the mobs when they get knocked out and lift their tail to check if they are male or female
		.' Recover 3 Female Frost Leopards|goal 3 Female Frost Leopards recovered|q 13549/1
		.' Recover 3 Female Icepaw Bears|goal 3 Female Icepaw Bears recovered|q 13549/2
	step //233
		goto 75.4,58.6
		.talk Quetz'lun's Spirit##28030
		..turnin Seek the Wind Serpent Goddess##12667
		..accept Setting the Stage##12672
	step //234
		goto 74.6,59.8
		.' Click the Underworld Power Fragments|tip They look like brownish floating crystals.
		.get 10 Underworld Power Fragment|q 12672/1
	step //235
		goto 75.4,58.6
		.talk Quetz'lun's Spirit##28030
		..turnin Setting the Stage##12672
		..accept Foundation for Revenge##12668
	step //236
		'They look like altars all around this whole area.
		.kill Quetz'lun Worshippers and Serpent-Touched Berserkers next to the Soul Fonts|n
		.'Kill 12 Trolls near a Soul Font|goal 12 Trolls killed near a Soul Font|q 12668/1
	step //237
		goto 75.4,58.6
		.talk Quetz'lun's Spirit##28030
		..turnin Foundation for Revenge##12668
		..accept Hell Hath a Fury##12674
	step //238
		goto 74.5,57.4
		.' Use Quetz'lun's Hexxing Stick on High Priest Mu'funu|use Quetz'lun's Hexxing Stick##39158
		.from High Priest Mu'funu##28752
		.' Hex High Priest Mu'funu at death|goal High Priest Mu'funu hexed at death|q 12674/1
	step //239
		goto 73.5,60.8
		.' Use Quetz'lun's Hexxing Stick on High Priest Tua-Tua|use Quetz'lun's Hexxing Stick##39158
		.kill High Priest Tua-Tua|n
		.' Hex High Priest Tua-Tua at death|goal High Priestess Tua-Tua hexed at death|q 12674/2
	step //240
		goto 76,54.9
		.' Use Quetz'lun's Hexxing Stick on High Priest Hawinni|use Quetz'lun's Hexxing Stick##39158
		.kill High Priest Hawinni|n
		.' Hex High Priest Hawinni at death|goal High Priest Hawinni hexed at death|q 12674/3
	step //241
		goto 75.4,58.6
		.talk Quetz'lun's Spirit##28030
		..turnin Hell Hath a Fury##12674
		..accept One Last Thing##12675
	step //242
		goto 63.8,70.5
		.talk Har'koa##28401
		..turnin One Last Thing##12675
		..accept Blood of a Dead God##12684
	step //243
		goto 64.2,52.6
		.' Click Heb'Jin's Drum|tip It's a big drum in the middle of the road.
		.' Use your Bat Net on Heb'Jin's Bat to pin it to the ground|use Bat Net##39041
		.kill 1 Heb'Jin|q 12662/1
	step //244
		goto 64.6,57
		.kill Heb'Drakkar trolls|n
		.' Use Ahunae's Knife on their corpses to scalp them|use Ahunae's Knife##38731
		.' Scalp 10 Heb'Drakkar trolls|goal 10 Heb'Drakkar trolls scalped|q 12659/1
	step //245
		goto 70.5,50.4
		.kill Bloods of Mam'toth|n
		.get 7 Blood of Mam'toth|q 12684/1
	step //246
		'Hearth to Zim'Torga|goto Zul'Drak,59.3,57.2,0.5|use Hearthstone##6948|noway|c
	step //247
		goto 59.4,56.4
		.talk Element-Tamer Dagoda##28480
		..turnin Bringing Down Heb'Jin##12662
	step //248
		goto 59.2,56.2
		.talk Scalper Ahunae##28484
		..turnin Scalps!##12659
	step //249
		goto 60,57.9
		.talk Chronicler To'kini##28527
		..turnin Tails Up##13549
	step //250
		goto 63.8,70.5
		.talk Har'koa##28401
		..turnin Blood of a Dead God##12684
		..accept You Reap What You Sow##12685
	step //251
		goto 75.2,58.6
		.' Use Quetz'lun's Ritual next to Quetz'lun's body|use Quetz'lun's Ritual##39187
		.kill 1 Drained Prophet of Quetz'lun|q 12685/1
	step //252
		goto 59.5,58.1
		.talk Witch Doctor Khufu##28479
		..turnin You Reap What You Sow##12685
	step //253
		goto 60,57.9
		.talk Chronicler To'kini##28527
		..accept Hexed Caches##12709
	step //254
		goto 60.3,57.8
		.talk Har'koa##28401
		..accept The Key of Warlord Zol'Maz##12712
	step //255
		goto 59.4,56.4
		.talk Element-Tamer Dagoda##28480
		..accept Enchanted Tiki Warriors##12708
	step //256
		goto 59.2,56.2
		.talk Scalper Ahunae##28484
		..accept Wooly Justice##12707
	step //257
		goto 69.5,41.1
		.' Use your Medallion of Mam'toth on Enraged Mammoths to ride them|use Medallion of Mam'toth##39268
		.' Use the abilities on your mammoth hotbar
		.' Trample 12 Mam'toth Disciples to death|goal 12 Mam'toth Disciples trampled to death|q 12707/1
	step //258
		goto 68.2,35.3
		.from Drek'Maz##28918
		.collect 1 Drek'Maz's Tiki##39315|q 12712
	step //259
		goto 67.9,32.8
		.from Yara##28917|n
		.collect 1 Yara's Sword##39313|q 12712
	step //260
		goto 63.8,37.2
		.from Tiri##28916
		.collect 1 Tiri's Magical Incantation##39316|q 12712
	step //261
		'Click Tiri's Magical Incantation in your bags|use Tiri's Magical Incantation##39316
		.collect 1 Tiki Dervish Ceremony##39314|q 12712
	step //262
		goto 69.2,35.9
		.'Kill 12 Enchanted Tiki Warrior|goal 12 Enchanted Tiki Warriors destroyed|q 12708/1
		.' Click the Zol'Maz Stronghold Caches|tip The Zol'Maz Stronghold Caches look like bamboo boxes on the ground around this area.
		.get 12 Zol'Maz Stronghold Cache|q 12709/1
	step //263
		goto 66.2,33.4
		.' Use your Tiki Dervish Ceremony in front of this huge metal gate|use Tiki Dervish Ceremony##39314
		.from Warlord Zol'Maz##28902
		.get Key of Warlord Zol'Maz|q 12712/1
	step //264
		goto 70.5,23.3
		.talk Rafae##30569
		..fpath Gundrak
	step //265
		goto 70.1,20.9
		.talk Chronicler Bah'Kini##30676
		..turnin Just Checkin'##13099
	step //266
		'Fly to Zim'Torga|goto Zul'Drak,60.0,56.8,0.5|noway|c
	step //267
		goto 60.3,57.8
		.talk Har'koa##28401
		..turnin The Key of Warlord Zol'Maz##12712
		..accept Rampage##12721
	step //268
		goto 60,57.9
		.talk Chronicler To'kini##28527
		..turnin Hexed Caches##12709
	step //269
		goto 59.4,56.4
		.talk Element-Tamer Dagoda##28480
		..turnin Enchanted Tiki Warriors##12708
	step //270
		goto 59.2,56.2
		.talk Scalper Ahunae##28484
		..turnin Wooly Justice##12707
	step //271
		'Fly to Gundrak|goto Zul'Drak,70.5,23.2,0.1|noway|c
	step //272
		goto 78.1,24.2
		.' Click the 4 Akali Chain Anchors|tip They look like stone pillars with fire coming out of the top.
		.' Unfetter Akali from his chains|goal Akali unfettered from his chains.|q 12721/1
	step //273
		goto 70.5,23.3
		.talk Rafae##30569
		.' Fly to Zim'Torga|goto 60.0,56.8,0.5|noway|c
	step //274
		goto 59.5,58.1
		.talk Witch Doctor Khufu##28479
		..turnin Rampage##12721
	step //275
		'Fly to Fizzcrank Airstrip|goto Borean Tundra,56.5,20.1,0.1|noway|c
	step //276
		'Go north to Sholazar Basin|goto Sholazar Basin|noway|c
	step //277
		goto Sholazar Basin,27.1,59.9
		.talk Debaar##28032
		..accept Venture Co. Misadventure##12524
	step //278
		home Nesingwary Base Camp
	step //279
		goto 26.9,58.9
		.talk Chad##28497
		..accept It Could Be Anywhere!##12624
	step //280
		goto 25.3,58.5
		.talk Weslex Quickwrench##28033
		..accept Need an Engine, Take an Engine##12522
	step //281
		goto 38.7,56.7
		.' Click the Flying Machine Engine|tip It's an engine sitting on the ground, next to a crashed plane.
		.get Flying Machine Engine|q 12522/1
	step //282
		goto 39.7,58.7
		.talk Monte Muzzleshot##27987
		..turnin Where in the World is Hemet Nesingwary?##12521
		..accept Welcome to Sholazar Basin##12489
	step //283
		goto 35.5,47.4
		.talk Engineering Helice##28787
		..accept Engineering a Disaster##12688
		.' Escort Engineer Helice out of Swindlegrin's Dig|goal Escort Engineer Helice out of Swindlegrin's Dig|q 12688/1
	step //284
		goto 37.4,46.1
		.'Kill 15 Venture Company member|goal 15 Venture Company members killed|q 12524/1
		.kill Venture Company mobs|n
		.get Golden Engagement Ring|q 12624/1
	step //285
		goto 27.2,59.9
		.talk Debaar##28032
		..turnin Venture Co. Misadventure##12524
		..accept Wipe That Grin Off His Face##12525
	step //286
		goto 26.9,58.9
		.talk Chad##28497
		..turnin It Could Be Anywhere!##12624
	step //287
		goto 27.1,58.6
		.talk Hemet Nesingwary##27986
		..turnin Welcome to Sholazar Basin##12489
		..turnin Engineering a Disaster##12688
	step //288
		goto 25.4,58.5
		.talk Weslex Quickwrench##28033
		..turnin Need an Engine, Take an Engine##12522
		..accept Have a Part, Give a Part##12523
	step //289
		goto 32.7,46.9
		.' Click the Venture Co. Spare Parts|tip They look like metal assorted parts on the ground around this area.
		.get 7 Venture Co. Spare Parts|q 12523/1
	step //290
		goto 35.8,50.3
		.kill 1 Meatpie|q 12525/2|tip Meatpie is a blue ogre that walks up and down this platform, and around this area.
		.kill 1 Foreman Swindlegrin|q 12525/1|tip Foreman Swindlegrin is on a machine shredder walking around on top of this platform.
	step //291
		goto 27.2,59.9
		.talk Debaar##28032
		..turnin Wipe That Grin Off His Face##12525
	step //292
		goto 25.4,58.5
		.talk Weslex Quickwrench##28033
		..turnin Have a Part, Give a Part##12523
	step //293
		goto 25.4,58.5
		.talk Professor Calvert##28266
		..accept Aerial Surveillance##12696
	step //294
		goto 25.3,58.5
		.talk The Spirit of Gnomeregan##28037
		..fpath Nesingwary Base Camp
	step //295
		goto 26.7,59
		.talk Buck Cantwell##28031
		..accept Dreadsaber Mastery: Becoming a Predator##12549
	step //296
		goto 27.1,58.6
		.talk Hemet Nesingwary##27986
		..accept Rhino Mastery: The Test##12520
	step //297
		goto 27.1,59.9
		.talk Drostan##28328
		..accept Kick, What Kick?##12589
	step //298
		'Use your RJR Rifle on the gnome close to you with an apple on his head|use RJR Rifle##38573
		.' Keep using the rifle until you hit the apple
		.' Shoot the apple on Lucky Wilhelm's Head|goal Shot apple on Lucky Wilhelm's Head|q 12589/1
	step //299
		goto 27.1,59.9
		.talk Drostan##28328
		..turnin Kick, What Kick?##12589
		..accept The Great Hunter's Challenge##12592
	step //300
		goto 28,56
		.kill 15 Dreadsaber|q 12549/1
		.kill 15 Shardhorn Rhino|q 12520/1
		.kill Dreadsabers and Shardhorn Rhinos|n
		.'Kill 60 Game Animals|goal 60 Game Animals Killed|q 12592/1
	step //301
		goto 26.7,59
		.talk Buck Cantwell##28031
		..turnin Dreadsaber Mastery: Becoming a Predator##12549
		..accept Dreadsaber Mastery: Stalking the Prey##12550
	step //302
		goto 27.1,58.6
		.talk Hemet Nesingwary##27986
		..turnin Rhino Mastery: The Test##12520
		..accept Rhino Mastery: The Chase##12526
	step //303
		goto 26.7,59.5
		.talk Korg the Cleaver##28046
		..accept A Steak Fit for a Hunter##12804
	step //304
		goto 26.8,60.1
		.talk Grimbooze Thunderbrew##29157
		..accept Some Make Lemonade, Some Make Liquor##12634
	step //305
		goto 27.1,59.9
		.talk Drostan##28328
		..turnin The Great Hunter's Challenge##12592
	step //306
		goto 27.2,59.9
		.talk Debaar##28032
		..accept Crocolisk Mastery: The Trial##12551
	step //307
		goto 25.6,66.5
		.talk Oracle Soo-rahm##28191
		..turnin Rhino Mastery: The Chase##12526
		..accept An Offering for Soo-rahm##12543
	step //308
		goto 29.5,66.4
		.kill Longneck Grazers|n
		.get 5 Longneck Grazer Steak|q 12804/1
	step //309
		goto 29,62.5
		.kill 15 Mangal Crocolisk|q 12551/1
	step //310
		goto 36.3,65.8
		.kill Emperor Cobras|n
		.get 5 Intact Cobra Fang|q 12543/1
	step //311
		goto 37.6,61.8
		.' Click the Sturdy Vines|tip They look like brown vines that hang from trees around this area.  Sometimes a Dwarf will fall out and give you fruit you need.
		.' Click the fruit that falls to the ground or talk to the dwarf that falls
		.get Orange|q 12634/1
		.get 2 Banana Bunch|q 12634/2
		.get Papaya|q 12634/3
	step //312
		goto 50,61.5
		.talk Pilot Vic##28746
		..turnin Aerial Surveillance##12696
		..accept An Embarassing Incident##12699
		..accept Force of Nature##12803
	step //313
		goto 50.5,62.1
		.talk Tamara Wobblesprocket##28568
		..accept The Part-time Hunter##12654
	step //314
		goto 48.6,64
		.' Click the Raised Mud underwater|tip They look like piles of dirt underwater in this lake.
		.get Vic's Keys|q 12699/1
	step //315
		goto 50,61.5
		.talk Pilot Vic##28746
		..turnin An Embarassing Incident##12699
		..accept Reconnaissance Flight##12671
	step //316
		goto 50,61.5
		'You go flying in a plane
		.' Use the abilities on your hotbar to fight the bats
		.' The engine blows up and you have to fly back to Pilot Vic at 50.1,61.4|n
		.' Land the plane inside the blue crystal circle
		.' Use the Land Flying Machine ability on your hotbar to land the plane|petaction Land Flying Machine
		.' Complete the Reconnaissance Flight|goal Reconnaissance Flight|q 12671/1
	step //317
		goto 50,61.5
		.talk Pilot Vic##28746
		..turnin Reconnaissance Flight##12671
	step //318
		goto 39.9,43.7
		.' Click the Dreadsaber Tracks|tip They look like brown paw prints on the ground around this area.
		.' Identify 3 Shango Tracks|goal 3 Shango Track identified|q 12550/1
	step //319
		goto 26.7,59
		.talk Buck Cantwell##28031
		..turnin Dreadsaber Mastery: Stalking the Prey##12550
		..accept Dreadsaber Mastery: Ready to Pounce##12558
	step //320
		goto 26.7,59.5
		.talk Korg the Cleaver##28046
		..turnin A Steak Fit for a Hunter##12804
	step //321
		goto 26.8,60.1
		.talk Grimbooze Thunderbrew##29157
		..turnin Some Make Lemonade, Some Make Liquor##12634
		..accept Still At It##12644
	step //322
		goto 26.7,60
		.talk "Tipsy" McManus##28566
		..'Tell him you are ready to start the distillation process
		.' Click the items on the ground or on the machine that he yells at you during the process, it's random
		.' Click the barrel on the ground when the process is done
		.get Thunderbrew's Jungle Punch|q 12644/1
	step //323
		goto 26.8,60.1
		.talk Grimbooze Thunderbrew##29157
		..turnin Still At It##12644
		..accept The Taste Test##12645
	step //324
		goto 27.2,59.9
		.talk Debaar##28032
		..turnin Crocolisk Mastery: The Trial##12551
		..accept Crocolisk Mastery: The Plan##12560
	step //325
		goto 27.4,59.4
		.' Use your Jungle Punch Sample on Hadrius Harlowe|use Jungle Punch Sample##38697|tip Standing next to a tiki torch.
		.' Complete Hadrius' taste test|goal Hadrius' taste test|q 12645/2
	step //326
		goto 27.1,58.6
		.' Use your Jungle Punch Sample on Hemet Nesingwary|use Jungle Punch Sample##38697|tip Standing in front of a tent.
		.' Complete Hemet's taste test|goal Hemet's taste test|q 12645/1
	step //327
		goto 25.6,66.5
		.talk Oracle Soo-rahm##28191
		..turnin An Offering for Soo-rahm##12543
		..accept The Bones of Nozronn##12544
	step //328
		goto 26.1,71.6
		.' Use Soo-rahm's Incense next to the Offering Bowl|use Soo-rahm's Incense##38519|tip It's a small bowl in front of the skull of these bones.
		.' Reveal the Location of Farunn|goal Location of Farunn revealed|q 12544/1
	step //329
		goto 27.1,58.6
		.talk Hemet Nesingwary##27986
		..turnin The Bones of Nozronn##12544
		..accept Rhino Mastery: The Kill##12556
	step //330
		goto 33.4,34.7
		.from Shango##28297
		.get Shango's Pelt|q 12558/1
	step //331
		goto 34.7,41.5
		.' Click Sandferns|tip They look like ferns on the beach.
		.get 5 Sandfern|q 12560/1
	step //332
		goto 47.4,43.9
		.from Farunn##28288
		.get Farunn's Horn|q 12556/1
	step //333
		goto 50.5,62.1
		.' Use your Jungle Punch Sample on Tamara Wobblesprocket|use Jungle Punch Sample##38697|tip Standing in front of a tent.
		.' Complete Tamara's taste test|goal Tamara's taste test|q 12645/3
	step //334
		'Fly to Nesingwary Base Camp|goto Sholazar Basin,25.4,58.2,0.5|noway|c
	step //335
		goto 27.1,58.6
		.talk Hemet Nesingwary##27986
		..turnin Rhino Mastery: The Kill##12556
	step //336
		goto 26.7,59
		.talk Buck Cantwell##28031
		..turnin Dreadsaber Mastery: Ready to Pounce##12558
	step //337
		goto 26.8,60.1
		.talk Grimbooze Thunderbrew##29157
		..turnin The Taste Test##12645
	step //338
		goto 27.2,59.9
		.talk Debaar##28032
		..turnin Crocolisk Mastery: The Plan##12560
		..accept Crocolisk Mastery: The Ambush##12569
	step //339
		goto 46.3,63.4
		.' Use your Sandfern Disguise next to this big log laying halfway in the water|use Sandfern Disguise##38564
		.kill Bushwhacker that spawns|n
		.get Bushwhacker's Jaw|q 12569/1
	step //340
		goto 50.5,77.3
		.from Pitch##28097
		.get Pitch's Remains|q 12654/1
	step //341
		goto 50.5,76.6
		.talk Tracker Gekgek##28095
		..accept Playing Along##12528|tip This quest is only available immediately after killing Pitch in the previous guide step.
	step //342
		goto 55,69.1
		.talk High-Shaman Rakjak##28082
		..turnin Playing Along##12528
		..accept The Ape Hunter's Slave##12529
	step //343
		'Talk to Goregek the Gorilla Hunter who is following you
		..accept Tormenting the Softknuckles##12530|tip You must have the quest "The Ape Hunter's Slave" active in your quest log in order to talk to Goregek the Gorilla Hunter and accept this quest.
	step //344
		goto 57.5,73.3
		.kill 8 Hardknuckle Forager|q 12529/1
	step //345
		goto 61.1,71.7
		.kill 6 Hardknuckle Charger|q 12529/2
	step //346
		goto 66.9,73.2
		.' Use your Softknuckle Poker on Softknuckles|use Softknuckle Poker##38467|tip Softknuckles are baby gorillas.
		.' A Hardknuckle Matriarch will spawn eventually
		.kill 1 Hardknuckle Matriarch|q 12530/1
	step //347
		goto 55,69.1
		.talk High-Shaman Rakjak##28082
		..turnin The Ape Hunter's Slave##12529
		..turnin Tormenting the Softknuckles##12530
		..accept The Wasp Hunter's Apprentice##12533
	step //348
		goto 55.5,69.7
		.talk Elder Harkek##28138
		..accept The Sapphire Queen##12534
	step //349
		ding 78
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Northrend (78-80)",[[
	author support@zygorguides.com
	startlevel 78
	step //1
		goto Sholazar Basin,59.6,75.8
		.kill 6 Sapphire Hive Wasp|q 12533/1
		.kill 9 Sapphire Hive Drone|q 12533/2
	step //2
		goto 59.4,79.1 |c |q 12534
		.' The path down to The Sapphire Queen starts here
	step //3
		'Follow the path down to 57.1,79.3
		.from Sapphire Hive Queen##28087
		.get Stinger of the Sapphire Queen|q 12534/1
	step //4
		'Go outside to 55,69.1|goto 55,69.1
		.talk High-Shaman Rakjak##28082
		..turnin The Wasp Hunter's Apprentice##12533
		..turnin The Sapphire Queen##12534
	step //5
		goto 55.5,69.7
		.talk Elder Harkek##28138
		..accept Flown the Coop!##12532
	step //6
		'They are all around the village
		.' Click the Chicken Escapees
		.get 12 Captured Chicken|q 12532/1
	step //7
		goto 55.5,69.7
		.talk Elder Harkek##28138
		..turnin Flown the Coop!##12532
		..accept The Underground Menace##12531
	step //8
		goto 55,69.1
		.talk High-Shaman Rakjak##28082
		..accept Mischief in the Making##12535
	step //9
		goto 56.6,84.6
		.' Click the Skyreach Crystal Formations|tip They look like white crystal cluster on the ground along the river bank.
		.get 8 Skyreach Crystal Cluster|q 12535/1
	step //10
		goto 49.8,85
		.' He travels up and down the river bank, so you may need to search for him
		.from Serfex the Reaver##28083
		.get Claw of Serfex|q 12531/1
	step //11
		goto 55,69.1
		.talk High-Shaman Rakjak##28082
		..turnin The Underground Menace##12531
		..turnin Mischief in the Making##12535
		..accept A Rough Ride##12536
	step //12
		goto 57.3,68.4
		.talk Captive Crocolisk##28298
		..'Tell him let's do this
		.' Travel to Mistwhisper Refuge|goal Travel to Mistwhisper Refuge.|q 12536/1
	step //13
		'When you jump off the crocodile:
		.talk Zepik the Gorloc Hunter##28668
		..turnin A Rough Ride##12536
		..accept Lightning Definitely Strikes Twice##12537
		..accept The Mist Isn't Listening##12538
	step //14
		goto 45.4,37.2
		.' Use your Skyreach Crystal Clusters next to the stone monument|use Skyreach Crystal Clusters##38510|tip It's a tall rectangle stone monument.
		.' Click the Arranged Crystal Formation that appears
		.' Sabotage the Mistwhisper Weather Shrine|goal Sabotage the Mistwhisper Weather Shrine|q 12537/1
	step //15
		goto 45.5,39.8
		.'Kill 12 Mistwhisper Gorloc|goal 12 Mistwhisper Gorloc|q 12538/1
	step //16
		'Use Zepik's Hunting Horn if Zepik is not standing next to you:|use Zepik's Hunting Horn##38512
		.talk Zepik the Gorloc Hunter##28216
		..turnin Lightning Definitely Strikes Twice##12537
		..turnin The Mist Isn't Listening##12538
		..accept Hoofing It##12539
	step //17
		goto 55,69.1
		.talk High-Shaman Rakjak##28082
		..turnin Hoofing It##12539
		..accept Just Following Orders##12540
	step //18
		goto 55.7,64.9
		.talk Injured Rainspeaker Oracle##28217
		..' Pull it to its feet
		.kill the crocodile that spawns|n
		.' Locate the Injured Rainspeaker Oracle|goal Locate Injured Rainspeaker Oracle|q 12540/1
	step //19
		goto 55.7,64.9
		.talk Injured Rainspeaker Oracle##28217
		..turnin Just Following Orders##12540
		..accept Fortunate Misunderstandings##12570
		..'Tell him you are ready to travel to his village now.
		.' Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy|goal Escort the Injured Rainspeaker Oracle to Rainspaker Canopy|q 12570/1
	step //20
		goto 54.6,56.3
		.talk High-Oracle Soo-say##28027
		..turnin Fortunate Misunderstandings##12570
		..accept Make the Bad Snake Go Away##12571
	step //21
		'Use Lafoo's Bug Bag if Lafoo is not standing next to you:|use Lafoo's Bug Bag##38622
		.talk Lafoo##28120
		..accept Gods like Shiny Things##12572
	step //22
		goto 57.5,52.4
		.kill 1 Venomtip##28358|q 12571/2
	step //23
		goto 52.4,53.2
		'Use Lafoo's Bug Bag if Lafoo is not standing next to you:|use Lafoo's Bug Bag##38622
		.' Stand on top of the twinkles of light on the ground around this area
		.' Lafoo will dig up the treasure
		.' Click the random items that appear on the ground
		.get 6 Shiny Treasures|q 12572/1
		.kill 10 Emperor Cobra|q 12571/1
	step //24
		goto 54.6,56.3
		.talk High-Oracle Soo-say##28027
		..turnin Make the Bad Snake Go Away##12571
		..accept Making Peace##12573
		..turnin Gods like Shiny Things##12572
	step //25
		goto 51.3,64.6
		.talk Shaman Vekjik##28315
		..'Tell him you brought an offering
		.' Extend the Peace Offering to Shaman Vekjik|goal Extend Peace Offering to Shaman Vekjik|q 12573/1
	step //26
		goto 50.5,62.1
		.talk Tamara Wobblesprocket##28568
		..turnin The Part-time Hunter##12654
	step //27
		goto 54.6,56.3
		.talk High-Oracle Soo-say##28027
		..turnin Making Peace##12573
		..accept Back So Soon?##12574
	step //28
		goto 42.1,38.6
		.talk Mistcaller Soo-gan##28114
		..turnin Back So Soon?##12574
		..accept The Lost Mistwhisper Treasure##12575
		..accept Forced Hand##12576
	step //29
		goto 42.1,28.7
		.talk Colvin Norrington##28771
		..accept Burning to Help##12683
	step //30
		goto 40.4,26.4
		.kill 8 Frenzyheart Spearbearer|q 12576/1
		.kill 6 Frenzyheart Scavenger|q 12576/2
	step //31
		goto 41.3,19.8
		.kill Warlord Tartek##28105|q 12575/1
	step //32
		goto 41.6,19.5
		.' Click the Mistwhisper Treasure|tip It's a yellow glowing floating orb, hovering over a tree stump altar.
		.get Mistwhisper Treasure|q 12575/2
	step //33
		goto 39.7,38
		.from Bittertide Hydra##28003
		.' They will spit Hydra Sputum on you
		.' Use your Sample Container in your bags when you have the Hydra Sputum debuff|use Sample Container##39164
		.' Collect 5 Sputum Samples|goal 5 Sputum Samples Collected|q 12683/1
		.kill 5 Bittertide Hydra|q 12683/2
	step //34
		goto 42.1,38.6
		.talk Mistcaller Soo-gan##28114
		..turnin The Lost Mistwhisper Treasure##12575
		..turnin Forced Hand##12576
		..accept Home Time!##12577
	step //35
		goto 42.1,28.7
		.talk Colvin Norrington##28771
		..turnin Burning to Help##12683
	step //36
		'Hearth to Nesingwary Base Camp|goto Sholazar Basin,26.8,59.2,0.5|use Hearthstone##6948|noway|c
	step //37
		goto 27.2,59.9
		.talk Debaar##28032
		..turnin Crocolisk Mastery: The Ambush##12569
	step //38
		goto 27.1,58.6
		.talk Hemet Nesingwary##27986
		..accept In Search of Bigger Game##12595
	step //39
		goto 42.3,28.7
		.talk Dorian Drakestalker##28376
		..turnin In Search of Bigger Game##12595
		..accept Sharpening Your Talons##12603
		..accept Securing the Bait##12605
	step //40
		goto 44.7,27.4
		.kill 6 Primordial Drake|q 12603/1|tip The Primordial Drakes fly around in the air around this area.
		.' Attack the Primordial Drake Eggs|tip The Primordial Drake Eggs look like white eggs next to trees around this area.
		.' Click the Primordial Hatchlings that spawn
		.get 6 Primordial Hatchling|q 12605/1
	step //41
		goto 42.3,28.7
		.talk Dorian Drakestalker##28376
		..turnin Sharpening Your Talons##12603
		..turnin Securing the Bait##12605
	step //42
		goto 42.1,28.7
		.talk Colvin Norrington##28771
		..accept Reagent Agent##12681
	step //43
		goto 42.1,28.9
		.talk Zootfizzle##28374
		..accept A Mammoth Undertaking##12607
		..accept My Pet Roc##12658
	step //44
		goto 39.3,27.3
		.' Use your Mammoth Harness on a Shattertusk Mammoth|use Mammoth Harness##38627
		.' Ride the mammoth back to Zootfizzle at 42.1,28.9|n
		.' Use the Hand Over Mammoth ability on your hotbar|petaction Hand Over Mammoth
		.' Deliver the Shattertusk Mammoth|goal Shattertusk Mammoth Delivered|q 12607/1
	step //45
		goto 42.1,28.9
		.talk Zootfizzle##28374
		..turnin A Mammoth Undertaking##12607
	step //46
		goto 54.5,27.9
		.kill Goretalon Rocs|n
		.get 5 Twisted Roc Talon|q 12681/1
		.' Click the Roc Eggs|tip The Roc Eggs look like white eggs in nests on the ground around this area.
		.get 7 Roc Egg|q 12658/1
	step //47
		goto 42.1,28.7
		.talk Colvin Norrington##28771
		..turnin Reagent Agent##12681
	step //48
		goto 42.1,28.9
		.talk Zootfizzle##28374
		..turnin My Pet Roc##12658
	step //49
		goto 54.6,56.3
		.talk High-Oracle Soo-say##28027
		..turnin Home Time!##12577
		..accept The Angry Gorloc##12578
	step //50
		goto 64.5,48.7
		.talk Avatar of Freya##27801
		..turnin Force of Nature##12803
		..accept An Issue of Trust##12561
	step //51
		goto 67.3,51.4
		.kill 6 Blighted Corpse|q 12561/1
		.kill 10 Bonescythe Ravager|q 12561/2
	step //52
		goto 64.5,48.7
		.talk Avatar of Freya##27801
		..turnin An Issue of Trust##12561
		..accept Returned Sevenfold##12611
	step //53
		goto 66.5,44.2
		.' Fight Thalgran Blightbringer|tip He's a tall undead standing on this small hill.
		.' Use Freya's Ward in your bags to reflect Thalgran Blightbringer's Deathbolts back at him|use Freya's Ward##38657|tip Deathbolts are a purple shadow spell when he's casting it.
		.kill 1 Thalgran Blightbringer|q 12611/1
	step //54
		goto 64.5,48.7
		.talk Avatar of Freya##27801
		..turnin Returned Sevenfold##12611
		..accept The Fallen Pillar##12612
		..accept Salvaging Life's Strength##12805
	step //55
		goto 65.1,60.3
		.' Click the Cultist Corpse|tip On the ground at the very top of the pillar, next to a huge red crystal.
		..turnin The Fallen Pillar##12612
		..accept Cultist Incursion##12608
	step //56
		goto 69.7,57.9
		.kill Lifeblood Elementals|n
		.' Use your Lifeblood Gem on their corpses|use Lifeblood Gem##40397
		.' Recover 8 Lifeblood Energy|goal 8 Lifeblood Energy Recovered|q 12805/1
	step //57
		goto 75.3,54.1
		.' Travel to Mosswalker Village|goal Travel to Mosswalker Village.|q 12578/1
	step //58
		'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
		.talk Moodle##28122
		..turnin The Angry Gorloc##12578
		..accept The Mosswalker Savior##12580
		..accept Lifeblood of the Mosswalker Shrine##12579
	step //59
		goto 75.4,52.4
		.talk Mosswalker Victim##28113
		.' Rescue 6 Mosswalker Victims|goal 6 Mosswalker Victims Rescued|q 12580/1
	step //60
		'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
		.talk Moodle##28122
		..turnin The Mosswalker Savior##12580
	step //61
		goto 68.9,54.6
		.' Click Lifeblood Shards|tip They look like small red crystals on the ground around this area.
		.get 10 Lifeblood Shard|q 12579/1
	step //62
		'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
		.talk Moodle##28122
		..turnin Lifeblood of the Mosswalker Shrine##12579
	step //63
		goto 64.5,48.7
		.talk Avatar of Freya##27801
		..turnin Cultist Incursion##12608
		..turnin Salvaging Life's Strength##12805
		..accept Exterminate the Intruders##12617
		..accept Weapons of Destruction##12660
	step //64
		goto 57.5,41.1
		.kill 8 Cultist Infiltrator|q 12617/1
		.' Click the Unstable Explosives|tip The Unstable Explosives look like big metal spiked balls on the ground around this area.
		.' Destroy 4 Unstable Explosives|goal 4 Unstable Explosives destroyed|q 12660/1
	step //65
		goto 64.5,48.7
		.talk Avatar of Freya##27801
		..turnin Exterminate the Intruders##12617
		..turnin Weapons of Destruction##12660
		..accept The Lifewarden's Wrath##12620
	step //66
		goto 50.1,37.3
		.' Fly to the very top of this tall pillar
		.' Stand under the big floating structure
		.' Use Freya's Horn |use Freya's Horn##38684
		.' Release The Lifewarden's Wrath|goal The Lifewarden's Wrath|q 12620/1
	step //67
		goto 64.5,48.7
		.talk Avatar of Freya##27801
		..turnin The Lifewarden's Wrath##12620
		..accept Freya's Pact##12621
	step //68
		goto 64.5,48.7
		.talk Avatar of Freya##27801
		.' Ask her how you can help
		.get Freya's Pact|q 12621/1
	step //69
		goto 64.5,48.7
		.talk Avatar of Freya##27801
		..turnin Freya's Pact##12621
		..accept Powering the Waygate - The Maker's Perch##12559
	step //70
		'Hearth to Nesingwary Base Camp|goto Sholazar Basin,26.8,59.2,0.5|use Hearthstone##6948|noway|c
	step //71
		goto 28.4,39.1|n
		.' The path to Activation Switch Gamma starts here|goto 28.4,39.1,0.5|noway|c|tip It's a big balcony you'll have to fly to.
	step //72
		goto 26.2,35.5
		.' Click the Activations Switch Gamma|goal Activation Switch Gamma|q 12559/1|tip It looks like a rectangle upright control panel in the middle between 3 huge windows.
	step //73
		goto 64.5,48.7
		.talk Avatar of Freya##27801
		..turnin Powering the Waygate - The Maker's Perch##12559
		..accept Powering the Waygate - The Maker's Overlook##12613
	step //74
		goto 80.4,55.8
		.' Click the Timeworn Coffer|tip It's a big stone box sitting on the big balcony.
		..accept A Timeworn Coffer##12691
	step //75
		goto 89.1,52.9
		.' Click the Activation Switch Theta|goal Activation Switch Theta|q 12613/1|tip At the very end of the hallway, it's a rectangle upright control panel.
	step //76
		goto 80.3,54.9
		.kill Sholazar Guardians|n
		.get Huge Stone Key|q 12691/1
	step //77
		goto 80.4,55.8
		.' Click the Timeworn Coffer|tip It's a big stone box sitting on the big balcony.
		..turnin A Timeworn Coffer##12691
	step //78
		goto 64.5,48.7
		.talk Avatar of Freya##27801
		..turnin Powering the Waygate - The Maker's Overlook##12613
		..accept The Etymidian##12548
	step //79
		goto 40.3,82.9|n
		.' Stand inside the light to go through the Waygate|goto Un'Goro Crater|noway|c
	step //80
		goto Un'Goro Crater,47.4,9.2
		.talk The Etymidian##28092
		..turnin The Etymidian##12548
		..accept The Activation Rune##12547
	step //81
		'Go up the steps and into the tunnel to 48.2,2.5|goto 48.2,2.5
		.from High Cultist Herenn##28601
		.get Omega Rune|q 12547/1
	step //82
		goto 47.4,9.2
		.talk The Etymidian##28092
		..turnin The Activation Rune##12547
		..accept Back Through the Waygate##12797
	step //83
		goto 50.5,7.8|n
		.' Stand inside the light to go through the Waygate|goto Sholazar Basin|noway|c
	step //84
		goto Sholazar Basin,64.5,48.7
		.talk Avatar of Freya##27801
		..turnin Back Through the Waygate##12797
	step //85
		'Hearth to Nesingwary Base Camp|goto Sholazar Basin,26.8,59.2,0.1|use Hearthstone##6948|noway|c
	step //86
		'Fly to Dalaran|goto Dalaran|noway|c
	step //87
		goto Dalaran,35,45.3|n
		.' The path down to Rin Duoctane starts here|goto 35,45.3,0.4|noway|c
	step //88
		'Go into the sewer to 30.9,50.2|goto 30.9,50.2
		.talk Rin Duoctane##30490
		..accept Luxurious Getaway!##12853
	step //89
		goto 56.3,46.8
		.' Go back up to the top level of the city
		.' Click the Teleport to Violet Stand Crystal|goto Crystalsong Forest,15.8,42.8,0.1|noway|c|tip Downstrairs in a small room, it's a blue floating trianglular jewel.
	step //90
		'Go northeast to The Storm Peaks|goto The Storm Peaks|noway|c
	step //91
		goto The Storm Peaks,41,86.4
		.talk Jeer Sparksocket##29431
		..turnin Luxurious Getaway!##12853
		..accept Clean Up##12818
	step //92
		home K3
	step //93
		goto 41.1,86.1
		.talk Gretchen Fizzlespark##29473
		..accept They Took Our Men!##12843
		..accept Equipment Recovery##12844
	step //94
		goto 40.9,85.3
		.talk Ricket##29428
		..accept Reclaimed Rations##12827
		..accept Expression of Gratitude##12836
	step //95
		goto 40.8,84.5
		.talk Skizzle Slickslide##29721
		..fpath K3
	step //96
		goto 39.8,86.4
		.' Click the Charred Wreckage|tip They look like various metal parts on the ground around this area.
		.get 10 Charred Wreckage|q 12818/1
	step //97
		goto 35,83.8
		.kill Savage Hill gnolls|n
		.' Click Dried Gnoll Rations|tip The Dried Gnoll Rations crates look like wooden boxes sitting on the ground around this area.
		.get 16 Dried Gnoll Rations|q 12827/1
	step //98
		goto 30.3,85.7
		.kill Gnarlhide##30003|q 12836/1
	step //99
		goto 41,86.4
		.talk Jeer Sparksocket##29431
		..turnin Clean Up##12818
		..accept Just Around the Corner##12819
	step //100
		goto 40.9,85.3
		.talk Ricket##29428
		..turnin Reclaimed Rations##12827
		..turnin Expression of Gratitude##12836
		..accept Ample Inspiration##12828
	step //101
		goto 35.1,87.8
		.' Click Sparksocket's Tools|tip They look like a box of tools in the middle of the mine field.  Navigate carefully through the wide paths in the mine field to get here.  You may get blown around in order to get to this spot, but just keep trying.
		.get Sparksocket's Tools|q 12819/1
	step //102
		goto 41,86.4
		.talk Jeer Sparksocket##29431
		..turnin Just Around the Corner##12819
		..accept Slightly Unstable##12826
	step //103
		goto 40.9,85.3
		.talk Ricket##29428
		..turnin Slightly Unstable##12826
		..accept A Delicate Touch##12820
	step //104
		goto 43.1,81.2
		.' Use your Improved Land Mines to place mines on the ground close to each other|use Improved Land Mines##40676|tip Garm Invaders and Snowblind Followers will run over the mines and die.
		.kill 12 Garm Attackers|q 12820/1
	step //105
		goto 41.7,80
		.talk Tore Rumblewrench##29430
		..accept Moving In##12829
		..accept Ore Repossession##12830
	step //106
		goto 41.7,80
		.' Click the U.D.E.D. Dispenser next to Tore Rumblewrench|tip Standing next to some debris.
		.' Retrieve a bomb from the dispenser
		.collect U.D.E.D.##40686|q 12828
	step //107
		'HURRY HURRY to 43.9,79.0|goto 43.9,79.0
		.' Use your U.D.E.D. on an Ironwool Mammoth|use U.D.E.D.##40686|tip They walk around this area spread out.
		.' Click the Mammoth Meat on the ground
		.get 8 Hearty Mammoth Meat|q 12828/1
	step //108
		'Go into the cave to 40.4,77.8|goto 40.4,77.8
		.kill 12 Crystalweb Spiders|q 12829/1
	step //109
		goto 41.5,74.9
		.talk Injured Goblin Miner##29434
		..accept Only Partly Forgotten##12831
	step //110
		goto 44,75.9
		.kill Snowblind Diggers|n
		.get 5 Impure Saronite Ore|q 12830/1
	step //111
		goto 47.1,72.3
		.from Icetip Crawler##29461
		.get 1 Icetip Venom Sac|q 12831/1
	step //112
		goto 43.5,75.2
		.talk Injured Goblin Miner##29434
		..turnin Only Partly Forgotten##12831
		..accept Bitter Departure##12832
	step //113
		goto 43.5,75.2
		.talk Injured Goblin Miner##29434
		..'Tell the miner you're ready
		.' Escort the Injured Goblin Miner to K3|goal Escort the Injured Goblin Miner to K3.|q 12832/1
	step //114
		'Fly up to 39.8,73.3|goto 39.8,73.3
		.kill Sifreldar Storm Maidens|n
		.collect 5 Cold Iron Key##40641|n
		.' Click the Rusty Cages
		.' Free 5 Goblin Prisoners|goal 5 Goblin Prisoner freed|q 12843/1
		.' Click the K3 Equipment|tip The K3 Equipment looks like wooden crates on the ground around town.
		.get 8 K3 Equipment|q 12844/1
	step //115
		goto 41.7,80
		.talk Tore Rumblewrench##29430
		..turnin Moving In##12829
		..turnin Ore Repossession##12830
	step //116
		goto 40.9,85.3
		.talk Ricket##29428
		..turnin A Delicate Touch##12820
		..turnin Ample Inspiration##12828
		..turnin Bitter Departure##12832
		..accept Opening the Backdoor##12821
	step //117
		goto 41.1,86.1
		.talk Gretchen Fizzlespark##29473
		..turnin They Took Our Men!##12843
		..accept Leave No Goblin Behind##12846
		..turnin Equipment Recovery##12844
	step //118
		goto 45.1,82.4
		.' Click the Transporter Power Cell|tip It looks like a small red barrel.
		.get Transporter Power Cell|q 12821/2
	step //119
		goto 50.7,81.9
		.' Use your Transporter Power Cell next to the Teleportation Pad|use Transporter Power Cell##40731|tip It looks like a tall machine with a fan in the bottom of it.
		.' Activate the Garm Teleporter|goal Garm Teleporter Activated|q 12821/1
	step //120
		goto 40.9,85.3
		.talk Ricket##29428
		..turnin Opening the Backdoor##12821
		..accept Know No Fear##12822
	step //121
		goto 50.0,81.8
		.talk Gino##29432
		..accept A Flawless Plan##12823
	step //122
		'Go inside the cave to 50.5,77.8|goto 50.5,77.8
		.' Use your Hardpacked Explosive Bundle next to Frostgut's Altar|use Hardpacked Explosive Bundle##41431|tip It's a stone altar with a bunch of melted red candles on it.  Follow the path in the cave that spirals up all the way to the top of the cave to find it.
		.kill Tormar Frostgut|q 12823/2
	step //123
		goto 48.1,81.9
		.kill 6 Garm Watcher|q 12822/1
		.kill 8 Snowblind Devotee|q 12822/2
	step //124
		'Go outside and go to 50.0,81.8|goto 50.0,81.8
		.talk Gino##29432
		..turnin A Flawless Plan##12823
		..accept Demolitionist Extraordinaire##12824
	step //125
		Fly up into the cave to 42.8,68.9|goto 42.8,68.9
		.talk Lok'lira the Crone##29481
		..turnin Leave No Goblin Behind##12846
		..accept The Crone's Bargain##12841
	step //126
		goto 44.2,68.9
		.from Overseer Syra##29518
		.get 1 Runes of the Yrkvinn|q 12841/1
	step //127
		goto 42.8,68.9
		.talk Lok'lira the Crone##29481
		..turnin The Crone's Bargain##12841
		..accept Mildred the Cruel##12905
	step //128
		goto 44.4,68.9
		.talk Mildred the Cruel##29885
		..turnin Mildred the Cruel##12905
		..accept Discipline##12906
	step //129
		goto 44.8,70.3
		.' Use your Disciplining Rod on Exhausted Vrykul|use Disciplining Rod##42837|tip They are sitting on the ground inside these side tunnels inside this mine.
		.' Discipline 6 Exhausted Vrykul|goal 6 Exhausted Vrykul Disciplined|q 12906/1
	step //130
		goto 44.4,68.9
		.talk Mildred the Cruel##29885
		..turnin Discipline##12906
		..accept Examples to be Made##12907
	step //131
		goto 45.4,69.1
		.kill 1 Garhal##30147|q 12907/1
	step //132
		goto 44.4,68.9
		.talk Mildred the Cruel##29885
		..turnin Examples to be Made##12907
		..accept A Certain Prisoner##12908
	step //133
		goto 42.8,68.9
		.talk Lok'lira the Crone##29481
		..turnin A Certain Prisoner##12908
		..accept A Change of Scenery##12921
	step //134
		'Follow the path in the mine east out to the other side to 47.5,69.1|goto 47.5,69.1
		.talk Lok'lira the Crone##29975
		..turnin A Change of Scenery##12921
		..accept Is That Your Goblin?##12969
	step //135
		goto 48.2,69.8
		.talk Agnetta Tyrsdottar##30154
		..'Tell her to skip the warmup
		.kill 1 Agnetta Tyrsdottar|q 12969/1
	step //136
		goto 47.5,69.1
		.talk Lok'lira the Crone##29975
		..turnin Is That Your Goblin?##12969
		..accept The Hyldsmeet##12970
	step //137
		goto 47.5,69.1
		.talk Lok'lira the Crone##29975
		..'Ask her about her proposal
		.' Listen to Lok'lira's proposal|goal Listen to Lok'lira's proposal|q 12970/1
	step //138
		goto 47.5,69.1
		.talk Lok'lira the Crone##29975
		..turnin The Hyldsmeet##12970
		..accept Taking on All Challengers##12971
	step //139
		goto 51,66.4
		.talk Victorious Challenger##30012
		.kill 6 Victorious Challenger|q 12971/1
	step //140
		goto 47.5,69.1
		.talk Lok'lira the Crone##29975
		..turnin Taking on All Challengers##12971
		..accept You'll Need a Bear##12972
	step //141
		goto 48.4,72.1
		.talk Iva the Vengeful##29997
		..accept Off With Their Black Wings##12942
		..accept Yulda's Folly##12968
	step //142
		goto 48.4,72.1
		.talk Thyra Kvinnshal##30041
		..accept Aberrations##12925
	step //143
		goto 53.1,65.7
		.talk Brijana##29592
		..turnin You'll Need a Bear##12972
		..accept Going Bearback##12851
	step //144
		goto 53.1,65.7
		.' Click Icefang to ride him|tip Standing down the hill, Icefang is a white bear.
		.' While riding Icefang, use the Flaming Arrow ability on your hotbar to shoot arrows at the Frostworgs and Frost Giants|petaction Flaming Arrow
		.' Burn 7 Frostworgs|goal 7 Frostworgs Burned|q 12851/1
		.' Burn 15 Frost Giants|goal 15 Frost Giants Burned|q 12851/2
	step //145
		goto 53.1,65.7
		.talk Brijana##29592
		..turnin Going Bearback##12851
		..accept Cold Hearted##12856
	step //146
		'Fly to 63.9,62.5|goto 63.9,62.5
		.' Click the Captive Proto-Drakes to ride them|tip The Captive Proto-Drakes are chained up flying in the sky.
		.' Use your Ice Shard ability on the Brunnhildar Prisoners|petaction Ice Shard|tip The Brunnhildar Prisoners look like blue blocks of ice around this area on the ground.
		.' When your Proto-Drake is holding 3 Brunnhildar Prisoners, start flying toward Brunnhildar Village, the drake will eventually go on autopilot.  Repeat this process 2 more times.
		.' Rescue 9 Brunnhildar Prisoners|goal 9 Rescued Brunnhildar Prisoners|q 12856/1
		.' Free 3 Proto-Drakes|goal 3 Freed Proto-Drakes|q 12856/2
	step //147
		goto 53.1,65.7
		.talk Brijana##29592
		..turnin Cold Hearted##12856
		..accept Deemed Worthy##13063
	step //148
		goto 49.7,71.8
		.talk Astrid Bjornrittar##29839
		..turnin Deemed Worthy##13063
		..accept Making a Harness##12900
	step //149
		goto 47.9,74.7
		.kill Icemane Yetis|n
		.get 3 Icemane Yeti Hide|q 12900/1
	step //150
		goto 49.7,71.8
		.talk Astrid Bjornrittar##29839
		..turnin Making a Harness##12900
		..accept The Last of Her Kind##12983
		..accept The Slithering Darkness##12989
	step //151
		ding 79
	step //152
		goto 55.8,63.9
		.'Kill 8 Ravenous Jormungar inside this cave|kill 8 Ravenous Jormungar|q 12989/1
	step //153
		'Follow the path in the cave to 54.8,60.4|goto 54.8,60.4
		.' Click the Injured Icemaw Matriarch|tip She's a big white bear laying on the ground inside this cave.
		.' The bear runs back to Brunnhildar Village
		.' Rescue the Icemaw Matriarch|goal Icemaw Matriarch Rescued|q 12983/1
	step //154
		goto 49.7,71.8
		.talk Astrid Bjornrittar##29839
		..turnin The Last of Her Kind##12983
		..accept The Warm-Up##12996
		..turnin The Slithering Darkness##12989
	step //155
		'Use your Reins of the Warbear Matriarch outside the building to ride a bear|invehicle|c|use Reins of the Warbear Matriarch##42481
	step //156
		goto 50.8,67.7
		.' Use the abilities on your hotbar to fight Kirgaraak|tip He's a big white yeti.
		.' Defeat Kirgaraak|goal Kirgaraak Defeated|q 12996/1
	step //157
		'Click the red arrow to get off the bear|script VehicleExit()|outvehicle|c
	step //158
		goto 49.7,71.8
		.talk Astrid Bjornrittar##29839
		..turnin The Warm-Up##12996
		..accept Into the Pit##12997
	step //159
		goto 49.1,69.4
		.' Use your Reins of the Warbear Matriarch inside The Pit of the Fang to ride a bear|use Reins of the Warbear Matriarch##42499
		.' Use the abilities on your hotbar to fight Hyldsmeet Warbears
		.kill 6 Hyldsmeet Warbear|q 12997/1
	step //160
		'Click the red arrow to get off the bear|script VehicleExit()|outvehicle|c
	step //161
		goto 49.7,71.8
		.talk Astrid Bjornrittar##29839
		..turnin Into the Pit##12997
		..accept Prepare for Glory##13061
	step //162
		goto 47.5,69.1
		.talk Lok'lira the Crone##29975
		..turnin Prepare for Glory##13061
		..accept Lok'lira's Parting Gift##13062
	step //163
		goto 50.9,65.6
		.talk Gretta the Arbiter##29796
		..turnin Lok'lira's Parting Gift##13062
		..accept The Drakkensryd##12886
	step //164
		'You fly off on a drake and start flying in circles around a tower:
		.' Use your Hyldnir Harpoon in your bags on Hyldsmeet Proto-Drakes to harpoon over to a new drake|use Hyldnir Harpoon##41058
		.kill Hyldsmeet Drakeriders|n
		.' Repeat this process 9 more times
		.' Defeat 10 Hyldsmeet Drakeriders|goal 10 Hyldsmeet Drakerider Defeated|q 12886/1
	step //165
		'They look like light fixtures on the side of the stone columns.
		.' Use your Hyldnir Harpoon in your bags on a Column Ornament to get off the drake|outvehicle|c|use Hyldnir Harpoon##41058
	step //166
		goto 33.4,58
		.talk Thorim##29445
		..turnin The Drakkensryd##12886
		..accept Sibling Rivalry##13064
	step //167
		goto 33.4,58
		.talk Thorim##29445
		..'Ask him what became of Sif
		.' Hear Thorim's History|goal Thorim's History Heard|q 13064/1
	step //168
		goto 33.4,58
		.talk Thorim##29445
		..turnin Sibling Rivalry##13064
		..accept Mending Fences##12915
	step //169
		goto 27.3,63.7
		.kill 12 Nascent Val'kyr|q 12942/1
		.kill Valkyrion Aspirants|n
		.collect 6 Vial of Frost Oil##41612|q 12925
	step //170
		goto 23.7,58.3
		.' Use your Vials of Frost Oil on the Plagued Proto-Drake Eggs|use Vial of Frost Oil##41612|tip They look like brown spiked eggs sitting in the yellow water around this area.
		.' Try to get 6 at a time
		.' Destroy 30 Plagued Proto-Drake Eggs|goal 30 Plagued Proto-Drake Egg|q 12925/1
	step //171
		goto 24,61.8
		.kill 1 Yulda the Stormspeaker|q 12968/1|tip Yulda the Stormspeaker is standing inside this house.
		.' Click the Harpoon Crate|tip The Harpoon Crate looks like a huge square chest.
		..accept Valkyrion Must Burn##12953
	step //172
		goto 26,59.8
		.' Click the Valkyrion Harpoon Guns|tip They look like bronze dragon guns.
		.' Use the Flaming Harpoon abilitiy on your hotbar to shoot the tan bundles of straw near buildings and in wagons around this area|petaction Flaming Harpoon
		.' Start 6 Fires|goal 6 Fires Started|q 12953/1
	step //173
		'Click the red arrow to get off the gun|script VehicleExit()|outvehicle|c
	step //174
		'Hearth to K3|goto The Storm Peaks,41.0,85.9,0.5|use Hearthstone##6948|noway|c
	step //175
		goto 40.9,85.3
		.talk Ricket##29428
		..turnin Demolitionist Extraordinaire##12824
		..turnin Know No Fear##12822
		..accept Overstock##12833
	step //176
		goto 43.1,81.2
		.' Use your Improved Land Mines to place mines on the ground close to each other|use Improved Land Mines##40676|tip Garm Invaders and Snowblind Followers will run over the mines and die.
		.kill 12 Garm Invader|q 12833/1
	step //177
		goto 40.9,85.3
		.talk Ricket##29428
		..turnin Overstock##12833
	step //178
		goto 48.4,72.1
		.talk Thyra Kvinnshal##30041
		..turnin Aberrations##12925
	step //179
		goto 48.4,72.1
		.talk Iva the Vengeful##29997
		..turnin Off With Their Black Wings##12942
		..turnin Yulda's Folly##12968
		..turnin Valkyrion Must Burn##12953
	step //180
		goto 75.8,63
		.' Click the Granite Boulders and get them 1 at a time|tip The Granite Boulders look like big grey rocks on the ground around this area.
		.' Use Thorim's Charm of Earth on the Stormforged Iron Giants|use Thorim's Charm of Earth##41505
		.' Help the dwarves kill them
		.kill 5 Stormforged Iron Giant|q 12915/2
		.collect Slag Covered Metal##41556 |q 12922 |future |n
		.use Slag Covered Metal##41556
		..accept The Refiner's Fire##12922
	step //181
		goto 75.4,63.5
		.from Seething Revenants
		.get 10 Furious Spark|q 12922/1
	step //182
		goto 77.2,62.9
		.' Click a Granite Boulder and get one
		.' Use Thorim's Charm of Earth on Fjorn|use Thorim's Charm of Earth##41505|tip He's a huge fire giant, holding a huge smithing hammer.
		.' Help the dwarves kill him
		.kill Fjorn|q 12915/1
	step //183
		goto 77.2,62.9
		.' Click Fjorn's Anvil|tip Fjorn's Anvil is a huge anvil.
		..turnin The Refiner's Fire##12922
		..accept A Spark of Hope##12956
	step //184
		goto 33.4,58
		.talk Thorim##29445
		..turnin A Spark of Hope##12956
		..turnin Mending Fences##12915
		..accept Forging an Alliance##12924
	step //185
		goto 62.6,60.9
		.talk Halvdan##32571
		..fpath Dun Niffelem
	step //186
		goto 65.4,60.2
		.talk King Jokkum##30105
		..accept You Can't Miss Him##12966
	step //187
		goto 75.4,63.6
		.talk Njormeld##30099
		..turnin You Can't Miss Him##12966
		..accept Battling the Elements##12967
	step //188
		goto 75.7,63.9
		.' Click Snorri to accompany on him|invehicle|c|tip Standing on the side of the road.
	step //189
		goto 76.7,63.4
		.' Use the Gather Snow ability on your hotbar to gather snow from Snowdrifts|petaction Gather Snow|tip The Snowdrifts look like piles of snow on the ground.
		.' Use the Throw Snowball ability on your hotbar to throw the snow at Seething Revenants|petaction Throw Snowball
		.kill 10 Seething Revenant|q 12967/1
	step //190
		'Click the red arrow on your hotbar to leave Snorri|script VehicleExit()|outvehicle|c
	step //191
		goto 75.4,63.6
		.talk Njormeld##30099
		..turnin Battling the Elements##12967
	step //192
		goto 63.2,63.2
		.talk Njormeld##30127
		..turnin Forging an Alliance##12924
		..accept A New Beginning##13009
	step //193
		goto 63.2,62.9
		.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
		..accept Hot and Cold##12981
	step //194
		goto 65.4,60.2
		.talk King Jokkum##30105
		..accept In Memoriam##12975
	step //195
		goto 69.7,60.2
		.kill Brittle Revenants|n
		.collect 6 Essence of Ice##42246 |q 12981
	step //196
		goto 75.3,62.8
		.' Use your Essences of Ice next to Smoldering Scraps|use Essence of Ice##42246
		.' Click the Frozen Iron Scraps|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
		.get 6 Frozen Iron Scrap|q 12981/1
	step //197
		goto 72.1,49.4
		.' Click the Horn Fragments|tip The Horn Fragments look like grey scraps on the ground around this area.
		.get 8 Horn Fragment|q 12975/1
	step //198
		goto 65.4,60.2
		.talk King Jokkum##30105
		..turnin In Memoriam##12975
		..accept A Monument to the Fallen##12976
	step //199
		goto 63.2,63.2
		.talk Njormeld##30127
		..turnin A Monument to the Fallen##12976
	step //200
		goto 63.2,62.9
		.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
		..turnin Hot and Cold##12981
	step //201
		goto 64.1,65.1
		.' Click Hodir's Horn|tip It's a huge bone war horn.
		..accept Blowing Hodir's Horn##12977
	step //202
		goto 72.1,51.8
		.kill Niffelem Forefathers and Restless Frostborn Ghosts|n
		.' Use Hodir's Horn on their corpses|use Hodir's Horn##42164
		.' Free 5 Niffelem Forefathers|goal 5 Niffelem Forefather freed|q 12977/1
		.' Free 5 Restless Frostborn|goal 5 Restless Frostborn freed|q 12977/2
	step //203
		goto 64.1,65.1
		.' Click Hodir's Horn|tip It's a huge bone war horn.
		..turnin Blowing Hodir's Horn##12977
	step //204
		goto 63.2,63.2
		.talk Njormeld##30127
		..accept Forging a Head##12985
	step //205
		goto 65.4,60.2
		.talk King Jokkum##30105
		..accept Jormuttar is Soo Fat...##13011
	step //206
		goto 69.7,58.9
		.' Use your Diamond Tipped Pick on Dead Iron Giants|use Diamond Tipped Pick##42424
		.kill the Stormforged Ambushers that spawn|n
		.get 8 Stormforged Eye|q 12985/1
	step //207
		goto 63.2,63.2
		.talk Njormeld##30127
		..turnin Forging a Head##12985
		..accept Mounting Hodir's Helm##12987
	step //208
		goto 64.3,59.2
		.' Fly to the tip of this ice spike
		.' Use the Tablets of Pronouncement in your bags|use Tablets of Pronouncement##42442
		.' Mount Hodir's Helm|goal Hodir's Helm Mounted|q 12987/1
	step //209
		goto 63.2,63.2
		.talk Njormeld##30127
		..turnin Mounting Hodir's Helm##12987
	step //210
		goto 64.2,59.2
		.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
		..accept Polishing the Helm##13006
	step //211
		goto 55.6,63.4
		.kill Viscous Oils inside this cave|n
		.get 5 Viscous Oil|q 13006/1
		.' Use your Everfrost Razor on Dead Icemaw Bears|use Everfrost Razor##42732
		.collect 1 Icemaw Bear Flank##42733|q 13011
	step //212
		goto 54.7,60.8
		.' Follow the path inside the cave to this spot
		.' Use your Icemaw Bear Flank while standing on the small frozen pond with a bunch of rocks on it|use Icemaw Bear Flank##42733
		.kill 1 Jormuttar|q 13011/1
	step //213
		'Go outside and go to 33.4,58|goto 33.4,58
		.talk Thorim##29445
		..turnin A New Beginning##13009
		..accept Veranus##13050
	step //214
		goto 43.7,67.4
		.' Click the Small Proto-Drake Eggs|tip They are big spiked brown eggs on top of this mountain in a nest.
		.get 5 Small Proto-Drake Egg|q 13050/1
		.' You can find more Small Proto-Drake Eggs at 45.2,66.9|n
	step //215
		goto 33.4,58
		.talk Thorim##29445
		..turnin Veranus##13050
		..accept Territorial Trespass##13051
	step //216
		goto 38.7,65.6
		.' Stand in this big nest
		.' Click the Stolen Proto-Dragon Eggs in your bags|use Stolen Proto-Dragon Eggs##42797
		.' Lure Veranus|goal Veranus Lured|q 13051/1
	step //217
		goto 33.4,58
		.talk Thorim##29445
		..turnin Territorial Trespass##13051
		..accept Krolmir, Hammer of Storms##13010
	step //218
		goto 64.2,59.2
		.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
		..turnin Polishing the Helm##13006
	step //219
		goto 65.4,60.2
		.talk King Jokkum##30105
		..turnin Jormuttar is Soo Fat...##13011
	step //220
		goto 65.4,60.2
		.talk King Jokkum##30105
		..'Ask him what has become of Krolmir
		.' Discover Krolmir's Fate|goal Krolmir's Fate Discovered|q 13010/1
	step //221
		goto 71.4,48.8
		.talk Thorim##30390
		..turnin Krolmir, Hammer of Storms##13010
		..accept The Terrace of the Makers##13057
	step //222
		goto 56.3,51.4
		.talk Thorim##30295
		..turnin The Terrace of the Makers##13057
		..accept The Earthen Oath##13005
		..accept Loken's Lackeys##13035
	step //223
		goto 57.3,46.7
		.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
		.' Fight mobs around this area
		.kill 7 Iron Sentinel|q 13005/1
		.kill 20 Iron Dwarf Assailant|q 13005/2
	step //224
		'Fly up into the building to 55.3,43.3|goto 55.3,43.3
		.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
		.kill Eisenfaust|q 13035/1|tip He's inside this Hall of the Shaper building in the very back of the room.
	step //225
		goto 48.6,45.6
		.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
		.kill Halefnir the Windborn|q 13035/2|tip Standing in the middle of this huge staircase.
	step //226
		goto 45,38.1
		.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
		.kill Duronn the Runewrought|q 13035/3|tip Standing at the bottom of this huge staircase.
	step //227
		goto 56.3,51.4
		.talk Thorim##30295
		..turnin The Earthen Oath##13005
		..turnin Loken's Lackeys##13035
		..accept The Reckoning##13047
	step //228
		goto 35.9,31.5
		.talk Thorim##30399
		..'Tell him you are with him
		.' Witness the Reckoning|goal Witness the Reckoning|q 13047/1
	step //229
		goto 65.4,60.2
		.talk King Jokkum##30105
		..turnin The Reckoning##13047
	step //230
		goto 40.9,85.3
		.talk Ricket##29428
		..accept When All Else Fails##12862
	step //231
		goto 40.9,85.3
		.talk Ricket##29428
		..'Tell her you are ready to head further into Storm Peaks
		.'You will fly to Frosthold|goto 28.6,74.6,0.5|noway|c
	step //232
		goto 29.5,74.3
		.talk Faldorf Bitterchill##29750
		..fpath Frosthold
	step //233
		goto 29.5,74.1
		.talk Archaeologist Andorin##29650
		..accept On Brann's Trail##12854
	step //234
		goto 29.4,73.8
		.talk Lagnus##29743
		..accept Offering Thanks##12863
	step //235
		goto 28.8,74.1
		.talk Rork Sharpchin##29744
		..turnin When All Else Fails##12862
		..accept Ancient Relics##12870
	step //236
		goto 28.7,74.4
		home Frosthold
	step //237
		goto 29.2,74.9
		.talk Glorthal Stiffbeard##29727
		..turnin Offering Thanks##12863
		..accept Missing Scouts##12864
	step //238
		goto 29.8,75.7
		.talk Fjorlin Frostbrow##29732
		..accept Loyal Companions##12865
	step //239
		goto 36.4,77.3
		.talk the Frostborn Scout##29811
		..'Ask him if he is okay
		.' Locate the Missing Scout|goal Locate Missing Scout|q 12864/1
	step //240
		goto 46.5,68.3
		.kill Vrykuls|n|tip Inside this mine.
		.' Get 10 Relics of Ulduar|goal 10 Relic of Ulduar|q 12870/1
	step //241
		'Go outside to 44.5,60.4|goto 44.5,60.4
		.kill Ice Steppe Rhinos|n
		.collect 8 Fresh Ice Rhino Meat##41340|q 12865
	step //242
		goto 36.1,64.1
		.' Click the Disturbed Snow|tip It's a pile of snow on the ground.
		.get Burlap-Wrapped Note|q 12854/1
	step //243
		goto 33.2,73.7
		.' Use your Fresh Ice Rhino Meat on Stormcrest Eagles at the top of this mountain|use Fresh Ice Rhino Meat##41340
		.' Feed 8 Stormcrest Eagles|goal 8 Stormcrest Eagles fed|q 12865/1
	step //244
		goto 29.5,74.1
		.talk Archaeologist Andorin##29650
		..turnin On Brann's Trail##12854
		..accept Sniffing Out the Perpetrator##12855
	step //245
		goto 28.8,74.1
		.talk Rork Sharpchin##29744
		..turnin Ancient Relics##12870
	step //246
		goto 29.2,74.9
		.talk Glorthal Stiffbeard##29727
		..turnin Missing Scouts##12864
		..accept Stemming the Aggressors##12866
	step //247
		goto 29.8,75.7
		.talk Fjorlin Frostbrow##29732
		..turnin Loyal Companions##12865
		..accept Baby Stealers##12867
	step //248
		goto 33,66.8
		.' Click Eagle Eggs on the ground|tip They look like white eggs sitting on the ground around this area, usually next to trees.
		.get 15 Stormcrest Eagle Egg|q 12867/1
		.kill 8 Frostfeather Screecher|q 12866/1
		.kill 8 Frostfeather Witch|q 12866/2
	step //249
		goto 36.4,64.1
		.' Use the Frosthound's Collar in your bags next to this broken down tent|use Frosthound's Collar##41430
		.' Use the abilities on your hotbar to keep the dwarves away from you
		.' Track down the thief|goal Track down thief|q 12855/1
	step //250
		goto 48.5,60.8
		.kill Tracker Thulin|q 12855/2|tip He's sitting on the ground inside this small cave.
		.collect Brann's Communicator##40971|q 12871
	step //251
		'Use Brann's Communicator in your bags|use Brann's Communicator##40971
		.talk Brann Bronzebeard##29579
		..turnin Sniffing Out the Perpetrator##12855
		..accept Pieces to the Puzzle##12858
	step //252
		goto 37.6,43.5
		.kill Library Guardians|n
		.collect 6 Inventor's Disk Fragment##41130|n
		.' Click the Inventor's Disk Fragments in your bags to combine them|use Inventor's Disk Fragment##41130
		.get The Inventor's Disk|q 12858/1
	step //253
		'Use Brann's Communicator in your bags|use Brann's Communicator##40971
		.talk Brann Bronzebeard##29579
		..turnin Pieces to the Puzzle##12858
		..accept Data Mining##12860
	step //254
		goto 38.5,44.2
		.' Use The Inventor's Disk on Databanks|use The Inventor's Disk##41179|tip They look like floating round star things.
		.' Gather 7 Hidden Data|goal 7 Hidden Data gathered|q 12860/1
	step //255
		'Use Brann's Communicator in your bags|use Brann's Communicator##40971
		.talk Brann Bronzebeard##29579
		..turnin Data Mining##12860
		..accept The Library Console##13415
	step //256
		goto 37.4,46.8
		.' Click the Inventor's Library Console|tip Inside the building, all the way at the end of the hall.
		..turnin The Library Console##13415
		..accept Norgannon's Shell##12872
	step //257
		'Click the Charged Disk in your bags|use Charged Disk##44704
		.kill Archivist Mechaton that spawns|n
		.get Norgannon's Shell|q 12872/1
	step //258
		'Use Brann's Communicator in your bags|use Brann's Communicator##40971
		.talk Brann Bronzebeard##29579
		..turnin Norgannon's Shell##12872
		..accept Aid from the Explorers' League##12871
		..accept The Exiles of Ulduar##12885
	step //259
		goto 30.6,36.3
		.talk Breck Rockbrow##29950
		..fpath Bouldercrag's Refuge
	step //260
		'Go inside the building to 31.4,38.1|goto 31.4,38.1
		.talk Bouldercrag the Rockshaper##29801
		..turnin The Exiles of Ulduar##12885
		..accept Rare Earth##12930
	step //261
		'Hearth to Frosthold|goto The Storm Peaks,28.7,74.4,0.5|use Hearthstone##6948|noway|c
	step //262
		goto 29.4,73.8
		.talk Lagnus##29743
		..turnin Aid from the Explorers' League##12871
		..accept The Frostborn King##12873
	step //263
		goto 29.2,74.9
		.talk Glorthal Stiffbeard##29727
		..turnin Stemming the Aggressors##12866
	step //264
		goto 29.8,75.7
		.talk Fjorlin Frostbrow##29732
		..turnin Baby Stealers##12867
	step //265
		goto 30.31,74.8
		.talk Yorg Stormheart##29593
		..turnin The Frostborn King##12873
		..accept Fervor of the Frostborn##12874
	step //266
		goto 29.8,75.7
		.talk Fjorlin Frostbrow##29732
		..'Tell him you are ready for your test|goto The Storm Peaks,53.5,35.1,0.5|c
	step //267
		goto 53.6,35.1
		.' Click the Battered Storm Hammer|tip It's a big hammer on the ground next to a dead body.
		.collect Battered Storm Hammer##42624|q 12874
	step //268
		goto 53.5,37.9
		.' Use your Battered Storm Hammer on The Iron Watcher repeatedly|use Battered Storm Hammer##42624
		.' While he is stuned, run away so the Hammer can recharge
		.' When his health is low enough, he will run to the end of the bridge. Throw your hammer one last time and he will fall off
		.kill The Iron Watcher|q 12874/1
	step //269
		goto 30.31,74.8
		.talk Yorg Stormheart##29593
		..turnin Fervor of the Frostborn##12874
		..accept An Experienced Guide##12875
	step //270
		goto 29.8,75.7
		.talk Fjorlin Frostbrow##29732
		..accept Unwelcome Guests##12876
	step //271
		goto 27.0,66.9|n
		.' The path to An Experienced Guide and Unwelcome Guests starts here|goto The Storm Peaks,27.0,66.9,0.2|noway|c
	step //272
		goto 26.3,66.7
		.kill Stormforged mobs inside this cave|n
		.kill 10 Stormforged Invaders|q 12876/1
		.get 5 Frostweave Cloth|q 12930/2
	step //273
		goto 25.2,68.5
		.talk Drom Frostgrip##29751
		..turnin An Experienced Guide##12875
		..accept The Lonesome Watcher##12877
	step //274
		'Go outside to 27.1,67.3|goto 27.1,67.3
		.from the Stormforged Monitor##29862
		.get Frostgrip's Signet Ring|q 12877/1
	step //275
		goto 39.6,59.8
		.talk Creteus##30052
		..turnin The Lonesome Watcher##12877
		..accept Fate of the Titans##12986
	step //276
		'Fly to the top of this temple to 52.6,56.9|goto 52.6,56.9
		.' Use Creteus's Mobile Databank at the top of this temple|use Creteus's Mobile Databank##42679
		.' Investigate the Temple of Winter|goal Temple of Winter Investigated|q 12986/2
	step //277
		goto 64.3,46.7
		.' Use Creteus's Mobile Databank in this broken temple|use Creteus's Mobile Databank##42679
		.' Investigate the Temple of Life|goal Temple of Life Investigated|q 12986/3
	step //278
		'Fly to the top of this temple to 53.5,42.3|goto 53.5,42.3
		.' Use Creteus's Mobile Databank Databank at the top of this temple|use Creteus's Mobile Databank##42679
		.' Investigate the Temple of Order|goal Temple of Order Investigated|q 12986/4
	step //279
		'Fly to the top of this temple to 45.6,49.2|goto 45.6,49.2
		.' Use Creteus's Mobile Databank Databank at the top of this temple|use Creteus's Mobile Databank##42679
		.' Investigate the Temple of Invention|goal Temple of Invention Investigated|q 12986/1
	step //280
		goto 39.6,59.8
		.talk Creteus##30052
		..turnin Fate of the Titans##12986
		..accept The Hidden Relic##12878
	step //281
		goto 41.5,62.1|n
		.' The path to The Hidden Relic starts here|goto The Storm Peaks,41.5,62.1,0.2|noway|c
	step //282
		'Go inside the cave to 44.5,64.5|goto 44.5,64.5
		.' Click The Guardian's Charge|tip It's at the very lowest level of the cave.
		..turnin The Hidden Relic##12878
		..accept Fury of the Frostborn King##12879
	step //283
		'Go outside the cave to 38.2,61.7|goto 38.2,61.7
		.talk Creteus##30082
		..turnin Fury of the Frostborn King##12879
		..accept The Master Explorer##12880
	step //284
		goto 39.6,56.4
		.talk Brann Bronzebeard##30382
		..turnin The Master Explorer##12880
		..accept The Brothers Bronzebeard##12973
	step //285
		'Click Brann's Flying Machine next to you
		.kill the dwarves that jump on the plane as you fly|n
		.' Accompany Brann Bronzebeard to Frosthold|goal Accompany Brann Bronzebeard to Frosthold. |q 12973/1
	step //286
		goto 30.3,74.8
		.talk Velog Icebellow##30401
		..turnin The Brothers Bronzebeard##12973
	step //287
		goto 29.8,75.7
		.talk Fjorlin Frostbrow##29732
		..turnin Unwelcome Guests##12876
		..accept Pushed Too Far##12869
	step //288
		goto 44.6,59.8
		.' Use the abilities on your hotbar to fight Stormpeak Wyrms flying in the air around this area
		.kill 16 Stormpeak Wyrm|q 12869/1
	step //289
		goto 29.8,75.7
		.' Click the red arrow on your hotbar to get off the eagle|script VehicleExit()
		.talk Fjorlin Frostbrow##29732
		..turnin Pushed Too Far##12869
	step //290
		goto 28.3,29.4
		.' Click the Enchanted Earth|tip They look like big black spikes of rock coming out of the ground at the bottom of this cliff, near the water and all along the cliffside.
		.get 7 Enchanted Earth|q 12930/1
	step //291
		'Go inside the building to 31.4,38.1|goto 31.4,38.1
		.talk Bouldercrag the Rockshaper##29801
		..turnin Rare Earth##12930
		..accept Fighting Back##12931
		..accept Relief for the Fallen##12937
	step //292
		home Bouldercrag's Refuge
	step //293
		goto 28.1,36.7
		.kill Stormforged Raiders and Stormforged Reavers|n
		.kill 10 Stormforged Attacker|q 12931/1
		.' Use your Telluric Poultice on Fallen Earthen Defenders|use Telluric Poultice##41988
		.' Heal 8 Fallen Earthen Defenders|goal 8 Fallen Earthen Defenders healed|q 12937/1
	step //294
		'Go inside the building to 31.4,38.1|goto 31.4,38.1
		.talk Bouldercrag the Rockshaper##29801
		..turnin Fighting Back##12931
		..turnin Relief for the Fallen##12937
		..accept Slaves of the Stormforged##12957
		..accept The Dark Ore##12964
	step //295
		'Go inside the mine to 27.5,49.7|goto 27.5,49.7
		.kill 3 Stormforged Taskmaster|q 12957/2
		.talk Captive Mechagnome##29384
		.' Attempt to free 8 Captive Mechagnomes|goal 8 Attempt to free Captive Mechagnome|q 12957/1
		.' Click Ore Carts|tip They look like carts with ore in them.
		.get 5 Dark Ore Sample|q 12964/1
	step //296
		'Go outside and inside the building to 31.4,38.1|goto 31.4,38.1
		.talk Bouldercrag the Rockshaper##29801
		..turnin Slaves of the Stormforged##12957
		..turnin The Dark Ore##12964
		..accept The Gifts of Loken##12965
	step //297
		goto 31.3,38.2
		.talk Bruor Ironbane##30152
		..accept Facing the Storm##12978
	step //298
		goto 24,42.6
		.' Right-click Loken's Fury|tip It looks like a glowing ball on a pedestal inside this building.
		.' Destroy Loken's Fury|goal Loken's Fury destroyed|q 12965/1
	step //299
		goto 26.2,47.7
		.' Right-click Loken's Power|tip It looks like a glowing ball on a pedestal inside this building.
		.' Destroy Loken's Power|goal Loken's Power destroyed|q 12965/2
	step //300
		goto 24.6,48.4
		.' Right-click Loken's Favor|tip It looks like a glowing ball on a pedestal inside this building.
		.' Destroy Loken's Favor|goal Loken's Favor destroyed|q 12965/3
	step //301
		goto 25,42.9
		.kill Stormforged mobs|n
		.kill 10 Nidavelir Stormforged|q 12978/1
	step //302
		'Go inside the building to 31.4,38.1|goto 31.4,38.1
		.talk Bouldercrag the Rockshaper##29801
		..turnin The Gifts of Loken##12965
	step //303
		goto 31.3,38.2
		.talk Bruor Ironbane##30152
		..turnin Facing the Storm##12978
	step //304
		ding 80
	step //305
		'Congratulations, you are now level 80!
	step //
		'Fly to Area 52 |goto Netherstorm,33.9,63.9,0.5 |c
]])
--TRIAL ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Main Guide (13-20)",[[
--TRIAL 	author support@zygorguides.com
--TRIAL 	step //1
--TRIAL 		' Thank you for trying the Zygor Guides Version 2.0 Leveling Guides Demo.  Please visit ZygorGuides.com to purchase the complete in-game Version 2.0 leveling guides.  Take care
--TRIAL 		level 13
--TRIAL ]])
ZygorGuidesViewer.AllianceInstalled=true --!TRIAL
