local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetsHCATA") then return end
ZGV.CommonPets=true
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Mountain Cottontail",[[
description This guide will walk you through obtaining
description the Critter pet: Mountain Cottontail
pet 391
step
goto Redridge Mountains 42.1,68.8
.' The Mountain Cottontails in this area are level 4-5. Challenge one to a pet battle and capture it.
.learnpet Mountain Cottontail##61167
|modeldisplay 328
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Snowshoe Rabbit",[[
description This guide will walk you through obtaining
description the Critter pet: Snowshoe Rabbit
pet 72
step
goto The Cape of Stranglethorn/0 40.1,72.4
.talk 8123
.buy 1 Rabbit Crate (Snowshoe)##8497
.' These pets aren't available to the Horde by normal means.
.' Alternatively, you can purchase this from the Horde Auctioneer, although it may not be available.
'|modeldisplay 16191
step
.learnpet Snowshoe Rabbit##7560 |use Rabbit Crate (Snowshoe)##8497
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Squirrel",[[
description This guide will walk you through obtaining
description the Critter pet: Squirrel
pet 379
step
goto Elwynn Forest 46.7,71.4
.' The Squirrel is level 1. Challenge one to a pet battle and capture it.
.learnpet Squirrel##61081
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Alliance Balloon",[[
description This guide will walk you through obtaining
description the Flying pet:  Alliance Balloon
pet 331
step
'Horde can not earn this pet because it is gathered from a Alliance only quest.
.learnpet Alliance Balloon##54539 |use Alliance Balloon##72042
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Ammen Vale Lashling",[[
description This guide will walk you through obtaining
description the Elemental pet: Ammen Vale Lashling
pet 212
step
goto The Cape of Stranglethorn/0 40.1,72.4
.talk 8123
.buy 1 Ammen Vale Lashling##44984
.' These pets aren't available to the Horde by normal means.
.' Alternatively, you can purchase this from the Horde Auctioneer, although it may not be available.
step
.learnpet Ammen Vale Lashling##33205 |use Ammen Vale Lashling##44984
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Argent Squire",[[
description This guide will walk you through obtaining
description the Humanoid pet: Argent Squire
pet 214
step
'This pet is only available to _Alliance_ Characters.
.learnpet Argent Squire##33238
'|modeldisplay 28946
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Argent Gruntling",[[
description This guide will walk you through obtaining
description the Humanoid pet: Argent Gruntling
pet 216
step
'Proceeding to proper section |next |only if default
'Proceeding to proper section |next dailies |only if completedq(13838)
step
goto Icecrown,72.6,22.6
.talk 33849
..fpath Argent Tournament Grounds
step
goto Icecrown,69.7,22.9
.talk 33817
..accept 13668
step
goto 76.3,24.4
.talk 33542
..turnin 13668
..accept 13829
step
goto 76.3,24.4
.talk 33658
..accept 13839
step
goto 76.2,24.4
.talk 33659
..accept 13838
step
goto 75.6,23.7
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Sunreaver Hawkstrider|invehicle|q 13829
step
goto 72.5,19.3
.talk 33973
.' Listen to Jeran Lockwood's advice|q 13829/1
step
goto 72.7,18.9
.talk 33972
.' Listen to Rugan Steelbelly's advice|q 13839/1
step
goto 73.2,19.2
.talk 33974
.' Listen to Valis Windchaser's advice|q 13838/1
step
goto 73.1,19.0
.' Target a Ranged Target from a distance
.' Use Shield-Breaker ability on Ranged Target to bring it's shields down
.' Use Shield-Breaker ability on Ranged Target twice, while it's shields are down|q 13838/2
step
goto 72.9,18.8
.' Target a Charge Target from a distance
.' Use Shield-Breaker ability until you notice the targets Defend is gone
.' Use your Charge ability on the Charge Target 2 times|q 13839/2
step
goto 72.6,19.7
.' Target a Melee Target
.' If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
.' Use your Thrust ability to attack the target 5 times|q 13829/2
step
'Click the red arrow on your hotbar to stop riding the bird mount|outvehicle|q 13829
step
goto 76.3,24.4
.talk 33542
..turnin 13829
step
goto 76.3,24.4
.talk 33658
..turnin 13839
step
goto 76.2,24.4
.talk 33659
..turnin 13838
step
label dailies
.collect 1 Argent Gruntling##45022
'|modeldisplay 29148
step
.learnpet Argent Gruntling##33239 |use Argent Gruntling##45022
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Black Kingsnake",[[
description This guide will walk you through obtaining
description the Beast pet: Black Kingsnake
pet 75
step
goto Orgrimmar,33.0,67.4
.talk 8404
.buy 1 Black Kingsnake##10360
'|modeldisplay 4268
step
.learnpet Black Kingsnake##7565 |use Black Kingsnake##10360
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Blue Mini Jouster",[[
description This guide will walk you through obtaining
description the Flying pet: Blue Mini Jouster
pet 259
step
.' Going to _Egg Wave_ |only if not completedq(25560) |next "eggwave"
.' Going to _The 'Unbeatable?' Pterodactyl: BEATEN._ |next "beaten" |only if completedq(25560)
step
label "eggwave"
goto Orgrimmar,49.7,76.5
.click Warchief's Command Board##10014
..accept 27721
.' You will automatically accept a quest by entering Orgrimmar
..accept 28790
step
goto 50.5,38.4
.talk 45244
..turnin 28790
..accept 28805
step
goto 50.8,37.8
.clicknpc Waters of Farseeing##50088
.' Witness the Vision of the Farseer |q 28805/1
step
goto 50.5,38.4
.talk 45244
..turnin 28805
step
goto 39.9,50.9
.talk 15188
..' Ask him to please send you to Moonglade
.' You will teleport to Moonglade |goto Moonglade,45.1,43.1,0.5 |noway |c
step
goto Moonglade,45.5,44.9
.talk 39865
..turnin 27721
..accept 25316
step
goto Mount Hyjal,63.1,24.1
.talk 40843
.home Nordrassil
step
goto 62.0,24.9
.talk 40928
..turnin 25316
..accept 25317
step
goto 62.1,21.6
.talk 41861
.fpath Nordrassil
step
goto 64.0,22.6
.talk 39925
..accept 25460
step
goto 64.0,22.5
.talk 40278
..accept 25370
step
goto 65.8,20.8
.kill 8 Scalding Rock Elemental##40229+ |q 25460/1
.click Juniper Berries##28+
.collect 4 Juniper Berries##53009 |n
.' Use your Juniper Berries on Faerie Dragons |use Juniper Berries##53009 |tip They look like small blue flying dragons around this area.
.' Follow the Faerie Dragons to find Twilight Inciters
.kill 4 Twilight Inciter##39926+  |q 25370/1
step
goto 64.0,22.5
.talk 40278
..turnin 25370
..accept 25574
step
goto 64.0,22.6
.talk 39925
..turnin 25460
step
goto 55.9,15.8
.' Use Tholo's Horn to call for an emerald dragon |use Tholo's Horn##55122
.' Burn the Infiltrators' Encampment |q 25574/1
step
goto 64.0,22.5
.talk 40278
..turnin 25574
step
goto 47.7,35.5
.talk 15362
..turnin 25317
..accept 25319
step
goto 47.7,35.5
.talk 39869
..accept 25472
step
goto 47.2,25.6
.kill 4 Twilight Flamecaller##38926+ |q 25319/1
.kill 10 Twilight Vanquisher##38913+ |q 25319/2
.click Charred Staff Fragment##758+
.get 8 Charred Staff Fragment |q 25472/1
step
goto 47.7,35.5
.talk 15362
..turnin 25319
..turnin 25472
..accept 25323
step
goto 44.7,33.2
.' Use your Flameseer's Staff on Blazebound Revenants |use Flameseer's Staff##53107
.kill 30 Unbound Flame Spirit##40080 |q 25323/1
.' You can find more Blazebound Revenants at [48.5,29.2]
step
goto 47.7,35.5
.talk 15362
..turnin 25323
..accept 25464
step
goto 44.1,27.0
.' Use your Flameseer's Staff on Baron Geddon |use Flameseer's Staff##54463 |tip He's a big fire elemental standing in the middle of this crater.
.' Weaken Baron Geddon 20 Times |q 25464/1 |tip Run away when you see Galrond of the Claw yell "Look out!".
step
goto 47.7,35.5
.talk 15362
..turnin 25464
step
goto 47.7,35.5
.talk 39869
..accept 25430
step
goto 48.4,19.0
.talk 38917
..turnin 25430
..accept 25320
step
goto 44.5,18.9
.talk 40096
..turnin 25320
..accept 25321
step
goto 44.4,20.7
.from Twilight Overseer##40123
.get Twilight Overseer's Key |q 25321/1
step
goto 44.5,18.9
.talk 40096
..turnin 25321
..accept 25424
step
goto 48.4,19.0
.talk 38917
..turnin 25424
..accept 25324
step
goto 52.6,17.3 |n
.' Enter the cave |goto 52.6,17.3,0.5 |noway |c
step
goto 56.8,18.8
.' Follow the path in the cave
.talk 40139
..turnin 25324
..accept 25325
step
goto 52.6,17.3 |n
.' Leave the cave
.' Deliver Arch Druid Fandral Staghelm |q 25325/1
step
goto 52.2,17.4
.talk 40178
..turnin 25325
..accept 25578
step
goto 62.0,24.9
.talk 40928
..turnin 25578
..accept 25584
step
goto 35.7,19.4
.talk 39429
..turnin 25584
..accept 25255
step
goto 35.8,19.7
.talk 39427
..accept 25233
..accept 25234
step
goto 34.6,24.5
.kill 6 Twilight Hunter##39437 |q 25255/1
.kill 4 Twilight Proveditor##39436 |q 25233/1 |tip They walk with 3 Twilight slaves and a Twilight Slavedriver.
.click Twilight Supplies##9379+
.get 36 Twilight Supplies |q 25234/1
step
goto 35.8,19.7
.talk 39427
..turnin 25233
..turnin 25234
step
goto 35.7,19.4
.talk 39429
..turnin 25255
..accept 25269
step
goto 30.1,31.7
.talk 39432
..turnin 25269
..accept 25270
step
goto 29.0,31.4
.from Lycanthoth Vandal##39445+
.get 6 Polluted Incense |q 25270/1
step
goto 30.1,31.7
.talk 39432
..turnin 25270
..accept 25272
step
goto 32.4,37.3
.' Use Lycanthoth's Incense next to Lycanthoth's Altar |use Lycanthoth's Incense##52682 |tip Inside the cave.
.kill Lycanthoth##39446 |q 25272/1
step
goto 32.5,37.4
.talk 39622
..turnin 25272
step
goto 29.6,29.3
.talk 39622
..accept 25279
step
goto 28.4,29.9
.talk 39432
..turnin 25279
..accept 25277
step
goto 28.3,30.0
.talk 39435
..accept 25300
step
goto 28.2,29.9
.talk 39434
..accept 25297
step
goto 28.9,32.1
.click Bitterblossom##7444
.get Bitterblossom |q 25297/2
step
goto 26.5,35.0
.click a Stonebloom##9386
.get Stonebloom |q 25297/1
step
goto 27.2,35.2
.click Eye of Twilight##7011
..turnin 25300
..accept 25301
step
goto 28.4,35.8
.click Darkflame Ember##9569
.get Darkflame Ember |q 25297/3
step
goto 28.4,36.5
.click Twilight Cauldron##9387
..turnin 25297
..accept 25298
step
goto 26.9,36.3 |n
.' Enter the cave |goto 26.9,36.3,0.5 |noway |c
step
goto 27.2,40.8
.talk 39797
..accept 25328 |tip This quest is currently bugged, so some players are able to accept the quest while others cannot.
step
goto 26.5,38.5
.click Gar'gol's Personal Treasure Chest##10
.get Rusted Skull Key |q 25328/1
step
goto 25.8,41.6
.click The Twilight Apocrypha##470
..turnin 25301
..accept 25303
step
goto 26.0,41.8
.clicknpc Crucible of Fire##39730
.' Activate the Crucible of Fire |q 25303/3
step
goto 25.6,41.7
.clicknpc Crucible of Earth##39737
.' Activate the Crucible of Earth |q 25303/1
step
goto 25.8,41.9
.clicknpc Crucible of Air##39736
.' Activate the Crucible of Air |q 25303/2
step
goto 26.0,41.6
.clicknpc Crucible of Water##39738
.' Activate the Crucible of Water |q 25303/4
step
goto 25.8,41.6
.click The Twilight Apocrypha##470
..turnin 25303
..accept 25312
step
goto 26.7,39.2
.from Hovel Brute##39642+, Hovel Shadowcaster##39643+
.' Slay 8 Minions of Gar'gol |q 25277/1
.talk 39644
..' Administor the drought
.' Free 8 Twilight Servitors |q 25298/1
step
goto 27.2,40.8
.talk 39797
..turnin 25328
..accept 25332
step
goto 27.1,36.0 |n
.' Leave the cave
.' Escort Kristoff Out |q 25332/1
step
goto 28.6,30.2
.talk 39435
..turnin 25312
..turnin 25332
step
goto 28.4,29.9
.talk 39432
..turnin 25277
..accept 25354
..accept 25355
step
goto 28.2,29.9
.talk 39434
..turnin 25298
step
goto 29.1,40.7
.kill 8 Twilight Stormcaller##39843+ |q 25354/1
.kill 5 Howling Riftdweller##39844+ |q 25354/2
.click Lightning Channel##9816
..get Charged Condenser Jar |q 25355/1
step
'Use your Totem of Lo'Gosh |use Totem of Lo'Gosh##52854
.talk 39622
..turnin 25355
..accept 25617
step
goto 26.2,41.0 |n
.' Go inside the blue portal |goto 25.8,41.5,0.3 |noway |c
step
goto 26.3,41.9
.talk 40834
..turnin 25617
..accept 25575
..accept 25577
step
goto 26.3,42.0
.talk 40837
..accept 25576
step
goto 29.6,41.8
.kill 12 Dark Iron Laborer##40838+ |q 25576/1
.from Searing Guardian##40841+
.collect 8 Smoldering Core##55123 |n
.' Use your Smoldering Cores next to Twilight Anvils |use Smoldering Core##55123 |tip They are small anvils sitting on the ground around this area.
.' Destroy 8 Smoldering Cores |q 25577/1
.' Click Twilight Arms Crates |tip They look like wooden boxes sitting on the ground around this area.
.' Destroy 10 Twilight Arms Crates |q 25575/1
step
goto 26.3,42.0
.talk 40837
..turnin 25576
step
goto 26.3,41.9
.talk 40834
..turnin 25575
..turnin 25577
..accept 25599
step
goto 30.7,41.7
.kill Cindermaul##40844 |q 25599/1
.click Battered Stone Chest##1387
.get Tome of Openings |q 25599/2
step
goto 26.3,41.9
.talk 40834
..turnin 25599
..accept 25600
step
goto 31.9,46.3
.' Click the Portal Runes |tip They are brown metal plates on the ground on this small circular island in the lava.
.' Lure Forgemaster Pyrendius onto the activated Portal Runes |tip This will weaken him and allow you to kill him.
.kill Forgemaster Pyrendius##40845 |q 25600/1
step
goto 26.3,41.9
.talk 40834
..turnin 25600
..accept 25612
step
goto 25.9,40.9 |n
.' Go inside the blue portal |goto 26.3,40.9,0.3 |noway |c
step
goto 28.4,29.9
.talk 39432
..turnin 25354
..turnin 25612
step
goto 28.4,29.8
.talk 46987
..accept 27874
step
goto 28.2,29.9
.talk 39434
..accept 25630
step
goto 19.0,40.9
.talk 39927
..turnin 25630
..accept 25381
..accept 25382
step
goto 19.2,37.9
.talk 39930
..accept 25385
step
goto 19.0,37.0
.talk 39928
..accept 25404
step
goto 19.6,36.4
.talk 41860
.fpath Grove of Aessina
step
goto 22.3,44.9
.talk 39933
..' Tell him you've been sent to request his aid, then tell him he could be destroyed, then ask him if he will help you
.' Persuade Blackhorn |q 25404/1
step
goto 22.3,44.9
.talk 39933
..turnin 25404
..accept 25408
step
goto 21.1,42.6
.from Wailing Weed##40066+
.get 8 Bileberry |q 25408/1
step
goto 22.3,44.9
.talk 39933
..turnin 25408
..accept 25411
step
goto 14.5,45.3
.from Twilight Inferno Lord##39974
.' Use your Bottled Bileberry Brew on the corpse of a Twilight Inferno Lord |use Bottled Bileberry Brew##53120
.' Subjugate a Twilight Inferno Lord |q 25411/1
step
'Next to you:
.talk 40093
..turnin 25411
..accept 25412
step
goto 14.3,45.4
.click Southern Firestone##9407
.' Examine the Southern Firestone |q 25412/3
step
goto 11.7,41.5
.click Central Firestone##9407
.' Examine the Central Firestone |q 25412/2
step
goto 9.6,36.5
.click Northern Firestone##9407
.' Examine the Northern Firestone |q 25412/1
step
goto 11.3,38.2
.kill 10 Raging Firestorm##39939+ |q 25381/1
.kill 6 Twilight Inferno Lord##39974+  |q 25382/1
.' Click Panicked Bunnies and Terrified Squirrels |tip They are small and run around this area.
.get 10 Frightened Animal |q 25385/1
'|modelnpc 39997
'|modelnpc 39998
step
goto 19.0,40.9
.talk 39927
..turnin 25381
..turnin 25382
step
goto 19.2,37.9
.talk 39930
..turnin 25385
..accept 25392
step
goto 22.3,44.9
.talk 39933
..turnin 25412
..accept 25428
step
goto 14.6,42.2
.' Use your Charred Branch while in the burning forest area |use Charred Branch##53464
.from Thol'embaar##40107
.get Black Heart of Thol'embaar |q 25428/1
step
goto 12.5,44.6
.click 3 Injured Fawn##39999+
.' Lead the Injured Fawns back to Mylune at [19.2,37.9]
.' Escort 3 Injured Fawns Home |q 25392/1
step
goto 19.2,37.9
.talk 39930
..turnin 25392
step
goto 22.3,44.9
.talk 39933
..turnin 25428
..accept 29066
step
goto 19.0,40.9
.talk 39927
..accept 25940
step
goto 19.0,37.0
.talk 39928
..turnin 29066
step
goto 13.7,32.8
.talk 39932
..turnin 25940
..accept 25462
step
goto 13.9,34.1
.clicknpc Climbing Tree##40190
.clicknpc Hyjal Bear Cub##40240+
.' Use your Climb Up ability to climb to the top of the tree
.' Use your Chuck-a-bear ability to throw the cubs down |tip Aim the yellow spot at the bearskin trampoline on the ground.
.' Rescue 6 Hyjal Bear Cubs |q 25462/1
step
goto 13.7,32.8
.talk 39932
..turnin 25462
..accept 25490
step
goto 16.4,51.8
.kill 8 Charbringer##40336+ |q 25490/1
step
goto 27.1,62.6
.talk 5769
..turnin 25490
..accept 25491
..accept 25493
step
goto 27.1,63.0
.talk 40331
..accept 25492
step
goto 34.0,53.2
.kill 10 Lava Surger##46911+ |q 25492/1
.from Core Hound##46910+
.get 4 Core Hound Entrails |q 25493/1
.click Scorched Soil##768
.get 10 Hyjal Seedling |q 25491/1
step
goto 41.2,42.6
.talk 43481
.fpath Shrine of Aviana
step
goto 42.2,45.4
.talk 41006
..accept 25655
..accept 25656
step
goto 44.4,46.2
.talk 41005
..turnin 27874
..accept 25663
step
goto 40.4,44.3
.' Use your Sacred Nectar next to Aviana's Burial Circle |use Sacred Nectar##55208
.' Offer the Nectar |q 25663/1
.talk 41068
..turnin 25663
..accept 25665
step
goto 36.9,43.4
.from Wormwing Screecher##41027+, Wormwing Swifttalon##41028+
.' Slay 10 Wormwing Harpies |q 25655/1
.click Stolen Hyjal Egg##1867+
.get 8 Hyjal Egg |q 25656/1
step
goto 42.2,45.4
.talk 41006
..turnin 25655
..turnin 25656
..accept 25731
step
goto 44.4,46.2
.talk 41005
..turnin 25665
..accept 25664
step
goto 38.4,44.2
.' Click the Harpy Signal Fire |tip It's a brazier with red fire in it.
.' Fight Marion Wormwing until she gets captured |q 25731/1
.talk 41112
..' Ask her why she is stealing eggs, then tell Thisalee to kill her
.' Interrogate Marion Wormwing |q 25731/2
step
goto 39.2,37.1
.' Use your Enormous Bird Call in Blaithe's Roost |use Enormous Bird Call##55211 |tip It's a huge bird nest sitting on top of this mountain peak.
.from Blaithe##41084
.get Ancient Feather |q 25664/1
step
goto 42.2,45.4
.talk 41006
..turnin 25731
step
goto 44.4,46.2
.talk 41005
..turnin 25664
step
goto 43.5,45.9
.' Go upstairs in the Shrine of Aviana
.talk 40997
..accept 25740
step
goto 27.1,62.6
.talk 5769
..turnin 25491
..turnin 25493
..accept 25507
step
goto 27.1,63.0
.talk 40331
..turnin 25492
..accept 25502
step
goto 33.0,64.6
.click Flameward##40460
.' Activate the Flameward |q 25502/1
.' Defend the Flameward |q 25502/2
step
goto 32.8,70.8
.talk 41006
..turnin 25740
..accept 25746
..accept 25758
step
goto 31.3,77.1
.click Codex of Shadows##470
..accept 25763
step
goto 30.9,76.7
.from Twilight Dragonkin##41029+, Twilight Dragonkin Armorers##41030+
.' Slay 12 Sethria's Minions |q 25746/1
.click Twilight Armor Plate##7041
.get 8 Twilight Armor Plate |q 25758/1
step
goto 32.8,70.8
.talk 41006
..turnin 25746
..turnin 25758
..accept 25761
..turnin 25763
..accept 25764
step
goto 31.1,76.7
.' Use Thisalee's Shive on Twilight Juggernauts |use Thisalee's Shiv##55883 |tip Use Thisalee's Shive multiple times to remove the Twilight Juggernauts' Armor Plating and make them weaker.
.kill 3 Twilight Juggernaut##41031 |q 25761/1
.click Shadow Cloak Generator##9532+
.' Unveil and Defend Aviana's Egg |q 25764/1
step
goto 32.8,70.8
.talk 41006
..turnin 25761
..turnin 25764
..accept 25776
step
goto 35.5,98.0
.from Sethria##41255
.' Use Thisalee's Signal Rocket when Sethria turns into a dragon |use Thisalee's Signal Rocket##56003
.kill Sethria##41255 |q 25776/1
step
goto 32.8,70.8
.talk 41006
..turnin 25776
..accept 25795
step
goto 37.4,52.3
.' Use your Heap of Core hound Innards near Nemesis |use Heap of Core hound Innards##54744 |tip Nemesis is a huge turtle that walks all around The Flamewake area, so you may need to search for him.
.clicknpc Nemesis##40340
.get Nemesis Shell Fragment |q 25507/1
step
goto 44.4,46.2
.talk 41005
..turnin 25795
..accept 25807
step
goto 44.3,47.9
.' Use Herald's Incense next to Aviana's Egg |use Herald's Incense##56016 |tip Aviana's Egg is in the tree tower, in a side room.
.' Burn Herald's Incense |q 25807/1
step
goto 44.3,48.0
.talk 41308
..turnin 25807
step
goto 44.1,45.9
.talk 41003
..accept 25810
step
goto 39.2,58.1 |n
.' Go inside the blue portal |goto 38.8,58.0,0.3 |noway |c
step
goto 37.2,56.2
.talk 40578
..turnin 25810
..accept 25523
step
goto 37.2,56.2
.click the Twilight Weapon Rack##130
.collect Twilight Firelance##52716 |q 25523
step
goto 37.4,56.0
.' Equip the Twilight Firelance |use Twilight Firelance##52716
.' Click Aviana's Guardian to ride it |invehicle |tip They are hippogryphs.
step
goto 36.4,53.2
.' Use your Flap ability on your hotbar repeatedly to fly to this green flag
.' Visit the Guardian Flag |q 25523/1
'|model 9475
step
goto 37.2,56.2
.' Use your Flap ability on your hotbar repeatedly to fly to this spot
.talk 40578
..turnin 25523
..accept 25525
step
goto 36.8,54.0
.' Use your Flap ability on your hotbar repeatedly to fly around this area
.' Fly into Twilight Buzzards to joust them
.kill 10 Twilight Knight Rider##39835+ |q 25525/1
step
goto 37.2,56.2
.' Use your Flap ability on your hotbar repeatedly to fly to this spot
.talk 40578
..turnin 25525
..accept 25544
step
goto 36.8,54.0
.' Use your Flap ability on your hotbar repeatedly to fly around this area
.' Fly into Twilight Firebirds to joust them |tip Be careful, don't let the burning Falling Boulders hit you.
.kill 10 Twilight Lancer##40660 |q 25544/1
step
goto 37.2,56.2
.' Use your Flap ability on your hotbar repeatedly to fly to this spot
.talk 40578
..turnin 25544
..accept 25560
step
goto 33.3,56.9
.' Use your Flap ability on your hotbar repeatedly to fly around this area
.' Run over Firelands Eggs |tip They look like blue eggs on the ground around this area.
.' Destroy 40 Firelands Eggs |q 25560/1
.' You can find more Firelands Eggs all around 35.8,53.6
step
goto 37.2,56.2
.' Use your Flap ability on your hotbar repeatedly to fly to this spot
.talk 40578
..turnin 25560
step
label "beaten"
goto Mount Hyjal,39.1,58.3 |n
.' Go inside the blue portal |goto 38.77,58.01,0.3 |noway |c
step
goto 37.2,56.2
.talk 40578
.accept 29177
step
goto 37.2,56.1
.click the Twilight Weapon Rack##130
.collect 1 Twilight Firelance##52716 |q 29177
step
goto 37.4,56.0
.' Equip the Twilight Firelance |use Twilight Firelance##52716
.' Click Aviana's Guardian to ride it |invehicle |tip They are hippogryphs.
step
goto 36.6,53.4
.' Use your Flap ability on your hotbar repeatedly to fly around this area
.kill 10 Twilight Lancer##40660+ |q 29177/1
step
goto 37.2,56.2
.talk 40578
.turnin 29177 |tip You may choose only one Jouster.
.collect Blue Mini Jouster##65661 |or
.collect Gold Mini Jouster##65662 |or
'|modeldisplay 31979
'|modeldisplay 31981
step
.learnpet Blue Mini Jouster##42177 |use Blue Mini Jouster##65661 |or
.learnpet Gold Mini Jouster##42183 |use Gold Mini Jouster##65662 |or
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Yellow Moth",[[
description This guide will walk you through obtaining
description the Flying pet:Yellow Moth
pet 140
step
goto The Cape of Stranglethorn/0 40.1,72.4
.talk 8123
.buy 1 Yellow Moth Egg##29903
.' These pets aren't available to the Horde by normal means.
.' Alternatively, you can purchase this from the Horde Auctioneer, although it may not be available.
'|modeldisplay 17798
step
.learnpet Yellow Moth##21008 |use Yellow Moth Egg##29903
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Blue Moth",[[
description This guide will walk you through obtaining
description the Flying pet:Blue Moth
pet 138
step
goto The Cape of Stranglethorn/0 40.1,72.4
.talk 8123
.buy 1 Blue Moth Egg##29901
.' These pets aren't available to the Horde by normal means.
.' Alternatively, you can purchase this from the Horde Auctioneer, although it may not be available.
'|modeldisplay 19771
step
.learnpet Blue Moth##21010 |use Blue Moth Egg##29901
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Bombay Cat",[[
description This guide will walk you through obtaining
description the Beast pet: Bombay Cat
pet 40
step
goto The Cape of Stranglethorn/0 40.1,72.4
.talk 8123
.buy 1 Cat Carrier (Bombay)##8485
.' These pets aren't available to the Horde by normal means.
.' Alternatively, you can purchase this from the Horde Auctioneer, although it may not be available.
'|modeldisplay 5556
step
.learnpet Bombay Cat##7385  |use Cat Carrier (Bombay)##8485
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Brown Prairie Dog",[[
description This guide will walk you through obtaining
description the Critter pet: Brown Prairie Dog
pet 70
step
goto Thunder Bluff 62.8,58.2
.talk 8401
.buy 1 Prarie Dog Whistle##10394
'|modeldisplay 1072
step
.learnpet Brown Prairie Dog##14421 |use Prarie Dog Whistle##10394
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Brown Snake",[[
description This guide will walk you through obtaining
description the Beast pet: Brown Snake
pet 77
step
goto Orgrimmar,33.0,67.4
.talk 8404
.buy 1 Brown Snake##10361
'|modeldisplay 2957
step
.learnpet Brown Snake##7562 |use Brown Snake##10361
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Clockwork Gnome",[[
description This guide will walk you through obtaining
description the Mechanical pet: Clockwork Gnome
pet 277
step
'This pet is a _rare Archaeology "Dwarf"_ solve
goto Orgrimmar,49.1,70.5 |only if skillmax("Archaeology")<1
.talk 47571 |only if skillmax("Archaeology")<1
.skillmax Archaeology,75 |only if skillmax("Archaeology")<1
.skill Archaeology,525
step
'Open your _world map_, find dig sites in _Eastern Kingdoms_, and go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
.' Use your Survey ability inside the dig site area |cast Survey##80451
.' A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 3 artifacts you can find.
.' Click the Archaeology Fragments that spawn on the ground
.' You're looking for a _rare artifact_ in the _"Dwarf"_ tab called _"Clockwork Gnome"_. Solve this Archaeology puzzle
.collect 1 Clockwork Gnome##64372
'|modeldisplay 28943
step
.learnpet Clockwork Gnome##48609 |use Clockwork Gnome##64372
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Clockwork Rocket Bot",[[
description This guide will walk you through obtaining
description the Mechanical pet: Clockwork Rocket Bot
pet 191
step
This pet can only be obtained during the Feast of Winter Veil Event.
|confirm always
step
goto Hillsbrad Foothills,42.3,41.1
.talk 13636
..accept 6983
step
goto Hillsbrad Foothills,43.6,39.0
.from The Abominable Greench##13602 |tip This will require a group to kill, but you do not have to be in a party.
.' Free Metzen the Reindeer |q 6983/1
.get Stolen Treats |q 6983/2 |tip You can pick this up if someone has killed The Abominable Grinch recently.
step
goto Orgrimmar,52.6,77.4
.talk 13418
..turnin 6983
..accept 6984
step
goto 49.6,78.0
.talk 13445
..turnin 6984
step
.learnpet Clockwork Rocket Bot##24968
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Crawling Claw",[[
description This guide will walk you through obtaining
description the Undead pet:Crawling Claw
pet 264
step
'This pet is a _rare Archaeology "Tol'vir"_ solve
goto Orgrimmar,49.1,70.5 |only if skillmax("Archaeology")<1
.talk 47571 |only if skillmax("Archaeology")<1
.skillmax Archaeology,75 |only if skillmax("Archaeology")<1
.skill Archaeology,525
step
'Open your _world map_, find dig sites in _Kalimdor_, and go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
.' Use your Survey ability inside the dig site area |cast Survey##80451
.' A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 3 artifacts you can find.
.' Click the Archaeology Fragments that spawn on the ground
.' You're looking for a _rare artifact_ in the _"Tol'vir"_ tab called _"Crawling Claw"_. Solve this Archaeology puzzle
.collect 1 Crawling Claw##60847
'|modeldisplay 34262
step
.learnpet Crawling Claw##45128 |use Crawling Claw##60847
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Cornish Rex Cat",[[
description This guide will walk you through obtaining
description the Beast pet: Cornish Rex Cat
pet 41
step
goto The Cape of Stranglethorn/0 40.1,72.4
.talk 8123
.buy 1 Cat Carrier (Cornish Rex)##8486
.' These pets aren't available to the Horde by normal means.
.' Alternatively, you can purchase this from the Horde Auctioneer, although it may not be available.
'|modeldisplay 5586
step
.learnpet Cornish Rex Cat##7384 |use Cat Carrier (Cornish Rex)##8486
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Creepy Crate",[[
description This guide will walk you through obtaining
description the Undead pet:Creepy Crate
pet 321
step
'This pet can only be obtained during the Hallow's End festival
.' Click here to continue |confirm
step
#include "Hallows_End_Quests_Horde"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Crimson Snake",[[
description This guide will walk you through obtaining
description the Beast pet: Crimson Snake
pet 78
step
goto Orgrimmar,33.0,67.4
.talk 8404
.buy 1 Crimson Snake##10392
'|modeldisplay 6303
step
.learnpet Crimson Snake##7567 |use Crimson Snake##10392
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Dark Phoenix Hatchling",[[
description This guide will walk you through obtaining
description the Elemental pet: Dark Phoenix Hatchling
pet 270
step
#include misc_rep_mount,rep="Guild"
.' Your _guild_ needs have the achievement _"United Nations"_ |tip Only 1 person in your guild needs to have 55 Exalted reputations
.' _55 Exalted Reputations_ |achieve 5892
step
goto Orgrimmar,48.38,75.79
.talk 46572
.buy 1 Dark Phoenix Hatchling##63138
'|modeldisplay 37136
step
.learnpet Dark Phoenix Hatchling##47944 |use Dark Phoenix Hatchling##63138
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Dun Morogh Cub",[[
description This guide will walk you through obtaining
description the Beast pet: Dun Morogh Cub
pet 205
step
goto The Cape of Stranglethorn/0 40.1,72.4
.talk 8123
.buy 1 Dun Morogh Cub##44970
.' These pets aren't available to the Horde by normal means.
.' Alternatively, you can purchase this from the Horde Auctioneer, although it may not be available.
'|modeldisplay 28489
step
.learnpet Dun Morogh Cub##33194 |use Dun Morogh Cub##44970
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Durotar Scorpion",[[
description This guide will walk you through obtaining
description the Beast pet: Durotar Scorpion
pet 207
step
'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are an Orc.
|confirm always
step
.' Proceeding to Pre Quests. |next |only if default
.' Click here Aspirant Rank Daily quests. |next "Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Argent Tournament Grounds Aspirant Rank Dailies. Includes Pre-Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
.' Click here for |next "Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Argent Tournament Grounds Valiant Rank Dailies" |confirm |only if ZGV.guidesets["DailiesHCATA"]
.' Click here if you are already at the rank of Champion. |next buy |confirm
step
goto Icecrown,72.6,22.6
.talk 33849
..fpath Argent Tournament Grounds
step
goto Icecrown,69.7,22.9
.talk 33817
..accept 13668
step
goto 76.3,24.4
.talk 33542
..turnin 13668
..accept 13829
step
goto 76.3,24.4
.talk 33658
..accept 13839
step
goto 76.2,24.4
.talk 33659
..accept 13838
step
goto 75.6,23.7
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Sunreaver Hawkstrider|invehicle|q 13829
step
goto 72.5,19.3
.talk 33973
.' Listen to Jeran Lockwood's advice|q 13829/1
step
goto 72.7,18.9
.talk 33972
.' Listen to Rugan Steelbelly's advice|q 13839/1
step
goto 73.2,19.2
.talk 33974
.' Listen to Valis Windchaser's advice|q 13838/1
step
goto 73.1,19.0
.' Target a Ranged Target from a distance
.' Use Shield-Breaker ability on Ranged Target to bring it's shields down
.' Use Shield-Breaker ability on Ranged Target twice, while it's shields are down|q 13838/2
step
goto 72.9,18.8
.' Target a Charge Target from a distance
.' Use Shield-Breaker ability until you notice the targets Defend is gone
.' Use your Charge ability on the Charge Target 2 times|q 13839/2
step
goto 72.6,19.7
.' Target a Melee Target
.' If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
.' Use your Thrust ability to attack the target 5 times|q 13829/2
step
'Click the red arrow on your hotbar to stop riding the bird mount|outvehicle|q 13829
step
goto 76.3,24.4
.talk 33542
..turnin 13829
step
goto 76.3,24.4
.talk 33658
..turnin 13839
step
goto 76.2,24.4
.talk 33659
..turnin 13838
step
label buy
goto Icecrown,76.5,24.6
.talk 33361
..accept 13707
..turnin 13707
..accept 13697
step
goto 76.5,24.6
.talk 33361
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13762 |or
..accept 13763 |or
..accept 13764 |or
step
goto 76.5,24.5
.talk 33405
..accept 13765
step
goto 76.4,24.6
.talk 33544
..accept 13767
..accept 13856
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13762/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13763
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13763/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13764
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13764/1
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13856
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13856/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13856/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13856/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on them to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13856
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13765/1
step
goto 75.5,24.0
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Orgrimmar Wolf|invehicle |q 13767
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13767/1
step
goto 76.5,24.6
.talk 33361
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13762
..turnin 13763
..turnin 13764
step
goto 76.5,24.5
.talk 33405
..turnin 13765
step
goto 76.4,24.6
.talk 33544
..turnin 13767
..turnin 13856
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13697/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.5,24.6
.talk 33361
..turnin 13697
..accept 13726
step
goto 72.2,22.5
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Orgrimmar Wolf|invehicle |q 13726
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13726/1
step
goto 76.5,24.6
.talk 33361
..turnin 13726
step
.' Become a Champion of Orgrimmar |achieve 2783
.earn 40 Champion's Seal##241+
.' If you don't meet both of these requirements go back to step 1 of the guide.
step
goto Icecrown,76.4,24.2
.talk 33553
.buy 1 Durotar Scorpion##44973
'|modeldisplay 32055
step
.learnpet Durotar Scorpion##33198 |use Durotar Scorpion##44973
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Egbert",[[
description This guide will walk you through obtaining
description the Critter pet: Egbert
pet 158
step
'You may only get _three_ of these pets _per year_ from _completing_ the quest lines _Back to the Orphanage (Shattrath)_, _Warden of the Horde_, and _Back to the Orphanage (Dalaran)_
.' If you are aligned with the Oracles, click here for their Children's Week Daily set. |next "Zygor's Horde Events Guides\\Children's Week\\Children's Week Dalaran Oracles Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
.' If you are aligned with the Wolvar, click here for their Children's Week Daily set. |next "Zygor's Horde Events Guides\\Children's Week\\Children's Week Dalaran Wolvar Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
.' For the Shattrath Daily set, click here. |next "Zygor's Horde Events Guides\\Children's Week\\Children's Week Shattrath Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
|confirm
step
.collect 1 Egbert's Egg##32616 |tip Warden of the Horde
'|modeldisplay 21382
step
.learnpet Egbert##23258 |use Egbert's Egg##32616 |tip Warden of the Horde
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Elwynn Lamb",[[
description This guide will walk you through obtaining
description the Critter pet: Elwynn Lamb
pet 209
step
goto The Cape of Stranglethorn/0 40.1,72.4
.talk 8123
.buy 1 Elwynn Lamb##44974
.' These pets aren't available to the Horde by normal means.
.' Alternatively, you can purchase this from the Horde Auctioneer, although it may not be available.
'|modeldisplay 16205
step
.learnpet Elwynn Lamb##33200 |use Elwynn Lamb##44974
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Enchanted Broom",[[
description This guide will walk you through obtaining
description the Magic pet: Enchanted Broom
pet 213
step
'In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.
.' You cannot complete this section if you are a Blood Elf.
|confirm always
step
.' Proceeding to Pre Quests. |next |only if default
.' Click here Aspirant Rank Daily quests. |next "Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Argent Tournament Grounds Aspirant Rank Dailies. Includes Pre-Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
.' Click here for |next "Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Argent Tournament Grounds Valiant Rank Dailies" |confirm |only if ZGV.guidesets["DailiesHCATA"]
.' Click here if you are already at the rank of Champion. |next buy |confirm
step
goto Icecrown,72.6,22.6
.talk 33849
..fpath Argent Tournament Grounds
step
goto Icecrown,69.7,22.9
.talk 33817
..accept 13668
step
goto 76.3,24.4
.talk 33542
..turnin 13668
..accept 13829
step
goto 76.3,24.4
.talk 33658
..accept 13839
step
goto 76.2,24.4
.talk 33659
..accept 13838
step
goto 75.6,23.7
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Sunreaver Hawkstrider|invehicle|q 13829
step
goto 72.5,19.3
.talk 33973
.' Listen to Jeran Lockwood's advice|q 13829/1
step
goto 72.7,18.9
.talk 33972
.' Listen to Rugan Steelbelly's advice|q 13839/1
step
goto 73.2,19.2
.talk 33974
.' Listen to Valis Windchaser's advice|q 13838/1
step
goto 73.1,19.0
.' Target a Ranged Target from a distance
.' Use Shield-Breaker ability on Ranged Target to bring it's shields down
.' Use Shield-Breaker ability on Ranged Target twice, while it's shields are down|q 13838/2
step
goto 72.9,18.8
.' Target a Charge Target from a distance
.' Use Shield-Breaker ability until you notice the targets Defend is gone
.' Use your Charge ability on the Charge Target 2 times|q 13839/2
step
goto 72.6,19.7
.' Target a Melee Target
.' If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
.' Use your Thrust ability to attack the target 5 times|q 13829/2
step
'Click the red arrow on your hotbar to stop riding the bird mount|outvehicle|q 13829
step
goto 76.3,24.4
.talk 33542
..turnin 13829
step
goto 76.3,24.4
.talk 33658
..turnin 13839
step
goto 76.2,24.4
.talk 33659
..turnin 13838
step
label buy
goto Icecrown,76.5,23.9
.talk 33379
..accept 13711
..turnin 13711
..accept 13722
step
goto 76.5,23.9
.talk 33379
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13783 |or
..accept 13784 |or
..accept 13785 |or
step
goto 76.4,23.8
.talk 33538
..accept 13786
step
goto 76.5,23.9
.talk 33548
..accept 13787
..accept 13859
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..' Tell her you are glad to help
.get Ashwood Brand |q 13783/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13784
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13784/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13785
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13785/1
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13859
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13859/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13859/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13859/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13859
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13786/1
step
goto 75.5,24.1
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Silvermoon Hawkstrider|invehicle |q 13787
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13787/1
step
goto 76.5,23.9
.talk 33379
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13783
..turnin 13784
..turnin 13785
step
goto 76.4,23.8
.talk 33538
..turnin 13786
step
goto 76.5,23.9
.talk 33548
..turnin 13787
..turnin 13859
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13722/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.5,23.9
.talk 33379
..turnin 13722
..accept 13731
step
goto 72.2,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Silvermoon Hawkstrider|invehicle |q 13731
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13731/1
step
goto 76.5,23.9
.talk 33379
..turnin 13731
step
.' Become a Champion of Silvermoon City |achieve 2785
.earn 40 Champion's Seal##241+
.' If you don't meet both of these requirements go back to step 1 of the guide.
step
goto Icecrown,76.2,23.8
.talk 33557
.buy 1 Enchanted Broom##44982
'|modeldisplay 16910
step
.learnpet Enchanted Broom##33227 |use Enchanted Broom##44982
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Enchanted Lantern",[[
description This guide will walk you through obtaining
description the Magic pet: Enchanted Lantern
pet 267
step
'Skipping to the next step |next |only if skill("Enchanting")<525
goto Orgrimmar,53.2,48.8 |only if skill("Enchanting")>=525
.talk 3346 |only if skill("Enchanting")>=525
.buy 1 Formula: Enchanted Lantern##67308 |only if skill("Enchanting")>=525
.' Click here if you do not wish to make this pet yourself |confirm |only if skill("Enchanting")>=525
step
'You can either _buy_ this _pet_ from the _Auction House_ or craft it:
.collect 1 Enchanted Lantern##67274 |next "bought"
.' Click here to craft this pet |confirm
step
'You can either _buy_ these _materials_ from the _ Auction House_ or _disenchant gear_ to obtain them:
.collect 8 Heavenly Shard##52721+
.collect 4 Greater Celestial Essence##52719+
.collect 1 Maelstrom Crystal##52722
.' Click here if you have the means to farm these materials yourself. |confirm
|next farmed |only if default
|modeldisplay 36901
step
.' Farm Maelstrom Crystals from the dungeons _Zul'Aman, End Time, Zul'Gurub, Hour of Twilight and Well of Eternity_.
.' Breaking down Maelstrom Crystals will net you 2 Heavenly Shards.
.' Use _Maelstrom Shatter_ on Maelstrom Crystals to attain Heavenly Shards. |cast Maelstorm Shatter##104698
.collect 8 Heavenly Shard##52721+
step
.' Farm Maelstrom Crystals from the dungeons _Zul'Aman, End Time, Zul'Gurub, Hour of Twilight and Well of Eternity_.
.collect 1 Maelstrom Crystal##52722
step
.' Cataclysm ranked green _Weapons_ will net you Greater Celestial Essences.
.' Farm Greater Celestial Essence from the normal enemies in dungeons _Zul'Aman, End Time, Zul'Gurub, Hour of Twilight and Well of Eternity_.
.collect 4 Greater Celestial Essence##52719+
step
label farmed
'Have an _Enchanter make this pet_ for you |tip Ask in your guild or in Trade Chat |only if _G.IsSpellKnown(93841)==false
.create Enchanted Lantern##93841,Enchanting,1 total |only if _G.IsSpellKnown(93841)==true
.collect 1 Enchanted Lantern##67274
'|modeldisplay 36902
step
label "bought"
.learnpet Enchanted Lantern##46898 |use Enchanted Lantern##67274
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Father Winter's Helper",[[
description This guide will walk you through obtaining
description the Humanoid pet: Father Winter's Helper
pet 119
step
'These _pets_ are _only availiable_ during the _Winter Veil_ Holiday
.' Receive _Gaily Wrapped Presents_ by clicking the presents _underneath the Christmas Tree_ in _Orgrimmar_
|use Gaily Wrapped Present##21310
.collect 1 Green Helper Box##21301
'|modeldisplay 15795
step
.learnpet Father Winter's Helper##15698 |use Green Helper Box##21301
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Rotten Little Helper",[[
description This guide will walk you through obtaining
description the Humanoid pet:Rotten Little Helper
pet 1349
step
'These _pets_ are _only availiable_ during the _Winter Veil_ Holiday
.' Receive _Gaily Wrapped Presents_ by clicking the presents _underneath the Christmas Tree_ in _Orgrimmar_
|use Gaily Wrapped Present##21310
.collect 1 Rotten Helper Box##104317
'|modeldisplay 51505
step
.learnpet Rotten Little Helper##73741 |use Rotten Helper Box##104317
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Feline Familiar",[[
description This guide will walk you through obtaining
description the Beast pet: Feline Familiar
pet 319
step
'This pet can only be obtained during the Hallows End event.
.collect 150 Tricky Treat##33226
step
goto Undercity,67.8,6.8
.talk 53757
.buy Feline Familiar##70908
|modeldisplay 38539
step
.learnpet Feline Familiar##53884 |use Feline Familiar##70908
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Festival Lantern",[[
description This guide will walk you through obtaining
description the Magic pet: Festival Lantern
pet 342
step
'This pet can only be obtained during the Lunar Festival event.
.collect 50 Coin of Ancestry##21100
'Click here for directions to the vendor |confirm |next "vendor"
'Click here for our guide on getting the Coins of Ancestry |confirm |next "coins"
step
label "coins"
#include "H_Lunar_Festival_Quests"
step
#include "H_Lunar_Festival_Elders"
step
label "vendor"
goto Moonglade,54.0,35.0
.talk 15864
.buy Festival Lantern##74611
|modeldisplay 39333
step
.learnpet Festival Lantern##55574 |use Festival Lantern##74611
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Fossilized Hatchling",[[
description This guide will walk you through obtaining
description the Undead pet: Fossilized Hatchling
pet 266
step
'This pet is a _rare Archaeology "Fossil"_ solve
goto Orgrimmar,49.1,70.5 |only if skillmax("Archaeology")<1
.talk 47571 |only if skillmax("Archaeology")<1
.skillmax Archaeology,75 |only if skillmax("Archaeology")<1
|confirm |only if default
step
'Open your _world map_, find dig sites in _Kalimdor_ and _Eastern Kingdoms_, and go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
.' Use your Survey ability inside the dig site area |cast Survey##80451
.' A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 3 artifacts you can find.
.' Click the Archaeology Fragments that spawn on the ground
.' You're looking for a _rare artifact_ in the _"Fossil"_ tab called _"Fossilized Hatchling"_. Solve this Archaeology puzzle
.collect 1 Fossilized Hatchling##60955
'|modeldisplay 34413
step
.learnpet Fossilized Hatchling##45340 |use Fossilized Hatchling##60955
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Gilnean Raven",[[
description This guide will walk you through obtaining
description the Flying pet: Gilnean Raven
pet 630
step
'This pet is only available to _Alliance_ characters.
.learnpet Gilnean Raven##63098
|modeldisplay 42872
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Gold Mini Jouster",[[
description This guide will walk you through obtaining
description the Flying pet: Gold Mini Jouster
pet 260
step
.' Going to _Egg Wave_ |only if not completedq(25560) |next "eggwave"
.' Going to _The 'Unbeatable?' Pterodactyl: BEATEN._ |next "beaten" |only if completedq(25560)
step
label "eggwave"
goto Orgrimmar,49.7,76.5
.click Warchief's Command Board##10014
..accept 27721
.' You will automatically accept a quest by entering Orgrimmar
..accept 28790
step
goto 50.5,38.4
.talk 45244
..turnin 28790
..accept 28805
step
goto 50.8,37.8
.clicknpc Waters of Farseeing##50088
.' Witness the Vision of the Farseer |q 28805/1
step
goto 50.5,38.4
.talk 45244
..turnin 28805
step
goto 39.9,50.9
.talk 15188
..' Ask him to please send you to Moonglade
.' You will teleport to Moonglade |goto Moonglade,45.1,43.1,0.5 |noway |c
step
goto Moonglade,45.5,44.9
.talk 39865
..turnin 27721
..accept 25316
step
goto Mount Hyjal,63.1,24.1
.talk 40843
.home Nordrassil
step
goto 62.0,24.9
.talk 40928
..turnin 25316
..accept 25317
step
goto 62.1,21.6
.talk 41861
.fpath Nordrassil
step
goto 64.0,22.6
.talk 39925
..accept 25460
step
goto 64.0,22.5
.talk 40278
..accept 25370
step
goto 65.8,20.8
.kill 8 Scalding Rock Elemental##40229+ |q 25460/1
.click Juniper Berries##28+
.collect 4 Juniper Berries##53009 |n
.' Use your Juniper Berries on Faerie Dragons |use Juniper Berries##53009 |tip They look like small blue flying dragons around this area.
.' Follow the Faerie Dragons to find Twilight Inciters
.kill 4 Twilight Inciter##39926+  |q 25370/1
step
goto 64.0,22.5
.talk 40278
..turnin 25370
..accept 25574
step
goto 64.0,22.6
.talk 39925
..turnin 25460
step
goto 55.9,15.8
.' Use Tholo's Horn to call for an emerald dragon |use Tholo's Horn##55122
.' Burn the Infiltrators' Encampment |q 25574/1
step
goto 64.0,22.5
.talk 40278
..turnin 25574
step
goto 47.7,35.5
.talk 15362
..turnin 25317
..accept 25319
step
goto 47.7,35.5
.talk 39869
..accept 25472
step
goto 47.2,25.6
.kill 4 Twilight Flamecaller##38926+ |q 25319/1
.kill 10 Twilight Vanquisher##38913+ |q 25319/2
.click Charred Staff Fragment##758+
.get 8 Charred Staff Fragment |q 25472/1
step
goto 47.7,35.5
.talk 15362
..turnin 25319
..turnin 25472
..accept 25323
step
goto 44.7,33.2
.' Use your Flameseer's Staff on Blazebound Revenants |use Flameseer's Staff##53107
.kill 30 Unbound Flame Spirit##40080 |q 25323/1
.' You can find more Blazebound Revenants at [48.5,29.2]
step
goto 47.7,35.5
.talk 15362
..turnin 25323
..accept 25464
step
goto 44.1,27.0
.' Use your Flameseer's Staff on Baron Geddon |use Flameseer's Staff##54463 |tip He's a big fire elemental standing in the middle of this crater.
.' Weaken Baron Geddon 20 Times |q 25464/1 |tip Run away when you see Galrond of the Claw yell "Look out!".
step
goto 47.7,35.5
.talk 15362
..turnin 25464
step
goto 47.7,35.5
.talk 39869
..accept 25430
step
goto 48.4,19.0
.talk 38917
..turnin 25430
..accept 25320
step
goto 44.5,18.9
.talk 40096
..turnin 25320
..accept 25321
step
goto 44.4,20.7
.from Twilight Overseer##40123
.get Twilight Overseer's Key |q 25321/1
step
goto 44.5,18.9
.talk 40096
..turnin 25321
..accept 25424
step
goto 48.4,19.0
.talk 38917
..turnin 25424
..accept 25324
step
goto 52.6,17.3 |n
.' Enter the cave |goto 52.6,17.3,0.5 |noway |c
step
goto 56.8,18.8
.' Follow the path in the cave
.talk 40139
..turnin 25324
..accept 25325
step
goto 52.6,17.3 |n
.' Leave the cave
.' Deliver Arch Druid Fandral Staghelm |q 25325/1
step
goto 52.2,17.4
.talk 40178
..turnin 25325
..accept 25578
step
goto 62.0,24.9
.talk 40928
..turnin 25578
..accept 25584
step
goto 35.7,19.4
.talk 39429
..turnin 25584
..accept 25255
step
goto 35.8,19.7
.talk 39427
..accept 25233
..accept 25234
step
goto 34.6,24.5
.kill 6 Twilight Hunter##39437 |q 25255/1
.kill 4 Twilight Proveditor##39436 |q 25233/1 |tip They walk with 3 Twilight slaves and a Twilight Slavedriver.
.click Twilight Supplies##9379+
.get 36 Twilight Supplies |q 25234/1
step
goto 35.8,19.7
.talk 39427
..turnin 25233
..turnin 25234
step
goto 35.7,19.4
.talk 39429
..turnin 25255
..accept 25269
step
goto 30.1,31.7
.talk 39432
..turnin 25269
..accept 25270
step
goto 29.0,31.4
.from Lycanthoth Vandal##39445+
.get 6 Polluted Incense |q 25270/1
step
goto 30.1,31.7
.talk 39432
..turnin 25270
..accept 25272
step
goto 32.4,37.3
.' Use Lycanthoth's Incense next to Lycanthoth's Altar |use Lycanthoth's Incense##52682 |tip Inside the cave.
.kill Lycanthoth##39446 |q 25272/1
step
goto 32.5,37.4
.talk 39622
..turnin 25272
step
goto 29.6,29.3
.talk 39622
..accept 25279
step
goto 28.4,29.9
.talk 39432
..turnin 25279
..accept 25277
step
goto 28.3,30.0
.talk 39435
..accept 25300
step
goto 28.2,29.9
.talk 39434
..accept 25297
step
goto 28.9,32.1
.click Bitterblossom##7444
.get Bitterblossom |q 25297/2
step
goto 26.5,35.0
.click a Stonebloom##9386
.get Stonebloom |q 25297/1
step
goto 27.2,35.2
.click Eye of Twilight##7011
..turnin 25300
..accept 25301
step
goto 28.4,35.8
.click Darkflame Ember##9569
.get Darkflame Ember |q 25297/3
step
goto 28.4,36.5
.click Twilight Cauldron##9387
..turnin 25297
..accept 25298
step
goto 26.9,36.3 |n
.' Enter the cave |goto 26.9,36.3,0.5 |noway |c
step
goto 27.2,40.8
.talk 39797
..accept 25328 |tip This quest is currently bugged, so some players are able to accept the quest while others cannot.
step
goto 26.5,38.5
.click Gar'gol's Personal Treasure Chest##10
.get Rusted Skull Key |q 25328/1
step
goto 25.8,41.6
.click The Twilight Apocrypha##470
..turnin 25301
..accept 25303
step
goto 26.0,41.8
.clicknpc Crucible of Fire##39730
.' Activate the Crucible of Fire |q 25303/3
step
goto 25.6,41.7
.clicknpc Crucible of Earth##39737
.' Activate the Crucible of Earth |q 25303/1
step
goto 25.8,41.9
.clicknpc Crucible of Air##39736
.' Activate the Crucible of Air |q 25303/2
step
goto 26.0,41.6
.clicknpc Crucible of Water##39738
.' Activate the Crucible of Water |q 25303/4
step
goto 25.8,41.6
.click The Twilight Apocrypha##470
..turnin 25303
..accept 25312
step
goto 26.7,39.2
.from Hovel Brute##39642+, Hovel Shadowcaster##39643+
.' Slay 8 Minions of Gar'gol |q 25277/1
.talk 39644
..' Administor the drought
.' Free 8 Twilight Servitors |q 25298/1
step
goto 27.2,40.8
.talk 39797
..turnin 25328
..accept 25332
step
goto 27.1,36.0 |n
.' Leave the cave
.' Escort Kristoff Out |q 25332/1
step
goto 28.6,30.2
.talk 39435
..turnin 25312
..turnin 25332
step
goto 28.4,29.9
.talk 39432
..turnin 25277
..accept 25354
..accept 25355
step
goto 28.2,29.9
.talk 39434
..turnin 25298
step
goto 29.1,40.7
.kill 8 Twilight Stormcaller##39843+ |q 25354/1
.kill 5 Howling Riftdweller##39844+ |q 25354/2
.click Lightning Channel##9816
..get Charged Condenser Jar |q 25355/1
step
'Use your Totem of Lo'Gosh |use Totem of Lo'Gosh##52854
.talk 39622
..turnin 25355
..accept 25617
step
goto 26.2,41.0 |n
.' Go inside the blue portal |goto 25.8,41.5,0.3 |noway |c
step
goto 26.3,41.9
.talk 40834
..turnin 25617
..accept 25575
..accept 25577
step
goto 26.3,42.0
.talk 40837
..accept 25576
step
goto 29.6,41.8
.kill 12 Dark Iron Laborer##40838+ |q 25576/1
.from Searing Guardian##40841+
.collect 8 Smoldering Core##55123 |n
.' Use your Smoldering Cores next to Twilight Anvils |use Smoldering Core##55123 |tip They are small anvils sitting on the ground around this area.
.' Destroy 8 Smoldering Cores |q 25577/1
.' Click Twilight Arms Crates |tip They look like wooden boxes sitting on the ground around this area.
.' Destroy 10 Twilight Arms Crates |q 25575/1
step
goto 26.3,42.0
.talk 40837
..turnin 25576
step
goto 26.3,41.9
.talk 40834
..turnin 25575
..turnin 25577
..accept 25599
step
goto 30.7,41.7
.kill Cindermaul##40844 |q 25599/1
.click Battered Stone Chest##1387
.get Tome of Openings |q 25599/2
step
goto 26.3,41.9
.talk 40834
..turnin 25599
..accept 25600
step
goto 31.9,46.3
.' Click the Portal Runes |tip They are brown metal plates on the ground on this small circular island in the lava.
.' Lure Forgemaster Pyrendius onto the activated Portal Runes |tip This will weaken him and allow you to kill him.
.kill Forgemaster Pyrendius##40845 |q 25600/1
step
goto 26.3,41.9
.talk 40834
..turnin 25600
..accept 25612
step
goto 25.9,40.9 |n
.' Go inside the blue portal |goto 26.3,40.9,0.3 |noway |c
step
goto 28.4,29.9
.talk 39432
..turnin 25354
..turnin 25612
step
goto 28.4,29.8
.talk 46987
..accept 27874
step
goto 28.2,29.9
.talk 39434
..accept 25630
step
goto 19.0,40.9
.talk 39927
..turnin 25630
..accept 25381
..accept 25382
step
goto 19.2,37.9
.talk 39930
..accept 25385
step
goto 19.0,37.0
.talk 39928
..accept 25404
step
goto 19.6,36.4
.talk 41860
.fpath Grove of Aessina
step
goto 22.3,44.9
.talk 39933
..' Tell him you've been sent to request his aid, then tell him he could be destroyed, then ask him if he will help you
.' Persuade Blackhorn |q 25404/1
step
goto 22.3,44.9
.talk 39933
..turnin 25404
..accept 25408
step
goto 21.1,42.6
.from Wailing Weed##40066+
.get 8 Bileberry |q 25408/1
step
goto 22.3,44.9
.talk 39933
..turnin 25408
..accept 25411
step
goto 14.5,45.3
.from Twilight Inferno Lord##39974
.' Use your Bottled Bileberry Brew on the corpse of a Twilight Inferno Lord |use Bottled Bileberry Brew##53120
.' Subjugate a Twilight Inferno Lord |q 25411/1
step
'Next to you:
.talk 40093
..turnin 25411
..accept 25412
step
goto 14.3,45.4
.click Southern Firestone##9407
.' Examine the Southern Firestone |q 25412/3
step
goto 11.7,41.5
.click Central Firestone##9407
.' Examine the Central Firestone |q 25412/2
step
goto 9.6,36.5
.click Northern Firestone##9407
.' Examine the Northern Firestone |q 25412/1
step
goto 11.3,38.2
.kill 10 Raging Firestorm##39939+ |q 25381/1
.kill 6 Twilight Inferno Lord##39974+  |q 25382/1
.' Click Panicked Bunnies and Terrified Squirrels |tip They are small and run around this area.
.get 10 Frightened Animal |q 25385/1
'|modelnpc 39997
'|modelnpc 39998
step
goto 19.0,40.9
.talk 39927
..turnin 25381
..turnin 25382
step
goto 19.2,37.9
.talk 39930
..turnin 25385
..accept 25392
step
goto 22.3,44.9
.talk 39933
..turnin 25412
..accept 25428
step
goto 14.6,42.2
.' Use your Charred Branch while in the burning forest area |use Charred Branch##53464
.from Thol'embaar##40107
.get Black Heart of Thol'embaar |q 25428/1
step
goto 12.5,44.6
.click 3 Injured Fawn##39999+
.' Lead the Injured Fawns back to Mylune at [19.2,37.9]
.' Escort 3 Injured Fawns Home |q 25392/1
step
goto 19.2,37.9
.talk 39930
..turnin 25392
step
goto 22.3,44.9
.talk 39933
..turnin 25428
..accept 29066
step
goto 19.0,40.9
.talk 39927
..accept 25940
step
goto 19.0,37.0
.talk 39928
..turnin 29066
step
goto 13.7,32.8
.talk 39932
..turnin 25940
..accept 25462
step
goto 13.9,34.1
.clicknpc Climbing Tree##40190
.clicknpc Hyjal Bear Cub##40240+
.' Use your Climb Up ability to climb to the top of the tree
.' Use your Chuck-a-bear ability to throw the cubs down |tip Aim the yellow spot at the bearskin trampoline on the ground.
.' Rescue 6 Hyjal Bear Cubs |q 25462/1
step
goto 13.7,32.8
.talk 39932
..turnin 25462
..accept 25490
step
goto 16.4,51.8
.kill 8 Charbringer##40336+ |q 25490/1
step
goto 27.1,62.6
.talk 5769
..turnin 25490
..accept 25491
..accept 25493
step
goto 27.1,63.0
.talk 40331
..accept 25492
step
goto 34.0,53.2
.kill 10 Lava Surger##46911+ |q 25492/1
.from Core Hound##46910+
.get 4 Core Hound Entrails |q 25493/1
.click Scorched Soil##768
.get 10 Hyjal Seedling |q 25491/1
step
goto 41.2,42.6
.talk 43481
.fpath Shrine of Aviana
step
goto 42.2,45.4
.talk 41006
..accept 25655
..accept 25656
step
goto 44.4,46.2
.talk 41005
..turnin 27874
..accept 25663
step
goto 40.4,44.3
.' Use your Sacred Nectar next to Aviana's Burial Circle |use Sacred Nectar##55208
.' Offer the Nectar |q 25663/1
.talk 41068
..turnin 25663
..accept 25665
step
goto 36.9,43.4
.from Wormwing Screecher##41027+, Wormwing Swifttalon##41028+
.' Slay 10 Wormwing Harpies |q 25655/1
.click Stolen Hyjal Egg##1867+
.get 8 Hyjal Egg |q 25656/1
step
goto 42.2,45.4
.talk 41006
..turnin 25655
..turnin 25656
..accept 25731
step
goto 44.4,46.2
.talk 41005
..turnin 25665
..accept 25664
step
goto 38.4,44.2
.' Click the Harpy Signal Fire |tip It's a brazier with red fire in it.
.' Fight Marion Wormwing until she gets captured |q 25731/1
.talk 41112
..' Ask her why she is stealing eggs, then tell Thisalee to kill her
.' Interrogate Marion Wormwing |q 25731/2
step
goto 39.2,37.1
.' Use your Enormous Bird Call in Blaithe's Roost |use Enormous Bird Call##55211 |tip It's a huge bird nest sitting on top of this mountain peak.
.from Blaithe##41084
.get Ancient Feather |q 25664/1
step
goto 42.2,45.4
.talk 41006
..turnin 25731
step
goto 44.4,46.2
.talk 41005
..turnin 25664
step
goto 43.5,45.9
.' Go upstairs in the Shrine of Aviana
.talk 40997
..accept 25740
step
goto 27.1,62.6
.talk 5769
..turnin 25491
..turnin 25493
..accept 25507
step
goto 27.1,63.0
.talk 40331
..turnin 25492
..accept 25502
step
goto 33.0,64.6
.click Flameward##40460
.' Activate the Flameward |q 25502/1
.' Defend the Flameward |q 25502/2
step
goto 32.8,70.8
.talk 41006
..turnin 25740
..accept 25746
..accept 25758
step
goto 31.3,77.1
.click Codex of Shadows##470
..accept 25763
step
goto 30.9,76.7
.from Twilight Dragonkin##41029+, Twilight Dragonkin Armorers##41030+
.' Slay 12 Sethria's Minions |q 25746/1
.click Twilight Armor Plate##7041
.get 8 Twilight Armor Plate |q 25758/1
step
goto 32.8,70.8
.talk 41006
..turnin 25746
..turnin 25758
..accept 25761
..turnin 25763
..accept 25764
step
goto 31.1,76.7
.' Use Thisalee's Shive on Twilight Juggernauts |use Thisalee's Shiv##55883 |tip Use Thisalee's Shive multiple times to remove the Twilight Juggernauts' Armor Plating and make them weaker.
.kill 3 Twilight Juggernaut##41031 |q 25761/1
.click Shadow Cloak Generator##9532+
.' Unveil and Defend Aviana's Egg |q 25764/1
step
goto 32.8,70.8
.talk 41006
..turnin 25761
..turnin 25764
..accept 25776
step
goto 35.5,98.0
.from Sethria##41255
.' Use Thisalee's Signal Rocket when Sethria turns into a dragon |use Thisalee's Signal Rocket##56003
.kill Sethria##41255 |q 25776/1
step
goto 32.8,70.8
.talk 41006
..turnin 25776
..accept 25795
step
goto 37.4,52.3
.' Use your Heap of Core hound Innards near Nemesis |use Heap of Core hound Innards##54744 |tip Nemesis is a huge turtle that walks all around The Flamewake area, so you may need to search for him.
.clicknpc Nemesis##40340
.get Nemesis Shell Fragment |q 25507/1
step
goto 44.4,46.2
.talk 41005
..turnin 25795
..accept 25807
step
goto 44.3,47.9
.' Use Herald's Incense next to Aviana's Egg |use Herald's Incense##56016 |tip Aviana's Egg is in the tree tower, in a side room.
.' Burn Herald's Incense |q 25807/1
step
goto 44.3,48.0
.talk 41308
..turnin 25807
step
goto 44.1,45.9
.talk 41003
..accept 25810
step
goto 39.2,58.1 |n
.' Go inside the blue portal |goto 38.8,58.0,0.3 |noway |c
step
goto 37.2,56.2
.talk 40578
..turnin 25810
..accept 25523
step
goto 37.2,56.2
.click the Twilight Weapon Rack##130
.collect Twilight Firelance##52716 |q 25523
step
goto 37.4,56.0
.' Equip the Twilight Firelance |use Twilight Firelance##52716
.' Click Aviana's Guardian to ride it |invehicle |tip They are hippogryphs.
step
goto 36.4,53.2
.' Use your Flap ability on your hotbar repeatedly to fly to this green flag
.' Visit the Guardian Flag |q 25523/1
'|model 9475
step
goto 37.2,56.2
.' Use your Flap ability on your hotbar repeatedly to fly to this spot
.talk 40578
..turnin 25523
..accept 25525
step
goto 36.8,54.0
.' Use your Flap ability on your hotbar repeatedly to fly around this area
.' Fly into Twilight Buzzards to joust them
.kill 10 Twilight Knight Rider##39835+ |q 25525/1
step
goto 37.2,56.2
.' Use your Flap ability on your hotbar repeatedly to fly to this spot
.talk 40578
..turnin 25525
..accept 25544
step
goto 36.8,54.0
.' Use your Flap ability on your hotbar repeatedly to fly around this area
.' Fly into Twilight Firebirds to joust them |tip Be careful, don't let the burning Falling Boulders hit you.
.kill 10 Twilight Lancer##40660 |q 25544/1
step
goto 37.2,56.2
.' Use your Flap ability on your hotbar repeatedly to fly to this spot
.talk 40578
..turnin 25544
..accept 25560
step
goto 33.3,56.9
.' Use your Flap ability on your hotbar repeatedly to fly around this area
.' Run over Firelands Eggs |tip They look like blue eggs on the ground around this area.
.' Destroy 40 Firelands Eggs |q 25560/1
.' You can find more Firelands Eggs all around 35.8,53.6
step
goto 37.2,56.2
.' Use your Flap ability on your hotbar repeatedly to fly to this spot
.talk 40578
..turnin 25560
step
label "beaten"
goto Mount Hyjal,39.1,58.3 |n
.' Go inside the blue portal |goto 38.77,58.01,0.3 |noway |c
step
goto 37.2,56.2
.talk 40578
.accept 29177
step
goto 37.2,56.1
.click the Twilight Weapon Rack##130
.collect 1 Twilight Firelance##52716 |q 29177
step
goto 37.4,56.0
.' Equip the Twilight Firelance |use Twilight Firelance##52716
.' Click Aviana's Guardian to ride it |invehicle |tip They are hippogryphs.
step
goto 36.6,53.4
.' Use your Flap ability on your hotbar repeatedly to fly around this area
.kill 10 Twilight Lancer##40660+ |q 29177/1
step
goto 37.2,56.2
.talk 40578
.turnin 29177 |tip You may choose only one Jouster.
.collect Blue Mini Jouster##65661 |or
.collect Gold Mini Jouster##65662 |or
'|modeldisplay 31979
'|modeldisplay 31981
step
.learnpet Blue Mini Jouster##42177 |use Blue Mini Jouster##65661 |or
.learnpet Gold Mini Jouster##42183 |use Gold Mini Jouster##65662 |or
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Golden Dragonhawk Hatchling",[[
description This guide will walk you through obtaining
description the Dragonkin pet:Golden Dragonhawk Hatchling
pet 142
step
goto Eversong Woods 44.8,71.6
.talk 16860
.buy 1 Golden Dragonhawk Hatchling##29953
'|modeldisplay 28401
step
.learnpet Golden Dragonhawk Hatchling##21055 |use Golden Dragonhawk Hatchling##29953
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Great Horned Owl",[[
description This guide will walk you through obtaining
description the Flying pet: Great Horned Owl
pet 68
step
goto The Cape of Stranglethorn/0 40.1,72.4
.talk 8123
.buy 1 Great Horned Owl##8500
.' These pets aren't available to the Horde by normal means.
.' Alternatively, you can purchase this from the Horde Auctioneer, although it may not be available.
'|modeldisplay 4566
step
.learnpet Great Horned Owl##7553 |use Great Horned Owl##8500
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Guild Herald",[[
description This guide will walk you through obtaining
description the Humanoid pet: Guild Herald
pet 283
step
.' Your _guild_ needs have the achievement _"Profit Sharing"_
.' _Loot 100,000 gold from creatures_ |achieve 5201
step
goto Orgrimmar,48.38,75.79
.talk 46572
.buy 1 Guild Herald##65364
'|modeldisplay 37196
step
.learnpet Guild Herald##49590 |use Guild Herald##65364
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Guild Herald",[[
description This guide will walk you through obtaining
description the Humanoid pet: Guild Herald
pet 282
step
'This pet model is only available to _Alliance_ Characters.
.learnpet Guild Herald##49587
'|modeldisplay 37198
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Guild Page",[[
description This guide will walk you through obtaining
description the Humanoid pet: Guild Page
pet 281
step
.' Your _guild_ needs have the achievement _"Alliance Slayer"_
.' _Complete the Slayer guild achievements_ |achieve 5179
step
goto Orgrimmar,48.38,75.79
.talk 46572
.buy 1 Guild Page##65362
'|modeldisplay 37199
step
.learnpet Guild Page##49588 |use Guild Page##65362
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Guild Page",[[
description This guide will walk you through obtaining
description the Humanoid pet: Guild Page
pet 280
step
'This pet model is only available to _Alliance_ Characters.
.learnpet Guild Page##49586
'|modeldisplay 37200
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Hare",[[
description This guide will walk you through obtaining
description the Critter pet: Hare
pet 448
step
goto Durotar 47.3,30.5
.' The _Hares_ around this area are level 1. Challenge one to a pet battle and capture it.
.learnpet Hare##61751
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Hawk Owl",[[
description This guide will walk you through obtaining
description the Flying pet: Hawk Owl
pet 67
step
goto The Cape of Stranglethorn/0 40.1,72.4
.talk 8123
.buy 1 Hawk Owl##8501
.' These pets aren't available to the Horde by normal means.
.' Alternatively, you can purchase this from the Horde Auctioneer, although it may not be available.
'|modeldisplay 6299
step
.learnpet Hawk Owl##7555 |use Hawk Owl##8501
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Lashtail Hatchling",[[
description This guide will walk you through obtaining
description the Beast pet: Lashtail Hatchling
pet 307
step
goto Northern Stranglethorn,38.4,50.4
.talk 2464
..accept 26278
step
goto 37.4,51.9
.talk 5814
.home Grom'gol Base Camp
step
goto 36.0,43.5
.kill 12 Lashtail Egg##42620+ |q 26278/1 |tip They look like small white eggs on the ground around this area.
.' You will automatically accept a quest:
..accept 26317
step
goto 38.4,50.4
.talk 2464
..turnin 26278
step
goto 38.4,51.1
.talk 2465
..turnin 26317
..accept 26321
step
goto 43.1,40.9
.' If your Lashtail Hatchling isn't next to you, use your Lashtail Raptor Egg Fragment |use Lashtail Raptor Egg Fragment##58165
.from Murkgill Oracle##4459+, Murkgill Warrior##4461+ |q 26280/1
.' Feed the Lashtail Hatchling 40 Bites of Murkgill Meat |q 26321/1
step
goto 38.4,51.1
.talk 2465
..turnin 26321
step
goto 33.7,37.2
.talk 42736
..accept 26323
step
goto 38.4,48.7
.talk 2497
..turnin 26323
step
goto 38.5,48.6
.click Bubbling Cauldron##216
..accept 26325
step
goto 20.7,23.5
.' Use your Lashtail Raptor Egg Fragment |use Lashtail Raptor Egg Fragment##58165
.' Follow your Lashtail Hatchling around
.get 8 Zuuldaian Fetish |q 26325/1
step
goto 38.5,48.6
.click Bubbling Cauldron##216
..turnin 26325
..accept 26330
step
goto 24.9,18.2
.from Gan'zulah##1061
.get Gan'zulah's Body |q 26330/1
step
goto 38.5,48.6
.click Bubbling Cauldron##216
..turnin 26330
..accept 26332
step
goto 54.5,62.1
.from Skullsplitter Warrior##667+, Skullsplitter Mystic##780+, Skullsplitter Axe Thrower##696+
.get 6 Skullsplitter Mojo |q 26332/1
step
goto 38.5,48.6
.click Bubbling Cauldron##216
..turnin 26332
step
goto 38.5,48.6
.talk 42790
..accept 26334
..turnin 26334
step
goto 38.4,48.7
.talk 2497
..accept 26350
step
goto 63.5,39.0
.talk 42812
..turnin 26350
..accept 26351
step
goto 58.6,49.1
.from Jungle Stalker##687+
.get 5 Jungle Stalker Feather |q 26351/1
.' You can find more Jungle Stalkers around [53.7,48.8]
step
goto 63.5,39.0
.talk 42812
..turnin 26351
..accept 26359
step
goto 63.5,39.0
.talk 42812
..' Tell her you are ready for the Mind Vision ritual
.' Complete the Mind Vision |q 26359/1
step
goto 63.5,39.0
.talk 42812
..turnin 26359
..accept 26360
step
goto 62.8,74.5
.from Braddok##42858
.get Braddok's Big Brain |q 26360/1
step
goto 63.5,39.0
.talk 42812
..turnin 26360
..accept 26362
step
goto 63.5,39.0
.talk 42812
..' Tell her you are ready for the Mind Control ritual
.' Become the Captured Lashtail Hatchling |invehicle |q 26362
step
goto 89.1,46.3
.' Stay away from the trolls as you walk, or you will have to start over
.talk 42881
..' <Learn to bite through nets from the elder raptor.>
.' Speak with Tan'shang |q 26362/1
step
goto 86.9,44.6
.' Stay away from the trolls as you walk, or you will have to start over
.talk 42882
..' Tell him you'll go get him some food from the sleeping trolls
|confirm
step
goto 86.9,50.0
.' Stay away from the trolls as you walk, or you will have to start over
.clicknpc Gurubashi Soldier##42871
.' Steal Raptor Food |havebuff Interface\Icons\INV_Misc_Bag_10_Blue |q 26362
step
goto 86.9,44.6
.' Stay away from the trolls as you walk, or you will have to start over
.talk 42882
..' Tell him you've brought some food for him, then learn to light fires from the elder raptor
.' Help Tenjiyu |q 26362/2
step
goto 86.9,41.2
.click Gurubashi Brazier |tip It's a square metal container with fire in it on the ground in the middle of the path.
.' Get a Burning Twig
.' Use the Light Tiki Fire ability on your hotbar next to the Zul'Gurub Tiki |tip It's a floating wooden mask in front of you, next to the Gurubashi Brazier.
.' The guards blocking the path will run to put out the burning tiki
.' Run past the guards into the next area
|confirm
step
goto 86.4,39.3
.' Click the Gurubashi Brazier |tip It's a square metal container with fire in it on the ground in the middle of the path.
.' Get a Burning Twig
.' Run down the path and use the Light Tiki Fire ability on your hotbar next to the Zul'Gurub Tiki at [86.1,38.0] |tip It's a floating wooden mask in front of you, next to the Gurubashi Brazier.  You will need to use your Dash ability on your hotbar to get to the tiki in time, before you lose your Burning Twig.
.' The guards blocking the path will run to put out the burning tiki
.' Run past the guards into the next area
|confirm
step
goto 85.3,37.7
.' Click the Gurubashi Brazier |tip It's a square metal container with fire in it on the ground in the middle of the path.
.' Get a Burning Twig
.' Run down the path and use the Light Tiki Fire ability on your hotbar next to the Zul'Gurub Tiki at [83.9,38.3] |tip It's a floating wooden mask in front of you, next to the Gurubashi Brazier.  You will need to use your Dash ability on your hotbar to get to the tiki in time, before you lose your Burning Twig.
.' The guards blocking the path will run to put out the burning tiki
.' Run past the guards
|confirm
step
goto 82.8,37.5
.talk 42883
..' <Learn to drop skulls from the elder raptor.>
.' Speak with Chiyu |q 26362/3
step
goto 82.5,33.9
.' Click the Giant Skullpile |tip It looks like a big pile of skulls sitting in this small troll hut.
.' Walk onto the bridge to [81.7,34.0]
.' Use your Drop Skull ability to put the skull on the bridge
.' The troll will trip on the skull and fall off the bridge
.' Run to the other side of the bridge
|confirm
step
goto 79.9,34.2
.' Click the Giant Skullpile |tip It looks like a big pile of skulls sitting in this small troll hut.
.' Walk onto the bridge to [79.0,33.5]
.' Use your Drop Skull ability to put the skull on the bridge
.' The troll will trip on the skull and fall off the bridge
.' Run to the other side of the bridge
|confirm
step
goto 74.3,31.2
.' Click the Gurubashi Brazier |tip It's a square metal container with fire in it on the ground in the middle of the path.
.' Get a Burning Twig
.' Use the Light Tiki Fire ability on your hotbar next to the Zul'Gurub Tiki at [74.7,32.0] |tip It's a floating wooden mask in front of you, next to the Gurubashi Brazier.  You will need to use your Dash ability on your hotbar to get to the tiki in time, before you lose your Burning Twig.
.' The guards blocking the path will run to put out the burning tiki
.' Run past the guards
.' Run up the big staircase
.' Escape from Zul'Gurub |q 26362/4
step
goto 63.5,39.0
.talk 42812
..turnin 26362
..accept 26386
step
goto 63.2,38.8
.talk 42811
..turnin 26386
step
goto Zul'Gurub,60.6,80.6
.from Bloodlord Mandokir##52151
step
goto 61.2,81.6
'Talk to Lashtail Hatchling
..turnin 29208
.collect 1 Lashtail Hatchling##69251
'|modeldisplay 38209
|confirm
step
.learnpet Lashtail Hatchling##52894 |use Lashtail Hatchling##69251
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Lil' Tarecgosa",[[
description This guide will walk you through obtaining
description the Dragonkin pet: Lil' Tarecgosa
pet 320
step
'This pet is a reward for complete the achievement _"Dragonwrath, Tarecgosa's Rest - Guild Edition"_
'In order to earn this you must have somebody in your guild with the Legendary weapon _"Dragonwrath, Tarecgosa's Rest"_
'Earn _"Dragonwrath, Tarecgosa's Rest - Guild Edition"_ |achieve 5840
step
goto Orgrimmar 48.2,75.6
.talk 46572
.buy 1 Lil' Tarecgosa##71033
|modeldisplay 38614
step
.learnpet Lil' Tarecgosa##54027 |use Lil' Tarecgosa##71033
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Lumpy",[[
description This guide will walk you through obtaining
description the Elemental pet:Lumpy
pet 337
step
goto Hillsbrad Foothills,42.3,41.1
.talk 13636
..accept 6983
step
goto 43.6,39.0
.from The Abominable Greench##13602 |tip This will require a group to kill, but you do not have to be in a party.
.' Free Metzen the Reindeer |q 6983/1
.get Stolen Treats |q 6983/2 |tip You can pick this up if someone has killed The Abominable Grinch recently.
step
goto Orgrimmar,52.6,77.4
.talk 13418
..turnin 6983
.collect 1 Stolen Present##73792
.' Open your Stolen Present |use Stolen Present##73792
.collect 1 Lump of Coal##73797
|modeldisplay 35015
step
.learnpet Lumpy##55215 |use Lump of Coal##73797
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Lunar Lantern",[[
description This guide will walk you through obtaining
description the Magic pet: Lunar Lantern
pet 341
step
'This pet can only be obtained during the Lunar Festival event.
.collect 50 Coin of Ancestry##21100
'Click here for directions to the vendor |confirm |next "vendor"
'Click here for our guide on getting the Coins of Ancestry |confirm |next "coins"
step
label "coins"
#include "H_Lunar_Festival_Quests"
step
#include "H_Lunar_Festival_Elders"
step
label "vendor"
goto Moonglade,54.0,35.0
.talk 15864
.buy Lunar Lantern##74610
|modeldisplay 39163
step
.learnpet Lunar Lantern##55571 |use Lunar Lantern##74610
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Magic Lamp",[[
description This guide will walk you through obtaining
description the Magic pet:Magic Lamp
pet 292
step
goto The Cape of Stranglethorn/0 40.1,72.4
.talk 8123
.buy 1 Magic Lamp##67275
.' These pets aren't available to the Horde by normal means.
.' Alternatively, you can purchase this from the Horde Auctioneer, although it may not be available.
'|modeldisplay 36901
step
.learnpet Magic Lamp##50545 |use Magic Lamp##67275
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Magical Crawdad",[[
description This guide will walk you through obtaining
description the Aquatic pet: Magical Crawdad
pet 132
#include "H_Mr._Pinchy's_Magical_Crawdad_Box"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Mechanopeep",[[
description This guide will walk you through obtaining
description the Mechanical pet: Mechanopeep
pet 215
step
goto The Cape of Stranglethorn/0 40.1,72.4
.talk 8123
.collect 1 Mechanopeep##45002
.' These pets aren't available to the Horde by normal means.
.' Alternatively, you can purchase this from the Horde Auctioneer, although it may not be available.
'|modeldisplay 28539
step
.learnpet Mechanopeep##33274 |use Mechanopeep##45002
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Moonkin Hatchling",[[
description This guide will walk you through obtaining
description the Humanoid pet: Moonkin Hatchling
pet 298
step
.' This pet can be purchased for $10.00 on the official Blizzard Store.
.' After purchasing, check your in-game mailbox
.collect Moonkin Egg##68384
.' Open the Moonkin Egg |use Moonkin Egg##68384
.collect Moonkin Hatchling##68619
|modeldisplay 37527
step
.learnpet Moonkin Hatchling##51649 |use Moonkin Hatchling##68619
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Moonkin Hatchling",[[
description This guide will walk you through obtaining
description the Humanoid pet: Moonkin Hatchling
pet 296
step
'This pet model is only available to _Alliance_ characters.
.learnpet Moonkin Hatchling##51601
|modeldisplay 37526
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Mr. Wiggles",[[
description This guide will walk you through obtaining
description the Critter pet:Mr. Wiggles
pet 126
step
'You may only get _three_ of these pets _per year_ from _completing_ the quest lines _Back to the Orphanage (Shattrath)_, _Warden of the Horde_, and _Back to the Orphanage (Dalaran)_
.' If you are aligned with the Oracles, click here for their Children's Week Daily set. |next "Zygor's Horde Events Guides\\Children's Week\\Children's Week Dalaran Oracles Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
.' If you are aligned with the Wolvar, click here for their Children's Week Daily set. |next "Zygor's Horde Events Guides\\Children's Week\\Children's Week Dalaran Wolvar Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
.' For the Shattrath Daily set, click here. |next "Zygor's Horde Events Guides\\Children's Week\\Children's Week Shattrath Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
|confirm
step
.collect 1 Piglet's Collar##23007 |tip Warden of the Horde
'|modeldisplay 27680
step
.learnpet Mr. Wiggles##16548 |use Piglet's Collar##23007 |tip Warden of the Horde
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Mulgore Hatchling",[[
description This guide will walk you through obtaining
description the Critter pet: Mulgore Hatchling
pet 210
step
'In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Tauren.
|confirm always
step
.' Proceeding to Pre Quests. |next |only if default
.' Click here Aspirant Rank Daily quests. |next "Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Argent Tournament Grounds Aspirant Rank Dailies. Includes Pre-Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
.' Click here for |next "Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Argent Tournament Grounds Valiant Rank Dailies" |confirm |only if ZGV.guidesets["DailiesHCATA"]
.' Click here if you are already at the rank of Champion. |next buy |confirm
step
goto Icecrown,72.6,22.6
.talk 33849
..fpath Argent Tournament Grounds
step
goto Icecrown,69.7,22.9
.talk 33817
..accept 13668
step
goto 76.3,24.4
.talk 33542
..turnin 13668
..accept 13829
step
goto 76.3,24.4
.talk 33658
..accept 13839
step
goto 76.2,24.4
.talk 33659
..accept 13838
step
goto 75.6,23.7
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Sunreaver Hawkstrider|invehicle|q 13829
step
goto 72.5,19.3
.talk 33973
.' Listen to Jeran Lockwood's advice|q 13829/1
step
goto 72.7,18.9
.talk 33972
.' Listen to Rugan Steelbelly's advice|q 13839/1
step
goto 73.2,19.2
.talk 33974
.' Listen to Valis Windchaser's advice|q 13838/1
step
goto 73.1,19.0
.' Target a Ranged Target from a distance
.' Use Shield-Breaker ability on Ranged Target to bring it's shields down
.' Use Shield-Breaker ability on Ranged Target twice, while it's shields are down|q 13838/2
step
goto 72.9,18.8
.' Target a Charge Target from a distance
.' Use Shield-Breaker ability until you notice the targets Defend is gone
.' Use your Charge ability on the Charge Target 2 times|q 13839/2
step
goto 72.6,19.7
.' Target a Melee Target
.' If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
.' Use your Thrust ability to attack the target 5 times|q 13829/2
step
'Click the red arrow on your hotbar to stop riding the bird mount|outvehicle|q 13829
step
goto 76.3,24.4
.talk 33542
..turnin 13829
step
goto 76.3,24.4
.talk 33658
..turnin 13839
step
goto 76.2,24.4
.talk 33659
..turnin 13838
step
label buy
goto Icecrown,76.2,24.6
.talk 33403
..accept 13709
..turnin 13709
..accept 13720
step
goto 76.2,24.6
.talk 33403
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13773 |or
..accept 13774 |or
..accept 13775 |or
step
goto 76.3,24.7
.talk 33539
..accept 13776
step
goto 76.1,24.6
.talk 33549
..accept 13777
..accept 13858
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..' Tell her you are glad to help
.get Ashwood Brand |q 13773/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13774
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13774/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13775
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13775/1
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13858
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13858/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13858/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13858/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13858
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13776/1
step
goto 75.5,24.3
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Thunder Bluff Kodo|invehicle |q 13777
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13777/1
step
goto 76.2,24.6
.talk 33403
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13773
..turnin 13774
..turnin 13775
step
goto 76.3,24.7
.talk 33539
..turnin 13776
step
goto 76.1,24.6
.talk 33549
..turnin 13777
..turnin 13858
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13720/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.2,24.6
.talk 33403
..turnin 13720
..accept 13728
step
goto 71.9,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Thunder Bluff Kodo|invehicle |q 13728
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13728/1
step
goto 76.2,24.6
.talk 33403
..turnin 13728
step
.' Become a Champion of Thunder Bluff |achieve 2786
.earn 40 Champion's Seal##241+
.' If you don't meet both of these requirements go back to step 1 of the guide.
step
goto Icecrown,76.2,24.4
.talk 33556
.buy 1 Mulgore Hatcling##44980
'|modeldisplay 6476
step
.learnpet Mulgore Hatchling##33219 |use Mulgore Hatchling##44980
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Orange Tabby Cat",[[
description This guide will walk you through obtaining
description the Beast pet: Orange Tabby Cat
pet 43
step
goto The Cape of Stranglethorn/0 40.1,72.4
.talk 8123
.buy 1 Cat Carrier (Orange Tabby)##8487
.' These pets aren't available to the Horde by normal means.
.' Alternatively, you can purchase this from the Horde Auctioneer, although it may not be available.
'|modeldisplay 5554
step
.learnpet Orange Tabby Cat##7382 |use Cat Carrier (Orange Tabby)##8487
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Panther Cub",[[
description This guide will walk you through obtaining
description the Beast pet: Panther Cub
pet 301
step
goto Orgrimmar,32.6,68.1
.talk 53081
..accept 29219
..accept 29220
step
goto Northern Stranglethorn,64.6,40.0
.talk 52980
..turnin 29220
..accept 29221
step
goto 61.2,39.8
.kill 10 Jungle Serpent |q 29221/1
.' Click Injured Bambala Headhunters |tip They look like green bodies laying on the ground around this area.
.' Heal 10 Headhunters |q 29221/2
step
goto 64.6,40.0
.talk 52980
..turnin 29221
step
'Next to you:
.talk 52234
..accept 29222
step
goto 65.1,39.9
.' Click the Bonfire |tip It looks like a big pile of burning sticks.
.' Watch the dialogue
.' Use the Bonfire near Bambala |q 29222/1
step
'Next to you:
.talk 52234
..turnin 29222
step
goto 64.6,40.0
.talk 52980
..accept 29223
step
goto 44.1,22.9
.talk 52294
..turnin 29223
..accept 29226
step
goto 50.4,21.7
.talk 52346
..turnin 29226
..accept 29227
step
goto 64.0,19.6
.from Mauti?##52349
.' Bring Grent Direhammer to the body of Mauti |q 29227/1
step
'Click the Complete Quest box that appears under you minimap
..turnin 29227
.' You will automatically accept a new quest:
..accept 29228
step
goto 77.7,68.4
.' Go to this spot
.' Find Mauti's Lair |q 29228/1
step
'Next to you:
.talk 52234
..turnin 29228
..accept 29230
step
goto 77.2,69.0
.from Mauti##52372
.' Let Bwemba Inspect the Cat |q 29230/1
step
'Next to you:
.talk 52234
..turnin 29230
..accept 29231
step
goto 76.5,67.5 |n
.' Enter the cave |goto 76.5,67.5,0.5 |noway |c
step
goto 76.1,66.7
.talk 52371
..turnin 29231
..accept 29232
step
goto 76.0,66.5
.' Click Direhammer's Boots |tip They look like a small pair of brown boots sitting on the ground inside this cave.
.get Direhammer's Boots |q 29232/1
step
goto 76.1,66.7
.talk 52371
..turnin 29232
step
goto 76.1,66.7
'Talk to Panther Cub
..accept 29268
.collect 1 Panther Cub##68833
'|modeldisplay 37814
step
.learnpet Panther Cub##52226 |use Panther Cub##68833
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Pebble",[[
description This guide will walk you through obtaining
description the Elemental pet: Pebble
pet 265
step
.' If you have done the Pre-Quests for Therazane, click here. |next "daily" |only if completedq(26709)
.' If you need to do the Pre-Quests, click here. |next "pre" |only if not completedq(26709)
step
label "pre"
.' To earn Pubble, you must do the _Rock Lover_ achievement, which means you will have to do Lost in the Deeps 10 times.
.' Since the daily quest isn't available every day, this pet may take a while to earn.
goto Orgrimmar,49.7,76.5
.click Warchief's Command Board##10014
..accept 27722
step
goto 50.5,38.4
.talk 45244
..turnin 27442 |tip You will only be able to turn in this quest if you completed the Vashj'ir guide section.  It will be marked completed if you have already completed the similar Mount Hyjal breadcrumb quest.
..turnin 27722
..accept 27203
step
goto 50.1,37.8
.click Portal to the Maelstrom##5231
.' Teleport to The Maelstrom |goto The Maelstrom |noway |c
step
goto The Maelstrom,33.4,50.2
.talk 45042
..turnin 27203
..accept 27123
step
goto 32.5,52.0
.clicknpc Wyvern##45005
.' You will fly into Deepholm |goto Deepholm,49.9,54.7,0.5 |noway |c
step
goto Deepholm,49.6,53.0
.talk 43065
..turnin 27123
..accept 26245
step
goto 49.7,52.9
.talk 43397
..accept 27136
..accept 26244
step
goto 49.5,53.3
.talk 42573
..accept 26409
step
goto 49.2,51.9
.talk 45300
.home Temple of Earth
step
goto 46.5,57.3
.talk 42574
..turnin 26409
..accept 26410
..accept 27135
step
goto 45.5,57.9
.from Rockslice Flayer##42606+
.get 5 Quartzite Resin |q 26410/1
step
goto 46.5,57.3
.talk 42574
..turnin 26410
step
goto 51.1,61.6
.' Use your Depleted Totem |use Depleted Totem##60835
.from Lodestone Elemental##43258+, Energized Geode##43254+ |tip Kill them next to your Depleted Totems.
.' Energize the Totem 8 Times |q 27136/1
step
goto 52.0,58.9
.' Use Goldmine's Fire Totem in the red lava spot |use Goldmines's Fire Totem##60834
.from Magmatooth##45099
.get The Burning Heart |q 27135/1
step
goto 49.7,52.9
.talk 43397
..turnin 27136
step
goto 46.5,57.3
.talk 42574
..turnin 27135
..accept 26411
step
goto 46.6,57.2
.' Use your Explosive Bonding Compound on Flint Oremantle |use Explosive Bonding Compound##58502 |tip He's laying on the ground next to Initiate Goldmine.
.' Apply the Explosive Bonding Compound |q 26411/1
step
goto 46.5,57.3
.talk 42574
..turnin 26411
..accept 26413
step
goto 49.5,53.3
.' Introduce Flint Oremantle to Earthcaller Yevaa |q 26413/1
step
goto 49.5,53.3
.talk 42573
..turnin 26413
..accept 26484
step
goto 56.1,74.2
.clicknpc Slain Cannoneer##43032
.' Receive the Second Clue |q 26245/2
step
goto 53.5,73.8
.clicknpc Captain Skullshatter##43048
.' Receive the First Clue |q 26245/1
step
goto 53.6,73.8
.click Captain's Log##6891
..accept 26246
step
goto 56.7,76.4
.clicknpc Unexploded Artillery Shell##43044 |tip You can get to it by flying in the 3 open side doors on the north side of the crashed zeppelin.
.' Receive the Third Clue |q 26245/3
step
goto 55.9,74.9
.kill 5 Deepstone Elemental##43026+ |q 26244/1
step
goto 49.6,52.9
.talk 43065
..turnin 26245
..turnin 26246
step
goto 49.7,52.9
.talk 43397
..turnin 26244
step
goto 49.6,53.0
.talk 43065
..accept 26247
step
goto 62.4,52.6
.talk 42684
..turnin 26247
..accept 26248
..accept 26249
step
'All around on this air ship:
.' Use your Spirit Totem on Slain Crew Members |use Spirit Totem##58167 |tip They look like dead Alliance soldiers all over this airship.
.' Receive 6 Slain Crew Member Information |q 26248/1
step
'Enter the doorway on the main deck of the air ship:
.talk 43082
..turnin 26249
..accept 26427
step
'Leave through the doorway and immediately turn right:
.click Bottle of Whiskey##9712 |tip Located on the life boat.
.get Bottle of Whiskey |q 26427/1
step
'All around on the deck of the air ship:
.click Spool of Rope##7538
.get Spool of Rope |q 26427/2
step
'Enter the doorway on the main deck of the air ship:
.talk 43082
..turnin 26427
step
'Go to the very top of the air ship:
.talk 42684
..turnin 26248
..accept 26251
..accept 26250
step
'Go onto the main deck of the ship and go down the stairs to the deck below:
.' Fight Mor'norokk the Hateful until he surrenders |tip He's downstairs in the airship, in the very back of the first level you come to.
.talk 42801
.' Subdue Mor'norokk the Hateful |q 26250/1
step
'All around on this lower deck of the air ship:
.kill 6 Twilight Saboteur##42885+ |q 26251/1
step
'Go to the very top of the air ship:
.talk 42684
..turnin 26251
..turnin 26250
..accept 26254
step
Next to Stormcaller Mylra:
.clicknpc Stormbeak##42716
.' Interrogate Mok'norrok |q 26254/1
step
'When you land on the air ship again:
.talk 42684
..turnin 26254
..accept 26255
step
goto 49.6,53.0
.talk 43065
..turnin 26255
..accept 26258
step
goto 49.7,52.9
.talk 43397
..accept 26259
step
goto 59.4,58.2
.' Go to this spot
.' Reach Deathwing's Fall |q 26258/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26258
..accept 26256
step
goto 61.5,60.6
.from Twilight Bloodshaper##43218+
.get Twilight Orders |q 26256/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26256
..accept 26261
step
goto 62.8,59.5
.click Slavemaster's Coffer##41
.collect Twilight Slaver's Key##60739 |q 26261
step
goto 61.2,60.1
.from Living Blood##43123+
.get 5 Blood of Neltharion |q 26259/1
step
goto 64.5,65.5
.click Ball and Chains##181+ |tip They are attached to the feet of the Enslaved Miners around this area.
.' Free 6 Enslaved Miners |q 26261/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26261
..accept 26260
step
goto 63.7,55.4
.click Forgemaster's Log##6891
..turnin 26260
..accept 27007
step
goto 70.6,61.2
.' Go to this spot
.' Reach Upper Silvermarsh |q 27007/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27007
..accept 27010
step
goto 71.8,64.3
.click Trogg Crate##9855
.collect Trogg Crate##60809 |q 27010
.from Murkstone Trogg##44936
.collect Maziel's Research##60816 |n
.' Click Maziel's Research in your bags |use Maziel's Research##60816
..accept 27100
step
goto 74.9,64.8
.' Use your Trogg Crate in the water and swim to this spot |use Trogg Crate##60809
.' Watch the dialogue
.' Uncover the World Pillar Fragment Clue |q 27010/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27010
..accept 27061
step
goto 72.5,65.2
.from Mercurial Ooze##43158+
.get 4 Twilight Research Notes |q 27100/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27100
..accept 27101
step
goto 67.2,70.2
.click Maziel's Journal##2530
..turnin 27101
..accept 27102
step
goto 69.5,68.0 |n
.' Enter the cave |goto 69.5,68.0,0.5 |noway |c
step
goto 72.8,62.0
.kill Maziel##44967 |q 27102/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27102
step
goto 69.5,68.0 |n
.' Leave the cave |goto 69.5,68.0,0.5 |noway |c
step
goto 64.5,82.1
.talk 44010
..turnin 27061
..accept 26766
..accept 26768
step
goto 68.2,77.9
.from Scalesworn Cultist##44221+
.get Twilight Snare |q 26768/1
step
goto 64.5,82.1
.talk 44010
..turnin 26768
step
goto 59.9,83.6
.from Jadecrest Basilisk##43981+
.' Use Mylra's Knife on Jadecrest Basilisk corpses |use Mylra's Knife##60382
.get 5 Side of Basilisk Meat |q 26766/1
step
goto 64.5,82.1
.talk 44010
..turnin 26766
..accept 26771
step
goto 50.9,85.3
.' Use your Trapped Basilisk Meat |use Trapped Basilisk Meat##60773
.kill Stonescale Matriarch##44148 |q 26771/1
step
goto 64.5,82.1
.talk 44010
..turnin 26771
..accept 26857
step
goto 64.6,82.2
.talk 44222
..accept 26861
step
goto 68.7,75.0
.' Use your Stormstone next to the swirling blue portal |use Stormstone##60501
.' Disrupt the Twilight Gate |q 26861/1
step
goto 71.2,75.1
.' Use your Stormstone next to the structure with the floating yellow crystal |use Stormstone##60501
.' Disrupt the Elemental Gate |q 26861/2
step
goto 69.9,76.7
.from Scalesworn Cultist##44221+, Twilight Scalesister##43967+, Twilight Dragonspawn##43966+
.' Defeat 8 Abyssion's Underlings |q 26857/1
step
goto 64.6,82.2
.talk 44222
..turnin 26861
step
goto 64.5,82.2
.talk 44010
..turnin 26857
..accept 26876
step
goto 69.9,76.9
.' Use your Earthen Ring Banner |use Earthen Ring Banner##60810
.from Abyssion##44289
.click The First Fragment of the World Pillar##9779
.get The Upper World Pillar Fragment |q 26876/1
step
goto 49.6,53.0
.talk 43065
..turnin 26876
step
goto 49.7,52.9
.talk 43397
..turnin 26259
step
goto 27.9,68.7
.talk 43071
..turnin 26484
..accept 27931
step
goto 30.6,77.7
.talk 47195
..turnin 27931
..accept 27932
..accept 27933
step
goto 32.2,79.1
.' Use The Axe of Earthly Sundering on Emerald Colossi |use The Ace of Earthly Sundering##60490 |tip They look like glowing giants that walk around this area.
.kill 5 Sundered Emerald Colossus##44229+ |q 27932/1
.from Jade Rager##44220+
.get 6 Elemental Ore |q 27933/1
step
goto 30.6,77.7
.talk 47195
..turnin 27932
..turnin 27933
..accept 27934
step
goto 30.6,77.7
.talk 47195
..' Tell him you are ready for the ritual
.' Complete the One With the Ground Ritual |q 27934/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27934
..accept 27935
step
goto 46.9,89.1
.kill Avalanchion##44372 |q 27935/1
step
goto 43.4,82.0 |n
.' Leave the cave |goto 43.4,82.0,0.5 |noway |c
step
goto 27.9,68.7
.talk 43071
..turnin 27935
..accept 26499
step
goto 28.2,69.6
.talk 43160
..accept 26500
step
goto 29.7,68.8
kill 12 Stone Trogg Ambusher |q 26500/1
.' Use Stonefather's Banner next to Stone Hearth Defenders |use Stonefather's Banner##58884 |tip They look like dwarves.  Stonefather's Banner won't work on the Stone Hearth Defenders if they already have the Stonefather's Boon buff.
.' Grant the Stonefather's Boon 12 times |q 26499/1
step
goto 28.2,69.6
.talk 43160
..turnin 26500
..accept 26502
step
goto 27.9,68.7
.talk 43071
..turnin 26499
..accept 26501
step
goto 27.3,67.8
.' Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
.' Seal the Shrine |q 26501/4
step
goto 26.0,68.8
.' Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
.' Seal the Barracks |q 26501/3
step
goto 26.2,69.8
.' Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
.' Seal the Inn |q 26501/2
step
goto 27.3,70.1
.' Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
.' Seal the Armory |q 26501/1
.click Thunder Stone##9722+
.get 12 Thunder Stone |q 26502/1
step
goto 24.5,62.4
.talk 43168
..turnin 26501
..accept 26537
step
goto 24.8,62.2
.talk 43169
..turnin 26502
..accept 26564
step
goto 24.6,62.2
.talk 43319
..accept 26591
step
goto 23.9,60.3
.' Use Deepvein's Patch Kit on Injured Earthens |use Deepvein's Patch Kit##58965 |tip They look like dwarves laying on the ground around this area.
.' Patch up 10 Injured Earthen |q 26591/1
.click Catapult Part##9860+
.get 6 Catapult Part |q 26564/1
.from Stone Trogg Berserker##43228+, Stone Trogg Geomancer##43234+, Needlerock Rider##43250+ |q 26537/1
step
goto 24.5,62.4
.talk 43168
..turnin 26537
step
goto 24.6,62.2
.talk 43319
..turnin 26591
step
goto 24.8,62.2
.talk 43169
..turnin 26564
step
goto 24.5,62.4
.talk 43168
..accept 26625
step
goto 22.6,56.9
.from Troggzor the Earthinator##43456
.get The Earthinator's Cudgel |q 26625/1
step
goto 24.5,62.4
.talk 43168
..turnin 26625
step
goto 24.8,62.2
.talk 43169
..accept 27126
step
goto 20.7,61.6
.talk 45043
..turnin 27126
..accept 26632
step
goto 20.7,61.6
.talk 45043
..' Tell him you're ready to escort the catapult
.' Safely Escort the Earthen Catapult |q 26632/1
step
goto 22.7,52.0
.talk 43897
..turnin 26632
..accept 26755
step
goto 22.4,52.0
.clicknpc Earthen Catapult##43952
.' Use your Fire Catapult ability on your hotbar on the Stone Trogg and Fungal mobs
.' Bombard 30 Reinforcements |q 26755/1
step
goto 22.7,52.0
.talk 43897
..turnin 26755
..accept 26762
step
goto 22.8,52.1
.talk 43898
..accept 26770
step
goto 22.6,47.6
.clicknpc Deactivated War Construct##43984
.' Reactivate 5 Deactivated War Constructs |q 26762/1
.kill 5 Needlerock Mystic##43995+ |q 26770/1
step
goto 22.8,52.1
.talk 43898
..turnin 26770
step
goto 22.7,52.0
.talk 43897
..turnin 26762
..accept 26834
step
goto 27.6,44.8
.talk 44143
..turnin 26834
..accept 26791
..accept 26792
step
goto 27.6,44.7
.clicknpc War Guardian##44126
.' Obtain a War Guardian for the Sprout No More quest |q 26791/1
.' Obtain a War Guardian for the Fungal Monstrosities quest |q 26792/1
step
goto 26.8,41.8
.kill 5 Fungal Monstrosity##44035+ |q 26792/2
.clicknpc Giant Mushroom##44049+
.' Destroy 5 Giant Mushrooms |q 26791/2
step
goto 27.6,44.8
.talk 44143
..turnin 26791
..turnin 26792
..accept 26835
step
goto 22.7,52.0
.talk 43897
..turnin 26835
..accept 26836
step
goto 24.5,31.1
.from Bouldergut##44151
.' Rescue Stonefather Oremantle |q 26836/1
step
goto 22.7,52.0
.talk 43897
..turnin 26836
..accept 27937
step
goto 28.0,68.6
.talk 44204
..turnin 27937
..accept 27938
step
goto 28.0,68.7
.click The Stonefather's Safe##7608
.get The Middle Fragment of the World Pillar |q 27938/1
step
goto 49.5,53.3
.talk 42573
..turnin 27938
step
goto 49.6,53.0
.talk 43065
..accept 26326
step
goto 46.1,45.6
.talk 42730
..turnin 26326
..accept 26312
..accept 26314
step
goto 46.2,45.7
.talk 42731
..accept 26313
step
goto 44.3,43.7
.from Irestone Rumbler##42780+
.' Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 |tip Run away from the Servants of Therazane to bring them down.
.' Relieve Stormcaller Mylra |q 26312/2
step
goto 44.5,41.3
.from Irestone Rumbler##42780+
.' Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 |tip Run away from the Servants of Therazane to bring them down.
.' Relieve Tawn Winterbluff |q 26312/1
step
goto 47.6,42.8
.from Irestone Rumbler##42780+
.' Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 |tip Run away from the Servants of Therazane to bring them down.
.' Relieve Hargoth Dimblaze |q 26312/3
step
goto 46.2,42.2
.from Irestone Rumbler##42780+
.get 6 Irestone Core |q 26313/1
.' Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 |tip Run away from the Servants of Therazane to bring them down.
.' Bring down 3 Servants of Therazane |q 26314/1
step
goto 46.2,45.7
.talk 42731
..turnin 26313
step
goto 46.1,45.6
.talk 42730
..turnin 26312
..turnin 26314
step
goto 46.2,45.7
.talk 42731
..accept 26315
step
goto 49.2,40.1
.' Use your Earthen Ring Proclamation on Boden the Imposing |use Earthen Ring Proclamation##58177 |tip He's a huge rock giant that walks around this area.
.' Seek Peace with Boden the Imposing |q 26315/1
step
goto 46.2,45.7
.talk 42731
..turnin 26315
..accept 26328
step
goto 56.5,42.7
.talk 42467
..turnin 26328
..accept 26376
..accept 26377
step
goto 56.5,41.0
.talk 42899
..accept 26375
step
goto 60.2,39.4
.kill Dragul Giantbutcher##42921 |q 26376/1
step
goto 59.5,41.5
.click Jade Crystal Cluster##9694+
.collect 6 Jade Crystal Cluster##58500 |q 26377
.' Use your Delicate Chain Smasher next to Quartz Rocklings |use Delicate Chain Smasher##58254 |tip They look like small rock giants around this area.
.' Release 6 Quartz Rocklings |q 26375/1
step
'Use the Jade Crystal Clusters |use Jade Crystal Cluster##58500
.collect Jade Crystal Composite##58783 |q 26377
step
goto 59.6,41.4
.' Use your Jade Crystal Composite |use Jade Crystal Composite##58783
.' Lure an Agitated Tunneler |q 26377/1
step
goto 59.3,40.6
.from Twilight Laborer##42924+, Twilight Priestess##42823+, Twilight Duskwarden##42917+ |q 26376/2
step
goto 56.5,41.0
.talk 42899
..turnin 26375
step
goto 56.5,42.7
.talk 42467
..turnin 26376
..turnin 26377
..accept 26426
step
goto 51.7,31.6
.' Get next to Felsen the Enduring |tip He's a big white rock giant.
.' Find Felsen the Enduring |q 26426/1
step
goto 58.4,25.7
.' Fly to the mouth of this cave
.' Find the entrance to the Crumbling Depths |q 26426/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26426
..accept 26869
step
goto 58.7,25.9 |n
.' Enter the cave |goto 58.7,25.9,0.5 |noway |c
step
goto 64.5,21.7 |n
.' Follow the path |goto 64.5,21.7,0.5 |noway |c
ste
goto 65.3,18.4 |n
.' Follow the path |goto 65.3,18.4,0.5 |noway |c
step
goto 66.4,20.6
.click Gigantic Painite Cluster##9815
..turnin 26869
..accept 26871
step
goto 64.3,23.5 |n
.' Follow the path to this spot, then jump down |goto 64.3,23.5,0.5 |noway |c
step
goto 58.3,25.5 |n
.' Leave the cave |goto 58.3,25.5,0.5 |noway |c
step
goto 56.5,42.7
.talk 42467
..turnin 26871
..accept 26436
step
goto 34.3,34.3
.talk 42469
..turnin 26436
..accept 26438
..accept 26437
step
goto 34.6,34.2
.talk 43344
..accept 26439
step
goto 30.5,46.8
.from Jaspertip Borer##42524+, Jaspertip Swarmer##42521+, Jaspertip Ravager##42525+, Jaspertip Crystal-gorger##43171+ |q 26438/1
.click Chalky Crystal Formation##9715+
.get 8 Chalky Crystal Formation |q 26437/1
.clicknpc Dormant Stonebound Elemental##43115+
.' Reform 6 Stonebound Elementals |q 26439/1
step
goto 34.3,34.3
.talk 42469
..turnin 26438
..turnin 26437
step
goto 34.5,34.4
.talk 43344
..turnin 26439
step
goto 34.3,34.3
.talk 42469
..accept 28869
step
'Next to you:
.talk 43116
..turnin 28869
..accept 26440
step
goto 30.1,47.7
.' Get next to the huge green crystals
.' Bring Pebble to the crystal formation |q 26440/1
step
'Next to you:
.talk 43116
..turnin 26440
..accept 26441
step
goto 34.3,34.3
.talk 42469
..turnin 26441
..accept 26507
..accept 26575
step
goto 47.6,26.8
.kill Gorgonite##43339 |q 26575/1
step
goto 47.5,26.8
.clicknpc Petrified Stone Bat##43182+
.get 12 Petrified Stone Bat |q 26507/1
step
'Next to you:
.talk 43116
..turnin 26507
step
goto 34.3,34.3
.talk 42469
..turnin 26575
..accept 26576
..accept 26577
step
goto 39.9,19.4
.talk 42466
..turnin 26576
..accept 26656
step
goto 39.9,19.4
.talk 42466
..' Tell him you are ready to escort a group of elementals across the open.
.' Speak to Terrath the Steady |q 26656/1
step
goto 51.1,14.7
.' Go to this spot
.' Escort 5 Opalescent Guardians to safety |q 26656/2 |tip Be careful not to fly to quickly or you the rock elementals will disappear when you get too far away from them.
step
goto 39.9,19.4
.talk 42466
..turnin 26656
..accept 26657
..accept 26658
step
goto 35.4,22.5
.from Stone Trogg Beast Tamer##43598 |tip He moves all around this area capturing basilisks, so you may need to look around a bit for him.
.get Stonework Mallet |q 26658/1
step
goto 39.9,19.4
.talk 42466
..turnin 26658
step
goto 36.5,18.8
.kill 6 Stone Drake##42522+ |q 26657/1 |tip They will fall to the ground with half health, so you can kill them, even though they are elite.
step
goto 40.0,19.4
.talk 42466
..turnin 26657
..accept 26659
step
goto 32.7,24.3
.' Use your Stonework Mallet next to the Pale Resonating Crystal |use Stonework Mallet##60266 |tip It's a huge green crystal sitting on the ground.
.' Strike the Pale Resonating Crystal |q 26659/1
.from Aeosera##43641 |tip Click the Boulder Platforms to jump from rock to rock while fighting Aeosera.  When she is casting her Breath Fire ability, jump to another rock and attack her while she is breathing fire to the other rock.  Repeat this until she surrenders.
.' Defeat Aeosera |q 26659/2
step
goto 33.1,24.1
.talk 42466
..turnin 26659
step
goto 72.2,54.0
.talk 42472
..turnin 26577
..accept 26578
..accept 26579
..accept 26580
step
goto 71.8,47.6
.talk 43395
..turnin 26580
..accept 26581
step
goto 73.6,40.8
.kill 8 Fungal Behemoth##42475+ |q 26579/1
.from Doomshroom##43388+ |tip They look like orange mushrooms around this area.
.' Destroy 10 Doomshrooms |q 26578/1
.' Gather a sample of the red mist |q 26581/1 |tip There are small clouds of red mist that float around on the ground around this area.  Walk into one of them to gather a sample.
step
goto 71.8,47.6
.talk 43395
..turnin 26581
..accept 26582
step
goto 72.2,54.0
.talk 42472
..turnin 26578
..turnin 26579
..turnin 26582
..accept 26584
..accept 26585
step
goto 68.5,26.4
.talk 43442
..accept 26583
step
goto 68.6,29.1 |n
.' Enter the cave |goto 68.6,29.1,0.5 |noway |c
step
goto 69.8,31.9
.talk 43503
..' Tell her you're ready when she is
.kill Fungalmancer Glop##43372 |q 26583/2 |tip Follow him each time he runs away.  Avoid the mushrooms as you walk, they will give you a debuff.  While fighting Fungalmancer Glop, kill the Boomshrooms he creates.  Don't let them grow too big, they will explode and deal a lot of damage.
step
goto 70.2,33.8 |n
.' Follow the path up |goto 70.2,33.8,0.5 |noway |c
step
goto 68.6,29.1 |n
.' Leave the cave |goto 68.6,29.1,0.5 |noway |c
step
goto 68.5,26.3
.talk 43442
..turnin 26583
step
goto 69.4,24.8
.kill 8 Verlok Pillartumbler##43513+ |q 26584/1
.click Verlok Miracle-Grow##6895+
.get 8 Verlok Miracle-Grow |q 26585/1
step
goto 72.2,54.0
.talk 42472
..turnin 26584
..turnin 26585
..accept 26750
step
ding 83
step
goto 56.3,12.2
.talk 42465
..turnin 26750
..accept 26752
step
'Watch the dialogue
.' Attend the Stonemother's Audience |q 26752/1
step
goto 56.1,13.5
.talk 43809
..turnin 26752
..accept 26827
step
goto 49.9,50.1
.talk 44644
..' Tell him you are joining an assault on Lorthuna's Gate and he is needed.
|confirm
step
goto 51.5,51.8
.talk 44633
..' Tell her you are joining an assault on Lorthuna's Gate and she is needed.
|confirm
step
goto 49.9,50.1
.talk 44644
..' Tell him you are joining an assault on Lorthuna's Gate and he is needed. |tip You will probably need to wait for him to respawn.
.' Rally 5 Earthen Ring |q 26827/1
step
goto 51.3,50.1
.talk 44823
..accept 27005
step
goto 51.3,50.0
.talk 44818
..accept 27008
step
goto 49.6,53.0
.talk 43065
..turnin 26827
..accept 26828
step
goto 39.0,74.2
.' Go to this spot next to the big white portal
.' Investigate the Master's Gate |q 27008/1
step
goto 40.1,72.2
.from Twilight Cryptomancer##44855+, Twilight Crusher##44849+, Twilight Armsman##44847+
.get Masters' Gate Plans |q 27005/1
step
goto 51.3,50.1
.talk 44823
..turnin 27005
step
goto 51.3,50.0
.talk 44818
..turnin 27008
..accept 27043
step
goto 51.3,50.1
.talk 44823
..accept 27041
step
goto 40.8,66.3
.from Bound Water Elemental##44886
.' Acquire the Water Ward |q 27043/2
step
goto 36.0,67.4
.from Bound Fire Elemental##44887
.' Acquire the Fire Ward |q 27043/1
step
goto 40.5,72.4
.from Bound Air Elemental##44885
.' Acquire the Air Ward |q 27043/3
step
goto 40.2,67.5
.click One-Time Decryption Engine##9842+
.' Decrypt 6 Plans |q 27041/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27041
..accept 27059
step
goto 39.1,73.9
.click Waygate Controller##9849
.' Destroy the Waygate |q 27059/1
step
goto 39.9,62.2
.kill Haethen Kaul##44835 |q 27043/4 |tip He's up on a huge floating rock.
step
goto 51.3,50.0
.talk 44823
..turnin 27059
..accept 28293
step
goto 51.3,50.0
.talk 44818
..turnin 27043
step
goto 63.3,25.0
.talk 44025
..turnin 26828
..accept 26829
..accept 26832
step
goto 62.6,26.9
.talk 44080
..accept 26831
step
goto 62.4,31.8
.from High Priestess Lorthuna##42914 |tip She is in a small room on the top of this building.  She is elite, but you can still kill her.  She will run away when she is almost dead.
.' Defeat High Priestess Lorthuna |q 26832/2
step
goto 58.9,32.9
.from Boldrich Stonerender##42923
.' Defeat Boldrich Stonerender |q 26832/1
step
goto 63.1,38.1
.from Zoltrik Drakebane##42918 |tip You will eventually get on a stone drake and fly after Zoltrik Drakebane.  You can use your Jump ability to jump onto his drake, if you are a melee class.  Either way, you will land on a rock with him and kill him there.
.' Defeat Zoltrik Drakebane |q 26831/1
step
goto 64.1,36.9
.talk 42614
..turnin 26831
step
goto 60.3,33.2
.from Defaced Earthrager##44076+, Twilight Soulreaper##42916+, Twilight Priestess##42823+ |q 26829/1
step
goto 63.3,25.0
.talk 44025
..turnin 26829
..turnin 26832
..accept 26833
step
goto 49.6,53.0
.talk 43818
..turnin 26833
..accept 26875
step
goto 50.7,49.6
.from Twilight Heretic##44681+ |q 26875/1
.kill Desecrated Earthrager##44683+ |q 26875/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26875
..accept 26971
step
goto 49.6,52.9
.kill High Priestess Lorthuna##43837 |q 26971/1
step
goto 49.6,52.9
.talk 43835
..turnin 26971
step
goto 49.8,53.4
.talk 43792
..accept 26709
step
goto 56.4,12.1
.talk 42465
..turnin 26709
step
label "daily"
.' To earn Pubble, you must do the _Rock Lover_ achievement, which means you will have to do Lost in the Deeps 10 times.
.' Since the daily quest isn't available every day, this pet may take a while to earn.
goto 55.4,14.2
.talk 44945
..accept 26710 |tip This quest can be offered at random and may not be offered everyday.
step
goto 58.3,25.6
.' Wait in this spot until Pebble bobbles around appreciatively and then disappears into the distance
.' Bring Pebble to safety |q 26710/1
step
goto 55.4,14.2
.talk 44945
..turnin 26710
.' Click here to restart the daily. |next daily |confirm always
.' Once you've done the daily 10 times, click here. |next buy |confirm always
step
label "buy"
'Check your _mailbox_ for your _prize_!
.collect 1 Pebble##60869
'|modeldisplay  33254
step
.learnpet Pebble##45247 |use Pebble##60869
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Pint-Sized Pink Pachyderm",[[
description This guide will walk you through obtaining
description the Critter pet: Pint-Sized Pink Pachyderm
pet 166
step
'This _pet_ is _only availiable_ during the _Brewfest_ Holiday
.collect 100 Brewfest Prize Tokens##37829
.' Click here if you need to do the quests leading up to the dailies. |next "Zygor's Horde Events Guides\\Brewfest\\Brewfest Quests" |confirm |confirm |only if ZGV.guidesets["DailiesHCATA"]
.' Click here if you have completed the quests and only need the dailies. |next "Zygor's Horde Events Guides\\Brewfest\\Brewfest Dailies" |confirm |confirm |only if ZGV.guidesets["DailiesHCATA"]
step
'Go to Durotar and talk to Blix Fixwidget
.talk 24495
.buy 1 Pint-Sized Pink Pachyderm##46707
'|modeldisplay 22629
step
.learnpet Pint-Sized Pink Pachyderm##24753 |use Pint-Sized Pink Pachyderm##46707
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Plump Turkey",[[
description This guide will walk you through obtaining
description the Flying pet:Plump Turkey
pet 201
#include "Pilgrims_Bounty_Quests_Horde"
#include "Pilgrims_Bounty_Achievements_Horde"
#include "Pilgrims_Bounty_Dailies"
step
'Check your _mailbox_ for your _prize_!
.collect 1 Turkey Cage##44810
'|modeldisplay 21774
step
.learnpet Plump Turkey##32818 |use Turkey Cage##44810
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Pterrordax Hatchling",[[
description This guide will walk you through obtaining
description the Flying pet: Pterrordax Hatchling
pet 309
step
'This pet is a _rare Archaeology "Fossil"_ solve
goto Orgrimmar,49.1,70.5 |only if skillmax("Archaeology")<1
.talk 47571 |only if skillmax("Archaeology")<1
.skillmax Archaeology,75 |only if skillmax("Archaeology")<1
.skill Archaeology,525
step
'Open your _world map_, find dig sites in _Kalimdor_ and _Eastern Kingdoms_, and go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
.' Use your Survey ability inside the dig site area |cast Survey##80451
.' A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 3 artifacts you can find.
.' Click the Archaeology Fragments that spawn on the ground
.' You're looking for a _rare artifact_ in the _"Fossil"_ tab called _"Pterrodax Hatchling"_. Solve this Archaeology puzzle
.collect 1 Pterrodax Hatchling##69821
'|modeldisplay 38229
step
.learnpet Pterrordax Hatchling##53225 |use Pterrodax Hatchling##69821
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Red Dragonhawk Hatchling",[[
description This guide will walk you through obtaining
description the Dragonkin pet: Red Dragonhawk Hatchling
pet 143
model 28401,29363,29362
step
goto Eversong Woods 44.8,71.6
.talk 16860
.buy 1 Red Dragonhawk Hatchling##29956
'|modeldisplay 29363
step
.learnpet Red Dragonhawk Hatchling##21064 |use Red Dragonhawk Hatchling##29956
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Rustberg Gull",[[
description This guide will walk you through obtaining
description the Flying pet: Rustberg Gull
pet 271
step
label begin
' This will require that you be Honored with the Hellscream's Reach.
.' Use this guide to gain reputation with them, as well as earn Tol Barad Commendations.
.' You will need 40 Tol Barad Commendations.
.earn 40 Tol Barad Commendation##391
.' _Honored_ with Hellscream's Reach |condition rep("Hellscream's Reach")>=Honored |next buy
.' Click here to move on to the daillies. |confirm
.' If you have 40 Tol Barad Commendations and are Honored with Baradin's Wardens, click here. |next "buy" |confirm
step
'This will require you to be _honored_ with _Hellscream's Reach_
.' Honored with Hellscream's Reach |condition rep("Hellscream's Reach")>=Honored
.earn 40 Tol Barad Commendation##391
step
'You will only be able to accept a total of 6 quests in the following guide steps.
|confirm
step
goto Tol Barad Peninsula,55.2,81.3
.talk 48360
..accept 28684
..accept 28680
..accept 28678
..accept 28679
..accept 28681
..accept 28683
step
goto 53.5,80.6
.talk 48358
..accept 28682
..accept 28685
..accept 28686
..accept 28687
..accept 28721
step
goto 54.9,79.3
.talk 48363
..accept 28693
..accept 28691
..accept 28692
..accept 28690
..accept 28689
step
goto 55.8,78.5
.talk 48361
..accept 28696
..accept 28698
..accept 28697
..accept 28700
..accept 28695
..accept 28694
step
goto 74.3,42.8 |n
.' Follow the path up |goto 74.3,42.8,0.5 |noway |c
step
goto 78.6,42.0
.kill Commander Largo |q 28700/1 |tip He's at the top of the tower.
step
goto 78.2,49.0
.from Overlook Spectre##47182+, Ghastly Worker##47183+, Overlook Spirit##47181+, Cursed Stallion##46645+
.' Slay 14 Largo's Overlook Ghosts |q 28697/1
.' Click Stacks of Cannonballs |tip They look like piles of cannonballs shaped like pyramids on the ground around this area.
.get 4 Stack of Cannonballs |q 28698/1
step
goto 69.3,23.1
.' Click Strings of Fish |tip They look like small fish hanging from simple wooden structures on the docks around this area.
.get 22 Rustberg Seabass |q 28687/1
step
goto 67.6,37.1
.from Suspicious Villager##47657+, Apprehensive Worker##47659+, Rustberg Bandit##47627+
.kill 14 Rustberg Village Residents |q 28686/1
step
goto 54.2,47.0
.kill 12 Darkwood Lurker |q 28683/1
.from Darkwood Broodmother##46507+
.get 4 Sticky Silk Gland |q 28684/1
step
goto 47.9,8.1
.kill Captain P. Harris |q 28678/1 |tip He's walking around on this broken boat.
step
goto 49.4,19.8
.kill Tank |q 28681/1 |tip He's an elite shark that swims in the water around this area.  This is a group quest, so you will probably need help.
.' Click Barrels of Southsea Rum |tip They look like barrels underwater around this area.
.get 6 Barrel of Southsea Rum |q 28680/1
step
goto 49.0,29.4
.kill 8 Shipwrecked Sailor |q 28679/1
step
goto 36.1,27.3
.kill Keep Lord Farson |q 28682/1 |tip He's upstairs in the fort.
step
goto 37.8,29.1
.talk 48308
..' Tell you're here to help him escape
.' Escort the Farson Prisoner |q 28721/1 |tip Follow the Farson Hold Prisoner and protect him.
step
goto 41.2,35.8
.' Click Racks of Rifles |tip They look like wooden stands with guns on them around this area.
.get 12 Rusty Rifle |q 28685/1
step
goto 27.2,47.7
.kill Foreman Wellson |q 28695/1
step
goto 22.2,36.3
.' Click a Cannon |tip They look like black cannons on this small dock.
.' Shoot the boats
.' Destroy 10 Wellson Supply Boats |q 28696/1
step
goto 30.1,43.9
.from Ghastly Dockhand##46641+, Accursed Longshoreman##46630+, Accursed Shipbuilder##46643+
.get 15 Shipyard Lumber |q 28694/1
step
goto 40.2,57.9
.kill 5 Restless Soldier |q 28693/1
.' Use your Magnatized Scrap Collector |use Magnatized Scrap Collector##62829
.' Click Siege Scraps |tip They look like metal objects on the ground that appear after your use your Magnatized Scrap Collector.
.get 7 Siege Engine Scrap |q 28692/1
step
goto 38.4,77.6
.kill First Lieutenant Connor |q 28691/1 |tip He's a big skeleton that walks around this area, so you may need to search for him.
step
goto 38.1,71.5
.from Wandering Soul##46586+, Forgotten Ghoul##46569+
.get 9 Cursed Femur |q 28690/1
.' Click Forgotten Soldier's Tombstones |tip They look like taller and slimmer gravestones around this area.
.' Release 6 Tortured Souls |q 28689/1
step
goto 55.2,81.3
.talk 48360
..turnin 28684
..turnin 28680
..turnin 28678
..turnin 28679
..turnin 28681
..turnin 28683
step
goto 53.5,80.6
.talk 48358
..turnin 28682
..turnin 28685
..turnin 28686
..turnin 28687
..turnin 28721
step
goto 54.9,79.3
.talk 48363
..turnin 28693
..turnin 28691
..turnin 28692
..turnin 28690
..turnin 28689
step
goto 55.8,78.5
.talk 48361
..turnin 28696
..turnin 28698
..turnin 28697
..turnin 28700
..turnin 28695
..turnin 28694
step
goto Tol Barad Peninsula,66.9,79.8 |n
.' Cross the bridge to Tol Barad. |goto Tol Barad |noway|c
step
'These daily quests will only be available if the Horde faction currently controls Tol Barad.
|confirm
step
'You will only be able to accept a total of 6 quests in the following guide steps.
|confirm
step
goto Tol Barad,50.9,49.7
.talk 48069
..accept 28657
..accept 28658
..accept 28659
step
goto 51.5,49.7
.talk 48070
..accept 28663
..accept 28664
..accept 28665
step
goto 51.5,49.7
.talk 48071
..accept 28660
..accept 28662
..accept 28661
step
goto 51.5,49.7
.talk 48062
..accept 28670
..accept 28668
..accept 28669
step
goto 42.7,39.1 |n
.' Enter the underground jail |goto 42.7,39.1,0.5 |noway |c
step
goto 48.3,30.7
.from Svarnos##47544+
.get Svarnos' Cursed Collar |q 28664/1
step
goto 44.4,30.5
.from Imprisoned Imp##47549+, Cell Watcher##47542+, Shivan Destroyer##47540+, Jailed Wrathguard##47548+
.' Slay 10 Demons |q 28663/1
.' Click Cursed Shackles |tip They look like gray metal ball and chains laying on the ground all around this area.
.get 8 Cursed Shackles |q 28665/1
step
goto 42.1,41.8
.from Baradin Crocolisk##47591+
.get 8 Crocolisk Hide |q 28658/1
step
goto 44.0,69.2 |n
.' Enter the underground jail |goto 44.0,69.2,0.5 |noway |c
step
goto 37.5,71.7
.from Warden Silva##48036
.get Warden's Keys |q 28669/1
step
goto 40.9,78.2
.from Imprisoned Worker##47550+, Exiled Mage##47552+
.' Slay 10 Prisoners |q 28668/1
.' Click Crates of Cellblock Rations |tip They look like slim square wooden boxes on the ground around this area.
.get 12 Cellblock Ration |q 28670/1
step
goto 60.8,50.1 |n
.' Enter the underground jail |goto 60.8,50.1,0.5 |noway |c
step
goto 56.8,54.8
.from Archmage Galus##47537
.get Archmage Galus' Staff |q 28661/1
step
goto 51.4,49.5
.from Captive Spirit##47531+, Ghastly Convict##47590+
.' Slay 9 Ghosts |q 28660/1
.' Click Dusty Prison Journals |tip They are books laying on the ground around this area.
.get 4 Dusty Prison Journal |q 28662/1
step
goto Tol Barad,35.8,67.8
.from Alliance Mage Infantry##47598+, Alliance Hunter Infantry##47595+, Alliance Paladin Infantry##47600+, Alliance Warrior Infantry##47599+
.kill 12 Alliance Infantry |q 28659/1
step
goto 52.8,36.7
.kill Problim |q 28657/1 |tip He's a tall ogre that walks along the road that surrounds Baradin Hold, so you may need to search for him.  He's elite, and the quest is a group quest, so you may need help killing him.
step
goto 50.9,49.7
.talk 48069
..turnin 28657
..turnin 28658
..turnin 28659
step
goto 51.5,49.7
.talk 48070
..turnin 28663
..turnin 28664
..turnin 28665
step
goto 51.5,49.7
.talk 48071
..turnin 28660
..turnin 28662
..turnin 28661
step
goto 51.5,49.7
.talk 48062
..turnin 28670
..turnin 28668
..turnin 28669
|next begin
step
label "buy"
goto Tol Barad Peninsula,54.6,81.0
.talk 48531
.buy 1 Rustberg Gull##64996
'|modeldisplay 36499
step
.learnpet Rustberg Gull##48107 |use Rustberg Gull##64996
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Scooter the Snail",[[
description This guide will walk you through obtaining
description the Critter pet:Scooter the Snail
pet 289
step
'You may only get _three_ of these pets _per year_ from _completing_ the quest lines _Back to the Orphanage (Shattrath)_, _Warden of the Horde_, and _Back to the Orphanage (Dalaran)_
.' If you are aligned with the Oracles, click here for their Children's Week Daily set. |next "Zygor's Alliance Events Guides\\Children's Week\\Children's Week Dalaran Oracles Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
.' If you are aligned with the Wolvar, click here for their Children's Week Daily set. |next "Zygor's Alliance Events Guides\\Children's Week\\Children's Week Dalaran Wolvar Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
.' For the Shattrath Daily set, click here. |next "Zygor's Alliance Events Guides\\Children's Week\\Children's Week Shattrath Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
|confirm
step
.collect 1 Snail Shell##66073 |tip Warden of the Horde
'|modeldisplay 32663
step
.learnpet Scooter the Snail##51635 |use Snail Shell##66073 |tip Warden of the Horde
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Sea Pony",[[
description This guide will walk you through obtaining
description the Aquatic pet:Sea Pony
pet 340
step
'This pet requires Darkmoon Island to be accessible.
|confirm
step
goto Darkmoon Island,56.0,52.9 |n
.' Follow the Path to the Darkmoon Faire |goto Darkmoon Island,56.0,52.9,1 |noway |c
step
'This pet can be caught by fishing the waters around Darkmoon Island.
.collect Sea Pony##73953
|modeldisplay 39109
step
.learnpet Sea Pony##55386 |use Sea Pony##73953
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Sen'jin Fetish",[[
description This guide will walk you through obtaining
description the Undead pet: Sen'jin Fetish
pet 218
step
'In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Troll.
|confirm always
step
.' Proceeding to Pre Quests. |next |only if default
.' Click here Aspirant Rank Daily quests. |next "Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Argent Tournament Grounds Aspirant Rank Dailies. Includes Pre-Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
.' Click here for |next "Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Argent Tournament Grounds Valiant Rank Dailies" |confirm |only if ZGV.guidesets["DailiesHCATA"]
.' Click here if you are already at the rank of Champion. |next buy |confirm
step
goto Icecrown,72.6,22.6
.talk 33849
..fpath Argent Tournament Grounds
step
goto Icecrown,69.7,22.9
.talk 33817
..accept 13668
step
goto 76.3,24.4
.talk 33542
..turnin 13668
..accept 13829
step
goto 76.3,24.4
.talk 33658
..accept 13839
step
goto 76.2,24.4
.talk 33659
..accept 13838
step
goto 75.6,23.7
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Sunreaver Hawkstrider|invehicle|q 13829
step
goto 72.5,19.3
.talk 33973
.' Listen to Jeran Lockwood's advice|q 13829/1
step
goto 72.7,18.9
.talk 33972
.' Listen to Rugan Steelbelly's advice|q 13839/1
step
goto 73.2,19.2
.talk 33974
.' Listen to Valis Windchaser's advice|q 13838/1
step
goto 73.1,19.0
.' Target a Ranged Target from a distance
.' Use Shield-Breaker ability on Ranged Target to bring it's shields down
.' Use Shield-Breaker ability on Ranged Target twice, while it's shields are down|q 13838/2
step
goto 72.9,18.8
.' Target a Charge Target from a distance
.' Use Shield-Breaker ability until you notice the targets Defend is gone
.' Use your Charge ability on the Charge Target 2 times|q 13839/2
step
goto 72.6,19.7
.' Target a Melee Target
.' If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
.' Use your Thrust ability to attack the target 5 times|q 13829/2
step
'Click the red arrow on your hotbar to stop riding the bird mount|outvehicle|q 13829
step
goto 76.3,24.4
.talk 33542
..turnin 13829
step
goto 76.3,24.4
.talk 33658
..turnin 13839
step
goto 76.2,24.4
.talk 33659
..turnin 13838
step
label buy
goto Icecrown,76.0,24.5
.talk 33372
..accept 13708
..turnin 13708
..accept 13719
step
goto 76.0,24.5
.talk 33372
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13768 |or
..accept 13769 |or
..accept 13770 |or
step
goto 76.0,24.6
.talk 33540
..accept 13771
step
goto 75.9,24.4
.talk 33545
..accept 13772
..accept 13857
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..' Tell her you are glad to help
.get Ashwood Brand |q 13768/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13769
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13769/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13770
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13770/1
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13857
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13857/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13857/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13857/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13857
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13771/1
step
goto 75.6,23.8
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Darkspear Raptor|invehicle |q 13772
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13772/1
step
goto 76.0,24.5
.talk 33372
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13768
..turnin 13769
..turnin 13770
step
goto 76.0,24.6
.talk 33540
..turnin 13771
step
goto 75.9,24.4
.talk 33545
..turnin 13772
..turnin 13857
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13719/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.0,24.5
.talk 33372
..turnin 13719
..accept 13727
step
goto 72.0,22.5
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Darkspear Raptor|invehicle |q 13727
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13727/1
step
goto 76.0,24.5
.talk 33372
..turnin 13727
step
.' Become a Champion of Sen'jin |achieve 2784
.earn 40 Champion's Seal##241+
.' If you don't meet both of these requirements go back to step 1 of the guide.
step
goto Icecrown,76.0,24.4
.talk 33554
.buy 1 Sen'jin Fetish##45606
'|modeldisplay 29189
step
.learnpet Sen'jin Fetish##33810 |use Sen'jin Fetish##45606
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Shimmering Wyrmling",[[
description This guide will walk you through obtaining
description the Magic pet: Shimmering Wyrmling
pet 229
step
'Use the _Icecrown Dailies_ section of this guide to complete the _Argent Tournament Grounds_ and _The Sunreavers pre-quests_ and _dailies_.
.' _Exalted_ with _The Sunreavers_ |condition rep("The Sunreavers")>=Exalted
.' Click here for The Pre Quests. |next |only if not completedq(13838) |confirm
|next "Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Argent Tournament Grounds Aspirant Rank Dailies. Includes Pre-Quests" |only if ZGV.guidesets["DailiesHCATA"] |confirm
|next "Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Argent Tournament Grounds Valiant Rank Dailies" |only if ZGV.guidesets["DailiesHCATA"] |confirm |only if completedq(13678)
|next "Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\ATG Champion Rank Dailies - Death Knight Only" |only DeathKnight |only if ZGV.guidesets["DailiesHCATA"] |confirm |only if completedq(13795)
|next "Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\ATG Champion Rank Dailies - Non-Death Knight Only" |only !DeathKnight |only if ZGV.guidesets["DailiesHCATA"] |only if completedq(13794)
.' Click here if you have completed the Pre Quests. |next buy |confirm
step
goto Icecrown,72.6,22.6
.talk 33849
..fpath Argent Tournament Grounds
step
goto Icecrown,69.7,22.9
.talk 33817
..accept 13668
step
goto 76.3,24.4
.talk 33542
..turnin 13668
..accept 13829
step
goto 76.3,24.4
.talk 33658
..accept 13839
step
goto 76.2,24.4
.talk 33659
..accept 13838
step
goto 75.6,23.7
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Sunreaver Hawkstrider|invehicle|q 13829
step
goto 72.5,19.3
.talk 33973
.' Listen to Jeran Lockwood's advice|q 13829/1
step
goto 72.7,18.9
.talk 33972
.' Listen to Rugan Steelbelly's advice|q 13839/1
step
goto 73.2,19.2
.talk 33974
.' Listen to Valis Windchaser's advice|q 13838/1
step
goto 73.1,19.0
.' Target a Ranged Target from a distance
.' Use Shield-Breaker ability on Ranged Target to bring it's shields down
.' Use Shield-Breaker ability on Ranged Target twice, while it's shields are down|q 13838/2
step
goto 72.9,18.8
.' Target a Charge Target from a distance
.' Use Shield-Breaker ability until you notice the targets Defend is gone
.' Use your Charge ability on the Charge Target 2 times|q 13839/2
step
goto 72.6,19.7
.' Target a Melee Target
.' If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
.' Use your Thrust ability to attack the target 5 times|q 13829/2
step
'Click the red arrow on your hotbar to stop riding the bird mount|outvehicle|q 13829
step
goto 76.3,24.4
.talk 33542
..turnin 13829
step
goto 76.3,24.4
.talk 33658
..turnin 13839
step
goto 76.2,24.4
.talk 33659
..turnin 13838
step
label buy
.earn 50 Champion's Seal##241
goto Icecrown,76.2,24.0
.talk 34772
.buy 1 Shimmering Wyrmling##46821
'|modeldisplay 29372
step
.learnpet Shimmering Wyrmling##34724 |use Shimmering Wyrmling##46821
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Shore Crawler",[[
description This guide will walk you through obtaining
description the Aquatic pet: Shore Crawler
pet 629
step
goto Orgrimmar 37.6,79.1
.talk 63086
.' Tell him you're interested in catching some rare pets.
.learnpet Shore Crawler##63097
|modeldisplay 32790
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Silver Dragonhawk Hatchling",[[
description This guide will walk you through obtaining
description the Dragonkin pet:Silver Dragonhawk Hatchling
pet 144
step
goto Eversong Woods 44.8,71.6
.talk 16860
.buy 1 Silver Dragonhawk##29957
'|modeldisplay 29362
step
.learnpet Silver Dragonhawk Hatchling##21063 |use Silver Dragonhawk##29957
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Silver Tabby Cat",[[
description This guide will walk you through obtaining
description the Beast pet: Silver Tabby Cat
pet 45
step
goto The Cape of Stranglethorn/0 40.1,72.4
.talk 8123
.buy 1 Cat Carrier (Silver Tabby)##8488
.' These pets aren't available to the Horde by normal means.
.' Alternatively, you can purchase this from the Horde Auctioneer, although it may not be available.
'|modeldisplay 5555
step
.learnpet Silver Tabby Cat##7381 |use Cat Carrier (Silver Tabby)##8488
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Small Frog",[[
description This guide will walk you through obtaining
description the Aquatic pet: Small Frog
pet 419
step
goto Northern Barrens 36.2,44.0
.' The Small Frog is level 3. Challenge one to a pet battle and capture it.
.learnpet Small Frog##61071
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Strand Crawler",[[
description This guide will walk you through obtaining
description the Aquatic pet: Strand Crawler
pet 211
step
label "select"
'You must complete the Fishing Daily quests in Undercity or Dalaran to obtain this pet
.' Click here to do the Undercity Daily Quests. |next "undfish" |confirm
.' Click here to do the Dalaran Daily Quests. |next "dalfish" |confirm
step
label "dalfish"
.' In order to earn this Achievement, you will have to complete 5 daily quests.
.' You will only be able to accept one per day, so this may take longer than 5 days to achieve.
.' Click here to proceed |confirm
step
'Below is a list of the 5 daily quests you will need to complete.
.' The Ghostfish |achieve 3217/1
.' Jewel Of The Sewers |achieve 3217/2
.' Dangerously Delicious |achieve 3217/3
.' Blood is Thicker |achieve 3217/4
.' Disarmed! |achieve 3217/5
.' Click to proceed |confirm
step
goto Dalaran,53.1,64.9
.talk 28742
.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
..accept 13833 |or
..accept 13834 |or
..accept 13832 |or
..accept 13836 |or
..accept 13830 |or
step
goto Borean Tundra,54.6,41.8
.from Wooly Mammoth##24614, Mammoth Calf##24613, Wooly Mammoth Bull##25743
.' Get the Animal Blood buff|havebuff Ability_Seal|q 13833
only if havequest (13833)
step
goto 53.7,42.9
.' Walk into the water here to create a pool of blood
.' Fish in the pool of blood
.get 5 Bloodtooth Frenzy |q 13833/1
only if havequest (13833)
step
goto Wintergrasp,79.9,41.8
.' Fish in this big lake
.get 10 Terrorfish |q 13834/1
only if havequest (13834)
step
'The entrance to the Dalaran sewers starts here|goto Dalaran,60.2,47.7,0.3|c|q 13832
only if havequest (13832)
step
goto 44.4,66.2
.' Fish in the water in the Dalaran sewers
.get 1 Corroded Jewelry |q 13832/1
only if havequest (13832)
step
'Leave the Dalaran sewers|goto Dalaran,60.2,47.7,0.3|c|q 13832
only if havequest (13832)
step
goto Dalaran,64.8,60.8
.' Stand on the this circular platform and fish in the water here
.collect Bloated Slippery Eel##45328|n
.' Click the Bloated Slippery Eel in your bags|use Bloated Slippery Eel##45328
.get 1 Severed Arm |q 13836/1
only if havequest (13836)
step
goto Sholazar Basin,49.3,61.8
.' Fish in the water here
.collect 1 Phantom Ghostfish##45902|n
.' Click the Phantom Ghostfish in your bags to eat it|use Phantom Ghostfish##45902
.' Discover the Ghostfish mystery |q 13830/1
only if havequest (13830)
step
goto Dalaran,53.1,64.9
.talk 28742
.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
..turnin 13833
..turnin 13834
..turnin 13832
..turnin 13830
|next "use2"
step
goto Dalaran,36.6,37.3
.talk 28706
..turnin 13836
|next "use2"
step
label "use2"
|use Bag of Fishing Treasures##46007
.collect 1 Strand Crawler##44983 |next "use"
.' Click here to go to the beginning of this daily guide. |next "select" |confirm
|modeldisplay 1307
step
label "undfish"
.' In order to earn the achievement Fish or Cut Bait: Darnassus, you will need to complete 5 daily quests from the NPC Armand Cromwell.
.' You will only be able to accept 1 of the 5 quests per day.
.' Click here to proceed. |confirm
step
.' Below are the following quests you will have to complete in order to earn the achievement:
.' Fish Head |achieve 5850/1
.' Tadpole Terror |achieve 5850/2
.' Like Pike? |achieve 5850/3
.' Time for Slime |achieve 5850/4
.' Moat Monster |achieve 5850/5
.' Click here to proceed. |confirm
step
.' Go to Undercity |goto Undercity |noway|c
step
label dailies
goto Undercity,81.6,30.8
.talk 4573
.' You will only be able to accept one of the five quests listed.
.accept 29317 |or
.accept 29320 |or
.accept 29361 |or
.accept 29319 |or
.accept 29322 |or
step
goto 81.6,31.5
.' Use your Fishing skill at the edge of the wooden dock to fish up a Severed Abomination Head |cast Fishing##7620
.get Severed Abomination Head##69901 |q 29317/1
only if havequest(29317)
step
goto Undercity,67.3,15.2
.' Click on the graves here to collect a Corpse Worm |tip It looks like sparkling dirt in front of a grave stone
only if havequest(29320)
step
goto Tirisfal Glades,67.1,50.8
.' Use your Fishing skill in the water here to fish up Corpse-Fed Pike |cast Fishing##7620
.get Corpse-Fed Pike##69909 |q 293320/1
only if havequest(29320)
step
goto Undercity,64.7,16.5
.' Open your Moat Monster Feeding Kit |use Moat Monster Feeding Kit##69999
.' Lure the Moat Monster out with the Alliance Decoy |use Alliance Decoy Ki##69998
.' Feed the Moat Monster with your Bloated Frogs! |use Bloated Frog##69995
.' Feed Bloated Frogs to the Moat Monster |q 29361/1
|only if havequest(29361)
step
goto Tirisfal Glades,50.6,56.5
.' Use your Fishing skill to fish up Giant Flesh-Eating Tadpoles |cast Fishing##7620
.get 8 Giant Flesh-Eating Tadpole##69905 |q 29319/1
only if havequest(29319)
step
goto Undercity,81.1,32.0
.' Click on the Squirming Slime Mold in the green, slimy water all over Undercity |tip These are a bit hard to see, so, to see them better, you can dive into the water, or turn on your display health bars by pushing [V]
.get 10 Squirming Slime Mold##69911 |q 29322/1
only if havequest(29322)
step
goto Undercity,81.6,30.8
.talk 4573
.turnin 29320 |or
.turnin 29361 |or
.turnin 29319 |or
.turnin 29322 |or
|only if havequest(29320) or havequest(29361) or havequest(29319) or havequest(29322)
step
goto Undercity,48.4,69.4
.talk 2055 |or
.turnin 29317
|only if havequest(29317)
step
.' Below are the following quests you will have to complete in order to earn the achievement:
.' Fish Head |achieve 5850/1
.' Tadpole Terror |achieve 5850/2
.' Like Pike? |achieve 5850/3
.' Time for Slime |achieve 5850/4
.' Moat Monster |achieve 5850/5
.' Click here to go to the beginning of this dailies guide |next "select" |confirm
step
label "use"
.learnpet Strand Crawler##33226 |use Strand Crawler##44983
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Teldrassil Sproutling",[[
description This guide will walk you through obtaining
description the Elemental pet: Teldrassil Sproutling
pet 204
step
goto The Cape of Stranglethorn/0 40.1,72.4
.talk 8123
.buy 1 Teldrassil Sproutling##44965
.' These pets aren't available to the Horde by normal means.
.' Alternatively, you can purchase this from the Horde Auctioneer, although it may not be available.
|modeldisplay 28482
step
.learnpet Teldrassil Sproutling##33188 |use Teldrassil Sproutling##44965
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Thundering Serpent Hatchling",[[
description This guide will walk you through obtaining
description the Dragonkin pet: Thundering Serpent Hatchling
pet 802
step
'This pet requires you to be _Revered_ with your guild.
|confirm
step
goto Orgrimmar 48.2,75.6
.talk 46572
.buy 1 Thundering Serpent Hatchling##85513
|modeldisplay 43865
step
.learnpet Thundering Serpent Hatchling##65313 |use Thundering Serpent Hatchling##85513
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Tiny Flamefly",[[
description This guide will walk you through obtaining
description the Flying pet:Tiny Flamefly
pet 287
step
goto The Jade Forest 46.6,43.8
.talk 66241
.buy 1 Tiny Flamefly##66080
step
.learnpet Tiny Flamefly##51632 |use Tiny Flamefly##66080
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Tirisfal Batling",[[
description This guide will walk you through obtaining
description the Flying pet: Tirisfal Batling
pet 206
step
'In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are an Undead.
|confirm always
step
.' Proceeding to Pre Quests. |next |only if default
.' Click here Aspirant Rank Daily quests. |next "Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Argent Tournament Grounds Aspirant Rank Dailies. Includes Pre-Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
.' Click here for |next "Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Argent Tournament Grounds Valiant Rank Dailies" |confirm |only if ZGV.guidesets["DailiesHCATA"]
.' Click here if you are already at the rank of Champion. |next buy |confirm
step
goto Icecrown,72.6,22.6
.talk 33849
..fpath Argent Tournament Grounds
step
goto Icecrown,69.7,22.9
.talk 33817
..accept 13668
step
goto 76.3,24.4
.talk 33542
..turnin 13668
..accept 13829
step
goto 76.3,24.4
.talk 33658
..accept 13839
step
goto 76.2,24.4
.talk 33659
..accept 13838
step
goto 75.6,23.7
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Sunreaver Hawkstrider|invehicle|q 13829
step
goto 72.5,19.3
.talk 33973
.' Listen to Jeran Lockwood's advice|q 13829/1
step
goto 72.7,18.9
.talk 33972
.' Listen to Rugan Steelbelly's advice|q 13839/1
step
goto 73.2,19.2
.talk 33974
.' Listen to Valis Windchaser's advice|q 13838/1
step
goto 73.1,19.0
.' Target a Ranged Target from a distance
.' Use Shield-Breaker ability on Ranged Target to bring it's shields down
.' Use Shield-Breaker ability on Ranged Target twice, while it's shields are down|q 13838/2
step
goto 72.9,18.8
.' Target a Charge Target from a distance
.' Use Shield-Breaker ability until you notice the targets Defend is gone
.' Use your Charge ability on the Charge Target 2 times|q 13839/2
step
goto 72.6,19.7
.' Target a Melee Target
.' If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
.' Use your Thrust ability to attack the target 5 times|q 13829/2
step
'Click the red arrow on your hotbar to stop riding the bird mount|outvehicle|q 13829
step
goto 76.3,24.4
.talk 33542
..turnin 13829
step
goto 76.3,24.4
.talk 33658
..turnin 13839
step
goto 76.2,24.4
.talk 33659
..turnin 13838
step
label buy
goto Icecrown,76.5,24.2
.talk 33373
..accept 13710
..turnin 13710
..accept 13721
step
goto 76.5,24.2
.talk 33373
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13778 |or
..accept 13779 |or
..accept 13780 |or
step
goto 76.6,24.1
.talk 33541
..accept 13781
step
goto 76.5,24.3
.talk 33547
..accept 13782
..accept 13860
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..' Tell her you're glad to help
.get Ashwood Brand |q 13778/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13779
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13779/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13780
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13780/1
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13860
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13860/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13860/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13860/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13860
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13781/1
step
goto 75.6,23.9
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Forsaken Warhorse|invehicle |q 13782
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13782/1
step
goto 76.5,24.2
.talk 33373
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13778
..turnin 13779
..turnin 13780
step
goto 76.6,24.1
.talk 33541
..turnin 13781
step
goto 76.5,24.3
.talk 33547
..turnin 13782
..turnin 13860
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13721/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.5,24.2
.talk 33373
..turnin 13721
..accept 13729
step
goto 72.1,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Forsaken Warhorse|invehicle |q 13729
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13729/1
step
goto 76.5,24.2
.talk 33373
..turnin 13729
step
.' Become a Champion of Undercity |achieve 2787
.earn 40 Champion's Seal##241+
.' If you don't meet both of these requirements go back to step 1 of the guide.
step
goto Icecrown,76.4,24.0
.talk 33555
.buy 1 Tirisfal Batling##44971
'|modeldisplay 28499
step
.learnpet Tirisfal Batling##33197 |use Tirisfal Batling##44971
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Tiny Snowman",[[
description This guide will walk you through obtaining
description the Elemental pet:Tiny Snowman
pet 117
step
'These _pets_ are _only availiable_ during the _Winter Veil_ Holiday
.' Receive _Gaily Wrapped Presents_ by clicking the presents _underneath the Christmas Tree_ in _Orgrimmar_
|use Gaily Wrapped Present##21310
.collect 1 Snowman Kit##21309
'|modeldisplay 13610
step
.learnpet Tiny Snowman##15710 |use Snowman Kit##21309
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Undercity Rat",[[
description This guide will walk you through obtaining
description the Critter pet: Undercity Rat
pet 454
step
goto Undercity 70.9,35.4
.' The _Undercity Rats_ are level 2. Challenge one to a pet battle and capture it.
.learnpet Undercity Rat##61889
|modeldisplay 1141
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Undercity Cockroach",[[
description This guide will walk you through obtaining
description the Critter pet: Undercity Cockroach
pet 55
step
goto Netherstorm 43.4,35.2
.talk 20980
.buy 1 Undercity Cockroach##10393
'|modeldisplay 2177
step
.learnpet Undercity Cockroach##7395 |use Undercity Cockroach##10393
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Voodoo Figurine",[[
description This guide will walk you through obtaining
description the Undead pet:Voodoo Figurine
pet 310
step
'This pet is a _rare Archaeology "Troll"_ solve
goto Orgrimmar,49.1,70.5 |only if skillmax("Archaeology")<1
.talk 47571 |only if skillmax("Archaeology")<1
.skillmax Archaeology,75 |only if skillmax("Archaeology")<1
.skill Archaeology,525
step
'Open your _world map_, find dig sites in _Eastern Kingdoms_, and go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
.' Use your Survey ability inside the dig site area |cast Survey##80451
.' A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 3 artifacts you can find.
.' Click the Archaeology Fragments that spawn on the ground
.' You're looking for a _rare artifact_ in the _"Troll"_ tab called _"Voodoo Figurine"_. Solve this Archaeology puzzle
.collect 1 Voodoo Figurine##69824
'|modeldisplay 38232
step
.learnpet Voodoo Figurine##53232 |use Voodoo Figurine##69824
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Westfall Chicken",[[
description This guide will walk you through obtaining
description the Flying pet: Westfall Chicken
pet 84
step
goto Tirisfal Glades 61.2,52.0
.talk 33996
.buy 1 Special Chicken Feed##11109
step
goto 38.0,51.4
'Perform the _"Chicken" emote_ on a _Chicken_: |script ZGV:DoEmote("Chicken") |tip Do this until the Chicken gives you a quest
.talk 620
..accept 3861
step
.talk 620
..turnin 3861
step
'_Click_ on the _Chicken Egg_ on the ground to _loot your new pet_
.collect 1 Chicken Egg##11110
'|modeldisplay 304
step
.learnpet Westfall Chicken##30379 |use Chicken Egg##11110 |tip Yes... the Tirisfal Glades chicken gives you a Westfall Chicken!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Whiskers the Rat",[[
description This guide will walk you through obtaining
description the Critter pet:Whiskers the Rat
pet 127
step
.' If you are aligned with the Oracles, click here for their Children's Week Daily set. |next "Zygor's Alliance Events Guides\\Children's Week\\Children's Week Dalaran Oracles Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
.' If you are aligned with the Wolvar, click here for their Children's Week Daily set. |next "Zygor's Alliance Events Guides\\Children's Week\\Children's Week Dalaran Wolvar Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
.' For the Shattrath Daily set, click here. |next "Zygor's Alliance Events Guides\\Children's Week\\Children's Week Shattrath Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
|confirm
step
.collect 1 Rat Cage##23015 |tip Warden of the Horde
'|modeldisplay 2176
step
.learnpet Whiskers the Rat##16549 |use Rat Cage##23015 |tip Warden of the Horde
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\White Kitten",[[
description This guide will walk you through obtaining
description the Critter pet: White Kitten
pet 46
step
goto The Cape of Stranglethorn/0 40.1,72.4
.talk 8123
.buy 1 Cat Carrier (White Kitten)##8489
.' These pets aren't available to the Horde by normal means.
.' Alternatively, you can purchase this from the Horde Auctioneer, although it may not be available.
'|modeldisplay 9989
step
.learnpet White Kitten##7386 |use Cat Carrier (White Kitten)##8489
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\White Moth",[[
description This guide will walk you through obtaining
description the Flying pet: White Moth
pet 141
step
goto The Cape of Stranglethorn/0 40.1,72.4
.talk 8123
.buy 1 White Moth Egg##29904
.' These pets aren't available to the Horde by normal means.
.' Alternatively, you can purchase this from the Horde Auctioneer, although it may not be available.
'|modeldisplay 19999
step
.learnpet White Moth##21018 |use White Moth Egg##29904
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Winter Reindeer",[[
description This guide will walk you through obtaining
description the Critter pet:Winter Reindeer
pet 118
step
'These _pets_ are _only availiable_ during the _Winter Veil_ Holiday
.' Receive _Gaily Wrapped Presents_ by clicking the presents _underneath the Christmas Tree_ in _Orgrimmar_
|use Gaily Wrapped Present##21310
.collect 1 Jingling Bell##21308
'|modeldisplay 15902
step
.learnpet Winter Reindeer##15706 |use Jingling Bell##21308
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Winter's Little Helper",[[
description This guide will walk you through obtaining
description the Humanoid pet: Winter's Little Helper
pet 120
step
'These _pets_ are _only availiable_ during the _Winter Veil_ Holiday
.' Receive _Gaily Wrapped Presents_ by clicking the presents _underneath the Christmas Tree_ in _Orgrimmar_
|use Gaily Wrapped Present##21310
.collect 1 Red Helper Box##21305
'|modeldisplay 15663
step
.learnpet Winter's Little Helper##15705 |use Red Helper Box##21305
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Withers",[[
description This guide will walk you through obtaining
description the Elemental pet: Withers
pet 220
step
goto Darkshore,56.8,31.2 |n
.' Enter this cave |goto Darkshore,56.8,31.2,0.5 |noway |c
step
goto 57.2,33.8
.talk 33980 |tip He's at the bottom of this cave and to the left with an imp walking around him
.buy 1 Withers##46325
'|modeldisplay 29184
step
.learnpet Withers##34278 |use Withers##46325
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Wolpertinger",[[
description This guide will walk you through obtaining
description the Critter pet: Wolpertinger
pet 153
step
'You can only obtain this pet during the Brewfest event.
|confirm
step
#include "H_Brewfest_Dailies"
step
'Complete the Brewfest daily quests each day until you have 200 Brewfest Prize Tokens
.collect 200 Brewfest Prize Token##37829 |achieve 2796
step
goto Durotar 40.3,17.9
.talk 24495
.buy "Brew of the Month" Club Membership Form##37599 |n
.' Click the "Brew of the Month" Club Membership Form in your bags |use "Brew of the Month" Club Membership Form##37599
..accept 12306
.' Buy the Wolpertinger's Tankard and click it to learn it. |achieve 1683/6
step
.learnpet Wolpertinger##22943 |use Wolpertinger's Tankard##32233
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Sumprush Rodent",[[
description This guide will walk you through obtaining
description the Beast pet:Sumprush Rodent
pet 1128
step
.' In order to get this pet, you will need to collect _Lion's Landing Commissions_.
.collect 2000 Lion's Landing Commision##91838 |next buy
.' Click here to farm. |confirm
step
goto Krasarang Wilds 81.6,25.3
.from Shieldwall Footman##67304+, Dwarven Mortar Team Engineer##67545+, Shieldwall Rifleman##67297+, Shieldwall Vindicator##67296+, Thane Stonehearth##67636
.collect Lion's Landing Commission##91838
step
label buy
goto Krasarang Wilds/0 10.8,53.4
.talk 67751
.buy Rodent Crate##92527
.' You will need to search for a _Sumprush Rodent_ around the area.
.' Use your Rodent Crate to capture the _Sumprush Rodent_. |use Rodent Crate##92527
.learnpet Sumprush Rodent##68506
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Armadillo Pup",[[
description This guide will walk you through obtaining
description the Critter pet: Armadillo Pup
pet 272
step
'This pet _requires_ your _guild_ to have the achievement _"Critter Kill Squad"_ completed
.' _50,000_ critters killed |achieve 5144
step
goto Orgrimmar,48.38,75.79
.talk 46572
.buy 1 Armadillo Pup##63398
|modeldisplay 36591
step
.learnpet Armadillo Pup##48242 |use Armadillo Pup##63398
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Curious Oracle Hatchling",[[
description This guide will walk you through obtaining
description the Humanoid pet: Curious Oracle Hatchling
pet 225
step
'You may only get _three_ of these pets _per year_ from _completing_ the quest lines _Back to the Orphanage (Shattrath)_, _Warden of the Horde_, and _Back to the Orphanage (Dalaran)_
.' If you are aligned with the Oracles, click here for their Children's Week Daily set. |next "Zygor's Horde Events Guides\\Children's Week\\Children's Week Dalaran Oracles Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
.' For the Shattrath Daily set, click here. |next "Zygor's Horde Events Guides\\Children's Week\\Children's Week Shattrath Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
|confirm
step
.collect 1 Curious Oracle Hatchling##46545 |tip Back to the Orphanage (Dalaran)
|modeldisplay 25924
step
.learnpet Curious Oracle Hatchling##33530 |use Curious Oracle Hatchling##46545 |tip Back to the Orphanage (Dalaran)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Curious Wolvar Pup",[[
description This guide will walk you through obtaining
description the Humanoid pet: Curious Wolvar Pup
pet 226
step
'You may only get _three_ of these pets _per year_ from _completing_ the quest lines _Back to the Orphanage (Shattrath)_, _Warden of the Horde_, and _Back to the Orphanage (Dalaran)_
.' If you are aligned with the Wolvar, click here for their Children's Week Daily set. |next "Zygor's Alliance Events Guides\\Children's Week\\Children's Week Dalaran Wolvar Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
.' For the Shattrath Daily set, click here. |next "Zygor's Alliance Events Guides\\Children's Week\\Children's Week Shattrath Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
|confirm
step
.collect 1 Curious Wolvar Pup##46544 |tip Back to the Orphanage (Dalaran)
|modeldisplay 25394
step
.learnpet Curious Wolvar Pup##33529 |use Curious Wolvar Pup##46544 |tip Back to the Orphanage (Dalaran)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Darkmoon Balloon",[[
description This guide will walk you through obtaining
description the Flying pet: Darkmoon Balloon
pet 336
step
'This pet requires Darkmoon Island to be accessible.
.' Routing... to quests. |next "Zygor's Horde Events Guides\\Darkmoon Faire\\Darkmoon Faire Quests"
.' Routing... to dailies.|next "Zygor's Horde Events Guides\\Darkmoon Faire\\Darkmoon Faire Dailies" |only if ZGV.guidesets["DailiesHCATA"]
|confirm
step
goto Darkmoon Island,56.0,52.9
'Complete daily quests on Darkmoon Island until you have 90 Darkmoon Prize Tickets
.earn 90 Darkmoon Prize Ticket##515
step
goto Darkmoon Island,48.2,69.6
.talk 148465
.buy 1 Darkmoon Balloon##73762
|modeldisplay 38344
step
.learnpet Darkmoon Balloon##55187 |use Darkmoon Balloon##73762
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Dung Beetle",[[
description This guide will walk you through obtaining
description the Critter pet: Dung Beetle
pet 467
step
goto Orgrimmar 42.4,46.8
.' The _Dung Beetle_ is level 1. Challenge one to a pet battle and capture it.
.learnpet Dung Beetle##62115
|modeldisplay 7511
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Willy",[[
description This guide will walk you through obtaining
description the Magic pet: Willy
pet 157
step
.' If you are aligned with the Oracles, click here for their Children's Week Daily set. |next "Zygor's Alliance Events Guides\\Children's Week\\Children's Week Dalaran Oracles Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
.' If you are aligned with the Wolvar, click here for their Children's Week Daily set. |next "Zygor's Alliance Events Guides\\Children's Week\\Children's Week Dalaran Wolvar Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
.' For the Shattrath Daily set, click here. |next "Zygor's Alliance Events Guides\\Children's Week\\Children's Week Shattrath Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
|confirm
step
.collect 1 Sleepy Willy##32617 |tip Back to the Orphanage (Shattrath)
|modeldisplay 21381
step
.learnpet Willy##23231 |use Sleepy Willy##32617 |tip Back to the Orphanage (Shattrath)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Speedy",[[
description This guide will walk you through obtaining
description the Aquatic pet: Speedy
pet 125
step
'You may only get _three_ of these pets _per year_ from _completing_ the quest lines _Back to the Orphanage (Shattrath)_, _Warden of the Horde_, and _Back to the Orphanage (Dalaran)_
.' If you are aligned with the Oracles, click here for their Children's Week Daily set. |next "Zygor's Alliance Events Guides\\Children's Week\\Children's Week Dalaran Oracles Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
.' If you are aligned with the Wolvar, click here for their Children's Week Daily set. |next "Zygor's Alliance Events Guides\\Children's Week\\Children's Week Dalaran Wolvar Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
.' For the Shattrath Daily set, click here. |next "Zygor's Alliance Events Guides\\Children's Week\\Children's Week Shattrath Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
|confirm
step
.collect 1 Turtle Box##23002 |tip Back to the Orphanage (Shattrath)
|modeldisplay 37810
step
.learnpet Speedy##16547 |use Turtle Box##23002 |tip Back to the Orphanage (Shattrath)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Searing Scorchling",[[
description This guide will walk you through obtaining
description the Elemental pet: Searing Scorchling
pet 172
step
'This _pet_ requires you to have done the _Firelands Pre-quests_ and dailies to enter the _Molten Front_
'Routing to proper section |next "prequests" |only if not completedq(25372)
'Routing to proper section |next "buy" |only if completedq(25372)
step
.' Go to the _Molten Front_ |goto Molten Front |noway |c
.earn 30 Mark of the World Tree##416
step
label "prequests"
#include "H_Firelands_PreQuests"
step
label buy
goto Molten Front 47.0,90.8
.talk 52822
.buy 1 Zen'Vorka's Cache##71631
step
|use Zen'Vorka's Cache##71631
.collect 1 Scorched Stone##34955 |tip If you don't get this the first time you will have to earn 30 more Marks of the World Tree to try again
|modeldisplay 33427
step
.learnpet Searing Scorchling##25706 |use Scorched Stone##34955
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Hyjal Bear Cub",[[
description This guide will walk you through obtaining
description the Beast pet: Hyjal Bear Cub
pet 317
step
'You will have to do the _Firelands dailies_ quests to complete the quest _"Calling the Ancients"_
goto Molten Front,44.8,89.8
.talk 53882
..accept 29283
step
'Earn 125 Marks of the World tree to doing Firelands daily quests.
.earn 125 Mark of the World Tree##416
step
goto Mount Hyjal 26.0,61.2
.talk 52906
..turnin 29283
step
goto Molten Front,44.8,89.8
.talk 53882
.buy 1 Hyjal Bear Cub##70140
|modeldisplay 36863
step
.learnpet Hyjal Bear Cub##53658 |use Hyjal Bear Cub##70140
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Tranquil Mechanical Yeti",[[
description This guide will walk you through obtaining
description the Mechanical pet: Tranquil Mechanical Yeti
pet 116
step
'Use the _Engineering profession_ section of this guide to level your _Engineering to 250_  |next "Profession Guides\\Engineering\\Engineering 1-600 Leveling Guide" |only if skill("Engineering")>1 and skill("Engineering")<250 |only if ZGV.guidesets["ProfessionsA"]
'You learn this recipe by completing the quest _"Are We There Yeti"_ from _Umi Rumplesnicker_ in _Everlook_, then complete the quest _"A Yeti of Your Own"_ and she will _teach_ you how to make it |only if skill("Engineering")>=250
.learn Tranquil Mechanical Yeti##26011 |only if skill("Engineering")>=250 |next make
.' Click here if you do not wish to learn this recipe |confirm |only if skill("Engineering")>1
'_ Auto skipping_ to next step |next |only if skill("Engineering")<1
step
'You can either _buy_ this item from the _Auction House_ or _farm_ for it:
.buy 1 Tranquil Mechanical Yeti##21277 |next "bought"
.' Click here to _make_ the _Tranquil Mechanical Yeti_ |confirm
step
label make
'You can either _buy_ these items from the _Auction House_ or _farm_ for them:
.collect 1 Cured Rugged Hide##15407
.collect 4 Thorium Widget##15994
.collect 2 Globe of Water##7079
.collect 2 Truesilver Transformer##18631
.collect 1 Gold Power Core##10558
.' Click here for farming paths. |confirm
step
map Winterspring
path	22.6,58.2	22.3,62.4	26.6,57.6
path	32.7,57.6	31.5,53.5	29.1,52.2
path	27.3,48.0	23.5,46.1	23.6,50.0
.' Follow the provided path, mining _Truesilver_ and _Thorium_ ore.
.collect 16 Thorium Ore##10620
.collect 4 Truesilver Ore##7911
step
map Felwood
path	60.4,21.9	55.7,18.6	44.5,16.2
path	40.5,26.6	39.6,33.7	37.9,43.3
path	45.6,46.0	47.2,41.3	51.9,34.3
path	56.8,28.9
.' Follow the provided path, mining _Gold_ ore.
.collect 1 Gold Ore##2776
step
goto Orgrimmar/1 45.0,77.8
.create Thorium Bar##16153,Mining,16 total
.create Truesilver Bar##10098,Mining,4 total
.create Gold Bar##3308,Mining,1 total |n
step
goto 53.9,73.1
.talk 44867
.buy 4 Runecloth##14047
.buy 4 Elemental Earth##7067
.buy 2 Elemental Air##7069
.buy 1 Cured Rugged Hide##15407
step
'Have an _Engineer_ make this pet for you |tip Ask in your guild or in trade chat |only if knowspell(26011)==false
.create Tranquil Mechanical Yeti##26011,Engineering,1 total |only if knowspell(26011)==true
.collect 1 Tranquil Mechanical Yeti##21277
|modeldisplay 934
step
label bought
.learnpet Tranquil Mechanical Yeti##15699 |use Tranquil Mechanical Yeti##21277
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Porcupette",[[
description This guide will walk you through obtaining
description the Critter pet: Porcupette
pet 381
step
label "start"
.' In order to obtain the rewards that contain the Porcupette, you will need to have defeated all Grand Master pet tamers.
.' If you haven't done so already, please go back and complete the Battle Pet quest guide.
.' Otherwise, click here to proceed. |confirm
step
goto Winterspring 65.6,64.4
.talk 66466
..accept 31909
step
goto Winterspring 65.6,64.4
.talk 66466
.' Tell her you want to fight!
.' She uses level 19 Flying, Beast and Dragonkin pets.
.' Defeat Stone Cold Trixxy |q 31909/1
step
goto Winterspring 65.6,64.4
.talk 66466
..turnin 31909
step
goto Shadowmoon Valley 30.6,42.0
.talk 66557
..accept 31926
|only if completedq(31920)
step
goto Shadowmoon Valley 30.6,42.0
.talk 66557
|tip You will not be able to challenge Bloodknight Antari if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip Bloodknight Antari has an Elemental Pet, a Dragonkin Pet, and a Magic Pet. Use Aquatic type attacks on his Elemental pet, Humanoid type attacks on his Dragonkin pet, and Dragonkin type attacks on his Magic pet.
.' Defeat Bloodknight Antari |q 31926/1
|only if completedq(31920)
step
goto Shadowmoon Valley 30.6,42.0
.talk 66557
..turnin 31926
|only if completedq(31920)
step
goto Icecrown 77.4,19.6
.talk 66675
..accept 31935
|only if completedq(31928)
step
goto Icecrown 77.4,19.6
.talk 66675
|tip You will not be able to challenge Major Payne if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip Major Payne has a Beast Pet, a Mechanical Pet, and an Elemental Pet. Use Mechanical type attacks on his Beast, Elemental type attacks on his Mechanical, and Aquatic type attacks on his Elemental. Your pets should be level 25 for this fight.
.' Defeat Major Payne |q 31935/1
|only if completedq(31928)
step
goto Icecrown 77.4,19.6
.talk 66675
..accept 31935
|only if completedq(31928)
step
goto Uldum 56.5,42.0
.talk 66824
..accept 31971
|only if completedq(31970)
step
goto Uldum 56.5,42.0
.talk 66824
|tip You will not be able to challenge Obalis if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip Obalis has a Beast Pet, a Flying Pet, and a Critter Pet. Use Mechanical type attacks on his Beast, Magic type attacks on his Flyer, and Beast type attacks on his Critter. Your pets should all be level 25.
.' Defeat Obalis |q 31971/1
|only if completedq(31970)
step
goto Uldum 56.5,42.0
.talk 66824
..turnin 31971
|only if completedq(31970)
step
goto The Jade Forest 48.0,54.2
.talk 66730
..accept 31953
|only if completedq(31970)
step
goto The Jade Forest 48.0,54.2
.talk 66730
|tip You will not be able to challenge Hyuna of the Shrines if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip Hyuna of the Shrines has a Beast Pet, a Flying Pet, and an Aquatic Pet. Use Mechanical type attacks on her Beast, Magic type attacks on her Flyer, and Flying type attacks on her Aquatic. Your pets should all be level 25.
.' Defeat Hyuna of the Shrines |q 31953/1
|only if completedq(31970)
step
goto The Jade Forest 48.0,54.2
.talk 66730
..turnin 31953
|only if completedq(31970)
step
goto Valley of the Four Winds 46.0,43.7
.talk 66734
..accept 31955
|only if completedq(31970)
step
goto Valley of the Four Winds 46.0,43.7
.talk 66734
|tip You will not be able to challenge Farmer Nishi if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip Farmer Nishi has a Beast Pet, and two Elemental Pets. Use Mechanical type attacks on her Beast, and Aquatic type attacks on her Elementals. Your pets should all be level 25.
.' Defeat Farmer Nishi |q 31955/1
|only if completedq(31970)
step
goto Valley of the Four Winds 46.0,43.7
.talk 66734
..turnin 31955
|only if completedq(31970)
step
goto Krasarang Wilds 62.2,45.9
.talk 66733
..accept 31954
|only if completedq(31970)
step
goto Krasarang Wilds 62.2,45.9
.talk 66733
|tip You will not be able to challenge Mo'ruk if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip Mo'ruk has a Beast Pet, a Flying Pet, and an Aquatic Pet. Use Mechanical type attacks on his Beast, Magic type attacks on his Flyer, and Flying type attacks on his Aquatic. Your pets should all be level 25.
.' Defeat Mo'ruk |q 31954/1
|only if completedq(31970)
step
goto Krasarang Wilds 62.2,45.9
.talk 66733
..turnin 31954
|only if completedq(31970)
step
goto Kun-Lai Summit 35.8,73.8
.talk 66738
..accept 31956
|only if completedq(31970)
step
goto Kun-Lai Summit 35.8,73.8
.talk 66738
|tip You will not be able to challenge Courageous Yon if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip Courageous Yon has a Flying Pet, and two Critter Pets. Use Beast type attacks on his Critters, and Magic type attacks on his Flying. Your pets should all be level 25.
.' Defeat Courageous Yon |q 31956/1
.' He can also be found at [44.7,52.4]
|only if completedq(31970)
step
goto Kun-Lai Summit 35.8,73.8
.talk 66738
..turnin 31956
|only if completedq(31970)
step
goto Townlong Steppes 36.3,52.2
.talk 66918
..accept 31991
|only if completedq(31970)
step
goto Townlong Steppes 36.3,52.2
.talk 66918
|tip You will not be able to challenge Seeker Zusshi if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip Seeker Zusshi has an Aquatic Pet, a Critter Pet, and an Elemental Pet. Use Flying type attacks on his Aquatic, Aquatic type attacks on his Elemental, and Beast type attacks on his Critter. Your pets should all be level 25.
.' Defeat Seeker Zusshi |q 31991/1
|only if completedq(31970)
step
goto Townlong Steppes 36.3,52.2
.talk 66918
..turnin 31991
|only if completedq(31970)
step
goto Dread Wastes 55.1,37.6
.talk 66739
..accept 31957
|only if completedq(31970)
step
goto Dread Wastes 55.1,37.6
.talk 66739
|tip You will not be able to challenge Wastewalker Shu if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip Wastewalker Shu has an Aquatic Pet, a Beast Pet, and an Elemental Pet. Use Flying type attacks on his Aquatic, Aquatic type attacks on his Elemental, and Mechanical type attacks on his Beast. Your pets should all be level 25.
.' Defeat Wastewalker Shu |q 31957/1
|only if completedq(31970)
step
goto Dread Wastes 55.1,37.6
.talk 66739
..turnin 31957
|only if completedq(31970)
step
goto Vale of Eternal Blossoms 31.2,74.0
.talk 66741
..accept 31958
|only if completedq(31970)
step
goto Vale of Eternal Blossoms 31.2,74.0
.talk 66741
|tip You will not be able to challenge Aki the Chosen if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip Aki the Chosen has an Aquatic Pet, a Critter Pet, and a Dragonkin Pet. Use Flying type attacks on her Aquatic, Beast type attacks on her Critter, and Humanoid type attacks on her Dragonkin. Your pets should all be level 25.
.' Defeat Aki the Chosen |q 31958/1
|only if completedq(31970)
step
goto Vale of Eternal Blossoms 31.2,74.0
.talk 66741
..turnin 31958
|only if completedq(31970)
step
.collect Sack of Pet Supplies##89125 |n
.' Use the _Sack of Pet Supplies_ in your bags for a chance to get the _Porcupette_!
..collect 1 Porcupette##89587
..learnpet Porcupette##61086 |use Porcupette##89587
.' Click here if the Porcupette wasn't contained in any of the Sack of Pet Supplies, and you wish to go to the beginning of this guide. |confirm |next "start"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Pet Bombling",[[
description This guide will walk you through obtaining
description the Mechanical pet: Pet Bombling
pet 85
step
.' Click here if you want to farm the schematic for this pet. |only if skill("Engineering")<205 |next
.' Click here if you do not want to get this schematic |next bluh |confirm |only if skill("Engineering")>=205
step
goto Gnomeregan,31.2,31.0 |only if skill("Engineering")>=205
.' Kill Mekgineer Thermaplugg |only if skill("Engineering")>=205
.collect 1 Schematic: Pet Bombling##11828 |n |only if skill("Engineering")>=205
.learn Pet Bombling##15628 |use Schematic: Pet Bombling##11828 |only if skill("Engineering")>=205
step
label bluh
'You can either _buy_ this from the _Auction House_ or _farm_ for it:
.collect 1 Pet Bombling##11825 |next "bought"
.' Click here to make this pet |confirm
step
'You can either _buy_ these from the _Auction House_ or _farm_ for them:
.collect 1 Big Iron Bomb##4394
.collect 1 Heart of Fire##7077
.collect 1 Fused Wiring##7191
.collect 6 Mithril Bar##3860
|next |only if default
.' Click here if you're going to farm your own materials |confirm
step
map Felwood
path	48.1,92.8	44.4,88.5	40.6,84.2
path	40.3,79.4`	43.8,81.5	46.1,88.4
.' Follow the path provided and collect _Mithril Ore_.
.collect 6 Mithril Ore##3858
step
goto Durotar 54.5,8.7
.' Mine inside of the cave here.
.collect 6 Copper Ore##2770
step
map Desolace
path	79.2,15.2	79.2 22.0	77.5,34.8
path	74.5,44.2	73.7,57.0	68.9,63.4
path	67.5,58.0	65.5,49.6	63.9,41.2
path	67.6,36.5	69.5,27.8
.'  Follow the provided path to collect _Iron Ore, Heavy Stones and Silver Ore_.
.collect 3 Iron Ore##2772
.collect 3 Heavy Stone##2838
.collect 1 Silver Ore##2775
step
goto Orgrimmar/1 44.9,78.0
.create Mithril Bar##10097,Mining,6 total
step
.create Iron Bar##3307,Mining,3 total
step
.create Silver Bar##2658,Mining,1 total
step
.create Copper Bar##2657,Mining,6 total
step
'Have an _Engineer create this pet_ for you |tip Ask in your guild or in Trade Chat |only if knowspell(15628)==false
.create Pet Bombling##15628,Engineering,1 total |only if knowspell(15628)==true
.collect 1 Pet Bombling##11825
|modeldisplay 19139
step
label bought
.learnpet Pet Bombling##9656 |use Pet Bombling##11825
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Personal World Destroyer",[[
description This guide will walk you through obtaining
description the Mechanical pet: Personal World Destroyer
pet 261
step
'Routing you to the proper section. |next |only if skill("Engineering")<475 |next
.' Routing you to the proper section. |only if skill("Engineering")>=475
step
goto Tanaris,52.2,28.2 |only if skill("Engineering")>=475
.talk 8126 |only if skill("Engineering")>=475
.learn Personal World Destroyer##84412 |only if skill("Engineering")>=475
step
label lazy
'You can either _buy_ this from the _Auction House_ or _farm_ for it:
.collect 1 Personal World Destroyer##59597 |next "bought"
.' Click here to gather the materials for this pet. |confirm
step
'You can either _buy_ these from the _Auction House_ or _farm_ for them:
.collect 10 Obsidium Bar##54849
.collect 8 Handful of Obsidium Bolts##60224
.collect 8 Electrified Ether##67749
step
map Mount Hyjal
path	47.8,53.5	54.6,52.3	58.6,55.0
path	64.5,50.9	60.0,60.5	52.3,56.7
.' Follow the provided path and mine Obsidium Ore.
.collect 36 Obsidium Ore##53038
step
.buy 8 Volatile Air##52328
step
goto Orgrimmar/1 44.9,78.0
.create Obsidium Bar##84038,Mining,18 total
step
.create Handful of Obsidium Bolts##84403,Engineering,4 total
step
.create Electrified Ether##94748,Engineering,4 total
step
'Have an _Engineer create this pet_ for you |tip Ask in your guild or in Trade Chat |only if knowspell(84412)==false
.create Personal World Destroyer##84412,Engineering,1 total |only if knowspell(84412)==true
.collect 1 Personal World Destroyer##59597
|modeldisplay 33512
step
label bought
.learnpet Personal World Destroyer##43800 |use Personal World Destroyer##59597
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Pengu",[[
description This guide will walk you through obtaining
description the Aquatic pet: Pengu
pet 198
step
.' Completing all normal quests should make you revered with the _Kalu'ak_ before having to do daily quests.
|confirm
#include "Kaluak_Rep"
step
#include dailies_rep_mount,rep="The Kalu'ak"
step
goto Dragonblight 48.6,75.6
.talk 32763
.buy 1 Nurtured Penguin Egg##44723
|modeldisplay 27433
step
.learnpet Pengu##32595 |use Nurtured Penguin Egg##44723
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Peddlefeet",[[
description This guide will walk you through obtaining
description the Humanoid pet: Peddlefeet
pet 122
step
'This _pet_ is sold by _Lovely Merchants_ during the _Love is in the Air_ Holiday |tip The merchants are in the captial cities
.' To earn tokens, click here. |next "Zygor's Horde Events Guides\\Love is in the Air (February 6th - 20th)\\Love is in the Air Dailies" |confirm |only if ZGV.guidesets["DailiesHCATA"]
.collect 40 Love Token##49927
|confirm
step
.talk 37674
.buy 1 Truesilver Shafted Arrow##22235
|modeldisplay 15992
step
.learnpet Peddlefeet##16085 |use Truesilver Shafted Arrow##22235
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Peanut",[[
description This guide will walk you through obtaining
description the Critter pet: Peanut
pet 159
step
'You may only get _three_ of these pets _per year_ from _completing_ the quest lines _Back to the Orphanage (Shattrath)_, _Warden of the Horde_, and _Back to the Orphanage (Dalaran)_
.' If you are aligned with the Oracles, click here for their Children's Week Daily set. |next "Zygor's Alliance Events Guides\\Children's Week\\Children's Week Dalaran Oracles Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
.' If you are aligned with the Wolvar, click here for their Children's Week Daily set. |next "Zygor's Alliance Events Guides\\Children's Week\\Children's Week Dalaran Wolvar Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
.' For the Shattrath Daily set, click here. |next "Zygor's Alliance Events Guides\\Children's Week\\Children's Week Shattrath Quests" |confirm |only if ZGV.guidesets["DailiesACATA"]
|confirm
step
.collect 1 Elekk Training Collar##32622 |tip Back to the Orphanage (Shattrath)
|modeldisplay 23437
step
.learnpet Peanut##23266 |use Elekk Training Collar##32622 |tip Back to the Orphanage (Shattrath)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Mechanical Squirrel",[[
description This guide will walk you through obtaining
description the Mechanical pet: Mechanical Squirrel
pet 39
step
.' Routing to the proper section. |next |only if skill("Engineering")>=75
.' Rouoting to the proper section. |next "buy" |only if skill("Engineering")<=75
step
'To get this _recipe_ you can fish in _Orgrimmar, Stormwind City, Elwynn Forest, Ironforge, Durotar, Northern Barrens, and Wailing Caverns_, or you can kill any mob in the world _under level 16_ |only if skill("Engineering")>=75
.collect 1 Schematic: Mechanical Squirrel Box##4408 |only if skill("Engineering")>=75
|use Schematic: Mechanical Squirrel Box##4408 |only if skill("Engineering")>=75
.' Click here if _you don't want to get the recipe_ yourself |confirm
|only if skill("Engineering")>=75
step
label "buy"
'You can either _buy_ this item from the _Auction House_ or _farm_ for it:
.buy 1 Mechanical Squirrel Box##4401 |next "bought"
.' Click here to _make_ the _Mechanical Squirrel_ |confirm
step
'You can either _buy_ these items from the _Auction House_ or _farm_ for them:
.collect 1 Handful of Copper Bolts##4359
.collect 1 Copper Bar##2840
.collect 2 Malachite##774
.' Click here if you want to farm the materials needed for the above items. |confirm
|next make
step
goto Durotar 54.5,8.7
.' Use your mining ability inside of the cave here.
.collect 2 Copper Ore##2770
.collect 2 Malachite##774
step
goto Orgrimmar/1 44.9,77.9
.create Handful of Copper Bolts##3922,Engineering,1 total
step
.create Copper Bar##2657,Mining,1 total
step
label make
'Have an _Engineer_ make this pet for you |tip Ask in your guild or in trade chat |only if knowspell(3928)==false
.create Mechanical Squirrel Box##3928,Engineering,1 total |only if knowspell(3928)==true
.collect 1 Mechanical Squirrel Box##4401
|modeldisplay 26532
step
label bought
.learnpet Mechanical Squirrel##2671 |use Mechanical Squirrel Box##4401
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Mechanical Pandaren Dragonling",[[
description This guide will walk you through obtaining
description the Mechanical pet: Mechanical Pandaren Dragonling
pet 844
step
.' Routing to the proper section. |next |only if skill("Engineering")>=575
.' Routing to the proper section. |next buy |only if skill("Engineering")<=575
step
'You can either create this battle pet, or purchase it from an Auction House. You must be a level _575 Engineer_ to create this pet.
goto Orgrimmar/1 56.8,56.5
.talk 11017
.learn Mechanical Pandaren Dragonling##127135
step
label buy
'You can either _buy_ these items from the _Auction House_ or _farm_ for them:
.collect 4 Ghost Iron Bar##72096+ |or 3
.collect 6 Trillium Bar##72095+ |or 3
.collect 2 Spirit of Harmony##76061 |or 3
.' _or_
.buy Mechanical Pandaren Dragonling##87526 |or 1
.' Click here if you want to farm the materials needed for the above items. |confirm
step
map Kun-Lai Summit
path	59.0,72.6	56.2,70.6	53.7,70.4
path	49.3,71.1	47.1,71.9	45.1,76.0
path	46.7,76.3	48.3,79.6	52.4,79.3
path	54.9,76.3	56.0,75.0	59.6,71.0
.' Follow the provided path and gather the following materials:
.collect 8 Ghost Iron Ore##
.collect 12 White Trillium Ore##72103
.collect 12 Black Trillium Ore##72094
step
goto Vale of Eternal Blossoms/3 25.8,40.6
.create Ghost Iron Bar##102165,Mining,4 total
step
.create Trillium Bar##102167,Mining,6 total
step
.create Mechanical Pandaren Dragonling##127135,Engineering,1 total
step
.learnpet Mechanical Pandaren Dragonling##64899
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Lil' Smoky",[[
description This guide will walk you through obtaining
description the Mechanical pet: Lil' Smoky
pet 86
step
'Skipping to the next step |next lazy |only if skill("Engineering")<205
.' Click here if you would like to farm the pattern. |confirm |only if skill("Engineering")>=205
.' Click here if you do not wish to make this yourself |confirm |only if skill("Engineering")>=205
step
goto Gnomeregan,30.2,84.4
.from Peacekeeper Security Suit##6230+,Arcane Nullifier X-21##6232+,Crowd Pummeler 9-60##6229+
.collect 1 Schematic: Lil' Smoky##11827 |n
.learn Lil' Smoky##15633 |use Schematic: Lil' Smoky##11827
|only if skill("Engineering")>=205
step
label lazy
'You can either _buy_ this from the _Auction House_ or _farm_ for it:
.collect 1 Lil' Smoky##11826 |next "bought"
.' Click here to farm the materials for this pet. |confirm
step
'You can either _buy_ these from the _Auction House_ or _farm_ for them:
.collect 1 Core of Earth##7075
.collect 2 Gyrochronatom##4389
.collect 1 Fused Wiring##7191
.collect 2 Mithril Bar##3860
.collect 1 Truesilver Bar##6037
|next  makeit
.' Click here for the raw materials needed to create the above items. |confirm
step
goto Durotar 54.5,8.7
.' Mine inside of the cave here.
.collect 6 Copper Ore##2770
step
map Desolace
path	79.2,15.2	79.2 22.0	77.5,34.8
path	74.5,44.2	73.7,57.0	68.9,63.4
path	67.5,58.0	65.5,49.6	63.9,41.2
path	67.6,36.5	69.5,27.8
.collect 1 Gold Ore##2776
.collect 2 Iron Ore##2772
step
map Felwood
path	48.1,92.8	44.4,88.5	40.6,84.2
path	40.3,79.4`	43.8,81.5	46.1,88.4
.' Follow the path provided and collect _Mithril Ore_.
.collect 2 Mithril Ore##3858
step
map Winterspring
path	22.6,58.2	22.3,62.4	26.6,57.6
path	32.7,57.6	31.5,53.5	29.1,52.2
path	27.3,48.0	23.5,46.1	23.6,50.0
.' Follow the provided path, mining _Truesiler Ore_.
.collect 1 Truesilver Ore##7911
step
goto Orgrimmar/1 44.9,77.8
.create Truesilver Bar##10098,Mining,1 total
step
.create Gold Bar##3308,Mining,1 total
step
.create Mithril Bar##10097,Mining,2 total
step
.create Copper Bar##2657,Mining,6 total
step
goto 53.9,73.1
.talk 44867
.buy 1 Core of Earth##7075
.buy 2 Essence of Fire##7078
step
label makeit
'Have an _Engineer create this pet_ for you |tip Ask in your guild or in Trade Chat |only if knowspell(15633)==false
.create Lil' Smoky##15633,Engineering,1 total |only if knowspell(15633)==true
.collect 1 Lil' Smoky##11826
|modeldisplay 24752
step
label bought
.learnpet Lil' Smoky##9657 |use Lil' Smoky##11826
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\De-Weaponized Mechanical Companion",[[
description This guide will walk you through obtaining
description the Mechanical pet: De-Weaponized Mechanical Companion
pet 262
step
'Skipping to the next step |next aa |only if skill("Engineering")<475
.' Click here if you do not wish to learn this schematic |next |only if skill("Engineering")>=475
step
goto The Cape of Stranglethorn,43.0,72.0 |only if skill("Engineering")>=475
.talk 7406 |only if skill("Engineering")>=475
.learn De-Weaponized Mechanical Companion##84413 |only if skill("Engineering")>=475
step
label bb
'You can either _buy_ this from the _Auction House_ or _farm_ for it:
.collect 1 De-Weaponized Mechanical Companion##60216 |next "bought"
.' _Click here_ to _farm_ for this _pet_ |confirm
step
'You can either _buy_ these from the _Auction House_ or _farm_ for them:
.collect 12 Obsidium Bar##54849
.collect 4 Handful of Obsidium Bolts##60224
.collect 8 Electrified Ether##67749
.collect 2 Jasper##52182
step
map Deepholm
path	59.0,26.5	61.6,20.4	64.3,14.9
path	67.6,20.8	68.9,23.1	65.9,23.5
path	62.5,23.7	62.0,29.6
.collect 34 Obsidium Ore##53038
.collect 2 Jasper##52182 |tip These can be very hard to come by.
.collect 8 Volatile Air##52328 |tip These can be very hard to come by.
.' Click here to continue by just buying the Jasper and/or Volatile Air.|confirm
step
goto Orgrimmar/1 44.9,77.9
.create Obsidium Bar##54849,Mining,17 total
|confirm
step
.create Handful of Obsidium Bolts##60216,Engineering,2 total
step
goto 53.9,73.1
.talk 44867
.buy 2 Jasper##52182 |or 2
.buy 8 Volatile Air##52328 |or 2
.buy 8 Electrified Ether##67749 |or 2 |next aa
|next |only if default
step
.create Electrified Ether##94748,Engineering,4 total
step
label aa
'Have an _Engineer create this pet_ for you |tip Ask in your guild or in Trade Chat |only if knowspell(84413)==false
.create De-Weaponized Mechanical Companion##84413,Engineering,1 total |only if knowspell(84413)==true
.collect 1 De-Weaponized Mechanical Companion##60216
|modeldisplay 33559
step
.learnpet De-Weaponized Mechanical Companion##43916 |use De-Weaponized Mechanical Companion##60216
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Elementium Geode",[[
description This guide will walk you through obtaining
description the Elemental pet: Elementium Geode
pet 293
step
'You can either _farm_ for this _pet_ using _Mining_ or _buy_ it from the _Auction House_:
.' Click here to farm. |confirm
.' Click here if you just want to buy it. |next buy |confirm
step
map Twilight Highlands
path	44.5,85.3	39.8,87.0	35.9,83.4
path	39.9,80.7	37.1,76.2	33.2,71.1
path	28.765.3	38.0,58.0	35.9,52.4
path	30.1,47.2	28.5,38.9	26.3,36.7
path	32.2,30.5	37.9,41.3	36.2,46.0
path	37.1,55.0	38.3,61.0	39.9,73.5
path	43.2,76.2
.' Follow the provided path, mining _ANY_ nodes you come across.
.collect 1 Elementium Geode##67282 |next last
step
label buy
goto Orgrimmar/1 53.9,73.1
.talk 44867
.collect 1 Elementium Geode##67282
|modeldisplay 37178
step
label last
.learnpet Elementium Geode##50722 |use Elementium Geode##67282
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Speedy",[[
description This guide will walk you through obtaining
description the Aquatic pet: Speedy
pet 125
step
'You may only get _three_ of these pets _per year_ from _completing_ the quest lines _Back to the Orphanage (Shattrath)_, _Warden of the Horde_, and _Back to the Orphanage (Dalaran)_
.' If you are aligned with the Oracles, click here for their Children's Week Daily set. |next "Zygor's Horde Events Guides\\Children's Week\\Children's Week Dalaran Oracles Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
.' If you are aligned with the Wolvar, click here for their Children's Week Daily set. |next "Zygor's Horde Events Guides\\Children's Week\\Children's Week Dalaran Wolvar Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
.' For the Shattrath Daily set, click here. |next "Zygor's Horde Events Guides\\Children's Week\\Children's Week Shattrath Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
|confirm
step
.collect 1 Turtle Box##23002 |tip Back to the Orphanage (Shattrath)
|modeldisplay 37810
step
.learnpet Speedy##16547 |use Turtle Box##23002 |tip Back to the Orphanage (Shattrath)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Legs",[[
description This guide will walk you through obtaining
description the Magic pet: Legs
pet 308
step
'You may only get _three_ of these pets _per year_ from _completing_ the quest lines _Back to the Orphanage (Shattrath)_, _Warden of the Horde_, and _Back to the Orphanage (Dalaran)_
.' If you are aligned with the Oracles, click here for their Children's Week Daily set. |next "Zygor's Horde Events Guides\\Children's Week\\Children's Week Dalaran Oracles Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
.' If you are aligned with the Wolvar, click here for their Children's Week Daily set. |next "Zygor's Horde Events Guides\\Children's Week\\Children's Week Dalaran Wolvar Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
.' For the Shattrath Daily set, click here. |next "Zygor's Horde Events Guides\\Children's Week\\Children's Week Shattrath Quests" |confirm |only if ZGV.guidesets["DailiesHCATA"]
|confirm
step
.collect 1 Legs##69648 |tip Back to the Orphanage (Shattrath)
|modeldisplay 38134
step
.learnpet Legs##53048 |use Legs##69648 |tip Back to the Orphanage (Shattrath)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Lifelike Toad",[[
description This guide will walk you through obtaining
description the Mechanical pet: Lifelike Toad
pet 95
step
'_Skipping_ to the next _step_ |next |only if skill("Engineering")<265
'This is a _very difficult_ _schematic_ to obtain, but it is _doable_  |next a |only if skill("Engineering")>265 |next
step
.' You will have to go to _Blackwing Lair_ and farm _Nefarian_ every week |tip He has a .8% chance to drop this item so you may be farming for a while |only if skill("Engineering")>265
.from Nefarian##11583 |only if skill("Engineering")>265
.collect 1 Schematic: Lifelike Mechanical Toad##16044 |only if skill("Engineering")>265
|use Schematic: Lifelike Mechanical Toad##16044 |only if skill("Engineering")>265
step
label a
'You can either _buy_ this from the _Auction House_ or _farm_ for it:
.collect 1 Lifelike Mechanical Toad##15996 |next "bought"
.' Click here to _farm_ for this _pet_ |confirm
step
'You can either _buy_ these items from the _Auction House_ or _farm_ for them:
.collect 1 Living Essence##12803
.collect 4 Thorium Widget##15994
.collect 1 Gold Power Core##10558
.collect 1 Rugged Leather##8170
.' Click here to farm your own materials. |confirm
|next b
step
map Felwood
path	60.4,21.9	55.7,18.6	44.5,16.2
path	40.5,26.6	39.6,33.7	37.9,43.3
path	45.6,46.0	47.2,41.3	51.9,34.3
path	56.8,28.9
.' Follow the provided path, mining _Gold_ ore and _Thorium_ ore.
.collect 1 Gold Ore##2776
.collect 12 Thorium Ore##10620
step
goto Orgrimmar/1 53.9,73.1
.talk 44867
.buy 4 Runecloth##14047
step
label b
'Have an _Engineer_ make this _pet_ for you |tip Ask in your guild or in trade chat |only if knowspell(19793)==false
.create Lifelike Mechanical Toad##19793,Engineering,1 total |only if knowspell(19793)==true
.collect 1 Lifelike Mechanical Toad##15996
|modeldisplay 14936
step
label "bought"
.learnpet Lifelike Toad##12419 |use Lifelike Mechanical Toad##15996
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Macabre Marionette",[[
description This guide will walk you through obtaining
description the Undead pet:Macabre Marionette
pet 1351
step
'You can only obtain this pet during the Day of the Dead event, which only runs for one weekend a year.
|confirm
step
goto Orgrimmar/1 53.5,78.8
.talk 6929
..buy Ice Cold Milk##1179
step
goto Orgrimmar/1 56.5,61.1
.talk 46708
..buy Simple Flour##30817
step
goto Dalaran/1 34.7,39.1
.talk 34382
..buy Orange Marigold##46718 |tip You may want to buy a few of these due to their short duration.
..buy Recipe: Bread of the Dead##46710
step
'Use the recipe in your bags to learn the Bread of the Dead. |use Recipe: Bread of the Dead##46710
.learn Bread of the Dead##65454
step
#include "cooking_fire"
.create 1 Bread of the Dead##65454,Cooking,1 total
step
goto Dalaran/1 34.5,38.5
.talk 35256
..accept 14166
..turnin 14166
step
'Use the Macabre Marionette in your bags. |use Macabre Marionette##46831
..learnpet Macabre Marionette##34770
]])
