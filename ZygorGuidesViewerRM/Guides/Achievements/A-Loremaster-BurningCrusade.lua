local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Burning Crusade\\[62] Hellfire Peninsula",[[
author danaton
description This guide contain quest-chain (81 quests) for Hellfire Peninsula location.
startlevel 62
		step
			goto Blasted Lands,63.5,17
			.talk Bernie Heisten##3546
			.buy 1 Nethergarde Bitter##23848|q 9563 |future
		step
			goto Blasted Lands,58.3,55.9
			.talk Watch Commander Relthorn Netherwane##16841
			..accept Through the Dark Portal##10119
		step
			goto Blasted Lands,58.7,59.85|n
			.' Go into the big green portal to the Outlands|goto Hellfire Peninsula|noway|q 10119
		step
			goto Hellfire Peninsula,87.3,50.7
			.talk Commander Duron##19229
			..turnin Through the Dark Portal##10119
			..accept Arrival in Outland##10288
		step
			goto Hellfire Peninsula,87.4,52.4
			.talk Amish Wildhammer##18931
			..turnin Arrival in Outland##10288
			..accept Journey to Honor Hold##10140
		step
			goto Hellfire Peninsula,87.4,52.4|n
			.talk Amish Wildhammer##18931
			.' Fly to Honor Hold|goto Hellfire Peninsula,54.6,62.6,1|noway|q 10140
		step
			goto Hellfire Peninsula,54.5,62.8
			.talk Marshal Isildor##19308
			..turnin Journey to Honor Hold##10140
			..accept Force Commander Danath##10254
		step
			goto Hellfire Peninsula,56.6,66.7
			.talk Force Commander Danath Trollbane##16819
			..turnin Force Commander Danath##10254
			..accept The Legion Reborn##10141
			..accept Know your Enemy##10160
		step
			goto Hellfire Peninsula,51.2,60
			.talk Dumphry##21209
			..accept Waste Not, Want Not##10055
		step
			goto Hellfire Peninsula,50.9,60.2
			.talk Lieutenant Amadi##16820
			..turnin Know your Enemy##10160
			..accept Fel Orc Scavengers##10482
		step
			goto Hellfire Peninsula,61.7,60.8
			.talk Sergeant Altumus##19309
			..turnin The Legion Reborn##10141
			..accept The Path of Anguish##10142
		step
			goto Hellfire Peninsula,60.4,52.1
			.collect 8 Salvaged Metal##25912|q 10055/1
			.collect 8 Salvaged Wood##25911|q 10055/2
			.info They are scraps on the ground around this area.
			.kill 20 Bonechewer Orc|q 10482/1
		step
			goto Hellfire Peninsula,66.95,57.33
			.kill 1 Dreadcaller##19434|q 10142/1
			.kill 4 Flamewaker Imp##19136|q 10142/2
			.kill 6 Infernal Warbringer##19261|q 10142/3
		step
			goto Hellfire Peninsula,61.7,60.8
			.talk Sergeant Altumus##19309
			..turnin The Path of Anguish##10142
			..accept Expedition Point##10143
		step
			goto Hellfire Peninsula,51.2,60
			.talk Dumphry##21209
			..turnin Waste Not, Want Not##10055
			..accept Laying Waste to the Unwanted##10078
		step
			goto Hellfire Peninsula,50.9,60.2
			.talk Lieutenant Amadi##16820
			..turnin Fel Orc Scavengers##10482
			..accept Ill Omens##10483
		step
			goto Hellfire Peninsula,71.3,62.8
			.talk Forward Commander Kingston##19310
			..turnin Expedition Point##10143
			..accept Disrupt Their Reinforcements##10144
		step
			goto Hellfire Peninsula,72.0,59.6
			.from Netherhound##16950+, Wrathguard##18975+, Doomwhisperer##18981+, Fel Handler##19190+
			.collect 4 Demonic Rune Stone##28513|q 10144
		step
			goto Hellfire Peninsula,72.7,59
			.goal Disrupt Portal Kaalez|q 10144/2
			.info Stand inside the portal and click it to destroy it.
		step
			goto Hellfire Peninsula,71.7,56.4
			.from Netherhound##16950+, Wrathguard##18975+, Doomwhisperer##18981+, Fel Handler##19190+
			.collect 4 Demonic Rune Stone##28513|q 10144
		step
			goto Hellfire Peninsula,71.4,55.2
			.goal Disrupt Portal Grimh|q 10144/1
			.info Stand inside the portal and click it to destroy it.
		step
			goto Hellfire Peninsula,71.3,62.8
			.talk Forward Commander Kingston##19310
			..turnin Disrupt Their Reinforcements##10144
			..accept Mission: The Murketh and Shaadraz Gateways##10146
		step
			goto Hellfire Peninsula,71.3,62.8|n
			.talk Wing Commander Dabir'ee##19409
			.' Choose "I need a gryphon destroyer!"|goto 73.75,54.85,5 |q 10146
		step
			goto Hellfire Peninsula,77.72,51.83
			.use Seaforium PU-36 Explosive Nether Modulator##28038
			.goal Gateway Shaadraz Destroyed|q 10146/2
		step
			goto Hellfire Peninsula,78,47.22
			.use Seaforium PU-36 Explosive Nether Modulator##28038
			.goal Gateway Murketh Destroyed|q 10146/1
		step
			goto Hellfire Peninsula,71.4,62.7
			.talk Forward Commander Kingston##19310
			..turnin Mission: The Murketh and Shaadraz Gateways##10146
			..accept Shatter Point##10340
		step
			goto Hellfire Peninsula,71.4,62.5|n
			.talk Wing Commander Dabir'ee##19409
			.' Fly to Shatter Point|goto Hellfire Peninsula,78.5,35.1,1|noway|q 10340
		step
			goto Hellfire Peninsula,78.4,34.9
			.talk Runetog Wildhammer##20234
			..turnin Shatter Point##10340
			..accept Wing Commander Gryphongar##10344
		step
			goto Hellfire Peninsula,79.3,33.9
			.talk Wing Commander Gryphongar##20232
			..turnin Wing Commander Gryphongar##10344
			..accept Mission: The Abyssal Shelf##10163
		step
			goto Hellfire Peninsula,78.3,34.5|n
			.talk Gryphoneer Windbellow##20235
			.' Take a flight to the Abyssal Shelf|goto 72.83,26.04,5|noway|q 10163
		step
			goto Hellfire Peninsula,72.8,17.3
			.use Area 52 Special##28132
			.kill 20 Gan'arg Peon##19398|q 10163/1
			.kill 5 Mo'arg Overseer##19397|q 10163/2
			.' Destroy 5 Fel Cannons|goal 5 Fel Cannon Destroyed|q 10163/3
			.info If you don't complete this in the first run, you can keep flying until it's done.
		step
			goto Hellfire Peninsula,79.3,33.9
			.talk Wing Commander Gryphongar##20232
			..turnin Mission: The Abyssal Shelf##10163
			..accept Go to the Front##10382
		step
			goto Hellfire Peninsula,78.3,34.5|n
			.talk Gryphoneer Windbellow##20235
			.' Fly to Honor Point|goto Hellfire Peninsula,68.7,28.2,1|noway|q 10382
		step
			goto Hellfire Peninsula,68.3,28.6
			.talk Field Marshal Brock##20793
			..turnin Go to the Front##10382
			..accept Disruption - Forge Camp: Mageddon##10394
		step
			goto Hellfire Peninsula,64.8,31.9
			.kill Razorsaw##20798|q 10394/2
			.info Wanders, resurrection time ~5 minutes.
		step
			goto Hellfire Peninsula,59.14,32.20
			.kill 10 Gan'arg Servant##16947|q 10394/1
		step
			goto Hellfire Peninsula,68.3,28.6
			.talk Field Marshal Brock##20793
			..turnin Disruption - Forge Camp: Mageddon##10394
			..accept Enemy of my Enemy...##10396
		step
			goto Hellfire Peninsula,63.4,32.5
			.kill 3 Fel Cannon MKI##22461|q 10396/1
			.' You can find more around (1)|at 57.8,32.1
			.' You can find more around (2)|at 52.4,82.1
		step
			goto Hellfire Peninsula,68.3,28.6
			.talk Field Marshal Brock##20793
			..turnin Enemy of my Enemy...##10396
			..accept Invasion Point: Annihilator##10397
		step
			goto Hellfire Peninsula,53.1,26.5
			.from Warbringer Arix'Amal##19298
			.get Burning Legion Gate Key##29795|q 10397/3
			.collect Burning Legion Missive##29588|q 10395 |future
		step
			.use Burning Legion Missive##29588
			..accept The Dark Missive##10395
		step
			goto Hellfire Peninsula,53,27.6
			.' Close Burning Legion Gate|q 10397/2
		step
			goto Hellfire Peninsula,51.4,30.5
			.talk Foreman Razelcraz##16915
			..accept Outland Sucks!##10236
		step
			goto Hellfire Peninsula,48.64,38.58
			.collect 6 Shredder Spare Parts##28554|q 10236/1
			.' You can find more around|at 46.7,42.3
		step
			goto Hellfire Peninsula,51.4,30.5
			.talk Foreman Razelcraz##16915
			..turnin Outland Sucks!##10236
			..accept How to Serve Goblins##10238
		step
			goto Hellfire Peninsula,45.12,41
			.' Rescue Manni|q 10238/1
		step
			goto Hellfire Peninsula,46.46,45.15
			.' Rescue Moh|q 10238/2
		step
			goto Hellfire Peninsula,47.53,46.62
			.' Rescue Jakk|q 10238/3
		step
			goto Hellfire Peninsula,51.4,30.5
			.talk Foreman Razelcraz##16915
			..turnin How to Serve Goblins##10238
			..accept Shizz Work##10629
		step
			goto Hellfire Peninsula,49.3,29.6
			.use Felhound Whistle##30803
			.from Deranged Helboar##16863
			.collect Shredder Keys##30794|q 10629/1
			.info Use the Felhound Whistle to summon a Fel Guard Hound. Take the Fel Guard Hound for a walk and kill some Deranged Helboars. Search for the Shredder Keys in the Fel Guard Hound's "leavings."
		step
			goto Hellfire Peninsula,51.4,30.5
			.talk Foreman Razelcraz##16915
			..turnin Shizz Work##10629
			..accept Beneath Thrallmar##10630
		step
			goto Hellfire Peninsula,54.4,31.6
			.kill Urga'zz##18976|q 10630/1
			.info Urga'zz inside the mine.
		step
			goto Hellfire Peninsula,51.4,30.5
			.talk Foreman Razelcraz##16915
			..turnin Beneath Thrallmar##10630
		step
			goto Hellfire Peninsula,68.3,28.6
			.talk Field Marshal Brock##20793
			..turnin Invasion Point: Annihilator##10397
		step
			goto Hellfire Peninsula,54.3,63.4
			.talk Father Malgor Devidicus##16825
			..accept An Old Gift##10058
		step
			goto Hellfire Peninsula,54.2,63.6
			.talk Sid Limbardi##16826
			..accept The Longbeards##9558
		step
			goto Hellfire Peninsula,56.7,66.5
			.talk Warp-Scryer Kryv##16839
			..turnin The Dark Missive##10395
			..accept The Heart of Darkness##10399
			..accept The Path of Glory##10047
		step
			goto Hellfire Peninsula,56.6,66.7
			.talk Force Commander Danath Trollbane##16819
			..accept Overlord##10400
		step
			goto Hellfire Peninsula,50.9,60.2
			.talk Honor Guard Wesilow##16827
			..accept Unyielding Souls##10050
		step
			goto Hellfire Peninsula,52,62.6
			.talk Foreman Biggums##16837
			..accept A Job for an Intelligent Man##9355
			..accept When This Mine's a-Rockin'##10079
		step
			goto Hellfire Peninsula,54.9,62.9
			.kill 12 Gan'arg Sapper##18827|q 10079/1
			.info Inside the cave.
		step
			goto Hellfire Peninsula,52,62.6
			.talk Foreman Biggums##16837
			..turnin When This Mine's a-Rockin'##10079
			..accept The Mastermind##10099
		step
			goto Hellfire Peninsula,56.3,61.4
			.kill Z'kral##18974|q 10099/1
			.info He is all the way at the bottom of the cave way in the back of the big room.
		step
			goto Hellfire Peninsula,52,62.6
			.talk Foreman Biggums##16837
			..turnin The Mastermind##10099
		step
			goto Hellfire Peninsula,66.1,48.8
			.' Cleanse 8 Trampled Skeletons|goal 8 Cleanse Trampled Skeleton|q 10047/1
			.info They look like little brown ribcages and spines. You will find them on the grey road. They are very easy to miss, but once you find one you will find them really fast.
		step
			goto Hellfire Peninsula,58.7,47
			.' Use your Flaming Torch on the Eastern Thrower to burn it|goal Eastern Thrower Burned|q 10078/1|use Flaming Torch##26002
			.info It's a big catapult.
		step
			goto Hellfire Peninsula,55.9,46.7
			.' Use your Flaming Torch on the Central Eastern Thrower to burn it|goal Central Eastern Thrower Burned|q 10078/2|use Flaming Torch##26002
			.info It's a big catapult.
		step
			goto Hellfire Peninsula,53.5,47.2
			.' Use your Flaming Torch on the Central Western Thrower to burn it|goal Central Western Thrower Burned|q 10078/3|use Flaming Torch##26002
			.info It's a big catapult.
		step
			goto Hellfire Peninsula,52.8,47.1
			.' Use your Flaming Torch on the Western Thrower to burn it|goal Western Thrower Burned|q 10078/4|use Flaming Torch##26002
			.info It's a big catapult.
		step
			goto Hellfire Peninsula,65.8,67.2
			.from Bleeding Hollow Grunt##16871, Bleeding Hollow Peon##16907, Bleeding Hollow Necrolyte##19422, Bleeding Hollow Tormentor##19424
			.get Cursed Talisman##30157|q 10483/1
		step
			goto Hellfire Peninsula,71,63.4
			.talk Corporal Ironridge##21133
			..turnin Ill Omens##10483
			..accept Cursed Talismans##10484
		step
			goto Hellfire Peninsula,55,86.8
			.collect Mysteries of the Light##25938|q 10058/1
			.info It's a small white book laying on the steps of the house.
		step
			goto Hellfire Peninsula,58,79
			.kill 12 Unyielding Footman##16904|q 10050/1
			.kill 10 Unyielding Sorcerer##16905|q 10050/2
			.kill 5 Unyielding Knight##16906|q 10050/3
		step
			goto Hellfire Peninsula,49.2,74.8
			.talk "Screaming" Screed Luckheed##19367
			..accept In Case of Emergency...##10161
		step
			goto Hellfire Peninsula,49.2,74.8
			.talk Legassi##19344
			..accept Ravager Egg Roundup##9349
		step
			goto Hellfire Peninsula,41.2,84.4
			.from Razorfang Hatchling##16932+, Razorfang Ravager##16933+, Quillfang Skitterer##19189+
			.get 12 Ravager Egg##23217|q 9349/1
			.info They look like big white eggs on the ground around this area.
		step
			goto Hellfire Peninsula,49.2,74.8
			.talk Legassi##19344
			..turnin Ravager Egg Roundup##9349
			..accept Helboar, the Other White Meat##9361
		step
			goto Hellfire Peninsula,50.2,74.8
			.from Deranged Helboar##16863
			.collect Tainted Helboar Meat##23270|n
			.' Use your Purification Mixture on the Tainted Helboar Meat|use Purification Mixture##23268
			.info The meat won't become purified every time, it can become toxic as well.
			.get 8 Purified Helboar Meat##23248|q 9361/1
		step
			goto Hellfire Peninsula,49.2,74.8
			.talk Legassi##19344
			..turnin Helboar, the Other White Meat##9361
			..accept Smooth as Butter##9356
		step
			goto Hellfire Peninsula,58.1,71.3
			.from Bonestripper Buzzard##16972
			.get 12 Plump Buzzard Wing##23239|q 9356/1
			.collect 30 Zeppelin Debris##28116|q 10161/1
			.info They look like scraps of metal all over the ground.
		step
			goto Hellfire Peninsula,49.2,74.8
			.talk "Screaming" Screed Luckheed##19367
			..turnin In Case of Emergency...##10161
			..accept Voidwalkers Gone Wild##9351
		step
			goto Hellfire Peninsula,49.2,74.8
			.talk Legassi##19344
			..turnin Smooth as Butter##9356
		step
			goto Hellfire Peninsula,47.8,65.8
			.kill 15 Marauding Crust Burster##16857|q 9355/1
			.collect Eroded Leather Case##23338|q 9373 |future
			.info They are under the jumping piles of rocks, they come up to fight when you get close to the jumping rocks.
		step
			.use Eroded Leather Case##23338
			..accept Missing Missive##9373
		step
			goto Hellfire Peninsula,52,62.6
			.talk Foreman Biggums##16837
			..turnin A Job for an Intelligent Man##9355
		step
			goto Hellfire Peninsula,51.2,60
			.talk Dumphry##21209
			..turnin Laying Waste to the Unwanted##10078
		step
			goto Hellfire Peninsula,50.9,60.2
			.talk Honor Guard Wesilow##16827
			..turnin Unyielding Souls##10050
			..accept Looking to the Leadership##10057
		step
			goto Hellfire Peninsula,54.3,63.4
			.talk Father Malgor Devidicus##16825
			..turnin An Old Gift##10058
		step
			goto Hellfire Peninsula,56.7,66.5
			.talk Warp-Scryer Kryv##16839
			..turnin The Path of Glory##10047
			..accept The Temple of Telhamat##10093
		step
			goto Hellfire Peninsula,23.1,40.3
			.talk Anchorite Obadei##16834
			..accept In Search of Sedai##9390
		step
			goto Hellfire Peninsula,23.1,40.2
			.talk Ikan##16799
			..accept Cruel Taskmasters##9399
		step
			goto Hellfire Peninsula,23.4,39.7
			.talk Scout Vanura##16797
			..accept Deadly Predators##9398
		step
			goto Hellfire Peninsula,23.4,36.5
			.talk Amaan the Wise##16796
			..turnin The Temple of Telhamat##10093
			..accept The Pools of Aggonar##9426
		step
			goto Hellfire Peninsula,26.9,37.4
			.' Interact with gameobject: Sedai's Corpse
			.info Right down the hill from the Temple of Telhamat Flight Path.
			..turnin In Search of Sedai##9390
			..accept Return to Obadei##9423
		step
			goto Hellfire Peninsula,23.1,40.3
			.talk Anchorite Obadei##16834
			..turnin Return to Obadei##9423
		step
			goto Hellfire Peninsula,23.1,40.2
			.talk Makuru##16833
			..accept Makuru's Vengeance##9424
		step
			goto Hellfire Peninsula,34.6,34.7
			.from Mag'har Grunt##16846+, Debilitated Mag'har Grunt##16847+
			.get 10 Mag'har Ancestral Beads##23589|q 9424/1
		step
			goto Hellfire Peninsula,43.8,31.6
			.kill Arazzius the Cruel##19191|q 10400/1
		step
			goto Hellfire Peninsula,38.9,29.1
			.kill 6 Terrorfiend##16951|q 9426/1
			.kill 6 Blistering Rot##16901|q 9426/2
			.kill 10 Terrorfiend##16951|q 10399/1
		step
			goto Hellfire Peninsula,23.1,40.3
			.talk Makuru##16833
			..turnin Makuru's Vengeance##9424
		step
			goto Hellfire Peninsula,23,40.4
			.talk Anchorite Obadei##16834
			..accept Atonement##9543
		step
			goto Hellfire Peninsula,23.4,36.5
			.talk Amaan the Wise##16796
			..turnin Atonement##9543
			..accept Sha'naar Relics##9430
			..turnin The Pools of Aggonar##9426
			..accept Cleansing the Waters##9427
			..accept Helping the Cenarion Post##10443
		step
			goto Hellfire Peninsula,23.2,36.7
			.talk Elsaana##17006
			..accept An Ambitious Plan##9383
		step
			goto Hellfire Peninsula,40.3,30.9
			.' Empty your Cleansing Vial in this spot|use Cleansing Vial##23361
			.info Get close to the ribcage of the skeleton and next to the poisoned water.
			.' Kill Aggonis|goal Aggonar's Presence Cleansed|q 9427/1
		step
			goto Hellfire Peninsula,23.4,36.5
			.talk Amaan the Wise##16796
			..turnin Cleansing the Waters##9427
		step
			goto Hellfire Peninsula,15.7,52
			.talk Thiah Redmane##16991
			..turnin Missing Missive##9373
			..turnin Helping the Cenarion Post##10443
			..accept Demonic Contamination##9372
		step
			goto Hellfire Peninsula,18.4,54.7
			.from Hulking Helboar##16880
			.get 6 Helboar Blood Sample##23336|q 9372/1
		step
			goto Hellfire Peninsula,15.7,52
			.talk Thiah Redmane##16991
			..turnin Demonic Contamination##9372
			..accept Testing the Antidote##10255
		step
			goto Hellfire Peninsula,25,54
			.' Use the Cenarion Antidote on a Hulking Helboar|use Cenarion Antidote##23337
			.' Administer the Antidote|goal Administer Antidote|q 10255/1
		step
			goto Hellfire Peninsula,15.7,52
			.talk Thiah Redmane##16991
			..turnin Testing the Antidote##10255
		step
			goto Hellfire Peninsula,15.1,55.7
			.kill 4 Illidari Taskmaster##17058|q 9399/1
			.info If you kill the taskmaster first, his friends leave you alone.
			.get 10 Sha'naar Relic##23642|q 9430/1
			.info The Sha'naar Relics look like little blue vases on the ground.
		step
			goto Hellfire Peninsula,15.6,58.8
			.talk Akoru the Firecaller##20678
			..accept Naladu##10403
		step
			goto Hellfire Peninsula,16.3,65.1
			.talk Naladu##19361
			..turnin Naladu##10403
			..accept A Traitor Among Us##10367
		step
			goto Hellfire Peninsula,14.3,63.5
			.collect Sha'naar Key##29501|q 10367/1
			.info The metal coffer on the floor in the big red hut.
		step
			goto Hellfire Peninsula,16.3,65.1
			.talk Naladu##19361
			..turnin A Traitor Among Us##10367
			..accept The Dreghood Elders##10368
		step
			goto Hellfire Peninsula,15.6,58.8
			.talk Akoru the Firecaller##20678
			.' Free Akoru the Firecaller|goal Akoru Freed|q 10368/2
		step
			goto Hellfire Peninsula,13,58.4
			.talk Aylaan the Waterwaker##20679
			.' Free Aylaan the Waterwaker|goal Aylaan Freed|q 10368/3
		step
			goto Hellfire Peninsula,13.1,61
			.talk Morod the Windstirrer##20677
			.' Free Morod the Windstirrer|goal Morod Freed|q 10368/1
		step
			goto Hellfire Peninsula,16.3,65.1
			.talk Naladu##19361
			..turnin The Dreghood Elders##10368
			..accept Arzeth's Demise##10369
		step
			goto Hellfire Peninsula,14.4,62.3
			.' Wait until Arzeth the Merciless is up top of the stairs by himself
			.' Use the Staff of the Dreghood Elders on Arzeth the Merciless|use Staff of the Dreghood Elders##29513
			.kill Arzeth the Powerless##20680|q 10369/1
		step
			goto Hellfire Peninsula,16.3,65.1
			.talk Naladu##19361
			..turnin Arzeth's Demise##10369
		step
			goto Hellfire Peninsula,24,72.1
			.talk Gremni Longbeard##16850
			..turnin The Longbeards##9558
			..accept The Arakkoa Threat##9417
			..accept Rampaging Ravagers##9385
		step
			goto Hellfire Peninsula,24,72.3
			.talk Mirren Longbeard##16851
			..accept Gaining Mirren's Trust##9563
		step
			goto Blasted Lands,63.5,17
			.talk Bernie Heisten##3546
			.buy 1 Nethergarde Bitter##23848|q 9563/1
		step
			goto Hellfire Peninsula,24,72.3
			.talk Mirren Longbeard##16851
			..turnin Gaining Mirren's Trust##9563
			..accept The Finest Down##9420
		step
			goto Hellfire Peninsula,25.6,70.3
			.kill 4 Haal'eshi Windwalker##16966|q 9417/1
			.kill 6 Haal'eshi Talonguard##16967|q 9417/2
			.from Kaliri Matriarch##17035, Kaliri Swooper##17053
			.get 8 Kaliri Feather##23588|q 9420/1
			.info The nests look like little brown nests with pink eggs in them.
		step
			goto Hellfire Peninsula,26.1,77.1|n
			.' The path up to Avruu starts here|goto Hellfire Peninsula,26.1,77.1,0.5|noway|q 9418 |future
		step
			goto Hellfire Peninsula,25.7,75.1
			.from Avruu##17084
			.collect Avruu's Orb##23580|q 9418 |future
		step
			.use Avruu's Orb##23580
			..accept Avruu's Orb##9418
		step
			goto Hellfire Peninsula,29,81.5
			.' Interact with gameobject: Haal'eshi Altar
			.info It looks like an orb sitting in a claw thing, right in front of a big purple hut.
			.' Fight Aeranas until he's almost dead.
			.talk Aeranas##17085
			..turnin Avruu's Orb##9418
		step
			goto Hellfire Peninsula,24,72.1
			.talk Gremni Longbeard##16850
			..turnin The Arakkoa Threat##9417
		step
			goto Hellfire Peninsula,24,72.3
			.talk Mirren Longbeard##16851
			..turnin The Finest Down##9420
		step
			goto Hellfire Peninsula,23.7,69.2
			.kill 10 Quillfang Ravagers|q 9385/1
		step
			goto Hellfire Peninsula,24,72.1
			.talk Gremni Longbeard##16850
			..turnin Rampaging Ravagers##9385
		step
			goto Hellfire Peninsula,26.9,69.5
			.kill 8 Stonescythe Whelp##16927|q 9398/2
		step
			goto Hellfire Peninsula,32.1,59.3
			.kill 4 Stonescythe Alpha##16929|q 9398/1
			.' You can find 2 more Stonescythe Alphas|at 33.7,62.1
		step
			goto Hellfire Peninsula,49.5,81.8
			.from Rogue Voidwalker##16974+, Uncontrolled Voidwalker##16975+
			.get 10 Condensed Voidwalker Essence##23218|q 9351/1
			.use Sanctified Crystal##23417
			.info Use your Sanctified Crystal on an Uncontrolled Voidwalker when it's almost dead.
			.collect Glowing Sanctified Crystal##23442|q 9383/1
			.info Collect the red floating crystal over its corpse.
		step
			goto Hellfire Peninsula,53.6,81.1
			.kill Arch Mage Xintor##16977|q 10057/1
			.info Near a bunch of practice fighting dummies.
		step
			goto Hellfire Peninsula,54.7,83.7
			.kill Lieutenant Commander Thalvos##16978|q 10057/2
			.info Walking around on a black platform thing. He's a blue ghost dwarf.
		step
			goto Hellfire Peninsula,49.2,74.8
			.talk "Screaming" Screed Luckheed##19367
			..turnin Voidwalkers Gone Wild##9351
		step
			goto Hellfire Peninsula,50.9,60.4
			.talk Honor Guard Wesilow##16827
			..turnin Looking to the Leadership##10057
		step
			goto Hellfire Peninsula,56.7,66.5
			.talk Warp-Scryer Kryv##16839
			..turnin The Heart of Darkness##10399
		step
			goto Hellfire Peninsula,56.6,66.7
			.talk Force Commander Danath Trollbane##16819
			..turnin Overlord##10400
		step
			goto Hellfire Peninsula,64.2,71.8
			.from Bleeding Hollow Grunt##16871+, Bleeding Hollow Dark Shaman##16873+, Bleeding Hollow Peon##16907+, Bleeding Hollow Necrolyte##19422+
			.get 12 Cursed Talisman##30157|q 10484/1
		step
			goto Hellfire Peninsula,71,63.4
			.talk Corporal Ironridge##21133
			..turnin Cursed Talismans##10484
			..accept Warlord of the Bleeding Hollow##10485
		step
			goto Hellfire Peninsula,71.3,62.8
			.talk Wing Commander Dabir'ee##19409
			..accept Zeth'Gor Must Burn!##10895
		step
			goto Hellfire Peninsula,70.1,69.1
			.' Use your Smoke Beacon under the tower|use Smoke Beacon##31739
			.' Mark the Forge Tower|goal Forge Tower Marked|q 10895/3
		step
			goto Hellfire Peninsula,70.9,71.3
			.' Use your Smoke Beacon under the tower|use Smoke Beacon##31739
			.' Mark the Foothill Tower|goal Foothill Tower Marked|q 10895/4
		step
			goto Hellfire Peninsula,70.1,76.9
			.from Warlord Morkh##16964
			.get Morkh's Shattered Armor##30158|q 10485/1
		step
			goto Hellfire Peninsula,66.4,76.6
			.' Use your Smoke Beacon under the tower|use Smoke Beacon##31739
			.' Mark the Southern Tower|goal Southern Tower Marked|q 10895/2
		step
			goto Hellfire Peninsula,67.9,67
			.' Use your Smoke Beacon under the tower|use Smoke Beacon##31739
			.' Mark the Northern Tower|goal Northern Tower Marked|q 10895/1
		step
			goto Hellfire Peninsula,71,63.4
			.talk Corporal Ironridge##21133
			..turnin Warlord of the Bleeding Hollow##10485
			..accept Return to Honor Hold##10903
		step
			goto Hellfire Peninsula,71.3,62.8
			.talk Wing Commander Dabir'ee##19409
			..turnin Zeth'Gor Must Burn!##10895
		step
			goto Hellfire Peninsula,54.3,63.6
			.talk Assistant Klatu##22430
			..turnin Return to Honor Hold##10903
			..accept Fel Spirits##10909
			..accept Digging for Prayer Beads##10916
		step
			goto Hellfire Peninsula,54.2,63.3
			.collect Draenei Prayer Beads##31795|q 10916/1
			.info It's a small mound of dirt behind the inn.
		step
			goto Hellfire Peninsula,45,75
			.use Anchorite Relic##31772
			.info Pull orcs to the relic.
			.' Kill the orcs and a Fel Spirit will spawn.
			.' Kill 10 Fel Spirits|goal 10 Jules Avenged|q 10909/1
		step
			goto Hellfire Peninsula,54.3,63.6
			.talk Assistant Klatu##22430
			..turnin Fel Spirits##10909
			..turnin Digging for Prayer Beads##10916
			..accept The Exorcism of Colonel Jules##10935
		step
			goto Hellfire Peninsula,54.0,63.5
			.talk Anchorite Barada##22431
			.' Choose 'I am ready...'
			.' Target the purple skulls and oozes.
			.' Use the Ritual Prayer Beads when enemies are in the room|use Ritual Prayer Beads##31828
			.' After the exorcism is done, talk Colonel Jules on the bed to save him|goal Colonel Jules Saved|q 10935/1
		step
			goto Hellfire Peninsula,54.3,63.6
			.talk Assistant Klatu##22430
			..turnin The Exorcism of Colonel Jules##10935
			..accept Trollbane is Looking for You##10936
		step
			goto Hellfire Peninsula,56.6,66.7
			.talk Force Commander Danath Trollbane##16819
			..turnin Trollbane is Looking for You##10936
		step
			goto Hellfire Peninsula,23.1,40.3
			.talk Ikan##16799
			..turnin Cruel Taskmasters##9399
			..accept The Rock Flayer Matriarch##9490
		step
			goto Hellfire Peninsula,23.4,39.7
			.talk Scout Vanura##16797
			..turnin Deadly Predators##9398
		step
			goto Hellfire Peninsula,23.4,36.5
			.talk Amaan the Wise##16796
			..turnin Sha'naar Relics##9430
			..accept The Seer's Relic##9545
		step
			goto Hellfire Peninsula,23.2,36.7
			.talk Elsaana##17006
			..turnin An Ambitious Plan##9383
		step
			goto Hellfire Peninsula,26.9,37.4
			.' Use the Seer's Relic on Sedai's Corpse|use Seer's Relic##23645
			.info Right down the hill from the Temple of Telhamat Flight Path.
			.' See the vision|goal Vision Granted|q 9545/1
		step
			goto Hellfire Peninsula,23.4,36.5
			.talk Amaan the Wise##16796
			..turnin The Seer's Relic##9545
		step
			goto Hellfire Peninsula,33.4,65.1
			.from Blacktalon the Savage##17057
			.info Inside the Cave.
			.get Blacktalon's Claws##23687|q 9490/1
		step
			goto Hellfire Peninsula,16,52.2
			.talk Amythiel Mistwalker##16885
			..accept The Cenarion Expedition##9912
		step
			goto Hellfire Peninsula,15.9,52.2
			.talk Mahuram Stouthoof##16888
			..accept Keep Thornfang Hill Clear!##10159
		step
			goto Hellfire Peninsula,15.6,52
			.talk Tola'thion##19293
			..accept Colossal Menace##10132
		step
			goto Hellfire Peninsula,15.7,40.7
			.kill 5 Raging Colossus##19188|q 10132/1
			.collect Crimson Crystal Shard##29476|q 10134 |future
		step
			.use Crimson Crystal Shard##29476
			..accept Crimson Crystal Clue##10134
		step
			goto Hellfire Peninsula,23.1,40.3
			.talk Ikan##16799
			..turnin The Rock Flayer Matriarch##9490
		step
			goto Hellfire Peninsula,12.3,49.9
			.kill 8 Thornfang Ravager##19349|q 10159/1
			.kill 8 Thornfang Venomspitter##19350|q 10159/2
		step
			goto Hellfire Peninsula,15.6,52
			.talk Tola'thion##19293
			..turnin Colossal Menace##10132
			.turnin Crimson Crystal Clue##10134
			..accept The Earthbinder##10349
		step
			goto Hellfire Peninsula,15.7,52
			.talk Mahuram Stouthoof##16888
			..turnin Keep Thornfang Hill Clear!##10159
		step
			goto Hellfire Peninsula,16,51.6
			.talk Earthbinder Galandria Nightbreeze##19294
			..turnin The Earthbinder##10349
			.' Watch the dialogue.
			..accept Natural Remedies##10351
		step
			goto Hellfire Peninsula,13.63,39.11
			.' Use the Seed of Revitalization at the Earthbinder's Circle|use Seed of Revitalization##29478|q 10351/1
		step
			goto Hellfire Peninsula,16,51.6
			.talk Earthbinder Galandria Nightbreeze##19294
			..turnin Natural Remedies##10351
		step
			goto Zangarmarsh,78.4,62
			.talk Ysiel Windsinger##17841
			..turnin The Cenarion Expedition##9912
		step
			.' Congratulations! +80 quests for achievement "To Hellfire and Back".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Burning Crusade\\[64] Zangarmarsh",[[
author danaton
description This guide contain quest-chain (57 quests) for Zangarmarsh location.
startlevel 64
		step
			.' It is recommended that you complete guide first: Hellfire Peninsula
			.info Manually skip this step.
		step
			goto Hellfire Peninsula,16,52.2
			.talk Amythiel Mistwalker##16885
			..accept The Cenarion Expedition##9912
		step
			goto Zangarmarsh,80.4,64.2
			.talk Ikeyen##17956
			..accept The Umbrafen Tribe##9747
		step
			goto Zangarmarsh,80.3,64.2
			.talk Lauranna Thar'well##17909
			..accept Plants of Zangarmarsh##9802
			only if rep("Cenarion Expedition")<Honored
		step
			goto Zangarmarsh,79.1,64.9
			.' Interact with gameobject: Wanted Poster
			..accept Leader of the Darkcrest##9730
			..accept Leader of the Bloodscale##9817
		step
			goto Zangarmarsh,78.5,63.1
			.talk Lethyn Moonfire##17834
			..accept The Dying Balance##9895
		step
			goto Zangarmarsh,78.4,62
			.talk Ysiel Windsinger##17841
			..turnin The Cenarion Expedition##9912
			..accept Disturbance at Umbrafen Lake##9716
			..accept Warden Hamoot##9778
		step
			goto Zangarmarsh,79.1,65.3
			.talk Warden Hamoot##17858
			..turnin Warden Hamoot##9778
			..accept A Warm Welcome##9728
		step
			goto Zangarmarsh,82,74.6
			.kill Boglash##18281|q 9895/1
			.info He is a tall alien looking thing with really long legs. He walks around in the water, so some searching may be necessary.
		step
			goto Zangarmarsh,85.3,90.9
			.kill Kataru##18080|q 9747/1
			.info In the big building, all the way at the top.
		step
			goto Zangarmarsh,85.4,82
			.kill 6 Umbrafen Oracle##18077|q 9747/2
			.kill 8 Umbrafen Seer##18079|q 9747/3
			.kill 6 Umbrafen Witchdoctor##20115|q 9747/4
			.' You can find more around (1)|at 84.4,89.15
			.' You can find more around (2)|at 82.85,85.3
		step
			goto Zangarmarsh,83.4,85.5
			.talk Kayra Longmane##17969
			..accept Escape from Umbrafen##9752
		step
			goto Zangarmarsh,79.84,71.3
			.' Escort Kayra Longmane|goal Escort Kayra Longmane to safety|q 9752/1
		step
			goto Zangarmarsh,80.4,64.2
			.talk Ikeyen##17956
			..turnin The Umbrafen Tribe##9747
			..accept A Damp, Dark Place##9788
		step
			goto Zangarmarsh,80.3,64.2
			.talk Lauranna Thar'well##17909
			..accept Saving the Sporeloks##10096
		step
			goto Zangarmarsh,80.4,64.7
			.talk Windcaller Blackhoof##18070
			..accept Safeguarding the Watchers##9894
		step
			goto Zangarmarsh,78.5,63.1
			.talk Lethyn Moonfire##17834
			..turnin The Dying Balance##9895
			..accept Watcher Leesa'oh##9697
		step
			goto Zangarmarsh,78.4,62
			.talk Ysiel Windsinger##17841
			..turnin Escape from Umbrafen##9752
		step
			goto Zangarmarsh,74.7,91.6|n
			.' The path to 'Ikeyen's Belongings' starts here|goto Zangarmarsh,74.7,91.6,0.5|noway|q 9788
		step
			goto Zangarmarsh,70.5,97.9
			.collect Ikeyen's Belongings##24411|q 9788/1
			.info A little tan metal chest sitting on a beg flat rock (inside the cave).
		step
			goto Zangarmarsh,72.5,94.0
			.kill Lord Klaq##18282|q 9894/1
			.info On the bottom level of the cave, in the small round room all the way in the back.
		step
			goto Zangarmarsh,75.7,90.2
			.kill 10 Marsh Dredger##18137|q 10096/1
			.kill 10 Marsh Lurker##18136|q 10096/2
		step
			goto Zangarmarsh,70.9,82.1
			.goal Umbrafen Lake Investigated|q 9716/1
		step
			goto Zangarmarsh,65.1,68.7
			.kill Rajah Haghazed##18046|q 9730/1
		step
			goto Zangarmarsh,65.2,40.9
			.kill Rajis Fyashe##18044|q 9817/1
		step
			goto Zangarmarsh,62.5,40.9
			.from Darkcrest Taskmaster##18086, Darkcrest Siren##18087, Darkcrest Slaver##19946, Darkcrest Sorceress##19947, Bloodscale Overseer##20088, Bloodscale Wavecaller##20089
			.get 30 Naga Claws##24280|q 9728/1
			.' You can find more around (1)|at 63.6,64.8
			.' You can find more around (2)|at 71,74.65
		step
			goto Zangarmarsh,62.5,40.9
			.from Darkcrest Taskmaster##18086, Darkcrest Siren##18087, Darkcrest Slaver##19946, Darkcrest Sorceress##19947, Bloodscale Overseer##20088, Bloodscale Wavecaller##20089
			.get 10 Unidentified Plant Parts##24401|q 9802/1
			.' You can find more around (1)|at 63.6,64.8
			.' You can find more around (2)|at 71,74.65
			only if rep("Cenarion Expedition")<Honored
		step
			goto Zangarmarsh,78.4,62
			.talk Ysiel Windsinger##17841
			..turnin Disturbance at Umbrafen Lake##9716
			..accept As the Crow Flies##9718
		step
			.use Stormcrow Amulet##25465
			.info Watch yourself fly as a crow.
			.goal Lakes of Zangarmarsh Explored|q 9718/1
		step
			goto Zangarmarsh,78.4,62
			.talk Ysiel Windsinger##17841
			..turnin As the Crow Flies##9718
			..accept Balance Must Be Preserved##9720
		step
			goto Zangarmarsh,79.1,65.3
			.talk Warden Hamoot##17858
			..turnin A Warm Welcome##9728
			..turnin Leader of the Darkcrest##9730
			..turnin Leader of the Bloodscale##9817
		step
			goto Zangarmarsh,80.4,64.2
			.talk Lauranna Thar'well##17909
			..turnin Plants of Zangarmarsh##9802
			only if rep("Cenarion Expedition")<Honored
		step
			goto Zangarmarsh,80.4,64.2
			.talk Lauranna Thar'well##17909
			..turnin Saving the Sporeloks##10096
		step
			goto Zangarmarsh,80.4,64.2
			.talk Ikeyen##17956
			..turnin A Damp, Dark Place##9788
		step
			goto Zangarmarsh,80.4,64.7
			.talk Windcaller Blackhoof##18070
			..turnin Safeguarding the Watchers##9894
			..accept Blessings of the Ancients##9785
		step
			goto Zangarmarsh,81.1,63.9
			.talk Ashyen##17900
			.' Get the Mark of Lore|q 9785/1
		step
			goto Zangarmarsh,79,67.4
			.talk Keleth##17901
			.' Get the Mark of War|q 9785/2
		step
			goto Zangarmarsh,80.4,64.7
			.talk Windcaller Blackhoof##18070
			..turnin Blessings of the Ancients##9785
		step
			goto Zangarmarsh,68.3,50.1
			.talk Vindicator Idaar##18004
			..accept The Dead Mire##9782
		step
			goto Zangarmarsh,68.2,49.4
			.talk Anchorite Ahuurn##18003
			..accept The Orebor Harborage##9776
			..accept The Boha'mu Ruins##9786
		step
			goto Zangarmarsh,68.6,48.7
			.talk Ruam##18007
			..accept Fulgor Spores##9777
		step
			goto Zangarmarsh,67.7,48
			.talk Haalrun##18005
			..accept Too Many Mouths to Feed##9781
		step
			goto Zangarmarsh,67.6,47.9
			.talk Noraani##18006
			..accept Menacing Marshfangs##9791
		step
			goto Zangarmarsh,71.3,46.9
			.collect 6 Fulgor Spore##24383|q 9777/1
			.info Little green glowing mushrooms around this area.
			.' You can find more around (Lift)|at 70.06,50.95
			.' You can find more around (Graveyard)|at 65.15,51.3
		step
			goto Zangarmarsh,62,40.83
			.use Ironvine Seeds##24355
			.info The pump controls look like a little box with some levers on it.
			.' Serpent Lake Controls Disabled|q 9720/3
			.' Kill Steam Pump Overseers, Bloodscale Overseers, and Bloodscale Wavecallers
			.collect Drain Schematics##24330|q 9731 |future
		step
			.use Drain Schematics##24330
			..accept Drain Schematics##9731
		step
			goto Zangarmarsh,80.7,43.4
			.collect Dead Mire Soil Sample##24400|q 9782/1
		step
			goto Zangarmarsh,85.3,50.35
			.kill 10 Marshfang Ripper##18130|q 9791/1
		step
			goto Zangarmarsh,68.3,50.1
			.talk Vindicator Idaar##18004
			..turnin The Dead Mire##9782
			..accept An Unnatural Drought##9783
		step
			goto Zangarmarsh,68.6,48.7
			.talk Ruam##18007
			..turnin Fulgor Spores##9777
		step
			goto Zangarmarsh,67.7,48
			.talk Noraani##18006
			..turnin Menacing Marshfangs##9791
			..accept Umbrafen Eel Filets##9780
		step
			goto Zangarmarsh,68.6,49.4
			.talk Prospector Conall##18295
			..accept Unfinished Business##9901
		step
			goto Zangarmarsh,78.44,44.43
			.kill Sporewing##18280|q 9901/1
			.info He looks like a Sporebat.
		step
			goto Zangarmarsh,78.3,45.2
			.kill 12 Withered Giant##18124|q 9783/1
			.collect Withered Basidium##24483|q 9827 |future
		step
			.use Withered Basidium##24483
			..accept Withered Basidium##9827
		step
			goto Zangarmarsh,68.3,50.1
			.talk Vindicator Idaar##18004
			..turnin An Unnatural Drought##9783
		step
			goto Zangarmarsh,68.6,49.4
			.talk Prospector Conall##18295
			..turnin Unfinished Business##9901
			..accept Blacksting's Bane##9896
		step
			goto Zangarmarsh,68.6,48.7
			.talk Ruam##18007
			..turnin Withered Basidium##9827
			..accept Withered Flesh##10355
		step
			goto Zangarmarsh,82.6,43.7
			.from Parched Hydra##20324
			.get 5 Parched Hydra Sample##29480|q 10355/1
			.from Withered Bog Lord##19402
			.get 5 Withered Bog Lord Sample##29481|q 10355/2
		step
			goto Zangarmarsh,68.6,48.7
			.talk Ruam##18007
			..turnin Withered Flesh##10355
		step
			goto Zangarmarsh,76.95,74.76
			.kill 10 Mire Hydra##18213|q 9781/1
			.' You can find more around (1)|at 74.2,60.7
			.' You can find more around (2)|at 57.05,62.15
		step
			goto Zangarmarsh,75.75,63.9
			.from Umbrafen Eel##18138
			.get 8 Eel Filet##24374|q 9780/1
		step
			goto Zangarmarsh,63.13,64.11
			.use Ironvine Seeds##24355
			.info The pump controls look like a little box with some levers on it.
			.' Lagoon Controls Disabled|q 9720/4
		step
			goto Zangarmarsh,70.6,80.3
			.use Ironvine Seeds##24355
			.info The pump controls look like a little box with some levers on it.
			.' Umbrafen Lake Controls Disabled|q 9720/1
		step
			goto Zangarmarsh,67.7,48
			.talk Haalrun##18005
			..turnin Too Many Mouths to Feed##9781
			..accept Diaphanous Wings##9790
		step
			goto Zangarmarsh,67.6,47.9
			.talk Noraani##18006
			..turnin Umbrafen Eel Filets##9780
		step
			goto Zangarmarsh,69.9,60.9
			.from Umbraglow Stinger##18132, Marshlight Bleeder##18133
			.get 8 Diaphanous Wing##24372|q 9790/1
			.' Position 1 (drop-chance 27%)|at 72.44,57.48
			.' Position 2 (drop-chance 27%)|at 71.2,67.99
			.' Position 3 (drop-chance 27%)|at 78.2,70.2
			.' Position 4 (drop-chance 27%)|at 78.7,80.2
			.' Position 5 (drop-chance 27%)|at 67.84,76.7
			.' Position 6 (drop-chance 27%)|at 63.5,71.5
			.' Position 7 (80% drop-chance)|at 15.7,38.7
		step
			goto Zangarmarsh,67.7,48
			.talk Haalrun##18005
			..turnin Diaphanous Wings##9790
		step
			goto Zangarmarsh,50.4,40.8
			.' Locate the drain in Serpent Lake|q 9731/1
			.info Swim straight down at this spot.
		step
			goto Zangarmarsh,49.5,59.2
			.from Blacksting##18283
			.get Blacksting's Stinger##25448|q 9896/1
		step
			goto Zangarmarsh,44.5,66.1|n
			.' The path up to 'The Boha'mu Ruins' starts here|goto Zangarmarsh,44.5,66.1,0.5|noway|q 9786
		step
			goto Zangarmarsh,44.1,68.8
			.' Explore the Boha'mu Ruins|goal Explore the Boha'mu Ruins|q 9786/1
		step
			goto Zangarmarsh,32.8,59.1
			.from "Count" Ungula##18285
			.collect "Count" Ungula's Mandible##25459|q 9911 |future
		step
			.use "Count" Ungula's Mandible##25459
			..accept The Count of the Marshes##9911
		step
			goto Zangarmarsh,23.3,66.2
			.talk Watcher Leesa'oh##17831
			..turnin Watcher Leesa'oh##9697
			..accept Observing the Sporelings##9701
			..turnin The Count of the Marshes##9911
		step
			goto Zangarmarsh,19.1,63.9
			.talk Fahssn##17923
			..accept The Sporelings' Plight##9739
			..accept Natural Enemies##9743
			only if rep ("Sporeggar")<=Friendly
		step
			goto Zangarmarsh,28.98,63.27
			.from Starving Fungal Giant##18125, Bog Lord##18127
			.get Bog Lord Tendril##24291|q 9743/1
			only if rep ("Sporeggar")<=Friendly
		step
			goto Zangarmarsh,19.1,63.9
			.talk Fahssn##17923
			..turnin Natural Enemies##9743
			only if rep ("Sporeggar")<=Friendly
		step
			goto Zangarmarsh,14.5,61.6
			.collect 40 Mature Spore Sac##24290|q 9739 |future
			.info They look like pink balls tied to a little string bobbing on the ground. You need 30 extra to turn in for Sporeggar reputation, so you can accept quests.
			only if rep ("Sporeggar")<=Friendly
		step
			goto Zangarmarsh,13.6,59.8
			.' Go here to Investigate the Spawning Glen|goal Investigate the Spawning Glen|q 9701/1
		step
			goto Zangarmarsh,19.1,63.9
			.talk Fahssn##17923
			..turnin The Sporelings' Plight##9739
			only if rep ("Sporeggar")<=Friendly
			.' Turn in all your Mature Spore Sacs.
			.' Turn in all your Bog Lord Tendrils.
		step
			goto Zangarmarsh,19.1,63.9
			.talk Fahssn##17923
			..accept Sporeggar##9919
			only if rep ("Sporeggar")>=Neutral
		step
			goto Zangarmarsh,23.3,66.2
			.talk Watcher Leesa'oh##17831
			..turnin Observing the Sporelings##9701
			..accept A Question of Gluttony##9702
		step
			goto Zangarmarsh,30.13,63.92
			.collect 10 Discarded Nutriment##24233|q 9702/1
			.info They look like green glowing mushroom stalks on the ground.
		step
			goto Zangarmarsh,23.3,66.2
			.talk Watcher Leesa'oh##17831
			..turnin A Question of Gluttony##9702
			..accept Familiar Fungi##9708
		step
			goto Zangarmarsh,19.7,52.1
			.talk Msshi'fn##17924
			..turnin Sporeggar##9919
			only if rep ("Sporeggar")>=Neutral
		step
			goto Zangarmarsh,19.5,50
			.talk Gzhun'tt##17856
			..accept Now That We're Friends...##9726
			only if rep ("Sporeggar")>=Friendly
		step
			goto Zangarmarsh,19.2,49.4
			.talk Gshaff##17925
			..accept Fertile Spores##9806
		step
			goto Zangarmarsh,20.3,60.25
			.from Marshfang Slicer##18131, Marsh Walker##18135
			.get 6 Fertile Spores##24449|q 9806/1
			.' You can find more around|at 19.7,68.55
		step
			goto Zangarmarsh,19.2,49.4
			.talk Gshaff##17925
			..turnin Fertile Spores##9806
		step
			goto Zangarmarsh,25.4,42.9
			.use Ironvine Seeds##24355
			.info The pump controls look like a little box with some levers on it.
			.' Marshlight Lake Controls Disabled|q 9720/2
		step
			goto Zangarmarsh,26.8,43
			.kill 12 Bloodscale Slavedriver##18089|q 9726/1
			.kill 6 Bloodscale Enchantress##18088|q 9726/2
			only if rep ("Sporeggar")>=Friendly
		step
			goto Zangarmarsh,19.5,50
			.talk Gzhun'tt##17856
			..turnin Now That We're Friends...##9726
			only if rep ("Sporeggar")>=Friendly
		step
			goto Zangarmarsh,41.2,28.7
			.talk Timothy Daniels##18019
			..accept Secrets of the Daggerfen##9848
		step
			goto Zangarmarsh,41.7,27.3
			.' Interact with gameobject: Wanted Poster
			.info On a pink crystal post.
			..accept Wanted: Chieftain Mummaki##10116
		step
			goto Zangarmarsh,41.9,27.2
			.talk Ikuti##18008
			..turnin The Orebor Harborage##9776
			..accept Ango'rosh Encroachment##9835
			..accept Daggerfen Deviance##10115
		step
			goto Zangarmarsh,26.4,22.8
			.collect Daggerfen Poison Vial##24500|q 9848/2
			.info Little clear bottle with white liquid in it, sitting on the ground next to a hut.
		step
			goto Zangarmarsh,24.4,27
			.collect Daggerfen Poison Manual##24499|q 9848/1
			.info At the top of the big tower, to the right as you reach the top, on the floor.
		step
			goto Zangarmarsh,23.8,26.8
			.from Chieftain Mummaki##19174
			.get Chieftain Mummaki's Totem##27943|q 10116/1
		step
			goto Zangarmarsh,28.2,22.1
			.kill 3 Daggerfen Assassin##18116|q 10115/1
			.kill 15 Daggerfen Muckdweller##18115|q 10115/2
		step
			goto Zangarmarsh,29.6,28.3
			.kill 5 Ango'rosh Shaman##18118|q 9835/1
			.kill 10 Ango'rosh Ogre##18117|q 9835/2
			.get 15 Mushroom Sample##24238|q 9708/1
		step
			goto Zangarmarsh,41.2,28.7
			.talk Timothy Daniels##18019
			..turnin Secrets of the Daggerfen##9848
		step
			goto Zangarmarsh,41.9,27.2
			.talk Ikuti##18008
			..turnin Ango'rosh Encroachment##9835
			..accept Overlord Gorefist##9839
			..turnin Wanted: Chieftain Mummaki##10116
			..turnin Daggerfen Deviance##10115
		step
			goto Zangarmarsh,41.6,27.3
			.talk Maktu##18010
			..accept Natural Armor##9834
		step
			goto Zangarmarsh,40.8,28.7
			.talk Puluu##18009
			..accept Stinger Venom##9830
			..accept Lines of Communication##9833
			..accept The Terror of Marshlight Lake##9902
		step
			goto Zangarmarsh,53.7,41.6
			.from Fenclaw Thrasher##18214
			.get 8 Fenclaw Hide##24486|q 9834/1
		step
			goto Zangarmarsh,50.4,40.8
			.' Locate the drain in Serpent Lake|q 9731/1
			.info Swim straight down at this spot.
		step
			goto Zangarmarsh,35.9,58.6
			.kill 12 Marshfang Slicer##18131|q 9833/1
		step
			goto Zangarmarsh,23.3,66.2
			.talk Watcher Leesa'oh##17831
			..turnin Familiar Fungi##9708
			..accept Stealing Back the Mushrooms##9709
		step
			goto Zangarmarsh,22.4,46.1
			.kill Terrorclaw##20477|q 9902/1
			.info On a little island.
		step
			goto Zangarmarsh,17.3,38.4
			.from Marshlight Bleeder##18133
			.info They are all around this area on the land, to the north and south.
			.get 6 Marshlight Bleeder Venom##24485|q 9830/1
			.' You'll be able to find more around|at 19.6,33.3
		step
			goto Zangarmarsh,18.3,7.7
			.kill Overlord Gorefist##18160|q 9839/1
			.info Follow the path up the hill. Overlord Gorefist is inside the small house on the left.
		step
			goto Zangarmarsh,17.3,10.2
			.kill 10 Ango'rosh Mauler##18120|q 9839/2
			.collect 10 Box of Mushrooms##24240|q 9709/1
			.info In boxes around the area, or from ogres.
		step
			goto Zangarmarsh,40.8,28.7
			.talk Puluu##18009
			..turnin Stinger Venom##9830
			..turnin Lines of Communication##9833
			..turnin The Terror of Marshlight Lake##9902
		step
			goto Zangarmarsh,41.6,27.3
			.talk Maktu##18010
			..turnin Natural Armor##9834
			..accept Maktu's Revenge##9905
		step
			goto Zangarmarsh,41.9,27.2
			.talk Ikuti##18008
			..turnin Overlord Gorefist##9839
		step
			goto Zangarmarsh,42.2,41.4
			.kill Mragesh##18286|q 9905/1
			.info He is a big brown hydra underwater.
		step
			goto Zangarmarsh,23.3,66.2
			.talk Watcher Leesa'oh##17831
			..turnin Stealing Back the Mushrooms##9709
			.info Don't follow her when she walks away.
		step
			goto Zangarmarsh,41.6,27.3
			.talk Maktu##18010
			..turnin Maktu's Revenge##9905
		step
			goto Zangarmarsh,68.2,49.4
			.talk Anchorite Ahuurn##18003
			..turnin The Boha'mu Ruins##9786
			..accept Idols of the Feralfen##9787
		step
			goto Zangarmarsh,68.6,49.4
			.talk Prospector Conall##18295
			..turnin Blacksting's Bane##9896
		step
			goto Zangarmarsh,49.3,60.6
			.collect 6 Feralfen Idol##24422|q 9787/1
			.info They are small grey and green eagle statues on the ground.
		step
			goto Zangarmarsh,68.2,49.4
			.talk Anchorite Ahuurn##18003
			..turnin Idols of the Feralfen##9787
			..accept Gathering the Reagents##9801
		step
			goto Zangarmarsh,63.3,52.1
			.from Sporebat##18128
			.get 4 Sporebat Eye##24426|q 9801/1
			.' You can find more Sporebat (1)|at 55.85,56.1
			.' You can find more Sporebat (2)|at 53.73,59.45
			.' You can find more Sporebat (3)|at 68.45,71.5
		step
			goto Zangarmarsh,70.17,70.25
			.from Fen Strider##18134
			.get 4 Fen Strider Tentacle##24427|q 9801/2
			.' You can find more Fen Strider|at 81.05,71.99
		step
			goto Zangarmarsh,68.2,49.4
			.talk Anchorite Ahuurn##18003
			..turnin Gathering the Reagents##9801
			..accept Messenger to the Feralfen##9803
		step
			goto Zangarmarsh,44.4,66.1
			.use Ahuurn's Elixir##24428
			.' Assume the form of one of their bird spirits|havebuff Spell_Shadow_BurningSpirit|q 9803
		step
			goto Zangarmarsh,44.1,69.5
			.talk Elder Kuruti##18197
			.' Get Elder Kuruti's Response|goal Elder Kuruti's Response|q 9803/1
		step
			goto Zangarmarsh,68.2,49.4
			.talk Anchorite Ahuurn##18003
			..turnin Messenger to the Feralfen##9803
		step
			goto Zangarmarsh,78.4,62
			.talk Ysiel Windsinger##17841
			..turnin Balance Must Be Preserved##9720
			..turnin Drain Schematics##9731
			..accept Warning the Cenarion Circle##9724
		step
			goto Hellfire Peninsula,15.7,52
			.talk Amythiel Mistwalker##16885
			..turnin Warning the Cenarion Circle##9724
			..accept Return to the Marsh##9732
		step
			goto Zangarmarsh,78.4,62
			.talk Ysiel Windsinger##17841
			..turnin Return to the Marsh##9732
		step
			.' Congratulations! +57/54 quests for achievement "Mysteries of the Marsh".	
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Burning Crusade\\[64] Terokkar Forest",[[
author danaton
description This guide contain quest-chain for Terokkar Forest (64/63 quests).
startlevel 64
		step
			.' It is recommended that you complete guide first: Zangarmarsh
			.info Manually skip this step.
		step
			goto Zangarmarsh,78.5,63.1
			.talk Lethyn Moonfire##17834
			..accept What's Wrong at Cenarion Thicket?##9957
		step
			goto Zangarmarsh,68.3,50.1
			.talk Vindicator Idaar##18004
			..accept The Fate of Tuurem##9793
		step
			goto Shattrath City,59.66,41.45
			.talk Haggard War Veteran##19684
			..accept A'dal##10210
			.' You can find Haggard here (Bridge)|at 59.5,20.95
			.' You can find Haggard here (Tunnel)|at 74.3,14.7
			.' You can find Haggard here (Tunnel)|at 81.9,43.9
			.' You can find Haggard here (Bridge)|at 70.2,52.7
		step
			goto Shattrath City,54,44.8
			.talk A'dal##18481
			..turnin A'dal##10210
		step
			goto Shattrath City,54.8,44.3
			.talk Khadgar##18166
			..accept City of Light##10211
		step
			.' Follow the pink voidwalker until the tour is over|goal City of Light|q 10211/1
		step
			goto Shattrath City,54.8,44.3
			.talk Khadgar##18166
			..turnin City of Light##10211
			..accept Allegiance to the Aldor##10551 |instant
			..accept Ishanah##10554
		step
			goto Shattrath City,24,29.7
			.talk Ishanah##18538
			..turnin Ishanah##10554
			..accept Restoring the Light##10021
		step
			goto Shattrath City,58,15.2
			.talk Oloraak##19045
			..accept Can't Stay Away##10180
		step
			goto Shattrath City,62.8,15.9
			.talk Seth##18653
			..accept Rather Be Fishin'##10037
		step
			goto Terokkar Forest,37.4,51.5
			.talk Kirrik the Awakened##22272
			..accept Speak with Rilak the Redeemed##10908
		step
			goto Shattrath City,52.5,21
			.talk Rilak the Redeemed##22292
			..turnin Speak with Rilak the Redeemed##10908
			..accept The Eyes of Skettis##10847
		step
			goto Terokkar Forest,38.6,8.5
			.from Shimmerscale Eel##18750
			.get 8 Pristine Shimmerscale Eel##25891|q 10037/1
		step
			goto Terokkar Forest,44.3,26.3
			.talk Earthbinder Tavgren##18446
			..turnin What's Wrong at Cenarion Thicket?##9957
			..accept Strange Energy##9968
			..accept Clues in the Thicket##9971
		step
			goto Terokkar Forest,45,22.5
			.talk Warden Treelos##18424
			..accept It's Watching You!##9951
		step
			goto Terokkar Forest,45.1,21.8
			.' Examine the Strange Object|goal Strange Object examined|q 9971/1
			.info Inside the building, looks like a white ball on the floor next to a dead guy.
		step
			goto Terokkar Forest,43.4,22.1
			.kill Naphthal'ar##18438|q 9951/1
			.info At the top of the big tower.
		step
			goto Terokkar Forest,45,22.5
			.talk Warden Treelos##18424
			..turnin It's Watching You!##9951
		step
			goto Terokkar Forest,44.1,23.8
			.from Vicious Teromoth##18437
			.get 4 Vicious Teromoth Sample##24279|q 9968/2
		step
			goto Terokkar Forest,44.3,26.3
			.talk Earthbinder Tavgren##18446
			..turnin Clues in the Thicket##9971
		step
			goto Terokkar Forest,45.8,29.8
			.from Teromoth##18468
			.get 4 Teromoth Sample##25672|q 9968/1
		step
			goto Terokkar Forest,44.3,26.3
			.talk Earthbinder Tavgren##18446
			..turnin Strange Energy##9968
			..accept By Any Means Necessary##9978
		step
			goto Terokkar Forest,47.1,27
			.talk Empoor##18482
			.info Fight Empoor until he's almost dead.
			..turnin By Any Means Necessary##9978
			..accept Wind Trader Lathrai##9979
			.' You can find Empoor here (Shattrath City)|at Shattrath City,88.68,44.65
			.' You can find Empoor here (Shattrath City)|at Shattrath City,83.3,53.43
			.' You can find Empoor here (Tuurem)|at Terokkar Forest,50.4,29.2
		step
			goto Terokkar Forest,49.2,20.3
			.' Interact with gameobject: Eastern Altar
			.' Purify the Eastern Altar|goal Eastern Altar|q 10021/2
		step
			goto Terokkar Forest,49.9,16.5|n
			.' The path up to the Eye of Veil Reskk starts here|goto Terokkar Forest,49.9,16.5,0.5|noway|q 10847
		step
			goto Terokkar Forest,50.1,19.4
			.collect Eye of Veil Reskk##25638|q 10847/1
			.info Looks like a big white orb at the top of the tower across the hanging bridge.
		step
			goto Terokkar Forest,50.7,16.6
			.' Interact with gameobject: Northern Altar
			.' Purify the Northern Altar|goal Northern Altar|q 10021/1
		step
			goto Terokkar Forest,48.1,14.5
			.' Interact with gameobject: Western Altar
			.' Purify the Western Altar|goal Western Altar|q 10021/3
		step
			goto Terokkar Forest,57.9,23.2
			.collect Eye of Veil Shienor##25642|q 10847/2
			.info Climb the path inside the other tree, run across the bridge, looks like a big white orb on the ground.
		step
			goto Shattrath City,72.2,30.7
			.talk Wind Trader Lathrai##18484
			..turnin Wind Trader Lathrai##9979
			..accept A Personal Favor##10112
		step
			goto Shattrath City,64,15.5
			.talk Seth##18653
			..turnin Rather Be Fishin'##10037
		step
			goto Shattrath City,52.5,21
			.talk Rilak the Redeemed##22292
			..turnin The Eyes of Skettis##10847
			..accept Seek Out Kirrik##10849
		step
			goto Shattrath City,24,29.7
			.talk Ishanah##18538
			..turnin Restoring the Light##10021
		step
			goto Terokkar Forest,37.4,51.5
			.talk Kirrik the Awakened##22272
			..turnin Seek Out Kirrik##10849
			..accept Veil Skith: Darkstone of Terokk##10839
		step
			goto Terokkar Forest,37.7,51.3
			.talk Ethan##22365
			..accept Missing Friends##10852
		step
			goto Terokkar Forest,38.2,50.5
			.talk Mekeda##22370
			..accept Before Darkness Falls##10878
		step
			goto Terokkar Forest,37.9,51.7
			.talk Lakotae##22420
			..accept The Infested Protectors##10896
		step
			goto Terokkar Forest,37.5,50.8
			.talk High Priest Orglum##22278
			..accept The Tomb of Lights##10840
		step
			goto Terokkar Forest,52.93,63.67
			.kill Infested Root-Walker##22095|n
			.kill 25 Wood Mite##22419|q 10896/1
			.' You can find more Infested Root-walkers (1)|at 35.2,48.8
			.' You can find more Infested Root-walkers (2)|at 39.1,47
		step
			goto Terokkar Forest,47.08,56.42
			.kill 10 Ethereal Nethermancer##21370|q 10840/1
			.kill 10 Ethereal Plunderer##21368|q 10840/2
		step
			goto Terokkar Forest,31.27,52.66|n
			.' Enter the tunnel and move to the end|goto 31.27,52.66,0.5|noway|q 10887 |future
		step
			goto Terokkar Forest,30.61,49.06
			.talk Akuno##22377
			..accept Escaping the Tomb##10887
			.info Warning! This is an escort quest!
		step
			goto Terokkar Forest,34.08,51.72
			.' Escort and help Akuno find his way to the Refugee Caravan|q 10887/1
		step
			goto Terokkar Forest,32.2,52.8
			.kill 8 Cabal Skirmisher##21661|q 10878/1
			.from Cabal Abjurist##21660, Cabal Skirmisher##21661, Cabal Tomb-Raider##21662
			.collect Cabal Orders##31707|q 10880 |future
		step
			.use Cabal Orders##31707
			..accept Cabal Orders##10880
		step
			goto Terokkar Forest,37.5,50.8
			.talk High Priest Orglum##22278
			..turnin The Tomb of Lights##10840
		step
			goto Terokkar Forest,37.4,51.2
			.talk Mekeda##22370
			..turnin Cabal Orders##10880
			..turnin Escaping the Tomb##10887
			..accept The Shadow Tomb##10881
		step
			goto Terokkar Forest,37.9,51.7
			.talk Lakotae##22420
			..turnin The Infested Protectors##10896
		step
			goto Terokkar Forest,37.1,49.5
			.talk Soolaveen##18675
			..accept Recover the Bones##10030
		step
			goto Terokkar Forest,39.62,59.05
			.kill 4 Cabal Spell-weaver##21902|q 10878/2
			.kill 2 Cabal Initiate##21907|q 10878/3
		step
			goto Terokkar Forest,37.4,51.2
			.talk Mekeda##22370
			..turnin Before Darkness Falls##10878
		step
			goto Terokkar Forest,31.3,52.65|n
			.' Go To Shadow Tomb Entrance|goto 31.3,52.65,0.5|noway|q 10881
		step
			goto Terokkar Forest,29.7,51.7
			.collect Gavel of K'alen##31710|q 10881/2
			.info Inside the Shadow Tomb, inside a Cabal Chest in the back left of the room on the ground.
		step
			goto Terokkar Forest,32.1,51.2
			.collect Drape of Arunen##31709|q 10881/1
			.info Inside the Shadow Tomb, inside a Cabal Chest in the back left of the room on the ground.
		step
			goto Terokkar Forest,31.2,46.7
			.collect Scroll of Atalor##31708|q 10881/3
			.info Inside the Shadow Tomb, inside a Cabal Chest in the back right of the room on the ground.
		step
			goto Terokkar Forest,37.4,51.2
			.talk Mekeda##22370
			..turnin The Shadow Tomb##10881
		step
			goto Terokkar Forest,30.8,42.1
			.use Rod of Purification##31610
			.' Purify the Darkstone of Terokk|goal Attempt to purify the Darkstone of Terrok|q 10839/1
		step
			goto Terokkar Forest,32.3,41.7
			.from Skithian Dreadhawk##18452,Skithian Windripper##18453
			.get 5 Lathrai's Stolen Goods##27861|q 10112/1
			.collect Veil Skith Prison Keys##31655|n
			.' Interact with gameobject: Veil Skith Cage
			.' Rescue 12 Children|goal 12 Children Rescued|q 10852/1
		step
			goto Terokkar Forest,37.4,51.5
			.talk Kirrik the Awakened##22272
			..turnin Veil Skith: Darkstone of Terokk##10839
			..accept Veil Rhaze: Unliving Evil##10848
		step
			goto Terokkar Forest,37.7,51.3
			.talk Ethan##22365
			..turnin Missing Friends##10852
		step
			goto Terokkar Forest,29.5,51.4
			.kill 4 Deathtalon Spirit##21198|q 10848/1
			.kill 4 Screeching Spirit##21200|q 10848/2
			.kill 2 Spirit Raven##21324|q 10848/3
		step
			goto Terokkar Forest,32.5,56.6
			.collect 10 Restless Bones##25842|q 10030/1
			.info There is a characteristic white glow on the ground near the bones.
		step
			goto Terokkar Forest,35.1,66.2
			.talk Ha'lei##19697
			..accept I See Dead Draenei##10227
		step
			goto Terokkar Forest,35.1,66.2
			.talk Ramdor the Mad##19417
			..turnin Recover the Bones##10030
			..turnin I See Dead Draenei##10227
			..accept Helping the Lost Find Their Way##10031
			..accept Ezekiel##10228
		step
			goto Terokkar Forest,44.1,65
			.talk Isfar##18933
			..turnin Can't Stay Away##10180
		step
			goto Terokkar Forest,37.4,51.5
			.talk Kirrik the Awakened##22272
			..turnin Veil Rhaze: Unliving Evil##10848
			..accept Veil Lithic: Preemptive Strike##10861
		step
			goto Terokkar Forest,37.5,50.8
			.talk High Priest Orglum##22278
			..accept Vengeful Souls##10842
		step
			goto Terokkar Forest,47,55.4|n
			.' Enter the tunnel|goto 47,55.4,0.5|noway|q 10842
		step
			goto Terokkar Forest,47.85,54.82
			.kill 5 Vengeful Draenei##21636|q 10842/1
		step
			goto Terokkar Forest,37.5,50.8
			.talk High Priest Orglum##22278
			..turnin Vengeful Souls##10842
		step
			goto Terokkar Forest,24.2,70.5
			.' Redeem 3 Hatchlings|goal 3 Hatchlings Redeemed|q 10861/1
			.info Open the purple glowing, brown eggs on the ground around this area.
			.kill 3 Malevolent Hatchling##22337|q 10861/2
		step
			goto Terokkar Forest,31.4,75.7
			.talk Scout Navrin##22364
			..accept Taken in the Night##10873
		step
			goto Terokkar Forest,31,76.1
			.talk Commander Ra'vaj##22446
			..accept An Improper Burial##10913
		step
			goto Terokkar Forest,31.1,76.1
			.talk Chief Archaeologist Letoll##22458
			..accept Digging Through Bones##10922
			.info Warning! This is an escort quest!
		step
			goto Terokkar Forest,30.1,70.8
			.' Escort the Archaeologists|goal Protect the Explorers|q 10922/1
		step
			goto Terokkar Forest,31,76.1
			.talk Dwarfowitz##22481
			..turnin Digging Through Bones##10922
			..accept Fumping##10929
		step
			goto Terokkar Forest,31.1,76.5
			.talk Oakun##22456
			..accept The Dread Relic##10877
		step
			goto Terokkar Forest,35,76.5
			.' Use your Sha'tari Torch on corpses|use Sha'tari Torch##31769
			.' Burn 8 Slain Sha'tar Vindicator corpses|goal 8 Slain Sha'tar Vindicator corpse burned|q 10913/1
			.' Burn 8 Slain Auchenai Warrior corpses|goal 8 Slain Auchenai Warrior corpse burned|q 10913/2
		step
			goto Terokkar Forest,31,76.1
			.talk Commander Ra'vaj##22446
			..turnin An Improper Burial##10913
			..accept A Hero Is Needed##10914
		step
			goto Terokkar Forest,36.7,74.4
			.kill 12 Auchenai Initiate##21284|q 10914/1
			.' You can find more around|at 33.6,67.4
			.kill 5 Auchenai Doomsayer##21285|q 10914/2
			.' You can find more around|at 48.1,67.15
		step
			goto Terokkar Forest,43.9,76.4
			.collect Dread Relic##31697|q 10877/1
		step
			goto Terokkar Forest,48.64,73.66
			.kill 10 Lost Spirit##18460|q 10031/1
			.kill 10 Broken Skeleton##16805|q 10031/2
		step
			goto Terokkar Forest,49.7,76.2
			.talk Vindicator Haylen##22462
			..accept For the Fallen##10920
		step
			goto Terokkar Forest,52.8,78.15
			.kill Netherweb Victim##22355|n
			.' Sha'tar Warrior Freed 6|q 10873/1
		step
			goto Terokkar Forest,53.76,72.32
			.talk Skywing##22424
			..accept Skywing##10898
		step
			goto Terokkar Forest,55.63,69.55
			.' Escort Skywing|q 10898/1
			.info Follow Skywing and protect him.
			.kill Luanga the Imprisoner##18533|q 10898/1
		step
			goto Terokkar Forest,53.9,58.8
			.kill 20 Dreadfang Widow##18467|q 10920/1
			.' You can find more around|at 25.3,65.3
		step
			goto Terokkar Forest,49.7,76.2
			.talk Vindicator Haylen##22462
			..turnin For the Fallen##10920
			..accept Terokkarantula##10921
		step
			goto Terokkar Forest,54.3,81.8
			.kill Terokkarantula##20682|q 10921/1
		step
			goto Terokkar Forest,49.7,76.2
			.talk Vindicator Haylen##22462
			..turnin Terokkarantula##10921
			..accept Return to Sha'tari Base Camp##10926
		step
			goto Terokkar Forest,42.06,76.39
			.use Fumper##31810
			.from Mature Bone Sifter##22482
			.get 8 Mature Bone Sifter Carcass##31814|q 10929/1
		step
			goto Terokkar Forest,31.4,75.7
			.talk Scout Navrin##22364
			..turnin Taken in the Night##10873
			..turnin Return to Sha'tari Base Camp##10926	
		step
			goto Terokkar Forest,31,76.1
			.talk Commander Ra'vaj##22446
			..turnin A Hero Is Needed##10914
			..accept The Fallen Exarch##10915
		step
			goto Terokkar Forest,31,76.1
			.talk Dwarfowitz##22481
			..turnin Fumping##10929
			..accept The Big Bone Worm##10930
		step
			goto Terokkar Forest,31.1,76.5
			.talk Oakun##22456
			..turnin The Dread Relic##10877
			..accept Evil Draws Near##10923
		step
			goto Terokkar Forest,47.17,76.9
			.kill Decrepit Clefthoof##22105|n
			.' Use Fumper on Clefthoof corpse|use Fumper##31825
			.from Hai'shulud##22038
			.get Enormous Bone Worm Organs##31826|q 10930/1
		step
			goto Terokkar Forest,48.9,67.9
			.from Auchenai Death-Speaker##21242, Auchenai Doomsayer##21285
			.collect 20 Doom Skull##31812|q 10923
		step
			goto Terokkar Forest,48.7,67.17
			.use Dread Relic##31811
			.kill Teribus the Cursed##22441|q 10923/1
		step
			goto Terokkar Forest,35.9,65.7
			.' Interact with gameobject: Auchenai Coffin
			.' Kill the Reanimated Exarch|goal Contents of the Auchenai Coffin destroyed|q 10915/1
		step
			goto Terokkar Forest,31,76.1
			.talk Commander Ra'vaj##22446
			..turnin The Fallen Exarch##10915
		step
			goto Terokkar Forest,31,76.1
			.talk Dwarfowitz##22481
			..turnin The Big Bone Worm##10930
		step
			goto Terokkar Forest,31.1,76.5
			.talk Oakun##22456
			..turnin Evil Draws Near##10923
		step
			goto Terokkar Forest,37.4,51.5
			.talk Kirrik the Awakened##22272
			..turnin Veil Lithic: Preemptive Strike##10861
			..accept Veil Shalas: Signal Fires##10874
		step
			goto Terokkar Forest,37.1,49.5
			.talk Soolaveen##18675
			..turnin Helping the Lost Find Their Way##10031
		step
			goto Terokkar Forest,54.9,66.0|n
			.' The path up to Veil Shalas starts here|goto Terokkar Forest,54.9,66.0,0.5|noway|q 10874
		step
			goto Terokkar Forest,57.3,65.0|n
			.' The path up to the Sapphire Signal Fire starts here|goto Terokkar Forest,57.3,65.0,0.3|noway|q 10874
		step
			goto Terokkar Forest,55.2,67.1
			.' Interact with gameobject: Sapphire Signal Fire
			.info Across the hanging bridge and down the spiraling stairs.
			.' Extinguish the Sapphire Signal Fire|goal Sapphire Fire Extinguished|q 10874/1
		step
			goto Terokkar Forest,57.0,71.8|n
			.' The path up to the Emerald Signal Fire starts here|goto Terokkar Forest,57.0,71.8,0.3|noway|q 10874
		step
			goto Terokkar Forest,55.5,69.7
			.' Interact with gameobject: Emerald Signal Fire
			.info Over the hanging bridge.
			.' Extinguish the Emerald Signal Fire|goal Emerald Fire Extinguished|q 10874/2
		step
			goto Terokkar Forest,56.0,72.7|n
			.' The path up to the Bloodstone and Violet Signal Fires starts here|goto Terokkar Forest,56.0,72.7,0.3|noway|q 10874
			.info It is a tunnel path inside the tree. The entrance is behind the tree to the right a little.
		step
			goto Terokkar Forest,56.1,72.4
			.' Interact with gameobject: Bloodstone Signal Fire
			.info Up the path inside the tree, on your left as you reach the top.
			.' Extinguish the Bloodstone Signal Fire|goal Bloodstone Fire Extinguished|q 10874/4
		step
			goto Terokkar Forest,56.7,69.2
			.' Interact with gameobject: Violet Signal Fire
			.info Across the hanging bridge from the Bloodstone Signal Fire.
			.' Extinguish the Violet Signal Fire|goal Violet Fire Extinguished|q 10874/3
		step
			goto Terokkar Forest,37.4,51.5
			.talk Kirrik the Awakened##22272
			..turnin Veil Shalas: Signal Fires##10874
			..accept Return to Shattrath##10889
		step
			goto Terokkar Forest,57.6,54.7
			.' Interact with gameobject: Wanted Poster
			.info Right in front of the town hall building, next to light post.
			..accept Wanted: Bonelashers Dead!##10033
		step
			goto Terokkar Forest,57.4,55.4
			.talk Ros'eleth##18390
			..accept Olemba Seeds##9992
		step
			goto Terokkar Forest,57.5,55.8
			.talk Lieutenant Gravelhammer##18713
			..accept Speak with Private Weeks##10038
			..accept Thin the Flock##10869
		step
			goto Terokkar Forest,57.8,54.3
			.talk Thander##18389
			..accept Stymying the Arakkoa##9986
		step
			goto Terokkar Forest,58.3,54.8
			.talk Bertelm##18387
			..accept Unruly Neighbors##9998
			..accept Timber Worg Tails##10016
		step
			goto Terokkar Forest,58.5,53.6
			.talk Andarl##18252
			..turnin The Fate of Tuurem##9793
			..accept Magical Disturbances##10026
		step
			goto Shattrath City,72.2,30.7
			.talk Wind Trader Lathrai##18484
			..turnin A Personal Favor##10112
			..accept Investigate Tuurem##9990
		step
			goto Shattrath City,49.1,35.9
			.talk Ezekiel##19715
			..turnin Ezekiel##10228
			..accept What Book? I Don't See Any Book##10231
		step
			goto Shattrath City,52.6,21
			.talk Rilak the Redeemed##22292
			..turnin Return to Shattrath##10889
			..turnin Skywing##10898
		step
			goto Shattrath City,51.75,20.8
			.talk Defender Grashna##22373
			..accept The Skettis Offensive##10879
			.info You are about to fight three waves of birds and a bird boss. Make sure you're ready.
		step
			goto Shattrath City,52.6,21
			.kill Minion of Terokk##22376|n
			.kill Avatar of Terokk##22375|n
			.' Thwart the Attack|goal Attack thwarted|q 10879/1
		step
			goto Shattrath City,52.6,21
			.talk Rilak the Redeemed##22292
			..turnin The Skettis Offensive##10879
		step
			goto Shattrath City,43.63,29.77
			.talk "Dirty" Larry##19720
			.' Tell him "Ezekiel said that you might have a certain book..."
			.kill "Dirty" Larry##19720|n
			.info He will eventually turn friendly.
			.' Beat Down "Dirty" Larry and Get the Information|q 10231/1
		step
			goto Shattrath City,43.63,29.78
			.talk "Dirty" Larry##19720
			..turnin What Book? I Don't See Any Book##10231
		step
			goto Terokkar Forest,41.6,51.6
			.kill 20 Bonelasher##18470|q 10033/1
		step
			goto Terokkar Forest,43.75,31.57
			.collect 30 Olemba Seed##25745|q 9992/1
			.info The cones look like little white glowing pine cones on the ground.
			.' You can find more Olemba Seed (3 pcs)|at 34.15,41.92
			.' You can find more Olemba Seed (4 pcs)|at 38,14.95
			.' You can find more Olemba Seed (3 pcs)|at 56.5,47
			.' You can find more Olemba Seed (6 pcs)|at 70,45.5
		step
			goto Terokkar Forest,34.42,40.43
			.kill 10 Warp Stalker##18464|q 10026/1
			.' You can find more Warp Stalker (1)|at 58.6,39.5
			.' You can find more Warp Stalker (2)|at 63.3,31.3
			.' You can find more Warp Stalker (3)|at 68.5,41.4
			.from Timber Worg##18476
			.get 12 Timber Worg Tail##25807|q 10016/1
			.' You can find more Worg Tail (1)|at 43.2,32
			.' You can find more Worg Tail (2)|at 51.1,37
			.' You can find more Worg Tail (3)|at 46.5,18.8
		step
			goto Terokkar Forest,30.1,42.5|n
			.' The path up to Urdak starts here|goto Terokkar Forest,30.1,42.5,0.3|noway|q 9986
		step
			goto Terokkar Forest,31.4,42.5
			.kill Urdak##18541|q 9986/3
		step
			goto Terokkar Forest,40.5,36.2
			.talk Private Weeks##18715
			..turnin Speak with Private Weeks##10038
			..accept Who Are They?##10040
		step
			goto Terokkar Forest,40.5,36.2
			.talk Private Weeks##18715
			.' He puts an orc disguise on you|havebuff Spell_Shadow_NetherCloak|q 10040
			.' Be careful, the hunter in the camp can see through the disguise.
			.' The hunter is the guy walking around the camp with a group of mobs.
		step
			goto Terokkar Forest,40.3,39.1
			.talk Shadowy Advisor##18719|goal Shadowy Advisor Spoken To|q 10040/3
			.info Be careful, the hunter in the camp can see through the disguise.
		step
			goto Terokkar Forest,39,39.7
			.talk Shadowy Initiate##18716|goal Shadowy Initiate Spoken To|q 10040/1
			.info Be careful, the hunter in the camp can see through the disguise.
		step
			goto Terokkar Forest,38.2,41.2
			.talk Shadowy Laborer##18717|goal Shadowy Laborer Spoken To|q 10040/2
			.info Be careful, the hunter in the camp can see through the disguise.
		step
			goto Terokkar Forest,40.5,36.2
			.talk Private Weeks##18715
			..turnin Who Are They?##10040
			..accept Kill the Shadow Council!##10042
		step
			goto Terokkar Forest,40.3,39.1
			.kill Shadowmaster Grieve##18720|q 10042/3
		step
			goto Terokkar Forest,39.8,40.8
			.kill 10 Shadowy Executioner##16519|q 10042/1
			.kill 10 Shadowy Summoner##17088|q 10042/2
		step
			goto Terokkar Forest,54,30
			.collect Sealed Box##25727|q 9990/1
			.info A green glowing crate inside the hut directly east of you if you are standing on the bridge.
		step
			goto Terokkar Forest,44.3,26.3
			.talk Earthbinder Tavgren##18446
			..turnin Investigate Tuurem##9990
			..accept What Are These Things?##9994
		step
			goto 49.9,16.5|n
			.' The path up to Ashkaz starts here|goto Terokkar Forest,49.9,16.5,0.3|noway|q 9986
		step
			goto Terokkar Forest,49.1,16.9
			.kill Ashkaz##18539|q 9986/1
		step
			goto Terokkar Forest,48.9,17.3
			.kill 14 Shienor Talonite##18449|q 10869/1
			.kill 6 Shienor Sorcerer##18450|q 10869/2
		step
			goto Terokkar Forest,59.4,23.4
			.kill Ayit##18540|q 9986/2
		step
			goto Terokkar Forest,65.5,50.6
			.kill 12 Warped Peon##18595|q 9998/1
		step
			goto Terokkar Forest,69.7,44.2
			.talk Theloria Shadecloak##18565
			..turnin Unruly Neighbors##9998
			..accept The Firewing Liaison##10002
			..accept Thinning the Ranks##10007
		step
			goto Terokkar Forest,68,53.2
			.kill Lisaile Fireweaver##18583|q 10002/1
		step
			goto Terokkar Forest,67.9,53.6
			.' Interact with gameobject: Fel Orc Plans
			.info Inside the big building, it's a brown flat scroll laying on the floor next to some big logs.
			..accept Fel Orc Plans##10012
		step
			goto Terokkar Forest,66.3,55.0
			.kill 10 Bonechewer Devastator##16772|q 10007/1
			.kill 6 Bonechewer Backbreaker##16810|q 10007/2
		step
			goto Terokkar Forest,69.7,44.2
			.talk Theloria Shadecloak##18565
			..turnin The Firewing Liaison##10002
			..turnin Thinning the Ranks##10007
		step
			goto Terokkar Forest,57,53.5
			.talk Jenai Starwhisper##18459
			..turnin What Are These Things?##9994
			..accept Report to the Allerian Post##10444
		step
			goto Terokkar Forest,57.4,55.4
			.talk Ros'eleth##18390
			..turnin Olemba Seeds##9992
			..accept Vessels of Power##10028
		step
			goto Terokkar Forest,57.5,55.8
			.talk Lieutenant Gravelhammer##18713
			..turnin Kill the Shadow Council!##10042
			..turnin Thin the Flock##10869
		step
			goto Terokkar Forest,57.8,54.3
			.talk Thander##18389
			..turnin Stymying the Arakkoa##9986
		step
			goto Terokkar Forest,58.3,54.8
			.talk Bertelm##18387
			..turnin Fel Orc Plans##10012
			..turnin Timber Worg Tails##10016
			..accept The Elusive Ironjaw##10022
		step
			goto Terokkar Forest,58.5,53.6
			.talk Andarl##18252
			..turnin Magical Disturbances##10026
		step
			goto Terokkar Forest,58.1,53.4
			.talk Taela Everstride##18704
			..turnin Wanted: Bonelashers Dead!##10033
			..accept Torgos!##10035
		step
			goto Terokkar Forest,43.2,51.6
			.from Trachela##21515
			.collect Trachela's Carcass##30618|q 10035
		step
			goto Terokkar Forest,26.9,55.7
			.use Trachela's Carcass##30618
			.from Torgos##18707
			.get Tail Feather of Torgos##25852|q 10035/1
		step
			goto Terokkar Forest,58.1,53.4
			.talk Taela Everstride##18704
			..turnin Torgos!##10035
		step
			goto Terokkar Forest,69.7,44.2
			.talk Lieutenant Meridian##21006
			..turnin Report to the Allerian Post##10444
			..accept Attack on Firewing Point##9996
		step
			goto Terokkar Forest,66.3,34.7
			.from Ironjaw##18670
			.get Ironjaw's Pelt##25837|q 10022/1
		step
			goto Terokkar Forest,71.32,37.38
			.kill 10 Firewing Defender##5355|q 9996/1
			.kill 10 Firewing Bloodwarder##1410|q 9996/2
			.kill 10 Firewing Warlock##16769|q 9996/3
		step
			goto Terokkar Forest,73.9,35.2
			.talk Isla Starmane##18760
			..accept Escape from Firewing Point!##10051
			.info Warning! This is an escort quest.
		step
			goto Terokkar Forest,67.48,37.29
			.goal Escort Isla Starmane to safety|q 10051/1
		step
			goto Terokkar Forest,54.1,32.1
			.collect 8 Draenei Vessel##25841|q 10028/1
			.info They look like little pink glowing lanterns. Not all of the little lanters give you a Dranei Vessel, some will AoE you. Note: you can reach some of them through the walls.
		step
			goto Terokkar Forest,57.4,55.4
			.talk Ros'eleth##18390
			..turnin Vessels of Power##10028
		step
			goto Terokkar Forest,57.2,55.7
			.talk Captain Auric Sunchaser##18745
			..turnin Escape from Firewing Point!##10051
		step
			goto Terokkar Forest,58.3,54.8
			.talk Bertelm##18387
			..turnin The Elusive Ironjaw##10022
		step
			goto Terokkar Forest,69.7,44.2
			.talk Lieutenant Meridian##21006
			..turnin Attack on Firewing Point##9996
			..accept The Final Code##10446
		step
			goto Terokkar Forest,73.3,34.6
			.' Interact with gameobject: Orb of Translocation
			.info Upstairs from Isla Starmane, on the balcony.
			.' It will teleport you to the top of the tower|goto 73.5,35,0.3|noway|q 10446
		step
			goto Terokkar Forest,73.9,35.8
			.from Sharth Voldoun##18554
			.collect The Final Code##29912|q 10446
		step
			goto Terokkar Forest,74.2,36.5
			.' Interact with gameobject: Orb of Translocation
			.info Up the ramp from Sharth Voldoun.
			.' It will teleport you to the bottom of the tower|goto 73.3,36.3,0.3|noway|q 10446
		step
			goto Terokkar Forest,71.3,37.4
			.' Interact with gameobject: Mana Bomb
			.' Activate the Mana Bomb using the Final Code|goal Mana Bomb Activated|q 10446/1
		step
			goto Terokkar Forest,57,53.5
			.talk Jenai Starwhisper##18459
			..turnin The Final Code##10446
			..accept Letting Earthbinder Tavgren Know##10005
		step
			goto Terokkar Forest,44.3,26.3
			.talk Earthbinder Tavgren##18446
			..turnin Letting Earthbinder Tavgren Know##10005
		step
			.' Congratulations! +64/63 quests for achievement "Terror of Terokkar".	
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Burning Crusade\\[68] Nagrand",[[
author danaton
description This guide contain quest-chain (75 quests) for Nagrand location.
startlevel 68
		step
			goto Zangarmarsh,41.21,28.67
			.talk Timothy Daniels##18019
			..accept Secrets of the Daggerfen##9848
		step
			goto Zangarmarsh,41.74,27.26
			.' Click Wanted Poster
			..accept Wanted: Chieftain Mummaki##10116
		step
			goto Zangarmarsh,41.95,27.19
			.talk Ikuti##18008
			..turnin The Orebor Harborage##9776
			..accept Ango'rosh Encroachment##9835
			..accept Daggerfen Deviance##10115
		step
			goto Zangarmarsh,26.41,22.84
			.collect Daggerfen Poison Vial##24500|q 9848/2
		step
			goto Zangarmarsh,24.40,27.00
			.collect Daggerfen Poison Manual##24499|q 9848/1|tip At the top of the tower.
		step
			goto Zangarmarsh,23.78,26.75
			.from Chieftain Mummaki##19174|tip At the top of the tower.
			.get Chieftain Mummaki's Totem##27943|q 10116/1
		step
			goto Zangarmarsh,25.20,25.34
			.kill 3 Daggerfen Assassin##18116|q 10115/1
			.kill 15 Daggerfen Muckdweller##18115|q 10115/2
		step
			goto Zangarmarsh,31.46,30.06
			.kill 5 Ango'rosh Shaman##18118|q 9835/1
			.kill 10 Ango'rosh Ogre##18117|q 9835/2
		step
			goto Zangarmarsh,41.21,28.67
			.talk Timothy Daniels##18019
			..turnin Secrets of the Daggerfen##9848
		step
			goto Zangarmarsh,41.94,27.19
			.talk Ikuti##18008
			..turnin Ango'rosh Encroachment##9835
			..accept Overlord Gorefist##9839
			..turnin Wanted: Chieftain Mummaki##10116
			..turnin Daggerfen Deviance##10115
		step
			goto Nagrand,71.57,40.52
			.talk Shado 'Fitz' Farstrider##18200
			..accept Windroc Mastery##9854
		step
			goto Nagrand,71.52,40.82
			.talk Hemet Nesingwary##18180
			..accept Clefthoof Mastery##9789
		step
			goto Nagrand,71.38,40.62
			.talk Harold Lane##18218
			..accept Talbuk Mastery##9857
		step
			goto Nagrand,71.29,47.09
			.kill 12 Talbuk Stag##17130|q 9857/1
			.' You can find more around [65.37,47.19]
		step
			goto Nagrand,71.29,47.09
			.kill 12 Clefthoof##18205|q 9789/1
			.' You can find more around [65.37,47.19]
		step
			goto Nagrand,71.29,47.09
			.kill 12 Windroc##17128|q 9854/1
			.' You can find more around [65.37,47.19]
		step
			goto Nagrand,71.29,47.09
			.from Wild Elekk##18334+
			.get 3 Pair of Ivory Tusks##25463|q 9914 |future
			.' You can find more around [65.37,47.19]
		step
			goto Nagrand,65.37,47.19
			.from Dust Howler##17158
			..accept The Howling Wind##9861|tip You will eventually automatically accept this quest after looting.
		step
			goto Nagrand,71.57,40.52
			.talk Shado 'Fitz' Farstrider##18200
			..turnin Windroc Mastery##9854 
			..accept Windroc Mastery##9855
		step
			goto Nagrand,71.52,40.82
			.talk Hemet Nesingwary##18180
			..turnin Clefthoof Mastery##9789
			..accept Clefthoof Mastery##9850
		step
			goto Nagrand,71.38,40.62
			.talk Harold Lane##18218
			..turnin Talbuk Mastery##9857
			..accept Talbuk Mastery##9858
		step
			goto Nagrand,60.51,22.37
			.talk Elementalist Morgh##18074
			..turnin The Howling Wind##9861
			..accept Murkblood Corrupters##9862
		step
			goto Nagrand,60.66,22.66
			.talk Elementalist Untrag##18071
			..accept The Underneath##9818
		step
			goto Nagrand,60.80,22.38
			.talk Elementalist Lo'ap##18073
			..accept A Rare Bean##9800
			..accept Muck Diving##9815
		step
			goto Nagrand,61.26,22.26
			.talk Gordawg##18099
			..turnin The Underneath##9818
			..accept The Tortured Earth##9819
		step
			goto Nagrand,55.7,22.0
			.collect 8 Digested Caracoli##24419|q 9800/1|tip They look like piles of poo on the ground around this area.
		step
			goto Nagrand,55.7,22.0
			.kill 12 Talbuk Thorngrazer##17131|q 9858/1
		step
			goto Nagrand,51.6,30.8
			.kill 12 Clefthoof Bull##17132|q 9850/1
			.' You can find more around [45.91,30.57]
		step
			goto Nagrand,51.94,34.78
			.talk Consortium Recruiter##18335
			..accept The Consortium Needs You!##9913
		step
			goto Nagrand,42.33,39.53
			.from Muck Spawn##17154+
			.get 5 Muck-ridden Core##24469|q 9815/1
		step
			goto Nagrand,32.20,43.26
			.kill 5 Murkblood Putrifier##18202|q 9862/1
		step
			goto Nagrand,30.78,58.14
			.talk Zerid##18276
			..accept Gava'xi##9900
			..accept Matters of Security##9925
		step
			goto Nagrand,31.36,57.80
			.talk Gezhe##18265
			..turnin The Consortium Needs You!##9913 
			..accept Stealing from Thieves##9882
		step
			goto Nagrand,31.77,56.78
			.talk Shadrek##18333
			..accept A Head Full of Ivory##9914
		step
			goto Nagrand,31.77,56.78
			.talk Shadrek##18333
			..turnin A Head Full of Ivory##9914
		step
			goto Nagrand,35.03,65.00
			.collect 10 Oshu'gun Crystal Fragment##25416|q 9882/1|tip They look like green and white crystals on the ground around this area.
			.' You can find more around [41.21,70.42]
		step
			goto Nagrand,39.98,74.63
			.kill 8 Voidspawn##17981|q 9925/1
		step
			goto Nagrand,42.40,73.49
			.kill Gava'xi##18298|q 9900/1|tip He spawns here and walks around this area.
		step
			goto Nagrand,48.4,61.5
			.kill 12 Ravenous Windroc##18220|q 9855/1
		step
			goto Nagrand,30.78,58.14
			.talk Zerid##18276
			..turnin Gava'xi##9900
			..turnin Matters of Security##9925
		step
			goto Nagrand,31.36,57.80
			.talk Gezhe##18265
			..turnin Stealing from Thieves##9882 
		step
			goto Nagrand,54.15,69.52
			.talk Huntress Kima##18416
			..accept The Ravaged Caravan##9956
			..accept He Called Himself Altruis...##9982
		step
			goto Nagrand,55.05,70.54
			.talk Huntress Bintook##18353
			..accept Do My Eyes Deceive Me##9917
		step
			goto Nagrand,55.51,68.78
			.talk Elementalist Ioki##18233
			..accept The Throne of the Elements##9869
		step
			goto Nagrand,54.68,70.73
			.' Click Telaar Bulletin Board
			..accept Wanted: Giselda the Crone##9936
			..accept Wanted: Zorbo the Advisor##9940
		step
			goto Nagrand,54.74,70.88
			.talk Warden Moi'bff Jill##18408
			..turnin A Message to Telaar##9792
			..accept Fierce Enemies##10476
		step
			goto Nagrand,54.48,72.08
			.talk Otonbu the Sage##18222
			..accept Stopping the Spread##9874
		step
			goto Nagrand,54.46,72.30
			.talk Poli'lukluk the Wiser##18224
			..accept Solving the Problem##9878
		step
			goto Nagrand,54.17,75.06
			.talk Furgu##18789
			.fpath Telaar, Nagrand
		step
			goto Nagrand,54.36,74.42
			.talk Caregiver Isel##18914
			home Telaar
		step
			goto Nagrand,61.68,67.11
			.talk Wazat##19035
			..accept I Must Have Them!##10109
		step
			goto Nagrand,62.35,72.14
			.from Boulderfist Hunter##18352
			.get Boulderfist Plans##25468|q 9917/1
		step
			goto Nagrand,64.66,71.01
			.kill 10 Tortured Earth Spirit##17156|q 9819/1
			.' You can find more around [57.62,61.64]
		step
			goto Nagrand,71.16,82.35
			.kill Giselda the Crone##18391|q 9936/1 
		step
			goto Nagrand,72.56,70.70
			.talk Corki##18369
			..accept HELP!##9923
		step
			goto Nagrand,72.98,70.48
			.from Boulderfist Crusher##17134, Boulderfist Mystic##17135
			.get Boulderfist Key##25490|q 9923
		step
			goto Nagrand,72.56,70.70
			.' Free Corki|q 9923/1
		step
			goto Nagrand,73.01,68.95
			.' kill Boulderfist enemies around this area
			.get 10 Obsidian Warbeads##25433 |q 10476/1
		step
			goto Nagrand,65.5,46.9
			.from Dust Howler##17158+
			.get 3 Air Elemental Gas##27807|q 10109/1
			.' You can find more around [69.7,44.7]
		step
			goto Nagrand,71.38,40.62
			.talk Harold Lane##18218
			..turnin Talbuk Mastery##9858
			..accept Talbuk Mastery##9859
		step
			goto Nagrand,71.52,40.82
			.talk Hemet Nesingwary##18180
			..turnin Clefthoof Mastery##9850
			..accept Clefthoof Mastery##9851
		step
			goto Nagrand,71.57,40.52
			.talk Shado 'Fitz' Farstrider##18200
			..turnin Windroc Mastery##9855
			..accept Windroc Mastery##9856
		step
			goto Nagrand,61.8,24.4
			.talk Gordawg##18099
			..turnin The Tortured Earth##9819
			..accept Eating Damnation##9821
		step
			goto Nagrand,60.80,22.38
			.talk Elementalist Lo'ap##18073
			..turnin A Rare Bean##9800
			..accept Agitated Spirits of Skysong##9804
			..turnin Muck Diving##9815
		step
			goto Nagrand,60.66,22.10
			.talk Elementalist Sharvak##18072
			..turnin The Throne of the Elements##9869
		step
			goto Nagrand,60.51,22.37
			.talk Elementalist Morgh##18074
			..turnin Murkblood Corrupters##9862
		step
			goto Nagrand,59.7,27.3
			.kill 8 Lake Spirit##17153|q 9804/1
		step
			goto Nagrand,60.80,22.38
			.talk Elementalist Lo'ap##18073
			..turnin Agitated Spirits of Skysong##9804
			..accept Blessing of Incineratus##9805
		step
			goto Nagrand,52,20.2
			.from Enraged Crusher##18062+
			.get 10 Enraged Crusher Core##24473|q 9821/1
		step
			goto Nagrand,61.8,24.4
			.talk Gordawg##18099
			..turnin Eating Damnation##9821
			..accept Shattering the Veil##9849
		step
			goto Nagrand,46.48,18.20
			.kill Zorbo the Advisor##18413|q 9940/1
			.info Inside the small cave.
		step
			goto Nagrand,45.37,22.12
			.kill 10 Warmaul Shaman##18064|q 9940/2
		step
			goto Nagrand,45.37,22.12
			.kill 10 Warmaul Reaver##17138|q 9940/3 
		step
			goto Nagrand,34.1,26.5
			.from Gutripper##18257
			.info He looks like a big black bird that flies around this area.|tip He sometimes flies high in the air.
			.get Eye of Gutripper##24513|q 9856/1
		step
			goto Nagrand,25.70,27.61
			.' Click Telaar Supply Crate
			.info They look like grey metal boxes on the ground around this area.
			.collect 10 Telaar Supply Crate##25647|q 9956/1
		step
			goto Nagrand,26.85,45.95
			.from Bach'lor##18258
			.info He looks like a larger grey talbuk that walks around this area.
			.get Hoof of Bach'lor##24523|q 9859/1
		step
			goto Nagrand,27.33,43.08
			.talk Altruis the Sufferer##18417
			..turnin He Called Himself Altruis...##9982
			..accept Survey the Land##9991
		step
			.' Survey the Forge Camps|q 9991/1
		step
			goto Nagrand,27.33,43.08
			.talk Altruis the Sufferer##18417
			..turnin Survey the Land##9991
			..accept Buying Time##9999
		step
			goto Nagrand,20.05,51.43
			.kill 2 Felguard Legionnaire##17152|q 9999/1
		step
			goto Nagrand,20.05,51.43
			.kill 3 Mo'arg Engineer##16945|q 9999/2
		step
			goto Nagrand,20.05,51.43
			.kill 8 Gan'arg Tinkerer##17151 |q 9999/3
		step
			goto Nagrand,27.33,43.08
			.talk Altruis the Sufferer##18417
			..turnin Buying Time##9999
			..accept The Master Planner##10001
		step
			goto Nagrand,23.61,34.64
			.from Mo'arg Master Planner##18567
			.get The Master Planner's Blueprints##25751|q 10001/1
		step
			goto Nagrand,27.33,43.08
			.talk Altruis the Sufferer##18417
			..turnin The Master Planner##10001
			..accept Patience and Understanding##10004 
		step
			goto Nagrand,33.58,48.00
			.' Use the Torch of Liquid Fire|use Torch of Liquid Fire##24560
			.info Use it on Sunspring Villager Corpses underwater around this area.
			.' Burn 10 Sunspring Villager Corpses|q 9874/1
		step
			goto Nagrand,31.9,42.9
			.kill 10 Murkblood Scavenger##18207|q 9878/1
			.kill 5 Murkblood Raider##18203|q 9878/2
		step
			goto Nagrand,29.86,78.76
			.' Use Gordawg's Boulder|use Gordawg's Boulder##24501
			.info Use it on Shattered Rumblers around this area.
			.kill 30 Minion of Gurok##18181|q 9849/1
			.info They spawn after you.		
		step
			goto Nagrand,35.63,64.82
			.from Banthar##18259
			.info He looks like a huge red colored clefthoof that walks around this area.
			.get Horn of Banthar##24496|q 9851/1
		step
			goto Nagrand,54.15,69.52
			.talk Huntress Kima##18416
			..turnin The Ravaged Caravan##9956
		step
			goto Nagrand,54.47,72.31
			.talk Poli'lukluk the Wiser##18224
			..turnin Solving the Problem##9878
		step
			goto Nagrand,54.48,72.09
			.talk Otonbu the Sage##18222
			..turnin Stopping the Spread##9874 
		step
			goto Nagrand,54.74,70.87
			.talk Warden Moi'bff Jill##18408
			..turnin Fierce Enemies##10476
			..turnin Wanted: Giselda the Crone##9936
			..turnin Wanted: Zorbo the Advisor##9940
			..accept Wanted: Durn the Hungerer##9938
		step
			goto Nagrand,55.05,70.53
			.talk Huntress Bintook##18353
			..turnin Do My Eyes Deceive Me##9917
			..accept Not On My Watch!##9918
		step
			goto Nagrand,55.48,68.71
			.talk Arechron##18183
			..turnin HELP!##9923
			..accept Corki's Gone Missing Again!##9924
		step
			goto Nagrand,34.76,60.56
			.kill Durn the Hungerer##18411|q 9938/1
			.info He looks like a huge brown colored enemy that walks around this area.
		step
			goto Nagrand,54.74,70.87
			.talk Warden Moi'bff Jill##18408
			..turnin Wanted: Durn the Hungerer##9938
		step
			goto Nagrand,61.68,67.11
			.talk Wazat##19035
			..turnin I Must Have Them!##10109
			..accept Bring Me The Egg!##10111
		step
			goto Nagrand,61.34,66.99
			.' Click Mysterious Egg
			.info It looks like a big white egg with light blue spots on it in a nest in the tree.
			.' Attempt to Steal the Egg|q 10111/1
		step
			goto Nagrand,61.56,66.50
			.from Windroc Matriarch##19055
			.info She takes a while to fly down to you.
			.get Severed Talon of the Matriarch##27841|q 10111/2
		step
			goto Nagrand,61.68,67.11
			.talk Wazat##19035
			..turnin Bring Me The Egg!##10111
		step
			goto Nagrand,62.74,71.49
			.' Kill Lump
			.info He will eventually turn friendly.
			.talk Lump##18351
			.' Tell him "I need answers, ogre!"
			.' Interrogate Lump|q 9918/1
		step
			goto Nagrand,55.05,70.53
			.talk Huntress Bintook##18353
			..turnin Not On My Watch!##9918
			..accept Mo'mor the Breaker##9920
		step
			goto Nagrand,54.61,72.21
			.talk Mo'mor the Breaker##18223
			..turnin Mo'mor the Breaker##9920
			..accept The Ruins of Burning Blade##9921
		step
			goto Nagrand,72.9,69.8
			.kill 8 Boulderfist Crusher##17134|q 9921/1
			.' You can find more around [74.82,64.19]
		step
			goto Nagrand,72.9,69.8
			.kill 8 Boulderfist Mystic##17135|q 9921/2
			.' You can find more around [74.82,64.19]
		step
			goto Nagrand,72.75,54.70
			.' Use the Living Fire |use Living Fire##24467
			.info Use it inside the hut.
			.' Destroy the Eastern Hut|q 9805/4
		step
			goto Nagrand,71.22,53.26
			.' Use the Living Fire|use Living Fire##24467
			.info Use it inside the hut.
			.' Destroy the Southern Hut|q 9805/3 
		step
			goto Nagrand,70.76,51.13
			.' Use the Living Fire |use Living Fire##24467
			.info Use it inside the hut.
			.' Destroy the Western Hut|q 9805/2
		step
			goto Nagrand,72.40,50.36
			.' Use the Living Fire |use Living Fire##24467
			.info Use it inside the hut.
			.' Destroy the Large Hut|q 9805/1
		step
			goto Nagrand,71.38,40.63
			.talk Harold Lane##18218
			..turnin Talbuk Mastery##9859 
		step
			goto Nagrand,71.52,40.82
			.talk Hemet Nesingwary##18180
			..turnin Clefthoof Mastery##9851
		step
			goto Nagrand,71.57,40.53
			.talk Shado 'Fitz' Farstrider##18200
			..turnin Windroc Mastery##9856
		step
			goto Nagrand,71.52,40.81
			.talk Hemet Nesingwary##18180
			..accept The Ultimate Bloodsport##9852
		step
			goto Nagrand,61.8,24.4
			.talk Gordawg##18099
			..turnin Shattering the Veil##9849
			..accept Gurok the Usurper##9853
		step
			goto Nagrand,60.80,22.38
			.talk Elementalist Lo'ap##18073
			..turnin Blessing of Incineratus##9805
			..accept The Spirit Polluted##9810
		step
			goto Nagrand,54.61,72.21
			.talk Mo'mor the Breaker##18223
			..turnin The Ruins of Burning Blade##9921
			..accept The Twin Clefts of Nagrand##9922
		step
			goto Nagrand,44.38,65.14
			.from Tusker##18290
			.info He walks around this small area.
			.get Heart of Tusker##24505|q 9852/1
		step
			goto Nagrand,33.03,50.88
			.kill Watoosun's Polluted Essence##18145|q 9810/1
			.info Underwater.
		step
			goto Nagrand,33.8,48.9
			.kill 8 Lake Surger##17155 |q 9810/2
			.info Underwater around this area.
		step
			goto Nagrand,40.95,33.09
			.from Boulderfist Warrior##17136, Boulderfist Mage##17137
			.collect Northwind Cleft Key##25509|q 9924
		step
			goto Nagrand,40.76,31.44
			.' Click Corki's Prison
			.info Inside the cave.
			.' Free Corki Again |q 9924/1 |goto 39.26,27.46
		step
			goto Nagrand,40.95,33.09
			.kill 10 Boulderfist Warrior##17136|q 9922/1
		step
			goto Nagrand,40.95,33.09
			.kill 10 Boulderfist Mage##17137|q 9922/2
		step
			goto Nagrand,60.80,22.38
			.talk Elementalist Lo'ap##18073
			..turnin The Spirit Polluted##9810
		step
			goto Nagrand,71.52,40.82
			.talk Hemet Nesingwary##18180
			..turnin The Ultimate Bloodsport##9852
		step
			goto Nagrand,54.61,72.21
			.talk Mo'mor the Breaker##18223
			..turnin The Twin Clefts of Nagrand##9922 
			..accept Diplomatic Measures##10108
		step
			goto Nagrand,55.48,68.71
			.talk Arechron##18183
			..turnin Corki's Gone Missing Again!##9924
			..accept Corki's Ransom##9954
		step
			goto Nagrand,73.81,62.60
			.talk Lantresor of the Blade##18261
			.' Tell him "I have killed many of your ogres, Lantresor. I have no fear."
			.' Hear the Tale of the Blademaster|q 10108/1
		step
			goto Nagrand,73.81,62.60
			.talk Lantresor of the Blade##18261
			..turnin Diplomatic Measures##10108
			..accept Armaments for Deception##9928
			..accept Ruthless Cunning##9927
		step
			goto Nagrand,71.4,79.4
			.' Kill Kil'sorrow enemies around this area
			.' Use the Warmaul Ogre Banners|use Warmaul Ogre Banner##25552
			.info Use it near Kil'sorrow enemy corpses.
			.' Plant 10 Warmaul Ogre Banners|q 9927/1
		step
			goto Nagrand,71.4,79.4
			.' Click Kil'sorrow Armament
			.info They look like boxes with red axes on them on the ground and inside buildings around this area.
			.collect 10 Kil'sorrow Armaments##25554|q 9928/1
		step
			goto Nagrand,73.81,62.60
			.talk Lantresor of the Blade##18261
			..turnin Armaments for Deception##9928
			..turnin Ruthless Cunning##9927
			..accept Returning the Favor##9931
			..accept Body of Evidence##9932
		step
			goto Nagrand,46.66,24.32
			.' Use the Damp Woolen Blanket|use Damp Woolen Blanket##25658
			.info Use it next to the Blazing Warmaul Pyre.
			.' Plant the Kil'sorrow Bodies|q 9932/1
			.info Protect the 2 Boulderfist Saboteurs as they plant the bodies around this area.
		step
			goto Nagrand,46.97,23.51
			.from Warmaul Reaver##17138, Warmaul Shaman##18064
			.' Use the Kil'sorrow Banners|use Kil'sorrow Banner##25555
			.info Use it near Warmaul enemy corpses.
			.' Plant 10 Kil'sorrow Banners|q 9931/1
		step
			goto Nagrand,46.97,23.51
			.from Warmaul Reaver##17138, Warmaul Shaman##18064
			.collect 7 Warmaul Skull##24502|q 9853/1
		step
			goto Nagrand,29.06,25.01
			.' Use the Warmaul Skulls |use Warmaul Skull##24502
			.info Up on the mountain.
			.from Gurok the Usurper##18182
			.get Gurok's Earthen Head##24503|q 9853/1 
		step
			goto Nagrand,26.96,23.61
			.talk Corki##18445
			..turnin Corki's Ransom##9954|goto 29.52,26.02
			..accept Cho'war the Pillager##9955
		step
			goto Nagrand,26.97,12.03
			.from Cho'war the Pillager##18423
			.info Inside the cave.
			.get Cho'war's Key##25648|q 9955/1|goto 25.91,13.72
		step
			goto Nagrand,26.96,23.61
			.' Click Corki's Prison
			.info Inside the cave.
			.' Free Corki|q 9955/1 |goto 29.52,26.02
		step
			goto Nagrand,55.48,68.71
			.talk Arechron##18183
			..turnin Cho'war the Pillager##9955
		step
			goto Nagrand,73.81,62.60
			.talk Lantresor of the Blade##18261
			..turnin Returning the Favor##9931
			..turnin Body of Evidence##9932
			..accept Message to Telaar##9933
		step
			goto Nagrand,55.48,68.71
			.talk Arechron##18183
			..turnin Message to Telaar##9933
		step
			goto Nagrand,61.8,24.4
			.talk Gordawg##18099
			.info He walks around this area.
			..turnin Gurok the Usurper##9853
		step
			goto Nagrand,33.18,42.31
			.talk Kurenai Captive##18209
			..accept The Totem of Kar'dash##9879
		step
			goto Nagrand,31.57,38.77
			Free the Kurenai Captive|q 9879/1
			.info Follow Kurenai Captive and protect him as he walks.
		step
			goto Nagrand,39.9,57.6
			.' Kill Murkblood Invader
			.info They are a group of 3 riding on elephants along this road.
			.info They walk on this road back and forth.
			..accept Murkblood Invaders##9871
		step
			goto Nagrand,55.48,68.71
			.talk Arechron##18183
			..turnin The Totem of Kar'dash##9879
			..turnin Murkblood Invaders##9871
			..accept Ortor My Old Friend...##9873
		step
			goto Nagrand,30.85,42.36
			.kill Ortor of Murkblood##18204|q 9873/1
			.info Inside the building.
		step
			goto Nagrand,55.48,68.71
			.talk Arechron##18183
			..turnin Ortor My Old Friend...##9873
		step
			goto Terokkar Forest,37.24,65.61 
			.talk Ha'lei##19697
			..accept I See Dead Draenei##10227|goto Terokkar Forest,35.09,65.09
		step
			goto Terokkar Forest,35.14,66.27
			.talk Ramdor the Mad##19417
			..turnin I See Dead Draenei##10227 
			..accept Ezekiel##10228
		step
			goto Shattrath City,61.62,40.74
			.talk Ezekiel##19715
			..turnin Ezekiel##10228
			..accept What Book? I Don't See Any Book.##10231
		step
			goto Shattrath City,43.63,29.77
			.talk "Dirty" Larry##19720
			.' Tell him "Ezekiel said that you might have a certain book..."
			.' Kill "Dirty" Larry
			.info He will eventually turn friendly.
			.' Beat Down "Dirty" Larry and Get the Information|q 10231/1
		step
			goto Shattrath City,43.63,29.78
			.talk "Dirty" Larry##19720
			..turnin What Book? I Don't See Any Book.##10231
			..accept The Master's Grand Design?##10251
		step
			goto Shattrath City,74.07,32.84
			.talk Sal'salabim##18584
			.' Tell him "Altruis sent me. He said that you could help me."
			.kill Sal'salabim##18584|n
			.info He will eventually turn friendly.
			.' Persuade Sal'salabim|q 10004/1 |goto 77.30,34.88
		step
			goto Shattrath City,77.30,34.88
			.talk Sal'salabim##18584
			..turnin Patience and Understanding##10004
			..accept Crackin' Some Skulls##10009
		step
			goto Shattrath City,75.02,31.45
			.talk Raliq the Drunk##18585
			.' Tell him "I have been sent by Sal'salabim to collect a debt that you owne. Pay up or I'm going to have to hurt you."
			.from Raliq the Drunk##18585
			.get Raliq's Debt##25767|q 10009/1
		step
			goto Zangarmarsh,80.80,91.12
			.talk Coosh'coosh##18586
			.' Tell him "I have been sent by Sal'salabim to collect a debt that you owne. Pay up or I'm going to have to hurt you."
			.from Coosh'coosh##18586
			.get Coosh'coosh's Debt##25768|q 10009/2 
		step
			goto Terokkar Forest,27.24,58.08
			.talk Floon##18588
			.' Tell him "I have been sent by Sal'salabim to collect a debt that you owne. Pay up or I'm going to have to hurt you."
			.from Floon##18588
			.get Floon's Debt##25769|q 10009/3
		step
			goto Shattrath City,77.30,34.88
			.talk Sal'salabim##18584
			..turnin Crackin' Some Skulls##10009
			..accept It's Just That Easy?##10010
		step
			goto Nagrand,51.82,56.85
			.talk Nitrin the Learned##19844
			..turnin The Master's Grand Design?##10251
			..accept Vision of the Dead##10252
		step
			goto Nagrand,30.5,65.9
			.from Aged Clefthoof##17133
			.get Aged Clefthoof Blubber##28668|q 10252/3
		step
			goto Nagrand,23.14,53.16
			.from Mountain Gronn##19201
			.get Mountain Gronn Eyeball##28665|q 10252/1
		step
			goto Nagrand,27.34,43.09
			.talk Altruis the Sufferer##18417
			..turnin It's Just That Easy?##10010 
			..accept Forge Camp: Annihilated##10011
		step
			goto Nagrand,30.9,32.9
			.from Greater Windroc##17129
			.get Flawless Greater Windroc Beak##28667|q 10252/2
			.' You can find more around 1: [33.25,26.30]
			.' You can find more around 2: [35.91,28.69]
		step
			goto Nagrand,24.99,36.09
			.from Overseer of Hate##18535
			.get Fel Cannon Activator##25770|q 10011
		step
			goto Nagrand,25.08,35.98
			.' Use the Fel Cannon Activator|use Fel Cannon Activator##25770
			.info Use it next to Fel Cannon: Hate.
			.' Destroy Forge Camp: Hate|q 10011/1
		step
			goto Nagrand,19.62,51.09
			.from Overseer of Fear##18536
			.get Fel Cannon Activator##25771|q 10011/2
		step
			goto Nagrand,19.36,50.78
			.' Use the Fel Cannon Activator |use Fel Cannon Activator##25771
			.info Use it next to Fel Cannon: Fear.
			.' Destroy Forge Camp: Fear|q 10011/2 
		step
			goto Nagrand,27.34,43.09
			.talk Altruis the Sufferer##18417
			..turnin Forge Camp: Annihilated##10011
		step
			goto Nagrand,51.82,56.85
			.talk Nitrin the Learned##19844
			..turnin Vision of the Dead##10252
		step
			goto Nagrand,55.41,68.69
			.talk Seer Jovar##23268
			..accept A Mystifying Vision##11042
			..accept Visions of Destruction##11044
		step
			goto Shadowmoon Valley,39.50,53.73
			.talk Wing Commander Nuainn##21357
			..turnin Visions of Destruction##11044 
		step
			goto Shadowmoon Valley,61.20,29.23
			.talk Exarch Onaala##21860
			..accept Karabor Training Grounds##10587
			only if rep ('The Aldor') >= Neutral
		step
			goto Shadowmoon Valley,68.69,52.49
			.from Demon Hunter Supplicant##21179, Demon Hunter Initiate##21180
			.get 8 Sunfury Glaive##30679|q 10587/1
			only if rep ('The Aldor') >= Neutral
		step
			goto Shadowmoon Valley,61.20,29.23
			.talk Exarch Onaala##21860
			..turnin Karabor Training Grounds##10587
			..accept A Necessary Distraction##10637
			only if rep ('The Aldor') >= Neutral
		step
			goto Shadowmoon Valley,72.15,50.85
			.from Sunfury Warlock##21503, Sunfury Summoner##21505
			.info Only Sunfury Warlocks and Sunfury Summoners will drop the quest item.
			.get Scroll of Demonic Unbanishing##30811|q 10637|c
			only if rep ('The Aldor') >= Neutral
		step
			goto Shadowmoon Valley,69.81,51.41
			.' Use the Scroll of Demonic Unbanishing |use Scroll of Demonic Unbanishing##30811
			.info Use it on Azaloth.
			.info If the enemies around him are alive, try to get to him without killing them, if you can.
			.info They will fight Azaloth for you once you free him.
			.' Free Azaloth|q 10637/1
			only if rep ('The Aldor') >= Neutral
		step
			goto Shadowmoon Valley,61.20,29.23
			.talk Exarch Onaala##21860
			..turnin A Necessary Distraction##10637
			..accept Altruis##10640
			only if rep ('The Aldor') >= Neutral
		step
			goto Shadowmoon Valley,55.73,58.17
			.talk Larissa Sunstrike##21954
			..accept Karabor Training Grounds##10687
			only if rep ('The Scryers') >= Neutral
		step
			goto Shadowmoon Valley,68.69,52.49
			.from Demon Hunter Supplicant##21179, Demon Hunter Initiate##21180
			.get 8 Sunfury Glaive##30679|q 10687/1
			only if rep ('The Scryers') >= Neutral
		step
			goto Shadowmoon Valley,55.73,58.17
			.talk Larissa Sunstrike##21954
			..turnin Karabor Training Grounds##10687
			..accept A Necessary Distraction##10688
			only if rep ('The Scryers') >= Neutral
		step
			goto Shadowmoon Valley,72.15,50.85
			.from Sunfury Warlock##21503, Sunfury Summoner##21505
			.info Only Sunfury Warlocks and Sunfury Summoners will drop the quest item.
			.get Scroll of Demonic Unbanishing##30811|q 10688
			only if rep ('The Scryers') >= Neutral
		step
			goto Shadowmoon Valley,69.81,51.41
			.' Use the Scroll of Demonic Unbanishing|use Scroll of Demonic Unbanishing##30811
			.info Use it on Azaloth.
			.info If the enemies around him are alive, try to get to him without killing them, if you can.
			.info They will fight Azaloth for you once you free him.
			.' Free Azaloth|q 10688/1 
			only if rep ('The Scryers') >= Neutral
		step
			goto Shadowmoon Valley,55.73,58.17
			.talk Larissa Sunstrike##21954
			..turnin A Necessary Distraction##10688 
			..accept Altruis##10689
			only if rep ('The Scryers') >= Neutral
		step
			goto Nagrand,27.34,43.09 
			.talk Altruis the Sufferer##18417
			..turnin Altruis##10640
			only if rep ('The Aldor') >= Neutral
		step
			goto Nagrand,27.34,43.09 
			.talk Altruis the Sufferer##18417
			..turnin Altruis##10689
			only if rep ('The Scryers') >= Neutral
		step
			goto Nagrand,27.34,43.09 
			.talk Altruis the Sufferer##18417
			..accept Against the Legion##10641
			..accept Against the Illidari##10668
			..accept Against All Odds##10669
		step
			goto Zangarmarsh,16.22,40.67
			Use the Imbued Silver Spear|use Imbued Silver Spear##30853
			.kill Xeleth##21894|q 10669/1
		step
			goto Netherstorm,32.73,64.96
			.talk Rocket-Chief Fuselage##19570
			..turnin A Mystifying Vision##11042
		step
			goto Netherstorm,39.61,20.44
			.from Wrath Priestess##18859
			.get Freshly Drawn Blood##30850|q 10641
		step
			goto Netherstorm,39.61,20.44
			.' Use the Freshly Drawn Blood|use Freshly Drawn Blood##30850
			.info It only last 1 minute, then it disappears, so use it quickly.
			.kill Avatar of Sathal##21925|q 10641/1
		step
			goto Shadowmoon Valley,28.29,49.94
			.kill Lothros##21928|q 10668/1
			.info He walks around this area.
		step
			goto Nagrand,27.34,43.09
			.talk Altruis the Sufferer##18417
			..turnin Against the Legion##10641
			..turnin Against the Illidari##10668
			..turnin Against All Odds##10669
			..accept Illidan's Pupil##10646
		step
			goto Nagrand,27.34,43.09
			.talk Altruis the Sufferer##18417
			.' Tell him "Tell me about the demon hunter training grounds at the Ruins of Karabor."
			.' Listen to Illidan's Pupil|q 10646/1
		step
			goto Nagrand,27.34,43.09
			.talk Altruis the Sufferer##18417
			..turnin Illidan's Pupil##10646
		step
			goto Nagrand,42.78,20.73
			.talk Gurgthock##18471
			..accept The Ring of Blood: Brokentoe##9962
			.info This is a group quest.
		step
			goto Nagrand,43.43,20.57
			.kill Brokentoe##18398 |n
			.' Defeat Brokentoe|q 9962/1
		step
			goto Nagrand,42.78,20.68
			.talk Wodin the Troll-Servant##22893
			..turnin The Ring of Blood: Brokentoe##9962
		step
			goto Nagrand,42.78,20.73
			.talk Gurgthock##18471
			..accept The Ring of Blood: The Blue Brothers##9967
			.info This is a group quest.
		step
			goto Nagrand,43.43,20.57
			.kill Murkblood Twin##18399 |n
			.' Defeat The Blue Brothers|q 9967/1
		step
			goto Nagrand,42.78,20.68
			.talk Wodin the Troll-Servant##22893
			..turnin The Ring of Blood: The Blue Brothers##9967
		step
			goto Nagrand,42.78,20.73
			.talk Gurgthock##18471
			..accept The Ring of Blood: Rokdar the Sundered Lord##9970
			.info This is a group quest.
		step
			goto Nagrand,43.43,20.57
			.kill Rokdar the Sundered Lord##18400 |n
			.' Defeat Rokdar the Sundered Lord|q 9970/1
		step
			goto Nagrand,42.78,20.68
			.talk Wodin the Troll-Servant##22893
			..turnin The Ring of Blood: Rokdar the Sundered Lord##9970
		step
			goto Nagrand,42.78,20.73
			.talk Gurgthock##18471
			..accept The Ring of Blood: Skra'gath##9972
			.info This is a group quest.
		step
			goto Nagrand,43.43,20.57
			.kill Skra'gath##18401 |n
			Defeat Skra'gath|q 9972/1
		step
			goto Nagrand,42.78,20.68
			.talk Wodin the Troll-Servant##22893
			..turnin The Ring of Blood: Skra'gath##9972
		step
			goto Nagrand,42.78,20.73
			.talk Gurgthock##18471
			..accept The Ring of Blood: The Warmaul Champion##9973
			.info This is a group quest.
		step
			goto Nagrand,43.43,20.57
			.kill Warmaul Champion##18402 |n
			Defeat the Warmaul Champion|q 9973/1
		step
			goto Nagrand,42.78,20.68
			.talk Wodin the Troll-Servant##22893
			..turnin The Ring of Blood: The Warmaul Champion##9973
		step
			goto Nagrand,42.78,20.73
			.talk Gurgthock##18471
			..accept The Ring of Blood: The Final Challenge##9977
			.info This is a group quest.
		step
			goto Nagrand,43.43,20.57
			.kill Mogor##18069 |n
			.info You will have to kill him twice.
			Defeat Mogor, Hero of the Warmaul|q 9977/1
		step
			goto Nagrand,42.78,20.68
			.talk Wodin the Troll-Servant##22893
			..turnin The Ring of Blood: The Final Challenge##9977
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Burning Crusade\\[68] Blade's Edge Mountains",[[
author danaton
description This guide contain quest-chain for Blade's Edge Mountains (86 quests) location.
startlevel 68
		step
			goto Zangarmarsh,41.22,28.67
			.talk Timothy Daniels##18019
			..accept No Time for Curiosity##9794
		step
			goto Blade's Edge Mountains,32.20,91.11
			.talk Sentinel Moonwhisper##22488
			..accept Killing the Crawlers##10927
		step
			goto Blade's Edge Mountains,35.13,85.18
			.kill 6 Cavern Crawler##22044|q 10927/1
		step
			goto Blade's Edge Mountains,36.3,67.8
			.talk Kialon Nightblade##18098
			..turnin No Time for Curiosity##9794
		step
			goto Blade's Edge Mountains,36.6,67.3
			.' Click Wanted Poster
			..accept The Den Mother##10690
		step
			goto Blade's Edge Mountains,36.2,67.1
			.talk Rina Moonspring##21066
			..accept The Encroaching Wilderness##10455
		step
			goto Blade's Edge Mountains,36.54,66.45
			.talk Commander Skyshadow##21158
			..turnin Killing the Crawlers##10927
			..accept The Bloodmaul Ogres##10502
		step
			goto Blade's Edge Mountains,37.07,65.62
			.talk Daranelle##21469
			..accept Malaise##10555
		step
			goto Blade's Edge Mountains,37.41,65.04
			.talk Bronwyn Stouthammer##21197
			..accept Into the Draenethyst Mine##10510
		step
			goto Blade's Edge Mountains,37.40,64.66
			.talk Borgrim Stouthammer##21151
			..accept Strange Brew##10511
		step
			goto Blade's Edge Mountains,38.68,69.16
			.kill 12 Grovestalker Lynx##21022|q 10455/1
		step
			goto Blade's Edge Mountains,35.77,75.08
			.from Lashh'an Matriarch##20113, Lashh'an Talonite##19943, Lashh'an Wing Guard##19944, Lashh'an Windwalker##19945
			.get 18 Plucked Lashh'an Feather##30529|q 10555/1
		step
			goto Blade's Edge Mountains,34.30,77.39
			.' Interact with Lashh'an Tome
			.info Up on the wooden platform.
			..turnin Malaise##10555
			..accept Scratches##10556
		step
			goto Blade's Edge Mountains,35.22,77.31
			Use the Fistful of Feathers|use Fistful of Feathers##30530
			.info Use it inside the Lashh'an Summoning Circle.
			Begin Channeling the Lashh'an|havebuff Ability_Hunter_Pet_DragonHawk|q 10556
			.info DO NOT MOUNT after receiving the buff, or you will lose the buff.
		step
			goto Blade's Edge Mountains,36.22,67.13
			.talk Rina Moonspring##21066
			..turnin The Encroaching Wilderness##10455
			..accept Marauding Wolves##10456
		step
			goto Blade's Edge Mountains,37.07,65.62
			.talk Daranelle##21469
			.info DO NOT MOUNT, or you will lose the buff.
			Have Daranelle Analyze the Kaliri Aura|q 10556/1
		step
			goto Blade's Edge Mountains,37.07,65.62
			.talk Daranelle##21469
			.info DO NOT MOUNT, or you will lose the buff.
			..turnin Scratches##10556
		step
			goto Blade's Edge Mountains,42.45,83.28
			.' Collect Draenethyst Mine Crystal
			.info They look like huge colorful crystals on the ground around this area inside the cave.
			.info You can mount again now.
			.collect 5 Draenethyst Mine Crystal##30315|q 10510/1
		step
			goto Blade's Edge Mountains,46.05,78.13
			.from Bloodmaul Brewmaster##19957
			.' Collect Bloodmaul Brew Keg on ground
			.info They look like brown barrels on the ground and inside buildings around this area.
			.get 11 Bloodmaul Brutebane Brew##29443|q 10511/1
			.' You can find more around [43.15,80.63]
		step
			goto Blade's Edge Mountains,46.05,78.13
			.' Kill Bloodmaul enemies around this area
			.kill 30 Bloodmaul Ogres|q 10502/1
			.' You can find more around [43.15,80.63]
		step
			goto Blade's Edge Mountains,37.41,65.04
			.talk Bronwyn Stouthammer##21197
			..turnin Into the Draenethyst Mine##10510
		step
			goto Blade's Edge Mountains,37.40,64.66
			.talk Borgrim Stouthammer##21151
			..turnin Strange Brew##10511
			..accept Getting the Bladespire Tanked##10512
		step
			goto Blade's Edge Mountains,36.54,66.45
			.talk Commander Skyshadow##21158
			..turnin The Bloodmaul Ogres##10502
			..accept The Bladespire Ogres##10504
		step
			goto Blade's Edge Mountains,51.62,74.96
			.kill Rema##21956|q 10690/1
		step
			goto Blade's Edge Mountains,52.24,67.47
			.from Thunderlord Dire Wolf##20748
			.get 4 Thunderlord Dire Wolf Tail##30184|q 10456/1
		step
			goto Blade's Edge Mountains,36.54,66.45
			.talk Commander Skyshadow##21158
			..turnin The Den Mother##10690
		step
			goto Blade's Edge Mountains,36.21,67.13
			.talk Rina Moonspring##21066
			..turnin Marauding Wolves##10456
			..accept Protecting Our Own##10457
		step
			goto Blade's Edge Mountains,38.30,70.10
			.' Interact with Grove Seedling
			.info They look like ball plants on the ground around this area.
			.' Summon 5 Living Grove Defenders|q 10457/1
		step
			goto Blade's Edge Mountains,36.21,67.13
			.talk Rina Moonspring##21066
			..turnin Protecting Our Own##10457
			..accept A Dire Situation##10506
		step
			goto Blade's Edge Mountains,43.06,80.75
			.' Use Rina's Diminution Powder |use Rina's Diminution Powder##30251
			.info Use it on Bloodmaul Dire Wolves around this area.
			Weaken 5 Bloodmaul Dire Wolves|q 10506/1
			.' You can find more around [45.01,73.52]
		step
			goto Blade's Edge Mountains,44.03,51.88
			.talk Vindicator Vuuleen##21277
			..accept The Trappings of a Vindicator##10516
		step
			goto Blade's Edge Mountains,39.05,52.76
			.' Use the Bloodmaul Brutebane Keg|use Bloodmaul Brutebane Keg##30353
			.info Pull the 2 non-elite guards one at a time and kill them first.
			.info Kill any non-elite ogres near the doorway before using the Bloodmaul Brutebane Keg.
			.info This will pull Droggam outside the building without his elite guards.
			.from Droggam##20731
			.info Inside the building.
			.get Vindicator Vuuleen's Blade##30413|q 10516/1
		step
			goto Blade's Edge Mountains,42.39,58.74
			Enter the building|at 41.99,57.33
			.' Use the Bloodmaul Brutebane Keg|use Bloodmaul Brutebane Keg##30353
			.info Pull the 2 non-elite guards one at a time and kill them first.
			.info Kill any non-elite ogres near the doorway before using the Bloodmaul Brutebane Keg.
			.info This will pull Mugdorg outside the building without his elite guards.
			.info When he starts running to the brew, run outside of the building so that he doesn't start attacking you too early.
			.info He is a ranged enemy, so if he attacks too early and he's close to his guards, they will attack as well.
			.from Mugdorg##20726
			.info Inside the building.
			.get Vindicator Vuuleen's Shield##30415|q 10516/2
		step
			goto Blade's Edge Mountains,41.73,54.84
			.' Use the Bloodmaul Brutebane Keg|use Bloodmaul Brutebane Keg##30353
			.info Use it near Bladespire enemies around this area.
			.' Get 5 Bladespire Ogres drunk|q 10512/1
		step
			goto Blade's Edge Mountains,41.73,54.84
			.kill 30 Bladespire Ogres|q 10504/1
		step
			goto Blade's Edge Mountains,44.03,51.88
			.talk Vindicator Vuuleen##21277
			..turnin The Trappings of a Vindicator##10516
			..accept Gorr'Dim, Your Time Has Come...##10517
		step
			goto Blade's Edge Mountains,39.46,49.14
			Enter the building|at 40.12,49.79
			.' Use the Bloodmaul Brutebane Keg |use Bloodmaul Brutebane Keg##30353
			.info Pull the 2 non-elite guards one at a time and 			.kill them first.
			.info Kill any non-elite ogres near the doorway before using the Bloodmaul Brutebane Keg.
			.info This will pull Gorr'dim outside the building without his elite guards.
			.info When he starts running to the brew, run outside of the building so that he doesn't start attacking you too early.
			.info He is a ranged enemy, so if he attacks too early and he's close to his guards, they will attack as well.
			.kill Gorr'dim##20732|q 10517/1
			.info Inside the building.
		step
			goto Blade's Edge Mountains,44.03,51.88
			.talk Vindicator Vuuleen##21277
			..turnin Gorr'Dim, Your Time Has Come...##10517
			..accept Planting the Banner##10518
		step
			goto Blade's Edge Mountains,41.29,46.72
			Enter the building|at 41.36,47.17
			.from Bladespire Champion##21296
			.info Inside the building.
			.get Bladespire Clan Banner##30416|q 10518/1
		step
			goto Blade's Edge Mountains,46.56,74.71
			.' Use the Bladespire Clan Banner|use Bladespire Clan Banner##30416
			.info At the top of the tower.
			.info Don't place the banner if another player's banner is already present, or you will need to restart the quest.
			.' Kill the enemies that attack in waves
			.from Gurn Grubnosh##20116
			.get Helm of Gurn Grubnosh##30417|q 10518/2
		step
			goto Blade's Edge Mountains,37.40,64.66
			.talk Borgrim Stouthammer##21151
			..turnin Getting the Bladespire Tanked##10512
		step
			goto Blade's Edge Mountains,36.54,66.45
			.talk Commander Skyshadow##21158
			..turnin Planting the Banner##10518
			..turnin The Bladespire Ogres##10504
			..accept Where Did Those Darn Gnomes Go?##10580
		step
			goto Blade's Edge Mountains,36.21,67.13
			.talk Rina Moonspring##21066
			..turnin A Dire Situation##10506
		step
			goto Blade's Edge Mountains,55.1,72.8
			.talk R-3D0##21690
			..turnin Where Did Those Darn Gnomes Go?##10580
			..accept Follow the Breadcrumbs##10581
		step
			goto Blade's Edge Mountains,60.23,68.95
			.talk Nickwinkle the Metro-Gnome##21755
			..accept Crystal Clear##10608
		step
			goto Blade's Edge Mountains,60.53,68.97
			.talk Toshley##21691
			..turnin Follow the Breadcrumbs##10581
			..accept Picking Up Some Power Converters##10584
		step
			goto Blade's Edge Mountains,60.98,68.11
			.talk Fizit "Doc" Clocktock##21110
			..accept What Came First, the Drake or the Egg?##10609
		step
			goto Blade's Edge Mountains,60.28,68.38
			.talk Tally Zapnabber##21460
			..accept Test Flight: The Zephyrium Capacitorium##10557
		step
			goto Blade's Edge Mountains,60.18,68.79
			.talk Rally Zapnabber##21461
			.' Tell him "I'm ready for my test flight!"
			.' Test the Zephyrium Capacitorium|q 10557/1
		step
			goto Blade's Edge Mountains,60.28,68.38
			.talk Tally Zapnabber##21460
			..turnin Test Flight: The Zephyrium Capacitorium##10557
			..accept Test Flight: The Singing Ridge##10710
		step
			goto Blade's Edge Mountains,57.67,57.77
			.' Interact with Power Converter
			.info They look like small metal objects with electricty inside them on the ground around this area.
			.' Use the Protovoltaic Magnetocollector|use Protovoltaic Magnetocollector##30656
			.info Use it on the Electromentals that spawn.
			.from Electromental##21729
			.get 5 Electromentals|q 10584/1
		step
			goto Blade's Edge Mountains,60.53,68.96
			.talk Toshley##21691
			..turnin Picking Up Some Power Converters##10584
			..accept Ride the Lightning##10657
		step
			goto Blade's Edge Mountains,60.40,68.76
			.talk Dizzy Dina##21824
			..accept Ridgespine Menace##10620
		step
			goto Blade's Edge Mountains,60.37,68.10
			.talk Razak Ironsides##21118
			..accept Cutting Your Teeth##10632
		step
			goto Blade's Edge Mountains,60.18,68.79
			.' Use Tally's Waiver (Unsigned) |use Tally's Waiver (Unsigned)##30540
			.collect Tally's Waiver (Signed)##30539|q 10710
		step
			goto Blade's Edge Mountains,60.18,68.79
			.talk Rally Zapnabber##21461
			.' Tell him "Take me to Singing Ridge."
			.' Throw Caution to the Wind|q 10710/1
		step
			goto Blade's Edge Mountains,68.27,69.34
			.from Scalewing Serpent##20749
			.get 5 Scalewing Lightning Gland##30849|q 10657/2 
		step
			goto Blade's Edge Mountains,68.27,69.34
			.' Use the Repolarized Magneto Sphere |use Repolarized Magneto Sphere##30818
			.info Use it when fighting Scalewing Serpents around this area.
			.info Allow them to use their Lightning Strike ability on you.
			.info Put your pet on passive, if you have one, to make this go faster.
			.' Absorb 25 Lightning Strikes|q 10657/1
		step
			goto Blade's Edge Mountains,66.17,56.94
			.from Daggermaw Lashtail##20751+
			.get 5 Extra Sharp Daggermaw Tooth##30798|q 10632/1
		step
			goto Blade's Edge Mountains,66.17,56.94
			.kill 10 Ridgespine Stalker##20714|q 10620/1
			.info They are usually stealthed near the spikey rocks around this area.
		step
			goto Blade's Edge Mountains,66.03,76.18
			.' Click Nether Drake Egg
			.info They look like big blue eggs with white crystals on them on the ground around this area.
			.' Use the Temporal Phase Modulator|use Temporal Phase Modulator##30742
			.info Use it on the Nether Whelps that spawn.
			.info You can use the Temporal Phase Modulator repeatedly on the same enemy
			.info This allows you to keep changing the type of drake it is to suit what you need.
			.from Proto-Nether Drake##21821
			.get 3 Proto-Nether Drake Essence##30743|q 10609/1 
		step
			goto Blade's Edge Mountains,66.03,76.18
			.' Click Nether Drake Egg
			.info They look like big blue eggs with white crystals on them on the ground around this area.
			.' Use the Temporal Phase Modulator|use Temporal Phase Modulator##30742
			.info Use it on the Nether Whelps that spawn.
			.info You can use the Temporal Phase Modulator repeatedly on the same enemy
			.info This allows you to keep changing the type of drake it is to suit what you need.
			.from Adolescent Nether Drake##21817+
			.get 3 Adolescent Nether Drake Essence##30782|q 10609/2
		step
			goto Blade's Edge Mountains,66.03,76.18
			.' Click Nether Drake Egg
			.info They look like big blue eggs with white crystals on them on the ground around this area.
			.' Use the Temporal Phase Modulator|use Temporal Phase Modulator##30742
			.info Use it on the Nether Whelps that spawn.
			.info You can use the Temporal Phase Modulator repeatedly on the same enemy
			.info This allows you to keep changing the type of drake it is to suit what you need.
			.from Mature Nether Drake##21820+
			.get 3 Mature Nether Drake Essence##30783|q 10609/3
		step
			goto Blade's Edge Mountains,66.03,76.18
			.kill 10 Crystal Flayer##21189|q 10608/1
		step
			goto Blade's Edge Mountains,60.98,68.11
			.talk Fizit "Doc" Clocktock##21110
			..turnin What Came First, the Drake or the Egg?##10609
		step
			goto Blade's Edge Mountains,60.37,68.10
			.talk Razak Ironsides##21118
			..turnin Cutting Your Teeth##10632
		step
			goto Blade's Edge Mountains,60.28,68.38
			.talk Tally Zapnabber##21460
			..turnin Test Flight: The Singing Ridge##10710
		step
			goto Blade's Edge Mountains,60.53,68.97
			.talk Toshley##21691
			..turnin Ride the Lightning##10657
			..accept Trapping the Light Fantastic##10674
		step
			goto Blade's Edge Mountains,60.40,68.76
			.talk Dizzy Dina##21824
			..turnin Ridgespine Menace##10620
			..accept More than a Pound of Flesh##10671
		step
			goto Blade's Edge Mountains,60.22,68.94
			.talk Nickwinkle the Metro-Gnome##21755
			..turnin Crystal Clear##10608
			..accept Gauging the Resonant Frequency##10594
		step
			goto Blade's Edge Mountains,60.28,68.39
			.talk Tally Zapnabber##21460
			..accept Test Flight: Razaan's Landing##10711
		step
			goto Blade's Edge Mountains,61.2,76.1
			.' Use the Oscillating Frequency Scanners|use Oscillating Frequency Scanners##30701
			.info Use it multiple times.
			.info Try to place them a little far apart, and so that the lines overlap each other a lot.
			.info Stand in the middle of the design you made.
			.' Gauge the Singing Crystal Resonant Frequency|q 10594/1
		step
			goto Blade's Edge Mountains,60.23,68.94
			.talk Nickwinkle the Metro-Gnome##21755
			..turnin Gauging the Resonant Frequency##10594
		step
			goto Blade's Edge Mountains,60.18,68.79
			.talk Rally Zapnabber##21461
			.' Tell him "Send me to Razaan's Landing!"
			.' Reach the Sky's Limit|q 10711/1
		step
			goto Blade's Edge Mountains,65.56,46.50
			.' Use the Multi-Spectrum Light Trap |use Multi-Spectrum Light Trap##30852
			.info Use it at the foot of this pole repeatedly.
			.' Trap 15 Razaani Light Orbs|q 10674/1
		step
			goto Blade's Edge Mountains,66.97,44.23
			.from Fiendling Flesh Beast##20668
			.get 5 Ether-Energized Flesh##30840|q 10671/1
		step
			goto Blade's Edge Mountains,60.28,68.39
			.talk Tally Zapnabber##21460
			..turnin Test Flight: Razaan's Landing##10711
		step
			goto Blade's Edge Mountains,60.53,68.96
			.talk Toshley##21691
			..turnin Trapping the Light Fantastic##10674
			..accept Show Them Gnome Mercy!##10675
		step
			goto Blade's Edge Mountains,60.40,68.76
			.talk Dizzy Dina##21824
			..turnin More than a Pound of Flesh##10671
		step
			goto Blade's Edge Mountains,60.18,68.79
			.talk Rally Zapnabber##21461
			.' Tell him "I want to fly to an old location!"
			.' Tell him "Send me to Razaan's Landing!"
			.' Begin Flying to Razaan's Landing|goto 60.18,68.79 > 50|noway |c |q 10675
		step
			goto Blade's Edge Mountains,66.40,44.09
			.from Razaani Raider##20601, Razaani Nexus Stalker##20609, Razaani Spell-Thief##20614
			.info Kill them near the portal until Nexus-Prince Razaan appears.
			.from Nexus-Prince Razaan##21057
			.' Click Collection of Souls
			.info It appears above Nexus-Prince Razaan's corpse.
			.get Collection of Souls##30890|q 10675/1
		step
			goto Blade's Edge Mountains,60.53,68.97
			.talk Toshley##21691
			..turnin Show Them Gnome Mercy!##10675
		step
			goto Blade's Edge Mountains,60.28,68.39
			.talk Tally Zapnabber##21460
			..accept Test Flight: Ruuan Weald##10712
		step
			goto Blade's Edge Mountains,60.18,68.79
			.talk Rally Zapnabber##21461
			.' Tell him "Take me to Ruuan."
			.' Launch to Ruuan Weald|q 10712/2
		step
			.' While Flying to Ruuan Weald:
			.' Use the Nether-Weather Vane|use Nether-Weather Vane##31124
			.' Spin the Nether-Weather Vane|q 10712/1
		step
			goto Blade's Edge Mountains,61.98,39.48
			.talk Tree Warden Chawn##22007
			..accept A Time for Negotiation...##10682
		step
			goto Blade's Edge Mountains,61.25,38.47
			.talk Mosswood the Ancient##22053
			..accept Little Embers##10770
			..accept From the Ashes##10771
		step
			goto Blade's Edge Mountains,62.16,39.11
			.talk Timeon##21782
			..accept Creating the Pendant##10567
		step
			goto Blade's Edge Mountains,61.99,37.99
			.talk Commander Haephus Stonewall##22149
			..accept A Date with Dorgok##10795
		step
			goto Blade's Edge Mountains,61.99,37.94
			.talk Lieutenant Fairweather##22150
			..accept Crush the Bloodmaul Camp!##10796
		step
			goto Blade's Edge Mountains,62.59,38.28
			.talk Faradrella##22133
			..accept Culling the Wild##10753
		step
			goto Blade's Edge Mountains,62.65,40.38
			.talk O'Mally Zapnabber##22020
			..turnin Test Flight: Ruuan Weald##10712
		step
			goto Blade's Edge Mountains,70.94,28.43
			.kill Fel Corrupter##21300 |n
			..accept Damaged Mask##10810|use Damaged Mask##31384
			.' You can find more|at 73.4,28.8
			.' You can find more|at 74.1,25.7
			.' You can find more|at 69,33.1
			.' You can find more|at 69.3,35.8
			.' You can find more|at 71.8,34.8
			.' You can find more|at 71.4,42.8
		step
			goto Blade's Edge Mountains,71.02,30.90
			.kill 4 Felsworn Scalewing##21123 |q 10753/1
		step
			goto Blade's Edge Mountains,71.02,30.90
			.kill 4 Felsworn Daggermaw##21124|q 10753/2
		step
			goto Blade's Edge Mountains,71.02,30.90
			.kill 2 Fel Corrupter##21300|q 10753/3
		step
			goto Blade's Edge Mountains,71.66,22.39
			.' Сlick Fertile Volcanic Soil
			.' Plant in the Southern Volcanic Soil|q 10771/1
		step
			goto Blade's Edge Mountains,71.60,20.33
			.' Сlick Fertile Volcanic Soil
			.' Plant in the Central Volcanic Soil|q 10771/2
		step
			goto Blade's Edge Mountains,71.59,18.51
			.' Сlick Fertile Volcanic Soil
			.' Plant in the Northern Volcanic Soil|q 10771/3
		step
			goto Blade's Edge Mountains,71.46,20.95
			.kill 8 Scorch Imp##21021|q 10770/1 
		step
			goto Blade's Edge Mountains,65.04,31.57
			.from Ruuan'ok Cloudgazer##19985, Ruuan'ok Ravenguard##19987
			.collect 6 Ruuan'ok Claw##30704|q 10567
		step
			goto Blade's Edge Mountains,64.47,33.11
			.' Use the Ruuan'ok Claws|use Ruuan'ok Claw##30704
			.info Use them inside the glowing circle.
			.' Watch the dialogue
			.info It flies down to you.
			.from Harbinger of the Raven##21767
			.get Harbinger's Pendant##30706|q 10567/1
		step
			goto Blade's Edge Mountains,62.59,38.28
			.talk Faradrella##22133
			..turnin Culling the Wild##10753
		step
			goto Blade's Edge Mountains,62.65,40.38
			.talk O'Mally Zapnabber##22020
			..turnin Damaged Mask##10810
			..accept Mystery Mask##10812
		step
			goto Blade's Edge Mountains,62.54,39.91
			.talk Wildlord Antelarion##22127
			..turnin Mystery Mask##10812 
			..accept Felsworn Gas Mask##10819
		step
			goto Blade's Edge Mountains,62.16,39.11
			.talk Timeon##21782
			..turnin Creating the Pendant##10567
			..accept Whispers of the Raven God##10607
		step
			goto Blade's Edge Mountains,61.26,38.48
			.talk Mosswood the Ancient##22053
			..turnin Little Embers##10770
			..turnin From the Ashes##10771
		step
			goto Blade's Edge Mountains,59.37,37.97
			.talk Overseer Nuaar##21981
			.info He looks like a neutral Draenei that walks around this large area.
			.' Tell him "Overseer, I am here to negotiate on behalf of the Cenarion Expedition."
			.' Negotiate with Overseer Nuaar|q 10682/1
			.' You can also find him around|at 62.83,27.89
		step
			goto Blade's Edge Mountains,61.99,39.48
			.talk Tree Warden Chawn##22007
			..turnin A Time for Negotiation...##10682
			..accept ...and a Time for Action##10713
		step
			goto Blade's Edge Mountains,61.94,39.45
			.talk Samia Inkling##21983
			..accept Poaching from Poachers##10717
		step
			goto Blade's Edge Mountains,59.37,37.97
			.from Wyrmcult Poacher##21809, Wyrmcult Hewer##21810
			.' After looting use Meeting Note|use Meeting Note##31120
			..accept Did You Get The Note?##10719
			.' You can find more around|at 62.83,27.89
		step
			goto Blade's Edge Mountains,59.37,37.97
			.kill 10 Wyrmcult Hewer##21810|q 10713/1
			.' You can find more around|at 62.83,27.89
		step
			goto Blade's Edge Mountains,59.37,37.97
			.from Wyrmcult Poacher##21809
			.get 5 Wyrmcult Net##31119|q 10717/1
			.' You can find more around|at 62.83,27.89
		step
			goto Blade's Edge Mountains,61.94,39.45
			.talk Samia Inkling##21983
			..turnin Poaching from Poachers##10717
			..accept Whelps of the Wyrmcult##10747
		step
			goto Blade's Edge Mountains,61.99,39.48
			.talk Tree Warden Chawn##22007
			..turnin ...and a Time for Action##10713
			..turnin Did You Get The Note?##10719
			..accept Wyrmskull Watcher##10894
		step
			goto Blade's Edge Mountains,62.54,39.91
			.talk Wildlord Antelarion##22127
			.' Ask him "The Felsworn Gas Mask was destroyed, do you have another one?"
			.collect Felsworn Gas Mask##31366|q 10819
		step
			goto Blade's Edge Mountains,73.25,40.03
			.' Equip the Felsworn Gas Mask|q 10819
			.' Manual skip this step
		step
			goto Blade's Edge Mountains,73.25,40.03
			.' Interact with Legion Communicator
			..turnin Felsworn Gas Mask##10819
			..accept Deceive thy Enemy##10820
		step
			.' Equip your Regular Head Armor|q 10820
			.' Manual skip this step
		step
			goto Blade's Edge Mountains,74.92,40.16
			.kill 4 Doomforge Attendant##19961|q 10820/1
		step
			goto Blade's Edge Mountains,74.92,40.16
			.kill 4 Doomforge Engineer##19960|q 10820/2
		step
			goto Blade's Edge Mountains,73.25,40.03
			.' Equip the Felsworn Gas Mask|q 10820
			.' Manual skip this step
		step
			goto Blade's Edge Mountains,73.25,40.03
			.' Interact with Legion Communicator
			..turnin Deceive thy Enemy##10820
			..accept You're Fired!##10821
		step
			.' Equip your Regular Head Armor|q 10821
			.' Manual skip this step
		step
			goto Blade's Edge Mountains,73.43,41.10
			.from Anger Guard##16952
			.collect 5 Camp Anger Key##31536|q 10821
		step
			goto Blade's Edge Mountains,73.54,43.42
			.' Interact with Legion Obelisk
			.' Activate the Legion Obelisk|q 10821
			.' Manual skip this step after activating the Legion Obelisk
		step
			goto Blade's Edge Mountains,75.26,41.73
			.' Interact with Legion Obelisk
			.' Activate the Legion Obelisk|q 10821
			.' Manual skip this step after activating the Legion Obelisk
		step
			goto Blade's Edge Mountains,73.90,41.07
			.' Interact with Legion Obelisk
			.' Activate the Legion Obelisk|q 10821
			.' Manual skip this step after activating the Legion Obelisk
		step
			goto Blade's Edge Mountains,75.39,40.52
			.' Interact with Legion Obelisk
			.' Activate the Legion Obelisk|q 10821
			.' Manual skip this step after activating the Legion Obelisk
		step
			goto Blade's Edge Mountains,74.00,39.90
			.' Interact with Legion Obelisk
			.' Activate the Legion Obelisk|q 10821
			.' Manual skip this step after activating the Legion Obelisk
		step
			goto Blade's Edge Mountains,74.31,42.51
			.kill Doomcryer##19963|q 10821/1
			.info It takes a bit for her to appear.
			.info She appears after the 5 green lines connect to the top of this structure.
		step
			goto Blade's Edge Mountains,62.54,39.91
			.talk Wildlord Antelarion##22127
			..turnin You're Fired!##10821 
			..accept Death's Door##10910
		step
			goto Blade's Edge Mountains,65.24,70.65
			.' Use the Druid Signal|use Druid Signal##31763
			.info Use it in the Death's Door area.
			.' Next to you:
			.talk Evergrove Druid##22423
			..turnin Death's Door##10910
			..accept Harvesting the Fel Ammunition##10904
		step
			goto Blade's Edge Mountains,64.39,69.60
			.from Death's Watch##21516, Death's Might##21519
			.get 5 Fel Cannonball##31757|q 10904/1
		step
			goto Blade's Edge Mountains,65.24,70.65
			.' Use the Druid Signal|use Druid Signal##31763
			.info Use it in the Death's Door area.
			.' Next to you:
			.talk Evergrove Druid##22423.
			..turnin Harvesting the Fel Ammunition##10904
			..accept Fire At Will!##10911
		step
			goto Blade's Edge Mountains,64.80,68.32
			.' Use the Naturalized Ammunition|use Naturalized Ammunition##31807
			.info Use it next to the Death's Door Fel Cannon.
			.info Use the Artillery on the Warp-Gate ability on your pet action bar.
			.info You will have to use the ability 7 times.
			.info Kill the enemies that spawn nearby while you wait for the ability to recharge.
			.' Destroy the South Warp-Gate|q 10911/1
		step
			goto Blade's Edge Mountains,61.97,60.31
			.' Use the Naturalized Ammunition|use Naturalized Ammunition##31807
			.info Use it next to the Death's Door Fel Cannon.
			.info Use the Artillery on the Warp-Gate ability on your pet action bar.
			.info You will have to use the ability 7 times.
			.info kill the enemies that spawn nearby while you wait for the ability to recharge.
			.' Destroy the North Warp-Gate|q 10911/2
		step
			goto Blade's Edge Mountains,61.75,59.97
			.' Use the Druid Signal|use Druid Signal##31763
			.info Use it in the Death's Door area.
			.' Next to you:
			.talk Evergrove Druid##22423
			.info He flies down next to you after a few seconds.
			..turnin Fire At Will!##10911
			..accept The Hound-Master##10912
		step
			goto Blade's Edge Mountains,63.60,59.14
			.' Use the Evergrove Wand|use Evergrove Wand##31809
			.info Use it on Baelmon the Hound-Master.
			.info This will call for allies to help you fight.
			.kill Baelmon the Hound-Master##19747|q 10912/1
			.info Don't worry that he's elite, you should be able to kill him easily.
		step
			goto Blade's Edge Mountains,62.54,39.91
			.talk Wildlord Antelarion##22127
			.info He walks around this area.
			..turnin The Hound-Master##10912
		step
			goto Blade's Edge Mountains,55.14,24.05
			.kill Dorgok##20753|q 10795/1
			.info At the top of the tower.
			.' Use Gorgrom's Favor|use Gorgrom's Favor##31363
			..accept Favor of the Gronn##10797
			.info You must already have the "A Date with Dorgok" accepted to be able to accept this quest.
		step
			goto Blade's Edge Mountains,56.2,26.7
			.kill 10 Bloodmaul Mauler##19993|q 10796/1
			.kill 5 Bloodmaul Warlock##19994|q 10796/2
			.' You can find more around|at 55.08,32.71
		step
			goto Blade's Edge Mountains,61.98,37.94
			.talk Lieutenant Fairweather##22150
			..turnin Crush the Bloodmaul Camp!##10796
		step
			goto Blade's Edge Mountains,61.99,37.99
			.talk Commander Haephus Stonewall##22149
			..turnin Favor of the Gronn##10797
			..accept Pay the Baron a Visit##10798
			..turnin A Date with Dorgok##10795
		step
			goto Blade's Edge Mountains,53.25,41.17
			.talk Baron Sablemane##22103
			..turnin Pay the Baron a Visit##10798
			..accept Into the Churning Gulch##10799
		step
			goto Blade's Edge Mountains,46.88,44.68
			.from Greater Crust Burster##21380, Young Crust Burster##21381
			.get 7 Crust Burster Venom Gland##31132|q 10799/1
		step
			goto Blade's Edge Mountains,53.25,41.17
			.talk Baron Sablemane##22103
			..turnin Into the Churning Gulch##10799
			..accept Goodnight, Gronn##10800
		step
			goto Blade's Edge Mountains,60.20,47.61
			.' Use Sablemane's Sleeping Powder|use Sablemane's Sleeping Powder##31403
			.info Use it on Grulloc nearby.
			.' Manual skip this step after putting Grulloc to Sleep|q 10800
		step
			goto Blade's Edge Mountains,60.85,47.78
			.' Collect Grulloc's Sack
			.collect Grulloc's Sack##31349|q 10800/1
		step
			goto Blade's Edge Mountains,53.25,41.17
			.talk Baron Sablemane##22103
			..turnin Goodnight, Gronn##10800
			..accept It's a Trap!##10801
		step
			goto Blade's Edge Mountains,61.99,37.99
			.talk Commander Haephus Stonewall##22149
			..turnin It's a Trap!##10801
			..accept Gorgrom the Dragon-Eater##10802
		step
			goto Blade's Edge Mountains,61.98,37.94
			.talk Lieutenant Fairweather##22150
			..accept Slaughter at Boulder'mok##10803
		step
			goto Blade's Edge Mountains,50.25,36.15
			.talk Watcher Moonshade##22386
			..turnin Wyrmskull Watcher##10894
			..accept Longtail is the Lynchpin##10893
		step
			goto Blade's Edge Mountains,45.63,32.86
			.kill Draaca Longtail##22396|q 10893/1
			.info She walks up and down this path inside the tunnel.
		step
			goto Blade's Edge Mountains,50.25,36.15
			.talk Watcher Moonshade##22386
			..turnin Longtail is the Lynchpin##10893
			..accept Meeting at the Blackwing Coven##10722
		step
			goto Blade's Edge Mountains,41.26,21.01
			.from Grishna Falconwing##19988, Grishna Harbinger##19989, Grishna Scorncrow##19990
			.info You must be within melee range of killing an enemy to receive the buff.
			.info Anytime the buff wears off while in this area, kill Grishna enemies to get it again.
			.' Gain the Understanding of Ravenspeech|havebuff Ability_Hunter_Pet_Dragonhawk|q 10747 |future
		step
			goto Blade's Edge Mountains,40.67,18.66
			.' Receive the Third Prophecy|q 10607/3
			.info You must have the Understanding Ravenspeech buff.
			.info kill Grishna enemies around this area to get the buff again.
			.info You must be within melee range of killing an enemy to receive the buff.
		step
			goto Blade's Edge Mountains,39.03,17.23
			.' Receive the First Prophecy|q 10607/1
			.info Up on the wooden platform.
			.info You must have the Understanding Ravenspeech buff.
			.info kill Grishna enemies around this area to get the buff again.
			.info You must be within melee range of killing an enemy to receive the buff.
		step
			goto Blade's Edge Mountains,42.46,21.63
			.' Receive the Second Prophecy|q 10607/2
			.info Up on the wooden platform.
			.info You must have the Understanding Ravenspeech buff.
			.info kill Grishna enemies around this area to get the buff again.
			.info You must be within melee range of killing an enemy to receive the buff.
		step
			goto Blade's Edge Mountains,40.19,23.02
			.' Receive the Fourth Prophecy|q 10607/4
			.info You must have the Understanding Ravenspeech buff.
			.info kill Grishna enemies around this area to get the buff again.
			.info You must be within melee range of killing an enemy to receive the buff.
		step
			goto Blade's Edge Mountains,41.26,21.01
			.from Grishna Falconwing##19988, Grishna Harbinger##19989, Grishna Scorncrow##19990
			.' Use Orb of the Grishna|use Orb of the Grishna##31489
			..accept The Truth Unorbed##10825
		step
			goto Blade's Edge Mountains,30.54,23.14
			.from Boulder'mok Brute##21046, Boulder'mok Shaman##21047
			.collect 3 Grisly Totem##31754|q 10803
		step
			goto Blade's Edge Mountains,30.54,23.14
			.kill 5 Boulder'mok Brute##21046|q 10803/1
			.kill 3 Boulder'mok Shaman##21047|q 10803/2
		step
			goto Blade's Edge Mountains,30.59,22.19
			.' Interact with Gorgrom's Altar
			.' Watch the dialogue
			.kill Gorgrom##21514 |n
			.' Use the Grisly Totems|use Grisly Totem##31754
			.info Use them on his corpse.
			.' Plant 3 Grisly Totems|q 10802/1
		step
			goto Blade's Edge Mountains,32.92,34.59
			.from Wyrmcult Zealot##21382, Wyrmcult Acolyte##21383, Wyrmcult Scout##21637
			.info Inside and outside the cave.
			.collect 5 Costume Scraps##31121|q 10722
		step
			.' Use the Costume Scraps|use Costume Scraps##31121
			.collect 1 Overseer Disguise##31122|q 10722
		step
			goto Blade's Edge Mountains,32.92,34.59
			.' Use the Blackwhelp Net|use Blackwhelp Net##31129
			.info Use it on Wyrmcult Blackwhelps inside the cave.
			.info Walk next to the brown spiked eggs inside the cave to spawn more Wyrmcult Blackwhelps.
			.' Capture 10 Wyrmcult Blackwhelps|q 10747/1 
		step
			goto Blade's Edge Mountains,32.05,37.36
			.' Use the Overseer Disguise|use Overseer Disguise##31122
			.info Wait to use it at this location.
			.' Wear the Overseer Disguise|havebuff inv_chest_wolf|q 10722
		step
			goto Blade's Edge Mountains,32.64,37.49
			.talk Kolphis Darkscale##22019
			.' Tell him "I'm fine, thank you. You asked for me?"
			.' Attend the Meeting with Kolphis Darkscale|q 10722/1 
		step
			goto Blade's Edge Mountains,61.99,37.94
			.talk Lieutenant Fairweather##22150
			..turnin Slaughter at Boulder'mok##10803
		step
			goto Blade's Edge Mountains,61.99,37.99
			.talk Commander Haephus Stonewall##22149
			..turnin Gorgrom the Dragon-Eater##10802
			..accept Baron Sablemane Has Requested Your Presence##10818
		step
			goto Blade's Edge Mountains,62.16,39.10
			.talk Timeon##21782
			..turnin Whispers of the Raven God##10607
		step
			goto Blade's Edge Mountains,61.94,39.45
			.talk Samia Inkling##21983
			..turnin Whelps of the Wyrmcult##10747
		step
			goto Blade's Edge Mountains,61.98,39.47
			.talk Tree Warden Chawn##22007
			..turnin Meeting at the Blackwing Coven##10722
			..accept Maxnar Must Die!##10748
			..turnin The Truth Unorbed##10825
			..accept Treebole Must Know##10829
		step
			goto Blade's Edge Mountains,53.25,41.17
			.talk Baron Sablemane##22103
			..turnin Baron Sablemane Has Requested Your Presence##10818
			..accept Massacre at Gruul's Lair##10805
		step
			goto Blade's Edge Mountains,36.65,22.88
			.talk Treebole##22215
			..turnin Treebole Must Know##10829
			..accept Exorcising the Trees##10830
		step
			goto Blade's Edge Mountains,39.3,20.2
			.' Collect Grishnath Orb
			.info They look like metal hook stands with purple balls at the top of them on the ground, inside huts, and up on the wooden platforms around this area.
			.collect 5 Grishnath Orb##31495|q 10830
		step
			goto Blade's Edge Mountains,35.23,24.51
			.from Dire Raven##21042
			.collect 5 Dire Pinfeather##31517|q 10830
		step
			.' Use the Grishnath Orbs|use Grishnath Orb##31495
			.info You will need to use them 5 times.
			.collect 5 Exorcism Feather##31518|q 10830
		step
			goto Blade's Edge Mountains,34.48,28.92
			.' Use the Exorcism Feathers|use Exorcism Feather##31518
			.info Use them on Raven's Wood Leafbeards around this area.
			.kill Koi-Koi Spirit##22226 |n
			.info They spawn after using the Exorcism Feathers.
			.info Do not kill the Raven's Wood Leafbeards.
			.' Exorcise 5 Raven's Wood Leafbeards|q 10830/1
		step
			goto Blade's Edge Mountains,36.65,22.88
			.talk Treebole##22215
			..turnin Exorcising the Trees##10830
		step
			goto Blade's Edge Mountains,33.90,35.33
			.' Enter the cave|at 32.03,33.84
			.kill Maxnar the Ashmaw##21389|q 10748/1
			.info Inside the cave.
		step
			goto Blade's Edge Mountains,61.98,39.48
			.talk Tree Warden Chawn##22007
			..turnin Maxnar Must Die!##10748
		step
			goto Blade's Edge Mountains,55.42,45.25
			.talk Chort##22995
			..accept Mog'dorg the Wizened##10989
		step
			goto Blade's Edge Mountains,55.48,44.86
			.talk Mog'dorg the Wizened##22941
			.info At the top of the tower.
			..turnin Mog'dorg the Wizened##10989
			..accept Grulloc Has Two Skulls##10995
			..accept Maggoc's Treasure Chest##10996
			..accept Even Gronn Have Standards##10997
		step
			goto Blade's Edge Mountains,60.98,47.66
			.from Grulloc##20216
			.' Collect Grulloc's Dragon Skull
			.info It appears after you kill Grulloc.
			.get Grulloc's Dragon Skull##32379|q 10995/1
		step
			goto Blade's Edge Mountains,60.16,56.12
			.from Maggoc##20600
			.info He looks like a brown giant that walks along this path around this area.
			.' Open Maggoc's Treasure Chest
			.info It appears after you kill Maggoc.
			.get Maggoc's Treasure Chest##32380|q 10996/1
		step
			goto Blade's Edge Mountains,55.48,44.86
			.talk Mog'dorg the Wizened##22941
			..turnin Grulloc Has Two Skulls##10995
			..turnin Maggoc's Treasure Chest##10996
		step
			goto Terokkar Forest,20.44,17.64
			.from Slaag##22199
			.' Collect Slaag's Standard
			.info It appears after you kill Slaag.
			.get Slaag's Standard##32382|q 10997/1
		step
			goto Blade's Edge Mountains,55.48,44.86
			.talk Mog'dorg the Wizened##22941
			..turnin Even Gronn Have Standards##10997
			..accept Grim(oire) Business##10998
		step
			goto Blade's Edge Mountains,77.52,31.20
			.from Vim'gol the Vile##22911
			.info Stand inside one of the circles of fire nearby on the ground to summon him.
			.get Vim'gol's Vile Grimoire##32358|q 10998/1
			.info It appears after you kill Vim'gol the Vile.
		step
			goto Blade's Edge Mountains,66.65,20.13
			.kill Fingrom##20757|q 10805/4
			.info Inside in building.
		step
			goto Blade's Edge Mountains,64.78,21.58
			.kill 10 Bladespire Enforcer##19997|q 10805/1
			.kill 5 Bladespire Battlemage##19996|q 10805/2
			.kill 5 Bladespire Ravager##20729|q 10805/3
		step
			goto Blade's Edge Mountains,53.25,41.17
			.talk Baron Sablemane##22103
			..turnin Massacre at Gruul's Lair##10805
			..accept Showdown##10806
		step
			goto Blade's Edge Mountains,55.48,44.86
			.talk Mog'dorg the Wizened##22941
			..turnin Grim(oire) Business##10998
			..accept Into the Soulgrinder##11000
		step
			goto Blade's Edge Mountains,60.00,24.14
			.' Use Vim'gol's Grimoire|use Vim'gol's Grimoire##32467
			.info Use it while standing on the stone table.
			.kill Sundered Spirit##22912 |n
			.info Protect The Soulgrinder.
			.info It appears after you use Vim'gol's Grimoire.
			.kill Skulloc Soulgrinder##22910 |n
			.info It takes a little while for him to spawn.
			.collect Skulloc's Soul##32383|q 11000/1
			.info It appears after you kill Skulloc Soulgrinder.
		step
			goto Blade's Edge Mountains,64.16,18.49
			.' Use the Sablemane Signet|use Sablemane's Signet##31808
			.' Watch the dialogue
			.kill Goc##20555|q 10806/1
		step
			goto Blade's Edge Mountains,53.25,41.17
			.talk Baron Sablemane##22103
			..turnin Showdown##10806
		step
			goto Blade's Edge Mountains,55.48,44.86
			.talk Mog'dorg the Wizened##22941
			..turnin Into the Soulgrinder##11000
			..accept Ogre Heaven##11009
		step
			goto Blade's Edge Mountains,28.8,57.4
			.talk Chu'a'lor##23233
			..turnin Ogre Heaven##11009
			..accept The Crystals##11025
		step
			goto Blade's Edge Mountains,29.17,65.22
			.from Apexis Flayer##22175, Shard-Hide Boar##22180
			.info They look like groups of crystals blending in with the bigger clusters of crystals around this area.
			.info Run your mouse cursor over the groups of crystals around this area to find them easier.
			.get 5 Apexis Shard##32569|q 11025/1
		step
			goto Blade's Edge Mountains,28.75,57.37
			.talk Chu'a'lor##23233
			..turnin The Crystals##11025
			..accept An Apexis Relic##11058
		step
			goto Blade's Edge Mountains,28.38,57.64
			.talk Torkus##23316
			..accept Our Boy Wants To Be A Skyguard Ranger##11030
		step
			goto Blade's Edge Mountains,29.2,65.2
			.from Apexis Flayer##22175, Shard-Hide Boar##22180
			.info They look like groups of crystals blending in with the bigger clusters of crystals around this area.
			.info Run your mouse cursor over the groups of crystals around this area to find them easier.
			.collect 1 Apexis Shard##32569|q 11058
		step
			goto Blade's Edge Mountains,27.67,68.09
			.' Interact Apexis Relic
			.' Choose "Insert an Apexis Shard, and begin!"
			.' Repeat the Color Patterns Shown
			.info Ignore the floating crystal now, focus on the crystals on the ground.
			.info You will be shown a color sequence.
			.info Once the sequence is done, you have to click the stones on the ground in the same order.
			.info It's random every time, and you'll have to repeat 6 sequences.
			.info It helps to stand directly under the floating crystal and move your camera up so you are looking down at the top of your head.
			.' Attain the Apexis Vibrations|q 11058/1
			.info If you fail, you will need to collect another Apexis Shard around this area and try again.
		step
			goto Blade's Edge Mountains,28.75,57.37
			.talk Chu'a'lor##23233
			..turnin An Apexis Relic##11058
		step
			goto Blade's Edge Mountains,29.2,65.2
			.from Apexis Flayer##22175, Shard-Hide Boar##22180
			.info They look like groups of crystals blending in with the bigger clusters of crystals around this area.
			.info Run your mouse cursor over the groups of crystals around this area to find them easier.
			.collect 10 Apexis Shard##32569|q 11030
		step
			goto Blade's Edge Mountains,32.81,40.55
			.' Interact with Fel Crystalforge
			.' Choose "Purchase 1 Unstable Flask of the Beast for the cost of 10 Apexis Shards"
			.collect Unstable Flask of the Beast##32598|q 11030/1
		step
			goto Blade's Edge Mountains,28.38,57.64
			.talk Torkus##23316
			..turnin Our Boy Wants To Be A Skyguard Ranger##11030
			..accept A Father's Duty##11061
		step
			goto Blade's Edge Mountains,28.75,57.37
			.talk Chu'a'lor##23233
			..accept The Skyguard Outpost##11062
		step
			goto Blade's Edge Mountains,27.40,52.69
			.talk Sky Commander Keller##23334
			..turnin The Skyguard Outpost##11062
		step
			goto Blade's Edge Mountains,27.57,52.90
			.talk Sky Sergeant Vanderlip##23120
			..accept Bombing Run##11010
			only !Druid
		step
			goto Blade's Edge Mountains,27.57,52.90
			.talk Sky Sergeant Vanderlip##23120
			..accept Bombing Run##11102
			only Druid
		step
			goto Blade's Edge Mountains,34.80,41.26
			.' Use the Skyguard Bombs|use Skyguard Bombs##32456
			.info You can use them while flying.
			.info Use them on Fel Cannonballs Stacks.
			.info They look like piles of gray stones on the ground next to Legion Flak Cannons around this area.
			.' Destroy 15 Fel Cannonball Stacks|q 11010/1
			only !Druid
		step
			goto Blade's Edge Mountains,34.80,41.26
			.' Use the Skyguard Bombs|use Skyguard Bombs##32456
			.info You can use them while flying.
			.info Use them on Fel Cannonballs Stacks.
			.info They look like piles of gray stones on the ground next to Legion Flak Cannons around this area.
			.' Destroy 15 Fel Cannonball Stacks|q 11102/1
			only Druid
		step
			goto Blade's Edge Mountains,27.57,52.90
			.talk Sky Sergeant Vanderlip##23120
			..turnin Bombing Run##11010
			only !Druid
		step
			goto Blade's Edge Mountains,27.57,52.90
			.talk Sky Sergeant Vanderlip##23120
			..turnin Bombing Run##11102
			only Druid
		step
			goto Blade's Edge Mountains,27.57,52.90
			.talk Sky Sergeant Vanderlip##23120
			..accept Bomb Them Again!##11023
		step
			goto Blade's Edge Mountains,27.40,52.69
			.talk Sky Commander Keller##23334
			..accept Assault on Bash'ir Landing!##11119
		step
			goto Blade's Edge Mountains,27.90,52.17
			.talk Aether-tech Apprentice##23473
			..turnin Assault on Bash'ir Landing!##11119
		step
			goto Blade's Edge Mountains,27.95,51.46
			.talk Skyguard Khatie##23335
			..accept Wrangle Some Aether Rays!##11065
		step
			goto Blade's Edge Mountains,34.80,41.26
			.' Use the Skyguard Bombs|use Skyguard Bombs##32456
			.info You can use them while flying.
			.info Use them on Fel Cannonballs Stacks.
			.info They look like piles of gray stones on the ground next to Legion Flak Cannons around this area.
			.' Destroy 15 Fel Cannonball Stacks|q 11023/1
			only !Quest.GetQuestCompleted(11091)
		step
			goto Blade's Edge Mountains,27.57,52.90
			.talk Sky Sergeant Vanderlip##23120
			..turnin Bomb Them Again!##11023
			only !Quest.GetQuestCompleted(11091)
		step
			goto Blade's Edge Mountains,29.12,67.87
			.' Use the Wrangling Rope|use Wrangling Rope##32698
			.info Use it on Aether Rays around this area.
			.' Wrangle 5 Aether Rays|q 11065/1
		step
			goto Blade's Edge Mountains,28.75,57.37
			.talk Chu'a'lor##23233
			..accept Guardian of the Monument##11059
		step
			goto Blade's Edge Mountains,27.95,51.46
			.talk Skyguard Khatie##23335
			..turnin Wrangle Some Aether Rays!##11065
		step
			goto Blade's Edge Mountains,27.95,51.46
			.talk Skyguard Khatie##23335
			..accept Wrangle More Aether Rays!##11066
			only !Quest.GetQuestCompleted(11091)
		step
			goto Blade's Edge Mountains,29.12,67.87
			.' Use the Wrangling Rope|use Wrangling Rope##32698
			.info Use it on Aether Rays around this area.
			.' Wrangle 5 Aether Rays|q 11066/1
			only !Quest.GetQuestCompleted(11091)
		step
			goto Blade's Edge Mountains,27.95,51.46
			.talk Skyguard Khatie##23335
			..turnin Wrangle More Aether Rays!##11066
			only !Quest.GetQuestCompleted(11091)
		step
			goto Blade's Edge Mountains,27.40,52.69
			.talk Sky Commander Keller##23334
			..accept To Rule The Skies##11078
		step
			goto Blade's Edge Mountains,29.2,65.2
			.from Apexis Flayer##22175, Shard-Hide Boar##22180
			.' Collect Apexis Shard Formations
			.info They look like groups of crystals blending in with the bigger clusters of crystals around this area.
			.info Run your mouse cursor over the groups of crystals around this area to find them easier.
			.collect 35 Apexis Shard##32569|q 11059
		step
			goto Blade's Edge Mountains,31.76,63.79
			.' Interact with Apexis Monument
			.' Choose "Insert 35 Apexis Shards, and begin!"
			.info Don't do anything for the game, fail on purpose.
			.info This makes the Apexis Guardian appear faster.
			.from Apexis Guardian##22275
			.info He appears nearby.
			.get Apexis Guardian's Head##32697|q 11059/1 
		step
			goto Blade's Edge Mountains,28.75,57.37
			.talk Chu'a'lor##23233
			..turnin Guardian of the Monument##11059
		step
			goto Blade's Edge Mountains,29.2,65.2
			.from Apexis Flayer##22175, Shard-Hide Boar##22180
			.' Collect Apexis Shard Formations
			.info They look like groups of crystals blending in with the bigger clusters of crystals around this area.
			.info Run your mouse cursor over the groups of crystals around this area to find them easier.
			.collect 35 Apexis Shard##32569|q 11078
		step
			goto Blade's Edge Mountains,27.18,64.80
			.' Interact with Rivendark's Egg
			.' Choose "Place 35 Apexis Shards near the dragon egg to crack it open."
			.from Rivendark##23061
			.get Dragon Teeth##32732|q 11078/1
		step
			goto Blade's Edge Mountains,29.2,65.2
			.from Apexis Flayer##22175, Shard-Hide Boar##22180
			.' Collect Apexis Shard Formations
			.info They look like groups of crystals blending in with the bigger clusters of crystals around this area.
			.info Run your mouse cursor over the groups of crystals around this area to find them easier.
			.collect 10 Apexis Shard##32569|q 11061
		step
			goto Blade's Edge Mountains,27.40,52.69
			.talk Sky Commander Keller##23334
			..turnin To Rule The Skies##11078
		step
			goto Blade's Edge Mountains,54.42,10.80
			.' Interact with Bash'ir Crystalforge
			.' Choose "Purchase 1 Unstable Flask of the Sorcerer for the cost of 10 Apexis Shards"
			.collect Unstable Flask of the Sorcerer##32601|q 11061/1
		step
			goto Blade's Edge Mountains,28.38,57.64
			.talk Torkus##23316
			..turnin A Father's Duty##11061
		step
			goto Blade's Edge Mountains,28.48,58.07
			.talk Gahk##23300
			..accept A Fel Whip For Gahk##11079 
		step
			goto Blade's Edge Mountains,29.2,65.2
			.from Apexis Flayer##22175, Shard-Hide Boar##22180
			.' Collect Apexis Shard Formations
			.info They look like groups of crystals blending in with the bigger clusters of crystals around this area.
			.info Run your mouse cursor over the groups of crystals around this area to find them easier.
			.collect 35 Apexis Shard##32569|q 11079
		step
			goto Blade's Edge Mountains,33.87,44.21
			.' Click Fel Crystal Prism
			.' Choose "Place 35 Apexis Shards into the prism."
			.' kill the enemy that spawns
			.info The enemy that spawns is random between 4 different demons.
			.collect Fel Whip##32733|q 11079/1 
		step
			goto Blade's Edge Mountains,28.48,58.07
			.talk Gahk##23300
			..turnin A Fel Whip For Gahk##11079
		step
			goto Blade's Edge Mountains,28.75,57.37
			.talk Chu'a'lor##23233
			..accept A Special Thank You##11091
		step
			goto Blade's Edge Mountains,27.97,58.84
			.talk Jho'nass##23428
			..turnin A Special Thank You##11091
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Burning Crusade\\[68] Netherstorm",[[
author danaton
description This guide contain quest-chain (120 quests) for Netherstorm location.
startlevel 68
		step
			goto Shattrath City,75.8,29.2
			.talk Arcanist Savan##23272
			..accept Report to Spymaster Thalodien##11039
			only if rep ('The Scryers') >= Neutral
		step
			goto Shattrath City,47.2,26.1
			.talk Vindicator Aeus##23270
			..accept Assist Exarch Orelis##11038
			only if rep ('The Aldor') >= Neutral
		step
			goto Netherstorm,21.3,55.6
			.talk Netherologist Coppernickels##19569
			..accept Off To Area 52##10183
		step
			goto Netherstorm,31.5,56.6
			.talk Bot-Specialist Alley##19578
			..accept Recharging the Batteries##10190
		step
			goto Netherstorm,26.5,51.9
			.from Weaken Phase Hunters##18879
			.' You will see a message in your chat window saying 'Phase Hunter is very weak'
			.' Use your Battery Recharging Blaster|use Battery Recharging Blaster##28369
			.' Battery Charge Level|q 10190/1
		step
			goto Netherstorm,31.5,56.6
			.talk Bot-Specialist Alley##19578
			..turnin Recharging the Batteries##10190
		step
			goto Netherstorm,32.3,63.9
			.talk Boots##19617
			..accept Securing the Shaleskin Shale##10342
		step
			goto Netherstorm,32.0,64.2
			.talk Anchorite Karja##19467
			..accept Assisting the Consortium##10263
		step
			goto Netherstorm,32,64
			.talk Spymaster Thalodien##19468
			..turnin Report to Spymaster Thalodien##11039
			..accept Manaforge B'naar##10189
			only if rep ('The Scryers') >= Neutral
		step
			goto Netherstorm,32.1,64.2
			.talk Exarch Orelis##19466
			..turnin Assist Exarch Orelis##11038
			..accept Distraction at Manaforge B'naar##10241
			only if rep ('The Aldor') >= Neutral
		step
			goto Netherstorm,32.4,64.2
			.talk Nether-Stalker Khay'ji##19880
			..turnin Assisting the Consortium##10263
			..accept Consortium Crystal Collection##10265
		step
			goto Netherstorm,32.7,65
			.talk Rocket-Chief Fuselage##19570
			..turnin Off To Area 52##10183
			..accept You're Hired!##10186
		step
			goto Netherstorm,31.4,66.2
			.talk Ravandwyr##19217
			..accept The Archmage's Staff##10173
		step
			goto Netherstorm,33.1,60
			.from Shaleskin Flayer##20210
			.' You can find more Flayers|at 29.5,63.4
			.get 5 Shaleskin Shale|q 10342/1
		step
			goto Netherstorm,31.5,56.6
			.talk Maxx A. Million Mk. V##19589
			..accept Mark V is Alive!##10191
			.' Escort Maxx A. Million Mk. V to safety through the ruins|q 10191/1
			.info Click the red glowing crystals on the ground while escorting Maxx A. Million Mk. V
			.get 10 Etherlithium Matrix Crystal|q 10186/1
		step
			goto Netherstorm,31.5,56.6
			.talk Bot-Specialist Alley##19578
			..turnin Mark V is Alive!##10191
		step
			goto Netherstorm,32.3,63.9
			.talk Boots##19617
			..turnin Securing the Shaleskin Shale##10342
			..accept That Little Extra Kick##10199
		step
			goto Netherstorm,32.7,65
			.talk Rocket-Chief Fuselage##19570
			..turnin You're Hired!##10186
			..accept Invaluable Asset Zapping##10203
			..accept Report to Engineering##10225
		step
			goto Netherstorm,32.4,66.8
			.talk Chief Engineer Trep##19709
			..turnin Report to Engineering##10225
			..accept Essence for the Engines##10224
		step
			goto Netherstorm,34.8,59.1
			.from Mana Wraith##18864+
			.get 7 Mana Wraith Essence|q 10224/1
		step
			goto Netherstorm,32.4,66.8
			.talk Chief Engineer Trep##19709
			..turnin Essence for the Engines##10224
			..accept Elemental Power Extraction##10226
		step
			goto Netherstorm,27.8,65
			.from Captain Arathyn##19635
			.info He walks around this area on a big purple bird.
			.get B'naar Personnel Roster|q 10189/1
			only if rep ('The Scryers') >= Neutral
		step
			goto Netherstorm,26.3,66.7
			.kill 8 Sunfury Magister##18855|q 10241/1
			.kill 8 Sunfury Bloodwarder##18853|q 10241/2
			only if rep ('The Aldor') >= Neutral
		step
			goto Netherstorm,35.4,76.5
			.' Use the Elemental Power Extractor on Sundered Rumblers and Warp Aberrations |use Elemental Power Extractor##28547
			.from Sundered Rumbler##18881, Warp Aberration##18865
			.get 5 Elemental Power|q 10226/1
		step
			goto Netherstorm,40.3,72.9
			.' Retrieve the Multi-Spectrum Terrain Analyzer|q 10203/3
		step
			goto Netherstorm,41,73.8
			.' Retrieve the Hyper Rotational Dig-A-Matic|q 10203/1
		step
			goto Netherstorm,42.4,72.8
			.from Pentatharon##20215
			.get Arklon Crystal Artifact|q 10265/1
		step
			goto Netherstorm,42.5,72.2
			.' Retrieve the Big Wagon Full of Explosives|q 10203/4
		step
			goto Netherstorm,41.4,71.8
			.' Retrieve the Servo-Pneumatic Dredging Claw|q 10203/2
		step
			goto Netherstorm,40.9,72.5
			.info Stand next to the broken, smoking altar on the small hill
			.' Use your Conjuring Powder to summon Ekkorash|use Conjuring Powder##29207
			.from Ekkorash the Inquisitor##19493
			.get Archmage Vargoth's Staff|q 10173/1
		step
			goto Netherstorm,44.6,72.1
			.from Nether Ray##18880
			.get 5 Nether Ray Stinger|q 10199/1
		step
			goto Netherstorm,34.2,68.1
			.talk Lead Sapper Blastfizzle##19634
			..turnin Invaluable Asset Zapping##10203
			..accept Dr. Boom!##10221
		step
			goto Netherstorm,32.4,66.8
			.talk Chief Engineer Trep##19709
			..turnin Elemental Power Extraction##10226
		step
			goto Netherstorm,31.4,66.2
			.talk Ravandwyr##19217
			..turnin The Archmage's Staff##10173
			..accept Rebuilding the Staff##10300
		step
			goto Netherstorm,32.4,64.2
			.talk Nether-Stalker Khay'ji##19880
			..turnin Consortium Crystal Collection##10265
			..accept A Heap of Ethereals##10262
		step
			goto Netherstorm,32.3,63.9
			.talk Boots##19617
			..turnin That Little Extra Kick##10199
		step
			goto Netherstorm,33,64.7
			.talk Papa Wheeler##19645
			..accept Pick Your Part##10206
		step
			goto Netherstorm,32,64
			.talk Spymaster Thalodien##19468
			..turnin Manaforge B'naar##10189
			..accept High Value Targets##10193
			.talk Magistrix Larynna##19469
			..accept Bloodgem Crystals##10204
			only if rep ('The Scryers') >= Neutral
		step
			goto Netherstorm,32.1,64.2
			.talk Exarch Orelis##19466
			..turnin Distraction at Manaforge B'naar##10241
			..accept Measuring Warp Energies##10313
			.talk Anchorite Karja##19467
			..accept Naaru Technology##10243
			only if rep ('The Aldor') >= Neutral
		step
			goto Netherstorm,33.5,53
			.from Disembodied Vindicator##18872, Disembodied Protector##18873, Disembodied Exarch##21058
			.get 4 Flawless Crystal Shard|q 10300/1
		step
			goto Netherstorm,35,59.6
			.info Dr. Boom sends out little walking bombs that blow up |tip When you see a clear passage to Dr. Boom, click the Boom's Doom in your bags, then run close enough to Dr. Boom so you can put the green circle under him, then click to throw the bomb.
			.' If you have a flying mount you can attack Dr. Boom from atop a barrel here|at 34.7,59.5
			.' Click Boom's Doom in your bags|use Boom's Doom##29429
			.kill Dr. Boom##20284|q 10221/1
		step
			goto Netherstorm,31.4,66.2
			.talk Ravandwyr##19217
			..turnin Rebuilding the Staff##10300
			..accept Curse of the Violet Tower##10174
		step
			goto Netherstorm,34.2,68.1
			.talk Lead Sapper Blastfizzle##19634
			..turnin Dr. Boom!##10221
		step
			goto Netherstorm,26.3,66.7
			.from Sunfury Magister##18855+
			.collect Bloodgem Shard |n
			.' Use the Bloodgem Shard next to a floating crystal|use Bloodgem Shard##28452
			.' Siphon the Bloodgem Crystal|q 10204/1
			.kill 8 Sunfury Geologist##19779|q 10193/3
			only if rep ('The Scryers') >= Neutral
		step
			goto Netherstorm,23.2,68.1
			.kill 2 Sunfury Warp-Master##18857|q 10193/1
			.kill 6 Sunfury Warp-Engineer##18852|q 10193/2
			only if rep ('The Scryers') >= Neutral
		step
			goto Netherstorm,25.7,60.6
			.info Stand next to the Northern Pipeline.
			.' Use your Warp-Attuned Orb|use Warp-Attuned Orb##29324
			.' Measure the Northern Pipeline|q 10313/1
			only if rep ('The Aldor') >= Neutral
		step
			goto Netherstorm,20.9,66.9
			.info Stand next to the Western Pipeline.
			.' Use your Warp-Attuned Orb|use Warp-Attuned Orb##29324
			.' Measure the Western Pipeline|q 10313/4
			only if rep ('The Aldor') >= Neutral
		step
			goto Netherstorm,20.7,70.7
			.info Stand next to the Southern Pipeline.
			.' Use your Warp-Attuned Orb|use Warp-Attuned Orb##29324
			.' Measure the Southern Pipeline|q 10313/3
			only if rep ('The Aldor') >= Neutral
		step
			goto Netherstorm,23.2,68.2
			.' Interact with B'naar Control Console |tip Inside the doorway northeast of the Southern Pipeline, to the left.
			..turnin Naaru Technology##10243
			..accept B'naar Console Transcription##10245
			only if rep ('The Aldor') >= Neutral
		step
			goto Netherstorm,29,72.7
			.info Stand next to the Eastern Pipeline.
			.' Use your Warp-Attuned Orb|use Warp-Attuned Orb##29324
			.' Measure the Eastern Pipeline|q 10313/2
			only if rep ('The Aldor') >= Neutral
		step
			goto Netherstorm,30.2,75.5
			.from Zaxxis Raider##18875, Zaxxis Stalker##19642
			.get 10 Zaxxis Insignia|q 10262/1
			.get 10 Ethereal Technology|q 10206/1
		step
			goto Netherstorm,33,64.7
			.talk Papa Wheeler##19645
			..turnin Pick Your Part##10206
		step
			goto Netherstorm,32.4,64.2
			.talk Nether-Stalker Khay'ji##19880
			..turnin A Heap of Ethereals##10262
			..accept Warp-Raider Nesaad##10205
		step
			goto Netherstorm,32,64
			.talk Spymaster Thalodien##19468
			..turnin High Value Targets##10193
			..accept Shutting Down Manaforge B'naar##10329
			.talk Magistrix Larynna##19469
			..turnin Bloodgem Crystals##10204
			only if rep ('The Scryers') >= Neutral
		step
			goto Netherstorm,32.1,64.2
			.talk Exarch Orelis##19466
			..turnin Measuring Warp Energies##10313
			.talk Anchorite Karja##19467
			..turnin B'naar Console Transcription##10245
			..accept Shutting Down Manaforge B'naar##10299
			only if rep ('The Aldor') >= Neutral
		step
			goto Netherstorm,23.9,70.7
			.from Overseer Theredis##20416
			.get B'naar Access Crystal|q 10329/2
			only if rep ('The Scryers') >= Neutral
		step
			goto Netherstorm,23.2,68.1
			.' Click B'naar Control Console
			.' Click "<Begin emergency shutdown>"
			.' Kill the technicians as they come to try to save the Manaforge
			.'Only takes 2 minutes
			.' Shut Down Manaforge B'naar|q 10329/1
			only if rep ('The Scryers') >= Neutral
		step
			goto Netherstorm,23.3,68.6
			.' Go inside Manaforge B'naar|at 23.9,70.7
			.from Overseer Theredis##20416
			.get B'naar Access Crystal |q 10299/2
			only if rep ('The Aldor') >= Neutral
		step
			goto Netherstorm,23.2,68.1
			.info Kill all Warp-Engineers in the nearest area to make your life easier.
			.' Interact with B'naar Control Console
			.' Choose "<Begin emergency shutdown>"
			.info Kill the technicians as they come to try to save the Manaforge
			.info Only takes 2 minutes.
			.' Shut Down Manaforge B'naar|q 10299/1
			only if rep ('The Aldor') >= Neutral
		step
			goto Netherstorm,32.1,64.2
			.talk Anchorite Karja##19467
			..turnin Shutting Down Manaforge B'naar##10299
			..accept Shutting Down Manaforge Coruu##10321
			.talk Exarch Orelis##19466
			..accept Attack on Manaforge Coruu##10246
			only if rep ('The Aldor') >= Neutral
		step
			goto Netherstorm,32,64
			.talk Spymaster Thalodien##19468
			..turnin Shutting Down Manaforge B'naar##10329
			..accept Stealth Flight##10194
			only if rep ('The Scryers') >= Neutral
		step
			goto Netherstorm,28.2,79.4
			.kill Warp-Raider Nesaad##19641|q 10205/1
		step
			goto Netherstorm,32.4,64.2
			.talk Nether-Stalker Khay'ji##19880
			..turnin Warp-Raider Nesaad##10205
			..accept Request for Assistance##10266
		step
			goto Netherstorm,33.8,64.2
			.talk Veronia##20162
			..turnin Stealth Flight##10194
			..accept Behind Enemy Lines##10652
			.' Tell her you're as ready as you'll ever be.
			.' You will fly to Manaforge Coruu |goto 48.0,86.0,2 |noway |c |q 10652
			only if rep ('The Scryers') >= Neutral
		step
			goto Netherstorm,48.2,86.6
			.talk Caledis Brightdawn##19840
			..turnin Behind Enemy Lines##10652
			..accept A Convincing Disguise##10197
			only if rep ('The Scryers') >= Neutral
		step
			goto Netherstorm,47.7,84.9
			.kill Sunfury Arcanist##20134 |n
			.get Sunfury Arcanist Robes|q 10197/3
			only if rep ('The Scryers') >= Neutral
		step
			goto Netherstorm,49,81.5
			.' Go inside Manaforge Coruu|at 49,81.5
			.from Sunfury Researcher##20136
			.get Sunfury Researcher Gloves|q 10197/1
			only if rep ('The Scryers') >= Neutral
		step
			goto Netherstorm,50.8,83.2
			.' Go outside to|at 50.8,83.2
			.from Sunfury Guardsmen##18850
			.get Sunfury Guardsman Medallion|q 10197/2
			only if rep ('The Scryers') >= Neutral
		step
			goto Netherstorm,48.2,86.6
			.talk Caledis Brightdawn##19840
			..turnin A Convincing Disguise##10197
			..accept Information Gathering##10198
			only if rep ('The Scryers') >= Neutral
		step
			'Use the Sunfury Disguise in your bags|havebuff Sunfury Disguise|use Sunfury Disguise##28607
			only if rep ('The Scryers') >= Neutral
		step
			goto Netherstorm,48.2,84.1
			.'Go inside Manaforge Coruu|at 48.2,84.1
			.' Be careful to avoid the Arcane Annihilator, he can see through the disguise and will attack you.
			.' Stand between the 2 blood elves at the back of the room with a bunch blood elves lined up in it
			.' Listen to them talk
			.' Gather the Information|q 10198/1
			only if rep ('The Scryers') >= Neutral
		step
			goto Netherstorm,48.2,86.6
			.'Go outside|at 48.2,86.6
			.talk Caledis Brightdawn##19840
			..turnin Information Gathering##10198
			..accept Shutting Down Manaforge Coruu##10330
			only if rep ('The Scryers') >= Neutral
		step
			goto Netherstorm,49,81.5
			.'Go inside Manaforge Coruu|at 49,81.5
			.from Overseer Seylanna##20397
			.collect 1 Coruu Access Crystal##29396|q 10330/2
			.' Click Coruu Control Console
			.' Click "<Begin emergency shutdown>"
			.' Kill the technicians as they come to try to save the Manaforge
			.' Shut Down Manaforge Coruu |q 10330/1
			only if rep ('The Scryers') >= Neutral
		step
			goto Netherstorm,48.2,86.6
			'Go outside|at 48.2,86.6
			.talk Caledis Brightdawn##19840
			..turnin Shutting Down Manaforge Coruu##10330
			..accept Return to Thalodien##10200
			only if rep ('The Scryers') >= Neutral
		step
			goto Netherstorm,45.9,79.4
			.kill 8 Sunfury Arcanist##20134 |q 10246/2
			only if rep ('The Aldor') >= Neutral
		step
			goto Netherstorm,49,81.5
			.' Go inside Manaforge Coruu|at 49,81.5
			.kill 5 Sunfury Researcher##20136|q 10246/1
			.from Overseer Seylanna##20397
			.collect 1 Coruu Access Crystal##29396|q 10321 |sticky
			.' Interact wit Coruu Control Console
			.' Choose "<Begin emergency shutdown>"
			.' Kill the technicians as they come to try to save the Manaforge
			.info Only takes 2 minutes
			.' Shut Down Manaforge Coruu|goal Manaforge Coruu Shut Down|q 10321/1
			only if rep ('The Aldor') >= Neutral
		step
			goto Netherstorm,57.7,85.2
			.talk Thadell##20464
			..accept Needs More Cowbell##10334
			.talk Apprentice Andrethan##20463
			..accept Indispensable Tools##10331
		step
			goto Netherstorm,57.5,86.3
			.talk Custodian Dieworth##19488
			..accept Malevolent Remnants##10184
			.' Use Archmage Vargoth's Staff |use Archmage Vargoth's Staff##28455
			.talk Image of Archmage Vargoth##19644
			..turnin Curse of the Violet Tower##10174
			..accept The Sigil of Krasus##10188
		step
			goto Netherstorm,57.5,86.3
			.talk Custodian Dieworth##19488
			..accept A Fate Worse Than Death##10185
			.talk Lieutenant-Sorcerer Morran##19489
			..accept The Unending Invasion##10343
		step
			goto Netherstorm,59.1,78.8
			.talk Bessy##20415
			..turnin Needs More Cowbell##10334
			..accept When the Cows Come Home##10337
			.' Escort Bessy to Thadell|at 57.7,84.9|q 10337/1
			.info When escorting Bessy, let her get hit first, or else she won't help you fight.
		step
			goto Netherstorm,57.7,85.2
			.talk Thadell##20464
			..turnin When the Cows Come Home##10337
		step
			goto Netherstorm,58.4,88.3
			.from Abjurist Belmara##19546
			.info She walks around this area, some searching may be necessary.
			.collect 1 Belmara's Tome##29234|sticky
			.' Click Belmara's Tome in your bags|use Belmara's Tome##29234
			..accept Abjurist Belmara##10305
		step
			goto Netherstorm,59.6,87.7
			.from Cohlien Frostweaver##19545 
			.info He walks around this area, some searching may be necessary.
			.collect 1 Cohlien's Cap##29236|sticky
			.' Click Cohlien's Cap in your bags|use Cohlien's Cap##29236
			..accept Cohlien Frostweaver##10307
		step
			goto Netherstorm,60.4,88
			.from Battle-Mage Dathric##19543
			.info He is inside the building that looks like a town hall
			.collect 1 Dathric's Blade##29233|sticky
			.' Click Dathric's Blade|use Dathric's Blade##29233
			..accept Battle-Mage Dathric##10182
		step
			goto Netherstorm,59.9,85.6
			.from Conjurer Luminrath##19544
			.info He walks around this area, some searching may be necessary.
			.collect 1 Luminrath's Mantle##29235|sticky
			.' Click Luminrath's Mantle in your bags|use Luminrath's Mantle##29235
			..accept Conjurer Luminrath##10306
		step
			goto Netherstorm,61,85
			.from Kirin'Var Apprentice##20409
			.get Smithing Hammer|q 10331/1
		step
			goto Netherstorm,59.5,88.3
			.from Severed Spirit##19881, Severed Defender##20934
			.' Kill 20 Severed Spirits|q 10184/1
		step
			goto Netherstorm,57.7,85.2
			.talk Apprentice Andrethan##20463
			..turnin Indispensable Tools##10331
			..accept Master Smith Rhonsus##10332
		step
			goto Netherstorm,57.5,86.3
			.talk Custodian Dieworth##19488
			..turnin Malevolent Remnants##10184
			..accept The Annals of Kirin'Var##10312
		step
			goto Netherstorm,61.3,85
			.kill Rhonsus##20410 |q 10332/1
		step
			goto Netherstorm,57.7,85.2
			.talk Apprentice Andrethan##20463
			..turnin Master Smith Rhonsus##10332
		step
			goto Netherstorm,56.7,86.57
			.info Go inside the little house.
			.' Click Dathric's Blade when standing next to the Weapon Rack|use Dathric's Blade##28351
			.' Put Dathric's Spirit to Rest|q 10182/1
		step
			goto Netherstorm,56.4,87.8
			.info  Go inside the little house.
			.' Click Luminrath's Mantle when standing next to the Dresser|use Luminrath's Mantle##28352
			.' Put Luminrath's Spirit to Rest|q 10306/1
		step
			goto Netherstorm,55.7,87.2
			.' Click Mana Bomb Fragment
			.get Mana Bomb Fragment|q 10343/1
		step
			goto Netherstorm,55.1,87.5
			.' Click Cohlien's Cap when standing next to the Foot Locker|use Cohlien's Cap##28353
			.' Put Cohlien's Spirit to Rest|q 10307/1
		step
			goto Netherstorm,55.5,86.5
			.info Go inside the house with a huge log laying diagonally into it
			.' Click Belmara's Tome when standing next to the Bookshelf|use Belmara's Tome##28336
			.' Put Belmara's Spirit to Rest|q 10305/1
		step
			goto Netherstorm,55.7,87.1
			.from Mageslayer##18866, Mana Seeker##18867
			.kill 10 Mana Seekers##18867|q 10185/1
			.kill 10 Mageslayers##18866|q 10185/2
		step
			goto Netherstorm,57.5,86.3
			.talk Custodian Dieworth##19488
			..turnin Abjurist Belmara##10305
			..turnin A Fate Worse Than Death##10185
			..turnin Cohlien Frostweaver##10307
			..turnin Battle-Mage Dathric##10182
			..turnin Conjurer Luminrath##10306
			.talk Lieutenant-Sorcerer Morran##19489
			..turnin The Unending Invasion##10343
			..accept Potential Energy Source##10239
		step
			goto Netherstorm,60.4,88
			.from Battle-Mage Dathric##19543
			.info He is inside the building that looks like a town hall
			.get Annals of Kirin'Var|q 10312/1
		step
			goto Netherstorm,57.5,86.3
			.talk Custodian Dieworth##19488
			..turnin The Annals of Kirin'Var##10312
			..accept Searching for Evidence##10316
		step
			goto Netherstorm,60.3,78
			.' Go inside the barn.
			.' Click Necromantic Focus
			..turnin Searching for Evidence##10316
			..accept A Lingering Suspicion##10314
		step
			goto Netherstorm,59.8,79.5
			.from Kirin'Var Spectre##21065, Kirin'Var Ghost##20512
			.get 10 Loathsome Remnant|q 10314/1
		step
			goto Netherstorm,57.5,86.3
			.talk Custodian Dieworth##19488
			..turnin A Lingering Suspicion##10314
			..accept Capturing the Phylactery##10319
		step
			goto Netherstorm,59.9,80.4
			.' Click Suspicious Outhouse
			.get Naberius's Phylactery|q 10319/1
		step
			goto Netherstorm,57.5,86.3
			.talk Custodian Dieworth##19488
			..turnin Capturing the Phylactery##10319
		step
			goto Netherstorm,51.1,82.5
			.' Click Energy Isolation Cube.
			.get 10 Energy Isolation Cube|q 10239/1
			.from Spellbinder Maryana##19593
			.info She wanders around outside in this area, so some searching may be necessary.
			.get Sigil of Krasus|q 10188/1
		step
			goto Netherstorm,51.1,80.7
			.' Use Archmage Vargoth's Staff|use Archmage Vargoth's Staff##28455
			.talk Image of Archmage Vargoth##19644
			..turnin The Sigil of Krasus##10188
			..accept Krasus's Compendium##10192
		step
			goto Netherstorm,57.5,86.3
			.talk Lieutenant-Sorcerer Morran##19489
			..turnin Potential Energy Source##10239
		step
			goto Netherstorm,57.6,89.6
			.' Click Krasus' Compendium - Chapter 2
			.get Krasus's Compendium - Chapter 2|q 10192/2
		step
			goto Netherstorm,58.6,89.2
			.' Click Krasus' Compendium - Chapter 1
			.get Krasus's Compendium - Chapter 1|q 10192/1
		step
			goto Netherstorm,58.8,87.9
			.' Click Krasus' Compendium - Chapter 3
			.get Krasus's Compendium - Chapter 3|q 10192/3
		step
			.' Use Archmage Vargoth's Staff|use Archmage Vargoth's Staff##28455
			.talk Image of Archmage Vargoth##19644
			..turnin Krasus's Compendium##10192
			..accept Unlocking the Compendium##10301
		step
			goto Netherstorm,57.6,86.3
			.talk Lieutenant-Sorcerer Morran##19489
			..accept Torching Sunfury Hold##10233
			..accept Building a Perimeter##10240
		step
			goto Netherstorm,57.5,86.4
			.talk Custodian Dieworth##19488
			..accept The Sunfury Garrison##10222
		step
			goto Netherstorm,59.3,85.4
			.' Use the Rune Activation Device next to the Kirin'Var Rune|use Rune Activation Device##28725
			.' Activate Eastern Rune|q 10240/1
		step
			goto Netherstorm,57.3,82.9
			.' Use the Rune Activation Device next to the Kirin'Var Rune|use Rune Activation Device##28725
			.' Activate Northeastern Rune|q 10240/2
		step
			goto Netherstorm,54.3,86.1
			.' Use the Rune Activation Device next to the Kirin'Var Rune|use Rune Activation Device##28725
			.' Activate Western Rune|q 10240/3
		step
			goto Netherstorm,55.2,79.7
			.from Sunfury Flamekeeper##20221
			.collect 1 Flaming Torch##28550
			.' Use the Flaming Torch on Sunfury Ballistas and Tents|use Flaming Torch##28550
			.' Destroy 4 Sunfury Ballistas|q 10233/1
			.info They look sort of like catapults all around this area.
			.' Destroy 4 Sunfury Tents|q 10233/2
			..kill 10 Sunfury Archer##19707|q 10222/1
		step
			goto Netherstorm,56.6,78.2
			.from Spellreaver Marathelle##19926
			..get Heliotrope Oculus|q 10301/1
		step
			.'Use Archmage Vargoth's Staff|use Archmage Vargoth's Staff##28455
			.talk Image of Archmage Vargoth##19644
			..turnin Unlocking the Compendium##10301
			..accept Summoner Kanthin's Prize##10209
		step
			goto Netherstorm,57.5,86.3
			.talk Custodian Dieworth##19488
			..turnin The Sunfury Garrison##10222
			..accept Down With Daellis##10223
		step
			goto Netherstorm,57.6,86.3
			.talk Lieutenant-Sorcerer Morran##19489
			..turnin Down With Daellis##10233
			..turnin Building a Perimeter##10240
		step
			goto Netherstorm,56.0,66.8
			..kill Master Daellis Dawnstrike##19705|q 10223/1
		step
			goto Netherstorm,59.2,62.9
			.from Summoner Kanthin##19657
			.get Stone of Glacius##28479|q 10209/1
		step
			.'Use Archmage Vargoth's Staff|use Archmage Vargoth's Staff##28455
			.talk Image of Archmage Vargoth##19644
			..turnin Summoner Kanthin's Prize##10209
			..accept Ar'kelos the Guardian##10176
		step
			goto Netherstorm,57.5,86.3
			.talk Custodian Dieworth##19488
			..turnin Down With Daellis##10223
		step
			goto Netherstorm,58.1,86.5
			..kill Ar'kelos##19494|q 10176/1
		step
			goto Netherstorm,58.3,86.4
			.talk Archmage Vargoth##19481
			..turnin Ar'kelos the Guardian##10176
		step
			.' Use Archmage Vargoth's Staff|use Archmage Vargoth's Staff##28455
			.talk Image of Archmage Vargoth##19644
			..turnin Ar'kelos the Guardian##10176
		step
			goto Netherstorm,32,64
			.talk Spymaster Thalodien##19468
			..turnin Return to Thalodien##10200
			only if rep ('The Scryers') >= Neutral
		step
			goto Netherstorm,32.1,64.2
			.talk Exarch Orelis##19466
			..turnin Attack on Manaforge Coruu##10246
			..accept Sunfury Briefings##10328
			.talk Anchorite Karja##19467
			..turnin Shutting Down Manaforge Coruu##10321
			..accept Shutting Down Manaforge Duro##10322
			only if rep ('The Aldor') >= Neutral
		step
			goto Netherstorm,32.0,64.0
			.talk Magistrix Larynna##19469
			.accept Kick Them While They're Down##10341
			.talk Spymaster Thalodien##19468
			..accept Shutting Down Manaforge Duro##10338
			only if rep ('The Scryers') >= Neutral
		step
			goto Netherstorm,33,64.7
			.talk Papa Wheeler##19645
			..accept Help Mama Wheeler##10333
			..accept In A Scrap With The Legion##10232
		step
			goto Netherstorm,46.7,56.9
			.talk Gahruj##20066
			..turnin Request for Assistance##10266
			..accept Rightful Repossession##10267
		step
			goto Netherstorm,46.6,56.5
			.talk Mama Wheeler##19728
			..turnin Help Mama Wheeler##10333
			..accept One Demon's Trash...##10234
		step
			goto Netherstorm,46.4,56.4
			.talk Mehrdad##20810
			..accept Run a Diagnostic!##10417
			..accept New Opportunities##10348
		step
			goto Netherstorm,46.5,56.0
			.talk Shauly Pore##20921
			..accept Keeping Up Appearances##10433
		step
			goto Netherstorm,48.2,55.0
			.' Collect Diagnostic Equipment
			.get Diagnostic Results|q 10417/1
		step
			goto Netherstorm,48.2,53.9
			.' Collect Ivory Bell
			.get 15 Ivory Bell|q 10348/1
			.from Ripfang Lynx##20671
			.get 10 Ripfang Lynx Pelt|q 10433/1
		step
			goto Netherstorm,48.8,59.3
			.kill 15 Gan'arg Engineer##16948|q 10232/2
			.kill 5 Mo'arg Doomsmith##16944|q 10232/1
			.' Collect Fel Reaver Part
			.get 10 Fel Reaver Parts|q 10234/1
		step
			goto Netherstorm,46.6,56.5
			.talk Mama Wheeler##19728
			..turnin One Demon's Trash...##10234
			..accept Declawing Doomclaw##10235
		step
			goto Netherstorm,46.4,56.4
			.talk Mehrdad##20810
			..turnin New Opportunities##10348
			..turnin Run a Diagnostic!##10417
			..accept Deal With the Saboteurs##10418
		step
			goto Netherstorm,46.5,56.0
			.talk Shauly Pore##20921
			..turnin Keeping Up Appearances##10433
		step
			goto Netherstorm,46.8,53.9
			.kill 8 Barbscale Crocolisk##20773|q 10418/1
		step
			goto Netherstorm,50.7,57.1
			.from Doomclaw##19738
			..get Doomclaw's Hand|q 10235/1
		step
			goto Netherstorm,57.9,63.4
			.from Sunfury Conjurer##20139
			.get 1 Sunfury Arcane Briefing|q 10328/2
			.from Sunfury Bowman##20207, Sunfury Centurion##20140
			.get 1 Sunfury Military Briefing|q 10328/1
			only if rep ('The Aldor') >= Neutral
		step
			goto Netherstorm,57.9,63.4
			.kill 8 Sunfury Conjurer##20139|q 10341/1
			.kill 6 Sunfury Bowmen##20207|q 10341/2
			.kill 4 Sunfury Centurions##20140|q 10341/3
			only if rep ('The Scryers') >= Neutral
		step
			goto Netherstorm,57.6,63.9
			.' Collect Box Surveying Equipment
			.get 10 Box of Surveying Equipment|q 10267/1
		step
			goto Netherstorm,60.0,68.5
			.' Go inside Manaforge Duro|at 61.1,65.5
			.from Overseer Athanel##20435
			.get 1 Duro Access Crystal|q 10322/2
			only if rep ('The Aldor') >= Neutral
		step
			goto Netherstorm,59.1,66.8
			.' Interact Duro Control Console
			.' Choose "<Begin emergency shutdown>"
			.' Kill the technicians as they come to try to save the Manaforge
			.' Only takes 2 minutes
			.' Shut Down Manaforge Duro|q 10322/1
			only if rep ('The Aldor') >= Neutral
		step
			goto Netherstorm,60.0,68.5
			.' Go inside Manaforge Duro|at 61.1,65.5
			.from Overseer Athanel##20435
			.get 1 Duro Access Crystal|q 10338/2
			only if rep ('The Scryers') >= Neutral
		step
			goto Netherstorm,59.1,66.8
			.' Interact Duro Control Console
			.' Choose "<Begin emergency shutdown>"
			.' Kill the technicians as they come to try to save the Manaforge
			.' Only takes 2 minutes
			.' Shut Down Manaforge Duro |q 10338/1
			only if rep ('The Scryers') >= Neutral
		step
			goto Netherstorm,46.5,56.0
			.talk Shauly Pore##20921
			..accept The Dynamic Duo##10434
		step
			goto Netherstorm,46.4,56.4
			.talk Mehrdad##20810
			..turnin Deal With the Saboteurs##10418
			..accept To the Stormspire##10423
		step
			goto Netherstorm,46.6,56.5
			.talk Mama Wheeler##19728
			..turnin Declawing Doomclaw##10235
			..accept Warn Area 52!##10237
		step
			goto Netherstorm,46.7,56.9
			.talk Gahruj##20066
			..turnin Rightful Repossession##10267
			..accept An Audience with the Prince##10268
		step
			goto Netherstorm,33.0,64.7
			.talk Papa Wheeler##19645
			..turnin In A Scrap With The Legion##10232
		step
			goto Netherstorm,32.7,65.0
			.talk Rocket-Chief Fuselage##19570
			..turnin Warn Area 52!##10237
		step
			goto Netherstorm,32.0,64.1
			.talk Spymaster Thalodien##19468
			..turnin Shutting Down Manaforge Duro##10338
			.talk Magistrix Larynna##19469
			..turnin Kick Them While They're Down##10341
			only if rep ('The Scryers') >= Neutral
		step
			goto Netherstorm,32.1,64.2
			.talk Exarch Orelis##19466
			..turnin Sunfury Briefings##10328
			..accept Outside Assistance##10431
			.talk Anchorite Karja##19467
			..turnin Shutting Down Manaforge Duro##10322
			only if rep ('The Aldor') >= Neutral
		step
			goto Netherstorm,43.5,35.1
			.talk Ghabar##20811
			..turnin To the Stormspire##10423
			..accept Diagnosis: Critical##10424
		step
			goto Netherstorm,44.7,36.8
			.talk Audi the Needle##20205
			..turnin The Dynamic Duo##10434
			..accept Retrieving the Goods##10435
		step
			goto Netherstorm,44.7,34.9
			.talk Zephyrion##20470
			..accept Surveying the Ruins##10335
		step
			goto Netherstorm,44.7,34.9
			.talk Nether-Stalker Nauthis##20471
			..accept The Minions of Culuthas##10336
			..accept Fel Reavers, No Thanks!##10855
		step
			goto Netherstorm,34.8,38.3
			.talk Kaylaan##20780
			..turnin Outside Assistance##10431
			..accept A Dark Pact##10380
			only if rep ('The Aldor') >= Neutral
		step
			goto Netherstorm,34.6,38.0
			.talk Wind Trader Tuluman##20112
			..accept Dealing with the Foreman##10317
		step
			goto Netherstorm,34.5,37.8
			.talk Nether-Stalker Oazul##20341
			..accept Neutralizing the Nethermancers##10315
		step
			goto Netherstorm,27.1,39.2
			.kill 3 Mo'arg Warp-Master##20326|q 10380/3
			only if rep ('The Aldor') >= Neutral
		step
			goto Netherstorm,30.8,40.8
			.kill 15 Sunfury Nethermancer##20248|q 10315/1
		step
			goto Netherstorm,30.8,40.8
			.kill 3 Daughter of Destiny##18860|q 10380/2
			only if rep ('The Aldor') >= Neutral
		step
			goto Netherstorm,26.4,44.0
			.' The entrance to Trelleum Mine starts here|goto 26.4,44.0,0.5 |noway |q 10317
		step
			goto Netherstorm,26.4,42.3
			.talk Foreman Sundown##20393
			..turnin Dealing with the Foreman##10317
			..accept Dealing with the Overmaster##10318
		step
			goto Netherstorm,26.8,36.0
			..kill Overmaster Grindgarr##20803|q 10318/1
		step
			goto Netherstorm,26.4,43.7
			.' Leave the Mine|goto 26.4,43.7,0.5 |noway |q 10315
		step
			goto Netherstorm,26.4,42.3
			.kill 6 Gan'arg Warp-Tinker##20285|q 10380/1
			.kill 6 Mo'arg Warp-Master##20326|q 10380/3
			only if rep ('The Aldor') >= Neutral
		step
			goto Netherstorm,34.5,37.8
			.talk Nether-Stalker Oazul##20341
			..turnin Neutralizing the Nethermancers##10315
		step
			goto Netherstorm,34.6,37.9
			.talk Wind Trader Tuluman##20112
			..turnin Dealing with the Overmaster##10318
		step
			goto Netherstorm,34.8,38.3
			.talk Kaylaan##20780
			..turnin A Dark Pact##10380
			..accept Aldor No More##10381
			only if rep ('The Aldor') >= Neutral
		step
			goto Netherstorm,32.1,64.2
			.talk Exarch Orelis##19466
			..turnin Aldor No More##10381
			only if rep ('The Aldor') >= Neutral
		step
			goto Netherstorm,39.1,28.9
			.from Gan'arg Mekgineer##16949+
			..collect 5 Condensed Nether Gas##31653 |q 10855
		step
			goto Netherstorm,38.0,25.5
			.talk Inactive Fel Reaver##22293
			..turnin Nether Gas In a Fel Fire Engine##10850
			.' Destroy Inactive Fel Reaver|q 10855/1
		step
			goto Netherstorm,44.7,34.9
			.talk Nether-Stalker Nauthis##20471
			..turnin Fel Reavers, No Thanks!##10855
			..accept The Best Defense##10856
		step
			goto Netherstorm,47.6,26.8
			.' Use Diagnostic Device next to the generator|use Diagnostic Device##29803
			.' Get the Diagnostic Results|q 10424/1
		step
			goto Netherstorm,41.9,23.6
			..kill 12 Wrathbringer##18858|q 10856/1
		step
			goto Netherstorm,44.2,12.6
			.' Collect Dome Generator Segment
			..get 10 Dome Generator Segment|q 10435/1
		step
			goto Netherstorm,51.6,20.5
			.' Use Surveying Markers next to this Draenei Banner|use Surveying Markers##29445
			.' Place Surveying Marker One|q 10335/1
		step
			goto Netherstorm,54.5,22.8
			.' Use Surveying Markers next to this Draenei Banner|use Surveying Markers##29445
			.' Place Surveying Marker Two|q 10335/2
		step
			goto Netherstorm,55.8,20.0
			.' Use Surveying Markers next to this Draenei Banner|use Surveying Markers##29445
			.' Place Surveying Marker Three|q 10335/3
		step
			goto Netherstorm,51.7,20.4
			..kill 10 Hound of Culuthas##20141|q 10336/1
			..kill 5 Eye of Culuthas##20394|q 10336/2
		step
			goto Netherstorm,43.5,35.2
			.talk Ghabar##20811
			..turnin Diagnosis: Critical##10424
			..accept Testing the Prototype##10430
		step
			goto Netherstorm,44.7,34.9
			.talk Nether-Stalker Nauthis##20471
			..turnin The Best Defense##10856
			..accept Teleport This!##10857
			..turnin The Minions of Culuthas##10336
		step
			goto Netherstorm,44.7,34.9
			.talk Zephyrion##20470
			..turnin Surveying the Ruins##10335
		step
			goto Netherstorm,44.7,36.7
			.talk Audi the Needle##20205
			..turnin Retrieving the Goods##10435
		step
			goto Netherstorm,39.2,20.0
			.' Use the Mental Interference Rod on Cyber-Rage Forgelord|use Mental Interference Rod##31678
			.' Use the Detonate Teleporter ability next to teleporters|at 39.1,20.5
			.' Destroy the Western Teleporter|q 10857/1
		step
			goto Netherstorm,41.2,19.4
			.' Use the Mental Interference Rod on Cyber-Rage Forgelord|use Mental Interference Rod##31678
			.' Use the Detonate Teleporter ability next to teleporters
			.' Destroy the Central Teleporter|q 10857/2
		step
			goto Netherstorm,42.2,20.9
			.' Use the Mental Interference Rod on Cyber-Rage Forgelord|use Mental Interference Rod##31678
			.' Use the Detonate Teleporter ability next to teleporters
			.' Destroy the Eastern Teleporter|q 10857/3
		step
			goto Netherstorm,44.7,14.6
			.talk Tashar##20913
			..turnin Testing the Prototype##10430
			..accept All Clear!##10436
		step
			goto Netherstorm,45.6,11.2
			..kill 12 Scythetooth Raptor##20634|q 10436/1
		step
			goto Netherstorm,44.7,14.6
			.talk Tashar##20913
			..turnin All Clear!##10436
			..accept Success!##10440
		step
			goto Netherstorm,43.5,35.2
			.talk Ghabar##20811
			..turnin Success!##10440
		step
			goto Netherstorm,44.7,34.9
			.talk Nether-Stalker Nauthis##20471
			..turnin Teleport This!##10857
		step
			goto Netherstorm,42.3,32.6
			.talk Aurine Moonblaze##20871
			..accept Flora of the Eco-Domes##10426
		step
			goto Netherstorm,41.2,32.2
			.' Use Energy Field Modulator on Farahlon Lashers|use Energy Field Modulator##29818
			.from Mutated Farahlon Lasher##20774
			.' Test Energy Modulator 10 times|q 10426/1
		step
			goto Netherstorm,42.3,32.6
			.talk Aurine Moonblaze##20871
			..turnin Flora of the Eco-Domes##10426
			..accept Creatures of the Eco-Domes##10427
		step
			goto Netherstorm,40.4,35.5
			.from Talbuk Doe##20610+, Talbuk Sire##20777
			.' Use the Talbuk Tagger on Talbuks when they are below 20 percent health|use Talbuk##29817
			.' Tag 12 Talbuk|q 10427/1
		step
			goto Netherstorm,42.3,32.6
			.talk ##20871
			..turnin Creatures of the Eco-Domes##10427
			..accept When Nature Goes Too Far##10429
		step
			goto Netherstorm,44.3,28.5
			.from Markaru##20775
			..get Hulking Hydra Heart|q 10429/1
		step
			goto Netherstorm,42.3,32.6
			.talk Aurine Moonblaze##20871
			..turnin When Nature Goes Too Far##10429
		step
			goto Netherstorm,45.9,36.0
			.talk Image of Nexus-Prince Haramad##20084
			..turnin An Audience with the Prince##10268
			..accept Triangulation Point One##10269
		step
			goto Netherstorm,66.8,34.8
			.' Use the Triangulation Device in your bags|use Triangulation Device##28962
			.' A red arrow will appear showing you where to go.
			.' Discover the first triangulation point|q 10269/1
		step
			goto Netherstorm,58.3,31.3
			.talk Dealer Hazzin##20092
			..turnin Triangulation Point One##10269
			..accept Triangulation Point Two##10275
		step
			goto Netherstorm,58.3,31.7
			.talk Wind Trader Marid##20071
			..accept A Not-So-Modest Proposal##10270
		step
			goto Netherstorm,59.2,32.1
			.talk Flesh Handler Viridius##20450
			..accept Captain Tyralius##10422
		step
			goto Netherstorm,59.2,32.6
			.talk Researcher Navuud##20449
			..accept Electro-Shock Goodness!##10411
		step
			goto Netherstorm,59.5,32.4
			.talk Commander Ameer##20448
			..accept The Ethereum##10339
		step
			goto Netherstorm,60.1,31.7
			.talk Professor Dabiri##20907
			..accept Recipe for Destruction##10437
		step
			goto Netherstorm,57.1,36.5
			..kill Captain Zovax##20727|q 10339/4
			.info He walks around this area.
			..kill 5 Ethereum Assassin##20452|q 10339/1
			..kill 5 Ethereum Shocktrooper##20453|q 10339/2
			..kill 2 Ethereum Researcher##20456|q 10339/3
		step
			goto Netherstorm,56.8,38.7
			.' Click the Ethereum Transponder Zeta
			.talk Image of Commander Ameer##20482
			..turnin The Ethereum##10339
			..accept Ethereum Data##10384
		step
			goto Netherstorm,55.8,39.9
			.' Click Ethereum Data Cell
			..get Ethereum Data Cell|q 10384/1
		step
			goto Netherstorm,53.3,41.5
			.from Warden Icoshock##20770
			.' Collect The Warden's Key|at 54.5,41.1
			.' Click Captain Tyralius's Prison
			.info It looks like a glowing pink orb
			.' Free Captain Tyralius|q 10422/1
		step
			goto Netherstorm,55.2,42.8
			.' Use Navuud's Concoction in your bags|use Navuud's Concoction##29737
			.' While under the effects of the Electro-Shock Therapy buff do the following: |tip This buff lasts for 60 minutes. High levels will need to use melee since the effect only works by random chance.
			..kill 30 Void Waste Globule##20805|q 10411/2
		step
			goto Netherstorm,56.8,38.7
			.' Click the Ethereum Transponder Zeta
			.talk Image of Commander Ameer##20482
			..turnin Ethereum Data##10384
			..accept Potential for Brain Damage = High##10385
		step
			goto Netherstorm,56.5,38.6
			.from Ethereum Shocktrooper##20453, Ethereum Assassin##20452
			.' Collect Ethereum Essence|n
			.' Use Ethereum Essence in your bags to see Ethereum Relays|use Ethereum Essence##29482
			.from Ethereum Relay##20619
			.get 15 Ethereum Relay Data|q 10385/1
		step
			goto Netherstorm,56.8,38.7
			.' Click the Ethereum Transponder Zeta
			.talk Image of Commander Ameer##20482
			..turnin Potential for Brain Damage = High##10385
			..accept S-A-B-O-T-A-G-E##10405
		step
			goto Netherstorm,55.8,40.5
			.from  Ethereum Overlord##20459, Ethereum Archon##20458
			..get Prepared Ethereum Wrapping|q 10405/1
		step
			goto Netherstorm,56.8,38.7
			.' Click the Ethereum Transponder Zeta
			.talk Image of Commander Ameer##20482
			..turnin S-A-B-O-T-A-G-E##10405
			..accept Delivering the Message##10406
		step
			goto Netherstorm,56.3,42.9
			.' Escort the Ethereum Demolitionist while he sabotages the Ethereum Conduit
			.info If you have trouble with this, clear the path first before accepting the escort quest.
			.' Sabotage Ethereum Conduit|q 10406/1
		step
			goto Netherstorm,56.8,38.7
			.' Click the Ethereum Transponder Zeta
			.talk Image of Commander Ameer##20482
			..turnin Delivering the Message##10406
		step
			goto Netherstorm,57.1,37.6
			.from Ethereum Gladiator##20854
			.info He is fighting a Captured Protectorate Vanguard. Killing him will unlock an escort quest If he is not here you will have to wait for him to respawn.
			.talk Captured Protectorate Vanguard##20763
			..accept Escape from the Staging Grounds##10425
		step
			.' Escort the Captured Protectorate Vanguard to Protectorate Watch Post.
			.' Escort Captured Protectorate Vanguard|q 10425/1
		step
			goto Netherstorm,59.5,32.4
			.talk Commander Ameer##20448
			..turnin Escape from the Staging Grounds##10425
		step
			goto Netherstorm,59.3,32.0
			.talk Flesh Handler Viridius##20450
			..turnin Captain Tyralius##10422
		step
			goto Netherstorm,65.65,39.85
			.from Voidshrieker##18870, Unstable Voidwraith##18869
			.get 8 Fragment of Dimensius|q 10437/1
		step
			goto Netherstorm,59.5,39.9
			.' Use Navuud's Concoction in your bags|use Navuud's Concoction##29737
			.' While under the effects of the Electro-Shock Therapy buff do the following:
			.info This buff lasts for 60 minutes. High levels will need to use melee since the effect only works by random chance.
			..kill 30 Seeping Sludge Globule##20806|q 10411/1
		step
			goto Netherstorm,59.4,45.0
			.talk Agent Araxes##20551
			..accept The Flesh Lies...##10345
		step
			goto Netherstorm,61.0,45.6
			.'The entrance to the Access Shaft Zeon cave starts here. |goto 61.0,45.6,0.5 |noway |c
		step
			goto Netherstorm,59.8,42.6
			.' Go inside the cave to 59.8,42.6 
			.' Use the Protectorate Igniter in your bags on Withered Corpses|use Protectorate Igniter##29473
			.' Use 12 Withered Corpses Burned|q 10345/1
			.info If you get to close they will turn into fleshbeasts. There are more corpses inside the cave.
		step
			goto Netherstorm,60.9,41.5
			.talk Agent Ya-six##20552
			..accept Arconus the Insatiable##10353
		step
			goto Netherstorm,61.0,41.5
			.' Click Teleporter Power Pack
			..get Teleporter Power Pack|q 10270/1
		step
			goto Netherstorm,60.1,40.1
			..kill Arconus the Insatiable##20554|q 10353/1
		step
			goto Netherstorm,61.1,45.4 |n
			.' Leave the Access Shaft Zeon |goto 61.1,45.4,0.5 |noway |c
		step
			goto Netherstorm,59.4,45.0
			.talk Agent Araxes##20551
			..turnin The Flesh Lies...##10345
		step
			goto Netherstorm,59.2,32.6
			.talk Researcher Navuud##20449
			..turnin Electro-Shock Goodness!##10411
		step
			goto Netherstorm,59.5,32.4
			.talk Commander Ameer##20448
			..turnin Arconus the Insatiable##10353
		step
			goto Netherstorm,60.1,31.7
			.talk Professor Dabiri##20907
			..turnin Recipe for Destruction##10437
			..accept On Nethery Wings##10438
		step
			goto Netherstorm,60.2,31.7
			.talk Protectorate Nether Drake##20903
			.' Tell the dragon you are ready to fly.
			.' Use the Phase Disruptor in your bags while flying around the Void Conduit|use Phase Disruptor##29778
			.' Destroy the Void Conduit|q 10438/1
		step
			goto Netherstorm,60.1,31.7
			.talk Professor Dabiri##20907
			..turnin On Nethery Wings##10438
		step
			goto Netherstorm,71.1,39.0
			.' Click the Ethereum Transponder Zeta
			.' Attempt to contact Wind Trader Marid.
			.talk Image of Wind Trader Marid##20518
			..turnin A Not-So-Modest Proposal##10270
			..accept Getting Down to Business##10271
		step
			goto Netherstorm,71.8,38.7
			.' Use your Essence Gatherer on Nether Drakes and Nether Dragons around this area|use Essence Gatherer##69825
			.info Be careful not to agro them, use the Essence Gatherer in combat.
			.get 8 Nether Dragon Essence|q 10271/1
		step
			goto Netherstorm,70.9,38.8
			.talk Shrouded Figure##20154
			..turnin Getting Down to Business##10271
			..accept Formal Introductions##10281
		step
			goto Netherstorm,71.2,35.1
			.talk Tyri##20110
			..turnin Formal Introductions##10281
			..accept A Promising Start##10272
		step
			goto Netherstorm,72.0,38.4
			.' Click Nether Dragonkin Egg
			..get 15 Nether Dragonkin Egg|q 10272/1
		step
			goto Netherstorm,71.2,35.1
			.talk Tyri##20110
			..turnin A Promising Start##10272
			..accept Troublesome Distractions##10273
		step
			goto Netherstorm,58.3,31.7
			.talk Wind Trader Marid##20071
			.' Tell him, "Wind Trader Marid, I've returned with more information..."
			.kill Wind Trader Marid##20071|q 10273/1|at 60,30.9
		step
			goto Netherstorm,71.2,35.1
			.talk Tyri##20110
			..turnin Troublesome Distractions##10273
		step
			goto Netherstorm,29.1,40.5
			.' Use the Triangulation Device in your bags|use Triangulation Device##29018
			.' A red arrow will appear showing you where to go.
			.' Discover the second triangulation point|q 10275/1
		step
			goto Netherstorm,34.6,38.0
			.talk Wind Trader Tuluman##20112
			..turnin Triangulation Point Two##10275
		step
			goto Netherstorm,57.5,86.4
			.talk Custodian Dieworth##19488
			..accept The Sunfury Garrison##10222
			..accept Destroy Naberius!##10320
		step
			goto Netherstorm,58.3,86.4
			.talk Archmage Vargoth##19481
			..turnin Ar'kelos the Guardian##10176
			..accept Finding the Keymaster##10256
		step
			goto Netherstorm,62.8,78.9
			.kill Naberius##20483|q 10320/1
		step
			goto Netherstorm,51.9,70.7
			.from Apex##19940
			.info He is a giant with purple crystals on his back who patrols around this area. Some searching may be required.
			.collect 1 Apex's Crystal Focus##28786|q 10256
		step
			goto Netherstorm,57.5,86.4
			.talk Custodian Dieworth##19488
			..turnin Destroy Naberius!##10320
		step
			goto Netherstorm,58.4,86.3
			.' Use Apex's Crystal Focus next to Archmage Vargoth's Orb|use Apex's Crystal Focus##28786
			.' Discover the Keymaster's identity|q 10256/1
		step
			goto Netherstorm,58.3,86.4
			.talk Archmage Vargoth##19481
			..turnin Finding the Keymaster##10256
		step
			goto Netherstorm,46.7,56.9
			.talk Gahruj##20066
			..accept Drijya Needs Your Help##10311
		step
			goto Netherstorm,48.1,63.5
			.talk Drijya##20281
			..turnin Drijya Needs Your Help##10311
			..accept Sabotage the Warp-Gate!##10310
		step
			.' Escort Drijya while he sabotages the warp-gate.
			.' Burning Legion warp-gate sabotaged|q 10310/1
		step
			goto Netherstorm,46.7,56.9
			.talk Gahruj##20066
			..turnin Sabotage the Warp-Gate!##10310
		step
			goto Netherstorm,45.9,36.0
			.talk Image of Nexus-Prince Haramad##20084
			..accept An Audience with the Prince##10268
		step
			goto Netherstorm,32.7,65.0
			.talk Rocket-Chief Fuselage##19570
			..turnin Warn Area 52!##10237
			..accept Doctor Vomisa, Ph.T.##10247
		step
			goto Netherstorm,37.3,63.7
			.talk Doctor Vomisa, Ph.T.##19832
			..turnin Doctor Vomisa, Ph.T.##10247
			..accept You, Robot##10248
		step
			goto Netherstorm,37.4,63.7
			.' Use Scrap Reaver X6000 Controller|use Scrap Reaver X6000 Controller##28634
			.from Negatron##19851
			.' Complete the Scrap Reaver X6000 Test|q 10248/1
		step
			goto Netherstorm,37.3,63.8
			.talk Doctor Vomisa, Ph.T.##19832
			..turnin You, Robot##10248
			..accept Back to the Chief!##10249
		step
			goto Netherstorm,32.1,64.7
			.' Click the Wanted Poster
			.info It is a wooden poster just outside of the inn.
			..accept Wanted: Annihilator Servo!##10261
			..accept Breaking Down Netherock##10701
		step
			goto Netherstorm,32.0,64.2
			.talk Anchorite Karja##19467
			..accept Shutting Down Manaforge Ara##10323
			..accept Socrethar's Shadow##10407
			only if rep ('The Aldor') >= Neutral
		step
			goto Netherstorm,32.0,64.1
			.talk Spymaster Thalodien##19468
			..accept Shutting Down Manaforge Ara##10365
			.talk Magistrix Larynna##19469
			..accept A Defector##10202
			only if rep ('The Scryers') >= Neutral
		step
			goto Netherstorm,20.4,68.9
			.from Arcane Annihilator##18856
			.info He is a gold elite robot that patrols around Manaforge B'naar. Some searching may be required.
			..get Annihilator Servo|q 10261/1
		step
			goto Netherstorm,19.2,74.6
			.kill Netherock##20772|q 10701/1
			.info He is a giant with purple crystals on his back who spawns here and walks southeast along the cliff edge near Manaforge B'naar.
		step
			goto Netherstorm,32.7,65.0
			.talk Rocket-Chief Fuselage##19570
			..turnin Breaking Down Netherock##10701
		step
			goto Netherstorm,33.0,64.7
			.talk Papa Wheeler##19645
			..turnin Wanted: Annihilator Servo!##10261
		step
			goto Netherstorm,25.92,41.6
			.' Go inside of Manaforge Ara to [26,38.9]
			.from Overseer Azarad##20685
			.info He walks around inside Manaforge Ara and stops in at this small side room.
			.get Ara Access Crystal##29411|q 10323/2
			only if rep ('The Aldor') >= Neutral
		step
			goto Netherstorm,26.0,38.8
			.' Interact with the Ara Control Console
			.' Choose "<Begin emergency shutdown>"
			.' Kill the technicians as they come to try to save the Manaforge
			.info Only takes 2 minutes.
			.' Shut Down Manaforge Duro|goal Manaforge Duro Shut Down|q 10323/1
			only if rep ('The Aldor') >= Neutral
		step
			goto Netherstorm,37.1,27.8
			.from Forgemaster Morug##20800
			.get First Half of Socrethar's Stone|q 10407/1
		step
			goto Netherstorm,40.8,19.6
			.from Silroth##20801+
			.get Second Half of Socrethar's Stone|q 10407/2
		step
			goto Netherstorm,32.0,64.2
			.talk Anchorite Karja##19467
			..turnin Shutting Down Manaforge Ara##10323
			..turnin Socrethar's Shadow##10407
			..accept Ishanah's Help##10410
			only if rep ('The Aldor') >= Neutral
		step
			goto Netherstorm,44.0,36.0
			.talk Zuben Elgenubi##20067
			..accept In Search of Farahlite##10290
		step
			goto Netherstorm,34.6,38.0
			.talk Wind Trader Tuluman##20112
			..turnin Triangulation Point Two##10275
			..accept Full Triangle##10276
		step
			goto Netherstorm,44.5,21.6
			.from Farahlon Breaker##18886
			.info If you're careful you can avoid having to fight the Farahkib Shardlings
			..get 4 Raw Farahlite|q 10290/1
		step
			goto Netherstorm,53.5,21.5
			.from Culuthas##20138
			.get Ata'mal Crystal|q 10276/1
		step
			goto Netherstorm,60.1,31.7
			.talk Professor Dabiri##20907
			..turnin On Nethery Wings##10438
			..accept Dimensius the All-Devouring##10439
		step
			goto Netherstorm,60.6,32.1
			.talk Captain Saeed##20985
			.' Speak to Captain Saeed|q 10439/2
			.' Tell him, "Let's go!"
		step
			.' Follow Captain Saeed and his men to 60.8,39.3 |goto 60.8,39.3
			.talk Captain Saeed##20985
			.' Tell him, "I am ready"
			.kill Dimensius the All-Devouring##19554|q 10439/1
		step
			goto Netherstorm,60.1,31.7
			.talk Professor Dabiri##20907
			..turnin Dimensius the All-Devouring##10439
		step
			goto Netherstorm,56.8,38.7
			.' Click the Ethereum Transponder Zeta
			.talk Image of Commander Ameer##20482
			..accept Nexus-King Salhadaar##10408
		step
			goto Netherstorm,53.7,42.4
			.' Use Protectorate Disruptor next to each of the three huge force fields protecting Nexus-King Salhadaar.|use Protectorate Disruptor##29618
			..kill Nexus-King Salhadaar##20454|q 10408/1
		step
			goto Netherstorm,56.8,38.7
			.' Click the Ethereum Transponder Zeta
			.talk Image of Commander Ameer##20482
			..turnin Nexus-King Salhadaar##10408
		step
			goto Netherstorm,44.1,36.1
			.talk Zuben Elgenubi##20067
			..turnin In Search of Farahlite##10290
			..accept Hitting the Motherlode##10293
		step
			goto Netherstorm,45.9,36.0
			.talk Image of Nexus-Prince Haramad##20084
			..turnin Full Triangle##10276
			..accept Special Delivery to Shattrath City##10280
		step
			goto Netherstorm,45.8,36.3
			.talk Protectorate Advisor Rahim##22899
			..accept Seek Out Ameer##10969
		step
			goto Netherstorm,59.5,32.4
			.talk Commander Ameer##20448
			..turnin Seek Out Ameer##10969
			..accept A Mission of Mercy##10970
		step
			goto Netherstorm,49.7,17.5
			.from Cragskaar##20202
			.get Farahlite Core|q 10293/1
		step
			goto Netherstorm,44.1,36.0
			.talk Zuben Elgenubi##20067
			..turnin Hitting the Motherlode##10293
		step
			goto Shattrath City,54.1,44.9
			.talk A'dal##18481
			..turnin Special Delivery to Shattrath City##10280
		step
			goto Shattrath City,24.0,29.7
			.talk Ishanah##18538
			..turnin Ishanah's Help##10410
			only if rep ('The Aldor') >= Neutral
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Burning Crusade\\[68] Shadowmoon Valley",[[
author danaton
description This guide contain quest-chain (90 quests) for Shadowmoon Valley location.
startlevel 68
		step
			goto Shattrath City,64.7,70.7
			.talk Fantei##19678
			..accept Zorus the Judicator##11045
		step
			goto Shadowmoon Valley,39.50,53.73
			.talk Wing Commander Nuainn##21357
			..accept Besieged!##10562
		step
			goto Shadowmoon Valley,38.78,54.22
			.talk Gryphonrider Kieran##22042
			..accept The Sketh'lon Wreckage##10569
		step
			goto Shadowmoon Valley,37.61,55.45
			.talk Brubeck Stormfoot##18939
			fpath Wildhammer Stronghold, Shadowmoon Valley
		step
			goto Shadowmoon Valley,36.64,54.88
			.talk Zorus the Judicator##21774
			..turnin Zorus the Judicator##11045
			..accept A Ghost in the Machine##10642
		step
			goto Shadowmoon Valley,36.54,55.24
			.talk Gnomus##21777
			..accept Spleendid!##10661
		step
			goto Shadowmoon Valley,36.37,56.95
			.talk Earthmender Sophurus##21937
			..accept The Hand of Gul'dan##10680
		step
			goto Shadowmoon Valley,36.26,56.97
			.talk Thane Yoregar##21773
			..accept Put On Yer Kneepads...##10703
			..accept The Path of Conquest##10772
		step
			goto Shadowmoon Valley,37.06,58.27
			.talk Dreg Cloudsweeper##19352
			home Wildhammer Stronghold|q 10562 |future
		step
			goto Shadowmoon Valley,36.67,51.35
			.kill 10 Infernal Attacker##21419|q 10562/1
		step
			goto Shadowmoon Valley,29.83,38.44
			.from Felfire Diemetradon##21408
			.info You can find them around the green lava areas around this area.
			.get 8 Felfire Spleen##30819|q 10661/1
		step
			goto Shadowmoon Valley,36.25,44.18
			.' Click Ever-burning Ash
			.info They look like small piles of dirt with green smoke rising out of them on the ground around this area.
			.collect 15 Ever-Burning Ash##30716|q 10642/1 
		step
			goto Shadowmoon Valley,34.59,38.54
			.from Felboar##21878, Vilewing Chimaera##21879
			.info Only Felboars and Vilewing Chimaeras will count for the quest goal.
			.' Slay 20 Shadowmoon Valley Wildlife|q 10703/1
		step
			goto Shadowmoon Valley,42.19,45.07
			.talk Earthmender Torlok##21024
			..turnin The Hand of Gul'dan##10680
			..accept Enraged Spirits of Fire and Earth##10458
		step
			goto Shadowmoon Valley,47.38,44.84
			.use Totem of Spirits##30094
			.kill Enraged Earth Spirit##21050 |n
			.info Kill them near the totems you plant.
			.' Capture 8 Earthen Souls|q 10458/1
		step
			goto Shadowmoon Valley,47.38,44.84
			.use Totem of Spirits##30094
			.kill Enraged Fire Spirit##21061 |n
			.info Kill them near the totems you plant.
			.' Capture 8 Fiery Souls|q 10458/2
		step
			goto Shadowmoon Valley,42.19,45.07
			.talk Earthmender Torlok##21024
			..turnin Enraged Spirits of Fire and Earth##10458
			..accept Enraged Spirits of Water##10480
		step
			goto Shadowmoon Valley,37.17,31.60
			.' Kill Dark Conclave enemies around this area
			.collect Sketh'lon Commander's Journal - Page 1##31260|q 10569/1
		step
			goto Shadowmoon Valley,36.4,33.5
			.' Kill Dark Conclave enemies around this area
			.collect Sketh'lon Commander's Journal - Page 2##31261|q 10569/2
		step
			goto Shadowmoon Valley,36.4,33.5
			.' Kill Dark Conclave enemies around this area
			.collect Sketh'lon Commander's Journal - Page 3##31262|q 10569/3
		step
			goto Shadowmoon Valley,50.17,23.74
			.use Totem of Spirits##30094
			.kill Enraged Water Spirit##21059 |n
			.info Kill them near the totems you plant.
			.' Capture 5 Watery Souls|q 10480/1
		step
			goto Shadowmoon Valley,36.28,56.98
			.talk Thane Yoregar##21773
			..turnin Put On Yer Kneepads...##10703
		step
			goto Shadowmoon Valley,36.54,55.24
			.talk Gnomus##21777
			..turnin Spleendid!##10661
			..accept The Second Course...##10677
		step
			goto Shadowmoon Valley,36.64,54.88
			.talk Zorus the Judicator##21774
			..turnin A Ghost in the Machine##10642
			..accept Harbingers of Shadowmoon##10643
		step
			goto Shadowmoon Valley,38.23,53.96
			.' Click Wanted Poster
			..accept Wanted: Uvuros, Scourge of Shadowmoon##10648
		step
			goto Shadowmoon Valley,38.78,54.22
			.talk Gryphonrider Kieran##22042
			..turnin The Sketh'lon Wreckage##10569
			..accept Find the Deserter##10759
		step
			goto Shadowmoon Valley,39.50,53.73
			.talk Wing Commander Nuainn##21357
			..turnin Besieged!##10562 |goto 
			..accept To Legion Hold##10563
		step
			goto Shadowmoon Valley,37.34,55.86
			.kill 12 Shadowmoon Harbinger##21795|q 10643/1
			.info Make sure to equip the Spectrecles.
			.info You can only see them when you have the Spectrecles equipped.
			.' You can get more Spectrecles from Zorus the Judicator|at 37.1,56.3
		step
			goto Shadowmoon Valley,36.62,54.87
			.talk Zorus the Judicator##21774
			..turnin Harbingers of Shadowmoon##10643
			..accept Teron Gorefiend - Lore and Legend##10644
		step
			goto Shadowmoon Valley,35.19,40.89
			.talk Parshah##22024
			..turnin Find the Deserter##10759
			..accept Asghar's Totem##10777
		step
			goto Shadowmoon Valley,23.58,36.92
			.use Box o' Tricks##30638
			.info Use it while standing next to the Legion Communication Device.
			.' Watch the dialogue
			.' Discover the Legion's Plans|q 10563/1
		step
			goto Shadowmoon Valley,39.68,29.40
			.from Asghar##22025
			.info He walks around this area.
			.get Sketh'lon War Totem##31169|q 10777/1
		step
			goto Shadowmoon Valley,48.9,24
			.from Greater Felfire Diemetradon##21462
			.get Overdeveloped Felfire Gizzard##30867|q 10677/1
		step
			goto Shadowmoon Valley,53.05,25.55
			.' Enter the cave.
			.kill Keeper of the Cistern##20795 |n
			.info She walks around this small area inside the cave.
			.' Keeper of the Cistern Spawn Position|goto 51.66,17.66 |q 10451 |future
			.info If done, manual skip this step.
		step
			goto Shadowmoon Valley,52.10,18.82
			.talk Earthmender Wilda##21027
			.info She drops down out of the bubble nearby after you kill the Keeper of the Cistern.
			..accept Escape from Coilskar Cistern##10451
		step
			.' Watch the dialogue.
			.info Follow Earthmender Wilda and protect her as she walks.
			.info You may need help with this.
			.goal Escort Earthmender Wilda to Safety|q 10451/1
		step
			goto Shadowmoon Valley,36.54,55.25
			.talk Gnomus##21777
			..turnin The Second Course...##10677
			..accept The Main Course!##10678
		step
			goto Shadowmoon Valley,39.50,53.74
			.talk Wing Commander Nuainn##21357
			..turnin To Legion Hold##10563 
			..accept Setting Up the Bomb##10572
		step
			goto Shadowmoon Valley,42.19,45.07
			.talk Earthmender Torlok##21024
			..turnin Enraged Spirits of Water##10480
			..turnin Escape from Coilskar Cistern##10451
			..accept Enraged Spirits of Air##10481
		step
			goto Shadowmoon Valley,35.19,40.89
			.talk Parshah##22024
			..turnin Asghar's Totem##10777
			..accept The Rod of Lianthe##10778
		step
			goto Shadowmoon Valley,26.57,42.3
			.collect Fel Reaver Power Core##30628|q 10572/1
			.info Underwater.
		step
			goto Shadowmoon Valley,22.24,35.54
			.collect Fel Reaver Armor Plating##30631|q 10572/2
		step
			goto Shadowmoon Valley,39.50,53.73
			.talk Wing Commander Nuainn##21357
			..turnin Setting Up the Bomb##10572
			..accept Blast the Infernals!##10564
		step
			goto Shadowmoon Valley,22.64,39.91
			.use Fel Bomb##30614
			.goal Destroy the Legion Hold Infernals|q 10564/1
		step
			goto Shadowmoon Valley,39.50,53.73
			.talk Wing Commander Nuainn##21357
			..turnin Blast the Infernals!##10564
			..accept The Deathforge##10573
		step
			goto Shadowmoon Valley,40.45,41.29
			.talk Stormer Ewan Wildwing##21471
			..turnin The Deathforge##10573
			..accept Minions of the Shadow Council##10582
		step
			goto Shadowmoon Valley,39.25,36.20
			.kill 10 Deathforge Guardian##20878|q 10582/1
			.kill 5 Deathforge Summoner##20872|q 10582/2
			.' You can find more inside the cave|at 40.16,38.18
		step
			goto Shadowmoon Valley,39.25,36.20
			.' Kill Deathforge enemies around this area.
			.collect 10 Mark of Sargeras##30809|q 10826 |future
			.' You can find more inside the cave|at 40.16,38.18
			only if rep ('The Aldor') >= Neutral
		step
			goto Shadowmoon Valley,40.45,41.29
			.talk Stormer Ewan Wildwing##21471
			..turnin Minions of the Shadow Council##10582
			..accept The Fate of Flanis##10583
			..accept The Summoning Chamber##10585
		step
			goto Shadowmoon Valley,40.16,38.16
			.' Enter the cave.
			.from Deathforge Tinkerer##19754, Deathforge Smith##19756
			.info Inside the cave.
			.get Elemental Displacer##30672|q 10585/2 |goto 37.37,41.68
		step
			goto Shadowmoon Valley,34.6,39.9
			.talk Flanis Swiftwing##21727
			.' Choose "Reclaim Flanis's pack."
			.collect Flanis Pack##30658|q 10583/1
		step
			goto Shadowmoon Valley,37.70,38.27
			.use Elemental Displacer##30672
			.info Use it on Summoner Skartax inside the cave.
			.kill Infernal Oversoul##21735|n
			.' End the Infernal Summoning Ritual|q 10585/1
		step
			goto Shadowmoon Valley,40.45,41.29
			.talk Stormer Ewan Wildwing##21471
			..turnin The Fate of Flanis##10583
			..turnin The Summoning Chamber##10585
			..accept Bring Down the Warbringer!##10586
		step
			goto Shadowmoon Valley,38.90,46.78
			.kill Warbringer Razuun##21287|q 10586/1
			.info Inside the cave.
		step
			goto Shadowmoon Valley,38.90,46.78
			.kill Warbringer Razuun##21287|n
			.info Inside the cave.
			.collect Razuun's Orders##30689|q 10586/2
		step
			goto Shadowmoon Valley,39.50,53.73
			.talk Wing Commander Nuainn##21357
			..turnin Bring Down the Warbringer!##10586
			..accept Gaining Access##10589
		step
			goto Shadowmoon Valley,23.45,33.33
			.from Mo'arg Weaponsmith##19755
			.get Legion Teleporter Control##30695|q 10589/1
		step
			goto Shadowmoon Valley,23.13,35.10
			.kill Overseer Ripsaw##21499|n
			.info He walks around this area.
			..accept Illidari-Bane Shard##10621|use Illidari-Bane Shard##30756
		step
			goto Shadowmoon Valley,36.82,54.89
			.talk Ordinn Thunderfist##19370
			..turnin Illidari-Bane Shard##10621
			..accept Capture the Weapons##10626
		step
			goto Shadowmoon Valley,39.50,53.73
			.talk Wing Commander Nuainn##21357
			..turnin Gaining Access##10589
			..accept Invasion Point: Cataclysm##10766
		step
			goto Shadowmoon Valley,23.31,38.05
			.from Morgroron##21500
			.info He looks like a winged demon with 4 legs who walks around this area.
			.info You may need help with this.
			.get Morgroron's Glaive##30785|q 10626/2
		step
			goto Shadowmoon Valley,22.30,35.94
			.from Makazradon##21501
			.info He looks like a winged demon with 4 legs who walks around this area.
			.info You may need help with this.
			.get Makazradon's Glaive##30786|q 10626/1
		step
			goto Shadowmoon Valley,40.81,22.26
			.talk Plexi##21790
			..turnin Invasion Point: Cataclysm##10766
			..accept The Art of Fel Reaver Maintenance##10606
		step
			goto Shadowmoon Valley,39.39,19.56
			.from Doctor Gutrick##21778
			.get 1 The Doctor's Key##30712|q 10606
		step
			goto Shadowmoon Valley,39.38,19.48
			.' Click The Doctor's Strongbox.
			.collect The Art of Fel Reaver Maintenance##30713|q 10606/1
		step
			goto Shadowmoon Valley,40.81,22.26
			.talk Plexi##21790
			..turnin The Art of Fel Reaver Maintenance##10606
			..accept The Fel and the Furious##10612
		step
			goto Shadowmoon Valley,40.73,21.67
			.' Click Fel Reaver Control Console
			.' Control a Fel Reaver Sentinel|havebuff 133015|q 10612
		step
			goto Shadowmoon Valley,36.01,22.48
			.kill Deathforged Infernal##21316|n
			.info Use the abilities on your action bar.
			.info You can find them all along this path.
			.' Destroy 60 Deathforged Infernals|q 10612/1
		step
			.' Stop Controlling the Fel Reaver |nobuff 133015 |q 10612
			.info Right-click the Fel Reaver Controller buff near your minimap.
		step
			goto Shadowmoon Valley,40.81,22.26
			.talk Plexi##21790
			..turnin The Fel and the Furious##10612
			..accept News of Victory##10744
		step
			goto Shadowmoon Valley,36.82,54.89
			.talk Ordinn Thunderfist##19370
			..turnin Capture the Weapons##10626
		step
			goto Shadowmoon Valley,36.82,54.89
			.' Watch the dialogue.
			.talk Ordinn Thunderfist##19370
			..accept The Hermit Smith##10662
		step
			goto Shadowmoon Valley,35.80,57.70
			.talk Kurdran Wildhammer##21330
			..turnin News of Victory##10744
		step
			goto Shadowmoon Valley,45.65,68.76
			.from Eclipsion Centurion##19792, Eclipsion Archmage##19796, Eclipsion Bloodwarder##19806
			.get Lianthe's Key##31316|q 10778/1
		step
			goto Shadowmoon Valley,47.54,71.69
			.' Click Lianthe's Strongbox.
			.info Inside the tent.
			.collect Rod of Lianthe##31317|q 10778/2
		step
			goto Shadowmoon Valley,46.84,68.76
			.' Kill Eclipsion enemies around this area.
			.collect 10 Sunfury Signets##30810|q 10824 |future
			only if rep('The Scryers')>=Neutral
		step
			goto Shadowmoon Valley,51.25,62.93
			.' Discover the Path of Conquest|q 10772/1
		step
			.use Wildhammer Flare Gun##31310
			.talk Wildhammer Gryphon Rider##22059
			..turnin The Path of Conquest##10772
			..accept Breaching the Path##10773
		step
			goto Shadowmoon Valley,52.11,63.12
			.kill 20 Eclipsion Soldier##22016|q 10773/1
			.kill 10 Eclipsion Cavalier##22018|q 10773/2
			.kill 10 Son of Corok##19824|q 10773/3
			.info You may need help with this.
		step
			.use Wildhammer Flare Gun##31310
			.talk Wildhammer Gryphon Rider##22059
			..turnin Breaching the Path##10773
			..accept Blood Elf + Giant = ???##10774
		step
			goto Shadowmoon Valley,52.94,69.62
			.kill Corok the Mighty##22011|q 10774/2
			.info You may need help with this.
		step
			goto Shadowmoon Valley,53.05,69.52
			.from Chancellor Bloodleaf##22012
			.info You may need help with this.
			.get Illidan's Command##31271|q 10774/3
		step
			.use Wildhammer Flare Gun##31310
			.talk Wildhammer Gryphon Rider##22059
			..turnin Blood Elf + Giant = ???##10774
			..accept Tabards of the Illidari##10775
		step
			goto Shadowmoon Valley,52.24,65.40
			.from Eclipsion Soldier##22016, Eclipsion Spellbinder##22017, Eclipsion Cavalier##22018
			.get 10 Illidari Tabard##31278|q 10775/1
		step
			.use Wildhammer Flare Gun##31310
			.talk Wildhammer Gryphon Rider##22059
			..turnin Tabards of the Illidari##10775
			..accept Dissension Amongst the Ranks...##10776
		step
			goto Shadowmoon Valley,58.23,70.79
			.talk Ancient Shadowmoon Spirit##21797
			..turnin Teron Gorefiend - Lore and Legend##10644
			..accept Divination: Gorefiend's Armor##10634
			..accept Divination: Gorefiend's Cloak##10635
			..accept Divination: Gorefiend's Truncheon##10636
		step
			goto Shadowmoon Valley,59.68,70.17
			.use Totem of Spirits##30094
			.kill Enraged Air Spirit##21060|n
			.info kill them near the totems you plant.
			.' Capture 10 Air Souls|q 10481/1
			.' You can find more around|at 62.51,61.91
		step
			goto Shadowmoon Valley,69.80,85.93
			.kill Vhel'kur##21801|n
			.info Make sure to equip the Spectrecles.
			.info You can only see him when you have the Spectrecles equipped.
			.info He looks like a big red spirit dragon flying in the sky around this area.
			.info Stand here and wait for him to come to you.
			.collect Gorefiend's Armor##30797|q 10634/1
			.' You can get more Spectrecles from Zorus the Judicator|at 37.1,56.3
		step
			goto Shadowmoon Valley,58.23,70.79
			.talk Ancient Shadowmoon Spirit##21797
			..turnin Divination: Gorefiend's Armor##10634
		step
			goto Shadowmoon Valley,60.51,58.80
			.talk Mordenai##22113
			..accept Kindness##10804
		step
			goto Shadowmoon Valley,61.58,56.49
			.from Rocknail Flayer##21477, Rocknail Ripper##21478
			.collect Rocknail Flayer Giblets##31373|n
			.use Rocknail Flayer Giblets##31373
			.info You need 5 to create a Rocknail Flayer Carcass.
			.use Rocknail Flayer Carcass##31372
			.info Use them on the ground near Mature Netherwing Drakes.
			.info They look like blue dragons flying in the sky around this area.
			.' Feed 8 Mature Netherwing Drakes|q 10804/1
		step
			goto Shadowmoon Valley,60.51,58.80
			.talk Mordenai##22113
			..turnin Kindness##10804
			..accept Seek Out Neltharaku##10811
		step
			goto Shadowmoon Valley,65.34,60.89
			.talk Neltharaku##21657
			..turnin Seek Out Neltharaku##10811
			..accept Neltharaku's Tale##10814
		step
			goto Shadowmoon Valley,65.34,60.89
			.talk Neltharaku##21657
			.' Tell him "I am listening, dragon."
			.' Listen to the Tale of Neltharaku|q 10814/1
		step
			goto Shadowmoon Valley,65.34,60.89
			.talk Neltharaku##21657
			..turnin Neltharaku's Tale##10814
			..accept Infiltrating Dragonmaw Fortress##10836
		step
			goto Shadowmoon Valley,68.37,61.04
			.from Dragonmaw Wrangler##21717, Dragonmaw Subjugator##21718, Dragonmaw Drake-Rider##21719, Dragonmaw Shaman##21720
			.' Slay 15 Dragonmaw Orcs|q 10836/1
		step
			goto Shadowmoon Valley,65.34,60.89
			.talk Neltharaku##21657
			..turnin Infiltrating Dragonmaw Fortress##10836
			..accept To Netherwing Ledge!##10837
		step
			goto Shadowmoon Valley,76.01,87.16
			.' Collect Nethervine Crystal.
			.info They look like red glowing thorny plants on the ground around this area.
			.collect 12 Nethervine Crystal##31504|q 10837/1
		step
			goto Shadowmoon Valley,65.34,60.89
			.talk Neltharaku##21657
			..turnin To Netherwing Ledge!##10837
			..accept The Force of Neltharaku##10854
		step
			goto Shadowmoon Valley,68.7,61.4
			.use Enchanted Nethervine Crystal##31652
			.info Use it on Enslaved Netherwing Drakes around this area.
			.info Kill any enemies the drakes attack after you use the crystal on them.
			.info They must fly away in order to count for the quest goal.
			.' Free 5 Enslaved Netherwing Drakes|q 10854/1
		step
			goto Shadowmoon Valley,65.34,60.89
			.talk Neltharaku##21657
			..turnin The Force of Neltharaku##10854
			..accept Karynaku##10858
		step
			goto Shadowmoon Valley,69.86,61.44
			.talk Karynaku##22112
			..turnin Karynaku##10858 
			..accept Zuluhed the Whacked##10866
		step
			goto Shadowmoon Valley,71.06,61.55
			.kill Zuluhed the Whacked##11980|q 10866/2
			.info Pull him into a nearby building, so the archers can't shoot you.
			.info You may need help with this.
		step
			goto Shadowmoon Valley,71.06,61.55
			.from Zuluhed the Whacked##11980
			.get Zuluhed's Key##31664|q 10866
		step
			goto Shadowmoon Valley,69.88,61.29
			.' Click Zuluhed's Chains.
			.' Free Karynaku|q 10866/1
		step
			goto Shadowmoon Valley,69.86,61.44
			.talk Karynaku##22112
			..turnin Zuluhed the Whacked##10866
			..accept Ally of the Netherwing##10870
		step
			goto Shadowmoon Valley,59.31,58.70
			.talk Mordenai##22113
			..turnin Ally of the Netherwing##10870
			//..accept Blood Oath of the Netherwing##11012 |instant
			..accept In Service of the Illidari##11013
		step
			goto Shadowmoon Valley,56.32,57.80
			.talk Alieshor##21766
			fpath Sanctum of the Stars
			only if rep('The Scryers')>=Neutral
		step
			goto Shadowmoon Valley,42.19,45.06
			.talk Earthmender Torlok##21024
			..turnin Enraged Spirits of Air##10481
			..accept Oronok Torn-heart##10513
		step
			goto Shadowmoon Valley,35.19,40.89
			.talk Parshah##22024
			..turnin The Rod of Lianthe##10778
			..accept Sketh'lon Feathers##10780
		step
			goto Shadowmoon Valley,43.60,57.38
			.collect 8 Sketh'lon Feather##31324|q 10780/1
			.info They look like brown feathers on the ground around this area.
		step
			.use Wildhammer Flare Gun##31310
			.talk Wildhammer Gryphon Rider##22059
			.' Tell him "I need a new Enchanted Illidari Tabard."
			.collect Enchanted Illidari Tabard##31279|q 10776
		step
			goto Shadowmoon Valley,39.71,69.68
			.kill Crazed Colossus##19823|n
			.info You may need help with this.
			.' Slay 5 Crazed Colossus While in Disguise|q 10776/1
		step
			goto Shadowmoon Valley,36.27,56.98
			.talk Thane Yoregar##21773
			..turnin Dissension Amongst the Ranks...##10776
		step
			goto Shadowmoon Valley,35.19,40.89
			.talk Parshah##22024
			..turnin Sketh'lon Feathers##10780
			..accept Imbuing the Headpiece##10782
		step
			goto Shadowmoon Valley,43.03,44.87
			.use Unfinished Headpiece##31360
			.info Use it next to Gul'dan.
			.collect Energized Headpiece##31365|q 10782/1
		step
			goto Shadowmoon Valley,35.19,40.89
			.talk Parshah##22024
			..turnin Imbuing the Headpiece##10782
			..accept Thwart the Dark Conclave##10808
		step
			goto Shadowmoon Valley,40.72,60.15
			.kill Dark Conclave Ritualist##22138|n
			.info Kill all that are channeling a pink spell around this area.
			.use Staff of Parshah##31386
			.info Use it on the big blue blob nearby in the green lava.
			.' End the Dark Conclave Summoning Ritual|q 10808/1
		step
			goto Shadowmoon Valley,35.19,40.89
			.talk Parshah##22024
			..turnin Thwart the Dark Conclave##10808
		step
			goto Shadowmoon Valley,54.73,58.20
			.talk Varen the Reclaimer##21953
			..accept The Ashtongue Broken##10807
			only if rep('The Scryers')>=Neutral
		step
			goto Shadowmoon Valley,55.73,58.17
			.talk Larissa Sunstrike##21954
			..accept Karabor Training Grounds##10687
			only if rep('The Scryers')>=Neutral
		step
			goto Shadowmoon Valley,56.28,58.80
			.talk Battlemage Vyara##22211
			..accept Sunfury Signets##10824
			only if rep('The Scryers')>=Neutral
		step
			goto Shadowmoon Valley,56.28,58.80
			.talk Battlemage Vyara##22211
			..turnin Sunfury Signets##10824
			only if rep('The Scryers')>=Neutral
		step
			goto Shadowmoon Valley,56.25,59.60
			.talk Arcanist Thelis##21955
			..accept Tablets of Baa'ri##10683
			only if rep('The Scryers')>=Neutral
		step
			goto Shadowmoon Valley,56.32,59.84
			.talk Roldemar##21744
			home Sanctum of the Stars
			only if rep('The Scryers')>=Neutral
		step
			goto Shadowmoon Valley,68.51,52.68
			.' kill Demon Hunter enemies around this area
			.collect 8 Sunfury Glaive##30679|q 10687/1
			only if rep('The Scryers') >= Neutral
		step
			goto Shadowmoon Valley,63.81,49.17
			.kill Cleric of Karabor##21815|n
			.info Make sure to equip the Spectrecles.
			.info You can only see them when you have the Spectrecles equipped.
			.collect Gorefiend's Cloak##30799|q 10635/1
			.' You can get more Spectrecles from Zorus the Judicator|at 37.1,56.3
		step
			goto Shadowmoon Valley,56.10,44.36
			.from Felspine the Greater##21897
			.get Felspine's Hide##30851|q 10678/1
		step
			goto Shadowmoon Valley,55.10,48.98
			.from Uvuros##21102
			.info He walks around this area.
			.info You may need help with this.
			.get Uvuros' Fiery Mane##30807|q 10648/1
		step
			goto Shadowmoon Valley,57.49,35.62
			.kill Ashtongue Worker##21455|n
			.' Click Baar'ri Tablet Fragment##184870
			.info They look like green glowing broken stone pieces on the ground around this area.
			.collect 12 Baa'ri Tablet Fragment##30596|q 10683/1
			only if rep('The Scryers') >= Neutral
		step
			goto Shadowmoon Valley,57.49,35.62
			.kill 3 Ashtongue Handler##21803|q 10807/1
			only if rep('The Scryers') >= Neutral
		step
			goto Shadowmoon Valley,57.49,35.62
			.kill 4 Ashtongue Warrior##21454|q 10807/2
			only if rep('The Scryers') >= Neutral
		step
			goto Shadowmoon Valley,57.49,35.62
			.kill 6 Ashtongue Shaman##21453|q 10807/3
			only if rep('The Scryers') >= Neutral
		step
			goto Shadowmoon Valley,61.20,29.24
			.talk Exarch Onaala##21860
			..accept Karabor Training Grounds##10587
			only if rep ('The Aldor') >= Neutral
		step
			goto Shadowmoon Valley,61.18,29.15
			.talk Vindicator Aluumen##21822
			..accept The Ashtongue Tribe##10619
			only if rep ('The Aldor') >= Neutral
		step
			goto Shadowmoon Valley,61.12,28.24
			.talk Caretaker Aluuro##21746
			home Altar of Sha'tar|q 10568 |future
			only if rep ('The Aldor') >= Neutral
		step
			goto Shadowmoon Valley,62.58,28.38
			.talk Anchorite Ceyla##21402
			..accept Tablets of Baa'ri##10568
			only if rep ('The Aldor') >= Neutral
		step
			goto Shadowmoon Valley,62.27,29.78
			.talk Harbinger Saronen##22214
			..accept Marks of Sargeras##10826
			only if rep ('The Aldor') >= Neutral
		step
			goto Shadowmoon Valley,62.27,29.78
			.talk Harbinger Saronen##22214
			..turnin Marks of Sargeras##10826
			only if rep ('The Aldor') >= Neutral
		step
			goto Shadowmoon Valley,63.3,30.4
			.talk Maddix##19581
			fpath Altar of Sha'tar, Shadowmoon Valley
			only if rep ('The Aldor') >= Neutral
		step
			goto Shadowmoon Valley,57.49,35.62
			.kill Ashtongue Worker##21455|n
			.' Click Baar'ri Tablet Fragment.
			.info They look like green glowing broken stone pieces on the ground around this area.
			.collect 12 Baa'ri Tablet Fragment##30596|q 10568/1
			only if rep('The Aldor') >= Neutral
		step
			goto Shadowmoon Valley,57.49,35.62
			.kill 3 Ashtongue Handler##21803|q 10619/1
			.kill 4 Ashtongue Warrior##21454|q 10619/2
			.kill 6 Ashtongue Shaman##21453|q 10619/3
			only if rep('The Aldor') >= Neutral
		step
			goto Shadowmoon Valley,68.69,52.49
			.' Kill Demon Hunter enemies around this area.
			.collect 8 Sunfury Glaive##30679|q 10587/1
			only if rep ('The Aldor') >= Neutral
		step
			goto Shadowmoon Valley,62.58,28.38
			.talk Anchorite Ceyla##21402
			..turnin Tablets of Baa'ri##10568
			..accept Oronu the Elder##10571
			only if rep('The Aldor') >= Neutral
		step
			goto Shadowmoon Valley,61.20,29.24
			.talk Exarch Onaala##21860
			..turnin Karabor Training Grounds##10587
			..accept A Necessary Distraction##10637
			only if rep ('The Aldor') >= Neutral
		step
			goto Shadowmoon Valley,61.17,29.15
			.talk Vindicator Aluumen##21822
			..turnin The Ashtongue Tribe##10619
			..accept Reclaiming Holy Grounds##10816
			only if rep('The Aldor') >= Neutral
		step
			goto Shadowmoon Valley,57.19,32.87
			.from Oronu the Elder##21663
			.get Orders From Akama##30649|q 10571/1
			only if rep ('The Aldor') >= Neutral
		step
			goto Shadowmoon Valley,70.12,36.86
			.kill 8 Shadowmoon Slayer##22082|q 10816/1
			.kill 8 Shadowmoon Chosen##22084|q 10816/2
			.kill 4 Shadowmoon Darkweaver##22081|q 10816/3
			only if rep ('The Aldor') >= Neutral
		step
			goto Shadowmoon Valley,72.15,50.85
			.' Kill Sunfury enemies around this area.
			.info Only Sunfury Warlocks and Sunfury Summoners will drop the quest item.
			.collect Scroll of Demonic Unbanishing##30811|q 10637
			only if rep ('The Aldor') >= Neutral
		step
			goto Shadowmoon Valley,69.81,51.41
			.use Scroll of Demonic Unbanishing##30811
			.info Use it on Azaloth.
			.info If the enemies around him are alive, try to get to him without killing them, if you can.
			.info They will fight Azaloth for you once you free him.
			.' Free Azaloth|q 10637/1
			only if rep ('The Aldor') >= Neutral
		step
			goto Shadowmoon Valley,62.58,28.38
			.talk Anchorite Ceyla##21402
			..turnin Oronu the Elder##10571
			..accept The Ashtongue Corruptors##10574
			only if rep('The Aldor') >= Neutral
		step
			goto Shadowmoon Valley,61.20,29.24
			.talk Exarch Onaala##21860
			..turnin A Necessary Distraction##10637
			..accept Altruis##10640
			only if rep ('The Aldor') >= Neutral
		step
			goto Shadowmoon Valley,61.17,29.15
			.talk Vindicator Aluumen##21822
			..turnin Reclaiming Holy Grounds##10816
			only if rep('The Aldor') >= Neutral
		step
			goto Shadowmoon Valley,53.92,23.53
			.talk Oronok Torn-heart##21183
			..turnin Oronok Torn-heart##10513
			..accept I Was A Lot Of Things...##10514
		step
			goto Shadowmoon Valley,53.59,17.16
			.use Oronok's Boar Whistle##30462
			.info Use it next to Shadowmoon Tuber Mounds while boars are nearby.
			.info They look like carrots sticking out of the ground around this area.
			.info If a boar is nearby, it will run over and dig.
			.info Kill Ravenous Flayers to prevent them from killing the boars.
			.' Click Shadowmoon Tuber
			.info They appear after the boars dig.
			.collect 10 Shadowmoon Tuber##30356|q 10514/1
		step
			goto Shadowmoon Valley,49.88,23.01
			.kill Corrupt Water Totem##21420|n
			.kill Lakaan##21416|n
			.info You must destroy the totems before you can attack him.
			.collect Lakaan's Medallion Fragment##30693|q 10574/3
			only if rep ('The Aldor') >= Neutral
		step
			goto Shadowmoon Valley,53.92,23.53
			.talk Oronok Torn-heart##21183
			..turnin I Was A Lot Of Things...##10514
			..accept A Lesson Learned##10515
		step
			goto Shadowmoon Valley,56.60,16.97
			.' Click Ravenous Flayer Egg.
			.info They look like brown spiked eggs on the ground around this area.
			.' Destroy 10 Ravenous Flayer Eggs|q 10515/1
		step
			goto Shadowmoon Valley,53.92,23.53
			.talk Oronok Torn-heart##21183.
			..turnin A Lesson Learned##10515
			..accept The Cipher of Damnation - Truth and History##10519
		step
			goto Shadowmoon Valley,53.92,23.53
			.talk Oronok Torn-heart##21183
			.' Tell him "I am ready to hear your story, Oronok."
			.' Listen to the Cipher of Damnation - History and Truth|q 10519/1
		step
			goto Shadowmoon Valley,53.92,23.53
			.talk Oronok Torn-heart##21183
			..turnin The Cipher of Damnation - Truth and History##10519
			..accept Grom'tor, Son of Oronok##10521
			..accept Ar'tor, Son of Oronok##10527
			..accept Borak, Son of Oronok##10546
		step
			goto Shadowmoon Valley,44.54,23.65
			.talk Grom'tor, Son of Oronok##21291
			..turnin Grom'tor, Son of Oronok##10521
			..accept The Cipher of Damnation - Grom'tor's Charge##10522
		step
			goto Shadowmoon Valley,46.26,28.25
			.' Kill Coilskar enemies around this area.
			.collect Coilskar Chest Key##30426|n
			.' Click Coilskar Chest.
			.info They look like stone boxes on the ground around this area.
			.collect First Fragment of the Cipher of Damnation##30428|q 10522/1
			.' You can find more around|at 52.44,26.80
		step
			goto Shadowmoon Valley,44.54,23.65
			.talk Grom'tor, Son of Oronok##21291
			..turnin The Cipher of Damnation - Grom'tor's Charge##10522
			..accept The Cipher of Damnation - The First Fragment Recovered##10523
		step
			goto Shadowmoon Valley,53.92,23.53
			.talk Oronok Torn-heart##21183
			..turnin The Cipher of Damnation - The First Fragment Recovered##10523
		step
			goto Shadowmoon Valley,48.2,39.8
			.kill Corrupt Fire Totem##21703|n
			.kill Uylaru##21710|n
			.info You must destroy the totems before you can attack him.
			.collect Uylaru's Medallion Fragment##30694|q 10574/4
			only if rep ('The Aldor') >= Neutral
		step
			goto Shadowmoon Valley,51.3,52.9
			.kill Corrupt Earth Totem##21704|n
			.kill Eykenen##21709|n
			.info You must destroy the totems before you can attack him.
			.collect Eykenen's Medallion Fragment##30692|q 10574/1
			only if rep ('The Aldor') >= Neutral
		step
			goto Shadowmoon Valley,56.25,59.60
			.talk Arcanist Thelis##21955
			..turnin Tablets of Baa'ri##10683
			..accept Oronu the Elder##10684
			only if rep ('The Scryers') >= Neutral
		step
			goto Shadowmoon Valley,55.73,58.17
			.talk Larissa Sunstrike##21954
			..turnin Karabor Training Grounds##10687
			..accept A Necessary Distraction##10688
			only if rep('The Scryers') >= Neutral
		step
			goto Shadowmoon Valley,54.73,58.20
			.talk Varen the Reclaimer##21953
			..turnin The Ashtongue Broken##10807
			..accept The Great Retribution##10817
			only if rep ('The Scryers') >= Neutral
		step
			goto Shadowmoon Valley,72.15,50.85
			.'kill Sunfury enemies around this area
			.info Only Sunfury Warlocks and Sunfury Summoners will drop the quest item.
			.collect Scroll of Demonic Unbanishing##30811|q 10688
			only if rep ('The Scryers') >= Neutral
		step
			goto Shadowmoon Valley,69.81,51.41
			.use Scroll of Demonic Unbanishing##30811
			.info Use it on Azaloth.
			.info If the enemies around him are alive, try to get to him without killing them, if you can.
			.info They will fight Azaloth for you once you free him.
			.' Free Azaloth|q 10688/1
			only if rep ('The Scryers') >= Neutral
		step
			goto Shadowmoon Valley,70.12,36.86
			.kill 8 Shadowmoon Slayer##22082|q 10817/1
			.kill 8 Shadowmoon Chosen##22084|q 10817/2
			.kill 4 Shadowmoon Darkweaver##22081|q 10817/3
			only if rep ('The Scryers') >= Neutral
		step
			goto Shadowmoon Valley,57.19,32.87
			.from Oronu the Elder##21663
			.get Orders From Akama##30649|q 10684/1
			only if rep ('The Scryers') >= Neutral
		step
			goto Shadowmoon Valley,56.25,59.59
			.talk Arcanist Thelis##21955
			..turnin Oronu the Elder##10684
			..accept The Ashtongue Corruptors##10685
			only if rep ('The Scryers') >= Neutral
		step
			goto Shadowmoon Valley,55.73,58.17
			.talk Larissa Sunstrike##21954
			..turnin A Necessary Distraction##10688
			..accept Altruis##10689
			only if rep('The Scryers') >= Neutral
		step
			goto Shadowmoon Valley,54.73,58.20
			.talk Varen the Reclaimer##21953
			..turnin The Great Retribution##10817
			only if rep ('The Scryers') >= Neutral
		step
			goto Shadowmoon Valley,49.88,23.01
			.kill Corrupt Water Totem##21420 |n
			.kill Lakaan##21416 |n
			.info You must destroy the totems before you can attack him.
			.collect Lakaan's Medallion Fragment##30693|q 10685/3
			only if rep ('The Scryers') >= Neutral
		step
			goto Shadowmoon Valley,48.2,39.8
			.kill Corrupt Fire Totem##21703 |n
			.kill Uylaru##21710 |n
			.info You must destroy the totems before you can attack him.
			.collect Uylaru's Medallion Fragment##30694|q 10685/4
			only if rep ('The Scryers') >= Neutral
		step
			goto Shadowmoon Valley,51.3,52.9
			.kill Corrupt Earth Totem##21704 |n
			.kill Eykenen##21709 |n
			.info You must destroy the totems before you can attack him.
			.collect Eykenen's Medallion Fragment##30692|q 10685/1
			only if rep ('The Scryers') >= Neutral
		step
			goto Shadowmoon Valley,47.55,57.18
			.talk Borak, Son of Oronok##21293
			..turnin Borak, Son of Oronok##10546
			..accept Of Thistleheads and Eggs...##10547
		step
			goto Shadowmoon Valley,44.8,58.2
			.' Click Rotten Arakkoa Egg.
			.info They look like pink eggs with green fumes rising out of them in bird nests on the ground around this area.
			.info Some eggs will have no loot and will just disappear.
			.collect Rotten Arakkoa Egg##30500|q 10547/1
		step
			goto Shadowmoon Valley,58.23,70.79
			.talk Ancient Shadowmoon Spirit##21797
			..turnin Divination: Gorefiend's Cloak##10635
		step
			goto Shadowmoon Valley,57.1,73.3
			.kill Corrupt Air Totem##21705|n
			.kill Haalum##21711|n
			.info You must destroy the totems before you can attack him.
			.collect Haalum's Medallion Fragment##30691|q 10574/2|only if rep ('The Aldor') >= Neutral
			.collect Haalum's Medallion Fragment##30691|q 10685/2|only if rep ('The Scryers') >= Neutral
		step
			goto Shadowmoon Valley,66.21,85.66
			.talk Overlord Mor'ghor##23139
			..turnin In Service of the Illidari##11013
			..accept Enter the Taskmaster##11014
		step
			goto Shadowmoon Valley,66.12,86.35
			.talk Taskmaster Varkule Dragonbreath##23140
			..turnin Enter the Taskmaster##11014
		step
			goto Shadowmoon Valley,66.00,86.47
			.talk Yarzill the Merc##23141
			..accept Your Friend on the Inside##11019|instant
		step
			goto Shadowmoon Valley,74.48,86.42
			.kill Arvoar the Rapacious##23267|n
			.info He walks around this small area.
			.info You may need help with this.
			..accept A Job Unfinished...##11041|use Partially Digested Hand##32621
		step
			goto Shadowmoon Valley,70.22,84.34
			.kill Barash the Den Mother##23269|q 11041/2
			.info She walks around this small area.
			.info You may need help with this.
		step
			goto Shadowmoon Valley,72.83,86.04
			.kill 10 Overmine Flayer##23264|q 11041/1
		step
			goto Shadowmoon Valley,66.21,85.66
			.talk Overlord Mor'ghor##23139
			..turnin A Job Unfinished...##11041
		step
			goto Shadowmoon Valley,56.25,59.59
			.talk Arcanist Thelis##21955
			..turnin The Ashtongue Corruptors##10685
			..accept The Warden's Cage##10686
			only if rep ('The Scryers') >= Neutral
		step
			goto Shadowmoon Valley,62.58,28.38
			.talk Anchorite Ceyla##21402
			..turnin The Ashtongue Corruptors##10574
			..accept The Warden's Cage##10575
			only if rep ('The Aldor') >= Neutral
		step
			goto Shadowmoon Valley,57.33,49.58
			.talk Sanoru##21826
			..turnin The Warden's Cage##10686 |only if rep ('The Scryers') >= Neutral
			..turnin The Warden's Cage##10575 |only if rep ('The Aldor') >= Neutral
			..accept Proof of Allegiance##10622
		step
			goto Shadowmoon Valley,57.02,48.75
			.kill Zandras##21827|q 10622/1
			.info He walks around this area on top of the wall.
		step
			goto Shadowmoon Valley,57.33,49.58
			.talk Sanoru##21826
			..turnin Proof of Allegiance##10622
			..accept Akama##10628
		step
			goto Shadowmoon Valley,58.11,48.18
			.talk Akama##21700
			..turnin Akama##10628
		step
			goto Shadowmoon Valley,58.11,48.18
			.' Watch the dialogue,
			.talk Akama##21700
			..accept Seer Udalo##10705
		step
			goto Shattrath City,63.94,70.02
			.talk Tobias the Filth Gorger##21411
			..turnin Of Thistleheads and Eggs...##10547
			..accept The Bundle of Bloodthistle##10550
		step
			goto Terokkar Forest,77.57,38.72
			.talk David Wayne##21465
			..turnin The Hermit Smith##10662
			..accept Additional Materials##10664
		step
			goto Shadowmoon Valley,47.55,57.18
			.talk Borak, Son of Oronok##21293
			..turnin The Bundle of Bloodthistle##10550
			..accept To Catch A Thistlehead##10570
		step
			goto Shadowmoon Valley,49.01,57.52
			.use Bundle of Bloodthistle##30616
			.' Watch the dialogue.
			.info Stay back and wait for his elite bodyguard to leave.
			.from Envoy Icarius##21409
			.get Stormrage Missive##30617|q 10570/1
		step
			goto Shadowmoon Valley,47.55,57.18
			.talk Borak, Son of Oronok##21293
			..turnin To Catch A Thistlehead##10570
			..accept The Shadowmoon Shuffle##10576
		step
			goto Shadowmoon Valley,47.75,64.60
			.from Eclipsion Centurion##19795, Eclipsion Blood Knight##19795, Eclipsion Archmage##19796, Eclipsion Bloodwarder##19806
			.get 6 Eclipsion Armor##30640|q 10576/1
		step
			goto Shadowmoon Valley,47.55,57.18
			.talk Borak, Son of Oronok##21293
			..turnin The Shadowmoon Shuffle##10576
			..accept What Illidan Wants, Illidan Gets...##10577
		step
			goto Shadowmoon Valley,45.97,68.14
			.use Blood Elf Disguise##30639
			.info Don't use any movement-enhancing skills, or you will lose the disguise.
			.' Wear the Blood Elf Disguise|havebuff 37093|q 10577
			.' You can get another disguise from Borak|at 47.55,57.18
		step
			goto Shadowmoon Valley,46.45,71.93
			.talk Grand Commander Ruusk##20563
			.' Tell him "I bring word from Lord Illidan."
			.' Deliver Illidan's Message|q 10577/1
		step
			goto Shadowmoon Valley,47.55,57.18
			.talk Borak, Son of Oronok##21293
			..turnin What Illidan Wants, Illidan Gets...##10577
			..accept The Cipher of Damnation - Borak's Charge##10578
		step
			goto Shadowmoon Valley,63.30,57.62
			.from Ruul the Darkener##21315
			.info He looks like a blood elf that walks on the ground on a purple drake around this area.
			.info You may need help with this.
			.get Third Fragment of the Cipher of Damnation##30645|q 10578/1
		step
			goto Shadowmoon Valley,47.55,57.18
			.talk Borak, Son of Oronok##21293
			..turnin The Cipher of Damnation - Borak's Charge##10578
			..accept The Cipher of Damnation - The Third Fragment Recovered##10579
		step
			goto Shadowmoon Valley,38.25,53.95
			.talk Warcaller Beersnout##21775
			..turnin Wanted: Uvuros, Scourge of Shadowmoon##10648
		step
			goto Shadowmoon Valley,36.54,55.24
			.talk Gnomus##21777
			..turnin The Main Course!##10678
		step
			goto Shadowmoon Valley,29.62,50.39
			.talk Ar'tor, Son of Oronok##21292
			..turnin Ar'tor, Son of Oronok##10527
			..accept Demonic Crystal Prisons##10528
		step
			goto Shadowmoon Valley,28.01,47.58
			.from Painmistress Gabrissa##21309
			.get Crystalline Key##30442|q 10528/1
		step
			goto Shadowmoon Valley,29.62,50.39
			.talk Ar'tor, Son of Oronok##21292
			..turnin Demonic Crystal Prisons##10528
		step
			goto Shadowmoon Valley,29.54,50.55
			.talk Spirit of Ar'tor##21318
			..accept Lohn'goron, Bow of the Torn-heart##10537
		step
			goto Shadowmoon Valley,30.33,52.13
			.from Illidari Dreadbringer##19799, Illidari Painlasher##19800, Illidari Shocktrooper##19802, Illidari Shadowstalker##21337
			.get Lohn'goron, Bow of the Torn-Heart##30451|q 10537/1
			.info Drop-chance ~15%.
		step
			goto Shadowmoon Valley,29.54,50.55
			.talk Spirit of Ar'tor##21318
			..turnin Lohn'goron, Bow of the Torn-heart##10537
			..accept The Cipher of Damnation - Ar'tor's Charge##10540
		step
			goto Shadowmoon Valley,30.62,57.71
			.from Veneratus the Many##20427
			.info He looks like a big blue round alien that walksa round this area.
			.get Second Fragment of the Cipher of Damnation##30453|q 10540/1
		step
			goto Shadowmoon Valley,29.54,50.55
			.talk Spirit of Ar'tor##21318
			..turnin The Cipher of Damnation - Ar'tor's Charge##10540
			..accept The Cipher of Damnation - The Second Fragment Recovered##10541
		step
			goto Shadowmoon Valley,53.92,23.53
			.talk Oronok Torn-heart##21183
			..turnin The Cipher of Damnation - The Second Fragment Recovered##10541
			..turnin The Cipher of Damnation - The Third Fragment Recovered##10579
			..accept The Cipher of Damnation##10588
		step
			goto Shadowmoon Valley,43.03,44.87
			.use Cipher of Damnation##30657
			.' If done, manual skip this step|q 10588
		step
			goto Shadowmoon Valley,42.83,44.94
			.'Watch the dialogue.
			.talk Oronok Torn-heart##21183
			.info It may take a couple of minutes or so for him to show up.
			.info He flies in on a wind rider.
			.info This quest can be buggy, so if he doesn't show up, abandon the quest and try again.
			.' Tell him "I am ready, Oronok. Let us destroy Cyrukh and free the elements!"
			.kill Cyrukh the Firelord##21181|q 10588/1
			.info Follow Oronok Torn-heart.
		step
			goto Shadowmoon Valley,42.19,45.06
			.talk Earthmender Torlok##21024
			..turnin The Cipher of Damnation##10588
		step
			.from Ghostrider of Karabor##21784
			.info They ride on horses along this road in a group of 4.
			.info Make sure to equip the Spectrecles.
			.info You can only see them when you have the Spectrecles equipped.
			.info You may need help with this.
			.get Gorefiend's Truncheon##30800|q 10636/1
		step
			goto Shadowmoon Valley,58.23,70.79
			.talk Ancient Shadowmoon Spirit##21797
			..turnin Divination: Gorefiend's Truncheon##10636
			..accept Teron Gorefiend, I am...##10645
		step
			goto Shadowmoon Valley,58.2,70.8
			.' Watch the dialogue.
			.kill Karsius the Ancient Watcher##21877|q 10645/1
			.info He appears nearby.
			.info Use the abilities on your action bar.
		step
			goto Shadowmoon Valley,36.63,54.86
			.talk Zorus the Judicator##21774
			..turnin Teron Gorefiend, I am...##10645
		step
			goto Nagrand,27.34,43.09
			.talk Altruis the Sufferer##18417
			..turnin Altruis##10640 |only if rep ('The Aldor') >= Neutral
			..turnin Altruis##10689 |only if rep ('The Scryers') >= Neutral
			..accept Against the Legion##10641
			..accept Against the Illidari##10668
			..accept Against All Odds##10669
		step
			goto Zangarmarsh,16.22,40.67
			.use Imbued Silver Spear##30853
			.kill Xeleth##21894|q 10669/1
		step
			goto Netherstorm,32.68,64.41
			.talk Rocket-Chief Fuselage##19570
			..turnin A Mystifying Vision##11042
		step
			goto Netherstorm,39.61,20.44
			.from Wrath Priestess##18859
			.get Freshly Drawn Blood##30850|q 10641
		step
			goto Netherstorm,39.61,20.44
			.use Freshly Drawn Blood##30850
			.info It only last 1 minute, then it disappears, so use it quickly.
			.kill Avatar of Sathal##21925|q 10641/1
		step
			goto Shadowmoon Valley,28.29,49.94
			.kill Lothros##21928|q 10668/1
			.info He walks around this area.
		step
			goto Nagrand,27.34,43.09
			.talk Altruis the Sufferer##18417
			..turnin Against the Legion##10641
			..turnin Against the Illidari##10668
			..turnin Against All Odds##10669
			..accept Illidan's Pupil##10646
		step
			goto Nagrand,27.34,43.09
			.talk Altruis the Sufferer##18417
			.' Tell him _"Tell me about the demon hunter training grounds at the Ruins of Karabor."_
			.' Listen to Illidan's Pupil|q 10646/1
		step
			goto Nagrand,27.34,43.09
			.talk Altruis the Sufferer##18417
			..turnin Illidan's Pupil##10646
			..accept The Book of Fel Names##10649
		step
			.from Blackheart the Inciter##18667
			.info Inside the "Auchindoun: Shadow Labyrinth" dungeon.
			.info Use the "Auchindoun: Shadow Labyrinth" dungeon guide to accomplish this.
			.get Book of Fel Names##30808 |q 10649/1
		step
			goto Nagrand,27.34,43.09
			.talk Altruis the Sufferer##18417
			..turnin The Book of Fel Names##10649
			..accept Return to the Aldor##10650 |only if rep ('The Aldor') >= Neutral
			..accept Return to the Scryers##10691 |only if rep ('The Scryers') >= Neutral
		step
			goto Shadowmoon Valley,61.20,29.23
			.talk Exarch Onaala##21860
			..turnin Return to the Aldor##10650
			..accept Varedis Must Be Stopped##10651
			only if rep ('The Aldor') >= Neutral
		step
			goto Shadowmoon Valley,55.73,58.17
			.talk Larissa Sunstrike##21954
			..turnin Return to the Scryers##10691
			..accept Varedis Must Be Stopped##10692
			only if rep('The Scryers') >= Neutral
		step
			goto Shadowmoon Valley,72.37,48.38
			.kill Theras##21168|q 10651/3 |only if rep ('The Aldor') >= Neutral
			.kill Theras##21168|q 10692/3 |only if rep ('The Scryers') >= Neutral
			.info You may need help with this.
		step
			goto Shadowmoon Valley,69.01,52.36
			.kill Netharel##21164|q 10651/2 |only if rep ('The Aldor') >= Neutral
			.kill Netharel##21164|q 10692/2 |only if rep ('The Scryers') >= Neutral
			.info He walks around this area.
			.info You may need help with this.
		step
			goto Shadowmoon Valley,69.57,54.09
			.kill Alandien##21171 |q 10651/4 |only if rep ('The Aldor') >= Neutral
			.kill Alandien##21171 |q 10692/4 |only if rep ('The Scryers') >= Neutral
			.info You may need help with this.
		step
			goto Shadowmoon Valley,72.16,53.67
			.use Book of Fel Names##30854
			.info Use it on Vardis when he becomes a demon.
			.kill Varedis##21178 |q 10651/1 |only if rep ('The Aldor') >= Neutral
			.kill Varedis##21178 |q 10692/1 |only if rep ('The Scryers') >= Neutral
			.info Inside the building.
		step
			goto Shadowmoon Valley,61.20,29.23
			.talk Exarch Onaala##21860
			..turnin Varedis Must Be Stopped##10651
			only if rep ('The Aldor') >= Neutral
		step
			goto Shadowmoon Valley,55.73,58.17
			.talk Larissa Sunstrike##21954
			..turnin Varedis Must Be Stopped##10692
			only if rep('The Scryers') >= Neutral
		step
			.talk Udalo##21962
			.info Inside the "Tempest Keep: The Arcatraz" dungeon.
			.info Laying on the floor in the room right before you reach the last boss in the dungeon.
			.info Use the "Tempest Keep: The Arcatraz" dungeon guide to accomplish this.
			..turnin Seer Udalo##10705
			..accept A Mysterious Portent##10706
		step
			goto Shadowmoon Valley,58.11,48.18
			.talk Akama##21700
			.info Underground.
			..turnin A Mysterious Portent##10706
			..accept The Ata'mal Terrace##10707
		step
			goto Shadowmoon Valley,71.58,35.53
			.kill Shadowmoon Soulstealer##22061|n
			.info Kill all 3 of them nearby channeling a spell on this pedestal.
			.info You may need help with this.
			.' kill the enemies that attack in waves
			.kill Shadowlord Deathwail##22006 |n
			.collect Heart of Fury##31307|q 10707/1
		step
			goto Shadowmoon Valley,58.11,48.18
			.talk Akama##21700
			..turnin The Ata'mal Terrace##10707
		step
			goto Shadowmoon Valley,58.11,48.18
			.' Watch the dialogue.
			.talk Akama##21700
			.info You will only be able to accept one of these quests.
			..accept Akama's Promise##10708
			..accept Akama's Promise##11052
		step
			goto Shattrath City,54.04,44.69
			.talk A'dal##18481
			..turnin Akama's Promise##11052
		step
			goto Stormwind,61.2,70.7
			.talk Auctioneer Jaxon##15659
			.buy 5 Knothide Leather##21887|n
			.collect 20 Knothide Leather##21887 |q 10664 |future
			.info You can gather these yourself if you have Skinning, if you prefer.
			.info Use the "Knothide Leather" farming guide to accomplish this.
			only if rep ('The Aldor') >= Neutral
		step
			goto Stormwind,61.2,70.7
			.talk Auctioneer Jaxon##15659
			.buy 5 Knothide Leather##21887|n
			.collect 20 Knothide Leather##21887|q 10664
			.info You can gather these yourself if you have Skinning, if you prefer.
			.info Use the "Knothide Leather" farming guide to accomplish this.
			only if rep ('The Scryers') >= Neutral
		step
			.collect 4 Heavy Knothide Leather##23793|q 10664/2
			.info If you are a Leatherworker, you can create these yourself.
			.info If you are not a Leatherworker, ask a Leatherworker to help you to create these.
			.info Tell them you have the materials and will tip to get this done faster.
		step
			goto Netherstorm,44.99,36.53
			.talk Dealer Najeeb##20981
			.buy Adamantite Frame##23784|n
			.info He may not have this for sale if another player bought it recently.
			.collect Adamantite Frame##23784|q 10664/1
			.info You can also buy this from the Auction House.
		step
			goto Shattrath City,64.69,70.70
			.talk Fantei##19678
			.buy Demon Warding Totem##30823|n
			.collect Demon Warding Totem##30823|q 10664/3
		step
			goto Terokkar Forest,77.57,38.72
			.talk David Wayne##21465
			..turnin Additional Materials##10664
			..accept Fresh from the Mechanar##10665
			..accept The Lexicon Demonica##10666
		step
			.from Grandmaster Vorpil##18732
			.info Inside the "Auchindoun: Shadow Labyrinth" dungeon.
			.info He is the third boss in the dungeon.
			.info Use the "Auchindoun: Shadow Labyrinth" dungeon guide to accomplish this.
			.get Lexicon Demonica##30827|q 10666/1
		step
			.' Click Overcharged Manacell
			.info Inside the "Tempest Keep: The Mechanar" dungeon.
			.info They look like smaller pink glass boxes on the ground around the area where Mechano-Lord Capacitus walks around.
			.info He is a boss on the first floor inside the dungeon.
			.info Use the "Tempest Keep: The Mechanar" dungeon guide to accomplish this.
			.collect Overcharged Manacell##30824 |q 10665/1
		step
			goto Terokkar Forest,77.57,38.72
			.talk David Wayne##21465
			..turnin Fresh from the Mechanar##10665
			..turnin The Lexicon Demonica##10666
			..accept Tear of the Earthmother##10670
			..accept Underworld Loam##10667
		step
			.from Hydromancer Thespia##17797
			.info Inside the "Coilfang Resevoir: The Steamvault" dungeon.
			.info She is the first boss in the dungeon.
			.info Use the "Coilfang Resevoir: The Steamvault" dungeon guide to accomplish this.
			.get Vial of Underworld Loam##30828 |q 10667/1
		step
			.from Warbringer O'mrogg##16809
			.info Inside the "Hellfire Citadel: Shattered Halls" dungeon.
			.info He is the second boss in the dungeon.
			.info Use the "Hellfire Citadel: Shattered Halls" dungeon guide to accomplish this.
			.get Tear of the Earthmother##30829 |q 10670/1
		step
			goto Terokkar Forest,77.57,38.72
			.talk David Wayne##21465
			..turnin Tear of the Earthmother##10670
			..turnin Underworld Loam##10667
			..accept Bane of the Illidari##10676
		step
			goto Terokkar Forest,77.57,38.72
			.' Watch the dialogue
			.talk David Wayne##21465
			..turnin Bane of the Illidari##10676
			..accept Quenching the Blade##10679
		step
			goto Shadowmoon Valley,51.92,40.05
			.use Forged Illidari-Bane Blade##30875
			.' Click Forged Illidari-Bane Blade
			.info It appears nearby in the green lava.
			.collect Quenched Illidari-Bane Blade##30876|q 10679/1
		step
			goto Terokkar Forest,77.57,38.72
			.' Watch the dialogue
			.talk David Wayne##21465
			..turnin Quenching the Blade##10679
]])

ZygorGuidesViewer.AllianceInstalled=true