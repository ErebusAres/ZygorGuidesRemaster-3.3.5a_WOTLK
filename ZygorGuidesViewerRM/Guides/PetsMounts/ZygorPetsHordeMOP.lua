local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetsHMOP") then return end
ZGV.CommonPets=true
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Chi-ji Kite",[[
description This guide will walk you through obtaining
description the Flying pet: Chi-ji Kite
pet 849
step
'This pet requires you to either have level 600 Inscription, or purchase it from the Auction House.
.' Click here to gather and create the pet yourself |confirm |next "create"
.' Click here to be taken to the Auctioneer to purchase it |confirm |next "buy"
step
label "create"
goto Orgrimmar 55.1,55.9
.talk 46716
.learn Chi-Ji Kite##127009
step
map Valley of the Four Winds
path 81.4,21.5	76.4,29.2	68.2,33.3
path 70.6,41.8	65.1,60.1	57.6,65.6
path 50.8,58.6	48.0,65.9	46.9,61.3
path 42.5,58.3	33.6,62.1	28.1,72.7
path 25.7,78.4	18.5,51.0	15.4,53.9
path 12.8,44.7	14.3,41.2	14.8,35.8
path 19.6,34.4	24.0,42.2	25.0,50.2
path 30.1,55.7	 35.8,54.8	41.5,48.9
#include "follow_path_herbs"
.' You need about 15 Shadow-giving herbs total
.collect Green Tea leaf##72234 |n
.collect Silkweed##72235 |n
.' You'll need about {_G.max(0 , (15-itemcount(72234,72235)))} more herbs in stacks of 5.
.' Mill the 15 herbs you gathered into Shadow Pigment |cast Milling##51005
.collect 4 Shadow Pigment##79251
step
goto Orgrimmar 55.4,55.9
.talk 46718
.buy 1 Light Parchment##39354
step
.create 1 Chi-ji Kite##89368
|next "done"
step
label "buy"
goto Orgrimmar/1 53.9,73.1
.talk 44867
.buy 4 Ink of Dreams##79254+
.' Click hhere if you intend to buy the Kite instead of having it be crafted. |next kite |confirm
step
goto Orgrimmar/1 55.8,55.6
.talk 46718 |tip She patrols up and down the ramp inside of this building.
.buy Light Parchment##39354
step
label kite
goto Orgrimmar 54.1,73.4
.talk 44866
.buy 1 Chi-ji Kite##89368
step
label "done"
.learnpet Chi-ji Kite##66104 |use Chi-ji Kite##89368
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Fishy",[[
description This guide will walk you through obtaining
description the Aquatic pet: Fishy
pet 847
step
'This pet is obtained through completing part of the Jade Forest main questline.
|confirm
step
goto The Jade Forest 28.0,47.2
.talk 56336
..accept 31239
step
goto The Jade Forest 28.8,46.0
.kill 7 Riverstride Jinyu##56289+ |q 31239/1
step
goto The Jade Forest 28.0,47.2
.talk 56336
..turnin 31239
step
.learnpet Fishy##62829 |use Fishy##84105
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Jade Crane Chick",[[
description This guide will walk you through obtaining
description the Flying pet: Jade Crane Chick
pet 792
step
'You must be a _Pandaren_ in order to obtain this pet.
|confirm
step
goto Orgrimmar 52.5,59.2
.talk 63626
.buy Jade Crane Chick##88148
step
.learnpet Jade Crane Chick##65314 |use Jade Crane Chick##88148
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Jade Owl",[[
description This guide will walk you through obtaining
description the Magic pet: Jade Owl
pet 845
step
'This pet requires you to either have level 600 Jewelcrafting, or purchase it from the Auction House.
.' Click here to gather and create the pet yourself |confirm |next "create"
.' Click here to be taken to the Auctioneer to purchase it |confirm |next "buy"
step
label "create"
'You must complete Dailies for the _Golden Lotus_ to get the recipe for this pet.
|confirm
step
map Vale of Eternal Blossoms
path	54.6,23.7	52.8,23.1	47.0,18.7
path	42.6,15.0	41.8,17.8	36.9,18.0
path	353.5,21.3	35.0,28.7	35.6,34.5
path	42.2,29.1	45.4,29.6	47.9,26.5
path	50.8,31.5	53.6,28.6
.' Follow the path, mining any node you see.
.' Use your _Prospecting_ skill on any 5 ore you gather. |cast Prospecting##31252
.collect 3 Wild Jade##76139
step
.create 1 Jade Owl##82774
|next "done"
step
label "buy"
goto Orgrimmar 54.1,73.4
.talk 44866
.buy 1 Jade Owl##82774
step
label "done"
.learnpet Jade Owl##61877 |use Jade Owl##82774
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Pandaren Air Spirit",[[
description This guide will walk you through obtaining
description the Elemental pet:Pandaren Air Spirit
pet 1125
step
'This pet is only obtainable after defeating all of the pet battle master trainers.
|confirm
step
goto Vale of Eternal Blossoms/0 60.9,23.6
.talk 64582
..accept 32428
|only if not completedq(32428)
step
goto Kun-Lai Summit/0 65.0,93.9
.talk 68465
.' Challenge him to a pet battle.
|tip The Thundering Pandaren Spirit has an Elemental type Pet, a Magic type Pet, and a Beast Type Pet. Use Aquatic type attacks on its Elemental, Mechanical type attacks on its Beast, and Dragonkin type attacks on its Magic. The pets are all level 25 Legendary.
.' Defeat Thundering Pandaren Spirit |q 32428/2
|only if not completedq(32428)
step
goto Townlong Steppes 57.0,42.2
.talk 68463
.' Challenge him to a pet battle.
.' Defeat Burning Pandaren Spirit |q 32428/1
|only if not completedq(32428)
step
goto Dread Wastes 61.2,87.6
.talk 68462
.' Challenge him to a pet battle.
.' Defeat Flowing Pandaren Spirit |q 32428/4
|only if not completedq(32428)
step
goto The Jade Forest 28.8,36.0
.talk 68464
.' Challenge him to a pet battle.
.' Defeat Whispering Pandaren Spirit |q 32428/3
|only if not completedq(32428)
step
goto Vale of Eternal Blossoms/0 60.9,23.6
.talk 64582
..turnin 32428 |tip You will only be able to accept one of the four pets. You will be able to complete daily quests to get the others.
|only if not completedq(32428)
step
'You can obtain this pet by completing the daily quest given by Whispering Pandaren Spirit.
|confirm
|only if completedq(32428)
step
goto The Jade Forest 28.8,36.0
.talk 68464
..accept 32440
step
goto The Jade Forest 28.8,36.0
.talk 68464
.' Challenge him to a pet battle and defeat him. |q 32440/1
step
goto The Jade Forest 28.8,36.0
.talk 68464
..turnin 32440
step
'Loot the Pandaren Spirit Pet Supplies you just received |use Pandaren Spirit Pet Supplies##93148
.collect 1 Pandaren Air Spirit##92799 |tip This item doesn't always drop from this quest reward. You may have to repeat this daily a few times before you get the pet.
step
.learnpet Pandaren Air Spirit##68467 |use Pandaren Air Spirit##92799
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Pandaren Earth Spirit",[[
description This guide will walk you through obtaining
description the Elemental pet:Pandaren Earth Spirit
pet 1126
step
'This pet is only obtainable after defeating all of the pet battle master trainers.
|confirm
step
goto Vale of Eternal Blossoms/0 60.9,23.6
.talk 64582
..accept 32428
|only if not completedq(32428)
step
goto Kun-Lai Summit/0 65.0,93.9
.talk 68465
.' Challenge him to a pet battle.
.' Defeat Thundering Pandaren Spirit |q 32428/2
|only if not completedq(32428)
step
goto Townlong Steppes 57.0,42.2
.talk 68463
.' Challenge him to a pet battle.
.' Defeat Burning Pandaren Spirit |q 32428/1
|only if not completedq(32428)
step
goto Dread Wastes 61.2,87.6
.talk 68462
.' Challenge him to a pet battle.
.' Defeat Flowing Pandaren Spirit |q 32428/4
|only if not completedq(32428)
step
goto The Jade Forest 28.8,36.0
.talk 68464
.' Challenge him to a pet battle.
.' Defeat Whispering Pandaren Spirit |q 32428/3
|only if not completedq(32428)
step
goto Vale of Eternal Blossoms/0 60.9,23.6
.talk 64582
..turnin 32428 |tip You will only be able to accept one of the four pets. You will be able to complete daily quests to get the others.
|only if not completedq(32428)
step
'You can obtain this pet by completing the daily quest given by Whispering Pandaren Spirit.
|confirm
|only if completedq(32428)
step
goto Kun-Lai Summit/0 65.0,93.9
.talk 68465
..accept 32441
step
goto Kun-Lai Summit/0 65.0,93.9
.talk 68465
.' Challenge him to a pet battle and defeat him. |q 32441/1
step
goto Kun-Lai Summit/0 65.0,93.9
.talk 68465
..turnin 32441
step
'Loot the Pandaren Spirit Pet Supplies you just received |use Pandaren Spirit Pet Supplies##93149
.collect 1 Pandaren Earth Spirit##92800 |tip This item doesn't always drop from this quest reward. You may have to repeat this daily a few times before you get the pet.
step
.learnpet Pandaren Earth Spirit##68468 |use Pandaren Earth Spirit##92800
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Pandaren Fire Spirit",[[
description This guide will walk you through obtaining
description the Elemental pet:Pandaren Fire Spirit
pet 1124
step
'This pet is only obtainable after defeating all of the pet battle master trainers.
|confirm
step
goto Vale of Eternal Blossoms/0 60.9,23.6
.talk 64582
..accept 32428
|only if not completedq(32428)
step
goto Kun-Lai Summit/0 65.0,93.9
.talk 68465
.' Challenge him to a pet battle.
.' Defeat Thundering Pandaren Spirit |q 32428/2
|only if not completedq(32428)
step
goto Townlong Steppes 57.0,42.2
.talk 68463
.' Challenge him to a pet battle.
.' Defeat Burning Pandaren Spirit |q 32428/1
|only if not completedq(32428)
step
goto Dread Wastes 61.2,87.6
.talk 68462
.' Challenge him to a pet battle.
.' Defeat Flowing Pandaren Spirit |q 32428/4
|only if not completedq(32428)
step
goto The Jade Forest 28.8,36.0
.talk 68464
.' Challenge him to a pet battle.
.' Defeat Whispering Pandaren Spirit |q 32428/3
|only if not completedq(32428)
step
goto Vale of Eternal Blossoms/0 60.9,23.6
.talk 64582
..turnin 32428 |tip You will only be able to accept one of the four pets. You will be able to complete daily quests to get the others.
|only if not completedq(32428)
step
'You can obtain this pet by completing the daily quest given by Whispering Pandaren Spirit.
|confirm
|only if completedq(32428)
step
goto Townlong Steppes 57.0,42.2
.talk 68463
..accept 32434
step
goto Townlong Steppes 57.0,42.2
.talk 68463
.' Challenge him to a pet battle and defeat him. |q 32434/1
step
goto Townlong Steppes 57.0,42.2
.talk 68463
..turnin 32434
step
'Loot the Pandaren Spirit Pet Supplies you just received |use Pandaren Spirit Pet Supplies##93146
.collect 1 Pandaren Fire Spirit##92798 |tip This item doesn't always drop from this quest reward. You may have to repeat this daily a few times before you get the pet.
step
.learnpet Pandaren Fire Spirit##68466 |use Pandaren Fire Spirit##92798
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Pandaren Water Spirit",[[
description This guide will walk you through obtaining
description the Elemental pet:Pandaren Water Spirit
pet 868
step
'This pet is only obtainable after defeating all of the pet battle master trainers.
|confirm
step
goto Vale of Eternal Blossoms/0 60.9,23.6
.talk 64582
..accept 32428
|only if not completedq(32428)
step
goto Kun-Lai Summit/0 65.0,93.9
.talk 68465
.' Challenge him to a pet battle.
.' Defeat Thundering Pandaren Spirit |q 32428/2
|only if not completedq(32428)
step
goto Townlong Steppes 57.0,42.2
.talk 68463
.' Challenge him to a pet battle.
.' Defeat Burning Pandaren Spirit |q 32428/1
|only if not completedq(32428)
step
goto Dread Wastes 61.2,87.6
.talk 68462
.' Challenge him to a pet battle.
.' Defeat Flowing Pandaren Spirit |q 32428/4
|only if not completedq(32428)
step
goto The Jade Forest 28.8,36.0
.talk 68464
.' Challenge him to a pet battle.
.' Defeat Whispering Pandaren Spirit |q 32428/3
|only if not completedq(32428)
step
goto Vale of Eternal Blossoms/0 60.9,23.6
.talk 64582
..turnin 32428 |tip You will only be able to accept one of the four pets. You will be able to complete daily quests to get the others.
|only if not completedq(32428)
step
'You can obtain this pet by completing the daily quest given by Whispering Pandaren Spirit.
|confirm
|only if completedq(32428)
step
goto Dread Wastes 61.2,87.6
.talk 68462
..accept 32439
step
goto Dread Wastes 61.2,87.6
.talk 68462
.' Challenge him to a pet battle and defeat him. |q 32439/1
step
goto Dread Wastes 61.2,87.6
.talk 68462
..turnin 32439
step
'Loot the Pandaren Spirit Pet Supplies you just received |use Pandaren Spirit Pet Supplies##93147
.collect 1 Pandaren Water Spirit##90173 |tip This item doesn't always drop from this quest reward. You may have to repeat this daily a few times before you get the pet.
step
.learnpet Pandaren Water Spirit##66950 |use Pandaren Water Spirit##90173
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Sapphire Cub",[[
description This guide will walk you through obtaining
description the Elemental pet: Sapphire Cub
pet 846
step
'This pet requires you to either have level 600 Jewelcrafting, or purchase it from the Auction House.
.' Click here to gather and create the pet yourself |confirm |next "create"
.' Click here to be taken to the Auctioneer to purchase it |confirm |next "buy"
step
label "create"
'You must complete Dailies for the _Golden Lotus_ to get the recipe for this pet.
|confirm
step
map Vale of Eternal Blossoms
path	54.6,23.7	52.8,23.1	47.0,18.7
path	42.6,15.0	41.8,17.8	36.9,18.0
path	353.5,21.3	35.0,28.7	35.6,34.5
path	42.2,29.1	45.4,29.6	47.9,26.5
path	50.8,31.5	53.6,28.6
.' Follow the path, mining any node you see.
.' Use your _Prospecting_ skill on any 5 ore you gather. |cast Prospecting##31252
.collect 3 Wild Jade##76138
step
.create 1 Sapphire Cub##82775
|next "done"
step
label "buy"
goto Orgrimmar 54.1,73.4
.talk 44866
.buy 1 Sapphire Cub##82775
step
label "done"
.learnpet Sapphire Cub##61883 |use Sapphire Cub##82775
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Tiny Goldfish",[[
description This guide will walk you through obtaining
description the Aquatic pet: Tiny Goldfish
pet 652
step
'This pet requires you to be _Honored_ with _The Anglers_
.' Click here to be taken to the guide that will raise your reputation with _The Anglers_. |confirm |next "reputation"
.' Click here to be taken directly to where you buy the pet. |confirm |next "vendor"
step
label "reputation"
'You must have fishing in order to accept dailies from this faction.
|confirm
step
goto Vale of Eternal Blossoms 60.9,23.8
.talk 64010
..accept 31370
|only if not completedq(31370)
step
goto Krasarang Wilds 67.9,45.2
.talk 59584
..turnin 31370
|only if not completedq(31370)
step
'There will only be three dailies available from the following questgivers. It is possible for one questgiver to give you two quests in the same day, but it is unlikely.
|confirm
step
goto 67.9,45.2
.talk 59584
..accept 30584 |or
..accept 30586 |or
.' If these quests are unavailable today, click here. |confirm
step
goto 67.5,44.6
.talk 60136
..accept 30678 |or
..accept 30698 |or
.' If this quest is unavailable today, click here. |confirm
step
goto 67.5,43.5
.talk 59586
..accept 30700 |or
..accept 30588 |or
.' If these quests are unavailable today, click here. |confirm
step
goto 68.3,43.5
.talk 60674
..accept 30754 |or
..accept 30753 |or
.' If these quests are unavailable today, click here. |confirm
step
goto 67.6,42.5
.talk 60135
..accept 30613 |or
..accept 30658 |or
.' If these quests are unavailable today, click here. |confirm
step
goto 68.4,42.1
.talk 60673
..accept 30585 |or
..accept 30598 |or
.' If these quests are unavailable today, click here. |confirm
step
goto 67.2,41.2
.talk 60675
..accept 30763 |or
..accept 30701 |or
.' If these quests are unavailable today, click here. |confirm
step
goto 68.4,43.1
.clicknpc Frenzied Reef Shark##60408
.' Ride the shark. |invehicle |c
|only if havequest(30753)
step
'Use the abilities on your hotbar to kill the shark, make sure not to let your grip bar reach zero.
.kill Frenzied Reef Shark##60408 |q 30753/1
|only if havequest(30753)
step
goto 69.1,37.9
.click Jagged Abalone
.get 9 Jagged Abalone Meat##80277 |q 30586/1
|only if havequest(30586)
step
'Enter the underwater cave here. |goto 71.3,38.5 <5 |c
|only if havequest(30700)
step
goto 73.9,38.4
.from Snapclaw##60401
.get Snapclaw's Claw##80831 |q 30700/1
|only if havequest(30700)
step
'Leave the cave. |goto 71.3,38.5 <5 |c
|only if havequest(30700)
step
goto 65.6,30.5
'Use your fishing skill to fish up 7 Dojani Eel.
.get 7 Dojani Eel |q 30584/1
|only if havequest(30584)
step
goto 62.4,40.9
.kill 8 Riverblade Raider##59714+ |q 30588/1
|only if havequest(30588)
step
goto 55.1,45.7
.from Viseclaw Fry##61090+, Viseclaw Fisher##58880+
.get 16 Viseclaw Fisher Eye##80832+ |q 30701/1
|only if havequest(30701)
step
goto 59.8,38.8
.click Suncrawler
.get 7 Suncrawler##81116 |q 30754/1
|only if havequest(30754)
step
goto 59.3,46.3
'Use your Goblin Fishing Bomb to kill Sting Rays. |use Goblin Fishing Bomb##80599 |tip You can kill the Sting Rays by other means, using the bombs is much quicker though.
.from Sting Ray##60278+
.get 3 Stinger##80600+ |q 30678/1
|only if havequest(30678)
step
goto 36.8,43.3
'Use your fishing skill to fish up 5 Wolf Piranha.
.get 5 Wolf Piranha |q 30763/1
|only if havequest(30763)
step
goto 34.4,31.4
'Use your fishing skill in the Mysterious Whirlpool until Narjon the Gulper appears. |tip When Narjon spawns, make sure to equip your weapon quickly.
.from Narjon the Gulper##59689 |q 30585/1
.get Beloved Ring##80262 |q 30585/2
|only if havequest(30585)
step
goto 51.4,62.2
'Use your Anglers Fishing Spear near a Prickly Puffer |use Anglers Fishing Spear##80403 |tip The closer you are the easier it is to hit the fish.
.from Prickly Puffer##60037
.get 5 Prickly Puffer Spine##80529 |q 30658/1
|only if havequest(30658)
step
goto 57.5,53.5
.click Goblin Fishing Raft
.' Ride a Goblin Fishing Raft |havebuff Rafting
|only if havequest(30698)
step
goto 57.3,55.2
'Use you fishing skill in the Shipwreck Debris pools to fish up 15 Rusty Shipwreck Debris.
.get 15 Shipwreck Debris |q 30698/1
.' You can find more Debris at [64.3,50.6]
|only if havequest(30698)
step
goto 65.2,47.5
.click Pristine Crane Egg
.get Pristine Crane Egg |q 30598/1
|only if havequest(30598)
step
goto 70.1,51.2
'Use your Anglers Fishing Spear near an Armored Carp |use Anglers Fishing Spear##80403 |tip The closer you are the easier it is to hit the fish.
.from Armored Carp##59936+
.get 5 Armored Carp##80437 |q 30613/1
|only if havequest(30613)
step
goto 68.2,42.7
'Use the Pristine Crane Egg in your bags |use Pristine Crane Egg##80303
.' Use your fishing skill in the Crane Yolk Pool and fish up a Silver Goby.
.get Silver Goby##80310 |q 30598/2
|only if havequest(30598)
step
goto 68.4,42.1
.talk 60673
..turnin 30585
..turnin 30598
step
goto 67.5,44.6
.talk 60136
..turnin 30678
..turnin 30698
step
goto 67.5,43.5
.talk 59586
..turnin 30700
..turnin 30588
step
goto 67.6,42.5
.talk 60135
..turnin 30613
..turnin 30658
step
goto 67.9,45.2
.talk 59584
..turnin 30584
..turnin 30586
step
goto 68.3,43.5
.talk 60674
..turnin 30754
..turnin 30753
step
goto 67.2,41.2
.talk 60675
..turnin 30763
..turnin 30701
step
goto 68.4,43.5
.talk 63721
.buy 1 Tiny Goldfish##85447
step
.learnpet Tiny Goldfish##63559 |use Tiny Goldfish##85447
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Yu'lon Kite",[[
description This guide will walk you through obtaining
description the Flying pet: Yu'lon Kite
pet 850
step
'This pet requires you to either have level 600 Inscription, or purchase it from the Auction House.
.' Click here to gather and create the pet yourself |confirm |next "create"
.' Click here to be taken to the Auctioneer to purchase it |confirm |next "buy"
step
label "create"
goto Orgrimmar 55.1,55.9
.talk 46716
.learn Yu'lon Kite##127007
step
.' Click here to purchase the materials. |next AHBUY |confirm
.' Click here to farm the materials yourself. |confirm
step
map Valley of the Four Winds
path 81.4,21.5	76.4,29.2	68.2,33.3
path 70.6,41.8	65.1,60.1	57.6,65.6
path 50.8,58.6	48.0,65.9	46.9,61.3
path 42.5,58.3	33.6,62.1	28.1,72.7
path 25.7,78.4	18.5,51.0	15.4,53.9
path 12.8,44.7	14.3,41.2	14.8,35.8
path 19.6,34.4	24.0,42.2	25.0,50.2
path 30.1,55.7	 35.8,54.8	41.5,48.9
#include "follow_path_herbs"
.' You need about 15 Shadow-giving herbs total
.collect Green Tea leaf##72234 |n
.collect Silkweed##72235 |n
.' You'll need about {_G.max(0 , (15-itemcount(72234,72235)))} more herbs in stacks of 5.
.' Mill the 15 herbs you gathered into Shadow Pigment |cast Milling##51005
.collect 4 Shadow Pigment##79251
step
label AHBUY
goto Orgrimmar 55.4,55.9
.talk 46718
.buy 1 Light Parchment##39354
step
goto Orgrimmar/1 54.1,73.3
.talk 44866
.buy 4 ink of Dreams##79254
step
.create 1 Yu'lon Kite##89367
|next "done"
step
label "buy"
goto Orgrimmar 54.1,73.4
.talk 44866
.buy 1 Yu'lon Kite##89367
step
label "done"
.learnpet Yu'lon Kite##66105 |use Yu'lon Kite##89367
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Red Panda",[[
description This guide will walk you through obtaining
description the Humanoid pet:Red Panda
pet 1176
step
.' In order to attain this pet, you will need to complete the Battle Pet Questline and defeating 10 Fabled beasts.
.' Click here to proceed to the Battle Pet Questline. |confirm
.' Click here to proceed to the Fabled Beast hunt. |confirm |next "fable"
step
#include "Horde_Battlepet_quests"
step
label "fable"
#include "H_Beasts_of_Fable"
step
.learnpet Red Panda##69649 |use Red Panda##94025
step
.' Congratulations, you have obtained the _Red Panda_ pet!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Mountain Panda",[[
description This guide will walk you through obtaining
description the Humanoid pet:Mountain Panda
pet 1198
step
.' In order to attain this pet, you will need to completed the Battle Pet Quest line as well as the Beasts of Fable quest.
.' Click here to be routed to  the _Battle Pet Questline_. |confirm
.' Click here if you've completed the Battle Pet Questline and want to start the _Beasts of Fable_. |confirm |next "beasts"
.' Click here if you've completed both the Battle Pet Questline as well as the Beasts of Fable quests. |confirm |next "reset"
step
#include "Horde_Battlepet_quests"
step
label "beasts"
#include "H_Beasts_of_Fable"
step
label "reset"
#include "H_Beasts_of_Fable_D"
step
.' Click the Fabled Pandaren Pet Supplies. |use Fabled Pandaren Pet Supplies##94207
..collect Mountain Panda##94210 |next |only if default
.' If you didn't get the pet, click here to go back to the start of the dailies. |confirm |next "reset"
step
.learnpet Mountain Panda##69892 |use Mountain Panda##94210
step
.' Congratulations, you have attainted the _Mountain Panda_ pet!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Snowy Panda",[[
description This guide will walk you through obtaining
description the Humanoid pet:Snowy Panda
pet 1197
step
.' In order to attain this pet, you will need to completed the Battle Pet Quest line as well as the Beasts of Fable quest.
.' Click here to be routed to  the _Battle Pet Questline_. |confirm
.' Click here if you've completed the Battle Pet Questline and want to start the _Beasts of Fable_. |confirm |next "beasts"
.' Click here if you've completed both the Battle Pet Questline as well as the Beasts of Fable quests. |confirm |next "reset"
step
#include "Horde_Battlepet_Quests"
step
label "beasts"
#include "H_Beasts_of_Fable"
step
label "reset"
#include "H_Beasts_of_Fable_D"
step
.' Click the Fabled Pandaren Pet Supplies. |use Fabled Pandaren Pet Supplies##94207
..collect Snowy Panda##94209 |next |only if default
.' If you didn't get the pet, click here to go back to the start of the dailies. |confirm |next "reset"
step
.learnpet Snowy Panda##69893 |use Snowy Panda##94209
step
.' Congratulations, you have attainted the _Snowy Panda_ pet!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Sunfur Panda",[[
description This guide will walk you through obtaining
description the Humanoid pet:Sunfur Panda
pet 1196
step
.' In order to attain this pet, you will need to completed the Battle Pet Quest line as well as the Beasts of Fable quest.
.' Click here to be routed to  the _Battle Pet Questline_. |confirm
.' Click here if you've completed the Battle Pet Questline and want to start the _Beasts of Fable_. |confirm |next "beasts"
.' Click here if you've completed both the Battle Pet Questline as well as the Beasts of Fable quests. |confirm |next "reset"
step
#include "Horde_Battlepet_Quests"
step
label "beasts"
#include "H_Beasts_of_Fable"
step
label "reset"
#include "H_Beasts_of_Fable_D"
step
.' Click the Fabled Pandaren Pet Supplies. |use Fabled Pandaren Pet Supplies##94208
..collect Sunfur Panda##94208 |next |only if default
.' If you didn't get the pet, click here to go back to the start of the dailies. |confirm |next "reset"
step
.learnpet Sunfur Panda pet##69891 |use Sunfur Panda##94208
step
.' Congratulations, you have attainted the _Sunfur Panda_ pet!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Swamp Croaker",[[
description This guide will walk you through obtaining
description the Aquatic pet:Swamp Croaker
pet 1182
step
goto Isle of Thunder 41.5,49.1
.' The _Swamp Croakers_ are around level 25 and share a spawn with Thundertail Flappers.
..' Challenge one to a pet battle and capture it.
..learnpet Swamp Croaker##69819
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Thundertail Flapper",[[
description This guide will walk you through obtaining
description the Elemental pet:Thundertail Flapper
pet 1175
step
goto Isle of Thunder 41.5,49.1
.' The _Thundertail Flappers_ are around level 25 and share a spawn with Swamp Croakers.
..' Challenge one to a pet battle and capture it.
..learnpet Thundertail Flapper##69648
'|modeldisplay 47633
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Elder Python",[[
description This guide will walk you through obtaining
description the Beast pet:Elder Python
pet 1181
step
goto Isle of Thunder 41.3,51.5
.' The _Swamp Croakers_ are around level 25 and share a spawn with Thundertail Flappers and Swamp Croakers.
..' Challenge one to a pet battle and capture it.
..learnpet Elder Python##69818
[Isle of Thunder 53.5,56.5]
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Pets\\Clock'em",[[
description This guide will walk you through obtaining
description the Mechanical pet:Clock'em
pet 1142
step
'This pet will require you to reach Rank 4 in the _Brawler's Guild_.
|confirm
step
goto The Veiled Stair 63.8,75.8
.talk 62943
.' Bid on one of the Blood-Soaked Invitations and win in order to join the brawler's guild.
.collect Blood Soaked Invitation##93194 |n
.' Use the _Blood-Soaked Invitation_ in your bags. |use Blood Soaked Invitation##93194
|achieve 7948
step
'WARNING:
.' There is an enrage timer on all Brawler's Guild fights. You have 2 minutes to kill the current opponent before it activates. If it does, a wall of unavoidable meteors sweeps across the arena, killing you. Remember this as you go through this guide!
|confirm
step
goto Brawl'gar Arena 55.9,20.1 |n
.talk 67267
.' Tell them you're ready to fight. |goto Brawl'gar Arena 57.1,48.7 |noway |c
step
'Fight 1: _Bruce_
.' Bruce is a very easy fight, meant to get you started in the Brawler's Guild. He has 1 ability:
..' _Chomp, chomp, chomp_ is an ability that he uses in front of him. When he begins casting, run to the side or behind him to avoid getting hit by this attack.
..' _The best strategy for this fight is to dps him as fast as you can, making sure to avoid being directly in front of him whenever he begins to cast his ability._
|modelnpc Bruce##67262
'Defeat Bruce in the Brawler's Guild |condition ZGV:GetReputation(1374).friendRep>=250
step
goto Brawl'gar Arena 55.9,20.1 |n
.talk 67267
.' Tell them you're ready to fight. |goto Brawl'gar Arena 57.1,48.7 |noway |c
step
'Fight 2: _Vian the Volatile_
.' Vian is more difficult, but still relatively easy. He has 4 abilities:
..' _Fire Line_ is very similar to Bruce's _Chomp Chomp Chomp_.
..' _Fire Orbs_ will bounce around the arena, doing damage to you if they touch you, and causing an enrage effect on Vian if they touch him.
..' _Lava Burst_ is a normal spell, you should not worry about this one.
..' _The best strategy for this fight is to stay on him while avoiding both the orbs and the Fire Line spell, interrupting them if possible._
|modelnpc Vian the Volatile##67579
'Defeat Vian the Volatile in the Brawler's Guild |condition ZGV:GetReputation(1374).friendRep>=500
step
goto Brawl'gar Arena 55.9,20.1 |n
.talk 67267
.' Tell them you're ready to fight. |goto Brawl'gar Arena 57.1,48.7 |noway |c
step
'Fight 3: _Goredome_
.' Goredome is very similar to Bruce. He has 1 ability:
..' _Lumbering Charge_ is a relatively quick cast, but it's easily avoidable. He will lay a red circle on the ground as he begins casting it. Make sure to get out of the circle before he charges. |tip If you are in the circle, you will instantly be killed.
|modelnpc Goredome##68257
'Defeat Goredome in the Brawler's Guild |condition ZGV:GetReputation(1374).friendRep>=750
step
goto Brawl'gar Arena 55.9,20.1 |n
.talk 67267
.' Tell them you're ready to fight. |goto Brawl'gar Arena 57.1,48.7 |noway |c
step
'Fight 4: _Dungeon Master Vishas_
.' Dungeon Master Vishas is the boss of this Rank. He has 2 abilities:
..' _Naughty Secrets_ is a 2.5-second cast debuff that inflicts damage and increases vulnerability to future shadow damage for 1 minute. This isn't a big concern, but this spell can be interrupted.
..' _Heated Pokers_ is a 2.5-second cast that causes Vishas' attacks to do massive damage. This spell cannot be interrupted except using a stun. If he does cast this, make sure to run away until the buff wears off.
|modelnpc Dungeon Master Vishas##67572
'Defeat Dungeon Master Vishas in the Brawler's Guild |condition ZGV:GetReputation(1374).friendRep>=1000
step
goto Brawl'gar Arena 55.9,20.1 |n
.talk 67267
.' Tell them you're ready to fight. |goto Brawl'gar Arena 57.1,48.7 |noway |c
step
'Fight 5: _Dippy_
.' Dippy is the first fight in rank 2 and has the following abilities:
..' _Slippy_ is a constant debuff that causes him to fall down with every direct hit. This interrupts the current cast of _Peck_. This will not happen if Dippy is next to a wall.
..' _Peck_ is a very quick casted spell that will instantly kill you. Unless you are strictly a melee class, the best option in this fight is to kite him and kill him from range.
..' _The best strategy for this fight is to keep pressue on Dippy, and never give him a chance to cast his Peck. Any direct strike will do, so don't rely on DoTs to knock him over._
|modelnpc Dippy##68255
'Defeat Dippy in the Brawler's Guild |condition ZGV:GetReputation(1374).friendRep>=1250
step
goto Brawl'gar Arena 55.9,20.1 |n
.talk 67267
.' Tell them you're ready to fight. |goto Brawl'gar Arena 57.1,48.7 |noway |c
step
'Fight 6: _Kirrawk_
.' Kirrawk is the second fight in rank 2 and has the following abilities:
..' _Lightning Bolt_ is his basic cast spell. It does quite a bit of damage, but isn't a primary concern.
..' _Storm Cloud_ is an ability that summons a cloud to inflict Nature damage when Kirrawk is attacked. Interrupt this whenever possible.
..' _Tornado_ is an ability that summons a twister that will toss you up somewhere in the arena, and will make a straight line towards you. The only way to avoid this is to have the tornado touch Kirrawk before it touches you.
..' _Lightning Flurry_ is an ability that he will only cast if you are tossed up by his Tornado. This attack does considerable damage.
..' _The best strategy for this fight is to pay attention to the tornado, and make sure it hits him instead of you. Also, pay attention to his casts and interrupt Storm Cloud any way you can._
|modelnpc Kirrawk##67269
'Defeat Kirrawk in the Brawler's Guild |condition ZGV:GetReputation(1374).friendRep>=1500
step
goto Brawl'gar Arena 55.9,20.1 |n
.talk 67267
.' Tell them you're ready to fight. |goto Brawl'gar Arena 57.1,48.7 |noway |c
step
'Fight 7: _Fran_ and _Riddoh_
.' Fran and Riddoh is the first fight where you must kill 2 enemies:
.' _Riddoh_ should be your primary target and has these abilities:
..' _Throw Net_ is his basic ability. It is a quick cast, and immobilizes you for 5 seconds.
..' _Frenzied Riddoh_ is an ability that will only be used if you kill Fran first. This causes Riddoh's attacks to deal 250% damage
.' _Fran_ should be your secondary Target and has the following abilities:
..' _Throw Dynamite_ is his basic ability. He throws a stick of dynamite in the air that can be avoided.
..' _Goblin Device_ is an ability that summons a a ring of bombs around you. You will have to run out of the circle before they explode.
..' _The best strategy for this fight is to kill Riddoh first to prevent him from becoming frenzied, while making sure to avoid the AoE attacks that Fran throws at you._
|modelnpc Fran##67525
|modelnpc Riddoh##67524
'Defeat Fran and Riddoh in the Brawler's Guild |condition ZGV:GetReputation(1374).friendRep>=1750
step
goto Brawl'gar Arena 55.9,20.1 |n
.talk 67267
.' Tell them you're ready to fight. |goto Brawl'gar Arena 57.1,48.7 |noway |c
step
'Fight 8: _King Kulaka_
.' King Kulaka is the boss of this Rank. He has 1 ability:
..' _Dash_ is an instant cast spell that increases his movement speed by 60% for 5 seconds.
..' _The best strategy for this is to dps him before he can kill you. His melee attacks hit hard, so be sure to have some potions handy and do your best to kite him if possible._
|modelnpc King Kulaka##68254
'Defeat King Kulaka in the Brawler's Guild |condition ZGV:GetReputation(1374).friendRep>=2000
step
goto Brawl'gar Arena 55.9,20.1 |n
.talk 67267
.' Tell them you're ready to fight. |goto Brawl'gar Arena 57.1,48.7 |noway |c
step
'Fight 9: _Blat_
.' Blat is where the difficulty starts to raise a bit. He has 1 ability:
..' _Split_ is a 0.5 second cast spell that causes him to create a copy of himself. He will use this several times throughout the fight.
..' _The best strategy for this fight is to kite him away, and focus on the main version of him. If you can't kite, then just try and do as much dps as possible. All of the other versions have as much health as he does, so you will not be able to kill them fast enough to avoid the enrage timer._
|modelnpc Blat##67594
'Defeat Blat in the Brawler's Guild |condition ZGV:GetReputation(1374).friendRep>=2250
step
goto Brawl'gar Arena 55.9,20.1 |n
.talk 67267
.' Tell them you're ready to fight. |goto Brawl'gar Arena 57.1,48.7 |noway |c
step
'Fight 10: _Sanoriak_
.' Sanoriak is basically a more powerful version of Vian the Volatile. He has 4 abilities:
..' _Fireball_ and _Pyroblast_ are both his most common moves. They do quite a bit of damage, so interrupt them every now and then if possible.
..' _Flame Buffet_ is a strong move that does a lot of damage and increases any fire damage taken for 15 seconds. Interrupt this as much as possible.
..' _Firewall_ is his most powerful move. It will not show a casting bar, but he will show the animation. This spawns a rain of fireballs down on your location. Be sure to move out of this, because it does a ton of damage.
..' _The best strategy for this fight is to keep pressure on him, avoid his AoE meteor attack, and interrupt/stun whenever possible._
|modelnpc Sanoriak##67268
'Defeat Sanoriak in the Brawler's Guild |condition ZGV:GetReputation(1374).friendRep>=2500
step
goto Brawl'gar Arena 55.9,20.1 |n
.talk 67267
.' Tell them you're ready to fight. |goto Brawl'gar Arena 57.1,48.7 |noway |c
step
'Fight 11: _Ixx_
.' Ixx is very similar to _Mogu Warriors_ in Pandaria. He has 1 ability:
..' _Conal Cleave_ is a average cast spell that shows a large cone in front of him when he begins casting. If this hits you, you will die.
..' _The best strategy for this fight is to keep pressure on him, and run through him when he begins casting his cleave._
|modelnpc Ixx##68253
'Defeat Ixx in the Brawler's Guild |condition ZGV:GetReputation(1374).friendRep>=2750
step
goto Brawl'gar Arena 55.9,20.1 |n
.talk 67267
.' Tell them you're ready to fight. |goto Brawl'gar Arena 57.1,48.7 |noway |c
step
'Fight 12: _Mazhareen_
.' Mazhareen is a pretty straightforward fight. She does not have any abiilities, but Mazhareen does more damage as she loses health.
..' _The best strategy for this fight is to DPS her down as quickly as possible, saving any cooldowns for the end of the fight._
|modelnpc Mazhareen##68251
'Defeat Mazhareen in the Brawler's Guild |condition ZGV:GetReputation(1374).friendRep>=3000
..learnpet Clock'em##68601
step
goto Brawl'gar Arena 52.0,32.6
.talk 68364
.buy 1 Clock'em##93025
step
..learnpet Clock'em##68601 |use Clock'em##93025
]])
