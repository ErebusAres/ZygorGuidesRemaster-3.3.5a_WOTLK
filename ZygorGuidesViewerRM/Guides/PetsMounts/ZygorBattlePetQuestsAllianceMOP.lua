local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PetBattleAlliance") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Battle Pet Questline",[[
step
#include "Alliance_Battlepet_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Battle Pet Dailies",[[
step
.' In order to obtain these daily quests, you will need to have defeated Grand Master pet tamers.
.' If you haven't done so already, please go back and complete the Battle Pet quest guide.
.' Otherwise, click here to proceed. |confirm
step
label "reset"
'Click here to do the daily set in the Eastern Kingdoms |confirm |next "ekpets" |only if completedq(31915)
'Click here to do the daily set in Outland |confirm |next "outpets" |only if completedq(31920)
'Click here to do the daily set in Northrend |confirm |next "northpets" |only if completedq(31928)
'Click here to do the daily set in the Cataclysm |confirm |next "catapets" |only if completedq(31970)
'Click here to do the daily set in Pandaria |confirm |next "pandapets" |only if completedq(31970)
step
label "ekpets"
goto Elwynn Forest 41.6,83.7
.talk 64330
..accept 31693
|only if completedq(31915)
step
goto Elwynn Forest 41.6,83.7
.talk 64330
|tip You will not be able to challenge Julia if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip Julia has 2 Beast type Pets. Use Mechanical type attacks on the Beast Pets. Julia's pets are level 2 so you shouldn't have any issues here.
.' Defeat Julia Stevens |q 31693/1
|only if completedq(31915)
step
goto Elwynn Forest 41.6,83.7
.talk 64330
..turnin 31693
|only if completedq(31915)
step
goto Westfall 60.9,18.6
.talk 65648
..accept 31780
|only if completedq(31915)
step
goto Westfall 60.9,18.6
.talk 65648
|tip You will not be able to challenge Old MacDonald if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip Old MacDonald has 3 Beast type Pets. Use Mechanical type attacks on the Beast Pets. Old MacDonald's pets are level 3 so you shouldn't have any issues here.
.' Defeat Old MacDonald |q 31780/1
|only if completedq(31915)
step
goto Westfall 60.9,18.6
.talk 65648
..turnin 31780
|only if completedq(31915)
step
goto Duskwood 19.9,44.7
.talk 65655
..accept 31850
|only if completedq(31915)
step
goto Duskwood 19.9,44.7
.talk 65655
|tip You will not be able to challenge Eric if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip Eric has 3 Beast type Pets. Use Mechanical type attacks on the Beast Pets. Eric's pets are level 7 so you shouldn't have any issues here.
.' Defeat Eric Davidson |q 31850/1
|only if completedq(31915)
step
goto Duskwood 19.9,44.7
.talk 65655
..turnin 31850
|only if completedq(31915)
step
goto Northern Stranglethorn 46.0,40.3
.talk 63194
..accept 31852
|only if completedq(31915)
step
goto Northern Stranglethorn 46.0,40.3
.talk 63194
|tip You will not be able to challenge Steven if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip Steven has a Magic type Pet and 2 Beast type Pets. Use Dragonkin type attacks on the Magic Pet and Mechanical type attacks on the Beast Pets. Steven's pets are level 9 so you shouldn't have any issues here.
.' Defeat Steven Lisbane |q 31852/1
|only if completedq(31915)
step
goto Northern Stranglethorn 46.0,40.3
.talk 63194
..turnin 31852
|only if completedq(31915)
step
goto The Cape of Stranglethorn 51.4,73.3
.talk 65656
..accept 31851
|only if completedq(31915)
step
goto The Cape of Stranglethorn 51.4,73.3
.talk 65656
|tip You will not be able to challenge Bill if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip Bill has a Humanoid type Pet and 2 Flying type Pets. Use Undead type attacks on the Humanoid Pet and Magic type attacks on the Flying Pets. Bill's pets are level 11 so you shouldn't have any issues here.
.' Defeat Bill Buckler |q 31851/1
|only if completedq(31915)
step
goto The Cape of Stranglethorn 51.4,73.3
.talk 65656
..turnin 31851
|only if completedq(31915)
step
goto Deadwind Pass 40.1,76.4
.talk 66522
..accept 31916
|only if completedq(31915)
step
goto Deadwind Pass 40.1,76.4
.talk 66522
|tip You will not be able to challenge Lydia if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip Lydia has an Elemental type Pet and 2 Undead type Pets. Use Aquatic type attacks on the Elemental Pet and Critter type attacks on the Undead Pets. Your pets should be at least level 19 before fighting Lydia.
.' Defeat Lydia Accoste |q 31916/1
|only if completedq(31915)
step
goto 40.1,76.4
.talk 66522
..turnin 31916
|only if completedq(31915)
step
goto Swamp of Sorrows 76.8,41.5
.talk 66518
..accept 31913
|only if completedq(31915)
step
goto Swamp of Sorrows 76.8,41.5
.talk 66518
|tip You will not be able to challenge Everessa if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip Everessa has a Flying Pet, a Beast Pet, and an Aquatic Pet. Use Magic type attacks on the Flying Pet, Mechanical type attacks on the Beast Pet, and Flying type attacks on the Aquatic Pet. Her pets are all level 16. You should be able to win with ease.
.' Defeat Everessa |q 31913/1
|only if completedq(31915)
step
goto Redridge Mountains 33.2,52.6
.talk 65651
..accept 31781
|only if completedq(31915)
step
goto Redridge Mountains 33.2,52.6
.talk 65651
|tip You will not be able to challenge Lindsay if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip Lindsay has 3 Critter type pets. Use Beast type attacks the Critter Pets. Her pets are all level 16. You should be able to win with ease.
.' Defeat Lindsay |q 31781/1
|only if completedq(31915)
step
goto Redridge Mountains 33.2,52.6
.talk 65651
..turnin 31781
|only if completedq(31915)
step
goto Swamp of Sorrows 76.8,41.5
.talk 66518
..turnin 31913
|only if completedq(31915)
step
goto Burning Steppes 25.5,47.4
.talk 66520
..accept 31914
|only if completedq(31915)
step
goto Burning Steppes 25.5,47.4
.talk 66520
|tip You will not be able to challenge Durin if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip Durin has a Flying type Pet, a Critter Pet, and an Elemental Pet. Use Magic type attacks on the Flying Pet, Beast type attacks on the Critter Pet, and Aquatic type attacks on the Elemental Pet. His pets are all level 17. You should be able to win with ease.
.' Defeat Durin Darkhammer |q 31914/1
|only if completedq(31915)
step
goto Burning Steppes 25.5,47.4
.talk 66520
..turnin 31914
|only if completedq(31915)
step
goto Searing Gorge 35.3,27.8
.talk 66515
..accept 31912
|only if completedq(31915)
step
goto Searing Gorge 35.3,27.8
.talk 66515
|tip You will not be able to challenge Kortas if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip Kortas has 3 Dragonkin type Pets. Use Humanoid type attacks on his pets. His pets are all around level 15 so your pet team should be able to defeat him easily.
.' Defeat Kortas Darkhammer |q 31912/1
|only if completedq(31915)
step
goto Searing Gorge 35.3,27.8
.talk 66515
..turnin 31912
|only if completedq(31915)
step
goto The Hinterlands 63.0,54.6
.talk 66478
..accept 31910
|only if completedq(31915)
step
goto The Hinterlands 63.0,54.6
.talk 66478
|tip You will not be able to challenge David if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip David has a Beast Pet, a Critter Pet, and an Magic Pet. Use Mechanical type attacks on the Beast Pet, Beast type attacks on the Critter Pet, and Dragonkin type attacks on the Magic Pet. His pets are all around level 13 so your pet team should be able to defeat him easily.
.' Defeat David Kosse |q 31910/1
|only if completedq(31915)
step
goto The Hinterlands 63.0,54.6
.talk 66478
..turnin 31910
|only if completedq(31915)
step
goto Eastern Plaguelands 67.0,52.4
.talk 66512
..accept 31911
|only if completedq(31915)
step
goto Eastern Plaguelands 67.0,52.4
.talk 66512
|tip You will not be able to challenge Deiza if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip Deiza has 2 Beast type Pets and an Undead type Pet. Use Mechanical type attacks on the Beast Pets and Critter type attacks on the Undead Pet. Her pets are all around level 14 so your pet team should be able to defeat her easily.
.' Defeat Deiza Plaguehorn |q 31911/1
|only if completedq(31915)
step
goto Eastern Plaguelands 67.0,52.4
.talk 66512
..turnin 31911
|only if completedq(31915)
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
|tip Nicki has 3 Mechanical type Pets. Use Elemental type attacks on her pets. Her pets are all around level 20.
.' Defeat Nicki Tinytech |q 31922/1
|only if completedq(31920)
step
goto Hellfire Peninsula 64.3,49.3
.talk 66550
..turnin 31922
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
|tip Ras'an has a Flying Pet, a Humanoid Pet, and a Magic Pet. Use Magic type attacks on his Flying pet, Undead type attacks on his Humanoid pet, and Dragonkin type attacks on his Magic pet. His pets are all around level 21.
.' Defeat Ras'an |q 31923/1
|only if completedq(31920)
step
goto Zangarmarsh 17.2,50.5
.talk 66551
..turnin 31923
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
|tip Narrok has an Aquatic Pet, a Beast Pet, and a Critter Pet. Use Flying type attacks on his Aquatic pet, Mechanical type attacks on his Beast pet, and Beast type attacks on his Critter pet. His pets are all around level 22.
.' Defeat Narrok |q 31924/1
|only if completedq(31920)
step
goto Nagrand 61.0,49.4
.talk 66552
..turnin 31924
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
goto Shadowmoon Valley 30.6,42.0
.talk 66557
..accept 31926
|only if completedq(31920)
step
goto Shadowmoon Valley 30.6,42.0
.talk 66557
|tip You will not be able to challenge Bloodknight Antari if you have the "Pet Recovery" debuff, wait for it to fall off.
.' Let's fight!
|tip Bloodknight Antari has an Elemental Pet, a Dragonkin Pet, and a Magic Pet. Use Aquatic type attacks on his Elemental pet, Humanoid type attacks on his Dragonkin pet, and Dragonkin type attacks on his Magic pet. Your pets should all be around level 24.
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
|tip Beegle Blastfuse has an Aquatic Pet and 2 Flying Pets. Use Flying type attacks on his Aquatic pet and Magic attacks on his Flying pets. Your pets should all be around level 25 before fighting Beegle.
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
|tip Nearly Headless Jacob has 3 Undead Pets. Critter type attacks will be the most useful against Jacob. You should also consider having an Aquatic pet or two. Your pets should all be level 25.
.' Defeat Nearly Headless Jacob |q 31932/1
|only if completedq(31928)
step
goto Crystalsong Forest 50.1,59.0
.talk 66636
..turnin 31932
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
|tip Gutretch has 2 Beast type Pets and a Critter type Pet. Use Mechanical type attacks on his Beasts and Beast type attacks on his Critter. Your pets should all be level 25 for this fight.
.' Defeat Gutretch |q 31934/1
|only if completedq(31928)
step
goto Zul'Drak 13.2,66.8
.talk 66639
..turnin 31934
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
.' Defeat Seeker Zusshi |q 31991/5
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
|next "reset"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Beasts of Fable",[[
step
#include "A_Beasts_of_Fable"
]])
