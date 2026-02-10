local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
--TRIAL if ZygorGuidesViewer.AllianceDailiesInstalled then return end
if UnitFactionGroup("player")~="Alliance" then return end

ZygorGuidesViewer:RegisterGuide("Ares' Alliance Quest Guides\\Reputation\\Cenarion Expedition, Reputation Repeatables",[[
	description This guide contains the repeatable quests to gain reputation with the Cenarion Expedition.
	author ErebusAres
	next Ares' Alliance Quest Guides\\Reputation\\Cenarion Expedition Reputation
	step //1
		goto Zangarmarsh,80.2,64.2
		.talk Lauranna Thar'well##17909
		..accept Plants of Zangarmarsh##9802
		.collect 10 Unidentified Plant Parts|q 24401/1|tip These drop from pretty much every creature in the Zangarmarsh area.
		.'The Quest is Repeatable until you are Honored.|condition rep('Cenarion Expedition')>=Honored
		.' Kill Fungal Giants and Bog Lords|goto 28.0,64.6|tip I recommend these since you can get twice the chances if your Herbalism is high enough to harvest their bodies.
		.collect 360 Unidentified Plant Parts|q 9784|future|tip "The Internet" says that getting and turning in 360 will get you from default standing to Honored.
		..turnin Identify Plant Parts##9784
		.'SAVE Your Uncatalogued Species you get from the "Packaged of Identified Plants" Reward from these quests.
	step //2
		.'The Quest is Repeatable until you are Revered.|condition rep('Cenarion Expedition')>=Revered
		.'Open the Package of Identified Plants you get from the previous quest|use Package of Identified Plants##24402
		.'Click the Uncatalogued Species to start the quest|use Uncatalogued Species##24407
		..accept Uncatalogued Species##9875
		..turnin Uncatalogued Species##9875
	step //3
		.'The Quest is Repeatable until you are Exalted. |condition rep('Cenarion Expedition')>=Exalted
		..accept Coilfang Armaments##9766|tip The Quest requires a random BoE drop from The Steamvaults (L70 Coilfang Instance).


]])
ZygorGuidesViewer:RegisterGuide("Ares' Alliance Quest Guides\\Reputation\\Cenarion Expedition Reputation",[[
	description This guide contains the quests to gain reputation with the Cenarion Expedition.
	description The Quests are in order via list on https://www.wowhead.com/tbc/guide/cenarion-expedition-reputation-rewards-burning-crusade-classic-wow
	author ErebusAres
	step //1
		goto Hellfire Peninsula,23.4,36.6
		.talk Amaan the Wise##16796
		..accept Helping the Cenarion Post##10443
	step //2
		goto Hellfire Peninsula,15.6,52.2
		.talk Thiah Redmane##16991
		..turnin Helping the Cenarion Post##10443
		..accept Demonic Contamination##9372
		.talk Tola'thion##19293
		..accept Colossal Menace##10132
	step //3
		goto Hellfire Peninsula,15.6,45.2
		..kill 5 Raging Colossus|q 10132/1
		.'A Crimson Crystal Shard will drop while killing them|use Crimson Crystal Shard##29476
		..accept Crimson Crystal Clue##10134
	step //4
		goto Hellfire Peninsula,15.6,52.2
		.talk Tola'thion##19293
		..turnin Colossal Menace##10132
		..turnin Crimson Crystal Clue##10134
		..accept The Earthbinder##10349
	step //5
		goto Hellfire Peninsula,15.9,51.6
		.talk Earthbinder Galandria Nightbreeze##19294
		..turnin The Earthbinder##10349
		.'Kill the creature that spawns
		..accept Natural Remedies##10351
	step //6
		goto Hellfire Peninsula,23.2,54.8
		.'Kill Hulking Helboar
		.get 6 Helboar Blood Sample##23336|q 9372/1
	step //7
		goto Hellfire Peninsula,48.8,64.4
		.'Kill Marauding Crust Burster
		.'Or Kill Tunneler|goto 31.2,63.0
		.get Eroded Leather Case|n|use Eroded Leather Case##23338
		.accept Missing Missive##9373
	step //8
		goto Hellfire Peninsula,15.6,52.2
		.talk Thiah Redmane##16991
		..turnin Demonic Contamination##9372
		..turnin Missing Missive##9373
		..accept Testing the Antidote##10255
		.talk Mahuram Stouthoof##16888
		..accept Keep Thornfang Hill Clear!##10159
	step //9
		goto Hellfire Peninsula,23.2,54.8
		.' Use the Cenarion Antidote on a Hulking Helboar|use Cenarion Antidote##23337
		.' Administer the Antidote|goal Administer Antidote|q 10255/1
	step //10
		goto 12.3,49.9
		.kill 8 Thornfang Ravager|q 10159/1
		.kill 8 Thornfang Venomspitter|q 10159/2
	step //11
		goto 13.6,39.1
		.' Use the Seed of Revitalization in the Green Circle.|use Seed of Revitalization|n
		.'Kill Goliathon|goal Fallen Sky Ridge Revitalized|q 10351/1|tip This quest is recommended for a group of 2+
	step //12
		goto 15.7,52
		.talk Thiah Redmane##16991
		..turnin Testing the Antidote##10255
		.talk Mahuram Stouthoof##16888
		..turnin Keep Thornfang Hill Clear!##10159
	step //13
		goto Hellfire Peninsula,15.9,51.6
		.talk Earthbinder Galandria Nightbreeze##19294
		..turnin Natural Remedies##10351
	step //14
		'Go northwest to Zangarmarsh|goto Zangarmarsh|noway|c
	step //15
		goto 78.4,62
		.talk Ysiel Windsinger##17841
		..accept Warning the Cenarion Circle##9724
	step //16
		'Go east to Hellfire Peninsula|goto Hellfire Peninsula|noway|c
	step //17
		goto Hellfire Peninsula,15.7,52
		.talk Amythiel Mistwalker##16885
		..turnin Warning the Cenarion Circle##9724
		..accept Return to the Marsh##9732
	step //18
		'Go northwest to Zangarmarsh|goto Zangarmarsh|noway|c
	step //19
		goto Zangarmarsh,80.4,64.2
		.talk Ikeyen##17956
		..accept The Umbrafen Tribe##9747
	step //20
		goto 78.4,62
		.talk Ysiel Windsinger##17841
		..turnin Return to the Marsh##9732
		..accept Warden Hamoot##9778
		..accept Disturbance at Umbrafen Lake##9716
	step //21
		goto 79.1,65.3
		.talk Warden Hamoot##17858
		..turnin Warden Hamoot##9778
		..accept A Warm Welcome##9728
	step //22
		goto 79.1,64.8
		.' Click the Wanted Poster|tip Below Warden Hamoot, To the Right of the entrance to his tower.
		..accept Leader of the Darkcrest##9730
		..accept Leader of the Bloodscale##9817
	step //23
		goto 78.5,63.1
		.talk Lethyn Moonfire##17834
		..accept The Dying Balance##9895
	step //24
		goto 80.1,73.3
		.kill Boglash|q 9895/1|tip I found Boglash here. He is a tall alien looking thing with really long legs. He walks around in the water, so some searching may be necessary.
		.kill Boglash and Fen Striders|n|tip It's easier if you just run around in the water all around the east part of Zangarmarsh.
		.collect 6 Fertile Spores##24449|q 9806/1|future
		.kill all mobs in this area|n
		.collect 10 Unidentified Plant Parts|q 9802/1|future
	step //25
		goto 78.5,63.1
		.talk Lethyn Moonfire##17834
		..turnin The Dying Balance##9895
	step //26
		goto 85.3,90.9
		.kill Kataru|q 9747/1|tip In the big building, all the way at the top.
	step //27
		goto 84.8,84.4
		.kill 6 Umbrafen Oracle|q 9747/2
		.kill 8 Umbrafen Seer|q 9747/3
		.kill 6 Umbrafen Witchdoctor|q 9747/4
	step //28
		goto 83.4,85.5
		.talk Kayra Longmane##17969
		..accept Escape from Umbrafen##9752
		..'Escort Kayra Longmane|goal Escort Kayra Longmane to safety|q 9752/1
	step //29
		goto 80.4,64.2
		.talk Ikeyen##17956
		..turnin The Umbrafen Tribe##9747
		..accept A Damp, Dark Place##9788
		.talk Lauranna Thar'well##17909
		..accept Saving the Sporeloks##10096
	step //30
		goto 80.4,64.7
		.talk Windcaller Blackhoof##18070
		..accept Safeguarding the Watchers##9894
	step //31
		goto 78.4,62
		.talk Ysiel Windsinger##17841
		..turnin Escape from Umbrafen##9752
	step //32
		goto 74.7,91.6|n
		.' The path to 'Ikeyen's Belongings' starts here|goto Zangarmarsh,74.7,91.6,0.3|noway|c
	step //33
		'Go southwest inside the cave to 70.5,97.9|goto 70.5,97.9
		.' Head right as you enter the cave.
		.' Defeat the creatures in the cave as you go.
		.kill 10 Marsh Lurker|q 10096/2|n
		.kill 10 Marsh Dredger|q 10096/1|n
		.' Click Ikeyen's Belongings|tip A little tan metal chest sitting on a beg flat rock.
		.get Ikeyen's Belongings|q 9788/1
	step //34
		'Go northeast inside the cave to 72.5,94.0|goto 72.5,94.0
		.kill Lord Klaq|q 9894/1|tip On the bottom level of the cave, in the small round room all the way in the back.
	step //35
		goto 75.7,90.2
		.' There should be exactly enough if you do a full loop around to the boss and leave back out to the left.
		.kill 10 Marsh Lurker|q 10096/2
		.kill 10 Marsh Dredger|q 10096/1
	step //36
		goto 70.9,82.1
		.' Stand here to Investigate Umbrafen Lake|goal Umbrafen Lake Investigated|q 9716/1
		.kill nagas|n
		.get 30 Naga Claws|q 9728/1
	step //37
		goto 80.4,64.7
		.talk Windcaller Blackhoof##18070
		..turnin Safeguarding the Watchers##9894
	step //38
		goto 80.4,64.2
		.talk Ikeyen##17956
		..turnin A Damp, Dark Place##9788
	step //39
		goto 80.4,64.2
		.' Return to Nagas and grind Cenarion Expedition rep, until friendly. |condition rep('Cenarion Expedition')>=Friendly
		.talk Lauranna Thar'well##17909
		..turnin Saving the Sporeloks##10096
		.' You should have 10 Unidentified Plant Parts by now..
		.' If not, continue killing random Zangarmarsh creatures until you have at least 10.
		..accept Plants of Zangarmarsh##9802
		.get 10 Unidentified Plant Parts|q 9802/1
		..turnin Plants of Zangarmarsh##9802
	step //40
		goto 79.1,65.3
		.talk Warden Hamoot##17858
		..turnin A Warm Welcome##9728
	step //41
		goto 80.4,64.7
		.talk Windcaller Blackhoof##18070
		..accept Blessings of the Ancients##9785
	step //42
		goto 78.5,63.1
		.talk Lethyn Moonfire##17834
		..accept Watcher Leesa'oh##9697
		..accept What's Wrong at Cenarion Thicket?##9957
	step //43
		goto 78.4,62
		.talk Ysiel Windsinger##17841
		..turnin Disturbance at Umbrafen Lake##9716
		..accept As the Crow Flies##9718
		..'Use the Stormcrow Amulet in your bags|use Stormcrow Amulet##25465
		..'Watch yourself fly as a crow
		.talk Ysiel Windsinger##17841
		..turnin As the Crow Flies##9718
		..accept Balance Must Be Preserved##9720
	step //44
		goto 78.1,63.8
		.talk Keleth##17901
		.'Get the Mark of War|goal Mark of War|q 9785/2
	step //45
		goto 81.1,63.9
		.talk Ashyen##17900
		.'Get the Mark of Lore|goal Mark of Lore|q 9785/1
	step //46
		goto 80.4,64.7
		.talk Windcaller Blackhoof##18070
		..turnin Blessings of the Ancients##9785
	step //47
		goto 70.6,80.3
		.' Use your Ironvine Seeds on the Umbrafen Lake Pump Controls|use Ironvine Seeds##24355|tip The pump controls look like a little box with some levers on it.
		.' Disable the Umbrafen Lake Pump Controls|goal Umbrafen Lake Controls Disabled|q 9720/1
	step //48
		goto 63.1,64.1
		.' Use your Ironvine Seeds on the Lagoon Pump Controls|use Ironvine Seeds##24355|tip The pump controls look like a little box with some levers on it.
		.' Disable the Lagoon Pump Controls|goal Lagoon Controls Disabled|q 9720/4
	step //49
		goto 65.0,67.4
		.kill Rajah Haghazed|q 9730/1
	step //50
		goto 62,40.8
		.' Use your Ironvine Seeds on the Serpent Lake Controls|use Ironvine Seeds##24355|tip The pump controls look like a little box with some levers on it.
		.' Disable the Serpent Lake Controls|goal Serpent Lake Controls Disabled|q 9720/3
		.' Kill Steam Pump Overseers, Bloodscale Overseers, and Bloodscale Wavecallers
		.get Drain Schematics|n
		.' Click the Drain Schematics in your bags|use Drain Schematics##24330
		..accept Drain Schematics##9731
	step //51
		goto 65.0,40.8
		.kill Rajis Fyashe|q 9817/1
	step //52
		goto 32.8,59.1
		.from "Count" Ungula##18285
		.get "Count" Ungula's Mandible|n
		.' Click "Count" Ungula's Mandible|use "Count" Ungula's Mandible##25459
		..accept The Count of the Marshes##9911
	step //53
		goto 23.3,66.2
		.talk Watcher Leesa'oh##17831
		..turnin Watcher Leesa'oh##9697
		..accept Observing the Sporelings##9701
		..turnin The Count of the Marshes##9911
	step //54
		goto 13.6,59.8
		.' Go here to Investigate the Spawning Glen|goal Investigate the Spawning Glen|q 9701/1
	step //55
		goto 23.3,66.2
		.talk Watcher Leesa'oh##17831
		..turnin Observing the Sporelings##9701
		..accept A Question of Gluttony##9702
	step //56
		goto 27,63.3
		.' Click the Discarded Nutriments|tip They look like green glowing mushroom stalks on the ground.
		.get 10 Discarded Nutriment|q 9702/1
	step //57
		goto 23.3,66.2
		.talk Watcher Leesa'oh##17831
		..turnin A Question of Gluttony##9702
		..accept Familiar Fungi##9708
	step //58
		goto 29.6,28.3
		.'Kill Ango'rosh Shaman|n
		.'Kill Ango'rosh Ogre|n
		.get 15 Mushroom Sample|q 9708/1
	step //59
		goto 23.3,66.2
		.talk Watcher Leesa'oh##17831
		..turnin Familiar Fungi##9708
		..accept Stealing Back the Mushrooms##9709
	step //60
		goto 17.3,10.2
		.' Click the brown crates and kill ogres around this area
		.get 10 Box of Mushrooms|q 9709/1
	step //61
		goto 79.1,65.3
		.talk Warden Hamoot##17858
		..turnin Leader of the Darkcrest##9730
		..turnin Leader of the Bloodscale##9817
	step //62
		'Go south to Terokkar Forest|goto Terokkar Forest|noway|c
	step //63
		goto 44.3,26.3
		.talk Earthbinder Tavgren##18446
		..turnin What's Wrong at Cenarion Thicket?##9957
		..accept Strange Energy##9968
		..accept Clues in the Thicket##9971
	step //64
		goto 45,22.5
		.talk Warden Treelos##18424
		..accept It's Watching You!##9951
	step //65
		goto 45.1,21.8
		.' Examine the Strange Object|goal Strange Object examined|q 9971/1|tip Inside the building, looks like a white ball on the floor next to a dead guy.
	step //66
		goto 44.3,26.3
		.talk Earthbinder Tavgren##18446
		..turnin Clues in the Thicket##9971
	step //67
		goto 43.4,22.1
		.kill Naphthal'ar|q 9951/1|tip At the top of the big tower.
	step //68
		goto 45,22.5
		.talk Warden Treelos##18424
		..turnin It's Watching You!##9951
	step //69
		goto 44.1,23.8
		.kill Vicious Teromoths|n
		.get 4 Vicious Teromoth Sample|q 9968/2
	step //70
		goto 45.8,29.8
		.kill Teromoths|n
		.get 4 Teromoth Sample|q 9968/1
	step //71
		goto 44.3,26.3
		.talk Earthbinder Tavgren##18446
		..turnin Strange Energy##9968
		..accept By Any Means Necessary##9978
	step //72
		goto 47.1,27
		.' Fight Empoor until he's almost dead
		.talk Empoor##18482
		..turnin By Any Means Necessary##9978
		..accept Wind Trader Lathrai##9979
	step //73
		goto Shattrath City,72.2,30.7
		.talk Wind Trader Lathrai##18484
		..turnin Wind Trader Lathrai##9979
		..accept A Personal Favor##10112
	step //74
		goto 32.3,41.7
		.kill arakkoas|n
		.get 5 Lathrai's Stolen Goods|q 10112/1
	step //75
		goto 37.9,51.7
		.talk Lakotae##22420
		..accept The Infested Protectors##10896
	step //76
		goto 35.2,48.8
		.kill Infested Root-walkers|n
		.kill the Wood Mites that come out of their corpses|n
		.kill 25 Wood Mite|q 10896/1
		.' You can find more Infested Root-walkers at 39.1,47.0|n
	step //77
		goto 37.9,51.7
		.talk Lakotae##22420
		..turnin The Infested Protectors##10896
	step //78
		'Fly to Shattrath City|goto Shattrath City|noway|c
	step //79
		goto Shattrath City,72.2,30.7
		.talk Wind Trader Lathrai##18484
		..turnin A Personal Favor##10112
		..accept Investigate Tuurem##9990
	step //80
		'Go east to Terokkar Forest|goto Terokkar Forest|noway|c
	step //81
		goto Terokkar Forest,54,30
		.' Click the Sealed Box|tip A green glowing crate inside the hut directly east of you if you are standing on the bridge.
		.get Sealed Box|q 9990/1
	step //82
		goto 44.3,26.3
		.talk Earthbinder Tavgren##18446
		..turnin Investigate Tuurem##9990
		..accept What Are These Things?##9994
	step //83
		goto 57,53.5
		.talk Jenai Starwhisper##18459
		..turnin What Are These Things?##9994
		..accept Report to the Allerian Post##10444
	step //84
		goto 69.7,44.2
		.talk Lieutenant Meridian##21006
		..turnin Report to the Allerian Post##10444
		..accept Attack on Firewing Point##9996
	step //85
		goto 68.1,36.5
		.kill 10 Firewing Defender|q 9996/1
		.kill 10 Firewing Bloodwarder|q 9996/2
		.kill 10 Firewing Warlock|q 9996/3
	step //86
		goto 69.7,44.2
		.talk Lieutenant Meridian##21006
		..turnin Attack on Firewing Point##9996
		..accept The Final Code##10446
	step //87
		goto 73.3,34.6
		.' Click the Orb of Translocation|tip Upstairs from Isla Starmane, on the balcony.
		.' It will teleport you to the top of the tower|goto 73.5,35.0,0.2|noway|c
	step //88
		goto 73.9,35.8
		.from Sharth Voldoun##18554
		.collect 1 The Final Code##29912|q 10446
	step //89
		goto 74.2,36.5
		.' Click the Orb of Translocation|tip Up the ramp from Sharth Voldoun.
		.' It will teleport you to the bottom of the tower|goto 73.3,36.3,0.2|noway|c
	step //90
		goto 71.3,37.4
		.' Click the Mana Bomb
		.' Activate the Mana Bomb using the Final Code|goal Mana Bomb Activated|q 10446/1
	step //91
		goto 57,53.5
		.talk Jenai Starwhisper##18459
		..turnin The Final Code##10446
		..accept Letting Earthbinder Tavgren Know##10005
	step //92
		goto 44.3,26.3
		.talk Earthbinder Tavgren##18446
		..turnin Letting Earthbinder Tavgren Know##10005
	step //93
		'Fly to Evergrove, Blade's Edge Mountains|goto Blade's Edge Mountains,61.7,39.8|noway|c	step //94
	step //94
		goto 62,39.5
		.talk Tree Warden Chawn##22007
		..accept A Time for Negotiation...##10682
	step //95
		goto 61.2,38.4
		.talk Mosswood the Ancient##22053
		..accept Little Embers##10770
		..accept From the Ashes##10771
	step //96
		goto 62.2,39.1
		.talk Timeon##21782
		..accept Creating the Pendant##10567
	step //97
		goto 62.6,38.2
		.talk Faradrella##22133
		..accept Culling the Wild##10753
	step //98
		goto 68.9,35.6
		.kill 4 Felsworn Scalewing|q 10753/1
		.kill 4 Felsworn Daggermaw|q 10753/2
		.kill 2 Fel Corrupter|q 10753/3
		.' Kill Fel Corrupters
		.get Damaged Mask|n
		.' Click the Damaged Mask|use Damaged Mask##31384
		..accept Damaged Mask##10810
	step //99
		goto 71.7,22.4
		.' Click the Fertile Volcanic Soil|tip It looks like a dirt mound.
		.' Plant the Ironroot Seeds|goal Southern Volcanic Soil|q 10771/1
	step //100
		goto 71.6,20.3
		.' Click the Fertile Volcanic Soil|tip It looks like a dirt mound.
		.' Plant the Ironroot Seeds|goal Central Volcanic Soil|q 10771/2
	step //101
		goto 71.6,18.5
		.' Click the Fertile Volcanic Soil|tip It looks like a dirt mound.
		.' Plant the Ironroot Seeds|goal Northern Volcanic Soil|q 10771/3
	step //102
		goto 70.7,20.2
		.kill 8 Scorch Imp|q 10770/1
	step //103
		goto 63.9,31.5
		.' Kill Ruuan'ok arakkoas
		.collect 6 Ruuan'ok Claw##30704|q 10567
	step //104
		goto 64.5,33.1
		.' Use the 6 Ruuan'ok Claws inside the glowing circle|use Ruuan'ok Claw##30704
		.' Kill the Harbinger of the Raven
		.get Harbinger's Pendant|q 10567/1
	step //105
		goto 62.6,38.2
		.talk Faradrella##22133
		..turnin Culling the Wild##10753
	step //106
		goto 62.2,39.1
		.talk Timeon##21782
		..turnin Creating the Pendant##10567
		..accept Whispers of the Raven God##10607
	step //107
		goto 62.7,40.4
		.talk O'Mally Zapnabber##22020
		..turnin Damaged Mask##10810
		..accept Mystery Mask##10812
	step //108
		goto 62.2,40.1
		.talk Wildlord Antelarion##22127
		..turnin Mystery Mask##10812
		..accept Felsworn Gas Mask##10819
	step //109
		goto 61.2,38.4
		.talk Mosswood the Ancient##22053
		..turnin Little Embers##10770
		..turnin From the Ashes##10771
	step //110
		goto Blade's Edge Mountains,58.8,39.1
		.talk Overseer Nuaar##21981
		..'He wanders around the Wyrmcult camps
		.' Negotiate with Overseer Nuaar|goal Negotiations with Overseer Nuaar complete|q 10682/1
	step //111
		goto 62,39.5
		.talk Tree Warden Chawn##22007
		..turnin A Time for Negotiation...##10682
		..accept ...and a Time for Action##10713
	step //112
		goto 59.9,37.8
		.kill 10 Wyrmcult Hewer|q 10713/1
		.' Kill Wyrmcult Poachers
		.get 5 Wyrmcult Net|q 10717/1
		.' Kill Wyrmcult mobs
		.get Meeting Note|n
		.' Click the Meeting Note|use Meeting Note##31120
		..accept Did You Get The Note?##10719
	step //113
		goto 62,39.5
		.talk Tree Warden Chawn##22007
		..turnin ...and a Time for Action##10713
		..turnin Did You Get The Note?##10719
		..accept Wyrmskull Watcher##10894
	step //114
		'Make sure you have your Felsworn Gas Mask in your bags|collect Felsworn Gas Mask##31366|q 10819
		.' It has a 60 minute timer on it|n
		.' If you need another one, talk to Wildlord Antelarion at Evergrove|n
	step //115
		goto 73.2,40
		'Put on your Felsworn Gas Mask|use Felsworn Gas Mask##31366
		.' Click the Legion Communicator|tip Between 2 big green floating crystals.  Must be wearing the Felsworn Gas Mask to use this.
		..turnin Felsworn Gas Mask##10819
		..accept Deceive thy Enemy##10820
	step //116
		goto 74.9,39.9
		.kill 4 Doomforge Attendant|q 10820/1
		.kill 4 Doomforge Engineer|q 10820/2
	step //117
		goto 73.2,40
		.' Put on your Felsworn Gas Mask|use Felsworn Gas Mask##31366
		.' Click the Legion Communicator|tip |tip Between 2 big green floating crystals.  Must be wearing the Felsworn Gas Mask to use this.
		..'If you're returning to this quest and don't have your gas mask, get a new one from Wildlord Antelarion in Ruuan Weald|goto 62.2,40.1
		..turnin Deceive thy Enemy##10820
		..accept You're Fired!##10821
	step //118
		goto 74.2,42.2
		.kill 5 Anger Guard|n
		.collect 5 Camp Anger Key##31536
	step //119
		goto 74.0,41.2
		.'Rapidly Unlock 5 of the Devices located at the included locations.|tip If you're not quick enough the Doomcryer won't spawn, but it's pretty lenient.
		.'Device A|goto 73.5,43.5
		.'Device B|goto 73.9,41.1
		.'Device C|goto 73.9,39.9
		.'Device D|goto 75.5,40.5
		.'Device E|goto 75.3,41.7
		.kill 1 Doomcryer|q 10821/1|tip She spawns after you've unlocked all 5 devices. 
	step //120
		goto 62.2,40.1
		.talk Wildlord Antelarion##22127
		..turnin You're Fired!##10821
		..accept Death's Door##10910
	step //121
		goto 49.9,35.9
		.talk Watcher Moonshade##22386
		..turnin Wyrmskull Watcher##10894
		..accept Longtail is the Lynchpin##10893
	step //122
		'Go into the tunnel|goto Blade's Edge Mountains,49.5,35.8,0.3|c
	step //123
		goto 46.7,32.9
		.kill Draaca Longtail##22396|q 10893/1
	step //124
		goto 49.9,35.9
		.talk Watcher Moonshade##22386
		..turnin Longtail is the Lynchpin##10893
		..accept Meeting at the Blackwing Coven##10722
	step //125
		'Go northwest through the tunnel to Grishnath|goto Blade's Edge Mountains,43.1,29.9,0.3|c
	step //126
		goto 42.2,25.1
		'Kill arakkoas
		.' Get the Understanding Ravenspeech buff|havebuff Ability_Hunter_Pet_DragonHawk|q 10607
		..'Must be within melee range to receive the buff
		.' The buff lasts for 2 minutes
		.' Anytime the buff wears off, kill arakkoas again to get it back
	step //127
		goto 40.7,18.7
		.' Stand next to the wooden totem with the Understanding Ravenspeech buff on you|tip On the ground, next to a pond with basilisks in it.  It looks like a wooden totem.
		.' Receive the Third Prophecy|goal Receive the Third Prophecy|q 10607/3
	step //128
		goto 39,17.2
		.' Stand next to the wooden totem with the Understanding Ravenspeech buff on you|tip Up the left ramp, then left across the hanging bridge.  It looks like a wooden totem.
		.' Receive the First Prophecy|goal Receive the First Prophecy|q 10607/1
	step //129
		goto 42.5,21.6
		.' Stand next to the wooden totem with the Understanding Ravenspeech buff on you|tip Up the right ramp, then go right across the hanging bridge, then down the stairs to the left.  It looks like a wooden totem.
		.' Receive the Second Prophecy|goal Receive the Second Prophecy|q 10607/2
	step //130
		goto 40.2,23
		.' Stand next to the wooden totem with the Understanding Ravenspeech buff on you|tip On the ground, in front of a hut.  It looks like a wooden totem.
		.' Receive the Fourth Prophecy|goal Receive the Fourth Prophecy|q 10607/4
	step //131
		goto 32.3,34.9
		.' Go inside the cave
		.' Kill Wyrmcultists
		.collect 5 Costume Scraps##31121|q 10722
	step //132
		goto 32.6,37.5
		.' Combine your 5 Costume Scraps to make an Overseer Disguise|use Costume Scraps##31121
		.' Put on the Overseer Disguise|use Overseer Disguise##31122
		.talk Kolphis Darkscale##22019
		..'Attend the meeting with Kolphis Darkscale|goal Meeting with Kolphis Darkscale attended|q 10722/1
	step //133
		'Go through the tunnel to 62,39.5|goto 62,39.5
		.talk Tree Warden Chawn##22007
		..turnin Meeting at the Blackwing Coven##10722
		..accept Maxnar Must Die!##10748
	step //134
		goto 62.2,39.1
		.talk Timeon##21782
		..turnin Whispers of the Raven God##10607
	step //135
		goto 32.3,34.9
		.' Go inside the cave
		.' Kill Wyrmcultists
		.collect 5 Costume Scraps##31121|q 10748
	step //136
		.' Combine your 5 Costume Scraps to make an Overseer Disguise|use Costume Scraps##31121
		.' Put on the Overseer Disguise|havebuff Overseer Disguise|use Overseer Disguise##31122|q 10748/1
	step //137
		'Go inside the cave to 33.9,35.4|goto 33.9,35.4
		.kill Maxnar the Ashmaw##21389|q 10748/1
	step //138
		'Fly to Evergrove|goto Blade's Edge Mountains,61.7,39.6,0.3|noway|c
	step //139
		goto 62,39.5
		.talk Tree Warden Chawn##22007
		..turnin Maxnar Must Die!##10748
	step //140
		goto 65.7,70.7
		.use Druid Signal##31763
		.talk Evergrove Druid##22423|tip Wait a few seconds and he'll swoop in as a raven.
		..turnin Death's Door##10910
		..accept Harvesting the Fel Ammunition##10904
	step //141
		goto 64.5,71.4
		.'Kill any creature in the Death's Door area.|tip I recommend just going up to the left and killing the Deathforge Technicians up the hill.
		.collect 5 Fel Cannonball|q 10904/1
	step //142
		goto 65.7,70.7
		.use Druid Signal##31763
		.talk Evergrove Druid##22423|tip Wait a few seconds and he'll swoop in as a raven.
		..turnin Harvesting the Fel Ammunition##10904
		..accept Fire At Will!##10911
	step //143
		goto 64.7,68.5
		.'Use Naturalized Ammunition on South Warp-Gate|use Naturalized Ammunition##31807
		.'Destroy the South Warp-Gate|goal South Warp-Gate Destroyed|q 10911/1
	step //144
		step //143
		goto 62.0,60.4
		.'Use Naturalized Ammunition on North Warp-Gate|use Naturalized Ammunition##31807
		.'Destroy the North Warp-Gate|goal North Warp-Gate Destroyed|q 10911/2
	step //145
		.'Get somewhere safe..
		.use Druid Signal##31763
		.talk Evergrove Druid##22423|tip Wait a few seconds and he'll swoop in as a raven.
		..turnin Fire At Will!##10911
		..accept The Hound-Master##10912
	step //146
		goto 63.6,59.1
		.'Use the Evergrove Wand on Baelmon the Hound-Master|use Evergrove Wand##31809
		.kill 1 Baelmon the Hound-Master|q 10912/1
	step //147
		goto 62.2,40.1
		.talk Wildlord Antelarion##22127
		..turnin The Hound-Master##10912
	step //148
		.'Fly to The Stormspire, Netherstorm|goto Netherstorm|noway|c
	step //149
		goto Netherstorm,42.3,32.6
		.talk Aurine Moonblaze##20871
		..accept Flora of the Eco-Domes##10426
	step //150
		goto 40.4,33.5
		.' Use your Energy Field Modulator on Farahlon Lashers|use Energy Field Modulator##29818
		.kill Mutated Farahlon Lashers|n
		.' Test the Energy Field Modulator 10 times|goal 10 Test Energy Modulator|q 10426/1
	step //151
		goto 42.3,32.6
		.talk Aurine Moonblaze##20871
		..turnin Flora of the Eco-Domes##10426
		..accept Creatures of the Eco-Domes##10427
	step //152
		goto 43.7,30.2
		.' Fight Talbuk Does and Talbuk Sires|tip You will see a message in your chat window when they are at about 20% health, saying "Talbuk Doe, or Sire, seems to have weakened."
		.' Use your Talbuk Tagger on Talbuk when you see the message in your chat|use Talbuk Tagger##29817
		.' Tag 12 Talbuks|goal 12 Talbuk Tagged|q 10427/1
	step //153
		goto 42.3,32.6
		.talk Aurine Moonblaze##20871
		..turnin Creatures of the Eco-Domes##10427
		..accept When Nature Goes Too Far##10429
	step //154
		goto 44.6,28.4
		.from Markaru##20775
		.get 1 Hulking Hydra Heart|q 10429/1
	step //155
		goto 42.3,32.6
		.talk Aurine Moonblaze##20871
		..turnin When Nature Goes Too Far##10429

		// ---Quests Left In Blade's Edge Mountains---
	// Forge Camp: Anger					; 
]])

ZygorGuidesViewer.AllianceInstalled=true --!TRIAL
