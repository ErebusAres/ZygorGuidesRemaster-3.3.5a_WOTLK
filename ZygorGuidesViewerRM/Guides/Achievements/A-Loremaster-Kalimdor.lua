local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Kalimdor\\[10] Azuremyst Isle",[[
author danaton
description This guide contain quest-chain (55 quests) for Azuremyst Isle location.
startlevel 10
		step
			goto Azuremyst Isle,80.4,45.9
			.talk Proenitus##16477
			..accept Replenishing the Healing Crystals##9369
			only !Draenei
		step
			goto Azuremyst Isle,78.6,45.4
			.from Vale Moth##16520
			.get 8 Vial of Moth Blood##22889|q 9369/1
			only !Draenei
		step
			goto Azuremyst Isle,80.4,45.9
			.talk Proenitus##16477
			..turnin Replenishing the Healing Crystals##9369
			only !Draenei
		step
			goto Azuremyst Isle,80.4,45.9
			.talk Proenitus##16477
			..accept Urgent Delivery!##9409
		step
			goto Azuremyst Isle,80.1,48.8
			.talk Zalduun##16502
			..turnin Urgent Delivery!##9409
		step
			goto Azuremyst Isle,80.4,45.9
			.talk Proenitus##16477
			..accept Botanist Taerix##9371
		step
			goto Azuremyst Isle,79.1,46.5
			.talk Botanist Taerix##16514
			..turnin Botanist Taerix##9371
			..accept Volatile Mutations##10302
		step
			goto Azuremyst Isle,78.94,42.7
			.kill 8 Volatile Mutation##16516|q 10302/1
		step
			goto Azuremyst Isle,79.1,46.5
			.talk Botanist Taerix##16514
			..turnin Volatile Mutations##10302
			..accept What Must Be Done...##9293
		step
			goto Azuremyst Isle,79.1,46.6
			.talk Apprentice Vishael##20233
			..accept Botanical Legwork##9799
		step
			goto Azuremyst Isle,74.9,50.4
			.from Mutated Root Lasher##16517
			.get 10 Lasher Sample##22934|q 9293/1
		step
			goto Azuremyst Isle,74.9,50.4
			.collect 3 Corrupted Flower##24416|q 9799/1
			.info The Corrupted Flowers are tall red flowers around this area.
		step
			goto Azuremyst Isle,79.1,46.5
			.talk Botanist Taerix##16514
			..turnin What Must Be Done...##9293
			..accept Healing the Lake##9294
		step
			goto Azuremyst Isle,79.1,46.6
			.talk Apprentice Vishael##20233
			..turnin Botanical Legwork##9799
		step
			goto Azuremyst Isle,77.3,58.7
			.' Interact with gameobject: Irradiated Power Crystal
			.info It's a huge purple crystal sitting in the lake.
			.' Disperse the Neutralizing Agent|q 9294/1
		step
			goto Azuremyst Isle,79.1,46.5
			.talk Botanist Taerix##16514
			..turnin Healing the Lake##9294
			..accept Vindicator Aldar##10304
		step
			goto Azuremyst Isle,79.5,51.4
			.talk Technician Zhanaa##17071
			..accept Spare Parts##9305
		step
			goto Azuremyst Isle,79.5,51.6
			.talk Vindicator Aldar##16535
			..turnin Vindicator Aldar##10304
			..accept Inoculation##9303
		step
			goto Azuremyst Isle,84.7,65.6
			.' Go through the tunnel into the small clearing|at 82.93,61.52
			.collect 4 Emitter Spare Part##22978|q 9305/1
			.info They look like purple crystal guns sitting on the ground.
		step
			goto Azuremyst Isle,85.32,67.5
			.' Use your Inoculating Crystal on Nestlewood Owlkins|use Inoculating Crystal##22962
			.' Inoculate 6 Nestlewood Owlkins|q 9303/1
		step
			goto Azuremyst Isle,79.5,51.4
			.talk Vindicator Aldar##16535
			..turnin Inoculation##9303
			..accept The Missing Scout##9309
		step
			goto Azuremyst Isle,79.5,51.4
			.talk Technician Zhanaa##17071
			..turnin Spare Parts##9305
		step
			goto Azuremyst Isle,72,60.8
			.talk Tolaan##16546
			..turnin The Missing Scout##9309
			..accept The Blood Elves##10303
		step
			goto Azuremyst Isle,71,63
			.kill 10 Blood Elf Scout##16521|q 10303/1
		step
			goto Azuremyst Isle,72,60.8
			.talk Tolaan##16546
			..turnin The Blood Elves##10303
			..accept Blood Elf Spy##9311
		step
			goto Azuremyst Isle,69.3,65.7
			.kill Surveyor Candress##16522|q 9311/1
			.collect Blood Elf Plans##24414|q 9798 |future
		step
			.use Blood Elf Plans##24414
			..accept Blood Elf Plans##9798
		step
			goto Azuremyst Isle,79.5,51.4
			.talk Vindicator Aldar##16535
			..turnin Blood Elf Spy##9311
			..turnin Blood Elf Plans##9798
			..accept The Emitter##9312
		step
			goto Azuremyst Isle,79.5,51.4
			.talk Technician Zhanaa##17071
			..turnin The Emitter##9312
			..accept Travel to Azure Watch##9313
		step
			goto Azuremyst Isle,64.5,54
			.talk Aeun##16554
			..accept Word from Azure Watch##9314
		step
			goto Azuremyst Isle,61.1,54.2
			.talk Diktynna##17101
			..accept Red Snapper - Very Tasty!##9452
		step
			goto Azuremyst Isle,61.9,51.6
			.' Use your Draenei Fishing Net next to the Schools of Red Snapper|use Draenei Fishing Net##23654
			.info They look like little round schools of fish in the water.
			.collect 10 Red Snapper##23614|q 9452/1
		step
			goto Azuremyst Isle,61.1,54.2
			.talk Diktynna##17101
			..turnin Red Snapper - Very Tasty!##9452
			..accept Find Acteon!##9453
		step
			goto Azuremyst Isle,49.8,51.9
			.talk Acteon##17110
			..turnin Find Acteon!##9453
			..accept The Great Moongraze Hunt (1)##9454
		step
			goto Azuremyst Isle,48.7,50.3
			.talk Technician Dyvuun##16551
			..turnin Travel to Azure Watch##9313
		step
			goto Azuremyst Isle,48.3,49.2
			.talk Caregiver Chellan##16553
			..turnin Word from Azure Watch##9314
		step
			goto Azuremyst Isle,52.9,61.44
			.kill Blood Elf Bandit##17591|n
			.collect Blood Elf Communication##23910|q 9616 |future
		step
			.use Blood Elf Communication##23910
			..accept Bandits!##9616
		step
			goto Azuremyst Isle,50.3,56.6
			.from Moongraze Stag##17200
			.get 6 Moongraze Stag Tenderloin##23676|q 9454/1
			.' You can find more Stags|at 56.32,63.79
		step
			goto Azuremyst Isle,47,70.2
			.talk Admiral Odesyus##17240
			..accept A Small Start##9506
		step
			goto Azuremyst Isle,46.7,70.5
			.talk "Cookie" McWeaksauce##17246
			..accept Cookie's Jumbo Gumbo##9512
		step
			goto Azuremyst Isle,47.6,73
			.from Skittering Crawler##17216
			.get 6 Skittering Crawler Meat##23757|q 9512/1
		step
			goto Azuremyst Isle,46.7,70.5
			.talk "Cookie" McWeaksauce##17246
			..turnin Cookie's Jumbo Gumbo##9512
		step
			goto Azuremyst Isle,49.8,51.9
			.talk Acteon##17110
			..turnin The Great Moongraze Hunt (1)##9454
			..accept The Great Moongraze Hunt (2)##10324
		step
			goto Azuremyst Isle,49.40,51.0
			.talk Cryptographer Aurren##17232
			..accept Learning the Language##9538
		step
			.use Stillpine Furbolg Language Primer##23818
			.' Stillpine Furbolg Language Primer Read|q 9538/1
		step
			goto Azuremyst Isle,49.4,51
			.talk Totem of Akida##17360
			..turnin Learning the Language##9538
			..accept Totem of Coo##9539
		step
			goto Azuremyst Isle,47.1,50.6
			.talk Exarch Menelaous##17116
			..turnin Bandits!##9616
		step
			goto Azuremyst Isle,50,44.2
			.kill Infected Nightstalker Runt##17202|n
			.collect Faintly Glowing Crystal##23678|q 9455 |future
		step
			.use Faintly Glowing Crystal##23678
			..accept Strange Findings##9455
		step
			goto Azuremyst Isle,55.2,41.6
			.talk Totem of Coo##17361
			..turnin Totem of Coo##9539
			..accept Totem of Tikti##9540
		step
			goto Azuremyst Isle,64.5,39.8
			.talk Totem of Tikti##17362
			..turnin Totem of Tikti##9540
			..accept Totem of Yor##9541
		step
			goto Azuremyst Isle,63,67.9
			.talk Totem of Yor##17363
			..turnin Totem of Yor##9541
			..accept Totem of Vark##9542
		step
			goto Azuremyst Isle,59.6,67.6
			.collect Nautical Compass##23738|q 9506/1
			.info Collect the Nautical Compass under the blue canopy with a green stripe on it.
		step
			goto Azuremyst Isle,58.6,66.4
			.collect Nautical Map##23739|q 9506/2
			.info Collect the Nautical Map sitting on a box under a green canopy.
		step
			goto Azuremyst Isle,47,70.2
			.talk Admiral Odesyus##17240
			..turnin A Small Start##9506
			..accept I've Got a Plant##9530
		step
			goto Azuremyst Isle,47,70.2
			.talk Priestess Kyleen Il'dinare##17241
			..accept Reclaiming the Ruins##9513
		step
			goto Azuremyst Isle,47.2,70
			.talk Archaeologist Adamant Ironheart##17242
			..accept Precious and Fragile Things Need Special Handling##9523
		step
			goto Azuremyst Isle,46.53,65.99
			.collect Hollowed Out Tree##23790|q 9530/1
			.info They look like tall, skinny tree stumps around this area.
		step
			goto Azuremyst Isle,49,51.1
			.talk Dulvi##17488
			..accept The Missing Fisherman##10428
		step
			goto Azuremyst Isle,47.1,50.6
			.talk Exarch Menelaous##17116
			..turnin Strange Findings##9455
			..accept Nightstalker Clean Up, Isle 2...##9456
		step
			goto Azuremyst Isle,50.6,46.2
			.from Moongraze Buck##17201
			.get 6 Moongraze Buck Hide##23677|q 10324/1
			.' You can find more around|at 52.72,42.38
			.' You can find more around|at 55.05,29.83
		step
			goto Azuremyst Isle,44.15,40.15
			.kill 8 Infected Nightstalker Run##17202t|q 9456/1
		step
			goto Azuremyst Isle,49.8,51.9
			.talk Acteon##17110
			..turnin The Great Moongraze Hunt (2)##10324
		step
			goto Azuremyst Isle,47.1,50.6
			.talk Exarch Menelaous##17116
			..turnin Nightstalker Clean Up, Isle 2...##9456
		step
			goto Azuremyst Isle,41.15,66.45
			.collect 5 Pile of Leaves##23791|q 9530/2
			.info Collect the small piles of purple leaves.
		step
			goto Azuremyst Isle,47,70.2
			.talk Admiral Odesyus##17240
			..turnin I've Got a Plant##9530
			..accept Tree's Company##9531
		step
			goto Azuremyst Isle,28.1,62.4
			.talk Totem of Vark##17364
			..turnin Totem of Vark##9542
			..accept The Prophecy of Akida##9544
		step
			goto Azuremyst Isle,28.5,66.4
			.from Bristlelimb Ursa##17185, Bristlelimb Windcaller##17184, Bristlelimb Furbolg##17183
			.collect Bristlelimb Key##23801|n
			.' Interact with gameobject: Bristlelimb Cage
			.' Free 8 Stillpine Captives|goal 8 Stillpine Captive Freed|q 9544/1
		step
			goto Azuremyst Isle,18.5,84.3
			.' Use your Tree Disguise Kit next to the Naga Flag on the beach|use Tree Disguise Kit##23792
			.' Watch the conversation
			.' Uncover the Traitor|q 9531/1		
		step
			goto Azuremyst Isle,13.6,73.2
			.talk Magwin##17312
			..accept A Cry For Help##9528
		step
			goto Azuremyst Isle,16.6,94.5
			.' Escort Magwin through the island to her home|q 9528/1
		step
			goto Azuremyst Isle,16.6,94.5
			.talk Cowlen##17311
			..turnin A Cry For Help##9528
			..turnin The Missing Fisherman##10428
			..accept All That Remains##9527
		step
			goto Azuremyst Isle,14.8,92
			.from Raving Owlbeast##17188, Aberrant Owlbeast##17187, Deranged Owlbeast##17186
			.get Remains of Cowlen's Family##23789|q 9527/1
		step
			goto Azuremyst Isle,16.6,94.5
			.talk Cowlen##17311
			..turnin All That Remains##9527
		step
			goto Azuremyst Isle,36.1,77
			.collect 8 Ancient Relic##23779|q 9523/1
			.info Collect the white glowing orbs.
		step
			goto Azuremyst Isle,36.1,77
			.kill 5 Wrathscale Myrmidon##17194|q 9513/1
			.kill 5 Wrathscale Naga##17193|q 9513/2
			.kill 5 Wrathscale Siren##17195|q 9513/3
		step
			goto Azuremyst Isle,36.1,77
			.from Wrathscale Naga##17193, Wrathscale Myrmidon##17194, Wrathscale Siren##17195
			.collect Rune Covered Tablet##23759|q 9514 |future
		step
			.use Rune Covered Tablet##23759
			..accept Rune Covered Tablet##9514
		step
			goto Azuremyst Isle,47,70.2
			.talk Admiral Odesyus##17240
			..turnin Tree's Company##9531
			..accept Show Gnomercy##9537
		step
			goto Azuremyst Isle,47,70.2
			.talk Priestess Kyleen Il'dinare##17241
			..turnin Reclaiming the Ruins##9513
			..turnin Rune Covered Tablet##9514
			..accept Warlord Sriss'tiz##9515
		step
			goto Azuremyst Isle,47.2,70
			.talk Archaeologist Adamant Ironheart##17242
			..turnin Precious and Fragile Things Need Special Handling##9523
		step
			goto Azuremyst Isle,48.2,72.5
			.from Engineer "Spark" Overgrind##17243
			.get Traitor's Communication##23899|q 9537/1
		step
			goto Azuremyst Isle,47,70.2
			.talk Admiral Odesyus##17240
			..turnin Show Gnomercy##9537
			..accept Deliver Them From Evil...##9602
		step
			.' Follow the path to the bottom of the cave|goto 27.12,76.91,0.3|q 9515
		step
			goto Azuremyst Isle,25.2,74.2
			.kill Warlord Sriss'tiz##17298|q 9515/1
		step
			goto Azuremyst Isle,47,70.2
			.talk Priestess Kyleen Il'dinare##17241
			..turnin Warlord Sriss'tiz##9515
		step
			goto Azuremyst Isle,49.41,51.0
			.talk Arugoo the Stillpine##17114
			..turnin The Prophecy of Akida##9544
			..accept Stillpine Hold##9559
		step
			goto Azuremyst Isle,47.1,50.6
			.talk Exarch Menelaous##17116
			..turnin Deliver Them From Evil...##9602
		step
			goto Azuremyst Isle,46.7,20.6
			.talk High Chief Stillpine##17440
			..turnin Stillpine Hold##9559
			..accept Search Stillpine Hold##9565
		step
			goto Azuremyst Isle,44.8,23.9
			.talk Moordo##17442
			..accept Beasts of the Apocalypse!##9560
		step
			goto Azuremyst Isle,44.7,23.6
			.talk Gurf##17441
			..accept Murlocs... Why Here? Why Now?##9562
		step
			goto Azuremyst Isle,55.3,19.18
			.from Ravager Specimen##17199
			.get 8 Ravager Hide##23845|q 9560/1
		step
			goto Azuremyst Isle,44.8,23.9
			.talk Moordo##17442
			..turnin Beasts of the Apocalypse!##9560
		step
			goto Azuremyst Isle,33.8,25.7
			.collect 5 Stillpine Grain##23849|q 9562/1
		step
			goto Azuremyst Isle,35,22
			.from Murgurgala##17475
			.collect Gurf's Dignity##23850|q 9564 |future
		step
			.use Gurf's Dignity##23850
			..accept Gurf's Dignity##9564
		step
			goto Azuremyst Isle,44.7,23.6
			.talk Gurf##17441
			..turnin Murlocs... Why Here? Why Now?##9562
			..turnin Gurf's Dignity##9564
		step
			goto Azuremyst Isle,46.9,21.2
			.talk Stillpine the Younger##17445
			..accept Chieftain Oomooroo##9573
		step
			.' Go inside the big cave|goto 45.3,19.5,0.3|q 9565
		step
			.' Go to lower tunnel|goto 46.7,15.56,0.3|q 9565
		step
			goto Azuremyst Isle,50.5,11.5
			.' Interact with gameobject: Blood Crystal
			.info It's a huge red crystal on a little dirt island in the water.
			..turnin Search Stillpine Hold##9565
			..accept Blood Crystals##9566
		step
			goto Azuremyst Isle,47.4,16.0
			.kill 9 Crazed Wildkin##17189|q 9573/2
		step
			goto Azuremyst Isle,47.4,14.1
			.kill Chieftain Oomooroo##17448|q 9573/1
		step
			goto Azuremyst Isle,46.7,20.6
			.talk High Chief Stillpine##17440
			..turnin Blood Crystals##9566
		step
			goto Azuremyst Isle,46.9,21.2
			.talk Stillpine the Younger##17445
			..turnin Chieftain Oomooroo##9573
		step
			goto Azuremyst Isle,47,22.3
			.talk Kurz the Revelator##17443
			..accept The Kurken is Lurkin'##9570
		step
			goto Azuremyst Isle,49.9,13.0
			.from The Kurken##17447
			.info Go inside the big cave.
			.get The Kurken's Hide##23860|q 9570/1
		step
			goto Azuremyst Isle,47.0,22.3
			.talk Kurz the Revelator##17443
			..turnin The Kurken is Lurkin'##9570
			..accept The Kurken's Hide##9571
		step
			goto Azuremyst Isle,44.8,23.9
			.talk Moordo##17442
			..turnin The Kurken's Hide##9571
		step
			goto Azuremyst Isle,46.7,20.6
			.talk High Chief Stillpine##17440
			..accept Warn Your People##9622
		step
			goto Azuremyst Isle,47.1,50.6
			.talk Exarch Menelaous##17116
			..turnin Warn Your People##9622
			..accept Coming of Age##9623
		step
			goto The Exodar,81.5,51.4
			.talk Torallius the Pack Handler##17584
			..turnin Coming of Age##9623
			..accept Elekks Are Serious Business##9625
		step
			goto Bloodmyst Isle,63,87.9
			.talk Vorkhan the Elekk Herder##17586
			..turnin Elekks Are Serious Business##9625
		step
			.' Congratulations! +55 quests for achievement "Loremaster of Kalimdor".
			.' Recomended next to use guide "Bloodmyst Isle".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Kalimdor\\[20] Bloodmyst Isle",[[
author danaton
description This guide contain quest-chain (63 quests) for Bloodmyst Isle location.
startlevel 20
		step
			goto The Exodar,81.51,51.46
			.talk Torallius the Pack Handler##17584
			..accept Elekks Are Serious Business##9625
		step
			goto Bloodmyst Isle,63.04,87.91
			.talk Vorkhan the Elekk Herder##17586
			..turnin Elekks Are Serious Business##9625
			..accept Alien Predators##9634
		step
			goto Bloodmyst Isle,63.00,87.55
			.talk Kessel##17649
			..accept The Kessel Run##9663
		step
			goto Azuremyst Isle,46.68,20.62
			.talk High Chief Stillpine##17440
			.' Warn High Chief Stillpine|q 9663/1
		step
			goto Azuremyst Isle,47.11,50.60
			.talk Exarch Menelaous##17116
			.' Warn Exarch Menelaous|q 9663/2
		step
			goto Azuremyst Isle,47.04,70.21
			.talk Admiral Odesyus##17240
			.' Warn Admiral Odesyus|q 9663/3
		step
			goto Bloodmyst Isle,63.00,87.54
			.talk Kessel##17649
			..turnin The Kessel Run##9663
			..accept Declaration of Power##9666
		step
			goto Bloodmyst Isle,63.43,88.78
			.talk Aonar##17599
			..accept A Favorite Treat##9624
		step
			goto Bloodmyst Isle,59.39,89.75
			.kill 10 Bloodmyst Hatchling##17525|q 9634/1
		step
			goto Bloodmyst Isle,59.39,89.75
			.collect 10 Sand Pear##23927|q 9624/1
			.info They look like small light brown pears on the ground near trees around this area.
			.' You can find more Sand Pear|at 67.2,86.3
		step
			goto Bloodmyst Isle,63.04,87.90
			.talk Vorkhan the Elekk Herder##17586
			..turnin Alien Predators##9634
		step
			goto Bloodmyst Isle,63.43,88.78
			.talk Aonar##17599
			..turnin A Favorite Treat##9624
		step
			goto Bloodmyst Isle,68.26,81.09
			.talk Princess Stillpine##17682
			..accept Saving Princess Stillpine##9667
		step
			goto Bloodmyst Isle,64.21,76.71
			.from Bristlelimb Shaman##17320, Bristlelimb Warrior##17321
			.info Eventually, High Chief Bristelimb will yell in the chat box and spawn at this location.
			.from High Chief Bristlelimb##17702
			.info He walks around this small area after he spawns.
			.collect The High Chief's Key##24099|q 9667 
		step
			goto Bloodmyst Isle,68.86,68.25
			.kill Lord Xiz##17701|q 9666/2
			.info He walks back and forth around this small area.
		step
			goto Bloodmyst Isle,68.86,68.25
			.' Use the Draenei Banner on Lord Xiz's corpse|use Draenei Banner##24084
			.info His corpse will be at the location you killed him.
			.' Declare Your Power|q 9666/1
		step
			goto Bloodmyst Isle,68.26,80.89
			.' Interact with gameobject: Princess Stillpine's Cage
			.' Save Princess Stillpine|q 9667/1
		step
			goto Bloodmyst Isle,63.00,87.54
			.talk Kessel##17649
			..turnin Declaration of Power##9666
			..accept Report to Exarch Admetius##9668
		step
			goto Bloodmyst Isle,55.23,59.11
			.' Interact with gameobject: Wanted Poster
			..accept WANTED: Deathclaw##9646
		step
			goto Bloodmyst Isle,53.25,57.75
			.talk Morae##17434
			..accept Catch and Release##9629
		step
			goto Bloodmyst Isle,55.15,55.95
			.talk Stillpine Ambassador Frasaboo##18803
			..turnin Saving Princess Stillpine##9667
		step
			goto Bloodmyst Isle,56.43,56.82
			.talk Jessera of Mac'Aree##17663
			..accept Mac'Aree Mushroom Menagerie##9648
		step
			goto Bloodmyst Isle,52.7,53.2
			.talk Exarch Admetius##17658
			..turnin Report to Exarch Admetius##9668
			..accept What Argus Means to Me##9693
		step
			goto Bloodmyst Isle,52.6,53.2
			.talk Harbinger Mikolaas##17423
			..accept Learning from the Crystals##9581
		step
			goto Bloodmyst Isle,55.43,55.27
			.talk Vindicator Boros##17684
			..turnin What Argus Means to Me##9693
			..accept Blood Watch##9694
		step
			goto Bloodmyst Isle,60.7,42.0
			.collect Ruinous Polyspore##24042|q 9648/3
			.info They look like brown mushrooms on the ground around this area.
		step
			goto Bloodmyst Isle,62.3,53.0
			.collect Blood Mushroom##24040|q 9648/2
			.info They look like orange glowing mushrooms on the ground around this area.
		step
			goto Bloodmyst Isle,61.35,67.99
			.collect Aquatic Stinkhorn##24041|q 9648/1
			.info They look like big mushrooms with spikes on them underwater in the red water around this area.
		step
			goto Bloodmyst Isle,58.20,83.35
			.' Use the Crystal Mining Pick on Impact Site Crystal|use Crystal Mining Pick##23875
			.collect Impact Site Crystal Sample##23878|q 9581/1
		step
			goto Bloodmyst Isle,47.8,94.4
			.kill Cruelfin##17496|n
			.info He looks like an orange murloc that walks along the beach around this area.
			.collect Red Crystal Pendant##23870|q 9576 |future
		step
			.use Red Crystal Pendant##23870
			..accept Cruelfin's Necklace##9576
		step
			goto Bloodmyst Isle,47.8,94.4
			.' Use the Murloc Tagger on Blacksilt Scouts|use Murloc Tagger##23995
			.info They look like purple murlocs around this area.
			.' Tag 6 Blacksilt Scouts|q 9629/1
		step
			goto Bloodmyst Isle,44.4,82.4
			.collect Fel Cone Fungus##24043|q 9648/4
			.info They look like big brown mushrooms on the ground around this area.
		step
			goto Bloodmyst Isle,56.4,56.8
			.talk Jessera of Mac'Aree##17663
			..turnin Mac'Aree Mushroom Menagerie##9648
		step
			goto Bloodmyst Isle,53.24,57.74
			.talk Morae##17434
			..turnin Catch and Release##9629
			..accept Victims of Corruption##9574
			..turnin Cruelfin's Necklace##9576
		step
			goto Bloodmyst Isle,55.1,58.0
			.talk Vindicator Aalesia##17433
			..accept Know Thine Enemy##9567
		step
			goto Bloodmyst Isle,55.43,55.27
			.talk Vindicator Boros##17684
			..accept Irradiated Crystal Shards##9641
		step
			goto Bloodmyst Isle,56.33,54.23
			.talk Prospector Nachlan##18804
			..accept Explorers' League, Is That Something for Gnomes?##10063
		step
			goto Bloodmyst Isle,52.6,53.2
			.talk Harbinger Mikolaas##17423
			..turnin Learning from the Crystals##9581
			..accept The Missing Survey Team##9620
		step
			goto Bloodmyst Isle,49.5,47.4
			.kill 10 Sunhawk Spy##17604|q 9694/1
		step
			goto Bloodmyst Isle,55.43,55.25
			.talk Vindicator Boros##17684
			..turnin Blood Watch##9694
		step
			goto Bloodmyst Isle,61.25,48.38
			.talk Draenei Cartographer##17600
			..turnin The Missing Survey Team##9620
			..accept Salvaging the Data##9628
		step
			goto Bloodmyst Isle,62.62,47.94
			.from Wrathscale Marauder##17334, Wrathscale Sorceress##17336
			.info They are all around this whole area.
			.info It will likely take a while before this item drops.
			.get Survey Data Crystal##23932|q 9628/1
		step
			goto Bloodmyst Isle,62.62,47.94
			.from Wrathscale Marauder##17334, Wrathscale Sorceress##17336
			.info They are all around this whole area.
			.get 10 Irradiated Crystal Shard##23984|q 9641/1
		step
			goto Bloodmyst Isle,52.6,53.2
			.talk Harbinger Mikolaas##17423
			..turnin Salvaging the Data##9628
			..accept The Second Sample##9584
		step
			goto Bloodmyst Isle,55.42,55.27
			.talk Vindicator Boros##17684
			..turnin Irradiated Crystal Shards##9641
		step
			goto Bloodmyst Isle,50.9,74
			.from Corrupted Treant##17352
			.get 6 Crystallized Bark##23869|q 9574/1
		step
			goto Bloodmyst Isle,36.50,71.36
			.collect Nazzivus Monument Glyph##23859|q 9567/1
		step
			goto Bloodmyst Isle,36.64,73.50
			.kill Tzerak##17528|n
			.info He looks like a felguard that walks around the whole Nazzivian area.
			.collect Tzerak's Armor Plate##23900|q 9594 |future
		step
			.use Tzerak's Armor Plate##23900
			..accept Signs of the Legion##9594
		step
			goto Bloodmyst Isle,37.7,76.7
			.kill 8 Nazzivus Satyr##17337|q 9594/1
			.kill 8 Nazzivus Felsworn##17339|q 9594/2
		step
			goto Bloodmyst Isle,55.09,57.99
			.talk Vindicator Aalesia##17433
			..turnin Know Thine Enemy##9567
			.info Watch the dialogue.
			..turnin Signs of the Legion##9594
			..accept Containing the Threat##9569
		step
			goto Bloodmyst Isle,53.24,57.74
			.talk Morae##17434
			..turnin Victims of Corruption##9574
		step
			goto Bloodmyst Isle,55.86,57.00
			.talk Tracker Lyceon##17642
			..accept The Bear Necessities##9580
			..accept Constrictor Vines##9643
		step
			goto Bloodmyst Isle,55.43,55.27
			.talk Vindicator Boros##17684
			..accept Intercepting the Message##9779
		step
			goto Bloodmyst Isle,45.67,47.74
			.' Use the Crystal Mining Pick|use Crystal Mining Pick##23876
			.collect Altered Crystal Sample##23879|q 9584/1
		step
			goto Bloodmyst Isle,45.67,47.74
			.from Sunhawk Spy##17604
			.get Sunhawk Missive##24399|q 9779/1 
		step
			goto Bloodmyst Isle,52.59,53.21
			.talk Harbinger Mikolaas##17423
			..turnin The Second Sample##9584
			..accept The Final Sample##9585
		step
			goto Bloodmyst Isle,41.11,49.92
			.from Elder Brown Bear##17348
			.get 8 Elder Brown Bear Flank##24026|q 9580/1
		step
			goto Bloodmyst Isle,41.11,49.92
			.from Mutated Constrictor##17344
			.get 6 Thorny Constrictor Vine##23994|q 9643/1
		step
			goto Bloodmyst Isle,41.91,29.53
			.kill Zevrax##17494|q 9569/1
		step
			goto Bloodmyst Isle,41.31,30.69
			.' Use the Crystal Mining Pick|use Crystal Mining Pick##23877
			.info It looks like a huge red crystal in the ground.
			.collect Axxarien Crystal Sample##23880|q 9585/1
		step
			goto Bloodmyst Isle,41.46,33.50
			.kill 5 Axxarien Shadowstalker##17340|q 9569/2
			.kill 5 Axxarien Hellcaller##17342|q 9569/3
		step
			goto Bloodmyst Isle,41.46,33.50
			.collect 5 Corrupted Crystal##23863|q 9569/4
			.info They look like big red crystals on the ground around this area.
		step
			goto Bloodmyst Isle,37.1,30.3
			.from Deathclaw##17661
			.info It looks like a brown bear that walks around this small area.
			.get Deathclaw's Paw##24025|q 9646/1
		step
			goto Bloodmyst Isle,42.15,21.23
			.talk Clopper Wizbang##17421
			..turnin Explorers' League, Is That Something for Gnomes?##10063
			..accept Pilfered Equipment##9548
			..accept Artifacts of the Blacksilt##9549
		step
			goto Bloodmyst Isle,40.4,20.1
			.collect Clopper's Equipment##23830|q 9548/1 
			.info It looks like a wooden crate on the ground next to a murloc hut.
			.info It can spawn in any of the little murloc camps along the beach around this area.
		step
			goto Bloodmyst Isle,38.7,21.2
			.from Blacksilt Seer##17330
			.get 3 Crude Murloc Idol##23834|q 9549/1
			.from Blacksilt Shorestriker##17328
			.get 6 Crude Murloc Knife##23833|q 9549/2
		step
			goto Bloodmyst Isle,42.15,21.23
			.talk Clopper Wizbang##17421
			..turnin Pilfered Equipment##9548
			..turnin Artifacts of the Blacksilt##9549
		step
			.use Weathered Treasure Map##23837
			..accept A Map to Where?##9550
		step
			goto Bloodmyst Isle,55.09,57.99
			.talk Vindicator Aalesia##17433
			..turnin Containing the Threat##9569
		step
			goto Bloodmyst Isle,55.86,57.00
			.talk Tracker Lyceon##17642
			..turnin The Bear Necessities##9580
			..turnin Constrictor Vines##9643
			..accept Culling the Flutterers##9647
		step
			goto Bloodmyst Isle,55.43,55.27
			.talk Vindicator Boros##17684
			..turnin Intercepting the Message##9779
			..accept Translations...##9696
		step
			goto Bloodmyst Isle,54.66,53.96
			.talk Anchorite Paetheus##17424
			..accept Newfound Allies##9632
		step
			goto Bloodmyst Isle,54.43,54.45
			.talk Interrogator Elysis##17825
			..turnin Translations...##9696
			..accept Audience with the Prophet##9698
		step
			goto Bloodmyst Isle,54.33,55.60
			.talk Messenger Hermesius##17703
			..accept Urgent Delivery##9671
		step
			goto Bloodmyst Isle,52.59,53.21
			.talk Harbinger Mikolaas##17423
			..turnin WANTED: Deathclaw##9646
			..turnin The Final Sample##9585
			..accept Talk to the Hand##10064
		step
			goto The Exodar,32.9,54.4
			.talk Prophet Velen##17468
			..turnin Audience with the Prophet##9698
			..accept Truth or Fiction##9699
		step
			goto Azuremyst Isle,47,70.2
			.talk Admiral Odesyus##17240
			..accept The Bloodcurse Legacy##9751|or
			.info You can also pick up a letter from the mailbox (if the letter arrived), this is a different start of the same quest.
			.collect A Letter from the Admiral##24132|n
			..accept The Bloodcurse Legacy##9672|use A Letter from the Admiral##24132 |or
		step
			goto Bloodmyst Isle,55.43,55.27
			.talk Vindicator Boros##17684
			..turnin Truth or Fiction##9699
			..accept I Shoot Magic Into the Darkness##9700
		step
			goto Bloodmyst Isle,48.06,34.68
			.kill 10 Royal Blue Flutterer##17350|q 9647/1
			.' You can find more around|at 34.8,44
		step
			goto Bloodmyst Isle,52.5,22.3
			.' Confirm the Sun Portal Site|q 9700/1
		step
			goto Bloodmyst Isle,52.5,22.3
			.kill 5 Void Anomaly##17550|q 9700/2
		step
			goto Bloodmyst Isle,55.85,57.00
			.talk Tracker Lyceon##17642
			..turnin Culling the Flutterers##9647
		step
			goto Bloodmyst Isle,56.43,56.82
			.talk Jessera of Mac'Aree##17663
			..accept Ysera's Tears##9649
		step
			goto Bloodmyst Isle,55.43,55.28
			.talk Vindicator Boros##17684
			..turnin I Shoot Magic Into the Darkness##9700
		step
			goto Bloodmyst Isle,61.16,41.89
			.' Interact with gameobject: Battered Ancient Book
			..turnin A Map to Where?##9550
			..accept Deciphering the Book##9557
		step
			goto Bloodmyst Isle,54.67,53.94
			.talk Anchorite Paetheus##17424
			..turnin Deciphering the Book##9557
		step
			goto Bloodmyst Isle,54.67,53.94
			.talk Anchorite Paetheus##17424
			.' Watch the dialogue.
			..accept Nolkai's Words##9561
		step
			goto Bloodmyst Isle,53.25,57.03
			.talk Achelus##17676
			..accept The Missing Expedition##9669
		step
			goto Bloodmyst Isle,53.24,57.74
			.talk Morae##17434
			..accept Searching for Galaen##9578
		step
			goto Bloodmyst Isle,61.18,49.64
			.' Interact with gameobject: Mound of Dirt
			..turnin Nolkai's Words##9561
		step
			goto Bloodmyst Isle,75.1,34.4
			.talk Prince Toreth##17674
			..accept Restoring Sanctity##9687
		step
			goto Bloodmyst Isle,59.9,35.7
			.collect 8 Dragon Bone##24185|q 9687/1
			.info They look like orange and white spiked bones planted in the ground around this area.
			.info You can find more the west.
		step
			goto Bloodmyst Isle,75.1,34.4
			.talk Prince Toreth##17674
			..turnin Restoring Sanctity##9687
			..accept Into the Dream##9688
		step
			goto Bloodmyst Isle,71.39,28.34
			.collect 2 Ysera's Tear##24049|q 9649/1
			.info They look like a green mushrooms on the ground around this area.
			.info You can usually find 2 without going up the mountain.
			.info If you can't, though, you can find more by following the path up the mountain nearby.
		step
			goto Bloodmyst Isle,75.4,29.6
			.kill 5 Veridian Whelp##17588|q 9688/1
			.kill 5 Veridian Broodling##17589|q 9688/2
		step
			goto Bloodmyst Isle,75.1,34.4
			.talk Prince Toreth##17674
			..turnin Into the Dream##9688
			..accept Razormaw##9689
		step
			goto Bloodmyst Isle,72.67,20.78
			.' Interact with gameobject: Ever-burning Pyre
			.info Keepclicking it until Razormaw flies down to fight you.
			.kill Razormaw##17592|q 9689/1
		step
			goto Bloodmyst Isle,75.1,34.4
			.talk Prince Toreth##17674
			..turnin Razormaw##9689
		step
			goto Bloodmyst Isle,79.15,22.65
			.talk Captain Edward Hanes##17712
			..turnin The Bloodcurse Legacy##9751 |or
			..turnin The Bloodcurse Legacy##9672 |or
			..accept The Bloodcursed Naga##9674
		step
			goto Bloodmyst Isle,81.21,21.85
			.kill 10 Bloodcursed Naga##17713|q 9674/1
			.info Underwater around this area.
		step
			goto Bloodmyst Isle,79.15,22.65
			.talk Captain Edward Hanes##17712
			..turnin The Bloodcursed Naga##9674
			..accept The Hopeless Ones...##9682
		step
			goto Bloodmyst Isle,85.7,14.3
			.from Bloodcursed Voyager##17714
			.info Underwater around this area.
			.get 4 Bloodcursed Soul##24153|q 9682/1
		step
			goto Bloodmyst Isle,79.15,22.65
			.talk Captain Edward Hanes##17712
			..turnin The Hopeless Ones...##9682
			..accept Ending the Bloodcurse##9683
		step
			goto Bloodmyst Isle,85.94,54.32
			.' Interact with gameobject: Statue of Queen Azshara
			.kill Atoph the Bloodcursed##17715|q 9683/1
		step
			goto Bloodmyst Isle,79.15,22.65
			.talk Captain Edward Hanes##17712
			..turnin Ending the Bloodcurse##9683
		step
			goto Bloodmyst Isle,56.43,56.82
			.talk Jessera of Mac'Aree##17663
			..turnin Ysera's Tears##9649
		step
			goto Bloodmyst Isle,55.63,55.23
			.talk Vindicator Kuros##17843
			..accept The Cryo-Core##9703
		step
			goto Bloodmyst Isle,37.5,61.2
			.talk Galaen's Corpse##17508
			..turnin Searching for Galaen##9578
			..accept Galaen's Fate##9579
		step
			goto Bloodmyst Isle,37.56,61.24
			.' Interact with gameobject: Galaen's Journal
			.info Inside the building.
			..accept Galaen's Journal - The Fate of Vindicator Saruan##9706
		step
			goto Bloodmyst Isle,39.6,58.9
			.from Sunhawk Reclaimer##17606
			.get Galaen's Amulet##23873|q 9579/1
		step
			goto Bloodmyst Isle,39.6,58.9
			.collect 12 Medical Supplies##24236|q 9703/1
			.info They look like silver metal boxes on the ground around this area.
		step
			goto Bloodmyst Isle,53.24,57.74
			.talk Morae##17434
			..turnin Galaen's Fate##9579
		step
			goto Bloodmyst Isle,55.63,55.23
			.talk Vindicator Kuros##17843
			..turnin The Cryo-Core##9703
			..turnin Galaen's Journal - The Fate of Vindicator Saruan##9706
			..accept Matis the Cruel##9711
		step
			goto Bloodmyst Isle,55.56,55.40
			.talk Vindicator Aesom##17844
			..accept Don't Drink the Water##9748
		step
			goto Bloodmyst Isle,39.6,45.3
			.' Use the Flare Gun on Matis the Cruel|use Flare Gun##24278
			.info Use it before you engage him.
			.info He walks along this road.
			.kill Matis the Cruel##17664|n
			.info Don't kill him, just get him to low health.
			.info The NPC that appears will fight him for you.
			.' Capture Matis the Cruel|q 9711/1
		step
			goto Bloodmyst Isle,34.41,33.71
			.' Use the Water Sample Flask|use Water Sample Flask##24318
			.info Use it at the bottom of the red waterfall.
			.collect Bloodmyst Water Sample##24317|q 9748/1
		step
			goto Bloodmyst Isle,55.55,55.39
			.talk Vindicator Aesom##17844
			..turnin Don't Drink the Water##9748
			..accept Limits of Physical Exhaustion##9746
		step
			goto Bloodmyst Isle,55.64,55.22
			.talk Vindicator Kuros##17843
			..turnin Matis the Cruel##9711
		step
			goto Bloodmyst Isle,25.07,54.14
			.kill 10 Sunhawk Pyromancer##17608|q 9746/1
			.kill 10 Sunhawk Defender##17607|q 9746/2
		step
			goto Bloodmyst Isle,55.55,55.40
			.talk Vindicator Aesom##17844
			..turnin Limits of Physical Exhaustion##9746
			..accept The Sun Gate##9740				
		step
			goto Bloodmyst Isle,18.93,63.63
			.' Destroy the Sun Gate|q 9740/1
			.info It looks like a big purple portal floating above the red lake.
		step
			goto Bloodmyst Isle,55.56,55.40
			.talk Vindicator Aesom##17844
			..turnin The Sun Gate##9740
		step
			goto Bloodmyst Isle,55.55,55.41
			.talk Vindicator Aesom##17844
			..accept What We Know...##9753
			only Draenei
		step
			goto Bloodmyst Isle,52.7,53.2
			.talk Exarch Admetius##17658
			..turnin What We Know...##9753 
			..accept What We Don't Know...##9756
			only Draenei
		step
			goto Bloodmyst Isle,54.42,54.27
			.talk Captured Sunhawk Agent##17824
			.' Tell him "I'm a prisoner, what does it look like? The draenei filth captured me as I exited the sun gate. They killed our portal controllers and destroyed the gate. The Sun King will be most displeased with this turn of events."
			.' Recover the Sunhawk Information|q 9756/1
			only Draenei
		step
			goto Bloodmyst Isle,52.7,53.2
			.talk Exarch Admetius##17658
			..turnin What We Don't Know...##9756
			..accept Vindicator's Rest##9760
			only Draenei
		step
			goto Bloodmyst Isle,30.75,46.85
			.talk Vindicator Corin##17986
			..turnin Vindicator's Rest##9760
			..accept Clearing the Way##9761
			only Draenei
		step
			goto Bloodmyst Isle,30.26,45.92
			.talk Scout Jorli##17927
			..turnin Talk to the Hand##10064
			..accept Cutting a Path##10065
		step
			goto Bloodmyst Isle,30.23,45.86
			.talk Scout Loryi##17926
			..accept Critters of the Void##9741
		step
			goto Bloodmyst Isle,30.75,46.85
			.talk Vindicator Corin##17986
			..turnin Vindicator's Rest##9760
			..accept Clearing the Way##9761
			only Draenei
		step
			goto Bloodmyst Isle,30.75,46.85
			.talk Vindicator Corin##17986
			..accept Oh, the Tangled Webs They Weave##10066
			..accept Fouled Water Spirits##10067
		step
			goto Bloodmyst Isle,31.5,55.8
			.kill 8 Mutated Tangler##17346|q 10066/1
		step
			goto Bloodmyst Isle,31.5,55.8
			.kill 10 Enraged Ravager##17527|q 10065/1
		step
			goto Bloodmyst Isle,20.26,61.65
			.kill 12 Void Critter##17887|q 9741/1
		step
			goto Bloodmyst Isle,19.22,54.70
			.kill 8 Sunhawk Saboteur##17609|q 9761/2
			only Draenei
		step
			goto Bloodmyst Isle,19.5,53.9
			.kill 8 Sunhawk Agent##17610|q 9761/1
			only Draenei
		step
			goto Bloodmyst Isle,30.75,46.85
			.talk Vindicator Corin##17986
			..turnin Clearing the Way##9761
			only Draenei
		step
			goto Bloodmyst Isle,30.75,46.85
			.talk Vindicator Corin##17986
			..turnin Oh, the Tangled Webs They Weave##10066
		step
			goto Bloodmyst Isle,30.26,45.92
			.talk Scout Jorli##17927
			..turnin Cutting a Path##10065
		step
			goto Bloodmyst Isle,30.7,40.3
			.kill 6 Fouled Water Spirit##17358|q 10067/1
		step
			goto Bloodmyst Isle,30.75,46.85
			.talk Vindicator Corin##17986
			..turnin Fouled Water Spirits##10067
		step
			goto Bloodmyst Isle,30.83,46.65
			.talk Demolitionist Legoso##17982
			..accept Ending Their World##9759
			only Draenei
		step
			goto Bloodmyst Isle,14.25,53.67
			.kill Sironas##17678|n
			.info Follow Demolitionist Legoso and protect him.
			.info Stay close to him.
			.' Watch the dialogue
			.' Destroy the Vector Coil and Slay Sironas|q 9759/1
			only Draenei
		step
			goto Bloodmyst Isle,24.86,34.38
			.talk Researcher Cornelius##17686
			..accept They're Alive! Maybe...##9670
		step
			goto Bloodmyst Isle,18.19,37.78
			.kill Zarakh##17683|q 9669/3
		step
			goto Bloodmyst Isle,18.19,37.78
			.kill Webbed Creature##17680|n
			.info They look like wriggling white cocoons on the ground around this area.
			.' Free 5 Expedition Researchers|q 9670/1
		step
			goto Bloodmyst Isle,18.19,37.78
			.kill 8 Myst Leecher##17523|q 9669/1
			.kill 8 Myst Spinner##17522|q 9669/2
		step
			goto Bloodmyst Isle,24.87,34.37
			.talk Researcher Cornelius##17686
			..turnin They're Alive! Maybe...##9670
		step
			goto Bloodmyst Isle,53.25,57.04
			.talk Achelus##17676
			..turnin The Missing Expedition##9669
		step
			goto Bloodmyst Isle,52.68,53.23
			.talk Exarch Admetius##17658
			..turnin Ending Their World##9759
			only Draenei
		step
			goto Bloodmyst Isle,55.55,55.40
			.talk Vindicator Aesom##17844
			..turnin Critters of the Void##9741
		step
			goto Azuremyst Isle,24.18,54.35
			.talk Huntress Kella Nightbow##17614
			..turnin Newfound Allies##9632
			..accept The Way to Auberdine##9633
		step
			goto Darkshore,37.4,40.1
			.talk Thundris Windweaver##3649
			..turnin The Way to Auberdine##9633
		step
			.' Congratulations! +63 quests for achievement "Loremaster of Kalimdor".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Kalimdor\\[10] Teldrassil",[[
author danaton
description This guide contain quest-chain (47 quests) for Teldrassil Night Elf location.
startlevel 10
		step
			goto Teldrassil,58.7,44.3
			.talk Conservator Ilthalaine##2079
			..accept The Balance of Nature (1)##456
		step
			goto Teldrassil,58.5,45.9
			.kill 7 Young Nightsaber##2031|q 456/1
			.kill 4 Young Thistle Boar##1984|q 456/2
		step
			goto Teldrassil,58.7,44.3
			.talk Conservator Ilthalaine##2079
			..turnin The Balance of Nature (1)##456
			..accept The Balance of Nature (2)##457
		step
			goto Teldrassil,59.9,42.5
			.talk Melithar Staghelm##2077
			..accept The Woodland Protector (1)##458
		step
			goto Teldrassil,60.9,42
			.talk Dirania Silvershine##8583
			..accept A Good Friend##4495
		step
			goto Teldrassil,57.6,45.3
			.talk Tarindrella##1992
			..turnin The Woodland Protector (1)##458
			..accept The Woodland Protector (2)##459
		step
			goto Teldrassil,56.5,45.5
			.from Grell##1988, Grellkin##1989
			.get 8 Fel Moss##3297|q 459/1
			.' You can find more Grells|at 54.47,39.24
		step
			goto Teldrassil,57.6,45.3
			.talk Tarindrella##1992
			..turnin The Woodland Protector (2)##459
		step
			goto Teldrassil,57.8,41.7
			.talk Gilshalan Windwalker##2082
			..accept Webwood Venom##916
		step
			goto Teldrassil,58.8,36.8
			.kill 7 Mangy Nightsaber##2032|q 457/1
			.kill 7 Thistle Boar##1985|q 457/2
		step
			goto Teldrassil,58.3,32.9
			.from Webwood Spider##1986
			.get 10 Webwood Venom Sac##5166|q 916/1
		step
			goto Teldrassil,54.6,33
			.talk Iverron##8584
			..turnin A Good Friend##4495
			..accept A Friend in Need##3519
		step
			goto Teldrassil,57.8,41.7
			.talk Gilshalan Windwalker##2082
			..turnin Webwood Venom##916
			..accept Webwood Egg##917
		step
			goto Teldrassil,58.7,44.3
			.talk Conservator Ilthalaine##2079
			..turnin The Balance of Nature (2)##457
		step
			goto Teldrassil,60.9,42
			.talk Dirania Silvershine##8583
			..turnin A Friend in Need##3519
			..accept Iverron's Antidote (1)##3521
		step
			goto Teldrassil,55.2,39.6
			.from Grell##1988, Grellkin##1989
			.get 7 Hyacinth Mushroom##10639|q 3521/1
		step
			goto Teldrassil,57.7,38.5
			.collect 4 Moonpetal Lily##10641|q 3521/2
			.info The Moonpetal Lillies look like tall flower with orange petals around the pond here.
		step
			goto Teldrassil,56.7,32.1
			.from Webwood Spider##1986
			.get Webwood Ichor##10640|q 3521/3
		step
			.' Go into the cave at 56.8,31.7|goto 56.8,31.7|n
			.' Follow the path in the middle, then go left
			.' Go up to the ledge above|goto Teldrassil,55.8,25.5,0.5|q 917
		step
			goto Teldrassil,56.7,26.4
			.collect Webwood Egg##5167|q 917/1
		step
			goto Teldrassil,57.8,41.7
			.talk Gilshalan Windwalker##2082
			..turnin Webwood Egg##917
			..accept Tenaron's Summons##920
		step
			.' Follow the ramp to the top of the tree|goto Teldrassil,59.4,39.0,0.5|noway|q 920
		step
			goto Teldrassil,59.1,39.4
			.talk Tenaron Stormgrip##3514
			..turnin Tenaron's Summons##920
			..accept Crown of the Earth (1)##921
		step
			goto Teldrassil,60.9,42
			.talk Dirania Silvershine##8583
			..turnin Iverron's Antidote (1)##3521
			..accept Iverron's Antidote (2)##3522
		step
			goto Teldrassil,54.6,33
			.talk Iverron##8584
			..turnin Iverron's Antidote (2)##3522
		step
			goto Teldrassil,59.9,33.1
			.' Use your Crystal Phial in the moonwell water|use Crystal Phial##5185
			.collect Filled Crystal Phial##5184|q 921/1
		step
			goto Teldrassil,59.1,39.4
			.talk Tenaron Stormgrip##3514
			.' Go to the top of the big tree
			..turnin Crown of the Earth (1)##921
			..accept Crown of the Earth (2)##928
		step
			goto Teldrassil,61.2,47.6
			.talk Porthannius##6780
			..accept Dolanaar Delivery##2159
		step
			goto Teldrassil,60.4,56.3
			.talk Zenn Foulhoof##2150
			..accept Zenn's Bidding##488
		step
			goto Teldrassil,63.8,54.2
			.from Strigid Owl##1995
			.get 3 Strigid Owl Feather##3411|q 488/2
		step
			goto Teldrassil,60.6,58.2
			.from Webwood Lurker##1998
			.get 3 Webwood Spider Silk##3412|q 488/3
			.from Nightsaber##2042
			.get 3 Nightsaber Fang##3409|q 488/1
		step
			goto Teldrassil,60.4,56.3
			.talk Zenn Foulhoof##2150
			..turnin Zenn's Bidding##488
		step
			goto Teldrassil,56.1,57.7
			.talk Syral Bladeleaf##2083
			..accept Seek Redemption!##489
			..accept Denalan's Earth##997
		step
			goto Teldrassil,56,57.3
			.talk Athridas Bearmantle##2078
			..accept A Troubling Breeze##475
		step
			goto Teldrassil,55.6,56.9
			.talk Tallonkai Swiftroot##3567
			..accept The Emerald Dreamcatcher##2438
			..accept Twisted Hatred##932
		step
			goto Teldrassil,55.6,59.8
			.talk Innkeeper Keldamyr##6736
			..turnin Dolanaar Delivery##2159
		step
			goto Teldrassil,56.1,61.7
			.talk Corithras Moonrage##3515
			..turnin Crown of the Earth (2)##928
			..accept Crown of the Earth (3)##929
		step
			goto Teldrassil,63.3,58.1
			.' Use your Jade Phial in the moonwell water|use Jade Phial##5619
			.collect Filled Jade Phial##5639|q 929/1
		step
			goto Teldrassil,66.3,58.5
			.talk Gaerolas Talvethren##2107
			..turnin A Troubling Breeze##475
			..accept Gnarlpine Corruption##476
		step
			goto Teldrassil,68,59.6
			.collect Emerald Dreamcatcher##8048|q 2438/1
			.info To the right in the small house.
		step
			goto Teldrassil,63.6,62.3
			.collect 3 Fel Cone##3418|q 489/1
			.info They are big, brown, green smoking pine cones at the base of trees.
		step
			goto Teldrassil,60.4,56.3
			.talk Zenn Foulhoof##2150
			..turnin Seek Redemption!##489	
		step
			goto Teldrassil,56,57.3
			.talk Athridas Bearmantle##2078
			..turnin Gnarlpine Corruption##476
			..accept The Relics of Wakening##483
		step
			goto Teldrassil,55.6,56.9
			.talk Tallonkai Swiftroot##3567
			..turnin The Emerald Dreamcatcher##2438
			..accept Ferocitas the Dream Eater##2459
		step
			goto Teldrassil,56.1,61.7
			.talk Corithras Moonrage##3515
			..turnin Crown of the Earth (3)##929
			..accept Crown of the Earth (4)##933
		step
			goto Teldrassil,60.9,68.5
			.talk Denalan##2080
			..turnin Denalan's Earth##997
			..accept Timberling Seeds##918
			..accept Timberling Sprouts##919
		step
			goto Teldrassil,61.2,66.8
			.from Timberling##2022
			.get 8 Timberling Seed##5168|q 918/1
			.collect 12 Timberling Sprout##5169|q 919/1
			.info They are brown and green bulbs on the ground.
		step
			goto Teldrassil,60.9,68.5
			.talk Denalan##2080
			..turnin Timberling Seeds##918
			..accept Rellian Greenspyre##922
			..turnin Timberling Sprouts##919
		step
			goto Teldrassil,68.3,53.7
			.kill 7 Gnarlpine Mystic##7235|q 2459/1
		step
			goto Teldrassil,69.4,53.3
			.from Ferocitas the Dream Eater##7234
			.collect Gnarlpine Necklace##8049|q 2459
		step
			.use Gnarlpine Necklace##8049
			.collect Tallonkai's Jewel##8050|q 2459/2
		step
			goto Teldrassil,55.6,56.9
			.talk Tallonkai Swiftroot##3567
			..turnin Ferocitas the Dream Eater##2459
		step
			goto Teldrassil,52.4,56.5
			.talk Moon Priestess Amara##2151
			..accept The Road to Darnassus##487
		step
			goto Teldrassil,46.7,53.5
			.kill 6 Gnarlpine Ambusher##2152|q 487/1
		step
			.' Go southwest into the cave at|goto Teldrassil,44.4,57.8,0.5|q 483
		step
			goto Teldrassil,43.7,61.2
			.collect Black Feather Quill##3406|q 483/2
			.info On the top floor of the cave, across the bridge to the right, in the small room, on the right on the ground.
		step
			goto Teldrassil,44.4,60.7
			.collect Rune of Nesting##3408|q 483/4
			.info On the top floor of the cave, across the middle bridge, on the ground to the right in the small room.
		step
			.' Go downstairs to|at 44.9,61.6
			.talk Oben Rageclaw##7317
			..accept The Sleeping Druid##2541
		step
			.' Go to the next room over to|at 45.6,58.7
			.from Gnarlpine Shaman##2009
			.get Shaman Voodoo Charm##8363|q 2541/1
		step
			goto Teldrassil,45.7,57.4
			.collect Raven Claw Talisman##3405|q 483/1
			.info At the bottom of the cave, up across the bridge, on a ledge.
		step
			goto Teldrassil,44.9,61.6
			.talk Oben Rageclaw##7317
			..turnin The Sleeping Druid##2541
			..accept Druid of the Claw##2561
		step
			goto 45.6,58.7
			.kill Rageclaw##7318|n
			.' Use the Voodoo Charm on his corpse|use Voodoo Charm##8149
			.' Release Oben Rageclaw's spirit|goal Release Oben Rageclaw's spirit|q 2561/1
		step
			.' Go through the tunnel back to where Oben Rageclaw is to|at 44.7,62.5
			.collect Sapphire of Sky##3407|q 483/3
			.info Down the path at the bottom of the cave, next to Greenpaw.
		step
			.' Go back up the path to|at 44.9,61.6
			.talk Oben Rageclaw##7317
			..turnin Druid of the Claw##2561
		step
			goto Teldrassil,42.4,67.1
			.' Use your Tourmaline Phial in the moonwell water|use Tourmaline Phial##5621
			.collect Filled Tourmaline Phial##5645|q 933/1
		step
			goto Teldrassil,42.6,76.1
			.' Interact with gameobject: Strange Fruited Plant
			.info It looks like a big pink glowing plant.
			..accept The Glowing Fruit##930
		step
			goto Teldrassil,60.9,68.5
			.talk Denalan##2080
			..turnin The Glowing Fruit##930
		step
			goto Teldrassil,56,57.3
			.talk Athridas Bearmantle##2078
			..turnin The Relics of Wakening##483
			..accept Ursal the Mauler##486
		step
			.' Go north to Fel Rock|goto Teldrassil,54.7,52.8,0.5|q 932
		step
			.' Go inside the cave to|at 52.8,50.2
			.from Lord Melenas##2038
			.get Melenas' Head##5221|q 932/1
		step
			goto Teldrassil,55.6,56.9
			.talk Tallonkai Swiftroot##3567
			..turnin Twisted Hatred##932
		step
			goto Teldrassil,56.1,61.7
			.talk Corithras Moonrage##3515
			..turnin Crown of the Earth (4)##933
			..accept Crown of the Earth (5)##7383
		step
			goto Teldrassil,52.4,56.5
			.talk Moon Priestess Amara##2151
			..turnin The Road to Darnassus##487
		step
			goto Teldrassil,38.3,34.4
			.talk Sentinel Arynia Cloudsbreak##3519
			..accept The Enchanted Glade##937
		step
			goto Teldrassil,38.4,34.1
			.' Click the Amethyst Phial in your bags|use Amethyst Phial##18152
			.collect Filled Amethyst Phial##18151|q 7383/1
		step
			goto 37.4,37.3
			.from Bloodfeather Harpy##2015, Bloodfeather Rogue##2017, Bloodfeather Sorceress##2018
			.get 6 Bloodfeather Belt##5204|q 937/1
		step
			goto Teldrassil,38.3,34.4
			.talk Sentinel Arynia Cloudsbreak##3519
			..turnin The Enchanted Glade##937
			..accept Teldrassil##940
		step
			goto Teldrassil,34.7,29
			.' Interact with gameobject: Strange Fronded Plant
			.info It's a big glowing pink plant up on a hill.
			..accept The Shimmering Frond##931
		step
			goto Teldrassil,31.5,31.6
			.talk Mist##3568
			..accept Mist##938
		step
			goto Teldrassil,38.3,34.4
			.' Lead Mist safely to Sentinel Arynia Cloudsbreak|goal Lead Mist safely to Sentinel Arynia Cloudsbreak|q 938/1
		step
			goto Teldrassil,38.3,34.4
			.talk Sentinel Arynia Cloudsbreak##3519
			..turnin Mist##938
		step
			goto Teldrassil,39.2,80.1
			.kill Ursal the Mauler##2039|q 486/1
		step
			goto Teldrassil,60.9,68.5
			.talk Denalan##2080
			..turnin The Shimmering Frond##931
		step
			goto Teldrassil,56.1,61.7
			.talk Corithras Moonrage##3515
			..turnin Crown of the Earth (5)##7383
			..accept Crown of the Earth (6)##935
		step
			goto Teldrassil,56,57.3
			.talk Athridas Bearmantle##2078
			..turnin Ursal the Mauler##486
		step
			goto Darnassus,70.7,45.4
			.talk Mydrannul##4241
			..accept Nessa Shadowsong##6344
			only NightElf
		step
			goto Darnassus,38.2,21.6
			.talk Rellian Greenspyre##3517
			..turnin Rellian Greenspyre##922
			..accept Tumors##923
		step
			goto Darnassus,35.1,9.1
			.talk Arch Druid Fandral Staghelm##3516
			..turnin Crown of the Earth (6)##935
			..turnin Teldrassil##940
			..accept Grove of the Ancients##952
		step
			goto Teldrassil,42.5,33
			.from Timberling Trampler##2027, Timberling Mire Beast##2029, Elder Timberling##2030
			.get 5 Mossy Tumor##5170|q 923/1
		step
			goto Darnassus,38.2,21.6
			.talk Rellian Greenspyre##3517
			..turnin Tumors##923
			..accept Return to Denalan##2498
		step
			goto Teldrassil,60.9,68.5
			.talk Denalan##2080
			..turnin Return to Denalan##2498
			..accept Oakenscowl##2499
		step
			goto Teldrassil,53.8,75.1
			.from Oakenscowl##2166
			.get 1 Gargantuan Tumor##8136|q 2499/1
		step
			goto Teldrassil,60.9,68.5
			.talk Denalan##2080
			..turnin Oakenscowl##2499
		step
			.' Go into the pink portal to Rut'theran Village|goto Teldrassil,56.3,92.4,6|noway|q 6344
			only NightElf
		step
			goto Teldrassil,56.3,92.4
			.talk Nessa Shadowsong##10118
			..turnin Nessa Shadowsong##6344
			..accept The Bounty of Teldrassil##6341
			only NightElf
		step
			goto Teldrassil,58.4,94
			.talk Vesprystus##3838
			..turnin The Bounty of Teldrassil##6341
			..accept Flight to Auberdine##6342
			only NightElf
		step
			goto Teldrassil,58.4,94
			.talk Vesprystus##3838
			.' Fly to Auberdine|goto Darkshore,36.4,45.6,0.5|noway|q 6342
			only NightElf
		step
			goto Darkshore,36.8,44.3
			.talk Laird##4200
			..turnin Flight to Auberdine##6342
			..accept Return to Nessa##6343
			only NightElf
		step
			goto Darkshore,36.3,45.6
			.talk Caylais Moonfeather##3841
			.' Fly to Rut'theran Village|goto Teldrassil,56.3,92.4,6|noway|q 6343
			only NightElf
		step
			goto Teldrassil,56.3,92.4
			.talk Nessa Shadowsong##10118
			..turnin Return to Nessa##6343
			only NightElf
		step
			goto Darkshore,43.6,76.3
			.talk Onu##3616
			..turnin Grove of the Ancients##952
			.' This quest can be turning in the following quest-guide - Darkshore.
		step
			.' Congratulations! +35 quests for achievement "Loremaster of Kalimdor".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Kalimdor\\[20] Darkshore",[[
author danaton
description This guide contain quest-chain (66 quests) for Darkshore location.
startlevel 20
		step
			goto Darnassus,31.2,84.5
			.talk Chief Archaeologist Greywhisker##2912
			..accept Trouble In Darkshore?##730
		step
			goto Darkshore,36.6,45.6
			.talk Gwennyth Bly'Leggonde##10219
			..accept Washed Ashore##3524
		step
			goto Darkshore,37,44.1
			.talk Wizbang Cranktoggle##3666
			..accept Buzzbox 827##983
		step
			goto Darkshore,37.4,41.8
			.talk Archaeologist Hollee##2913
			..turnin Trouble In Darkshore?##730
		step
			goto Darkshore,36.3,50.8
			.collect Sea Creature Bones##12242|q 3524/1
		step
			goto Darkshore,36.19,46.52
			.from Pygmy Tide Crawler##2231, Tide Crawler##2232, Young Reef Crawler##2234
			.get 6 Crawler Leg##5385|q 983/1
			.' You can find more around (1)|at 36.4,49.9
			.' You can find more around (2)|at 36.63,56
		step
			goto Darkshore,36.64,46.29
			.talk Buzzbox 827##991002
			..turnin Buzzbox 827##983
			..accept Buzzbox 411##1001
		step
			goto Darkshore,36.6,45.6
			.talk Gwennyth Bly'Leggonde##10219
			..turnin Washed Ashore##3524
			..accept Washed Ashore##4681
		step
			goto Darkshore,31.8,46.3
			.collect Sea Turtle Remains##12289|q 4681/1
		step
			goto Darkshore,33,52.3
			.from Darkshore Thresher##2185, Elder Darkshore Thresher##2187
			.get 3 Thresher Eye##5412|q 1001/1
			.' You can find more around|at 33.85,35.08
		step
			goto Darkshore,36.6,45.6
			.talk Gwennyth Bly'Leggonde##10219
			..turnin Washed Ashore##4681
		step
			goto Darkshore,37.7,43.4
			.talk Sentinel Glynda Nal'Shea##2930
			..accept The Red Crystal##4811
		step
			goto Darkshore,38.8,43.4
			.talk Tharnariun Treetender##3701
			..accept Plagued Lands##2118
		step
			goto Darkshore,39.4,43.5
			.talk Terenthis##3693
			..accept How Big a Threat? (1)##984
		step
			goto Darkshore,38.4,52.9
			.' Use Tharnariun's Hope on a Rabid Thistle Bear|use Tharnariun's Hope##7586
			.goal Rabid Thistle Bear Captured|q 2118/1
		step
			goto Darkshore,39.6,52.9
			.goal Find a corrupt furbolg camp|q 984/1
		step
			goto Darkshore,47.4,48.7
			.' Walk up next to the big red crystal at the top of this hill
			.goal Locate the large, red crystal on Darkshore's eastern mountain range|q 4811/1
		step
			goto Darkshore,38.8,43.4
			.talk Tharnariun Treetender##3701
			..turnin Plagued Lands##2118
			..accept Cleansing of the Infected##2138
		step
			goto Darkshore,39.4,43.5
			.talk Terenthis##3693
			..turnin How Big a Threat? (1)##984
			..accept How Big a Threat? (2)##985
		step
			goto Darkshore,37.7,43.4
			.talk Sentinel Glynda Nal'Shea##2930
			..turnin The Red Crystal##4811
			..accept As Water Cascades##4812
		step
			goto Darkshore,37.8,44.1
			.' Use your Empty Water Tube in your bags in the moonwell water|use Empty Water Tube##14338
			.collect Moonwell Water Tube##14339|q 4812/1
		step
			goto Darkshore,40.3,53
			.kill 8 Blackwood Pathfinder##2167|q 985/1
			.kill 5 Blackwood Windtalker##2324|q 985/2
		step
			goto Darkshore,47.3,48.7
			.talk Mysterious Red Crystal##991006
			..turnin As Water Cascades##4812
			..accept The Fragments Within##4813
		step
			goto Darkshore,39.4,43.5
			.talk Terenthis##3693
			..turnin How Big a Threat? (2)##985
			.' Watch the dialogue.
			..accept Thundris Windweaver##4761
		step
			goto Darkshore,37.7,43.4
			.talk Sentinel Glynda Nal'Shea##2930
			..turnin The Fragments Within##4813
		step
			goto Darkshore,37.3,43.6
			.talk Barithras Moonshade##3583
			..accept Cave Mushrooms##947
		step
			goto Darkshore,37.4,40.1
			.talk Thundris Windweaver##3649
			..turnin Thundris Windweaver##4761
			..accept The Cliffspring River##4762
			..accept Bashal'Aran (1)##954
		step
			goto Darkshore,38.1,41.2
			.talk Gorbold Steelhand##6301
			..accept Deep Ocean, Vast Sea##982
		step
			goto Darkshore,44.2,36.3
			.talk Asterion##3650
			..turnin Bashal'Aran (1)##954
			..accept Bashal'Aran (2)##955
		step
			goto Darkshore,44.6,36.9
			.from Wild Grell##2190, Vile Sprite##2189
			.get 8 Grell Earring##5336|q 955/1
		step
			goto Darkshore,44.2,36.3
			.talk Asterion##3650
			..turnin Bashal'Aran (2)##955
			..accept Bashal'Aran (3)##956
		step
			goto Darkshore,47.4,36.8
			.from Deth'ryll Satyrs##2212
			.get Ancient Moonstone Seal##5338|q 956/1
		step
			goto Darkshore,44.2,36.3
			.talk Asterion##3650
			..turnin Bashal'Aran (3)##956
			..accept Bashal'Aran (4)##957
		step
			goto Darkshore,41.9,31.5
			.talk Beached Sea Creature##991008
			..accept Beached Sea Creature##4723
		step
			goto Darkshore,42,28.6
			.talk Buzzbox 411##991003
			..turnin Buzzbox 411##1001
			..accept Buzzbox 323##1002
		step
			goto Darkshore,39.6,27.5
			.collect Mist Veil's Lockbox##12192|q 982/2
			.info It's a small grey chest at the very bottom of the ship.
		step
			goto Darkshore,38.2,28.8
			.collect Silver Dawning's Lockbox##12191|q 982/1
			.info It's a small grey chest at the very bottom of this ship.
		step
			.' Jump down into the water below the bridge to|at 50.9,25.7
			.' Use your Empty Sampling Tube at the bottom of this waterfall|use Empty Sampling Tube##12350
			.collect Cliffspring River Sample##12349|q 4762/1
		step
			goto Darkshore,55.64,36.13
			.collect 1 Death Cap##5270|q 947/2
			.info Сan be found on the upper level of the cave.
		step
			goto Darkshore,55.1,33.6
			.collect 5 Scaber Stalk##5271|q 947/1
			.info Inside the cave.
		step
			goto Darkshore,48.4,30.7
			.kill 20 Rabid Thistle Bear##2164|q 2138/1
			.from Moonstalker##2069
			.get 6 Moonstalker Fang##5413|q 1002/1
		step
			goto Darkshore,51.3,24.6
			.talk Buzzbox 323##991004
			..turnin Buzzbox 323##1002
			..accept Buzzbox 525##1003
		step
			goto Darkshore,44.2,20.6
			.talk Beached Sea Turtle##991009
			..accept Beached Sea Turtle##4725
		step
			goto Darkshore,35.7,43.7
			.talk Cerellean Whiteclaw##3644
			..accept For Love Eternal##963
		step
			goto Darkshore,36.6,45.6
			.talk Gwennyth Bly'Leggonde##10219
			..turnin Beached Sea Creature##4723
			..turnin Beached Sea Turtle##4725
		step
			goto Darkshore,36.1,44.9
			.talk Gubber Blump##10216
			..accept Fruit of the Sea##1138
		step
			goto Darkshore,37.2,44.2
			.talk WANTED: Murkdeep!##991010
			..accept WANTED: Murkdeep!##4740
		step
			goto Darkshore,37.3,43.6
			.talk Barithras Moonshade##3583
			..turnin Cave Mushrooms##947
			..accept Onu##948
		step
			goto Darkshore,38.8,43.4
			.talk Tharnariun Treetender##3701
			..turnin Cleansing of the Infected##2138
			..accept Tharnariun's Hope##2139
		step
			goto Darkshore,39.4,43.5
			.talk Terenthis##3693
			..accept A Lost Master (1)##986
		step
			goto Darkshore,39,43.6
			.talk Sentinel Elissa Starbreeze##3657
			..accept The Tower of Althalaxx (1)##965
		step
			goto Darkshore,38.1,41.2
			.talk Gorbold Steelhand##6301
			..turnin Deep Ocean, Vast Sea##982
		step
			goto Darkshore,37.4,40.1
			.talk Thundris Windweaver##3649
			..turnin The Cliffspring River##4762
			..accept Tools of the Highborne##958
			..accept The Blackwood Corrupted##4763
		step
			goto Darkshore,37.8,44
			.' Use Empty Cleansing Bowl on a Moonwell|use Empty Cleansing Bowl##12346
			.collect Filled Cleansing Bowl##12347|q 4763
		step
			goto Darkshore,52.4,35.9|n
			.' The path up to Tharnariun's Hope starts here|goto Darkshore,52.4,35.9,0.5|noway|q 2139
		step
			goto Darkshore,51.5,38.2
			.kill Den Mother##6788|q 2139/1
		step
			goto Darkshore,50.7,34.9
			.collect Blackwood Grain Sample##12342|q 4763
		step
			goto Darkshore,51.8,33.5
			.collect Blackwood Nut Sample##12343|q 4763
		step
			goto Darkshore,52.9,33.4
			.collect Blackwood Fruit Sample##12341|q 4763
		step
			goto Darkshore,52.43,33.37
			.' Use Filled Cleansing Bowl on a Bonfire|use Filled Cleansing Bowl##12347
			.kill 1 Xabraxxis##10373|n
			.collect Talisman of Corruption##12355|q 4763/1
		step
			goto Darkshore,55,24.9
			.talk Balthule Shadowstrike##3661
			..turnin The Tower of Althalaxx (1)##965
			..accept The Tower of Althalaxx (2)##966
		step
			goto Darkshore,55.2,26.4
			.from Dark Strand Fanatic##2336
			.get 4 Worn Parchment##5348|q 966/1
		step
			goto Darkshore,55,24.9
			.talk Balthule Shadowstrike##3661
			..turnin The Tower of Althalaxx (2)##966
			..accept The Tower of Althalaxx (3)##967
		step
			goto Darkshore,53.1,18.1
			.' Interact with gameobject: Beached Sea Turtle
			..accept Beached Sea Turtle##4727
		step
			goto Darkshore,37.4,40.1
			.talk Thundris Windweaver##3649
			..turnin The Blackwood Corrupted##4763
			..accept Onward to Ashenvale##10752
		step
			goto Darkshore,36.6,45.6
			.talk Gwennyth Bly'Leggonde##10219
			..turnin Beached Sea Turtle##4727
		step
			goto Darkshore,38.8,43.4
			.talk Tharnariun Treetender##3701
			..turnin Tharnariun's Hope##2139
		step
			goto Darkshore,40.3,59.7
			.talk Sentinel Tysha Moonblade##3639
			..accept The Fall of Ameth'Aran##953
		step
			goto Darkshore,42.4,61.8
			.' Interact with gameobject: Ancient Flame
			.info It's a stone podium with a green coming out of the top of it, inside a dark colored broken gazebo.
			.goal Destroy the seal at the ancient flame|q 957/1
		step
			goto Darkshore,42.6,63.1
			.' Interact with gameobject: Fall of Ameth'Aran
			.info It's a stone tablet standing upright on the ground.
			.goal Read the Fall of Ameth'Aran|q 953/2
		step
			goto Darkshore,43.3,59.7
			.from Anaya Dawnrunner##3667
			.get Anaya's Pendant##5382|q 963/1
		step
			goto Darkshore,43.3,58.7
			.' Interact with gameobject: Lay of Ameth'Aran
			.info It's a stone tablet laying flat on the ground.
			.goal Read the Lay of Ameth'Aran|q 953/1
		step
			goto Darkshore,41.5,59.1
			.from Cursed Highborne##2176, Writhing Highborne##2177, Wailing Highborne##2178
			.get 7 Highborne Relic##5360|q 958/1
		step
			goto Darkshore,40.3,59.7
			.talk Sentinel Tysha Moonblade##3639
			..turnin The Fall of Ameth'Aran##953
		step
			goto Darkshore,36,70.9
			.' Interact with gameobject: Beached Sea Creature
			..accept Beached Sea Creature##4728
		step
			goto Darkshore,36.3,76.7
			.kill Murkdeep##10323|q 4740/1
		step
			goto Darkshore,34.9,80
			.from Reef Crawler##2235, Encrusted Tide Crawler##2233
			.get 6 Fine Crab Chunks##12237|q 1138/1
		step
			goto Darkshore,31.7,83.7
			.' Interact with gameobject: Beached Sea Turtle
			..accept Beached Sea Turtle##4731
		step
			goto Darkshore,37.6,82.4
			.from Grizzled Thistle Bear##2165
			.get 4 Grizzled Scalp##5414|q 1003/1
			.from Moonstalker Sire##2237, Moonstalker Matriarch##2071
			.get 5 Fine Moonstalker Pelt##5386|q 986/1
		step
			goto Darkshore,41.4,80.6
			.talk Buzzbox 525##991005
			..turnin Buzzbox 525##1003
		step
			goto Darkshore,37.1,62.2
			.' Interact with gameobject: Beached Sea Turtle
			..accept Beached Sea Turtle##4722
		step
			goto Darkshore,36.6,45.6
			.talk Gwennyth Bly'Leggonde##10219
			..turnin Beached Sea Turtle##4722
			..turnin Beached Sea Creature##4728
			..turnin Beached Sea Turtle##4731
		step
			goto Darkshore,36.1,44.9
			.talk Gubber Blump##10216
			..turnin Fruit of the Sea##1138
		step
			goto Darkshore,35.7,43.7
			.talk Cerellean Whiteclaw##3644
			..turnin For Love Eternal##963
		step
			goto Darkshore,37.7,43.4
			.talk Sentinel Glynda Nal'Shea##2930
			..turnin WANTED: Murkdeep!##4740
		step
			goto Darkshore,39.4,43.5
			.talk Terenthis##3693
			..turnin A Lost Master (1)##986
			.' Watch the dialogue.
			..accept A Lost Master (2)##993
		step
			goto Darkshore,37.4,40.1
			.talk Thundris Windweaver##3649
			..turnin Tools of the Highborne##958
		step
			goto Darkshore,37.4,41.8
			.talk Archaeologist Hollee##2913
			..accept The Absent Minded Prospector (1)##729
		step
			goto Darkshore,44.2,36.3
			.talk Asterion##3650
			..turnin Bashal'Aran (4)##957
		step
			goto Darkshore,43.5,76.3
			.talk Onu##3616
			..turnin Onu##948
			..accept The Master's Glaive##944
		step
			goto Darkshore,38.5,86.2
			.' Clear the mobs around the table
			.' Jump on the table with the remains on it
			.' Click your Phial of Scrying in your bags|use Phial of Scrying##5251
			.' Create the Scrying Bowl
			.' Interact with gameobject: Scrying Bowl
			..turnin The Master's Glaive##944
			..accept The Twilight Camp##949
			.' Click the Twilight Tome
			..turnin The Twilight Camp##949
			..accept Return to Onu##950
		step
			goto Darkshore,38.7,87.4
			.talk Therylune##3584
			..accept Therylune's Escape##945
		step
			goto Darkshore,40.52,87.13
			.goal Escort Therylune away from the Master's Glaive|q 945/1
		step
			goto Darkshore,38.5,86.2
			.from Twilight Disciple##2338, Twilight Thug##2339
			.collect Book: The Powers Below##5352|q 1143/1 |future
		step
			.use Book: The Powers Below##5352
			..accept The Powers Below##968
		step
			goto Darkshore,35.7,83.7
			.talk Prospector Remtravel##2917
			..turnin The Absent Minded Prospector (1)##729
			..accept The Absent Minded Prospector (2)##731
		step
			goto Darkshore,36.31,86.19
			.' Prospector Remtravel as he searches for the mysterious fossil|q 731/1
		step
			goto Darkshore,32.7,80.8
			.' Interact with gameobject: Beached Sea Creature
			..accept Beached Sea Creature##4730
		step
			goto Darkshore,31.2,85.6
			.' Interact with gameobject: Beached Sea Turtle
			..accept Beached Sea Turtle##4732
		step
			goto Darkshore,45,85.3
			.talk Volcor##3692
			..turnin A Lost Master (2)##993
			..accept Escape Through Force##994
		step
			goto Darkshore,41.71,82.11
			.goal Protect Volcor until you reach the road|q 994/1
		step
			goto Darkshore,43.5,76.3
			.talk Onu##3616
			..turnin Return to Onu##950
			..accept Mathystra Relics##951
		step
			goto Darkshore,44.4,76.4
			.talk Kerlonian Evershade##11218
			..accept The Sleeper Has Awakened##5321
			.info Warning! Escorting quest!
		step
			goto Darkshore,44.39,76.31
			.' Interact with gameobject: Kerlonian's Chest
			.collect Horn of Awakening##13536|q 5321/2
		step
			goto Ashenvale,26.8,36.8
			.' Escort Kerlonian Evershade south to Ashenvale, then south to Maestra's Post|goal Escort Kerlonian Evershade to Maestra's Post|q 5321/1
			.info Do NOT follow the road. Walk in the forest as much as you can. This will allow you to avoid the ambushes along the way.
			.' Use your Horn of Awakening on Kerlonian Evershade when he falls asleep to wake him up|use Horn of Awakening##13536
		step
			goto Ashenvale,27.3,35.6
			.talk Liladris Moonriver##11219
			..turnin The Sleeper Has Awakened##5321
		step
			goto Ashenvale,26.2,38.6
			.talk Delgren the Purifier##3663
			..turnin The Tower of Althalaxx (3)##967
			..accept The Tower of Althalaxx (4)##970
		step
			goto Ashenvale,32.7,28.7
			.from Dark Strand Cultist##3725, Dark Strand Adept##3728, Dark Strand Excavator##3730, Dark Strand Enforcer##3727
			.get Glowing Soul Gem##5366|q 970/1
		step
			goto Ashenvale,26.2,38.6
			.talk Delgren the Purifier##3663
			..turnin The Tower of Althalaxx (4)##970
			.' Watch the dialogue.
			..accept The Tower of Althalaxx (5)##973
		step
			goto Ashenvale,22.7,51.9
			.talk Therysil##3585
			..turnin Therylune's Escape##945
		step
			.' Move forward along the road|goto Ashenvale,21.5,58.99,0.5|q 973
		step
			.' Climb up the hill|goto 25.88,63.11,0.3|q 973
		step
			goto Ashenvale,25.3,60.7
			.from Ilkrud Magthrull##3664+
			.get Ilkrud Magthrulls Tome##5533|q 973/1
		step
			goto Ashenvale,36.6,49.6
			.talk Raene Wolfrunner##3691
			..turnin Onward to Ashenvale##10752
		step
			goto Ashenvale,34.4,48
			.talk Daelyshia##4267
			.fpath Astranaar, Ashenvale|q 973
		step
			goto Ashenvale,26.2,38.6
			.talk Delgren the Purifier##3663
			..turnin The Tower of Althalaxx (5)##973
			..accept The Tower of Althalaxx (6)##1140
		step
			.' You need to go up this path|goto 72.21,49.83,0.3|q 1140
		step
			goto Ashenvale,66.63,56.90|n
			.' Free the Highborne soul in Night Run|q 1140/1
		step
			goto Ashenvale,81.6,48.6
			.' Free the Highborne soul in Satyrnaar|q 1140/2
		step
			goto Ashenvale,85.1,43.4
			.talk Suralais Farwind##22935
			.fpath Forest Song, Ashenvale|q 1140
		step
			goto Ashenvale,85.1,43.4|n
			.talk Suralais Farwind##22935
			.' Fly to Astranaar, Ashenvale|goto Ashenvale,35.5,50.2,5|noway|q 1140
		step
			goto Ashenvale,26.2,38.6
			.talk Delgren the Purifier##3663
			..turnin The Tower of Althalaxx (6)##1140
			..accept The Tower of Althalaxx (7)##1167
		step
			goto Ashenvale,34.4,48|n
			.talk Daelyshia##4267
			.' Fly to Auberdine, Darkshore|goto Darkshore,36.4,45.6,5|noway|q 4730
		step
			goto Darkshore,36.6,45.6
			.talk Gwennyth Bly'Leggonde##10219
			..turnin Beached Sea Creature##4730
			..turnin Beached Sea Turtle##4732
		step
			goto Darkshore,37.4,41.8
			.talk Archaeologist Hollee##2913
			..turnin The Absent Minded Prospector (2)##731
			..accept The Absent Minded Prospector (3)##741
		step
			goto Darkshore,39.4,43.5
			.talk Terenthis##3693
			..turnin Escape Through Force##994
		step
			goto Darkshore,55,24.9
			.talk Balthule Shadowstrike##3661
			..turnin The Tower of Althalaxx (7)##1167
			..accept The Tower of Althalaxx (8)##1143
		step
			ding 28
		step
			goto Darkshore,56,26.3
			.from Athrikus Narassin##3660
			.get Athrikus Narassin's Head##5383|q 1143/1
		step
			goto Darkshore,55,24.9
			.talk Balthule Shadowstrike##3661
			..turnin The Tower of Althalaxx (8)##1143
			..accept The Tower of Althalaxx (9)##981
		step
			goto Darkshore,56.7,13.5
			.talk Gelkak Gyromast##6667
			..accept Gyromast's Retrieval##2098
		step
			goto Darkshore,52.8,19.5
			.from Encrusted Tide Crawler##2233, Raging Reef Crawler##2236
			.get Bottom of Gelkak's Key##7500|q 2098/3
		step
			goto Darkshore,60.9,10.3
			.from Giant Foreststrider##2323
			.get Top of Gelkak's Key##7498|q 2098/1
		step
			goto Darkshore,55.22,12.56
			.from Greymist Oracle##2207, Greymist Tidehunter##2208
			.get Middle of Gelkak's Key##7499|q 2098/2
		step
			goto Darkshore,56.7,13.5
			.talk Gelkak Gyromast##6667
			..turnin Gyromast's Retrieval##2098
			..accept Gyromast's Revenge##2078
		step
			goto Darkshore,55.8,18.3
			.talk The Threshwackonator 4100##6669
			.' Lead it back Threshwackonator 4100 to Gelkak|at 56.7,13.5|q 2078/1
		step
			goto Darkshore,56.7,13.5
			.talk Gelkak Gyromast##6667
			..turnin Gyromast's Revenge##2078
		step
			goto Darkshore,58.3,21.9
			.collect 6 Mathystra Relic##5273|q 951/1
		step
			goto Darkshore,43.5,76.3
			.talk Onu##3616
			..turnin Mathystra Relics##951
		step
			goto Darkshore,31.3,87.4
			.' Interact with gameobject: Beached Sea Creature
			..accept Beached Sea Creature##4733
		step
			goto Ashenvale,26.2,38.6
			.talk Delgren the Purifier##3663
			..turnin The Tower of Althalaxx (9)##981
		step
			goto Ashenvale,34.4,48|n
			.talk Daelyshia##4267
			.' Fly to Auberdine, Darkshore|goto Darkshore,36.4,45.6,5|noway|q 4733
		step
			goto Darkshore,36.6,45.6
			.talk Gwennyth Bly'Leggonde##10219
			..turnin Beached Sea Creature##4733
		step
			goto Darkshore,36.3,45.6|n
			.talk Caylais Moonfeather##3841
			.' Fly to Rut'theran Village, Teldrassil|goto Teldrassil,56.3,92.4,5|noway|q 741
		step
			goto Darnassus,31.2,84.5
			.talk Chief Archaeologist Greywhisker##2912
			..turnin The Absent Minded Prospector (3)##741
			..accept The Absent Minded Prospector (4)##942
		step
			goto Ironforge,50.8,5.6
			.talk Gerrig Bonegrip##2786
			..turnin The Powers Below##968
		step
			goto Wetlands,10.8,60.4
			.talk Archaeologist Flagongut##2911
			..turnin The Absent Minded Prospector (4)##942
			..accept The Absent Minded Prospector (5)##943
		step
			goto Wetlands,38.9,52.2
			.collect Flagongut's Fossil##5234|q 943/2
			.info In a cave on a hill.
		step
			goto Wetlands,34.46,47.13
			.from Mottled Raptor##1020, Mottled Screecher##1021, Mottled Scytheclaw##1022, Mottled Razormaw##1023
			.info Drop chance 10% on Raptor.
			.get Stone of Relu##5233|q 943/1
		step
			goto Wetlands,10.8,60.4
			.talk Archaeologist Flagongut##2911
			..turnin The Absent Minded Prospector (5)##943
		step
			.' Congratulations! +66 quests for achievement "Loremaster of Kalimdor".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Kalimdor\\[30] Ashenvale",[[
author danaton
description This guide contain quest-chain (48 quests) for Ashenvale location.
startlevel 30
		step
			.' First you need complete quest-guide: "Darkshore".
		step
			goto Darnassus,38.7,81.3
			.talk Emissary Valustraa##17105
			..accept Travel to Astranaar##9432
			only Draenei
		step
			goto Darkshore,37.4,40.1
			.talk Thundris Windweaver##3649
			..accept Onward to Ashenvale##10752
		step
			goto Darkshore,38.7,87.4
			.talk Therylune##3584
			..accept Therylune's Escape##945
		step
			goto Darkshore,40.52,87.13
			.' Escort Therylune away from the Master's Glaive|q 945/1
		step
			goto Darkshore,44.4,76.4
			.talk Kerlonian Evershade##11218
			..accept The Sleeper Has Awakened##5321
			.info Warning! Escorting quest!
		step
			goto Darkshore,44.39,76.31
			.' Interact with gameobject: Kerlonian's Chest
			.collect Horn of Awakening##13536|q 5321/2
		step
			goto Ashenvale,26.8,36.8
			.' Escort Kerlonian Evershade south to Ashenvale, then south to Maestra's Post|q 5321/1
			.info Do NOT follow the road. Walk in the forest as much as you can. This will allow you to avoid the ambushes along the way.
			.' Use your Horn of Awakening on Kerlonian Evershade when he falls asleep to wake him up|use Horn of Awakening##13536
		step
			goto Ashenvale,27.3,35.6
			.talk Liladris Moonriver##11219
			..turnin The Sleeper Has Awakened##5321
		step
			goto Ashenvale,26.4,38.6
			.talk Orendil Broadleaf##3847
			..accept Bathran's Hair##1010
		step
			goto Ashenvale,29.6,24
			.collect 5 Bathran's Hair##5437|q 1010/1
			.info They look like little white straw teepees on the ground around this area.
		step
			goto Ashenvale,26.4,38.6
			.talk Orendil Broadleaf##3847
			..turnin Bathran's Hair##1010
			.' Watch the dialogue.
			..accept Orendil's Cure##1020
		step
			goto Ashenvale,26.2,38.9
			.talk Feero Ironhand##4484
			..accept Supplies to Auberdine##976
		step
			goto Ashenvale,28.6,14.6
			.goal Protect Feero Ironhand|q 976/1
			.kill Aligar the Tormentor##3898|n
			.kill Balizar the Umbrage##3899|n
			.kill Caedakar the Vicious##3900|n
		step
			goto Ashenvale,26.2,38.9
			.talk Delgren the Purifier##3663
			..turnin Supplies to Auberdine##976
		step
			goto Ashenvale,22.7,51.9
			.talk Therysil##3585
			..turnin Therylune's Escape##945
		step
			goto Ashenvale,34.9,49.7
			.talk Vindicator Palanaar##17106
			..turnin Travel to Astranaar##9432
			only Draenei
		step
			goto Ashenvale,36.6,49.6
			.talk Raene Wolfrunner##3691
			..turnin Onward to Ashenvale##10752
			..accept Raene's Cleansing (1)##991
			..accept Culling the Threat##1054
		step
			goto Ashenvale,34.6,48.8
			.talk Shindrell Swiftfire##3845
			..accept The Zoram Strand##1008
		step
			goto Ashenvale,37.4,51.8
			.talk Pelturas Whitemoon##3894
			..turnin Orendil's Cure##1020
			.' Watch the dialogue.
			..accept Elune's Tear##1033
		step
			.' The path to 'Elune's Tear' starts here|goto Ashenvale,44,55,0.3|q 1033
		step
			goto Ashenvale,46.2,46
			.collect Elune's Tear##5493|q 1033/1
			.info They look like big white pearls at the base of the tree on the island in the middle of the lake.
		step
			goto Ashenvale,36.23,33.37
			.from Dal Bloodclaw##3987
			.get Dal Bloodclaw's Skull##5544|q 1054/1
		step
			goto Ashenvale,36.6,49.6
			.talk Raene Wolfrunner##3691
			..turnin Culling the Threat##1054
		step
			goto Ashenvale,37.4,51.8
			.talk Pelturas Whitemoon##3894
			..turnin Elune's Tear##1033
			.' Watch the dialogue.
			..accept The Ruins of Stardust##1034
		step
			goto Ashenvale,33.7,66.5
			.collect 5 Handful of Stardust##5494|q 1034/1
			.info They look like sparkling bushes around this area.
		step
			goto Ashenvale,37.4,51.8
			.talk Pelturas Whitemoon##3894
			..turnin The Ruins of Stardust##1034
			.' Watch the dialogue.
			..accept Fallen Sky Lake##1035
		step
			goto Ashenvale,20.3,42.3
			.' Interact with gameobject: Teronis Corpse
			.info Teronis' Corpse is on the little island in the middle of the lake.
			..turnin Raene's Cleansing (1)##991
			..accept Raene's Cleansing (2)##1023
		step
			goto Ashenvale,20.3,42.3
			.from Saltspittle Warrior##3739, Saltspittle Puddlejumper##3737, Saltspittle Muckdweller##3740, Saltspittle Oracle##3742
			.get Glowing Gem##5463|q 1023/1
		step
			goto Ashenvale,14.8,31.3
			.talk Talen##3846
			..accept The Ancient Statuette##1007
		step
			goto Ashenvale,14.2,20.6
			.collect Ancient Statuette##5424|q 1007/1
			.info Looks like a stone figurine on the ground.
		step
			goto Ashenvale,14.8,31.3
			.talk Talen##3846
			..turnin The Ancient Statuette##1007
			.' Watch the dialogue.
			..accept Ruuzel##1009
		step
			goto Ashenvale,7.4,12.6
			.from Ruuzel##3943
			.get Ring of Zoram##5445|q 1009/1
		step
			goto Ashenvale,14.2,26.8
			.from Wrathtail Sorceress##3717, Wrathtail Wave Rider##3713
			.get 20 Wrathtail Head##5490|q 1008/1
		step
			goto Ashenvale,14.8,31.3
			.talk Talen##3846
			..turnin Ruuzel##1009
		step
			goto Ashenvale,34.7,48.8
			.talk Shindrell Swiftfire##3845
			..turnin The Zoram Strand##1008
			..accept Kayneth Stillwind##4581
		step
			goto Ashenvale,34.9,49.7
			.talk Vindicator Palanaar##17106
			..accept A Helping Hand##9533
		step
			goto Ashenvale,36.6,49.6
			.talk Raene Wolfrunner##3691
			..turnin Raene's Cleansing (2)##1023
			..accept Raene's Cleansing (3)##1024
			..accept An Aggressive Defense##1025
		step
			goto Ashenvale,53.5,46.3
			.talk Shael'dryn##3916
			..turnin Raene's Cleansing (3)##1024
			..accept Raene's Cleansing (4)##1026
		step
			goto Ashenvale,50.9,60.2
			.kill 1 Foulweald Den Watcher##3746|q 1025/1
			.kill 2 Foulweald Ursa##3749|q 1025/2
			.kill 10 Foulweald Totemic##3750|q 1025/3
			.kill 12 Foulweald Warrior##3743|q 1025/4
		step
			goto Ashenvale,49.8,67.2
			.talk Sentinel Velene Starstrike##3885
			..accept Elemental Bracers##1016
		step
			goto Ashenvale,49.4,69.3
			.from Befouled Water Elemental##3917+
			.collect 5 Intact Elemental Bracer##12220|q 1016
		step
			.use Divining Scroll##5456
			.collect Divined Scroll##5455|q 1016/1
		step
			goto Ashenvale,49.8,67.2
			.talk Sentinel Velene Starstrike##3885
			..turnin Elemental Bracers##1016
			..accept Mage Summoner##1017
		step
			goto Ashenvale,66.7,82.2
			.from Shadethicket Oracle##3931
			.get Fallen Moonstone##5508|q 1035/1
		step
			goto Ashenvale,85.2,44.7
			.talk Kayneth Stillwind##3848
			..turnin Kayneth Stillwind##4581
			..accept Forsaken Diseases##1011
			..accept The Lost Chalice##9519
		step
			goto Ashenvale,86,44.1
			.talk Sentinel Melyria Frostshadow##3880
			..accept The Howling Vale##1022
		step
			goto Ashenvale,86,44.4
			.talk Sentinel Luciel Starwhisper##17287
			..accept Report from the Northern Front##9521
		step
			goto Ashenvale,86.8,44.8
			.talk Architect Nemos##17291
			..turnin A Helping Hand##9533
			..accept A Shameful Waste##9517
		step
			goto Ashenvale,87.1,43.5
			.talk Illiyana##3901
			..accept Vile Satyr! Dryads in Danger!##1021
		step
			goto Ashenvale,78.3,44.8
			.talk Anilia##3920
			..turnin Vile Satyr! Dryads in Danger!##1021
			..accept The Branch of Cenarius##1031
		step
			goto Ashenvale,78,42.6
			.from Geltharis##4619
			.get Branch of Cenarius##5461|q 1031/1
		step
			goto Ashenvale,81.3,49.1
			.collect Chalice of Elune##23760|q 9519/1
			.info It's a blue glowing pedestal sitting ont he right side of the red tower thing.
		step
			goto Ashenvale,80.3,49.1
			.collect 5 Satyrnaar Fel Wood##24081|q 9517/2
			.info They look like little bundles of wood on the ground around this area.
		step
			goto Ashenvale,75.3,72.3
			.collect Bottle of Disease##5440|q 1011/1
		step
			goto Ashenvale,61.9,83.9
			.talk Sentinel Farsong##14733
			..turnin Report from the Northern Front##9521
		step
			goto Ashenvale,54.4,35.4
			.from Withered Ancient##3919, Crazed Ancient##3834
			.collect Wooden Key##5475|q 1026
		step
			goto Ashenvale,54.4,35.4
			.collect Iron Shaft##5464|q 1026/1
			.info Open the small chest.
		step
			goto Ashenvale,50.5,39.1
			.' Interact with gameobject: Tome of Mel'Thandris
			.info Through the cave, down the path, sitting on a little round table.
			.' View the Tome of Mel'Thandris|q 1022/1
		step
			goto Ashenvale,53.5,46.3
			.talk Shael'dryn##3916
			..turnin Raene's Cleansing (4)##1026
			..accept Raene's Cleansing (5)##1027
		step
			goto Ashenvale,74.1,73.6
			.from Rotting Slime##3928
			.info Open the chest that appears nearby.
			.collect Iron Pommel##5519|q 1027/1
		step
			goto Ashenvale,53.5,46.3
			.talk Shael'dryn##3916
			..turnin Raene's Cleansing (5)##1027
			.' Watch the dialogue.
			..accept Raene's Cleansing (6)##1028
		step
			goto Ashenvale,56.4,49.2
			.' Interact with gameobject: Hidden Shrine
			.info Follow the path up the mountain. It's a little stone shrine in a hollowed out tree. The path dead ends into the Hidden Shrine.
			..turnin Raene's Cleansing (6)##1028
			..accept Raene's Cleansing (7)##1055
		step
			goto Ashenvale,53.5,46.3
			.talk Shael'dryn##3916
			..turnin Raene's Cleansing (7)##1055
			..accept Raene's Cleansing (8)##1029
		step
			goto Ashenvale,37.4,51.8
			.talk Pelturas Whitemoon##3894
			..turnin Fallen Sky Lake##1035
		step
			goto Ashenvale,36.6,49.6
			.talk Raene Wolfrunner##3691
			..turnin An Aggressive Defense##1025
			..turnin Raene's Cleansing (8)##1029
			..accept Raene's Cleansing (9)##1030
		step
			goto Ashenvale,51.65,75
			.use Dartol's Rod of Transformation##5462
			.' Use Dartol's Rod of Transformation|havebuff INV_Misc_MonsterClaw_04|q 1030
		step
			goto Ashenvale,50.8,75.1
			.talk Krolg##3897
			..turnin Raene's Cleansing (9)##1030
			..accept Raene's Cleansing (10)##1045
		step
			goto Ashenvale,54.7,79.6
			.from Ran Bloodtooth##3696
			.get 1 Ran Bloodtooth's Skull##5388|q 1045/3
			.kill 4 Bloodtooth Guard##3932|q 1045/2
		step
			goto Ashenvale,51.65,75
			.use Dartol's Rod of Transformation##5462
			.' Use Dartol's Rod of Transformation|havebuff INV_Misc_MonsterClaw_04|q 1045
		step
			goto Ashenvale,50.8,75.1
			.talk Krolg##3897
			..turnin Raene's Cleansing (10)##1045
			..accept Raene's Cleansing (11)##1046
		step
			goto Ashenvale,36.6,49.6
			.talk Raene Wolfrunner##3691
			..turnin Raene's Cleansing (11)##1046
		step
			goto 86.4,46.5
			.talk Gnarl##17310
			..accept Reclaiming Felfire Hill##9526
		step
			goto Ashenvale,85.2,44.7
			.talk Kayneth Stillwind##3848
			..turnin Forsaken Diseases##1011
			.' Watch the dialogue.
			..turnin The Lost Chalice##9519
			..accept Insane Druids##1012
		step
			goto Ashenvale,86,44.1
			.talk Sentinel Melyria Frostshadow##3880
			..turnin The Howling Vale##1022
			..accept Velinde Starsong##1037
		step
			goto Ashenvale,86,44.4
			.talk Sentinel Luciel Starwhisper##17287
			..accept Agents of Destruction##9518
		step
			goto Ashenvale,86.5,43.6
			.talk Vindicator Vedaar##17303
			..accept Destroy the Legion##9516
		step
			goto Ashenvale,87.1,43.5
			.talk Illiyana##3901
			..turnin The Branch of Cenarius##1031
			..accept Satyr Slaying!##1032
		step
			goto Ashenvale,79,46.2
			.from Xavian Felsworn##3755, Xavian Betrayer##3754, Xavian Rogue##3752, Xavian Hellcaller##3757
			.get 16 Satyr Horns##5481|q 1032/1
		step
			goto Ashenvale,88.8,59.5
			.kill Overseer Gorthak##17304|q 9518/1
		step
			goto Ashenvale,86.4,52.9
			.collect 15 Warsong Lumber##23776|q 9517/1
			.info The Lumber Piles look like stacked planks of wood around this area.
			.kill 2 Warsong Shredder##11684|q 9518/2
			.kill 5 Horde Deforester##11681|q 9518/3
			.kill 10 Horde Scout##11680|q 9518/4
		step
			goto Ashenvale,83.8,67.7
			.kill 6 Mannoroc Lasher##11697|q 9516/1
			.kill 6 Roaming Felguard##6115|q 9516/2
			.kill 6 Searing Infernal##6073|q 9516/3
			.' Interact with gameobject: Fertile Dirt Mounds
			.' Plant 8 Tree Seedlings|q 9526/1
		step
			goto Ashenvale,83.8,67.7
			.from Searing Infernal##6073, Roaming Felguard##6115, Mannoroc Lasher##11697
			.collect Diabolical Plans##23777|q 9520 |future
		step
			.use Diabolical Plans##23777
			..accept Diabolical Plans##9520
		step
			.' Start to Going Down this tunnel|goto Ashenvale,75.7,75.3,0.3|q 1012
		step
			goto Ashenvale,77.1,74
			.kill Taneel Darkwood##3940|q 1012/1
		step
			.' Jump Down Here|goto Ashenvale,77.44,75.14,0.3|q 1012
		step
			goto Ashenvale,78,72.7
			.kill Uthil Mooncall##3941|q 1012/2
		step
			goto Ashenvale,75.1,74.2
			.kill Mavoris Cloudsbreak##3942|q 1012/3
		step
			goto The Barrens,48.2,19.1
			.from Sarilus Foulborne##3986
			.info At the very top of the mountain.
			.get 1 Sarilus Foulborne's Head##5537|q 1017/1
		step
			goto Ashenvale,49.8,67.2
			.talk Sentinel Velene Starstrike##3885
			..turnin Mage Summoner##1017
		step
			goto Ashenvale,86.4,46.5
			.talk Gnarl##17310
			..turnin A Shameful Waste##9517
			..turnin Reclaiming Felfire Hill##9526
		step
			goto Ashenvale,85.2,44.7
			.talk Kayneth Stillwind##3848
			..turnin Insane Druids##1012
		step
			goto Ashenvale,86,44.1
			.talk Sentinel Luciel Starwhisper##17287
			..turnin Agents of Destruction##9518
		step
			goto Ashenvale,86.5,43.6
			.talk Vindicator Vedaar##17303
			..turnin Destroy the Legion##9516
			..turnin Diabolical Plans##9520
			..accept Never Again!##9522
		step
			goto Ashenvale,87.1,43.5
			.talk Illiyana##3901
			..turnin Satyr Slaying!##1032
		step
			.' Go To Canyon|goto Ashenvale,84.19,71.85,0.3|q 9522
		step
			goto Ashenvale,89.8,76.7
			.kill Gorgannon##17300|q 9522/1
		step
			goto Ashenvale,79,84.7
			.kill Diathorus the Seeker##6072|q 9522/2
		step
			goto Ashenvale,86.5,43.6
			.talk Vindicator Vedaar##17303
			..turnin Never Again!##9522
		step
			goto Darnassus,61.8,39.2
			.talk Thyn'tel Bladeweaver##8026
			..turnin Velinde Starsong##1037
			..accept Velinde's Effects##1038
		step
			goto Darnassus,62.3,83.3
			.collect Velinde's Journal##5520|q 1038/1
		step
			goto Darnassus,61.8,39.2
			.talk Thyn'tel Bladeweaver##8026
			..turnin Velinde's Effects##1038
			..accept The Barrens Port##1039
		step
			goto The Barrens,63.4,38.5
			.talk Wharfmaster Dizzywig##3453
			..turnin The Barrens Port##1039
			..accept Passage to Booty Bay##1040
		step
			.' Ride the boat to Booty Bay|goto Stranglethorn Vale|noway|q 1040
		step
			goto Stranglethorn Vale,27.4,74.1
			.talk Caravaneer Ruzzgot##3945
			..turnin Passage to Booty Bay##1040
			..accept The Caravan Road##1041
		step
			goto Duskwood,72.5,46.9
			.talk Clerk Daltry##267
			..turnin The Caravan Road##1041
			..accept The Carevin Family##1042
		step
			goto Duskwood,75.3,49
			.talk Jonathan Carevin##661
			..turnin The Carevin Family##1042
			..accept The Scythe of Elune##1043
		step
			goto Duskwood,73.5,79.1
			.' Find evidence of the Scythe of Elune|q 1043/1
			.info Interact with Mound of Dirt.
		step
			goto Duskwood,75.3,49
			.talk Jonathan Carevin##661
			..turnin The Scythe of Elune##1043
			..accept Answered Questions##1044
		step
			goto Darnassus,61.8,39.2
			.talk Thyn'tel Bladeweaver##8026
			..turnin Answered Questions##1044
		step
			.' Congratulations! +48 quests for achievement "Loremaster of Kalimdor".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Kalimdor\\[30] The Barrens",[[
author danaton
description This guide contain quest-chain (15 quests) for The Barrens location.
startlevel 30
		step
			goto The Barrens,63.4,38.5
			.talk Wharfmaster Dizzywig##3453
			..accept Miner's Fortune##896
		step
			goto The Barrens,63,37.2
			.talk Sputtervalve##3442
			..accept Samophlange (1)##894
			..accept Ziz Fizziks##1483
		step
			goto The Barrens,62.7,36.2
			.talk Gazlowe##3391
			..accept Southsea Freebooters##887
		step
			goto The Barrens,62.6,37.5
			.' Interact with gameobject: Wanted Poster
			..accept WANTED: Baron Longshore##895
		step
			goto The Barrens,62.4,37.6
			.talk Mebok Mizzyrix##3446
			..accept Raptor Horns##865
			..accept Deepmoss Spider Eggs##1069
		step
			goto The Barrens,63.6,49.15
			.from Baron Longshore##3467
			.get Baron Longshore's Head##5084|q 895/1
			.' Can be spawn here (1)|at 64.2,47.1
			.' Can be spawn here (2)|at 62.6,49.8
		step
			goto The Barrens,64,43.92
			.kill 12 Southsea Brigand##3381|q 887/1
			.kill 6 Southsea Cannoneer##3382|q 887/2
			.' You can find more around (1)|at 63.95,47.37
			.' You can find more around (2)|at 62.8,49.85
		step
			goto The Barrens,62.7,36.2
			.talk Gazlowe##3391
			..turnin Southsea Freebooters##887
			..turnin WANTED: Baron Longshore##895
			..accept The Missing Shipment (1)##890
		step
			goto The Barrens,63.4,38.5
			.talk Wharfmaster Dizzywig##3453
			..turnin The Missing Shipment (1)##890
			..accept The Missing Shipment (2)##892
		step
			goto The Barrens,62.7,36.2
			.talk Gazlowe##3391
			..turnin The Missing Shipment (2)##892
			..accept Stolen Booty##888
		step
			goto The Barrens,63.6,49.3
			.collect Telescopic Lens##5077|q 888/2
		step
			goto The Barrens,62.6,49.6
			.collect Shipment of Boots##5076|q 888/1
		step
			goto The Barrens,62.7,36.2
			.talk Gazlowe##3391
			..turnin Stolen Booty##888
		step
			goto The Barrens,45.5,13.9
			.from Sunscale Scytheclaw##3256
			.get 5 Intact Raptor Horn|q 865/1
			.' You can find more around (1)|at 59.7,8.3
			.' You can find more around (2)|at 61,31.58
		step
			goto The Barrens,61.63,4.5
			.from Venture Co. Enforcer##3283, Venture Co. Overseer##3286
			.get Cats Eye Emerald##5097|q 896/1
		step
			goto The Barrens,56.5,7.5
			.talk Wizzlecrank's Shredder##3439
			..accept Ignition##858
		step
			goto The Barrens,56.3,8.6
			.from Supervisor Lugwizzle##3445
			.get Ignition Key##5050|q 858/1
		step
			goto The Barrens,56.5,7.5
			.talk Wizzlecrank's Shredder##3439
			..turnin Ignition##858
			..accept The Escape##863
		step
			goto The Barrens,55.37,7.73
			.goal Escort Wizzlecrank out of the Venture Co. drill site|q 863/1
		step
			goto The Barrens,52.4,11.6
			.' Interact with gameobject: Control Console.
			..turnin Samophlange (1)##894
			..accept Samophlange (2)##900
		step
			goto The Barrens,52.4,11.4
			.goal Fuel Control Valve|q 900/2
		step
			goto The Barrens,52.3,11.4
			.goal Regulator Valve|q 900/3
		step
			goto The Barrens,52.33,11.57
			.goal Main Control Valve|q 900/1
		step
			goto The Barrens,52.4,11.6
			.' Interact with gameobject: Control Console.
			..turnin Samophlange (2)##900
			..accept Samophlange (3)##901
		step
			goto The Barrens,52.8,10.4
			.from Tinkerer Sniggles##3471
			.get Console Key##5089|q 901/1
		step
			goto The Barrens,52.4,11.6
			.' Interact with gameobject: Control Console.
			..turnin Samophlange (3)##901
			..accept Samophlange (4)##902
		step
			goto Stonetalon Mountains,59,62.6
			.talk Ziz Fizziks##4201
			..turnin Ziz Fizziks##1483
		step
			goto Stonetalon Mountains,53.4,72.6
			.collect 15 Deepmoss Egg##5570|q 1069/1
			.' You can find more eggs around (1)|at 76.3,43.6
			.' You can find more eggs around (2)|at 77.5,52.5
			.' You can find more eggs around (3)|at 70.5,45.8
			.' You can find more eggs around (4)|at 60,49.7
			.' You can find more eggs around (5)|at 45.8,43.4
			.' You can find more eggs around (6)|at 50.8,40.5
		step
			goto The Barrens,62.4,37.6
			.talk Mebok Mizzyrix##3446
			..turnin Raptor Horns##865
			..turnin Deepmoss Spider Eggs##1069
		step
			goto The Barrens,63,37.2
			.talk Sputtervalve##3442
			..turnin The Escape##863
			..turnin Samophlange (4)##902
		step
			goto The Barrens,63.4,38.5
			.talk Wharfmaster Dizzywig##3453
			..turnin Miner's Fortune##896
		step
			.' Congratulations! +15 quests for achievement "Loremaster of Kalimdor".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Kalimdor\\[30] Stonetalon Mountains",[[
author danaton
description This guide contain quest-chain (28 quests) for Stonetalon Mountains location.
startlevel 30
		step
			goto Stormwind,53,86.6
			.talk Collin Mauren##4078
			..accept Retrieval for Mauren##1078
		step
			goto Ashenvale,34.7,48.8
			.talk Shindrell Swiftfire##3845
			..accept Pridewings of Stonetalon##1134
		step
			goto Ashenvale,34.9,49.8
			.talk Sentinel Thenysil##4079
			..accept On Guard in Stonetalon (1)##1070
		step
			goto Ashenvale,35.8,49.1
			.talk Faldreas Goeth'Shael##3996
			..accept Journey to Stonetalon Peak##1056
		step
			.' Follow this tunnel to the very end|goto 42.3,71.1,0.3|q 1070
			only if ZGV.completedQuests[1483]
		step
			goto The Barrens,63,37.2
			.talk Sputtervalve##3442
			..accept Ziz Fizziks##1483
		step
			goto Stonetalon Mountains,59,62.6
			.talk Ziz Fizziks##4201
			..turnin Ziz Fizziks##1483
			..accept Super Reaper 6000##1093
		step
			goto Stonetalon Mountains,59.9,66.8
			.talk Kaela Shadowspear##4080
			..turnin On Guard in Stonetalon (1)##1070
			..accept On Guard in Stonetalon (2)##1085
		step
			goto Stonetalon Mountains,59.5,67.1
			.talk Gaxim Rustfizzle##4077
			..turnin On Guard in Stonetalon (2)##1085
			..accept A Gnome's Respite##1071
		step
			goto Stonetalon Mountains,71.9,60
			.talk Piznik##4276
			..accept Gerenzo's Orders (1)##1090
		step
			.' Keep Piznik safe while he mines the mysterious ore|q 1090/1
		step
			goto Stonetalon Mountains,71.9,60
			.talk Piznik##4276
			..turnin Gerenzo's Orders (1)##1090
			..accept Gerenzo's Orders (2)##1092
		step
			goto Stonetalon Mountains,63.8,53.75
			.from Venture Co. Operator##3988
			.get Super Reaper 6000 Blueprints##5734|q 1093/1
			.' You can find more|at 72.56,56.43
		step
			goto Stonetalon Mountains,61.7,55.5
			.kill 10 Venture Co. Logger##3989|q 1071/1
			.kill 10 Venture Co. Deforester##3991|q 1071/2
		step
			goto Stonetalon Mountains,59,62.6
			.talk Ziz Fizziks##4201
			..turnin Gerenzo's Orders (2)##1092
			..turnin Super Reaper 6000##1093
			..accept Further Instructions (1)##1094
		step
			goto Stonetalon Mountains,59.7,67
			.talk Gaxim Rustfizzle##4077
			..turnin A Gnome's Respite##1071
			..accept An Old Colleague##1072
			..accept A Scroll from Mauren##1075
			..accept Castpipe's Task##2931
		step
			goto Stonetalon Mountains,53.4,42.7
			.from Pridewing Wyvern##4012, Pridewing Consort##4014
			.get 12 Pridewing Venom Sac##5808|q 1134/1
		step
			goto Stonetalon Mountains,37.1,8.1
			.talk Keeper Albagorm##3994
			..turnin Journey to Stonetalon Peak##1056
			..accept Reclaiming the Charred Vale (1)##1057
		step
			goto Stonetalon Mountains,31.3,60.4
			.kill 7 Bloodfury Harpy##4022|q 1057/1
			.kill 7 Bloodfury Ambusher##4025|q 1057/2
		step
			goto Stonetalon Mountains,35.3,67.6
			.kill 7 Bloodfury Slayer##4024|q 1057/3
			.kill 7 Bloodfury Roguefeather##4023|q 1057/4
		step
			goto Stonetalon Mountains,30.9,69.8
			.from Scorched Basilisk##4041, Singed Basilisk##4042, Blackened Basilisk##4044
			.get 8 Crystalized Scales##5675|q 1078/1
		step
			goto Stonetalon Mountains,37.1,8.1
			.talk Keeper Albagorm##3994
			..turnin Reclaiming the Charred Vale (1)##1057
			..accept Reclaiming the Charred Vale (2)##1059
		step
			goto Stonetalon Mountains,36.4,7.2
			.talk Teloren##4407
			.' Fly to Astranaar, Ashenvale|goto Ashenvale|noway|q 1134
		step
			goto Ashenvale,34.7,48.8
			.talk Shindrell Swiftfire##3845
			..turnin Pridewings of Stonetalon##1134
		step
			goto The Barrens,63,37.2
			.talk Sputtervalve##3442
			..turnin Further Instructions (1)##1094
			..accept Further Instructions (2)##1095
		step
			goto Stonetalon Mountains,59,62.6
			.talk Ziz Fizziks##4201
			..turnin Further Instructions (2)##1095
			..accept Gerenzo Wrenchwhistle##1096
		step
			.' Climb up here|goto 69.05,39.95,0.3|q 1096
		step
			goto Stonetalon Mountains,64.5,40.3
			.from Gerenzo Wrenchwhistle##4202
			.get Gerenzo's Mechanical Arm##5736|q 1096/1
		step
			goto Stonetalon Mountains,59,62.6
			.talk Ziz Fizziks##4201
			..turnin Gerenzo Wrenchwhistle##1096
		step
			goto Feralas,89.6,46.6
			.talk Falfindel Waywarder##4048
			..turnin Reclaiming the Charred Vale (2)##1059
		step
			goto Stormwind,53,86.6
			.talk Collin Mauren##4078
			..turnin A Scroll from Mauren##1075
			..turnin Retrieval for Mauren##1078
			..accept Devils in Westfall##1076
		step
			goto Westfall,54.6,41.2
			.from Dust Devil##832
			.get Dust Devil Debris##5669|q 1076/1
			.' You can find more|at 43.71,41.42
			.' You can find more|at 46.05,48.2
		step
			goto Stormwind,53,86.6
			.talk Collin Mauren##4078
			..turnin Devils in Westfall##1076
			..accept Special Delivery for Gaxim##1077
		step
			goto Ironforge,72.1,51.9
			.talk Lomac Gearstrip##4081
			..turnin An Old Colleague##1072
			..accept Ineptitude + Chemicals = Fun (1)##1073
		step
			goto Ironforge,69.8,48.1
			.talk Master Mechanic Castpipe##7950
			..turnin Castpipe's Task##2931
		step
			goto Ironforge,24.2,74.7
			.talk Auctioneer Redmuse##8720
			.buy 4 Minor Mana Potion##2455|q 1073/1
			.buy 2 Elixir of Minor Fortitude##2458|q 1073/2
		step
			goto Ironforge,72.1,51.9
			.talk Lomac Gearstrip##4081
			..turnin Ineptitude + Chemicals = Fun (1)##1073
			..accept Ineptitude + Chemicals = Fun (2)##1074
		step
			goto Stonetalon Mountains,59.7,67
			.talk Gaxim Rustfizzle##4077
			..turnin Ineptitude + Chemicals = Fun (2)##1074
			..turnin Special Delivery for Gaxim##1077
			..accept Covert Ops - Alpha##1079
			..accept Covert Ops - Beta##1080
		step
			goto Stonetalon Mountains,66.1,51.3
			.collect Venture Co. Engineering Plans##5718|q 1079/1
			.info Lying on the crate.
		step
			goto Stonetalon Mountains,74.5,59.3
			.collect Venture Co. Letters##5717|q 1080/1
			.info Lying on the crate.
		step
			goto Stonetalon Mountains,59.7,67
			.talk Gaxim Rustfizzle##4077
			..turnin Covert Ops - Alpha##1079
			..turnin Covert Ops - Beta##1080
			..accept Kaela's Update##1091
		step
			goto Stonetalon Mountains,59.9,66.8
			.talk Kaela Shadowspear##4080
			..turnin Kaela's Update##1091
			..accept Enraged Spirits##1083
			..accept Wounded Ancients##1084
		step
			goto Stonetalon Mountains,33.9,69.9
			.from Charred Ancient##4028, Blackened Ancient##4029, Vengeful Ancient##4030
			.get Corroded Shrapnel##5664|q 1084/1
		step
			goto Stonetalon Mountains,33.9,69.9
			.from Rogue Flame Spirit##4036, Burning Ravager##4037, Burning Destroyer##4038
			.get 8 Smoldering Embers##5659|q 1083/1
		step
			goto Stonetalon Mountains,59.9,66.8
			.talk Kaela Shadowspear##4080
			..turnin Enraged Spirits##1083
			..turnin Wounded Ancients##1084
			..accept Update for Sentinel Thenysil##1082
		step
			goto Ashenvale,34.9,49.8
			.talk Sentinel Thenysil##4079
			..turnin Update for Sentinel Thenysil##1082
			..accept Reception from Tyrande##1081
		step
			goto Darnassus,39.1,81.6
			.talk Tyrande Whisperwind##7999
			..turnin Reception from Tyrande##1081
		step
			.' Congratulations! +28 quests for achievement "Loremaster of Kalimdor".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Kalimdor\\[40] Desolace",[[
author danaton
description This guide contain quest-chain (31 quests) for Desolace location.
startlevel 40
		step
			goto Ironforge,69.9,21.3
			.talk Roetten Stonehammer##5637
			..accept Reclaimers' Business in Desolace##1453
		step
			goto Stormwind,52.6,43.4
			.talk Brother Crowley##12336
			..accept Brother Anton##6141
		step
			goto Desolace,66.44,11.82
			.talk Vahlarriel Demonslayer##5642
			..accept Vahlarriel's Search (1)##1437
		step
			goto Desolace,66.74,10.87
			.talk Corporal Melkins##5752
			..accept Centaur Bounty##1387
		step
			goto Desolace,66.66,10.93
			.talk Captain Pentigast##5396
			..accept Strange Alliance##1382
		step
			goto Desolace,64.66,10.54
			.talk Baritanas Skyriver##6706
			.fpath Nijel's Point, Desolace|q 1453
		step
			goto Desolace,66.20,9.63
			.talk Kreldig Ungor##5638
			..turnin Reclaimers' Business in Desolace##1453
			..accept The Karnitol Shipwreck (1)##1454
			..accept Reagents for Reclaimers Inc. (1)##1458
		step
			goto Desolace,66.5,7.9
			.talk Brother Anton##1182
			..turnin Brother Anton##6141
			..accept Down the Scarlet Path (1)##261
		step
			goto Desolace,75.60,23.34
			.from Hatefury Rogue##4670, Hatefury Trickster##4671, Hatefury Felsworn##4672, Hatefury Betrayer##4673, Hatefury Shadowstalker##4674, Hatefury Hellcaller##4675
			.get 10 Hatefury Claw##6246|q 1458/1
			.get 10 Hatefury Horn##6247|q 1458/2
			.' You can find more around (1)|at 79.65,19.76
			.' You can find more around (2)|at 77.19,15.26
			.' You can find more around (3)|at 72.61,18.28
		step
			goto Desolace,66.20,9.63
			.talk Kreldig Ungor##5638
			..turnin Reagents for Reclaimers Inc. (1)##1458
			..accept Reagents for Reclaimers Inc. (2)##1459
		step
			goto Desolace,56.54,17.83
			.' Interact with gameobject: Malem Chest
			..turnin Vahlarriel's Search (1)##1437
			..accept Vahlarriel's Search (2)##1465
		step
			goto Desolace,62.33,38.98
			.talk Bibbly F'utzbuckle##11438
			..accept Bone Collector##5501
		step
			goto Desolace,38.88,27.17
			.talk Azore Aldamort##11863
			..accept Sceptre of Light##5741
		step
			goto Desolace,36.11,30.45
			.' Interact with gameobject: Karnitol's Chest
			..turnin The Karnitol Shipwreck (1)##1454
			..accept The Karnitol Shipwreck (2)##1455
		step
			goto Desolace,36.07,30.41
			.' Interact with gameobject: Rackmore's Log
			..accept Claim Rackmore's Treasure!##6161
		step
			goto Desolace,32.78,31.37
			.' Kill Drysnap enemies around this area.
			.info They look like lobsters underwater around this area.
			.collect Rackmore's Silver Key##15878|q 6161/1
		step
			goto Desolace,60.86,61.86
			.talk Smeed Scrabblescrew##11596
			..accept Kodo Roundup##5561
		step
			goto Desolace,51.31,58.04
			.collect 10 Kodo Bone##13703|q 5501/1
			.info They look like large white horned animal skulls on the ground around this area.
			.info A Kodo Apparition may appear and attack you.
		step
			goto Desolace,51.41,58.45
			.from Aged Kodo##4700
			.get 3 Aged Kodo Hide##6249|q 1459/2
		step
			goto Desolace,47.8,61.8
			.talk Hornizz Brimbuzzle##6019
			..accept Ghost-o-plasm Round Up##6134
		step
			goto Desolace,54.45,63.19
			.use Kodo Kombobulator##13892
			.info Use it on Kodo enemies around this area.
			.info You can find more all around this bone graveyard area.
			.' Tame 5 Kodos|q 5561/1
			.info You must bring them back to Smeed Scrabblescrew to tame them.
			.info Talk to the kodos after you bring them to Smeed Scrabblescrew.
			.' Bring the Kodos back to|at 60.73,61.96
		step
			goto Desolace,60.86,61.86
			.talk Smeed Scrabblescrew##11596
			..turnin Kodo Roundup##5561
		step
			goto Desolace,70.30,73.77
			.' Kill Magram enemies around this area.
			.info The ones in the outskirts of the village are a bit lower level and easier to grind.
			.info Be careful to avoid the Magram Pack Runners that walk around this area with 2 high level hyena guards.
			.collect 15 Centaur Ear##6067|q 1387/1
		step
			goto Desolace,70.30,73.77
			.' Kill Magram enemies around this area.
			.info The ones in the outskirts of the village are a bit lower level and easier to grind. |notinsticky
			.info Be careful to avoid the Magram Pack Runners that walk around this area with 2 high level hyena guards. |notinsticky
			.' Reach Friendly Reputation with the Gelkis Clan Centaur|q 1382/1
		step
			goto Desolace,64.25,91.40
			.use Crate of Ghost Magnets##15848
			.from Magrami Spectre##11560
			.get 8 Ghost-o-plasm##15849|q 6134/1
		step
			goto Desolace,63,92.1
			.kill 30 Undead Ravager##11561|q 261/1
		step
			goto Desolace,36.23,79.25
			.talk Uthek the Wise##5397
			..turnin Strange Alliance##1382
			..accept Raid on the Kolkar##1384
		step
			goto Desolace,47.8,61.8
			.talk Hornizz Brimbuzzle##6019
			..turnin Ghost-o-plasm Round Up##6134
		step
			goto Desolace,70.54,58.87
			.' Kill Scorpashi enemies around this area.
			.info They look like yellow scorpions.
			.info They share spawn points with basilisk enemies, so kill those too, if you can't find any.
			.collect 7 Scorpashi Venom##6248|q 1459/1
			.' You can find more around (1)|at 68.21,68.45
			.' You can find more around (2)|at 63.87,62.86
			.' You can find more around (3)|at 63.48,69.64
			.' You can find more around (4)|at 56.09,64.83
		step
			goto Desolace,70.03,41.94
			.' Kill Kolkar enemies around this area.
			.collect 10 Crude Charm##6079|q 1384/1
			.' You can find more around (1)|at 72.07,47.01
			.' You can find more around (2)|at 73.61,50.00
		step
			goto Desolace,62.33,38.98
			.talk Bibbly F'utzbuckle##11438
			..turnin Bone Collector##5501
		step
			goto Desolace,66.74,10.87
			.talk Corporal Melkins##5752
			..turnin Centaur Bounty##1387
		step
			goto Desolace,66.20,9.63
			.talk Kreldig Ungor##5638
			..turnin The Karnitol Shipwreck (2)##1455
			..accept The Karnitol Shipwreck (3)##1456
			..turnin Reagents for Reclaimers Inc. (2)##1459
			..accept Reagents for Reclaimers Inc. (3)##1466
		step
			goto Desolace,66.5,7.9
			.talk Brother Anton##1182
			..turnin Down the Scarlet Path (1)##261
			..accept Down the Scarlet Path (2)##1052
		step
			goto Desolace,66.44,11.82
			.talk Vahlarriel Demonslayer##5642
			..turnin Vahlarriel's Search (2)##1465
			..accept Vahlarriel's Search (3)##1438
		step
			goto Desolace,54.86,26.13
			.talk Dalinda Malem##5644
			..turnin Vahlarriel's Search (3)##1438
			..accept Search for Tyranis##1439
		step
			goto Desolace,55.17,30.15
			.from Burning Blade Seer##13019
			.info At the top of the tower.
			.get Sceptre of Light##15750|q 5741/1
		step
			goto Desolace,53.01,29.08
			.from Tyranis Malem##5643
			.info Inside the building.
			.info Try to pull him toward the building entrance, so you don't accidentally aggro other enemies.
			.get Tyranis' Pendant##6767|q 1439/1
		step
			goto Desolace,54.86,26.13
			.talk Dalinda Malem##5644
			.info If she's not here, someone may be escorting her.
			..turnin Search for Tyranis##1439
			..accept Return to Vahlarriel##1440
			.info This is an escort quest.
			.info Kill all enemies in this room before starting the quest.
		step
			goto Desolace,58.26,30.95
			.' Watch the dialogue.
			.info Follow Dalinda Malem and protect her as she walks.
			.info She eventually walks to this location.
			.goal Rescue Dalinda Malem|q 1440/1
		step
			goto Desolace,38.89,27.17
			.talk Azore Aldamort##11863
			..turnin Sceptre of Light##5741
			..accept Book of the Ancients##6027
		step
			goto Desolace,30.75,8.7
			.' Kill Slitherblade enemies around this area.
			.info Underwater.
			.collect Rackmore's Golden Key##15881|q 6161/2
		step
			goto Desolace,28.19,6.62
			.' Interact with gameobject: Serpent Statue
			.from Lord Kragaru##12369
			.get Book of the Ancients##15803|q 6027/1
		step
			goto Desolace,30.00,8.70
			.' Interact with gameobject: Rackmore's Chest
			.info On the ground at the base of the tree.
			turnin Claim Rackmore's Treasure!##6161
		step
			goto Desolace,28.19,6.62
			.' Kill Slitherblade enemies around this area.
			.info Only Slitherblade Tidehunters and Slitherblade Sea Witches will drop the quest item.
			.info They share spawn points with other types of naga on this island.
			.info Kill all types of naga on this island, to try to get more to spawn.
			.collect Karnitol's Satchel##6245|q 1456/1
			.' You can find more underwater around|at 32.18,9.57
		step
			goto Desolace,38.89,27.17
			.talk Azore Aldamort##11863
			..turnin Book of the Ancients##6027
		step
			goto Desolace,53.3,76.6
			.from Mana Eater##4678, Mage Hunter##4681, Ley Hunter##4685
			.get 10 Felhound Brain##6250|q 1466/1
			.from Nether Maiden##4679, Nether Sister##4682, Nether Sorceress##4684
			.get 10 Nether Wing##6251|q 1466/2
			.from Doomwarder Captain##4680
			.get 10 Doomwarder Blood##6252|q 1466/3
		step
			goto Desolace,36.22,79.25
			.talk Uthek the Wise##5397
			..turnin Raid on the Kolkar##1384
			..accept Stealing Supplies##1370
		step
			goto Desolace,70.90,75.47
			.' Interact with gameobject: Sack of Meat
			.info They look like tan leather bags on the ground near the buildings around this area.
			.info Not all of the tan bags you see will be clickable.
			.collect 6 Crudely Dried Meat##6069|q 1370/1
		step
			goto Desolace,36.22,79.25
			.talk Uthek the Wise##5397
			..turnin Stealing Supplies##1370
			..accept Ongeku##1373
		step
			goto Desolace,66.44,11.82
			.talk Vahlarriel Demonslayer##5642
			..turnin Return to Vahlarriel##1440
		step
			goto Desolace,66.20,9.63
			.talk Kreldig Ungor##5638
			..turnin The Karnitol Shipwreck (3)##1456
			..accept The Karnitol Shipwreck (4)##1457
			..turnin Reagents for Reclaimers Inc. (3)##1466
			..accept Reagents for Reclaimers Inc. (4)##1467
		step
			goto Swamp of Sorrows,65.1,22
			.from Ongeku##5622
			.get Draenethyst Shard##6190|q 1373/1
		step
			goto Ironforge,67.91,17.52
			.talk Roetten Stonehammer##5637
			..turnin The Karnitol Shipwreck##1457
			..turnin Reagents for Reclaimers Inc. (4)##1467
		step
			goto Hillsbrad Foothills,51.5,58.4
			.talk Raleigh the Devout##3980
			..turnin Down the Scarlet Path##1052
		step
			goto Desolace,36.22,79.25
			.talk Uthek the Wise##5397
			..turnin Ongeku##1373
			..accept Khan Jehn##1374
		step
			goto Desolace,65.9,80.4
			.from Khan Jehn##5601
			.get Khan Jehn's Head##6072|q 1374/1
		step
			goto Desolace,36.22,79.25
			.talk Uthek the Wise##5397
			..turnin Khan Jehn##1374
			..accept Khan Hratha##1380
		step
			goto Desolace,31.7,61.6
			.from Maraudine Centaur|n
			.collect War Horn Mouthpiece##6074|q 1380
		step
			goto Desolace,29.75,53.20
			.use War Horn Mouthpiece##6074|n
			.from Khan Hratha##5402
			.get Maraudine Key Fragment##6077|q 1380/1
		step
			goto Desolace,33.9,53.5
			.talk Melizza Brimbuzzle##12277
			..accept Get Me Out of Here!##6132
		step
			goto Desolace,40.8,61.3
			.goal Melizza Brimbuzzle escorted to safety|q 6132/1
		step
			goto Desolace,47.8,61.8
			.talk Hornizz Brimbuzzle##6019
			..turnin Get Me Out of Here!##6132
		step
			goto Desolace,36.22,79.25
			.talk Uthek the Wise##5397
			..turnin Khan Hratha##1380
		step
			goto Desolace,66.8,59.1
			.talk Rigger Gizelton##11626
			..accept Gizelton Caravan##5943
			.info Caravan moves along the road.
			.' Caravan position 1|at 65.6,34.9
			.' Caravan position 2|at 67.8,41.3
			.' Caravan position 3|at 66.8,66
			.' Caravan position 4|at 60.8,64.2
			.' Caravan position 5|at 54.5,69.7
			.' Caravan position 6|at 38.4,77.8
		step
			.goal Escort Gizelton Caravan past Mannoroc Coven|q 5943/1
		step
			goto Desolace,60.9,61.9
			.talk Smeed Scrabblescrew##11596
			..turnin Gizelton Caravan##5943
		step
			.' Congratulations! +31 quests for achievement "Loremaster of Kalimdor".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Kalimdor\\[50] Dustwallow Marsh",[[
author danaton
description This guide contain quest-chain (66 quests) for Dustwallow Marsh location.
startlevel 50
		step
			goto Stormwind,51.8,93.6
			.talk Angus Stern##1141
			..accept Morgan Stern##1260
		step
			goto Stormwind,51.1,95.5
			.talk Connor Rivers##5081
			..accept James Hyal (1)##1301
		step
			goto Wetlands,8.4,61.8
			.talk Vincent Hyal##5082
			..turnin James Hyal (1)##1301
			..accept James Hyal (2)##1302
		step
			goto Wetlands,5.05,63.4|n
			.' Ride the boat to Theramore|goto Dustwallow Marsh|q 1302
		step
			goto Dustwallow Marsh,67.9,51.6
			.talk Sergeant Amelyn##23835
			..accept This Old Lighthouse##11191
		step
			goto Dustwallow Marsh,68.3,51.0
			.talk Calia Hastings##23566
			..accept Traitors Among Us##11126
		step
			.talk Deserter Agitator##23602
			.' Expose 5 Deserter Agitators|goal 5 Deserter Agitator Exposed|q 11126/1
		step
			goto Dustwallow Marsh,68.3,51.0
			.talk Calia Hastings##23566
			..turnin Traitors Among Us##11126
			..accept Propaganda War##11128
		step
			goto Dustwallow Marsh,67.9,58.7
			.collect Deserter Propaganda##33008|q 11128/1
			.info A pile of boxes on the bottom deck of the ship in the Captain's quarters.
		step
			goto Dustwallow Marsh,68.3,51.0
			.talk Calia Hastings##23566
			..turnin Propaganda War##11128
			.' Watch the dialogue.
			..accept Discrediting the Deserters##11133
		step
			.talk Theramore Guard##4979
			.' Give them each a flier.
			.' Distribute 6 Leaflets|goal 6 Leaflets Distributed|q 11133/1
		step
			goto Dustwallow Marsh,68.3,51.0
			.talk Calia Hastings##23566
			..turnin Discrediting the Deserters##11133
			..accept The End of the Deserters##11134
		step
			goto Dustwallow Marsh,72,47.1
			.talk Babs Fizzletorque##23892
			..turnin This Old Lighthouse##11191
			..accept Thresher Oil##11192
		step
			goto Dustwallow Marsh,72,50
			.from Young Murk Threshers##4388
			.info Underwater around this area.
			.get 4 Thresher Oil##33126|q 11192/1
		step
			goto Dustwallow Marsh,76.2,57
			.' Fight Gavis Greyshield until he surrenders.
			.info He's downstairs in this ship, in the captain's quarters.
			.goal Gavis Greyshield Captured|q 11134/1
		step
			goto Dustwallow Marsh,72,47.1
			.talk Babs Fizzletorque##23892
			..turnin Thresher Oil##11192
			..accept Dastardly Denizens of the Deep##11193
		step
			goto Dustwallow Marsh,69.1,52.1
			.talk "Dirty" Michael Crowe##23896
			..turnin Dastardly Denizens of the Deep##11193
			..accept Is it Real?##11194
		step
			goto Dustwallow Marsh,68.3,51.0
			.talk Calia Hastings##23566
			..turnin The End of the Deserters##11134
		step
			goto Dustwallow Marsh,68.3,51.8
			.talk Sergeant Amelyn##23835
			..accept The Hermit of Swamplight Manor##11177
		step
			goto Dustwallow Marsh,66.2,46.1
			.talk Guard Byron##4921
			..accept Tabetha's Farm##11212
		step
			goto Dustwallow Marsh,66.3,45.5
			.talk Morgan Stern##4794
			..turnin Morgan Stern##1260
			..accept Mudrock Soup and Bugs##1204
		step
			goto Dustwallow Marsh,65.1,47.1
			.talk Lieutenant Aden##23951
			..accept A Disturbing Development##11136
			..accept Mission to Mudsprocket##11214
		step
			goto Dustwallow Marsh,67.9,48.2
			.talk Clerk Lendry##5083
			..turnin James Hyal (2)##1302
		step
			goto Dustwallow Marsh,68.2,48.6
			.talk Captain Garran Vimes##4944
			..accept Inspecting the Ruins##11123
		step
			goto Dustwallow Marsh,59.8,41.1
			.talk Captain Wymor##5086
			..turnin A Disturbing Development##11136
			..accept Defias in Dustwallow?##11137
		step
			goto Dustwallow Marsh,64.7,41.3
			.from Mudrock Spikeshell##4397
			.get 8 Forked Mudrock Tongue##5883|q 1204/1
		step
			goto Dustwallow Marsh,64,30
			.from Garn Mathers##23679
			.get Defias Orders##33037|q 11137/1
		step
			goto Dustwallow Marsh,59.8,41.1
			.talk Captain Wymor##5086
			..turnin Defias in Dustwallow?##11137
			..accept Renn McGill##11138
		step
			goto Dustwallow Marsh,55.4,26.3
			.talk "Swamp Eye" Jarl##4792
			..turnin The Hermit of Swamplight Manor##11177
			..accept Marsh Frog Legs##1218
		step
			goto Dustwallow Marsh,55.6,26.1
			.talk Mordant Grimsby##23843
			..accept What's Haunting Witch Hill?##11180
		step
			goto Dustwallow Marsh,55.4,25.9
			.' Interact with gameobject: The Loose Dirt.
			.info It looks like a dirt grave next to the small shack.
			..accept The Orc Report##1219
		step
			goto Dustwallow Marsh,55.75,25.7
			.from Giant Marsh Frog##23979
			.get 10 Marsh Frog Leg##33202|q 1218/1
		step
			goto Dustwallow Marsh,55.4,26.3
			.talk "Swamp Eye" Jarl##4792
			..turnin Marsh Frog Legs##1218
			..accept Jarl Needs Eyes##1206
		step
			goto Dustwallow Marsh,55,31
			.from Risen Spirit##23554, Risen Husk##23555
			.' Gather 10 Information|goal 10 Information Gathered|q 11180/1
		step
			goto Dustwallow Marsh,55.4,26.3
			.talk Mordant Grimsby##23843
			..turnin What's Haunting Witch Hill?##11180
			..accept The Witch's Bane##11181
		step
			goto Dustwallow Marsh,56,27
			.collect 9 Witchbane##33112|q 11181/1
			.info They are bright green fern looking plants with a tall pink flower in the middle of them.
		step
			goto Dustwallow Marsh,55.4,26.3
			.talk Mordant Grimsby##23843
			..turnin The Witch's Bane##11181
			..accept Cleansing Witch Hill##11183
		step
			goto Dustwallow Marsh,55.2,26.7
			.use Witchbane Torch##33113
			.info A flying demon will appear.
			.from Zelfrax##23864
			.' Cleanse Witch Hill|goal Witch Hill Cleansed|q 11183/1
		step
			goto Dustwallow Marsh,55.4,26.3
			.talk Mordant Grimsby##23843
			..turnin Cleansing Witch Hill##11183
		step
			goto Dustwallow Marsh,63.7,17
			.talk Renn McGill##23569
			..turnin Renn McGill##11138
			..accept Secondhand Diving Gear##11139
		step
			goto Dustwallow Marsh,62.6,18.2
			.collect Damaged Diving Gear##33038|q 11139/1
		step
			goto Dustwallow Marsh,62.4,18.9
			.collect Tool Kit##33039|q 11139/2
		step
			goto Dustwallow Marsh,63.7,17
			.talk Renn McGill##23569
			..turnin Secondhand Diving Gear##11139
			..accept Recover the Cargo!##11140
		step
			goto Dustwallow Marsh,64.9,19.9
			.' Open Renn's Supplies|use Renn's Supplies##33045
			.' Equip Repaired Diving Gear|use Repaired Diving Gear##33040
			.' Use Salvage Kit on the wreckage for pieces of the cargo|use Salvage Kit##33044|q 11140/1
		step
			goto Dustwallow Marsh,63.7,17
			.talk Renn McGill##23569
			..turnin Recover the Cargo!##11140
			.' Watch the dialogue.
			..accept Jaina Must Know##11141
		step
			goto Dustwallow Marsh,46.7,23.1
			.talk Sergeant Lukas##23723
			..accept Raptor Captor##11146
		step
			goto Dustwallow Marsh,47,19
			.' Fight Bloodfen Screechers and Bloodfen Raptors
			.' Use your Sturdy Rope on the raptors when they are almost dead|use Sturdy Rope##33069
			.info You will see a message in your chat window letting you know when you can capture the raptor. Do not kill the raptors or you won't be able to capture them.
			.' Capture 6 Raptors|goal 6 Raptors Captured|q 11146/1
		step
			goto Dustwallow Marsh,46.9,17.5
			.talk "Stinky" Ignatz##4880
			..accept Stinky's Escape##1222
		step
			goto Dustwallow Marsh,48.8,24.5
			.goal Help Stinky find Bogbean Leaves|q 1222/1
		step
			goto Dustwallow Marsh,46.7,23.1
			.talk Sergeant Lukas##23723
			..turnin Raptor Captor##11146
			..accept Prisoners of the Grimtotems##11145
			..accept Unleash the Raptors##11147
		step
			goto Dustwallow Marsh,41.41,12
			.' Use your Raptor Bait next to the windmill|use Raptor Bait##33070
			.goal Raptors Released|q 11147/1
		step
			goto Dustwallow Marsh,44,16
			.from Grimtotem Breaker##23592
			.collect Grimtotem Key##33061|n
			.' Interact with gameobject: Blackhoof Cages
			.info The Blackhoof Cages are yellow cages around this area.
			.' Free 5 Theramore Prisoners|goal 5 Theramore Prisoners Freed|q 11145/1
		step
			goto Dustwallow Marsh,46.7,23.1
			.talk Sergeant Lukas##23723
			..turnin Unleash the Raptors##11147
			..turnin Prisoners of the Grimtotems##11145
		step
			goto Dustwallow Marsh,35.1,23
			.from Darkmist Spider##4376, Darkmist Hatchling##4377, Darkmist Recluse##4378, Darkmist Silkspinner##4379
			.get 20 Unpopped Darkmist Eye##5884|q 1206/1
		step
			goto Dustwallow Marsh,29.7,47.6
			.talk Inspector Tarem##23567
			..turnin Inspecting the Ruins##11123
		step
			goto Dustwallow Marsh,29.7,47.6
			.' Interact with gameobject: Suspicious Hoofprints
			.info They look like a set of 3 toed tan muddy footprints on the ground next to the path.
			..accept Suspicious Hoofprints##1284
		step
			goto Dustwallow Marsh,29.8,48.3
			.' Interact with gameobject: Theramore Guard Badge
			.info A very tiny grey badge laying on a board ont he floor in the burnt down house.
			..accept Lieutenant Paval Reethe (1)##1252
		step
			goto Dustwallow Marsh,29.6,48.6
			.' Interact with gameobject: Black Shield
			.info Hanging on the brick chimney wall.
			..accept The Black Shield (1)##1253
		step
			goto Dustwallow Marsh,42.3,72.9
			.talk Drazzit Dripvalve##23572
			..turnin Mission to Mudsprocket##11214
		step
			goto Dustwallow Marsh,41.8,73.1
			.' Interact with gameobject: Wanted Poster
			.info To the right of the stairway entrance to the big hut.
			..accept WANTED: Goreclaw the Ravenous##11184
		step
			goto Dustwallow Marsh,41.9,74
			.talk Brogg##23579
			..accept Bloodfen Feathers##11158
		step
			goto Dustwallow Marsh,41.5,73
			.talk Gizzix Grimegurgle##23570
			..accept Catch a Dragon by the Tail##11217
		step
			goto Dustwallow Marsh,46.1,57.4
			.talk Apprentice Morlann##23600
			..accept Direhorn Raiders##11156
			..accept The Zeppelin Crash##11172
		step
			goto Dustwallow Marsh,46.1,57.1
			.talk Tabetha##6546
			..turnin Tabetha's Farm##11212
		step
			goto Dustwallow Marsh,46.1,57.2
			.talk Apprentice Garion##23601
			..accept The Grimtotem Weapon##11169
			..accept The Reagent Thief##11173
		step
			goto Dustwallow Marsh,53.6,56.9
			.talk Moxie Steelgrille##23797
			..turnin The Zeppelin Crash##11172
			..accept Corrosion Prevention##11174
			..accept Secure the Cargo!##11207
		step
			goto Dustwallow Marsh,53,56
			.collect 8 Zeppelin Cargo##33163|q 11207/1
			.info They look like wooden boxes on the ground around this area.
			.' Use your Ooze Buster on oozes|use Ooze Buster##33108
			.info You have to be near a Power Core Fragment (the things that connect lightning to you).
			.' Dissolve 10 Oozes|goal 10 Oozes Dissolved|q 11174/1
		step
			goto Dustwallow Marsh,53.6,56.9
			.talk Moxie Steelgrille##23797
			..turnin Corrosion Prevention##11174
			..turnin Secure the Cargo!##11207
			..accept Delivery for Drazzit##11208
		step
			goto Dustwallow Marsh,58.76,60.17
			.talk Nat Pagle##12919
			..turnin Is it Real?##11194
			..accept Nat's Bargain##11209
		step
			goto Dustwallow Marsh,56.2,62
			.' Use Pagle's Fish Paste, Extra Strength|use Pagle's Fish Paste, Extra Strength##33166
			.' Kill the Lurking Shark that spawns underwater
			.' Test the Fish Paste|goal Fish Paste Tested|q 11209/1
		step
			goto Dustwallow Marsh,58.76,60.17
			.talk Nat Pagle##12919
			..turnin Nat's Bargain##11209
			..accept Oh, It's Real##11210
		step
			goto Dustwallow Marsh,69.7,51.2
			.talk Major Mills##23905
			..turnin Oh, It's Real##11210
			..accept Take Down Tethyr!##11198
		step
			.' A huge monster will spawn in the water.
			.' Run around on the dock clicking the big metal cannons until the big monster dies.
			.goal Defend Theramore Docks from Tethyr|q 11198/1
		step
			goto Dustwallow Marsh,69.7,51.2
			.talk Major Mills##23905
			..turnin Take Down Tethyr!##11198
		step
			goto Dustwallow Marsh,68.2,48.6
			.talk Captain Garran Vimes##4944
			..turnin Lieutenant Paval Reethe (1)##1252
			..accept Lieutenant Paval Reethe (2)##1259
			..turnin The Black Shield (1)##1253
			..accept The Black Shield (2)##1319
			..turnin Suspicious Hoofprints##1284
		step
			goto Dustwallow Marsh,68,48.1
			.talk Adjutant Tesoran##4948
			..turnin Lieutenant Paval Reethe (2)##1259
			..accept Daelin's Men##1285
		step
			goto Dustwallow Marsh,68.2,48.6
			.talk Captain Garran Vimes##4944
			..turnin Daelin's Men##1285
			..accept The Deserters (1)##1286
		step
			goto Dustwallow Marsh,66.3,45.5
			.talk Morgan Stern##4794
			..turnin Mudrock Soup and Bugs##1204
			..accept ...and Bugs##1258
			..turnin Stinky's Escape##1222
		step
			goto Dustwallow Marsh,65.1,47.1
			.talk the Lieutenant Aden##23951
			..turnin The Orc Report##1219
			..accept Captain Vimes##1220
		step
			goto Dustwallow Marsh,66.3,49
			.talk Lady Jaina Proudmoore##4968
			..turnin Jaina Must Know##11141
			..accept Survey Alcaz Island##11142
		step
			goto Dustwallow Marsh,64.8,50.4
			.talk Caz Twosprocket##4941
			..turnin The Black Shield (2)##1319
			..accept The Black Shield (3)##1320
		step
			goto Dustwallow Marsh,68.2,48.6
			.talk Captain Garran Vimes##4944
			..turnin Captain Vimes##1220
			..turnin The Black Shield (3)##1320
		step
			goto Dustwallow Marsh,67.3,51.1
			.talk Cassa Crimsonwing##23704
			.info Use one of her gryphons to survey Alcaz Island.
			.goal Survey Alcaz Island|q 11142/1
		step
			goto Dustwallow Marsh,66.3,49
			.talk Lady Jaina Proudmoore##4968
			..turnin Survey Alcaz Island##11142
		step
			goto Dustwallow Marsh,55.4,26.3
			.talk "Swamp Eye" Jarl##4792
			..turnin Jarl Needs Eyes##1206
			..accept Jarl Needs a Blade##1203
		step
			goto Dustwallow Marsh,58,18.1
			.from Razorspine##23841
			.get Razorspine's Sword##33110|q 1203/1
		step
			goto Dustwallow Marsh,55.4,26.3
			.talk "Swamp Eye" Jarl##4792
			..turnin Jarl Needs a Blade##1203
		step
			goto Dustwallow Marsh,47.2,46.6
			.from Apothecary Cylla##23881
			.collect Sealed Letter##33114|q 11185 |future
		step
			.use Sealed Letter##33114
			..accept The Apothecary's Letter##11185
		step
			goto Dustwallow Marsh,47,50
			.from Grimtotem Destroyer##23594, Grimtotem Earthbinder##23595
			.' Kill 12 Direhorn Grimtotems|goal 12 Direhorn Grimtotems killed|q 11156/1
		step
			goto Dustwallow Marsh,43.8,57
			.' Use your Captured Totem|use Captured Totem##33101
			.from Mottled Drywallow Crocolisks##4344
			.' Perform 10 Totem Tests|goal 10 Totem Tests Performed|q 11169/1
		step
			goto Dustwallow Marsh,41.7,51.4
			.from Darkfang Creepers##4412, Noxious Shredders##4348
			.get 6 Marsh Venom##33103|q 11173/1
		step
			goto Dustwallow Marsh,36.1,54.3
			.' Fight Balos Jacken until he surrenders.
			.talk Balos Jacken##5089
			..turnin The Deserters (1)##1286
			..accept The Deserters (2)##1287
		step
			goto Dustwallow Marsh,45.5,57.8
			.talk Andello Porter##23942
			..turnin The Apothecary's Letter##11185
		step
			goto Dustwallow Marsh,46.1,57.2
			.talk Apprentice Garion##23601
			..turnin The Reagent Thief##11173
			..turnin The Grimtotem Weapon##11169
		step
			goto Dustwallow Marsh,46.1,57.4
			.talk Apprentice Morlann##23600
			..turnin Direhorn Raiders##11156
		step
			goto Dustwallow Marsh,42.3,72.9
			.talk Drazzit Dripvalve##23572
			..turnin Delivery for Drazzit##11208
		step
			goto Dustwallow Marsh,32,65.7
			.kill Goreclaw the Ravenous##23873|q 11184/1
			.info He's a big green raptor standing at the entrance to the cave.
		step
			goto Dustwallow Marsh,35,65
			.from Bloodfen Razormaw##4356, Bloodfen Lashtail##4357
			.get 5 Bloodfen Feather##33085|q 11158/1
		step
			goto Dustwallow Marsh,42.3,72.9
			.talk Drazzit Dripvalve##23572
			..turnin WANTED: Goreclaw the Ravenous##11184
		step
			goto Dustwallow Marsh,41.9,74
			.talk Brogg##23579
			..turnin Bloodfen Feathers##11158
			..accept Banner of the Stonemaul##11160
			..accept The Essence of Enmity##11161
		step
			goto Dustwallow Marsh,39,66
			.from Firemane Scout##4329, Firemane Ash Tail##4331
			.' Use Brogg's Totem on their corpses|use Brogg's Totem##33088
			.get 10 Black Dragonkin Essence##33087|q 11161/1
		step
			goto Dustwallow Marsh,38.1,69.4
			.collect Stonemaul Banner##33086|q 11160/1
			.info It looks like a hanging tiger skin with an eye painted on it inside the cave.
		step
			goto Dustwallow Marsh,41.9,74
			.talk Brogg##23579
			..turnin Banner of the Stonemaul##11160
			..turnin The Essence of Enmity##11161
			..accept Spirits of Stonemaul Hold##11159
		step
			goto Dustwallow Marsh,46,74
			.collect 8 Wyrmtail##33175|q 11217/1
			.info They look like green balls on the ground.
		step
			goto Dustwallow Marsh,46,69
			.' Interact with gameobject: Ogre Remains
			.info They look like big white bones on the ground.
			.from Stonemaul Spirit##23786
			.' Lay 10 Stonemaul Spirits to rest|goal 10 Stonemaul Spirits laid to rest|q 11159/1
		step
			goto Dustwallow Marsh,41.5,73
			.talk Gizzix Grimegurgle##23570
			..turnin Catch a Dragon by the Tail##11217
		step
			goto Dustwallow Marsh,41.9,74
			.talk Brogg##23579
			..turnin Spirits of Stonemaul Hold##11159
			..accept Challenge to the Black Flight##11162
		step
			goto Dustwallow Marsh,52.1,75.8
			.' Use your Stonemaul Banner at the foot of the stone ramp at the entrance to Onyxia's Lair|use Stonemaul Banner##33095
			.' A dragon will appear
			.from Smolderwing##23789
			.' Avenge the Stonemaul Clan|goal Stonemaul Clan Avenged|q 11162/1
		step
			goto Dustwallow Marsh,41.9,74
			.talk Brogg##23579
			..turnin Challenge to the Black Flight##11162
		step
			goto Dustwallow Marsh,68.2,48.6
			.talk Captain Garran Vimes##4944
			..turnin The Deserters (2)##1287
			..accept A Grim Connection##11143
		step
			goto Dustwallow Marsh,46.6,24.6
			.talk Captain Darill##23568
			..turnin A Grim Connection##11143
			..accept Confirming the Suspicion##11144
			..accept Arms of the Grimtotems##11148
		step
			goto Dustwallow Marsh,43.1,15
			.from Grimtotem Elder##23714
			.collect 4 Grimtotem Note##33050|q 11144
		step
			.' Click the Grimtotem Notes in your bags to combine them|use Grimtotem Note##33050
			.collect Grimtotem Battle Plan##33051|q 11144/1
		step
			goto Dustwallow Marsh,43.1,15
			.collect 7 Blackhoof Armaments##33071|q 11148/1
			.info The Blackhoof Armaments look like wooden weapon with huge spears on them around this area.
		step
			goto Dustwallow Marsh,46.6,24.6
			.talk Captain Darill##23568
			..turnin Confirming the Suspicion##11144
			..turnin Arms of the Grimtotems##11148
			..accept Tabetha's Assistance##11149
		step
			goto Dustwallow Marsh,46.1,57.2
			.talk Tabetha##6546
			..turnin Tabetha's Assistance##11149
			..accept Raze Direhorn Post!##11150
		step
			goto Dustwallow Marsh,47.4,47.6
			.' Use Tabetha's Torch inside this tent|use Tabetha's Torch##33072
			.' Burn the East Tent|goal East Tent Burned|q 11150/3
		step
			goto Dustwallow Marsh,47.3,46.6
			.' Use Tabetha's Torch inside this tent|use Tabetha's Torch##33072
			.' Burn the Northeast Tent|goal Northeast Tent Burned|q 11150/2
		step
			goto Dustwallow Marsh,46.6,46
			.' Use Tabetha's Torch inside this tent|use Tabetha's Torch##33072
			.' Burn the North Tent|goal North Tent Burned|q 11150/1
		step
			goto Dustwallow Marsh,46.1,57.2
			.talk Tabetha##6546
			..turnin Raze Direhorn Post!##11150
			..accept Justice for the Hyals##11151
		step
			goto Dustwallow Marsh,68.2,48.6
			.talk Captain Garran Vimes##4944
			..turnin Justice for the Hyals##11151
			..accept Peace at Last##11152
		step
			goto Dustwallow Marsh,63.7,42.8
			.' Use your Wreath in your bags|use Wreath##33082
			.goal Lay the Wreath at the Hyal Family Monument|q 11152/1
			.info It's a big gray tombstone in this graveyard.
		step
			goto Dustwallow Marsh,68.2,48.6
			.talk Captain Garran Vimes##4944
			..turnin Peace at Last##11152
		step
			.' Congratulations! +66 quests for achievement "Loremaster of Kalimdor".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Kalimdor\\[50] Thousand Needles",[[
author danaton
description This guide contain quest-chain (34 quests) for Thousand Needles location.
startlevel 50
		step
			.' It is recommended that you first complete the "Dustwallow Marsh" guide.
			.info Manually skip this step.
		step
			goto Ironforge,67.9,46.1
			.talk Klockmort Spannerspan##6169
			..accept The Brassbolts Brothers##2769
		step
			goto Ironforge,72.7,94
			.talk Pilot Longbeard##2092
			..accept The Brassbolts Brothers##1179
		step
			goto Thousand Needles,30.73,24.35
			.' Interact with object: Henrig Lonebrow's Journal
			.info It looks like a small brown book in a dead dwarf's hand.
			.collect Henrig Lonebrow's Journal##5791|q 1100 |future
		step
			.use Henrig Lonebrow's Journal##5791
			..accept Lonebrow's Journal##1100
		step
			goto Feralas,89.64,46.56
			.talk Falfindel Waywarder##4048
			..turnin Lonebrow's Journal##1100
		step
			goto Thousand Needles,77.79,77.27
			.talk Kravel Koalbeard##4452
			..accept Rocket Car Parts##1110
			..accept Wharfmaster Dizzywig##1111
			..accept Hemet Nesingwary##5762
		step
			goto Thousand Needles,78.06,77.13
			.talk Fizzle Brassbolts##4454
			..accept Salt Flat Venom##1104
		step
			goto Thousand Needles,78.14,77.12
			.talk Wizzle Brassbolts##4453
			..turnin The Brassbolts Brothers##1179
			..turnin The Brassbolts Brothers##2769
			..accept Hardened Shells##1105
		step
			goto Thousand Needles,80.18,75.89
			.talk Pozzik##4630
			..accept Load Lightening##1176
		step
			goto Thousand Needles,81.64,77.95
			.talk Trackmaster Zherin##4629
			..accept A Bump in the Road##1175
		step
			goto Thousand Needles,87.45,65.73
			.from Salt Flats Scavenger##4154, Salt Flats Vulture##4158
			.get 10 Hollow Vulture Bone##5848|q 1176/1
			.' You can find more around (1)|at 75.28,53.62
			.' You can find more around (2)|at 73.95,58.5
			.' You can find more around (3)|at 70.24,62.23
			.' You can find more around (4)|at 71.5,67.5
			.' You can find more around (5)|at 71.6,73.99
		step
			goto Thousand Needles,77.51,87.20
			.kill 6 Saltstone Gazer##4150|q 1175/3
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
			goto Thousand Needles,77.73,59.22
			.kill 10 Saltstone Basilisk##4147|q 1175/1
			.' You can find more around (1)|at 73.41,57.27
			.' You can find more around (2)|at 70.97,66.69
			.' You can find more around (3)|at 77.48,52.40
		step
			goto Thousand Needles,77.51,87.20
			.kill 10 Saltstone Crystalhide##4151|q 1175/2
		step
			goto Thousand Needles,83.06,61.38
			.collect 30 Rocket Car Parts##5798|q 1110/1
			.info They look like various machine parts scattered on the ground.
			.info You can find them all throughout the Shimmering Flats.
			.' You can find more around (1)|at 77.95,53.29
			.' You can find more around (2)|at 73.56,56.98
			.' You can find more around (3)|at 71.30,66.70
			.' You can find more around (4)|at 77.61,68.70
		step
			goto Thousand Needles,81.63,77.95
			.talk Trackmaster Zherin##4629
			..turnin A Bump in the Road##1175
		step
			goto Thousand Needles,80.18,75.89
			.talk Pozzik##4630
			..turnin Load Lightening##1176
			..accept Goblin Sponsorship (1)##1178
		step
			goto Thousand Needles,78.14,77.12
			.talk Wizzle Brassbolts##4453
			..turnin Hardened Shells##1105
			..accept Encrusted Tail Fins##1107
		step
			goto Thousand Needles,78.06,77.13
			.talk Fizzle Brassbolts##4454
			..turnin Salt Flat Venom##1104
			..accept Martek the Exiled##1106
		step
			goto Thousand Needles,77.79,77.27
			.talk Kravel Koalbeard##4452
			..turnin Rocket Car Parts##1110
		step
			goto The Barrens,62.7,36.2
			.talk Gazlowe##3391
			..turnin Goblin Sponsorship (1)##1178
			..accept Goblin Sponsorship (2)##1180
		step
			goto The Barrens,63.4,38.5
			.talk Wharfmaster Dizzywig##3453
			..turnin Wharfmaster Dizzywig##1111
			..accept Parts for Kravel##1112
		step
			goto Thousand Needles,77.79,77.27
			.talk Kravel Koalbeard##4452
			..turnin Parts for Kravel##1112
			..accept Delivery to the Gnomes##1114
		step
			goto Thousand Needles,78.1,77.1
			.talk Fizzle Brassbolts##4454
			..turnin Delivery to the Gnomes##1114
		step
			goto Thousand Needles,77.79,77.27
			.talk Kravel Koalbeard##4452
			..accept The Rumormonger##1115
		step
			goto Dustwallow Marsh,66.3,45.5
			.talk Morgan Stern##4794
			..accept ...and Bugs##1258
			.info You need complete guide: Dustwallow Marsh
		step
			goto Stranglethorn Vale,26.3,73.6
			.talk Wharfmaster Lozgil##4631
			..turnin Goblin Sponsorship (2)##1180
			..accept Goblin Sponsorship (3)##1181
		step
			goto Stranglethorn Vale,27.1,77.2
			.talk Crank Fizzlebub##2498
			..accept Zanzil's Secret##621
		step
			goto Stranglethorn Vale,26.9,77.2
			.talk Krazek##773
			..turnin The Rumormonger##1115
			..accept Dream Dust in the Swamp##1116
			..accept Investigate the Camp##201
			..accept The Haunted Isle##616
		step
			goto Stranglethorn Vale,27.2,76.9
			.talk Baron Revilgaz##2496
			..turnin The Haunted Isle##616
			..accept The Stone of the Tides##578
			..turnin Goblin Sponsorship (3)##1181
			..accept Goblin Sponsorship (4)##1182
		step
			goto Stranglethorn Vale,40,58.24
			.from Zanzil Zombie##1488, Zanzil Naga##1491
			.get 12 Zanzil's Mixture##4016|q 621/1
			.' You can find more around (1)|at 34.12,51.96
		step
			goto Stranglethorn Vale,24.7,24.3
			.from Saltscale Warrior##871, Saltscale Oracle##873, Saltscale Hunter##879
			.get 10 Encrusted Tail Fin##5796|q 1107/1
		step
			goto Stranglethorn Vale,21.4,23.35
			.goal Locate the haunted island|q 578/1
		step
			goto Stranglethorn Vale,42.6,18.4
			.kill Foreman Cozzle##4723|n
			.collect Cozzle's Key##5851|q 1182
		step
			goto Stranglethorn Vale,43.3,20.3
			.info Open Cozzle's Footlocker in hut.
			.collect Fuel Regulator Blueprints##5852|q 1182/1
		step
			goto Stranglethorn Vale,35.7,10.8
			.goal Locate the hunters' camp|q 201/1
		step
			goto Stranglethorn Vale,35.7,10.8
			.talk Hemet Nesingwary Jr.##715
			..turnin Hemet Nesingwary##5762
		step
			goto Swamp of Sorrows,14.6,59.6
			.from Adolescent Whelp##740, Dreaming Whelp##741
			.get 10 Speck of Dream Dust##5803|q 1116/1
		step
			goto Swamp of Sorrows,96,46.3
			.from Silt Crawler##922, Monstrous Crawler##1088
			.get 12 Pristine Crawler Leg##5938|q 1258/1
		step
			goto Stranglethorn Vale,27.1,77.2
			.talk Crank Fizzlebub##2498
			..turnin Zanzil's Secret##621
		step
			goto Stranglethorn Vale,26.9,77.2
			.talk Krazek##773
			..turnin Investigate the Camp##201
			..turnin Dream Dust in the Swamp##1116
			..accept Rumors for Kravel##1117
		step
			goto Stranglethorn Vale,27.2,76.9
			.talk Baron Revilgaz##2496
			..turnin The Stone of the Tides##578
			..turnin Goblin Sponsorship (4)##1182
			..accept Goblin Sponsorship (5)##1183
		step
			goto Dustwallow Marsh,66.3,45.5
			.talk Morgan Stern##4794
			..turnin ...and Bugs##1258
		step
			goto Thousand Needles,77.79,77.27
			.talk Kravel Koalbeard##4452
			..turnin Rumors for Kravel##1117
			..accept Back to Booty Bay##1118
		step
			goto Thousand Needles,78.14,77.12
			.talk Wizzle Brassbolts##4453
			..turnin Encrusted Tail Fins##1107
		step
			goto Thousand Needles,80.18,75.89
			.talk Pozzik##4630
			..turnin Goblin Sponsorship (5)##1183
			..accept The Eighteenth Pilot##1186
		step
			goto Thousand Needles,80.3,76.1
			.talk Razzeric##4706
			..turnin The Eighteenth Pilot##1186
			..accept Razzeric's Tweaking##1187
		step
			goto Dustwallow Marsh,54.1,56.5
			.collect Seaforium Booster##5862|q 1187/1
			.info Open Gizmorium Shipping Crate.
		step
			goto Stranglethorn Vale,27.1,77.2
			.talk Crank Fizzlebub##2498
			..turnin Back to Booty Bay##1118
			..accept Zanzil's Mixture and a Fool's Stout##1119
		step
			goto Thousand Needles,77.79,77.27
			.talk Kravel Koalbeard##4452
			..turnin Zanzil's Mixture and a Fool's Stout##1119
			..accept Get the Gnomes Drunk##1120
		step
			goto Thousand Needles,77.6,76.9
			.talk Gnome Pit Boss##4495
			..turnin Get the Gnomes Drunk##1120
		step
			goto Thousand Needles,77.79,77.27
			.talk Kravel Koalbeard##4452
			..accept Report Back to Fizzlebub##1122
		step
			goto Thousand Needles,80.3,76.1
			.talk Razzeric##4706
			..turnin Razzeric's Tweaking##1187
			..accept Safety First (1)##1188
		step
			goto Tanaris,51,27.2
			.talk Shreev##4708
			..turnin Safety First (1)##1188
			..accept Safety First (2)##1189
		step
			goto Thousand Needles,80.3,76.1
			.talk Razzeric##4706
			..turnin Safety First (2)##1189
		step
			goto Stranglethorn Vale,27.1,77.2
			.talk Crank Fizzlebub##2498
			..turnin Report Back to Fizzlebub##1122
		step
			goto Badlands,42.2,52.7
			.talk Martek the Exiled##4618
			..turnin Martek the Exiled##1106
			..accept Indurium##1108
		step
			goto Badlands,50.6,69.1
			.from Stonevault Bonesnapper##2893
			.get 10 Indurium Flake##5797|q 1108/1
		step
			goto Badlands,42.2,52.7
			.talk Martek the Exiled##4618
			..turnin Indurium##1108
			..accept News for Fizzle##1137
		step
			goto Thousand Needles,78.06,77.13
			.talk Fizzle Brassbolts##4454
			..turnin News for Fizzle##1137
		step
			goto Thousand Needles,80.18,75.89
			.talk Pozzik##4630
			..accept Keeping Pace##1190
		step
			goto Thousand Needles,77.2,77.4
			.' Interact with gameobject: Rizzle's Unguarded Plans
			..turnin Keeping Pace##1190
			..accept Rizzle's Schematics##1194
		step
			goto Thousand Needles,80.18,75.89
			.talk Pozzik##4630
			..turnin Rizzle's Schematics##1194
		step
			.' Congratulations! +34 quests for achievement "Loremaster of Kalimdor" and +5 quests for achievement "Loremaster of Eastern Kingdoms".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Kalimdor\\[50] Tanaris",[[
author danaton
description This guide contain quest-chain (27 quests) for Tanaris location.
startlevel 50
		step
			goto Stranglethorn Vale,26.9,77.2
			.talk Krazek##773
			..accept Tran'rek##2864
		step
			goto Stranglethorn Vale,27.8,77.1
			.talk Sea Wolf MacKinley##2501
			..accept Stoley's Debt##2872
		step
			goto Tanaris,51.57,26.76
			.talk Tran'rek##7876
			..turnin Tran'rek##2864
			..accept Thistleshrub Valley##3362
			..accept Super Sticky##4504
		step
			goto Tanaris,51.84,27.02
			.' Interact with gameobject: Wanted Poster
			..accept WANTED: Caliph Scorpidsting##2781
			..accept WANTED: Andre Firebeard##2875
		step
			goto Tanaris,52.82,27.40
			.talk Andi Lynn##11758
			..accept The Dunemaul Compound##5863
		step
			goto Tanaris,52.48,28.44
			.talk Spigot Operator Luglunket##7408
			..accept Water Pouch Bounty##1707
		step
			goto Tanaris,52.46,28.51
			.talk Chief Engineer Bilgewhizzle##7407
			..accept Wastewander Justice##1690
		step
			goto Tanaris,51.81,28.66
			.talk Marin Noggenfogger##7564
			..accept The Thirsty Goblin##2605
		step
			goto Tanaris,50.21,27.48
			.talk Senior Surveyor Fizzledowser##7724
			..accept Gadgetzan Water Survey##992
		step
			goto Tanaris,66.56,22.27
			.talk Haughty Modiste##15165
			..accept Pirate Hats Ahoy!##8365
		step
			goto Tanaris,66.99,22.36
			.talk Yeh'kinya##8579
			..accept Screecher Spirits##3520
		step
			goto Tanaris,67.06,23.89
			.talk Security Chief Bilgewhizzle##7882
			..accept Southsea Shakedown##8366
		step
			goto Tanaris,67.11,23.98
			.talk Stoley##7881
			..turnin Stoley's Debt##2872
			..accept Stoley's Shipment##2873
		step	
			.from Caliph Scorpidsting##7847
			.info He walks in a counter-clockwise pattern, so this path will help you find him faster.
			.info He walks with 2 stealthed guards with him, so be careful.
			.get 1 Caliph Scorpidsting's Head##8723|q 2781/1
			.' Path-Marker (1)|at 63.84,31.89
			.' Path-Marker (2)|at 63.30,37.23
			.' Path-Marker (3)|at 62.29,37.83
			.' Path-Marker (4)|at 59.52,41.19
			.' Path-Marker (5)|at 58.71,38.17
			.' Path-Marker (6)|at 61.87,33.42
		step
			goto Tanaris,73.37,47.14
			.from Andre Firebeard##7883
			.info Try to pull him away to fight him alone.
			.get Firebeard's Head##9246|q 2875/1
		step
			goto Tanaris,72.19,46.77
			.collect Stoley's Shipment##9244|q 2873/1
			.info Upstairs inside the building.
		step
			goto Tanaris,73.26,46.42
			.kill 10 Southsea Pirate##7855|q 8366/1
			.kill 10 Southsea Freebooter##7856|q 8366/2
			.kill 10 Southsea Dock Worker##7857|q 8366/3
			.' You can find more around|at 72.29,44.64
		step
			goto Tanaris,75.19,45.96
			.kill 10 Southsea Swashbuckler##7858|q 8366/4
			.' You can find more in the buildings around|at 72.96,47.07
		step
			goto Tanaris,73.26,46.42
			.' Kill Southsea enemies around this area.
			.collect 20 Southsea Pirate Hat##20519|q 8365/1
			.' You can find more around|at 72.29,44.64
		step
			goto Tanaris,73.26,46.42
			.' Kill Southsea enemies around this area.
			.collect Pirate's Footlocker##9276 |n
			.use Pirate's Footlocker##9276
			.collect Ship Schedule##9250|q 2876 |future
			.info It may take a long time to get it, but it is a good grind to do to get a lot of extra xp built up.
			.' You can find more around|at 72.29,44.64
		step
			.use the Ship Schedule##9250
			..accept Ship Schedules##2876
		step
			goto Tanaris,59.82,24.34
			.kill 10 Wastewander Bandit##5618|q 1690/1
			.kill 10 Wastewander Thief##5616|q 1690/2
			.' You can find more around|at 63.51,30.31
		step
			goto Tanaris,59.82,24.34
			.from Wastewander Thief##5616, Wastewander Bandit##5618
			.get 5 Wastewander Water Pouch##8483|q 1707/1
			.info Be careful not to accidentally sell these to a vendor.
			.' You can find more around|at 63.51,30.31
		step
			goto Tanaris,67.06,23.89
			.talk Security Chief Bilgewhizzle##7882
			..turnin WANTED: Andre Firebeard##2875
			..turnin Southsea Shakedown##8366
			..turnin Ship Schedules##2876
		step
			goto Tanaris,67.11,23.98
			.talk Stoley##7881
			..turnin Stoley's Shipment##2873
			..accept Deliver to MacKinley##2874
		step
			goto Tanaris,66.56,22.27
			.talk Haughty Modiste##15165
			..turnin Pirate Hats Ahoy!##8365
		step
			goto Tanaris,52.48,28.44
			.talk Spigot Operator Luglunket##7408
			..turnin Water Pouch Bounty##1707
		step
			goto Tanaris,52.46,28.51
			.talk Chief Engineer Bilgewhizzle##7407
			..turnin Wastewander Justice##1690
			..turnin WANTED: Caliph Scorpidsting##2781
			..accept More Wastewander Justice##1691
		step
			goto Tanaris,39.09,29.17
			.use the Untapped Dowsing Widget##8584
			.info Use it in the water.
			.info Once you get the Tapped Dowsing Widget, run away to safety immediately.
			.info Multiple higher level enemies appear after using the item.
			.collect Tapped Dowsing Widget##8585|q 992/1
		step
			goto Tanaris,52.71,45.93
			.talk Marvon Rivetseeker##7771
			..accept Gahz'ridian##3161
		step
			goto Tanaris,40.45,72.67
			.collect 30 Gahz'ridian Ornament##8443|q 3161/1
			.info They look like small piles of sand on the ground around this area.
			.' You can find more around (1)|at 46.96,65.87
			.' You can find more around (2)|at 53,44
		step
			goto Tanaris,41.50,57.81
			.kill Gor'marok the Ravager##12046|q 5863/3
			.info Inside the small cave.
		step
			goto Tanaris,40.45,72.67
			.kill 10 Dunemaul Brute##5474|q 5863/1
			.kill 10 Dunemaul Enforcer##5472|q 5863/2
			.' You can find more around (1)|at 46.96,65.87
			.' You can find more around (2)|at 40.04,55.70
		step
			goto Tanaris,29.97,66.48
			.from Thistleshrub Dew Collector##5481
			.get Laden Dew Gland##8428|q 2605/1
			.' You can find more around (1)|at 28.18,64.79
			.' You can find more around (2)|at 30.54,64.66
		step
			goto Tanaris,29.97,66.48
			.kill 8 Gnarled Thistleshrub##5490|q 3362/1
			.kill 8 Thistleshrub Rootshaper##5485|q 3362/2
			.' You can find more around (1)|at 28.18,64.79
			.' You can find more around (2)|at 30.54,64.66
		step
			goto Tanaris,52.71,45.93
			.talk Marvon Rivetseeker##7771
			..turnin Gahz'ridian##3161
		step
			goto Tanaris,60.87,32.74
			.kill 8 Wastewander Rogue##5615|q 1691/1
			.info They are stealthed around this area.
			.kill 6 Wastewander Assassin##5623|q 1691/2
			.kill 10 Wastewander Shadow Mage##5617|q 1691/3
			.' You can find more around (1)|at 61.84,34.67
			.' You can find more around (2)|at 59.99,37.02
			.' You can find more around (3)|at 58.85,36.63
			.' You can find more around (4)|at 58.81,39.22
			.' You can find more around (5)|at 60.52,39.06
			.' You can find more around (6)|at 63.40,37.65
			.' You can find more around (7)|at 64.43,39.57
			.' You can find more around (8)|at 65.32,36.89
		step
			goto Tanaris,51.81,28.66
			.talk Marin Noggenfogger##7564
			..turnin The Thirsty Goblin##2605
			..accept In Good Taste##2606
		step
			goto Tanaris,52.46,28.51
			.talk Chief Engineer Bilgewhizzle##7407
			..turnin More Wastewander Justice##1691
		step
			goto Tanaris,52.82,27.40
			.talk Andi Lynn##11758
			..turnin The Dunemaul Compound##5863
		step
			goto Tanaris,51.57,26.76
			.talk Tran'rek##7876
			..turnin Thistleshrub Valley##3362
		step
			goto Tanaris,51.06,26.87
			.talk Sprinkle##7583
			..turnin In Good Taste##2606
			..accept Sprinkle's Secret Ingredient##2641
		step
			goto Tanaris,50.21,27.48
			.talk Senior Surveyor Fizzledowser##7724
			..turnin Gadgetzan Water Survey##992
			..accept Noxious Lair Investigation##82
		step
			goto Tanaris,35.74,42.06
			.' Kill Centipaar enemies around this area.
			.collect 5 Centipaar Insect Parts##8587|q 82/1
		step
			goto Tanaris,28.5,63.1
			.talk Tooga##5955
			.info He looks like a turtle that walks around this area.
			.info This is an escort quest.
			.info If you can't find him, someone may be escorting him.
			.info Just keep grinding enemies around this area until you find him.
			..accept Tooga's Quest##1560
			.' You can find more around (1)|at 29.97,66.48
			.' You can find more around (2)|at 30.54,64.66
			.' You can find more around (3)|at 31.79,74.15
			.' You can find more around (4)|at 29.58,74.73
		step
			goto Tanaris,66.57,25.67
			.' Lead Tooga to Torta|q 1560/1
			.info He will follow you.
			.info Protect Tooga as you walk, and try to stay fairly close to him.
			.info If you get too far away from him, you will fail the quest.
			.info Torta looks like a turtle that walks around this area.
		step
			goto Tanaris,66.57,25.67
			.talk Torta##6015
			..turnin Tooga's Quest##1560
		step
			goto Tanaris,50.89,26.96
			.talk Alchemist Pestlezugg##5594
			..turnin Noxious Lair Investigation##82
		step
			goto Tanaris,50.21,27.48
			.talk Senior Surveyor Fizzledowser##7724
			..accept The Scrimshank Redemption##10
		step
			goto Tanaris,55.97,71.18
			.collect Scrimshank's Surveying Gear##8593|q 10/1
			.info Inside the cave.
		step
			.use the OOX-17/TN Distress Beacon##8623
			..accept Find OOX-17/TN!##351
		step
			goto Tanaris,60.23,64.72
			.talk Homing Robot OOX-17/TN##7784
			..turnin Find OOX-17/TN!##351
			..accept Rescue OOX-17/TN!##648
		step
			goto Tanaris,61.3,53.84
			.goal Escort OOX-17/TN to safety|q 648/1
		step
			goto Tanaris,50.21,27.48
			.talk Senior Surveyor Fizzledowser##7724
			..turnin The Scrimshank Redemption##10
			..accept Insect Part Analysis (1)##110
		step
			goto Tanaris,50.89,26.96
			.talk Alchemist Pestlezugg##5594
			..turnin Insect Part Analysis (1)##110
			..accept Insect Part Analysis (2)##113
		step
			goto Tanaris,50.21,27.48
			.talk Senior Surveyor Fizzledowser##7724
			..turnin Insect Part Analysis (2)##113
			..accept Rise of the Silithid##162
		step
			goto Un'Goro Crater,59.96,30.56
			.from Tar Beast##6517, Tar Lurker##6518, Tar Lord##6519, Tar Creeper##6527
			.get 12 Super Sticky Tar##11834|q 4504/1
			.' You can find more around (1)|at 59.75,24.49
			.' You can find more around (2)|at 63.54,23.41
		step
			goto Tanaris,51.57,26.76
			.talk Tran'rek##7876
			..turnin Super Sticky##4504
		step
			goto Stranglethorn Vale,28.4,76.4
			.talk Oglethorpe Obnoticus##7406
			..turnin Rescue OOX-17/TN!##648
		step
			goto Stranglethorn Vale,27.8,77.1
			.talk Sea Wolf MacKinley##2501
			..turnin Deliver to MacKinley##2874
		step
			goto Darnassus,41.8,85.6
			.talk Gracina Spiritmight##7740
			..turnin Rise of the Silithid##162
		step
			.' Congratulations! +27 quests for achievement "Loremaster of Kalimdor".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Kalimdor\\[50] Feralas",[[
author danaton
description This guide contain quest-chain (54 quests) for Feralas location.
startlevel 50
		step
			.' First you need to complete the Tanaris quest chain.
			.info Skip the step manually.
		step
			goto Stormwind,61.2,70.7
			.talk Auctioneer Jaxon##15659
			.buy 2 Elixir of Fortitude##3825|q 3842/1 |future
		step
			goto Stormwind,56.4,74.1
			.talk Crier Goodman##2198
			..accept Feathermoon Stronghold##7494
		step
			goto Stormwind,69.50,40.40
			.talk Brohann Caskbelly ##5384
			..accept In Search of The Temple##1448
			.info Dungeon: The Sunken Temple Quest Chain.
		step
			goto Swamp of Sorrows,70.00,53.20
			.goal Search for the Temple of Atal'Hakkar|q 1448/1
			.info Dungeon: The Sunken Temple Quest Chain.
		step
			goto Stormwind,69.50,40.40
			.talk Brohann Caskbelly ##5384
			..turnin In Search of The Temple##1448
			..accept To The Hinterlands##1449
			.info Dungeon: The Sunken Temple Quest Chain.
		step
			goto Tanaris,52.35,26.91
			.talk Curgle Cranklehop##7763
			..accept Handle With Care##3022
		step
			goto Tanaris,52.4,27
			.' Interact with gameobject: Egg-O-Matic
			.accept The Super Egg-O-Matic##2741
		step
			goto Tanaris,51.1,26.9
			.talk Sprinkle##7583
			..accept Sprinkle's Secret Ingredient##2641
		step
			goto Tanaris,66.98,22.38
			.talk Yeh'kinya##8579
			..accept Screecher Spirits##3520
			.info Dungeon: Zul'Farrak Quest Chain.
		step
			goto Feralas,65.94,45.65
			.talk Kindal Moonweaver##7956
			..accept Freedom for All Creatures##2969
		step
			goto Feralas,66.67,46.75
			.' Open Cage Door.
			.info Follow the Captured Sprite Darters and protect them.
			.info You have to make sure at least 6 of them survive.
			.info HURRY! You must complete the quest and turn it in before the timer ends.
			.' Save at Least 6 Sprite Darters from Capture|q 2969/1
		step
			goto Feralas,65.94,45.65
			.talk Kindal Moonweaver##7956
			.info HURRY! You must turn it in before the timer ends.
			..turnin Freedom for All Creatures##2969
		step
			goto Feralas,65.95,45.61
			.talk Jer'kai Moonweaver##7957
			..accept Doling Justice (1)##2970
		step
			goto Feralas,66.89,46.43
			.kill 12 Grimtotem Naturalist##7726|q 2970/1
			.kill 10 Grimtotem Raider##7725|q 2970/2
			.kill 6 Grimtotem Shaman##7727|q 2970/3
			.' You can find more around (1)|at 68.71,47.04
			.' You can find more around (2)|at 69.59,39.44
			.' Up the path|at 68.26,39.25
		step
			goto Feralas,65.95,45.61
			.talk Jer'kai Moonweaver##7957
			..turnin Doling Justice (1)##2970
			..accept Doling Justice (2)##2972
		step
			goto Feralas,46.26,40.14
			.from Vale Screecher##5307, Rogue Vale Screecher##5308
			.info Vale Screechers and Rogue Vale Screechers will count for the quest.
			.info They look like thin flying dragons.
			.use Yeh'kinya's Bramble##10699
			.info Use it on their corpses.
			.talk Screecher Spirit##8612+
			.info They appear after using Yeh'kinya's Bramble on the corpses.
			.collect 3 Screecher Spirits|q 3520/1
			.' You can find more around (1)|at 45.86,37.59
			.' You can find more around (2)|at 44.46,36.19
			.' You can find more around (3)|at 42.49,36.47
			.' You can find more around (4)|at 46.6,48.2
			.info Dungeon: Zul'Farrak Quest Chain.
		step
			goto Feralas,44.8,43.4
			.talk Zorbin Fandazzle##14637
			..accept Zapped Giants##7003
			..accept Fuel for the Zapping##7721
		step
			goto Feralas,46.3,58.14
			.from Deep Strider##5360, Wave Strider##5361
			.use Zorbin's Ultra-Shrinker##18904|q 7003/1
			.' You can find more around (1)|at 37.8,36.3
		step
			goto Feralas,47,56.9
			.from Sea Elemental##5461, Sea Spray##5462
			.get 10 Water Elemental Core##18958|q 7721/1
			.' You can find more around (1)|at 48.47,51.45
		step
			goto Feralas,44.8,43.4
			.talk Zorbin Fandazzle##14637
			..turnin Zapped Giants##7003
			..turnin Fuel for the Zapping##7721
		step
			goto Feralas,31.78,45.50
			.talk Troyas Moonbreeze##7764
			..accept In Search of Knowledge##2939
		step
			goto Teldrassil,55.50,92.05
			.talk Erelas Ambersky##7916
			..turnin Handle With Care##3022
		step
			goto Teldrassil,55.41,92.23
			.talk Daryn Lightwind##7907
			..turnin In Search of Knowledge##2939
		step
			goto Teldrassil,55.22,91.46
			.' Interact with book: "Feralas: A History"
			..accept Feralas: A History##2940
		step
			goto Teldrassil,55.41,92.23
			.talk Daryn Lightwind##7907
			..turnin Feralas: A History##2940
			..accept The Borrower##2941
		step
			goto Darnassus,39.10,81.59
			.talk Tyrande Whisperwind##7999
			..turnin Doling Justice (2)##2972
		step
			goto Feralas,65.9,45.7
			.talk Kindal Moonweaver##7956
			..accept An Orphan Looking For a Home##3841
		step
			goto Thousand Needles,78.3,74.7
			.talk Quentin##9238
			..turnin An Orphan Looking For a Home##3841
			..accept A Short Incubation##3842
		step
			goto Stormwind,61.2,70.7
			.talk Auctioneer Jaxon##15659
			.buy 2 Elixir of Fortitude##3825|q 3842/1
		step
			goto Thousand Needles,78.3,74.7
			.talk Quentin##9238
			..turnin A Short Incubation##3842
			..accept The Newest Member of the Family##3843
		step
			goto Tanaris,52.4,26.9
			.talk Curgle Cranklehop##7763
			..turnin The Borrower##2941
			..accept The Super Snapper FX##2944
		step
			goto Tanaris,66.98,22.38
			.talk Yeh'kinya##8579
			..turnin Screecher Spirits##3520
			.info Dungeon: Zul'Farrak Quest Chain.
		step
			goto The Hinterlands,11.80,46.75
			.talk Falstad Wildhammer##5635
			..turnin To The Hinterlands##1449
			..accept Gryphon Master Talonaxe##1450
			.info Dungeon: The Sunken Temple Quest Chain.
		step
			goto The Hinterlands,09.75,44.47
			.talk Gryphon Master Talonaxe##5636
			..turnin Gryphon Master Talonaxe##1450
			..accept Rhapsody Shindigger##1451
			.info Dungeon: The Sunken Temple Quest Chain.
		step
			goto The Hinterlands,14.2,43.6
			.talk Agnar Beastamer##9660
			..turnin The Newest Member of the Family##3843
			..accept Food for Baby##4297
		step
			goto The Hinterlands,27.00,48.50
			.talk Rhapsody Shindigger##5634
			..turnin Rhapsody Shindigger##1451
			..accept Rhapsody's Kalimdor Kocktail##1452
			.info Dungeon: The Sunken Temple Quest Chain.
		step
			goto The Hinterlands,41,59.8
			.collect Violet Tragan##8526|q 2641/1
			.info Purple mushroom underwater.
		step
			goto The Hinterlands,67,50.4
			.from Silvermane Stalker##2926
			.get 5 Silvermane Stalker Flank##11472|q 4297/1
		step
			goto The Hinterlands,80.1,58.4
			.from Gammerita##7977
			.use Super Snapper FX##9328|q 2944/1
		step
			goto The Hinterlands,14.2,43.6
			.talk Agnar Beastamer##9660
			..turnin Food for Baby##4297
			..accept Becoming a Parent##4298
			..turnin Becoming a Parent##4298
		step
			goto Teldrassil,55.4,92.2
			.talk Daryn Lightwind##7907
			..turnin The Super Snapper FX##2944
			..accept Return to Troyas##2943
		step
			goto Feralas,30.63,42.71
			.talk Pratt McGrubben##7852
			..accept The Mark of Quality##2821
		step
			goto Feralas,30.38,46.17
			.talk Latronicus Moonspear##7877
			..accept The Missing Courier (1)##4124
			..turnin Feathermoon Stronghold##7494
		step
			goto Feralas,30.28,46.17
			.talk Shandris Feathermoon##3936
			..accept The Ruins of Solarsal##2866
		step
			goto Feralas,31.83,45.61
			.talk Angelas Moonbreeze##7900
			..accept The High Wilderness##2982
			..accept The Sunken Temple##3445
		step
			goto Feralas,31.8,45.5
			.talk Troyas Moonbreeze##7764
			..turnin Return to Troyas##2943
			..accept The Stave of Equinex##2879
		step
			goto Feralas,31.86,45.13
			.talk Ginro Hearthkindle##7880
			..turnin The Missing Courier (1)##4124
			..accept The Missing Courier (2)##4125
		step
			goto Feralas,26.32,52.34
			.' Interact with gameobject: Solarsal Gazebo
			.info You have to be standing inside of it to be able to click it.
			..turnin The Ruins of Solarsal##2866
			..accept Return to Feathermoon Stronghold##2867
		step
			goto Feralas,30.28,46.17
			.talk Shandris Feathermoon##3936
			..turnin Return to Feathermoon Stronghold##2867
			..accept Against the Hatecrest (1)##3130
		step
			goto Feralas,30.38,46.17
			.talk Latronicus Moonspear##7877
			..turnin Against the Hatecrest (1)##3130
			..accept Against the Hatecrest (2)##2869
		step
			goto Feralas,28.66,53.05
			.from Hatecrest Warrior##5331, Hatecrest Wave Rider##5332, Hatecrest Screamer##5335, Hatecrest Siren##5337
			.get 10 Hatecrest Naga Scale##9247|q 2869/1
			.' You can find more around|at 26.21,51.95
		step
			goto Feralas,30.38,46.17
			.talk Latronicus Moonspear##7877
			..turnin Against the Hatecrest (2)##2869
			..accept Against Lord Shalzaru##2870
		step
			goto Feralas,28.49,70.45
			.from Lord Shalzaru##8136
			.info Inside the cave.
			.get Mysterious Relic##9248|q 2870/1
		step
			goto Feralas,26.09,67.26
			.' Kill enemies around this area.
			.info Inside and outside the cave.
			.info Any enemy in Feralas can drop this item.
			.collect OOX-22/FE Distress Beacon##8705|q 2766 |future
		step
			.use the OOX-22/FE Distress Beacon##8705
			..accept Find OOX-22/FE!##2766
		step
			goto Feralas,45.45,64.97
			.' Interact with gameobject: Wrecked Row Boat
			.info Underwater.
			.info You will make it out of the Fatigue zone shortly after.
			..turnin The Missing Courier##4125
			..accept Boat Wreckage##4127
		step
			goto Feralas,31.86,45.13
			.talk Ginro Hearthkindle##7880
			..turnin Boat Wreckage##4127
			..accept The Knife Revealed##4129
		step
			goto Feralas,30.38,46.17
			.talk Latronicus Moonspear##7877
			..turnin Against Lord Shalzaru##2870
			..accept Delivering the Relic##2871
		step
			goto Feralas,30.08,45.06
			.talk Vestia Moonspear##7878
			..turnin Delivering the Relic##2871
		step
			goto Feralas,32.45,43.79
			.talk Quintis Jonespyre##7879
			..turnin The Knife Revealed##4129
		step
			goto Feralas,32.45,43.79
			.' Watch the dialogue.
			.talk Quintis Jonespyre##7879
			..accept Psychometric Reading##4130
		step
			goto Feralas,31.86,45.13
			.talk Ginro Hearthkindle##7880
			..turnin Psychometric Reading##4130
			..accept The Woodpaw Gnolls##4131
		step
			goto Feralas,53.35,55.70
			.talk Homing Robot OOX-22/FE##7807
			.info This NPC offers an escort quest.
			.info If it's not here, someone may be escorting it.
			.info Wait until it respawns.
			..turnin Find OOX-22/FE!##2766
			..accept Rescue OOX-22/FE!##2767
		step
			goto Feralas,55.62,51.37
			.goal Escort OOX-22/FE to safety|q 2767/1
		step
			goto Feralas,56.20,57.02
			.from Feral Scar Yeti##5292, Enraged Feral Scar##5295
			.info They look like yetis.
			.get 10 Thick Yeti Hide##8973|q 2821/1
			.' You can find more through in cave|at 53.15,56.25
		step
			goto Feralas,54.6,75.8
			.collect Hippogryph Egg##8564|q 2741 |future
			.' You can find more|at 58,76.3
		step
			goto Feralas,59.67,66.85
			.kill 8 Gordunni Shaman##5236|q 2982/2
			.info They share spawn points with the other ogres, so kill those too, if you can't find any.
		step
			goto Feralas,59.22,64.15
			.kill 8 Gordunni Warlock##5240|q 2982/1
			.' You can find more around|at 61.03,55.64
		step
			goto Feralas,61.00,55.61
			.kill 8 Gordunni Brute##5232|q 2982/3
			.' You can find more around|at 59.28,63.51
		step
			goto Feralas,60.27,60.56
			.from Ironfur Bear##5268
			.info They look like bears.
			.get 3 Ironfur Liver##6258|q 1452/2
			.' You can find more around (1)|at 58.52,60.59
			.' You can find more around (2)|at 57.74,56.51
			.info Dungeon: The Sunken Temple Quest Chain.
		step
			goto Feralas,60.27,60.56
			.from Groddoc Ape##5260
			.info They look like gorillas.
			.get 3 Groddoc Liver##6259|q 1452/3
			.' You can find more around (1)|at 58.52,60.59
			.' You can find more around (2)|at 57.74,56.51
			.info Dungeon: The Sunken Temple Quest Chain.
		step
			goto Feralas,73.31,56.31
			.' Interact with gameobject: Large Leather Backpacks
			..turnin The Woodpaw Gnolls##4131
			..accept The Writhing Deep##4135
		step
			.use Undelivered Parcel##11463
			..accept Thalanaar Delivery##4281
		step
			goto Feralas,72.08,63.75
			.' Interact with gameobject: Zukk'ash Pod
			..turnin The Writhing Deep##4135
			..accept Freed from the Hive##4265
		step
			goto Feralas,72.08,63.81
			.' Watch the dialogue.
			.info Inside the cave.
			.' Free Raschal|q 4265/1
		step
			goto Feralas,89.64,46.57
			.talk Falfindel Waywarder##4048
			..turnin Thalanaar Delivery##4281
		step
			goto Feralas,30.63,42.71
			.talk Pratt McGrubben##7852
			..turnin The Mark of Quality##2821
			..accept Improved Quality##7733
		step
			goto Feralas,31.83,45.61
			.talk Angelas Moonbreeze##7900
			..turnin The High Wilderness##2982
		step
			goto Feralas,31.86,45.13
			.talk Ginro Hearthkindle##7880
			..turnin Freed from the Hive##4265
			..accept A Hero's Welcome##4266
		step
			goto Feralas,30.28,46.17
			.talk Shandris Feathermoon##3936
			..turnin A Hero's Welcome##4266
			..accept Rise of the Silithid##4267
		step
			goto Feralas,52.73,31.76
			.from Rage Scar Yeti##5296, Ferocious Rage Scar##5299
			.get 10 Rage Scar Yeti Hide##18947|q 7733/1
		step
			goto Feralas,53.3,31.8
			.from Rage Scar Yeti##5296, Ferocious Rage Scar##5299
			.collect Pristine Yeti Hide##18969|q 7735 |future
		step
			.use Pristine Yeti Hide##18969
			..accept Pristine Yeti Hide##7735
		step
			goto Feralas,42.4,22
			.talk Rockbiter##7765
			..accept The Giant Guardian##2844
		step
			goto Feralas,38.53,15.75
			.collect 1 Byltan Essence##9258|q 2879
		step
			goto Feralas,40.5,12.7
			.collect 1 Samha Essence##9257|q 2879
		step
			goto Feralas,39.9,9.4
			.collect 1 Imbel Essence##9256|q 2879
		step
			goto Feralas,37.8,12.2
			.collect 1 Lahassa Essence##9255|q 2879
		step
			goto Feralas,38.8,13.2
			.use Troyas' Stave##9263|q 2879/1
		step
			goto Feralas,38.8,13.2
			.' Interact with gameobject: Equinex Monolith
			..turnin The Stave of Equinex##2879
			..accept The Morrow Stone##2942
		step
			goto Feralas,38.2,10.3
			.talk Shay Leafrunner##7774
			..turnin The Giant Guardian##2844
			..accept Wandering Shay##2845
		step
			goto Feralas,38.3,10.3
			.collect 1 Shay's Bell##9189|q 2845/2
			.info Open Shay's Chest.
		step
			goto Feralas,42.4,22
			.use Shay's Bell##9189
			.goal Take Shay Leafrunner to Rockbiter's camp|q 2845/1
		step
			goto Feralas,42.4,22
			.talk Rockbiter##7765
			..turnin Wandering Shay##2845
		step
			goto Feralas,31.8,45.5
			.talk Troyas Moonbreeze##7764
			..turnin The Morrow Stone##2942
		step
			goto Feralas,30.63,42.71
			.talk Pratt McGrubben##7852
			..turnin Improved Quality##7733
			..turnin Pristine Yeti Hide##7735
		step
			goto Darnassus,41.85,85.62
			.talk Gracina Spiritmight##7740
			..turnin Rise of the Silithid##4267
			..accept March of the Silithid##4493
		step
			goto Tanaris,50.9,27
			.talk Alchemist Pestlezugg##5594
			..turnin March of the Silithid##4493
			..accept Bungle in the Jungle##4496
		step
			goto Tanaris,51.1,26.9
			.talk Sprinkle##7583
			..turnin Sprinkle's Secret Ingredient##2641
			..accept Delivery for Marin##2661
		step
			goto Tanaris,52.4,27
			.' Interact with gameobject: Egg-O-Matic
			..turnin The Super Egg-O-Matic##2741
		step
			goto Tanaris,51.8,28.7
			.talk Marin Noggenfogger##7564
			..turnin Delivery for Marin##2661
			..accept Noggenfogger Elixir##2662
			..turnin Noggenfogger Elixir##2662
		step
			goto Tanaris,45.20,37.93
			.from Roc##5428, Fire Roc##5429, Searing Roc##5430
			.get 3 Roc Gizzard|q 1452/1
			.info Dungeon: The Sunken Temple Quest Chain.
		step
			goto Tanaris,52.7,45.9
			.talk Marvon Rivetseeker##7771
			..turnin The Sunken Temple##3445
		step
			goto Un'Goro Crater,45.5,14.2
			.collect 5 Un'Goro Soil##11018|q 4496/2
			.' You can find more around (1)|at 49.7,15.9
			.' You can find more around (2)|at 54.7,16.2
			.' You can find more around (3)|at 42.4,16.2
			.' You can find more around (4)|at 45.4,24.4
			.' You can find more around (5)|at 38.1,23.2
		step
			goto Un'Goro Crater,50.4,78.1
			.from Gorishi Wasp##6551, Gorishi Worker##6552, Gorishi Reaver##6553
			.get 1 Gorishi Scent Gland##11837|q 4496/1
		step
			goto Tanaris,50.9,27
			.talk Alchemist Pestlezugg##5594
			..turnin Bungle in the Jungle##4496
			..accept Pawn Captures Queen##4507
		step
			goto Un'Goro Crater,43.53,81.07
			.use Gorishi Queen Lure##11833
			.from Gorishi Hive Queen##10041
			.get 1 Gorishi Queen Brain##11835|q 4507/1
		step
			goto Tanaris,50.9,27
			.talk Alchemist Pestlezugg##5594
			..turnin Pawn Captures Queen##4507
			..accept Calm Before the Storm (1)##4508
		step
			goto Stranglethorn Vale,28.4,76.4
			.talk Oglethorpe Obnoticus##7406
			..turnin Rescue OOX-22/FE!##2767
		step
			goto The Hinterlands,27.00,48.50
			.talk Rhapsody Shindigger##5634
			..turnin Rhapsody's Kalimdor Kocktail##1452
			.' Wait Rhapsod Drink Event.
			..accept Rhapsody's Tale##1469
			.info Dungeon: The Sunken Temple Quest Chain.
		step
			goto Stormwind,69.5,40.4
			.talk Brohann Caskbelly##5384
			..turnin Rhapsody's Tale##1469
			.info Dungeon: The Sunken Temple Quest Chain.
		step
			goto Darnassus,41.8,85.6
			.talk Gracina Spiritmight##7740
			..turnin Calm Before the Storm (1)##4508
			..accept Calm Before the Storm (2)##4510
		step
			goto Darnassus,39.4,42.4
			.talk Idriana##4155
			..turnin Calm Before the Storm (2)##4510
		step
			.' Congratulations! +54 quests for achievement "Loremaster of Kalimdor" and +6 quests for achievement "Loremaster of Eastern Kingdoms".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Kalimdor\\[60] Felwood",[[
author danaton
description This guide contain quest-chain (21 quests) for Felwood location.
startlevel 60
		step
			goto Ironforge,75.77,23.37
			.talk Laris Geardawdle##9616
			..accept A Little Slime Goes a Long Way (1)##4512
		step
			.' Open Container in your bag|use Package of Empty Ooze Containers##11912
			.collect 6 Empty Cursed Ooze Jar##11914|q 4512
			.collect 6 Empty Tainted Ooze Jar##11948|q 4512
		step
			goto Felwood,53.82,86.71
			.talk Arathandris Silversky##9528
			..accept Cleansing Felwood##4101
		step
			goto Felwood,51.21,82.11
			.talk Greta Mosshoof##10922
			..accept Forces of Jaedenar##5155
		step
			goto Felwood,51.35,81.51
			.talk Eridan Bluewind##9116
			..accept The Corruption of the Jadefire##4421
		step
			goto Felwood,41.22,71.29
			.kill Cursed Ooze##7086|n
			.use Empty Cursed Ooze Jar##11914
			.info Use them on their corpses.
			.collect 6 Filled Cursed Ooze Jar##11947|q 4512/1
			.' You can find more around (1)|at 38.97,72.26
			.' You can find more around (2)|at 40.06,67.15
			.' You can find more around (3)|at 41.93,67.38
		step
			goto Felwood,32.24,67.10
			.kill Xavathras##9454|q 4421/4
		step
			goto Felwood,32.90,66.62
			.kill 11 Jadefire Felsworn##7109|q 4421/1
			.' You can find more around (1)|at 41.87,85.18
			.kill 9 Jadefire Shadowstalker##7110|q 4421/2
			.info They are stealthed around this area.
			.kill 9 Jadefire Rogue##7106|q 4421/3
			.' You can find more around (2)|at 37.36,67.64
		step
			goto Felwood,40.76,59.25
			.kill Tainted Ooze##7092|n
			.use Empty Tainted Ooze Jar##11948
			.info Use them on their corpses.
			.collect 6 Filled Tainted Ooze Jar##11949|q 4512/2
			.' You can find more around|at 40.28,55.59
		step
			goto Felwood,38.87,58.49
			.kill 4 Jaedenar Hound##7125|q 5155/1
			.kill 4 Jaedenar Guardian##7113|q 5155/2
			.kill 6 Jaedenar Adept##7115|q 5155/3
			.kill 6 Jaedenar Cultist##7112|q 5155/4
			.info You can find more in the caves nearby in this area.
			.' You can find more around (1)|at 37.87,60.72
			.' You can find more around (2)|at 35.12,60.26
		step
			goto Felwood,51.21,82.11
			.talk Greta Mosshoof##10922
			..turnin Forces of Jaedenar##5155
			..accept Collection of the Corrupt Water##5157
		step
			goto Felwood,51.35,81.51
			.talk Eridan Bluewind##9116
			..turnin The Corruption of the Jadefire##4421
			..accept Further Corruption##4906
		step
			goto Felwood,50.89,81.62
			.talk Taronn Redfeather##10921
			..accept Verifying the Corruption##5156
		step
			goto Felwood,50.93,85.01
			.talk Grazle##11554
			..accept Timbermaw Ally##8460
		step
			goto Felwood,48.32,92.99
			.kill 6 Deadwood Warrior##7153|q 8460/1
			.kill 6 Deadwood Pathfinder##7155|q 8460/2
			.kill 6 Deadwood Gardener##7154|q 8460/3
			.' You can find more around (1)|at 46.51,88.13
			.' You can find more around (2)|at 48.77,89.62
		step
			goto Felwood,50.93,85.02
			.talk Grazle##11554
			..turnin Timbermaw Ally##8460
			..accept Speak to Nafien##8462
		step
			goto Felwood,48.32,92.99
			.from Deadwood Warrior##7153, Deadwood Gardener##7154, Deadwood Pathfinder##7155
			.' Reach Unfriendly Reputation with the Timbermaw Hold Faction|condition rep("Timbermaw Hold")==Unfriendly
			.info You are about to go through a long tunnel soon, full of level 52-54 enemies.
			.info If you are not at least Unfriendly with this faction, you will be attacked.
			.' You can find more around (1)|at 46.51,88.13
			.' You can find more around (2)|at 48.77,89.62
		step
			goto Felwood,35.20,59.87
			.use the Empty Canteen##12922
			.collect Corrupt Moonwell Water##12907|q 5157/1
		step
			goto Felwood,41.54,42.98
			.' Explore the Craters in Shatter Scar Vale|q 5156/1
			.info Be careful to avoid the elite Infernal Sentries around this area.
		step
			goto Felwood,41.36,41.19
			.kill 2 Entropic Beast##9878|q 5156/2
			.kill 2 Entropic Horror##9879|q 5156/3
			.info Be careful to avoid the elite Infernal Sentries around this area.
			.' You can find more around|at 43.63,40.55
		step
			goto Felwood,39.07,22.35
			.kill Xavaric##10648|q 4906/4
			.collect Flute of Xavaric##11668|q 939 |future
		step
			.use Flute of Xavaric##11668
			..accept Flute of Xavaric##939
		step
			goto Felwood,40.73,19.72
			.kill 8 Jadefire Hellcaller##7111|q 4906/1
			.kill 8 Jadefire Betrayer##7108|q 4906/2
			.kill 8 Jadefire Trickster##7107|q 4906/3
			.collect 5 Jadefire Felbind##11674|q 939/1
			.info They share spawn points with the others, so kill those also, if you can't find any.
			.' You can find more around (1)|at 42.87,15.21
			.' You can find more around (2)|at 39.10,21.69
		step
			goto Felwood,55.78,16.85
			.from Warpwood Moss Flayer##7100, Warpwood Shredder##7101
			.info Inside and outside the cave.
			.get 15 Blood Amber##11503|q 4101/1
		step
			goto Felwood,51.21,82.11
			.talk Greta Mosshoof##10922
			..turnin Collection of the Corrupt Water##5157
			..accept Seeking Spiritual Aid##5158
		step
			goto Felwood,51.35,81.51
			.talk Eridan Bluewind##9116
			..turnin Flute of Xavaric##939
			..turnin Further Corruption##4906
			..accept Felbound Ancients##4441
		step
			goto Felwood,50.89,81.62
			.talk Taronn Redfeather##10921
			..turnin Verifying the Corruption##5156
		step
			goto Felwood,53.82,86.71
			.talk Arathandris Silversky##9528
			..turnin Cleansing Felwood##4101 
		step
			goto Felwood,53.82,86.71
			.talk Arathandris Silversky##9528
			.' Tell her "I need a Cenarion beacon."
			.collect Cenarion Beacon##11511|q 5882 |future
		step
			goto Felwood,48.32,92.99
			.from Deadwood Warrior##7153, Deadwood Gardener##7154, Deadwood Pathfinder##7155
			.collect 6 Corrupted Soul Shard##11515|q 5882 |future
			.' You can find more around (1)|at 46.51,88.13
			.' You can find more around (2)|at 48.77,89.62
		step
			goto Felwood,53.82,86.71
			.talk Arathandris Silversky##9528
			..accept Salve via Hunting##4103|instant
		step
			goto Darnassus,39.51,83.92
			.use Eridan's Vial##11682
			.info Inside the building.
			.collect Vial of Blessed Water##5646|q 4441/1
		step
			goto The Barrens,65.83,43.78
			.talk Islen Waterseer##5901
			..turnin Seeking Spiritual Aid##5158
			..accept Cleansed Water Returns to Felwood##5159
		step
			goto Felwood,51.21,82.11
			.talk Greta Mosshoof##10922
			..turnin Cleansed Water Returns to Felwood##5159
			..accept Dousing the Flames of Protection##5165
		step
			goto Felwood,51.35,81.51
			.talk Eridan Bluewind##9116
			..turnin Felbound Ancients##4441
			..accept Purified!##4442
			.' Watch the dialogue.
			..turnin Purified!##4442
		step
			goto Felwood,35.85,61.25|n
			.' Move towards the cave|goto 35.85,61.25,0.5 |q 5165
		step
			goto Felwood,36.27,56.29
			.' Interact with gameobject: Brazier of Pain
			.info Downstairs inside the cave, on the top level.
			.' Extinguish the Brazier of Pain|q 5165/1
		step
			goto Felwood,36.48,55.18
			.' Interact with gameobject: Brazier of Hatred
			.info Downstairs inside the cave, on the top level.
			.' Extinguish the Brazier of Hatred|q 5165/4
		step
			goto Felwood,36.73,53.26
			.' Interact with gameobject: Brazier of Suffering
			.info Downstairs inside the cave, on the bottom level.
			.' Extinguish the Brazier of Suffering|q 5165/3
		step
			goto Felwood,37.7,52.7
			.' Interact with gameobject: Brazier of Malice
			.info Downstairs inside the cave, on the bottom level.
			.' Extinguish the Brazier of Malice|q 5165/2
		step
			goto Felwood,36.29,55.96
			.from Jaedenar Enforcer##7114, Jaedenar Darkweaver##7118, Jaedenar Warlock##7120, Jaedenar Legionnaire##9862
			.info All around inside the cave, on both levels.
			.info Once you get this item, you will accept a quest from it that you will turn in on the top level of the cave.
			.collect Blood Red Key##13140|q 5202 |future
		step
			.use the Blood Red Key##13140
			..accept A Strange Red Key##5202
		step
			goto Felwood,36.21,55.50
			.talk Captured Arko'narin##11016
			.info Downstairs inside the cave, on the top level.
			..turnin A Strange Red Key##5202
			..accept Rescue From Jaedenar##5203
		step
			.' Protect Arko'narin out of Shadow Hold|q 5203/1
		step
			goto Felwood,51.21,82.11
			.talk Greta Mosshoof##10922
			..turnin Dousing the Flames of Protection##5165
			..accept A Final Blow##5242
		step
			goto Felwood,51.3,82
			.talk Jessir Moonbow##11019
			..turnin Rescue From Jaedenar##5203
			..accept Retribution of the Light##5204
		step
			goto Felwood,38.49,59.35|n
			.' Move forward from here|goto 38.49,59.35,0.5 |q 5204
		step
			goto Felwood,35.45,59.64|n
			.' Go down into the already familiar cave|goto 35.45,59.64,0.5 |q 5204
		step
			goto Felwood,38.27,50.55
			.kill Rakaiah##9518|q 5204/1
		step
			goto Felwood,38.5,50.4
			.talk Remains of Trey Lightforge##11020
			..turnin Retribution of the Light##5204
			..accept The Remains of Trey Lightforge##5385
		step
			goto Felwood,38.85,46.8
			.kill Moora##9861|q 5242/1
			.kill Salia##9860|q 5242/2
			.from Shadow Lord Fel'dan##9517
			.get Shadow Lord Fel'dan's Head##13207|q 5242/3
		step
			goto Felwood,51.21,82.11
			.talk Greta Mosshoof##10922
			..turnin A Final Blow##5242
		step
			goto Felwood,51.3,82
			.talk Jessir Moonbow##11019
			..turnin The Remains of Trey Lightforge##5385
		step
			goto Felwood,49.55,29.65
			.use Flute of the Ancients##11445
			.info Use to see Arei.
			.talk Arei##9598
			..accept Ancient Spirit##4261
		step
			.goal Help Arei get to Safety|q 4261/1
		step
			goto Felwood,64.77,8.13
			.talk Nafien##15395
			..turnin Speak to Nafien##8462
			..accept Deadwood of the North##8461
		step
			goto Felwood,63.08,8.82
			.kill 6 Deadwood Den Watcher##7156|q 8461/1
			.kill 6 Deadwood Avenger##7157|q 8461/2
			.kill 6 Deadwood Shaman##7158 |q 8461/3 |goto 63.08,8.82
			.' You can find more around (1)|at 60.37,8.40
			.' You can find more around (2)|at 60.18,6.14
			.' You can find more around (3)|at 62.67,12.48
		step
			goto Felwood,64.77,8.13
			.talk Nafien##15395
			..turnin Deadwood of the North##8461
			..accept Speak to Salfa##8465
		step
			goto Winterspring,27.74,34.50
			.talk Salfa##11556
			..turnin Speak to Salfa##8465
		step
			goto Ashenvale,85.2,44.7
			.talk Kayneth Stillwind##3848
			..turnin Ancient Spirit##4261
		step
			goto Ironforge,75.77,23.37
			.talk Laris Geardawdle##9616
			..turnin A Little Slime Goes a Long Way (1)##4512
		step
			.' Congratulations! +21 quests for achievement "Loremaster of Kalimdor".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Kalimdor\\[60] Un'Goro Crater",[[
author danaton
description This guide contain quest-chain (46 quests) for Un'Goto Crater location.
startlevel 60
		step
			.' First you need to complete Felwood Quest Guide.
		step
			goto Ironforge,75.77,23.37
			.talk Laris Geardawdle##9616
			..accept A Little Slime Goes a Long Way (2)##4513
		step
			.use Bag of Empty Ooze Containers##11955
			.collect 10 Empty Pure Sample Jar##11953|q 4513 |future
		step
			goto Ironforge,24.2,74.7
			.talk Auctioneer Redmuse##8720
			.buy 1 Mithril Casing##10561|future |q 4244
			.info Don't Selling!
		step
			goto Darnassus,67.4,15.6
			.talk Innkeeper Saelienne##6735
			..accept Assisting Arch Druid Staghelm##3763
		step
			goto Darnassus,34.8,9.3
			.talk Arch Druid Fandral Staghelm##3516
			..turnin Assisting Arch Druid Staghelm##3763
			..accept Un'Goro Soil##3764
		step
			goto The Barrens,62.4,38.7
			.talk Liv Rizzlefix##8496
			..accept Volcanic Activity##4502
		step
			goto Tanaris,51.57,26.76
			.talk Tran'rek##7876
			..accept Super Sticky##4504
		step
			goto Un'Goro Crater,71.64,75.96
			.talk Torwa Pathfinder##9619
			..accept The Apes of Un'Goro##4289
			..accept The Fare of Lar'korwi##4290
		step
			goto Un'Goro Crater,63.02,68.50
			.' Interact with gameobject: A Wrecked Raft
			..accept It's a Secret to Everybody (1)##3844
		step
			goto Un'Goro Crater,63.12,69.02
			.' Interact with gameobject: A Small Pack
			.info Underwater.
			..turnin It's a Secret to Everybody (2)##3844
			..accept It's a Secret to Everybody (3)##3845
		step
			.use A Small Pack##11107
			.collect Large Compass##11104|q 3845/1
			.collect Curled Map Parchment##11105|q 3845/2
			.collect Lion-headed Key##11106|q 3845/3
		step
			goto Un'Goro Crater,68.75,56.66
			.collect Piece of Threshadon Carcass##11504|q 4290/1
			.info Avoid the elite t-rex that sometimes walks near this location.
		step
			goto Un'Goro Crater,71.64,75.97
			.talk Torwa Pathfinder##9619
			..turnin The Fare of Lar'korwi##4290
			..accept The Scent of Lar'korwi##4291
		step
			goto Un'Goro Crater,67.32,73.05
			.from Lar'korwi Mate##9683
			.info Stand on the pile of purple eggs to get it to appear.
			.get 2 Ravasaur Pheromone Gland##11509|q 4291/1
			.' You can find more eggs (1)|at 62.87,80.48
			.' You can find more eggs (2)|at 60.92,72.23
			.' You can find more eggs (3)|at 66.60,66.73
		step
			goto Un'Goro Crater,71.63,75.97
			.talk Torwa Pathfinder##9619
			..turnin The Scent of Lar'korwi##4291
			..accept The Bait for Lar'korwi##4292
		step
			.use Torwa's Pouch##11568
			..collect Preserved Threshadon Meat##11569|q 4292
			..collect Preserved Pheromone Mixture##11570|q 4292
		step
			goto Un'Goro Crater,79.92,49.90
			.use the Preserved Threshadon Meat##11569
			.info Use this first.
			.use the Preserved Pheromone Mixture##11570
			.info Use this second.
			.from Lar'korwi##9684
			.info He's level 56, but you should be able to kill him at this level.
			.info If you have trouble, try to find someone to help you.
			.get Lar'korwi's Head##11510|q 4292/1
		step
			goto Un'Goro Crater,46.38,13.45
			.talk Karna Remtravel##9618
			..accept Chasing A-Me 01 (1)##4243
		step
			goto Un'Goro Crater,42.94,9.64
			.talk Muigin##9119
			.accept Muigin and Larion##4141
		step
			goto Un'Goro Crater,44.66,8.11
			.talk Linken##8737
			..turnin It's a Secret to Everybody (3)##3845
			..accept It's a Secret to Everybody (4)##3908
			.info Winterspring Quest-Chain.
		step
			goto Un'Goro Crater,45.23,5.84
			.talk Gryfe##10583
			.fpath Marshal's Refuge, Un'Goro Crater|q 4243
		step
			goto Un'Goro Crater,67.65,16.76
			.talk A-Me 01##9623
			..turnin Chasing A-Me 01 (1)##4243
			..accept Chasing A-Me 01 (2)##4244
			..turnin Chasing A-Me 01 (2)##4244
		step
			goto Un'Goro Crater,64.02,16.32
			.info Inside and outside the cave.
			.info The gorillas share spawn points.
			.info If you can't find any more of these, kill the other types of gorillas to get them to spawn.
			.from Un'Goro Stomper##6513, Un'Goro Gorilla##6514, Un'Goro Thunderer##6516
			.get 2 Un'Goro Gorilla Pelt##11478|q 4289/1
			.get 2 Un'Goro Stomper Pelt##11479 |q 4289/2
			.get 2 Un'Goro Thunderer Pelt##11480|q 4289/3
		step
			goto Un'Goro Crater,67.65,16.76
			.talk A-Me 01##9623
			..accept Chasing A-Me 01 (3)##4245
		step
			goto Un'Goro Crater,46.32,13.68
			.goal Protect A-Me 01 Until You Reach Karna Remtravel|q 4245/1
		step
			goto Un'Goro Crater,46.38,13.45
			.talk Karna Remtravel##9618
			..turnin Chasing A-Me 01 (3)##4245
		step
			goto Un'Goro Crater,59.96,30.56
			.from Tar Beast##6517, Tar Lurker##6518, Tar Lord##6519, Tar Creeper##6527
			.get 12 Super Sticky Tar##11834|q 4504/1
			.' You can find more around (1)|at 59.75,24.49
			.' You can find more around (2)|at 63.54,23.41
		step
			goto Un'Goro Crater,71.46,38.72
			.' Kill Bloodpetal enemies around this area.
			.info They look like walking plants.
			.collect 15 Bloodpetal##11316|q 4141/1
			.collect A Mangled Journal##11116|q 3884 |future
			.' You can find more around ()|at 66.08,35.13
			.' You can find more around ()|at 69.26,24.59
			.' You can find more around ()|at 55.87,34.69
		step
			.use A Mangled Journal##11116
			..accept Williden's Journal##3884
		step
			goto Un'Goro Crater,42.94,9.64
			.talk Muigin##9119
			..turnin Muigin and Larion##4141
		step
			goto Un'Goro Crater,43.95,7.14
			.talk Williden Marshal##9270
			..turnin Williden's Journal##3884
			..accept Expedition Salvation##3881
		step
			goto Un'Goro Crater,43.89,7.24
			talk Hol'anyee Marshal##9271
			..accept Alien Ecology##3883
		step
			goto Un'Goro Crater,41.92,2.70
			.talk J.D. Collie##9117
			..accept Crystals of Power##4284
		step
			.collect 7 Red Power Crystal##11186|q 4284/1
			.collect 7 Yellow Power Crystal##11188|q 4284/2
			.collect 7 Green Power Crystal##11185|q 4284/3
			.collect 7 Blue Power Crystal##11184|q 4284/4
			.info They look clusters of red, yellow, green, or blue crystals on the ground around this area.
			.info They tend to be around the base of trees, or near the cliffs surrounding Un'Goro Crater.
			.info Stick to searching around the eastern side of the zone, since there are lower level enemies there, and the crystals can spawn anywhere in the zone.
			.info Kill enemies here and there as you search around, to continue gaining experience.
			.info You can skip it manually and continue completing quests without forgetting about this step.
		step
			goto Un'Goro Crater,43.50,7.42
			.talk Spark Nilminer##9272
			..accept Roll the Bones##3882
		step
			goto Un'Goro Crater,43.55,8.42
			.' Interact with gameobject: Beware of Pterrordax
			..accept Beware of Pterrordax##4501
		step
			goto Un'Goro Crater,43.62,8.50
			.talk Spraggle Frock##9997
			..accept Lost!##4492
		step
			goto Un'Goro Crater,42.9,9.6
			.talk Muigin##9119
			..accept A Visit to Gregan##4142
		step
			goto Un'Goro Crater,44.24,11.59
			.talk Shizzle##9998
			..accept Shizzle's Flyer##4503
		step
			goto Un'Goro Crater,34.7,40.4
			.' Open Package of Empty Ooze in your bags|use Bag of Empty Ooze Containers##11955
			.from Glutinous Ooze##6559
			.use Empty Pure Sample Jar##11953|q 4513/1
		step
			goto Un'Goro Crater,30.93,50.43
			.talk Krakle##10302
			..accept Finding the Source##974
		step
			goto Un'Goro Crater,38.47,66.11
			.collect Research Equipment##11112|q 3881/2
		step
			goto Un'Goro Crater,49.70,45.74
			.use Krakle's Thermometer##12472
			.info At the top of the mountain.
			.' Find the Hottest Area of Fire Plume Ridge|q 974/1
		step
			goto Un'Goro Crater,50.8,47.1
			.from Scorching Elemental##6520, Living Blaze##6521, Blazing Invader##14460
			.get 9 Un'Goro Ash##11829|q 4502/1
		step
			goto Un'Goro Crater,51.90,49.85
			.talk Ringo##9999
			.info If he's not here, someone may be escorting him.
			.info Wait until he respawns.
			..turnin Lost!##4492
			..accept A Little Help From My Friends##4491
		step
			goto Un'Goro Crater,43.62,8.51
			.' Watch the dialogue.
			.info Ringo will follow you, protect him as you walk.
			.info He will faint multiple times as he walks, so make sure he is with you at all times.
			.info You will see a message in your chat when he faints.
			.use Spraggle's Canteen##11804
			.info Use it on Ringo to revive him when he faints.
			.goal Escort Ringo to Spraggle Frock at Marshal's Refuge|q 4491/1
		step
			goto Un'Goro Crater,43.62,8.51
			.talk Spraggle Frock##9997
			..turnin A Little Help From My Friends##4491
		step
			goto Un'Goro Crater,68.51,36.54
			.collect Crate of Foodstuffs##11113|q 3881/1
		step
			goto Un'Goro Crater,71.64,75.97
			.talk Torwa Pathfinder##9619
			..turnin The Apes of Un'Goro##4289
			..turnin The Bait for Lar'korwi##4292
			..accept The Mighty U'cha##4301
		step
			goto Un'Goro Crater,48.74,85.21
			.use the Unused Scraping Vial##11132
			.info Inside the cave.
			.collect Hive Wall Sample##11131|q 3883/1
		step
			goto Un'Goro Crater,59.18,53.99
			.from Diemetradon##9163
			.get 8 Dinosaur Bone##11114|q 3882/1
			.get 8 Webbed Diemetradon Scale##11830|q 4503/1
			.' You can find more around (1)|at 56.74,63.47
			.' You can find more around (2)|at 49.24,61.78
			.' You can find more around (3)|at 50.79,67.25
			.' You can find more around (4)|at 45.26,68.91
			.' You can find more around (5)|at 41.52,56.95
		step
			goto Un'Goro Crater,30.93,50.44
			.talk Krakle##10302
			..turnin Finding the Source##974
			..accept The New Springs##980
			.info Winterspring Quest-Chain.
		step
			goto Un'Goro Crater,21.75,59.39
			.kill 10 Frenzied Pterrordax##9167|q 4501/1
			.collect 8 Webbed Pterrordax Scale##11831|q 4503/2
			.' You can find more around (1)|at 23.26,49.89
			.' You can find more around (2)|at 22.81,41.53
			.' You can find more around (3)|at 23.36,41.24
			.' You can find more around (4)|at 39.05,47.06
			.' You can find more around (5)|at 28.28,33.06
			.' You can find more around (6)|at 34.49,37.63
			.' You can find more around (7)|at 31.25,44.33
		step
			goto Un'Goro Crater,44.23,11.59
			.talk Shizzle##9998
			..turnin Shizzle's Flyer##4503
		step
			goto Un'Goro Crater,43.62,8.50
			.talk Spraggle Frock##9997
			..turnin Beware of Pterrordax##4501
		step
			goto Un'Goro Crater,43.50,7.43
			.talk Spark Nilminer##9272
			..turnin Roll the Bones##3882
		step
			goto Un'Goro Crater,43.89,7.24
			.talk Hol'anyee Marshal##9271
			..turnin Alien Ecology##3883
		step
			goto Un'Goro Crater,43.95,7.14
			.talk Williden Marshal##9270
			..turnin Expedition Salvation##3881
		step
			goto Un'Goro Crater,68.15,12.58
			.from U'cha##9622
			.info Upstairs inside the cave.
			.get U'cha's Pelt##11476|q 4301/1
		step
			goto Un'Goro Crater,71.63,75.96
			.talk Torwa Pathfinder##9619
			..turnin The Mighty U'cha##4301
		step
			.collect 7 Red Power Crystal##11186|q 4284/1
			.collect 7 Yellow Power Crystal##11188|q 4284/2
			.collect 7 Green Power Crystal##11185|q 4284/3
			.collect 7 Blue Power Crystal##11184|q 4284/4
			.info They look clusters of red, yellow, green, or blue crystals on the ground around this area.
			.info They tend to be around the base of trees, or near the cliffs surrounding Un'Goro Crater.
			.info Stick to searching around the eastern side of the zone, since there are lower level enemies there, and the crystals can spawn anywhere in the zone.
			.info Kill enemies here and there as you search around, to continue gaining experience.
		step
			goto Un'Goro Crater,41.92,2.70
			.talk J.D. Collie##9117
			..turnin Crystals of Power##4284
			..accept The Northern Pylon##4285
			..accept The Eastern Pylon##4287
			..accept The Western Pylon##4288
		step
			goto Un'Goro Crater,56.48,12.45
			.' Interact with gameobject: Northern Crystal Pylon
			.' Choose "I want to examine this pylon."
			.goal Discover and Examine the Northern Crystal Pylon|q 4285/1
		step
			goto Un'Goro Crater,77.24,49.97
			.' Interact with gameobject: Eastern Crystal Pylon
			.' Choose "I want to examine this pylon."
			.goal Discover and Examine the Eastern Crystal Pylon|q 4287/1
		step
			goto Un'Goro Crater,23.79,59.19
			.' Interact with gameobject: Western Crystal Pylon
			.' Choose "I want to examine this pylon."
			.goal Discover and Examine the Western Crystal Pylon|q 4288/1
		step
			goto Un'Goro Crater,44.7,54.5
			.collect 30 Un'Goro Soil##11018|q 3785 |future
			.' You can find more around (1)|at 52.5,78.9
			.' You can find more around (2)|at 44.4,83.2
			.' You can find more around (3)|at 41.1,79.8
			.' You can find more around (4)|at 36.4,76.3
			.' You can find more around (5)|at 36.4,69.7
			.' You can find more around (6)|at 31,78.8
			.' You can find more around (7)|at 30.5,70
			.' You can find more around (8)|at 33.1,65.3
			.' You can find more around (9)|at 28,62.8
			.' You can find more around (10)|at 40.8,59.6
		step
			goto Un'Goro Crater,41.92,2.70
			.talk J.D. Collie##9117
			..turnin The Northern Pylon##4285
			..turnin The Eastern Pylon##4287
			..turnin The Western Pylon##4288
			..accept Making Sense of It##4321
		step
			goto Un'Goro Crater,41.92,2.70
			.talk J.D. Collie##9117
			..turnin Making Sense of It##4321
		step
			goto Tanaris,51.57,26.76
			.talk Tran'rek##7876
			..turnin Super Sticky##4504
		step
			goto The Barrens,62.4,38.7
			.talk Liv Rizzlefix##8496
			..turnin Volcanic Activity##4502
		step
			goto Winterspring,60.7,38.2
			.talk Meggi Peppinrocker##11754
			..accept Trouble in Winterspring!##6603
		step
			goto Winterspring,31.27,45.16
			.talk Donova Snowden##9298
			..turnin The New Springs##980
			..turnin It's a Secret to Everybody##3908
			..accept The Videre Elixir##3909
			..turnin Trouble in Winterspring!##6603
		step
			goto Feralas,45.1,25.6
			.talk Gregan Brewspewer##7775
			..turnin A Visit to Gregan##4142
		step
			goto Feralas,45.1,25.6
			.talk Gregan Brewspewer##7775
			.buy Bait##11141|q 3909 |future
		step
			goto Feralas,44.6,10.5
			.use Bait##11141
			.collect Evoroot##11242|q 3909 |future
		step
			goto Feralas,45.1,25.6
			.talk Gregan Brewspewer##7775
			.collect Videre Elixir##11243|q 3909/1
		step
			goto Winterspring,31.27,45.16
			.talk Donova Snowden##9298
			..turnin The Videre Elixir##3909
			..accept Meet at the Grave##3912
		step
			goto Tanaris,53.96,28.76
			.use Videre Elixir##11243|q 3912
			.info As soon as you drink, you will die immediately.
			.info Without resurrecting, run to the next step.
		step
			goto Tanaris,53.92,23.33
			.talk Gaeriyan##9299
			..turnin Meet at the Grave##3912
			..accept A Grave Situation##3913
		step
			goto Tanaris,53.8,29.1
			.' Interact with gameobject: A Conspicuous Gravestone
			..turnin A Grave Situation##3913
			..accept Linken's Sword##3914
		step
			goto Un'Goro Crater,44.7,8.1
			.talk Linken##8737
			..turnin Linken's Sword##3914
			..accept A Gnome's Assistance##3941
		step
			goto Un'Goro Crater,41.9,2.7
			.talk J.D. Collie##9117
			..turnin A Gnome's Assistance##3941
			..accept Linken's Memory##3942
		step
			goto Felwood,51.3,81.5
			.talk Eridan Bluewind##9116
			..turnin Linken's Memory##3942
			..accept Silver Heart##4084
		step
			goto Felwood,54.9,85.83
			.from Angerclaw Bear##8956, Felpaw Wolf##8959
			.get 11 Silvery Claws##11172|q 4084/1
		step
			goto Felwood,48.8,21.6
			.from Irontree Wanderer##7138, Irontree Stomper##7139
			.get Irontree Heart##11173|q 4084/2
		step
			goto Felwood,51.3,81.5
			.talk Eridan Bluewind##9116
			..turnin Silver Heart##4084
			..accept Aquementas##4005
		step
			.use Eridan's Supplies##11617
			.collect Book of Aquor##11169|q 4005 |future
			.collect 11 Silvery Claws##11172|q 4005 |future
			.collect Irontree Heart##11173|q 4005 |future
		step
			goto Tanaris,70.4,50
			.use Book of Aquor##11169
			.from Aquementas##9453
			.get 1 Silver Totem of Aquementas##11522|q 4005/1
		step
			goto Un'Goro Crater,41.9,2.7
			.talk J.D. Collie##9117
			..turnin Aquementas##4005
			..accept Linken's Adventure##3961
		step
			goto Un'Goro Crater,44.7,8.1
			.talk Linken##8737
			..turnin Linken's Adventure##3961
			..accept It's Dangerous to Go Alone##3962
		step
			goto Un'Goro Crater,49.4,49.3
			.use Silver Totem of Aquementas##11522
			.from Blazerunner##9376
			.get 1 Golden Flame##11179|q 3962/2
			.info Chest in cave.
		step
			goto Un'Goro Crater,44.7,8.1
			.talk Linken##8737
			..turnin It's Dangerous to Go Alone##3962
		step
			goto Darnassus,31.5,8.2
			.talk Jenal##9047
			..turnin Un'Goro Soil##3764
		step
			goto Darnassus,34.8,9.3
			.talk Arch Druid Fandral Staghelm##3516
			..accept Morrowgrain Research (1)##3781
		step
			goto Darnassus,35.4,8.4
			.talk Mathrengyl Bearwalker##4217
			..turnin Morrowgrain Research (1)##3781
			..accept Morrowgrain Research (2)##3785
		step
			.collect 10 Un'Goro Soil##11018|q 3785 |future
			.use Evergreen Pouch##11020
			.collect 10 Morrowgrain##11040|q 3785/1
		step
			goto Darnassus,35.4,8.4
			.talk Mathrengyl Bearwalker##4217
			..turnin Morrowgrain Research (2)##3785
		step
			goto Ironforge,75.77,23.37
			.talk Laris Geardawdle##9616
			..turnin A Little Slime Goes a Long Way (2)##4513
		step
			.' Congratulations! +46 quests for achievement "Loremaster of Kalimdor".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Kalimdor\\[60] Winterspring",[[
author danaton
description This guide contain quest-chain (22 quests) for Winterspring location.
startlevel 60
		step
			.' First required to complete Crater Un'Goro guide.
		step
			goto Tanaris,52.35,26.91
			.talk Curgle Cranklehop##7763
			..accept Handle With Care##3022
		step
			goto Teldrassil,55.50,92.05
			.talk Erelas Ambersky##7916
			..turnin Handle With Care##3022
			..accept Favored of Elune?##3661
		step
			goto Burning Steppes,65.24,24.00
			.talk Tinkee Steamboil##10267
			..accept Broodling Essence##4726
		step
			goto Burning Steppes,72.83,28.41
			.use Draco-Incarcinatrix 900##12284
			.info Use it on Broodling enemies around this area.
			.info They look like small flying dragons.
			.info They share spawn points with the scorpids and wolves, so kill those also, if you can't find any.
			.from Black Broodling##7047, Scalding Broodling##7048
			.' Click Broodling Essence.
			.info They look like red floating crystals that appear above their corpses after you kill them.
			.collect 8 Broodling Essence##12283|q 4726/1
			.' You can find more around (1)|at 80.05,27.94
			.' You can find more around (2)|at 87.34,32.01
			.' You can find more around (3)|at 91.96,35.64
		step
			goto Burning Steppes,65.23,23.99
			.talk Tinkee Steamboil##10267
			..turnin Broodling Essence##4726
			..accept Felnok Steelspring##4808
		step
			goto The Hinterlands,15.76,53.78
			.collect 15 Wildkin Feather##10819|q 3661/1
			.info They look large brown and white feathers on the ground around this area.
			.info They can be found around most of the Hinterlands, except in the eastern part.
			.' You can find more around (1)|at 22.17,55.01
			.' You can find more around (2)|at 28.43,54.20
			.' You can find more around (3)|at 33.90,48.74
			.' You can find more around (4)|at 33.03,43.66
		step
			goto Teldrassil,55.50,92.05
			.talk Erelas Ambersky##7916
			..turnin Favored of Elune?##3661
			..accept Moontouched Wildkin##978
		step
			goto Felwood,51,81.6
			.talk Ivy Leafrunner##10924
			..accept To Winterspring!##5249
		step
			goto Winterspring,27.74,34.50
			.talk Salfa##11556
			..accept Winterfall Activity##8464
		step
			goto Winterspring,31.27,45.16
			.talk Donova Snowden##9298
			..accept Strange Sources##4842
			..accept Threat of the Winterfall##5082
		step
			goto Winterspring,31.35,45.53
			.collect 10 Moontouched Feather##12383|q 978/1
			.info They look like large blue feathers on the ground around this area.
			.' You can find more around (1)|at 30.95,47.02
			.' You can find more around (2)|at 29.39,46.67
			.' You can find more around (3)|at 30.18,45.24
			.' You can find more around (4)|at 30.30,44.03
			.' You can find more around (5)|at 31.42,43.31
			.' You can find more around (6)|at 32.02,44.25
			.' You can find more around (7)|at 32.79,44.36
			.' You can find more around (8)|at 33.07,44.01
			.' You can find more around (9)|at 34.85,43.20
		step
			goto Winterspring,30.57,37.17
			.kill 8 Winterfall Pathfinder##7442|q 5082/1
			.kill 8 Winterfall Den Watcher##7440|q 5082/2
			.kill 8 Winterfall Totemic##7441|q 5082/3
			.info They share spawn points with the other Winterfall enemies.
			.info Kill the other types also, to get more to spawn.
			.' You can find more around (1)|at 39.46,43.70
			.' You can find more around (2)|at 41.78,43.14
		step
			goto Winterspring,30.57,37.17
			.' Kill Winterfall enemies around this area.
			.collect Empty Firewater Flask##12771|q 5083 |future
			.' You can find more around (1)|at 39.46,43.70
			.' You can find more around (2)|at 41.78,43.14
		step
			.use the Empty Firewater Flask##12771
			..accept Winterfall Firewater##5083
		step
			goto Winterspring,31.27,45.16
			.talk Donova Snowden##9298
			..turnin Threat of the Winterfall##5082
			..turnin Winterfall Firewater##5083
			..accept Falling to Corruption##5084
		step
			goto Felwood,60.20,5.87
			.' Interact with gameobject: Deadwood Cauldron
			.info Try to kite the enemies near the cauldron away one at a time to fight them alone, until you can kill the rest.
			.info If you have trouble, try to find someone to help you.
			..turnin Falling to Corruption##5084
			..accept Mystery Goo##5085
		step
			goto Winterspring,31.27,45.16
			.talk Donova Snowden##9298
			..turnin Mystery Goo##5085
			..accept Toxic Horrors##5086
		step
			goto Felwood,49.42,23.51
			.from Toxic Horror##7132
			.info All around this green lake.
			.get 3 Toxic Horror Droplet##12822|q 5086/1
		step
			goto Teldrassil,55.50,92.04
			.talk Erelas Ambersky##7916
			..turnin Moontouched Wildkin##978
			..accept Find Ranshalla##979
		step
			goto Winterspring,31.27,45.16
			.talk Donova Snowden##9298
			..turnin Toxic Horrors##5086
			..accept Winterfall Runners##5087
		step
			goto Winterspring,30.04,42.55
			.from Winterfall Runner##10916
			.info They look like a group of 3 white furbolgs that walk back and forth along this road.
			.info Check these locations, and if you don't find them, wait at the location in this step closest to Everlook.
			.info They will eventually walk past this location.
			.get 1 Winterfall Crate##12829|q 5087/1
			.' You can also find them around (1)|at 46.96,39.54
			.' You can also find them around (2)|at 53.55,33.96
			.' If you don't want to wait for the patrol, there's also usually one in Felwood around|at Felwood,60.23,5.75
		step
			goto Winterspring,61.1,38.4
			.talk Harlo Wigglesworth##11755
			..accept Enraged Wildkin (1)##6604
		step
			goto Winterspring,61.9,38.4
			.talk Storm Shadowhoof##10303
			..accept Ursius of the Shardtooth##5054
		step
			goto Winterspring,62.3,36.6
			.talk Maethrya##11138
			.fpath Everlook, Winterspring|q 5249
		step
			goto Winterspring,51.97,30.39
			talk Wynd Nightchaser##11079
			..turnin To Winterspring!##5249
			..accept The Ruins of Kel'Theril##5244
		step
			goto Winterspring,52.14,30.43
			.talk Jaron Stoneshaper##10301
			..turnin The Ruins of Kel'Theril##5244
			..accept Troubled Spirits of Kel'Theril##5245
			..turnin Enraged Wildkin (1)##6604
			..accept Enraged Wildkin (2)##4861
		step
			goto Winterspring,64,24.1
			.kill Ursius##10806|q 5054/1
			.info Big White Bear, moving on waypoint.
			.' You can find it in this waypoint (1)|at 62.5,28.3
			.' You can find it in this waypoint (2)|at 62.5,31.9
			.' You can find it in this waypoint (3)|at 60.5,33.5
			.' You can find it in this waypoint (4)|at 57.3,32,8
		step
			goto Winterspring,50.88,41.71
			.collect Second Relic Fragment##12897|q 5245/2
			.info Two enemies will appear and attack you.
		step
			goto Winterspring,52.42,41.50
			.collect Fourth Relic Fragment##12899|q 5245/4
			.info Two enemies will appear and attack you.
		step
			goto Winterspring,53.31,43.43
			.collect Third Relic Fragment##12898|q 5245/3
			.info Two enemies will appear and attack you.
		step
			goto Winterspring,55.14,42.98
			.collect First Relic Fragment##12896|q 5245/1
			.info Two enemies will appear and attack you.
		step
			goto Winterspring,60.88,37.62
			.talk Umi Rumplesnicker##10305
			..accept Are We There, Yeti? (1)##3783
		step
			goto Winterspring,61.63,38.61
			.talk Felnok Steelspring##10468
			..turnin Felnok Steelspring##4808
			..accept Chillwind Horns##4809
		step
			goto Winterspring,61.9,38.4
			.talk Storm Shadowhoof##10303
			..turnin Ursius of the Shardtooth##5054
			..accept Brumeran of the Chillwind##5055
		step
			goto Winterspring,61.9,38.3
			.talk Witch Doctor Mau'ari##10307
			..accept Luck Be With You##969
		step
			goto Winterspring,66.79,43.34
			.from Ice Thistle Yeti##7458
			.get 10 Thick Yeti Fur##12366|q 3783/1
			.' You can find more inside the cave|at 67.65,41.75
		step
			goto Winterspring,57.45,41
			.from Chillwind Chimaera##7448
			.get 8 Uncracked Chillwind Horn##12444|q 4809/1
		step
			goto Winterspring,59,59.78
			.' Interact with gameobject: Damaged Crate
			..turnin Enraged Wildkin (2)##4861
			..accept Enraged Wildkin (3)##4863
		step
			goto Winterspring,61.41,60.68
			.' Interact with gameobject: Jaron's Wagon
			..turnin Enraged Wildkin (3)##4863
			..accept Enraged Wildkin (4)##4864
		step
			goto Winterspring,61.39,60.73
			.' Interact with gameobject: Jaron's Supplies
			.collect Jaron's Supplies##12525|q 4864/1
		step
			goto Winterspring,63.07,59.47
			.talk Ranshalla##10300
			..turnin Find Ranshalla##979
			..accept Guardians of the Altar##4901
		step
			goto Winterspring,64.86,63.69
			.' Watch the dialogue.
			.info Follow Ranshalla and protect her as she walks.
			.info Let her get attacked first, so she will help you fight.
			.' Interact with gameobject: Fire of Elune
			.info They look like brown torch poles in each of the caves she walks into.
			.info Click them to get her to start walking again.
			.' Interact with gameobject: Altar of Elune
			.info It looks like a stone table, at this location, that she eventually walks to.
			.goal Discover the Secret of the Altar of Elune|q 4901/1
			.info If you have trouble, try to find someone to help you.
		step
			goto Winterspring,65.42,60.38
			.from Crazed Owlbeast##7452, Moontouched Owlbeast##7453
			.get 1 Blue-feathered Amulet##12524|q 4864/2
			.info If you have trouble, try to find someone to help you.
		step
			.' Start going down here|goto 58.85,63.05,0.5 |q 969
		step
			.' Continue down the trail|goto 59.21,66.83,0.5 |q 969
		step
			goto Winterspring,61.6,68.5
			.from Frostmaul Giant##7428, Frostmaul Preserver##7429
			.get 4 Frostmaul Shards##12334|q 969/1
		step
			.' Go back along the path|goto 60.55,61.75,0.5 |q 4842
		step
			.' Cross the bridge|goto 62.42,67.44,0.5 |q 4842
		step
			goto Winterspring,59.84,74.12
			.' Discover Darkwhisper Gorge|q 4842/1
		step
			goto Winterspring,62.5,57.9
			.kill Brumeran##10807|q 5055/1
			.info Big Wyvern, moving on waypoint.
			.' You can find it in this waypoint (1)|at 61.3,60.1
			.' You can find it in this waypoint (2)|at 59.3,61.8
			.' You can find it in this waypoint (3)|at 61.6,56.8
			.' You can find it in this waypoint (4)|at 59.6,54.9
			.' You can find it in this waypoint (5)|at 57,52.6
			.' You can find it in this waypoint (6)|at 54.4,45.2
		step
			goto Winterspring,61.63,38.61
			.talk Felnok Steelspring##10468
			..turnin Chillwind Horns##4809
			..accept Return to Tinkee##4810
		step
			goto Winterspring,61.9,38.4
			.talk Storm Shadowhoof##10303
			..turnin Brumeran of the Chillwind##5055
			..accept Shy-Rotam##5056
		step
			goto Winterspring,61.9,38.3
			.talk Witch Doctor Mau'ari##10307
			..turnin Luck Be With You##969
			..accept Cache of Mau'ari##975
		step
			goto Winterspring,61.9,38.3
			.talk Witch Doctor Mau'ari##10307
			.info Wait for Witch Doctor while cast.
			..turnin Cache of Mau'ari##975
		step
			goto Winterspring,60.88,37.62
			.talk Umi Rumplesnicker##10305
			..turnin Are We There, Yeti? (1)##3783
			..accept Are We There, Yeti? (2)##977
		step
			goto Winterspring,52.14,30.43
			.talk Jaron Stoneshaper##10301
			..turnin Enraged Wildkin (4)##4864
		step
			goto Winterspring,52.64,15.4
			.from Frostsaber##7431, Frostsaber Stalker##7432
			.collect 1 Sacred Frostsaber Meat##12733|q 5056 |future
		step
			goto Winterspring,49.7,9.8
			.use Sacred Frostsaber Meat##12733
			.kill Shy-Rotam##10737|q 5056/1
		step
			goto Winterspring,31.27,45.16
			.talk Donova Snowden##9298
			..turnin Strange Sources##4842
			..turnin Winterfall Runners##5087
		step
			goto Winterspring,31.27,45.16
			.talk Donova Snowden##9298
			..accept High Chief Winterfall##5121
		step
			goto Winterspring,69.6,38.3
			.kill High Chief Winterfall##10738|q 5121/1
			.collect Crudely-written Log##12842|q 5123 |future
		step
			.use Crudely-written Log##12842
			..accept The Final Piece##5123
		step
			goto Winterspring,67.2,35.9
			.kill 8 Winterfall Shaman##7439|q 8464/1
			.kill 8 Winterfall Den Watcher##7440|q 8464/2
			.' You can find more Den Watcher|at 40,43.4
			.kill 8 Winterfall Ursa##7438|q 8464/3
		step
			goto Winterspring,66.7,41.25
			.from Ice Thistle Matriarch##7459, Ice Thistle Patriarch##7460
			.get 2 Pristine Yeti Horn##12367|q 977/1
			.' You can find more around in cave|at 67.75,41.6
		step
			goto Winterspring,60.88,37.62
			.talk Umi Rumplesnicker##10305
			..turnin Are We There, Yeti? (2)##977
			..accept Are We There, Yeti? (3)##5163
		step
			goto Winterspring,61.5,38.6
			.talk Legacki##10978
			.use Umi's Mechanical Yeti##12928|q 5163/1
		step
			goto Winterspring,61.9,38.4
			.talk Storm Shadowhoof##10303
			..turnin Shy-Rotam##5056
			..accept Past Endeavors##5057
			..turnin Past Endeavors##5057
		step
			goto Winterspring,31.27,45.16
			.talk Donova Snowden##9298
			..turnin High Chief Winterfall##5121
			..turnin The Final Piece##5123
			..accept Words of the High Chief##5128
		step
			goto Winterspring,27.74,34.50
			.talk Salfa##11556
			..turnin Winterfall Activity##8464
		step
			goto Felwood,51.1,81.8
			.talk Kelek Skykeeper##10920
			..turnin Words of the High Chief##5128
		step
			goto Tanaris,51.1,26.9
			.talk Sprinkle##7583
			.use Umi's Mechanical Yeti##12928|q 5163/2
		step
			goto Un'Goro Crater,43.7,9.4
			.talk Quixxil##10977
			.use Umi's Mechanical Yeti##12928|q 5163/3
		step
			goto Winterspring,60.88,37.62
			.talk Umi Rumplesnicker##10305
			..turnin Are We There, Yeti? (3)##5163
		step
			goto Teldrassil,55.50,92.05
			.talk Erelas Ambersky##7916
			..turnin Guardians of the Altar##4901
			..accept Wildkin of Elune##4902
		step
			goto Darnassus,34.8,9.3
			.talk Arch Druid Fandral Staghelm##3516
			..turnin Wildkin of Elune##4902
		step
			goto Burning Steppes,65.24,24.00
			.talk Tinkee Steamboil##10267
			..turnin Return to Tinkee##4810
		step
			goto Western Plaguelands,43,83.5
			.talk Argent Officer Pureheart##10840
			..turnin The Everlook Report##6028
		step
			goto Eastern Plaguelands,48.8,17.6
			.talk Aurora Skycaller##10304
			..turnin Troubled Spirits of Kel'Theril##5245
			..accept Fragments of the Past (1)##5246
		step
			.' Congratulations! +22 quests for achievement "Loremaster of Kalimdor".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Kalimdor\\[60] Azshara",[[
author danaton
description This guide contain quest-chain (12 Kalimdor + 17 Eastern Kingdoms quests) for Azshara location.
startlevel 60
		step
			.' First you need to complete the Wintersprings guide.
		step
			goto Eastern Plaguelands,48.8,17.6
			.talk Aurora Skycaller##10304
			..accept Fragments of the Past (1)##5246
		step
			goto Blasted Lands,67.6,19.3
			.talk Ambassador Ardalan##7826
			..accept Petty Squabbles##2783
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
			.' Interact with gameobject: Spectral Lockbox
			..turnin Heroes of Old (2)##2701
		step
			goto Swamp of Sorrows,34.3,66.1
			.talk Fallen Hero of the Horde##7572
			..accept Kirith##2721
		step
			goto Blasted Lands,69.3,30.8
			.' Entrance in cave|at 65.05,32.93
			.kill 1 Kirith the Damned##7728|n
			.talk Spirit of Kirith##7729
			..turnin Kirith##2721
			..accept The Cover of Darkness##2743
		step
			goto Swamp of Sorrows,34.3,66.1
			.talk Fallen Hero of the Horde##7572
			..turnin The Cover of Darkness##2743
			..accept The Demon Hunter##2744
		step
			goto Ironforge,77.5,11.8
			.talk Historian Karnik##2916
			..accept Passing the Burden##3448
		step
			goto Ironforge,31,4.8
			.talk Tymor##8507
			..turnin Passing the Burden##3448
			..accept Arcane Runes##3449
			..accept An Easy Pickup##3450
		step
			goto Ironforge,70.9,94.6
			.talk Xiggs Fuselighter##8517
			..turnin An Easy Pickup##3450
			..accept Signal for Pickup##3451
			..turnin Signal for Pickup##3451
		step
			goto Azshara,11.4,78.2
			.talk Loh'atu##11548
			..accept Spiritual Unrest##5535
			..accept A Land Filled with Hatred##5536
		step
			goto Azshara,11.9,77.6
			.talk Jarrodenus##12577
			.fpath Talredis Point, Azshara|q 5536
		step
			goto Azshara,17.3,70.6
			.kill 6 Highborne Apparition|q 5535/1
			.kill 6 Highborne Lichling|q 5535/2
		step
			goto Azshara,19.3,62.4
			.kill 6 Haldarr Satyr|q 5536/1
			.kill 2 Haldarr Trickster|q 5536/2
			.kill 2 Haldarr Felsworn|q 5536/3
		step
			goto Azshara,11.4,78.2
			.talk Loh'atu##11548
			..turnin Spiritual Unrest##5535
			..turnin A Land Filled with Hatred##5536
		step
			goto Azshara,42.3,64.1
			.collect Rubbing: Rune of Sael'hai##10566|q 3449/4
			.info A tall, purple glowing monument looking thing.
		step
			goto Azshara,39.3,55.5
			.collect Rubbing: Rune of Markri##10565|q 3449/3
			.info A tall, purple glowing looking monument thing.
		step
			goto Azshara,39.5,50.2
			.collect Rubbing: Rune of Jin'yael##10564|q 3449/2
			.info A tall, purple glowing monument looking thing.
		step
			goto Azshara,36.9,53.2
			.collect Rubbing: Rune of Beth'Amara##10563|q 3449/1
			.info A tall, purple glowing monument looking thing.
		step
			goto Azshara,41.5,52.5
			.collect Sacred Highborne Writings##13313|q 5246/1
		step
			goto Azshara,53.5,21.8
			.talk Kim'jael##8420
			..accept Kim'jael Indeed!##3601
		step
			goto Azshara,58.5,25
			.collect Kim'jael's Compass##10717|q 3601/1
			.collect Kim'jael's Scope##10715|q 3601/2
			.collect Kim'jael's Stuffed Chicken##10722|q 3601/3
			.collect Kim'jael's Wizzlegoober##10718|q 3601/4
			.info It's a small crate sitting on the ground.
			.' There are usually more boxes around (1)|at 58.7,29
			.' There are usually more boxes around (2)|at 59.5,30.8
			.' There are usually more boxes around (3)|at 56,30
			.' There are usually more boxes around (4)|at 56.3,28.84
		step
			goto Azshara,53.5,21.8
			.talk Kim'jael##8420
			..turnin Kim'jael Indeed!##3601
			..accept Kim'jael's "Missing" Equipment##5534
		step
			goto Azshara,47.2,42.9
			.from Spitelash Siren##6195, Spitelash Myrmidon##6196, Spitelash Battlemaster##7885, Spitelash Enchantress##7886
			.get Some Rune##13815|q 5534/1
		step
			goto Azshara,53.5,21.8
			.talk Kim'jael##8420
			..turnin Kim'jael's "Missing" Equipment##5534
		step
			goto Azshara,60.8,66.4
			.talk Loramus Thalipedes##7783
			.goal Conversation with Loramus|q 2744/1
		step
			goto Azshara,60.8,66.4
			.talk Loramus Thalipedes##7783
			..turnin The Demon Hunter##2744
			..accept Loramus##3141
		step
			goto Azshara,60.8,66.4
			.talk Loramus Thalipedes##7783
			.goal Loramus' Story|q 3141/1
		step
			goto Azshara,60.8,66.4
			.talk Loramus Thalipedes##7783
			..turnin Loramus##3141
			..accept Breaking the Ward##3508
		step
			goto Azshara,60.8,66.4
			.talk Loramus Thalipedes##7783
			..turnin Breaking the Ward##3508
			.info Wait for Loramus to complete the enlightenment spell.
			..accept The Name of the Beast (1)##3509
		step
			goto Azshara,77.1,42.8
			.talk Lord Arkkoroc##6134
			..turnin The Name of the Beast (1)##3509
			..accept The Name of the Beast (2)##3510
		step
			goto Azshara,56.7,44.8
			.from Hetaera##6140
			.info The Big Green Hydra.
			.get 1 Hetaera's Beaten Head##10599|q 3510/1
			.get 1 Hetaera's Bloodied Head##10598|q 3510/2
			.get 1 Hetaera's Bruised Head##10600|q 3510/3
		step
			goto Azshara,77.1,42.8
			.talk Lord Arkkoroc##6134
			..turnin The Name of the Beast (2)##3510
			..accept The Name of the Beast (3)##3511
		step
			goto Azshara,60.8,66.4
			.talk Loramus Thalipedes##7783
			..turnin The Name of the Beast (3)##3511
			..accept Azsharite##3602
		step
			goto Azshara,54.6,82
			.collect 20 Crystallized Azsharite##10714|q 3602/1
			.info Big Blue Crystal on ground.
		step
			goto Azshara,60.8,66.4
			.talk Loramus Thalipedes##7783
			..turnin Azsharite##3602
			..accept The Formation of Felbane##3621
		step
			goto Azshara,79.3,73.7
			.talk Duke Hydraxis##13278
			..accept Stormers and Rumblers##6805
		step
			goto Azshara,77.8,91.3
			.' Stand on the landing pad on the small island
			.' Use your Standard Issue Flare Gun|use Standard Issue Flare Gun##10444
			.talk Pilot Xiggs Fuselighter##8392
			..turnin Arcane Runes##3449
			..accept Return to Tymor##3461
		step
			goto Silithus,57.8,13
			.kill 15 Dust Stormer##11744|q 6805/1
			.' You can find more around (1)|at 63.3,23.8
			.' You can find more around (2)|at 50.9,19.4
			.' You can find more around (3)|at 65.3,29.9
			.' You can find more around (4)|at 38.2,34.7
			.' You can find more around (5)|at 32.9,34.8
			.' You can find more around (6)|at 28.5,28.4
			.' You can find more around (7)|at 17.1,27.1
			.' You can find more around (8)|at 19.2,32
			.' You can find more around (9)|at 18.7,22.2
		step
			goto Silithus,22.7,10.2
			.kill 15 Desert Rumbler##11746|q 6805/2
		step
			goto Azshara,79.3,73.7
			.talk Duke Hydraxis##13278
			..turnin Stormers and Rumblers##6805
		step
			goto Ironforge,31,4.8
			.talk Tymor##8507
			..turnin Return to Tymor##3461
		step
			goto Stranglethorn Vale,50.5,20.3
			.talk Galvan the Ancient##7802
			..turnin The Formation of Felbane##3621
			..accept Enchanted Azsharite Fel Weaponry##3625
		step
			.goal Wait for Galvan to finish forging the weaponry|q 3625/1
		step
			goto Stranglethorn Vale,50.5,20.3
			.talk Galvan the Ancient##7802
			..turnin Enchanted Azsharite Fel Weaponry##3625
			..accept Return to the Blasted Lands##3626
		step
			goto Swamp of Sorrows,34.3,66.1
			.talk Fallen Hero of the Horde##7572
			..turnin Return to the Blasted Lands##3626
			..accept Uniting the Shattered Amulet##3627
		step
			goto Blasted Lands,42.6,13
			.from Grol the Destroyer##7665
			.get Amulet of Grol##10753|q 3627/2
		step
			goto Blasted Lands,40.8,30
			.from Lady Sevine##7667
			.get Amulet of Sevine##10754|q 3627/3
		step
			goto Blasted Lands,66.7,29.2
			.from Archmage Allistarj##7666
			.info Inside the cave.
			.get Amulet of Allistarj##10755|q 3627/1
		step
			goto Swamp of Sorrows,34.3,66.1
			.talk Fallen Hero of the Horde##7572
			..turnin Uniting the Shattered Amulet##3627
			..accept You Are Rakh'likh, Demon##3628
		step
			goto Blasted Lands,48.18,22.98|n
			.' Use of the teleport runes|goto 47.47,30.08,0.5 |q 3628
		step
			goto Blasted Lands,47.45,29.89
			.use Ward of the Defiler##10757
			.from Razelikh the Defiler##7664
			.get Severed Horn of the Defiler##10759|q 3628/1
		step
			goto Swamp of Sorrows,34.3,66.1
			.talk Fallen Hero of the Horde##7572
			..turnin You Are Rakh'likh, Demon##3628
		step
			goto Eastern Plaguelands,48.8,17.6
			.talk Aurora Skycaller##10304
			..turnin Fragments of the Past (1)##5246
		step
			.' Congratulations! +12 quests for achievement "Loremaster of Kalimdor" and +17 quests for achievement "Loremaster of Eastern Kingdoms".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Kalimdor\\[60] Silithus",[[
author danaton
description This guide contain quest-chain (27 quests) for Silithus location.
startlevel 60
		step
			goto Ironforge,55.9,81.4
			.talk Courier Hammerfall##10877
			..accept The New Frontier (1)##1015 |or
        	..accept The New Frontier (1)##1019 |or
        	..accept The New Frontier (1)##1047 |or
		step
			goto Ironforge,58.5,47.3
			.talk Cenarion Emissary Jademoon##15187
			..accept Taking Back Silithus##8275
		step
			goto Darnassus,34.8,9.3
			.talk Arch Druid Fandral Staghelm##3516
			..turnin The New Frontier (1)##1015 |or
        	..turnin The New Frontier (1)##1019 |or
        	..turnin The New Frontier (1)##1047 |or
			..accept The New Frontier (2)##6761
		step
			goto Darnassus,35.4,8.4
			.talk Mathrengyl Bearwalker##4217
			..turnin The New Frontier (2)##6761
			..accept Rabine Saturna##6762
		step
			goto Moonglade,51.7,45.1
			.talk Rabine Saturna##11801
			..turnin Rabine Saturna##6762
			..accept Wasteland##1124
			..accept A Reliquary of Purity##5527
		step
			goto Silithus,81.9,18.9
			.talk Layo Starstrike##13220
			..turnin Wasteland##1124
			..accept The Spirits of Southwind##1125
		step
			goto Silithus,63.2,55.3
			.collect 1 Reliquary of Purity##22201|q 5527/1
		step
			goto Silithus,61.9,53.2
			.kill 8 Tortured Druid##12178|q 1125/1
			.kill 8 Tortured Sentinel##12179|q 1125/2
		step
			goto Silithus,81.9,18.9
			.talk Layo Starstrike##13220
			..turnin The Spirits of Southwind##1125
			..accept Hive in the Tower##1126
		step
			goto Silithus,60.3,52.6
			.collect Silithid Goo##17345|q 1126
			.info At the very top of the tower.
			.from Hive'Ashi Ambusher##13301
			.get 1 Encrusted Silithid Object##17346|q 1126/1
		step
			goto Silithus,51.15,38.29
			.talk Windcaller Proudhorn##15191
			..turnin Taking Back Silithus##8275
			..accept Securing the Supply Lines##8280
		step
			goto Silithus,51.4,38.3
			.' Interact with gameobject: Wanted Poster: Deathclasp
			..accept Wanted - Deathclasp, Terror of the Sands##8283
		step
			goto Silithus,51.71,38.58
			.talk Beetix Ficklespragg##15189
			..accept Deadly Desert Venom##8277
		step
			goto Silithus,49.67,37.46
			.talk Geologist Larksbane##15183
			..accept The Twilight Mystery##8284
		step
			goto Silithus,48.6,37.9
			.talk Huum Wildmane##15270
			..accept Twilight Geolords##8320
		step
			goto Silithus,48.57,37.78
			.talk Bor Wildmane##15306
			..accept Secret Communication##8318
		step
			goto Silithus,49.19,34.18
			.talk Commander Mar'alith##15181
			..accept Dearest Natalia##8304
		step
			goto Silithus,50.7,34.7
			.talk Rifleman Torrig##17082
			..accept Report to Marshal Bluewall##9415
		step
			goto Silithus,55.97,49.86
			.' Kill Hive'Ashi enemies around this area.
			.info You may need help with this.
			.collect Brann Bronzebeard's Lost Letter##20461|q 8308 |future
			.info This has a low drop rate.
			.' You can find more around (1)|at 52.57,52.85
			.' You can find more around (2)|at 48.18,44.34
		step
			.use Brann Bronzebeard's Lost Letter##20461
			..accept Brann Bronzebeard's Lost Letter##8308
		step
			goto Silithus,81.9,18.9
			.talk Layo Starstrike##13220
			..turnin Hive in the Tower##1126
			..accept Umber, Archivist##6844
		step
			goto Silithus,60.63,17.19
			.from Stonelash Scorpid##11735
			.info They look like scorpions.
			.get 8 Stonelash Scorpid Stinger##20373|q 8277/1
			.get 8 Sand Skitterer Fang##20376|q 8277/2
			.' You can find more around (1)|at 51.92,17.95
			.' You can find more around (2)|at 52.50,30.60
			.' You can find more around (3)|at 68.54,32.78
			.' You can find more around (4)|at 59.11,23.46
		step
			goto Silithus,60.63,17.19
			.kill 15 Dredge Striker##11740|q 8280/1
			.' You can find more around (1)|at 51.92,17.95
			.' You can find more around (2)|at 52.50,30.60
			.' You can find more around (3)|at 68.54,32.78
			.' You can find more around (4)|at 59.11,23.46
		step
			goto Silithus,24.33,11.94
			.collect 8 Twilight Tablet Fragment##20378|q 8284/1
			.info They look like small blue-glowing broken pieces of stone tablets on the ground around this area.
		step
			goto Silithus,33.3,51.1
			.talk Marshal Bluewall##17080
			..turnin Report to Marshal Bluewall##9415
		step
			goto Silithus,25.45,34.2
			.kill 10 Twilight Geolord##11881|q 8320/1
			.collect 10 Encrypted Twilight Text##20404|q 8318/1
			.' You can find more around (1)|at 39.65,45.2
			.' You can find more around (2)|at 19.25,85.15
		step
			goto Silithus,48.58,37.78
			.talk Bor Wildmane##15306
			..turnin Secret Communication##8318
		step
			goto Silithus,48.6,37.9
			.talk Huum Wildmane##15270
			..turnin Twilight Geolords##8320
			..accept Vyral the Vile##8321
		step
			goto Silithus,49.67,37.46
			.talk Geologist Larksbane##15183
			..turnin The Twilight Mystery##8284
			..accept The Deserter##8285
		step
			goto Silithus,51.15,38.29
			.talk Windcaller Proudhorn##15191
			..turnin Securing the Supply Lines##8280
			..accept Stepping Up Security##8281
		step
			goto Silithus,51.71,38.58
			.talk Beetix Ficklespragg##15189
			..turnin Deadly Desert Venom##8277
			..accept Noggle's Last Hope##8278
		step
			goto Silithus,48.6,37.9
			.talk Huum Wildmane##15270
			..accept Aurel Goldleaf##8331
		step
			goto Silithus,52,38.2
			.talk Aurel Goldleaf##15282
			..turnin Aurel Goldleaf##8331
		step
			goto Silithus,72.4,15.6
			.from Vyral the Vile##15202
			.get 1 Vyral's Signet Ring##20466|q 8321/1
		step
			goto Silithus,67.2,69.8
			.talk Hermit Ortell##15194
			..turnin The Deserter##8285
			..accept The Twilight Lexicon##8279
		step
			goto Silithus,45.44,86.38
			.from Stonelash Flayer##11737+
			.get 3 Stonelash Flayer Stinger##20375|q 8278/1
			.' You can find more around (1)|at 45.15,82.20
			.' You can find more around (2)|at 36.97,86.68
			.' You can find more around (3)|at 28.44,80.89
			.' You can find more around (4)|at 35.23,71.64
		step
			goto Silithus,27.26,43.55
			.from Stonelash Pincer##11736
			.get 3 Stonelash Pincer Stinger##20374|q 8278/2
			.' You can find more around (1)|at 36.54,50.40
			.' You can find more around (2)|at 37.93,60.76
			.' You can find more around (3)|at 47.11,59.42
			.' You can find more around (4)|at 57.55,60.78
		step
			goto Silithus,45.44,86.38
			.from Rock Stalker##11739
			.get 3 Rock Stalker Fang##20377|q 8278/3
			.' You can find more around (1)|at 45.15,82.20
			.' You can find more around (2)|at 36.97,86.68
			.' You can find more around (3)|at 28.44,80.89
			.' You can find more around (4)|at 35.23,71.64
		step
			goto Silithus,27.26,43.55
			.kill 20 Dredge Crusher##11741|q 8281/1
			.' You can find more around (1)|at 36.54,50.40
			.' You can find more around (2)|at 37.93,60.76
			.' You can find more around (3)|at 47.11,59.42
			.' You can find more around (4)|at 57.55,60.78
		step
			goto Silithus,48.6,37.9
			.talk Huum Wildmane##15270
			..turnin Vyral the Vile##8321
		step
			goto Silithus,51.15,38.29
			.talk Windcaller Proudhorn##15191
			..turnin Stepping Up Security##8281
		step
			goto Silithus,51.71,38.58
			.talk Beetix Ficklespragg##15189
			..turnin Noggle's Last Hope##8278
		step
			goto Silithus,51.6,38.5
			.talk Noggle Ficklespragg##15190
			..accept Noggle's Lost Satchel##8282
		step
			goto Silithus,40.9,42.2
			.from Twilight Keeper Havunth##11804
			.get 1 Twilight Lexicon - Chapter 3##20396|q 8279/3
		step
			goto Silithus,26.3,36.6
			.from Twilight Keeper Mayna##15200
			.get 1 Twilight Lexicon - Chapter 1##20394|q 8279/1
		step
			goto Silithus,16.1,86.4
			.from Twilight Keeper Exeter##11803
			.get 1 Twilight Lexicon - Chapter 2##20395|q 8279/2
		step
			goto Silithus,41.28,88.45
			.talk Rutgar Glyphshaper##15170
			..turnin Brann Bronzebeard's Lost Letter##8308
		step
			goto Silithus,41.28,88.45
			.talk Rutgar Glyphshaper##15170
			.' Tell him "Hello, Rutgar. The Commander has sent me here to gather some information about his missing wife."
			.' Question Rutgar|q 8304/2
		step
			goto Silithus,40.82,88.85
			.talk Frankal Stonebridge##15171
			.' Tell him "Hello, Frankal. I've heard that you might have some information as to the whereabouts of Mistress Natalia Mar'alith."
			.' Question Frankal|q 8304/1
		step
			goto Silithus,44.6,91.4
			.collect 1 Noggle's Satchel##20379|q 8282/1
		step
			goto Silithus,44,90.3
			.from Deathclasp##15196
			.get 1 Deathclasp's Pincer##20385|q 8283/1
		step
			goto Silithus,67.2,69.8
			.talk Hermit Ortell##15194
			..turnin The Twilight Lexicon##8279
			..accept A Terrible Purpose##8287
			..accept True Believers##8323
		step
			goto Silithus,51.6,38.5
			.talk Noggle Ficklespragg##15190
			..turnin Noggle's Lost Satchel##8282
		step
			goto Silithus,49.19,34.18
			.talk Commander Mar'alith##15181
			..turnin A Terrible Purpose##8287
			..turnin Dearest Natalia##8304
			..accept Into The Maw of Madness##8306
		step
			goto Silithus,50.8,33.7
			.talk Vish Kozus##15182
			..turnin Wanted - Deathclasp, Terror of the Sands##8283
		step
			goto Silithus,25.45,34.2
			.from Twilight Avenger##11880
			.get 10 Encrypted Twilight Text##20404|q 8323/1
			.' You can find more around (1)|at 39.65,45.2
			.' You can find more around (2)|at 19.25,85.15
			.' You can find more around (3)|at 67.2,18.15
		step
			goto Silithus,55.5,87.5
			.info Enter the cave.
			.kill 1 Mistress Natalia Mar'alith##15215|at Silithus,51.96,101.89|q 8306/1
		step
			goto Silithus,67.2,69.8
			.talk Hermit Ortell##15194
			..turnin True Believers##8323
		step
			goto Silithus,49.19,34.18
			.talk Commander Mar'alith##15181
			..turnin Into The Maw of Madness##8306
		step
			goto Moonglade,44.9,35.6
			.talk Umber##11939
			..turnin Umber, Archivist##6844
			..accept Uncovering Past Secrets##6845
		step
			goto Moonglade,51.7,45.1
			.talk Rabine Saturna##11801
			..turnin A Reliquary of Purity##5527
			..turnin Uncovering Past Secrets##6845
		step
			.' Congratulations! +27 quests for achievement "Loremaster of Kalimdor".
]])

ZygorGuidesViewer.AllianceInstalled=true