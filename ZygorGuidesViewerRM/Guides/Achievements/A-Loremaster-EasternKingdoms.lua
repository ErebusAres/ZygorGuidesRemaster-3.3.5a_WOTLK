local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Eastern Kingdoms\\[Beta] Stormwind City",[[
author danaton
description Coming Soon
startlevel 60
		step
			goto Stormwind City,63.8,73.6
			.talk Renato Gallina##1432
			..accept Wine Shop Advert##332
		step
			goto Stormwind City,61.2,70.7
			.talk Auctioneer Jaxon##15659
			.buy 60 Wool Cloth##2592|q 7791 |future
			.buy 60 Silk Cloth##4306|q 7793 |future
			.buy 60 Mageweave Cloth##4338|q 7794 |future
			.buy 60 Runecloth##14047|q 7795 |future
		step
			goto Stormwind City,62.3,67.9
			.talk Harlan Bagley##1427
			..accept Harlan Needs a Resupply##333
		step
			goto Stormwind City,58.1,67.5
			.talk Rema Schneider##1428
			..turnin Harlan Needs a Resupply##333
			..accept Package for Thurman##334
		step
			goto Stormwind City,60.3,76.8
			.talk Suzetta Gallina##1431
			..turnin Wine Shop Advert##332
		step
			goto Stormwind City,52.6,83.4
			.talk Thurman Schneider##1429
			..turnin Package for Thurman##334
		step
			goto Stormwind City,53.9,81.7
			.talk Clavicus Knavingham##14722
			..accept A Donation of Wool##7791|instant
			..accept A Donation of Silk##7793|instant
			..accept A Donation of Mageweave##7794|instant
			..accept A Donation of Runecloth##7795|instant
		step // Redridge
			goto Stormwind City,55,54.2
			.talk Brother Kristoff##1444
			..accept Speaking of Fortitude##343
		step // The Missing Diplomat Chapter
			goto Stormwind City,49.6,44.5
			.talk Thomas##4982
			..accept The Missing Diplomat(1)##1274
		step // West Plaguelands
			goto Stormwind City,80,38.5
			.talk King Varian Wrynn##29611
			..accept The First and the Last##6182
		step // The Missing Diplomat Chapter
			goto Stormwind City,80.3,44.1
			.talk Bishop DeLavey##4960
			..turnin The Missing Diplomat(1)##1274
			..accept The Missing Diplomat(2)##1241
		step // Redridge
			goto Stormwind City,77.1,30.2
			.talk Milton Sheaf##1440
			..turnin Speaking of Fortitude##343
			..accept Brother Paxton##344
		step // West Plaguelands
			goto Stormwind City,78.3,70.7
			.talk Master Mathias Shaw##332
			..turnin The First and the Last##6182
			..accept Honor the Dead##6183
			..turnin Honor the Dead##6183
		step // The Missing Diplomat Chapter
			goto Stormwind City,76.3,85.1
			.talk Jorgen##4959
			..turnin The Missing Diplomat(2)##1241
			..accept The Missing Diplomat(3)##1242
		step // The Missing Diplomat Chapter
			goto Stormwind City,66,74.1
			.talk Elling Trias##482
			..turnin The Missing Diplomat(3)##1242
			..accept The Missing Diplomat(4)##1243
		step // Redridge
			goto Elwynn Forest,49.6,40.4
			.talk Brother Paxton##951
			..turnin Brother Paxton##344
			..accept Ink Supplies##345
		step // Blasted Lands
			goto Stormwind City,51.8,74.3
			.talk Mazen Mac'Nadir##338
			..accept Mazen's Behest##1363
		step // Blasted Lands
			goto Stormwind City,51.4,73.8
			.talk Acolyte Dellis##5386
			..turnin Mazen's Behest##1363
			..accept Mazen's Behest##1364
		step // The Missing Diplomat Chapter
			goto Duskwood,72.6,33.5
			.talk Watcher Backus##840
			..turnin The Missing Diplomat(4)##1243
			..accept The Missing Diplomat(5)##1244
		step // The Missing Diplomat Chapter
			goto Duskwood,23.9,72.1
			.' Open Defias Strongbox
			.collect 1 Defias Docket##5947|q 1244/1
		step // The Missing Diplomat Chapter
			goto Duskwood,72.6,33.5
			.talk Watcher Backus##840
			..turnin The Missing Diplomat(5)##1244
			..accept The Missing Diplomat(6)##1245
		step // The Missing Diplomat Chapter
			goto Stormwind City,66,74.1
			.talk Elling Trias##482
			..turnin The Missing Diplomat(6)##1245
			..accept The Missing Diplomat(7)##1246
		step // The Missing Diplomat Chapter
			goto Stormwind City,74.3,59.2
			.talk Dashel Stonefist##4961
			..turnin The Missing Diplomat(7)##1246
			..accept The Missing Diplomat(8)##1447
		step // The Missing Diplomat Chapter
			goto Stormwind City,74.3,59.2
			.goal Defeat Dashel Stonefist|q 1447/1
		step // The Missing Diplomat Chapter
			goto Stormwind City,74.3,59.2
			.talk Dashel Stonefist##4961
			..turnin The Missing Diplomat(8)##1447
			..accept The Missing Diplomat(9)##1247
		step // The Missing Diplomat Chapter
			goto Stormwind City,66,74.1
			.talk Elling Trias##482
			..turnin The Missing Diplomat(9)##1247
			..accept The Missing Diplomat(10)##1248
		step // The Missing Diplomat Chapter
			goto Wetlands,10.6,60.8
			.talk Mikhail##4963
			..turnin The Missing Diplomat(10)##1248
			..accept The Missing Diplomat(11)##1249
		step // The Missing Diplomat Chapter
			goto Wetlands,10.8,59.6
			.goal Defeat Tapoke Jahn|q 1249/1
			.info Rogue is invisible and sneaks towards the exit.
		step // The Missing Diplomat Chapter
			goto Wetlands,10.6,60.8
			.talk Mikhail##4963
			..turnin The Missing Diplomat(11)##1249
		step // The Missing Diplomat Chapter
			goto Wetlands,10.5,60.3
			.talk Tapoke "Slim" Jahn##4962
			..accept The Missing Diplomat(12)##1250
		step // The Missing Diplomat Chapter
			goto Wetlands,10.6,60.8
			.talk Mikhail##4963
			..turnin The Missing Diplomat(12)##1250
			..accept The Missing Diplomat(13)##1264
		step // The Missing Diplomat Chapter
			goto Dustwallow Marsh,68,48.7
			.talk Commander Samaul##4964
			..turnin The Missing Diplomat(13)##1264
			..accept The Missing Diplomat(14)##1265
		step // The Missing Diplomat Chapter
			goto Dustwallow Marsh,59.9,40.9
			.goal Sentry Point explored|q 1265/1
		step // The Missing Diplomat Chapter
			goto Dustwallow Marsh,66.4,49.3
			.talk Archmage Tervosh##4967
			..turnin The Missing Diplomat(14)##1265
			..accept The Missing Diplomat(15)##1266
		step // The Missing Diplomat Chapter
			goto Dustwallow Marsh,45.3,24.6
			.talk Private Hendel##4966
			..turnin The Missing Diplomat(15)##1266
			..accept The Missing Diplomat(16)##1324
		step // The Missing Diplomat Chapter
			goto Dustwallow Marsh,45.3,24.6
			.goal Subdue Private Hendel|q 1324/1
		step // The Missing Diplomat Chapter
			goto Dustwallow Marsh,66.4,49.3
			.talk Archmage Tervosh##4967
			..turnin The Missing Diplomat(16)##1324
		step // The Missing Diplomat Chapter
			goto Dustwallow Marsh,66.3,49
			.talk Lady Jaina Proudmoore##4968
			..accept The Missing Diplomat(17)##1267
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Eastern Kingdoms\\[10] Elwynn Forest",[[
author danaton
description This guide contain quest-chain (46 quests) for Elwynn Forest location.
startlevel 10
		step
			goto Elwynn Forest,48.1,43.6
			.talk Deputy Willem##823
			..accept A Threat Within##783
		step
			goto Elwynn Forest,48.9,41.6
			.talk Marshal McBride##197
			..turnin A Threat Within##783
			..accept Kobold Camp Cleanup##7
		step
			goto Elwynn Forest,48.1,43.6
			.talk Deputy Willem##823
			..accept Eagan Peltskinner##5261
		step
			goto Elwynn Forest,48.9,40.2
			.talk Eagan Peltskinner##196
			..turnin Eagan Peltskinner##5261
			..accept Wolves Across the Border##33
		step
			goto Elwynn Forest,47.4,39.7
			.from Diseased Young Wolf##299+
			.get 8 Diseased Wolf Pelt##50432|q 33/1
		step
			goto Elwynn Forest,47.9,37.1
			.kill 8 Kobold Vermin##6|q 7/1
		step
			goto Elwynn Forest,48.9,40.2
			.talk Eagan Peltskinner##196
			..turnin Wolves Across the Border##33
		step
			goto Elwynn Forest,48.9,41.6
			.talk Marshal McBride##197
			..turnin Kobold Camp Cleanup##7
			..accept Investigate Echo Ridge##15
		step
			goto Elwynn Forest,48.1,43.6
			.talk Deputy Willem##823
			..accept Brotherhood of Thieves##18
		step
			goto Elwynn Forest,51.3,37.0
			.kill 8 Kobold Workers##257|q 15/1
		step
			goto Elwynn Forest,54.3,41
			.from Defias Thug##38+
			.get 8 Red Burlap Bandana##752|q 18/1
		step
			goto Elwynn Forest,48.1,43.6
			.talk Deputy Willem##823
			..turnin Brotherhood of Thieves##18
			..accept Milly Osworth##3903
			..accept Bounty on Garrick Padfoot##6
		step
			goto Elwynn Forest,48.9,41.6
			.talk Marshal McBride##197
			..turnin Investigate Echo Ridge##15
			..accept Skirmish at Echo Ridge##21
		step
			goto Elwynn Forest,50.7,39.3
			.talk Milly Osworth##9296
			..turnin Milly Osworth##3903
			..accept Milly's Harvest##3904
		step
			goto Elwynn Forest,53.6,47.3
			.collect 8 Milly's Harvest##11119|q 3904/1
			.info Milly's Harvest look like barrels of grapes.
		step
			goto Elwynn Forest,57.5,48.3
			.from Garrick Padfoot##103
			.get Garrick's Head##182|q 6/1
		step
			goto Elwynn Forest,50.7,39.3
			.talk Milly Osworth##9296
			..turnin Milly's Harvest##3904
			..accept Grape Manifest##3905
		step
			goto Elwynn Forest,48.1,43.6
			.talk Deputy Willem##823
			..turnin Bounty on Garrick Padfoot##6
		step
			goto Elwynn Forest,49.5,41.6
			.talk Brother Neals##952
			..turnin Grape Manifest##3905
		step
			goto Elwynn Forest,47.7,32
			.kill 8 Kobold Laborer##80|q 21/1
		step
			goto Elwynn Forest,48.9,41.6
			.talk Marshal McBride##197
			..turnin Skirmish at Echo Ridge##21
			..accept Report to Goldshire##54
		step
			goto Elwynn Forest,45.6,47.7
			.talk Falkhaan Isenstrider##6774
			..accept Rest and Relaxation##2158
		step
			goto Elwynn Forest,43.8,65.8
			.talk Innkeeper Farley##295
			..turnin Rest and Relaxation##2158
		step
			goto Elwynn Forest,43.3,65.7
			.talk William Pestle##253
			..accept Kobold Candles##60
		step
			goto Elwynn Forest,42.1,65.9
			.talk Marshal Dughan##240
			..turnin Report to Goldshire##54
			..accept The Fargodeep Mine##62
		step
			goto Elwynn Forest,42.1,67.3
			.talk Remy "Two Times"##241
			..accept Gold Dust Exchange##47
		step
			goto Elwynn Forest,43.2,89.6
			.talk Maybell Maclure##251
			..accept Young Lovers##106
		step
			goto Elwynn Forest,29.8,86.0
			.talk Tommy Joe Stonefield##252
			..turnin Young Lovers##106
			..accept Speak with Gramma##111
		step
			goto Elwynn Forest,34.7,84.5
			.talk Ma Stonefield##244
			..accept Princess Must Die!##88
		step
			goto Elwynn Forest,34.5,84.3
			.talk "Auntie" Bernice Stonefield##246
			..accept Lost Necklace##85
		step
			goto Elwynn Forest,34.9,83.9
			.talk Gramma Stonefield##248
			..turnin Speak with Gramma##111
			..accept Note to William##107
		step
			goto Elwynn Forest,43.1,85.7
			.talk Billy Maclure##247
			..turnin Lost Necklace##85
			..accept Pie for Billy##86
		step
			goto Elwynn Forest,41.8,86.9
			.from Stonetusk Boar##113
			.get 4 Chunk of Boar Meat##769|q 86/1
		step
			goto Elwynn Forest,34.5,84.3
			.talk "Auntie" Bernice Stonefield##246
			..turnin Pie for Billy##86
			..accept Back to Billy##84
		step
			goto Elwynn Forest,43.1,85.7
			.talk Billy Maclure##247
			..turnin Back to Billy##84
			..accept Goldtooth##87
		step
			.' Enter the upper part of the mine|goto 38.95,82.3,0.5|q 62
		step
			.' Move to the center of the mine|goto 39.88,80.07,0.5|q 62
		step
			.' Turn left and start going down|goto 39.96,78.57,0.5|q 87
		step
			goto Elwynn Forest,41.7,78
			.from Goldtooth##327
			.get Bernice's Necklace##981|q 87/1
		step
			.' Continue moving down if you don't get credit for exploring the mine|goto 41.25,79.47|q 62
		step
			goto Elwynn Forest,40.75,81.70
			.goal Scout through the Fargodeep Mine|q 62/1
		step
			goto Elwynn Forest,38.2,83.2
			.from Kobold Miner##40, Kobold Tunneler##475, Kobold Geomancer##476
			.get 8 Large Candle##772|q 60/1
			.get 10 Gold Dust##773|q 47/1
		step
			goto Elwynn Forest,34.5,84.3
			.talk "Auntie" Bernice Stonefield##246
			..turnin Goldtooth##87
		step
			goto Elwynn Forest,42.1,67.3
			.talk Remy "Two Times"##241
			..turnin Gold Dust Exchange##47
			..accept A Fishy Peril##40
		step
			goto Elwynn Forest,42.1,65.9
			.talk Marshal Dughan##240
			..turnin A Fishy Peril##40
			..accept Further Concerns##35
			..turnin The Fargodeep Mine##62
			..accept The Jasperlode Mine##76
		step
			goto Elwynn Forest,43.3,65.7
			.talk William Pestle##253
			..turnin Kobold Candles##60
			..accept Shipment to Stormwind##61
			..turnin Note to William##107
			..accept Collecting Kelp##112
		step
			goto Elwynn Forest,52.94,64.72
			.from Murloc##285, Murloc Streamrunner##735
			.get 4 Crystal Kelp Frond##1256|q 112/1
		step
			goto Elwynn Forest,61.8,54.2
			.' Scout through the Jasperlode Mine|at 60.3,49.6|q 76/1
		step
			goto Elwynn Forest,74,72.2
			.talk Guard Thomas##261
			..turnin Further Concerns##35
			..accept Find the Lost Guards##37
			..accept Bounty on Murlocs##46
			..accept Protect the Frontier##52
		step
			goto Elwynn Forest,72.7,60.3
			.' Interact with gameobject: A half-eaten body
			..turnin Find the Lost Guards##37
			..accept Discover Rolf's Fate##45
		step
			goto Elwynn Forest,79.8,55.5
			.' Interact with gameobject: Rolf's corpse
			..turnin Discover Rolf's Fate##45
			..accept Report to Thomas##71
		step
			goto Elwynn Forest,79.1,55.7
			.from Murloc Forager##46, Murloc Lurker##732
			.get 8 Torn Murloc Fin##780|q 46/1
		step
			goto Elwynn Forest,81.4,66.1
			.talk Supervisor Raelen##10616
			..accept A Bundle of Trouble##5545
		step
			goto Elwynn Forest,79.5,68.8
			.talk Sara Timberlain##278
			..accept Red Linen Goods##83
		step
			goto Elwynn Forest,74,72.2
			.talk Guard Thomas##261
			..turnin Bounty on Murlocs##46
			..turnin Report to Thomas##71
			..accept Deliver Thomas' Report##39
		step
			goto Elwynn Forest,69.6,79.7
			.from Princess##330+
			.get Brass Collar##1006|q 88/1
		step
			goto Elwynn Forest,70.1,79.45
			.from Defias Bandit##116
			.get 6 Red Linen Bandana##1019|q 83/1
			.' You can find more around|at 89.3,79
		step
			goto Elwynn Forest,70.1,79.45
			.from Defias Bandit##116
			.collect Westfall Deed##1972|q 184 |future
			.' You can find more around|at 89.3,79
		step
			.use Westfall Deed##1972
			..accept Furlbrow's Deed##184
		step
			goto Elwynn Forest,42.1,65.9
			.talk Marshal Dughan##240
			..turnin The Jasperlode Mine##76
			..turnin Deliver Thomas' Report##39
			..accept Cloth and Leather Armor##59
			..accept Westbrook Garrison Needs Help!##239
		step
			goto Elwynn Forest,41.7,65.5
			.talk Smith Argus##514
			..accept Elmore's Task##1097
		step
			goto Elwynn Forest,43.3,65.7
			.talk William Pestle##253
			..turnin Collecting Kelp##112
			..accept The Escape##114
		step
			goto Elwynn Forest,43.2,89.6
			.talk Maybell Maclure##251
			..turnin The Escape##114
		step
			goto Elwynn Forest,34.7,84.5
			.talk Ma Stonefield##244
			..turnin Princess Must Die!##88
		step
			goto Elwynn Forest,24.56,78.22
			.' Interact with gameobject: Wanted Poster
			..accept Wanted: "Hogger"##176
		step
			goto Elwynn Forest,24.2,74.4
			.talk Deputy Rainer##963
			..turnin Westbrook Garrison Needs Help!##239
			..accept Riverpaw Gnoll Bounty##11
		step
			goto Elwynn Forest,26.4,93.6
			.from Hogger##448+
			.get Huge Gnoll Claw##1931|q 176/1
		step
			goto Elwynn Forest,26.5,86.6
			.from Riverpaw Runt##97, Riverpaw Outrunner##478
			.get 8 Painted Gnoll Armband##782|q 11/1
		step
			goto Elwynn Forest,26.5,86.6
			.from Riverpaw Runt##97, Riverpaw Outrunner##478
			.collect Gold Pickup Schedule##1307|q 123 |future
		step
			.use Gold Pickup Schedule##1307
			..accept The Collector##123
		step
			goto Westfall,60,19.4
			.talk Farmer Furlbrow##237
			..turnin Furlbrow's Deed##184
		step
			goto Elwynn Forest,24.2,74.4
			.talk Deputy Rainer##963
			..turnin Riverpaw Gnoll Bounty##11
		step
			goto Elwynn Forest,42.1,65.9
			.talk Marshal Dughan##240
			..turnin The Collector##123
			..turnin Wanted: "Hogger"##176
			..accept Manhunt##147
		step
			goto Stormwind City,63.2,74.4
			.talk Morgan Pestle##279
			..turnin Shipment to Stormwind##61
		step
			goto Stormwind City,59.7,33.8
			.talk Grimand Elmore##1416
			..turnin Elmore's Task##1097
		step
			goto Elwynn Forest,71.1,80.6
			.from Morgan the Collector##473
			.get The Collector's Ring##2239|q 147/1
		step
			goto Elwynn Forest,79.5,68.8
			.talk Sara Timberlain##278
			..turnin Cloth and Leather Armor##59
			..turnin Red Linen Goods##83
		step
			goto Elwynn Forest,81.3,60.6
			.collect 8 Bundle of Wood##13872|q 5545/1
			.info They look like little stacks of 3 firewood at the base of trees in this area.		
		step
			goto Elwynn Forest,82.6,59.1
			.kill 8 Prowler##118|q 52/1
			.kill 5 Young Forest Bear##822|q 52/2
			.' You can find more around|at 80,77.8
		step
			goto Elwynn Forest,81.4,66.1
			.talk Supervisor Raelen##10616
			..turnin A Bundle of Trouble##5545
		step
			goto Elwynn Forest,74,72.2
			.talk Guard Thomas##261
			..turnin Protect the Frontier##52
		step
			goto Elwynn Forest,42.1,65.9
			.talk Marshal Dughan##240
			..turnin Manhunt##147
		step
			.' Congratulations! +46 quests for achievement "Loremaster of Eastern Kingdoms".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Eastern Kingdoms\\[20] Westfall",[[
author danaton
description This guide contain quest-chain (26 quests) for Westfall location.
startlevel 20
		step
			.' First you need to complete the Elwynn Forest quest chain.
			.info Skip this step manually.
		step
			goto Stormwind City,57.7,47.9
			.talk Baros Alexston##1646
			..accept Humble Beginnings##399
		step
			goto Elwynn Forest,24.2,74.4
			.talk Deputy Raine##963
			..accept Report to Gryan Stoutmantle##109
		step
			goto Westfall,60,19.4
			.talk Farmer Furlbrow##237
			..accept The Forgotten Heirloom##64
		step
			goto Westfall,60,19.4
			.talk Verna Furlbrow##238
			..accept Westfall Stew(1)##36
			..accept Poor Old Blanchy##151
		step
			goto Westfall,56.0,31.2
			.talk Farmer Saldean##233
			..accept The Killing Fields##9
		step
			goto Westfall,56.4,30.5
			.talk Salma Saldean##235
			..turnin Westfall Stew(1)##36
			..accept Westfall Stew(2)##38
			..accept Goretusk Liver Pie##22
		step
			goto Westfall,56.3,47.5
			.talk Gryan Stoutmantle##234
			..turnin Report to Gryan Stoutmantle##109
			..accept The People's Militia (1)##12
		step
			goto Westfall,56.4,47.6
			.talk Captain Danuvin##821
			..accept Patrolling Westfall##102
		step
			goto Westfall,54,53
			.talk Scout Galiaan##878
			..accept Red Leather Bandanas##153
		step
			goto Westfall,50.97,46.86
			.kill 15 Defias Trapper##504|q 12/1
			.kill 15 Defias Smuggler##95|q 12/2
			.get 15 Red Leather Bandana##829|q 153/1
			.' You can find more around (1)|at 48.65,46.42
			.' You can find more around (2)|at 46.42,38.59
			.' You can find more around (3)|at 50.79,40.61
		step
			goto Westfall,54,53
			.talk Scout Galiaan##878
			..turnin Red Leather Bandanas##153
		step
			goto Westfall,56.3,47.5
			.talk Gryan Stoutmantle##234
			..turnin The People's Militia (1)##12
			..accept The People's Militia (2)##13
		step
			.collect 8 Handful of Oats##1528|q 151/1
			.' You can find more around (1)|at 50.10,19.58
			.' You can find more around (2)|at 49.34,17.95
			.' You can find more around (3)|at 48.45,20.31|tip Inside the building.
			.' You can find more around (4)|at 54.01,24.94
			.' You can find more around (5)|at 56.67,18.89
			.' You can find more around (6)|at 57.36,19.45|tip In the cart.
			.' You can find more around (7)|at 58.33,18.26|tip On the field you can find from 2 to 4 Handful of Oats.
		step
			goto Westfall,49.42,19.23
			.collect Furlbrow's Pocket Watch##841|q 64/1
			.info Inside the small house on the right, click the wooden wardrobe.
		step
			goto Westfall,55.17,9.90
			.from Murloc Coastrunner##126, Murloc Tidehunter##127, Murloc Warrior##171, Murloc Minor Oracle##456, Murloc Hunter##458, Murloc Raider##515, Murloc Oracle##517
			.get 3 Murloc Eye##730|q 38/2
			.' You can find more around (1)|at 44.3,9.07
			.' You can find more around (2)|at 35.20,21.60
			.' You can find more around (3)|at 27.6,40.5
			.' You can find more around (4)|at 27.56,70.08
		step
			goto Westfall,55.17,9.90
			.from Murloc Coastrunner##126, Murloc Tidehunter##127, Murloc Warrior##171, Murloc Minor Oracle##456, Murloc Hunter##458, Murloc Raider##515, Murloc Oracle##517
			.collect Captain Sanders' Treasure Map##1357|q 136 |future
			.' You can find more around (1)|at 44.3,9.07
			.' You can find more around (2)|at 35.20,21.60
			.' You can find more around (3)|at 27.6,40.5
			.' You can find more around (4)|at 27.56,70.08
		step
			.use Captain Sanders' Treasure Map##1357
			..accept Captain Sanders' Hidden Treasure (1)##136
		step
			goto Westfall,60,19.4
			.talk Farmer Furlbrow##237
			..turnin The Forgotten Heirloom##64
		step
			goto Westfall,60,19.4
			.talk Verna Furlbrow##238
			..turnin Poor Old Blanchy##151
		step
			goto Westfall,59.02,33.34
			.from Young Goretusk##454, Goretusk##157, Great Goretusk##547
			.get 8 Goretusk Liver##723|q 22/1
			.info Do not sell to vendor!
			.get 3 Goretusk Snout##731|q 38/3
			.info Do not sell to vendor!
			.' You can find more around (1)|at 51.01,36.09
			.' You can find more around (2)|at 59.60,43.53
		step
			goto Westfall,59.05,61.74
			.from Young Fleshripper##199, Fleshripper##1109, Greater Fleshripper##154
			.get 3 Stringy Vulture Meat##729|q 38/1
			.info Do not sell to vendor!
		step
			goto Westfall,51.1,21.8
			.kill 20 Harvest Watcher##114|q 9/1
			.get 3 Okra##732|q 38/4
			.info Do not sell to vendor!
			.from Harvest Watcher##114+
			.collect 5 Flask of Oil##814|q 103 |future
			.info Flask of Oil needed on the future! Do not sell to vendor!
			.' You can find more Harvest Watchers|at 53.5,29.4
			.' And a big spot on this field|at 44.87,35.68
		step
			goto Westfall,56.0,31.2
			.talk Farmer Saldean##233
			..turnin The Killing Fields##9
		step
			goto Westfall,56.4,30.5
			.talk Salma Saldean##235
			..turnin Goretusk Liver Pie##22
			..turnin Westfall Stew(2)##38
		step
			goto Westfall,61.95,71.57
			.from Riverpaw Gnoll##117, Riverpaw Brute##124, Riverpaw Overseer##125, Riverpaw Bandit##452, Riverpaw Mystic##453, Riverpaw Scout##500, Riverpaw Herbalist##501
			.get 8 Gnoll Paw##725|q 102/1
			.' You can find more around (1)|at 53,63.1
			.' You can find more around (2)|at 48.37,61.3
		step
			goto Westfall,56.4,47.6
			.talk Captain Danuvin##821
			..turnin Patrolling Westfall##102
		step
			goto Westfall,25.9,47.8
			.' Interact with gameobject: Footlocker
			..turnin Captain Sanders' Hidden Treasure (1)##136
			..accept Captain Sanders' Hidden Treasure (2)##138
		step
			goto Westfall,36.24,54.52
			.' Interact with gameobject: Alexston's Chest
			.collect A Simple Compass##1998|q 399/1
		step
			goto Westfall,40.5,47.8
			.' Interact with gameobject: Broken Barrel
			..turnin Captain Sanders' Hidden Treasure (2)##138
			..accept Captain Sanders' Hidden Treasure (3)##139
		step
			goto Westfall,31.4,44.5
			.kill 15 Defias Pillager##589|q 13/1
			.kill 15 Defias Looter##590|q 13/2
			.' You can find more around (1)|at 37.1,54.8
			.' You can find more around (2)|at 43,69
		step
			goto Westfall,40.6,17
			.' Interact with gameobject: Old Jug
			..turnin Captain Sanders' Hidden Treasure (3)##139
			..accept Captain Sanders' Hidden Treasure (4)##140
		step
			goto Westfall,26,16.9
			.' Interact with gameobject: Locked Chest
			..turnin Captain Sanders' Hidden Treasure (4)##140
		step
			goto Westfall,56.3,47.5
			.talk Gryan Stoutmantle##234
			..turnin The People's Militia (2)##13
			..accept The People's Militia (3)##14
		step
			goto Westfall,52.6,72.3
			.kill 15 Defias Highwayman##122|q 14/1
			.kill 5 Defias Pathstalker##121|q 14/2
			.kill 5 Defias Knuckleduster##449|q 14/3
		step
			goto Westfall,30,86
			.talk Captain Grayson##392
			..accept Keeper of the Flame##103
			..accept The Coastal Menace##104
			..accept The Coast Isn't Clear##152
		step
			goto Westfall,34.7,85.3
			.from Old Murk-Eye##391
			.get Scale of Old Murk-Eye##3636|q 104/1
			.' He is spawn here and moves along the beach|at 26.4,66
		step
			goto Westfall,34.65,85
			.kill 7 Murloc Coastrunner##126|q 152/1
			.kill 7 Murloc Warrior##171|q 152/2
			.kill 7 Murloc Tidehunter##127|q 152/3
			.kill 7 Murloc Oracle##517|q 152/4
			.' You can find more around (1)|at 27.56,70.08
			.' You can find more around (2)|at 27.6,40.5
			.' You can find more around (3)|at 35.20,21.60
			.' You can find more around (4)|at 44.3,9.07
			.' You can find more around (5)|at 55.7,9.8
		step
			goto Westfall,51.7,21.7
			.from Harvest Golem##36, Harvest Watcher##114, Harvest Reaper##115
			.get 5 Flask of Oil##814|q 103/1
			.' You can find more around (1)|at 53.3,33.6
			.' You can find more around (2)|at 43.8,36.5
			.' You can find more around (3)|at 39.1,52.1
		step
			goto Westfall,30,86
			.talk Captain Grayson##392
			..turnin Keeper of the Flame##103
			..turnin The Coastal Menace##104
			..turnin The Coast Isn't Clear##152
		step
			goto Westfall,56.3,47.5
			.talk Gryan Stoutmantle##234
			..turnin The People's Militia (3)##14
		step
			goto Westfall,56.3,47.5
			.talk Gryan Stoutmantle##234
			..accept The Defias Brotherhood (1)##65
			.info Dungeon: Deadmines Quest Chain.
		step
			goto Westfall,57,47.2
			.talk Quartermaster Lewis##491
			..accept A Swift Message##6181
			only Human
		step
			goto Westfall,56.6,52.6
			.talk Thor##523
			..turnin A Swift Message##6181
			..accept Continue to Stormwind##6281
			only Human
		step
			goto Stormwind,77.2,61
			.talk Osric Strang##1323
			..turnin Continue to Stormwind##6281
			..accept Dungar Longdrink##6261
			only Human
		step
			goto Stormwind,57.7,47.9
			.talk Baros Alexston##1646
			..turnin Humble Beginnings##399
			only Human
		step
			goto Stormwind,71,72.5
			.talk Dungar Longdrink##352
			..turnin Dungar Longdrink##6261
			..accept Return to Lewis##6285
			only Human
		step
			goto Redridge Mountains,26.5,45.3
			.talk Wiley the Black##266
			..turnin The Defias Brotherhood (1)##65
			..accept The Defias Brotherhood (2)##132
			.info Dungeon: Deadmines Quest Chain.
		step
			goto Westfall,56.3,47.5
			.talk Gryan Stoutmantle##234
			..turnin The Defias Brotherhood (2)##132
			..accept The Defias Brotherhood (3)##135
			.info Dungeon: Deadmines Quest Chain.
		step
			goto Westfall,57,47.2
			.talk Quartermaster Lewis##491
			..turnin Return to Lewis##6285
			only Human
		step
			goto Stormwind,78.3,70.7
			.talk Master Mathias Shaw##332
			..turnin The Defias Brotherhood (3)##135
			..accept The Defias Brotherhood (4)##141
			.info Dungeon: Deadmines Quest Chain.
		step
			goto Stormwind,57.7,47.9
			.talk Baros Alexston##1646
			..turnin Humble Beginnings##399
		step
			goto Westfall,56.3,47.5
			.talk Gryan Stoutmantle##234
			..turnin The Defias Brotherhood (4)##141
			..accept The Defias Brotherhood (5)##142
			.info Dungeon: Deadmines Quest Chain.
		step
			goto Westfall,45.70,68.57
			.from Defias Messenger##550
			.get A Mysterious Message##1381|q 142/1
			.' Moves variably into this position|at 36.23,43.97
			.' Or in this position|at 44.5,25.45
			.info Dungeon: Deadmines Quest Chain.
		step
			goto Westfall,56.3,47.5
			.talk Gryan Stoutmantle##234
			..turnin The Defias Brotherhood (5)##142
			.info Dungeon: Deadmines Quest Chain.
		step
			goto Westfall,55.68,47.51
			.talk The Defias Traitor##467
			..accept The Defias Brotherhood##155
			.info Dungeon: Deadmines Quest Chain.
		step
			goto Westfall,42.56,71.71
			.goal Escort The Defias Traitor to discover where VanCleef is hiding|q 155/1
			.info Dungeon: Deadmines Quest Chain.
		step
			goto Westfall,56.32,47.54
			.talk Marshal Gryan Stoutmantle##234
			..turnin The Defias Brotherhood##155
			.info Dungeon: Deadmines Quest Chain.
		step
			.' Congratulations! +26 quests for achievement "Loremaster of Eastern Kingdoms".
			.' Next, I recommend running Quest-Instance Guides: Deadmines (15)
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Eastern Kingdoms\\[25] Redridge Mountains",[[
author danaton
description This guide contain quest-chain (40 quests) for Redridge Mountains location.
startlevel 25
		step //1
			goto Stormwind City,55,54.2
			.talk Brother Kristoff##1444
			..accept Speaking of Fortitude##343
		step //2
			goto Stormwind City,77.1,30.2
			.talk Milton Sheaf##1440
			..turnin Speaking of Fortitude##343
			..accept Brother Paxton##344
		step //3
			goto Elwynn Forest,49.6,40.4
			.talk Brother Paxton##951
			..turnin Brother Paxton##344
			..accept Ink Supplies##345
		step //4
			goto Elwynn Forest,65.2,69.7
			.talk Theocritus##313
			..accept A Watchful Eye##94
		step //5
			goto Redridge Mountains,15.3,71.5
			.talk Guard Parker##464
			..accept Encroaching Gnolls##244
		step //6
			goto Redridge Mountains,30.7,60
			.talk Deputy Feldon##1070
			..turnin Encroaching Gnolls##244
			..accept Assessing the Threat##246
		step //7
			goto Redridge Mountains,31.5,57.9
			.talk Guard Howe##903
			..accept Blackrock Bounty##128
		step //8
			goto Redridge Mountains,33.5,49
			.talk Marshal Marris##382
			..accept Blackrock Menace##20
		step //9
			goto Redridge Mountains,32.1,48.6
			.talk Foreman Oslow##341
			..turnin Ink Supplies##345
			..accept The Lost Tools##125
			..accept Rethban Ore##347
		step //10
			goto Redridge Mountains,31,47.3
			.talk Verner Osgood##415
			..accept The Price of Shoes##118
		step //11
			goto Redridge Mountains,30,44.4
			.talk Magistrate Solomon##344
			..accept Messenger to Stormwind (1)##120
		step //12
			goto Redridge Mountains,27.7,47.4
			.talk Dockmaster Baren##381
			..accept Selling Fish##127
			..accept Murloc Poachers##150
		step //13
			goto Redridge Mountains,26.6,44.3
			.talk Darcy##379
			..accept A Free Lunch##129
		step //14
			goto Redridge Mountains,26.5,44
			.talk Barkeep Daniels##346
			..accept Dry Times##116
		step //15
			goto Redridge Mountains,22.7,43.8
			.talk Chef Breanna##343
			..accept Redridge Goulash##92
		step //16
			goto Redridge Mountains,21.9,46.3
			.talk Martie Jainrose##342
			..accept An Unwelcome Guest##34
		step //17
			goto Redridge Mountains,16.4,49.2
			.from Bellygrub##345
			.get Bellygrub's Tusk##3631|q 34/1
		step //18
			goto Redridge Mountains,16.81,53.64
			.from Great Goretusk##547
			.get 5 Great Goretusk Snout##2296|q 92/1
			.' You can find more around (1)|at 18.27,72.11
			.info Don't sell this item!
		step //19
			goto Redridge Mountains,15.3,71.5
			.talk Guard Parker##464
			..turnin A Free Lunch##129
			..accept Visit the Herbalist##130
		step //20
			goto Redridge Mountains,10.85,77.32
			.from Tarantula##442
			.get 5 Crisp Spider Meat##1081|q 92/3
			.' You can find more around (1)|at 11.82,68.67
			.' You can find more around (2)|at 18.26,73.15
			.' You can find more around (3)|at 25.12,76.83
			.info Don't sell this item!
		step //21
			goto Redridge Mountains,15.92,63.47
			.kill 10 Redridge Mongrel|q 246/1
			.kill 6 Redridge Poacher|q 246/2
			.' You can find more around (1)|at 26.8,80.2
			.' You can find more around (2)|at 43.17,71.24
			.' You can find more around (3)|at 53.93,74.93
		step //22
			goto Redridge Mountains,60.77,75.60
			.from Dire Condor##428
			.get 5 Tough Condor Meat##1080|q 92/2
			.' You can find more around (1)|at 48.43,76.16
			.' You can find more around (2)|at 67.6,75.6
			.info Don't sell this item!
		step //23
			goto Redridge Mountains,30.7,60
			.talk Deputy Feldon##1070
			..turnin Assessing the Threat##246
		step //24
			goto Redridge Mountains,22.7,43.8
			.talk Chef Breanna##343
			..turnin Redridge Goulash##92
		step //25
			goto Redridge Mountains,21.9,46.3
			.talk Martie Jainrose##342
			..turnin An Unwelcome Guest##34
			..turnin Visit the Herbalist##130
			..accept Delivering Daffodils##131
		step //26
			goto Redridge Mountains,26.6,44.4
			.talk Darcy##379
			..turnin Delivering Daffodils##131
		step //27
			goto Redridge Mountains,29.3,53.6
			.talk Shawn##8965
			..accept Hilary's Necklace##3741
		step //28
			goto Redridge Mountains,29.1,55.1
			.collect Hilary's Necklace##10958|q 3741/1
			.info The Glinting Mud spawns in random places around this area, so some searching may be necessary.
		step //29
			goto Redridge Mountains,41.5,54.6
			.collect Oslow's Toolbox##1309|q 125/1
			.info Chest at the bottom of the lake.
		step //30
			goto Redridge Mountains,48.2,73.3
			.from Murloc Flesheater##422, Murloc Shorestriker##1083, Murloc Minor Tidecaller##548
			.get 10 Spotted Sunfish##1467|q 127/1
			.collect 8 Murloc Fin##1468|q 150/1
			.' You can find more around (1)|at 40.4,46.16
			.' You can find more around (2)|at 56.9,50.9
			.' You can find more around (3)|at 57.7,61.5
			.info Don't sell this item!
		step //31
			goto Redridge Mountains,32.1,48.6
			.talk Foreman Oslow##341
			..turnin The Lost Tools##125
			..accept The Everstill Bridge##89
		step //32
			goto Redridge Mountains,29.3,53.6
			.talk Hilary##8962
			..turnin Hilary's Necklace##3741
		step //33
			goto Redridge Mountains,27.7,47.4
			.talk Dockmaster Baren##381
			..turnin Selling Fish##127
			..turnin Murloc Poachers##150
		step //34
			goto Stormwind,60,76.9
			.talk Roberto Pupellyverbos##277
			.buy Cask of Merlot##1941|q 116/2
		step //35
			goto Stormwind,69.2,82.7
			.talk General Marcus Jonathan##466
			..turnin Messenger to Stormwind (1)##120
			..accept Messenger to Stormwind (2)##121
		step //36
			goto Elwynn Forest,44,65.7
			.talk Barkeep Dobbins##465
			.buy Skin of Sweet Rum##1939|q 116/4
		step //37
			goto Elwynn Forest,41.7,65.5
			.talk Smith Argus##514
			..turnin The Price of Shoes##118
			..accept Return to Verner##119
		step //38
			goto Redridge Mountains,31,47.3
			.talk Verner Osgood##415
			..turnin Return to Verner##119
			..accept Underbelly Scales##122
			..accept A Baying of Gnolls##124
		step //39
			goto Redridge Mountains,30,44.4
			.talk Magistrate Solomon##344
			..turnin Messenger to Stormwind (2)##121
			..accept Messenger to Westfall (1)##143
		step //40
			goto Westfall,56.3,47.5
			.talk Gryan Stoutmantle##234
			..turnin Messenger to Westfall (1)##143
			..accept Messenger to Westfall (2)##144
		step //41
			goto Westfall,44.6,80.3
			.talk Grimbooze Thunderbrew##239
			..accept Thunderbrew Lager##117
		step //42
			goto Westfall,37.1,52.3
			.from Harvest Watcher##114, Harvest Reaper##115
			.get 5 Hops##1274|q 117/1
			.' You can find more around (1)|at 61.6,62
			.info Don't sell this item!
		step //43
			goto Westfall,44.6,80.3
			.talk Grimbooze Thunderbrew##239
			..turnin Thunderbrew Lager##117
		step //44
			goto Redridge Mountains,30,44.5
			.talk Magistrate Solomon##344
			..turnin Messenger to Westfall (2)##144
			..accept Messenger to Darkshire (1)##145
		step //45
			goto Duskwood,71.9,46.4
			.talk Lord Ello Ebonlocke##263
			..turnin Messenger to Darkshire (1)##145
			..accept Messenger to Darkshire (2)##146
		step //46
			goto Duskwood,73.7,44
			.talk Barkeep Hann##274
			.buy Bottle of Moonshine##1942|q 116/3
		step //47
			goto Redridge Mountains,30,44.5
			.talk Magistrate Solomon##344
			..turnin Messenger to Darkshire (2)##146
		step //48
			goto Redridge Mountains,26.5,44
			.talk Barkeep Daniels##346
			..turnin Dry Times##116
		step //49
			goto Redridge Mountains,34.2,67.4
			.from Black Dragon Whelp##441
			.get 6 Underbelly Whelp Scale##1221|q 122/1
			.' You can find more around (1)|at 44.35,39.58
			.' You can find more around (2)|at 47.73,33.36
		step //50
			goto Redridge Mountains,29,37.4
			.kill 10 Redridge Brute##426|q 124/1
			.kill 8 Redridge Mystic##430|q 124/2
			.from Redridge Brute##426, Redridge Mystic##430
			.get 5 Iron Pike##2856|q 89/1
			.get 5 Iron Rivet##1013|q 89/2
		step //51
			goto Redridge Mountains,32.1,48.6
			.talk Foreman Oslow##341
			..turnin The Everstill Bridge##89
		step //52
			goto Redridge Mountains,31,47.3
			.talk Verner Osgood##415
			..turnin Underbelly Scales##122
			..turnin A Baying of Gnolls##124
			..accept Howling in the Hills##126
		step //53
			goto Redridge Mountains,20.7,28.3
			.from Redridge Drudger##580
			.get 5 Rethban Ore##2798|q 347/1
			.' Enter the cave|at 20.3,35.1
		step //54
			goto Redridge Mountains,27.4,21.8
			.from Yowler##518
			.get Yowler's Paw##3614|q 126/1
		step //55
			goto Redridge Mountains,32.9,6.8
			.kill 15 Blackrock Champion##435|q 128/1
			.get 10 Battleworn Axe##3014|q 20/1
		step //56
			goto Redridge Mountains,28.4,12.6
			.talk Corporal Keeshan##349
			..accept Missing In Action##219
			.info Warning! This is an escort quest!
		step //57
			.goal Escort Corporal Keeshan back to Redridge|q 219/1
		step //58
			goto Redridge Mountains,33.5,49
			.talk Marshal Marris##382
			..turnin Blackrock Menace##20
			..turnin Missing In Action##219
			..accept Tharil'zun##19
			..accept Shadow Magic##115
		step //59
			goto Redridge Mountains,31,47.3
			.talk Verner Osgood##415
			..turnin Howling in the Hills##126
		step //60
			goto Redridge Mountains,30,44.4
			.talk Bailiff Conacher##900
			..accept Solomon's Law##91
		step //61
			goto Redridge Mountains,29.6,46.2
			.' Interact with gameobject: Wanted: Gath'Ilzogg
			..accept Wanted: Gath'Ilzogg##169
		step //62
			goto Redridge Mountains,26.8,46.4
			.' Interact with gameobject: Wanted: Lieutenant Fangore
			..accept Wanted: Lieutenant Fangore##180
		step //63
			goto Redridge Mountains,31.5,57.9
			.talk Guard Howe##903
			..turnin Blackrock Bounty##128
		step //64
			goto Redridge Mountains,69.3,59.9
			.from Tharil'zun##486
			.get Tharil'zun's Head##1260|q 19/1
		step //65
			goto Redridge Mountains,69.6,55.8
			.from Gath'Ilzogg##334
			.get Head of Gath'Ilzogg##3633|q 169/1
		step //66
			goto Redridge Mountains,68.3,56.3
			.from Blackrock Shadowcaster##436
			.get 3 Midnight Orb##1261|q 115/1
		step //67
			goto Redridge Mountains,84.5,46.8
			.' Interact with gameobject: Old Lion Statue
			..turnin A Watchful Eye##94
			..accept Looking Further##248
		step //68
			goto Redridge Mountains,80.2,37.1
			.from Lieutenant Fangore##703
			.get Fangore's Paw##3632|q 180/1
			.from Shadowhide Slayer##431, Shadowhide Brute##432, Shadowhide Warrior##568
			.get 10 Shadowhide Pendant##1075|q 91/1
		step //69
			goto Redridge Mountains,63.2,49.8
			.' Interact with gameobject: An Empty Jar
			.info At the very top of the tower.
			..turnin Looking Further##248
		step //70
			goto Redridge Mountains,84.5,46.8
			.' Interact with gameobject: Old Lion Statue
			..accept Morganth##249
		step //71
			goto Redridge Mountains,80.1,49.5
			.from Morganth##397
			.info At the very top of the tower.
			.get Pendant of Shadow##3617|q 249/1
		step //72
			goto Redridge Mountains,33.5,49
			.talk Marshal Marris##382
			..turnin Tharil'zun##19
			..turnin Shadow Magic##115
		step //73
			goto Redridge Mountains,30,44.4
			.talk Bailiff Conacher##900
			..turnin Solomon's Law##91
		step //74
			goto Redridge Mountains,30,44.4
			.talk Magistrate Solomon##344
			..turnin Wanted: Gath'Ilzogg##169
			..turnin Wanted: Lieutenant Fangore##180
		step //75
			goto Elwynn Forest,65.2,69.7
			.talk Theocritus##313
			..turnin Morganth##249
		step //76
			goto Elwynn Forest,49.6,40.4
			.talk Brother Paxton##951
			..turnin Rethban Ore##347
			..accept Return to Kristoff##346
		step //77
			goto Stormwind City,55,54.2
			.talk Brother Kristoff##1444
			..turnin Return to Kristoff##346
		step //78
			.' Congratulations! +40 quests for achievement "Loremaster of Eastern Kingdoms".
			.' Next, I recommend running Quest-Instance Guides: The Stockade (25).
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Eastern Kingdoms\\[30] Duskwood",[[
author danaton
description This guide contain quest-chain (73 quests) for Duskwood location.
startlevel 30
		step
			goto Stormwind,48.7,87.6
			.talk High Sorcerer Andromath##5694
			..accept Vital Supplies##1477
		step
			goto Stormwind City,49.6,44.5
			.talk Thomas##4982
			..accept The Missing Diplomat(1)##1274
		step
			goto Stormwind,80.4,38.6
			.talk Emissary Taluun##17103
			..accept Travel to Darkshire##9429
			only Draenei
		step
			goto Stormwind City,80.3,44.1
			.talk Bishop DeLavey##4960
			..turnin The Missing Diplomat(1)##1274
			..accept The Missing Diplomat(2)##1241
		step
			goto Stormwind City,69.3,71.3
			.talk Felicia Gump##1303
			.buy Stormwind Seasoning Herbs##2665|q 90 |future
		step
			goto Stormwind,61.2,70.7
			.talk Auctioneer Jaxon##15659
			.buy Bronze Tube##4371|q 174 |future
			.info You can also buy it later, but it is recommended now.
		step
			goto Stormwind City,76.3,85.1
			.talk Jorgen##4959
			..turnin The Missing Diplomat(2)##1241
			..accept The Missing Diplomat(3)##1242
		step
			goto Stormwind City,66,74.1
			.talk Elling Trias##482
			..turnin The Missing Diplomat(3)##1242
			..accept The Missing Diplomat(4)##1243
		step
			goto Duskwood,72.6,33.5
			.talk Watcher Backus##840
			..turnin The Missing Diplomat(4)##1243
			..accept The Missing Diplomat(5)##1244
		step
			goto Duskwood,71.8,46.4
			.talk Anchorite Delan##17104
			..turnin Travel to Darkshire##9429
			only Draenei
		step
			goto Duskwood,75.8,45.3
			.talk Madame Eva##265
			..accept The Legend of Stalvan (1)##66
			..accept The Totem of Infliction##101
		step
			goto Duskwood,75.8,46.2
			.talk Watchmaster Sorigal##5464
			..turnin Vital Supplies##1477
		step
			goto Duskwood,79.8,48.1
			.talk Viktori Prism'Antras##276
			..accept Look To The Stars (1)##174
		step
			goto Duskwood,78,48.3
			.talk Herble Baubbletump##3133
			.buy 1 Bronze Tube##4371|q 174/1
			.info If not available, buy at auction.
		step
			goto Duskwood,79.8,48.1
			.talk Viktori Prism'Antras##276
			..turnin Look To The Stars (1)##174
			..accept Look To The Stars (2)##175
		step
			goto Duskwood,75.7,47.6
			.talk Calor##663
			..accept Worgen in the Woods (1)##173
		step
			goto Duskwood,75.3,48.7
			.talk Elaine Carevin##633
			..accept Raven Hill##163
			..accept Deliveries to Sven##164
			..accept The Hermit##165
		step
			goto Duskwood,73.5,46.8
			.talk Commander Althea Ebonlocke##264
			..accept The Night Watch (1)##56
		step
			goto Duskwood,72.5,46.8
			.talk Clerk Daltry##267
			..turnin The Legend of Stalvan (1)##66
			..accept The Legend of Stalvan (2)##67
		step
			goto Duskwood,45.1,67
			.talk Watcher Dodds##888
			..accept Eight-Legged Menaces##245
		step
			goto Duskwood,23.9,72.1
			.collect Defias Docket##5947|q 1244/1
		step
			goto Duskwood,18.2,56.6
			.talk Jitters##288
			..turnin Raven Hill##163
			..accept Jitters' Growling Gut##5
		step
			goto Duskwood,28,31.5
			.talk Abercrombie##289
			..turnin The Hermit##165
			..accept Supplies from Darkshire##148
		step
			goto Duskwood,17.7,29
			.' Interact with gameobject: Weathered Grave
			.info It's a grave on the hillside all by itself.
			..accept The Weathered Grave##225
		step
			goto Duskwood,7.8,34.2
			.talk Sven Yorgen##311
			..turnin Deliveries to Sven##164
			..accept Sven's Revenge##95
		step
			goto Duskwood,7.7,33.2
			.talk Lars##893
			..accept Wolves at Our Heels##226
		step
			goto Westfall,41.5,66.7
			.' Interact with gameobject: Old Footlocker
			.info It's a small rectangular wooden box on the floor inside this house.
			..turnin The Legend of Stalvan (2)##67
			..accept The Legend of Stalvan (3)##68
		step
			goto Duskwood,72.5,46.8
			.talk Clerk Daltry##267
			..turnin The Legend of Stalvan (3)##68
			..accept The Legend of Stalvan (4)##69
		step
			goto Duskwood,72.6,47.7
			.talk Sirra Von'Indi##268
			..turnin The Weathered Grave##225
			..accept Morgan Ladimore##227
		step
			goto Duskwood,73.8,43.5
			.talk Chef Grual##272
			..turnin Jitters' Growling Gut##5
			..accept Seasoned Wolf Kabobs##90
			..accept Dusky Crab Cakes##93
		step
			goto Elwynn Forest,43.8,65.8
			.talk Innkeeper Farley##295
			..turnin The Legend of Stalvan (4)##69
			..accept The Legend of Stalvan (5)##70
		step
			goto Elwynn Forest,44.3,65.8
			.collect An Undelivered Letter##910|q 70/1
			.info It's a brown chest sitting on the floor in this room, upstairs inside the inn.
		step
			goto Stormwind City,42.5,72.4
			.talk Caretaker Folsom##297
			..turnin The Legend of Stalvan (5)##70
			..accept The Legend of Stalvan (6)##72
		step
			goto Stormwind City,42.5,72.41
			.' Interact with gameobject: Sealed Crate
			.info It's a wooden crate on the side of the road.
			..turnin The Legend of Stalvan (6)##72
			..accept The Legend of Stalvan (7)##74
		step
			goto Elwynn Forest,84.6,69.4
			.talk Marshal Haggard##294
			..turnin The Legend of Stalvan (7)##74
			..accept The Legend of Stalvan (8)##75
		step
			goto Elwynn Forest,85.7,69.5
			.collect A Faded Journal Page##921|q 75/1
			.info It's a brown chest on the floor next to a bed, upstairs in this house.
		step
			goto Elwynn Forest,84.6,69.4
			.talk Marshal Haggard##294
			..turnin The Legend of Stalvan (8)##75
			..accept The Legend of Stalvan (9)##78
		step
			goto Duskwood,72.6,33.5
			.talk Watcher Backus##840
			..turnin The Missing Diplomat(5)##1244
			..accept The Missing Diplomat(6)##1245
		step
			goto Duskwood,75.8,45.3
			.talk Madame Eva##265
			..turnin Supplies from Darkshire##148
			..accept Ghost Hair Thread##149
		step
			goto Duskwood,74.1,44.7
			.talk Tavernkeep Smitts##273
			..turnin The Legend of Stalvan (9)##78
			..accept The Legend of Stalvan (10)##79
		step
			goto Duskwood,73.5,46.8
			.talk Commander Althea Ebonlocke##264
			..turnin The Legend of Stalvan (10)##79
			..accept The Legend of Stalvan (11)##80
			..turnin Morgan Ladimore##227
			..accept Mor'Ladim##228
		step
			goto Duskwood,72.5,46.8
			.talk Clerk Daltry##267
			..turnin The Legend of Stalvan (11)##80
			..accept The Legend of Stalvan (12)##97
		step
			goto Duskwood,73.5,46.8
			.talk Commander Althea Ebonlocke##264
			..turnin The Legend of Stalvan (12)##97
			..accept The Legend of Stalvan (13)##98
		step
			goto Duskwood,66,47
			.kill 6 Nightbane Shadow Weaver##533|q 173/1
		step
			goto Duskwood,75.7,47.6
			.talk Calor##663
			..turnin Worgen in the Woods (1)##173
			..accept Worgen in the Woods (2)##221
		step
			goto Duskwood,63.1,43.9
			.kill 12 Nightbane Dark Runner##205|q 221/1
			.' You can find more around|at 63.7,72.7
		step
			goto Duskwood,75.7,47.6
			.talk Calor##663
			..turnin Worgen in the Woods (2)##221
			..accept Worgen in the Woods (3)##222
		step
			goto Duskwood,81.9,59.2
			.talk Blind Mary##302
			..turnin Ghost Hair Thread##149
			..turnin Look To The Stars (2)##175
			..accept Return the Comb##154
			..accept Look To The Stars (3)##177
		step
			goto Duskwood,80.9,71.6
			.from Insane Ghoul##511
			.get Mary's Looking Glass##1946|q 177/1
		step
			goto Duskwood,79.3,70.3
			.kill 8 Skeletal Warrior##48|q 56/1
			.kill 6 Skeletal Mage##203|q 56/2
		step
			goto Duskwood,72.7,69.7
			.kill 8 Nightbane Vile Fang##206|q 222/1
			.kill 8 Nightbane Tainted One##920|q 222/2
		step
			goto Duskwood,79.8,48.1
			.talk Viktori Prism'Antras##276
			..turnin Look To The Stars (3)##177
			..accept Look To The Stars (4)##181
		step
			goto Duskwood,73.5,46.8
			.talk Commander Althea Ebonlocke##264
			..turnin The Night Watch (1)##56
			..accept The Night Watch (2)##57
		step
			goto Duskwood,75.7,47.6
			.talk Calor##663
			..turnin Worgen in the Woods (3)##222
			..accept Worgen in the Woods (4)##223
		step
			goto Duskwood,75.3,48.7
			.talk Jonathan Carevin##661
			..turnin Worgen in the Woods (4)##223
		step
			goto Duskwood,75.8,45.3
			.talk Madame Eva##265
			..turnin Return the Comb##154
			..accept Deliver the Thread##157
		step
			goto 49.9,77.7
			.' Interact with gameobject: Mound of Loose Dirt
			.info It's easiest to work your way around to behind the farm around this spot.
			..turnin Sven's Revenge##95
			..accept Sven's Camp##230
		step
			goto Duskwood,36.1,80.6
			.from Zzarc'Vul##300
			.info He spawns at random points inside of the cave.
			.get Ogre's Monocle##1968|q 181/1
		step
			goto Duskwood,28,31.5
			.talk Abercrombie##289
			..turnin Deliver the Thread##157
			..accept Zombie Juice##158
		step
			goto Duskwood,7.8,34.2
			.talk Sven Yorgen##311
			..turnin Sven's Camp##230
			..accept The Shadowy Figure##262
		step
			goto Duskwood,33.6,24.5
			.kill 12 Starving Dire Wolf##213|q 226/1
			.kill 8 Rabid Dire Wolf##565|q 226/2
			.get 10 Lean Wolf Flank##1015|q 90/1
			.' You can find more around (1)|at 12.6,28.3
			.' You can find more around (2)|at 46.5,16.8
			.' You can find more around (3)|at 77.1,19.1
		step
			goto Duskwood,33.6,24.5
			.kill 15 Pygmy Venom Web Spider##539|q 245/1
			.from Venom Web Spider##217, Pygmy Venom Web Spider##539
			.get 6 Gooey Spider Leg##2251|q 93/1
			.' You can find more around (1)|at 12.6,28.3
			.' You can find more around (2)|at 46.5,16.8
			.' You can find more around (3)|at 77.1,19.1
		step
			goto Duskwood,77.4,36.1
			.from Stalvan Mistmantle##315
			.get Mistmantle Family Ring##3629|q 98/1
		step
			goto Duskwood,75.8,45.3
			.talk Madame Eva##265
			..turnin The Legend of Stalvan (13)##98
			..turnin The Shadowy Figure##262
			..accept The Shadowy Search Continues##265
		step
			goto Duskwood,79.8,48.1
			.talk Viktori Prism'Antras##276
			..turnin Look To The Stars (4)##181
		step
			goto Duskwood,72.5,46.9
			.talk Clerk Daltry##267
			..turnin The Shadowy Search Continues##265
			..accept Inquire at the Inn##266
		step
			goto Duskwood,73.8,44.5
			.talk Tavernkeep Smitts##273
			..turnin Zombie Juice##158
			..turnin Inquire at the Inn##266
			..accept Gather Rot Blossoms##156
			..accept Finding the Shadowy Figure##453
		step
			goto Duskwood,73.8,43.5
			.talk Chef Grual##272
			..turnin Seasoned Wolf Kabobs##90
			..turnin Dusky Crab Cakes##93
			..accept Return to Jitters##240
		step
			goto Duskwood,45.1,67
			.talk Watcher Dodds##888
			..turnin Eight-Legged Menaces##245
		step
			goto Duskwood,18.2,56.6
			.talk Jitters##288
			..turnin Return to Jitters##240
			..turnin Finding the Shadowy Figure##453
			..accept Return to Sven##268
		step
			goto Duskwood,7.8,34.2
			.talk Sven Yorgen##311
			..turnin Return to Sven##268
			..accept Proving Your Worth##323
		step
			goto Duskwood,7.7,33.2
			.talk Lars##893
			..turnin Wolves at Our Heels##226
		step
			goto Duskwood,17.6,35.9
			.from Mor'Ladim##522
			.get Mor'Ladim's Skull##3514|q 228/1
			.info He is elite, move on waypoint.
		step
			goto Duskwood,17.6,47.2
			.kill 15 Skeletal Fiend##531|q 57/1
			.kill 15 Skeletal Horror##202|q 57/2
			.from Skeletal Horror##202, Skeletal Fiend##531
			.get 8 Rot Blossom##1598|q 156/1
			.get 10 Skeleton Finger##2378|q 101/3
		step
			goto Duskwood,27.2,45.9
			.from Black Widow Hatching##930
			.get 5 Vial of Spider Venom##1130|q 101/2
		step
			goto Duskwood,23.5,39.1
			.from Flesh Eater##3, Rotted One##948, Bone Chewer##210, Plague Spreader##604
			.get 10 Ghoul Fang##1129|q 101/1
		step
			goto Duskwood,15.3,37.6
			.kill 15 Skeletal Raider##1110|q 323/1
			.kill 3 Skeletal Healer##787|q 323/2
			.kill 3 Skeletal Warder##785|q 323/3
		step
			goto Duskwood,7.8,34.2
			.talk Sven Yorgen##311
			..turnin Proving Your Worth##323
			..accept Seeking Wisdom##269
		step
			goto Duskwood,75.8,45.3
			.talk Madame Eva##265
			..turnin The Totem of Infliction##101
		step
			goto Duskwood,73.5,46.8
			.talk Commander Althea Ebonlocke##264
			..turnin The Night Watch (2)##57
			..turnin Mor'Ladim##228
			..accept The Night Watch (3)##58
			..accept The Daughter Who Lived##229
		step
			goto Duskwood,74,47.8
			.talk Watcher Ladimore##576
			..turnin The Daughter Who Lived##229
			..accept A Daughter's Love##231
		step
			goto Duskwood,74.1,44.7
			.talk Tavernkeep Smitts##273
			..turnin Gather Rot Blossoms##156
			..accept Juice Delivery##159
		step
			goto Duskwood,28,31.5
			.talk Abercrombie##289
			..turnin Juice Delivery##159
			..accept Ghoulish Effigy##133
		step
			goto Duskwood,17.7,29.1
			.' Interact with gameobject: A Weathered Grave
			..turnin A Daughter's Love##231
		step
			goto Duskwood,24.1,32.7
			.kill 20 Plague Spreader##604|q 58/1
			.collect An Old History Book##2794|q 331 |future
		step
			goto Duskwood,25.5,34.6
			.from Flesh Eater##3, Rotted One##948, Bone Chewer##210, Plague Spreader##604
			.get 7 Ghoul Rib##884|q 133/1
		step
			.use An Old History Book##2794
			..accept An Old History Book##337
		step
			goto Duskwood,28,31.5
			.talk Abercrombie##289
			..turnin Ghoulish Effigy##133
			..accept Ogre Thieves##134
		step
			goto Duskwood,33.4,76.4
			.collect Abercrombie's Crate##1349|q 134/1
			.info It looks like a wooden crate sitting next to a bunch of wooden barrels.
		step
			goto Duskwood,28,31.5
			.talk Abercrombie##289
			..turnin Ogre Thieves##134
			..accept Note to the Mayor##160
		step
			goto Duskwood,73.5,46.8
			.talk Commander Althea Ebonlocke##264
			..turnin The Night Watch (3)##58
		step
			goto Duskwood,71.9,46.4
			.talk Lord Ello Ebonlocke##263
			..turnin Note to the Mayor##160
			..accept Translate Abercrombie's Note##251
		step
			goto Duskwood,72.6,47.7
			.talk Sirra Von'Indi##268
			..turnin Translate Abercrombie's Note##251
			..accept Wait for Sirra to Finish##401
			.' Watch the dialogue.
			..turnin Wait for Sirra to Finish##401
			..accept Translation to Ello##252
		step
			goto Duskwood,71.9,46.4
			.talk Lord Ello Ebonlocke##263
			..turnin Translation to Ello##252
			..accept Bride of the Embalmer##253
		step
			goto Duskwood,28.9,30.8
			.' Interact with gameobject: Eliza's Grave Dirt
			.info It looks like a single dirt grave.
			.from Eliza##314
			.get The Embalmer's Heart##2382|q 253/1
		step
			goto Duskwood,71.9,46.4
			.talk Lord Ello Ebonlocke##263
			..turnin Bride of the Embalmer##253
		step
			goto Stormwind City,66,74.1
			.talk Elling Trias##482
			..turnin The Missing Diplomat(6)##1245
			..accept The Missing Diplomat(7)##1246
		step
			goto Stormwind City,74.3,59.2
			.talk Dashel Stonefist##4961
			..turnin The Missing Diplomat(7)##1246
			..accept The Missing Diplomat(8)##1447
		step
			goto Stormwind City,74.3,59.2
			.goal Defeat Dashel Stonefist|q 1447/1
		step
			goto Stormwind City,74.3,59.2
			.talk Dashel Stonefist##4961
			..turnin The Missing Diplomat(8)##1447
			..accept The Missing Diplomat(9)##1247
		step
			goto Stormwind City,77.1,30.2
			.talk Milton Sheaf##1440
			..turnin An Old History Book##337
		step
			goto Stormwind City,49.9,46
			.talk Bishop Farthing##1212
			..turnin Seeking Wisdom##269
		step
			goto Stormwind City,66,74.1
			.talk Elling Trias##482
			..turnin The Missing Diplomat(9)##1247
		step
			.' Congratulations! +73 quests for achievement "Loremaster of Eastern Kingdoms".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Eastern Kingdoms\\[45] Stranglethorn Vale",[[
author danaton
description This guide contain quest-chain (69 quests) for Stranglethorn Vale location.
startlevel 45
		step
			goto Stormwind,61.2,70.7
			.talk Auctioneer Jaxon##15659
			.buy 4 Lesser Bloodstone Ore##4278|q 627 |future
		step
			goto Stranglethorn Vale,38,3.3
			.talk Sergeant Yohwa##733
			..accept The Second Rebellion##203
			..accept Bad Medicine##204
		step
			goto Stranglethorn Vale,37.7,3.3
			.talk Corporal Kaleb##770
			..accept Krazek's Cookery##210
		step
			goto Stranglethorn Vale,26.9,77.2
			.talk Krazek##773
			..turnin Krazek's Cookery##210
			..accept Favor for Krazek##627
			..accept Investigate the Camp##201
			..accept Supplies to Private Thorsen##198
			..accept The Haunted Isle##616
		step
			goto Stormwind,61.2,70.7
			.talk Auctioneer Jaxon##15659
			.buy 4 Lesser Bloodstone Ore##4278|q 627/1
		step
			goto Stranglethorn Vale,26.9,77.2
			.talk Krazek##773
			..turnin Favor for Krazek##627
			..accept Return to Corporal Kaleb##622
		step
			goto Stranglethorn Vale,27,77.1
			.talk Kebok##737
			..accept Bloodscalp Ears##189
			..accept Hostile Takeover##213
		step
			goto Stranglethorn Vale,27.2,77
			.talk Baron Revilgaz##2496
			..turnin The Haunted Isle##616
			..accept The Stone of the Tides##578
		step
			goto Stranglethorn Vale,27.1,77.2
			.talk Crank Fizzlebub##2498
			..accept Singing Blue Shards##605
		step
			goto Stranglethorn Vale,28.3,77.6
			.talk Drizzlik##2495
			..accept Supply and Demand##575
		step
			goto Stranglethorn Vale,37.7,3.3
			.talk Corporal Kaleb##770
			..turnin Return to Corporal Kaleb##622
		step
			goto Stranglethorn Vale,40.48,8.10
			.talk Private Thorsen##738
			..turnin Supplies to Private Thorsen##198
			..accept Jungle Secrets##215
			.info Goes from the Rebel camp to the Kurzen Camp.
		step
			goto Stranglethorn Vale,38,3
			.talk Lieutenant Doren##469
			..turnin Jungle Secrets##215
			..accept Bookie Herod##200
		step
			goto Stranglethorn Vale,35.7,10.8
			.goal Locate the hunters' camp|q 201/1
		step
			goto Stranglethorn Vale,35.7,10.5
			.talk Barnil Stonepot##716
			..accept Welcome to the Jungle##583
		step
			goto Stranglethorn Vale,35.7,10.8
			.talk Hemet Nesingwary Jr.##715
			..turnin Welcome to the Jungle##583
			..accept Raptor Mastery (1)##194
		step
			goto Stranglethorn Vale,35.6,10.6
			.talk Ajeck Rouack##717
			..accept Tiger Mastery (1)##185
		step
			goto Stranglethorn Vale,35.6,10.5
			.talk Sir S. J. Erlgadin##718
			..accept Panther Mastery (1)##190
		step
			goto Stranglethorn Vale,40.6,13.3
			.from River Crocolisk##1150
			.get 2 Large River Crocolisk Skin##4053|q 575/1
		step
			goto Stranglethorn Vale,40.8,10.9
			.kill 10 Young Panther##683|q 190/1
		step
			goto Stranglethorn Vale,43.7,9.4
			.' Interact with gameobject: Bookie Herod's Records
			.info On the second floor of the house.
			..turnin Bookie Herod##200
			..accept The Hidden Key##328
		step
			goto Stranglethorn Vale,44.5,9.7
			.collect Venom Fern Extract##2634|q 204/2
			.info They look like a pile of brown boxes in the small camp.
		step
			goto Stranglethorn Vale,44,11.2
			.kill 15 Kurzen Jungle Fighter##937|q 203/1
			.from Kurzen Medicine Man##940, Kurzen Jungle Fighter##937
			.get 7 Jungle Remedy##2633|q 204/1
		step
			goto Stranglethorn Vale,38,3.3
			.talk Sergeant Yohwa##733
			..turnin The Second Rebellion##203
			..turnin Bad Medicine##204
			..accept Special Forces##574
		step
			.' Enter the cave and move forward without turning anywhere|goto 45.5,8.4,0.3|q 328
		step
			goto Stranglethorn Vale,49.6,7.6
			.' Interact with gameobject: Bookie Herod's Strongbox
			.info Inside the cave.
			..turnin The Hidden Key##328
			..accept The Spy Revealed!##329
		step
			goto Stranglethorn Vale,46.4,6.85
			.kill 10 Kurzen Commando##938|q 574/1
			.info Invisible rogue.
			.kill 6 Kurzen Headshrinker##941|q 574/2
			.info Mage with a staff.
		step
			goto Stranglethorn Vale,38,3
			.talk Lieutenant Doren##469
			..turnin The Spy Revealed!##329
			..turnin Special Forces##574
			..accept Patrol Schedules##330
			..accept Colonel Kurzen##202
		step
			goto Stranglethorn Vale,37.7,3.4
			.talk Corporal Sethman##1422
			..turnin Patrol Schedules##330
			..accept Report to Doren##331
		step
			goto Stranglethorn Vale,38,3
			.talk Lieutenant Doren##469
			..turnin Report to Doren##331
		step
			goto Stranglethorn Vale,37.8,3.6
			.talk Brother Nimetz##739
			..accept Kurzen's Mystery##207
		step
			goto Stranglethorn Vale,49.9,4
			.from Colonel Kurzen##813
			.get Kurzen's Head##3615|q 202/3
		step
			goto Stranglethorn Vale,49.35,7.6
			.kill 6 Kurzen Elite##939|q 202/1
			.' You can find more around|at 47.63,6.6
		step
			goto Stranglethorn Vale,48.9,5.75
			.kill 4 Kurzen Subchief##978|q 202/2
		step
			goto Stranglethorn Vale,38,3
			.talk Lieutenant Doren##469
			..turnin Colonel Kurzen##202
		step
			goto Stranglethorn Vale,35.6,10.5
			.talk Sir S. J. Erlgadin##718
			..turnin Panther Mastery (1)##190
			..accept Panther Mastery (2)##191
		step
			goto Stranglethorn Vale,33.6,11.5
			.kill 10 Young Stranglethorn Tiger##681|q 185/1
		step
			goto Stranglethorn Vale,35.6,10.6
			.talk Ajeck Rouack##717
			..turnin Tiger Mastery (1)##185
			..accept Tiger Mastery (2)##186
		step
			goto Stranglethorn Vale,31,10
			.kill 10 Panther##736|q 191/1
			.kill 10 Stranglethorn Tiger##682|q 186/1
		step
			goto Stranglethorn Vale,27,16.3
			.kill 10 Stranglethorn Raptor##685|q 194/1
		step
			goto Stranglethorn Vale,29.5,19.1
			.collect 1 The First Troll Legend##2005|q 207/1
		step
			goto Stranglethorn Vale,24.8,23
			.collect 1 The Second Troll Legend##2006|q 207/2
		step
			goto Stranglethorn Vale,21.4,23.35
			.goal Locate the haunted island|q 578/1
		step
			goto Stranglethorn Vale,22.9,12
			.collect 1 The Third Troll Legend##2007|q 207/3
		step
			goto Stranglethorn Vale,24.7,8.9
			.collect 1 The Fourth Troll Legend##2008|q 207/4
		step
			goto Stranglethorn Vale,25.6,11.3
			.from Bloodscalp Scout##588, Bloodscalp Hunter##595, Bloodscalp Mystic##701
			.get 15 Bloodscalp Ear##1519|q 189/1
		step
			goto Stranglethorn Vale,35.6,10.5
			.talk Sir S. J. Erlgadin##718
			..turnin Panther Mastery (2)##191
			..accept Panther Mastery (3)##192
		step
			goto Stranglethorn Vale,35.6,10.6
			.talk Ajeck Rouack##717
			..turnin Tiger Mastery (2)##186
			..accept Tiger Mastery (3)##187
		step
			goto Stranglethorn Vale,35.7,10.8
			.talk Hemet Nesingwary Jr.##715
			..turnin Raptor Mastery (1)##194
			..accept Raptor Mastery (2)##195
		step
			goto Stranglethorn Vale,32.5,18.8
			.kill 10 Elder Stranglethorn Tiger##1085|q 187/1
		step
			goto Stranglethorn Vale,37.1,24.4
			.kill 10 Lashtail Raptor##686|q 195/1
		step
			goto Stranglethorn Vale,39.4,34.7
			.kill 10 Shadowmaw Panther##684|q 192/1
		step
			goto Stranglethorn Vale,35.7,10.8
			.talk Hemet Nesingwary Jr.##715
			..turnin Raptor Mastery (2)##195
			..accept Raptor Mastery (3)##196
		step
			goto Stranglethorn Vale,35.6,10.6
			.talk Ajeck Rouack##717
			..turnin Tiger Mastery (3)##187
			..accept Tiger Mastery (4)##188
		step
			goto Stranglethorn Vale,35.6,10.5
			.talk Sir S. J. Erlgadin##718
			..turnin Panther Mastery (3)##192
			..accept Panther Mastery (4)##193
		step
			goto Stranglethorn Vale,37.8,3.6
			.talk Brother Nimetz##739
			..turnin Kurzen's Mystery##207
			..accept Troll Witchery##205
		step
			goto Stranglethorn Vale,32.2,17.3
			.from Sin'Dall##729
			.get Paw of Sin'Dall##3879|q 188/1
		step
			goto Stranglethorn Vale,32.6,40.4
			.kill 10 Jungle Stalker##687|q 196/1
		step
			goto Stranglethorn Vale,45.35,41.98
			.from Skullsplitter Witch Doctor##670, Skullsplitter Mystic##780
			.get 4 Skullsplitter Fetish##2466|q 205/1
		step
			goto Stranglethorn Vale,50,24
			.from Bhag'thera##728
			.get Fang of Bhag'thera##3876##3876|q 193/1
			.' Bhag'thera can also be found (1)|at 47.2,28.6
			.' Bhag'thera can also be found (2)|at 48.8,20.1
		step
			goto Stranglethorn Vale,44.4,21.6
			.from Venture Co. Geologist##1096
			.get 8 Tumbled Crystal##4106|q 213/1
		step
			goto Stranglethorn Vale,35.7,10.8
			.talk Hemet Nesingwary Jr.##715
			..turnin Raptor Mastery (3)##196
			..accept Raptor Mastery (4)##197
		step
			goto Stranglethorn Vale,35.6,10.6
			.talk Ajeck Rouack##717
			..turnin Tiger Mastery (4)##188
		step
			goto Stranglethorn Vale,35.6,10.5
			.talk Sir S. J. Erlgadin##718
			..turnin Panther Mastery (4)##193
		step
			goto Stranglethorn Vale,37.8,3.6
			.talk Brother Nimetz##739
			..turnin Troll Witchery##205
			..accept Mai'Zoth##206
		step
			goto Stranglethorn Vale,52.9,27.6
			.' Enter the cave|at 50.23,27.95
			.from Mai'Zoth##818
			.get 1 Mind's Eye##3616|q 206/1
		step
			goto Stranglethorn Vale,32.1,43.4
			.from Tethis##730
			.get Talon of Tethis##3877|q 197/1
		step
			goto Stranglethorn Vale,40.3,50.1
			.from Crystal Spine Basilisk##689
			.get 10 Singing Crystal Shard##3918|q 605/1
			.' You can find more basilisk (1)|at 47.5,6.0
			.' You can find more basilisk (2)|at 25.1,17.7
		step
			goto Stranglethorn Vale,26.7,73.6
			.talk Captain Hecklebury Smotts##2500
			..accept The Captain's Chest##614
		step
			goto Stranglethorn Vale,28.1,76.2
			.talk First Mate Crazz##2490
			..accept The Bloodsail Buccaneers (1)##595
		step
			goto Stranglethorn Vale,27.6,76.7
			.talk Fin Fizracket##2486
			..accept Stranglethorn Fever##348
		step
			goto Stranglethorn Vale,27.8,77.1
			.talk "Sea Wolf" MacKinley##2501
			..accept Scaring Shaky##606
		step
			goto Stranglethorn Vale,27.1,77.4
			.talk Whiskey Slim##2491
			..accept Whiskey Slim's Lost Grog##580
		step
			goto Stranglethorn Vale,27.1,77.2
			.talk Crank Fizzlebub##2498
			..turnin Singing Blue Shards##605
			..accept Venture Company Mining##600
			..accept Zanzil's Secret##621
		step
			goto Stranglethorn Vale,26.9,77.2
			.talk Krazek##773
			..turnin Investigate the Camp##201
		step
			goto Stranglethorn Vale,27,77.1
			.talk Kebok##737
			..turnin Bloodscalp Ears##189
			..turnin Hostile Takeover##213
			..accept Skullsplitter Tusks##209
		step
			goto Stranglethorn Vale,27.2,77
			.talk Baron Revilgaz##2496
			..turnin The Stone of the Tides##578
			..accept Water Elementals##601
		step
			goto Stranglethorn Vale,26.8,76.4
			.talk Privateer Bloads##2494
			..accept Akiris by the Bundle##617
		step
			goto Stranglethorn Vale,28.3,77.6
			.talk Drizzlik##2495
			..turnin Supply and Demand##575
			..accept Some Assembly Required##577
		step
			goto Stranglethorn Vale,27.3,69.5
			.' Interact with gameobject: Bloodsail Correspondence
			.info It's a piece of paper sitting on top of a barrel.
			..turnin The Bloodsail Buccaneers (1)##595
			..accept The Bloodsail Buccaneers (2)##597
		step
			goto Stranglethorn Vale,32.2,66.8
			.from Elder Mistvale Gorillas##1557
			.get 5 Mistvale Giblets##3919|q 606/1
		step
			goto Stranglethorn Vale,31.2,68
			.from Elder Mistvale Gorillas##1557, Silverback Patriarch##1558
			.collect 1 Gorilla Fang##2799|q 348
		step
			goto Stranglethorn Vale,35.3,60.4
			.talk Witch Doctor Unbagwa##1449
			.' Give him 1 Gorilla Fang.
			.' 3 gorillas will attack you one at a time.
			.' Mokk the Savage is the final gorilla.
			.from Mokk the Savage##1514
			.get Heart of Mokk##2797|q 348/1
		step
			goto Stranglethorn Vale,40,58.24
			.from Zanzil Zombie##1488, Zanzil Naga##1491
			.get 12 Zanzil's Mixture##4016|q 621/1
			.' You can find more around (1)|at 34.12,51.96
		step
			goto Stranglethorn Vale,37,69.7
			.from Gorlash##1492
			.get Smotts' Chest##3932|q 614/1
		step
			goto Stranglethorn Vale,26.9,73.6
			.talk "Shaky" Phillipe##2502
			..turnin Scaring Shaky##606
			..accept Return to MacKinley##607
		step
			goto Stranglethorn Vale,26.7,73.6
			.talk Captain Hecklebury Smotts##2500
			..turnin The Captain's Chest##614
		step
			goto Stranglethorn Vale,28.1,76.2
			.talk First Mate Crazz##2490
			..turnin The Bloodsail Buccaneers (2)##597
			..accept The Bloodsail Buccaneers (3)##599
		step
			goto Stranglethorn Vale,27.6,76.7
			.talk Fin Fizracket##2486
			..turnin Stranglethorn Fever##348
		step
			goto Stranglethorn Vale,27.8,77.1
			.talk "Sea Wolf" MacKinley##2501
			..turnin Return to MacKinley##607
			..accept Voodoo Dues##609
		step
			goto Stranglethorn Vale,27.1,77.2
			.talk Crank Fizzlebub##2498
			..turnin Zanzil's Secret##621
		step
			goto Stranglethorn Vale,26.9,77.3
			.talk Deeg##2488
			..accept Up to Snuff##587
		step
			goto Stranglethorn Vale,27.2,77
			.talk Fleet Master Seahorn##2487
			..turnin The Bloodsail Buccaneers (3)##599
			..accept The Bloodsail Buccaneers (4)##604
		step
			goto Stranglethorn Vale,28.6,75.9
			.talk Dizzy One-Eye##2493
			..accept Keep An Eye Out##576
		step
			goto Stranglethorn Vale,29.6,80.9
			.' Interact with gameobject: Bloodsail Orders
			.info They are scrolls laying on a box and in the tent here.
			.get Bloodsail Orders##3921|q 604/3
			.' Interact with gameobject: Bloodsail Charts
			.info They are scrolls laying on a box and in the tent here.
			.get Bloodsail Charts##3920|q 604/2
			.' They can also spawn in the camp to the southwest|at 27.0,82.8
		step
			goto Stranglethorn Vale,32.8,76.2
			.kill 10 Bloodsail Swashbuckler##1563|q 604/1
			.' Kill Bloodsail pirates along the beach around this area
			.get Dizzy's Eye##3897|q 576/1
			.get 15 Snuff##3910|q 587/1
		step
			goto Stranglethorn Vale,28.6,75.9
			.talk Dizzy One-Eye##2493
			..turnin Keep An Eye Out##576
		step
			goto Stranglethorn Vale,26.9,77.3
			.talk Deeg##2488
			..turnin Up to Snuff##587
		step
			goto Stranglethorn Vale,27.2,77
			.talk Fleet Master Seahorn##2487
			..turnin The Bloodsail Buccaneers (4)##604
			..accept The Bloodsail Buccaneers (5)##608
		step
			goto Stranglethorn Vale,24.7,63.7
			.from Naga Explorers##1907
			.get 10 Akiris Reed##4029|q 617/1
			.' You can find more around|at 26.1,61.9
		step
			goto Stranglethorn Vale,40,58.2
			.from Chucky "Ten Thumbs"##2537
			.get Chucky's Huge Ring##3926|q 609/3
		step
			goto Stranglethorn Vale,34.9,51.9
			.from Jon-Jon the Crow##2536
			.get Jon-Jon's Golden Spyglass##3925|q 609/2
		step
			goto Stranglethorn Vale,35.1,51.1
			.from Maury "Club Foot" Wilkins##2535
			.get Maury's Clubbed Foot##3924|q 609/1
		step
			goto Stranglethorn Vale,41.4,42.3
			.from Venture Co. Strip Miner##674
			.get 10 Singing Blue Crystal##3917|q 600/1
		step
			goto Stranglethorn Vale,42.5,36.7
			.kill Skullsplitter Trolls|n
			.get 18 Skullsplitter Tusk##1524|q 209/1
			.' You can find more of these trolls|at 45.4,32
		step
			goto Stranglethorn Vale,40,29
			.from Snapjaw Crocolisks##1152
			.get 5 Snapjaw Crocolisk Skin##4104|q 577/1
		step
			goto Stranglethorn Vale,21.7,25
			.from Lesser Water Elemental##691
			.get 6 Water Elemental Bracers##3923|q 601/1
		step
			goto Stranglethorn Vale,35.7,10.8
			.talk Hemet Nesingwary Jr.##715
			..turnin Raptor Mastery (4)##197
			..accept Big Game Hunter##208
		step
			goto Stranglethorn Vale,37.8,3.6
			.talk Brother Nimetz##739
			..turnin Mai'Zoth##206
		step
			goto Stranglethorn Vale,38.2,36.4
			.from King Bangalash##731
			.get Head of Bangalash##3880|q 208/1
		step
			goto Stranglethorn Vale,27.8,77.1
			.talk "Sea Wolf" MacKinley##2501
			..turnin Voodoo Dues##609
		step
			goto Stranglethorn Vale,26.8,76.4
			.talk Privateer Bloads##2494
			..turnin Akiris by the Bundle (1)##617
			..accept Akiris by the Bundle (2)##623
		step
			goto Stranglethorn Vale,27.1,77.2
			.talk Crank Fizzlebub##2498
			..turnin Venture Company Mining##600
		step
			goto Stranglethorn Vale,27,77.1
			.talk Kebok##737
			..turnin Skullsplitter Tusks##209
		step
			goto Stranglethorn Vale,27.2,77
			.talk Baron Revilgaz##2496
			..turnin Water Elementals##601
			..accept Magical Analysis##602
		step
			goto Stranglethorn Vale,28.3,77.6
			.talk Drizzlik##2495
			..turnin Some Assembly Required##577
			..accept Excelsior##628
		step
			goto Stranglethorn Vale,27.8,77.1
			.talk "Sea Wolf" MacKinley##2501
			..accept Cracking Maury's Foot##613
		step
			goto Stranglethorn Vale,50,27.8
			.from Mosh'Ogg Mauler##678, Mosh'Ogg Shaman##679
			.get 1 Maury's Key##3930|q 613/1
		step
			goto Stranglethorn Vale,25.3,19
			.from Elder Saltwater Crocolisk##2635
			.get Elder Crocolisk Skin##4105|q 628/1
		step
			goto Stranglethorn Vale,35.7,10.8
			.talk Hemet Nesingwary Jr.##715
			..turnin Big Game Hunter##208
		step
			goto Stranglethorn Vale,27.8,77.1
			.talk "Sea Wolf" MacKinley##2501
			..turnin Cracking Maury's Foot##613
		step
			goto Stranglethorn Vale,28.3,77.6
			.talk Drizzlik##2495
			..turnin Excelsior##628
		step
			goto Stranglethorn Vale,35.1,72.9
			.' Interact with gameobject: Half-Buried Bottles
			.info They are little blue bottles that can spawn anywhere along this beach close to the water.
			.collect 1 Carefully Folded Note##4098|q 594 |future
		step
			.use Carefully Folded Note##4098
			..accept Message in a Bottle (1)##594
		step
			goto Stranglethorn Vale,38.5,80.6
			.talk Princess Poobah##2634
			..turnin Message in a Bottle (1)##594
			..accept Message in a Bottle (2)##630
		step
			goto Stranglethorn Vale,41,83
			.from King Mukla##1559
			.get Shackle Key##4103|q 630/1
		step
			goto Stranglethorn Vale,38.5,80.6
			.talk Princess Poobah##2634
			..turnin Message in a Bottle (2)##630
		step
			goto Stranglethorn Vale,29.48,89.21
			.' While doing the next 3 steps, look for Cortello's Riddle on the ships:
			.' Interact with gameobject: Cortello's Riddle
			.info It's a scroll.
			.use Cortello's Riddle##4056
			..accept Cortello's Riddle (1)##624
			.' You can find more around (1)|at 30.7,89.66
			.info Manual skip to the next step of the guide
		step
			goto Stranglethorn Vale,32.9,88.2
			.kill 1 Captain Stillwater##2550|q 608/1
			.info Standing on the middle deck of the ship.
		step
			goto Stranglethorn Vale,30.6,90.6
			.kill 1 Fleet Master Firallon##2546|q 608/3
			.info Standing on the middle deck of the ship.
		step
			goto Stranglethorn Vale,29.2,88.3
			.kill 1 Captain Keelhaul##2548|q 608/2
			.info Standing on the middle deck of the ship.
		step
			.' Make sure you have accepted the Cortello's Riddle quest:
			.use Cortello's Riddle##4056
			..accept Cortello's Riddle (1)##624
		step
			goto Stranglethorn Vale,27.2,77
			.talk Fleet Master Seahorn##2487
			..turnin The Bloodsail Buccaneers (5)##608
		step
			goto Swamp of Sorrows,22.9,48.2
			.' Interact with gameobject: A Soggy Scroll
			..turnin Cortello's Riddle (1)##624
			..accept Cortello's Riddle (2)##625
		step
			goto Dustwallow Marsh,68.8,53.2
			.talk Privateer Groy##2616
			..turnin Akiris by the Bundle##623
		step
			goto Dustwallow Marsh,31.1,66.1
			.' Interact with gameobject: Musty Scroll
			..turnin Cortello's Riddle (2)##625
			..accept Cortello's Riddle (3)##626
		step
			goto The Hinterlands,80.8,46.8
			.' Interact with gameobject: Cortello's Treasure
			..turnin Cortello's Riddle (3)##626
			.info Under waterfall.
		step
			goto The Hinterlands,79.43,70.27
			.collect 12 Pupellyverbos Port##3900|q 580/1
		step
			goto Alterac Mountains,18.8,78.5
			.talk Archmage Ansirem Runeweaver##2543
			..turnin Magical Analysis##602
			..accept Ansirem's Key##603
		step
			goto Stranglethorn Vale,27.3,77.5
			.talk Catelyn the Blade##2542
			..turnin Ansirem's Key##603
			..accept "Pretty Boy" Duncan##610
		step
			goto Stranglethorn Vale,27.1,77.4
			.talk Whiskey Slim##2491
			..turnin Whiskey Slim's Lost Grog##580
		step
			goto Stranglethorn Vale,27.4,69.4
			.from "Pretty Boy" Duncan##2545
			.get 1 Catelyn's Blade##4027|q 610/1
		step
			goto Stranglethorn Vale,27.3,77.5
			.talk Catelyn the Blade##2542
			..turnin "Pretty Boy" Duncan##610
			..accept The Curse of the Tides##611
		step
			goto Stranglethorn Vale,24.95,23.6
			.use Catelyn's Blade##4027
			.from Gazban##2624
			.get 1 Stone of the Tides##4034|q 611/1
		step
			goto Stranglethorn Vale,27.2,76.9
			.talk Baron Revilgaz##2496
			..turnin The Curse of the Tides##611
		step
			.' Congratulations! +69 quests for achievement "Loremaster of Eastern Kingdoms".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Eastern Kingdoms\\[45] Swamp of Sorrows",[[
author danaton
description This guide contain quest-chain (13 quests) for Swamp of Sorrows location.
startlevel 45
		step
			goto Stormwind,69.50,40.40
			.talk Brohann Caskbelly ##5384
			..accept In Search of The Temple##1448
			.info Dungeon: The Sunken Temple Quest Chain.
		step
			goto Stormwind City,51.8,74.3
			.talk Mazen Mac'Nadir##338
			..accept Mazen's Behest (1)##1363
		step
			goto Stormwind City,51.4,73.8
			.talk Acolyte Dellis##5386
			..turnin Mazen's Behest (1)##1363
			..accept Mazen's Behest (2)##1364
		step
			goto Swamp of Sorrows,25.9,32.4
			.talk Holaaru##18221
			..accept Pool of Tears##9610
		step
			goto Swamp of Sorrows,25.8,31.8
			.talk Anchorite Avuun##17127
			..accept Help Watcher Biggs##9609
			..accept Mercy for the Cursed##9448
		step
			goto Swamp of Sorrows,26,31.4
			.talk Magtoor##1776
			..accept Draenethyst Crystals##1389
		step
			goto Swamp of Sorrows,13,35.3
			.from Swampwalker##764, Swampwalker Elder##765, Tangled Horror##766
			.get Khadgar's Essays on Dimensional Convergence##6065|q 1364/1
		step
			goto Swamp of Sorrows,26.7,59.8
			.talk Watcher Biggs##5476
			..turnin Help Watcher Biggs##9609
			..accept Encroaching Wildlife##1396
		step
			goto Swamp of Sorrows,30.4,38.9
			.kill 8 Young Sawtooth Crocolisk##1084|q 1396/1
			.' You can find more around (1)|at 25.9,52.2
			.' You can find more around (2)|at 24.6,39.2
			.' You can find more around (3)|at 38.6,35.3
			.' You can find more around (4)|at 37.6,51.2
		step
			goto Swamp of Sorrows,24.4,61.5
			.kill 10 Sorrow Spinner##858|q 1396/2
			.' You can find more around (1)|at 17.6,53.4
			.' You can find more around (2)|at 26.4,45.9
			.' You can find more around (3)|at 22.5,37.7
			.' You can find more around (4)|at 39.5,30.8
			.' You can find more around (5)|at 31.6,50.5
		step
			goto Swamp of Sorrows,39.2,39.3
			.kill 10 Swamp Jaguar##767|q 1396/2
			.' You can find more around (1)|at 25.3,41.3
			.' You can find more around (2)|at 40.4,45.3
			.' You can find more around (3)|at 32,50
			.' You can find more around (4)|at 23.5,60.1
		step
			goto Swamp of Sorrows,26.7,59.8
			.talk Watcher Biggs##5476
			..turnin Encroaching Wildlife##1396
			..accept The Lost Caravan##1421
		step
			goto Swamp of Sorrows,70.00,53.20
			.goal Search for the Temple of Atal'Hakkar|q 1448/1
			.info Dungeon: The Sunken Temple Quest Chain.
		step
			goto Swamp of Sorrows,70.3,50.7
			.collect 5 Atal'ai Artifact##6175|q 9610/1
			.info All around at the bottom of the lake.
		step
			goto Swamp of Sorrows,56.9,24.7
			.collect Lost Supplies##6172|q 1423 |future
			.info Open the Scattered Crate.
			.' You can find more around (1)|at 62.3,22.5
			.' You can find more around (2)|at 64.1,23.4
			.' You can find more around (3)|at 45.8,35.6
			.' You can find more around (4)|at 43.3,37.1
		step
			.use Lost Supplies##6172
			..accept The Lost Supplies##1423
		step
			goto Swamp of Sorrows,62.1,22.3
			.collect 6 Draenethyst Crystal##6071|q 1389/1
			.kill 3 Cursed Lost One##17115|q 9448/1
		step
			goto Swamp of Sorrows,64.5,18.3
			.collect Wizards' Reagents##6170|q 1421/1
		step
			goto Swamp of Sorrows,65.5,18.2
			.talk Galen Goodward##5391
			..accept Galen's Escape##1393
		step
			goto Swamp of Sorrows,51.75,29.55
			.goal Escort Galen out of the Fallow Sanctuary|q 1393/1
		step
			goto Swamp of Sorrows,47.8,39.8
			.' Interact with gameobject: Galen's Strongbox
			..turnin Galen's Escape##1393
		step
			goto Swamp of Sorrows,26.7,59.8
			.talk Watcher Biggs##5476
			..turnin The Lost Caravan##1421
			..accept Driftwood##1398
		step
			goto Swamp of Sorrows,25.9,32.4
			.talk Holaaru##18221
			..turnin Pool of Tears##9610
		step
			goto Swamp of Sorrows,25.8,31.8
			.talk Anchorite Avuun##17127
			..turnin Mercy for the Cursed##9448
		step
			goto Swamp of Sorrows,26,31.4
			.talk Magtoor##1776
			..turnin Draenethyst Crystals##1389
		step
			goto Swamp of Sorrows,83.1,12.7
			.collect 8 Sundried Driftwood##6146|q 1398/1
			.' You can find more around (1)|at 89.3,22.4
			.' You can find more around (2)|at 92.9,36.3
			.' You can find more around (3)|at 93.7,54.8
			.' You can find more around (4)|at 92,67.1
			.' You can find more around (5)|at 87.8,79.1
			.' You can find more around (6)|at 83.2,89.6
		step
			goto Swamp of Sorrows,26.7,59.8
			.talk Watcher Biggs##5476
			..turnin Driftwood##1398
			..accept Deliver the Shipment##1425
		step
			goto Blasted Lands,67.6,19.2
			.talk Watcher Mahar Ba##5385
			..turnin Mazen's Behest (2)##1364
		step
			goto Blasted Lands,66.5,21.4
			.talk Quartermaster Lungertz##5393
			..turnin The Lost Supplies##1423
			..turnin Deliver the Shipment##1425
		step
			goto Stormwind,69.50,40.40
			.talk Brohann Caskbelly ##5384
			..turnin In Search of The Temple##1448
			.info Dungeon: The Sunken Temple Quest Chain.
		step
			.' Congratulations! +13 quests for achievement "Loremaster of Eastern Kingdoms".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Eastern Kingdoms\\[60] Blasted Lands",[[
author danaton
description This guide contain quest-chain (16 quests) for Blasted Lands location.
startlevel 60
		step
			goto Stormwind City,51.8,74.3
			.talk Mazen Mac'Nadir##338
			..accept Mazen's Behest##1363
		step
			goto Stormwind City,51.4,73.8
			.talk Acolyte Dellis##5386
			..turnin Mazen's Behest##1363
			..accept Mazen's Behest##1364
		step
			goto Stormwind,48.7,87.6
			.talk High Sorcerer Andromath##5694
			..accept Vital Supplies##1477
		step
			goto Duskwood,75.8,46.2
			.talk Watchmaster Sorigal##5464
			..turnin Vital Supplies##1477
			..accept Supplies for Nethergarde##1395
		step
			goto Blasted Lands,67.6,19.3
			.talk Ambassador Ardalan##7826
			..accept Petty Squabbles##2783
		step
			goto Blasted Lands,66.5,21.4
			.talk Quartermaster Lungertz##5393
			..turnin Supplies for Nethergarde##1395
		step
			goto Blasted Lands,50.6,14.3
			.talk Bloodmage Lynnore##7506
			..accept The Basilisk's Bite##2601
			..accept Vulture's Vigor##2603
		step
			goto Blasted Lands,50.6,14.2
			.talk Bloodmage Drazial##7505
			..accept Snickerfang Jowls##2581
			..accept A Boar's Vitality##2583
			..accept The Decisive Striker##2585
		step
			goto Swamp of Sorrows,34.3,66.1
			.talk Fallen Hero of the Horde##7572
			..turnin Petty Squabbles##2783
			..accept A Tale of Sorrow##2801
		step
			goto Swamp of Sorrows,34.3,66.1
			.talk Fallen Hero of the Horde##7572
			.goal A Tale of Sorrow|q 2801/1
		step
			goto Swamp of Sorrows,34.3,66.1
			.talk Fallen Hero of the Horde##7572
			..turnin A Tale of Sorrow##2801
			..accept The Stones That Bind Us##2681
		step
			goto Swamp of Sorrows,13,35.3
			.from Swampwalker##764, Swampwalker Elder##765, Tangled Horror##766
			.get Khadgar's Essays on Dimensional Convergence##6065|q 1364/1
		step
			goto Blasted Lands,43.4,10.6
			.kill 1 Servant of Grol##7669|q 2681/2
			.info It is necessary to kill near the floating stone.
		step
			goto Blasted Lands,41.2,14.4
			.kill 2 Servant of Grol##7669|q 2681/2
			.info It is necessary to kill near the floating stone.
		step
			goto Blasted Lands,41.5,39.1
			.kill 1 Servant of Sevine##7671|q 2681/4
			.info It is necessary to kill near the floating stone.
		step
			goto Blasted Lands,39.4,34.4
			.kill 2 Servant of Sevine##7671|q 2681/4
			.info It is necessary to kill near the floating stone.
		step
			goto Blasted Lands,38.2,33.9
			.kill 3 Servant of Sevine##7671|q 2681/4
			.info It is necessary to kill near the floating stone.
		step
			goto Blasted Lands,52,35.6
			.talk Kum'isha the Collector##7363
			..accept To Serve Kum'isha##2521
			..accept Everything Counts In Large Amounts##3501
		step
			goto Blasted Lands,49.4,43.6
			.kill 3 Servant of Grol##7669|q 2681/2
			.info It is necessary to kill near the floating stone.
		step
			goto Blasted Lands,58.2,48.8
			.kill 9 Servant of Razelikh##7668|q 2681/1
			.info It is necessary to kill near the floating stone.
		step
			goto Blasted Lands,66.7,29.3
			.kill 3 Servant of Allistarj##7670|q 2681/3
			.info It is necessary to kill near the floating stone.
		step
			.' Follow the Grinding Circle killing boars, hyenas, vultures, basilisks, and scorpions until you:
			.collect 6 Blasted Boar Lung##8392
			.collect 5 Snickerfang Jowl##8391
			.collect 16 Vulture Gizzard##8396
			.collect 12 Basilisk Brain##8394
			.collect 6 Scorpok Pincer##8393
			.' At Grind Point 1|at 49,18
			.' At Grind Point 2|at 45,26
			.' At Grind Point 3|at 46,34
			.' At Grind Point 4|at 56,37
			.' At Grind Point 5|at 56.3,30.5
			.' At Grind Point 6|at 63,28
			.info Skip this step if you have done the quests from the previous step already.
		step
			goto Blasted Lands,50.6,14.3
			.talk Bloodmage Lynnore##7506
			..turnin The Basilisk's Bite##2601
			..turnin Vulture's Vigor##2603
			.info Do not accept the following quests, they are daily.
		step
			goto Blasted Lands,50.6,14.2
			.talk Bloodmage Drazial##7505
			..turnin Snickerfang Jowls##2581
			..turnin A Boar's Vitality##2583
			..turnin The Decisive Striker##2585
			.info Do not accept the following quests, they are daily.
		step
			goto Swamp of Sorrows,34.3,66.1
			.talk Fallen Hero of the Horde##7572
			..turnin The Stones That Bind Us##2681
			..accept Heroes of Old (1)##2702
		step
			goto Swamp of Sorrows,34.3,66.1
			.talk Corporal Thund Splithoof##7750
			..turnin Heroes of Old (1)##2702
			..accept Heroes of Old (2)##2701
		step
			goto Swamp of Sorrows,33.3,66.2
			.' Interact with object: Spectral Lockbox
			..turnin Heroes of Old (2)##2701
		step
			goto Swamp of Sorrows,34.3,66.1
			.talk Fallen Hero of the Horde##7572
			..accept Kirith##2721
		step
			.' Enter the cave and move along the right side|goto Blasted Lands,65.05,32.93,0.3 |q 2721
		step
			goto Blasted Lands,69.3,30.8
			.kill 1 Kirith the Damned##7728|n
			.talk Spirit of Kirith##7729
			..turnin Kirith##2721
			..accept The Cover of Darkness##2743
		step
			goto Swamp of Sorrows,34.3,66.1
			.talk Fallen Hero of the Horde##7572
			..turnin The Cover of Darkness##2743
			.info The next quest "The Demon Hunter" we do not accept, it is completed in the Azshara guide.
		step
			goto Blasted Lands,67.6,19.2
			.talk Watcher Mahar Ba##5385
			..turnin Mazen's Behest (2)##1364
		step
			goto Blasted Lands,64.7,33.05
			.from Shadowsworn Cultist##6004, Shadowsworn Thug##6005
			.get Flawless Draenethyst Sphere##8244|q 2521/1
			.get Imperfect Draenethyst Fragment##10593|q 3501/1
		step
			goto Blasted Lands,52,35.6
			.talk Kum'isha the Collector##7363
			..turnin To Serve Kum'isha##2521
			..turnin Everything Counts In Large Amounts##3501
			.info Do not accept the following quests, they are daily.
		step
			.' Congratulations! +16 quests for achievement "Loremaster of Eastern Kingdoms".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Eastern Kingdoms\\[50] Searing Gorge",[[
author danaton
description This guide contain quest-chain (30 quests) for Searing Gorge location.
startlevel 50
		step
			goto Ironforge,24.2,74.7
			.talk Auctioneer Redmuse##8720
			.buy 15 Silk Cloth##4306|q 4449 |future
		step
			goto Searing Gorge,37.6,26.5
			.' Interact with gameobject: Wanted/Missing/Lost & Found
			..accept WANTED: Overseer Maltorius##7701
			..accept STOLEN: Smithing Tuyere and Lookout's Spyglass##7728
			..accept JOB OPPORTUNITY: Culling the Competition##7729	
		step
			goto Searing Gorge,38.4,27.7
			.talk Evonice Sootsmoker##14628
			..accept Kill 'Em With Sleep Deprivation##7702
		step
			goto Searing Gorge,38.6,27.8
			.talk Hansel Heavyhands##14627
			..accept Curse These Fat Fingers##7723
			..accept Fiery Menace!##7724
			..accept Incendosaurs? Whateverosaur is More Like It##7727
		step
			goto Searing Gorge,38.8,28.5
			.talk Master Smith Burninate##14624
			..accept What the Flux?##7722
		step
			goto Searing Gorge,39.1,39
			.talk Kalaran Windblade##8479
			..accept Divine Retribution##3441
		step
			goto Searing Gorge,39.1,39
			.talk Kalaran Windblade##8479
			.goal Listen as Kalaran Windblade tells his story|q 3441/1
		step
			goto Searing Gorge,39.1,39
			.talk Kalaran Windblade##8479
			..turnin Divine Retribution##3441
			..accept The Flawless Flame##3442
		step
			goto Searing Gorge,36.8,49.4
			.from Dark Iron Steamsmith##5840
			.get Smithing Tuyere##18959|q 7728/1
		step
			.from Dark Iron Steamsmith##5840, Dark Iron Slaver##5844, Dark Iron Taskmaster##5846
			.collect Grimesilt Outhouse Key##11818|q 4451 |future
		step
			.use Grimesilt Outhouse Key##11818
			..accept The Key to Freedom##4451
		step
			goto Searing Gorge,46.3,41.8
			.kill 20 Heavy War Golem##5854|q 7723/1
			.' You can find more around (1)|at 33.5,64.2
			.' You can find more around (2)|at 44.5,63.9
			.' You can find more around (3)|at 51.9,59.4
			.' You can find more around (4)|at 32.1,48.6
		step
			goto Searing Gorge,33.1,51.8
			.from Dark Iron Lookout##8566
			.get Lookout's Spyglass##18960|q 7728/2
		step
			goto Searing Gorge,32,62.2
			.kill 20 Greater Lava Spider##5858|q 7724/1
		step
			goto Searing Gorge,30.8,72.8
			.from Magma Elemental##5855
			.get 4 Golem Oil##10511|q 3442/2
			.from Inferno Elemental##5852, Magma Elemental##5855
			.get 4 Heart of Flame##10509|q 3442/1
		step
			goto Searing Gorge,70.7,73.3
			.from Margol the Rager##5833
			.collect Margol's Horn##10000|q 3181 |future
		step
			.use Margol's Horn##10000
			..accept The Horn of the Beast##3181
		step
			goto Searing Gorge,65.5,62.3
			.' Interact with gameobject: Wooden Outhouse.
			..turnin The Key to Freedom##4451
			..accept Caught!##4449
		step
			goto Searing Gorge,63.3,59.7
			.kill 8 Dark Iron Geologist##5839|q 4449/1
		step
			goto Searing Gorge,65.5,62.3
			.' Interact with gameobject: Wooden Outhouse
			..turnin Caught!##4449
			..accept Ledger from Tanaris##4450
		step
			goto Searing Gorge,65.5,62.3
			.collect Goodsteel Ledger##11727|q 4450/1
			.info Book he slides under the door.
		step
			goto Searing Gorge,61.7,72
			.from Glassweb Spider##5856
			.get 20 Solid Crystal Leg Shaft##11725|q 4450/2
			.' You can find more Glassweb Spiders|at 61.9,54.6
		step
			goto Searing Gorge,63.9,61
			.talk Dorius Stonetender##8284
			..accept Suntara Stones (1)##3367
			.' Escort him.
		step
			goto Searing Gorge,74.45,19.45
			.goal Dorius Escort|q 3367/1
			.' Escort him until he gets murdered (it's part of the quest).
			.' He drops a note when he dies.
		step
			goto Searing Gorge,74.45,19.45
			.' Interact with gameobject: Singed Letter
			..turnin Suntara Stones (1)##3367
			..accept Suntara Stones (2)##3368
		step
			goto Searing Gorge,39,38.9
			.talk Kalaran Windblade##8479
			..turnin The Flawless Flame##3442
			..accept Forging the Shaft##3443
		step
			goto Searing Gorge,42.4,47.1
			.kill Dark Iron dwarves|n
			.get 8 Thorium Plated Dagger##10551|q 3443/1
		step
			goto Searing Gorge,39,38.9
			.talk Kalaran Windblade##8479
			..turnin Forging the Shaft##3443
			..accept The Flame's Casing##3452
		step
			goto Searing Gorge,38.6,27.8
			.talk Hansel Heavyhands##14627
			..turnin Curse These Fat Fingers##7723
			..turnin Fiery Menace!##7724
		step
			goto Searing Gorge,39,27.5
			.talk Taskmaster Scrange##14626
			..turnin STOLEN: Smithing Tuyere and Lookout's Spyglass##7728
		step
			goto Ironforge,67.8,8.3
			.talk Curator Thorius##8256
			..turnin Suntara Stones (2)##3368
			..accept Dwarven Justice##3371
		step
			goto Loch Modan,18.2,84
			.talk Mountaineer Pebblebitty##3836
			..turnin The Horn of the Beast##3181
			..accept Proof of Deed##3182
		step
			goto Ironforge,67.8,8.3
			.talk Curator Thorius##8256
			..turnin Proof of Deed##3182
			.' Watch the dialogue.
			..accept At Last!##3201
		step
			goto Loch Modan,18.2,84
			.talk Mountaineer Pebblebitty##3836
			..turnin At Last!##3201
		step
			goto Searing Gorge,41.5,54.7|n
			.' The entrance to the Slag Pit is here|goto Searing Gorge,41.5,54.7,0.5|noway|q 3371
			.info It's up on the Metal Riser Walkway things.
		step
			goto Searing Gorge,37.6,44.3|n
			.' Follow the path, go left though the Jail Door|goto Searing Gorge,37.6,44.3,0.5|noway|q 3371
		step
			goto Searing Gorge,41.2,25.5
			.talk the Dying Archeologist##8417
			..turnin Dwarven Justice##3371
			..accept Release Them##3372
		step
			goto Searing Gorge,42.4,30.5|n
			.' Go upstairs the ramp|goto Searing Gorge,42.4,30.5,0.5|noway|q 7701
		step
			goto Searing Gorge,40.9,35.8
			.from Overseer Maltorius##14621
			.get Head of Overseer Maltorius|q 7701/1
		step
			goto Searing Gorge,40.5,35.7
			.collect Secret Plans: Fiery Flux##18922|q 7722/1
			.info It's a scroll laying on a bench behind Overseer Maltorius.
		step
			goto Searing Gorge,45.45,30.5
			.collect 20 Dark Iron Pillow##18943|q 7702/1
			.kill 15 Dark Iron Taskmaster##5846|q 7729/1
			.kill 15 Dark Iron Slaver##5844|q 7729/2
		step
			goto Searing Gorge,47.9,42.1|n
			.' Jump off the bridge at this spot to the path below|goto Searing Gorge,47.9,42.1,0.5|noway|q 7727
		step
			goto Searing Gorge,52,37
			.kill 20 Incendosaur##9318|q 7727/1
		step
			goto Searing Gorge,37.6,26.5
			.talk Lookout Captain Lolo Longstriker##14634
			..turnin WANTED: Overseer Maltorius##7701
		step
			goto Searing Gorge,38.4,27.7
			.talk Evonice Sootsmoker##14628
			..turnin Kill 'Em With Sleep Deprivation##7702
		step
			goto Searing Gorge,38.6,27.8
			.talk Hansel Heavyhands##14627
			..turnin Incendosaurs? Whateverosaur is More Like It##7727
		step
			goto Searing Gorge,39,27.5
			.talk Taskmaster Scrange##14626
			..turnin JOB OPPORTUNITY: Culling the Competition##7729
		step
			goto Searing Gorge,38.8,28.5
			.talk Master Smith Burninate##14624
			..turnin What the Flux?##7722
		step
			goto Searing Gorge,29.1,25.9
			.' Slowly work your way to this spot
			.' Jump onto the red crystal in the lava
			.' Click it and get the Mysterious Artifact|goal Mysterious Artifact|q 3372/1
			.' Kill Twilight mobs around the lava
			.get Symbol of Ragnaros##10552|q 3452/1
		step
			goto Searing Gorge,29.6,26.4
			.talk Zamael Lunthistle##8436
			..accept Prayer to Elune (1)##3377
		step
			goto Searing Gorge,29.6,26.4
			.talk Zamael Lunthistle##8436
			.goal Zamael Story|q 3377/1
		step
			goto Searing Gorge,29.6,26.4
			.talk Zamael Lunthistle##8436
			..turnin Prayer to Elune (1)##3377
			..accept Prayer to Elune (2)##3378
		step
			goto Searing Gorge,27,25.35
			.kill Twilight mobs|n
			.get Prayer to Elune##10458|q 3378/1
		step
			goto Searing Gorge,39,38.9
			.talk Kalaran Windblade##8479
			..turnin The Flame's Casing##3452
			..accept The Torch of Retribution (1)##3453
		step
			goto Searing Gorge,39,38.9
			.talk Kalaran Windblade##8479
			.goal Wait for Kalaran Windblade to complete the Torch of Retribution|q 3453/1
		step
			goto Searing Gorge,39,38.9
			.talk Kalaran Windblade##8479
			..turnin The Torch of Retribution (1)##3453
			..accept The Torch of Retribution (2)##3454
		step
			goto Searing Gorge,39,39.2
			.' Interact with gameobject: Torch of Retribution
			..turnin The Torch of Retribution (2)##3454
		step
			goto Searing Gorge,39,38.9
			.talk Kalaran Windblade##8479
			..accept Squire Maltrake##3462
		step
			goto Searing Gorge,39.2,39
			.talk Squire Maltrake##8509
			..turnin Squire Maltrake##3462
			..accept Set Them Ablaze!##3463
		step
			.' Go into the Slag Pit|goto Searing Gorge,41.5,54.7,0.5 |q 3372
		step
			goto Searing Gorge,41.2,25.5
			.' Interact with gameobject: Altar of Suntara
			.info Inside the Slag Pit laying on the ground.
			..turnin Release Them##3372
			.talk the Dying Archeologist##8417
			..accept Rise, Obsidion!##3566
			.from Lathoric the Black##8391
			.get Head of Lathoric the Black##10447|q 3566/1
			.from Obsidion##8400
			.get Heart of Obsidion##10446|q 3566/2
		step
			goto Searing Gorge,33.3,54.5
			.' Equip the Torch of Retribution
			.use Torch of Retribution##10515
			.' Interact with gameobject: Sentry Brazier
			.info At the top of the tower, click the little metal blazer on the ground.
			.goal Northern Tower Ablaze|q 3463/4
		step
			goto Searing Gorge,35.7,60.7
			.' Interact with gameobject: Sentry Brazier
			.info At the top of the tower, click the little metal blazer on the ground.
			.goal Western Tower Ablaze|q 3463/1
		step
			goto Searing Gorge,44,60.9
			.' Interact with gameobject: Sentry Brazier
			.info At the top of the tower, click the little metal blazer on the ground.
			.goal Southern Tower Ablaze|q 3463/2
		step
			goto Searing Gorge,50.1,54.7
			.' Interact with gameobject: Sentry Brazier
			.info At the top of the tower, click the little metal blazer on the ground.
			.goal Eastern Tower Ablaze|q 3463/3
		step
			goto Searing Gorge,39.1,39
			.talk Squire Maltrake##8509
			..turnin Set Them Ablaze!##3463
		step
			goto Searing Gorge,38.8,39
			.' Interact with gameobject: Hoard of the Black Dragonflight
			..accept Trinkets...##3481
			..turnin Trinkets...##3481
		step
			.' Open the Hoard of the Black Dragonflight in your bags|use Hoard of the Black Dragonflight##10569
			.' Make sure to save the Black Dragonflight Molt|collect Black Dragonflight Molt##10575|q 4022 |future
		step
			goto Ironforge,71.8,16.1
			.talk Curator Thorius##8256
			..turnin Rise, Obsidion!##3566
		step
			goto Swamp of Sorrows,94.8,52.1
			.from Jarquia##9916
			.get Goodsteel's Balanced Flameberge##11723|q 4450/4
			.' You can find an alternative respawn point|at 91.9,67
		step
			goto Darnassus,38.3,81
			.talk Astarii Starseeker##4090
			..turnin Prayer to Elune (2)##3378
		step
			goto Dustwallow Marsh,54.1,55.9
			.collect Overdue Package##11724|q 4450/3
		step
			goto Tanaris,51.5,28.8
			.talk Krinkle Goodsteel##5411
			..turnin Ledger from Tanaris##4450
		step
			.' Congratulations! +30 quests for achievement "Loremaster of Eastern Kingdoms".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Eastern Kingdoms\\[60] Burning Steppes",[[
author danaton
description This guide contain quest-chain (10 quests) for Burning Steppes location.
startlevel 60
		step
			.' First you need to complete the Searing Gorge quest chain.
			.info Skip this step manually.
		step
			goto Stormwind City,76.90,47.80
			.talk Count Remington Ridgewell##2285
			..accept Mayara Brightwing##4766
		step
			goto Ironforge,38.4,55.3
			.talk Royal Historian Archesonus##8879
			..accept The Smoldering Ruins of Thaurissan (1)##3702
		step
			goto Ironforge,38.4,55.3
			.talk Royal Historian Archesonus##8879
			.goal Story of Thaurissan|q 3702/1
		step
			goto Ironforge,38.4,55.3
			.talk Royal Historian Archesonus##8879
			..turnin The Smoldering Ruins of Thaurissan (1)##3702
			..accept The Smoldering Ruins of Thaurissan (2)##3701
		step
			goto Burning Steppes,84.56,68.68
			.talk Oralius##9177
			..accept Extinguish the Firegut##3823
			..accept FIFTY! YEP!##4283
		step
			goto Burning Steppes,84.8,69.1
			.talk Mayara Brightwing##9565
			..turnin Mayara Brightwing##4766
		step
			goto Burning Steppes,75.39,38.44
			.kill 15 Firegut Ogre Mage##7034|q 3823/1
			.kill 7 Firegut Ogre##7033|q 3823/2
			.kill 7 Firegut Brute##7035|q 3823/3
			.info You can find more all around on this mountain, and in the caves on the mountain.
		step
			goto Burning Steppes,84.56,68.68
			.talk Oralius##9177
			..turnin Extinguish the Firegut##3823
			..accept Gor'tesh the Brute Lord##3824
		step
			goto Burning Steppes,65.24,24.00
			.talk Tinkee Steamboil##10267
			..accept Broodling Essence##4726
		step
			goto Burning Steppes,65.16,23.92
			.talk Maxwort Uberglint##9536
			..accept Tablet of the Seven##4296
		step
			goto Burning Steppes,72.83,28.41
			.use the Draco-Incarcinatrix 900##12284
			.info Use it on Broodling enemies around this area.
			.info They look like small flying dragons.
			.info They share spawn points with the scorpids and wolves, so kill those also, if you can't find any.
			.' Kill Broodling enemies around this area.
			.' click Broodling Essence
			.info They look like red floating crystals that appear above their corpses after you kill them.
			.collect 8 Broodling Essence##12283|q 4726/1
			.' You can find more around (1)|at 80.05,27.94
			.' You can find more around (2)|at 87.34,32.01
			.' You can find more around (3)|at 91.96,35.64
		step
			goto Burning Steppes,95.06,31.57
			.talk Cyrus Therepentous##9459
			..accept A Taste of Flame##4022 |or
			..accept A Taste of Flame##4023 |or
		step
			goto Burning Steppes,95.06,31.57
			.talk Cyrus Therepentous##9459
			.' Tell him "I do not posess proof any proof, Cyrus."
			.from Frenzied Black Drake##9461
			.info This dragon is level 54 and will immediately attack you.
			.get Black Dragonflight Molt##10575|q 4022/1 |or
			.get Black Dragonflight Molt##10575|q 4023/1 |or
		step
			goto Burning Steppes,95.06,31.57
			.talk Cyrus Therepentous##9459
			..turnin A Taste of Flame##4022 |or
			..turnin A Taste of Flame##4023 |or
		step
			goto Burning Steppes,54.09,40.73
			.' Interact with gameobject: Tablet of the Seven
			.' Choose "Transcribe the tablet."
			.collect Tablet Transcript##11470|q 4296/1
		step
			goto Burning Steppes,68.42,37.33
			.' Interact with gameobject: Thaurissan Relic
			.info They look like cylindrical grey stones sitting upright on the ground around this area.
			.' Recover 12 Information|q 3701/1
			.' You can find more around (1)|at 66.04,44.05
			.' You can find more around (2)|at 62.21,40.68
			.' You can find more around (3)|at 58.93,42.59
			.' You can find more around (4)|at 57.80,37.02
			.' You can find more around (5)|at 52.89,35.96
		step
			goto Burning Steppes,39.26,55.36
			.from Gor'tesh##9176
			.info He walks around this area, in and out of this building.
			.get Gor'tesh's Lopped Off Head##11080|q 3824/1
		step
			goto Burning Steppes,39.31,55.42
			.' Kill Blackrock enemies around this area
			.info They look like orcs and wolves.
			.info You can find more inside the buildings around this area.
			.collect 50 Blackrock Medallion##11467|q 4283/1
			.' You can find more around (1)|at 43.90,56.18
			.' You can find more around (2)|at 49.30,55.43
			.' You can find more around (3)|at 52.98,53.87
		step
			goto Burning Steppes,84.56,68.67
			.talk Oralius##9177
			..turnin Gor'tesh the Brute Lord##3824
			..turnin FIFTY! YEP!##4283
			..accept Ogre Head On A Stick = Party##3825
		step
			goto Burning Steppes,65.23,23.99
			.talk Tinkee Steamboil##10267
			..turnin Broodling Essence##4726
		step
			goto Burning Steppes,65.15,23.91
			.talk Maxwort Uberglint##9536
			..turnin Tablet of the Seven##4296
		step
			goto Burning Steppes,80.99,46.78
			.info Interact with gameobject: Soft Dirt Mound
			.goal Plant Gor'tesh's Head|q 3825/1
			.info On top of the mountain.
		step
			goto Burning Steppes,84.56,68.67
			.talk Oralius##9177
			..turnin Ogre Head On A Stick = Party##3825
		step
			goto Ironforge,38.4,55.3
			.talk Royal Historian Archesonus##8879
			..turnin The Smoldering Ruins of Thaurissan (2)##3701
		step
			.' Congratulations! +10 quests for achievement "Loremaster of Eastern Kingdoms".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Eastern Kingdoms\\[45] Badlands",[[
author danaton
description This guide contain quest-chain (20 quests) for Badlands location.
startlevel 45
		step
			goto Thousand Needles,78.1,77.1
			.talk Fizzle Brassbolts##4454
			..accept Salt Flat Venom##1104
		step
			goto Thousand Needles,78.14,77.12
			.talk Wizzle Brassbolts##4453
			..accept Hardened Shells##1105
		step
			goto Thousand Needles,82.53,55.37
			.from Sparkleshell Tortoise##4142, Sparkleshell Snapper##4143, Sparkleshell Borer##4144
			.info They look like turtles.
			.collect 9 Hardened Tortoise Shell##5795|q 1105/1
			.' You can find more around (1)|at 77.41,53.72
			.' You can find more around (2)|at 73.05,56.51
			.' You can find more around (3)|at 74.82,63.33
		step
			goto Thousand Needles,83.06,61.38
			.from Scorpid Terror##4139, Scorpid Reaver##4140
			.info They look like scorpions.
			.collect 6 Salty Scorpid Venom##5794|q 1104/1
			.' You can find more around (1)|at 77.95,53.29
			.' You can find more around (2)|at 73.56,56.98
			.' You can find more around (3)|at 71.30,66.70
			.' You can find more around (4)|at 77.61,68.70
		step
			goto Thousand Needles,78.14,77.12
			.talk Wizzle Brassbolts##4453
			..turnin Hardened Shells##1105
		step
			goto Thousand Needles,78.1,77.1
			.talk Fizzle Brassbolts##4454
			..turnin Salt Flat Venom##1104
			..accept Martek the Exiled##1106
		step
			goto Ironforge,24.2,74.7
			.talk Auctioneer Redmuse##8720
			.buy 1 Frost Oil##3829|q 713/1 |future
			.buy 1 Gyrochronatom##4389|q 714/1 |future
		step
			goto Ironforge,74.70,11.80
			.talk Prospector Stormpike##1356
			..accept Ironband Wants You!##707
			.info Dungeon: Uldaman Quest Chain.
		step
			goto Loch Modan,37.1,49.4
			.talk Ghak Healtouch##1470
			..accept Badlands Reagent Run##2500
		step
			goto Loch Modan,66.00,65.4
			.talk Prospector Ironband##1344
			..turnin Ironband Wants You!##707
			..accept Find Agmond##738
			.info Dungeon: Uldaman Quest Chain.
		step
			goto Badlands,53.5,20.15
			.from Crag Coyote##2727, Rabid Crag Coyote##2730
			.get 10 Crag Coyote Fang##7846|q 2500/2
			.' You can find more Coyote|at 51.1,39.9
		step
			goto Badlands,53,33.9
			.' Interact with gameobject: Crumpled Map
			..accept A Sign of Hope (1)##720
			.info Dungeon: Uldaman Quest Chain.
		step
			goto Badlands,53.6,43.3
			.talk Prospector Ryedol##2910
			..turnin A Sign of Hope (1)##720
			..accept A Dwarf and His Tools##719
			..accept A Sign of Hope (2)##721
			.info Dungeon: Uldaman Quest Chain.
		step
			goto Badlands,53.8,43.3
			.talk Sigrun Ironhew##2860
			..accept Fiery Blaze Enchantments##706
			..accept Mirages##718
		step
			goto Badlands,42.4,52.9
			.talk Rigglefuzz##2817
			..accept Barbecued Buzzard Wings##703
			..accept Pearl Diving##705
			..accept Power Stones##2418
		step
			goto Badlands,42.2,52.7
			.talk Martek the Exiled##4618
			..turnin Martek the Exiled##1106
			..accept Indurium##1108
		step
			goto Badlands,25.9,44.6
			.talk Lotwil Veriatus##2921
			..accept Study of the Elements: Rock (1)##710
			..accept Coolant Heads Prevail##713
			..turnin Coolant Heads Prevail##713
			..accept Gyro... What?##714
			..turnin Gyro... What?##714
		step
			goto Badlands,21.9,44.6
			.from Lesser Rock Elemental##2735
			.get 10 Small Stone Shard##4626|q 710/1
			.get 5 Rock Elemental Shard##7848|q 2500/3
		step
			goto Badlands,25.9,44.6
			.talk Lotwil Veriatus##2921
			..turnin Study of the Elements: Rock (1)##710
			..accept Study of the Elements: Rock (2)##711
		step
			goto Badlands,52.3,30.4
			.from Shadowforge Tunneler##2739, Shadowforge Darkweaver##2740, Shadowforge Chanter##2742, Shadowforge Warrior##2743
			.get Ryedol's Lucky Pick##4616|q 719/1
		step
			goto Badlands,66.6,21.5
			.collect Supply Crate##4629|q 718/1
			.info It's a wooden crate, sitting next to a very small tent, canopy thing in the small ogre camp, or sitting on the ground next to a cauldron.
			.' The crate can also be located|at 66.9,23.4
		step
			goto Badlands,81.7,34.65
			.from Scalding Whelp##2725, Scorched Guardian##2726
			.get Black Drake's Heart##4612|q 706/1
			.' You can find more around (1)|at 81.15,52.4
			.' You can find more around (2)|at 74.05,63.75
		step
			goto Badlands,53.6,43.3
			.talk Prospector Ryedol##2910
			..turnin A Dwarf and His Tools##719
		step
			goto Badlands,53.8,43.3
			.talk Sigrun Ironhew##2860
			..turnin Fiery Blaze Enchantments##706
			..turnin Mirages##718
			..accept Scrounging##733
		step
			goto Badlands,50.9,62.4
			.' Interact with gameobject: Battered Dwarven Skeleton
			..turnin Find Agmond##738
			..accept Murdaloc##739
		step
			goto Badlands,50.70,67.70
			.kill 1 Murdaloc##2945|q 739/1
			.kill 12 Stonevault Bonesnapper##2893|q 739/2
			.get 10 Indurium Flake##5797|q 1108/1
		step
			goto Badlands,46.3,77.2|n
			.' The path up to Study of the Elements: Rock (2) starts here|goto Badlands,46.3,77.2,0.5|noway|q 711
		step
			goto Badlands,44.05,83.4
			.from Rock Elementals##92
			.get 3 Large Stone Slab##4627|q 711/1
		step
			goto Badlands,9.2,80.05
			.kill Dustbelcher Ogres|n
			.get 7 Scrap Metal##4630|q 733/1
		step
			goto Badlands,16.05,60.35
			.from Giant Buzzard##2831
			.get 5 Buzzard Gizzard##7847|q 2500/1
			.get 4 Buzzard Wing##3404|q 703/1
			.' You can find more Buzzard|at 31.4,59.4
		step
			goto Badlands,25.9,44.6
			.talk Lotwil Veriatus##2921
			..turnin Study of the Elements: Rock (2)##711
			..accept Study of the Elements: Rock (3)##712
		step
			goto Badlands,7.9,74.1|n
			.' The path up to 'Study of the Elements: Rock (3)' starts here|goto Badlands,7.9,74.1,0.5|noway|q 712
		step
			goto Badlands,4.2,81.5
			.from Greater Rock Elementals##2736
			.get 5 Bracers of Rock Binding##4628|q 712/1
		step
			goto Badlands,25.9,44.6
			.talk Lotwil Veriatus##2921
			..turnin Study of the Elements: Rock (3)##712
			..accept This Is Going to Be Hard (1)##734
		step
			goto Badlands,25.8,44.2
			.talk Lucien Tosselwrench##2920
			..turnin This Is Going to Be Hard (1)##734
			..accept This Is Going to Be Hard (2)##777
		step
			goto Badlands,25.9,44.6
			.talk Lotwil Veriatus##2921
			..turnin This Is Going to Be Hard (2)##777
			..accept This Is Going to Be Hard (3)##778
		step
			goto Badlands,26.1,46.85
			.from Fam'retor Guardian##2919
			.get Lotwil's Shackles of Elemental Binding##4847|q 778/1
		step
			goto Badlands,25.9,44.6
			.talk Lotwil Veriatus##2921
			..turnin This Is Going to Be Hard (3)##778
		step
			goto Badlands,42.4,52.9
			.talk Rigglefuzz##2817
			..turnin Barbecued Buzzard Wings##703
		step
			goto Badlands,42.2,52.7
			.talk Martek the Exiled##4618
			..turnin Indurium##1108
			.info Watch the dialogue.
			..accept News for Fizzle##1137
		step
			goto Badlands,53.6,43.3
			.talk Sigrun Ironhew##2860
			..turnin Scrounging##733
		step
			goto Badlands,35.3,13.4
			.kill Shadowforge Dwarf|n
			.get 8 Dentrium Power Stone##8009|q 2418/1
			.get 8 An'Alleum Power Stone##8052|q 2418/2
			.info Dungeon: Uldaman Quest Chain.
		step
			goto Badlands,44.63,12.15|n
			.' Entrance to the Uldaman excavations|goto Badlands,44.63,12.15,0.5|noway|q 721
		step
			goto Badlands,37.9,10.58
			.talk Hammertoe Grez##2909
			..turnin A Sign of Hope (2)##721
			.info Dungeon: Uldaman Quest Chain.
		step
			goto Loch Modan,66.00,65.4
			.talk Prospector Ironband##1344
			..turnin Murdaloc##739
			.info Dungeon: Uldaman Quest Chain.
		step
			goto Loch Modan,37.1,49.4
			.talk Ghak Healtouch##1470
			..turnin Badlands Reagent Run##2500
			..accept Uldaman Reagent Run##17
		step
			goto Stranglethorn Vale,26.1,22.9
			.collect 9 Blue Pearl##4611|q 705/1
		step
			goto Badlands,44.63,12.15|n
			.' Entrance to the Uldaman excavations|goto Badlands,44.63,12.15,0.5|noway|q 17
		step
			goto Badlands,35.28,13.7
			.collect 12 Magenta Fungus Cap##8047|q 17/1
		step
			goto Badlands,42.4,52.9
			.talk Rigglefuzz##2817
			..turnin Pearl Diving##705
			..turnin Power Stones##2418
		step
			goto Loch Modan,37.1,49.4
			.talk Ghak Healtouch##1470
			..turnin Uldaman Reagent Run##17
		step
			goto Thousand Needles,78.1,77.1
			.talk Fizzle Brassbolts##4454
			..turnin News for Fizzle##1137
		step
			.' Congratulations! +20 quests for achievement "Loremaster of Eastern Kingdoms".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Eastern Kingdoms\\[20] Dun Morogh",[[
author danaton
description This guide contain quest-chain (40 quests) for Dun Morogh location.
startlevel 20
		step
			goto Elwynn Forest,41.7,65.5
			.talk Smith Argus##514
			..accept Elmore's Task##1097
		step
			goto Stormwind City,59.7,33.8
			.talk Grimand Elmore##1416
			..turnin Elmore's Task##1097
			..accept Stormpike's Delivery##353
		step
			goto Ironforge,69.2,50.5
			.talk Gnoarn##6569
			..accept The Day After##2927
			.info Dungeon: Gnomeregan Quest Chain.
		step
			goto Ironforge,24.2,74.7
			.talk Auctioneer Redmuse##8720
			.buy 6 Incendicite Ore##3340|q 466 |future
		step
			goto Loch Modan,34.3,47.7
			.talk Mountaineer Kadrell##1340
			..accept Stonegear's Search##467
		step
			goto Dun Morogh,45.9,49.4
			.talk Ozzie Togglevolt##1268
			..turnin The Day After##2927
			.info Dungeon: Gnomeregan Quest Chain.
		step
			goto Dun Morogh,29.9,71.9
			.talk Sten Stoutarm##658
			..accept Dwarven Outfitters##179
		step
			goto Dun Morogh,29.8,73.8
			.from Ragged Young Wolf##705
			.get 8 Tough Wolf Meat##750|q 179/1
		step
			goto Dun Morogh,29.8,71.3
			.talk Sten Stoutarm##658
			..turnin Dwarven Outfitters##179
			..accept Coldridge Valley Mail Delivery (1)##233
		step
			goto Dun Morogh,29.7,71.3
			.talk Balir Frosthammer##713
			..accept A New Threat##170
		step
			goto Dun Morogh,30.4,74.8
			.kill 6 Rockjaw Trogg##707|q 170/1
			.kill 6 Burly Rockjaw Trogg##724|q 170/2
		step
			goto Dun Morogh,29.8,71.3
			.talk Balir Frosthammer##713
			..turnin A New Threat##170
		step
			goto Dun Morogh,28.5,67.7
			.talk Felix Whindlebolt##8416
			..accept A Refugee's Quandary##3361
		step
			goto Dun Morogh,22.6,71.4
			.talk Talin Keeneye##714
			..turnin Coldridge Valley Mail Delivery (1)##233
			..accept Coldridge Valley Mail Delivery (2)##234
			..accept The Boar Hunter##183
		step
			goto Dun Morogh,22.0,71.3
			.kill 8 Small Crag Boar##708|q 183/1
		step
			goto Dun Morogh,22.6,71.4
			.talk Talin Keeneye##714
			..turnin The Boar Hunter##183
		step
			goto Dun Morogh,20.9,76.1
			.collect Felix's Box##10438|q 3361/1
			.info In the troll camp on the ground, to the right of the campfire.
		step
			goto Dun Morogh,22.8,80.0
			.collect Felix's Chest##16313|q 3361/2
			.info In the troll camp on the ground, to the left directly next to the campfire.
		step
			goto Dun Morogh,25.1,75.7
			.talk Grelin Whitebeard##786
			..turnin Coldridge Valley Mail Delivery (2)##234
			..accept The Troll Cave##182
		step
			goto Dun Morogh,26.3,79.3
			.collect Felix's Bucket of Bolts##16314|q 3361/3
			.info Outside troll cave entrance on the ground next to the campfire.
		step
			goto Dun Morogh,26.6,79.25
			.kill 10 Frostmane Troll Whelp##706|q 182/1
		step
			goto Dun Morogh,25.1,75.7
			.talk Grelin Whitebeard##786
			..turnin The Troll Cave##182
			..accept The Stolen Journal##218
		step
			goto Dun Morogh,26.6,79.45|n
			.' Enter the cave and move along its left side|goto Dun Morogh,26.6,79.45,0.5|noway|q 218
		step
			goto Dun Morogh,30.5,80.2
			.from Grik'nir the Cold##808
			.info Inside the cave.
			.get Grelin Whitebeard's Journal##2004|q 218/1
		step
			goto Dun Morogh,25.1,75.7
			.talk Grelin Whitebeard##786
			..turnin The Stolen Journal##218
			..accept Senir's Observations (1)##282
		step
			goto Dun Morogh,25,76
			.talk Nori Pridedrift##12738
			..accept Scalding Mornbrew Delivery##3364
		step
			goto Dun Morogh,28.5,67.7
			.talk Felix Whindlebolt##8416
			..turnin A Refugee's Quandary##3361
		step
			goto Dun Morogh,28.8,66.4
			.talk Durnan Furcutter##836
			..turnin Scalding Mornbrew Delivery##3364
			..accept Bring Back the Mug##3365
		step
			goto Dun Morogh,25,76
			.talk Nori Pridedrift##12738
			..turnin Bring Back the Mug##3365
		step
			goto Dun Morogh,33.5,71.8
			.talk Mountaineer Thalos##1965
			..turnin Senir's Observations (1)##282
			..accept Senir's Observations (2)##420
		step
			goto Dun Morogh,33.8,72.2
			.talk Hands Springsprocket##6782
			..accept Supplies to Tannok##2160
		step
			goto Dun Morogh,46.7,53.8
			.talk Senir Whitebeard##1252
			..turnin Senir's Observations (2)##420
			..accept Frostmane Hold##287
		step
			goto Dun Morogh,47.3,52.3
			.talk Tannok Frosthammer##6806
			..turnin Supplies to Tannok##2160
		step
			goto Dun Morogh,47.7,52.3
			.talk Gremlock Pilsnor##1699
			.' You need to learn Сooking.
			only if skill('Cooking')==0
		step
			goto Dun Morogh,47.4,52.5
			.talk Innkeeper Belm##1247
			.buy Rhapsody Malt##2894|q 384 |future
		step
			goto Dun Morogh,46.8,52.4
			.talk Ragnar Thunderbrew##1267
			..accept Beer Basted Boar Ribs##384
			only if skill('Cooking')>0
		step
			goto Dun Morogh,46.0,51.7
			.talk Tharek Blackstone##1872
			..accept Tools for Steelgrill##400
		step
			goto Dun Morogh,45.9,49.4
			.talk Ozzie Togglevolt##1268
			..accept Gnogaine##2926
			.info Dungeon: Gnomeregan Quest Chain.
		step
			goto Dun Morogh,45.8,49.4
			.talk Razzle Sprysprocket##1269
			..accept Operation Recombobulation##412
			.info Dungeon: Gnomeregan Quest Chain.
		step
			goto Dun Morogh,49.4,48.4
			.talk Pilot Bellowfiz##1378
			..accept Stocking Jetsteam##317
		step
			goto Dun Morogh,49.6,48.6
			.talk Pilot Stonegear##1377
			..accept The Grizzled Den##313
			..turnin Stonegear's Search##467
			..accept Search for Incendicite##466
		step
			goto Ironforge,24.2,74.7
			.talk Auctioneer Redmuse##8720
			.buy 6 Incendicite Ore##3340|q 466 |future
		step
			goto Dun Morogh,49.6,48.6
			.talk Pilot Stonegear##1377
			..turnin Search for Incendicite##466
		step
			goto Dun Morogh,50.1,49.4
			.talk Loslor Rudge##1694
			..accept Ammo for Rumbleshot##5541
		step
			goto Dun Morogh,50.4,49.1
			.talk Beldin Steelgrill##1376
			..turnin Tools for Steelgrill##400
		step
			goto Dun Morogh,49.7,50.8
			.from Large Crag Boar##1126, Crag Boar##1125, Young Black Bear##1128, Ice Claw Bear##1196
			.get 4 Chunk of Boar Meat##769|q 317/1
			.get 6 Crag Boar Rib##2886|q 384/1
			.get 2 Thick Bear Fur##6952|q 317/2
		step
			goto Dun Morogh,44.1,57
			.collect Rumbleshot's Ammo##13850|q 5541/1
			.info In the small camp next to a tent.
		step
			goto Dun Morogh,42.4,54.1
			.from Young Wendigo##1134, Wendigo##1135
			.get 8 Wendigo Mane##2671|q 313/1
		step
			goto Dun Morogh,40.7,65.1
			.talk Hegnar Rumbleshot##1243
			..turnin Ammo for Rumbleshot##5541
		step
			goto Dun Morogh,46.8,52.4
			.talk Ragnar Thunderbrew##1267
			..turnin Beer Basted Boar Ribs##384
		step
			goto Dun Morogh,49.4,48.4
			.talk Pilot Bellowfiz##1378
			..turnin Stocking Jetsteam##317
			..accept Evershine##318
		step
			goto Dun Morogh,49.6,48.6
			.talk Pilot Stonegear##1377
			..turnin The Grizzled Den##313
		step
			goto Dun Morogh,30.2,45.6
			.talk Rejold Barleybrew##1374
			..turnin Evershine##318
			..accept A Favor for Evershine##319
			..accept The Perfect Stout##315
		step
			goto Dun Morogh,30.2,45.5
			.talk Marleth Barleybrew##1375
			..accept Bitter Rivals##310
		step
			goto Dun Morogh,41.2,36.4
			.collect 6 Shimmerweed##2676|q 315/1
			.info The Shimmerweed Baskets look like woven wooden baskets on the ground around this area.
		step
			goto Dun Morogh,30.2,45.6
			.talk Rejold Barleybrew##1374
			..turnin The Perfect Stout##315
			..accept Shimmer Stout##413
		step
			goto Dun Morogh,21.2,52.3
			.goal Fully explore Frostmane Hold|q 287/1
			.info By the time you reach this point, you should have seen the "Explore Frostmane Hold" completed message.
		step
			goto Dun Morogh,25,51
			.kill 5 Frostmane Headhunter##1123|q 287/2
		step
			goto Dun Morogh,27.8,48.3
			.kill 6 Ice Claw Bear##1196|q 319/1
			.kill 8 Elder Crag Boar##1127|q 319/2
			.kill 8 Snow Leopard##1201|q 319/3
		step
			goto Dun Morogh,27.1,36.9
			.from Leper Gnome##1211
			.get 8 Restabilization Cog##3083|q 412/1
			.get 8 Gyromechanic Gear##3084|q 412/2
			.' You can find more around (1)|at 25,39.9
			.' You can find more around (2)|at 25.6,43.1
		step
			goto Dun Morogh,24.4,39.8|n
			.' Go down and take the elevator|goto Dun Morogh,24.4,39.8,0.3|q 2926 |future
		step
			goto Dun Morogh,21.97,36.93|n
			.' Keep moving straight ahead|goto Dun Morogh,21.97,36.93,0.3|q 2926 |future
		step
			goto Dun Morogh,22.09,34.15
			.from Irradiated Invader##6213
			.use Empty Leaden Collection Phial##9283
			.collect Full Leaden Collection Phial##9284|q 2926/1
			.info Dungeon: Gnomeregan Quest Chain.
		step
			goto Dun Morogh,30.2,45.6
			.talk Rejold Barleybrew##1374
			..turnin A Favor for Evershine##319
			..accept Return to Bellowfiz##320
		step
			goto Dun Morogh,34.6,51.7
			.talk Tundra MacGrann##1266
			..accept Tundra MacGrann's Stolen Stash##312
		step
			goto Dun Morogh,38.5,53.9
			.collect MacGrann's Dried Meats##2667|q 312/1
		step
			goto Dun Morogh,34.6,51.7
			.talk Tundra MacGrann##1266
			..turnin Tundra MacGrann's Stolen Stash##312
		step
			goto Dun Morogh,45.9,49.4
			.talk Ozzie Togglevolt##1268
			..turnin Gnogaine##2926
			.info Dungeon: Gnomeregan Quest Chain.
		step
			goto Dun Morogh,45.8,49.4
			.talk Razzle Sprysprocket##1269
			..turnin Operation Recombobulation##412
			.info Dungeon: Gnomeregan Quest Chain.
		step
			goto Dun Morogh,49.4,48.4
			.talk Pilot Bellowfiz##1378
			..turnin Return to Bellowfiz##320
		step
			goto Dun Morogh,47.3,52.3
			.talk Innkeeper Belm##1247
			.buy Thunder Ale##2686|q 311 |future
		step
			goto Dun Morogh,47.6,52.7
			.talk Jarven Thunderbrew##1373
			.' Give him the Thunder Ale
			.' Click the barrel next to him
			..turnin Bitter Rivals##310
			..accept Return to Marleth##311
		step
			goto Dun Morogh,46.7,53.8
			.talk Senir Whitebeard##1252
			..turnin Frostmane Hold##287
			..accept The Reports##291
		step
			goto Dun Morogh,30.2,45.5
			.talk Marleth Barleybrew##1375
			..turnin Return to Marleth##311
		step
			goto Ironforge,39.5,57.5
			.talk Senator Barin Redstone##1274
			..turnin The Reports##291
		step
			goto Dun Morogh,63.1,49.9
			.talk Rudra Amberstill##1265
			..accept Protecting the Herd##314
		step
			goto Dun Morogh,62.6,46.1
			.from Vagash##1388
			.get Fang of Vagash##3627|q 314/1
		step
			goto Dun Morogh,63.1,49.9
			.talk Rudra Amberstill##1265
			..turnin Protecting the Herd##314
		step
			goto Dun Morogh,68.7,56
			.talk Senator Mehr Stonehallow##1977
			..accept The Public Servant##433
		step
			goto Dun Morogh,69.1,56.3
			.talk Foreman Stonebrow##1254
			..accept Those Blasted Troggs!##432
		step
			goto Dun Morogh,70.7,56.5
			.info Go inside the cave.
			.kill 6 Rockjaw Skullthumper##1115|q 432/1
			.kill 10 Rockjaw Bonesnapper##1117|q 433/1
		step
			goto Dun Morogh,68.7,56.0
			.talk Senator Mehr Stonehallow##1977
			..turnin The Public Servant##433
		step
			goto Dun Morogh,69.1,56.3
			.talk Foreman Stonebrow##1254
			..turnin Those Blasted Troggs!##432
		step
			goto Dun Morogh,86.3,48.8
			.talk Mountaineer Barleybrew##1959
			..turnin Shimmer Stout##413
			..accept Stout to Kadrell##414
		step
			goto Dun Morogh,83.9,39.2
			.talk Pilot Hammerfoot##1960
			..accept The Lost Pilot##419
		step
			goto Dun Morogh,79.7,36.2
			.' Interact with gameobject: A Dwarven Corpse
			..turnin The Lost Pilot##419
			..accept A Pilot's Revenge##417
		step
			goto Dun Morogh,78.3,37.8
			.from Mangeclaw##1961
			.get Mangy Claw##3183|q 417/1
		step
			goto Dun Morogh,83.9,39.2
			.talk Pilot Hammerfoot##1960
			..turnin A Pilot's Revenge##417
		step
			goto Loch Modan,24.8,18.4
			.talk Mountaineer Stormpike##1343
			..turnin Stormpike's Delivery##353
		step
			goto Loch Modan,34.3,47.7
			.talk Mountaineer Kadrell##1340
			..turnin Stout to Kadrell##414
		step
			.' Congratulations! +40 quests for achievement "Loremaster of Eastern Kingdoms".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Eastern Kingdoms\\[20] Loch Modan",[[
author danaton
description This guide contain quest-chain (38 quests) for Loch Modan location.
startlevel 20
		step
			goto Elwynn Forest,41.7,65.5
			.talk Smith Argus##514
			..accept Elmore's Task##1097
		step
			goto Stormwind City,59.7,33.8
			.talk Grimand Elmore##1416
			..turnin Elmore's Task##1097
			..accept Stormpike's Delivery##353
		step
			goto Ironforge,69.2,50.5
			.talk Gnoarn##6569
			..accept Find Bingles##2039
			..accept Speak with Shoni##2041
			.info Dungeon: Deadmines Quest Chain.
		step
			goto Loch Modan,34.8,47.1
			.talk Mountaineer Kadrell##1340
			..accept Rat Catching##416
			..accept Stonegear's Search##467
			..accept Report to Mountaineer Rockgar##468
			..accept Mountaineer Stormpike's Task##1339
		step
			goto Loch Modan,34.8,49.3
			.talk Vidra Hearthstove##1963
			..accept Thelsamar Blood Sausages##418
		step
			goto Loch Modan,34.7,43.2
			.talk Magistrate Bluntnose##1139
			..accept Mercenaries##255
		step
			goto Loch Modan,37.3,46.5
			.' Interact with gameobject: WANTED
			..accept WANTED: Chok'sul##256
		step
			goto Loch Modan,37.2,47.4
			.talk Jern Hornhelm##1105
			..accept Ironband's Excavation##436
		step
			goto Loch Modan,64.9,66.7
			.talk Magmar Fellhew##1345
			..turnin Ironband's Excavation##436
			..accept Gathering Idols##297
		step
			goto Loch Modan,65.9,65.6
			.talk Prospector Ironband##1344
			..accept Excavation Progress Report##298
		step
			goto Loch Modan,68.1,63.2
			.from Stoneplinter Digger##1167, Stonesplinter Geomancer##1165
			.get 8 Carved Stone Idol##2636|q 297/1
		step
			goto Loch Modan,64.9,66.7
			.talk Magmar Fellhew##1345
			..turnin Gathering Idols##297
		step
			goto Loch Modan,83.5,65.5
			.talk Daryl the Youngling##1187
			.info The next quest is timed. Make sure you are ready.
			..accept A Hunter's Boast##257
		step
			goto Loch Modan,81.8,61.7
			.talk Marek Ironheart##1154
			..accept Crocolisk Hunting##385
		step
			goto Loch Modan,77.4,58.3
			.kill 6 Mountain Buzzard##1194|q 257/1
		step
			goto Loch Modan,83.5,65.5
			.talk Daryl the Youngling##1187
			..turnin A Hunter's Boast##257
			.info The next quest is timed. Make sure you are ready.
			..accept A Hunter's Challenge##258
		step
			goto Loch Modan,65.3,39.1
			.kill 5 Elder Mountain Boar##1192|q 258/1
		step
			goto Loch Modan,83.5,65.5
			.talk Daryl the Youngling##1187
			..turnin A Hunter's Challenge##258
		step
			goto Loch Modan,81.7,64.1
			.talk Vyrin Swiftwind##1156
			..accept Vyrin's Revenge (1)##271
		step
			goto Loch Modan,43,64
			.from Ol' Sooty##1225
			.get Ol' Sooty's Head##2713|q 271/1
		step
			goto Loch Modan,37.2,47.4
			.talk Jern Hornhelm##1105
			..turnin Excavation Progress Report##298
			..accept Report to Ironforge##301
		step
			goto Ironforge,74.7,11.7
			.talk Prospector Stormpike##1356
			..turnin Report to Ironforge##301
			..accept Powder to Ironband##302
		step
			goto Loch Modan,37.2,47.4
			.talk Jern Hornhelm##1105
			..turnin Powder to Ironband##302
			..accept Resupplying the Excavation##273
		step
			goto Loch Modan,24.8,18.4
			.talk Mountaineer Stormpike##1343
			..turnin Stormpike's Delivery##353
			..turnin Mountaineer Stormpike's Task##1339
			..accept Filthy Paws##307
			..accept Stormpike's Order##1338
		step
			goto Loch Modan,25.4,10.4
			.talk Mountaineer Rockgar##1342
			..turnin Report to Mountaineer Rockgar##468
		step
			goto Loch Modan,35.4,18.5
			.collect 4 Miners' Gear##2640|q 307/1
			.info Click Miners' League Crates inside the cave.
		step
			goto Loch Modan,24.8,18.4
			.talk Mountaineer Stormpike##1343
			..turnin Filthy Paws##307
		step
			goto Loch Modan,24.5,33.6
			.from Tunnel Rat Scout##1173, Tunnel Rat Forager##1176, Tunnel Rat Kobold##1202, Tunnel Rat Vermin##1172
			.get 12 Tunnel Rat Ear##3110|q 416/1
			.' You can find more around|at 35.3,17.05
		step
			goto Loch Modan,37.4,38.9
			.from Mountain Boar##1190, Elder Black Bear##1186, Forest Lurker##1195
			.get 3 Boar Intestines##3172|q 418/1
			.get 3 Bear Meat##3173|q 418/2
			.get 3 Spider Ichor##3174|q 418/3
		step
			goto Loch Modan,34.8,47.1
			.talk Mountaineer Kadrell##1340
			..turnin Rat Catching##416
		step
			goto Loch Modan,34.8,49.3
			.talk Vidra Hearthstove##1963
			..turnin Thelsamar Blood Sausages##418
		step
			goto Loch Modan,22.1,73.1
			.talk Mountaineer Cobbleflint##1089
			..accept In Defense of the King's Lands (1)##224
		step
			goto Loch Modan,23.2,73.7
			.talk Captain Rugelfuss##1092
			..accept The Trogg Threat##267
		step
			goto Loch Modan,32.1,73.5
			.kill 10 Stonesplinter Trogg##1161|q 224/1
			.kill 10 Stonesplinter Scout##1162|q 224/2
			.get 8 Trogg Stone Tooth##2536|q 267/1
		step
			goto Loch Modan,22.1,73.1
			.talk Mountaineer Cobbleflint##1089
			..turnin In Defense of the King's Lands (1)##224
		step
			goto Loch Modan,23.5,76.4
			.talk Mountaineer Gravelgaw##1091
			..accept In Defense of the King's Lands (2)##237
		step
			goto Loch Modan,23.2,73.7
			.talk Captain Rugelfuss##1092
			..turnin The Trogg Threat##267
		step
			goto Loch Modan,35.9,83.1
			.kill 10 Stonesplinter Skullthumper##1163|q 237/1
			.kill 10 Stonesplinter Seer##1166|q 237/2
		step
			goto Loch Modan,23.5,76.4
			.talk Mountaineer Gravelgaw##1091
			..turnin In Defense of the King's Lands (2)##237
		step
			goto Loch Modan,23.5,74.5
			.talk Mountaineer Wallbang##1090
			..accept In Defense of the King's Lands (3)##263
		step
			goto Loch Modan,37.5,86.2
			.kill 10 Stonesplinter Shaman##1197|q 263/1
			.kill 10 Stonesplinter Bonesnapper##1164|q 263/2
		step
			goto Loch Modan,23.5,74.5
			.talk Mountaineer Wallbang##1090
			..turnin In Defense of the King's Lands (3)##263
		step
			goto Loch Modan,23.2,73.7
			.talk Captain Rugelfuss##1092
			..accept In Defense of the King's Lands(4)##217
		step
			goto Loch Modan,35.23,84.07|n
			.' Enter the cave and move along the right wall|goto 35.23,84.07,0.4|q 217
		step
			goto Loch Modan,33.7,88.86|n
			.' Move along the right tunnel|goto 33.7,88.86,0.4|q 217
		step
			goto Loch Modan,34.8,90.5
			.kill Grawmug##1205|q 217/1
			.kill Gnasher##1206|q 217/2
			.kill Brawler##1207|q 217/3
			.info They are all inside the cave, on a small ledge above.
		step
			goto Loch Modan,23.2,73.7
			.talk Captain Rugelfuss##1092
			..turnin In Defense of the King's Lands(4)##217
		step
			goto Loch Modan,52.2,69.3
			.goal Find Huldar, Miran, and Saean|q 273/1
		step
			goto Loch Modan,52.2,69.3
			.talk Huldar##2057
			..turnin Resupplying the Excavation##273
			..accept After the Ambush##454
		step
			goto Loch Modan,52.2,69.4
			.talk Miran##1379
			..turnin After the Ambush##454
			..accept Protecting the Shipment##309
		step
			goto Loch Modan,65.2,65.87
			.goal Escort Miran to the excavation site|q 309/1
		step
			goto Loch Modan,65.9,65.6
			.talk Prospector Ironband##1344
			..turnin Protecting the Shipment##309
		step
			goto Loch Modan,63.6,47.9
			.talk Bingles Blastenheimer##6577
			..turnin Find Bingles##2039
			..accept Bingles' Missing Supplies##2038
		step
			goto Loch Modan,55.2,54
			.from Loch Crocolisk##1693+
			.get 5 Crocolisk Meat##2924|q 385/1
			.get 6 Crocolisk Skin##2925|q 385/2
		step
			goto Loch Modan,48.7,30.1
			.collect Bingles' Wrench##7343|q 2038/1
			.info It's a little silver bucket on the ground.
		step
			goto Loch Modan,54.2,26.6
			.collect Bingles' Blastencapper##7376|q 2038/4
			.info It's the little bitty barrel to the right of the hut entrance with a fuse on it.
		step
			goto Loch Modan,51.8,24.1
			.collect Bingles' Hammer##7346|q 2038/3
			.info It's a little silver bucket on the ground.
		step
			goto Loch Modan,48.1,21.1
			.collect Bingles' Screwdriver##7345|q 2038/2
			.info It's a little silver bucket on the ground.
		step
			goto Loch Modan,46,13.6
			.talk Chief Engineer Hinderweir VII##1093
			..accept A Dark Threat Looms (1)##250
		step
			goto Loch Modan,56,13.3
			.' Interact with gameobject: Suspicious Barrel
			.info Its a little barrel sitting on the ground right next to the wall.
			..turnin A Dark Threat Looms (1)##250
			..accept A Dark Threat Looms (2)##199
		step
			goto Loch Modan,46,13.6
			.talk Chief Engineer Hinderweir VII##1093
			..turnin A Dark Threat Looms (2)##199
			..accept A Dark Threat Looms (3)##161
		step
			goto Wetlands,50,18.2
			.talk Ashlan Stonesmirk##1073
			..turnin A Dark Threat Looms (3)##161
			..accept A Dark Threat Looms (4)##274
		step
			goto Loch Modan,46,13.6
			.talk Chief Engineer Hinderweir VII##1093
			..turnin A Dark Threat Looms (4)##274
			..accept A Dark Threat Looms (5)##278
		step
			goto Loch Modan,74.5,19.8|n
			.' Enter the cave|goto 74.5,19.8,0.5|q 256
		step
			goto Loch Modan,79.6,14.7
			.from Chok'sul##1210
			.get Chok'sul's Head##2561|q 256/1
		step
			goto Loch Modan,71.8,23.8
			.kill 4 Mo'grosh Ogre##1178|q 255/1
			.kill 4 Mo'grosh Brute##1180|q 255/2
			.kill 4 Mo'grosh Enforcer##1179|q 255/3
		step
			goto Loch Modan,70.5,22.5
			.from Mo'grosh Ogre##1178, Mo'grosh Enforcer##1179, Mo'grosh Brute##1180, Mo'grosh Shaman##1181, Mo'grosh Mystic##1183
			.get Mo'grosh Crystal##2607|q 278/2
		step
			goto Loch Modan,60.85,23.1
			.from Cliff Lurker##1184, Wood Lurker##1185, Forest Lurker##1195
			.get Lurker Venom##2606|q 278/1
			.' You can find more around (1)|at 75.3,37.25
			.' You can find more around (2)|at 65.8,52
		step
			goto Loch Modan,54.95,54.45
			.from Loch Crocolisk##1693
			.get Crocolisk Tear##2939|q 278/3
			.' You can find more around|at 54.9,38.4
		step
			goto Loch Modan,46,13.6
			.talk Chief Engineer Hinderweir VII##1093
			..turnin A Dark Threat Looms (5)##278
			..accept A Dark Threat Looms (6)##280
		step
			goto Loch Modan,50.6,14.3
			.' Interact with gameobject: Explosive Charge
			.info Barrel, underwater, near the dam.
			..turnin A Dark Threat Looms (6)##280
			..accept A Dark Threat Looms (7)##283
		step
			goto Loch Modan,46,13.6
			.talk Chief Engineer Hinderweir VII##1093
			..turnin A Dark Threat Looms (7)##283
		step
			goto Loch Modan,63.6,47.9
			.talk Bingles Blastenheimer##6577
			..turnin Bingles' Missing Supplies##2038
		step
			goto Loch Modan,81.8,61.7
			.talk Marek Ironheart##1154
			..turnin Crocolisk Hunting##385
		step
			goto Loch Modan,83.5,65.5
			.talk Daryl the Youngling##1187
			..turnin Vyrin's Revenge (1)##271
			..accept Vyrin's Revenge (2)##531
		step
			goto Loch Modan,81.7,64.2
			.talk Vyrin Swiftwind##1156
			..turnin Vyrin's Revenge (2)##531
		step
			goto Loch Modan,34.7,43.2
			.talk Magistrate Bluntnose##1139
			..turnin Mercenaries##255
			..turnin WANTED: Chok'sul##256
		step
			goto Stormwind City,64.6,37.2
			.talk Furen Longbeard##5413
			..turnin Stormpike's Order##1338
		step
			goto Stormwind City,62.6,34.1
			.talk Shoni the Shilent##6579
			..turnin Speak with Shoni##2041
			.info Dungeon: Deadmines Quest Chain.
		step
			.' Congratulations! +38 quests for achievement "Loremaster of Eastern Kingdoms".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Eastern Kingdoms\\[30] Wetlands",[[
author danaton
description This guide contain quest-chain (48 quests) for Wetlands location.
startlevel 30
		step
			.' First you need to complete the Duskwood quest chain.
			.info Skip this step manually.
		step
			goto Stormwind City,49.9,46
			.talk Bishop Farthing##1212
			..accept The Doomed Fleet##270
		step
			goto Stormwind City,50.4,87.5
			.talk Archmage Malin##2708
			..accept Malin's Request##690
		step
			goto Stormwind City,51.1,95.5
			.talk Connor Rivers##5081
			..accept James Hyal (1)##1301
		step
			goto Stormwind City,66,74.1
			.talk Elling Trias##482
			..accept The Missing Diplomat(10)##1248
		step
			goto Loch Modan,34.3,47.7
			.talk Mountaineer Kadrell##1340
			..accept Report to Mountaineer Rockgar##468
		step
			goto Loch Modan,25.4,10.4
			.talk Mountaineer Rockgar##1342
			..turnin Report to Mountaineer Rockgar##468
			..accept The Algaz Gauntlet##455
		step
			goto Wetlands,49.7,79.5
			.kill 8 Dragonmaw Scout##2103|q 455/2
			.kill 6 Dragonmaw Grunt##2102|q 455/3
		step
			goto Wetlands,53.9,70.3
			.goal Traverse Dun Algaz|q 455/1
		step
			goto Wetlands,49.9,39.4
			.talk Einar Stonegrip##2093
			..accept Daily Delivery##469
		step
			goto Wetlands,11.5,52.2
			.talk Tarrel Rockweaver##2096
			..accept In Search of The Excavation Team (1)##305
		step
			goto Wetlands,10.8,55.9
			.talk Harlo Barnaby##2097
			..accept Fall of Dun Modr##472
		step
			goto Wetlands,8.5,55.7
			.talk James Halloran##2094
			..turnin Daily Delivery##469
			..accept Young Crocolisk Skins##484
		step
			goto Wetlands,8.3,58.6
			.talk Karl Boran##1242
			..accept Claws from the Deep##279
		step
			goto Wetlands,8.4,61.8
			.talk Vincent Hyal##5082
			..turnin James Hyal##1301
		step
			goto Wetlands,10.9,59.6
			.talk First Mate Fitzsimmons##1239
			..accept The Third Fleet##288
			..accept The Greenwarden##463
		step
			goto Wetlands,10.6,60.6
			.talk Glorin Steelbrow##1217
			..turnin The Doomed Fleet##270
			..accept Lightforge Iron##321
		step
			goto Wetlands,10.6,60.8
			.talk Mikhail##4963
			..turnin The Missing Diplomat(10)##1248
			..accept The Missing Diplomat(11)##1249
		step
			goto Wetlands,10.8,59.6
			.goal Defeat Tapoke Jahn|q 1249/1
			.info Rogue is invisible and sneaks towards the exit.
		step
			goto Wetlands,10.6,60.8
			.talk Mikhail##4963
			..turnin The Missing Diplomat(11)##1249
		step
			goto Wetlands,10.8,60.8
			.talk Innkeeper Helbrek##1464
			.buy Flagon of Mead##2594|q 288/1
		step
			goto Wetlands,10.5,60.3
			.talk Tapoke "Slim" Jahn##4962
			..accept The Missing Diplomat (12)##1250
		step
			goto Wetlands,10.6,60.8
			.talk Mikhail##4963
			..turnin The Missing Diplomat (12)##1250
		step
			goto Wetlands,10.9,59.6
			.talk First Mate Fitzsimmons##1239
			..turnin The Third Fleet##288
			..accept The Cursed Crew##289
		step
			goto Wetlands,11.8,58
			.talk Sida##2111
			..accept Digging Through the Ooze##470
		step
			goto Wetlands,10.1,56.9
			.talk Valstag Ironjaw##2086
			..turnin The Algaz Gauntlet##455
			..accept Report to Captain Stoutfist##473
		step
			goto Wetlands,9.9,57.5
			.talk Captain Stoutfist##2104
			..turnin Report to Captain Stoutfist##473
			..accept War Banners##464
		step
			goto Wetlands,12.1,64.2
			.' Interact with gameobject: Waterlogged Chest
			..turnin Lightforge Iron##321
			..accept The Lost Ingots##324
		step
			goto Wetlands,10.15,70.99
			.from Bluegill Raider##1418
			.get 5 Lightforge Ingot##2702|q 324/1
		step
			goto Wetlands,18.8,47.7
			.from Young Wetlands Crocolisk##1417
			.get 4 Young Crocolisk Skin##3397|q 484/1
			.' You can find more around|at 33.15,35.9
		step
			goto Wetlands,18.1,39.8
			.from Gobbler##1259
			.get Gobbler's Head##3618|q 279/2
		step
			goto Wetlands,13.8,41.9
			.kill 12 Bluegill Murloc##1024|q 279/1
		step
			goto Wetlands,14.1,30.1
			.from First Mate Snellig##1159
			.get Snellig's Snuffbox##3619|q 289/3
			.info Go downstairs in the ship.
		step
			goto Wetlands,14.1,29.3
			.kill 13 Cursed Sailor##1157|q 289/1
			.kill 5 Cursed Marine##1158|q 289/2
		step
			goto Wetlands,44.3,25.5
			.from Crimson Ooze##1031, Black Ooze##1032
			.get Sida's Bag##3349|q 470/1
		step
			goto Wetlands,49.8,18.3
			.talk Longbraid the Grim##1071
			..turnin Fall of Dun Modr##472
			..accept A Grim Task##304
		step
			goto Wetlands,49.9,18.2
			.talk Rhag Garmason##1075
			..accept The Thandol Span (1)##631
		step
			goto Wetlands,49.7,18.2
			.talk Motley Garmason##1074
			..accept The Dark Iron War##303
		step
			goto Wetlands,62.5,28.4
			.from Balgaras the Foul##1364
			.get Ear of Balgaras##3639|q 304/1
		step
			goto Wetlands,62.2,28.3
			.kill 10 Dark Iron Dwarf##1051|q 303/1
			.kill 5 Dark Iron Tunneler##1053|q 303/2
			.kill 5 Dark Iron Saboteur##1052|q 303/3
			.kill 5 Dark Iron Demolitionist##1054|q 303/4
			.' You can find more around|at 47.8,16.9
		step
			goto Wetlands,49.8,18.3
			.talk Longbraid the Grim##1071
			..turnin A Grim Task##304
		step
			goto Wetlands,50,18.2
			.talk Motley Garmason##1074
			..turnin The Dark Iron War##303
		step
			goto Wetlands,51.3,8
			.' Interact with gameobject: Ebenezer Rustlocke's Corpse
			.info Down the passage to the right in the middle of the bridge, all the way downstairs.
			..turnin The Thandol Span (1)##631
			..accept The Thandol Span (2)##632
		step
			goto Wetlands,49.8,18.3
			.talk Rhag Garmason##1075
			..turnin The Thandol Span (2)##632
			..accept The Thandol Span (3)##633
		step
			goto Arathi Highlands,48.8,88.1
			.' Interact with gameobject: Cache of Explosives
			.info To the right across the hanging bridge after walking across the big bridge from the Wetlands.
			.goal Cache of Explosives Destroyed|q 633/1
		step
			goto Wetlands,49.8,18.3
			.talk Rhag Garmason##1075
			..turnin The Thandol Span (3)##633
			..accept Plea To The Alliance##634
		step
			goto Arathi Highlands,45.8,47.6
			.talk Captain Nials##2700
			..turnin Plea To The Alliance##634
		step
			goto Arathi Highlands,46.7,47
			.talk Skuerto##2789
			..turnin Malin's Request##690
		step
			goto Wetlands,10.9,59.6
			.talk First Mate Fitzsimmons##1239
			..turnin The Cursed Crew##289
			..accept Lifting the Curse##290
		step
			goto Wetlands,10.6,60.6
			.talk Glorin Steelbrow##1217
			..turnin The Lost Ingots##324
			..accept Blessed Arm##322
		step
			goto Wetlands,11.8,58
			.talk Sida##2111
			..turnin Digging Through the Ooze##470
		step
			goto Wetlands,8.5,55.7
			.talk James Halloran##2094
			..turnin Young Crocolisk Skins##484
			..accept Apprentice's Duties##471
		step
			goto Wetlands,8.3,58.6
			.talk Karl Boran##1242
			..turnin Claws from the Deep##279
			..accept Reclaiming Goods##281
		step
			goto Wetlands,13.5,41.4
			.' Interact with gameobject: Damaged Crate
			..turnin Reclaiming Goods##281
			..accept The Search Continues##284
		step
			goto Wetlands,13.6,38.2
			.' Interact with gameobject: Sealed Barrel
			..turnin The Search Continues##284
			..accept Search More Hovels##285
		step
			goto Wetlands,13.9,34.8
			.' Interact with gameobject: Half-buried Barrel
			..turnin Search More Hovels##285
			..accept Return the Statuette##286
		step
			goto Wetlands,15.5,23.5
			.from Captain Halyndor##1160
			.get Intrepid Strongbox Key##2629|q 290/1
		step
			goto Wetlands,14.4,24
			.' Interact with gameobject: Intrepid's Locked Strongbox
			.info At the very bottom of this sunken ship, underwater. It looks like a small metal chest.
			..turnin Lifting the Curse##290
			..accept The Eye of Paleth##292
		step
			goto Wetlands,18.5,27.3
			.from Giant Wetlands Crocolisks##2089
			.get 6 Giant Crocolisk Skin##3348|q 471/1
		step
			goto Wetlands,38.1,51.1
			.talk Ormer Ironbraid##1078
			..accept Ormer's Revenge (1)##294
		step
			goto Wetlands,38.8,52.3
			.talk Merrin Rockweaver##1076
			..turnin In Search of The Excavation Team (1)##305
			..accept In Search of The Excavation Team (2)##306
		step
			goto Wetlands,38.8,52.4
			.talk Prospector Whelgar##1077
			..accept Uncovering the Past##299
		step
			goto Wetlands,24.8,50.15
			.kill 10 Mottled Raptor##1020|q 294/1
			.kill 10 Mottled Screecher##1021|q 294/2
		step
			goto Wetlands,38.1,51.1
			.talk Ormer Ironbraid##1078
			..turnin Ormer's Revenge (1)##294
			..accept Ormer's Revenge (2)##295
		step
			goto Wetlands,34.8,45.4
			.kill 10 Mottled Scytheclaw##1022|q 295/1
			.kill 10 Mottled Razormaw##1023|q 295/2
			.' Get the 4 Relics that spawn randomly in different places around this area. They can spawn up the hill next to Sarltooth also:
			.collect Ados Fragment##2658|q 299/1
			.info The Ados Fragment looks like a big stone box.
			.collect Modr Fragment##2659|q 299/2
			.info The Modr Fragment looks like a thin, tall red vase with a yellow face on it.
			.collect Golm Fragment##2660|q 299/3
			.info The Golm Fragment looks like a wide yellow vase with black silhouettes on it.
			.collect Neru Fragment##2661|q 299/4
			.info The Neru Fragment looks like a mound of dirt.
		step
			goto Wetlands,38.1,51.1
			.talk Ormer Ironbraid##1078
			..turnin Ormer's Revenge (2)##295
			..accept Ormer's Revenge (3)##296
		step
			goto Wetlands,38.8,52.3
			.talk Prospector Whelgar##1077
			..turnin Uncovering the Past##299
		step
			goto Wetlands,33.2,51.4
			.from Sarltooth##1353
			.get Sarltooth's Talon##3638|q 296/1
		step
			goto Wetlands,38.1,51.1
			.talk Ormer Ironbraid##1078
			..turnin Ormer's Revenge (3)##296
		step
			goto Wetlands,42.9,41.2
			.from Dragonmaw Raider##1034
			.get 8 Dragonmaw War Banner##3337|q 464/1
		step
			goto Wetlands,56.3,40.5
			.talk Rethiel the Greenwarden##1244
			..turnin The Greenwarden##463
			..accept Tramping Paws##276
		step
			goto Wetlands,63.9,61.8
			.kill 15 Mosshide Gnoll##1007|q 276/1
			.kill 10 Mosshide Mongrel##1008|q 276/2
		step
			goto Wetlands,56.3,40.5
			.talk Rethiel the Greenwarden##1244
			..turnin Tramping Paws##276
			..accept Fire Taboo##277
		step
			goto Wetlands,46.4,35.3
			.from Mosshide Mistweaver##1009, Mosshide Fenrunner##1010, Mosshide Trapper##1011, Mosshide Brute##1012
			.info Mosshide Gnolls and Mosshide Mongrels will not drop the Crude Flint.
			.get 9 Crude Flint##2611|q 277/1
		step
			goto Wetlands,56.3,40.5
			.talk Rethiel the Greenwarden##1244
			..turnin Fire Taboo##277
			..accept Blisters on The Land##275
		step
			goto Wetlands,47,34.74
			.kill 8 Fen Creeper##1040|q 275/1
			.' You can find more around|at 22.75,28.8
		step
			goto Wetlands,11.5,52.2
			.talk Tarrel Rockweaver##2096
			..turnin In Search of The Excavation Team (2)##306
		step
			goto Wetlands,9.9,57.5
			.talk Captain Stoutfist##2104
			..turnin War Banners##464
			..accept Nek'rosh's Gambit##465
		step
			goto Wetlands,8.5,55.7
			.talk James Halloran##2094
			..turnin Apprentice's Duties##471
		step
			goto Wetlands,8.3,58.6
			.talk Karl Boran##1242
			..turnin Return the Statuette##286
		step
			goto Wetlands,10.6,60.6
			.talk Glorin Steelbrow##1217
			..turnin The Eye of Paleth##292
			..accept Cleansing the Eye##293
		step
			goto Wetlands,47.5,46.9
			.' Interact with gameobject: Dragonmaw Catapult
			..turnin Nek'rosh's Gambit##465
			..accept Defeat Nek'rosh##474
		step
			goto Wetlands,53.5,54.7
			.from Chieftain Nek'rosh##2091
			.get Nek'rosh's Head##3625|q 474/1
		step
			goto Wetlands,56.3,40.5
			.talk Rethiel the Greenwarden##1244
			..turnin Blisters on The Land##275
		step
			goto Wetlands,9.9,57.5
			.talk Captain Stoutfist##2104
			..turnin Defeat Nek'rosh##474
		step
			goto Stormwind City,50.3,45.5
			.talk Archbishop Benedictus##1284
			..turnin Cleansing the Eye##293
		step
			goto Stormwind City,59.7,33.8
			.talk Grimand Elmore##1416
			..turnin Blessed Arm##322
			..accept Armed and Ready##325
		step
			goto Duskwood,7.8,34.1
			.talk Sven Yorgen##311
			..turnin Armed and Ready##325
			..accept Morbent Fel##55
		step
			goto Duskwood,16.9,33.4
			.kill Morbent Fel##1200|q 55/1
		step
			goto Duskwood,7.8,34.1
			.talk Sven Yorgen##311
			..turnin Morbent Fel##55
		step
			.' Congratulations! +48 quests for achievement "Loremaster of Eastern Kingdoms".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Eastern Kingdoms\\[35] Hillsbrad Foothills",[[
author danaton
description This guide contain quest-chain (34 quests) for Hillsbrad Foothills location.
startlevel 35
		step
			.' First you need to complete the Duskwood quest chain.
			.info Skip this step manually.
		step
			goto Duskwood,23.05,37.6
			.from Bone Chewer##210, Plague Spreader##604, Rotted One##948
			.collect An Old History Book##2794|q 337 |future
		step
			.use An Old History Book##2794
			..accept An Old History Book##337
		step
			goto Stormwind City,53.1,81.8
			.talk Alexandra Bolero##1347
			.buy 1 Fine Thread##2321|q 565 |future
		step
			goto Stormwind City,61.2,70.7
			.talk Auctioneer Jaxon##15659
			.buy 1 Bolt of Woolen Cloth##2997|q 565 |future
			.buy 1 Hillman's Cloak##3719|q 565 |future
			.info Hillman's Cloak created by tailors.
		step
			goto Stormwind City,77.1,30.2
			.talk Milton Sheaf##1440
			..turnin An Old History Book##337
			..accept Southshore##538
		step
			goto Stormwind City,76.9,47.8
			.talk Count Remington Ridgewell##2285
			..accept The Perenolde Tiara##543
		step
			goto Arathi Highlands,43.27,92.03|n
			.' Jump onto the ledge from the bridge|goto Arathi Highlands,43.27,92.03,0.5|noway|q 647 |future
		step
			goto Arathi Highlands,43.2,92.6
			.talk Foggy MacKreel##2696
			..accept MacKreel's Moonshine##647
			.info Warning! Timed quest!
		step
			goto Arathi Highlands,44.3,92.8|n
			.' Jump down into the water|goto Arathi Highlands,44.3,92.8,0.5|noway|q 637 |future
		step
			goto Arathi Highlands,44.3,92.9
			.collect Waterlogged Envelope##4433|q 637 |future
			.info At the bottom, near the dwarf's corpse.
		step
			.use Waterlogged Envelope##4433
			..accept Sully Balloo's Letter##637
		step
			goto Arathi Highlands,53.2,91|n
			.' Swim here and go up the hill|goto Arathi Highlands,53.2,91,0.5|noway|q 647
		step
			goto Hillsbrad Foothills,52.1,58.7
			.talk Brewmeister Bilger##2705
			..turnin MacKreel's Moonshine##647
			.info Hurry! Timed quest.
		step
			goto Hillsbrad Foothills,49.3,52.3|n
			.talk Darla Harris##2432
			.' Fly to Ironforge|goto Ironforge|noway|q 637
		step
			goto Ironforge,63.5,67.3
			.talk Sara Balloo##2695
			..turnin Sully Balloo's Letter##637
			..accept Sara Balloo's Plea##683
		step
			goto Ironforge,39.1,56.2
			.talk King Magni Bronzebeard##2784
			..turnin Sara Balloo's Plea##683
			..accept A King's Tribute (1)##686
		step
			goto Ironforge,39,88.1
			.talk Grand Mason Marblesten##2790
			..turnin A King's Tribute (1)##686
			..accept A King's Tribute (2)##689
		step
			goto Hillsbrad Foothills,50.6,57.1
			.talk Loremaster Dibbs##2277
			..turnin Southshore##538
			..accept Preserving Knowledge##540
		step
			goto Hillsbrad Foothills,52.42,55.96
			.talk Darren Malvew##2382
			..accept Costly Menace##564
		step
			goto Hillsbrad Foothills,49.4,55.5
			.talk Bartolo Ginsetti##2438
			..accept Bartolo's Yeti Fur Cloak##565
		step
			goto Hillsbrad Foothills,50.99,58.69
			.talk Huraan##17218
			..accept Missing Crystals##9435
		step
			goto Hillsbrad Foothills,51.46,58.38
			.talk Lieutenant Farren Orinelle##2228
			..accept Down the Coast##536
		step
			goto Hillsbrad Foothills,51.89,58.68
			.talk Chef Jessen##2430
			..accept Soothing Turtle Bisque##555
		step
			goto Hillsbrad Foothills,49.48,58.73
			.talk Marshal Redpath##2263
			..accept Crushridge Bounty##500
		step
			goto Hillsbrad Foothills,48.14,59.11
			.talk Magistrate Henry Maleb##2276
			..accept Syndicate Assassins##505
		step
			goto Hillsbrad Foothills,55.57,35.21
			.collect Shipment of Rare Crystals##23646|q 9435/1
			.info Inside the building.
		step
			goto Hillsbrad Foothills,46.18,31.83
			.collect 5 Alterac Granite##4521|q 689/1
			.info They look like flat grey stones standing upright near the walls inside the cave.
		step
			goto Hillsbrad Foothills,45.75,31.5
			.from Cave Yeti##2248, Ferocious Yeti##2249
			.get 10 Yeti Fur##3720|q 565/4
		step
			goto Alterac Mountains,47.91,82.13
			.' Interact with gameobject: Syndicate Documents
			.info Be careful, the enemies in these camps respawn pretty quickly.
			.info If you have trouble, try to find someone to help you.
			..accept Foreboding Plans##510
			..accept Encrypted Letter##511
			.' If it's not here, check the other camp|at 58.32,67.92
		step
			goto Alterac Mountains,38.4,46.4
			.collect Worn Leather Book##3659|q 540/2
			.info A bookcase inside the town hall.
		step
			goto Alterac Mountains,35.5,54.5
			.from Grel'borg the Miser##2417
			.get Perenolde Tiara##3684|q 543/1
			.' Moving along the route, the final point is here|at 40.8,46.2
		step
			goto Alterac Mountains,49.9,57.1
			.from Crushridge Ogre##2252
			.get 5 Recovered Tome##3658|q 540/1
			.get 9 Dirty Knucklebones##2843|q 500/1
			.' You can find more around (1)|at 38.2,52.4
			.' You can find more around (2)|at 48.8,43.1
		step
			goto Alterac Mountains,58.32,67.92
			.kill 12 Syndicate Footpad##2240|q 505/1
			.kill 8 Syndicate Thief##2241|q 505/2
			.info Focus on killing them in this camp.
			.info The next step in the guide is nearby this camp.
		step
			goto Alterac Mountains,43.94,77.87
			.kill 8 Mountain Lion##2406|q 564/1
			.kill 10 Hulking Mountain Lion##2407|q 564/2
			.' You can find more around (1)|at 37.69,85.48
			.' You can find more around (2)|at 32.86,83.10
		step
			goto Hillsbrad Foothills,70.16,11.90
			.from Snapjaw##2408
			.get 10 Turtle Meat##3712|q 555/1
			.info Be careful not to accidentally sell these to a vendor.
			.' You can find more around (1)|at Alterac Mountains,73.90,66.37
			.' You can find more around (2)|at Alterac Mountains,80.00,58.78
			.' You can find more around (3)|at Alterac Mountains,84.47,51.55
			.' You can find more around (4)|at Alterac Mountains,89.72,47.03
		step
			goto Hillsbrad Foothills,49.4,55.5
			.talk Bartolo Ginsetti##2438
			..turnin Bartolo's Yeti Fur Cloak##565
		step
			goto Hillsbrad Foothills,50.57,57.09
			.talk Loremaster Dibbs##2277
			..turnin Encrypted Letter##511
			..turnin Preserving Knowledge##540
			..accept Letter to Stormpike##514
			..accept Return to Milton##542
		step
			goto Hillsbrad Foothills,52.42,55.96
			.talk Darren Malvew##2382
			..turnin Costly Menace##564
		step
			goto Hillsbrad Foothills,50.99,58.69
			.talk Huraan##17218
			..turnin Missing Crystals##9435
		step
			goto Hillsbrad Foothills,51.89,58.68
			.talk Chef Jessen##2430
			..turnin Soothing Turtle Bisque##555
		step
			goto Hillsbrad Foothills,49.5,58.7
			.talk Marshal Redpath##2263
			..turnin Crushridge Bounty##500
			..accept Crushridge Warmongers##504
		step
			goto Hillsbrad Foothills,48.14,59.11
			.talk Magistrate Henry Maleb##2276
			..turnin Syndicate Assassins##505
			..turnin Foreboding Plans##510
			..accept Noble Deaths##512
		step
			goto Hillsbrad Foothills,46.55,64.38
			.kill 10 Torn Fin Tidehunter##2377|q 536/1
			.kill 10 Torn Fin Oracle##2376|q 536/2
			.info You can find more in the water along the shore.
			.' You can find more around (1)|at 43.51,67.70
			.' You can find more around (2)|at 37.04,68.74
		step
			goto Hillsbrad Foothills,51.46,58.38
			.talk Lieutenant Farren Orinelle##2228
			..turnin Down the Coast##536
			..accept Farren's Proof (1)##559
		step
			goto Alterac Mountains,38.15,52.3
			.kill 10 Crushridge Warmonger##2287|q 504/1
		step
			goto Alterac Mountains,39.7,17.15
			.from Syndicate Spy##2242, Syndicate Sentry##2243, Syndicate Saboteur##2245, Syndicate Assassin##2246, Syndicate Enforcer##2247, Syndicate Wizard##2319
			.get 7 Alterac Signet Ring##3505|q 512/1
			.' You can find more around (1)|at 48.6,17.85
			.' You can find more around (2)|at 56.3,26.85
			.' You can find more around (3)|at 62.1,44
		step
			goto Hillsbrad Foothills,49.5,58.7
			.talk Marshal Redpath##2263
			..turnin Crushridge Warmongers##504
		step
			goto Hillsbrad Foothills,48.14,59.11
			.talk Magistrate Henry Maleb##2276
			..turnin Noble Deaths##512
		step
			goto Hillsbrad Foothills,46.55,64.38
			.' Kill Murlocs enemies around this area.
			.info You can find more in the water along the shore.
			.get 10 Murloc Head##3716|q 559/1
			.' You can find more around (1)|at 43.51,67.70
			.' You can find more around (2)|at 37.04,68.74
		step
			goto Hillsbrad Foothills,48,47.5
			.from Shadowy Assassin##2434
			.collect Assassin's Contract##3668|q 522 |future
			.' You can find more around (1)|at 45.1,50.8
			.' You can find more around (2)|at 45.6,55.6
			.' You can find more around (3)|at 47.2,55.3
		step
			.use Assassin's Contract##3668
			..accept Assassin's Contract##522
		step
			goto Hillsbrad Foothills,51.46,58.38
			.talk Lieutenant Farren Orinelle##2228
			..turnin Farren's Proof (1)##559
			..accept Farren's Proof (2)##560
		step
			goto Hillsbrad Foothills,49.48,58.73
			.talk Marshal Redpath##2263
			..turnin Farren's Proof (2)##560
			..accept Farren's Proof (3)##561
		step
			goto Hillsbrad Foothills,48.1,59.1
			.talk Magistrate Henry Maleb##2276
			..turnin Assassin's Contract##522
			..accept Baron's Demise##523
		step
			goto Hillsbrad Foothills,51.46,58.38
			.talk Lieutenant Farren Orinelle##2228
			..turnin Farren's Proof (3)##561
			..accept Stormwind Ho!##562
		step
			goto Hillsbrad Foothills,53.42,64.21
			.kill 10 Daggerspine Shorehunter##2369|q 562/1
			.kill 10 Daggerspine Siren##2371|q 562/2
			.info You can find more in the water along the shore.
			.' You can find more around (1)|at 57.57,66.32
			.' You can find more around (2)|at 60.95,75.24
		step
			goto Hillsbrad Foothills,51.46,58.38
			.talk Lieutenant Farren Orinelle##2228
			..turnin Stormwind Ho!##562
			..accept Reassignment##563
		step
			goto Ironforge,39,88.1
			.talk Grand Mason Marblesten##2790
			..turnin A King's Tribute (2)##689
			.' Watch the dialogue.
			..accept A King's Tribute (3)##700
		step
			goto Ironforge,39.1,56.2
			.talk King Magni Bronzebeard##2784
			..turnin A King's Tribute (3)##700
		step
			goto Ironforge,74.6,11.7
			.talk Prospector Stormpike##1356
			..turnin Letter to Stormpike##514
			..accept Further Mysteries##525
		step
			goto Stormwind City,76.9,47.8
			.talk Count Remington Ridgewell##2285
			..turnin The Perenolde Tiara##543
		step
			goto Stormwind City,77.1,30.2
			.talk Milton Sheaf##1440
			..turnin Return to Milton##542
		step
			goto Stormwind City,75.9,36.7
			.talk Major Samuelson##2439
			..turnin Reassignment##563
		step
			goto Hillsbrad Foothills,48.1,59.1
			.talk Magistrate Henry Maleb##2276
			..turnin Further Mysteries##525
			..accept Dark Council##537
		step
			goto Alterac Mountains,47.8,17.1
			.from Baron Vardus##2306
			.get Head of Baron Vardus##3626|q 523/1
		step
			goto Alterac Mountains,39.2,14.3
			.from Nagaz##2320
			.get Head of Nagaz##3672|q 537/2
		step
			goto Alterac Mountains,39.2,14.7
			.collect Ensorcelled Parchment##3706|q 551 |future
			.info The chest can appear in a random location in the house.
		step
			.use Ensorcelled Parchment##3706
			..accept The Ensorcelled Parchment##551
		step
			goto Alterac Mountains,60.3,44
			.kill 4 Argus Shadow Mage##2318|q 537/1
		step
			goto Hillsbrad Foothills,50.6,57.1
			.talk Loremaster Dibbs##2277
			..turnin The Ensorcelled Parchment##551
			..accept Stormpike's Deciphering##554
		step
			goto Hillsbrad Foothills,48.1,59.1
			.talk Magistrate Henry Maleb##2276
			..turnin Baron's Demise##523
			..turnin Dark Council##537
		step
			goto Ironforge,74.6,11.7
			.talk Prospector Stormpike##1356
			..turnin Stormpike's Deciphering##554
		step
			.' Congratulations! +34 quests for achievement "Loremaster of Eastern Kingdoms".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Eastern Kingdoms\\[40] Arathi Highlands",[[
author danaton
description This guide contain quest-chain (32 quests) for Arathi Highlands location.
startlevel 40
		step
			.' First you need to complete the Wetlands and Hillsbrad Foothills quest chain.
			.info Skip this step manually.
		step
			goto Stormwind City,50.4,87.5
			.talk Archmage Malin##2708
			..accept Malin's Request##690
		step
			goto Hillsbrad Foothills,50.3,59
			.talk Phin Odelic##2711
			..accept Hints of a New Plague? (1)##659
		step
			goto Arathi Highlands,45.8,47.6
			.talk Captain Nials##2700
			..accept Northfold Manor##681
		step
			goto Arathi Highlands,46,47.7
			.' Interact with gameobject: Wanted Board
			..accept Wanted! Marez Cowl##684
			..accept Wanted! Otto and Falconcrest##685
		step
			goto Arathi Highlands,46.7,47
			.talk Skuerto##2789
			..turnin Malin's Request##690
		step
			goto Arathi Highlands,46.2,47.8
			.talk Apprentice Kryten##2788
			..accept Worth Its Weight in Gold##691
		step
			goto Arathi Highlands,32.45,28.4
			.kill 10 Syndicate Highwayman##2586|q 681/1
			.kill 6 Syndicate Mercenary##2589|q 681/2
		step
			goto Arathi Highlands,45.8,47.6
			.talk Captain Nials##2700
			..turnin Northfold Manor##681
		step
			goto Arathi Highlands,62.5,33.8
			.' Interact with gameobject: Shards of Myzrael
			.info It's a huge floating black crystal.
			..accept The Princess Trapped##642
		step
			goto Arathi Highlands,82.8,36
			.from Drywhisker Kobold##2572, Drywhisker Surveyor##2573, Drywhisker Digger##2574
			.get 12 Mote of Myzrael##4435|q 642/1
		step
			goto Arathi Highlands,84.3,30.9
			.' Interact with gameobject: Iridescent Shards
			.info Inside the cave, follow the path curving up to the left. It's a big black floating crystal.
			..turnin The Princess Trapped##642
			..accept Stones of Binding##651
		step
			goto Arathi Highlands,66.7,29.7
			.' Interact with gameobject: Stone of East Binding
			.info In the middle of a circle of stones.
			.collect 1 Cresting Key##4484|q 651/2
		step
			goto Arathi Highlands,52,50.7
			.collect 1 Thundering Key##4485|q 651/3
			.info In the middle of a circle of stones.
		step
			goto Arathi Highlands,60.2,53.9
			.talk Quae##2712
			..turnin Hints of a New Plague? (1)##659
			..accept Hints of a New Plague? (2)##658
		step
			goto Arathi Highlands,71.7,62.9
			.from Witherbark Troll##2552, Witherbark Shadowcaster##2553, Witherbark Axe Thrower##2554, Witherbark Headhunter##2556, Witherbark Shadow Hunter##2557, Witherbark Berserker##2558
			.get 10 Witherbark Tusk##4503|q 691/1
			.from Witherbark Witch Doctors##2555
			.get 4 Witherbark Medicine Pouch##4522|q 691/2
		step
			goto Arathi Highlands,68.3,75.1
			.from Witherbark Shadow Hunters##2557
			.' They are inside the cave.
			.get Shadow Hunter Knife##5040|q 691/3
		step
			.' The Forsaken Courier walks the road from the Go'Shek Farm to Tauren Mill in the Hillsbrad Foothills. If you see him while walking around, kill only the Forsaken Courier then run away. If you still have not found him after you're done questing, walk the road until you find him.
			.from Forsaken Courier##2714
			.get Sealed Folder##4482|q 658/1
		step
			goto Arathi Highlands,25.5,30.1
			.collect 1 Burning Key##4483|q 651/1
			.info In the middle of a circle of stones.
		step
			goto Arathi Highlands,46.2,47.8
			.talk Apprentice Kryten##2788
			..turnin Worth Its Weight in Gold##691
		step
			goto Arathi Highlands,46.6,47
			.talk Skuerto##2789
			..accept Wand over Fist##693
		step
			goto Arathi Highlands,36.2,57.3
			.' Interact with gameobject: Stone of Inner Binding
			.info In the middle of a circle of stones.
			..turnin Stones of Binding##651
			..accept Breaking the Keystone##652
		step
			goto Arathi Highlands,64.5,27.8
			.from Fozruk##2611
			.info It moves along waypoints.
			.get Rod of Order##4469|q 652/1
			.' You can find Fozruk (1)|at 67.4,33.8
			.' You can find Fozruk (2)|at 66.2,45.6
			.' You can find Fozruk (3)|at 50.8,55.3
			.' You can find Fozruk (4)|at 38.9,49.9
			.' You can find Fozruk (5)|at 36.4,38.7
			.' You can find Fozruk (6)|at 30.1,37.4
			.' You can find Fozruk (7)|at 19.1,46.4
			.' You can find Fozruk (8)|at 25.4,47
			.' You can find Fozruk (9)|at 30.5,54.5
			.' You can find Fozruk (10)|at 39.9,56.5
			.' You can find Fozruk (11)|at 51.3,47.9
			.' You can find Fozruk (12)|at 64.1,42.5
		step
			goto Arathi Highlands,60.2,53.9
			.talk Quae##2712
			..turnin Hints of a New Plague? (2)##658
			..accept Hints of a New Plague? (3)##657
		step
			goto Arathi Highlands,60.2,53.9
			.talk Kinelory##2713
			..turnin Hints of a New Plague? (3)##657
			..accept Hints of a New Plague? (4)##660
		step
			goto Arathi Highlands,60,59.25
			.goal Protect Kinelory|q 660/1
		step
			goto Arathi Highlands,60.2,53.9
			.talk Quae##2712
			..turnin Hints of a New Plague? (4)##660
			..accept Hints of a New Plague? (5)##661
		step
			goto Arathi Highlands,54.8,81.9
			.from Kor'gresh Coldrage##2793
			.get Trelane's Wand of Invocation##4525|q 693/1
		step
			goto Arathi Highlands,46.6,47
			.talk Skuerto##2789
			..turnin Wand over Fist##693
			..accept Trelane's Defenses##694
		step
			goto Arathi Highlands,45.8,47.6
			.talk Captain Nials##2700
			..accept Stromgarde Badges##682
		step
			goto Arathi Highlands,36.1,58.1
			.' Interact with gameobject: Stone of Inner Binding
			.info In the middle of a circle of stones.
			..turnin Breaking the Keystone##652
			..accept Myzrael's Allies##653
		step
			goto Arathi Highlands,29.6,64.2
			.from Marez Cowl##2783
			.get Marez's Head##4515|q 684/1
			.' She can also be|at 29.6,63.0
			.info She is standing behind a big house, next to a table with a bunch of raw meat on it.
		step
			goto Arathi Highlands,26,65.5
			.from Otto##2599
			.get Otto's Head##4516|q 685/1
			.from Lord Falconcrest##2597
			.get Falconcrest's Head##4517|q 685/2
		step
			goto Arathi Highlands,26.1,59.8
			.from Syndicate Prowler##2588, Syndicate Conjuror##2590, Syndicate Magus##2591
			.get 7 Stromgarde Badge##4506|q 682/1
		step
			.goto Arathi Highlands,24.4,61.2|n
			.' The path to Trelane's Defenses starts here|goto Arathi Highlands,24.4,61.2,0.5|noway|q 694
		step
			goto Arathi Highlands,21.7,66.9
			.from Boulderfist Shaman##2570
			.get Azure Agate##4527|q 694/1
		step
			goto Arathi Highlands,31.5,64.1|n
			.' The path over to Faldir's Cove starts here|goto Arathi Highlands,31.5,64.1,0.5|noway|q 663 |future
		step
			goto Arathi Highlands,31.8,82.7
			.talk Lolo the Lookout##2766
			..accept Land Ho!##663
		step
			goto Arathi Highlands,32.3,81.4
			.talk Shakes O'Breen##2610
			..turnin Land Ho!##663
		step
			goto Arathi Highlands,32.7,81.5
			.talk First Mate Nilzlix##2767
			..accept Deep Sea Salvage##662
		step
			goto Arathi Highlands,33.9,80.6
			.talk Captain Steelgut##2769
			..accept Drowned Sorrows##664
		step
			goto Arathi Highlands,33.9,80.5
			.talk Professor Phizzlethorpe##2768
			..accept Sunken Treasure (1)##665
		step
			goto Arathi Highlands,35.72,79.64
			.goal Defend Professor Phizzlethorpe|q 665/1
		step
			goto Arathi Highlands,33.9,80.4
			.talk Doctor Draxlegauge##2774
			..turnin Sunken Treasure (1)##665
			..accept Sunken Treasure (2)##666
		step
			goto Arathi Highlands,23.5,85.1
			.collect Maiden's Folly Log##4489|q 662/2
			.info On the middle deck, in a pile of junk, sitting in a cauldron looking pot.
		step
			goto Arathi Highlands,23.1,84.5
			.collect Maiden's Folly Charts##4487|q 662/1
			.info On a wooden ledge on the middle deck. It looks like a tan, flat scroll.
		step
			goto Arathi Highlands,20.5,85.6
			.collect Spirit of Silverpine Charts##4488|q 662/3
			.info It's a flat scroll laying on a box next to a cannon on the middle deck of the ship.
		step
			goto Arathi Highlands,20.6,85.1
			.collect Spirit of Silverpine Log##4490|q 662/4
			.info It's a scroll laying flat on the ground at the very bottom of the ship.
		step
			goto Arathi Highlands,22.4,83.7
			.' Put on your Goggles of Gem Hunting|use Goggles of Gem Hunting##4491
			.collect 10 Elven Gem##4492|q 666/1
			.info Use your Goggles of Gem Hunting. The Calcified Elven Gems will show up as yellow dots on your mini map.
		step
			goto Arathi Highlands,25.3,85.2
			.kill 10 Daggerspine Raider##2595|q 664/1
			.kill 3 Daggerspine Sorceress##2596|q 664/2
		step
			goto Arathi Highlands,32.7,81.5
			.talk First Mate Nilzlix##2767
			..turnin Deep Sea Salvage##662
		step
			goto Arathi Highlands,33.9,80.6
			.talk Doctor Draxlegauge##2774
			..turnin Sunken Treasure (2)##666
			..accept Sunken Treasure (3)##668
		step
			goto Arathi Highlands,33.9,80.6
			.talk Captain Steelgut##2769
			..turnin Drowned Sorrows##664
		step
			goto Arathi Highlands,32.3,81.4
			.talk Shakes O'Breen##2610
			..turnin Sunken Treasure (3)##668
			..accept Sunken Treasure (4)##669
		step
			goto Arathi Highlands,45.8,47.6
			.talk Captain Nials##2700
			..turnin Stromgarde Badges##682
			.' Watch the dialogue.
			..turnin Wanted! Marez Cowl##684
			..turnin Wanted! Otto and Falconcrest##685
		step
			goto Arathi Highlands,46.2,47.8
			.talk Apprentice Kryten##2788
			..turnin Trelane's Defenses##694
			..accept An Apprentice's Enchantment##695
		step
			goto Arathi Highlands,46.6,47
			.talk Skuerto##2789
			..turnin An Apprentice's Enchantment##695
			..accept Attack on the Tower##696
		step
			goto Arathi Highlands,18.2,68.1
			.collect Trelane's Phylactery##4530|q 696/1
		step
			goto Arathi Highlands,18,67.9
			.collect Trelane's Ember Agate##4532|q 696/3
		step
			goto Arathi Highlands,18.2,69.2
			.collect Trelane's Orb##4531|q 696/2
		step
			goto Arathi Highlands,46.6,47
			.talk Skuerto##2789
			..turnin Attack on the Tower##696
			..accept Malin's Request##697
		step
			goto Hillsbrad Foothills,50.3,59
			.talk Phin Odelic##2711
			..turnin Hints of a New Plague? (5)##661
		step
			goto Ironforge,50.8,5.6
			.talk Gerrig Bonegrip##2786
			..turnin Myzrael's Allies##653
			..accept Theldurin the Lost##687
		step
			goto Stormwind City,50.4,87.5
			.talk Archmage Malin##2708
			..turnin Malin's Request##697
		step
			goto Stranglethorn Vale,27.2,77
			.talk Fleet Master Seahorn##2487
			..turnin Sunken Treasure (4)##669
			..accept Sunken Treasure (5)##670
		step
			goto Badlands,51.4,76.9
			.talk Theldurin the Lost##2785
			..turnin Theldurin the Lost##687
			..accept The Lost Fragments##692
		step
			goto Badlands,54.95,84.25
			.from Enraged Rock Elemental##2791
			.get Torn Scroll Fragment##4518|q 692/1
			.get Crumpled Scroll Fragment##4519|q 692/2
			.get Singed Scroll Fragment##4520|q 692/3
		step
			goto Badlands,51.4,76.9
			.talk Theldurin the Lost##2785
			..turnin The Lost Fragments##692
			.' Watch the dialogue.
			..accept Summoning the Princess##656
		step
			goto Arathi Highlands,62.5,33.7
			.use Scroll of Myzrael##4472
			.from Myzrael##2755
			.get Eldritch Shackles##4473|q 656/1
		step
			goto Arathi Highlands,62.5,33.7
			.' Interact with gameobject: Shards of Myzrael
			..turnin Summoning the Princess##656
		step
			goto Arathi Highlands,32.3,81.4
			.talk Shakes O'Breen##2610
			..turnin Sunken Treasure (5)##670
			..accept Death From Below##667
		step
			goto Arathi Highlands,32.3,81.4
			.goal Defend Shakes O'Breen|q 667/1
		step
			goto Arathi Highlands,32.3,81.4
			.talk Shakes O'Breen##2610
			..turnin Death From Below##667
		step
			.' Congratulations! +32 quests for achievement "Loremaster of Eastern Kingdoms".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Eastern Kingdoms\\[50] Hinterlands",[[
author danaton
description This guide contain quest-chain (17 quests) for Hinterlands location.
startlevel 50
		step
			goto Teldrassil,55.5,92
			.talk Erelas Ambersky##7916
			..accept Favored of Elune?##3661
		step
			goto Stormwind,69.50,40.40
			.talk Brohann Caskbelly ##5384
			..accept In Search of The Temple##1448
		step
			goto Swamp of Sorrows,70.00,53.20
			.goal Search for the Temple of Atal'Hakkar|q 1448/1
		step
			goto Stormwind,69.50,40.40
			.talk Brohann Caskbelly ##5384
			..turnin In Search of The Temple##1448
			..accept To The Hinterlands##1449
		step
			goto Stranglethorn Vale,27.1,77.4
			.talk Whiskey Slim##2491
			..accept Whiskey Slim's Lost Grog##580
		step
			goto Tanaris,51.8,28.7
			.talk Marin Noggenfogger##7564
			..accept The Thirsty Goblin##2605
		step
			goto Tanaris,28.5,65.3
			.from Thistleshrub Dew Collector##5481
			.get Laden Dew Gland##8428|q 2605/1
		step
			goto Tanaris,51.8,28.7
			.talk Marin Noggenfogger##7564
			..turnin The Thirsty Goblin##2605
			..accept In Good Taste##2606
		step
			goto Tanaris,51.1,26.9
			.talk Sprinkle##7583
			..turnin In Good Taste##2606
			..accept Sprinkle's Secret Ingredient##2641
		step
			goto The Hinterlands,11.8,46.8
			.talk Falstad Wildhammer##5635
			..turnin To The Hinterlands##1449
			..accept Gryphon Master Talonaxe##1450
		step
			goto The Hinterlands,9.8,44.5
			.talk Gryphon Master Talonaxe##5636
			..turnin Gryphon Master Talonaxe##1450
			..accept Rhapsody Shindigger##1451
			..accept Witherbark Cages##2988
		step
			goto The Hinterlands,14.8,44.6
			.talk Fraggar Thundermantle##7884
			..accept Skulk Rock Clean-up##2877
			..accept Troll Necklace Bounty##2880
		step
			goto The Hinterlands,15.1,47.2
			.talk Ambassador Rualeth##17223
			..accept Featherbeard's Endorsement##9469
			..accept A Gesture of Goodwill##9470
			..accept Preying on the Predators##9471
		step
			goto The Hinterlands,13.4,55.2
			.' Interact with gameobject: Featherbeard's Journal
			.info Inside the little house, downstairs, laying right in front of the fireplace.
			..turnin Featherbeard's Endorsement##9469
			..accept In Pursuit of Featherbeard##9476
		step
			goto The Hinterlands,20.5,52.7
			.kill 10 Mangy Silvermane##2923|q 9471/1
		step
			goto The Hinterlands,22.9,54.8
			.collect 15 Wildkin Feather##10819|q 3661/1
			.info They look like big brown and white feathers on the ground here and around Quel'Danil Lodge.
		step
			goto The Hinterlands,23.2,58.8
			.goal Check First Cage|q 2988/1
			.goal Check Second Cage|q 2988/2
		step
			goto The Hinterlands,24.8,55.4
			.from Witherbark Scalper##2649, Witherbark Zealot##2650
			.get 5 Troll Tribal Necklace##9259|q 2880/1
		step
			goto The Hinterlands,24.6,65.6
			.kill Witch Doctor Mai'jin##17235|q 9470/1
			.kill Tcha'kaz##17236|q 9470/2
			.info Inside the cave.
		step
			goto The Hinterlands,27.1,66.5
			.kill 5 Silvermane Wolf##2924|q 9471/2
		step
			goto The Hinterlands,32.1,57.3
			.goal Check Third Cage|q 2988/3
		step
			goto The Hinterlands,40.7,59.1
			.collect Violet Tragan##8526|q 2641/1
			.info They are brown and white mushrooms underwater.
		step
			goto The Hinterlands,48.2,41.7
			.kill 10 Green Sludge##2655|q 2877/1
			.kill 10 Jade Ooze##2656|q 2877/2
		step
			goto The Hinterlands,48.2,41.7
			.from Green Sludge##2655, Jade Ooze##2656
			.collect OOX-09/HL Distress Beacon##8704|q 485 |future
		step
			.use OOX-09/HL Distress Beacon##8704
			..accept Find OOX-09/HL!##485
		step
			goto The Hinterlands,49.4,37.7
			.talk Homing Robot OOX-09/HL##7806
			..turnin Find OOX-09/HL!##485
			..accept Rescue OOX-09/HL!##836
		step
			goto The Hinterlands,57.83,50.2
			.goal Escort OOX-09/HL to safety|q 836/1
		step
			goto The Hinterlands,71.5,65.1|n
			.' The path down starts here|goto The Hinterlands,71.5,65.1,0.5|noway|q 580
		step
			goto The Hinterlands,78.8,63.4
			.collect 12 Pupellyverbos Port##3900|q 580/1
			.info Little blue bottles.
		step
			goto The Hinterlands,37.2,71.5
			.' Interact with gameobject: Featherbeard's Remains
			..turnin In Pursuit of Featherbeard##9476
			..accept Reclaiming the Eggs##9475
		step
			goto The Hinterlands,34.1,72.9
			.collect 5 Gryphon Egg##23694|q 9475/1
			.info They look like medium sized white eggs with blue spots on them.
		step
			goto The Hinterlands,27.00,48.50
			.talk Rhapsody Shindigger##5634
			..turnin Rhapsody Shindigger##1451
		step
			goto The Hinterlands,15.1,47.2
			.talk Ambassador Rualeth##17223
			..turnin A Gesture of Goodwill##9470
			..turnin Preying on the Predators##9471
			..turnin Reclaiming the Eggs##9475
		step
			goto The Hinterlands,14.8,44.6
			.talk Fraggar Thundermantle##7884
			..turnin Skulk Rock Clean-up##2877
			..turnin Troll Necklace Bounty##2880
		step
			goto The Hinterlands,9.8,44.5
			.talk Gryphon Master Talonaxe##5636
			..turnin Witherbark Cages##2988
			..accept The Altar of Zul##2989
		step
			goto The Hinterlands,48.3,67.6
			.goal Search the Altar of Zul|q 2989/1
			.info Run up the stairs of the temple towards this spot to Search the Altar of Zul. There are a bunch of mobs at the top, so run around at the top of the temple and once you complete the quest, run away as fast as you can.
		step
			goto The Hinterlands,9.8,44.5
			.talk Gryphon Master Talonaxe##5636
			..turnin The Altar of Zul##2989
			..accept Thadius Grimshade##2990
		step
			goto Blasted Lands,67,19.4
			.talk Thadius Grimshade##8022
			..turnin Thadius Grimshade##2990
		step
			goto Stranglethorn Vale,28.4,76.4
			.talk Oglethorpe Obnoticus##7406
			..turnin Rescue OOX-09/HL!##836
		step
			goto Stranglethorn Vale,27.1,77.5
			.talk Whiskey Slim##2491
			..turnin Whiskey Slim's Lost Grog##580
		step
			goto Tanaris,51.1,26.9
			.talk Sprinkle##7583
			..turnin Sprinkle's Secret Ingredient##2641
			.' Watch the dialogue.
			..accept Delivery for Marin##2661
		step
			goto Tanaris,51.8,28.7
			.talk Marin Noggenfogger##7564
			..turnin Delivery for Marin##2661
			..accept Noggenfogger Elixir##2662
			.' Watch the dialogue.
			..turnin Noggenfogger Elixir##2662
		step
			goto Teldrassil,55.5,92
			.talk Erelas Ambersky##7916
			..turnin Favored of Elune?##3661
		step
			.' Congratulations! +17 quests for achievement "Loremaster of Eastern Kingdoms".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Eastern Kingdoms\\[60] Western Plaguelands",[[
author danaton
description This guide contain quest-chain (45 quests) for Western Plaguelands location.
startlevel 60
		step
			goto Winterspring,61.35,38.97
			.talk Gregor Greystone##10431
			..accept The Everlook Report##6028
		step
			goto Winterspring,61.3,39
			.talk Jessica Redpath##11629
			..accept Sister Pamela##5601
		step
			goto Ironforge,29.4,22.1
			.talk Courier Hammerfall##10877
			..accept A Call to Arms: The Plaguelands!##5090
		step
			goto Western Plaguelands,43,83.5
			.talk Argent Officer Pureheart##10840
			..turnin The Everlook Report##6028
		step
			goto Western Plaguelands,42.7,84
			.talk Commander Ashlam Valorfist##10838
			..turnin A Call to Arms: The Plaguelands!##5090
			..accept Clear the Way##5092
		step
			goto Western Plaguelands,42.9,84.5
			.talk Anchorite Truuen##17238
			..accept The Mark of the Lightbringer##9474
		step
			goto Western Plaguelands,48.2,81.2
			.kill 10 Skeletal Flayer##1783|q 5092/1
			.kill 10 Slavering Ghoul##1791|q 5092/2
		step
			goto Western Plaguelands,42.7,84
			.talk Commander Ashlam Valorfist##10838
			..turnin Clear the Way##5092
			..accept The Scourge Cauldrons##5215
			..accept All Along the Watchtowers##5097
		step
			goto Western Plaguelands,42.9,84.5
			.talk High Priestess MacDonnell##11053
			..turnin The Scourge Cauldrons##5215
			..accept Target: Felstone Field##5216
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
			goto Western Plaguelands,37,57.1
			.from Cauldron Lord Bilemaw##11075
			.collect Felstone Field Cauldron Key##13194|q 5216 |future
		step
			goto Western Plaguelands,37.2,56.8
			.' Interact with gameobject: Scourge Cauldron
			..turnin Target: Felstone Field##5216
			..accept Return to Chillwind Camp##5217
		step
			goto Western Plaguelands,38.4,54
			.talk Janice Felstone##10778
			..accept Better Late Than Never (1)##5021
		step
			goto Western Plaguelands,38.7,55.3
			.' Interact with gameobject: Janice's Parcel
			.info It's a brown package on the floor inside the barn, next to the wall as you enter.
			..turnin Better Late Than Never (1)##5021
			..accept Better Late Than Never (2)##5022
		step
			goto Western Plaguelands,42.7,84
			.talk Commander Ashlam Valorfist##10838
			..turnin All Along the Watchtowers##5097
			..accept Alas, Andorhal##211
		step
			goto Western Plaguelands,42.9,84.5
			.talk High Priestess MacDonnell##11053
			..turnin Return to Chillwind Camp##5217
			..accept Target: Dalson's Tears##5219
		step
			goto Western Plaguelands,45.3,69.2
			.from Araj the Summoner##1852
			.get Araj's Phylactery Shard##17114|q 211/1
		step
			goto Western Plaguelands,42.7,84
			.talk Commander Ashlam Valorfist##10838
			..turnin Alas, Andorhal##211
			..accept Scholomance##5533
		step
			goto Western Plaguelands,42.7,83.8
			.talk Alchemist Arbington##11056
			..turnin Scholomance##5533
			..accept Skeletal Fragments##5537
		step
			goto Western Plaguelands,46.2,52.4
			.from Cauldron Lord Malvinious##11077
			.collect Dalson's Tears Cauldron Key##13195|q 5219 |future
		step
			goto Western Plaguelands,46.2,51.9
			.' Interact with gameobject: Scourge Cauldron
			..turnin Target: Dalson's Tears##5219
			..accept Return to Chillwind Camp##5220
		step
			goto Western Plaguelands,47.7,50.7
			.' Interact with gameobject: Mrs. Dalson's Diary
			.info Inside the barn, on the floor in the middle of the room, it's an opened book.
			..accept Mrs. Dalson's Diary##5058|instant
		step
			goto Western Plaguelands,48.1,49.7
			.from Wandering Skeleton##10816
			.collect Dalson Outhouse Key##12738|n
			.' Unlock the Outhouse with the Dalson Outhouse Key
			.info Behind the barn, next to a big tree stump.
			.from Farmer Dalson##10836
			.collect Dalson Cabinet Key##12739|q 5060 |future |instant
		step
			goto Western Plaguelands,47.4,49.7
			.' Unlock the Locked Cabinet with the Dalson Cabinet Key
			.info In the house, on the second floor in the small room.
			..accept Locked Away##5060|instant |future
		step
			goto Western Plaguelands,50.0,30.4|n
			.' The path down to Kirsta Deepshadow starts here|goto Western Plaguelands,50.0,30.4,0.5|noway|q 6004 |future
		step
			goto Western Plaguelands,51.9,28
			.talk Kirsta Deepshadow##11610
			..accept Unfinished Business (1)##6004
		step
			goto Western Plaguelands,50.3,41.5
			.kill 2 Scarlet Knight##1833|q 6004/4
			.kill 2 Scarlet Mage##1826|q 6004/3
		step
			goto Western Plaguelands,51.1,43.7
			.kill 2 Scarlet Hunter##1831|q 6004/2
			.kill 2 Scarlet Medic##10605|q 6004/1
		step
			goto Western Plaguelands,51.9,28
			.talk Kirsta Deepshadow##11610
			..turnin Unfinished Business (1)##6004
			..accept Unfinished Business (2)##6023
		step
			goto Western Plaguelands,56.4,34.0|n
			.' The path up to Huntsman Radley starts here|goto Western Plaguelands,56.4,34.0,0.5|noway|q 6023
		step
			goto Western Plaguelands,57.7,36.3
			.kill Huntsman Radley##11613|q 6023/1
		step
			goto Western Plaguelands,54.2,24.2
			.kill 1 Cavalier Durgen##11611|q 6023/2
			.info Stay in front of the tower. Cavalier Durgen will eventually walk out of the tower down the front.
		step
			goto Western Plaguelands,55.2,23.5
			.collect Mark of the Lightbringer##23661|q 9474/1
			.info A small brown chest at the very top of the tower.
		step
			goto Western Plaguelands,52.8,25.2|n
			.' Jump off the cliff down to Kirsta Deepshadow|goto Western Plaguelands,52.8,25.2,0.5|noway|q 6023
		step
			goto Western Plaguelands,51.9,28
			.talk Kirsta Deepshadow##11610
			..turnin Unfinished Business (2)##6023
			..accept Unfinished Business (3)##6025
		step
			goto Western Plaguelands,45.19,17.97|n
			.' Climb the tower|goto Western Plaguelands,45.19,17.97,0.5|noway|q 6025
		step
			goto Western Plaguelands,45.82,18.37
			.goal Overlook Hearthglen from a high vantage point|q 6025/1
		step
			goto Western Plaguelands,51.9,28
			.talk Kirsta Deepshadow##11610
			..turnin Unfinished Business (3)##6025
		step
			goto Western Plaguelands,42.9,84.5
			.talk High Priestess MacDonnell##11053
			..turnin Return to Chillwind Camp##5220
			..accept Target: Writhing Haunt##5222
		step
			goto Western Plaguelands,42.9,84.5
			.talk Anchorite Truuen##17238
			..turnin The Mark of the Lightbringer##9474
		step
			goto Western Plaguelands,42.9,84.5
			.talk Anchorite Truuen##17238
			.' Warning! Escorting quest!
			..accept Tomb of the Lightbringer##9446
		step
			goto Western Plaguelands,52.1,83.4
			.goal Escort Anchorite Truuen to Uther's Tomb|q 9446/1
		step
			goto Western Plaguelands,42.9,84.5
			.talk High Priestess MacDonnell##11053
			..turnin Tomb of the Lightbringer##9446
		step
			goto Stormwind City,57.2,48.1
			.talk Royal Factor Bathrilor##10782
			..turnin Better Late Than Never (2)##5022
			..accept Good Natured Emma##5048
		step
			goto Stormwind City,60.2,57
			.talk Ol' Emma##3520
			..turnin Good Natured Emma##5048
			..accept Good Luck Charm##5050
		step
			goto Stormwind City,80,38.4
			.talk King Varian Wrynn##29611
			..accept The First and the Last##6182
		step
			goto Stormwind City,78.3,70.7
			.talk Master Mathias Shaw##332
			..turnin The First and the Last##6182
			..accept Honor the Dead##6183
			..turnin Honor the Dead##6183
			..accept Flint Shadowmore##6184
		step
			goto Western Plaguelands,43.6,84.5
			.talk Flint Shadowmore##12425
			..turnin Flint Shadowmore##6184
			..accept The Eastern Plagues##6185
		step
			goto Western Plaguelands,38.4,54
			.talk Janice Felstone##10778
			..turnin Good Luck Charm##5050
			..accept Two Halves Become One##5051
		step
			goto Western Plaguelands,36.8,58.2
			.kill Jabbering Ghoul##10801|n
			.info If a Jabbering Ghoul is not in this spot, you can find one somewhere in this field.
			.collect Good Luck Other-Half Charm##12722|q 5051 |future
		step
			.use Good Luck Other-Half-Charm##12722
			.collect Good Luck Charm##12723|q 5051/1
		step
			goto Western Plaguelands,36.85,57.4
			.from Skeletal Flayer##1783, Skeletal Sorcerer##1784
			.get 15 Skeletal Fragments##14619|q 5537/1
		step
			goto Western Plaguelands,38.4,54
			.talk Janice Felstone##10778
			..turnin Two Halves Become One##5051
		step
			goto Western Plaguelands,53,66
			.from Cauldron Lord Razarch##11076
			.collect Writhing Haunt Cauldron Key##13197|q 5222 |future
		step
			goto Western Plaguelands,53,65.6
			.' Interact with gameobject: Scourge Cauldron
			..turnin Target: Writhing Haunt##5222
			..accept Return to Chillwind Camp##5223
		step
			goto Western Plaguelands,42.7,84
			.talk Alchemist Arbington##11056
			..turnin Skeletal Fragments##5537
			..accept Mold Rhymes With...##5538
		step
			goto Western Plaguelands,42.9,84.5
			.talk High Priestess MacDonnell##11053
			..turnin Return to Chillwind Camp##5223
			..accept Target: Gahrron's Withering##5225
		step
			goto Western Plaguelands,53.7,64.7
			.talk Mulgris Deepriver##10739
			..accept The Wildlife Suffers Too (1)##4984
		step
			goto Western Plaguelands,42.8,55.4
			.kill 8 Diseased Wolf##1817|q 4984/1
			.info The wolves in this area share a respawn with the spiders so killing them as well will spawn wolves faster.
			.'You can also find more wolves|at 45.6,47.4
		step
			goto Western Plaguelands,53.7,64.7
			.talk Mulgris Deepriver##10739
			..turnin The Wildlife Suffers Too (1)##4984
			..accept The Wildlife Suffers Too (2)##4985
		step
			goto Western Plaguelands,57.9,61.2
			.kill 8 Diseased Grizzly##1816|q 4985/1
			.' You can find more|at 57.4,53.1
		step
			goto Western Plaguelands,53.7,64.7
			.talk Mulgris Deepriver##10739
			..turnin The Wildlife Suffers Too (2)##4985
			..accept Glyphed Oaken Branch##4986
		step
			goto Western Plaguelands,62.6,59.9
			.from Cauldron Lord Soulwrath##11078
			.collect Gahrron's Withering Cauldron Key##13196|q 5225 |future
		step
			goto Western Plaguelands,62.5,58.5
			.' Interact with gameobject: Scourge Cauldron
			..turnin Target: Gahrron's Withering##5225
			..accept Return to Chillwind Camp##5226
		step
			goto Eastern Plaguelands,25.1,73.1
			.collect SI:7 Insignia (Rutger)##16003|q 6185/2
		step
			goto Eastern Plaguelands,25.1,68.4
			.collect SI:7 Insignia (Turyen)##16002|q 6185/4
		step
			goto Eastern Plaguelands,23.5,68.4
			.collect SI:7 Insignia (Fredo)##16001|q 6185/3
			.goal The Blightcaller Uncovered|q 6185/1
		step
			goto Eastern Plaguelands,32.4,83.7
			.talk Pamela Redpath##10926
			..turnin Sister Pamela##5601
			..accept Pamela's Doll##5149
		step
			goto Eastern Plaguelands,35.0,84.3
			.' The doll parts spawn in the house here, except the house Pamela is in
			.collect Pamela's Doll's Head##12886|n
			.collect Pamela's Doll's Left Side##12887|n
			.collect Pamela's Doll's Right Side##12888|n
			.' Click Pamela's Doll's Head to put the doll parts together to make Pamela's Doll|q 5149/1|use Pamela's Doll's Head##12886
		step
			goto Eastern Plaguelands,32.4,83.7
			.talk Pamela Redpath##10926
			..turnin Pamela's Doll##5149
			..accept Uncle Carlin##5241
			..accept Auntie Marlene##5152
		step
			goto Western Plaguelands,42.9,84.5
			.talk High Priestess MacDonnell##11053
			..turnin Return to Chillwind Camp##5226
		step
			goto Western Plaguelands,43.6,84.5
			.talk Flint Shadowmore##12425
			..turnin The Eastern Plagues##6185
			..accept The Blightcaller Cometh##6186
		step
			goto Western Plaguelands,49.2,78.5
			.talk Marlene Redpath##10927
			..turnin Auntie Marlene##5152
			..accept A Strange Historian##5153
		step
			goto Western Plaguelands,49.7,76.8
			.' Interact with gameobject: Joseph Redpath's Monument
			.info It's a squarish stone gravestone with a gold plaque on it. It's a lighter color than all the other graves.
			.collect Joseph's Wedding Ring##12894|q 5153/1
		step
			goto Western Plaguelands,39.5,66.8
			.talk Chromie##10667
			..turnin A Strange Historian##5153
			..accept The Annals of Darrowshire##5154
			..accept A Matter of Time##4971
		step
			goto Western Plaguelands,43.5,69.4
			.collect Annals of Darrowshire##12900|q 5154/1
			.info In the building that isn's crumbled in the middle of the town - you can enter from the south side by hugging the wall of the building until you get inside safely.
		step
			goto Western Plaguelands,46.9,65.7
			.' Use your Temporal Displacer on the disco ball towers|use Temporal Displacer##12627
			.info In this area, you will see towers that have light shining out of them like a disco ball.
			.kill 10 Temporal Parasite##10717|q 4971/1
		step
			goto Western Plaguelands,39.5,66.8
			.talk Chromie##10667
			..turnin The Annals of Darrowshire##5154
			.' Watch the dialogue.
			..turnin A Matter of Time##4971
			..accept Counting Out Time##4972
			..accept Brother Carlin##5210
		step
			goto Western Plaguelands,38.8,68.3
			.collect 5 Andorhal Watch##12638|q 4972/1
			.info Click the Small Lockboxes on the ground in the crumbled houses.
		step
			goto Western Plaguelands,39.5,66.8
			.talk Chromie##10667
			..turnin Counting Out Time##4972
		step
			goto Eastern Plaguelands,75.7,53.8
			.talk Carlin Redpath##11063
			..turnin Brother Carlin##5210
			..turnin Uncle Carlin##5241
		step
			goto Stormwind City,80,38.5
			.talk King Varian Wrynn##29611
			..turnin The Blightcaller Cometh##6186
		step
			goto Darnassus,35.4,8.4
			.talk Mathrengyl Bearwalker##4217
			..turnin Glyphed Oaken Branch##4986
		step
			goto Tanaris,51.5,28.8
			.talk Krinkle Goodsteel##5411
			..turnin Mold Rhymes With...##5538
		step
			.' Congratulations! +45 quests for achievement "Loremaster of Eastern Kingdoms".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Eastern Kingdoms\\[60] Eastern Plaguelands",[[
author danaton
description This guide contain quest-chain (35 quests) for Eastern Plaguelands location.
startlevel 60
		step
			goto Winterspring,61.35,38.97
			.talk Gregor Greystone##10431
			..accept The Everlook Report##6028
			..accept Duke Nicholas Zverenhoff##6030
		step
			goto Winterspring,61.28,38.98
			.talk Jessica Redpath##11629
			..accept Sister Pamela##5601
		step
			goto Stormwind City,80,38.5
			.talk King Varian Wrynn##29611
			..accept The First and the Last##6182
		step
			goto Stormwind City,78.3,70.7
			.talk Master Mathias Shaw##332
			..turnin The First and the Last##6182
			..accept Honor the Dead##6183
			..turnin Honor the Dead##6183
			..accept Flint Shadowmore##6184
		step
			goto Western Plaguelands,43.6,84.5
			.talk Flint Shadowmore##12425
			..turnin Flint Shadowmore##6184
			..accept The Eastern Plagues##6185
		step
			goto Western Plaguelands,43,83.5
			.talk Argent Officer Pureheart##10840
			..turnin The Everlook Report##6028
		step
			goto Eastern Plaguelands,4.7,38.4
			.talk Tirion Fordring##1855
			..accept Demon Dogs##5542
			..accept Blood Tinged Skies##5543
			..accept Carrion Grubbage##5544
		step
			goto Eastern Plaguelands,25.1,73.1
			.' Click the Mangled Human Remains
			.get SI:7 Insignia (Rutger)##16003|q 6185/2
		step
			goto Eastern Plaguelands,25.1,68.4
			.' Click the Mangled Human Remains
			.get SI:7 Insignia (Turyen)##16002|q 6185/4
		step
			goto Eastern Plaguelands,23.5,68.4
			.' Click the Mangled Human Remains
			.get SI:7 Insignia (Fredo)##16001|q 6185/3
			.goal The Blightcaller Uncovered|q 6185/1
		step
			goto Eastern Plaguelands,24.9,63.6
			.kill 20 Plaguehound Runt##8596|q 5542/1
			.kill 30 Plaguebat##8600|q 5543/1
			.from Carrion Grub##8603, Carrion Devourer##8605
			.get 15 Slab of Carrion Worm Meat##13853|q 5544/1
		step
			goto Eastern Plaguelands,32.4,83.7
			.talk Pamela Redpath##10926
			..turnin Sister Pamela##5601
			..accept Pamela's Doll##5149
		step
			goto Eastern Plaguelands,35.0,84.3
			.' The doll parts spawn in the house here, except the house Pamela is in
			.collect Pamela's Doll's Head##12886|n
			.collect Pamela's Doll's Left Side##12887|n
			.collect Pamela's Doll's Right Side##12888|n
			.' Click Pamela's Doll's Head to put the doll parts together to make Pamela's Doll|q 5149/1|use Pamela's Doll's Head##12886
		step
			goto Eastern Plaguelands,32.4,83.7
			.talk Pamela Redpath##10926
			..turnin Pamela's Doll##5149
			..accept Uncle Carlin##5241
			..accept Auntie Marlene##5152
		step
			goto Eastern Plaguelands,52.5,49.1
			.kill 5 Plaguehound##8597|q 5542/2
		step
			goto Eastern Plaguelands,50.3,25.9
			.kill 5 Frenzied Plaguehound##8598|q 5542/3
		step
			goto Eastern Plaguelands,4.7,38.4
			.talk Tirion Fordring##1855
			..turnin Demon Dogs##5542
			..turnin Blood Tinged Skies##5543
			..turnin Carrion Grubbage##5544
			..accept Redemption##5742
		step
			goto Eastern Plaguelands,4.7,38.4
			.talk Tirion Fordring##1855
			.goal Tirion's Tale|q 5742/1
		step
			goto Eastern Plaguelands,4.7,38.4
			.talk Tirion Fordring##1855
			..turnin Redemption##5742
			..accept Of Forgotten Memories##5781
		step
			goto Eastern Plaguelands,24.66,79.79
			.' Interact with gameobject: Loose Dirt Mound
			.from Mercutio Filthgorger##11886
			.get Taelan's Hammer##14613|q 5781/1
		step
			goto Eastern Plaguelands,23.7,78.3
			.' Interact with gameobject: Torn Scroll
			..accept Hameya's Plea##6024
		step
			goto Eastern Plaguelands,4.7,38.4
			.talk Tirion Fordring##1855
			..turnin Of Forgotten Memories##5781
			..accept Of Lost Honor##5845
		step
			goto Western Plaguelands,49.2,78.6
			.talk Marlene Redpath##10927
			..turnin Auntie Marlene##5152
			..accept A Strange Historian##5153
		step
			goto Western Plaguelands,49.7,76.8
			.' Interact with gameobject: Joseph Redpath's Monument
			.info It's a squarish stone gravestone with a gold plaque on it. It's a lighter color than all the other graves.
			.collect Joseph's Wedding Ring##12894|q 5153/1
		step
			goto Western Plaguelands,39.5,66.8
			.talk Chromie##10667
			..turnin A Strange Historian##5153
			..accept The Annals of Darrowshire##5154
		step
			goto Western Plaguelands,43.5,69.4
			.collect Annals of Darrowshire##12900|q 5154/1
			.info In the building that isn's crumbled in the middle of the town - you can enter from the south side by hugging the wall of the building until you get inside safely.
		step
			goto Western Plaguelands,39.5,66.8
			.talk Chromie##10667
			..turnin The Annals of Darrowshire##5154
			..accept Brother Carlin##5210
		step
			goto Western Plaguelands,43.6,84.5
			.talk Flint Shadowmore##12425
			..turnin The Eastern Plagues##6185
			..accept The Blightcaller Cometh##6186
		step
			goto Western Plaguelands,43.4,84.8
			.talk Nathaniel Dumah##11616
			..accept A Plague Upon Thee (1)##5903
		step
			goto Stormwind City,61.2,70.7
			.talk Auctioneer Jaxon##15659
			.buy 30 Core of Elements##22527|q 9128 |future
			.buy 30 Dark Iron Scraps##22528|q 9131 |future
			.buy 30 Savage Frond##22529|q 9136 |future
		step
			goto Stormwind City,80,38.5
			.talk King Varian Wrynn##29611
			..turnin The Blightcaller Cometh##6186
			..accept Order Must Be Restored##6187
		step
			goto Eastern Plaguelands,23,68.2
			.kill Nathanos Blightcaller##11878|q 6187/1
		step
			goto Eastern Plaguelands,75.7,53.9
			.talk Duke Nicholas Zverenhoff##11039
			..turnin Duke Nicholas Zverenhoff##6030
		step
			goto Eastern Plaguelands,75.7,53.8
			.talk Carlin Redpath##11063
			..turnin Brother Carlin##5210
			..turnin Uncle Carlin##5241
			..accept Villains of Darrowshire##5181
			..accept Defenders of Darrowshire##5211
		step
			goto Eastern Plaguelands,75.5,53.4
			.talk Emissary Whitebeard##17069
			..accept Establishing New Outposts##9664
			.info This is a PvP quest.
		step
			goto Eastern Plaguelands,75.4,53.1
			.talk Rayne##16135
			..accept Savage Flora##9136
			.buy 30 Savage Frond##22529|q 9136/1
			..turnin Savage Flora##9136
		step
			goto Eastern Plaguelands,75.7,52.6
			.talk Rohan the Assassin##16131
			..accept Bonescythe Digs##9126
		step
			goto Eastern Plaguelands,75.7,52.7
			.talk Huntsman Leopold##16132
			..accept Cryptstalker Armor Doesn't Make Itself...##9124
		step
			goto Eastern Plaguelands,75.7,52.4
			.talk Archmage Angela Dosantos##16116
			..accept The Elemental Equation##9128
			.buy 30 Core of Elements##22527|q 9128/1
			..turnin The Elemental Equation##9128
		step
			goto Eastern Plaguelands,76,52.2
			.talk Korfax, Champion of the Light##16112
			..accept Binding the Dreadnaught##9131
			.buy 30 Dark Iron Scraps##22528|q 9131/1
			..turnin Binding the Dreadnaught##9131
		step
			goto Eastern Plaguelands,73.8,57.8
			.talk Caretaker Alen##11038
			..accept Zaeldarr the Outcast##6021
		step
			goto Eastern Plaguelands,46.5,44.4
			.collect Skull of Horgus##12956|q 5181/1
			.info Underwater.
		step
			goto Eastern Plaguelands,49.2,59.6
			.collect Shattered Sword of Marduk##12957|q 5181/2
		step
			goto Eastern Plaguelands,75.7,53.8
			.talk Carlin Redpath##11063
			..turnin Villains of Darrowshire##5181
			..accept Heroes of Darrowshire##5168
		step
			goto Eastern Plaguelands,62.2,42.5
			.goal Capture Eastwall Tower|q 9664/2
		step
			goto Eastern Plaguelands,66,29.1
			.collect Symbol of Lost Honor##14625|q 5845/1
			.info Underwater.
		step
			goto Eastern Plaguelands,61.97,35.85
			.from Diseased Flayer##8532
			.talk Darrowshire Spirit##11064
			.' Darrowshire Spirits Freed|q 5211/1
		step
			goto Eastern Plaguelands,65.3,12.3
			.from Infiltrator Hameya##12248
			.get Hameya's Key##15767|q 6024/1
		step
			goto Eastern Plaguelands,51.8,19.9
			.goal Capture Northpass Tower|q 9664/3
		step
			goto Eastern Plaguelands,38.6,29.3
			.collect 100 Plagueland Termites##15043|q 5903/1
			.' You can find more around (1)|at 39.4,19.7
			.' You can find more around (2)|at 31.6,19.3
			.' You can find more around (3)|at 32,26.9
			.' You can find more around (4)|at 28.2,30.8
			.' You can find more around (5)|at 19,17
		step
			goto Eastern Plaguelands,18.6,27.2
			.goal Capture Plaguewood Tower|q 9664/4
		step
			goto Eastern Plaguelands,34.9,28.6
			.from Scourge Soldier##8523, Cursed Mage##8524, Scourge Guard##8527
			.get 30 Bone Fragments##22526|q 9126/1
			.info Be careful! Do not sell items.
		step
			goto Eastern Plaguelands,11.3,28.6
			.talk Augustus the Touched##12384
			..accept Augustus' Receipt Book##6164
		step
			goto Eastern Plaguelands,14.2,26.3
			.collect Augustus' Receipt Book##15884|q 6164/1
			.info Inside the inn, 2-nd floor.
		step
			goto Eastern Plaguelands,11.3,28.6
			.talk Augustus the Touched##12384
			..turnin Augustus' Receipt Book##6164
		step
			goto Eastern Plaguelands,13.35,28
			.from Crypt Stalker##8555, Crypt Walker##8556, Crypt Horror##8557, Crypt Slayer##8558
			.get 30 Crypt Fiend Parts##22525|q 9124/1
			.' You can find around in cave|at 12.13,24.67
		step
			goto Eastern Plaguelands,12.2,24.6|n
			.' Move forward through the tunnel|goto Eastern Plaguelands,12.2,24.6,0.5|noway|q 5845
		step
			goto Eastern Plaguelands,9.28,29.07|n
			.' Continue moving through the tunnel|goto Eastern Plaguelands,9.28,29.07,0.5|noway|q 5845
		step
			goto Eastern Plaguelands,4.7,38.4
			.talk Tirion Fordring##1855
			..turnin Of Lost Honor##5845
			..accept Of Love and Family (1)##5846
		step
			goto Western Plaguelands,63.8,57.2
			.collect Redpath's Shield##12955|q 5168/2
		step
			goto Western Plaguelands,65.8,75.4
			.talk Artist Renfray##11936
			..turnin Of Love and Family (1)##5846
		step
			goto Western Plaguelands,43.4,84.8
			.talk Nathaniel Dumah##11616
			..turnin A Plague Upon Thee (1)##5903
			..accept A Plague Upon Thee (2)##5904
		step
			goto Western Plaguelands,48.36,32
			.' Interact with gameobject: Termite Barrel
			..turnin A Plague Upon Thee (2)##5904
			..accept A Plague Upon Thee (3)##6389
		step
			goto Western Plaguelands,42.5,19
			.collect Davil's Libram##12954|q 5168/1
		step
			goto Western Plaguelands,43.4,84.8
			.talk Nathaniel Dumah##11616
			..turnin A Plague Upon Thee (3)##6389
		step
			goto Eastern Plaguelands,23.8,77.9
			.from Zaeldarr the Outcast##12250
			.get Zaeldarr's Head##15785|q 6021/1
		step
			goto Eastern Plaguelands,24.4,79.2
			.' Interact with gameobject: Mound of Dirt
			.info Behind the crypt.
			..turnin Hameya's Plea##6024
		step
			goto Eastern Plaguelands,35.6,68.8
			.goal Capture Crown Guard Tower|q 9664/1
		step
			goto Eastern Plaguelands,73.8,57.8
			.talk Caretaker Alen##11038
			..turnin Zaeldarr the Outcast##6021
		step
			goto Eastern Plaguelands,75.7,53.8
			.talk Carlin Redpath##11063
			..turnin Heroes of Darrowshire##5168
			..turnin Defenders of Darrowshire##5211
			..accept Marauders of Darrowshire##5206
		step
			goto Eastern Plaguelands,75.5,53.4
			.talk Emissary Whitebeard##17069
			..turnin Establishing New Outposts##9664
		step
			goto Eastern Plaguelands,75.7,52.6
			.talk Rohan the Assassin##16131
			..turnin Bonescythe Digs##9126
		step
			goto Eastern Plaguelands,75.7,52.7
			.talk Huntsman Leopold##16132
			..turnin Cryptstalker Armor Doesn't Make Itself...##9124
		step
			goto Eastern Plaguelands,70.9,45.2
			.from Scourge Champion##8529
			.collect Fetid Skull##13157|n
			.use Mystic Crystal##13156
			.get 5 Resonating Skull##13155|q 5206/1
			.' You can find more Scourge Champion around|at 78.8,38.5
		step
			goto Eastern Plaguelands,75.7,53.8
			.talk Carlin Redpath##11063
			..turnin Marauders of Darrowshire##5206
			..accept Return to Chromie##5941
		step
			goto Western Plaguelands,39.5,66.8
			.talk Chromie##10667
			..turnin Return to Chromie##5941
			..accept The Battle of Darrowshire##5721
		step
			goto Eastern Plaguelands,35,84
			.use Relic Bundle##15209
			.kill Redpath the Corrupted##10938|at 34.42,82.2 |n
			.info Join the battle before he appears.
			.talk Joseph Redpath##10936
			.' Accept Redpath's Forgiveness|q 5721/1
		step
			goto Eastern Plaguelands,32.5,83.6
			.talk Pamela Redpath##10926
			..turnin The Battle of Darrowshire##5721
			..accept Hidden Treasures##5942
		step
			goto Eastern Plaguelands,32.2,83.4
			.' Interact with gameobject: Joseph's Chest
			.info Behind the house.
			..turnin Hidden Treasures##5942
		step
			goto Stormwind City,80,38.5
			.talk King Varian Wrynn##29611
			..turnin Order Must Be Restored##6187
		step
			.' Congratulations! +35 quests for achievement "Loremaster of Eastern Kingdoms".
]])

ZygorGuidesViewer.AllianceInstalled=true