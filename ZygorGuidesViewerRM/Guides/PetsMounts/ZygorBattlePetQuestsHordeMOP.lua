local ZygorGuidesViewer=ZygorGuidesViewer
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetBattleHorde") then return end
if not ZygorGuidesViewer then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Battle Pet Questline",[[
author support@zygorguides.com
step
#include "Horde_Battlepet_quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Battle Pet Dailies",[[
step
.' In order to obtain these daily quests, you will need to have defeated Grand Master pet tamers.
.' If you haven't done so already, please go back and complete the Battle Pet quest guide.
.' Otherwise, click here to proceed. |confirm
step
label "reset"
'Click here to do the daily set in Kalimdor |confirm |next "kalpets" |only if completedq(31897)
'Click here to do the daily set in Outland |confirm |next "outpets" |only if completedq(31920)
'Click here to do the daily set in Northrend |confirm |next "northpets" |only if completedq(31928)
'Click here to do the daily set in the Cataclysm |confirm |next "catapets" |only if completedq(31970)
'Click here to do the daily set in Pandaria |confirm |next "pandapets" |only if completedq(31970)
step
label "kalpets"
goto Durotar 43.9,28.7
.talk 66126
..accept 31818
step
goto Durotar 43.9,28.7
.talk 66126
.' Let's fight!
.' Defeat Zunta |q 31818/1
step
goto Durotar 43.9,28.7
.talk 66126
..turnin 31818
step
goto Northern Barrens 58.6,53.0
.talk 66135
..accept 31819
step
goto Northern Barrens 58.6,53.0
.talk 66135
.' Let's fight!
.' Defeat Dagra the Fierce |q 31819/1
step
goto Northern Barrens 58.6,53.0
.talk 66135
..turnin 31819
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
goto Moonglade 46.1,60.3
.talk 66412
..accept 31908
step
goto Moonglade 46.1,60.3
.talk 66412
|tip You will not be able to challenge Elena if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
.' Defeat Elena Flutterfly |q 31908/1
step
goto Moonglade 46.1,60.3
.talk 66412
..turnin 31908
step
goto Felwood 40.0,56.6
.talk 66442
..accept 31907
step
goto Felwood 40.0,56.6
.talk 66442
|tip You will not be able to challenge Zoltan if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's do it!
.' Defeat Zoltan |q 31907/1
step
goto Felwood 40.0,56.6
.talk 66442
..turnin 31907
step
goto Ashenvale 20.2,29.5
.talk 66136
..accept 31854
step
goto Ashenvale 20.2,29.5
.talk 66136
|tip You will not be able to challenge Analynn if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
.' Defeat Analynn |q 31854/1
step
goto Ashenvale 20.2,29.5
.talk 66136
..turnin 31854
step
goto Stonetalon Mountains 59.7,71.5
.talk 66137
..accept 31862
step
goto Stonetalon Mountains 59.7,71.5
.talk 66137
|tip You will not be able to challenge Zonya if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
.' Defeat Zonya the Sadist |q 31862/1
step
goto Stonetalon Mountains 59.7,71.5
.talk 66137
..turnin 31862
step
goto Desolace 57.1,45.7
.talk 66372
..accept 31872
step
goto Desolace 57.1,45.7
.talk 66372
.' Let's fight!
.' Defeat Merda Stronghoof |q 31872/1
step
goto Desolace 57.1,45.7
.talk 66372
..turnin 31872
step
goto Feralas 59.7,49.6
.talk 66352
.accept 31871
step
goto Feralas 59.7,49.6
.talk 66352
|tip You will not be able to challenge Traitor Gluk if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
.' Defeat Traitor Gluk |q 31871/1
step
goto Feralas 59.7,49.6
.talk 66352
.turnin 31871
step
goto Thousand Needles 31.9,33.0
.talk 66452
..accept 31906
step
goto Thousand Needles 31.9,33.0
.talk 66452
|tip You will not be able to challenge Kela Grimtotem if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
.' Defeat Kela Grimtotem |q 31906/1
step
goto Thousand Needles 31.9,33.0
.talk 66452
..turnin 31906
step
goto Southern Barrens 39.6,79.1
.talk 66422
..accept 31904
step
goto Southern Barrens 39.6,79.1
.talk 66422
.' Let's fight!
.' Defeat Cassandra Kaboom |q 31904/1
step
goto Southern Barrens 39.6,79.1
.talk 66422
..turnin 31904
step
goto Dustwallow Marsh 53.9,74.8
.talk 66436
..accept 31905
step
goto Dustwallow Marsh 53.9,74.8
.talk 66436
|tip You will not be able to challenge Grazzle the Great if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
.' Defeat Grazzle the Great |q 31905/1
step
goto Dustwallow Marsh 53.9,74.8
.talk 66436
..turnin 31905
|next "reset"
step
label "outpets"
goto Hellfire Peninsula 64.3,49.3
.talk 66550
..accept 31922
|only if completedq(31920)
step
goto Hellfire Peninsula 64.3,49.3
.talk 66550
|tip You will not be able to challenge Nicky if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip Nicky has 3 Mechanical type Pets. Use Elemental type attacks on her pets. Her pets are all around level 20.
.' Defeat Nicki Tinytech |q 31922/1
|only if completedq(31920)
step
goto Hellfire Peninsula 64.3,49.3
.talk 66550
..turnin 31922
|only if completedq(31920)
step
goto Shattrath City 58.8,70.1
.talk 66553
..accept 31925
|only if completedq(31920)
step
goto Shattrath City 58.8,70.1
.talk 66553
|tip You will not be able to challenge Morulu if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip Morulu has 3 Aquatic type Pets. Use Flying type attacks on his pets. His pets are all around level 23.
.' Defeat Morulu The Elder |q 31925/1
|only if completedq(31920)
step
goto Shattrath City 58.8,70.1
.talk 66553
..turnin 31925
|only if completedq(31920)
step
goto Nagrand 61.0,49.4
.talk 66552
..accept 31924
|only if completedq(31920)
step
goto Nagrand 61.0,49.4
.talk 66552
|tip You will not be able to challenge Narrok if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip Narrok has an Aquatic type Pet, a Beast type Pet, and a Critter type Pet. Use Flying type attacks on his Aquatic pet, Mechanical type attacks on his Beast pet, and Beast type attacks on his Critter pet. His pets are all around level 22.
.' Defeat Narrok |q 31924/1
|only if completedq(31920)
step
goto Nagrand 61.0,49.4
.talk 66552
..turnin 31924
|only if completedq(31920)
step
goto Zangarmarsh 17.2,50.5
.talk 66551
..accept 31923
|only if completedq(31920)
step
goto Zangarmarsh 17.2,50.5
.talk 66551
|tip You will not be able to challenge Ras'an if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip Ras'an has a Flying type Pet, a Humanoid type Pet, and a Magic type Pet. Use Magic type attacks on his Flying pet, Undead type attacks on his Humanoid pet, and Dragonkin type attacks on his Magic pet. His pets are all around level 21.
.' Defeat Ras'an |q 31923/1
|only if completedq(31920)
step
goto Zangarmarsh 17.2,50.5
.talk 66551
..turnin 31923
|only if completedq(31920)
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
|next "reset"
step
label "northpets"
goto Howling Fjord 28.6,33.9
.talk 66635
..accept 31931
|only if completedq(31928)
step
goto Howling Fjord 28.6,33.9
.talk 66635
|tip You will not be able to challenge Beegle Blastfuse if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip Beegle Blastfuse has an Aquatic Pet and 2 Flying Pets. Use Flying type attacks on his Aquatic pet and Magic attacks on his Flying pets.Your pets should all be around level 25 before fighting Beegle.
.' Defeat Beegle Blastfuse |q 31931/1
|only if completedq(31928)
step
goto Howling Fjord 28.6,33.9
.talk 66635
..turnin 31931
|only if completedq(31928)
step
goto Dragonblight 59.0,77.0
.talk 66638
..accept 31933
|only if completedq(31928)
step
goto Dragonblight 59.0,77.0
.talk 66638
|tip You will not be able to challenge Okrut Dragonwaste if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip Okrut Dragonwaste has a Dragonkin Pet and 2 Undead Pets. Use Humanoid type attacks on his Dragonkin and Critter type attacks on his Undead. Your pets should all be level 25 before fighting Okrut.
.' Defeat Okrut Dragonwaste |q 31933/1
|only if completedq(31928)
step
goto Dragonblight 59.0,77.0
.talk 66638
..accept 31933
|only if completedq(31928)
step
goto Crystalsong Forest 50.1,59.0
.talk 66636
..accept 31932
|only if completedq(31928)
step
goto Crystalsong Forest 50.1,59.0
.talk 66636
|tip You will not be able to challenge Nearly Headless Jacob if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip Nearly Headless Jacob has 3 Undead Pets. Critter type attacks will be the most useful against Jacob. You should also consider having an Aquatic pet or two. Your pets should all be level 25 when you fight him.
.' Defeat Nearly Headless Jacob |q 31932/1
|only if completedq(31928)
step
goto Crystalsong Forest 50.1,59.0
.talk 66636
..turnin 31932
|only if completedq(31928)
step
goto Zul'Drak 13.2,66.8
.talk 66639
..accept 31934
|only if completedq(31928)
step
goto Zul'Drak 13.2,66.8
.talk 66639
|tip You will not be able to challenge Gutretch if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip Gutretch has 2 Beast type Pets and a Critter type Pet. Use Mechanical type attacks on his Beasts and Beast type attacks on his Critter. Your pets should all be level 25.
.' Defeat Gutretch |q 31934/1
|only if completedq(31928)
step
goto Zul'Drak 13.2,66.8
.talk 66639
..turnin 31934
|only if completedq(31928)
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
|next "reset"
step
label "catapets"
goto Mount Hyjal 61.4,32.7
.talk 66819
..accept 31972
|only if completedq(31970)
step
goto Mount Hyjal 61.4,32.7
.talk 66819
|tip You will not be able to challenge Brok if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip Brok has a Beast Pet, a Critter Pet, and a Magic Pet. Use Mechanical type attacks on his Beast, Beast type attacks on his Critter, and Dragonkin type attacks on his Magic. Your pets should all be level 25.
.' Defeat Brok |q 31972/1
|only if completedq(31970)
step
goto Mount Hyjal 61.4,32.7
.talk 66819
..turnin 31972
|only if completedq(31970)
step
goto Deepholm 49.9,57.0
.talk 66815
..accept 31973
|only if completedq(31970)
step
goto Deepholm 49.9,57.0
.talk 66815
|tip You will not be able to challenge Bordin Steadyfist if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip Bordin Steadyfist has a Critter Pet and 2 Elemental Pets. Use Beast type attacks on his Critter and Aquatic type attacks on his Elementals. Your pets should all be level 25.
.' Defeat Bordin Steadyfist |q 31973/1
|only if completedq(31970)
step
goto Deepholm 49.9,57.0
.talk 66815
..turnin 31973
|only if completedq(31970)
step
goto Twilight Highlands 56.6,56.8
.talk 66822
..accept 31974
|only if completedq(31970)
step
goto Twilight Highlands 56.6,56.8
.talk 66822
|tip You will not be able to challenge Goz Banefury if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip Goz Banefury has a Beast Pet, an Elemental Pet, and a Magic Pet. Use Mechanical type attacks on his Beast, Aquatic type attacks on his Elemental, and Dragonkin type attacks on his Magic. Your pets should all be level 25.
.' Defeat Goz Banefury |q 31974/1
|only if completedq(31970)
step
goto Twilight Highlands 56.6,56.8
.talk 66822
..turnin 31974
|only if completedq(31970)
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
|next "reset"
step
label "pandapets"
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
|next "reset"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Beasts of Fable",[[
step
#include "H_Beasts_of_Fable"
]])
