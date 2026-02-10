local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
--TRIAL if ZygorGuidesViewer.AllianceInstalled then return end
if UnitFactionGroup("player")~="Alliance" then return end

ZygorGuidesViewer:RegisterGuide("Ding80's Alliance Leveling Guides TBC solo\\Bloodmyst Isle",[[
	author PolarCookie
	next Ding80's Alliance Leveling Guides TBC solo\\Levels (25-29)
	startlevel 12

	step
		'Take the boat to Azuremyst Isle, it's the middle pier|goto Azuremyst Isle|noway|c
		only !Draenei
	step
		ding 11
	step
		goto 47,70.2
		.talk Admiral Odesyus##17240
		..accept A Small Start##9506
		only !Draenei
	step
		goto 58.6,66.4
		.' Click the Nautical Map sitting on a box under a green canopy
		.get Nautical Map##23739|q 9506/2
		only !Draenei
	step
		goto 59.6,67.6
		.' Click the Nautical Compass under the blue canopy with a green stripe on it
		.get Nautical Compass##23738|q 9506/1
		only !Draenei
	step
		goto 47,70.2
		.talk Admiral Odesyus##17240
		..turnin A Small Start##9506
		..accept I've Got a Plant##9530
		only !Draenei
	step
		goto 45.9,65.7
		.' Click a Hollowed Out Tree|tip They look like tall, skinny tree stumps around this area.
		.get Hollowed Out Tree|q 9530/1
		.' Click the small piles of purple leaves
		.get 5 Pile of Leaves|q 9530/2
		only !Draenei
	step
		goto 47,70.2
		.talk Admiral Odesyus##17240
		..turnin I've Got a Plant##9530
		..accept Tree's Company##9531
		only !Draenei
	step
		goto 49,51.1
		.talk Dulvi##17488
		..accept The Missing Fisherman##10428
		only !Draenei
	step
		goto 49.40,51.0
		.talk Cryptographer Aurren##17232
		..accept Learning the Language##9538
		.' Click the Stillpine Furbolg Language Primer in your bags|use Stillpine Furbolg Language Primer##23818
		.' Click the Totem of Akida next to Cryptographer Aurren|tip In the middle of town, next to the giant bone altar thing with the huge pink crystal in it.
		..turnin Learning the Language##9538
		..accept Totem of Coo##9539
		only !Draenei
	step
		'Follow the ghost furbolg as he runs up the hill northeast to 55.2,41.6|goto 55.2,41.6
		.' Click the Totem of Coo
		..turnin Totem of Coo##9539
		..accept Totem of Tikti##9540
		only !Draenei
	step
		'Follow the ghost furbolg to the edge of the cliff
		.' He will give you wings
		.' Jump off the cliff and glide to the ground to 64.5,39.8|goto 64.5,39.8|n
		.' Click the Totem of Tikti
		..turnin Totem of Tikti##9540
		..accept Totem of Yor##9541
		only !Draenei
	step
		'Follow the ghost furbolg to the river
		.' He will give you a swim speed buff
		.' Swim south to 63,67.9|goto 63,67.9|n
		.' Click the Totem of Yor underwater
		..turnin Totem of Yor##9541
		..accept Totem of Vark##9542
		only !Draenei
	step
		'Follow the ghost furbolg out of the water
		.' He will turn you into a ghost panther
		.' Follow him as he runs northwest to 28.1,62.4|goto 28.1,62.4|n
		.' Click the Totem of Vark
		..turnin Totem of Vark##9542
		..accept The Prophecy of Akida##9544
		only !Draenei
	step
		goto 28.5,66.4
		.from Bristlelimb Ursa##17185+, Bristlelimb Windcaller##17184+, Bristlelimb Furbolg##17183+
		.collect 8 Bristlelimb Key##23801|n
		.' Click the yellow cages
		.' Free 8 Stillpine Captives|goal 8 Stillpine Captive Freed|q 9544/1
		only !Draenei
	step
		goto 13.6,73.2
		.talk Magwin##17312
		..accept A Cry For Help##9528
		only !Draenei
	step
		goal Magwin Escorted to Safety|q 9528/1
		only !Draenei
	step
		goto 16.6,94.5
		.talk Cowlen##17311
		..turnin A Cry For Help##9528
		..turnin The Missing Fisherman##10428
		..accept All That Remains##9527
		only !Draenei
	step
		goto 14.8,92
		.from Raving Owlbeast##17188+, Aberrant Owlbeast##17187+, Deranged Owlbeast##17186+
		..get Remains of Cowlen's Family|q 9527/1
		only !Draenei
	step
		goto 16.6,94.5
		.talk Cowlen##17311
		..turnin All That Remains##9527
		only !Draenei
	step
		goto 18.5,84.3
		.' Use your Tree Disguise Kit next to the Naga Flag on the beach|use Tree Disguise Kit##23792
		.' Watch the conversation
		.' Uncover the Traitor|goal The Traitor Uncovered|q 9531/1
		only !Draenei
	step
		goto 47,70.2
		.talk Admiral Odesyus##17240
		..turnin Tree's Company##9531
		..accept Show Gnomercy##9537
		only !Draenei
	step
		goto 48.2,72.5
		.from Engineer "Spark" Overgrind##17243
		..get Traitor's Communication|q 9537/1
		only !Draenei
	step
		goto 47,70.2
		.talk Admiral Odesyus##17240
		..turnin Show Gnomercy##9537
		..accept Deliver Them From Evil...##9602
		only !Draenei
	step
		goto 49.41,51.0
		.talk Arugoo the Stillpine##17114
		..turnin The Prophecy of Akida##9544
		..accept Stillpine Hold##9559
		only !Draenei
	step
		goto 47.1,50.6
		.talk Exarch Menelaous##17116
		..turnin Deliver Them From Evil...##9602
		only !Draenei
	step
		goto 46.7,20.6
		.talk High Chief Stillpine##17440
		..turnin Stillpine Hold##9559
		only !Draenei
	step
		goto 44.8,23.9
		.talk Moordo##17442
		..accept Beasts of the Apocalypse!##9560
		only !Draenei
	step
		goto 44.7,23.6
		.talk Gurf##17441
		..accept Murlocs... Why Here? Why Now?##9562
		only !Draenei
	step
		goto 55.3,19.2
		.from Ravager Specimen##17199+
		..get 8 Ravager Hide|q 9560/1
		only !Draenei
	step
		ding 12
		only !Draenei
	step
		goto 33.8,25.7
		.from Siltfin Hunter##17192+, Siltfin Murloc##17190+, Siltfin Oracle##17191+
		.' Click the Stillpine Grain bags near the murloc huts
		.get 5 Stillpine Grain|q 9562/1
		.from Murgurgala##17475
		.' Get Gurf's Dignity|n
		.' Click Gurf's Dignity|use Gurf's Dignity##23850
		..accept Gurf's Dignity##9564
		only !Draenei
	step
		goto 44.7,23.6
		.talk Gurf##17441
		..turnin Murlocs... Why Here? Why Now?##9562
		..turnin Gurf's Dignity##9564
		only !Draenei
	step
		goto 44.8,23.9
		.talk Moordo##17442
		..turnin Beasts of the Apocalypse!##9560
		only !Draenei
	step
		goto 46.7,20.6
		.talk High Chief Stillpine##17440
		..accept Search Stillpine Hold##9565
		only !Draenei
	step
		goto 46.9,21.2
		.talk Stillpine the Younger##17445
		..accept Chieftain Oomooroo##9573
		only !Draenei
	step
		'Go upstairs to the right at the first intersection in the cave|goto 47.4,14.1
		.kill Chieftain Oomooroo##17448|q 9573/1
		only !Draenei
	step
		goto 47.4,16.0
		.kill 9 Crazed Wildkin|q 9573/2
		only !Draenei
	step
		goto 46.9,21.2
		.talk Stillpine the Younger##17445
		..turnin Chieftain Oomooroo##9573
		only !Draenei
	step
		goto 47,22.3
		.talk Kurz the Revelator##17443
		..accept The Kurken is Lurkin'##9570
		only !Draenei
	step
		'Go inside the big cave to 49.9,13.0|goto 49.9,13.0
		.from The Kurken##17447
		..get The Kurken's Hide|q 9570/1
		only !Draenei
	step
		goto 50.5,11.5
		.' Click the Blood Crystal|tip It's a huge red crystal on a little dirt island in the water.
		..turnin Search Stillpine Hold##9565
		..accept Blood Crystals##9566
		only !Draenei
	step
		'Go outside the cave to 47.0,22.3|goto 47.0,22.3
		.talk Kurz the Revelator##17443
		..turnin The Kurken is Lurkin'##9570
		..accept The Kurken's Hide##9571
		only !Draenei
	step
		'Go outside the cave to 46.7,20.6|goto 46.7,20.6
		.talk High Chief Stillpine##17440
		..turnin Blood Crystals##9566
		..accept Warn Your People##9622
		only !Draenei
	step
		goto 44.8,23.9
		.talk Moordo##17442
		..turnin The Kurken's Hide##9571
		only !Draenei
	step
		goto The Exodar,81.5,51.4
		.talk Torallius the Pack Handler##17584
		..accept Elekks of Serious Business##9625
		only Draenei
	step
		'Travel north to Bloodmyst Isle|goto Bloodmyst Isle
	step
		goto 63.4,88.8
		.talk Aonar##17599
		..accept A Favorite Treat##9624
	step
		goto 63,87.9
		.talk Vorkhan the Elekk Herder##17586
		..turnin Elekks of Serious Business##9625
		..accept Alien Predators##9634
	step
		'This is for your resurection spell, grind a bit
		ding 12
		only Draenei Paladin
	step
		goto 63,87.5
		.talk Kessel##17649
		..accept The Kessel Run##9663
	step
		goto Azuremyst Isle,46.7,20.6
		.talk High Chief Stillpine##17440
		..goal High Chief Stillpine Warned|q 9663/1
	step
		goto 48.4,49.6
		.talk Tullas##17483
		..accept Jol##10366
		only Draenei Paladin
	step
		goto 47.1,50.6
		.talk Exarch Menelaous##17116
		..goal Exarch Menelaous Warned|q 9663/2
		..accept Coming of Age##9623|only !Draenei
		..turnin Warn Your People##9622|only !Draenei
	step
		goto 47,70.2
		.talk Admiral Odesyus##17240
		..goal Admiral Odesyus Warned|q 9663/3
	step
		goto The Exodar,68.3,63.5
		.talk Stephanos##17555
		..fpath The Exodar
		only !Draenei
	step
		goto The Exodar,81.5,51.4
		.talk Torallius the Pack Handler##17584
		..turnin Coming of Age##9623
		..accept Elekks of Serious Business##9625
		only !Draenei
	step
		'Go west to the Exodar|goto The Exodar|noway|c
		only Draenei Paladin
	step
		goto The Exodar,38,82
		.talk Jol##17509
		..turnin Jol##10366
		..accept Redemption (1)##9598
		.' Click the Tome of Divinity in your bags to read it|use Tome of Divinity##23926
		..turnin Redemption (1)##9598
		..accept Redemption (2)##9600
		only Draenei Paladin
	step
		'Go outside to Azuremyst Isle|goto Azuremyst Isle|noway|c
		only Draenei Paladin
	step
		'Go northeast to Bloodmyst Isle|goto Bloodmyst Isle|noway|c
		only Draenei Paladin
	step
		goto Bloodmyst Isle,63,87.5
		.talk Kessel##17649
		..turnin The Kessel Run##9663
		..accept Declaration of Power##9666
	step
		goto 68.3,81
		.talk Princess Stillpine##17682
		..accept Saving Princess Stillpine##9667
	step
		goto 64.2,76.7
		'Kill Bristlelimb mobs in this area to make him appear
		.from High Chief Bristlelimb##17702
		..collect The High Chief's Key|c
	step
		goto Bloodmyst Isle,65.3,77.6
		.' Use your Symbol of Life in your bags on the Young Furbolg Shaman|use Symbol of Life##6866|tip He's a white furbolg laying on the ground.
		.' Resurrect the Young Furbolg Shaman|goal Young Furbolg Shaman Resurrected|q 9600/1
		only Draenei Paladin
	step
		goto 68.3,81
		'Click Princess Stillpines Cage|goal Princess Stillpine Saved|q 9667/1
	step
		goto 68.8,68.2
		.kill Lord Xiz##17701|q 9666/1
		'Use the Draenei Banner on Lord Xiz' corpse|use Draenei Banner##24084
		.goal Declaration of Power|q 9666/1
	step
		home Blood Watch|goto 55.8,59.8
	step
		goto 53.2,57.7
		.talk Morae##1434
		..accept Catch and Release##9629
	step
		goto 55.2,55.9
		.talk Stillpine Ambassador Frasaboo##18803
		..turnin Saving Princess Stillpine##9667
	step
		goto 56.4,56.8
		.talk Jessera of Mac'Aree##17663
		..accept Mac'Aree Mushroom Menagerie##9648
	step
		goto 52.6,53.2
		.talk Harbringer Mikolaas##17423
		..accept Learning from the Crystals##9581
	step
		goto 53.6,67
		'Click the Blood Mushroom
		.get Blood Mushroom|q 9648/2
	step
		goto 56,79.6
		'Either from a Stinkhorn Striker or a Aquatic Stinkhorn doodad
		.get Aquatic Stinkhorn|q 9648/1
	step
		goto 58.2,83.4
		'Use the Crystal Mining Pick at the Impact Site Crystal|use Crystal Mining Pick##23875
		.get Impact Site Crystal Sample|q 9581/1
	step
		goto 58.2,88.8
		.kill 10 Bloodmyst Hatchling|q 9634/1
		.get 10 Sand Pear|q 9624/1
	step
		goto 63,87.5
		.talk Kessel##17649
		..turnin Declaration of Power##9666
		..accept Report to Exarch Admetius##9668
	step
		goto 63,87.9
		.talk Vorkhan the Elekk Herder##17586
		..turnin Alien Predators##9634
	step
		goto 63.4,88.8
		.talk Aonar##17599
		..turnin A Favorite Treat##9624
	step
		goto 47.8,95.8
		'Use Murloc Tagger on Scouts|use Murloc Tagger##23995
		.goal 6 Blacksilt Scouts Tagged|q 9629/1
	step
		'Travel along the coast where Murlocs are, Cruelfin patrols between the camps.
		from Cruelfin <Rawgrlgrlgrlgrlgrrgle>##17496
		.collect Red Crystal Pendant##23870
		.use Red Crystal Pendant##23870
		..accept Cruelfin's Necklace##9576
	step
		'Hearth to Blood Watch|goto 55.8,59.8,2|use Hearthstone##6948|noway|c
	step
		goto 53.2,57.7
		.talk Morae##1434
		..turnin Cruelfin's Necklace##9576
		..turnin Catch and Release##9629
		..accept Victims of Corruption##9574
	step
		goto 52.7,53.2
		.talk Exarch Admetius##17658
		..turnin Report to Exarch Admetius##9668
		..accept What Argus Means to Me##9693
	step
		goto 52.6,53.2
		.talk Harbringer Mikolaas##17423
		..turnin Learning from the Crystals##9581
		..accept The Missing Survey Team##9620
	step
		goto 55.4,55.3
		.talk Vindicator Boros##17684
		..turnin What Argus Means to Me##9693
		..accept Blood Watch##9694
	step
		ding 13
	step
		goto 55.1,58
		.talk Vindicator Aalesia##17433
		..accept Know Thine Enemy##9567
	step
		goto 46.4,73
		'Click the Fel Cone Fungus
		.get Fel Cone Fungus|q 9648/4
	step
		goto 36.5,71.2
		'Retrieve the Nazzivus Monument Glyph
		.get Nazzivus Monument Glyph|q 9567/1
	step
		goto 38.4,82
		.from Tzerak##17528|tip Patrols up and down the camp, or stays infront of the monument.
		..collect Tzerak's Armor Plate|sticky
		.use Tzerak's Armor Plate##23900
		..accept Signs of the Legion##9594
	step
		kill 8 Nazzivus Satyr|q 9594/1
		kill 8 Nazzivus Felsworn|q 9594/2
	step
		goto 49.3,74.3
		.from Corrupted Treant##17352+
		..get 6 Crystallized Bark|q 9574/1
	step
		goto 55.1,58
		.talk Vindicator Aalesia##17433
		..turnin Signs of the Legion##9594
		..turnin Know Thine Enemy##9567
		..accept Containing the Threat##9569
	step
		goto 53.2,57.7
		.talk Morae##1434
		..turnin Victims of Corruption##9574
	step
		goto 61.2,48.7
		.talk Draenei Cartographer##17600
		..turnin The Missing Survey Team##9620
		..accept Salvaging the Data##9628
	step
		goto 62.1,49.5
		'Click the Ruinous Polyspore
		.get Ruinous Polyspore|q 9648/3
	step
		from Wrathscale mobs
		.get Survey Data Crystal|q 9628/1
	step
		goto 52.6,53.2
		.talk Harbringer Mikolaas##17423
		..turnin Salvaging the Data##9628
		..accept The Second Sample##9584
	step
		goto 56.4,56.8
		.talk Jessera of Mac'Aree##17663
		..turnin Mac'Aree Mushroom Menagerie##9648
	step
		goto 55.9,57
		.talk Tracker Lyceon##17642|tip Don't do The Bear Necessities, drop rate is terrible.
		..accept Constrictor Vines##9643
	step
		ding 14|tip Don't go to Exodar to train just yet.
	step
		goto 45.7,47.8
		'Use the Crystal Mining Pick at the Altered Bloodmyst Crystal|use Crystal Mining Pick##23876
		.get Altered Crystal Sample|q 9584/1
		.kill 10 Sunhawk Spy|q 9694/1
	step
		goto 55.4,55.3
		.talk Vindicator Boros##17684
		..turnin Blood Watch##9694
		..accept Intercepting the Message##9779
	step
		goto 45.7,47.8
		.from Sunhawk Spy##17604
		..get Sunfury Missive|q 9779/1
	step
		goto 55.4,55.3
		.talk Vindicator Boros##17684
		..turnin Intercepting the Message##9779
		..accept Translations...##9696
	step
		goto 54.4,54.5
		.talk Interrogator Elysia##17825
		..turnin Translations...##9696
		..accept Audience with the Prophet##9698
	step
		goto 52.6,53.2
		.talk Harbringer Mikolaas##17423
		..turnin The Second Sample##9584
		..accept The Final Sample##9585
	step
		goto 55.8,59.8
		.talk Caregiver Topher Loaal##17553
		..accept Beds, Bandages, and Beyond##9603
		only Draenei
	step
		goto 57.7,53.9
		.talk Laando##17554
		..turnin Beds, Bandages, and Beyond##9603
		..accept On the Wings of a Hippogryph##9604
		only Draenei
	step
		'Fly to the Exodar|goto The Exodar
	step
		goto 57,50.1
		.talk Nurguni##16768
		..turnin On the Wings of a Hippogryph##9604
		..accept Hippogryph Master Stephanos##9605
		only Draenei
	step
		goto 32.9,54.5
		.talk Prophet Velen##17468
		..turnin Audience with the Prophet##9698
		..accept Truth or Fiction##9699
	step
		goto The Exodar,38,82
		.talk Jol##17509
		..turnin Redemption (2)##9600
		only Draenei Paladin
	step
		goto 68.3,63.5
		.talk Stephanos##17555
		..turnin Hippogryph Master Stephanos##9605
		..accept Return to Topher Loaal##9606
		only Draenei
	step
		'Fly to Blood Watch|goto Bloodmyst Isle
	step
		goto 55.4,55.3
		.talk Vindicator Boros##17684
		..turnin Truth or Fiction##9699
		..accept I Shoot Magic Into the Darkness##9700
	step
		goto 55.3,59.1
		.talk Wanted Poster
		..accept WANTED:Deathclaw##9646
	step
		goto 55.8,59.8
		.talk Caregiver Topher Loaal##17553
		..turnin Return to Topher Loaal##9606
		only Draenei
	step
		goto 56.3,54.2
		.talk Prospector Nachlan##18804
		..accept Explorers' League, Is That Something for Gnomes?##10063
	step
		goto 53.8,18.6
		.goal Sun Portal Site Confirmed|q 9700/1
		.kill 5 Void Anomoly|q 9700/2
	step
		goto 45.1,32.9
		.from Mutated Constrictor##17344+
		..get 6 Thorny Constrictor Vines|q 9643/1
	step
		ding 15
	step
		goto 41.9,29.5
		.kill Zevrax|q 9569/1
		.kill 5 Axxarien Shadowstalker|q 9569/2
		.kill 5 Axxarien Hellcaller|q 9569/3
		.'Click Corrupted Crystals
		.get 5 Corrupted Crystal|q 9569/4
		.'Mine the big red crystal close to Zevrax|use Crystal Mining Pick##23877
		..get Axxarien Crystal Sample|q 9585/1
	step
		goto 42.1,21.2
		.talk Clopper Wizbank##17421
		..turnin Explorers' League, Is That Something for Gnomes?##10063
		..accept Pilfered Equipment##9548
	step
		goto 40.5,20.1
		.'Click Clopper's Equipment
		..get Clopper's Equipment|q 9548/1
	step
		goto 42.1,21.2
		.talk Clopper Wizbank##17421
		..turnin Pilfered Equipment##9548
		..accept Artifacts of the Blacksilt##9549
	step
		from Blacksilt Seer##17330+
		.get 3 Crude Murloc Idol|q 9549/1
		from Blacksilt Shorestriker##17328+, Blacksilt Warrior##17329+
		.get 6 Crude Murloc Knife|q 9549/2
	step
		goto 42.1,21.2
		.talk Clopper Wizbank##17421
		..turnin Artifacts of the Blacksilt##9549
		.use Weathered Treasure Map##23837
		..accept A Map to Where?##9550
	step
		goto 37.2,29.9
		.from Deathclaw##17661
		..get Deathclaw's Paw|q 9646/1
	step
		'Hearth to Blood Watch|goto 55.8,59.8,2|use Hearthstone##6948|noway|c
	step
		goto 53.2,57.7
		.talk Morae##17434
		..accept Searching for Galaen##9578
	step
		goto 55.1,58
		.talk Vindicator Aalesia##17433
		..turnin Containing the Threat##9569
	step
		goto 55.9,57
		.talk Tracker Lyceon##17642
		..turnin Constrictor Vines##9643
		..accept Culling the Flutterers##9647
	step
		goto 56.4,56.8
		.talk Jessera of Mac'Aree##17663
		..accept Ysera's Tears##9649
	step
		goto 55.4,55.3
		.talk Vindicator Boros##17684
		..turnin I Shoot Magic Into the Darkness##9700
		.talk Vindicator Kuros##17843
		..accept The Cryo-Core##9703
	step
		goto 55.4,55.3
		.talk Messenger Hermesius##17703|tip He Patrols around the middle.
		..accept Urgent Delivery##9671|instant
	step
		goto 55.2,59.2
		.'Check the mailbox
		..collect A Letter from the Admiral##24132|sticky 
		.'Read the letter|use A Letter from the Admiral##24132
		..accept The Bloodcurse Legacy##9672
	step
		goto 52.6,53.2
		.talk Harbringer Mikolaas##17423
		..turnin The Final Sample##9585
		..turnin WANTED:Deathclaw##9646
	step
		ding 16
	step
		goto 52.6,53.2
		.talk Harbringer Mikolaas##17423
		..accept Talk to the Hand##10064
	step
		goto 53.2,57
		.talk Achelus##17676
		..accept The Missing Expedition##9669
	step
		goto 61.2,41.9
		.talk Battered Ancient Book
		..turnin A Map to Where?##9550
		..accept Deciphering the Book##9557
	step
		goto 54.7,53.9
		.talk Anchorite Paetheus##17424
		..turnin Deciphering the Book##9557
		..accept Nolkai's Words##9561
	step
		goto 37.5,61.2
		'Kill some Royal Blue Flutterers if you travel past them.
		.talk Galaen's Corpes##17508
		..turnin Searching for Galaen##9578
		..accept Galaen's Fate##9579
	step
		goto 37.5,61.3
		.'Click Galaen's Journal
		..accept Galaen's Journal - The Fate of Vindicator Saruan##9706
	step
		from Sunhawk Reclaimer##17606+
		.get 12 Medical Supplies|q 9703/1
		.get Galaen's Amulet|q 9579/1
	step
		goto 55.4,55.3
		.talk Vindicator Kuros##17843
		..turnin The Cryo-Core##9703
		..turnin Galaen's Journal - The Fate of Vindicator Saruan##9706
		..accept Matis the Cruel##9711
		.talk Vindicator Aesom##17844
		..accept Don't Drink the Water##9748
	step
		goto 53.2,57.7
		.talk Morae##17434
		..turnin Galaen's Fate##9579
	step
		goto 43.6,62.2
		.kill 10 Royal Blue Flutterers|q 9647/1
		.' Kill while traveling northwest at 31.3,42.7
	step
		goto 30.3,45.9
		.talk Scout Jorli##17927
		..turnin Talk to the Hand##10064
		..accept Cutting a Path##10065
	step
		goto 30.2,45.9
		.talk Scout Loryi##17926
		..accept Critters of the Void##9741
	step
		goto 30.7,46.8
		.talk Vindicator Corin##17986
		..accept Oh, the Tangled Webs They Weave##10066
		..accept Fouled Water Spirits##10067
	step
		goto 30.3,58.4
		.kill 10 Enraged Ravager##17527+|q 10065/1
		.kill 8 Mutated Tangler##17346+|q 10066/1
	step
		ding 17
	step
		goto 30.7,46.8
		.talk Vindicator Corin##17986
		..turnin Oh, the Tangled Webs They Weave##10066
	step
		goto 30.3,45.9
		.talk Scout Jorli##17927
		..turnin Cutting a Path##10065
	step
		goto 24.9,34.4
		.talk Researcher Cornelius##17686
		..accept They're Alive! Maybe...##9670
	step
		goto 18.2,37.9
		.kill Zarakh##17683|q 9669/3
		.kill 8 Myst Leecher##17523+|q 9669/1
		.kill 8 Myst Spinner##17522+|q 9669/2
		'Rescue Expedition Researchers from the Webs|goal 5 Expedition Researcher Freed|q 9670/1
	step
		goto 24.9,34.4
		.talk Researcher Cornelius##17686
		..turnin They're Alive! Maybe...##9670
	step
		goto 30,36.6
		.kill 6 Fouled Water Spirit##17358+|q 10067/1
	step
		goto 34.4,33.7
		.'Use the Water Sample Flask|use Water Sample Flask##24318
		..get Bloodmyst Water Sample|q 9748/1
	step
		'Hearth to Blood Watch|goto 55.8,59.8,2|use Hearthstone##6948|noway|c
	step
		goto 53.2,57
		.talk Achelus##17676
		..turnin The Missing Expedition##9669
	step
		goto 55.9,57
		.talk Tracker Lyceon##17642
		..turnin Culling the Flutterers##9647
	step
		goto 55.6,55.4
		.talk Vindicator Aesom##17844
		..turnin Don't Drink the Water##9748
		..accept Limits of Physical Exhaustion##9746
	step
		goto 30.7,46.8
		.talk Vindicator Corin##17986
		..turnin Fouled Water Spirits##10067
	step
		goto 23.8,59.4
		.kill 10 Sunhawk Pyromancer##17608+|q 9746/1
		.kill 10 Sunhawk Defender##17607+|q 9746/2
	step
		ding 18
	step
		goto 55.6,55.4
		.talk Vindicator Aesom##17844
		..turnin Limits of Physical Exhaustion##9746
		..accept The Sun Gate##9740
		..accept What We Know...##9753|only Draenei
	step
		goto 52.7,53.2
		.talk Exarch Admetius##17658
		..turnin What We Know...##9753
		..accept What We Don't Know...##9756
		only Draenei
	step
		goto 54.4,54.1
		'Talk to the Captured Sunhawk Agent
		.goal Sunhawk Information Recovered|q 9756/1
		only Draenei
	step
		goto 52.7,53.2
		.talk Exarch Admetius##17658
		..turnin What We Don't Know...##9756
		..accept Vindicator's Rest##9760
		only Draenei
	step
		'Look for a partner to fight Matis the Cruel with
		goto 30.7,46.8
		.talk Vindicator Corin##17986
		..turnin Vindicator's Rest##9760
		..accept Clearing the Way##9761
		only Draenei
	step
		'Look for a partner to fight Matis the Cruel with
		goto 18.7,64
		.kill 12 Void Critter##17887+|q 9741/1
		.goal The Sun Gate Destroyed|q 9740/1
	step
		goto 18.5,45.6
		.kill 8 Sunhawk Agent##17610+|q 9761/1
		.kill 8 Sunhawk Saboteur##17609+|q 9761/2
		only Draenei
	step
		'Travel on the road looking for Matis the Cruel
		'Summon aid with the Flare gun while in combat|use Flare Gun##24278
		.goal Matis the Cruel Captured|q 9711/1
	step
		goto 30.7,46.8
		.talk Vindicator Corin##17986
		..turnin Clearing the Way##9761
		only Draenei
	step
		'WARNING: ESCORT
		goto 30.8,46.6
		.talk Demolitionist Legoso##17982
		..accept Ending Their World##9759|noautoaccept
		only Draenei
	step
		goal Vector Coil Destroyed and Sironas Slain|q 9759/1
		only Draenei
	step
		goto 52.7,53.2
		.talk Exarch Admetius##17658
		..turnin Ending Their World##9759
		only Draenei
	step
		goto 55.4,55.3
		.talk Vindicator Kuros##17843
		..turnin Matis the Cruel##9711
	step
		goto 55.6,55.4
		.talk Vindicator Aesom##17844
		..turnin Critters of the Void##9741
		..turnin The Sun Gate##9740
	step
		goto 61.3,49.6
		.talk Mound of Dirt
		..turnin Nolkai's Words##9561
	step
		goto 75.1,34.4
		.talk Prince Toreth##17674
		..accept Restoring Sanctity##9687
	step
		goto 57,34.4
		.'Pick up Dragon Bones lying on the ground
		..get 8 Dragon Bone|q 9687/1
	step
		goto 75.1,34.4
		.talk Prince Toreth##17674
		..turnin Restoring Sanctity##9687
		..accept Into the Dream##9688
	step
		goto 79.2,22.7
		.talk Captain Edward Hanes##17712
		..turnin The Bloodcurse Legacy##9672
		..accept The Bloodcursed Naga##9674
	step
		goto 81,16.2
		.kill 10 Bloodcursed Naga|q 9674/1
	step
		goto 79.2,22.7
		.talk Captain Edward Hanes##17712
		..turnin The Bloodcursed Naga##9674
		..accept The Hopeless Ones..##9682
	step
		goto 83.1,20.9
		.from Bloodcursed Voyager##17714+
		..get 4 Bloodcursed Soul|q 9682/1
	step
		goto 79.2,22.7
		.talk Captain Edward Hanes##17712
		..turnin The Hopeless Ones..##9682
		..accept Ending the Bloodcurse##9683
	step
		goto 86.1,54.6
		.'Destroy the Statue of Queen Azshara
		..kill Atoph the Bloodcursed|q 9683/1
	step
		ding 19
	step
		goto 79.2,22.7
		.talk Captain Edward Hanes##17712
		..turnin Ending the Bloodcurse##9683
	step
		'All over the island
		.kill 5 Veridian Whelp##17588+|q 9688/1
		.kill 5 Veridian Broodling##17589+|q 9688/2
		.'Click Ysera's Tear
		..get 2 Ysera's Tear|q 9649/1
	step
		goto 75.1,34.4
		.talk Prince Toreth##17674
		..turnin Into the Dream##9688
		..accept Razormaw##9689
	step
		goto 72.8,20.8
		.'Click the Ever-burning Pyre to summon Razormaw
		..kill Razormaw##17592|q 9689/1
	step
		goto 75.1,34.4
		.talk Prince Toreth##17674
		..turnin Razormaw##9689
	step
		'Hearth to Blood Watch|goto 55.8,59.8,2|use Hearthstone##6948|noway|c
	step
		goto 56.4,56.8
		.talk Jessera of Mac'Aree##17663
		..turnin Ysera's Tears##9649
	step
		'Fly to the Exodar|goto The Exodar
	step
		'Buy 5 flask of oil from the Auction Hous
		.buy 5 Flask of Oil
	step
		'Make/find a group for Deadmines and get teleported|goto The Deadmines|noway|c
	step
		'Have the group share quests with you.
		.accept Collecting Memories##168
		.accept Oh Brother...##167
		.accept Underground Assault##2040
	step
		.from Foreman Thistlenettle##626
		..get Thistlenettle's Badge|q 167/1
		.from Skeletal Miner##623+, Undead Dynamiter##625+, Undead Excavator##624+
		..get 4 Miners' Union Card|q 168/1
	step
		from Sneed's Shredder##642
		.get Gnoam Sprecklesprocket|q 2040/1
		from Edwin VanCleef##639
		.collect An Unsent Letter|sticky
		.' Click the Unsent Letter|use An Unsent Letter##2874
		..accept The Unsent Letter##373
	step
		'Leave by the backdoor|goto Westfall|noway|c
	step
		'You need to be at least 12745/19300 xp at lvl 19 at this point, not including the Lighthouse quests 
		'Ask if you can buy Flask of oils from someone in your group, otherwise farm some Golems outside Deadmines
		.collect 5 Flask of Oil|q 103|future
	step
		goto 30,86
		.talk Captain Grayson##392
		..accept The Coastal Menace##104
		..accept Keeper of the Flame##103
		..turnin Keeper of the Flame##103
	step
		goto 34,84
		.from Old Murk-Eye##391
		.get Scale of Old Murk-Eye|q 104/1
	step
		goto 30,86
		.talk Captain Grayson##392
		..turnin The Coastal Menace##104
	step
		goto 56.3,47.5
		.talk Gryan Stoutmantle##234
		..accept The Defias Brotherhood##65
	step
		goto 56.6,52.6
		.talk Thor##523
		..fpath Sentinel Hill
	step
		'Travel east to Elwynn Forest|goto Elwynn Forest|noway|c
	step
		'Travel north to Stormwind City|goto Stormwind City|noway|c
	step
		goto 71,72.5
		.talk Dungar Longdrink##352
		..fpath Stormwind City
	step
		goto 70.3,40.8
		.talk Wilder Thistlenettle##656
		..turnin Collecting Memories##168
		..turnin Oh Brother...##167
	step
		goto 62.6,34.1
		.talk Shoni the Shilent##6579
		..turnin Underground Assault##2040
	step
		goto 57.7,47.9
		.talk Baros Alexston##1646
		..turnin The Unsent Letter##373
		..accept Bazil Thredd##389
	step
		goto 51.5,69.3
		.talk Warden Thelwater##1719
		..turnin Bazil Thredd##389
	step
		ding 20
	step
		'Go outside to Elwynn Forest|goto Elwynn Forest|noway|c	
	step
		goto 65.2,69.7
		.talk Theocritus##313
		..accept A Watchful Eye##94
	step
		'Go east to Redridge Mountains|goto Redridge Mountains|noway|c
	step
		goto 15.3,71.5
		.talk Guard Parker##464
		..accept Encroaching Gnolls##244
	step
		goto 30.7,60
		.talk Deputy Feldon##1070
		..turnin Encroaching Gnolls##244
		..accept Assessing the Threat##246
	step
		goto 30.6,59.4
		.talk Ariena Stormfeather##931
		..fpath Lakeshire
	step
		goto 33.5,49
		.talk Marshal Marris##382
		..accept Blackrock Menace##20
	step
		goto 32.1,48.6
		.talk Foreman Oslow##341
		..accept The Lost Tools##125
	step
		goto 31,47.3
		.talk Verner Osgood##415
		..accept The Price of Shoes##118
	step
		goto 29.3,53.6
		.talk Shawn##8965
		..accept Hilary's Necklace##3741
	step
		goto 30,44.5
		.talk Magistrate Solomon##344
		..accept Messenger to Stormwind (1)##120
	step
		goto 27.7,47.4
		.talk Dockmaster Baren##381
		..accept Selling Fish##127
		..accept Murloc Poachers##150
	step
		goto 26.6,44.3
		.talk Darcy##379
		..accept A Free Lunch##129
	step
		home Lakeshire
	step
		goto 26.5,45.3
		.talk Wiley the Black##266
		..turnin The Defias Brotherhood (1)##65
		..accept The Defias Brotherhood (2)##132
	step
		goto 22.7,43.8
		.talk Chef Breanna##343
		..accept Redridge Goulash##92
	step
		'Fly to Stormwind City|goto Stormwind City|noway|c
	step
		goto 69.2,82.7
		.talk General Marcus Jonathan##466
		..turnin Messenger to Stormwind (1)##120
		..accept Messenger to Stormwind (2)##121
	step
		goto Elwynn Forest,41.7,65.5
		.talk Smith Argus##514
		..turnin The Price of Shoes##118
		..accept Return to Verner##119
	step
		'Head back to Stormwind City|goto Stormwind City|noway|c
	step
		'Buy a Bronze Tube from the Auction House|buy 1 Bronze Tube|q 174/1
		'Also sold by <Engineering Supplies> vendors near Engineering trainers.
	step
		'Fly to Lakeshire|goto Redridge Mountains|noway|c
	step
		goto 31,47.3
		.talk Verner Osgood##415
		..turnin Return to Verner##119
		..accept Underbelly Scales##122
		..accept A Baying of Gnolls##124
	step
		goto 30,44.5
		.talk Magistrate Solomon##344
		..turnin Messenger to Stormwind (2)##121
		..accept Messenger to Westfall (1)##143
	step
		goto 19.2,51.7
		.' Click the Glinting Mud|tip The Glinting Mud spawns in random places around this area, so some searching may be necessary.
		.get Hilary's Necklace|q 3741/1
	step
		goto 41.5,54.6
		.' Click the Sunken Chest
		.get Oslow's Toolbox|q 125/1
	step
		goto 40.82,49.11|tip Don't wait around for respawns, skip to the next step if there are no Murlocs around.
		.from Murloc Flesheater##422+, Murloc Shorestriker##1083+, Murloc Minor Tidecaller##548+
		.get 10 Spotted Sunfish|q 127/1
		.get 8 Murloc Fin##1468|q 150/1
	step
		goto 34.2,67.4
		.from Black Dragon Whelp##1221+
		.get 6 Underbelly Whelp Scale|q 122/1
		.from Great Goretusk##2296+|tip Skip this step if there's no Boars around, keep killing them as you met them in your travels.
		.get 5 Great Goretusk Snout|q 92/1
	step
		goto 15.62,64.16|tip Don't wait around for respawns, skip to the next step if no Gnolls around.
		.kill 10 Redridge Mongrel|q 246/1
		.kill 6 Redridge Poacher|q 246/2
	step
		goto 15.3,71.5
		.talk Guard Parker##464
		..turnin A Free Lunch##129
		..accept Visit the Herbalist##130
	step
		goto 19.3,73.2
		.from Tarantula##442+|tip Skip this step if there's no Spiders around, keep killing them as you met them in your travels.
		.get 5 Crisp Spider Meat|q 92/3
	step
		goto 26.8,80.2
		.kill 10 Redridge Mongrel|q 246/1
		.kill 6 Redridge Poacher|q 246/2
	step
		goto Redridge Mountains,48.2,73.3
		.from Murloc Flesheater##422+, Murloc Shorestriker##1083+, Murloc Minor Tidecaller##548+
		.get 10 Spotted Sunfish|q 127/1
		.get 8 Murloc Fin##1468|q 150/1
	step
		goto 55.5,74.7
		.from Dire Condor##428+|tip Skip this step if there's no Condors around, keep killing them as you met them in your travels.
		.get 5 Tough Condor Meat|q 92/2
	step
		goto 70.6,78.8
		.from Blackrock Grunt##440+, Blackrock Outrunner##485+
		.get 10 Battleworn Axe|q 20/1
	step
		'Finish collecting items for Redridge Gulash at this point before you return to Lakeshire
		.get 5 Great Goretusk Snout|q 92/1
		.get 5 Tough Condor Meat|q 92/2
		.get 5 Crisp Spider Meat|q 92/3
	step
		'Hearth to Lakeshire|goto Redridge Mountains,26.9,44.9,0.5|use Hearthstone##6948|noway|c
	step
		goto 21.9,46.3
		.talk Martie Jainrose##342
		..turnin Visit the Herbalist##130
		..accept Delivering Daffodils##131
	step
		goto 22.7,43.8
		.talk Chef Breanna##343
		..turnin Redridge Goulash##92
	step
		goto 26.6,44.3
		.talk Darcy##379
		..turnin Delivering Daffodils##131
	step
		goto 27.7,47.4
		.talk Dockmaster Baren##381
		..turnin Selling Fish##127
		..turnin Murloc Poachers##150
	step
		ding 21
	step
		goto 29.3,53.6
		.talk Hilary##8962
		..turnin Hilary's Necklace##3741
	step
		goto 31,47.3
		.talk Verner Osgood##415
		..turnin Underbelly Scales##122
	step
		goto 32.1,48.6
		.talk Foreman Oslow##341
		..turnin The Lost Tools##125
		..accept The Everstill Bridge##89
	step
		goto 33.5,49
		.talk Marshal Marris##382
		..turnin Blackrock Menace##20
	step
		goto 30.7,60
		.talk Deputy Feldon##1070
		..turnin Assessing the Threat##246
	step
		goto 38.86,32.07
		.kill 10 Redridge Brute|q 124/1
		.kill 8 Redridge Mystic|q 124/2
		.from Redridge Brute##426+, Redridge Mystic##430+
		.get 5 Iron Pike|q 89/1
		.get 5 Iron Rivet|q 89/2
		.' You can find more Gnolls at 22.75,37.49|n
	step
		goto 32.1,48.6
		.talk Foreman Oslow##341
		..turnin The Everstill Bridge##89
	step
		goto 31,47.3
		.talk Verner Osgood##415
		..turnin A Baying of Gnolls##124
	step
		'Go southwest to Duskwood|goto Duskwood|noway|c
	step
		goto 73.8,43.5
		.talk Chef Grual##272
		..accept Seasoned Wolf Kabobs##90
	step
		home Darkshire
	step
		goto 73.5,46.8
		.talk Commander Althea Ebonlocke##264
		..accept The Night Watch (1)##56
	step
		goto 75.3,48.7
		.talk Elaine Carevin##633
		..accept Deliveries to Sven##164
		..accept The Hermit##165
		..accept Raven Hill##163
	step
		goto 77.5,44.3
		.talk Felicia Maline##2409
		..fpath Darkshire
	step
		goto 79.8,48.1
		.talk Viktori Prism'Antras##276
		..accept Look To The Stars (1)##174
		..turnin Look To The Stars (1)##174
		..accept Look To The Stars (2)##175
	step
		goto Duskwood,75.8,45.3
		.talk Madame Eva##265
		..accept The Totem of Infliction##101
	step
		goto 45.1,67
		.talk Watcher Dodds##888
		..accept Eight-Legged Menaces##245
	step
		'Go outside to 18.2,56.6|goto 18.2,56.6
		.talk Jitters##288
		..turnin Raven Hill##163
		..accept Jitters' Growling Gut##5
	step
		'Travel north along the river towards Sven.
		goto 14.05,70.27|n
		.kill 15 Pygmy Venom Web Spider|q 245/1
		..get 5 Vial of Spider Venom|q 101/2
		..collect 6 Gooey Spider Leg|q 93/1|future
	step
		goto 7.8,34.2
		.talk Sven Yorgen##311
		..turnin Deliveries to Sven##164
		..accept Sven's Revenge##95
	step
		goto 7.7,33.2
		.talk Lars##893
		..accept Wolves at Our Heels##226
	step
		goto 28.1,31.5
		.talk Abercrombie##289
		..turnin The Hermit##165
		..accept Supplies from Darkshire##148
	step
		kill 12 Starving Dire Wolf|q 226/1
		kill 8 Rabid Dire Wolf|q 226/2
		get 10 Lean Wolf Flank|q 90/1
	step
		ding 22
	step
		goto 7.7,33.2
		.talk Lars##893
		..turnin Wolves at Our Heels##226
	step
		'Hearth to Darkshire|goto Duskwood,73.9,44.5,0.5|use Hearthstone##6948|noway|c
	step
		goto 73.8,43.5
		.talk Chef Grual##272
		..turnin Jitters' Growling Gut##5
		..accept Dusky Crab Cakes##93
		..turnin Dusky Crab Cakes##93
		..accept Return to Jitters##240
	step
		goto 75.8,45.3
		.talk Madame Eva##265
		..turnin Supplies from Darkshire##148
		..accept Ghost Hair Thread##149
		..accept The Legend of Stalvan (1)##66
	step
		goto 72.5,46.8
		.talk Clerk Daltry##267
		..turnin The Legend of Stalvan (1)##66
		..accept The Legend of Stalvan (2)##67
	step
		goto 81.9,59.2
		.talk Blind Mary##302
		..turnin Look To The Stars (2)##175
		..accept Look To The Stars (3)##177
		..turnin Ghost Hair Thread##149
		..accept Return the Comb##154
	step
		goto 79.3,70.3
		.kill 8 Skeletal Warrior|q 56/1
		.kill 6 Skeletal Mage|q 56/2
	step
		goto 80.9,71.6
		.from Insane Ghoul##511
		.get Mary's Looking Glass|q 177/1
	step
		goto 79.8,48.1
		.talk Viktori Prism'Antras##276
		..turnin Look To The Stars (3)##177
		..accept Look To The Stars (4)##181
	step
		goto 75.8,45.3
		.talk Madame Eva##265
		..turnin Return the Comb##154
		..accept Deliver the Thread##157
	step
		goto 73.5,46.8
		.talk Commander Althea Ebonlocke##264
		..turnin The Night Watch (1)##56
		..accept The Night Watch (2)##57
	step
		goto 45.1,67
		.talk Watcher Dodds##888
		..turnin Eight-Legged Menaces##245
	step
		goto 28.1,31.5
		.talk Abercrombie##289
		..turnin Deliver the Thread##157
		..accept Zombie Juice##158
	step
		'Go outside to 18.2,56.6|goto 18.2,56.6
		.talk Jitters##288
		..turnin Return to Jitters##240
	step
		'Head to Westfall|goto Westfall
	step
		goto Westfall,41.5,66.7
		.' Click the Old Footlocker|tip It's a small rectangular wooden box on the floor inside this house.
		..turnin The Legend of Stalvan (2)##67
		..accept The Legend of Stalvan (3)##68
	step
		goto Westfall,56.3,47.5
		.talk Gryan Stoutmantle##234
		..turnin The Defias Brotherhood (2)##132
		..accept The Defias Brotherhood (3)##135
		..turnin Messenger to Westfall (1)##143
		..accept Messenger to Westfall (2)##144
	step
		'Fly to Stormwind|goto Stormwind City|noway|c
	step
		goto 69.3,71.3
		buy 1 Stormwind Seasoning Herbs|q 90/2
	step
		goto Stormwind City,78.3,70.7
		.talk Master Mathias Shaw##332
		..turnin The Defias Brotherhood (3)##135
	step
		goto 67,33.85,5|sticky
		'Enter the Deeprun Tram|goto Deeprun Tram|noway|c
	step
		'Ride the tram to Ironforge|goto Ironforge|noway|c
	step
		goto 55.5,47.7
		.talk Gryth Thurden##1573
		..fpath Ironforge
	step
		'Go southwest to Dun Morogh|goto Dun Morogh|noway|c
	step
		'Go east to Loch Modan|goto Loch Modan|noway|c
	step
		goto Loch Modan,33.9,51
		.talk Thorgrum Borrelson##1572
		..fpath Thelsamar
	step
		goto Loch Modan,34.8,47.1
		.talk Mountaineer Kadrell##1340
		..accept Report to Mountaineer Rockgar##468
	step
		goto 25.4,10.4
		.talk Mountaineer Rockgar##1342
		..turnin Report to Mountaineer Rockgar##468
		..accept The Algaz Gauntlet##455
	step
		'Go into the tunnel to 49.7,79.5|goto Wetlands,49.7,79.5
		.kill 8 Dragonmaw Scout|q 455/2
		.kill 6 Dragonmaw Grunt|q 455/3
	step
		'Follow the path through the tunnels to 53.9,70.3|goto 53.9,70.3|n
		.' Traverse Dun Algaz|goal Traverse Dun Algaz|q 455/1
	step
		'You need to be at least lvl 22 with 21700 xp gained before entering Menethil Harbor, grind long the way.
		goto 49.9,39.4
		.talk Einar Stonegrip##2093
		..accept Daily Delivery##469
	step
		'You need to be at least lvl 22 with 21700 xp gained before entering Menethil Harbor, grind long the way.
		goto 11.5,52.2
		.talk Tarrel Rockweaver##2096
		..accept In Search of The Excavation Team (1)##305
	step
		goto 8.5,55.7
		.talk James Halloran##2094
		..turnin Daily Delivery##469
		..accept Young Crocolisk Skins##484
	step
		goto 8.3,58.6
		.talk Karl Boran##1242
		..accept Claws from the Deep##279
	step
		goto 9.5,59.7
		.talk Shellei Brondir##1571
		..fpath Menethil Harbor
	step
		goto 10.9,59.6
		.talk First Mate Fitzsimmons##1239
		..accept The Third Fleet##288
		..accept The Greenwarden##463
	step
		goto 10.8,60.8
		.talk Innkeeper Helbrek##1464
		..buy Flagon of Mead|goal Flagon of Mead|q 288/1
	step
		home Menethil Harbor
	step
		goto 10.9,59.6
		.talk First Mate Fitzsimmons##1239
		..turnin The Third Fleet##288
		..accept The Cursed Crew##289
	step
		goto 11.8,58
		.talk Sida##2111
		..accept Digging Through the Ooze##470
	step
		goto 10.1,56.9
		.talk Valstag Ironjaw##2086
		..turnin The Algaz Gauntlet##455
	step
		ding 23
	step
		goto 10.1,56.9
		.talk Valstag Ironjaw##2086
		..accept Report to Captain Stoutfist##473
	step
		goto 9.9,57.5
		.talk Captain Stoutfist##2104
		..turnin Report to Captain Stoutfist##473
		..accept War Banners##464
	step
		ding 23
	step
		goto 18.1,39.8
		.from Gobbler##1259
		.get Gobbler's Head|q 279/2
	step
		goto 13.8,41.9
		.kill 12 Bluegill Murloc|q 279/1
	step
		'Kill crocolisks while traveling.
		.from Young Wetlands Crocolisk##1417+
		.get 4 Young Crocolisk Skin|q 484/1|n
		goto Wetlands,38.1,51.1
		.talk Ormer Ironbraid##1078
		..accept Ormer's Revenge (1)##294
	step
		goto 38.8,52.3
		.talk Merrin Rockweaver##1076
		..turnin In Search of The Excavation Team (1)##305
		..accept In Search of The Excavation Team (2)##306
	step
		goto 53.27,36
		.from Young Wetlands Crocolisk##1417+
		.get 4 Young Crocolisk Skin|q 484/1
	step
		goto 56.3,40.5
		.talk Rethiel the Greenwarden##1244
		..turnin The Greenwarden##463
		..accept Tramping Paws##276
	step
		goto 63.9,61.8
		.kill 15 Mosshide Gnoll|q 276/1
		.kill 10 Mosshide Mongrel|q 276/2
	step
		goto 56.3,40.5
		.talk Rethiel the Greenwarden##1244
		..turnin Tramping Paws##276
		..accept Fire Taboo##277
	step
		goto 44.3,25.5
		.from Black Ooze##1032+, Crimson Ooze##1031+
		.get Sida's Bag|q 470/1
	step
		goto 46.4,35.3
		.from Mosshide Trapper##1011+, Mosshide Brute##1012+, Mosshide Fenrunner##1010+, Mosshide Mistweaver##1009+|tip Mosshide Gnolls and Mosshide Mongrels will not drop the Crude Flint.
		.get 9 Crude Flint|q 277/1
	step
		goto 29.1,44.8
		.kill 10 Mottled Raptor|q 294/1
		.kill 10 Mottled Screecher|q 294/2
	step
		goto 38.1,51.1
		.talk Ormer Ironbraid##1078
		..turnin Ormer's Revenge (1)##294
		..accept Ormer's Revenge (2)##295
	step
		goto 42.9,41.2
		.from Dragonmaw Raider##1034+
		.get 8 Dragonmaw War Banner|q 464/1
	step
		goto 56.3,40.5
		.talk Rethiel the Greenwarden##1244
		..turnin Fire Taboo##277
		..accept Blisters on The Land##275
	step
		ding 24
	step
		'Hearth to Menethil Harbor|goto Wetlands,10.1,56.7,9|use Hearthstone##6948|noway|c
	step
		goto 8.3,58.6
		.talk Karl Boran##1242
		..turnin Claws from the Deep##279
		..accept Reclaiming Goods##281
	step
		goto 8.5,55.7
		.talk James Halloran##2094
		..turnin Young Crocolisk Skins##484
		..accept Apprentice's Duties##471
	step
		goto 9.9,57.5
		.talk Captain Stoutfist##2104
		..turnin War Banners##464
		..accept Nek'rosh's Gambit##465
	step
		goto 11.5,52.2
		.talk Tarrel Rockweaver##2096
		..turnin In Search of The Excavation Team (2)##306
	step
		goto 11.8,58
		.talk Sida##2111
		..turnin Digging Through the Ooze##470
	step
		'Fly to Lakeshire|goto Redridge Mountains,30.4,59.0,0.5|noway|c
	step
		goto 31.5,57.9
		.talk Guard Howe##903
		..accept Blackrock Bounty##128
	step
		goto 33.5,49
		.talk Marshal Marris##382
		..accept Tharil'zun##19
		..accept Shadow Magic##115
	step
		goto 31,47.3
		.talk Verner Osgood##415
		..accept Howling in the Hills##126
	step
		goto 30,44.4
		.talk Bailiff Conacher##900
		..accept Solomon's Law##91
	step
		goto 30,44.5
		.talk Magistrate Solomon##344
		..turnin Messenger to Westfall (2)##144
		..accept Messenger to Darkshire (1)##145
	step
		goto 29.6,46.2
		.talk Wanted: Gath'Ilzogg
		..accept Gath'Ilzogg##169
	step
		goto 26.8,46.4
		.talk Wanted: Lieutenant Fangore
		..accept Wanted: Lieutenant Fangore##180
	step
		home Lakeshire
	step
		goto 27.7,21.4
		.from Yowler##518
		..get Yowler's Paw|q 126/1
	step
		'Head left when you enter the cave
		'WARNING: ESCORT!
		goto 28.4,12.6
		.talk Corporal Keeshan##349
		..accept Missing In Action##219|noautoaccept
	step
		' IMPORTANT NOTE: Pull the mobs AHEAD of him before he reaches them! Even though he's tough, he charges into fights and can quickly get many adds. Outside, when he says that he's taking a rest, quickly take the opportunity to single pull continuously from the two big camps. If you do not, then he'll walk into the two big camps and pull every mob and you'll be doomed. If you do fail, you can go back in the cave and get the quest again. SUPER WARNING: SERVER WILL DESPAWN THE ESCORTEE IF YOU TRAVEL TO FAR AWAY FROM HIM, MAKE SURE HE'S ALWAYS IN YOUR VIEW DISTANCE.
		goal Escort Corporal Keeshan back to Redridge|q 219/1
		kill 15 Blackrock Champion|q 128/1
	step
		goto 33.5,49
		.talk Marshal Marris##382
		..turnin Missing in Action##219
	step
		goto 31,47.3
		.talk Verner Osgood##415
		..turnin Howling in the Hills##126
	step
		goto 31.5,57.9
		.talk Guard Howe##903
		..turnin Blackrock Bounty##128
	step
		ding 25
	step
		goto 80.2,37.1
		.from Lieutenant Fangore##703
		..get 1 Fangore's Paw|q 180/1
		.from Shadowhide Assassin##579+, Shadowhide Brute##432+, Shadowhide Darkweaver##429+, Shadow Gnoll##433+, Shadowhide Slayer##431+, Shadowhide Warrior##568+
		..get 10 Shadowhide Pendant|q 91/1
	step
		'If you got the Glowing Shadowhide Pendant; accept, otherwise skip this step.
		.use Glowing Shadowhide Pendant##1962
		..accept Theocritus' Retrieval##178
	step
		goto 84.5,46.8
		.talk Old Lion Statue
		..turnin A Watchful Eye##94
		..accept Looking Further##248
	step
		'The Jar is at the top of the stone tower next to the keep.
		goto 63.2,49.8
		.talk An Empty Jar
		..turnin Looking Further##248
	step
		goto 67,52
		.from Blackrock Shadowcaster##436+
		.get 3 Midnight Orb|q 115/1
	step
		goto 69.3,59.9
		.from Tharil'Zun##486
		..get Tharil'zun's Head|q 19/1
	step
		'Group quest, consider abandoning
		goto 69.6,55.8
		.from Gath'Ilzogg##334
		..get Head of Gath'Ilzogg|q 169/1
	step
		'Hearth to Lakeshire|goto Redridge Mountains,26.9,44.9,0.5|use Hearthstone##6948|noway|c
	step
		goto 21.9,46.3
		.talk Martie Jainrose##342
		..accept An Unwelcome Guest##34
	step
		goto 15.9,49.5
		.from Bellygrub##345
		.get Bellygrub's Tusk|q 34/1
	step
		goto 21.9,46.3
		.talk Martie Jainrose##342
		..turnin An Unwelcome Guest##34
	step
		goto 30,44.5
		.talk Magistrate Solomon##344
		..turnin Wanted: Gath'Ilzogg##169
		..turnin Wanted: Lieutenant Fangore##180
	step
		goto 29.7,44.3
		.talk Bailiff Conacher##900
		..turnin Solomon's Law##91
	step
		goto 33.5,49
		.talk Marshal Marris##382
		..turnin Tharil'zun##19
		..turnin Shadow Magic##115
	step
		'Fly to Darkshire|goto Duskwood,77.6,44.4,0.1|noway|c
]])
