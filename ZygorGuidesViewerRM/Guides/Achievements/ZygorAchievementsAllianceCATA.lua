local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("AchievementsA") then return end
ZygorGuidesViewer:RegisterInclude("trainCooking",[[
goto Stormwind City,77.3,53.2
.talk 5482
]])
ZygorGuidesViewer:RegisterInclude("vendor_Cooking_Dalaran_Dalaran",[[
goto Dalaran,41.6,64.8
.talk 31032
]])
ZygorGuidesViewer:RegisterInclude("innkeeper_stormwind",[[
goto Stormwind City,60.4,75.3
.talk 6740
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Giddy Up!",[[
condition end achieved(891)
step
'For this achievement, you will need to reach level 20.
|confirm
step
goto Stormwind City 77.6,67.2
.talk 43693
.learn Apprentice Riding##33388
.' You can also purchase a mount from the vendor at [77.0,67.8]
|only Human
|next "end"
step
goto Dun Morogh 71.2,48.4
.talk 4772
.learn Apprentice Riding##33388
.' You can also purchase a mount from the vendor at [70.6,48.8]
|only Dwarf
|next "end"
step
goto Darnassus 42.6,33.6
.talk 4753
.learn Apprentice Riding##33388
.' You can also purchase a mount from the vendor at [42.6,32.8]
|only Night Elf
|next "end"
step
goto Dun Morogh 56.2,46.4
.talk 7954
.learn Apprentice Riding##33388
.' You can also purchase a mount from the vendor at [56.2,46.2]
|only Gnome
|next "end"
step
goto The Exodar 81.4,52.6
.talk 20914
.learn Apprentice Riding##33388
.' You can also purchase a mount from the vendor at [81.6,52.6]
|only Draenei
|next "end"
step
goto Darnassus 42.6,33.6
.talk 4753
.learn Apprentice Riding##33388
.' You can also purchase a mount from the vendor at [48.6,22.2]
|only Worgen
|next "end"
step
goto Stormwind City 77.6,67.2
.talk 43693
.learn Apprentice Riding##33388
.' You can also purchase a mount from the vendor at [67.8,18.6]
|only Pandaren
|next "end"
step
label "end"
'Congratulations, you have obtained the _Giddy Up!_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Fast and Furious",[[
condition end achieved(889)
step
'For this achievement, you will need to reach level 40.
|confirm
step
goto Stormwind City 77.6,67.2
.talk 43693
.learn Journeyman Riding##33391
.' You can also purchase a mount from the vendor at [77.0,67.8]
|only Human
|next "end"
step
goto Dun Morogh 71.2,48.4
.talk 4772
.learn Journeyman Riding##33391
.' You can also purchase a mount from the vendor at [70.6,48.8]
|only Dwarf
|next "end"
step
goto Darnassus 42.6,33.6
.talk 4753
.learn Journeyman Riding##33391
.' You can also purchase a mount from the vendor at [42.6,32.8]
|only Night Elf
|next "end"
step
goto Dun Morogh 56.2,46.4
.talk 7954
.learn Journeyman Riding##33391
.' You can also purchase a mount from the vendor at [56.2,46.2]
|only Gnome
|next "end"
step
goto The Exodar 81.4,52.6
.talk 20914
.learn Journeyman Riding##33391
.' You can also purchase a mount from the vendor at [81.6,52.6]
|only Draenei
|next "end"
step
goto Darnassus 42.6,33.6
.talk 4753
.learn Journeyman Riding##33391
.' You can also purchase a mount from the vendor at [48.6,22.2]
|only Worgen
|next "end"
step
goto Stormwind City 77.6,67.2
.talk 43693
.learn Journeyman Riding##33391
.' You can also purchase a mount from the vendor at [67.8,18.6]
|only Pandaren
|next "end"
step
label "end"
'Congratulations, you have obtained the _Fast and Furious_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Into The Wild Blue Yonder",[[
condition end achieved(890)
step
'For this achievement, you will need to reach level 60.
'The cost of this riding training is _250 Gold_ (but can be reduced by faction discounts).
|confirm
step
label "expert"
goto Stormwind City 70.6,73.0
.talk 43769
.learn Expert Riding##34090
.' You can also purchase a mount from the vendor at [71.4,72.2]
|next "end"
step
label "end"
'Congratulations, you have obtained the _Into The Wild Blue Yonder_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\The Right Stuff",[[
condition end achieved(892)
step
'For this achievement, you will need to reach level 70.
'The cost of this riding training is _5,000 Gold_ (but can be reduced by faction discounts).
|confirm
step
label "expert"
goto Stormwind City 70.6,73.0
.talk 43769
.learn Artisan Riding##34091
.' You can also purchase a mount from the vendor at [71.4,72.2]
|next "end"
step
label "end"
'Congratulations, you have obtained the _The Right Stuff_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Breaking The Sound Barrier",[[
condition end achieved(5180)
step
'For this achievement, you will need to reach level 80.
'The cost of this riding training is _5,000 Gold_ (but can be reduced by faction discounts).
|confirm
step
label "expert"
goto Stormwind City 70.6,73.0
.talk 43769
.learn Master Riding##90265
.' You can also purchase a mount from the vendor at [71.4,72.2]
|next "end"
step
label "end"
'Congratulations, you have obtained the _Breaking The Sound Barrier_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Shave and a Haircut Achievement",[[
description Visit a Barber Shop and get your hair cut.
condition end achieved(545)
author support@zygorguides.com
step
goto Stormwind City 61.6,64.6
.' Click on the Barbershop Chair |tip It looks like a mechanical chair with a foot rest.
.' Change  your Hair Style or Hair Color, than click "Okay". |tip This will cost money to do, so be sure you have the extra gold to purchase a hair style.
.'
.' Earn the Shave and a Haircut Achievement |achieve 545
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Dual Talent Specialization Achievement",[[
description Visit your class trainer when you are at least level 30 and activate your Dual Talent Specialization.
condition end achieved(2716)
author support@zygorguides.com
step
goto Stormwind City,67.6,36.3
.talk 5515
.' Learn Dual Talent Specialization |achieve 2716
only Hunter
step
goto Stormwind City,77.5,65.3
.talk 918
.' Learn Dual Talent Specialization |achieve 2716
only Rogue
step
goto Stormwind City,49.5,45.2
.talk 5489
.' Learn Dual Talent Specialization |achieve 2716
only Priest
step
goto Stormwind City,57.5,24.9
.talk 44395
.' Learn Dual Talent Specialization |achieve 2716
only Druid
step
goto Stormwind City,52.8,44.9
.talk 928
.' Learn Dual Talent Specialization |achieve 2716
only Paladin
step
goto Stormwind City,48.2,87.2
.talk 5498
.' Learn Dual Talent Specialization |achieve 2716
only Mage
step
goto Stormwind City,65.9,31.4
.talk 20407
.' Learn Dual Talent Specialization |achieve 2716
only Shaman
step
goto Stormwind City,39.9,84.2
.talk 5495
.' Learn Dual Talent Specialization |achieve 2716
only Warlock
step
goto Stormwind City,80.1,69.8
.talk 5479
.' Learn Dual Talent Specialization |achieve 2716
only Warrior
step
goto Stormwind City 68.2,16.2
.talk 62419
.' Learn Dual Talent Specialization |achieve 2716
step
'Earn the Dual Talent Specialization achievement |achieve 2716
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\That's A Lot Of Pet Food",[[
condition end achieved(7501)
achieveid 7500,5875,5877,5876,2516,1250,1248,15,1017
step
goto Elwynn Forest,44.2,53.4
.talk 6367
.buy Cat Carrier (Bombay)##8485 |n
.' Click the Cat Carrier in your bags |use Cat Carrier (Bombay)##8485
.'Can I Keep Him? Achievement |achieve 546
step
goto Elwynn Forest 45.1,67.4
.' The _Fawn_ is level 1. Challenge one to a pet battle and capture it.
.learnpet Fawn##61165
|modeldisplay 654
step
goto Elwynn Forest 61.2,68.1
.' The _Rabbit_ is level 1. Challenge one to a pet battle and capture it.
.learnpet Rabbit##61080
|modeldisplay 328
step
goto Elwynn Forest 72.4,76.4
.' The _Black Lamb_ is level 1. Challenge one to a pet battle and capture it.
.learnpet Black Lamb##60649
|modeldisplay 42906
step
goto Elwynn Forest 77.6,66.2
.' The _Chicken_ is level 1. Challenge one to a pet battle and capture it.
.learnpet Chicken##62664
|modeldisplay 29331
step
goto Westfall 40.6,52.4
.' The _Tiny Harvester_ is level 3. Challenge one to a pet battle and capture it.
.learnpet Tiny Harvester##61160
|modeldisplay 41886
step
goto Duskwood 34.0,37.2
.' The _Rat Snake_ is level 6. Challenge one to a pet battle and capture it.
.learnpet Rat Snake##61258
|modeldisplay 3126
step
goto Duskwood 22.1,37.8
.' The _Mouse_ is level 5 or 6. Challenge one to a pet battle and capture it.
.learnpet Mouse##61143
|modeldisplay 4959
step
goto Duskwood 23.8,29.4
.' The _Skunk_ is level 5 or 6. Challenge one to a pet battle and capture it.
.learnpet Skunk##61255
|modeldisplay 16633
step
goto Duskwood 63.8,26.1
.' The _Dusk Spiderlings_ are level 5-6. Challenge one to a pet battle and capture it.
.learnpet Dusk Spiderling##61253
|modeldisplay 14952
step
goto Duskwood 34.0,37.2
.' The _Roach_ can be found when challenging Rat Snakes and Dusk Spiderlings.
.' The _Roach_ is level 5 or 6. Challenge a Rat Snake or Dusk Spiderling to a pet battle and if the Roach is there capture it.
.learnpet Roach##61169
|modeldisplay 2177
step
goto Duskwood 31.2,39.5
.' The _Widow Spiderling_ can be found when challenging Dusk Spiderlings. Challenge a Dusk Spiderling to a pet battle and if the Widow Spiderling is there capture it.
.learnpet Widow Spiderling##61259
|modeldisplay 41949
step
goto Redridge Mountains 28.9,28.5
.' The _Fledgling Buzzards_ in this area are level 3-5. Challenge one to a pet battle and capture it.
.learnpet Fledgling Buzzard##61171
|modeldisplay 41887
step
goto Redridge Mountains 67.6,31.4
.' The _Redridge Rats_ are around level 5. Challenge one to a pet battle and capture it.
.learnpet Redridge Rat##61168
|modeldisplay 1141
step
goto Northern Stranglethorn 34.8,48.0
.' The _Strand Crabs_ are around level 7. Challenge one to a pet battle and capture it.
.learnpet Strand Crab##61312
|modeldisplay 32789
step
goto Northern Stranglethorn 50.8,66.6
.' _Polly_ is a level 8 Creature flying in circles around this point. Challenge one to a pet battle and capture it.
.learnpet Polly##61322
|modeldisplay 5866
step
goto Northern Stranglethorn
.' The _Crimson Moth_ will be attached to a _Polly_. They are both level 7. Defeat _Polly_ and capture the _Crimson Moth_ when it is below 35% health.
.learnpet Crimson Moth##61314
|modeldisplay 36671
step
goto Northern Stranglethorn 62.1,52.6
.' The _Lizard Hatchlings_ in this area are level 8. Challenge one to a pet battle and capture it.
.learnpet Lizard Hatchling##61321
|modeldisplay 36583
step
goto Blasted Lands 58.8,59.7
.' The _Scorplings_ are around level 16. Challenge one to a pet battle and capture it.
.learnpet Scorpling##61329
|modeldisplay 41960
step
goto Swamp of Sorrows 39.6,52.9
.' The _Swamp Moths_ are level 14. Challenge one to a pet battle and capture it.
.learnpet Swamp Moth##61370
|modeldisplay 36944
step
goto Swamp of Sorrows 54.3,52.1
.' The _Moccasins_ are level 14. Challenge one to a pet battle and capture it.
.learnpet Moccasin##61372
|modeldisplay 1986
step
goto Searing Gorge 43.6,40.4
.' The _Molten Hatchlings_ in this area are around level 13-15. Challenge one to a pet battle and capture it.
.learnpet Molten Hatchling##61425
|modeldisplay 42051
step
goto Badlands 46.0,57.6
.' The _Gold Beetles_ are around level 13. Challenge one to a pet battle and capture it.
.learnpet Gold Beetle##61438
|modeldisplay 15467
step
goto Badlands 12.9,29.7
.' The King Snakes are around level 13. Challenge one to a pet battle and capture it.
.learnpet King Snake##61443
|modeldisplay 2954
step
goto Badlands 72.5,43.9
.' The _Rattlesnakes_ are around level 13. Challenge one to a pet battle and capture it.
.learnpet Rattlesnake##61439
|modeldisplay 35804
step
.' Refer to our pets and mount guides in order to collect all the pets required.
|confirm
step
'Earn the That's a Lot of Pet Food Achievement |achieve 7501/1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Represent Achievement",[[
description Equip a tabard.
condition end achieved(5755)
achieveid 621,1020,1021
step
goto Stormwind City,67.7,73.0
.talk 49877
.buy Stormwind Tabard##45574 |n
.' Equip Stormwind Tabard |use Stormwind Tabard##45574
.' Earn Represent Achievement |achieve 621
step
.' Most tabards are attained through achieving the 'Exalted' level status with certain factions.
.' Refer to our Reputations Guide for gaining exalted with these factions.
.' We will give you the locations of the Home City tabards you can purchase.
.' Click here to proceed. |confirm
step
goto Stormwind City 67.8,18.6
.talk 65068
.buy Tushui Tabard##83079
.' Equip Tushui Tabard |use Tushui Tabard##83079
step
goto Ironforge,55.3,48.2
.talk 50308
.buy Gnomeregan Tabard##45578
.' Equip Gnomeregan Tabard |use Gnomeregan Tabard##45578
step
goto Ironforge,55.6,47.3
.talk 50309
.buy Ironforge Tabard##45577
.' Equip Ironforge Tabard |use Ironforge Tabard##45577
step
goto Darnassus,36.2,48.5
.talk 50305
.buy Darnassus Tabard##45579
.' Equip Darnassus Tabard |use Darnassus Tabard##45579
step
goto Darnassus,37.1,47.5
.talk 50307
.buy Gilneas Tabard##64882
.' Equip Gilneas Tabard |use Gilneas Tabard##64882
step
goto The Exodar,54.8,36.8
.talk 50306
.buy Exodar Tabard##45580
.' Equip Exodar Tabard |use Exodar Tabard##45580
step
'Earn the Ten Tabards Achievement |achieve 1020/1
'Earn the Twenty-Five Tabards Achievements |achieve 1021/1
'Earn the Thirty Tabards Achievement |achieve 5755/1
step
'Congratulations!  You've earned:
.' Represent Achievement |only if achieved(621)
.' Ten Tabards Achievement |only if achieved(1020)
.' Twenty-Five Tabards Achievement |only if achieved(1021)
.' Thirty Tabards Achievement |only if achieved(5755)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Greedy Achievement",[[
description Win a greed roll on a superior or better item above level 185 by rolling 100.
author support@zygorguides.com
condition end achieved(558)
step
For this achievement you will need to be in a group and roll a 100 on a superior (blue) item of item level 185 that drops from a mob in the following dungeons:
.' (Non Heroic) Old Stratholme
.' (Non Heroic) The Oculus
.' (Non Heroic) Utgarde Pinnacle
.' (Non Heroic) Halls of Lightning.
You can also find these items in all of the WotLK Heroic Dungeons and any dungeon from Cataclysm or Pandaria.
.' Click here to continue to the next step |confirm
step
'Greed Roll a 100 on a Superior (Blue) item with iLvl 185+
.' Earn the Greedy Achievement |achieve 558
step
'Congratulations!  You've earned:
.' Greedy Achievement |only if achieved(558)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Needy Achievement",[[
description Win a need roll on a superior or better item above level 185 by rolling 100.
author support@zygorguides.com
condition end achieved(559)
step
For this achievement you will need to be in a group and roll a 100 on a superior (blue) item of item level 185 that drops from a mob in the following dungeons:
.' (Non Heroic) Old Stratholme
.' (Non Heroic) The Oculus
.' (Non Heroic) Utgarde Pinnacle
.' (Non Heroic) Halls of Lightning.
You can also find these items in all of the WotLK Heroic Dungeons and any dungeon from Cataclysm or Pandaria.
.' Click here to continue to the next step |confirm
step
'Need Roll a 100 on a Superior (Blue) item with iLvl 185+
.' Earn the Needy Achievement |achieve 559
step
'Congratulations!  You've earned:
.' Needy Achievement |only if achieved(559)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\My Sack is Gigantique Achievement",[[
description Equip Haris Pilton's "Gigantique" Bag.
author support@zygorguides.com
condition end achieved(1165)
step
'For this achievement, you will need to purchase and equip a bag you can purchase from Haris Pilton. The bag is 1200 gold, so you may have to save up before completing this achievement.
|confirm
step
goto Shattrath City,75.4,30.5
.talk 18756
.buy "Gigantique" Bag##38082 |n
.' Click the Gigantique Bag to equip it |use "Gigantique" Bag##38082
.' Earn the My Sack is Gigantique Achievement |achieve 1165
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\To All The Squirrels and Pest Control",[[
description Show the critters of Azeroth how much you /love them. Slay pests.
author support@zygorguides.com
condition end achieved(5548)
achieveid 1206,2557,2556
step
goto Stormwind City,60.4,75.3
.talk 6740
.home Stormwind City
step
label "travel_shimmer"
'Skipping next part of guide |next "+travel_capestv" |only if step:Find("+shimmer_critters"):IsComplete()
'Proceeding next step |next |only if default
step
label "shimmer_critters"
goto Shimmering Expanse,41.3,53.9
.' Use the _Love_ emote on a Rockchewer Whelk |clicknpc Rockchewer Whelk##48848 |script DoEmote("LOVE")
.' Love a Rockchewer Whelk |achieve 5548/9
step
goto 41.3,53.9
.' Use the _Love_ emote on a Sea Cucumber |clicknpc Sea Cucumber##48802 |script DoEmote("LOVE")
.' Love a Sea Cucumber |achieve 5548/11
step
label "travel_capestv"
'Skipping next part of guide |next "+travel_nstv" |only if step:Find("+rat"):IsComplete() and step:Find("+roach"):IsComplete() and step:Find("+wharf"):IsComplete()
'Proceeding next step |next |only if default
step
label "rat"
goto The Cape of Stranglethorn,40.0,67.7
.kill Rat##4075 |achieve 2556/18
step
label "roach"
goto 42.2,69.5
.kill Roach##4076 |achieve 2556/9
step
label "wharf"
goto 42.7,72.8
.' Use the _Love_ emote on a Wharf Rat |clicknpc Wharf Rat##47667 |script DoEmote("LOVE")
.' Love a Wharf Rat |achieve 5548/12
step
label "travel_nstv"
'Skipping next part of guide |next "+travel_blasted" |only if step:Find("+parrot"):IsComplete() and step:Find("+shore_crab"):IsComplete()
'Proceeding next step |next |only if default
step
label "parrot"
goto Northern Stranglethorn,50.5,66.4
.' Use the _Love_ emote on a Parrot |clicknpc Parrot##9600 |script DoEmote("LOVE")
.' Love a Parrot |achieve 1206/11
step
label "travel_blasted"
'Skipping next part of guide |next "+travel_swamp" |only if step:Find("+scorpion"):IsComplete() and step:Find("+fire_beetle"):IsComplete()
'Proceeding next step |next |only if default
step
label "scorpion"
goto Blasted Lands,42.5,21.9
.kill Scorpion##61326 |achieve 2556/14
step
label "fire_beetle"
goto 44.4,32.9
.kill Fire Beetle##9699 |achieve 2556/16
step
label "travel_swamp"
'Skipping next part of guide |next "+travel_dusk" |only if step:Find("+swamp_critters"):IsComplete()
'Proceeding next step |next |only if default
step
label "swamp_critters"
goto Swamp of Sorrows,39.7,51.0
.' Use the _Love_ emote on a Huge Toad |clicknpc Huge Toad##61368 |script DoEmote("LOVE")
.' Love a Huge Toad |achieve 2557/7
step
label "travel_dusk"
'Skipping next part of guide |next "+travel_elwynn" |only if step:Find("+skunk"):IsComplete()
'Proceeding next step |next |only if default
step
label "skunk"
goto Duskwood,12.3,65.8
.' Use the _Love_ emote on a Skunk |clicknpc Skunk##17467 |script DoEmote("LOVE") |tip It looks like a small skunk that walks around this area.
.' Love a Skunk |achieve 1206/16
step
label "travel_elwynn"
'Skipping next part of guide |next "+travel_badlands" |only if step:Find("+rabbit"):IsComplete() and step:Find("+elwynn_critters"):IsComplete() and step:Find("+cow"):IsComplete() and step:Find("+chicken"):IsComplete() and step:Find("+cat"):IsComplete()
'Proceeding next step |next |only if default
step
label "rabbit"
goto Elwynn Forest,36.3,85.8
.' Use the _Love_ emote on a Rabbit |clicknpc Rabbit##61080 |script DoEmote("LOVE")
.' Love a Rabbit |achieve 1206/12
step
label "elwynn_critters"
goto 24.9,83.0
.' Use the _Love_ emote on a Deer |clicknpc Deer##883 |script DoEmote("LOVE") |tip The deer looks like a tan deer that walks around this area.  The fawn is a baby tan deer that walks around with the deer around this area.
.' Love a Deer |achieve 1206/5
step
goto 24.9,83.0
.' Use the _Love_ emote on a Fawn  |clicknpc Fawn##890 |script DoEmote("LOVE")
.' Love a Fawn |achieve 1206/7
step
label "cow"
goto 32.3,77.2
.' Use the _Love_ emote on a Cow |clicknpc Cow##2442 |script DoEmote("LOVE")
.' Love a Cow |achieve 1206/4
step
label "chicken"
goto 36.5,60.1
.' Use the _Love_ emote on a Chicken |clicknpc Chicken##620 |script DoEmote("LOVE")
.' Love a Chicken |achieve 1206/3
step
label "cat"
goto 44.5,53.8
.' Use the _Love_ emote on a Cat |clicknpc Cat##6368 |script DoEmote("LOVE")
.' Love a Cat |achieve 1206/2
step
label "travel_badlands"
'Skipping next part of guide |next "+travel_thorium" |only if step:Find("+gold_beetle"):IsComplete()
'Proceeding next step |next |only if default
step
label "gold_beetle"
goto Badlands,50.4,43.9
.kill Gold Beetle##32258 |achieve 2556/17
step
label "travel_thorium"
'Skipping next part of guide |next "+travel_loch" |only if step:Find("+lava_crab"):IsComplete()
'Proceeding next step |next |only if default
step
label "lava_crab"
goto Searing Gorge,31.1,43.7
.' Use the _Love_ emote on a Lava Crab |clicknpc Lava Crab##9700 |script DoEmote("LOVE")
.' Love a Lava Crab |achieve 2557/8
step
label "travel_loch"
'Skipping next part of guide |next "+travel_twilight" |only if step:Find("+sheep"):IsComplete() and step:Find("+loch_critters"):IsComplete()
'Proceeding next step |next |only if default
step
label "sheep"
goto Loch Modan,20.9,71.9
.' Use the _Love_ emote on a Sheep |clicknpc Sheep##1933 |script DoEmote("LOVE")
.' Love a Sheep |achieve 1206/14
step
label "loch_critters"
goto 29.0,66.3
.' Use the Love emote on a Ram and a Squirrel |clicknpc Ram##2098 |script DoEmote("LOVE")
.' Love a Ram |achieve 1206/13
step
goto 29.0,66.3
.' Love a Squirrel |achieve 1206/17
.kill Squirrel##1412 |achieve 2556/4
step
label "travel_twilight"
'Skipping next part of guide |next "+travel_hinterlands" |only if step:Find("+maggot"):IsComplete()
'Proceeding next step |next |only if default
step
label "twilight_critters"
goto Twilight Highlands,29.3,33.1
.' Use the Love emote on a Yellow-Bellied Marmot  |clicknpc Yellow-Bellied Marmot##48683 |script DoEmote("LOVE")
.' Love a Yellow-Bellied Marmot |achieve 5548/13
step
goto 29.3,33.1
.' Use the Love emote on a Highlands Turkey |clicknpc Highlands Turkey##48706 |script DoEmote("LOVE")
.' Love a Highlands Turkey |achieve 5548/4
step
label "shore_crab"
goto 71.2,41.2
.' Use the Love emote on a Shore Crab |clicknpc Shore Crab##60761 |script DoEmote("LOVE")
.' Love a Shore Crab |achieve 1206/15
step
label "travel_hinterlands"
'Skipping next part of guide |next "+travel_ghostlands" |only if step:Find("+maggot"):IsComplete()
'Proceeding next step |next |only if default
step
label "maggot"
goto The Hinterlands,31.9,57.9
.kill Maggot##16030 |achieve 2556/13
step
label "travel_ghostlands"
'Skipping next part of guide |next "+travel_shattrath" |only if step:Find("+larva"):IsComplete()
'Proceeding next step |next |only if default
step
label "larva"
goto Ghostlands,45.3,31.1
.kill Larva##16068 |achieve 2556/1
step
label "travel_shattrath"
'Skipping next part of guide |next "+travel_borean" |only if step:Find("+ewe"):IsComplete()
'Proceeding next step |next |only if default
step
label "ewe"
goto Shattrath City,58.8,23.3
.' Use the Love emote on a Ewe |clicknpc Ewe##19665 |script DoEmote("LOVE")
.' Love an Ewe |achieve 1206/6
step
label "travel_borean"
'Skipping next part of guide |next "+travel_sholazar" |only if step:Find("+marmot"):IsComplete() and step:Find("+penguin"):IsComplete() and step:Find("+steam_frog"):IsComplete() and step:Find("+borean_frog"):IsComplete()
'Proceeding next step |next |only if default
step
label "marmot"
goto Borean Tundra,36.0,55.9
.' Use the Love emote on a Borean Marmot |clicknpc Borean Marmot##31685 |script DoEmote("LOVE")
.' Love a Borean Marmot |achieve 2557/2
step
label "penguin"
goto 24.5,61.8
.' Use the Love emote on a Tundra Penguin  |clicknpc Tundra Penguin##28440 |script DoEmote("LOVE")
.' Love a Tundra Penguin |achieve 2557/12
step
label "steam_frog"
goto 61.0,51.8
.' Use the Love emote on a Steam Frog |clicknpc Steam Frog##25679 |script DoEmote("LOVE")
.' Love a Steam Frog |achieve 1206/18
step
label "borean_frog"
goto 72.7,41.0
.' Use the Love emote on a Borean Frog |clicknpc Borean Frog##25677 |script DoEmote("LOVE")
.' Love a Borean Frog |achieve 1206/1
step
label "travel_sholazar"
'Skipping next part of guide |next "+travel_icecrown" |only if step:Find("+tickbird"):IsComplete()
'Proceeding next step |next |only if default
step
label "tickbird"
goto Sholazar Basin,27.1,60.5
.' Use the Love emote on a Sholazar Tickbird |clicknpc Sholazar Tickbird##28093 |script DoEmote("LOVE")
.' Love a Sholazar Tickbird |achieve 2557/11
step
label "travel_icecrown"
'Skipping next part of guide |next "+travel_dalaran" |only if step:Find("+glacier_penguin"):IsComplete()
'Proceeding next step |next |only if default
step
label "glacier_penguin"
goto Icecrown,60.9,18.8
.' Use the Love emote on a Glacier Penguin |clicknpc Glacier Penguin##32498 |script DoEmote("LOVE")
.' Love a Glacier Penguin |achieve 2557/5
step
label "travel_dalaran"
'Skipping next part of guide |next "+travel_zuldrak" |only if step:Find("+underbelly_rat"):IsComplete()
'Proceeding next step |next |only if default
step
label "underbelly_rat"
goto 47.4,42.5
.kill Underbelly Rat##32428 |achieve 2556/5
step
label "travel_zuldrak"
'Skipping next part of guide |next "+travel_grizzly" |only if step:Find("+zuldrak_rat"):IsComplete() and step:Find("+hare"):IsComplete()
'Proceeding next step |next |only if default
step
label "zuldrak_rat"
goto Zul'Drak 42.4,63.1
.kill Zul'Drak Rat##28202 |achieve 2556/8
step
label "hare"
goto 71.8,69.8
.' Use the Love emote on an Arctic Hare |clicknpc Arctic Hare##29328 |script DoEmote("LOVE")
.' Love an Artic Hare |achieve 2557/1
step
label "travel_grizzly"
'Skipping next part of guide |next "+travel_howling" |only if step:Find("+grizzly_squirrel"):IsComplete() and step:Find("+mountain_skunk"):IsComplete()
'Proceeding next step |next |only if default
step
label	"grizzly_squirrel"
goto Grizzly Hills,66.7,13.1
.' Use the Love emote on a Grizzly Squirrel |clicknpc Grizzly Squirrel##31889 |script DoEmote("LOVE")
.' Love a Grizzly Squirrel |achieve 2557/6
step
label "mountain_skunk"
goto 68.6,11.8
.' Use the Love emote on a Mountain Skunk |clicknpc Mountain Skunk##31890 |script DoEmote("LOVE")
.' Love a Mountain Skunk |achieve 2557/9
step
label "travel_howling"
'Skipping next part of guide |next "+travel_tolbarard" |only if step:Find("+fjord_rat"):IsComplete() and step:Find("+fjord_penguin"):IsComplete() and step:Find("+scalawag_frog"):IsComplete() and step:Find("+dev_maggot"):IsComplete() and step:Find("+fjord_turkey"):IsComplete()
'Proceeding next step |next |only if default
step
label "fjord_rat"
goto Howling Fjord 45.0,30.3
.kill Fjord Rat##24174 |achieve 2556/15
step
label "fjord_penguin"
goto 20.8,61.8
.' Use the Love emote on a Fjord Penguin |clicknpc Fjord Penguin##28407 |script DoEmote("LOVE")
.' Love a Fjord Penguin |achieve 2557/3
step
label "scalawag_frog"
goto 35.6,81.8
.' Use the Love emote on a Scalawag Frog |clicknpc Scalawag Frog##26503 |script DoEmote("LOVE")
.' Love a Scalawag Frog |achieve 2557/10
step
goto 56.6,49.2 |n
.' Enter the catacombs |goto 56.6,49.2,0.5 |noway |c
step
label "dev_maggot"
goto 57.1,56.8
.' Follow the path to the bottom of the catacombs
.kill Devouring Maggot##24270 |achieve 2556/6
step
goto 56.6,49.2 |n
.' Follow the path back up
.' Leave the catacombs |goto 56.6,49.2 |noway |c
step
label "fjord_turkey"
goto 66.4,71.1
.' Use the Love emote on a Fjord Turkey |clicknpc Fjord Turkey##24746 |script DoEmote("LOVE")
.' Love a Fjord Turkey |achieve 2557/4
step
label "travel_tolbarard"
'Skipping next part of guide |next "+travel_darnassus" |only if step:Find("+sassy_cat"):IsComplete() and step:Find("+foxkit"):IsComplete()
'Proceeding next step |next |only if default
step
label "sassy_cat"
goto Tol Barad Peninsula,61.2,35.5
.' Use the Love emote on a Sassy Cat |clicknpc Sassy Cat##47682 |script DoEmote("LOVE")
.' Love a Sassy Cat |achieve 5548/10
step
label "foxkit"
goto Tol Barad,44.5,25.8
.' Use the Love emote on a Baradin Fox Kit |clicknpc Baradin Fox Kit##48630 |script DoEmote("LOVE")
.' Love a Baradin Fox Kit |achieve 5548/2
step
label "toad"
goto Darnassus,42.4,46.9
.' Use the Love emote on a Toad |clicknpc Toad##1420 |script DoEmote("LOVE")
.' Love a Toad |achieve 1206/20
step
label "travel_winterspring"
'Skipping next part of guide |next "+travel_mnthyjal" |only if step:Find("+chipmunk"):IsComplete() and step:Find("+crystal_spider"):IsComplete()
'Proceeding next step |next |only if default
step
label "chipmunk"
goto Winterspring,51.5,47.9
.' Use the Love emote on an Alpine Chipmunk |clicknpc Alpine Chipmunk##49779 |script DoEmote("LOVE")
.' Love an Alpine Chipmunk |achieve 5548/1
step
label "crystal_spider"
goto 48.8,54.8
.kill Crystal Spider##32261 |achieve 2556/11
step
label "travel_mnthyjal"
'Skipping next part of guide |next "+travel_ratchet" |only if step:Find("+vole"):IsComplete() and step:Find("+viper"):IsComplete()
'Proceeding next step |next |only if default
step
label "vole"
goto Mount Hyjal 54.5,17.1
.' Use the Love emote on a Grotto Vole |clicknpc Grotto Vole##50419 |script DoEmote("LOVE")
.' Love a Grotto Vole |achieve 5548/3 |tip Inside of the cave.
step
label "viper"
goto 67.8,64.5
.' Use the Love emote on a Rock Viper |clicknpc Rock Viper##50481 |script DoEmote("LOVE")
.' Love a Rock Viper |achieve 5548/8
step
label "travel_ratchet"
'Skipping next part of guide |next "+travel_nbarrens" |only if step:Find("+gazelle"):IsComplete() and step:Find("+small_frog"):IsComplete()
'Proceeding next step |next |only if default
step
label "gazelle"
goto Northern Barrens 51.8,56.4
.' Use the Love emote on a Gazelle |clicknpc Gazelle##4166 |script DoEmote("LOVE")
.' Love a Gazelle |achieve 1206/9
step
label "small_frog"
goto 37.9,46.1
.' Use the Love emote on a Small Frog |clicknpc Small Frog##13321 |script DoEmote("LOVE")
.' Love a Small Frog |achieve 1206/8
step
label "travel_nbarrens"
goto Northern Barrens 66.0,42.1
.' Use the Love emote on a Prairie Dog |clicknpc Prairie Dog##2620 |script DoEmote("LOVE")
.' Love a Prairie Dog |achieve 1206/21
step
label "travel_durotar"
'Skipping next part of guide |next "+travel_dustwallow" |only if step:Find("+moccasin"):IsComplete() and step:Find("+durotar_critters"):IsComplete() and step:Find("+swine"):IsComplete()
'Proceeding next step |next |only if default
step
label "moccasin"
goto Durotar 36.4,40.8
.kill Water Snake##4953 |achieve 2556/2
step
label "durotar_critters"
goto Durotar,45.6,16.0
.' Use the Love emote on a Hare. |clicknpc Hare##5951 |script DoEmote("LOVE")
.' Love a Hare |achieve 1206/10
step
goto 45.6,16.0
.kill Adder##3300 |achieve 2556/12
step
label "swine"
goto 48.5,15.9
.' Use the Love emote on a Swine |clicknpc Swine##10685 |script DoEmote("LOVE")
.' Love a Swine |achieve 1206/19
step
label "travel_dustwallow"
'Skipping next part of guide |next "+travel_tanaris" |only if step:Find("+spider"):IsComplete() and step:Find("+mouse"):IsComplete() and step:Find("+snake"):IsComplete()
'Proceeding next step |next |only if default
step
label "spider"
goto Dustwallow Marsh 35.0,24.0
.kill Spider##14881 |achieve 2556/3
step
label "mouse"
goto 46.2,56.9
.kill Mouse##6271 |achieve 2556/7
step
label "snake"
goto 50.0,57.6
.kill Snake##2914 |achieve 2556/10
step
label "travel_tanaris"
'Skipping next part of guide |next "+travel_uldum" |only if step:Find("+rattlesnake"):IsComplete()
'Proceeding next step |next |only if default
step
label "rattlesnake"
goto Tanaris,46.9,26.9
.' Use the Love emote on a Rattlesnake |clicknpc Rattlesnake##48686 |script DoEmote("LOVE")
.' Love a Rattlesnake |achieve 5548/7
step
label "travel_uldum"
'Skipping next part of guide |next "+check" |only if step:Find("+mac_frog"):IsComplete() and step:Find("+oasis_moth"):IsComplete()
'Proceeding next step |next |only if default
step
label "mac_frog"
goto Uldum,56.6,35.1
.' Use the Love emote on a Mac Frog |clicknpc Mac Frog##50491 |script DoEmote("LOVE")
.' Love a Mac Frog |achieve 5548/5
step
label "oasis_moth"
goto 55.0,36.1
.' Use the Love emote on an Oasis Moth |clicknpc Oasis Moth##50496 |script DoEmote("LOVE")
.' Love an Oasis Moth |achieve 5548/6
step
label "check"
'Congratulations!  You've earned:
.' To All The Squirrels I've Loved Before Achievement
.' To All The Squirrels Who Shared My Life Achievement
.' To All the Squirrels Who Cared for Me Achievement
.' Pest Control Achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Friend or Fowl? Achievement",[[
description Slay 15 turkeys in 3 minutes.
author support@zygorguides.com
condition end achieved(1254)
step
goto Howling Fjord 66.3,71.1
.from Fjord Turkey##24746+ |tip Kill them as fast as you can, then hurry to kill another one each time.
.' Slay 15 Turkeys in 3 Minutes |achieve 1254
step
'Congratulations!  You've earned the Friend or Fowl? Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Going Down? Achievement",[[
description Fall 65 yards without dying.
author support@zygorguides.com
condition end achieved(964)
step
'For this achievement you must fall 65 yards without dying. You can do this in several different ways, depending on yoiur class, but we listed the easiest way regardless of level and class.
|confirm
step
goto Shattrath City 63.8,41.6
.' Ride up to the Elevator to the Terrace of Light. Jump off either the right or the left side of the Terrace to the flat ground. MAKE SURE TO JUMP.
.' Earn the Going Down? Achievement |achieve 964
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Well Read Achievements",[[
description Read books.
author support@zygorguides.com
condition end achieved(1244)
step
goto Stormwind City,60.4,75.3
.talk 6740
.home Trade District
step
goto Scholomance/2 56.1,41.2
.' Click on The Invasion of Draenor |tip It looks like a red book on the small ledge at the end of this room.
.' Read The Invasion of Draenor |achieve 1244/28
step
goto The Cape of Stranglethorn,41.0,74.4
.' Click on Sunwell - The Fall of Quel'Thalas |tip It looks like a green book sitting on a small wooden table inside the inn.
.' Read Sunwell - The Fall of Quel'Thalas |achieve 1244/20
step
goto 42.2,73.6
.' Go upstairs through the building to the north
.' Click on The Sentinels and the Long Vigil |tip It looks like a brown book sitting on a small wooden table next to a bed upstairs in this building.
.' Read The Sentinels and the Long Vigil |achieve 1244/35
step
goto The Cape of Stranglethorn,42.1,73.8
.' Click the books on the bookshelf.
.' Read Empires' Fall |achieve 1244/8
.' Read Wrath of Soulflayer |achieve 1244/42
.' Read The Twin Empires |achieve 1244/37
step
goto 41.9,73.5
.' Click The Scourge of Lordaeron
.' Read The Scourge of Lordaeron |achieve 1244/34
step
goto Duskwood 74,45 |tip The book is upstairs.
.' Click on Kil'Jaeden and the Shadow Pact |tip It looks like a black book on this small table.
.' Read Kil'Jaeden and the Shadow Pact |achieve 1244/13
step
goto Duskwood 73.7,45.1 |tip The book is upstairs in the tavern.
.' Click on The Founding of Quel'Thalas |tip It looks like a red book in the Viewing Room next to Gunder Thornbush.
.' Read The Founding of Quel'Thalas |achieve 1244/26
step
goto Elwynn Forest 84,69 |tip Located upstars on the table at the center of the room.
.' Click on Lethargy of the Orcs |tip It looks like a reddish book sitting on a chair at the bottom of this tower.
.' Read Lethargy of the Orcs |achieve 1244/14
step
goto 64,69
.' Click on Rise of the Blood Elves |tip It looks like a red book on the corner of this table.
.' Read Rise of the Blood Elves |achieve 1244/17
step
goto Loch Modan,37.2,46.9
.' Click on The Last Guardian |tip It looks like a green book on the corner of the table.
.' Read The Last Guardian |achieve 1244/30
.' You can also find it in Loch Modan at 37.2,47.0 |goto Loch Modan,37.2,47.0 |n |tip Click to set waypoint.
step
goto Stormwind City,84.7,26.0
.' Click on The Kaldorei and the Well of Eternity |tip It looks like a brown book on the Pillar ledge next to the doorway.
.' Read The Kaldorei and the Well of Eternity |achieve 1244/29
step
goto Stormwind City,85.1,26.3
.' Click on Aftermath of the Second War |tip It looks like a blue book at the edge of this table.
.' Read Aftermath of the Second War |achieve 1244/2
.' Click on The Guardians of Tirisfal |tip It looks like a black book at the edge of this table.
.' Read The Guardians of Tirisfal |achieve 1244/27
.' Click on The Alliance of Lordaeron |tip It looks like a blue book at the edge of this table.
.' Read The Alliance of Lordaeron |achieve 1244/21
step
goto Stormwind City,86.1,25.6
.' Click on The New Horde |tip It looks like a green book on the edge of this pillar.
.' Read The New Horde |achieve 1244/32
step
goto Stormwind City,85.8,23.6
.' Click on Aegwynn and the Dragon Hunt |tip It looks like a brownish red book on the edge of this pillar.
.' Read Aegwynn and the Dragon Hunt |achieve 1244/1
step
goto Stormwind City,85.3,23.4
.' Click on The World Tree and the Emerald Dream |tip It looks like a green book at the edge of this table.
.' Read The World Tree and the Emerald Dream |achieve 1244/39
.' Click on The War of the Ancients |tip It looks like a green book at the edge of this table.
.' Read The War of the Ancients |achieve 1244/38
step
goto Stormwind City,84.6,24.5
.' Click Beyond the Dark Portal |tip It's a green book on a chair.
.' Read Beyond the Dark Portal |achieve 1244/5
step
goto Stormwind City,86.7,35.9
.' Click on War of the Spider |tip It looks like a blue book on the edge of this large table.
.' Read War of the Spider |achieve 1244/40
step
goto Stormwind City,87.1,36.0
.' Click on The Dark Portal and the Fall of Stormwind |tip It looks like a blue book on the corner of this large table.
.' Read The Dark Portal and the Fall of Stormwind |achieve 1244/25
step
goto 51,73
.' Click on Archimonde's Return and the Flight to Kalimdor |tip It looks like a brown book laying on the ground.
.' Read Archimonde's Return and the Flight to Kalimdor |achieve 1244/4
step
goto 51,74
.' Click on Mount Hyjal and Illidan's Gift |tip It looks like a green book sitting on the corner of a wooden table inside this building.
.' Read Mount Hyjal and Illidan's Gift |achieve 1244/15
step
goto Ironforge 74.9,9.1
.' Click on Ironforge - the Awakening of the Dwarves |tip It looks like a blue book on this small table.
.' Read Ironforge - the Awakening of the Dwarves |achieve 1244/11
.' Click on War of the Three Hammers |tip It looks like a brown book on this small table.
.' Read War of the Three Hammers |achieve 1244/41
step
goto Ironforge 77.0,9.2
.' Click on Arathor and the Troll Wars |tip It looks like a green book at the edge of this table.
.' Read Arathor and the Troll Wars |achieve 1244/3
step
goto Ironforge,76.9,12.5
.' Click on The Alliance of Lordaeron |tip It looks like a blue book at the edge of this table.
.' Read The Alliance of Lordaeron |achieve 1244/21
.' Click on Civil War in the Plaguelands |tip It looks like a green book at the edge of this table.
.' Read Civil War in the Plaguelands |achieve 1244/7
.' Click on Rise of the Horde |tip It looks like a brown book at the edge of this table.
.' Read Rise of the Horde |achieve 1244/18
step
goto Ironforge,77.1,13.7
.' Click on The Old Gods and the Ordering of Azeroth |tip It looks like a blue book at the edge of this table.
.' Read The Old Gods and the Ordering of Azeroth |achieve 1244/33
.' Click on Charge of the Dragonflights |tip It looks like a brown book at the edge of this table.
.' Read Charge of the Dragonflights |achieve 1244/6
.' Click on The Battle of Grim Batol |tip It looks like a brown book at the edge of this table.
.' Read The Battle of Grim Batol |achieve 1244/22
step
goto Stratholme/1 30.1,41.3
.' Click on The Seven Kingdoms |tip It looks like a brown book on the edge of the middle table here.
.' Read The Seven Kingdoms |achieve 1244/36
step
goto Stratholme/1 25.8,71.6
.' Click on Icecrown and the Frozen Throne |tip It looks like a blue book on the corner of this small table.
.' Read Icecrown and the Frozen Throne |achieve 1244/10
step
goto Stratholme/1 25.1,70.3
.' Click on Kel'Thuzad and the Forming of the Scourge |tip It looks like a black book on the edge of this small table.
.' Read Kel'Thuzad and the Forming of the Scourge |achieve 1244/12
.' Click on The Birth of the Lich King |tip It looks like a black book on the corner of this table.
.' Read The Birth of the Lich King |achieve 1244/24
.' Click on The Lich King Triumphant |tip It looks like a brown book on the corner of this table.
.' Read The Lich King Triumphant |achieve 1244/31
step
goto Darnassus,61.9,74.6
.' Click on The Betrayer Ascendant |tip It looks like a gray book on top of a dresser.
.' Read The Betrayer Ascendant |achieve 1244/23
step
goto 39,39
.' Click on Exile of the High Elves |tip It looks like a blue book on the ledge to the right of this room.
.' Read Exile of the High Elves |achieve 1244/9
step
goto Northern Barrens,67.0,75.0
.' Click on Sargeras and the Betrayal |tip It looks like a black book on a square table.
.' Read Sargeras and the Betrayal |achieve 1244/19
step
goto Tanaris 50.97,30.29
.' Click on Old Hatreds - The Colonization of Kalimdor
.' Read Old Hatreds - The Colonization of Kalimdor |achieve 1244/16
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Higher Learning",[[
description Read the volumes of "The Schools of Arcane Magic" found in Dalaran.
condition end achieved(1956)
step
'Warning: These books have respawn timers of about 3-4 hours (it seems to be random between those times), so this achievement may take you a while to get. |tip The book you want won't always be there.  Fake trash books spawn to make the achievement even harder to get, but keep at it.  Make sure you click the fake trash books anyway, so the real books have a chance to spawn.
.' This is an achievement that you may want to dedicate a lot of time to, if you want it. |tip You'll have a much greater chance of earning the achievement if you camp each book until you have them all, rather than constantly running through the path in this guide.
.' Good luck!
|confirm
step
label "RestartHigherLearning"
goto Dalaran,64.4,52.4
.' Click The Schools of Arcane Magic - Illusion |tip It looks like a brown book laying on a wooden crate.
.' Read The Schools of Arcane Magic - Illusion |achieve 1956/6
.' Click here if this book isn't available |confirm
step
goto 56.6,45.6
.' Click The Schools of Arcane Magic - Introduction |tip It looks like a blue book laying on ground next to a bookshelf inside this building.
.' Read The Schools of Arcane Magic - Introduction |achieve 1956/1
.' Click here if this book isn't available |confirm
step
goto 52.3,54.8
.' Click The Schools of Arcane Magic - Abjuration |tip It looks like a brown book laying on ground next to a small table inside this building.
.' Read The Schools of Arcane Magic - Abjuration |achieve 1956/2
.' Click here if this book isn't available |confirm
step
goto 43.6,46.7
.' Click The Schools of Arcane Magic - Enchantment |tip It looks like a blue book laying on a small wooden crate on the balcony upstairs in this building.
.' Read The Schools of Arcane Magic - Enchantment |achieve 1956/5
.' Click here if this book isn't available |confirm
step
goto 46.8,40.0
.' Click The Schools of Arcane Magic - Transmutation |tip It looks like a grayand green striped book laying on a bookshelf downstairs in this building.  It will be the only book on the bookshelf.
.' Read The Schools of Arcane Magic - Transmutation |achieve 1956/8
.' Click here if this book isn't available |confirm
step
goto 46.8,39.1
.' Click The Schools of Arcane Magic - Necromancy |tip It looks like a blue book laying on a bookshelf upstairs in this building.  It will be the only book on the bookshelf.
.' Read The Schools of Arcane Magic - Necromancy |achieve 1956/7
.' Click here if this book isn't available |confirm
step
goto 30.8,46.0
.' Click The Schools of Arcane Magic - Conjuration |tip It looks like a blue book laying on the left on the bottom shelf of a bookshelf in this building.
.' Read The Schools of Arcane Magic - Conjuration |achieve 1956/3
.' Click here if this book isn't available |confirm
step
goto 26.5,52.1
.' Click The Schools of Arcane Magic - Divination |tip It looks like a blue book laying on the floor next to 2 bookshelves upstairs inside this building.
.' Read The Schools of Arcane Magic - Divination |achieve 1956/4
.' Click here if this book isn't available |confirm |next "RestartHigherLearning"
step
'Congratulations!  You've earned the Higher Learning Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\It's Happy Hour Somewhere",[[
description Drink 25 different types of beverages.
condition end achieved(1833)
step
goto Stormwind City,60.4,75.3
.talk 6740
.buy 1 Refreshing Spring Water##159
.buy 1 Ice Cold Milk##1179
.buy 1 Melon Juice##1205
.buy 1 Sweet Nectar##1708
.buy 1 Moonberry Juice##1645
.buy 1 Morning Glory Dew##8766
.buy 1 Filtered Draenic Water##28399
.buy 1 Fresh Water##58274
.buy 1 Pugnent Seal Whey##33444
.buy 1 Honeymint Tea##33445
.buy 1 Sparkling Oasis Water##58256
.buy 1 Highland Spring Water##58257
step
'Drink the Refreshing Spring Water |use Refreshing Spring Water##159
'Drink the Ice Cold Milk |use Ice Cold Milk##1179
'Drink the Melon Juice |use Melon Juice##1205
'Drink the Sweet Nectar |use Sweet Nectar##1708
'Drink the Moonberry Juice |use Moonberry Juice##1645
'Drink the Morning Glory Dew |use Morning Glory Dew##8766
'Drink the Filtered Draenic Water |use Filtered Draenic Water##28399
'Drink the Pugnent Seal Whey |use Pugnent Seal Whey##33444
'Drink the Fresh Water |use Fresh Water##58274
'Drink the Honeymint Tea |use Honeymint Tea##33445
'Drink the Sparkling Oasis Water |use Sparkling Oasis Water##58256
'Drink the Highland Spring Water |use Highland Spring Water##58257
|confirm
step
goto Thousand Needles 76.5,74.8
.talk 40832
.buy 1 Bottle of Pinot Noir##2723
.buy 1 Glass of Eversong Wine##44570
.buy 1 Honey Mead##40035
.buy 1 Flask of Port##2593
.buy 1 Bottle of Silvermoon Port##44571
.buy 1 Skin of Dwarven Stout##2596
.buy 1 Flask of Bitter Cactus Cider##44575
.buy 1 Snowplum Brandy##40036
.buy 1 Flagon of Mead##2594
.buy 1 Cup of Frog Venom Brew##44573
.buy 1 Caraway Burnwine##40042
.buy 1 Jug of Bourbon##2595
.buy 1 Skin of Mulgore Firewater##44574
step
'Drink the Bottle of Pinot Noir |use Bottle of Pinot Noir##2723
'Drink the Glass of Eversong Wine |use Glass of Eversong Wine##44570
'Drink the Honey Mead |use Honey Mead##40035
'Drink the Flask of Port |use Flask of Port##2593
'Drink the Bottle of Silvermooon Port |use Bottle of Silvermoon Port##44571
'Drink the Skin of Dwarven Stout |use Skin of Dwarven Stout##2596
'Drink the Flask of Bitter Cactus |use Flask of Bitter Cactus Cider##44575
'Drink the Snowplum Brandy |use Snowplum Brandy##40036
'Drink the Flagon of Mead |use Flagon of Mead##2594
'Drink the Cup of Frog Venom Brew |use Cup of Frog Venom Brew##44573
'Drink the Caraway Burnwine |use Caraway Burnwine##40042
'Drink the Jug of Bourbon |use Jug of Bourbon##2595
'Drink the Skin of Mulgore Firewater |use Skin of Mulgore Firewater##44574
.' Earn the It's Happy Hour Somewhere achievement! |achieve 1833
step
'Congratulations!  You've earned the It's Happy Hour Somewhere achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Drown Your Sorrows",[[
description Drink Cataclysm beverages.
condition end achieved(5754)
step
goto Stormwind City,61.0,70.7
.talk 8719
.buy 1 Cocoa Beans##62786 |only if skill("Cooking")<525
.buy 1 Darkbrew Lager##62790 |n
.' Click the Darkbrew Lager |use Darkbrew Lager##62790
.' Drink the Darkbrew Lager |achieve 5754/1
step
#include "innkeeper_stormwind"
.buy 3 Refreshing Spring Water##159
.buy 1 Fresh Water##58274
.buy 1 Sparkling Oasis Water##58256
.buy 1 Highland Spring Water##58257
step
'Click the Fresh Water |use Fresh Water##58274
.' Drink the Fresh Water |achieve 5754/2
.' Click the Sparkling Oasis Water |use Sparkling Oasis Water##58256
.' Drink the Sparkling Oasis Water |achieve 5754/9
.' Click the Highland Spring Water |use Highland Spring Water##58257
.' Drink the Highland Spring Water |achieve 5754/6
step
goto Stormwind City,60.4,75.3
.talk 6740
.home Stormwind City
step
goto Shimmering Expanse,49.1,42.0
.talk 39878
.buy 1 Greasy Whale Milk##59029 |n
.' Click the Greasy Whale Milk |use Greasy Whale Milk##59029
.' Drink the Greasy Whale Milk |achieve 5754/4
step
goto Mount Hyjal,89.4,57.8
.talk 43563
.buy 1 Fungus Squeezings##59230
.buy 1 Murky Water##59229
|next "continue"
'If you have finished the questline and cannot purchase these, click here. |confirm |next "twimurk"
step
label "twimurk"
goto Twilight Highlands 50.6,58.4
.talk 57262
.buy 1 Fungus Squeezings##59230
.buy 1 Murky Water##59229
step
label "continue"
'Click the Fungus Squeezings |use Fungus Squeezings##59230
.' Drink the Fungus Squeezings |achieve 5754/3
.' Click the Murky Water |use Murky Water##59229
.' Drink the Murky Water |achieve 5754/7
step
goto Twilight Highlands,79.4,78.5
.talk 49688
.buy 1 Tropical Sunfruit##58278
step
goto Stormwind City,60.4,75.3
.talk 6740
.buy 1 Highland Pomegranate##58265
next "CookYourself" |only if skill("Cooking")==525
step
label CookYourself
'Use the Stormwind Cooking Dailies guide to:
.earn 12 Chef's Award##402
.' Click this line if you would rather not spend the time earning these Chef's Awards |confirm |next "RatherNotCook"
only if skill("Cooking")==525
step
goto Orgrimmar,56.8,62.3
.talk 49737
.buy 1 Recipe: Starfire Espresso##65414
.buy 1 Recipe: Highland Spirits##65415
.buy 1 Recipe: South Island Iced Tea##65433
only if skill("Cooking")==525
step
'Click the Recipe: Starfire Espresso |use Recipe: Starfire Espresso##65414
.learn Starfire Espresso##88045
.' Click the Recipe: Highland Spirits |use Recipe: Highland Spirits##65415
.learn Highland Spirits##88022
.' Click Recipe: South Island Iced Tea |use Recipe: South Island Iced Tea##65433
.learn South Island Iced Tea##88044
only if skill("Cooking")==525
step
goto Orgrimmar,56.8,62.3
.talk 49737
.buy 1 Imported Supplies##68689 |n
.' Click the Imported Supplies |use Imported Supplies##68689
.collect 1 Cocoa Beans##62786
only if skill("Cooking")==525
step
'Create a basic campfire |cast Basic Campfire##818
.create 1 Starfire Espresso##88045 |n
.collect 1 Starfire Espresso##62675
only if skill("Cooking")==525
step
'Create a basic campfire |cast Basic Campfire##818
.create 1 Highland Spirits##88022 |n
.collect 1 Highland Spirits##62674
only if skill("Cooking")==525
step
'Create a basic campfire |cast Basic Campfire##818
.create 1 South Island Iced Tea##88044 |n
.collect 1 South Island Iced Tea##62672
only if skill("Cooking")==525
next "ReadytoDrink" |only if skill("Cooking")==525
step
label RatherNotCook
'Find a level 525 Cook to make your drinks |tip Ask in Trade chat in a major city, you should find someone to help you pretty quickly.
.collect 1 Starfire Espresso##62675
.collect 1 Highland Spirits##62674
.collect 1 South Island Iced Tea##62672
step
label ReadytoDrink
'Click the Starfire Espresso |use Starfire Espresso##62675
.' Drink the Starfire Espresso |achieve 5754/10
.' Click the Highland Spirits |use Highland Spirits##62674
.' Drink the Highland Spirits |achieve 5754/5
.' Click the South Island Iced Tea |use South Island Iced Tea##62672
.' Drink the South Island Iced Tea |achieve 5754/8
.' Earn the Drown Your Sorrows achievement! |achieve 5754
step
'Congratulations!  You've earned the Drown Your Sorrows Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Tastes Like Chicken",[[
description Sample 50 different kinds of Azeroth's delectable dishes.
condition end achieved(1832)
step
goto Ironforge,18.6,51.6
.talk 5111
.buy 1 Tough Jerky##117 |future achieve 1832/1
.buy 1 Haunch of Meat##2287
.buy 1 Mutton Chop##3770
.buy 1 Wild Hog Shank##3771
.buy 1 Cured Ham Steak##4599
.buy 1 Roasted Quail##8952
.buy 1 Smoked Talbuk Venison##27854
.buy 1 Salted Venison##33454
.buy 1 Mead Basted Caribou##35953
.buy 1 Roasted Beef##58268
.buy 1 Massive Turkey Leg##58269
step
goto 27.8,72.2
.talk 5109
.buy 1 Tough Hunk of Bread##4540
.buy 1 Freshly Baked Bread##4541
.buy 1 Moist Cornbread##4542
.buy 1 Mulgore Spice Bread##4544
.buy 1 Soft Banana Bread##4601
.buy 1 Homemade Cherry Pie##8950
.buy 1 Mag'har Grainbread##27855
.buy 1 Crusty Flatbread##33449
.buy 1 Sweet Potato Bread##35950
.buy 1 Pine Nut Bread##58260
.buy 1 Buttery Wheat Roll##58261
step
'Eat the Tough Jerky |use Tough Jerky##117
'Eat the Tough Hunk of Bread |use Tough Hunk of Bread##4540
'Eat the Haunch of Meat |use Haunch of Meat##2287
'Eat the Freshly Baked Bread |use Freshly Baked Bread##4541
'Eat the Mutton Chop |use Mutton Chop##3770
'Eat the Moist Cornbread |use Moist Cornbread##4542
'Eat the Wild Hog Shank |use Wild Hog Shank##3771
'Eat the Mulgore Spice Bread |use Mulgore Spice Bread##4544
'Eat the Cured Ham Steak |use Cured Ham Steak##4599
'Eat the Soft Banana Bread |use Soft Banana Bread##4601
|confirm
step
'Eat the Roasted Quail |use Roasted Quail##8952
'Eat the Homemade Cherry Pie |use Homemade Cherry Pie##8950
'Eat the Smoked Talbuk Venison |use Smoked Talbuk Venison##27854
'Eat the Mag'har Grainbread |use Mag'har Grainbread##27855
'Eat the Salted Venison |use Salted Venison##33454
'Eat the Crusty Flatbread |use Crusty Flatbread##33449
'Eat the Mead Basted Cariboy |use Mead Basted Caribou##35953
'Eat the Sweet Potato Bread |use Sweet Potato Bread##35950
'Eat the Roasted Beef |use Roasted Beef##58268
'Eat the Pine Nut Bread |use Pine Nut Bread##58260
'Eat the Massive Turkey |use Massive Turkey Leg##58269
'Eat the Buttery Wheat Roll |use Buttery Wheat Roll##58261
|confirm
step
goto Stormwind City 64.9,32.0
.talk 44235
.buy 1 Forest Mushroom Cap##4604
.buy 1 Red-Speckeled Mushroom##4605
.buy 1 Spongy Morel##4606
.buy 1 Delicious Cave Mold##4607
.buy 1 Raw Black Truffle##4608
.buy 1 Dried King Bolete##8948
|confirm
step
'Eat the Forest Mushroom |use Forest Mushroom Cap##4604
'Eat the Red-Speckeled Mushroom |use Red-Speckeled Mushroom##4605
'Eat the Spongy Morel |use Spongy Morel##4606
'Eat the Delicious Cave Mold |use Delicious Cave Mold##4607
'Eat the Raw Black Truffle |use Raw Black Truffle##4608
'Eat the Dried King Bolete |use Dried King Bolete##8948
step
goto Darnassus 48.8,61.3
.talk 4221
.buy 1 Slitherskin Mackerel##787
.buy 1 Longjaw Mud Snapper##4592
.buy 1 Bristle Whisker Catfish##4593
.buy 1 Rockscale Cod##4594
.buy 1 Striped Yellowtail##21552
.buy 1 Spinefin Halibut##8957
.buy 1 Sunspring Carp##27858
.buy 1 Fillet of Icefin##33451
.buy 1 Poached Emperor Salmon##35951
.buy 1 Sliced Raw Billfish##58262
.buy 1 Grilled Shark##58263
step
goto 62.5,32.8
.talk 6735
.buy 1 Shiny Red Apple##4536
.buy 1 Tel'Abim Banana##4537
.buy 1 Snapvine Watermelon##4538
.buy 1 Goldenbark Apple##4539
.buy 1 Moon Harvest Pumpkin##4602
.buy 1 Deep Fried Plantains##8953
.buy 1 Skethyl Berries##27856
.buy 1 Tundra Berries##35949
.buy 1 Savory Snowplum##35948
.buy 1 Sour Green Apple##58264
.buy 1 Highland Pomegranate##58265
step
'Eat the Slitherskin Mackerel |use Slitherskin Mackerel##787
'Eat the Shiny Red Apple |use Shiny Red Apple##4536
'Eat the Longjaw Mud Snapper |use Longjaw Mud Snapper##4592
'Eat the Tel'Abim Banana |use Tel'Abim Banana##4537
'Eat the Bristle Whisker Catfish |use Bristle Whisker Catfish##4593
'Eat the Snapvine Watermelon |use Snapvine Watermelon##4538
'Eat the Rockscale Cod |use Rockscale Cod##4594
'Eat the Goldenbark Apple |use Goldenbark Apple##4539
'Eat the Striped Yellowtail |use Striped Yellowtail##21552
'Eat the Moon Harvest Pumpkin |use Moon Harvest Pumpkin##4602
|confirm
step
'Eat the Spinefin Hailibut |use Spinefin Halibut##8957
'Eat the Deep Fried Plantains |use Deep Fried Plantains##8953
'Eat the Sunspring Carp |use Sunspring Carp##27858
'Eat the Skethyl Berries |use Skethyl Berries##27856
'Eat the Fillet of Icefin |use Fillet of Icefin##33451
'Eat the Tundra Berries |use Tundra Berries##35949
'Eat the Poached Emperor |use Poached Emperor Salmon##35951
'Eat the Savory Snowplum |use Savory Snowplum##35948
'Eat the Sliced Raw Billfish |use Sliced Raw Billfish##58262
'Eat the Sour Green Apple |use Sour Green Apple##58264
'Eat the Grilled Shark |use Grilled Shark##58263
'Eat the Highland Pomegranate |use Highland Pomegranate##58265
.' Earn the Tastes Like Chicken achievement! |achieve 1832
step
'Congratulations!  You've earned the Tastes Like Chicken Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Cataclysmically Delicious",[[
description Sample Cataclysm delicacies.
condition end achieved(5753)
step
'This guide can be completed with the Cataclysmic Gourmet achievement
|confirm |next Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\The Cataclysmic Gourmet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\You'll Feel Right as Rain",[[
description Feel 1000% better by eating Chocolate Cookies.
condition end achieved(5779)
step
goto Stormwind City,61.0,70.7
.talk 8719
.buy 91 Chocolate Cookie##62680 |n
.' Eat 91 Chocolate Cookies in a row to feel 1000% better |use Chocolate Cookie##62680
.' Earn the You'll Feel Right as Rain achievement! |achieve 5779 |next "RightasRainEnd"
.' Or...
.' Click this line to create the Chocolate Cookies yourself |tip There may not be any to buy on the Auction House, but you need at least 505 Cooking skill to be able to create them. |confirm
step
'Use the Orgrimmar Cooking Dailies guide to:
.earn 3 Chef's Award##402 |tip You will need more than 3, but the number is random.  Try to get around 10, just to be safe.
step
goto Stormwind City,50.4,71.8
.talk 49701
.buy Recipe: Chocolate Cookie##65431 |n
.' Click the Recipe: Chocolate Cookie |use Recipe: Chocolate Cookie##65431
.learn Chocolate Cookie##88013
step
goto Stormwind City,50.4,71.8
.talk 49701
.buy 1 Imported Supplies##68689 |n |tip Use the Orgrimmar Cooking Dailies to earn Chef Awards to buy these.
.' Click the Imported Supplies |use Imported Supplies##68689
.collect 91 Cocoa Beans##62786
step
goto 77.6,53.1
.talk 5483
.buy 91 Simple Flour##30817
step
.' Stand next to the fireplace.
.create 91 Chocolate Cookie##88013,Cooking,91 total |n
.collect 91 Chocolate Cookie##62680
step
'Eat 91 Chocolate Cookies in a row to feel 1000% better |use Chocolate Cookie##62680
.' Earn the You'll Feel Right as Rain achievement! |achieve 5779
step
label "RightasRainEnd"
'Congratulations!  You've earned the You'll Feel Right as Rain achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Armored Brown Bear",[[
description Obtain an Armored Brown Bear from Mei Francis in Dalaran.
condition end achieved(2076)
startlevel 70
step
'You will need 750 gold to complete this achievement
|confirm
step
goto Dalaran,58.1,42.1
.talk 32216
.buy Reins of the Armored Brown Bear##44226 |n
.' Click the Reins of the Armored Brown Bear |use Reins of the Armored Brown Bear##44226
.' Earn the Armored Brown Bear achievement! |achieve 2076
step
'Congratulations!  You've earned the Armored Brown Bear achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Wooly Mammoth",[[
description Obtain a Wooly Mammoth from Mei Francis in Dalaran.
condition end achieved(2077)
startlevel 80
step
'You will need 2,175 Justice Points to complete this achievement |tip You earn Justice Points for completing your first random normal dungeon each day.
.earn 2175 Justice Point##395
step
goto Dalaran,58.1,42.1
.talk 32216
.buy Reins of the Wooly Mammoth##44231 |n
.' Click the Reins of the Wooly Mammoth |use Reins of the Wooly Mammoth##44231
.' Earn the Wooly Mammoth achievement! |achieve 2077
step
'Congratulations!  You've earned the Wooly Mammoth achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Traveler's Tundra Mammoth",[[
description Obtain a Traveler's Tundra Mammoth from Mei Francis in Dalaran.
condition end achieved(2078)
step
'You will need 20,000 gold to complete this achievement
.' You can acquire gold through raids, dungeons, quests, or just by farming high level mobs.
|confirm
step
goto Dalaran,58.1,42.1
.talk 32216
.buy Reins of the Traveler's Tundra Mammoth##44234 |n
.' Click the Reins of the Traveler's Tundra Mammoth |use Reins of the Traveler's Tundra Mammoth##44234
.' Earn the Traveler's Tundra Mammoth achievement! |achieve 2078
step
'Congratulations!  You've earned the Traveler's Tundra Mammoth achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Ring of the Kirin Tor",[[
description Purchase a Signet of the Kirin Tor, Band of the Kirin Tor, Loop of the Kirin Tor, or Ring of the Kirin Tor in Dalaran.
condition end achieved(2084)
step
'You will need 8,500 gold to complete this achievement
.' You can acquire gold through raids, dungeons, quests, or just by farming high level mobs.
|confirm
step
goto Dalaran,40.4,33.8
.talk 32172
..' Buy any of these 4 rings, whichever you prefer
.buy Band of the Kirin Tor##40586 |n
.buy Loop of the Kirin Tor##44934 |n
.buy Ring of the Kirin Tor##44935 |n
.buy Signet of the Kirin Tor##40585 |n
.' Earn the Ring of the Kirin Tor achievement! |achieve 2084
step
'Congratulations!  You've earned the Ring of the Kirin Tor achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\One Hump or Two?",[[
description Obtain a camel mount in Uldum (with just one hump).
condition end achieved(4888)
step
'You will need 100 gold to complete this achievement
.' You also need to be Exalted with the Ramkahen faction |tip Use the Ramkahen Reputation guide in the Cataclysm Dailies guide to become Exhalted with the Ramkahen faction.
|confirm
step
goto Uldum,54.0,33.3
.talk 48617
..' Buy either of these 2 camel mounts
.buy Reins of the Brown Riding Camel##63044 |n
.buy Reins of the Tan Riding Camel##63045 |n
.' Click the Reins of the Brown Riding Camel |use Reins of the Brown Riding Camel##63044
.' Click the Reins of the Tan Riding Camel |use Reins of the Tan Riding Camel##63045
.' Earn the One Hump or Two? achievement! |achieve 4888
step
'Congratulations!  You've earned the One Hump or Two? achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Vial of the Sands",[[
description Learn how to transform into a dragon and carry an ally.
condition end achieved(5749)
step
'You will need at least 29,000 gold to complete this achievement
.' You can acquire gold through raids, dungeons, quests, or just by farming high level mobs.
|confirm
next "AlchemistVialoftheSandsLearn" |only if skill("Alchemy")>=525
next "AHVialoftheSands" |only if skill("Alchemy")<525
step
label AlchemistVialoftheSandsLearn
'Since you're an Alchemist you can make this item yourself:
.' Make sure your Archaeology is at least level 450 |only if skill("Archaeology")<450
.' Use your Archaeology skill on the Kalimdor continent at Tol'vir digsites
.collect Canopic Jar##64657 |n
.' Click the Canopic Jars |use Canopic Jar##64657
.collect 1 Recipe: Vial of the Sands##67538
.' Click this line if you don't want to create the Vial of the Sands yourself |confirm |next "AHVialoftheSands"
only if skill("Alchemy")>=25
step
'Use your Recipe: Vial of the Sands |use Recipe: Vial of the Sands##67538
.learn Vial of the Sands##93328
next "FarmVialoftheSands" |only if skill("Alchemy")>=525
only if skill("Alchemy")>=525
step
label AHVialoftheSands
goto Stormwind City,60.9,71.0
.talk 8670
.buy Vial of the Sands##65891 |n
.' Use the Vial of the Sands |use Vial of the Sands##65891
.' Earn the Vial of the Sands achievement |achieve 5749 |next "VialoftheSandsEarned"
.' Click this line if this isn't on the Auction House or you don't have enough gold to buy it |confirm |next "FarmVialoftheSands"
step
label FarmVialoftheSands
goto Stormwind City,60.9,71.0
.talk 8670
.buy 12 Truegold##58480
.buy 8 Flask of the Winds##58087
.buy 8 Flask of Titanic Strength##58088
.buy 8 Deepstone Oil##56850
.' If you don't have enough gold or these items are not on the Auction House you will have to farm for these items.
step
goto Uldum,26.6,7.2
.talk 49406
.buy 8 Sands of Time##65893
.buy 1 Pyrium-Laced Crystalline Vial##65892
step
goto Stormwind City 60.9,71.0
.create Vial of the Sands##93328,Alchemy,1 total |n |only if skill("Alchemy")>=525
'Find an Alchemist to make your Vial of the Sands |tip Ask in Trade chat in a major city, you should find someone to help you pretty quickly. |only if default
.collect 1 Vial of the Sands##65891 |n
.' Use the Vial of the Sands |use Vial of the Sands##65891
.' Earn the Vial of the Sands achievement! |achieve 5749
step
label VialoftheSandsEarned
'Congratulations!  You've earned the Vial of the Sands achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\From Hell's Heart I Stab At Thee",[[
description This will guide you to the area to fight the Whale Shark.
condition end achieved(4975)
step
goto Shimmering Expanse 70.6,55.0
.' The _Whale Shark_ swims in a circle around Nespirah. Some searching may be required.
.' When fighting the whale shark, it is important to know that you cannot use melee attacks, as he will kill you rather quickly. The best strategy is to use ranged attacks to kite him around and just slowly drain his health to 0.
.from Whale Shark##40728 |achieve 4975
step
'Congratulations!  You've earned the From Hell's Heart I Stab At Thee achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Stood in the Fire",[[
description Get killed by Deathwing.
condition end achieved(5518)
step
'This achievement requires you to get to the end of the _Dragon Soul_ raid, and fight the final stage of Deathwing.
'During the fight, _Deathwing_ will cast _Cataclysm_. Do not hit him and let the entire raid wipe in the fire.
.' Get the _Stood in the Fire_ achievement. |achieve 5518
step
'Congratulations!  You've earned the Stood in the Fire achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Bloody Rare",[[
description Kill all of the Rare enemies in Outlands
achieveid 1311
condition end achieved(1312)
step
goto Hellfire Peninsula 69.0,71.4
.from Mekthorg the Wild##18677
.' If Mekthorg the Wild is not here, you may be able to find him in the following locations:
.' [41.6,71.6]
.' [47.2,58.4]
.' [52.0,51.2]
.' [46.6,43.0]
|achieve 1312/14
step
goto 57.2,71.8
.from Fulgorge##18678
.' If Fulgorge is not here, you may be able to find him in the following locations:
.' [42.8,71.8]
.' [43.6,50.6]
.' [30.8,63.0]
.' [27.6,42.6]
|achieve 1312/9
step
goto 41.0,32.8
.from Vorakem Doomspeaker##18679
.' If Vorakem Doomspeaker is not here, you may be able to find him in the following locations:
.' [54.4,28.6]
.' [65.4,31.4]
.' [73.6,40.2]
.' [70.0,45.6]
.' [72.6,56.8]
|achieve 1312/20
step
goto Blade's Edge Mountains 30.6,67.2
.from Hemathion##18692
.' If Hemathion is not here, you may be able to find him at [30.6,48.4]
|achieve 1312/11
step
goto 68.8,70.0
.from Morcrush##18690
.' If Morcrush is not here, you may be able to find him in the following locations:
.' [62.6,52.6]
.' [65.8,47.8]
.' [71.0,42.0]
.' [73.8,28.6]
.' [61.0,23.0]
|achieve 1312/15
step
goto 44.6,77.4
.from Speaker Mar'Grom##18693
.' If Speaker Mar'Grom is not here, you may be able to find him in the following locations:
.' [42.0,50.8]
.' [57.6,29.6]
.' [66.2,23.6]
|achieve 1312/18
step
goto Zangarmarsh 25.0,24.0
.from Bog Lurker##18682
.' If Bog Lurker is not here, you may be able to find him in the following locations:
.' [41.2,60.8]
.' [50.6,59.4]
.' [86.6,82.6]
|achieve 1312/2
step
goto 25.8,42.6
.from Coilfang Emissary##18681
.' If Coilfang Emissary is not here, you may be able to find him in the following locations:
.' [63.0,38.0]
.' [64.4,69.6]
.' [73.6,82.4]
|achieve 1312/4
step
goto 10.6,51.0
.from Marticar##18680
.' If Marticar is not here, you may be able to find him in the following locations:
.' [18.0,34.4]
.' [38.6,34.8]
.' [54.4,33.8]
.' [72.0,35.8]
.' [79.6,53.6]
|achieve 1312/13
step
goto Netherstorm 59.8,66.4
.from Chief Engineer Lorthander##18697
.' If Chief Engineer Lorthander is not here, you may be able to find him in the following locations:
.' [47.6,81.2]
.' [27.8,39.4]
|achieve 1312/3
step
goto 58.2,37.8
.from Ever-Core the Punisher##18698 |tip He walks around the towers in Netherstorm, so you will need to search for him.
|achieve 1312/8
step
goto 25.6,82.6
.from Nuramoc##20932
.' If Nuramoc is not here, you may be able to find him in the following locations:
.' [40.6,79.8]
.' [67.6,61.0]
.' [53.0,59.2]
.' [34.0,33.6]
.' [36.0,20.8]
|achieve 1312/16
step
goto Nagrand 39.8,71.0
.from Voidhunter Yar##18683 |tip He walks in a circle around Oshu'Gun, you may need to fly around to find him.
|achieve 1312/19
step
goto 34.0,50.0
.from Goretooth##17144
.' If Goretooth is not here, you may be able to find him in the following locations:
.' [44.8,44.8]
.' [59.6,28.4]
.' [77.0,80.2]
|achieve 1312/10
step
goto Terokkar Forest 39.0,63.6
.from Crippler##18689 |tip He walks around and inside Auchindoun, so you may need to search for him.
|achieve 1312/6
step
goto 70.2,49.0
.from Doomsayer Jurim##18686
.' If Doomsayer Jurim is not here, you may be able to find him in the following locations:
.' [56.8,32.6]
.' [54.4,20.4]
.' [43.2,26.4]
.' [35.8,37.4]
|achieve 1312/7
step
goto 56.6,67.6
.from Okrek##18685
.' If Okrek is not here, you may be able to find him in the following locations:
.' [31.8,42.6]
.' [50.0,19.6]
.' [59.8,24.2]
|achieve 1312/17
step
goto Shadowmoon Valley 71.0,61.6
.from Ambassador Jerrikar##18695
.' If Ambassador Jerrikar is not here, you may be able to find him in the following locations:
.' [47.6,68.6]
.' [29.6,52.6]
.' [46.2,28.8]
.' [57.6,38.2]
|achieve 1312/1
step
goto 70.8,66.8
.from Collidus the Warp-Watcher##18694
.' If Collidus the Warp-Watcher is not here, you may be able to find him in the following locations:
.' [58.6,71.6]
.' [46.0,53.2]
.' [37.6,43.6]
.' [60.0,22.0]
.' [73.8,29.2]
|achieve 1312/5
step
goto 59.6,46.6
.from Kraator##18696
.' If Kraator is not here, you may be able to find him in the following locations:
.' [42.0,68.8]
.' [31.0,45.6]
.' [42.0,40.6]
.' [45.6,12.6]
|achieve 1312/12
step
'Congratulations, you have earned the Bloody Rare achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Frostbitten",[[
description Kill all of the extremely rare and hard to find Northrend Creatures.
achieveid 2256
condition end achieved(2257)
step
goto Borean Tundra 25.6,34.4
.from Old Crystalbark##32357 |tip He walks all around the Nexus, so you may need to search for him.
|achieve 2257/4
step
goto 63.8,26.6
.from Fumblub Gearwind##32358 |tip He is flying around this whole section of the map, so you may need to search for him.
|achieve 2257/5
step
goto 88.6,39.8
.from Icehorn##32361
.' If Icehorn is not here, you may be able to find him in the following locations:
.' [84.6,46.8]
.' [80.8,46.0]
.' [81.4,31.4]
.' [85.8,34.6]
.' [91.6,32.6]
|achieve 2257/6
step
goto Dragonblight 26.6,58.6
.from Crazed Indu'le Survivor##32409 |tip He walks around this area, so you may need to search for him.
|achieve 2257/11
step
goto 67.6,60.0
.from Tukemuth##32400
.' If Tukemuth is not here, you may be able to find him in the following locations:
.' [70.8,30.2]
.' [62.6,42.2]
.' [59.0,60.2]
.' [54.6,56.8]
.' [61.0,31.0]
|achieve 2257/10
step
goto 72.6,25.8
.from Scarlet Highlord Daion##32417
.' If Scarlet Highlord Daion is not here, you may be able to find him in the following locations:
.' [86.8,41.6]
.' [72.0,74.0]
|achieve 2257/12
step
goto Grizzly Hills 25.0,57.0
.from Grocklar##32422
.' If Grocklar is not here, you may be able to find him in the following locations:
.' [13.2,48.6]
.' [22.4,73.2]
.' [12.2,70.6]
|achieve 2257/13
step
goto 40.2,48.8
.from Seething Hate##32429
.' If Seething Hate is not here, you may be able to find it in the following locations:
.' [34.6,49.0]
.' [28.6,45.8]
|achieve 2257/14
step
goto 69.6,32.2
.from Syreian the Bonecarver##32438 |tip She walks around in this area, so you may need to search for her.
|achieve 2257/15
step
goto Howling Fjord 33.2,80.6
.from King Ping##32398 |tip He is wandering about this island and the one north of it. You may need to search for him.
|achieve 2257/9
step
goto 72.6,52.0
.from Vigdis the War Maiden##32386 |tip She wanders around this area, so you may need to search for her a bit.
|achieve 2257/8
step
goto 50.6,4.8
.from Perobas the Bloodthirster##32377
.' If Perobas the Bloodthirster is not here, you may be able to find him in the following locations:
.' [53.0,11.4]
.' [60.8,20.2]
.' [68.6,17.6]
.' [71.6,13.8]
|achieve 2257/7
step
goto Icecrown 48.6,80.2
.from High Thane Jorfus##32501
.' If High Thane Jorfus is not here, you may be able to find him in the following locations:
.' [32.0,69.6]
.' [60.8,20.2]
.' [72.8,38.8]
|achieve 2257/2
step
goto 32.4,29.6
.from Hildana Deathstealer
.' If Hildana Deathstealer is not here, you may be able to find her in the following locations:
.' [31.8,41.8]
.' [58.2,54.2]
|achieve 2257/3
step
goto 55.6,41.2
.from Putridus the Ancient##32487 |tip He walks around this whole trench, so you may need to search for him.
|achieve 2257/23
step
goto Sholazar Basin 54.8,52.6
.from Aotona##32481
.' If Aotona is not here, you may be able to find it in the following locations:
.' [58.2,64.0]
.' [52.6,72.2]
.' [41.8,69.6]
.' [41.0,58.6]
.' [45.8,54.4]
|achieve 2257/19
step
goto 64.6,81.0
.from King Krush##32485
.' If King Krush is not here, you may be able to find him in the following locations:
.' [59.0,80.8]
.' [50.6,78.2]
.' [27.6,45.2]
.' [37.6,28.8]
.' [49.8,45.0]
|achieve 2257/20
step
goto 71.6,72.0
.from Loque'nahak##32517
.' If Loque'nahak is not here, you may be able to find him in the following locations:
.' [67.0,79.6]
.' [51.0,81.6]
.' [22.6,70.6]
.' [31.0,66.6]
.' [36.6,31.0]
.' [59.4,22.6]
|achieve 2257/1
step
goto The Storm Peaks 68.0,47.6
.from Dirkee##32500
.' If Dirkee is not here, you may be able to find him in the following locations:
.' [37.8,58.6]
.' [41.0,51.6]
.' [41.6,40.6]
|achieve 2257/22
step
goto 41.2,59.0
.from Vyragosa##32630 |tip This dragon flies around the whole zone, so you may need to search for him a bit.
|achieve 2257/21
step
goto Zul'Drak 21.2,79.8
.from Griegen##32471
.' If Griegen is not here, you may be able to find him in the following locations:
.' [25.8,76.8]
.' [26.6,71.2]
.' [22.0,70.6]
.' [18.0,70.6]
.' [14.6,56.8]
.' [23.0,62.8]
.' [26.6,55.4]
|achieve 2257/17
step
goto 40.4,64.0
.from Zul'drak Sentinel##32447 |tip He wanders around this area, so you may need to search for him.
|achieve 2257/16
step
goto 53.6,31.6
.from Terror Spinner##32475
.' If Terror Spinner is not here, you may be able to find him in the following locations:
.' [61.2,36.6]
.' [71.6,23.4]
.' [72.2,28.4]
.' [81.6,34.6]
.' [77.6,42.8]
.' [74.8,66.4]
|achieve 2257/18
step
'Congratulations, you have obtained the Frostbitten achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Epic",[[
description Equip items in each slot that have at least an item level of 213
condition end achieved(556)
step
For this achievement you will need to simply equip a Epic (purple) item in all your Armor and Weapon slots. For rings and trinkets you can just equip one ring or trinket in both slots seperately.
You can either purchase these items from the Auction House or run dungeons for them. The lowest level dugneons you can run are:
.' (Non Heroic) Forge of Souls
.' (Non Heroic) Pit of Saron
.' (Non Heroic) Halls of Reflection
|tip You can also find these items in these WotLK Heroic Dungeons and any Heroic dungeon from Cataclysm.
|confirm
step
'Equip an Epic item in every slot with a minimum item level of 213
.' Earn the Epic Achievement |achieve 556 |next "finish"
|confirm
step
.' Your progress will be tracked below per slot:
..' Head |achieve 556/1
..' Neck |achieve 556/2
..' Shoulder |achieve 556/3
..' Chest |achieve 556/4
..' Waist |achieve 556/5
..' Legs |achieve 556/6
..' Feet |achieve 556/7
..' Wrist |achieve 556/8
..' Hands |achieve 556/9
..' Left Ring |achieve 556/10
..' Right Ring |achieve 556/11
..' First Trinket |achieve 556/12
..' Second Trinket |achieve 556/13
..' Cloak |achieve 556/14
..' Weapon |achieve 556/15
step
label "finish"
.' Congratulations, you have earned the _Epic_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Cataclysmically Epic",[[
description Equip items in each slot that have at least an item level of 359
condition end achieved(5372)
step
For this achievement you will need to simply equip a Epic (purple) item in all your Armor and Weapon slots. For rings and trinkets you can just equip one ring or trinket in both slots seperately.
You can either purchase these items from the Auction House or Raid with groups. The lowest Raids you can join to get these items are Cataclysm Raids.
|confirm
step
.' Your progress will be tracked below per slot:
..' Head |achieve 5372/1
..' Neck |achieve 5372/2
..' Shoulder |achieve 5372/3
..' Chest |achieve 5372/4
..' Waist |achieve 5372/5
..' Legs |achieve 5372/6
..' Feet |achieve 5372/7
..' Wrist |achieve 5372/8
..' Hands |achieve 5372/9
..' Left Ring |achieve 5372/10
..' Right Ring |achieve 5372/11
..' First Trinket |achieve 5372/12
..' Second Trinket |achieve 5372/13
..' Cloak |achieve 5372/14
..' Weapon |achieve 5372/15
step
label "finish"
.' Congratulations, you have earned the _Cataclysmically Epic_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Cataclysmically Superior",[[
description Equip a superior item in every slot with a minimum item level of 333.
condition end achieved(5373)
step
For this achievement you will need to simply equip a Superior (blue) item in all your Armor and Weapon slots. For rings and trinkets you can just equip one ring or trinket in both slots seperately.
You can either purchase these items from the Auction House or run dungeons and quests for them. The lowest level dungeons you can run are:
.' (Non Heroic) Grim Batol
.' (Non Heroic) Halls of Origination
.' (Non Heroic) Lost City of the Tol'vir
|tip You can also find these items in these Cataclysm Heroic Dungeons and any most dungeons from Cataclysm.
|confirm
step
.' Your progress will be tracked below per slot:
..' Head |achieve 5373/1
..' Neck |achieve 5373/2
..' Shoulder |achieve 5373/3
..' Chest |achieve 5373/4
..' Waist |achieve 5373/5
..' Legs |achieve 5373/6
..' Feet |achieve 5373/7
..' Wrist |achieve 5373/8
..' Hands |achieve 5373/9
..' Left Ring |achieve 5373/10
..' Right Ring |achieve 5373/11
..' First Trinket |achieve 5373/12
..' Second Trinket |achieve 5373/13
..' Cloak |achieve 5373/14
..' Weapon |achieve 5373/15
step
'Equip a superior item in every slot with a minimun item level of 333
.' Earn the Cataclysmically Superior Achievement |achieve 5373
step
.' Congratulations, you have earned the _Cataclysmically Epic_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Superior",[[
description Equip a superior item in every slot with a minimum item level of 187. Equip an epic item in every slot with a minimum item level of 213.
condition end achieved(557)
step
For this achievement you will need to simply equip a Superior (blue) item in all your Armor and Weapon slots. For rings and trinkets you can just equip one ring or trinket in both slots seperately.
You can either purchase these items from the Auction House or run dungeons and quests for them. The lowest level dungeons you can run are:
.' (Non Heroic) Old Stratholme
.' (Non Heroic) The Oculus
.' (Non Heroic) Utgarde Pinnacle
.' (Non Heroic) Halls of Lightning
You can also find these items in all of the WotLK Heroic Dungeons and any dungeon from Cataclysm.
|confirm
step
'Equip a Superior item in every slot with a minimum item level of 187
.' Earn the Superior Achievement |achieve 557 |next "finish"
|confirm
step
.' Your progress will be tracked below per slot:
..' Head |achieve 557/1
..' Neck |achieve 557/2
..' Shoulder |achieve 557/3
..' Chest |achieve 557/4
..' Waist |achieve 557/5
..' Legs |achieve 557/6
..' Feet |achieve 557/7
..' Wrist |achieve 557/8
..' Hands |achieve 557/9
..' Left Ring |achieve 557/10
..' Right Ring |achieve 557/11
..' First Trinket |achieve 557/12
..' Second Trinket |achieve 557/13
..' Cloak |achieve 557/14
..' Weapon |achieve 557/15
step
label "finish"
.' Congratulations, you have earned the _Superior_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Safe Deposit",[[
description Buy 7 additional bank slots.
condition end achieved(546)
step
'This achievement will cost you _111.1_ Gold to complete.
|confirm
step
goto Stormwind City 63.5,80.0
.talk 43692
.' Purchase 7 Bank Slots.
.' Earn the Safe Deposit Achievement |achieve 546
step
'Congratulations, you've earned the _Safe Deposit_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Get to the Choppa!",[[
description Learn the Mekgineer's Chopper.
condition end achieved(2097)
step
.' In order to earn this achievement, you will need to either purcahse or create a Mekgineer's Chopper.
.' Click here to make this item yourself |next collect |confirm
.' Click here to purchase this item froomo the Auction House |confirm
step
goto Stormwind City 60.8,70.9
.talk 8670
.buy Mekgineer's Chopper##44413
|next learn
step
label "collect"
..collect 12 Titansteel Bar##37663 |tip You will need Mining or a Miner for this. 450
..collect 40 Handful of Cobalt Bolts##39681 |tip You will need Engineering or an Engineer to attain these. 350
..collect 2 Arctic Fur##44128 |tip You will need Skinning or a Skinner to attain this. From Northrend Enemies
.' Once you have collected these items, you will need to collect 3 more, which come from vendors.
|confirm
step
goto Vale of Eternal Blossoms/0 64.1,41.4
.talk 61650
.buy 1 Salvaged Iron Golem Parts##44499 |tip 3,000 gold
.buy 8 Goblin-Machined Piston##44501 |tip 8,000 gold
.buy 1 Elementium-Plated Exhaust Pipe##44500 |tip 1,500 gold
.' Note that these can also be salvaged or dropped from _Ulduar_.
.' _Flame Leviathan_ and _XT-002 Deconstructor_ are the bosses you are looking for.
'|modelnpc 33293
'|modenpc 33113
step
label learn
.' Use your Mekgineer's Chopper. |use Mekgineer's Chopper##44413
..learnmount Mekgineer's Chopper##60867
|achieve 2097
step
.' Congratulations, you have earned the _Get to the Choppa!_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Surveying the Damage",[[
description
condition end achieved(4827)
step
.' In order to earn this achievement, you will need to visit the places that Deathwing had the most effect on during Cataclysm.
|confirm
step
goto Westfall/0 38.5,42.3
.' The Raging Chasm in Westfall |achieve 4827/11
step
goto Northern Stranglethorn 50.4,66.5
.' The Sundering in Stranglethorn |achieve 4827/2
step
goto Badlands/0 43.4,42.5
.' The Scar of the Worldbreaker in Badlands /3
step
goto Loch Modan/0 42.0,11.3
.' The Stonewrought Dam in Loch Modan /12
step
goto Hillsbrad Foothills/0 51.3,71.4
.' Ruins of Southshore in Hillsbrad Foothills /13
step
goto Ruins of Gilneas/0 60.2,10.5
.' The Greymane Wall in Silverpine /10
step
goto Southern Barrens/0 45.5,70.3
.' The Battlescar in Southern Barrens /1
step
goto Tanaris/0 37.7,78.9
.' The Valley of the Watchers in Tanaris /5
step
goto Thousand Needles/0 74.4,82.1
.' The Shimmering Deep in Thousand Needles /9
step
goto Desolace/0 57.5,54.3
.' Cenarion Wildlands in Desolace /8
step
goto Ashenvale/0 48.2,53.5
.' Thunder Peak in Ashenvale /6
step
goto Durotar/0 38.8,38.5
.' Southfury Watershed in Durotar /7
step
goto Darkshore/0 38.6,45.3
.' The Ruins of Auberdine in Darkshore /4
step
.' Congratulations, you have earned the _Surveying the Damage_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Leeeeeeeeeeeeeroy!",[[
description This guide will show you how to earn the Jenkins Title.
author support@zygorguides.com
step
'This achievement will require you to kill 50 rookery whelps within 15 seconds.
|confirm
step
goto Blackrock Spire/6 33.1,27.1
.click Blackrock Altar##04076
.kill Pyroguard Emberseer##9816 |n
|confirm
step
goto Blackrock Spire/6 30.8,35.0
.from 50 Rookery Whelp##10161+ |achieve 2188/1 |tip You have 15 seconds from the first kill to get the rest of the 50.
step
'Congratulations! You have earned the Title _Jenkins_!!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\High Quality",[[
description This guide will show you how to earn the Jenkins Title.
author support@zygorguides.com
condition end achieved(7463)
step
.' For this achievement, you will need to capture _10 Rare Quality Battle Pets_.
|confirm
step
goto Stormwind City/0 41.9,92.5
.' [Stormwind City/0 48.4,84.2]
.' Search for _Squirrels_ and _Rabbits_ in the area.
.' Refer to our Battle Pet interface or the pets health that you are battling. You are looking for 128 Health pets.
|achieve 7463
step
.' Congratulations, you have earned the _High Quality_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Family Reunion",[[
description This guide will show you how to earn the Jenkins Title.
author support@zygorguides.com
condition end achieved(6608)
step
.' Humanoid |achieve 6608/1
.' Dragonkin |achieve 6608/2
.' Undead |achieve 6608/3
.' Flying |achieve 6608/4
.' Critter |achieve 6608/5
.' Magic |achieve 6608/6
.' Elemental |achieve 6608/7
.' Beast |achieve 6608/8
.' Aquatic |achieve 6608/9
.' Mechanical |achieve 6608/10
step
goto Redridge Mountains 42.1,68.8
.' The Mountain Cottontails in this area are level 4-5. Challenge one to a pet battle and capture it.
.learnpet Mountain Cottontail##61167
|modeldisplay 328
|achieve 6608/5
step
goto New Tinkertown 36.6,52.7
.' The _Fluxfire Felines_ in the area are around level 1.
.learnpet Fluxfire Feline##68838
|achieve 6608/10
step
goto Badlands 12.9,29.7
.' The King Snakes are around level 13. Challenge one to a pet battle and capture it.
.learnpet King Snake##61443
|modeldisplay 2954
|achieve 6608/8
step
goto Arathi Highlands 46.6,51.2
.' Search for _Tiny Twisters_ around the area and challange on to a pet battle.
.' Capture it for credit.
.learnpet 61703
|achieve 6608/7
step
goto The Hinterlands 57.4,43.5
.' The _Jade Oozelings_ in this area are around level 11. Challenge one to a pet battle and capture it.
.learnpet Jade Oozeling##61718
|modeldisplay 42218
|achieve 6608/6
step
goto Tirisfal Glades 79.7,55.2
.' The _Lost of Lordaeron_ is level 1. Challenge one to a pet battle and capture it.
.learnpet Lost of Lordaeron##61905
|modeldisplay 42304
|achieve 6608/3
step
goto Northern Stranglethorn 34.8,48.0
.' The _Strand Crabs_ are around level 7. Challenge one to a pet battle and capture it.
.learnpet Strand Crab##61312
|modeldisplay 32789
|achieve 6608/9
step
goto Northern Barrens 31.1,40.6
.' The _Harpy Younglings_ in the area are around level 3.
.learnpet Harpy Youngling##68804
|achieve 6608/1
step
goto Dustwallow Marsh 52.2,75.9
.' The _Spawn of Onyxia_ are around level 12. Challenge one to a pet battle and capture it. |tip They are a rare spawn, so you may have to wait around a while for one.
.learnpet Spawn of Onyxia##62201
|modeldisplay 42745
|achieve 6608/2
step
goto Darnassus 64.0,53.6
.talk 8665
.buy 1 Great Horned Owl##8500
'|modeldisplay 4566
|achieve 6608/4
step
.' Congratualtions, you have earned the _Family Reuinion_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Events\\Pilgrim's Bounty\\Pilgrim's Bounty Quests and Cooking 1-300 Guide",[[
author support@zygorguides.com
description This Guide will walk you through completed the Pilgrim's Bounty Achievements
#include "Pilgrims_Bounty_Quests_Alliance"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Events\\Pilgrim's Bounty\\Pilgrim's Bounty Daily Quests",[[
author support@zygorguides.com
description This Guide will walk you through completed the Pilgrim's Bounty Achievements
#include "Pilgrims_Bounty_Dailies_Alliance"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Events\\Darkmoon Faire\\Darkmoon Faire Achievements", [[
description This guide will help you navigate through the Darkmoon Faire Event
#include "A_Darkmoon_Faire_Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Events\\Noblegarden\\Noblegarden Achivements", [[
description This guide will help you navigate through the Noblegarden Achievements
#include "Noblegarden Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Events\\Children's Week\\Children's Week Achievements", [[
step
#include "Children's Week Achievements"
step
.' You will need to do this questline in order to obtain Egbert's Egg, Sleepy Willy, and the Elekk Training Collar.
|confirm
step
#include "Children's Week Shattrath"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Events\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements", [[
description This guide will help you navigate through the Midsummer Fire Festival Achievements
step
#include "Midsummer Fire Festival Quests"
step
#include "Midsummer Fire Festival Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\5 Dungeon Quests Completed",[[
description Complete 5 dungeon quests.
condition end achieved(4956)
step
goto The Deadmines,38.3,77.5
.' Enter the swirling portal
.' Click here to proceed. |confirm
step
goto The Deadmines,30.2,28.6
.talk 46612
..accept 27756
step
goto 30.0,46.7 |n
.' Follow the path to this spot. |goto The Deadmines,30.0,46.7,0.5|noway|c
step
goto The Deadmines,34.7,61.9
..kill Glubtok |q 27756/1
..turnin 27756
step
goto 43.8,78.8 |n
.' Open the heavy door here |goto The Deadmines,43.8,78.8|noway|c
step
goto 43.7,82.7
..accept 27758 |tip It will come up in a Quest Discovered! box
step
goto 49.7,90.2
..kill Helix Gearbreaker |q 27758/1
..turnin 27758
step
goto 65.3,87.5 |n
.' Follow the path through the Deadmines. |goto The Deadmines,65.3,87.5|noway|c
step
goto The Deadmines,61.0,71.8
..accept 27781 |tip It will come up in a Quest Discovered! box
step
goto The Deadmines,8.7,88.3
.' Follow ramp down and kill the Defias Reapers at the bottom.
..kill Foe Reaper 5000 |q 27781/1
..turnin 27781
step
goto The Deadmines,12.6,68.9 |n
.' Follow the path down to the cannon.
.' Click the cannon to open the door.
.' Click here to proceed. |confirm
step
goto The Deadmines,35.6,48.5
..accept 27785
step
.' Follow the path across to the ship bridge.
.' Click to proceed. |confirm
step
.' Follow the path up to the boat and follow it to the right.
.' Go up to the top of the ship
.' Click to proceed. |confirm
step
.kill Admiral Ripsnarl |q 27785/1
..turnin 27785
..accept 27790
step
goto The Deadmines,60.5,45.2
..kill "Captain" Cookie |q 27790/1
step
.' Wait for Lieutenant Horatio Laine to come up to the deck.
.talk 46612
..turnin 27790
step
.' Earn the 5 Dungeon Quests Completed! Achievement. |achieve 4956
step
.' Congratulations, you have earn the 5 Dungeon Quests Completed! Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Hemet Nesingwary: The Collected Quests",[[
description Complete the Green Hills of Stranglethorn, Hills Like White Elekk and Snows of Northrend achievements.
condition end achieved(941)
step
.' Redirecting to The Green Hills of Stranglethorn |next "TheGreenHills" |only if not completedq(208)
.' Redirecting to Hills Like White Elekks |next "WhiteElekks" |only if not completedq(9852)
.' Redirecting to The Snows of Northrend |next "Snows" |only if not completedq(12614)
.' Redirecting to end of guide |next "end" |only if default
step
title +The Green Hills of Stranglethorn
goto Northern Stranglethorn 44.3,22.1
.talk 716
..accept 583
step
goto 44.0,23.3
.talk 715
..turnin 583
..accept 194
step
goto 43.7,22.3
.talk 718
..accept 190
step
goto 44.2,22.1
.talk 716
..accept 26269
step
goto 44.5,22.7
.talk 717
..accept 185
step
goto 45.2,20.8
.from River Crocolisk##1150+
.get Green Hills of Stranglethorn - Page 14 |q 26269/1
step
goto 44.2,22.1
.talk 716
..turnin 26269
step
goto 42.3,24.2
.kill 10 Young Stranglethorn Tiger |q 185/1
.' You can find more Young Stranglethorn Tigers to kill around 38.7,20.3
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 185
..accept 186
step
goto 52.0,23.8
.kill 10 Young Panther |q 190/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 190
..accept 191
step
goto 61.3,27.0
.kill 10 Stranglethorn Tiger |q 186/1
.' You can find more Stranglethorn Tigers around 56.5,28.7
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 186
..accept 187
step
goto 38.1,30.1
.kill 5 Elder Stranglethorn Tiger |q 187/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 187
..accept 188
step
goto 38.5,32.5
.from Sin'Dall##729
.get 1 Paw of Sin'Dall |q 188/1
step
goto 33.8,28.2
.kill 10 Panther |q 191/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 191
..accept 192
step
goto 31.7,28.0
.kill 10 Stranglethorn Raptor |q 194/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 194
..accept 195
step
goto 44.5,22.7
.talk 717
..turnin 188
step
goto 45.8,43.1
.kill 10 Lashtail Raptor |q 195/1
.' You can find more Lashtail Raptors around 39.3,43.9
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 195
..accept 196
step
goto 54.3,47.2
.kill 10 Jungle Stalker |q 196/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 196
..accept 197
step
goto 61.9,49.0
.kill 5 Shadowmaw Panther |q 192/1 |tip They are stealthed, so keep an eye out for them.
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 192
..accept 193
step
goto 66.0,43.4
.from Bhag'thera##728
.get Fang of Bhag'thera |q 193/1
.' Bhag'thera can also spawn
.' At [61.7,50.6]
.' At [64.4,36.6]
step
goto 62.5,61.3
.from Tethis##730
.get Talon of Tethis |q 197/1
step
goto 48.4,41.9 |n
.' Follow this road |goto 48.4,41.9,0.5 |noway |c
step
goto 44.0,23.3
.talk 715
..turnin 197
step
goto 43.7,22.3
.talk 718
..turnin 193
step
goto 44.2,23.0
.talk 715
..accept 208
step
goto 47.8,59.0
.from King Bangalash##731 |tip He's a white tiger that walks around on this big hill.
.get Head of Bangalash |q 208/1
step
goto 44.0,23.3
.talk 715
..turnin 208
'Earn The Green Hills of Stranglethorn achievement! |achieve 940
step
.' Redirecting to Hills Like White Elekks |next "WhiteElekks" |only if not completedq(9852)
.' Redirecting to The Snows of Northrend |next "Snows" |only if not completedq(12614)
.' Redirecting to end of guide |next "end" |only if default
step
label WhiteElekks
title +Hills Like White Elekks
step
goto Nagrand,71.6,40.5
.talk 18200
..accept 9854
.talk 18180
..accept 9789
.talk 18218
..accept 9857
step
goto 72.2,38.4
.kill 12 Talbuk Stag |q 9857/1
.' You can find more Talbuk Stags at [70.8,46.4]
step
goto 66.5,39.5
.kill 12 Windroc |q 9854/1
step
goto 64,45.1
.kill 12 Clefthoof |q 9789/1
.' You can find more Clefthoofs at [70.8,46.4]
step
goto 71.6,40.5
.talk 18200
..turnin 9854
..accept 9855
.talk 18180
..turnin 9789
..accept 9850
.talk 18218
..turnin 9857
..accept 9858
step
goto 48.4,61.5
.kill 12 Ravenous Windroc |q 9855/1
step
goto 52.1,25.6
.kill 12 Talbuk Thorngrazer |q 9858/1
step
goto 51.6,30.8
.kill 12 Clefthoof Bull |q 9850/1
.' You can find more Clefthoof Bulls at [49.7,35.6]
step
goto 71.6,40.5
.talk 18218
..turnin 9858
..accept 9859
.talk 18180
..turnin 9850
..accept 9851
.talk 18200
..turnin 9855
..accept 9856
step
goto 32.6,25.6
.from Gutripper##18257
.get 1 Eye of Gutripper |q 9856/1
step
goto 26.0,53.0
.from Bach'lor##18258 |tip He sometimes roams up north
.get 1 Hoof of Bach'lor3 |q 9859/1
step
goto 43.0,63.0
.from Banthar##18259 |tip He roams around this area and is sometimes past Oshu'gun
.get 1 Horn of Banthar |q 9851/1
step
goto 71.6,40.5
.talk 18218
..turnin 9859
.talk 18200
..turnin 9856
.talk 18180
..turnin 9851
..accept 9852
step
goto 44.2,65.2
.from Tusker##18290
.get 1 Heart of Tusker |q 9852/1
step
goto 71.6,40.5
.talk 18180
..turnin 9852
.' Earn the Hills Like White Elekk achievement! |achieve 939
step
.' Redirecting to The Snows of Northrend |next "Snows" |only if not completedq(12614)
.' Redirecting to end of guide |next "end" |only if default
step
label Snows
title +The Snows of Northrend
goto Dalaran,68.3,42.2
.talk 28160
..accept 12521
step
goto Dalaran,68.3,42.2
.talk 28160
.' Tell him you're ready to fly to Sholazar Basin
.' You will fly to Sholazar Basin |goto Sholazar Basin |noway |c
step
goto Sholazar Basin,39.7,58.6
.talk 27987
..turnin 12521
..accept 12489
step
goto 27.1,58.7
.talk 27986
..turnin 12489
step
goto 27.2,59.8
.talk 28032
..accept 12524
step
goto 25.4,58.4
.talk 28033
..accept 12522
step
goto 38.7,56.7
.' Click the Flying Machine Engine |tip It's an engine sitting on the ground, next to a crashed plane.
.get Flying Machine Engine |q 12522/1
step
goto 25.4,58.5
.talk 28033
..turnin 12522
..accept 12523
step
goto 35.5,47.4
.talk 28787
..accept 12688
.' Escort Engineer Helice out of Swindlegrin's Dig |q 12688/1
step
goto 32.7,46.9
.' Click the Venture Co. Spare Parts |tip They look like metal assorted parts on the ground around this area.
.get 7 Venture Co. Spare Parts |q 12523/1
step
goto 37.4,46.1
.kill 15 Venture Company member |q 12524/1
step
goto 25.4,58.4
.talk 28033
..turnin 12523
step
goto Sholazar Basin,27.2,59.8
.talk 28032
..turnin 12524
..accept 12525
step
goto 27.1,58.7
.talk 27986
..turnin 12688
step
goto Sholazar Basin,36.1,50.5
.kill Foreman Swindlegrin |q 12525/1
.kill Meatpie |q 12525/2
step
goto 27.2,59.8
.talk 28032
..turnin 12525
step
goto 26.7,59
.talk 28031
..accept 12549
step
goto 27.1,58.6
.talk 27986
..accept 12520
step
goto 27.1,59.9
.talk 28328
..accept 12589
step
'Use your RJR Rifle on the gnome close to you with an apple on his head |use RJR Rifle##38573
.' Keep using the rifle until you hit the apple
.' Shoot the apple on Lucky Wilhelm's Head |q 12589/1
step
goto 27.1,59.9
.talk 28328
..turnin 12589
..accept 12592
step
goto 28,56
.kill 15 Dreadsaber |q 12549/1
.kill 15 Shardhorn Rhino |q 12520/1
.from Dreadsaber##28001+, Shardhorn Rhino##28009+
.' Kill 60 Game Animals |q 12592/1
.' You can find more Rhino's and Dreadsabers around 38.2,45.3
step
goto 26.7,59
.talk 28031
..turnin 12549
..accept 12550
step
goto 27.1,58.6
.talk 27986
..turnin 12520
..accept 12526
step
goto 27.1,59.8
.talk 28328
..turnin 12592
step
goto 27.2,59.8
.talk 28032
..accept 12551
step
goto 39.9,43.7
.' Click Dreadsaber Tracks |tip They look like brown paw prints on the ground around this area.
.' Identify 3 Shango Tracks |q 12550/1
step
goto 26.7,59
.talk 28031
..turnin 12550
..accept 12558
step
goto 25.6,66.5
.talk 28191
..turnin 12526
..accept 12543
step
goto 29,62.5
.kill 15 Mangal Crocolisk |q 12551/1
step
goto 36.3,65.8
.from Emperor Cobra##28011+
.get 5 Intact Cobra Fang |q 12543/1
step
goto 27.2,59.9
.talk 28032
..turnin 12551
..accept 12560
step
goto 25.6,66.5
.talk 28191
..turnin 12543
..accept 12544
step
goto 26.1,71.6
.' Use Soo-rahm's Incense next to the Offering Bowl |use Soo-rahm's Incense##38519 |tip It's a small bowl in front of the skull of these bones.
.' Reveal the Location of Farunn |q 12544/1
step
goto 27.1,58.6
.talk 27986
..turnin 12544
..accept 12556
step
goto 33.4,34.7
.from Shango##28297
.get Shango's Pelt |q 12558/1
step
goto 34.7,41.5
.' Click Sandferns |tip They look like ferns on the beach.
.get 5 Sandfern |q 12560/1
step
goto 47.4,43.9
.from Farunn##28288
.get Farunn's Horn |q 12556/1
step
goto 27.1,58.6
.talk 27986
..turnin 12556
step
goto 26.7,59
.talk 28031
..turnin 12558
step
goto 27.2,59.9
.talk 28032
..turnin 12560
..accept 12569
step
goto 46.3,63.4
.' Use your Sandfern Disguise next to this big log laying halfway in the water |use Sandfern Disguise##38564
.from Bushwhacker##28317
.get Bushwhacker's Jaw |q 12569/1
step
goto 27.2,59.9
.talk 28032
..turnin 12569
step
goto 27.1,58.6
.talk 27986
..accept 12595
step
goto 42.3,28.7
.talk 28376
..turnin 12595
..accept 12603
..accept 12605
step
goto 44.7,27.4
.kill 6 Primordial Drake |q 12603/1 |tip The Primordial Drakes fly around in the air around this area.
.' Attack the Primordial Drake Eggs |tip The Primordial Drake Eggs look like white eggs next to trees around this area.
.' Click the Primordial Hatchlings that spawn
.get 6 Primordial Hatchling |q 12605/1
step
goto 42.3,28.7
.talk 28376
..turnin 12603
..turnin 12605
step
goto 42.1,28.9
.talk 28374
..accept 12607
step
goto 39.3,27.3
.' Use your Mammoth Harness on a Shattertusk Mammoth |use Mammoth Harness##38627
.' Ride the mammoth back to Zootfizzle at [42.1,28.9] |n
.' Use the Hand Over Mammoth ability on your hotbar
.' Deliver the Shattertusk Mammoth |q 12607/1
step
goto 42.1,28.9
.talk 28374
..turnin 12607
step
goto Sholazar Basin,42.3,28.8
.talk 28376
..accept 12614
step
goto 47.0,21.1
.kill Broodmother Slivina |q 12614/1 |tip The best way to kill her is to kite her around the small space while pushing 1 and 4 on your hotbar and making her step on traps Hemet Nesingwary puts down.
step
goto Sholazar Basin,42.3,28.8
.talk 28376
..turnin 12614
.' Earn The Snows of Northrend achievement! |achieve 938
step
.' Earn the Hemet Nesingwary: The Collected Quests achievement! |achieve 941
step
'Congratulations! You've earned the Hemet Nesingwary: The Collected Quests achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\The Green Hills of Stranglethorn",[[
description Complete the Green Hills of Stranglethorn questline.
condition end achieved(940)
step
title +The Green Hills of Stranglethorn
goto Northern Stranglethorn 44.3,22.1
.talk 716
..accept 583
step
goto 44.0,23.3
.talk 715
..turnin 583
..accept 194
step
goto 43.7,22.3
.talk 718
..accept 190
step
goto 44.2,22.1
.talk 716
..accept 26269
step
goto 44.5,22.7
.talk 717
..accept 185
step
goto 45.2,20.8
.from River Crocolisk##1150+
.get Green Hills of Stranglethorn - Page 14 |q 26269/1
step
goto 44.2,22.1
.talk 716
..turnin 26269
step
goto 42.3,24.2
.kill 10 Young Stranglethorn Tiger |q 185/1
.' You can find more Young Stranglethorn Tigers to kill around 38.7,20.3
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 185
..accept 186
step
goto 52.0,23.8
.kill 10 Young Panther |q 190/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 190
..accept 191
step
goto 61.3,27.0
.kill 10 Stranglethorn Tiger |q 186/1
.' You can find more Stranglethorn Tigers around 56.5,28.7
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 186
..accept 187
step
goto 38.1,30.1
.kill 5 Elder Stranglethorn Tiger |q 187/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 187
..accept 188
step
goto 38.5,32.5
.from Sin'Dall##729
.get 1 Paw of Sin'Dall |q 188/1
step
goto 33.8,28.2
.kill 10 Panther |q 191/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 191
..accept 192
step
goto 31.7,28.0
.kill 10 Stranglethorn Raptor |q 194/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 194
..accept 195
step
goto 44.5,22.7
.talk 717
..turnin 188
step
goto 45.8,43.1
.kill 10 Lashtail Raptor |q 195/1
.' You can find more Lashtail Raptors around 39.3,43.9
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 195
..accept 196
step
goto 54.3,47.2
.kill 10 Jungle Stalker |q 196/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 196
..accept 197
step
goto 61.9,49.0
.kill 5 Shadowmaw Panther |q 192/1 |tip They are stealthed, so keep an eye out for them.
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 192
..accept 193
step
goto 66.0,43.4
.from Bhag'thera##728
.get Fang of Bhag'thera |q 193/1
.' Bhag'thera can also spawn
.' At [61.7,50.6]
.' At [64.4,36.6]
step
goto 62.5,61.3
.from Tethis##730
.get Talon of Tethis |q 197/1
step
goto 48.4,41.9 |n
.' Follow this road |goto 48.4,41.9,0.5 |noway |c
step
goto 44.0,23.3
.talk 715
..turnin 197
step
goto 43.7,22.3
.talk 718
..turnin 193
step
goto 44.2,23.0
.talk 715
..accept 208
step
goto 47.8,59.0
.from King Bangalash##731 |tip He's a white tiger that walks around on this big hill.
.get Head of Bangalash |q 208/1
step
goto 44.0,23.3
.talk 715
..turnin 208
'Earn The Green Hills of Stranglethorn achievement! |achieve 940
step
'Congratulations! You've earned the _The Green Hills of Stranglethorn_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Hills Like White Elekk",[[
description Complete the Hills Like White Elekk questline.
condition end achieved(939)
step
title +Hills Like White Elekks
goto Nagrand,71.6,40.5
.talk 18200
..accept 9854
.talk 18180
..accept 9789
.talk 18218
..accept 9857
step
goto 72.2,38.4
.kill 12 Talbuk Stag |q 9857/1
.' You can find more Talbuk Stags at [70.8,46.4]
step
goto 66.5,39.5
.kill 12 Windroc |q 9854/1
step
goto 64,45.1
.kill 12 Clefthoof |q 9789/1
.' You can find more Clefthoofs at [70.8,46.4]
step
goto 71.6,40.5
.talk 18200
..turnin 9854
..accept 9855
.talk 18180
..turnin 9789
..accept 9850
.talk 18218
..turnin 9857
..accept 9858
step
goto 48.4,61.5
.kill 12 Ravenous Windroc |q 9855/1
step
goto 52.1,25.6
.kill 12 Talbuk Thorngrazer |q 9858/1
step
goto 51.6,30.8
.kill 12 Clefthoof Bull |q 9850/1
.' You can find more Clefthoof Bulls at [49.7,35.6]
step
goto 71.6,40.5
.talk 18218
..turnin 9858
..accept 9859
.talk 18180
..turnin 9850
..accept 9851
.talk 18200
..turnin 9855
..accept 9856
step
goto 32.6,25.6
.from Gutripper##18257
.get 1 Eye of Gutripper |q 9856/1
step
goto 26.0,53.0
.from Bach'lor##18258 |tip He sometimes roams up north
.get 1 Hoof of Bach'lor3 |q 9859/1
step
goto 43.0,63.0
.from Banthar##18259 |tip He roams around this area and is sometimes past Oshu'gun
.get 1 Horn of Banthar |q 9851/1
step
goto 71.6,40.5
.talk 18218
..turnin 9859
.talk 18200
..turnin 9856
.talk 18180
..turnin 9851
..accept 9852
step
goto 44.2,65.2
.from Tusker##18290
.get 1 Heart of Tusker |q 9852/1
step
goto 71.6,40.5
.talk 18180
..turnin 9852
.' Earn the Hills Like White Elekk achievement! |achieve 939
step
'Congratulations! You've earned the _Hills Like White Elekk_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\The Snows of Northrend",[[
description Complete the Snows of Northrend questline.
condition end achieved(938)
step
title +The Snows of Northrend
goto Dalaran,68.3,42.2
.talk 28160
..accept 12521
step
goto Dalaran,68.3,42.2
.talk 28160
.' Tell him you're ready to fly to Sholazar Basin
.' You will fly to Sholazar Basin |goto Sholazar Basin |noway |c
step
goto Sholazar Basin,39.7,58.6
.talk 27987
..turnin 12521
..accept 12489
step
goto 27.1,58.7
.talk 27986
..turnin 12489
step
goto 27.2,59.8
.talk 28032
..accept 12524
step
goto 25.4,58.4
.talk 28033
..accept 12522
step
goto 38.7,56.7
.' Click the Flying Machine Engine |tip It's an engine sitting on the ground, next to a crashed plane.
.get Flying Machine Engine |q 12522/1
step
goto 25.4,58.5
.talk 28033
..turnin 12522
..accept 12523
step
goto 35.5,47.4
.talk 28787
..accept 12688
.' Escort Engineer Helice out of Swindlegrin's Dig |q 12688/1
step
goto 32.7,46.9
.' Click the Venture Co. Spare Parts |tip They look like metal assorted parts on the ground around this area.
.get 7 Venture Co. Spare Parts |q 12523/1
step
goto 37.4,46.1
.kill 15 Venture Company member |q 12524/1
step
goto 25.4,58.4
.talk 28033
..turnin 12523
step
goto Sholazar Basin,27.2,59.8
.talk 28032
..turnin 12524
..accept 12525
step
goto 27.1,58.7
.talk 27986
..turnin 12688
step
goto Sholazar Basin,36.1,50.5
.kill Foreman Swindlegrin |q 12525/1
.kill Meatpie |q 12525/2
step
goto 27.2,59.8
.talk 28032
..turnin 12525
step
goto 26.7,59
.talk 28031
..accept 12549
step
goto 27.1,58.6
.talk 27986
..accept 12520
step
goto 27.1,59.9
.talk 28328
..accept 12589
step
'Use your RJR Rifle on the gnome close to you with an apple on his head |use RJR Rifle##38573
.' Keep using the rifle until you hit the apple
.' Shoot the apple on Lucky Wilhelm's Head |q 12589/1
step
goto 27.1,59.9
.talk 28328
..turnin 12589
..accept 12592
step
goto 28,56
.kill 15 Dreadsaber |q 12549/1
.kill 15 Shardhorn Rhino |q 12520/1
.from Dreadsaber##28001+, Shardhorn Rhino##28009+
.' Kill 60 Game Animals |q 12592/1
.' You can find more Rhino's and Dreadsabers around 38.2,45.3
step
goto 26.7,59
.talk 28031
..turnin 12549
..accept 12550
step
goto 27.1,58.6
.talk 27986
..turnin 12520
..accept 12526
step
goto 27.1,59.8
.talk 28328
..turnin 12592
step
goto 27.2,59.8
.talk 28032
..accept 12551
step
goto 39.9,43.7
.' Click Dreadsaber Tracks |tip They look like brown paw prints on the ground around this area.
.' Identify 3 Shango Tracks |q 12550/1
step
goto 26.7,59
.talk 28031
..turnin 12550
..accept 12558
step
goto 25.6,66.5
.talk 28191
..turnin 12526
..accept 12543
step
goto 29,62.5
.kill 15 Mangal Crocolisk |q 12551/1
step
goto 36.3,65.8
.from Emperor Cobra##28011+
.get 5 Intact Cobra Fang |q 12543/1
step
goto 27.2,59.9
.talk 28032
..turnin 12551
..accept 12560
step
goto 25.6,66.5
.talk 28191
..turnin 12543
..accept 12544
step
goto 26.1,71.6
.' Use Soo-rahm's Incense next to the Offering Bowl |use Soo-rahm's Incense##38519 |tip It's a small bowl in front of the skull of these bones.
.' Reveal the Location of Farunn |q 12544/1
step
goto 27.1,58.6
.talk 27986
..turnin 12544
..accept 12556
step
goto 33.4,34.7
.from Shango##28297
.get Shango's Pelt |q 12558/1
step
goto 34.7,41.5
.' Click Sandferns |tip They look like ferns on the beach.
.get 5 Sandfern |q 12560/1
step
goto 47.4,43.9
.from Farunn##28288
.get Farunn's Horn |q 12556/1
step
goto 27.1,58.6
.talk 27986
..turnin 12556
step
goto 26.7,59
.talk 28031
..turnin 12558
step
goto 27.2,59.9
.talk 28032
..turnin 12560
..accept 12569
step
goto 46.3,63.4
.' Use your Sandfern Disguise next to this big log laying halfway in the water |use Sandfern Disguise##38564
.from Bushwhacker##28317
.get Bushwhacker's Jaw |q 12569/1
step
goto 27.2,59.9
.talk 28032
..turnin 12569
step
goto 27.1,58.6
.talk 27986
..accept 12595
step
goto 42.3,28.7
.talk 28376
..turnin 12595
..accept 12603
..accept 12605
step
goto 44.7,27.4
.kill 6 Primordial Drake |q 12603/1 |tip The Primordial Drakes fly around in the air around this area.
.' Attack the Primordial Drake Eggs |tip The Primordial Drake Eggs look like white eggs next to trees around this area.
.' Click the Primordial Hatchlings that spawn
.get 6 Primordial Hatchling |q 12605/1
step
goto 42.3,28.7
.talk 28376
..turnin 12603
..turnin 12605
step
goto 42.1,28.9
.talk 28374
..accept 12607
step
goto 39.3,27.3
.' Use your Mammoth Harness on a Shattertusk Mammoth |use Mammoth Harness##38627
.' Ride the mammoth back to Zootfizzle at [42.1,28.9] |n
.' Use the Hand Over Mammoth ability on your hotbar
.' Deliver the Shattertusk Mammoth |q 12607/1
step
goto 42.1,28.9
.talk 28374
..turnin 12607
step
goto Sholazar Basin,42.3,28.8
.talk 28376
..accept 12614
step
goto 47.0,21.1
.kill Broodmother Slivina |q 12614/1 |tip The best way to kill her is to kite her around the small space while pushing 1 and 4 on your hotbar and making her step on traps Hemet Nesingwary puts down.
step
goto Sholazar Basin,42.3,28.8
.talk 28376
..turnin 12614
.' Earn The Snows of Northrend achievement! |achieve 938
step
'Congratulations! You've earned the _The Snows of Northrend_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Of Blood And Anguish",[[
description Complete the Ring of Blood and Amphitheater of Anguish.
condition end achieved(1576)
step
goto Nagrand,42.8,20.7
.talk 18471
..accept 9962
step
goto 43.6,20.4
.from Brokentoe##18398
.' Defeat Brokentoe |q 9962/1
step
goto 42.8,20.7
.talk 22893
..turnin 9962
step
goto 42.8,20.7
.talk 18471
..accept 9967
step
goto 43.6,20.4
.from Murkblood Twin##18399+
.' Defeat The Blue Brothers |q 9967/1
step
goto 42.8,20.7
.talk 22893
..turnin 9967
step
goto 42.8,20.7
.talk 18471
..accept 9970
step
goto 43.6,20.4
.from Rokdar the Sundered Lord##18400
.' Defeat Rokdar the Sundered Lord |q 9970/1
step
goto 42.8,20.7
.talk 22893
..turnin 9970
step
goto 42.8,20.7
.talk 18471
..accept 9972
step
goto 43.6,20.4
.from Skra'gath##18401
.' Defeat Skra'gath |q 9972/1
step
goto 42.8,20.7
.talk 22893
..turnin 9972
step
goto 42.8,20.7
.talk 18471
..accept 9973
step
goto 43.6,20.4
.from Warmaul Champion##18402
.' Defeat the Warmaul Champion |q 9973/1
step
goto 42.8,20.7
.talk 22893
..turnin 9973
step
goto 42.8,20.7
.talk 18471
..accept 9977
step
goto 43.6,20.4
.from Mogor##18069
.' Defeat Mogor, Hero of the Warmaul |q 9973/1
step
goto 42.8,20.7
.talk 22893
..turnin 9977
.' Earn the Of Blood and Anguish achievement! |achieve 1576
step
goto Zul'Drak,48.4,56.4
.talk 30007
..accept 12954
step
goto 47.9,56.9
.from Yggdras##30014
.' Defeat Yggdras |q 12954/1
step
goto 48.5,56.4
.talk 30009
..turnin 12954
step
goto 48.4,56.4
.talk 30007
..accept 12933
step
goto 47.9,56.9
.from Stinkbeard##30017
.' Defeat Stinkbeard |q 12933/1
step
goto 48.5,56.4
.talk 30009
..turnin 12933
step
goto 48.4,56.4
.talk 30007
..accept 12934
step
goto 47.9,56.9
.' You will have to fight one of these 4 mobs:
.from Az'Barin, Prince of the Gust##30026
.from Duke Singen##30019
.from Erathius, King of Dirt##30025
.from Gargoral the Water Lord##30024
.' Defeat an Elemental Lord |q 12934/1
step
goto 48.5,56.4
.talk 30009
..turnin 12934
step
goto 48.4,56.4
.talk 30007
..accept 12935
step
goto 47.9,56.9
.from Orinoko Tuskbreaker##30020
.' Defeat Orinoko Tuskbreaker |q 12935/1
step
goto 48.5,56.4
.talk 30009
..turnin 12935
step
goto 48.4,56.4
.talk 30007
..accept 12936
step
goto 47.9,56.9
.from Korrak the Bloodrager##30023
.' Defeat Korrak the Bloodrager |q 12936/1
step
goto 48.5,56.4
.talk 30009
..turnin 12936
step
goto 48.4,56.4
.talk 30007
..accept 12948
step
goto 47.9,56.9
.from Enormos##30021
.from Vladof the Butcher##30022
.' Defeat Vladof the Butcher |q 12948/1
step
goto 48.5,56.4
.talk 30009
..turnin 12948
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\The First Rule of Ring of Blood is You Don't Talk About Ring of Blood",[[
description Complete the Ring of Blood, Amphitheater of Anguish and Crucible of Carnage.
condition end achieved(4958)
step
goto Nagrand,42.8,20.7
.talk 18471
..accept 9962
step
goto 43.6,20.4
.from Brokentoe##18398
.' Defeat Brokentoe |q 9962/1
step
goto 42.8,20.7
.talk 22893
..turnin 9962
step
goto 42.8,20.7
.talk 18471
..accept 9967
step
goto 43.6,20.4
.from Murkblood Twin##18399+
.' Defeat The Blue Brothers |q 9967/1
step
goto 42.8,20.7
.talk 22893
..turnin 9967
step
goto 42.8,20.7
.talk 18471
..accept 9970
step
goto 43.6,20.4
.from Rokdar the Sundered Lord##18400
.' Defeat Rokdar the Sundered Lord |q 9970/1
step
goto 42.8,20.7
.talk 22893
..turnin 9970
step
goto 42.8,20.7
.talk 18471
..accept 9972
step
goto 43.6,20.4
.from Skra'gath##18401
.' Defeat Skra'gath |q 9972/1
step
goto 42.8,20.7
.talk 22893
..turnin 9972
step
goto 42.8,20.7
.talk 18471
..accept 9973
step
goto 43.6,20.4
.from Warmaul Champion##18402
.' Defeat the Warmaul Champion |q 9973/1
step
goto 42.8,20.7
.talk 22893
..turnin 9973
step
goto 42.8,20.7
.talk 18471
..accept 9977
step
goto 43.6,20.4
.from Mogor##18069
.' Defeat Mogor, Hero of the Warmaul |q 9973/1
step
goto 42.8,20.7
.talk 22893
..turnin 9977
.' Earn the Of Blood and Anguish achievement! |achieve 1576
step
goto Zul'Drak,48.4,56.4
.talk 30007
..accept 12954
step
goto 47.9,56.9
.from Yggdras##30014
.' Defeat Yggdras |q 12954/1
step
goto 48.5,56.4
.talk 30009
..turnin 12954
step
goto 48.4,56.4
.talk 30007
..accept 12933
step
goto 47.9,56.9
.from Stinkbeard##30017
.' Defeat Stinkbeard |q 12933/1
step
goto 48.5,56.4
.talk 30009
..turnin 12933
step
goto 48.4,56.4
.talk 30007
..accept 12934
step
goto 47.9,56.9
.' You will have to fight one of these 4 mobs:
.from Az'Barin, Prince of the Gust##30026
.from Duke Singen##30019
.from Erathius, King of Dirt##30025
.from Gargoral the Water Lord##30024
.' Defeat an Elemental Lord |q 12934/1
step
goto 48.5,56.4
.talk 30009
..turnin 12934
step
goto 48.4,56.4
.talk 30007
..accept 12935
step
goto 47.9,56.9
.from Orinoko Tuskbreaker##30020
.' Defeat Orinoko Tuskbreaker |q 12935/1
step
goto 48.5,56.4
.talk 30009
..turnin 12935
step
goto 48.4,56.4
.talk 30007
..accept 12936
step
goto 47.9,56.9
.from Korrak the Bloodrager##30023
.' Defeat Korrak the Bloodrager |q 12936/1
step
goto 48.5,56.4
.talk 30009
..turnin 12936
step
goto 48.4,56.4
.talk 30007
..accept 12948
step
goto 47.9,56.9
.from Enormos##30021
.from Vladof the Butcher##30022
.' Defeat Vladof the Butcher |q 12948/1
step
goto 48.5,56.4
.talk 30009
..turnin 12948
step
'You will need a group for these quests, or you can complete them alone at level 90
|confirm
step
goto Twilight Highlands,50.7,58.3
.talk 46935
..' You will only be able to accept one of these quests
..accept 27863 |or
..accept 27861 |or
..accept 27862 |or
step
goto 51.4,57.8
.from Hurp'derp##46944
.' Defeat Hurp'derp |q 27863/1 |only if havequest(27863) or completedq(27863)
.' Defeat Hurp'derp |q 27861/1 |only if havequest(27861) or completedq(27861)
.' Defeat Hurp'derp |q 27862/1 |only if havequest(27862) or completedq(27862)
step
'Click the Complete Quest box that appears under your minimap
..turnin 27863 |only if havequest(27863) or completedq(27863)
..turnin 27861 |only if havequest(27861) or completedq(27861)
..turnin 27862 |only if havequest(27862) or completedq(27862)
step
goto 50.7,58.3
.talk 46935
..accept 27864
step
goto 51.4,57.8
.from Sully Kneecapper##46946
.' Defeat Sully Kneecapper |q 27865/1
step
'Click the Complete Quest box that appears under your minimap
..turnin 27864
step
goto 50.7,58.3
.talk 46935
..accept 27866
step
goto 51.4,57.8
.from Cadaver Collage##46947
.' Defeat Cadaver Collage |q 27866/1
step
'Click the Complete Quest box that appears under your minimap
..turnin 27866
step
goto 50.7,58.3
.talk 46935
..accept 27867
step
goto 51.4,57.8
.from Lord Geoffery Tulvan##46948
.' Defeat Lord Geoffery Tulvan |q 27867/1
step
'Click the Complete Quest box that appears under your minimap
..turnin 27867
step
goto 50.7,58.3
.talk 46935
..accept 27868
step
goto 51.4,57.8
.from Emberscar the Devourer##46949
.' Defeat Emberscar the Devourer |q 27868/1
step
'Click the Complete Quest box that appears under your minimap
..turnin 27868
.' Earn the Round Three. Fight! achievement! |achieve 4960
.' Earn the The First Rule of Ring of Blood is You Don't Talk About Ring of Blood achievement! |achieve 4958
step
'Congratulations!  You've earned the The First Rule of Ring of Blood is You Don't Talk About Ring of Blood achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\A Simple Re-Quest",[[
description Complete a daily quest every day for five consecutive days.
condition end achieved(31)
step
'To earn this achievement, you must complete a daily quests every day for five consecutive days.
'The easiest achievement to do for this achievement is Overstock in the Storm Peaks |tip For this quest, you must be at least level 77.
|confirm
step
goto The Storm Peaks,40.9,85.3
.talk 29428
..accept 12833
step
goto 43.1,81.2
.' Use your Improved Land Mines to place mines on the ground close to each other|use Improved Land Mines##40676|tip Garm Invaders and Snowblind Followers will run over the mines and die.
.kill 12 Garm Invader |q 12833/1
step
goto 40.9,85.3
.talk 29428
..turnin 12833
step
'Complete a daily quest every day for 5 consecutive days. |achieve 31/1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Quests Completed Achievements",[[
description This section will cover the achievements
description 50, 100, 250, 500, 1000, 1500, 2000, 3000
description Quests Completed.
condition end achieved(978)
step
.' In order to complete these achievements, you simply have to complete regular quests. You can work through Zygor's Leveling and Loremaster guides to obtain all of these achievements.
.' Daily and Repeatable quests do not count towards the achievements.
|confirm
step
.' 50 Quests Completed |achieve 503
.' 100 Quests Completed |achieve 504
.' 250 Quests Completed |achieve 505
.' 500 Quests Completed |achieve 506
.' 1,000 Quests Completed |achieve 507
.' 1,500 Quests Completed |achieve 508
.' 2,000 Quests Completed |achieve 32
.' 3,000 Quests Completed |achieve 978 |tip Once you earn this achievement, you earn the title "The Seeker".
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Daily Quests Completed Achievements",[[
description This section will cover the achievements
description 5, 50, 200, 500, 1000, and 25000 Daily
description Quests Completed.
condition end achieved(5751)
step
.' In order to complete these achievements, you simply have to complete daily quests. You can work through Zygor's Dailies guides to obtain all of these achievements.
.' Regular and Repeatable quests will not count towards these achievements.
|confirm
step
.' 5 Daily Quests Completed |achieve 973
.' 50 Daily Quests Completed |achieve 974
.' 200 Daily Quests Completed |achieve 975
.' 500 Daily Quests Completed |achieve 976
.' 1,000 Daily Quests Completed |achieve 977
.' 2,500 Daily Quests Completed |achieve 5751
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Eastern Kingdoms\\Full Caravan",[[
description Recruit all 8 characters into Fiona's travelling party in Eastern Plaguelands.
condition end achieved(5442)
step
goto Eastern Plaguelands,9.0,66.3
.talk 45417
..accept 27367
..accept 27370
step
goto 4.2,36.1
.talk 45428
..turnin 27367
..accept 27368
step
goto 4.7,35.6 |n
.' Enter the tunnel |goto 4.7,35.6,0.5 |noway |c
step
goto 5.1,33.4
.from Crypt Stalker##8555+, Crypt Horror##8557+ |tip They are big insects inside this tunnel.
.get 8 Crypt Bile |q 27368/1
step
goto 4.7,35.6 |n
.' Leave the tunnel |goto 4.7,35.6,0.5 |noway |c
step
goto Eastern Plaguelands,4.1,36.0
.talk 45428
..turnin 27368
..accept 27369
step
goto 3.4,38.0
.click Banshee's Bell##9889+ |tip They are located right along the edge of the water
.get 10 Banshee's Bells |q 27369/1
.' More Banshee's Bells can be found along the Thondroril River up to 8.9,55.7
step
goto 9.0,66.5
.talk 45417
..turnin 27369
.' Recruit Gidwin Goldbraids to the Caravan |achieve 5442/2
step
goto 18.4,74.8
.talk 45429
..turnin 27370
..accept 27371
step
goto 18.6,76.9
.kill 5 Death's Step Miscreation##45444+ |q 27371/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27371
..accept 27372
step
goto 17.2,68.7
.from Plaguehound Runt##8596+ |tip They share spawn locations with the Carrion Grubs.  So, if you are having trouble find Plaguehound Runts, kill Carrion Grubs and more should spawn.
.get 10 Plaguehound Blood |q 27372/1
.' More Plaguehound Runts can be found around 12.4,70.0
step
goto 9.0,66.5
.talk 45417
..turnin 27372
..accept 27373
.' Recruit Tarenar Sunstrike to the Caravan |achieve 5442/3
step
goto Eastern Plaguelands,9.0,66.4
.talk 45400
'Ride the Caravan to the next destination
.goal Ride Fiona's Caravan |q 27373/1
step
goto 34.8,69.1
.talk 45417
..turnin 27373
step
goto 35.2,68.8
.talk 45429
..accept 27381
step
goto 35.8,68.7
.talk 45451  |tip He's at the top of this tower
'Ask him if he wants to join the Caravan
.goal Find a traveling companion |q 27381/1
..accept 27382
step
goto 35.2,68.8
.talk 45429
..turnin 27381
step
goto 37.5,71.3
.kill 13 Plaguebat |q 27382/1
step
goto 35.8,68.7
.talk 45451 |tip He's at the top of this tower
..turnin 27382
step
goto 35.0,68.2
.talk 45500
..accept 27432
step
goto 35.5,68.9
.talk 11063
..accept 27383
step
goto 24.2,78.3 |n
.' Enter the crypt |goto 24.2,78.3,0.5 |noway |c
step
'Go down to the bottom of the crypt
.from Zaeldarr the Outcast##12250+
.get Zaeldarr's Head |q 27432/1
step
goto 32.5,83.8
.talk 10926
..turnin 27383
..accept 27384
..accept 27392
step
goto 34.0,85.3
.' Click on Pamela's Doll's Head
.collect Pamela's Doll's Head##12886
step
goto 35.4,85.3
'Click on Pamela's Doll's Right Side
.collect Pamela's Doll's Right Side##12888
step
goto 35.5,85.5
'Click on Pamela's Doll's Left Side
.collect Pamela's Doll's Left Side##12887
step
'Use Pamela's Doll's Head |use Pamela's Doll's Head##12886
.get Pamel's Doll##12885 |q 27384/1
step
goto Eastern Plaguelands,40.1,83.7
.from The Lone Hunter##45450
.get Joseph's Hunting Blade |q 27392/1
step
goto 32.5,83.7
..turnin 27384
..turnin 27392
..accept 27385
step
goto 35.0,68.3
.talk 45500
..turnin 27432
step
goto 35.5,68.9
.talk 11063
..turnin 27385
..accept 27386
step
goto 35.2,68.1
.talk 10667
..turnin 27386
..accept 27389
..accept 27387
..accept 27388
step
goto 39.8,72.3
'Click on the Shattered Sword of Marduk
.get Shattered Sword of Marduk |q 27387/2
step
goto 37.4,60.4
'Click on the Skull of Horgus
.get Skull of Horgus |q 27387/1
step
goto 34.0,48.8
.from Scourge Champion##8529+
.collect 5 Fetid Skull##13157 |n
'Use the Mystic Crystal |use Mystic Crystal##13156
.get 5 Resonating Skull |q 27389/1
step
goto Eastern Plaguelands,22.2,68.2
'Click on Redpath's Shield |tip Inside the house
.get Redpath's Shield |q 27388/3
step
goto 22.3,68.3
'Click on Davil's Libram |tip Upstairs in the house, inside the fireplace
.get Davil's Libram |q 27388/2
step
goto 35.5,68.8
.talk 11063
'Ask if he has the Annals of Darrowshire
.get Extended Annals of Darrowshire |q 27388/1
step
goto 35.1,68.1
.talk 10667
..turnin 27387
..turnin 27388
..turnin 27389
..accept 27390
step
goto 34.8,83.5
'Use the Relic Buncle |use Relic Bundle##15209
'Kill enemies at Darrowshire's entrance
'After a while kill Joseph Repath
'Go to the town square
.talk 10936
.goal Accept Redpath's Forgiveness |q 27390/1
step
goto 32.5,83.7
.talk 10926
..turnin 27390
.'Recruit Pamela Redpath to the Caravan |achieve 5442/5
step
goto Eastern Plaguelands,34.8,69.1
.talk 45417
..accept 27448
step
goto 34.9,69.3
.talk 45400
'Ride the Caravan to the next destination
.goal Ride in Fiona's Caravan |q 27448/1
step
goto 52.9,53.2
.talk 45417
..turnin 27448
.' Recruit Argus Highbeacon to the Caravan |achieve 5442/4
..accept 27455
step
goto 52.8,51.5
.talk 45574
..accept 27449
..kill 3 Mossflayer Rogue |q 27449/1
..turnin 27449
.' Recruit Vex'tul to the Caravan |achieve 5442/6
step
goto Eastern Plaguelands,74.3,53.4
.talk 45431
..turnin 27455
..accept 27463
step
goto 75.8,52.0
.talk 11034
..turnin 27463
..accept 27464
step
goto 77.2,50.8 |n
.' Enter the crypt |goto 77.2,50.8,0.5 |noway |c
step
'Go down to the bottom floor
'Use the Argent Scroll |use Argent Scroll##61309
'Kill all the enemies that attack you
.goal Trial of the Crypt completed |q 27464/1
step
goto 75.8,52.0
.talk 11034
..turnin 27464
..accept 27465
step
goto 77.3,34.7
.kill 16 Noxious Glade Scourge |q 27465/1
.kill 8 Noxious Glade Cultists |q 27465/2
step
goto Eastern Plaguelands,75.8,52.1
.talk 11034
..turnin 27465
step
goto 73.9,52.0
.talk 16134
..accept 27456
step
goto 71.9,61.0
.from Carrion Grub##8603+
.get 15 Slab of Carrion Worm Meat |q 27456/1
step
goto 73.9,52.0
.talk 16134
..turnin 27456
..accept 27457
step
goto Eastern Plaguelands,61.5,42.9
.talk 45417
..turnin 27466
..turnin 27457
.' Recruit Rimblat Earthshatter to the Caravan |achieve 5442/7
step
goto 61.5,43.2
.talk 45729
..accept 27487
step
goto 60.6,35.5
.kill 10 Ix'lar's minion |q 27487/2
.kill Ix'lar the Underlord |q 27487/1 |tip He patrols around ths area
step
goto 61.4,42.8
.talk 45417
..turnin 27487
step
goto 61.5,43.2
.talk 45729
..accept 27488
step
goto 65.5,24.5
'Click on Gidwin's Prayer Book
.get Gidwin's Prayer Book |q 27488/1
step
goto 61.5,43.3
.talk 45729
..turnin 27488
..accept 27489
step
goto 61.5,42.6
.talk 45400
'Ride Fiona's Caravan to the next destination
.goal Ride Fiona's Caravan to Northpass Tower |q 27489/1
step
goto 50.5,20.3
.talk 45729
..turnin 27489
..accept 27522
step
goto 55.1,17.1
..kill 6 Scourge Siege Engineer beaten |q 27522/1
..goal Discover Gidwin's captor |q 27522/3
..goal Discover Gidwin's location |q 27522/2
step
goto 50.5,20.3
.talk 45417
..turnin 27522
..accept 27524
step
goto 27.5,21.2
.talk 45729
..turnin 27524
..accept 27525
step
goto 29.8,20.0
.kill Karthis Darkrune |q 27525/2
step
goto 25.3,20.0
.kill Omasum Blighthoof |q 27525/1
.from Omasum Blighthoof##45867+
.collect The Baroness' Missive##61378
'Use The Baroness' Missive |use The Baroness' Missive##61378
..accept 27551
step
goto 27.4,21.3
.talk 45729
..turnin 27525
..turnin 27551
..accept 27526
step
goto 29.3,26.3 |n
.' Enter the ziggurat |goto 29.3,26.3 |noway |c
.goal Find Gidwin Goldbraids |q 27526/1
step
goto 28.3,25.9
.talk 45730
..turnin 27526
..accept 27527
step
'Use Gidwin's Hearthstone to go to Lightshope Chapel |use Gidwin's Hearthstone##61379 |goto 75.6,52.5,0.5 |noway |c
step
goto 73.8,52.1
.talk 45417
..turnin 27527
step
goto 73.8,52.3
.talk 46022
'Ask him to join the Caravan
.' Recruit Beezil Linkspanner to the Caravan |achieve 5442/8
.' Earn the Full Caravan achievement! |achieve 5442
step
'Congratulations! You've earned the Full Caravan achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Eastern Kingdoms\\Ready, Set, Goat!",[[
description Using the Billy Goat Blaster or the Billy Goat Blaster DX, blast 12 Billy Goats in under 1 minute.
condition end achieved(5444)
step
goto Badlands,64.2,38.0
.talk 46653
..accept 27775
only if not completedq(27776)
step
goto 59.2,32.4
.from Dustbelcher Instructor##46693+
.get Instructor's Rod |q 27775/1
only if not completedq(27776)
step
goto 64.2,38.0
.talk 46653
..turnin 27775
..accept 27776
only if not completedq(27776)
step
goto 64.6,37.1
.' Use your Billy Goat Blaster on Billy Goats |use Billy Goat Blaster##62397 |tip They are rams all around the outskirts of this town.  You can stay mounted for this.
.' Nudge 12 Billy Goats |q 27776/1
.' Earn the Ready, Set, Goat! achievement! |achieve 5444
only if not completedq(27776)
step
goto 64.2,37.5
.talk 48067
.buy 1 Billy Goat Blaster DX##65898
only if completedq(27776)
step
goto 64.2,37.5
.' Use your Billy Goat Blaster DX on Billy Goats |use Billy Goat Blaster DX##65898 |tip They are rams all around the outskirts of this town.  You can stay mounted for this.
.' Blast 12 Billy Goats in under 1 minute
.' Earn the Ready, Set, Goat! achievement! |achieve 5444
only if completedq(27776)
step
Congratulations! You've earned the Ready, Set, Goat! achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Kalimdor\\Glutton for Fiery Punishment",[[
description In Archmage Xylem's Trial of Fire in Azshara, gain 10 stacks of Fire Dancing without taking damage.
condition end achieved(5448)
step
goto Azshara,33.4,23.5
.' You have to stand on the red fire runes without getting hit by fire 10 times in a row. |tip You can see which runes will shoot fire up because they will have a little flame in their center a few seconds before the fire shoots up.  You need to run to a fire rune that doesn't have the little flame in the center.  You can stay mounted for this, you can even fly over the fire to get onto a circle without fire.  Follow the Blood Elf, he always runs to a safe spot.
.' Gain 10 stacks of Fire Dancing without taking damage
.' Earn the Glutton for Fiery Punishment achievement! |achieve 5448
step
'Congratulations! You've earned the Glutton for Fiery Punishment achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Kalimdor\\Glutton for Icy Punishment",[[
description In Archmage Xylem's Trial of Frost in Azshara, gain 20 stacks of Essence of Ice without taking damage.
condition end achieved(5546)
step
goto Azshara,62.0,20.5
.' Run around on top of the mountain and get next to the floating white orbs. |tip Don't step on the snowy ground and try not to let the blue mist hit you, if you can.  It will help to dismiss your pet, if you have one.  Take your time and stay on the outskirts, don't go in the middle at all.  You can be mounted for this. If you're about to get hit by the ice, fly up.
.' Gain 20 stacks of Essence of Ice without taking damage
.' Earn the Glutton for Icy Punishment achievement! |achieve 5546
step
'Congratulations! You've earned the Glutton for Icy Punishment achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Kalimdor\\Glutton for Shadowy Punishment",[[
description In Archmage Xylem's Trial of Shadow in Azshara, trap 20 Weeping Souls without taking damage.
condition end achieved(5547)
step
goto Azshara,31.0,27.5
.' Click the Touch to Begin crystal |tip It's a big floating purple crystal.
.' You have to lure 20 Weeping Souls into the purple shadow runes on the ground without getting hit. |tip A shadow will shoot out of you and you can see it on the ground heading to one of the portals.  Position yourself so that the Weeping Souls that come out of the portals have to walk over the shadow runes on the ground in order to get to you.  If you're on a flying mount, you can fly up to avoid the Weeping Souls.
.' IMMEDIATELY try to mount up |tip If you don't make it, you'll have to do this the hard way!
.' Trap 20 Weeping Souls of without taking damage
.' Earn the Glutton for Shadowy Punishment achievement!|achieve 5547
step
'Congratulations! You've earned the Glutton for Shadowy Punishment achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Kalimdor\\E'ko Madness",[[
description Obtain E'ko from creatures in Winterspring.
condition end achieved(5443)
step
goto Winterspring,57.7,39.6
.from Shardtooth Mauler##7443+
.' Obtain E'ko from Shardtooth Bears |achieve 5443/3
step
goto 46.5,18.4
.from Frostsaber##7431+, Frostsaber Huntress##7433+, Frostsaber Pride Watcher##7434+, Young Frostsaber##7430+, Shy-Rotam##10737
.' Obtain E'ko from Frostsabers |achieve 5443/5
step
goto 58.2,21.8
.from Chillwind Chimaera##7448+
.' Obtain E'ko from Chillwind Chimaera |achieve 5443/6
step
goto 66.5,47.3
.from Winterfall Shaman##7439+, Winterfall Ursa##7438+
.' Obtain E'ko from Winterspring Furbolgs |achieve 5443/1
step
goto 66.1,55.9
.from Ice Thistle Yeti##7458+
.' Obtain E'ko from Ice Thistle Yeti |achieve 5443/7
step
goto 61.3,80.1
.from Frostmaul Tumbler##50258+
.' Obtain E'ko from Frostmaul Giants |achieve 5443/4
step
goto 57.5,75.7
.from Berserk Owlbeast##7454+, Crazed Owlbeast##7452+
.' Obtain E'ko from Wildkin |achieve 5443/2
.' Earn the E'ko Madness achievement! |achieve 5443
step
'Congratulations! You've earned the E'ko Madness achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Kalimdor\\Ghosts in the Dark",[[
description Discover the secret buried beneath the Maw of the Void in Darkshore.
condition end achieved(5453)
step
goto Darkshore,52.4,31.8 |n
'Jump down into the water |goto 51.7,31.1,0.5 |noway |c
step
goto 52.4,31.0
.from Telarius Voidstrider##48764
.collect Writings of the Dark Herald##64450
'Use Writings of the Dark Herald |use Writings of the Dark Herald##64450
..accept 28529
step
goto 51.7,31.1
.talk 48726
'Say you'd like to leave this place |goto 53.3,36.2,0.5 |noway |c
step
goto Darkshore,50.7,19.7
.talk 32971
..turnin 28529
.' Discover the secret buried beneath the Maw of the Void in Darkshore |achieve 5453
step
'Congratulations, you have earned the achievement Ghosts in the Dark!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Outland\\Blade's Edge Bomberman",[[
description Complete the Bomb Them Again! quest in under 2 minutes 15 seconds while not in a group.
condition end achieved(1276)
step
goto Blade's Edge Mountains,28.8,57.5
.talk 23233
..accept 11025
step
goto 29.5,63.1
.from Apexis Flayer##22175+, Shard-Hide Boar##22180+, Gan'arg Analyzer##23385+
.get 5 Apexis Shard |q 11025/1
step
goto 28.8,57.5
.talk 23233
..turnin 11025
..accept 11058
step
goto 28.4,57.7
.talk 23316
..accept 11030
step
goto 29.5,63.1
.from Mo'arg Extractor##22304+, Apexis Flayer##22175+, Shard-Hide Boar##22180+, Gan'arg Analyzer##23385+
.collect 10 Apexis Shard##32569 |q 11025
step
goto 32.8,40.5
.' Click a Fel Crystalforge |tip It looks like a metal machine with green bubbling floating out of it quickly.
..' Purchase 1 Unstable Flask of the Beast for the cost of 10 Apexis Shards
.get Unstable Flask of the Beast |q 11030/1
step
goto 28.4,57.6
.talk 23316
..turnin 11030
step
goto 28.8,57.5
.talk 23233
..accept 11062
step
goto 27.5,52.7
.talk 23334
..turnin 11062
step
goto 27.6,52.9
.talk 23120
..accept 11010 |only !Druid
..accept 11102 |only Druid
step
goto 33.3,44.0
.' Use your Skyguard Bombs on Fel Cannonballs Stacks |use Skyguard Bombs##32456 |tip They look like piles of gray stones on the ground around this area.
.' Destroy 15 Fel Cannonball Stacks |q 11010/1
only !Druid
step
goto 33.3,44.0
.' Use your Skyguard Bombs on Fel Cannonballs Stacks |use Skyguard Bombs##32456 |tip They look like piles of gray stones on the ground around this area.
.' Destroy 15 Fel Cannonball Stacks |q 11102/1
only Druid
step
goto 27.6,52.9
.talk 23120
..turnin 11010 |only !Druid
..turnin 11102 |only Druid
step
goto 27.6,52.9
.talk 23120
..' Make sure you're not in a group |tip It is highly advised that you turn on the auto turn in quests feature of this add-on since time is a huge factor to complete this achievement and also track this achievement to see the timer.
..accept 11023
step
goto 37.7,38.2
.' HURRY!  HURRY! |tip You have to complete the Bomb Them Again! quest in under 2 minutes 15 seconds while not in a group
.' Use the Skyguard Bombs to destroy the Fel Cannonball Stacks |use Skyguard Bombs##32456 |tip Bomb your way from here toward the Skyguard Outpost and remember to KEEP MOVING!
.' Destroy 15 Fel Cannonball Stacks |q 11010/1 |tip They look like stacks of cannon balls next to the Fel Cannons, they have red markers over them
step
goto 27.6,52.9
.' HURRY!  HURRY! |tip Return here as fast as possible! If you don't make it you can abandon the quest and try it again.
.talk 23120
..turnin 11023
.' Earn the Blade's Edge Bomberman achievement! |achieve 1276
step
'Congratulations! You've earned the Blade's Edge Bomberman achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Outland\\Bombs Away",[[
description Complete the Fires Over Skettis quest in under 2 minutes 15 seconds while not in a group.
condition end achieved(1275)
step
goto Shattrath City,64.2,42.3
.talk 23449
..accept 11098
step
goto Terokkar Forest,64.5,66.7
.talk 23048
..turnin 11098
step
goto Terokkar Forest,64.5,66.7
.talk 23048
..' Make sure you're not in a group |tip It is highly advised that you turn on the auto turn in quests feature of this add-on since time is a huge factor to complete this achievement and also track this achievement to see the timer.
..accept 11008
step
goto 74.5,88.3
.' HURRY! HURRY! |tip You have to complete the Bomb Them Again! quest in under 2 minutes 15 seconds while not in a group
.' Use your Skyguard Blasting Charges to destroy the Monstrous Kaliri Eggs |use Skyguard Blasting Charges##32406 |tip They look like big white egg cocoons all over the tops of buildings in Skettis.  Bomb your way to here and fly toward the Blackwind Landing and remember to KEEP MOVING and hit as many eggs as you can!
.' Destroy 20 Monstrous Kaliri Egg |q 11008/1
step
goto 64.5,66.7
.' HURRY! HURRY! |tip Return here as fast as possible! If you don't make it you can abandon the quest and try it again.
.talk 23048
..turnin 11008
.' Earn the Bombs Away achievement! |achieve 1275
step
'Congratulations! You've earned the Bombs Away achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Honorary Frenzyheart",[[
description Complete the 8 daily quests for the Frenzyheart listed below.
condition end achieved(961)
step
.' In order to complete this achievement, you will have to complete all of the 8 daily quests that the Frenzyheart have to offer.  In order to gain access to those daily quests, you will need to complete a series of pre-quests.
step
.' The 8 Dailies are as follows:
.' Complete the "Chicken Party!" daily |achieve 961/1
.' Complete the "Tools of War" daily |achieve 961/2
.' Complete "The Heartblood's Strength" daily |achieve 961/3
.' Complete the "Rejek: First Blood" daily |achieve 961/4
.' Complete the "Kartak's Rampage" daily |achieve 961/5
.' Complete the "Secret Strength of the Frenzyheart" daily |achieve 961/6
.' Complete the "Strength of the Tempest" daily |achieve 961/7
.' Complete "A Hero's Headgear" daily |achieve 961/8
|confirm
step
#include FrenzyheartPreQuests
step
#include FrenzyheartDailies
step
.' After you have completed the 8 daily quests that the Frenzyheart Tribe have to offer at least once, you will have completed the "Honorary Frenzyheart" achievement.  It will take several days to earn this achievement, so try to be patient.
.' Earn Honorary Frenzyheart |achieve 961
step
'Congratulations! You've earned the Honorary Frenzyheart achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Savior of the Oracles",[[
description Complete the 8 daily quests for the Oracles listed below.
condition end achieved(962)
step
.' In order to complete this achievement, you will have to complete all of the 8 daily that the Oracles have to offer.  In order to gain access to those daily quests, you will need to complete a series of pre-quests.
step
.' The 8 Dailies are as follows:
.' Complete the "Appeasing the Great Rain Stone" daily |achieve 962/1
.' Complete the "Will of the Titans" daily |achieve 962/2
.' Complete the "Mastery of the Crystals" daily |achieve 962/3
.' Complete the "Power of the Great Ones" daily |achieve 962/4
.' Complete the "Song of Reflection" daily |achieve 962/5
.' Complete the "Song of Wind and Water" daily |achieve 962/6
.' Complete "A Cleansing Song" daily |achieve 962/7
.' Complete the "Song of Fecundity" daily |achieve 962/8
|confirm
step
#include OraclePreQuests
step
#include OracleDailies
step
.' After you have completed the 8 daily quests that the Oracles have to offer at least once, you will have completed the "Savior of the Oracles" achievement.  It will take several days to earn this achievement, so try to be patient.
.' Earn Saivor of the Oracles |achieve 962
step
'Congratulations! You've earned the Savior of the Oracles achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Guru of Drakuru",[[
description Complete the main storyline quests involving Drakuru.
condition end achieved(1596)
step
.' In order to complete this achievement, you will have to complete a large series of quests, as well as go through the Instance Drak'tharon Keep.
step
.' There are 2 parts to the Guru of Drakuru Achievement:
.' Cleansing Drak'Tharon |achieve 1596/1
.' Betrayal |achieve 1596/2
step
#include CleansingDrakTharon
step
.' Earn Cleansing Drak'tharon |achieve 1596/1
step
#include BetrayalDrakuru
step
goto Zul'Drak,14.1,73.8
.talk 28518
..turnin 12713
step
.' Earn Betrayal |achieve 1596/2
step
.' Earn Guru of Drakuru |achieve 1596
step
'Congratulations! You've earned the Guru of Drakuru achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Rapid Defense",[[
description Complete the Defending Wyrmrest Temple quest in under 3 minutes while not in a group.
condition end achieved(1277)
step
.' For this achievement, you will want to go as fast as you can.  If you track the achievement, a timer will automatically appear for you.  You will want to use your sprint ability as often as possible.
step
goto Dragonblight,59.2,54.3
.talk 27575
..turnin 12435
..accept 12372
step
goto 58.3,55.2
.talk 27629
..'Tell him you are ready to get into the fight
.' Fly around Wyrmrest Temple fighting the blue dragons in the sky using your abilities on your hotbar
.kill 3 Azure Dragon|q 12372/1
.kill 5 Azure Drake|q 12372/2
step
'Fly southwest to 55.1,66.4|goto 55.1,66.4
.' Fly into the huge purple swirling column
.' Use your Destabilize Azure Dragonshrine ability|petaction Destabilize Azure Dragonshrine
.' Destabilize the Azure Dragonshrine |q 12372/3
step
goto 58.7,54.5|n
'Click the red arrow to get off the dragon on the middle level of the temple|script VehicleExit()|outvehicle|c
step
goto 59.2,54.3
.talk 27575
..turnin 12372
step
.' Earn Rapid Defense |achieve 1277
step
'Congratulations! You've earned the Rapid Defense achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Mine Sweeper",[[
description Get caught in 10 consecutive land mine explosions in the Sparksocket Minefield without landing.
condition end achieved(1428)
step
goto The Storm Peaks,36.2,86.9
.'  You will see a field of mines.  Use a ground mount and run into them as fast as you can.  There will be a short grace period to find the next mine before the timer runs out.
.' Your goal will be to get "caught" by 10 mines consecutively.
.' Earn the achievement Mine Sweeper |achieve 1428
step
'Congratulations! You've earned the Mine Sweeper achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Veteran of the Wrathgate",[[
description Complete the Dragonblight quests leading up to and including the Return to Angrathar.
author support@zygorguides.com
condition end achieved(547)
step
goto Borean Tundra,82.2,46.4
.talk 26186
..accept 12157
step
goto Dragonblight,28.8,56.2
.talk 27060
..turnin 12157
..accept 12171
step
goto 29.2,55.3
.' She is the Flight Path Master
.talk 26881
..turnin 12171
..accept 12174
step
goto 78.61,48.2
.talk 27136
..turnin 12174
..accept 12235
step
goto 77.1,50.1
.talk 27317
..turnin 12235
..accept 12237
step
'Fly to 83.6,48.8|goto 83.6,48.8
.' Use your Rescue Villager ability on your hotbar on Helpless Wintergarde Villagers on the ground around this area|petaction Rescue Villager
.' Fly them back to Gryphon Commander Urik at [77.1,50.1]|n|petaction Soar
.' Use your Drop Off Villager ability on your hotbar|petaction Drop Off Villager
.' Rescue 10 Helpless Villagers |q 12237/1
step
'Click the red arrow button on your hotbar to get off the gryphon|script VehicleExit()|outvehicle
step
goto 77.1,50.1
.talk 27317
..turnin 12237
..accept 12251
step
goto 78.61,48.2
.talk 27136
..turnin 12251
..accept 12253
..accept 12275
step
goto 77.8,50.3
.talk 27159
..turnin 12275
..accept 12276
step
goto 79.9,49.7
.' Kill Vengeful Geists next to Trapped Wintergarde Villagers|tip The Trapped Wintergarde Villagers looked like scared villagers getting harrassed by Vengeful Geists around this area and inside buildings.
.' Rescue 6 Trapped Wintergarde Villagers |q 12253/1
step
goto 78.61,48.2
.talk 27136
..turnin 12253
..accept 12309
step
goto 79.1,53.2
.talk 27318
..turnin 12309
..accept 12311
step
'Go inside the crypt to 78.6,52.4|goto 78.6,52.4
.kill Necrolord Amarion##27508 |q 12311/1
.from Necrolord Amarion##27508
.' Click the Flesh-bound Tome|tip The Flesh-bound Tome is a small red book on the floor.
..accept 12312
step
'Go outside the crypt to 79.1,53.2|goto 79.1,53.2
.talk 27318
..turnin 12311
..turnin 12312
..accept 12319
step
goto 78.61,48.2
.talk 27136
..turnin 12319
..accept 12320
step
goto 76.8,47.4
.talk 27316
..turnin 12320
..accept 12321
step
goto 76.8,47.4
.' Watch the dialogue|tip Downstairs in the fort, in front of a jail cell.
.' Hear the Righteous Sermon |q 12321/1
step
goto 78.61,48.2
.talk 27136
..turnin 12321
step
goto 81.5,42.2
.talk 27412
..turnin 12276
..accept 12277
step
goto 80.7,41.3
.' Click the Wintergarde Mine Bomb|tip It looks like a bunch of big dymanite sticks on the ground, next to this wooden stage.
.collect Wintergarde Mine Bomb##37465 |c
step
'Follow the path in the mine to 80.4,44.8|goto 80.4,44.8
.' Use your Wintergarde Mine Bomb in the doorway|use Wintergarde Mine Bomb##37465|tip It's an entrance to the mine.
.' Destroy the Lower Wintergarde Mine Shaft |q 12277/2
step
'Go outside and around to 80.2,45.3|goto 80.2,45.3
.' Use your Wintergarde Mine Bomb in the doorway|use Wintergarde Mine Bomb##37465|tip It's an entrance to the mine.
.' Destroy the Upper Wintergarde Mine Shaft |q 12277/1
step
'Follow the path up into town to 77.8,50.3|goto 77.8,50.3
.talk 27159
..turnin 12277
..accept 12281
step
goto 64.6,27.5
.talk 27843
..'Tell him to fetch Icestorm
.' He will bring Icestorm
.kill Icestorm|n
.' Click Thel'zan's Phylactery that spawns
.get Thel'zan's Phylactery|q 12467/1
step
goto 78.61,48.2
.talk 27136
..turnin 12467
..accept 12472
step
goto 81.2,50.7
.talk 27857
..turnin 12472
..accept 12473
step
'Watch the dialogue
.' Help fight the battle
.' Defeat Thel'zan the Duskbringer |q 12473/1
step
'Go outside the crypt to 78.61,48.2|goto 78.61,48.2
.talk 27136
..turnin 12473
..accept 12474
step
'Follow the path up the mountain to 37.8,23.4|goto 37.8,23.4
.talk 27872
..turnin 12474
..accept 12495
step
goto 57.9,54.2|n
.talk 26443
..'Tell him you want to go to the top of the temple|goto Dragonblight,59.7,53.1,0.1|noway|c
step
goto 59.8,54.7
.talk 26917
..turnin 12495
..accept 12497
step
goto 59.5,53.3
.talk 26949
..turnin 12497
..accept 12498
step
'Use your Ruby Beacon of the Dragon Queen|use Ruby Beacon of the Dragon Queen##38302
.' Click the red dragon to ride it|invehicle
step
'Fly to 57.2,33.1|goto 57.2,33.1
.' Use the abilities on your hotbar
.kill 30 Wastes Scavenger|q 12498/1
step
'Fly to 54.5,31.3|goto 54.5,31.3
.' Use the abilities on your hotbar
.from Thiassi the Lightning Bringer##28018
.' Jump off the dragon|script VehicleExit()
.from Grand Necrolord Antiok##28006
.' Click the Scythe of Antiok
.get Scythe of Antiok|q 12498/2
step
'Use your Ruby Beacon of the Dragon Queen|use Ruby Beacon of the Dragon Queen##38302
.' Click the red dragon to ride it|invehicle
step
'Fly to 59.8,54.7|goto 59.8,54.7
.'Click the red arrow on your hot bar to jump off the dragon|script VehicleExit()
.talk 26917
..turnin 12498
..accept 12499
step
.' After you turn in Return to Angrathar, this achievement should complete.
.' Earn Veteran of the Wrathgate |achieve 547
step
'Congratulations! You've earned the Veteran of the Wrathgate achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\D.E.H.T.A's Little P.I.T.A.",[[
description Complete the D.E.H.T.A. questline in Borean Tundra
condition end achieved(561)
step
goto Borean Tundra 57,44.3
.talk 25809
..accept 11864 |instant
..accept 11866
..accept 11876
step
goto 57.3,44.1
.talk 25810
..accept 11869
step
goto 57,44
.' He walks around the small pond in the middle of the camp
.talk 25812
..accept 11884
step
goto 56.8,44
.talk 25811
..accept 11865
step
goto 53.8,40.6
.' Use your D.E.H.T.A. Trap Smasher while standing next to Trapped Mammoth Calves |use D.E.H.T.A. Trap Smasher##35228 |modelnpc Trapped Mammoth Calf##25850
.' Free 8 Mammoth Calves |q 11876/1
step
goto 53.4,42.7
.kill 10 Loot Crazed Diver##25836 |q 11869/1
.kill Loot Crazed Divers|n
.get 15 Nesingwary Lackey Ear|q 11866/1
step
goto 46.4,40
.' Find and kill "Lunchbox" |kill "Lunchbox" |q 11884/2
.kill Nedar, Lord of Rhinos##25801 |q 11884/1 |tip He walks around this area.  Kill 'Lunchbox' and then Nedar, Lord of Rhinos will jump off.
step
goto 56.2,50.5
.' Stand inside the Caribou Traps on the ground |tip They look like metal spiked traps on the ground.
.' Use your Pile of Fake Furs |use Pile of Fake Furs##35127
.' Trap 8 Nesingwary Trappers |q 11865/1
step
'Make sure you don't have Animal Blood on you. If you do, go for a swim to wash it off, before approaching the druids. |nobuff Ability_Seal
step
goto 57,44.3
.talk 25809
..turnin 11866
..turnin 11876
..accept 11878
step
goto 57.3,44.1
.talk 25810
..turnin 11869
..accept 11870
step
goto 57,44
.' He walks around the small pond in the middle of the camp
.talk 25812
..turnin 11884
step
goto 56.8,44
.talk 25811
..turnin 11865
..accept 11868
step
goto 59.5,30.4
.'Deliver the Orphaned Mammoth Calf to Khu'nok |q 11878/1 |modelnpc Orphaned Mammoth Calf##25861 |tip The calf is slow so don't move too fast or you'll lose it.
.talk 25862
..turnin 11878
..accept 11879
step
'Ride around and find a Wooly Mammoth Bull |n
.' Click it to ride it |invehicle
step
goto 53.7,23.9
.' Use the skills on your mammoth action bar to do the following:
.from Kaw the Mammoth Destroyer##25802
.click Kaw's War Halberd##7687
.get Kaw's War Halberd |q 11879/1
step
goto 57,44.3
.talk 25809
..turnin 11879
step
goto 57.3,56.5
.kill Karen "I Don't Caribou" the Culler##25803 |q 11868/1
step
goto 57.8,55.1
.talk 25838
..turnin 11870
..accept 11871
step
goto 59.1,55.9
.kill Northsea Thug##25843+ |n
.click Shipment of Animal Parts##7678
.get 12 Shipment of Animal Parts|q 11871/1
step
goto 57.8,55.1
.talk 25838
..turnin 11871
..accept 11872
step
goto 61.5,66.5
.kill Clam Master K##25800 |q 11872/1
step
goto 57.3,44.1
.talk 25810
..turnin 11872
step
goto 57.0,44.2
.talk 25809
..accept 11892
step
goto 50.0,41.4
.' Use the Cenarion Horn in your bags to help you fight Harold Lane |use Cenarion Horn##35293
.kill Harold Lane##25804 |q 11892/1
step
goto 57.0,44.2
.talk 25809
..turnin 11892
|achieve 561
step
'Congratulations, you have obtained the _D.E.T.H.A's Little P.I.T.A._ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Cataclysm\\Help the Bombardier! I'm the Bombardier!",[[
description Kill 10 Schnotzz infantry with one artillery shell during the Fire From the Sky daily quest in Uldum.
condition end achieved(5317)
step
goto Uldum,41.4,5.5
.talk 49523
..accept 28736
step
'Click on the Confiscated Artillery
'Use the Designate Target ability on one of the groups of mobs |tip The achievement is done by hitting 10 targets at once. To do this you use two artillery shells in succession: target one group at the top of the stairs with the first shot, then target a group at the bottom for the second shot.
.' Kill 10 Schnotzz Infantry with one artillery shell during the Fire From the Sky daily quest |achieve 5317
step
'Congratulations! You've earned the Help the Bombardier! I'm the Bombardier! achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Cataclysm\\Ludicrous Speeds",[[
description While on the quest Call the Flock in Mount Hyjal, obtain 65 stacks of Soar.
condition end achieved(5862)
step
goto Mount Hyjal,27.2,62.5
.talk 52669
..accept 29147
step
'Use your Quill of the Bird-Queen |use Quill of the Bird-Queen##69234
'Abandon the quest Call of the Flock
'Click here once you've abandoned the quest |confirm
step
goto 19.8,41.4
'Use your Call the Flock ability near trees, Forest Owls, and the Goldwing Hawks that fly around this area |tip Do this as fast as possible. Each bird you recruit gives and refreshes your a stacks of soar, but it wears off rather quickly. If you can, go for Goldwing Hawks.
.' Obtain 65 stacks of Soar |achieve 5862
step
'Congratulations! You've earned the Ludicrous Speeds achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Cataclysm\\The Fiery Lords of Setheria's Roost",[[
description Hunt down and slay the following minions of Ragnaros in Sethria's Roost.
condition end achieved(5861)
step
goto Mount Hyjal,27.2,61.8
.talk 53073
..accept 29128
step
goto 30.8,82.2
.' Kill Kelbnar |achieve 5861/2
' If this mob isn't here click here |confirm
step
goto 31.0,86.6
.' Kill Fah Jarakk |achieve 5861/4
' If this mob isn't here click here |confirm
step
goto 35.6,97.6
.' Kill Searris |achieve 5861/1
' If this mob isn't here click here |confirm
step
goto 35.6,97.6
.' Kill Andrazor |tip He flies all around Setheria's Roost |achieve 5861/3
.' Hunt down and slay the minions of Ragnaros |achieve 5861
step
'Congratulations! You've earned The Fiery Lords of Setheria's Roost achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Cataclysm\\Wildhammer Tour of Duty",[[
description Explore all the nooks and crannies of the Thundermar Ruins in Twilight Highlands and impress your Wildhammer allies by killing the following.
condition end achieved(5481)
step
goto Twilight Highlands,49.2,36.4
.' Kill Warlord Halthar |achieve 5481/1
step
goto 51.6,33.0
.' Kill Karkrog the Exterminator |achieve 5481/2
step
goto 45.8,31.6
.' Go in the cellar and kill Black Recluse |achieve 5481/3
step
goto 52.0,27.6
.' Kill Korthalon |achieve 5481/4
step
.' Wildhammer Tour of Duty |achieve 5481
step
'Congratulations, you have earned the achievement Wildhammer Tour of Duty!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Cataclysm\\The Molten Front Offensive",[[
description Unlock the attack on the Molten Front.
condition end achieved(5866)
step
.' You will need to be able to do the Firelands dailies in order to earn this achievement.
.' Click here if you need to do the prequests. |confirm
.' Click here if you have completed the prequests. |next route |confirm
step
#include "A_Firelands_PreQuests"
step
label route
'Routing to proper section |next "achieve" |only if not ZGV.guidesets['DailiesACATA']
'Routing to proper section |next "Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Mount Hyjal\\Firelands Dailies with Pre-Quests" |only if ZGV.guidesets['DailiesACATA']
step
label achieve
'This achievement requires that you do the Firelands Dailies and Quests in order to complete it.
.' Please refer to Zygor's Dailies guide for more assistance with this achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Cataclysm\\Fireside Chat",[[
description Speak with characters during the attack on the Molten Front.
condition end achieved(5870)
step
'Routing to proper section |next "prequest" |only if not completedq(25372)
'Routing to proper section |next "achieve" |only if completedq(25372)
step
label "prequest"
#include "A_Firelands_PreQuests"
step
label "achieve"
'Routing to proper section |next "day_2" |only if achieved(5870/1)
'Routing to proper section |next |only if default
step
.' You will need to do the firelands daily quests in order to talk to the next npc's.
.' If you haven't already done so, it will take you at least two days due to phasing.
.' Do the dailies up until you get the quests 'The Forlorn Spire' or 'Into the Fire'.
.' Click here to proceed. |confirm
step
goto Mount Hyjal,27.2,62.6
.talk 52669
.' Ask about the ancient, Malorne |achieve 5870/2
step
goto Molten Front,45.4,83.2
.talk 52134
.' Ask him what the Marks of the World Tree are |achieve 5870/3
step
goto Molten Front,47.0,91.0
.talk 52135
.' Ask him how the battle is going |achieve 5870/1
step
label "day_2"
goto Molten Front,50.6,87.2
.talk 52489
..' You will only be able to accept one of these quests per day:
..accept 29299 |or
..accept 29255 |or
..accept 29257 |or
step
goto 48.7,86.9
.talk 52467
..' You will only be able to accept one of these quests per day:
..accept 29139 |or
..accept 29143 |or
step
goto 46.8,90.2
.talk 53196
..' You will only be able to accept one of these quests per day: |tip She will not offer a quest in this location, on some days.  On those days, she will offer a quest later, in a different location.
..accept 29263 |or
..accept 29278 |or
step
goto 45.6,86.2
.talk 53080
..accept 29138
step
goto 45.6,85.8
.talk 52824
.' Ask about the Sentinel Tree  |achieve 5870/8
..' You will only be able to accept two of these quests per day:
..accept 29179 |or 2
..accept 29142 |or 2
..accept 29141 |or 2
..accept 29137 |or 2
..accept 29304 |or 2
step
goto 51.6,65.0
.' Stand next to the fire portal with your Wisp |tip It looks like 2 steam vents and black smoke riding out of the ground.
.from Firekin##53092+
.' Close a Fire Portal |q 29143/1
only if havequest(29143)
step
goto 50.7,50.8
.from Emberspit Scorpion##53240+ |tip They will spawn Ember Pools on the ground, and your Crimson Lasher will drink from them.
.' Help the Crimson Lasher Drink from 6 Ember Pools |q 29299/1
only if havequest(29299)
step
goto 50.7,50.8
.' Click Magmolias |tip They look like white flowers on the surface of the pools of lave around this area.
.get 8 Magmolia |q 29257/1
only if havequest(29257)
step
goto 52.8,49.9
.' Click Lava Bubbles |tip They look like big light orange bubbles in the pools of lava around this area.
.' Use The Bitter Pill when the Subterranean Magma Worm is almost don casting its Burning Hunger spell |use The Bitter Pill##69759
.kill Subterranean Magma Worm |q 29263/1
only if havequest(29263)
step
goto 50.0,50.8
.' Click Magnetic Stones |tip They look like stone spikes pointing upward on the ground around this area.
.' Click Obsidium Meteorites |tip They look like spiked rocks that crash to the ground in balls of fire after you click the Magnetic Stones.
.get 10 Obsidium Meteorite |q 29278/1
only if havequest(29278)
step
goto 48.2,75.8
.from Charred Soldier##52504+, Charred Vanquisher##52503+
.get 5 Embergris |q 29255/1 |only if havequest(29255)
.kill 8 Charred Combatant |q 29179/1 |only if havequest(29179)
.kill 3 Druid of the Flame |q 29142/1 |only if havequest(29142)
.kill 5 Lava Burster |q 29137/1 |only if havequest(29137)
.kill 5 Ancient Charhound |q 29304/1 |only if havequest(29304)
.' Use your Enchanted Salve on Wounded Hyjal Defenders |use Enchanted Salve##69240 |tip They look like various race corpses laying on the ground around this area. |only if havequest(29138)
.' Save 8 Wounded Hyjal Defenders |q 29138/1 |only if havequest(29138)
.' Click Ash Piles |tip They look like brown mounds of dirt on the ground around this area. |only if havequest(29139)
.' Plant 5 Smothervines |q 29139/1 |only if havequest(29139)
only if havequest(29255) or havequest(29179) or havequest(29142) or havequest(29137) or havequest(29304) or havequest(29138) or havequest(29139)
step
goto 47.2,83.7
.kill 3 Molten Behemoth |q 29141/1
only if havequest(29141)
step
goto 50.6,87.2
.talk 52489
..' You will only be able to turn in one of these quests per day:
..turnin 29299
..turnin 29255
..turnin 29257
step
goto 48.7,86.9
.talk 52467
..' You will only be able to turn in one of these quests per day:
..turnin 29139
..turnin 29143
step
goto 46.9,90.0
.talk 53214
..' You will only be able to turn in one of these quests per day:
..turnin 29263
..turnin 29278
step
goto 45.6,86.2
.talk 53080
..turnin 29138
step
goto 45.6,85.8
.talk 52824
..' You will only be able to turn in two of these quests per day:
..turnin 29179
..turnin 29142
..turnin 29141
..turnin 29137
..turnin 29304
step
goto 45.6,85.8
.talk 52824
..' Decide which daily quest line you want to complete: |tip You can only do one of these quest lines per day.
..accept 29206 |or |next "DruidoftheTalon"
..accept 29205 |or |next "ShadowWardens"
step
label DruidoftheTalon
goto 43.0,80.2
.' Stand in this spot and wait for a Windcaller to start walking into the fire |tip The Windcaller will be a Druid of the Talon, with Windcaller in their name, standing in this spot.
.' Follow the Windcaller through the fire |tip Walk behind them so the flames don't burn you.
.from Flamewaker Assassin##53328+
.from Pyrelord##52683
.' Protect the Druid of the Talon Windcaller |q 29206/1
only if havequest(29206)
step
goto Molten Front,42.5,59.7
.talk 52444
.' Ask her How do I get out of here. |achieve 5870/5
..turnin 29206
..accept 29264
..accept 29265
step
goto 41.9,61.5
.talk 52478
..accept 29274
step
goto 48.8,60.0
.from Flamewaker Sentinel##53085+, Flamewaker Hunter##53143+, Flamewaker Shaman##53093+
.kill 8 Flamewaker |q 29264/1
.' Click Luciferns |tip They look like small red plants on the ground around this area.
.get 5 Lucifern |q 29265/1
only if havequest(29264) or havequest(29265)
step
goto 43.2,51.2
.from Charhound##53152+
.get 6 Houndbone Ash |q 29274/1
only if havequest(29274)
step
goto 51.9,31.0
.talk 53233
..accept 29272
step
goto 51.9,31.0
.talk 53233
..' Tell her let's get him out of this cave
.' Follow Anren Shadowseeker through the cave using the air vents
.' Escort Anren to the Front of the Cave |q 29272/1
step
goto 42.5,59.7
.talk 52444
..turnin 29264
step
goto 33.5,67.6
.' Go to this spot and jump
.' You will fly up out of the cavern |goto Molten Front,33.7,65.7,0.5 |noway |c |travelfor 1
step
goto Molten Front,34.2,56.4
.talk 53259
.' Ask her what she can tell you about the fire hawks. |achieve 5870/6
step
.' Earn the 'Fireside Chat' Achievement. |achieve 5870 |next "gratz"
..'
..'
.' If you chose to do 'Into the Fire' first, click here to reset the guide for tomorrow. |confirm |next "day_2"
step
label "ShadowWardens"
goto 54.7,70.9
.' Wait until the named mobs starts walking up the big ramp |tip The named mobs' health bars will appear beneath your minimap.
.' Protect the named mobs and help them fight |tip They must stay alive for the entire quest, so don't let them die.
.' Protect the Druid Assault Group |q 29205/1
only if havequest(29205)
step
goto Molten Front,64.9,67.3
.talk 52494
..turnin 29205
step
goto 66.1,63.9
.talk 52921
.' Ask what he can tell you about the spiders. |achieve 5870/7
step
.' Earn the 'Fireside Chat' Achievement. |achieve 5870 |next "gratz"
..'
..'
.' If you chose to do 'Into the Fire' first, click here to reset the guide for tomorrow. |confirm |next "day_2"
step
label "gratz"
Speak with the characters during the attack on the Molten Front |achieve 5870
step
'Congratulations! You've earned the Fireside Chat achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Cataclysm\\Legacy of Leyara",[[
description Complete the Leyara quests in Mount Hyjal and the Molten Front.
condition end achieved(5859)
#include "A_Firelands_PreQuests"
step
.' Complete venturing Into the Depths |achieve 5859/3
.' Earn the Legacy of Leyara achievement! |achieve 5859
step
'Congratulations! You've earned the Legacy of Leyara achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Cataclysm\\Beware of the 'Unbeatable?' Pterodactyl",[[
description Complete the jousting quests in Mount Hyjal up to and including Egg Wave.
condition end achieved(4959)
step
goto Stormwind City,62.9,71.6
.click Hero's Call Board##10016
..accept 27726
step
'When you enter Stormwind City:
.' You will automatically accept a quest
..accept 28825
step
goto Stormwind City,74.5,19.0
.talk 45226
..turnin 28825
..accept 28826
step
goto 74.4,19.5
.click Waters of Farseeing##445
.' Peer into the Waters of Farseeing |q 28826/1
step
goto 74.5,19.0
.talk 45226
..turnin 28826
step
goto 82.6,28.2
.talk 15187
..' Ask her to send you to Moonglade
.' Teleport to Moonglade |goto Moonglade |noway |c
step
goto Moonglade,45.5,44.9
.talk 39865
..turnin 27726
..accept 25316
step
goto 46.1,45.6
.clicknpc Aronus##39140
.' You will fly to Mount Hyjal |goto Mount Hyjal |noway |c
step
goto 63.1,24.1
.talk 40843
.home Nordrassil
step
goto Mount Hyjal,62.0,24.9
.talk 40928
..turnin 25316
..accept 25317
step
goto 64.0,22.7
.talk 39925
..accept 25460
step
goto 64.1,22.5
.talk 40278
..accept 25370
step
goto 67.1,22.6
.kill 8 Scalding Rock Elemental##40229 |q 25460/1
.click Juniper Berry##28+
.collect 4 Juniper Berries##53009 |n
.' Use your Juniper Berries on Faerie Dragons |use Juniper Berries##53009
.' Follow the Faerie Dragons to find Twilight Inciters
.kill 4 Twilight Inciter##39926 |q 25370/1
|modelnpc Faerie Dragon##39921
step
goto 64.1,22.5
.talk 40278
..turnin 25370
..accept 25574
step
goto 64.0,22.7
.talk 39925
..turnin 25460
step
goto 55.7,15.9
.' Stand in this spot
.' Use Tholo's Horn to call for an emerald dragon |use Tholo's Horn##55122
.' Burn the Infiltrators' Encampment |q 25574/1
step
goto 64.1,22.5
.talk 40278
..turnin 25574
step
goto 47.7,35.5
.talk 54173
..turnin 25317
..accept 25319
step
goto 47.6,35.5
.talk 39869
..accept 25472
step
goto 48.4,29.3
.click Charred Staff Fragment##758+
.get 8 Charred Staff Fragment |q 25472/1
.' You can find more fragments at [44.7,33.3]
step
goto 47.2,25.6
.kill 4 Twilight Flamecaller##38926+ |q 25319/1
.kill 10 Twilight Vanquisher##38913+ |q 25319/2
step
goto 47.7,35.5
.talk 15362
..turnin 25319
..turnin 25472
..accept 25323
step
goto 44.5,33.4
.' Use your Flameseer's Staff on Blazebound Elementals |use Flameseer's Staff##53107 |modelnpc Blazebound Elemental##38896
.kill 30 Unbound Flame Spirit##33838+ |q 25323/1
step
goto 47.7,35.5
.talk 54173
..turnin 25323
..accept 25464
step
goto 44.0,26.9
.' Use your Flameseer's Staff on Baron Geddon |use Flameseer's Staff##54463 |tip He's a big fire elemental standing in the middle of this crater.
.' Weaken Baron Geddon 20 Times |q 25464/1 |tip Run away when you see Galrond of the Claw yell "Look out!".
' |modelnpc 40147
step
goto 47.7,35.5
.talk 54173
..turnin 25464
step
goto 47.6,35.5
.talk 39869
..accept 25430
step
goto 48.4,18.9
.talk 38917
..turnin 25430
..accept 25320
step
goto 44.5,18.9
.talk 40096
..turnin 25320
..accept 25321
step
goto 44.5,21.5
.from Twilight Overseer##40123
.get Twilight Overseer's Key |q 25321/1
step
goto 44.5,18.9
.talk 40096
..turnin 25321
..accept 25424
step
goto 48.4,18.9
.talk 38917
..turnin 25424
..accept 25324
step
goto 52.5,17.3 |n
.' Enter the cave |goto 52.5,17.3,0.5 |noway |c |travelfor 1
step
goto 56.8,18.8
.talk 40139
..turnin 25324
..accept 25325
step
goto 52.5,17.3 |n
.' Leave the cave |goto 52.5,17.3,0.5 |noway |c |tip Follow the path up. |travelfor 1
step
goto 52.2,17.4
.talk 38917
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
goto 35.7,19.7
.talk 39427
..accept 25233
..accept 25234
step
goto 38.1,23.0
.kill 6 Twilight Hunter##39437+ |q 25255/1
.kill 4 Twilight Proveditor##39436+ |q 25233/1
.click Twilight Supplies##9379+ |tip The slaves will drop them after you kill the Twilight Slavedriver.
.get 36 Twilight Supplies |q 25234/1
step
goto 35.7,19.7
.talk 39427
..turnin 25233
..turnin 25234
..accept 25268
step
goto 35.7,19.4
.talk 39429
..turnin 25255
step
goto 30.1,31.3
.talk 39433
..turnin 25268
..accept 25271
step
goto 29.3,30.3
.from Lycanthoth Vandal##39445+
.get 6 Polluted Incense |q 25271/1
step
goto 30.1,31.3
.talk 39433
..turnin 25271
..accept 25273
step
goto 32.4,37.3
.' Use Lycanthoth's Incense next to Lycanthoth's Altar |use Lycanthoth's Incense##52682 |tip Inside the cave.
.kill Lycanthoth##39446 |q 25273/1
step
goto 32.3,37.0
.talk 39627
..turnin 25273
step
goto 29.6,29.3
.talk 39627
..accept 25280
step
goto 28.2,29.8
.talk 39433
..turnin 25280
..accept 25278
step
goto 28.2,29.9
.talk 39434
..accept 25297
step
goto 28.6,30.2
.talk 39435
..accept 25300
step
goto 28.9,32.2
.click Bitterblossom##7444
.get Bitterblossom |q 25297/2
step
goto 27.6,34.2
.click Stonebloom##9386
.get Stonebloom |q 25297/1
step
goto 27.2,35.2
.click Eye of Twilight##7011
..turnin 25300
..accept 25301
step
goto 28.4,35.8
.click Darkflame Ember##9569 |tip Inside the brazier
.get Darkflame Ember |q 25297/3
step
goto 28.4,36.4
.click Twilight Cauldron##9387
..turnin 25297
..accept 25298
step
goto 27.0,36.0 |n
.' Enter the cave |goto 27.0,36.0,0.5 |noway |c |travelfor 10
step
goto 27.2,40.8
.talk 39797
..accept 25328 |tip This quest is currently bugged, so some players are able to accept the quest while others cannot.
step
goto 26.5,38.5
.click Gar'gol's Personal Treasure Chest##10
.get Rusted Skull Key |q 25328/1
step
goto 25.8,41.7
.click The Twilight Apocrypha##470
..turnin 25301
..accept 25303
step
goto 26.0,41.8
.clicknpc Crucible of Fire##39730
.' Activate the Crucible of Fire |q 25303/3
step
goto 25.7,41.7
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
goto 25.8,41.7
.click Twilight Apocrypha##470
..turnin 25303
..accept 25312
step
.' While inside the cave do the following:
.from Hovel Brute##39642+, Hovel Shadowcaster##39643+
.kill 8 Minion of Gar'gol |q 25278/1
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
.' Leave the cave |goto 27.1,36.0,0.5 |noway |c
.' Escort Kristoff Out |q 25332/1
step
goto 28.6,30.2
.talk 39435
..turnin 25312
..turnin 25332
step
goto 28.2,29.8
.talk 39433
..turnin 25278
..accept 25352
..accept 25353
step
goto 28.2,29.9
.talk 39434
..turnin 25298
step
goto 27.4,39.2
.kill 8 Twilight Stormcaller##39843+ |q 25352/1
.kill 5 Howling Riftdweller##39844+ |q 25352/2
.click Lightning Channel##9816
.get Charged Condenser Jar |q 25353/1
step
'Use your Totem of Goldrinn |use Totem of Goldrinn##52853
.talk 39627
..turnin 25353
..accept 25618
step
goto 26.2,41.0 |n
.' Go inside the blue portal |goto 26.2,41.0,0.5 |noway |c
step
goto 26.3,41.9
.talk 40834
..turnin 25618
..accept 25575
..accept 25577
step
goto 26.3,42.0
.talk 40837
..accept 25576
step
.' Do the following in the Firelands Forgeworks
.kill 12 Dark Iron Laborer##40838+ |q 25576/1
.from Searing Guardian##40841+
.collect 8 Smoldering Core##55123 |n
.' Use your Smoldering Cores next to Twilight Anvils |use Smoldering Core##55123 |tip They are small anvils sitting on the ground around this area.
.' Destroy 8 Smoldering Cores |q 25577/1
.click Twilight Arms Crate##9393+
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
goto 31.6,46.0
.' Click the Portal Runes |tip They are brown metal plates on the ground on this small circular island in the lava.
.' Lure Forgemaster Pyrendius onto the activated Portal Runes |tip This will weaken him and allow you to kill him.
.kill Forgemaster Pyrendius##40845 |q 25600/1
step
goto 26.3,41.9
.talk 40834
..turnin 25600
..accept 25611
step
goto 25.9,40.9 |n
.' Go inside the blue portal |goto 25.9,40.9,0.1 |noway |c
step
goto 28.2,29.8
.talk 39433
..turnin 25352
..turnin 25611
step
goto Mount Hyjal,28.3,29.7
.talk 46987
..accept 27874 |tip Skip if you have completed Wings Over Mount Hyjal
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
goto 21.8,43.7
.from Wailing Weed##40066+
.get 8 Bileberry |q 25408/1
step
goto 22.3,44.9
.talk 39933
..turnin 25408
..accept 25411
step
goto 14.4,45.4
.from Twilight Inferno Lord##39974
.' Use your Bottled Bileberry Brew on the corpse of a Twilight Inferno Lord |use Bottled Bileberry Brew##53120
.' Subjugate a Twilight Inferno Lord |q 25411/1
.talk 40093
..turnin 25411
..accept 25412
step
goto 14.3,45.4
.click Southern Firestone##9407
.' Examine the Southern Firestone |q 25412/3
step
goto 11.6,41.5
.click Central Firestone##9407
.' Examine the Central Firestone |q 25412/2
step
goto 9.6,36.5
.click Northern Firestone##9407
.' Examine the Northern Firestone |q 25412/1
step
goto 13.3,41.4
.kill 10 Raging Firestorm##39939 |q 25381/1
.kill 6 Twilight Inferno Lord##39974 |q 25382/1
.' Click Panicked Bunnies and Terrified Squirrels
.get 10 Frightened Animal |q 25385/1
' |modelnpc 39997
' |modelnpc 39998
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
goto 12.9,41.4
.' Use your Charred Branch while in the burning forest area |use Charred Branch##53464
.from Thol'embaar##40107
.get Black Heart of Thol'embaar |q 25428/1
step
goto 14.5,40.8
.clicknpc Injured Fawn##39999+
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
step
goto 19.0,40.9
.talk 39927
..accept 25940
step
goto 13.6,32.8
.talk 39932
..turnin 25940
..accept 25462
step
goto 14.2,32.1
.' Click the ladder at the base of the tree
.clicknpc Hyjal Bear Cub##40240
.' Use your Climb Up ability to climb to the top of the tree
.' Use your Chuck-a-bear ability to throw the cubs down |tip Aim the yellow arrow at the bearskin trampoline on the ground.
.' Rescue 6 Hyjal Bear Cubs |q 25462/1
step
goto 13.6,32.8
.talk 39932
..turnin 25462
..accept 25490
step
goto 21.6,59.1
.kill 8 Charbringer##40336 |q 25490/1
step
goto 27.1,62.6
.talk 39858
..turnin 25490
..accept 25491
..accept 25493
step
goto 27.1,63.0
.talk 40331
..accept 25492
step
goto 36.2,58.6
.kill 10 Lava Surger##46911+ |q 25492/1
.from Core Hound##46910+
.get 4 Core Hound Entrails |q 25493/1
.click Scorched Soil##768+
.get 10 Hyjal Seedling |q 25491/1
step
goto 27.1,62.6
.talk 39858
..turnin 25491
..turnin 25493
..accept 25507
step
goto 27.1,63.0
.talk 40331
..turnin 25492
..accept 25502
step
ding 81
step
goto 33.0,64.6
.' Click the Flameward |tip It's a floating stone in a golden claw stand.
.' Activate the Flameward |q 25502/1
.' Defend the Flameward |q 25502/2
step
goto 39.3,54.1
.' Use your Heap of Core Hound Innards near Nemesis |use Heap of Core Hound Innards##54744 |tip Nemesis is a huge turtle that walks all around The Flamewake area, so you may need to search for him.
.clicknpc Nemesis##40340
.get Nemesis Shell Fragment |q 25507/1
step
goto 27.1,62.6
.talk 39858
..turnin 25507
..accept 25510
step
goto 27.1,63.0
.talk 40331
..turnin 25502
step
goto 24.7,55.7
.talk 41504
..turnin 25510
..accept 25514
..accept 25519
step
goto 23.8,56.0
.click Rod of Subjugation##9469
.' Disable Rod of Subjugation 1 |q 25514/1
step
goto 25.3,54.8
.click Rod of Subjugation##9469
.' Disable Rod of Subjugation 2 |q 25514/2
step
goto 24.7,55.7
.talk 41504
..turnin 25514
step
goto 24.4,57.4
.from Deep Corruptor##40561+ |tip They are found underwater
.' Save 6 Tortolla's Eggs |q 25519/1
step
goto 24.7,55.7
.talk 41504
..turnin 25519
..accept 25520
step
goto 27.1,62.6
.talk 39858
..turnin 25520
step
goto 44.4,46.2
.talk 41005
..turnin 27874
..accept 25663
step
goto 42.2,45.5
.talk 41006
..accept 25655
..accept 25656
step
goto 40.3,44.3
.' Use your Sacred Nectar next to Aviana's Burial Circle |use Sacred Nectar##55208 |model Aviana's Burial Circle##439
.' Offer the Nectar |q 25663/1
.talk 41068
..turnin 25663
..accept 25665
step
goto 38.5,43.0
.from Wormwing Screecher##41027+, Wormwing Swifttalon##41028+
.' Kill 10 Wormwing Harpies |q 25655/1
.click Stolen Hyjal Egg##1867+
.get 8 Hyjal Egg |q 25656/1
step
goto 42.2,45.5
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
goto 38.3,44.2
.click Harpy Signal Fire##7290
.' Fight Marion Wormwing until she gets captured |q 25731/1
.talk 41112
..' Ask her why she is stealing eggs, then tell Thisalee to kill her
.' Interrogate Marion Wormwing |q 25731/2
step
goto 35.7,42.3
.' Use your Enormous Bird Call in Blaithe's Roost |use Enormous Bird Call##55211 |tip It's a huge bird nest sitting on top of this mountain peak.
.from Blaithe##41084
.get Ancient Feather |q 25664/1
step
goto 42.2,45.5
.talk 41006
..turnin 25731
step
goto 44.4,46.2
.talk 41005
..turnin 25664
step
goto 43.5,45.9
.talk 40997
..accept 25740
step
goto 32.8,70.8
.talk 41006
..turnin 25740
..accept 25746
..accept 25758
step
goto 31.3,77.1
.click the Codex of Shadows##470
..accept 25763
step
goto 30.9,76.9
.from Twilight Dragonkin##41029+, Twilight Dragonkin Armorers##41030+
.' Slay 12 Sethria's Minions |q 25746/1
.click Twilight Armor Plate##7041+
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
goto 31.6,75.8
.' Use Thisalee's Shiv on Twilight Juggernauts |use Thisalee's Shiv##55883 |tip Use Thisalee's Shiv 5 times to remove the Twilight Juggernauts' Armor Plating completely.
.kill 3 Twilight Juggernaut##41031 |q 25761/1
.click Shadow Cloak Generator##9532+ |tip It may not be in the first one, so keep searching.
.' Unveil and Defend Aviana's Egg |q 25764/1
step
goto 32.8,70.8
.talk 41006
..turnin 25761
..turnin 25764
..accept 25776
step
goto 35.5,98.0
.' Fight Sethria
.' Use Thisalee's Signal Rocket when Sethria turns into a dragon |use Thisalee's Signal Rocket##56003
.kill Sethria##41255 |q 25776/1
step
goto 32.8,70.8
.talk 41006
..turnin 25776
..accept 25795
step
goto 44.4,46.2
.talk 41005
..turnin 25795
..accept 25807
step
goto 44.3,48.0
.' Use Herald's Incense next to Aviana's Egg |use Herald's Incense##56016 |tip Aviana's Egg is in the tree tower, in a side room. |modelnpc Aviana's Egg##41224
.' Burn Herald's Incense |q 25807/1
step
goto 44.2,47.8
.talk 41308
..turnin 25807
step
goto 44.1,45.9
.talk 41003
..accept 25810
step
goto 43.8,46.0
.talk 47002
..accept 25830
.' If you cannot pick up the quest, go here to get it: [62.0,24.9]
step
goto 39.1,58.3 |n
.' Go inside the blue portal |goto 38.77,58.01 <0.3 |noway |c
step
goto 37.2,56.2
.talk 40578
..turnin 25810
..accept 25523
step
goto 37.2,56.1
.click the Twilight Weapon Rack##130
.collect Twilight Firelance##52716 |q 25523
step
goto 37.4,56.0
.' Equip the Twilight Firelance |equipped Twilight Firelance##52716 |use Twilight Firelance##52716
.clicknpc Aviana's Guardian##40723
.' Ride Aviana's Guardian |invehicle |c |q 25523
step
goto 36.6,53.4
.' Use your Flap ability on your hotbar repeatedly to fly to this green flag
.' Land next to the Guardian Flag
.' Visit the Guardian Flag |q 25523/1
' |model 9475
step
goto 37.2,56.2
.' Use your Flap ability on your hotbar repeatedly to fly to this spot
.talk 40578
..turnin 25523
..accept 25525
step
goto 35.4,51.7
.' Use your Flap ability on your hotbar repeatedly to fly around this area
.' Fly into Twilight Buzzards to joust them
.' Kill 10 Twilight Knight Riders |q 25525/1 |modelnpc Twilight Buzzard##39833+ |tip The knights are riding buzzards.
step
goto 37.2,56.2
.' Use your Flap ability on your hotbar repeatedly to fly to this spot
.talk 40578
..turnin 25525
..accept 25544
step
goto 35.4,51.7
.' Use your Flap ability on your hotbar repeatedly to fly around this area
.' Fly into Twilight Firebirds to joust them |tip Be careful, don't let the burning Falling Boulders hit you.
.' Kill 10 Twilight Lancers|q 25544/1 |modelnpc Twilight Firebird##40650+ |tip The lancers are riding buzzards.
step
goto 37.2,56.2
.' Use your Flap ability on your hotbar repeatedly to fly to this spot
.talk 40578
..turnin 25544
..accept 25560
step
goto 36.6,53.3
.' Use your Flap ability on your hotbar repeatedly to fly around this area
.' Run over Firelands Eggs |tip They look like blue eggs on the ground around this area.
.' Destroy 40 Firelands Eggs |q 25560/1
.' You can find more Firelands Eggs at [39.3,54.1]
' |modelnpc 40762
step
goto 37.2,56.2
.' Use your Flap ability on your hotbar repeatedly to fly to this spot
.talk 40578
..turnin 25560
|achieve 4959
step
'Congratulations, you have obtained the _Beware of the 'Unbeatable?' Pterodactyl_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\The 'Unbeatable?' Pterodactyl: BEATEN.",[[
description Complete the Vigilance on Wings daily quest in Mount Hyjal 10 times.
condition end achieved(5860)
step
label "begin"
'In order to get this achievement, you will have to complete the Vigilance on Wings daily 10 times.
|confirm
step
goto Mount Hyjal,39.1,58.3 |n
.' Go inside the blue portal |goto 38.77,58.01 <0.3 |noway |c
step
goto 37.2,56.2
.talk 40578
.accept 29177
step
goto 37.2,56.1
.' Click the Twilight Weapon Rack |tip It's a wooden stand with some weapons leaning against it.
.collect 1 Twilight Firelance##52716 |c
step
goto 37.4,56.0
.' Equip the Twilight Firelance |use Twilight Firelance##52716
.' Click Aviana's Guardian to ride it |invehicle |tip They are hippogryphs.
step
goto 36.6,53.4
.' Use your Flap ability on your hotbar repeatedly to fly to this green flag
.kill 10 Twilight Lancers |q 29177/1
step
goto 37.2,56.2
.talk 40578
.turnin 29177
step
'You have completed the daily available for today.
.' Click here to go back to the beginning of the guide. |confirm |next "begin" |only if not achieved(5860)
.' Earn The 'Unbeatable?' Pterodactyl: BEATEN. |achieve 5860 |only if achieved(5860)
step
'Congratulations! You've earned The 'Unbeatable?' Pterodactyl: BEATEN. achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Bounce",[[
description Stay on the trampoline in the Whistling Grove in Mount Hyjal for 20 consecutive bounces.
condition end achieved(5483)
step
goto Mount Hyjal,13.6,33.2
.' Track the Bounce achievement in the quest section of your achievement list, under Cataclysm.
.' Hop onto the trampoline and jump on it 20 times consecutively.
.' You will be able to control your character mid air by turning them in the direction you want to go.  Steer your character back into the area of the trampoline.
.' Earn the achievement Bounce |achieve 5483
step
'Congratulations! You've earned the Bounce achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Cataclysm\\Fungal Frenzy",[[
description Suffer the effects of a Poolstool, Shuffletruffle, Shrinkshroom and Trapcap simultaneously.
condition end achieved(5450)
step
'Routing to proper section |next "prequest" |only if not completedq(26709)
'Routing to proper section |next "fury" |only if completedq(26709)
step
label "prequest"
#include "A_Therazane_PreQuest"
step
label "fury"
goto Deepholm,57.3,12.5
.talk 43804
..accept 27050
step
'For this achievement you will be required to click mushrooms that put a buff on you.
'Each buff lasts 2 minutes and you will need to have all three types on you at once when you click the last one.
'Since the mushrooms spawn randomly, it's a good idea to survey the area first, finding as many of the different mushrooms as possible so you can plan your route.
'Walking through water will remove any of the buffs you already have on.
|confirm
step
goto 74.0,41.2
.click Sprouting Crimson Mushroom##205147
.' Click the mushrooms in this order:
.' Click a red mushroom and get the Poolstool buff.
.' Click a white mushroom with brown spots and get the Shrinkshroom buff.
.' Click a blue mushroom and get the Shuffletruffle buff.
.' Click a purple mushroom with pink spots.
.' Earn the Fungal Frenzy achievement! |achieve 5450
step
'Congratulations!  You've earned the Funal Frenzy achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\General Achievements\\Fungalophobia",[[
description Defeat Fungalmancer Glop during the Glop, Son of Glop daily quest in Deepholm without taking any damage from his Boomshrooms.
condition end achieved(5445)
step
.' In able to obtain the daily quest needed for the achievement "Fungalophobia", you will need to have unlocked Therazane, as well as be Revered with Therazane.
.' Click here if you need to complete the Therazane PreQuests. |confirm
.' Click here if you need if you have done the prequests, but not yet reached _Revered_. |next "d_quest_" |confirm
.' You have reached Revered. You are being directed to the achievement. |next next |only if rep("Therazane")>=Revered
step
#include "A_Therazane_PreQuest"
step
label d_quest
#include "A_Therazane_DailyQuest"
step
label next
goto Deepholm,59.6,14.0
.talk 44973
..accept 28390 |only if rep ('Therazane') >= Revered |tip This quest can be offered at random if you have at least Revered reputation with Therazane.  However, the quest may not be offered everyday.
step
goto 69.8,31.9
.talk 43503
..' Tell her you're ready when she is
.kill Fungalmancer Glop |q 28390/1
.' Follow him each time he runs away.  Avoid the mushrooms as you walk, they will give you a debuff.
.' While fighting Fungalmancer Glop, kill the Boomshrooms he creates.  You can either kill them or avoid them altogether.  They have around 3,000 health.  You must not be hit by anything he creates.  Keep moving when he throws the Boomshrooms.
step
goto Deepholm,59.6,14.0
.talk 44973
..turnin 28390 |only if rep ('Therazane') >= Revered |tip This quest can be offered at random if you have at least Revered reputation with Therazane.  However, the quest may not be offered everyday.
step
.' Earn Fungalophobia |achieve 5445
.' If you didn't get the achievement, you were hit during the encounter.  You will have to try again another day.
step
'Congratulations! You've earned the Fungalophobia achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Cataclysm\\My Very Own Broodmother",[[
description Complete the Restless Brood daily quest in Deepholm within 90 seconds of striking the Resonating Crystal.
condition end achieved(5447)
step
'This quest can be offered at random if you have at least Revered reputation with Therazane.  However, the quest may not be offered every day. |tip Also, it's a lot easier to have a friend help you with this, as you have to complete the quest within 90 seconds.
.' Click here if you need to complete the Therazane PreQuests. |confirm
.' Click here if you need if you have done the prequests, but not yet reached _Revered_. |next "d_quest_" |confirm
.' You have reached Revered. You are being directed to the achievement. |next next |only if rep("Therazane")>=Revered
step
#include "A_Therazane_PreQuest"
step
label d_quest
#include "A_Therazane_DailyQuest"
step
label next
goto Deepholm,56.6,14.1
.talk 43806
..accept 28391 |tip This quest can be offered at random if you have at least Revered reputation with Therazane.  However, the quest may not be offered everyday.
.' Be sure to track the achievement 'My Very Own Broodmother' for the timer.
only if rep ('Therazane') >= Revered
step
goto 32.7,24.3
.' Use your Stonework Mallet next to the Pale Resonating Crystal |use Stonework Mallet##60266 |tip It's a huge green crystal sitting on the ground.
.' Strike the Pale Resonating Crystal |q 28391/1
.from Aeosera##43641 |tip Click the Boulder Platforms to jump from rock to rock while fighting Aeosera.  When she is casting her Breath Fire ability, jump to another rock and attack her while she is breathing fire to the other rock.  Repeat this until she surrenders.
.' Defeat Aeosera |q 28391/2
only if rep ('Therazane') >= Revered
step
goto 32.7,24.3
'Make sure your timer has hit 0 before hitting the crystal again.
.' Use your Stonework Mallet next to the Pale Resonating Crystal |use Stonework Mallet##60266 |tip It's a huge green crystal sitting on the ground.
.talk 43806
..turnin 28391
only if rep ('Therazane') >= Revered
step
.' Earn the My Very Own Broodmother achievement |achieve 5447
step
'Congratulations! You've earned My Very Own Broodmother achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Cataclysm\\And the Meek Shall Inherit Kalimdor",[[
description Help critters get revenge on the mean old fire elementals.
condition end achieved(5868)
step
label "MeekInheritStart"
goto Mount Hyjal,27.2,62.6
.talk 52669
..accept 29147
.' Or...
|confirm
step
goto 27.1,62.0
.talk 52671
..' You will only be able to accept one of these quests per day:
..accept 29101 |or
..accept 29161 |or
.' Or...
|confirm
step
'Use your Quill of the Bird-Queen |use Quill of the Bird-Queen##69234
.' Transform into the Wings of Aviana |invehicle |c |q 29147
only if havequest(29147)
step
goto 14.1,41.8
'Use your Call the Flock ability on your action bar near Alpine Songbirds, Forest Owls, and Goldwing Hawks |tip They are all birds that fly in the sky all around this area.  Alpine Songbirds are small and white.  Forest Owls are medium sized and gray.  Goldwing Hawks are big and brown.
.' Gather 12 Alpine Songbirds |q 29147/1
.' Gather 5 Forest Owls |q 29147/2
.' Gather 2 Goldwing Hawks |q 29147/3
only if havequest(29147)
step
'Click the Complete Quest box that appears under your minimap
..turnin 29147
..accept 29148
only if havequest(29147) or completedq(29147)
step
goto 13.4,44.6
.' Use your Quill of the Bird-Queen |use Quill of the Bird-Queen##69212
.kill Millagazor |q 29148/1 |tip One of your Alpine Songbirds must deal the killing blow on Millagazor, or you won't get credit.  Luckily, you can summon Millagazor over and over until you get it.
.' Help an Alpine Songbird Get Revenge on the Mean Old Fire Elementals |achieve 5868/3
only if havequest(29148)
step
goto 23.6,60.1
.' Click Children of Tortolla |tip They look like small turtles on the ground around this area.
.' Use your Punt Turtle ability to punt the turtle at a Flame Terror |tip Use your right mouse button to aim.
.' Help an Alpine Songbird Get Revenge on the Mean Old Fire Elementals |achieve 5868/4
only if havequest(29101)
step
goto 14.3,33.0
.' Click the Climbing Tree |tip They look like small ladders leaning aginst the trees around this area.
.' Click Hyjal Bear Cubs in the tree
.' Use your Climb Up ability to climb to the top of the tree
.' Use your Chuck-a-bear ability to throw a cub at a living Brimstone Hound |tip They look like big orange fire beasts on the ground all around this area.
.' Help a Hyjal Bear Cub Get Revenge on the Mean Old Fire Elementals |achieve 5868/2
only if havequest(29161)
step
goto 12.7,34.8
.from Brimstone Hound##52795 |tip There are 2 squirrels sitting on this huge gray rock.  Fight a Brimstone Hound next to this rock until one of the squirrels throws an acorn at it.  You will hear a Bonk sound.
.' Help an Angry Little Squirrel Get Revenge on the Mean Old Fire Elementals |achieve 5868/1
.' Earn the And the Meek Shall Inherit Kalimdor achievement! |achieve 5868
step
'Congratulations!  You've earned the And the Meek Shall Inherit Kalimdor achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Cataclysm\\Gang War",[[
description Win a duel in Sethria's Roost while on the quest "The Protectors of Hyjal."
condition end achieved(5864)
step
goto Mount Hyjal,27.3,61.6
.talk 53073
..accept 29128
step
goto 30.7,75.9
.' Duel another player around this area and win |tip You and a friend can get this achievement easily by dueling each other and letting each other win.
.' Earn the Gang War achievement! |achieve 5864
step
'Congratulations!  You've earned the Gang War achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Cataclysm\\Have... Have We Met?",[[
description Acknowledge your recognition by /waving at the following NPCs in Sethria's Roost.
condition end achieved(5865)
step
goto Mount Hyjal,27.3,61.6
.talk 53073
..accept 29128
step
goto 30.7,75.9
.' Perform the Wave emote on the following NPCs: |script DoEmote("WAVE") |tip They are NPCs that follow players around this area.  The NPCs that follow each player are not always the same, so you may have to look around in different groups for all of these.
.' Linken |achieve 5865/1
.' Hemet Nesingwary |achieve 5865/2
.' Nat Pagle |achieve 5865/3
.' Chromie |achieve 5865/4
.' Mankrik |achieve 5865/5
.' Thassarian |achieve 5865/6
.' Earn the Have... Have We Met? achievement! |achieve 5865
step
'Congratulations!  You've earned the Have... Have We Met? achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Cataclysm\\Infernal Ambassadors",[[
description Slay the elite invaders of Hyjal in the different ways.
condition end achieved(5869)
step
.' You will need to be able to do the Firelands dailies in order to earn this achievement.
.' Click here if you need to do the prequests. |confirm
.' Click here if you have completed the prequests. |next achieve |confirm
step
#include "A_Firelands_PreQuests"
step
label achieve
goto Mount Hyjal,13.4,44.7
.from Pyrachnis##52749
.' Slay Pyrachnis without using the Emerald of Aessina |achieve 5869/1 |tip This is easiest with a group, or with a pet, if you have one.
step
goto 13.4,44.6
.from Millagazor##52649
.' Slay Millagazor without taking damage from Gout of Flame |achieve 5869/2 |tip When Millagazor starts casting Gout of Flame, move around so that you don't get hurt.
step
goto 41.8,56.0
.from Lylagar##52766
.' Slay Lylagar without taking damage from Lylagar Breath |achieve 5869/3 |tip When Lylagar starts casting Lylagar Breath, move around so that you don't get hurt.
step
goto 41.7,56.1
.from Galenges##52399
.' Slay Galenges before he is weakened a second time |achieve 5869/4 |tip Get a group of people to help you kill Galenges really fast.
step
goto 24.1,55.7
.from Nemesis##52383
.' Slay Nemesis at Ashen Lake without taking damage from Molten Fury |achieve 5869/5 |tip Run into Tooga's yellow bubble shield before Nemesis finishes casting Molten Fury, so you don't take any damage from it.  You will see a message in your chat when Nemesis is about to errupt.
.' Earn the Infernal Ambassadors achievement! |achieve 5869
step
'Congratulations!  You've earned the Infernal Ambassadors achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Cataclysm\\Flawless Victory",[[
description Solo kill a Molten Behemoth in the Molten Front without taking any damage from Molten Stomp or Fiery Boulder.
condition end achieved(5867)
step
'The hardest part of this achievement is killing the mob SOLO, without having other players hitting the Molten Behemoth you're trying to kill |tip Try completing this achievement when your server is slow and not many players are active.
|confirm
step
goto Molten Front,52.9,49.0
.from Molten Behemoth##52552
.' Solo kill a Molten Behemoth without taking any damage from Molten Stomp or Fiery Boulder |tip For melee classes, your only risk is getting his by Molten Stomp.  So, simply run through him to get behind him when he starts casting Molten Stomp.  For ranged classes, or classes with pets, your risk will be getting hit with Fiery Boulder.  You will see a dark circle appear beneath your feet before you get hit.  Watch out for that dark ring and quickly move aside to avoid getting hit.
.' Earn the Flawless Victory achievement! |achieve 5867
step
'Congratulations!  You've earned the Flawless Victory achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Cataclysm\\Master of the Molten Flow",[[
description Complete various challenges within the Molten Flow.
condition end achieved(5871)
step
'This achievement is best done in a group, so you can kill mobs faster, and be safer while trying to complete these tasks
|confirm
step
goto Molten Front,48.8,60.0
.from Flamewaker Shaman##53093 |tip When the Flamewaker Shaman casts Flamewave on you, back up so that the shaman moves to stand in the patch of fire on the ground, then kill it.
.' Kill a Flamewaker Shaman with his own Flamewave |achieve 5871/1
step
goto 48.8,60.0
.from Flamewaker Sentinel##53085 |tip When the Flamewaker Sentinel picks up one of your party members, quickly kill it while it's still carrying them.
.' Kill a Flamewaker Sentinel while it is carrying a party member |achieve 5871/2
step
goto 48.8,60.0
.from Flamewaker Hunter##53143 |tip Stand on one of the thermal air vents, and attack a Flamewaker Hunter. As it begins to channel its Wild Barrage ability, jump.  Immediately run to the next air vent and keep doing that until the Wild Barrage is over. You might want to plan the air vent path you'll take before starting the fight, so you'll exactly where you'll be running to ahead of time.
.' Survive a Flamewaker Hunter's Wild Barrage without getting hit |achieve 5871/3
.' Earn the Master of the Molten Flow achievement! |achieve 5871
step
'Congratulations!  You've earned the Master of the Molten Flow achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Cataclysm\\King of the Spider-Hill",[[
description Reach the highest point in the Widow's Clutch within the Molten Front.
condition end achieved(5872)
step
goto Molten Front,66.0,56.8
.from Cinderweb Spinner##52981+ |tip They're high up on the tall rock pillars.  Attack them and they will shoot a web to bring you up.
.' Keep doing this to reach the highest point in the Widow's Clutch
.' Earn the King of the Spider-Hill achievement! |achieve 5872
step
'Congratulations!  You've earned the King of the Spider-Hill achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Cataclysm\\Death From Above",[[
description Bomb elementals during a bombing run in the Molten Front.
condition end achieved(5874)
step
'The easiest way to do this achievement is to accept the daily and NEVER turn it in until you have completed the achievement. |tip This will allow you to try every single day.
|confirm
step
goto Molten Front,34.3,56.4
.talk 53259
..accept 29290 |tip You will not be able to accept this quest every single day - it's a random daily.
step
goto 33.9,57.2
.' Click the Trained Fire Hawk to ride on it |tip It looks like a big orange armored eagle.
.' Use your abilities on your action bar on these mobs below as you fly on the Fire Hawk |tip They are all large fire elementals that spawn on a small hill to the right as you leave the Beth'tilac spider section as you fly.  Hitting them with a single bomb will work, you don't have to kill them.
.' Bomb Ragepyre |achieve 5874/1
.' Bomb Blazefury |achieve 5874/2
.' Bomb Flashfire |achieve 5874/3
.' Bomb Hatespark |achieve 5874/4
.' Bomb Heatflayer |achieve 5874/5
.' Bomb Singeslayer |achieve 5874/6
.' Earn the Death From Above achievement! |achieve 5874
step
'Congratulations!  You've earned the Death From Above achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Cataclysm\\Ready for Raiding II",[[
description Slay Lieutenants of Flame in Ragnaros' Reach without getting hit by their special attacks.
condition end achieved(5873)
step
'Routing to proper section |next "prequest" |only if not completedq(25372)
'Routing to proper section |next "achieve" |only if completedq(25372)
step
label "prequest"
#include "A_Firelands_PreQuests"
step
label "achieve"
'Use the Firelands Dailies guide to complete the Strike at the Heart daily |tip You have to kill these mobs without getting hurt at all by their special abilities.
.' This is MUCH easier to do as part of group helping each other get this achievement.
|confirm
step
'During the Strike at the Heart Daily, kill the following mobs without getting hurt by their special abilities:
.' Ancient Charscale |achieve 5873/1 |tip Move far away from the spot you're at when he casts Javelin Breach, and dodge the Line of Fire spells he sends toward you.
.' Cinderweb Queen |achieve 5873/2 |tip Run away when she cast Cinder Web - you will get rooted if you get hit by the web.  Her Writhing Injection spell spawns a few spiders after a few seconds that you can't avoid, so you just kill them quickly with some kind of AoE attack.
.' Ancient Smoldering Behemoth |achieve 5873/3 |tip Run away from him when he casts Groundfir.  Interrupt his Rain of Flame, or run away as fast as you can - the radius of that spell is pretty big.
.' Devout Harbinger |achieve 5873/4 |tip He will cast Creeping Inferno, which spawns a fire on the ground that chases you.  Run away as fast as you can and don't let it touch you.
.' Ancient Firelord |achieve 5873/5 |tip Run away to dodge the pillar of fire when he casts Flame Spout under you.  When he starts spinning and shooting fire, just move around to stay out of the way.
.' Earn the Ready for Raiding II achievement! |achieve 5873
step
'Congratulations!  You've earned the Ready for Raiding II achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Cataclysm\\Rock Lover",[[
description Complete the Lost in the Deeps daily quest in Deepholm 10 times.
condition end achieved(5449)
step
'In order to possibly earn this achievement, you will need to have unlocked the Therazane daily quest hub.
.' This quest may not be offered every day.  This will not effect the achievement, since it requires that you complete the quest 'Lost In The Deeps' 10 times (rather than 10 times consecutively).
|confirm
step
'Routing to proper section |next "prequest" |only if not completedq(26709)
'Routing to proper section |next "dailies" |only if completedq (26709) and rep("Therazane")<=Honored
'Routing to proper section |next "rock" |only if completedq(26709) and rep("Therazane")>=Revered
step
label "prequest"
#include "A_Therazane_PreQuest"
step
label "dailies"
#include "A_Therazane_DailyQuest"
step
label "rock"
goto Deepholm,55.4,14.2
.talk 44945
..accept 26710 |tip This quest can be offered at random and may not be offered every day.
step
goto 58.3,25.6 |n
.' Enter the cave |goto 58.3,25.6,0.5 |noway |c |q 26710
step
goto 65.3,18.4 |n
.' Follow this path |goto 65.3,18.4,0.5 |noway |c |q 26710
step
goto 63.1,20.8
.talk 49956
..' Tell him to follow you
|confirm
step
goto 58.3,25.6
.' Wait in this spot until Pebble bobbles around appreciatively and then disappears into the distance
.' Bring Pebble to safety |q 26710/1
step
goto 55.4,14.2
.talk 44945
..turnin 26710
.' Remember, you will need to complete this quest 10 times in order to earn this achievement.  Check your achievements log to see your progress.
step
.' Earn Rock Lover |achieve 5449
step
'Congratulations! You've earned the Rock Lover achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Cataclysm\\The Glop Family Line",[[
description Complete the Glop, Son of Glop daily quest in Deepholm 10 times.
condition end achieved(5446)
step
'In order to possibly earn this achievement, you will need to be at least Revered with Therazane.
.' This quest may not be offered every day.  This will not effect the achievement, since it requires that you complete Glop, Son of Glop 10 times (rather than 10 times consecutively).
|confirm
step
'Routing to proper section |next "prequest" |only if not completedq(26709)
'Routing to proper section |next "glop" |only if completedq(26709)
step
label "prequest"
#include "A_Therazane_PreQuest"
step
label "glop"
goto Deepholm,59.6,14.0
.talk 44973
..accept 28390 |only if rep ('Therazane') >= Revered
.' It is Possible to earn the 'Fungalophobia' Achievement while working towards this.  The instuctions will beincluded.
step
goto 69.8,31.9
.talk 43503
..' Tell her you're ready when she is
.kill Fungalmancer Glop |q 28390/1
.' Follow him each time he runs away.  Avoid the mushrooms as you walk, they will give you a debuff.
.' While fighting Fungalmancer Glop, kill the Boomshrooms he creates.  You can either kill them or avoid them altogether.  They have around 3,000 health.  You must not be hit by anything he creates.  Keep moving when he throws the Boomshrooms.
step
goto Deepholm,59.6,14.0
.talk 44973
..turnin 28390 |only if rep ('Therazane') >= Revered |tip This quest can be offered at random if you have at least Revered reputation with Therazane.  However, the quest may not be offered everyday.
.' Remember, you will need to complete this quest 10 times in order to earn this achievement.  Check your achievements log to see your progress.
step
.' Earn The Glop Family Line Achievement |achieve 5446
step
'Congratulations! You've earned The Glop Family Line achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Cataclysm\\King of the Mountain",[[
description Complete the Twilight's Hammer quest chain in Twilight Highlands up to and including Skullcrusher the Mountain.
condition end achieved(5320)
step
goto Stormwind City,62.9,71.6
.' Click the Hero's Call Board |tip It looks like two white stone pillars with a wooden board hanging between them with papers pinned onto it.
..accept 28716
step
goto 85.7,31.8
.talk 29611
..turnin 28716
..accept 26960
step
goto 85.7,31.6
.talk 1747
..' Tell him to come with you
.' Become Introduced to Anduin |q 26960/1
step
goto 85.7,31.8
.talk 29611
..turnin 26960
..accept 26975
..accept 26977
step
goto 85.1,31.3
.talk 2439
..turnin 26977
..accept 26997
step
goto 29.3,26.5
.talk 29152
.' Interrogate 6 Dock Workers |q 26997/1
step
'Next to you:
.talk 44293
..turnin 26997
.' If Anduin Wrynn is not next to you, you can find in Stormwind Keep at [85.7,31.6] |tip Talk to him and tell him to come with you, if you have to go get him again.
step
goto 33.1,39.4
.' Go to this spot
.' Escort Anduin to Supply Sergeant Graves |q 26975/1
step
goto 33.1,39.5
.talk 44749
..turnin 26975
..accept 27038
step
'Next to you:
.talk 44293
..accept 27044
.' If Anduin Wrynn is not next to you, you can find in Stormwind Keep at [85.7,31.6] |tip Talk to him and tell him to come with you, if you have to go get him again.
step
goto 34.6,46.1
.' Click Missing Parts |tip They look like brown metal buckets with mechanical parts in them on the ground around this area.
.get 5 Missing Parts |q 27038/1
step
goto 34.8,38.2
.talk 44806
..turnin 27038
step
'Next to you:
.talk 44293
..accept 27064
.' If Anduin Wrynn is not next to you, you can find in Stormwind Keep at [85.7,31.6] |tip Talk to him and tell him to come with you, if you have to go get him again.
step
goto 52.0,5.8
.' Go to this spot
.' Escort Prince Anduin to Farmer Wollerton |q 27044/1
.' If Anduin Wrynn is not next to you, you can find in Stormwind Keep at [85.7,31.6] |tip Talk to him and tell him to come with you, if you have to go get him again.
step
goto 52.1,6.0
.talk 44807
..turnin 27044
..accept 27060
step
goto 43.8,4.6
.' Go to this spot
.' Discover the Crime Scene |q 27060/1
.from Twilight Striker##44808+
.' Protect Prince Anduin |q 27060/2
step
'Next to you:
.talk 44293
..turnin 27060
.' If Anduin Wrynn is not next to you, you can find in Stormwind Keep at [85.7,31.6] |tip Talk to him and tell him to come with you, if you have to go get him again.
step
goto 80.2,62.1
.' Go inside this building and up the spiral staircase
.' Allow Anduin to Examine Samuelson's Papers |q 27064/1
.' If Anduin Wrynn is not next to you, you can find in Stormwind Keep at [85.7,31.6] |tip Talk to him and tell him to come with you, if you have to go get him again.
step
'Next to you:
.talk 44293
..turnin 27064
..accept 28807
.' If Anduin Wrynn is not next to you, you can find in Stormwind Keep at [85.7,31.6] |tip Talk to him and tell him to come with you, if you have to go get him again.
step
goto 81.3,63.5
.talk 332
..turnin 28807
..accept 27072
step
goto 39.8,56.8
.kill 6 Crazed Cultist |q 27072/1
step
goto 37.2,56.2
.talk 50049
..turnin 27072
..accept 27092
step
goto 52.9,51.0 |n
.' Enter the Cathedral |goto 52.9,51.0,0.5 |noway |c
step
goto 51.3,44.3 |n
.' Follow the spiral ramp down |goto 51.3,44.3,0.5 |noway |c
step
goto 53.2,42.6 |n
.' Follow the stairs down |goto 53.2,42.6,0.5 |noway |c
step
goto 50.6,42.2
.kill The Black Bishop |q 27092/1
step
goto 50.2,42.6
.' Click the Pile of Explosives
..turnin 27092
..accept 27106
step
goto 85.1,31.0
.talk 2439
..' Tell him it's over
.' Unmask Major Samuelson |q 27106/1
.kill Major Samuelson |q 27106/2
step
goto 85.8,31.7
.talk 29611
..turnin 27106
..accept 28238
step
goto 26.1,47.3
.talk 44806
..turnin 28238
..accept 28832
step
goto 25.9,47.6
.' Click Flintlocke's Seaplane |tip It looks like an airplane flying in place above the water.
.' Ride to Twilight Highlands |goto Twilight Highlands |noway |c
step
goto Twilight Highlands,81.0,79.4
.talk 49022
..turnin 28832
..accept 28596
step
goto 81.1,77.3
.kill 10 Horde Attackers |q 28596/1
step
goto 81.0,79.4
.talk 49022
..turnin 28596
step
goto 81.0,79.4
.talk 49252
..accept 28597
step
goto 81.1,77.3
.' Click Cannon Powder Barrels |tip They look like wooden barrels on the ground around this area.
.get 10 Cannon Powder |q 28597/1
step
goto 78.8,76.8
.talk 49252
..turnin 28597
..accept 28598
step
'You may have to wait for a few minutes, so just stand here and wait
.' Wait to be launched from Flintlocke's Cannon |q 28598/1
step
'Go downstairs in the zeppelin
.' Use Flintlocke's Explosives while downstairs |use Flintlocke's Explosives##64660
.' Destroy the Skyshredder |q 28598/2
step
goto 78.9,76.7
.talk 49252
..turnin 28598
..accept 28599
step
goto 79.1,78.3
.' Go upstairs in the fort
.talk 49358
..turnin 28599
..accept 27338
step
goto 79.3,78.5
.talk 45170
..accept 27177
..accept 27178
step
goto 76.0,80.0
.talk 45171
..accept 27200
step
goto 76.1,79.8
.from Ophelia##45183
.' Slay Ophelia and Protect Ephram |q 27200/1
step
goto 76.0,80.0
.talk 45171
..turnin 27200
step
goto 76.2,83.0
.' Click Water-Logged Crates |tip They look like wooden boxes on the ground underwater around this area.
.get 8 Recovered Supplies |q 27177/1
.from Blackscale Seacaller##45182+, Blackscale Myrmidon##45179+
.' Slay 10 Blackscale Naga |q 27178/1
step
goto 79.3,78.5
.' Go upstairs in the fort
.talk 45170
..turnin 27177
..turnin 27178
step
goto 76.8,69.8
.talk 45169
..turnin 27338
..accept 27341
..accept 27366
step
goto 77.0,69.9
.talk 49252
..accept 27433
step
goto 77.5,65.3
.' Go to this spot
.' Scout the Beach Head Control Point |q 27341/1
step
goto 77.4,67.1
.kill 12 Axebite Marine |q 27366/1 |tip Be careful and pay attention not to stand too close to the red arrows bouncing above the ground.  Cannon balls land at the arrows a few seconds after the arrows appear, and they will hurt you a lot if they hit you.
step
goto 74.3,68.0
.from Diamond-Blade Shredder##45185+
.get 5 Abused Shredder Parts |q 27433/1
step
goto 76.8,69.8
.talk 45169
..turnin 27341
..turnin 27366
..accept 27514
step
goto 77.0,69.9
.talk 45168
..turnin 27433
..accept 27468
step
goto 73.4,71.2
.talk 45524
..' Tell him you'll cover him while he makes repairs
.' Speak to a Siege Tank Commander |q 27468/1
.from Axebite Grunt##45187+
.' Defend the Siege Tank |q 27468/2
step
goto 77.0,69.9
.talk 45168
..turnin 27468
step
goto 67.7,66.0
.talk 45172
..turnin 27514
..accept 27515
step
goto 71.4,66.2
.' Click Thorny Stankroots |tip They look like grey-ish bumps with green leaves on them on the ground around this area.
.get 8 Thorny Stankroot |q 27515/1
step
goto 67.7,66.0
.talk 45172
..turnin 27515
..accept 27516
step
goto 67.7,66.0
.talk 45172
..' Tell him you're ready, let's go!
.' Fly with Thordun Hammerblow to Highbank |q 27516/1
step
goto 79.4,78.5
.talk 49688
.home Highbank
step
goto 79.1,78.3
.' Go upstairs in the fort
.talk 45167
..turnin 27516
..accept 27537
step
goto 79.2,78.3
.talk 45172
..accept 27538
step
goto 81.7,77.1
.talk 47119
.fpath Highbank
step
goto 67.7,46.9
.from Muddied Water Elemental##44011+
.get 5 Whirlpool Core |q 27537/1
.' Click Verrall River Muck |tip They look like mounds of swirled gray and white sand on the ground around this area.
.get 10 Verrall River Muck |q 27538/1
step
goto 79.4,77.6
.talk 45173
..turnin 27537
..turnin 27538
..accept 27545
step
goto 79.1,78.3
.' Go upstairs in the fort
.talk 45167
..turnin 27545
step
goto 79.2,78.3
.talk 45172
..accept 27621
step
goto 60.1,57.9
.talk 49271
..turnin 27621
..accept 27803
..accept 27804
step
goto 60.4,58.1
.talk 49795
.home Firebeard's Patrol
step
goto 60.4,58.3
.talk 46814
..accept 27805
step
goto 60.4,57.6
.talk 47147
.fpath Firebeard's Patrol
step
goto 59.8,56.2
.' Use your Wildhammer Water Bucket next to fires to extinguish them |use Wildhammer Water Bucket##62508
.' Click Meara's Dried Roses |tip They look like a bushel of dark red roses hanging on the wall inside this burning building.
.get Meara's Dried Roses |q 27805/1
step
goto 59.5,55.9
.' Use your Wildhammer Water Bucket next to fires to extinguish them |use Wildhammer Water Bucket##62508
.' Click Aprika's Lost Doll |tip It looks like a white teddy bear with crossed out eyes sitting on the ground inside this burning building.
.get Aprika's Doll |q 27805/3
step
goto 59.3,56.9
.' Use your Wildhammer Water Bucket next to fires to extinguish them |use Wildhammer Water Bucket##62508
.' Click Parlan's Ivory Hammer |tip It looks like a white hammer sitting on the stove inside this burning building.
.get Parlan's Ivory Hammer |q 27805/2
step
goto 59.8,56.9
.' Use your Wildhammer Water Bucket next to fires |use Wildhammer Water Bucket##62508
.' Extinguish 50 Village Fires |q 27804/1
.kill 8 Subjugated Firestarter |q 27803/1
step
goto 60.2,58.0
.talk 49271
..turnin 27803
..turnin 27804
..accept 27806
step
goto 60.4,58.3
.talk 46814
..turnin 27805
step
goto 57.5,58.1
.talk 46805
..turnin 27806
..accept 27807
..accept 27808
..accept 27809
step
goto 50.8,60.2
.talk 46811
..turnin 27807
..accept 27810
step
goto 50.8,60.2
.talk 46812
..accept 27811
step
goto 51.1,59.9
.talk 46813
..' Tell him he's not backing out
.from Mullan Gryphon Rider##46813
.' Defeat a Mullan Gryphon Rider |q 27810/1
step
goto 50.8,60.2
.talk 46811
..turnin 27810
step
goto 57.3,67.6
.talk 46968
..' Let the gryphons smell the piece of charred highland birch
.' Find and return 8 Mullan Gryphons |q 27811/1
step
goto 61.4,67.4
.talk 47317
..turnin 27808
..accept 27999
step
goto 50.8,60.2
.talk 46812
..turnin 27811
step
goto 50.8,60.3
.talk 46811
..accept 27812
step
goto 57.5,58.1
.talk 46805
..turnin 27999
..turnin 27812
step
goto 62.5,48.4
.talk 46850
..turnin 27809
..accept 27813
step
goto 62.6,48.6
.talk 48046
..accept 28233
step
goto 62.6,48.6
.talk 46806
..accept 27814
step
goto 63.1,47.6
.talk 48053
..turnin 28233
..accept 28234
step
goto 62.3,47.0
.' Go upstairs in this building
.from Gorosh the Pant Stealer##48102
.get Bahrum's Pants |q 28234/1
step
goto 62.3,46.8
.talk 47465
..' Help the orcs up
.' Defeat 6 Dragonmaw Stragglers |q 27813/1
.' Click Dragonmaw Weapon Axes |tip The Dragonmaw Stragglers drop them when you help them up.  They look like axes stuck in the ground.
.' Click Dragonmaw Weapon Racks |tip They look like brown racks with 2 axes on them mounted on walls around this area.
.get 8 Dragonmaw Weapon |q 27814/1
step
goto 63.2,47.6
.talk 48053
..turnin 28234
step
goto 62.5,48.4
.talk 46850
..turnin 27813
step
goto 62.6,48.6
.talk 46806
..turnin 27814
step
goto 62.5,48.4
.talk 46850
..accept 27815
step
goto 57.5,58.1
.talk 46805
..turnin 27815
..accept 27816
step
goto 60.2,57.8
.talk 46804
..turnin 27816
..accept 27817
step
goto 59.9,57.3
.' Click a Firebeard Gryphon Mount |tip They look like big eagles standing here.
.' Ride the Firebeard Gryphon Mount |invehicle |c |q 27817
step
goto 58.8,53.1
.' While flying on the Firebeard Gryphon Mount:
.' Use the abilities on your action bar to kill Twilight Stormbenders on the floating rocks |tip Use your Storm Shield ability when someone casts a lightning attack on you.
.kill 12 Twilight Stormbender |q 27817/1
step
goto 58.6,51.7
.' While flying on the Firebeard Gryphon Mount:
.' Use the abilities on your action bar to weaken Servias Windterror
.' Eventually, you will get off the gryphon and fight him regularly
.kill Servias Windterror |q 27817/2 |tip When he casts his lightning spell on the ground, move away from that spot to avoid damage when it explodes.
step
goto 60.2,57.9
.talk 49271
..turnin 27817
..accept 27640
..accept 28001
step
goto 46.7,66.0 |n
.' Enter this building |goto 46.7,66.0,0.5 |noway |c
step
goto 45.9,65.5
.talk 46177
..turnin 27640
..accept 27643
..accept 27644
..accept 27645
step
goto 45.9,65.4
.talk 46143
..accept 27641
..accept 27642
step
goto 45.8,71.7
.talk 46174
..turnin 27645
..accept 27648
step
goto 45.8,71.7
.talk 46174
..' Tell him yeah... and let's get to it then
.' Escort Cayden Dunwald
.' Accompany Cayden through Dunwald Market Row |q 27648/1
.' Cayden Dunwald can also be at [47.9,74.5]
step
goto 47.9,74.5
.talk 46174
..turnin 27648
.' Cayden Dunwald can also be at [45.8,71.7]
step
goto 52.9,74.3
.talk 46175
..turnin 27644
..accept 27647
step
goto 52.8,69.8
.' Click a Sacred Ale Tap |tip They look like 3 wooden kegs built into the wall in the basement of this building.
.get Sacred Wildhammer Ale |q 27647/1
step
goto 52.4,70.3
.talk 46583
..turnin 27647
..accept 27649
step
goto 46.4,59.1
.talk 46176
..turnin 27643
..accept 27646
step
goto 45.4,60.0
.' As you walk around doing quests:
.talk 46609
.' Click Wildhammer Ale Casks and get them |tip They look like brown barrels sitting on the ground around this area.
.' Go into the basement of this building
.' Search the cellar in southern Dunwald Hovel |q 27646/1
step
goto 46.4,53.8
.' As you walk around doing quests:
.talk 46609
.' Click Wildhammer Ale Casks and get them |tip They look like brown barrels sitting on the ground around this area.
.' Go into the basement of this building
.' Search the cellar in northwestern Dunwald Hovel |q 27646/2
step
goto 48.4,52.6
.' As you walk around doing quests:
.talk 46609
.' Click Wildhammer Ale Casks and get them |tip They look like brown barrels sitting on the ground around this area.
.' Go to this spot
.' Search the buildings in eastern Dunwald Hovel |q 27646/3
step
goto 46.0,58.7
.talk 46176
..turnin 27646
..accept 27650
step
goto 45.9,54.8
.from Bloodgorged Ettin##46145+, Twilight Scavenger##46183+, Twilight Pillager##46144+, Twilight Shadeprowler##46526+
.' Welcome 20 Twilight Guests to Dunwald |q 27641/1
.talk 46609
.' Find 12 Dunwald Victims |q 27642/1
.' Click Wildhammer Ale Casks |tip They look like brown barrels sitting on the ground around this area.
.get 6 Wildhammer Ale |q 27649/1
.' You can find more of all these things:
.' Around 47.0,66.1
.' Around 46.4,72.6
.' Around 50.7,69.8
step
goto 46.7,66.0 |n
.' Enter this building |goto 46.7,66.0,0.5 |noway |c
step
goto 46.0,65.5
.talk 46177
..turnin 27650
..accept 27651
step
goto 50.5,70.7
.talk 46585
..turnin 27649
step
goto 50.5,70.7
.talk 46143
..turnin 27641
..turnin 27642
step
goto 50.5,70.6
.talk 46628
..' Tell him you're in
.kill Darunga |q 27651/1
step
goto 50.5,70.6
.talk 46628
..turnin 27651
step
goto 49.0,29.8
.talk 46591
..turnin 28001
..accept 27754
..accept 28369
step
goto 49.8,29.2
.talk 48010
..accept 27752
step
goto 49.8,29.3
.talk 48013
..turnin 28369
..accept 27753
step
goto 49.5,30.4
.talk 49591
.home Thundermar
step
goto 48.5,28.1
.talk 47154
.fpath Thundermar
step
goto 46.2,37.4
.from Dragonmaw Marauder##46310+
.get 8 Dragonmaw Insignia |q 27754/1
.' Click Thundermar Ale Kegs |tip They look like wooden barrels on the ground around this area.
.get 10 Wildhammer Keg |q 27752/1
.' Click Wildhammer Food Stores |tip They look like hanging fish, sliced bread, and legs of meat on the ground around this area.
.get 15 Wildhammer Food Stores |q 27753/1
.' You can find more around 49.1,37.3
step
goto 49.0,29.8
.talk 46591
..turnin 27754
step
goto 49.8,29.2
.talk 48010
..turnin 27752
step
goto 49.8,29.3
.talk 48013
..turnin 27753
step
goto 49.8,29.2
.talk 48010
..accept 28241
step
goto 49.1,29.4
.talk 48174
..accept 28211
..accept 28212
..accept 28215
step
goto 49.0,29.7
.talk 46591
..accept 28216
step
goto 57.9,33.5
.' Click the Eye of Twilight |tip It's a purple orb above a spinning metal machine.
..turnin 28241
..accept 28242
step
goto 58.0,32.6
.kill 10 Shaman of the Black |q 28242/1
.from Obsidian Stoneslave##47226+
.get 10 Twisted Elementium Loop |q 28215/1
step
goto 57.9,33.5
.' Click the Eye of Twilight |tip It's a purple orb above a spinning metal machine.
..turnin 28242
..accept 28243
step
goto 49.1,29.4
.talk 48174
..turnin 28215
step
goto 49.7,29.2
.talk 48010
..turnin 28243
..accept 28244
step
goto 49.8,29.1
.' Click the Eye of Twilight |tip It's a spinning purple orb in a metal stand.
.' Watch the cutscene
.' Peered into the Eye |q 28244/1
step
goto 49.7,29.2
.talk 48010
..turnin 28244
step
goto 42.5,23.5
.from Magmalord Falthazar##48015
.get Magmalord Falthazar's Head |q 28216/1
step
goto 42.2,24.3
.from Unbound Emberfiend##48016+
.get 5 Molten Fury |q 28212/1
.' Click Tempered Spears |tip They look like spears with their points sticking out of the ground around this area.
.get 8 Tempered Spear |q 28211/1
step
goto 49.0,29.7
.talk 46591
..turnin 28216
step
goto 49.1,29.4
.talk 48174
..turnin 28211
..turnin 28212
..accept 28280
step
goto 49.2,29.8
.' Use your Shoulder-Mounted Drake-Dropper on Dragonmaw Black Drakes |use Shoulder-Mounted Drake-Dropper##63393 |tip They are flying in the sky around this area.
.kill 8 Dragonmaw Black Drake |q 28280/1
step
goto 49.1,29.4
.talk 48174
..turnin 28280
step
goto 49.0,29.7
.talk 48173
..accept 28281
step
goto 48.1,30.0
.kill 8 Dragonmaw Skyclaw |q 28281/1
step
goto 49.0,29.7
.talk 48173
..turnin 28281
..accept 28282
step
goto 49.0,29.7
.talk 48173
..' Tell him you're ready to fight him!
.kill Narkrall Rakeclaw |q 28282/1
step
goto 49.0,29.7
.talk 48173
..turnin 28282
..accept 28294
step
goto 54.6,18.0
.talk 49574
.home Kirthaven
step
goto 54.3,16.7
.talk 48367
..turnin 28294
step
goto 54.9,17.2
.talk 48365
..accept 28346
step
goto 54.4,16.8
.talk 48364
..turnin 28346
..accept 28377
step
goto 56.8,15.1
.talk 47155
.fpath Kirthaven
step
goto 38.1,34.5
.talk 48472
..turnin 28377
..accept 28378
..accept 28379
step
goto 37.6,33.4 |n
.' Enter the cave |goto 37.6,33.4,0.5 |noway |c |travelfor 1
step
goto 35.0,31.1
.' Go to this spot inside the cave
.' Rescue Fanny Thundermar |q 28378/1
step
goto 37.6,33.4 |n
.' Leave the cave |goto 37.6,33.4,0.5 |noway |c |q 28378
step
goto 38.7,30.9
.from Glopgut Pounder##48474+, Glopgut Hurler##48475+
.' Slay 10 Glopgut Ogres |q 28379/1
step
goto 38.1,34.5
.talk 48472
..turnin 28378
..turnin 28379
..accept 28407
step
goto 54.7,17.9
.talk 48530
..turnin 28407
step
goto 54.6,17.5
.talk 48366
..accept 28413
step
goto 54.6,17.5
.talk 48366
..' Tell him you're ready, let's write a song
.' Create a song |q 28413/1
step
goto 54.6,17.5
.talk 48366
..turnin 28413
step
goto 54.3,16.7
.talk 49374
..accept 28408
..accept 28409
..accept 28410
..accept 28411
step
goto 53.4,24.5
.from Highland Elk##46970+, Highland Doe##46971+
.get 8 Fresh Venison |q 28411/1
.from Highland Worg##46153+
.get 5 Worg Rib |q 28411/2
step
goto 56.8,21.9
.from Tawny Owl##46162+
.' Click Pristine Owl Feathers |tip They look like blue feathers on the ground around this mountainous area.
.get 12 Pristine Owl Feather |q 28408/1
step
goto 64.4,22.6
.talk 48758
..' Tell him you're here to escort a delivery to Kirthaven
.' Follow the dwarves
.from Dragonmaw Skirmisher##48799+
.' Escort the Supply Caravan |q 28409/1
step
goto 75.1,33.8
.' Find a zeppelin flying north or south along this coast between Dragonmaw Port and The Krazzworks
.' Fly onto the zeppelin and land on it
.' Go downstairs on the zeppelin
.' Click a Crate of Fine Cloth |tip They look like yellow metal boxes downstairs in the zeppelin.
.get Fine Dark Cloth |q 28410/1
step
goto 54.3,16.7
.talk 49374
..turnin 28408
..turnin 28409
..turnin 28410
..turnin 28411
step
goto 54.3,16.8
.talk 48368
..accept 28655
step
goto 54.3,16.8
.talk 48368
..' Tell him to let the wedding commence!
.' Watch the cutscene
.from The Beast Unleashed##49234
.' Complete the Nuptuals |q 28655/1
step
goto 55.3,17.3
.talk 49358
..turnin 28655
step
goto 55.2,17.3
.talk 49374
..accept 27374
step
goto 44.0,10.6
.talk 43901
..turnin 27374
..accept 27299
step
goto 41.8,11.4
.kill 3 Tentacle of Iso'rath |q 27299/1
step
goto 44.0,10.6
.talk 45332
..turnin 27299
..accept 27300
step
goto 44.0,11.3
.talk 45391
..accept 27301
step
goto 44.4,11.6
.talk 45432
..accept 27302
step
goto 44.2,18.1
.talk 45362
..turnin 27301
..accept 27303
step
goto 42.3,17.2
.from Twilight Captivator##45359+, Twilight Bonebreaker##45334+
.kill 12 Drakgor cultists |q 27300/1
.from Bound Fleshburner##45358+
.get 5 Fleshburner Heart |q 27303/1
.' Click Barrels of Pyreburn Oil |tip They look like wooden kegs on the ground around this area.
.get 10 Pyreburn Oil |q 27302/1
step
goto 44.4,11.6
.talk 45432
..turnin 27302
step
goto 43.8,11.3
.talk 45386
..turnin 27303
step
goto 44.0,10.6
.talk 45332
..turnin 27300
..accept 27376
step
goto 44.5,10.6
.' Click an Earthen Ring Gryphon |tip They look like big eagles standing in this spot.
.' Join the assault on Iso'rath |q 27376/1
step
goto 48.4,14.6
.talk 47991
..turnin 27376
..accept 27377
step
'Fight the oozes that attack
.' Try to fight as long as you can
.' Survive Iso'rath's defenses |q 27377/1
.' Click the Quest Complete box that pops up
..turnin 27377
..accept 27378
step
'Deathwing will attack you and Thrall
.' Aid Thrall in battling Deathwing |q 27378/1
.' Click the Quest Complete box that pops up
..turnin 27378
..accept 27379
step
goto 49.6,15.8
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom oof your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
.from Tentacle of Iso'rath##48790
.' Save Stormcaller Jalara |q 27379/2
step
goto 49.1,13.1
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom oof your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
.from Tentacle of Iso'rath##48790
.' Save Earthmender Duarn |q 27379/3
step
goto 47.0,13.1
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom oof your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
.from Tentacle of Iso'rath##48790
.' Save Hargoth Dimblaze |q 27379/1
step
goto 47.5,15.6
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom oof your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
.from Tentacle of Iso'rath##48790
.' Save Stormcaller Mylra |q 27379/4
step
goto 48.7,16.6
.talk 48059
..turnin 27379
..accept 27380
step
goto 48.8,14.9
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom oof your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
.from Brain of Iso'rath##47960
.' Kill Iso'rath |q 27380/1
step
goto 44.0,10.6
.talk 45332
..turnin 27380
step
goto 44.1,10.5
.talk 48265
..accept 27485
step
goto 27.6,21.4
.' You will get captured by a red dragon
.' Meet with Lirastrasza |q 27485/1
step
goto 29.3,25.9
.talk 45528
..turnin 27485
..accept 27504
step
goto 29.9,31.3
.talk 45522
..turnin 27504
..accept 27505
step
goto 29.8,31.4
.talk 45562
..accept 27506
step
goto 29.7,33.1
.' Protect the Vermillion Menders while they heal Celastrasza to hull health
.' Defend 5 Vermillion Menders |q 27505/1
.from Twilight Wyrmkiller##45748+
.' Use your Ruby Seeds on Twilight Wyrmkiller and Vermillion Mender corpses |use Ruby Seeds##61323
.' Reclaim 6 Dragonkin corpses |q 27506/1
step
goto 29.9,31.3
.talk 45522
..turnin 27505
step
goto 29.8,31.4
.talk 45562
..turnin 27506
step
goto 29.9,31.3
.talk 45522
..accept 27564
step
goto 29.3,25.9
.talk 45528
..turnin 27564
..accept 27507
..accept 27509
step
goto 29.3,26.0
.talk 45518
..accept 27508
step
goto 28.6,24.9
.talk 47121
.fpath Vermillion Redoubt
step
goto 18.4,16.7 |n
.' Enter the cave |goto 18.4,16.7,0.5 |noway |c |travelfor 2
step
goto 18.0,16.9
.' Use your Flashgrowth Mote next to the Twiligt Portal |use Flashgrowth Mote##61385 |tip It looks like a blue and pink swirled portal in a metal case.
.' Destroy the Twilight Portal |q 27509/1
step
goto 20.9,15.7
.from Twilight Abductor##45642+, Twilight Flamequencher##45618+
.kill 12 Twilight invaders |q 27507/1
.' Click Vermillion Eggs |tip They look like brown spiked eggs on the ground around this area.
.get 6 Vermillion Egg |q 27508/1
step
goto 29.3,26.0
.talk 45528
..turnin 27507
..turnin 27509
step
goto 29.3,26.0
.talk 45518
..turnin 27508
step
goto 29.3,26.0
.talk 45528
..accept 28101
step
goto 26.0,38.8
.talk 47592
..turnin 28101
..accept 28103
..accept 28104
step
goto 25.6,37.9
.from Twilight Spearwarder##47490+
.get Twilight Caravan Cargo Key |q 28104/1
.' Click a Twilight Caravan Chest |tip They look like boxes with a big purple jewel on top of them, sitting in wagons around this area.
.get Twilight's Hammer Gatestone |q 28104/2
.kill 8 Twilight Spearwarder |q 28103/1
step
goto 26.0,38.8
.talk 47592
..turnin 28103
..turnin 28104
..accept 28108
step
'Next to you:
.talk 47611
..accept 28107
step
goto 29.5,51.7
.' Go to this spot
.' Open the Dragonmaw Gate |q 28108/1
step
'Next to you:
.talk 47611
..turnin 28108
..accept 28109
step
goto 27.5,54.6
.from Twilight Sentinel##47406+, Twilight Guardsman##47394+, Twilight Stalker##47401+
.' Kill 30 Wyrm's Bend Cultists |q 28107/1
step
'Next to you:
.talk 47611
..turnin 28107
step
goto 22.8,56.1
.' Go to this spot
.' Secure the Entrance to Grim Batol |q 28109/1
step
goto 22.1,56.6
.talk 47605
..turnin 28109
step
goto 21.8,57.0
.talk 47603
..accept 28712
step
goto 14.9,16.3
.talk 49417
..turnin 28712
step
goto 14.1,15.4
.talk 49810
..accept 28758
step
goto 14.1,15.1
.' Click the Vermillion Vanguard |tip It's a red dragon.
.' Use the abilities on your hotbar on Twilight Shadowdrakes |tip They are blue dragons that fly around in the air in the area you fly to.
.kill 8 Twilight Shadowdrake |q 28758/1
step
goto 22.1,56.6
.talk 47605
..turnin 28758
..accept 28171
step
goto 59.1,69.8
.talk 47902
..turnin 28171
..accept 28191
..accept 28173
step
goto 59.0,69.8
.talk 47904
..accept 28175
step
goto 63.9,78.0
.' Use Alexstrasza's Tear in the small cave beneath this huge tree |use Alexstrasza's Tear##63139
.' Plant Alexstrasza's Tear |q 28175/1
step
goto 62.7,76.2
.from Obsidian Viletongue##47796+, Obsidian Charscale##47797+
.kill 10 Obsidian Dragonkin |q 28191/1
.' Use your Wyrmhunter Hooks on Obsidian Pyrewings |use Wyrmhunter Hooks##63092 |tip They are red dragons that fly in the sky around this area.  You will get a message on your screen when the Obsidian Pyrewing is almost dead.  When you see that message, use your Wyrmhunter Hooks on another Obsidian Pyrewing to jump to it.  If you fall, it can hurt you a lot.
.kill 8 Obsidian Pyrewing |q 28173/1
step
goto 59.1,69.8
.talk 47902
..turnin 28191
..turnin 28173
step
goto 59.0,69.8
.talk 47904
..turnin 28175
step
goto 59.1,69.8
.talk 47902
..accept 28176
step
goto 59.3,82.5
.' Use your Mother's Flame next to the big blue spikes eggs |use Mother's Flame##63126
.' Hatch the Obsidian Whelps |q 28176/1
step
goto 55.4,83.5 |n
.' Enter the cave |goto 55.4,83.5,0.5 |noway |c |travelfor 2
step
goto 49.8,85.8
.' Go to this spot
.' Infiltrate the Obsidian Lair |q 28176/2
step
goto 44.9,91.0
.talk 47905
..turnin 28176
..accept 28247
.from Obsidia##47929
.' Defeat Obsidia |q 28247/1
step
goto 55.4,83.5 |n
.' Leave the cave |goto 55.4,83.5,0.5 |noway |c |q 28247
step
goto 59.1,69.8
.talk 47902
..turnin 28247
..accept 28248
step
goto 43.4,57.4
.talk 45668
..turnin 28248
..accept 27492
step
goto 43.4,57.3
.talk 45669
..accept 27496
..accept 27490
step
goto 43.6,57.2
.talk 49599
.home Victor's Point
step
goto 43.9,57.3
.talk 47118
.fpath Victor's Point
step
goto 43.8,57.2
.talk 45904
..' Tell him you're here to lead the Wildhammer squad and drop off the SI:7 agents
.' Get your Wildhammer Squad |q 27490/1
step
goto 39.2,64.5
.' Go to this spot and land on the flashing blue X on the ground
.' Drop off the SI:7 |q 27490/2
step
goto 38.8,64.3
.' Use your Artillery Flare |use Artillery Flare##61363
.' Target the Northern Building |q 27496/1
step
goto 40.0,64.4
.' Use your Artillery Flare |use Artillery Flare##61363
.' Target the Northeastern Building |q 27496/2
step
goto 40.4,69.2
.' Use your Artillery Flare |use Artillery Flare##61363
.' Target the Southwestern Building |q 27496/3
step
goto 41.4,71.2
.' Use your Artillery Flare |use Artillery Flare##61363
.' Target the Southern Building |q 27496/4
step
goto 41.1,69.8
.from Bloodeye Magelord##45795+, Bloodeye Brute##45787+, Twilight Ettin##45838+
.kill 10 Bloodeye Clan ogres & ettins |q 27492/1
step
goto 43.4,57.3
.talk 45669
..turnin 27496
..turnin 27490
step
goto 43.4,57.4
.talk 45668
..turnin 27492
..accept 27494
step
goto 38.1,66.2
.' Click the Hidden Explosives |tip It looks like a wooden crate sitting up on this hill.
.' Detonate the Hidden Explosives |q 27494/1
.' Click the Quest Complete box that pops up
..turnin 27494
..accept 27498
step
goto 40.5,62.3
.' Use your Attack Signal at the top of this tower |use Attack Signal##61511
.' Signal the Attack |q 27498/1
.' Click the Quest Complete box that pops up
..turnin 27498
..accept 27500
step
goto 39.8,71.3 |n
.' Enter the cave |goto 39.8,71.3,0.5 |noway |c |travelfor 3
step
goto 37.6,71.3
.from Za'brox##46017
.get Za's Head |q 27500/1
.get Brox's Head |q 27500/4
step
goto 38.7,70.2
.from Beeble'phod##46018
.get Phod's Head |q 27500/2
.get Beeble's Head |q 27500/3
step
goto 43.4,57.3
.talk 45669
..turnin 27500
..accept 27502
step
goto 38.9,64.0
.talk 46076
..' Tell him you're ready
.' Speak to the Squad commander |q 27502/1
step
'Follow the SI:7 Squad Commander and the SI:7 Agents up the path
.' Escort the SI:7 |q 27502/2
.' Click the Quest Complete box that pops up
..turnin 27502
..accept 27636
step
goto 36.4,66.0
.talk 45796
..turnin 27636
..accept 27652
..accept 27654
..accept 27657
step
goto 37.5,88.7
.talk 46242
..turnin 27657
..accept 27659
..accept 27660
step
goto 37.6,88.7
.talk 46243
..accept 27662
step
goto 44.1,81.4
.' Click the Air Portal Controller |tip It looks like metal canister sitting on the ground up on this floating island.
.kill Debilitated Aetharon |q 27659/2
step
goto 38.0,80.2
.' Click the Earth Portal Controller |tip It looks like metal canister sitting on the ground.
.kill Debilitated Apexar |q 27659/1
step
goto 33.2,62.4
.' Click the Water Portal Controller |tip It looks like metal canister sitting on the ground.
.kill Debilitated Edemantus |q 27659/3
step
goto 27.6,63.9
.talk 46413
..turnin 27660
..accept 27661
step
goto 35.2,67.4
.from Corrupted Elementalist##46204+, Citadel Veteran##46205+, Twilight Vindicator##46203+
.kill 10 Twilight Citadel cultists |q 27654/1
.from Dark Assassin##46202+ |tip They look like black shades that wander around this whole area.  They are much less common than the other enemies, so you will probably have to fly around this whole area and look for them.
.get 5 Dark Assassin's Pendant |q 27652/1
.from Enslaved Tempest##46328+, Enslaved Waterspout##46329+, Enslaved Inferno##46327+
.' Free 10 Enslaved Elementals |q 27662/1
step
goto 40.8,79.0
.kill Lord Cannon |q 27661/1
step
goto 37.6,88.7
.talk 46243
..turnin 27662
step
goto 37.5,88.7
.talk 46242
..turnin 27659
step
goto 36.4,66.0
.talk 45796
..turnin 27652
..turnin 27654
..accept 27688
..accept 27695
step
goto 27.6,63.9
.talk 46413
..turnin 27661
..accept 27719
step
goto 35.1,61.1
.' Use your Water of Life next to the Corpse of Forgemaster Finlay |use Water of Life##62503 |tip He's chained to an ancor, drowned underwater.
.' Extract Artifact Information |q 27719/1
step
goto 36.4,66.0
.talk 45796
..turnin 27719
step
goto 36.1,70.7
.kill Master Klem |q 27688/2 |tip Mathias Shaw will come and kill him for you after you've fought him for a little bit.
step
goto 40.2,84.0
.from Blindeye the Guardian##46399
.get The Elementium Axe |q 27695/1
step
goto 42.3,83.5
.kill Mia the Rose |q 27688/3 |tip She's in a small room at the top of this big building.  Mathias Shaw will come and kill her for you after you've fought her for a little bit.
step
goto 43.4,88.5
.kill Dame Alys Finnsson |q 27688/1 |tip Mathias Shaw will come and kill her for you after you've fought her for a little bit.
step
goto 36.4,66.0
.talk 45796
..turnin 27688
..turnin 27695
..accept 27700
step
goto 32.4,68.7
.' Use The Elementium Axe |use The Elementium Axe##62248
.' Free Lirastrasza |q 27700/1
step
goto 36.4,66.0
.talk 45796
..turnin 27700
..accept 27702
step
goto 37.5,75.4
.from Twilight Skyterror##46416+ |tip They look like blue dragons laying on the ground all around this area.  You will need to fly around and search for them, as there aren't many of them at one time.  Watch Lirastrasza in the sky and you will see the blue dragons fall, so you can immediately fly to them to make it easier.
.' Deliver 5 Coup de Graces |q 27702/1
step
goto 36.4,66.0
.talk 45796
..turnin 27702
..accept 27711
step
goto 37.5,88.7
.talk 46243
..turnin 27711
..accept 27720
step
goto 37.5,88.7
.talk 46243
..' Tell him you're ready for that wild ride
.' Ride the Mine Cart to the End of the Line |q 27720/2
step
'Next to you:
.talk 46513
..turnin 27720
..accept 27742
..accept 27743
step
goto 37.4,93.2
.' Click Elementium Shards and get them as you walk |tip They look like small piles of flat rocks on the ground inside this cave.
.' Click the Twilight Rune of Earth |tip It looks like a pink symbol on the ground.
..accept 27744
step
goto 35.2,90.4
.' Click Elementium Shards and get them as you walk |tip They look like small piles of flat rocks on the ground inside this cave.
.' Click the Twilight Rune of Water |tip It looks like a pink symbol on the ground.
.' Destroy the Rune of Water |q 27744/2
step
goto 33.5,88.4
.' Click Elementium Shards and get them as you walk |tip They look like small piles of flat rocks on the ground inside this cave.
.' Click the Twilight Rune of Air |tip It looks like a pink symbol on the ground.
.' Destroy the Rune of Air |q 27744/3
step
goto 34.3,86.6
.' Click Elementium Shards and get them as you walk |tip They look like small piles of flat rocks on the ground inside this cave.
.' Click the Twilight Rune of Fire |tip It looks like a pink symbol on the ground.
.' Destroy the Rune of Fire |q 27744/4
step
goto 34.5,86.3
.from Twilight Miner##46610+, Depths Overseer##46579+
.kill 12 Elementium Depths cultists |q 27743/1
.' Click Elementium Shards |tip They look like small piles of flat rocks on the ground inside this cave.  You can also kill Elementium Spinner to get Elementium Shards.
.get 6 Elementium Shard |q 27742/1
step
'Next to you:
.talk 46513
..turnin 27742
..turnin 27743
..turnin 27744
..accept 27745
step
goto 36.4,83.8
.from Magmatooth##46611
.get Fire Portal Controller |q 27745/2
step
goto 36.4,83.8
.' Use your Fire Portal Controller |use Fire Portal Controller##62394
.' Use the Fire Portal Controller at the Fire Portal |q 27745/1
step
goto 37.5,88.7
.talk 46243
..turnin 27745
..accept 27782
step
goto 36.4,66.0
.talk 45796
..turnin 27782
..accept 27784
step
goto 45.4,88.0
.' Click The Hammer of Twilight |tip It's a huge hammer floating in a beam of blue light on this high platform.
..turnin 27784
..accept 27787
.' Watch the cutscene
.' Survive Skullcrusher's Backhand |q 27787/1
step
goto 45.4,87.9
.kill Skullcrusher the Mountain |q 27787/2 |tip Follow the instructions that pop up on your screen.  Click the altars surrounding the fight, you will gain buffs from them to help you fight.  The altars are stone blocks with candles on them.  Click Warlord Zaela when she becomes unconscious.  You will see a green arrow bouncing above her when you need to click her.  Eventually, she will fall to the ground near the end of the fight.  Click her body to play the drums she drops to call reinforcements to help finish the fight.
step
goto 43.4,57.4
.talk 45668
..turnin 27787
step
.' Earn the King of the Mountain achievement! |achieve 5320
step
'Congratulations! You've earned the King of the Mountain achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Cataclysm\\Consumed by Nightmare",[[
description Endure the nightmares of Iso'rath in the Twilight Highlands.
condition end achieved(5451)
step
goto Stormwind City,62.9,71.6
.' Click the Hero's Call Board |tip It looks like two white stone pillars with a wooden board hanging between them with papers pinned onto it.
..accept 28716
step
goto 85.7,31.8
.talk 29611
..turnin 28716
..accept 26960
step
goto 85.7,31.6
.talk 1747
..' Tell him to come with you
.' Become Introduced to Anduin |q 26960/1
step
goto 85.7,31.8
.talk 29611
..turnin 26960
..accept 26975
..accept 26977
step
goto 85.1,31.3
.talk 2439
..turnin 26977
..accept 26997
step
goto 29.3,26.5
.talk 29152
.' Interrogate 6 Dock Workers |q 26997/1
step
'Next to you:
.talk 44293
..turnin 26997
.' If Anduin Wrynn is not next to you, you can find in Stormwind Keep at [85.7,31.6] |tip Talk to him and tell him to come with you, if you have to go get him again.
step
goto 33.1,39.4
.' Go to this spot
.' Escort Anduin to Supply Sergeant Graves |q 26975/1
step
goto 33.1,39.5
.talk 44749
..turnin 26975
..accept 27038
step
'Next to you:
.talk 44293
..accept 27044
.' If Anduin Wrynn is not next to you, you can find in Stormwind Keep at [85.7,31.6] |tip Talk to him and tell him to come with you, if you have to go get him again.
step
goto 34.6,46.1
.' Click Missing Parts |tip They look like brown metal buckets with mechanical parts in them on the ground around this area.
.get 5 Missing Parts |q 27038/1
step
goto 34.8,38.2
.talk 44806
..turnin 27038
step
'Next to you:
.talk 44293
..accept 27064
.' If Anduin Wrynn is not next to you, you can find in Stormwind Keep at [85.7,31.6] |tip Talk to him and tell him to come with you, if you have to go get him again.
step
goto 52.0,5.8
.' Go to this spot
.' Escort Prince Anduin to Farmer Wollerton |q 27044/1
.' If Anduin Wrynn is not next to you, you can find in Stormwind Keep at [85.7,31.6] |tip Talk to him and tell him to come with you, if you have to go get him again.
step
goto 52.1,6.0
.talk 44807
..turnin 27044
..accept 27060
step
goto 43.8,4.6
.' Go to this spot
.' Discover the Crime Scene |q 27060/1
.from Twilight Striker##44808+
.' Protect Prince Anduin |q 27060/2
step
'Next to you:
.talk 44293
..turnin 27060
.' If Anduin Wrynn is not next to you, you can find in Stormwind Keep at [85.7,31.6] |tip Talk to him and tell him to come with you, if you have to go get him again.
step
goto 80.2,62.1
.' Go inside this building and up the spiral staircase
.' Allow Anduin to Examine Samuelson's Papers |q 27064/1
.' If Anduin Wrynn is not next to you, you can find in Stormwind Keep at [85.7,31.6] |tip Talk to him and tell him to come with you, if you have to go get him again.
step
'Next to you:
.talk 44293
..turnin 27064
..accept 28807
.' If Anduin Wrynn is not next to you, you can find in Stormwind Keep at [85.7,31.6] |tip Talk to him and tell him to come with you, if you have to go get him again.
step
goto 81.3,63.5
.talk 332
..turnin 28807
..accept 27072
step
goto 39.8,56.8
.kill 6 Crazed Cultist |q 27072/1
step
goto 37.2,56.2
.talk 50049
..turnin 27072
..accept 27092
step
goto 52.9,51.0 |n
.' Enter the Cathedral |goto 52.9,51.0,0.5 |noway |c
step
goto 51.3,44.3 |n
.' Follow the spiral ramp down |goto 51.3,44.3,0.5 |noway |c
step
goto 53.2,42.6 |n
.' Follow the stairs down |goto 53.2,42.6,0.5 |noway |c
step
goto 50.6,42.2
.kill The Black Bishop |q 27092/1
step
goto 50.2,42.6
.' Click the Pile of Explosives
..turnin 27092
..accept 27106
step
goto 85.1,31.0
.talk 2439
..' Tell him it's over
.' Unmask Major Samuelson |q 27106/1
.kill Major Samuelson |q 27106/2
step
goto 85.8,31.7
.talk 29611
..turnin 27106
..accept 28238
step
goto 26.1,47.3
.talk 44806
..turnin 28238
..accept 28832
step
goto 25.9,47.6
.' Click Flintlocke's Seaplane |tip It looks like an airplane flying in place above the water.
.' Ride to Twilight Highlands |goto Twilight Highlands |noway |c
step
goto Twilight Highlands,81.0,79.4
.talk 49022
..turnin 28832
..accept 28596
step
goto 81.1,77.3
.kill 10 Horde Attackers |q 28596/1
step
goto 81.0,79.4
.talk 49022
..turnin 28596
step
goto 81.0,79.4
.talk 49252
..accept 28597
step
goto 81.1,77.3
.' Click Cannon Powder Barrels |tip They look like wooden barrels on the ground around this area.
.get 10 Cannon Powder |q 28597/1
step
goto 78.8,76.8
.talk 49252
..turnin 28597
..accept 28598
step
'You may have to wait for a few minutes, so just stand here and wait
.' Wait to be launched from Flintlocke's Cannon |q 28598/1
step
'Go downstairs in the zeppelin
.' Use Flintlocke's Explosives while downstairs |use Flintlocke's Explosives##64660
.' Destroy the Skyshredder |q 28598/2
step
goto 78.9,76.7
.talk 49252
..turnin 28598
..accept 28599
step
goto 79.1,78.3
.' Go upstairs in the fort
.talk 49358
..turnin 28599
..accept 27338
step
goto 79.3,78.5
.talk 45170
..accept 27177
..accept 27178
step
goto 76.0,80.0
.talk 45171
..accept 27200
step
goto 76.1,79.8
.from Ophelia##45183
.' Slay Ophelia and Protect Ephram |q 27200/1
step
goto 76.0,80.0
.talk 45171
..turnin 27200
step
goto 76.2,83.0
.' Click Water-Logged Crates |tip They look like wooden boxes on the ground underwater around this area.
.get 8 Recovered Supplies |q 27177/1
.from Blackscale Seacaller##45182+, Blackscale Myrmidon##45179+
.' Slay 10 Blackscale Naga |q 27178/1
step
goto 79.3,78.5
.' Go upstairs in the fort
.talk 45170
..turnin 27177
..turnin 27178
step
goto 76.8,69.8
.talk 45169
..turnin 27338
..accept 27341
..accept 27366
step
goto 77.0,69.9
.talk 49252
..accept 27433
step
goto 77.5,65.3
.' Go to this spot
.' Scout the Beach Head Control Point |q 27341/1
step
goto 77.4,67.1
.kill 12 Axebite Marine |q 27366/1 |tip Be careful and pay attention not to stand too close to the red arrows bouncing above the ground.  Cannon balls land at the arrows a few seconds after the arrows appear, and they will hurt you a lot if they hit you.
step
goto 74.3,68.0
.from Diamond-Blade Shredder##45185+
.get 5 Abused Shredder Parts |q 27433/1
step
goto 76.8,69.8
.talk 45169
..turnin 27341
..turnin 27366
..accept 27514
step
goto 77.0,69.9
.talk 45168
..turnin 27433
..accept 27468
step
goto 73.4,71.2
.talk 45524
..' Tell him you'll cover him while he makes repairs
.' Speak to a Siege Tank Commander |q 27468/1
.from Axebite Grunt##45187+
.' Defend the Siege Tank |q 27468/2
step
goto 77.0,69.9
.talk 45168
..turnin 27468
step
goto 67.7,66.0
.talk 45172
..turnin 27514
..accept 27515
step
goto 71.4,66.2
.' Click Thorny Stankroots |tip They look like grey-ish bumps with green leaves on them on the ground around this area.
.get 8 Thorny Stankroot |q 27515/1
step
goto 67.7,66.0
.talk 45172
..turnin 27515
..accept 27516
step
goto 67.7,66.0
.talk 45172
..' Tell him you're ready, let's go!
.' Fly with Thordun Hammerblow to Highbank |q 27516/1
step
goto 79.4,78.5
.talk 49688
.home Highbank
step
goto 79.1,78.3
.' Go upstairs in the fort
.talk 45167
..turnin 27516
..accept 27537
step
goto 79.2,78.3
.talk 45172
..accept 27538
step
goto 81.7,77.1
.talk 47119
.fpath Highbank
step
goto 67.7,46.9
.from Muddied Water Elemental##44011+
.get 5 Whirlpool Core |q 27537/1
.' Click Verrall River Muck |tip They look like mounds of swirled gray and white sand on the ground around this area.
.get 10 Verrall River Muck |q 27538/1
step
goto 79.4,77.6
.talk 45173
..turnin 27537
..turnin 27538
..accept 27545
step
goto 79.1,78.3
.' Go upstairs in the fort
.talk 45167
..turnin 27545
step
goto 79.2,78.3
.talk 45172
..accept 27621
step
goto 60.1,57.9
.talk 49271
..turnin 27621
..accept 27803
..accept 27804
step
goto 60.4,58.1
.talk 49795
.home Firebeard's Patrol
step
goto 60.4,58.3
.talk 46814
..accept 27805
step
goto 60.4,57.6
.talk 47147
.fpath Firebeard's Patrol
step
goto 59.8,56.2
.' Use your Wildhammer Water Bucket next to fires to extinguish them |use Wildhammer Water Bucket##62508
.' Click Meara's Dried Roses |tip They look like a bushel of dark red roses hanging on the wall inside this burning building.
.get Meara's Dried Roses |q 27805/1
step
goto 59.5,55.9
.' Use your Wildhammer Water Bucket next to fires to extinguish them |use Wildhammer Water Bucket##62508
.' Click Aprika's Lost Doll |tip It looks like a white teddy bear with crossed out eyes sitting on the ground inside this burning building.
.get Aprika's Doll |q 27805/3
step
goto 59.3,56.9
.' Use your Wildhammer Water Bucket next to fires to extinguish them |use Wildhammer Water Bucket##62508
.' Click Parlan's Ivory Hammer |tip It looks like a white hammer sitting on the stove inside this burning building.
.get Parlan's Ivory Hammer |q 27805/2
step
goto 59.8,56.9
.' Use your Wildhammer Water Bucket next to fires |use Wildhammer Water Bucket##62508
.' Extinguish 50 Village Fires |q 27804/1
.kill 8 Subjugated Firestarter |q 27803/1
step
goto 60.2,58.0
.talk 49271
..turnin 27803
..turnin 27804
..accept 27806
step
goto 60.4,58.3
.talk 46814
..turnin 27805
step
goto 57.5,58.1
.talk 46805
..turnin 27806
..accept 27807
..accept 27808
..accept 27809
step
goto 50.8,60.2
.talk 46811
..turnin 27807
..accept 27810
step
goto 50.8,60.2
.talk 46812
..accept 27811
step
goto 51.1,59.9
.talk 46813
..' Tell him he's not backing out
.from Mullan Gryphon Rider##46813
.' Defeat a Mullan Gryphon Rider |q 27810/1
step
goto 50.8,60.2
.talk 46811
..turnin 27810
step
goto 57.3,67.6
.talk 46968
..' Let the gryphons smell the piece of charred highland birch
.' Find and return 8 Mullan Gryphons |q 27811/1
step
goto 61.4,67.4
.talk 47317
..turnin 27808
..accept 27999
step
goto 50.8,60.2
.talk 46812
..turnin 27811
step
goto 50.8,60.3
.talk 46811
..accept 27812
step
goto 57.5,58.1
.talk 46805
..turnin 27999
..turnin 27812
step
goto 62.5,48.4
.talk 46850
..turnin 27809
..accept 27813
step
goto 62.6,48.6
.talk 48046
..accept 28233
step
goto 62.6,48.6
.talk 46806
..accept 27814
step
goto 63.1,47.6
.talk 48053
..turnin 28233
..accept 28234
step
goto 62.3,47.0
.' Go upstairs in this building
.from Gorosh the Pant Stealer##48102
.get Bahrum's Pants |q 28234/1
step
goto 62.3,46.8
.talk 47465
..' Help the orcs up
.' Defeat 6 Dragonmaw Stragglers |q 27813/1
.' Click Dragonmaw Weapon Axes |tip The Dragonmaw Stragglers drop them when you help them up.  They look like axes stuck in the ground.
.' Click Dragonmaw Weapon Racks |tip They look like brown racks with 2 axes on them mounted on walls around this area.
.get 8 Dragonmaw Weapon |q 27814/1
step
goto 63.2,47.6
.talk 48053
..turnin 28234
step
goto 62.5,48.4
.talk 46850
..turnin 27813
step
goto 62.6,48.6
.talk 46806
..turnin 27814
step
goto 62.5,48.4
.talk 46850
..accept 27815
step
goto 57.5,58.1
.talk 46805
..turnin 27815
..accept 27816
step
goto 60.2,57.8
.talk 46804
..turnin 27816
..accept 27817
step
goto 59.9,57.3
.' Click a Firebeard Gryphon Mount |tip They look like big eagles standing here.
.' Ride the Firebeard Gryphon Mount |invehicle |c |q 27817
step
goto 58.8,53.1
.' While flying on the Firebeard Gryphon Mount:
.' Use the abilities on your action bar to kill Twilight Stormbenders on the floating rocks |tip Use your Storm Shield ability when someone casts a lightning attack on you.
.kill 12 Twilight Stormbender |q 27817/1
step
goto 58.6,51.7
.' While flying on the Firebeard Gryphon Mount:
.' Use the abilities on your action bar to weaken Servias Windterror
.' Eventually, you will get off the gryphon and fight him regularly
.kill Servias Windterror |q 27817/2 |tip When he casts his lightning spell on the ground, move away from that spot to avoid damage when it explodes.
step
goto 60.2,57.9
.talk 49271
..turnin 27817
..accept 27640
..accept 28001
step
goto 46.7,66.0 |n
.' Enter this building |goto 46.7,66.0,0.5 |noway |c
step
goto 45.9,65.5
.talk 46177
..turnin 27640
..accept 27643
..accept 27644
..accept 27645
step
goto 45.9,65.4
.talk 46143
..accept 27641
..accept 27642
step
goto 45.8,71.7
.talk 46174
..turnin 27645
..accept 27648
step
goto 45.8,71.7
.talk 46174
..' Tell him yeah... and let's get to it then
.' Escort Cayden Dunwald
.' Accompany Cayden through Dunwald Market Row |q 27648/1
.' Cayden Dunwald can also be at [47.9,74.5]
step
goto 47.9,74.5
.talk 46174
..turnin 27648
.' Cayden Dunwald can also be at [45.8,71.7]
step
goto 52.9,74.3
.talk 46175
..turnin 27644
..accept 27647
step
goto 52.8,69.8
.' Click a Sacred Ale Tap |tip They look like 3 wooden kegs built into the wall in the basement of this building.
.get Sacred Wildhammer Ale |q 27647/1
step
goto 52.4,70.3
.talk 46583
..turnin 27647
..accept 27649
step
goto 46.4,59.1
.talk 46176
..turnin 27643
..accept 27646
step
goto 45.4,60.0
.' As you walk around doing quests:
.talk 46609
.' Click Wildhammer Ale Casks and get them |tip They look like brown barrels sitting on the ground around this area.
.' Go into the basement of this building
.' Search the cellar in southern Dunwald Hovel |q 27646/1
step
goto 46.4,53.8
.' As you walk around doing quests:
.talk 46609
.' Click Wildhammer Ale Casks and get them |tip They look like brown barrels sitting on the ground around this area.
.' Go into the basement of this building
.' Search the cellar in northwestern Dunwald Hovel |q 27646/2
step
goto 48.4,52.6
.' As you walk around doing quests:
.talk 46609
.' Click Wildhammer Ale Casks and get them |tip They look like brown barrels sitting on the ground around this area.
.' Go to this spot
.' Search the buildings in eastern Dunwald Hovel |q 27646/3
step
goto 46.0,58.7
.talk 46176
..turnin 27646
..accept 27650
step
goto 45.9,54.8
.from Bloodgorged Ettin##46145+, Twilight Scavenger##46183+, Twilight Pillager##46144+, Twilight Shadeprowler##46526+
.' Welcome 20 Twilight Guests to Dunwald |q 27641/1
.talk 46609
.' Find 12 Dunwald Victims |q 27642/1
.' Click Wildhammer Ale Casks |tip They look like brown barrels sitting on the ground around this area.
.get 6 Wildhammer Ale |q 27649/1
.' You can find more of all these things:
.' Around 47.0,66.1
.' Around 46.4,72.6
.' Around 50.7,69.8
step
goto 46.7,66.0 |n
.' Enter this building |goto 46.7,66.0,0.5 |noway |c
step
goto 46.0,65.5
.talk 46177
..turnin 27650
..accept 27651
step
goto 50.5,70.7
.talk 46585
..turnin 27649
step
goto 50.5,70.7
.talk 46143
..turnin 27641
..turnin 27642
step
goto 50.5,70.6
.talk 46628
..' Tell him you're in
.kill Darunga |q 27651/1
step
goto 50.5,70.6
.talk 46628
..turnin 27651
step
goto 49.0,29.8
.talk 46591
..turnin 28001
..accept 27754
..accept 28369
step
goto 49.8,29.2
.talk 48010
..accept 27752
step
goto 49.8,29.3
.talk 48013
..turnin 28369
..accept 27753
step
goto 49.5,30.4
.talk 49591
.home Thundermar
step
goto 48.5,28.1
.talk 47154
.fpath Thundermar
step
goto 46.2,37.4
.from Dragonmaw Marauder##46310+
.get 8 Dragonmaw Insignia |q 27754/1
.' Click Thundermar Ale Kegs |tip They look like wooden barrels on the ground around this area.
.get 10 Wildhammer Keg |q 27752/1
.' Click Wildhammer Food Stores |tip They look like hanging fish, sliced bread, and legs of meat on the ground around this area.
.get 15 Wildhammer Food Stores |q 27753/1
.' You can find more around 49.1,37.3
step
goto 49.0,29.8
.talk 46591
..turnin 27754
step
goto 49.8,29.2
.talk 48010
..turnin 27752
step
goto 49.8,29.3
.talk 48013
..turnin 27753
step
goto 49.8,29.2
.talk 48010
..accept 28241
step
goto 49.1,29.4
.talk 48174
..accept 28211
..accept 28212
..accept 28215
step
goto 49.0,29.7
.talk 46591
..accept 28216
step
goto 57.9,33.5
.' Click the Eye of Twilight |tip It's a purple orb above a spinning metal machine.
..turnin 28241
..accept 28242
step
goto 58.0,32.6
.kill 10 Shaman of the Black |q 28242/1
.from Obsidian Stoneslave##47226+
.get 10 Twisted Elementium Loop |q 28215/1
step
goto 57.9,33.5
.' Click the Eye of Twilight |tip It's a purple orb above a spinning metal machine.
..turnin 28242
..accept 28243
step
goto 49.1,29.4
.talk 48174
..turnin 28215
step
goto 49.7,29.2
.talk 48010
..turnin 28243
..accept 28244
step
goto 49.8,29.1
.' Click the Eye of Twilight |tip It's a spinning purple orb in a metal stand.
.' Watch the cutscene
.' Peered into the Eye |q 28244/1
step
goto 49.7,29.2
.talk 48010
..turnin 28244
step
goto 42.5,23.5
.from Magmalord Falthazar##48015
.get Magmalord Falthazar's Head |q 28216/1
step
goto 42.2,24.3
.from Unbound Emberfiend##48016+
.get 5 Molten Fury |q 28212/1
.' Click Tempered Spears |tip They look like spears with their points sticking out of the ground around this area.
.get 8 Tempered Spear |q 28211/1
step
goto 49.0,29.7
.talk 46591
..turnin 28216
step
goto 49.1,29.4
.talk 48174
..turnin 28211
..turnin 28212
..accept 28280
step
goto 49.2,29.8
.' Use your Shoulder-Mounted Drake-Dropper on Dragonmaw Black Drakes |use Shoulder-Mounted Drake-Dropper##63393 |tip They are flying in the sky around this area.
.kill 8 Dragonmaw Black Drake |q 28280/1
step
goto 49.1,29.4
.talk 48174
..turnin 28280
step
goto 49.0,29.7
.talk 48173
..accept 28281
step
goto 48.1,30.0
.kill 8 Dragonmaw Skyclaw |q 28281/1
step
goto 49.0,29.7
.talk 48173
..turnin 28281
..accept 28282
step
goto 49.0,29.7
.talk 48173
..' Tell him you're ready to fight him!
.kill Narkrall Rakeclaw |q 28282/1
step
goto 49.0,29.7
.talk 48173
..turnin 28282
..accept 28294
step
goto 54.6,18.0
.talk 49574
.home Kirthaven
step
goto 54.3,16.7
.talk 48367
..turnin 28294
step
goto 54.9,17.2
.talk 48365
..accept 28346
step
goto 54.4,16.8
.talk 48364
..turnin 28346
..accept 28377
step
goto 56.8,15.1
.talk 47155
.fpath Kirthaven
step
goto 38.1,34.5
.talk 48472
..turnin 28377
..accept 28378
..accept 28379
step
goto 37.6,33.4 |n
.' Enter the cave |goto 37.6,33.4,0.5 |noway |c |q 28378
step
goto 35.0,31.1
.' Go to this spot inside the cave
.' Rescue Fanny Thundermar |q 28378/1
step
goto 37.6,33.4 |n
.' Leave the cave |goto 37.6,33.4,0.5 |noway |c |q 28378
step
goto 38.7,30.9
.from Glopgut Pounder##48474+, Glopgut Hurler##48475+
.' Slay 10 Glopgut Ogres |q 28379/1
step
goto 38.1,34.5
.talk 48472
..turnin 28378
..turnin 28379
..accept 28407
step
goto 54.7,17.9
.talk 48530
..turnin 28407
step
goto 54.6,17.5
.talk 48366
..accept 28413
step
goto 54.6,17.5
.talk 48366
..' Tell him you're ready, let's write a song
.' Create a song |q 28413/1
step
goto 54.6,17.5
.talk 48366
..turnin 28413
step
goto 54.3,16.7
.talk 49374
..accept 28408
..accept 28409
..accept 28410
..accept 28411
step
goto 53.4,24.5
.from Highland Elk##46970+, Highland Doe##46971+
.get 8 Fresh Venison |q 28411/1
.from Highland Worg##46153+
.get 5 Worg Rib |q 28411/2
step
goto 56.8,21.9
.from Tawny Owl##46162+
.' Click Pristine Owl Feathers |tip They look like blue feathers on the ground around this mountainous area.
.get 12 Pristine Owl Feather |q 28408/1
step
goto 64.4,22.6
.talk 48758
..' Tell him you're here to escort a delivery to Kirthaven
.' Follow the dwarves
.from Dragonmaw Skirmisher##48799+
.' Escort the Supply Caravan |q 28409/1
step
goto 75.1,33.8
.' Find a zeppelin flying north or south along this coast between Dragonmaw Port and The Krazzworks
.' Fly onto the zeppelin and land on it
.' Go downstairs on the zeppelin
.' Click a Crate of Fine Cloth |tip They look like yellow metal boxes downstairs in the zeppelin.
.get Fine Dark Cloth |q 28410/1
step
goto 54.3,16.7
.talk 49374
..turnin 28408
..turnin 28409
..turnin 28410
..turnin 28411
step
goto 54.3,16.8
.talk 48368
..accept 28655
step
goto 54.3,16.8
.talk 48368
..' Tell him to let the wedding commence!
.' Watch the cutscene
.from The Beast Unleashed##49234
.' Complete the Nuptuals |q 28655/1
step
goto 55.3,17.3
.talk 49358
..turnin 28655
step
goto 55.2,17.3
.talk 49374
..accept 27374
step
goto 44.0,10.6
.talk 43901
..turnin 27374
..accept 27299
step
goto 41.8,11.4
.kill 3 Tentacle of Iso'rath |q 27299/1
step
goto 44.0,10.6
.talk 45332
..turnin 27299
..accept 27300
step
goto 44.0,11.3
.talk 45391
..accept 27301
step
goto 44.4,11.6
.talk 45432
..accept 27302
step
goto 44.2,18.1
.talk 45362
..turnin 27301
..accept 27303
step
goto 42.3,17.2
.from Twilight Captivator##45359+, Twilight Bonebreaker##45334+
.kill 12 Drakgor cultists |q 27300/1
.from Bound Fleshburner##45358+
.get 5 Fleshburner Heart |q 27303/1
.' Click Barrels of Pyreburn Oil |tip They look like wooden kegs on the ground around this area.
.get 10 Pyreburn Oil |q 27302/1
step
goto 44.4,11.6
.talk 45432
..turnin 27302
step
goto 43.8,11.3
.talk 45386
..turnin 27303
step
goto 44.0,10.6
.talk 45332
..turnin 27300
..accept 27376
step
goto 44.5,10.6
.' Click an Earthen Ring Gryphon |tip They look like big eagles standing in this spot.
.' Join the assault on Iso'rath |q 27376/1
step
goto 48.4,14.6
.talk 47991
..turnin 27376
..accept 27377
step
'Fight the oozes that attack
.' Try to fight as long as you can
.' Survive Iso'rath's defenses |q 27377/1
.' Click the Quest Complete box that pops up
..turnin 27377
..accept 27378
step
'Deathwing will attack you and Thrall
.' Aid Thrall in battling Deathwing |q 27378/1
.' Click the Quest Complete box that pops up
..turnin 27378
..accept 27379
step
goto 49.6,15.8
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom oof your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
.from Tentacle of Iso'rath##48790
.' Save Stormcaller Jalara |q 27379/2
step
goto 49.1,13.1
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom oof your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
.from Tentacle of Iso'rath##48790
.' Save Earthmender Duarn |q 27379/3
step
goto 47.0,13.1
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom oof your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
.from Tentacle of Iso'rath##48790
.' Save Hargoth Dimblaze |q 27379/1
step
goto 47.5,15.6
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom oof your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
.from Tentacle of Iso'rath##48790
.' Save Stormcaller Mylra |q 27379/4
step
goto 48.7,16.6
.talk 48059
..turnin 27379
..accept 27380
step
goto 48.8,14.9
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom oof your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
.from Brain of Iso'rath##47960
.' Kill Iso'rath |q 27380/1
step
goto 44.0,10.6
.talk 45332
..turnin 27380
step
.' Earn the achievement Consumed by Nightmare! |achieve 5451
step
'Congratulations! You've earned the Consumed by Nightmare achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Quest Achievements\\Cataclysm\\Round Three, Fight!",[[
description Complete the Crucible of Carnage quests in Twilight Highlands up to and including the Twilight Terror!.
condition end achieved(4960)
step
'You will need a group for these quests, or you can complete them alone at level 90
|confirm
step
goto Twilight Highlands,50.7,58.3
.talk 46935
..' You will only be able to accept one of these quests
..accept 27863 |or
..accept 27861 |or
..accept 27862 |or
step
goto 51.4,57.8
.from Hurp'derp##46944
.' Defeat Hurp'derp |q 27863/1 |only if havequest(27863) or completedq(27863)
.' Defeat Hurp'derp |q 27861/1 |only if havequest(27861) or completedq(27861)
.' Defeat Hurp'derp |q 27862/1 |only if havequest(27862) or completedq(27862)
step
'Click the Complete Quest box that appears under your minimap
..turnin 27863 |only if havequest(27863) or completedq(27863)
..turnin 27861 |only if havequest(27861) or completedq(27861)
..turnin 27862 |only if havequest(27862) or completedq(27862)
step
goto 50.7,58.3
.talk 46935
..accept 27864
step
goto 51.4,57.8
.from Sully Kneecapper##46946
.' Defeat Sully Kneecapper |q 27865/1
step
'Click the Complete Quest box that appears under your minimap
..turnin 27864
step
goto 50.7,58.3
.talk 46935
..accept 27866
step
goto 51.4,57.8
.from Cadaver Collage##46947
.' Defeat Cadaver Collage |q 27866/1
step
'Click the Complete Quest box that appears under your minimap
..turnin 27866
step
goto 50.7,58.3
.talk 46935
..accept 27867
step
goto 51.4,57.8
.from Lord Geoffery Tulvan##46948
.' Defeat Lord Geoffery Tulvan |q 27867/1
step
'Click the Complete Quest box that appears under your minimap
..turnin 27867
step
goto 50.7,58.3
.talk 46935
..accept 27868
step
goto 51.4,57.8
.from Emberscar the Devourer##46949
.' Defeat Emberscar the Devourer |q 27868/1
step
'Click the Complete Quest box that appears under your minimap
..turnin 27868
.' Earn the Round Three. Fight! achievement! |achieve 4960
step
'Congratulations!  You've earned the _Round Three. Fight!_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Serious Skills to Pay the Bills",[[
description Obtain 600 skill points in Fishing, First Aid, Cooking, and Archaeology.
condition end achieved(6836)
achieveid 730,4915
step
'Use Zygor's Professions & Achievements guide to do the following:
.' Become a Grand Master Fisherman |achieve 730/1
.' Become a Grand Master in First Aid |achieve 730/2
.' Become a Grand Master Cook |achieve 730/3
|confirm
step
.' Click here to become a Grand Master Fisherman |confirm |next "Profession Guides\\Fishing\\Fishing 1-600 Leveling Guide"
.' Click here to become a Grand Master in First Aid |confirm |next "Profession Guides\\First Aid\\First Aid 1-600 Leveling Guide"
.' Click here to become a Grand Master Cook |confirm |next "Profession Guides\\Cooking\\Cooking 1-600 Leveling Guide"
|achieve 730 |next
step
.' Earn the achievement Skills to Pay the Bills! |achieve 730
step
'Use Zygor's Professions & Achievements guide to do the following:
.' Become an Illustrious Grand Master Fisherman |achieve 4915/1
.' Become an Illustrious Grand Master in First Aid |achieve 4915/2
.' Become an Illustrious Grand Master Cook |achieve 4915/3
.' Become an Illustrious Grand Master in Archaeology |achieve 4915/4
|confirm
step
.' Click here to become an Illustrious Grand Master Fisherman |confirm |next "Profession Guides\\Fishing\\Fishing 1-600 Leveling Guide"
.' Click here to become an Illustrious Grand Master in First Aid |confirm |next "Profession Guides\\First Aid\\First Aid 1-600 Leveling Guide"
.' Click here to become an Illustrious Grand Master Cook |confirm |next "Profession Guides\\Cooking\\Cooking 1-600 Leveling Guide"
.' Click here to become an Illustrious Grand Master in Archaeology |confirm |next "Profession Guides\\Archaeology\\Archaeology 1-600 Leveling Guide"
|achieve 4915 |next
step
'Use Zygor's Professions & Achievements guide to do the following:
.' Become an Zen Master Fisherman |achieve 6836/1
.' Become an Zen Master in First Aid |achieve 6836/2
.' Become an Zen Master Cook |achieve 6836/3
.' Become an Zen Master in Archaeology |achieve 6836/4
|confirm
step
.' Click here to become an Zen Master Fisherman |confirm |next "Profession Guides\\Fishing\\Fishing 1-600 Leveling Guide"
.' Click here to become an Zen Master in First Aid |confirm |next "Profession Guides\\First Aid\\First Aid 1-600 Leveling Guide"
.' Click here to become an Zen Master Cook |confirm |next "Profession Guides\\Cooking\\Cooking 1-600 Leveling Guide"
.' Click here to become an Zen Master in Archaeology |confirm |next "Profession Guides\\Archaeology\\Archaeology 1-600 Leveling Guide"
|achieve 6836 |next
step
.' Earn the achievement Serious Skills to Pay the Bills! |achieve 6836
step
'Congratulations! You've earned the Serious Skills to Pay the Bills achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Professional Zen Master",[[
description Obtain 525 skill points in a profession.
achieveid 116,731,732,733,734,4924,6830
condition end achieved(6830)
step
'This achievement requires using our Professions guide to level your characters skill level to 600 in a profession.
.' Click here to select the profession you wish to level to obtain this achievement |confirm
step
'Choose any primary profession below:
.' Click here to use _Alchemy_ for the achievement. |next "Profession Guides\\Alchemy\\Alchemy 1-600 Leveling Guide"
.' Click here to use _Blacksmithing_ for the achievement. |next "Profession Guides\\Archaeology\\Archaeology 1-600 Leveling Guide"
.' Click here to use _Enchanting_ for the achievement. |next "Profession Guides\\Enchanting\\Enchanting 1-600 Leveling Guide"
.' Click here to use _Engineering_ for the achievement. |next "Profession Guides\\Engineering\\Engineering 1-600 Leveling Guide"
.' Click here to use _Herbalism_ for the achievement. |next "Profession Guides\\Herbalism\\Herbalism 1-600 Leveling Guide"
.' Click here to use _Inscription_ for the achievement. |next "Profession Guides\\Inscription\\Inscription 1-600 Leveling Guide"
.' Click here to use _Jewelcrafting_ for the achievement. |next "Profession Guides\\Jewelcrafting\\Jewelcrafting 1-600 Leveling Guide"
.' Click here to use _Leatherworking_ for the achievement. |next "Profession Guides\\Leatherworking\\Leatherworking 1-600 Leveling Guide"
.' Click here to use _Mining_ for the achievement. |next "Profession Guides\\Mining\\Mining 1-600 Leveling Guide"
.' Click here to use _Skinning_ for the achievement. |next "Profession Guides\\Skinning\\Skinning 1-600 Leveling Guide"
.' Click here to use _Tailoring_ for the achievement. |next "Profession Guides\\Tailoring\\Tailoring 1-600 Leveling Guide"
.'_
|confirm
step
.' Earn the achievement Professional Illustrious Grand Master! |achieve 6830
step
'Congratulations! You've earned the Professional Zen Master achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Working Around the Clock",[[
description Obtain 600 skill points in two primary professions.
condition end achieved(6835)
achieveid 4914,735,6835
step
'This achievement requires using our Professions guide to level your characters skill level to 600 in _two professions_.
.' Click here to select the professions you wish to level to obtain this achievement |confirm
step
'Choose any primary profession below:
.' Click here to use _Alchemy_ for the achievement. |next "Profession Guides\\Alchemy\\Alchemy 1-600 Leveling Guide"
.' Click here to use _Blacksmithing_ for the achievement. |next "Profession Guides\\Archaeology\\Archaeology 1-600 Leveling Guide"
.' Click here to use _Enchanting_ for the achievement. |next "Profession Guides\\Enchanting\\Enchanting 1-600 Leveling Guide"
.' Click here to use _Engineering_ for the achievement. |next "Profession Guides\\Engineering\\Engineering 1-600 Leveling Guide"
.' Click here to use _Herbalism_ for the achievement. |next "Profession Guides\\Herbalism\\Herbalism 1-600 Leveling Guide"
.' Click here to use _Inscription_ for the achievement. |next "Profession Guides\\Inscription\\Inscription 1-600 Leveling Guide"
.' Click here to use _Jewelcrafting_ for the achievement. |next "Profession Guides\\Jewelcrafting\\Jewelcrafting 1-600 Leveling Guide"
.' Click here to use _Leatherworking_ for the achievement. |next "Profession Guides\\Leatherworking\\Leatherworking 1-600 Leveling Guide"
.' Click here to use _Mining_ for the achievement. |next "Profession Guides\\Mining\\Mining 1-600 Leveling Guide"
.' Click here to use _Skinning_ for the achievement. |next "Profession Guides\\Skinning\\Skinning 1-600 Leveling Guide"
.' Click here to use _Tailoring_ for the achievement. |next "Profession Guides\\Tailoring\\Tailoring 1-600 Leveling Guide"
.'_
|confirm
step
.' Earn the achievement Working Around the Clock! |achieve 6835
step
'Congratulations! You've earned the Working Around the Clock achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\The Cake Is Not A Lie Achievement",[[
description Bake a Delicious Chocolate Cake.
author support@zygorguides.com
condition end achieved(877)
#include "the_cake_is_not_a_lie"
step
'Congratulations!  You've earned The Cake Is Not A Lie Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\Kickin' It Up a Notch Achievement",[[
description Complete each of The Rokk's 4 cooking daily quests.
author support@zygorguides.com
condition end achieved(906)
#include "A_Kickin'_It_Up_a_Notch"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\The Outland Gourmet Achievement",[[
description Cook Outland cooking recipes.
condition end achieved(1800)
#include "A_The_Outland_Gourmet"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\The Northrend Gourmet Achievement",[[
description Cook Northrend recipes.
condition end achieved(1779)
achieveid 1777,1778
#include "A_The_Northrend_Gourmet"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\The Cataclysmic Gourmet",[[
description Click Cataclysm recipes.
condition end achieved(5473)
achieveid 5472
step
'You must be at least 525 in _Cooking_ to obtain this achievement.
'This will take a few weeks to get all of the cooking recipes necessary to complete the achievement. If you want, you can skip to the steps titled "Gather Materials" to farm the materials before you get the recipes.
|tip It is very easy to also get requirements for the achievement Cataclysmically Delicious along side this achievement. It is advised you eat the food you make.
.' Click here to begin! |confirm
step
title +Learning Recipes
'Use the Professions section of this guide to get to 415 cooking |only if skill("Cooking")<415
#include trainCooking
.learn Darkbrew Lager##88015
step
title +Gather Materials
goto Stormwind City,76.3,53.0
.talk 1327
.buy 2 Skin of Dwarven Stout##2596
.buy 1 Jug of Bourbon##2595
step
title +Creating Recipes
.create 1 Darkbrew Lager##88015,Cooking,1 total
.' Cook Darkbrew Lager |achieve 5473/10
step
'Use the Professions section of this guide to get to 415 cooking |only if skill("Cooking")<425
#include trainCooking
.learn Blackened Surprise##88006
step
title +Gather Materials
goto Mount Hyjal,28.2,30.8
.from Hyjal Stag##39588+
.collect 1 Toughened Flesh##62778
step
title +Creating Recipes
'Create a basic campfire |cast Basic Campfire##818
.create 1 Blackened Surprise##88006,Cooking,1 total
.' Cook Blackened Surprise |achieve 5473/5
step
title +Learning Recipes
'Use the Professions section of this guide to get to 450 cooking |only if skill("Cooking")<450
'Use the Cooking Dailies section of this guide to earn Chef's Awards to buy the following recipies: |only if skill("Cooking")>=450 |tip You will need a total of 33 Chef's Awards to buy all of the recipes
goto Stormwind City,50.8,71.4
.talk 49701
.buy 1 Recipe: Whitecrest Gumbo##65406 |n
.buy 1 Recipe: Lavascale Fillet##65407 |n
.buy 1 Recipe: Lavascale Minestrone##65409 |n
.buy 1 Recipe: Salted Eye##65410 |n
.'_
.learn Whitecrest Gumbo##88047 |use Recipe: Whitecrest Gumbo##65406
.learn Lavascale Fillet##88024 |use Recipe: Lavascale Fillet##65407
.learn Lavascale Minestrone##88025 |use Recipe: Lavascale Minestrone##65409
.learn Salted Eye##88035 |use Recipe: Salted Eye##65410
step
.buy 1 Recipe: Broiled Mountain Trout##65411 |n
.buy 1 Recipe: Lightly Fried Lurker##65412 |n
.buy 1 Recipe: Seasoned Crab##65413 |n
.buy 1 Recipe: Starfire Espresso##65414 |n
.'_
.learn Broiled Mountain Trout##88012 |use  Recipe: Broiled Mountain Trout##65411
.learn Lightly Fried Lurker##88028 |use Recipe: Lightly Fried Lurker##65412
.learn Seasoned Crab##88037 |use Recipe: Seasoned Crab##65413
.learn Starfire Espresso##88045 |use Recipe: Starfire Espresso##65414
step
.buy 1 Recipe: Feathered Lure##65408 |n
.buy 1 Recipe: Highland Spirits##65415 |n
.buy 1 Recipe: Lurker Lunch##65416 |n
.'_
.learn Feathered Lure##88017 |use Recipe: Feathered Lure##65408
.learn Highland Spirits##88022 |use Recipe: Highland Spirits##65415
.learn Lurker Lunch##88030 |use Recipe: Lurker Lunch##65416
step
title +Gather Materials
goto Kelp'thar Forest,49.1,28.0
.from Zin'jatar Raider##39313+
.' Open the Abyssal Clam that you get |use Abyssal Clam##52340 |n
.collect 2 Blood Shrimp##62791
step
goto 52.6,45.0
.from Speckled Sea Turtle##40223+
.collect 1 Giant Turtle Tongue##62781
step
goto Kelp'thar Forest,56.6,37.8
.from Brinescale Serpent##39948+
.collect 1 Snake Eye##62780
step
goto 58.6,39.6
.from Sabreclaw Skitterer##40276
.collect 1 Monstrous Claw##62779
step
goto 56.8,53.0
.from Glittergill Grouper##40309+,Ravenous Thresher##40219+,Slickskin Eel##41002+
.collect 1 Algaefin Rockfish##53071
.collect 2 Deepsea Sagefish##53072
.collect 1 Fathom Eel##53070
'Or.. |only if skill("Fishing")>450
'You can fish these from various pools of fish. |only if skill("Fishing")>450
step
goto Uldum 44.6,69.8
.from Diseased Vulture##47202
.collect 1 Delicate Wing##62785
step
goto 55.6,45.8
.from Riverbed Crocolisk
.collect 2 Crocolisk Tail##62784
step
goto 54.9,37.1
'Fish at this spot
.collect 2 Lavascale Catfish##53068
.collect 2 Blackbelly Mudfish##53066
.collect 3 Sharptooth##53062
step
goto Mount Hyjal 60.3,23.9
'Fish at this spot
.collect 2 Striped Lurker##53067
step
goto 60.3,23.9
'Find pools of Mountain Trout around this area. |tip If there isn't a pool here, search all of Hyjal's lakes and rivers to find a pool.
.collect 1 Mountain Trout##53063
step
goto Mount Hyjal,62.7,23.1 |n
.' Click on the portal to Stormwind |goto Stormwind City |noway |c
step
goto Deepholm 56.6,85.4
.from Jadecrest Basilisk##43981+
.collect 1 Basilisk Liver##62783
step
.' Go to Stormwind City |goto Stormwind City |noway |c
step
goto Twilight Highlands,79.4,78.6
.talk 49688
.buy 1 Highland Pomegranate##58265
.buy 1 Tropical Sunfruit##58278
step
goto Twilight Highlands,63.2,76.2
.from Obsidian Charscale##47797,Obsidian Viletongue##47796
.collect 1 Dragon Flank##62782
step
goto 57.8,36.7
'Fish in the Highland Guppy School pools
.collect 1 Highland Guppy##53064
step
'You can either purchase this item from the Auction House or you can buy it from Bario Matalli:
goto Stormwind City,50.8,71.4
.talk 49701
.buy 1 Imported Supplies##68689 |n
|use Imported Supplies##68689
.collect 2 Cocoa Beans##62786
step
goto Stormwind City,60.8,74.8
.talk 6740
.buy 1 Refreshing Spring Water##159
step
title +Creating Recipes
'Create a basic campfire |cast Basic Campfire##818
.create 1 Whitecrest Gumbo##88047,Cooking,1 total |tip Save the extra Blood Shrimp for later
.' Cook Whitecrest Gumbo |achieve 5473/32
step
.create 1 Salted Eye##88035,Cooking,1 total
.' Cook Salted Eye |achieve 5473/24
step
.create 1 Seasoned Crab##88037,Cooking,1 total
.' Cook Seasoned Crab |achieve 5473/26
step
.create 1 Lavascale Fillet##88024,Cooking,1 total
.' Cook Lavascale Fillet |achieve 5473/18
step
.create Lavascale Minestrone##88025,Cooking,1 total
.' Cook Lavascale Minestrone |achieve 5473/19
step
.create Broiled Mountain Trout##88012,Cooking,1 total
.' Cook Broiled Mountain Trout |achieve 5473/6
step
.create Lightly Fried Lurker##88028,Cooking,1 total
.' Cook Lightly Fried Lurker |achieve 5473/20
step
.create Starfire Espresso##88045,Cooking,1 total
.' Cook Starfire Espresso |achieve 5473/30
step
.create Feathered Lure##88017,Cooking,1 total
.' Cook Feathered Lure |achieve 5473/12
step
.create Highland Spirits##88022,Cooking,1 total
.' Cook Highland Spirits |achieve 5473/17
step
.create Lurker Lunch##88030,Cooking,1 total
.' Cook Lurker Lunch |achieve 5473/21
step
title +Learning Recipes
'Use the Professions section of this guide to get to 475 cooking |only if skill("Cooking")<475
'Use the Cooking Dailies section of this guide to earn Chef's Awards to buy the following recipies: |only if skill("Cooking")>=475 |tip You will need a total of 12 Chef's Awards to buy all of the recipes
goto Stormwind City,50.8,71.4
.talk 49701
.buy 1 Recipe: Pickled Guppy##65417
.buy 1 Recipe: Hearty Seafood Soup##65418
.buy 1 Recipe: Tender Baked Turtle##65419
.buy 1 Recipe: Fish Fry##65423
step
'Use the Professions section of this guide to get to 475 cooking |only if skill("Cooking")<475
.learn Pickled Guppy##88033 |use Recipe: Pickled Guppy##65417
.learn Hearty Seafood Soup##88021 |use Recipe: Hearty Seafood Soup##65418
.learn Tender Baked Turtle##88046 |use Recipe: Tender Baked Turtle##65419
.learn Fish Fry##88018 |use Recipe: Fish Fry##65423
step
title +Creating Recipes
.create 1 Pickled Guppy##88033,Cooking,1 total
.' Cook Pickled Guppy |achieve 5473/23
step
.create 1 Hearty Seafood Soup##88021,Cooking,1 total
.' Cook Hearty Seafood Soup |achieve 5473/16
step
.create 1 Tender Baked Turtle##88046,Cooking,1 total
.' Cook Tender Baked Turtle |achieve 5473/31
step
.create 1 Fish Fry##88018,Cooking,1 total
.' Cook Fish Fry |achieve 5473/13
step
title +Learning Recipes
'Use the Professions section of this guide to get to 500 cooking |only if skill("Cooking")<500
'Use the Cooking Dailies section of this guide to earn Chef's Awards to buy the following recipies: |only if skill("Cooking")>=500 |tip You will need a total of 30 Chef's Awards to buy all of the recipes
goto Stormwind City,50.8,71.4
.talk 49701
.buy 1 Recipe: Mushroom Sauce Mudfish##65420 |only if skill("Cooking")>=500
.buy 1 Recipe: Severed Sagefish Head##65421 |only if skill("Cooking")>=500
.buy 1 Recipe: Delicious Sagefish Tail##65422 |only if skill("Cooking")>=500
.buy 1 Recipe: Scalding Murglesnout##68688 |only if skill("Cooking")>=500
.buy 1 Recipe: Blackbelly Sushi##65424 |only if skill("Cooking")>=500
.buy 1 Recipe: Skewered Eel##65425 |only if skill("Cooking")>=500
.buy 1 Recipe: Baked Rockfish##65426 |only if skill("Cooking")>=500
.buy 1 Recipe: Basilisk Liverdog##65427 |only if skill("Cooking")>=500
.buy 1 Recipe: Grilled Dragon##65428 |only if skill("Cooking")>=500
.buy 1 Recipe: Beer-Basted Crocolisk##65429 |only if skill("Cooking")>=500
.buy 1 Recipe: Crocolisk Au Gratin##65430 |only if skill("Cooking")>=500
step
'Use the Professions section of this guide to get to 500 cooking |only if skill("Cooking")<500
.learn Mushroom Sauce Mudfish##88031 |use Recipe: Mushroom Sauce Mudfish##65420 |only if skill("Cooking")>=500
.learn Severed Sagefish Head##88039 |use Recipe: Severed Sagefish Head##65421 |only if skill("Cooking")>=500
.learn Delicious Sagefish Tail##88016 |use Recipe: Delicious Sagefish Tail##65422 |only if skill("Cooking")>=500
.learn Blackbelly Sushi##88034 |use Recipe: Blackbelly Sushi##65424 |only if skill("Cooking")>=500
.learn Skewered Eel##88042 |use Recipe: Skewered Eel##65425 |only if skill("Cooking")>=500
.learn Baked Rockfish##88003 |use Recipe: Baked Rockfish##65426 |only if skill("Cooking")>=500
.learn Basilisk Liverdog##88004 |use Recipe: Basilisk Liverdog##65427 |only if skill("Cooking")>=500
.learn Grilled Dragon##88020 |use Recipe: Grilled Dragon##65428 |only if skill("Cooking")>=500
.learn Beer-Basted Crocolisk##88005 |use Recipe: Beer-Basted Crocolisk##65429 |only if skill("Cooking")>=500
.learn Crocolisk Au Gratin##88014 |use Recipe: Crocolisk Au Gratin##65430 |only if skill("Cooking")>=500
step
title +Creating Recipes
.create Mushroom Sauce Mudfish##88031,Cooking,1 total
.' Cook Mushroom Sauce Mudfish |achieve 5473/22
step
.create Severed Sagefish Head##88039,Cooking,1 total
.' Cook Severed Sagefish Head |achieve 5473/27
step
.create Delicious Sagefish Tail##88016,Cooking,1 total
.' Cook Delicious Sagefish Tail |achieve 5473/11
step
.create Blackbelly Sushi##88034,Cooking,1 total
.' Cook Blackbelly Sushi |achieve 5473/4
step
.create Skewered Eel##88042,Cooking,1 total
.' Cook Skewered Eel |achieve 5473/28
step
.create Baked Rockfish##88003,Cooking,1 total
.' Cook Baked Rockfish |achieve 5473/1
step
.create Basilisk Liverdog##88004,Cooking,1 total
.' Cook Basilisk Liverdog |achieve 5473/2
step
.create Grilled Dragon##88005 ,Cooking,1 total
.' Cook Grilled Dragon |achieve 5473/15
step
.create Beer-Basted Crocolisk##88005,Cooking,1 total
.' Cook Beer-Basted Crocolisk |achieve 5473/3
step
.create Crocolisk Au Gratin##88014,Cooking,1 total
.' Cook Crocolisk Au Gratin |achieve 5473/9
step
title +Learning Recipes
'Use the Professions section of this guide to get to 505 cooking |only if skill("Cooking")<505
'Use the Cooking Dailies section of this guide to earn Chef's Awards to buy the following recipies: |only if skill("Cooking")>=505 |tip You will need a total of 3 Chef's Awards to buy this recipe
goto Stormwind City,50.8,71.4
.talk 49701
.buy 1 Recipe: Chocolate Cookie##65431 |only if skill("Cooking")>=505
step
'Use the Professions section of this guide to get to 505 cooking |only if skill("Cooking")<505
.learn Chocolate Cookie##88013 |use Recipe: Chocolate Cookie##65431 |only if skill("Cooking")>=505
step
title +Creating Recipes
'Create a basic campfire |cast Basic Campfire##818
.create 1 Chocolate Cookie##88013,Cooking,1 total
.' Cook Chocolate Cookie |achieve 5473/8
step
title +Learning Recipes
'Use the Professions section of this guide to get to 525 cooking |only if skill("Cooking")<525
'Use the Cooking Dailies section of this guide to earn Chef's Awards to buy the following recipies: |only if skill("Cooking")>=525 |tip You will need a total of 10 Chef's Awards to buy these recipes
goto Stormwind City,50.8,71.4
.talk 49701
.buy 1 Recipe: Fortune Cookie##65432 |only if skill("Cooking")>=525
.buy 1 Recipe: South Island Iced Tea##65433 |only if skill("Cooking")>=525
step
'Use the Professions section of this guide to get to 525 cooking |only if skill("Cooking")<525
.learn Fortune Cookie##88019 |use Recipe: Fortune Cookie##65432 |only if skill("Cooking")>=525
.learn South Island Iced Tea##88044 |use Recipe: South Island Iced Tea##65433 |only if skill("Cooking")>=525
step
title +Creating Recipes
'Create a basic campfire |cast Basic Campfire##818
.create 1 Fortune Cookie##88019,Cooking,1 total
.create 1 South Island Iced Tea##88014,Cooking 1 total
.' Cook Fortune Cookie |achieve 5473/14
.' Cook South Island Iced Tea |achieve 5473/29
step
.' Earn the Cataclysm Gourmet achievement! |achieve 5473
step
'Congratulations! You've earned the Cataclysm Gourmet achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\100 Cooking Awards Achivement",[[
description Obtain 100 Cooking Awards.
achieveid 1998,1999,2000,2001,2002
condition end achieved(2002)
step
'Use the Stormwind and Dalaran Cooking Dailies section of this guide to obtain 100 Cooking Awards.
|confirm
step
label "dailies"
#include "A_Stormwind_Cooking_Dailies"
step
goto Howling Fjord,58.2,62.1
.talk 26905
..accept 13087|tip This quest is only available to you if you have 350+ Cooking skill.
|only if not completedq(13087)
step
goto 79.0,73.1
.from Lion Seal Whelp##29559+, Lion Seal##23887+, Bull Lion Seal##23886+
.get 4 Chilled Meat |q 13087/1
|only if not completedq(13087)
step
goto 58.2,62.1
.talk 26905
..turnin 13087
|only if not completedq(13087)
step
goto Dalaran,40.8,65.4
.talk 28705
.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day, and they all require you have 350+ Cooking skill:
..accept 13103 |or
..accept 13101|daily |or
..accept 13100|daily |or
..accept 13107|daily |or
..accept 13102|daily |or
step
goto 54.7,31.5
.' Click the Aged Dalaran Limburger|tip They look like piles and pieces of yellow cheese on the tables inside this building.
.collect 1 Aged Dalaran Limburger##43137 |q 13103
.' Click the Half Full Glasses of Wine|tip They look like small blue-ish wine glasses sitting on tables, and on the ground, inside this building.  They spawn in random locations.
.collect 6 Half Full Dalaran Wine Glass##43138 |q 13103
.' You can find more Half Full Glasses of Wine inside the building at 49.4,39.3
step
'Use your Empty Cheese Serving Platter in your bags|use Empty Cheese Serving Platter##43139
.get 1 Wine and Cheese Platter |q 13103/1
step
goto 55.0,30.8
.' Click a Full Jug of Wine|tip They look like small blue-ish green jugs sitting on the ground inside this building. They might also be up the stairs.  They spawn in random locations.
.get 1 Jug of Wine |q 13101/2
step
goto Dragonblight,30.0,49.8
.from Rabid Grizzly##26643+, Blighted Elk##26616+
.collect 4 Chilled Meat##43013 |q 13101
step
#include "cooking_fire"
.create 4 Northern Stew##57421,Cooking,4 total |n
.get 4 Northern Stew |q 13101/1
step
goto Dalaran/2 59.5,43.6
..collect 4 Infused Mushroom##43100 |q 13100 |tip They spawn randomly along the sewer lines.
step
goto Dragonblight,30.0,49.8
.from Rabid Grizzly##26643+, Blighted Elk##26616+
.collect 2 Chilled Meat##43013 |q 13100
step
#include "cooking_fire"
'Use your Meatloaf Pan in your bags|use Meatloaf Pan##43101|tip You will need a cooking fire to do this.
.get 1 Infused Mushroom Meatloaf |q 13100/1
step
goto Dalaran,67.7,40.0
.' Click the Wild Mustard|tip They look like small, and kind of hard to see, bushy yellow flowers on the ground around this area.  They spawn randomly in grassy areas.
..collect 4 Wild Mustard##43143 |q 13107
.' You can find more Wild Mustard flowers:
..' At [50.3,48.3]
..' At [37.2,43.9]
step
goto Borean Tundra,46.7,43.6
.from Wooly Rhino Calf##25488+, Wooly Rhino Matriarch##25487+, Wooly Rhino Bull##25489+
..collect 4 Rhino Meat##43012 |q 13107
step
#include "cooking_fire"
.create Rhino Dogs##45553,Cooking,4 total |n
..collect 4 Rhino Dogs##34752 |q 13107
step
'Use your Empty Picnic Basket in your bags|use Empty Picnic Basket##43142
.get 1 Mustard Dog Basket! |q 13107/1
step
goto Crystalsong Forest,26.7,44.1
.' Click the Crystalsong Carrots|tip They looke like carrots sticking out of the ground, at the base of trees around this area underneath Dalaran.  They spawn in random locations around this area.
..collect 4 Crystalsong Carrot##43148 |q 13102
step
goto Dragonblight,30.0,49.8
.from Rabid Grizzly##26643+, Blighted Elk##26616+
..collect 4 Chilled Meat##43013 |q 13102
step
#include "cooking_fire"
'Use your Stew Cookpot in your bags|use Stew Cookpot##43147|tip You will need a cooking fire to do this.
..get 1 Vegetable Stew |q 13102/1
step
goto Dalaran,36.6,27.8
.talk 28718
..turnin 13103
step
goto Dalaran,48.6,37.5
.talk 29049
..turnin 13101
step
goto Dalaran,52.3,55.6
.talk 29527
..turnin 13100
step
goto Dalaran,68.6,42.0
.talk 28160
..turnin 13107
step
goto Dalaran,35.5,57.6
.talk 29532
..turnin 13102
step
'You have completed the maximum amount of Cooking dailies you can do today.
.' Click here to go back to the beginning of the dailies. |confirm |next "dailies"
|achieve 2002 |next
step
'Congratualtions! You're earned the 100 Cooking Awards achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\Second That Emotion Achievement",[[
description Eat the "emotion" foods.
condition end achieved(1780)
#include "second_that_emotion"
step
.' Congratulations! You've earned the Second That Emotion achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\Critter Gitter Achievement",[[
description Using Critter Bites, coerce 10 critters to be your pet within 3 minutes or less.
condition end achieved(1781)
#include "A_Critter_Gitter"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\Dinner Impossible Achievement",[[
description Present a Great Feast in each of the battlegrounds.
condition end achieved(1785)
#include "A_Dinner_Impossible"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\Iron Chef",[[
description Learn 200 cooking recipes.
condition end achieved(5471)
achieveid 1795,1796,1797,1798,1799
step
title + Taught Recipes
'These spells are learned by simply training your Cooking Skill.
#include trainCooking
.learn Herb Baked Egg Core##8604
.learn Roasted Boar Meat##2540
.learn Charred Wolf Meat##2538
step
'Use the Professions section of this guide to get to 425 cooking |only if skill("Cooking")<425
#include trainCooking
.learn Spice Bread##37836
.learn Kaldorei Spider Kabob##6412
.learn Spiced Wolf Meat##2539
.learn Venison Jerky##93741
.learn Boiled Clams##6499
.learn Coyote Steak##2541
.learn Fillet of Frenzy##6415
.learn Crab Cake##2544
.learn Dry Pork Ribs##2546
.learn Goblin Deviled Clams##6500
.learn Tasty Lion Steak##3399
.learn Barbecued Buzzard Wing##4094
.learn Soothing Turtle Bisque##3400
step
'Use the Professions section of this guide to get to 425 cooking |only if skill("Cooking")<425
#include trainCooking
.learn Spider Sausage##21175
.learn Spotted Yellowtail##18238
.learn Grilled Squid##18240
.learn Charred Bear Kabobs##46684
.learn Juicy Bear Burger##46688
step
'Use the Professions section of this guide to get to 425 cooking |only if skill("Cooking")<425
#include trainCooking
.learn Nightfin Soup##18243
.learn Poached Sunscale Salmon##18244
.learn Stewed Trout##42296
.learn Dalaran Clam Chowder##58065
.learn Baked Manta Ray##45569
.learn Fisherman's Feast##42302
.learn Grilled Bonescale##45561
.' Earn the achievement Lunch Lady! |achieve 1795
step
'Use the Professions section of this guide to get to 425 cooking |only if skill("Cooking")<425
#include trainCooking
.learn Grilled Sculpin##45563
.learn Hot Buttered Trout##42305
.learn Mammoth Meal##45549
.learn Pickled Fangtooth##45566
.learn Poached Nettlefish##45565
.learn Rhino Dogs##45553
.learn Roasted Worg##45552
.learn Sauteed Goby##45562
step
'Use the Professions section of this guide to get to 425 cooking |only if skill("Cooking")<425
#include trainCooking
.learn Shoveltusk Steak##45550
.learn Smoked Rockfin##45560
.learn Smoked Salmon##45564
.learn Worm Delight##45551
.learn Great Feast##45554
.learn Black Jelly##64358
.learn Darkbrew Lager##88015
.learn Blackened Surprise##88006
step
title +Bought Recipes
goto Stormwind City 77.6,53.8
.talk 5483
.buy 1 Recipe: Sagefish Delight##21219 |n
.buy 1 Recipe: Smoked Sagefish##21099 |n
.'_
.learn Sagefish Delight##25954 |use Recipe: Sagefish Delight##21219
.learn Smoked Sagefish##25704 |use Recipe: Smoked Sagefish##21099
step
goto Stormwind City,76.6,53.6
.talk 340
.buy 1 Recipe: Beer Basted Boar Ribs##2889 |n
.buy 1 Recipe: Blood Sausage##3679 |n
.buy 1 Recipe: Cooked Crab Claw##2698 |n
.'_
.learn Beer Basted Boar Rib##2795 |use Recipe: Beer Basted Boar Ribs##2889
.learn Blood Sausage##3371 |use Recipe: Blood Sausage##3679
.learn Cooked Crab Claw##2545 |use Recipe: Cooked Crab Claw##2698
step
goto Stormwind City,76.6,53.6
.talk 340
.buy 1 Recipe: Crocolisk Gumbo##3681 |n
.buy 1 Recipe: Crocolisk Steak##3678 |n
.buy 1 Recipe: Curiously Tasty Omelet##3682 |n
.'_
.learn Crocolisk Gumbo##3373 |use Recipe: Crocolisk Gumbo##3681
.learn Crocolisk Steak##3370 |use Recipe: Crocolisk Steak##3678
.learn Curiously Tasty Omelet##3376 |use Recipe: Curiously Tasty Omelet##3682
step
goto Stormwind City,76.6,53.6
.talk 340
.buy 1 Recipe: Gooey Spider Cake##3683 |n
.buy 1 Recipe: Goretusk Liver Pie##2697 |n
.buy 1 Recipe: Murloc Fin Soup##3680 |n
.'_
.learn Gooey Spider Cake##3377 |use Recipe: Gooey Spider Cake##3683
.learn Goretusk Liver Pie##2542 |use Recipe: Goretusk Liver Pie##2697
.learn Murloc Fin Soup##3372 |use Recipe: Murloc Fin Soup##3680
step
goto Stormwind City,76.6,53.6
.talk 340
.buy 1 Recipe: Redridge Goulash##2699 |n
.buy 1 Recipe: Seasoned Wolf Kabob##2701 |n
.buy 1 Recipe: Succulent Pork Ribs##2700 |n
.buy 1 Recipe: Westfall Stew##728 |n
.'_
.learn Redridge Goulash##2547 |use Recipe: Redridge Goulash##2699
.learn Seasoned Wolf Kabob##2549 |use Recipe: Seasoned Wolf Kabob##2701
.learn Succulent Pork Ribs##2548 |use Recipe: Succulent Pork Ribs##2700
.learn Westfall Stew##2543 |use Recipe: Westfall Stew##728
step
goto Stormwind City 55.0,69.6
.talk 5494
.buy 1 Recipe: Brilliant Smallfish##6325 |n
.buy 1 Recipe: Bristle Whisker Catfish##6330 |n
.buy 1 Recipe: Rainbow Fin Albacore##6368 |n
.'_
.learn Brilliant Smallfish##7751 |use Recipe: Brilliant Smallfish##6325
.learn Bristle Whisker Catfish##7755 |use Bristle Whisker Catfish##6330
.learn Rainbow Fin Albacore##7827 |use Recipe: Rainbow Fin Albacore##6368
step
goto Elwynn Forest/0 41.9,67.1
.talk 66
.buy Recipe: Longjaw Mud Snapper##6328 |n
.'_
.learn Longjaw Mud Snapper##7753 |use Recipe: Longjaw Mud Snapper##6328
step
goto Loch Modan,35.6,49.0
.talk 1465
.buy 1 Recipe: Smoked Bear Meat##6892 |n
.'_
.learn Smoked Bear Meat##8607 |use Recipe: Smoked Bear Meat##6892
step
goto Westfall 36.2,90.0
.talk 4305
.buy 1 Slitherskin Mackerel##6326 |n
.buy 1 Recipe: Clam Chowder##5528 |n
.buy 1 Recipe: Spiced Chili Crab##16111 |n
.'_
.learn Slitherskin Mackere##7752 |use Slitherskin Mackere##6326
.learn Clam Chowder##6501 |use Recipe: Clam Chowder##5528
.learn Spiced Chili Crab##15915 |use Recipe: Spiced Chili Crab##16111
step
goto Northern Stranglethorn 47.4,10.2
.talk 734
.buy 1 Recipe: Jungle Stew##12231 |n
.buy 1 Recipe: Roast Raptor##12228 |n
.'_
.learn Jungle Stew##15861 |use Recipe: Jungle Stew##12231
.learn Roast Raptor##15855 |use Recipe: Roast Raptor##12228
step
goto The Cape of Stranglethorn 42.6,72.8
.talk 54232
.buy 1 Recipe: Undermine Clam Chowder##16767 |n
.'_
.learn Undermine Clam Chowder##20626 |use Recipe: Undermine Clam Chowder##16767
step
goto The Cape of Stranglethorn 42.8,69.0
.talk 2664
.buy 1 Recipe: Giant Clam Scorcho##6039 |n
.buy 1 Recipe: Cooked Glossy Mightfish##13940 |n
.buy 1 Recipe: Filet of Redgill##13941 |n
.buy 1 Recipe: Hot Smoked Bass##13943 |n
.buy 1 Recipe: Mightfish Steak##13948 |n
.buy 1 Recipe: Mithril Head Trout##17062 |n
.buy 1 Recipe: Rockscale Cod##6369 |n
.buy 1 Recipe: Sagefish Delight##21219 |n
.'_
.learn Giant Clam Scorcho##7213 |use Recipe: Giant Clam Scorcho##6039
.learn Cooked Glossy Mightfish##18239 |use Recipe: Cooked Glossy Mightfish##13940
.learn Filet of Redgill##18241 |use Recipe: Filet of Redgill##13941
.learn Hot Smoked Bass##18242 |use Recipe: Hot Smoked Bass##13943
.learn Mightfish Steak##18246 |use Recipe: Mightfish Steak##13948
.learn Mithril Head Trout##20916 |use Recipe: Mithril Head Trout##17062
.learn Rockscale Cod##7828 |use Recipe: Rockscale Cod##6369
.learn Sagefish Delight##25954 |use Recipe: Sagefish Delight##21219
step
goto Azuremyst Isle 49.8,51.8
.talk 17110
..accept 9454
step
goto 51.4,54.0
.from Moongraze Stag##17200+
.get 6 Moongraze Stag Tenderloin##23676 |q 9454/1
step
goto 49.8,51.8
.talk 17110
..turnin 9454
.collect 1 Recipe: Roasted Moongraze Tenderloin##27686 |n
.'_
.learn Roasted Moongraze Tenderloin##33277 |use Recipe: Roasted Moongraze Tenderloin##27686
step
goto Loch Modan 34.8,49.3
.talk 1963
..accept 26860
step
goto Loch Modan 35.1,32.6
.from Black Bear##1186+
.get 8 Bear Rump |q 26860/1
step
goto Loch Modan 34.8,49.3
.talk 1963
..turnin 26860
.collect Recipe: Blood Sausage |n
.'_
.learn Blood Sausage##3371 |use Recipe: Blood Sausage
step
goto Loch Modan,35.6,49.0
.talk 1465
.buy 1 Recipe: Smoked Bear Meat##6892 |n
.'_
.learn Smoked Bear Meat##8607 |use Recipe: Smoked Bear Meat##6892
step
goto Loch Modan/0 40.3,39.3
.talk 1684
.buy 1 Recipe: Loch Frenzy Delight##6329 |n
.'_
.learn Loch Frenzy Delight##7754 |use Recipe: Loch Frenzy Delight##6329
step
goto Bloodmyst Isle,53.4,56.6
.talk 18427
.buy 1 Recipe: Crunchy Spider Surprise##22647 |n
.'_
.learn Crunchy Spider Surprise##28267 |use Recipe: Crunchy Spider Surprise##22647
step
goto Northern Barrens/0 55.1,51.5
.' Kill all creatures in this zone:
.collect 1 Recipe: Savory Deviate Delight##6661 |n
|tip You can also purchase this from the Auction House.
.'_
.learn Savory Deviate Delight##8238 |use Recipe: Savory Deviate Delight##6661
step
goto Southern Barrens/0 48.3,88.0
.from Dig Rat##3444+
.collect Plump Dig Rat##78342 |n
|tip Dig Rat Stew is Bind on Pickup. You cannot purchase this from the Auction House.
.' Create a Cooking Fire |cast Cooking Fire##818
.learn Dig Rat Stew##6417 |use Plump Dig Rat##78342
step
goto Desolace,66.2,6.6
.talk 8150
.buy 1 Recipe: Heavy Kodo Stew##12240 |n
.buy 1 Recipe: Mystery Stew##12233 |n
.'_
.learn Heavy Kodo Stew##15910 |use Recipe: Heavy Kodo Stew##12240
.learn Mystery Stew##15865 |use Recipe: Mystery Stew##12233
step
goto Feralas/0 46.3,41.7
.talk 7947
.buy 1 Recipe: Mightfish Steak##13948 |n
.buy 1 Recipe: Baked Salmon##13949 |n
.buy 1 Recipe: Lobster Stew##13947 |n
.buy 1 Recipe: Hot Wolf Ribs##12229 |n
.'_
.learn Mightfish Steak##18246 |use Recipe: Mightfish Steak##13948
.learn Baked Salmon##18247 |use Recipe: Baked Salmon##13949
.learn Lobster Stew##18245 |use Recipe: Lobster Stew##13947
.learn Hot Wolf Ribs##15856 |use Recipe: Hot Wolf Ribs##12229
step
'Proceeding to proper section |next |only if default
'Proceeding to proper section |next "+after" |only if step:Find("+after"):IsComplete()
step
label	before
goto Dustwallow Marsh/0 55.9,49.5
.talk 63546
.' Tell her:
.' <Show me theramore before the destruction.>
|confirm
|only if achieved(7523)
step
label	after
goto Dustwallow Marsh 66.4,51.4
.talk 4897
.buy 1 Recipe: Dragonbreath Chili##12239 |n
.'_
.learn Dragonbreath Chili##15906 |use Recipe: Dragonbreath Chili##12239
step
goto Razorfen Downs,80.7,16.9
.talk 8696
.' Ask to learn Goldthorn Tea
.learn Goldthorn Tea##13028
step
goto Tanaris,52.4,29.0
.talk 40589
..accept 6610
step
goto 54.0,40.0
.from Southsea Scoundrel##40665+
.get 20 Fine Aged Cheddar##3927 |q 6610/3
.' You can also buy the cheese from Carmen Ibanozzle here [Tanaris 55.6,60.8]
'|talk Carmen Ibanozzle##38714
step
goto 45.6,39.4
.from Fire Roc##5429
.get 10 Giant Egg##12207 |q 6610/1
step
goto 55.2,40.6
.from Tidal Strider##39022
.collect Big-Mouth Clam##7973 |n
'Click on the Big-Mouth Clams in your bags |use Big-Mouth Clam##7973
.get 10 Zesty Clam Meat##7974 |q 6610/2
step
goto Tanaris,52.4,29.0
.talk 40589
..turnin 6610
.learn Clamlette Magnifigue##64054
step
goto 52.6,27.0
.talk 7733 |n
.buy 1 Recipe: Tender Wolf Steak##18046 |n
.'_
.learn Tender Wolf Steak##22480 |use Recipe: Tender Wolf Steak##18046
step
goto Winterspring 59.8,51.6
.talk 11187
.buy 1 Recipe: Monster Omelet##16110 |n
.'_
.learn Monster Omelet##15933 |use Recipe: Monster Omelet##16110
step
'Proceeding to proper section |next |only if default
'Proceeding to proper section |next tuber |only if step:Find("+tuber"):IsComplete()
step
goto Dire Maul/5 12.2,31.2 |tip Turn to your left
.talk 14354
.' Say "Game? Are you crazy?"
'Pusillin will run off, chase him down |tip Kill anything in your way!
.' Catch up to Pusillin |goto Dire Maul/5 22.0,75.6 |noway |c
step
goto Dire Maul/5 22.0,75.6
.talk 14354
.' Say "Why you little..."
.' Catch up to Pusillin |goto Dire Maul/5 32.2,27.2 |noway |c
step
goto Dire Maul/5 32.2,27.2
.talk 14354
.' Say "Mark my words, I will catch you, imp. And when I do!"
.' Catch up to Pusillin |goto Dire Maul/5 66.5,37.9 |noway |c
step
goto Dire Maul/5 66.5,37.9
.talk 14354
.' Say "DIE!"
.' Catch up to Pusillin  |goto 74.9,44.9 |noway |c
step
label	tuber
goto Dire Maul/5 75.8,44.9
.talk 14354
.' Say "Prepare to meet your maker."
.from Pusillin##14354
.collect Recipe: Runn Tum Tuber Surprise##18267 |n
.'_
.learn Runn Tum Tuber Surprise##22761 |use Recipe: Runn Tum Tuber Surprise##18267
step
goto Silithus 55.4,36.6
.talk 15174
..accept 8307
step
goto 43.6,42.0
'Click on the Sandy Cookbook |tip It looks like a book lying on a crate
..turnin 8307
..accept 8313
step
goto 55.4,36.6
.talk 15174
..turnin 8313
.learn Smoked Desert Dumplings##24801
step
title +The Burning Crusade Recipes
goto Hellfire Peninsula,49.2,74.8
.talk 19344
..accept 9349
step
goto 39.0,88.4
.from Razorfang Hatchling##16932+,Razorfang Ravager##16933+
.get 12 Ravager Egg##23217 |q 9349/1
step
goto Hellfire Peninsula,49.2,74.8
.talk 19344
..turnin 9349
step
goto Hellfire Peninsula,49.2,74.8
.talk 19344
..accept 9361
step
goto 51.2,69.8
.from Deranged Helboar##16863
.collect 8 Tainted Helboar Meat##23270 |q 9361
step
'Use the Purification Mixture on the Tainted Meat |use Purification Mixture##23268
.get 8 Purified Helboar Meat##23248 |q 9361/1
step
goto Hellfire Peninsula,49.2,74.8
.talk 19344
..turnin 9361
step
goto Hellfire Peninsula,49.2,74.8
.talk 19344
..accept 9356
step
goto 61.0,66.6
.from Bonestripper Buzzard##16972
.get 12 Plump Buzzard Wing |q 9356/1
step
goto Hellfire Peninsula,49.2,74.8
.talk 19344
..turnin 9356
.collect 1 Recipe: Buzzard Bites##27684 |n
|tip If you have finished the quest and vendored this recipe, you can still buy it off the Auction House.
.'_
.learn Buzzard Bites##33279 |use Recipe: Buzzard Bites##27684
step
goto Hellfire Peninsula,54.2,63.6
.talk 16826
.buy 1 Recipe: Ravager Dog##27688 |n
.'_
.learn Ravager Dog##33284 |use Recipe: Ravager Dog##27688
step
goto Zangarmarsh,17.8,51.2
.talk 18382
.buy 1 Recipe: Clam Bar##30156 |n
.'_
.learn Clam Bar##36210 |use Recipe: Clam Bar##30156
step
goto Zangarmarsh,42.2,27.8
.talk 20028
.buy 1 Recipe Feltail Delight##27695 |n
.buy 1 Recipe: Blackened Trout##27694 |n
.'_
.learn Feltail Delight##33291 |use Recipe Feltail Delight##27695
.learn Blackened Trout##33290 |use Recipe: Blackened Trout##27694
step
goto Zangarmarsh,78.0,66.0
.talk 18911
.buy 1 Recipe: Blackened Sporefish##27696 |n
.'_
.learn Blackened Sporefish##33292 |use Recipe: Blackened Sporefish##27696
step
goto Nagrand,56.2,73.2
.talk 20096
.buy 1 Recipe: Grilled Mudfish##27697 |n
.buy 1 Recipe: Talbuk Steak##27693 |n
.buy 1 Recipe: Poached Bluefish##27698 |n
.buy 1 Recipe: Roasted Clefthoof##27691 |n
.'_
.learn Talbuk Steak##33289 |use Recipe: Talbuk Steak##27693
.learn Grilled Mudfish##33293 |use Recipe: Grilled Mudfish##27697
.learn Poached Bluefish##33294 |use Recipe: Poached Bluefish##27698
.learn Roasted Clefthoof##33287 |use Recipe: Roasted Clefthoof##27691
step
goto Terokkar Forest,56.6,53.2
.talk 19296
.buy 1 Recipe: Golden Fish Sticks##27699 |n
.buy 1 Recipe: Spicy Crawdad##27700 |n
.'_
.learn Golden Fish Sticks##33295 |use Recipe: Golden Fish Sticks##27699
.learn Spicy Crawdad##33296 |use Recipe: Spicy Crawdad##27700
step
goto Terokkar Forest,55.8,53.0
.talk 19038
.buy 1 Recipe Blackened Basilisk##27690 |n
.buy 1 Recipe: Warp Burger##27692 |n
.'_
.learn Blackened Basilisk##33286 |use Recipe Blackened Basilisk##27690
.learn Warp Burger##33288 |use Recipe: Warp Burger##27692
step
goto Blade's Edge Mountains,62.4,40.2
.talk 20916
.buy 1 Recipe: Mok'Nathal Shortribs##31675 |n
.buy 1 Recipe: Crunchy Serpent##31674 |n
.'_
.learn Mok'Nathal Shortribs##38867 |use Recipe: Mok'Nathal Shortribs##31675
.learn Crunchy Serpent##38868 |use Recipe: Crunchy Serpent##31674
step
title +Wrath of the Lich King Recipes
goto Borean Tundra 57.8,71.4
.talk 26989
..accept 13088
step
goto Borean Tundra 45,47.4
.from Wooly Rhino Matriarch##25487+,Wooly Rhino Calf##25488+
.get 4 Chilled Meat##43013 |q 13088
step
goto 57.8,71.4
.talk 26989
..turnin 13088
.learn Northern Stew##57421
step
goto 54.6,70.0
.from Crypt Crawler##25227
|tip If you are having a hard time getting these, you can try running a dungeon also.
.collect 1 Recipe: Bad Clams##43509 |n
.collect 1 Recipe: Last Week's Mammoth##43508 |n
.collect 1 Recipe: Haunted Herring##43510 |n
.collect 1 Recipe: Tasty Cupcake##43507 |n
.'_
.learn Bad Clams##58523 |use Recipe: Bad Clams##43509
.learn Haunted Herring##58525 |use Recipe: Haunted Herring##43510
.learn Last Week's Mammoth##58521 |use Recipe: Last Week's Mammoth##43508
.learn Tasty Cupcake##58512 |use Recipe: Tasty Cupcake##43507
step
'Use the Professions section of this guide to get to _350 cooking_ |only if skill("Cooking")<350
goto Dalaran/2 44.2,25.6
.talk 32516
.' You have to finish the _The Taste Test_ quest in Sholazar to get this quest. |only if completedq(12645)
..accept 13571
..turnin 13571
.collect Recipe: Kungaloosh##19644 |n
.learn Kungaloosh##53056
step
'Use the Professions section of this guide to get to 450 cooking |only if skill("Cooking")<450
'Use the Dalaran Cooking Dailies section of this guide to earn Dalaran Cooking Awards to buy the following recipes: |tip You will need a total of 74 Dalaran Cooking Awards to get all of the recipes
goto Dalaran/1 40.7,66.0
.talk 31032
.buy 1 Recipe: Mega Mammoth Meal##43018 |n
.buy 1 Recipe: Tender Shoveltusk Steak##43019 |n
.buy 1 Recipe: Spiced Worm Burger##43020 |n
.buy 1 Recipe: Very Burnt Worg##43021 |n
.'_
.learn Mega Mammoth Meal##45555 |use Recipe: Mega Mammoth Meal##43018
.learn Tender Shoveltusk Steak##45556 |use Recipe: Tender Shoveltusk Steak##43019
.learn Spiced Worm Burger##45557 |use Recipe: Spiced Worm Burger##43020
.learn Very Burnt Worg##45558 |use Recipe: Very Burnt Worg##43021
step
goto Dalaran/1 40.7,66.0
.talk 31032
.buy 1 Recipe: Worg Tartare##44954 |n
.buy 1 Recipe: Mighty Rhino Dogs##43022 |n
.buy 1 Recipe: Poached Northern Sculpin##43023 |n
.buy 1 Recipe: Firecracker Salmon##43024 |n
.'_
.learn Worg Tartare##62350 |use Recipe: Worg Tartare##44954
.learn Mighty Rhino Dogs##45559 |use Recipe: Mighty Rhino Dogs##43022
.learn Poached Northern Sculpin##45567 |use Recipe: Poached Northern Sculpin##43023
.learn Firecracker Salmon##45568 |use Recipe: Firecracker Salmon##43024
step
goto Dalaran/1 40.7,66.0
.talk 31032
.buy 1 Recipe: Spicy Blue Nettlefish##43025 |n
.buy 1 Recipe: Imperial Manta Steak##43026 |n
.buy 1 Recipe: Spicy Fried Herring##43027 |n
.buy 1 Recipe: Rhinolicious Wormsteak##43028 |n
.'_
.learn Spicy Blue Nettlefish##45571 |use Recipe: Spicy Blue Nettlefish##43025
.learn Imperial Manta Steak##45570 |use Recipe: Imperial Manta Steak##43026
.learn Spicy Fried Herring##57433 |use Recipe: Spicy Fried Herring##43027
.learn Rhinolicious Wormsteak##57434 |use  Recipe: Rhinolicious Wormsteak##43028
step
goto Dalaran/1 40.7,66.0
.talk 31032
.buy 1 Recipe: Critter Bites##43029 |n
.buy 1 Recipe: Hearty Rhino##43030 |n
.buy 1 Recipe: Snapper Extreme##43031 |n
.buy 1 Recipe: Blackened Worg Steak##43032 |n
.'_
.learn Critter Bites##57435 |use Recipe: Critter Bites##43029
.learn Hearty Rhino##57436 |use Recipe: Hearty Rhino##43030
.learn Snapper Extreme##57437 |use Recipe: Snapper Extreme##43031
.learn Blackened Worg Steak##57438 |use Recipe: Blackened Worg Steak##43032
step
goto Dalaran/1 40.7,66.0
.talk 31032
.buy 1 Recipe: Cuttlesteak##43033 |n
.buy 1 Recipe: Spiced Mammoth Treats##43034 |n
.buy 1 Recipe: Blackened Dragonfin##43035 |n
.buy 1 Recipe: Dragonfin Fillet##43036 |n
.'_
.learn Cuttlesteak##57439 |use Recipe: Cuttlesteak##43033
.learn Spiced Mammoth Treats##57440 |use Recipe: Spiced Mammoth Treats##43034
.learn Blackened Dragonfin##57441 |use Recipe: Blackened Dragonfin##43035
.learn Dragonfin Fillet##57442 |use Recipe: Dragonfin Fillet##43036
step
goto Dalaran/1 40.7,66.0
.talk 31032
.buy 1 Recipe: Tracker Snacks##43037 |n
.buy 1 Recipe: Gigantic Feast##43505 |n
.buy 1 Recipe: Small Feast##43506 |n
.buy 1 Recipe: Fish Feast##43017 |n
.'_
.learn Tracker Snacks##57443 |use Recipe: Tracker Snacks##43037
.learn Gigantic Feast##58527 |use Recipe: Gigantic Feast##43505
.learn Small Feast##58528 |use Recipe: Small Feast##43506
.learn Fish Feast##57423 |use Recipe: Fish Feast##43017
step
title +Cataclysm Recipes
'Use the Professions section of this guide to get to 450 cooking |only if skill("Cooking")<450
'Use the Cooking Dailies section of this guide to earn Chef's Awards to buy the following recipies: |only if skill("Cooking")>=450
goto Stormwind City 50.8,71.4
.talk 49701
.buy 1 Recipe: Whitecrest Gumbo##65406 |n
.buy 1 Recipe: Lavascale Fillet##65407 |n
.buy 1 Recipe: Lavascale Minestrone##65409 |n
.buy 1 Recipe: Salted Eye##65410 |n
.'_
.learn Whitecrest Gumbo##88047 |use Recipe: Whitecrest Gumbo##65406
.learn Lavascale Fillet##88024 |use Recipe: Lavascale Fillet##65407
.learn Lavascale Minestrone##88025 |use Recipe: Lavascale Minestrone##65409
.learn Salted Eye##88035 |use Recipe: Salted Eye##65410
step
goto Stormwind City 50.8,71.4
.talk 49701
.buy 1 Recipe: Broiled Mountain Trout##65411 |n
.buy 1 Recipe: Lightly Fried Lurker##65412 |n
.buy 1 Recipe: Seasoned Crab##65413 |n
.buy 1 Recipe: Starfire Espresso##65414 |n
.'_
.learn Broiled Mountain Trout##88012 |use  Recipe: Broiled Mountain Trout##65411
.learn Lightly Fried Lurker##88028 |use Recipe: Lightly Fried Lurker##65412
.learn Seasoned Crab##88037 |use Recipe: Seasoned Crab##65413
.learn Starfire Espresso##88045 |use Recipe: Starfire Espresso##65414
step
goto Stormwind City 50.8,71.4
.talk 49701
.buy 1 Recipe: Feathered Lure##65408 |n
.buy 1 Recipe: Highland Spirits##65415 |n
.buy 1 Recipe: Lurker Lunch##65416 |n
.buy 1 Recipe: Pickled Guppy##65417 |n
.'_
.learn Feathered Lure##88017 |use Recipe: Feathered Lure##65408
.learn Highland Spirits##88022 |use Recipe: Highland Spirits##65415
.learn Lurker Lunch##88030 |use Recipe: Lurker Lunch##65416
.learn Pickled Guppy##88033 |use Recipe: Pickled Guppy##65417
step
goto Stormwind City 50.8,71.4
.talk 49701
.buy 1 Recipe: Hearty Seafood Soup##65418 |n
.buy 1 Recipe: Tender Baked Turtle##65419 |n
.buy 1 Recipe: Fish Fry##65423 |n
.'_
.learn Hearty Seafood Soup##88021 |use Recipe: Hearty Seafood Soup##65418
.learn Tender Baked Turtle##88046 |use Recipe: Tender Baked Turtle##65419
.learn Fish Fry##88018 |use Recipe: Fish Fry##65423
step
'Use the Professions section of this guide to get to 500 cooking |only if skill("Cooking")<500
'Use the Cooking Dailies section of this guide to earn Chef's Awards to buy the following recipies: |only if skill("Cooking")>=500
goto Stormwind City 50.8,71.4
.talk 49701
.buy 1 Recipe: Mushroom Sauce Mudfish##65420 |n
.buy 1 Recipe: Severed Sagefish Head##65421 |n
.buy 1 Recipe: Delicious Sagefish Tail##65422 |n
.buy 1 Recipe: Scalding Murglesnout##68688 |n
.'_
.learn Mushroom Sauce Mudfish##88031 |use Recipe: Mushroom Sauce Mudfish##65420
.learn Severed Sagefish Head##88039 |use Recipe: Severed Sagefish Head##65421
.learn Delicious Sagefish Tail##88016 |use Recipe: Delicious Sagefish Tail##65422
.learn Scalding Murglesnout##96133 |use Recipe: Scalding Murglesnout##68688
step
goto Stormwind City 50.8,71.4
.talk 49701
.buy 1 Recipe: Blackbelly Sushi##65424 |n
.buy 1 Recipe: Skewered Eel##65425 |n
.buy 1 Recipe: Baked Rockfish##65426 |n
.buy 1 Recipe: Basilisk Liverdog##65427 |n
.'_
.learn Blackbelly Sushi##88034 |use Recipe: Blackbelly Sushi##65424
.learn Skewered Eeel##88042 |use Recipe: Skewered Eel##65425
.learn Baked Rockfish##88003 |use Recipe: Baked Rockfish##65426
.learn Basilisk Liverdog##88004 |use Recipe: Basilisk Liverdog##65427
step
goto Stormwind City 50.8,71.4
.talk 49701
.buy 1 Recipe: Grilled Dragon##65428 |n
.buy 1 Recipe: Beer-Basted Crocolisk##65429 |n
.buy 1 Recipe: Crocolisk Au Gratin##65430 |n
.'_
.learn Grilled Dragon##88020 |use Recipe: Grilled Dragon##65428
.learn Beer-Basted Crocolisk##88005 |use Recipe: Beer-Basted Crocolisk##65429
.learn Crocolisk Au Gratin##88014 |use Recipe: Crocolisk Au Gratin##65430
step
'Use the Professions section of this guide to get to 505 cooking |only if skill("Cooking")<505
'Use the Cooking Dailies section of this guide to earn Chef's Awards to buy the following recipies: |only if skill("Cooking")>=505
goto Stormwind City 50.8,71.4
.talk 49701
.buy 1 Recipe: Chocolate Cookie##65431
.'_
.learn Chocolate Cookie##88013 |use Recipe: Chocolate Cookie##65431
step
'Use the Professions section of this guide to get to 525 cooking |only if skill("Cooking")<525
'Use the Cooking Dailies section of this guide to earn Chef's Awards to buy the following recipies: |only if skill("Cooking")>=525
goto Stormwind City 50.8,71.4
.talk 49701
.buy 1 Recipe: Fortune Cookie##65432
.buy 1 Recipe: South Island Iced Tea##65433
.'_
.learn Fortune Cookie##88019 |use Recipe: Fortune Cookie##65432
.learn South Island Iced Tea##88044 |use Recipe: South Island Iced Tea##65433
step
'Use the Shattrath Cooking Dailies section of this guide to get these recipes: |tip It's not always guarenteed to come from these daily prizes so be patient
'Make sure to choose the Crate of Meat
goto Shattrath City/0 61.5,15.7
.talk 24393
.collect 1 Recipe: Spicy Hot Talbuk##33873 |n
.collect 1 Recipe: Broiled Bloodfin##33869 |n
.collect 1 Recipe: Skullfish Soup##33870 |n
.collect 1 Recipe: Kibler's Bits##33875 |n
.collect 1 Recipe: Stormchops##33871 |n
.collect 1 Recipe: Delicious Chocolate Cake##33925 |n
.'_
.learn Spicy Hot Talbuk##43765 |use Recipe: Spicy Hot Talbuk##33873
.learn Broiled Bloodfin##43761 |use Recipe: Broiled Bloodfin##33869
.learn Skullfish Soup##43707 |use Recipe: Skullfish Soup##33870
.learn Kibler's Bits##43772 |use Recipe: Kibler's Bits##33875
.learn Stormchops##43758 |use Recipe: Stormchops##33871
.learn Delicious Chocolate Cake##43779 |use Recipe: Delicious Chocolate Cake##33925
step
'These recipes are bought during the Winter's Veil Holiday:
goto Ironforge,33.6,67.8
.talk 13433
.buy 1 Recipe: Hot Apple Cider##34413 |n
.buy 1 Recipe: Egg Nog##17201 |n
.buy 1 Recipe: Gingerbread Cookie##17200 |n
.'_
.learn Hot Apple Cider##45022 |use Recipe: Hot Apple Cider##34413
.learn Egg Nog##21144 |use Recipe: Egg Nog##17201
.learn Gingerbread Cookie##21143 |use Recipe: Gingerbread Cookie##17200
step
'This recipe is bought during the Day of the Dead Holiday
goto Stormwind City 47.0,25.4
.talk 34382
.buy 1 Recipe: Bread of the Dead##46710 |n
.'_
.learn Bread of the Dead##65454 |use Recipe: Bread of the Dead##46710
step
'This recipe is learned during the Pilgrim's Week holiday
goto Elwynn Forest,34.0,51.6
.talk 35337
.buy 1 Bountiful Cookbook##46809 |n
'Open your Bountiful Cookbook |use Bountiful Cookbook##46809 |tip Keep buying these until you have all of the recipes
.collect 1 Recipe: Slow-Roasted Turkey##44861 |n
.collect 1 Recipe: Candied Sweet Potato##44859 |n
.collect 1 Recipe: Cranberry Chutney##44858 |n
.collect 1 Recipe: Pumpkin Pie##44862 |n
.collect 1 Recipe: Spice Bread Stuffing##44860 |n
.collect 1 Recipe: Captain Rumsey's Lager##34834 |n
.'_
.learn Candied Sweet Potato##62051 |use Recipe: Candied Sweet Potato##44859
.learn Slow-Roasted Turkey##62045 |use  Recipe: Slow-Roasted Turkey##46807
.learn Cranberry Chutney##62049 |use Recipe: Cranberry Chutney##46805
.learn Pumpkin Pie##62044 |use Recipe: Pumpkin Pie##46804
.learn Spice Bread Stuffing##62050 |use Recipe: Spice Bread Stuffing##44860
.learn Captain Rumsey's Lager##45695 |use Recipe: Captain Rumsey's Lager##34834
step
'You have to be in a guild and have done these achievements to obtain these next recipes:
.' Set the Oven to Cataclysmic |achieve 5467
.' That's A Lot of Bait |achieve 5036
step
goto Stormwind City 64.6,76.8
.talk 46602
.buy 1 Recipe: Broiled Dragon Feast##62799 |n
.buy 1 Recipe: Seafood Magnifique##62800 |n
.'_
.learn Broiled Dragon Feast##88011 |use Recipe: Broiled Dragon Feast##62799
.learn Seafood Magnifique##88036 |use Recipe: Seafood Magnifique##62800
step
'The following recipes are obtained from the Horde. You can purchase them on neutral Auction House
.' Sometimes you can find them on the regular Auction House.
.buy 1 Recipe: Roasted Kodo Meat##5484 |n
.buy 1 Recipe: Crispy Bat Wing##12226 |n
.buy 1 Recipe: Scorpid Surprise##5483 |n
.buy 1 Recipe: Strider Stew##5486 |n
.buy 1 Crispy Lizard Tail##5488 |n
.'_
.learn Roasted Kodo Meat##6414 |use Recipe: Roasted Kodo Meat##5484 |or 5
.learn Crispy Bat Wing##15935 |use Recipe: Crispy Bat Wing##12226 |or 5
.learn Scorpid Surprise##6413 |use Recipe: Scorpid Surprise##5483 |or 5
.learn Strider Stew##6416 |use Recipe: Strider Stew##5486 |or 5
.learn Crispy Lizard Tail##6418 |use Crispy Lizard Tail##5488 |or 5
.' If you cannot find any of these recipes, click here for more. |confirm |or 5
step
'The following recipes are obtained from the Horde. You can purchase them on neutral Auction House
.' Sometimes you can find them on the regular Auction House.
.buy 1 Recipe: Heavy Crocolisk Stew##20075 |n
.buy 1 Recipe: Hot Lion Chops##3735 |n
.buy 1 Recipe: Carrion Surprise##12232 |n
.buy 1 Recipe: Bat Bites##27687 |n
.buy 1 Recipe: Lynx Steak##27685 |n
.'_
.learn Heavy Crocolisk Stew##24418 |use Recipe: Heavy Crocolisk Stew##20075
.learn Hot Lion Chops##3398 |use Recipe: Hot Lion Chops##3735
.learn Carrion Surprise##15863 |use Recipe: Carrion Surprise##12232
.learn Bat Bites##33278 |use Recipe: Bat Bites##27687
.learn Lynx Steak##33276 |use Recipe: Lynx Steak##27685
step
'Congratulations, you have earned the Achievement _Iron Chef_!
|next "Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\Ironpaw Chef" |only if ZGV.guidesets['LevelingAMOP']
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\Cooking With Style Achievement",[[
description Obtain a Chef's Hat
condition end achieved(3296)
step
label "start"
'You will need to complete Dalaran Cooking Dailies to earn 100 Dalaran Cooking awards
|confirm
step
goto Howling Fjord,58.2,62.1
.talk 26905
..accept 13087|tip This quest is only available to you if you have 350+ Cooking skill.
|only if not completedq(13087)
step
goto 79.0,73.1
.from Lion Seal Whelp##29559+, Lion Seal##23887+, Bull Lion Seal##23886+
.get 4 Chilled Meat |q 13087/1
|only if not completedq(13087)
step
goto 58.2,62.1
.talk 26905
..turnin 13087
|only if not completedq(13087)
step
goto Dalaran,40.8,65.4
.talk 28705
.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day, and they all require you have 350+ Cooking skill:
..accept 13103 |or
..accept 13101 |or
..accept 13100 |or
..accept 13107 |or
..accept 13102 |or
step
goto 54.7,31.5
.' Click the Aged Dalaran Limburger|tip They look like piles and pieces of yellow cheese on the tables inside this building.
.collect 1 Aged Dalaran Limburger##43137 |q 13103
.' Click the Half Full Glasses of Wine|tip They look like small blue-ish wine glasses sitting on tables, and on the ground, inside this building.  They spawn in random locations.
.collect 6 Half Full Dalaran Wine Glass##43138 |q 13103
.' You can find more Half Full Glasses of Wine inside the building at [49.4,39.3]
step
'Use your Empty Cheese Serving Platter in your bags|use Empty Cheese Serving Platter##43139
.get 1 Wine and Cheese Platter |q 13103/1
step
goto 55.0,30.8
.' Click a Full Jug of Wine|tip They look like small blue-ish green jugs sitting on the ground inside this building.  They spawn in random locations.
.get 1 Jug of Wine |q 13101/2
step
goto Dragonblight,30.0,49.8
.from Rabid Grizzly##26643+, Blighted Elk##26616+
.collect 4 Chilled Meat##43013 |q 13101
step
'Use your Cooking ability to cook 4 Northern Stew|tip You will need a cooking fire to do this.
.get 4 Northern Stew |q 13101/1
step
'The entrance to the Dalaran sewers starts here|goto Dalaran,60.2,47.7,0.3|c|q 13100
step
goto Dalaran/2 51.6,41.6
.click Infused Mushroom##359+
.collect 4 Infused Mushroom##43100 |q 13100
step
'Leave the Dalaran sewers|goto Dalaran,60.2,47.7,0.3|c|q 13100
step
goto Dragonblight,30.0,49.8
.from Rabid Grizzly##26643+, Blighted Elk##26616+
.collect 2 Chilled Meat##43013 |q 13100
step
'Use your Meatloaf Pan in your bags|use Meatloaf Pan##43101|tip You will need a cooking fire to do this.
.get 1 Infused Mushroom Meatloaf |q 13100/1
step
goto Dalaran,67.7,40.0
.click Wild Mustard##192827
|tip They look like small, and kind of hard to see, bushy yellow flowers on the ground around this area.  They spawn randomly in grassy areas.
.collect 4 Wild Mustard##43143 |q 13107
.' You can find more Wild Mustard flowers:
..' at [50.3,48.3]
..' at [37.2,43.9]
step
goto Borean Tundra,46.7,43.6
.from Wooly Rhino Calf##25488+, Wooly Rhino Matriarch##25487+, Wooly Rhino Bull##25489+
.collect 4 Rhino Meat##43012 |q 13107
step
.create 4 Rhino Dogs##45553,Cooking,4 total |n
'Use your Cooking ability to cook 4 Rhino Dogs|tip You will need a cooking fire to do this.
.collect 4 Rhino Dogs##34752 |q 13107
step
'Use your Empty Picnic Basket in your bags|use Empty Picnic Basket##43142
.get 1 Mustard Dog Basket! |q 13107/1
step
goto Crystalsong Forest,26.9,45.5
.' Click the Crystalsong Carrots|tip they look like carrots sticking out of the ground, at the base of trees around this area underneath Dalaran.  They spawn in random locations around this area.
.collect 4 Crystalsong Carrot##43148 |q 13102
step
goto Dragonblight,30.0,49.8
.from Rabid Grizzly##26643+, Blighted Elk##26616+
.collect 4 Chilled Meat##43013 |q 13102
step
'Use your Stew Cookpot in your bags|use Stew Cookpot##43147|tip You will need a cooking fire to do this.
.get 1 Vegetable Stew |q 13102/1
step
goto Dalaran,36.6,27.8
.talk 28718
..turnin 13103
step
goto Dalaran,48.6,37.5
.talk 29049
..turnin 13101
step
goto Dalaran,52.3,55.6
.talk 29527
..turnin 13100
step
goto Dalaran,68.6,42.0
.talk 28160
..turnin 13107
step
'The entrance to the Dalaran sewers starts here|goto Dalaran,60.2,47.7,0.3|c|q 13102
step
goto Dalaran,35.5,57.6
.talk 29532
..turnin 13102
step
.earn 100 Dalaran Cooking Award##81 |next "turnin"
.' Click here to go back to the beginning of the dailies |confirm |next "start"
step
label "turnin"
'Go to Dalaran |goto Dalaran |noway |c
step
goto Dalaran,41.6,64.8
.talk 31032
.buy 1 Chef's Hat##46349
.' Obtain a Chef's Hat |achieve 3296
step
Congratulations! You've earned the _Cooking with Style_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\Captain Rumsey's Lager Achievement",[[
description Brew up some of Captain Rumsey's Lager.
condition end achieved(1801)
step
'Use the Shattrath or Dalaran Cooking Dailies, or the Fishing Dailies of this guide to get this recipe
|confirm
step
'Routing to the proper section |next "create" |only if knowspell(45695)
'Routing to the proper section |next "dailies" |only if default
step
label "dailies"
goto Stormwind City,55.0,69.7
.talk 5494
..' You will only be able to complete 1 of the following quests per day
..accept 26488 |or
..accept 26420 |or
..accept 26414 |or
..accept 26442 |or
..accept 26536 |or
step
goto 75.4,84.0
.' Fish in the moat in this spot
.collect Royal Monkfish##58856 |n
.' Click the Royal Monkfish in your bags |use Royal Monkfish##58856
.get Precious Locket |q 26488/1 |tip You may not always get the item inside the first Royal Monkfish, so you'll need to fish more of them.
step
goto 58.6,11.5
.' Click a Worm Mound |tip They look like tiny gray spots on the ground, almost invisible.  Look for sparkles above the ground to find them easier.
.collect 1 Overgrown Earthworm##58788 |q 26420
.' Use your Overgrown Earthworm |use Overgrown Earthworm##58788
.' Fish in the lake in this spot
.get Crystal Bass |q 26420/1
step
goto 48.6,39.1
.' Fish in the lake in this spot
.get 8 Hardened Walleye |q 26414/1
step
goto 24.1,49.7
.' Click Stormwind Lobster Traps |tip They look like gray metal cages on the ground underwater around this area under the Stormwind Harbor docks.
.get 6 Rock Lobster |q 26442/1
step
goto Elwynn Forest,28.2,59.3 |n
.' Follow the path up |goto Elwynn Forest,28.2,59.3,0.5 |noway |c |q 26536
step
goto 25.7,59.3
.' Fish in the lake in this spot
.get 4 Violet Perch |q 26536/1
step
goto Stormwind City,55.0,69.7
.talk 5494
..' You will only be able to complete 1 of the following quests per day
..turnin 26488
..turnin 26420
..turnin 26414
..turnin 26442
..turnin 26536
step
goto Shattrath City,61.8,15.6
.talk 24393
.' You will only be able to accept one of these daily quests per day
..accept 11381 |or |next "soup"
..accept 11379 |or |next "stew"
..accept 11380 |or |next "mana"
..accept 11377 |or |next "tasty"
step
label "soup"
goto Nagrand,56.2,73.3
.talk 20096
.buy Recipe: Roasted Clefthoof##27691 |n
.' Click the Recipe: Roasted Clefthoof in your bags |use Recipe: Roasted Clefthoof##27691
.learn Roasted Clefthoof##33287 |q 11381
step
goto Nagrand,58.5,46.8
.from Clefthoof##18205+, Clefthoof Calf##19183+
.collect 4 Clefthoof Meat##27678 |q 11381
.' You can find more Clefthooves at  45.5,72.7
step
.' Build a Basic Campfire |cast Basic Campfire##818
.create Roasted Clefthoof##33287,Cooking,4 total |q 11381
step
goto 25.9,59.4
.' Use your Cooking Pot to Cook up some Spiritual Soup |use Cooking Pot##33851
.' Cook a Spiritual Soup |q 11381/1
|next "turnin"
step
label "stew"
goto Blade's Edge Mountains,62.5,40.3
.talk 20916
.buy Recipe: Mok'Nathal Shortribs##31675 |n
.' Click the Recipe: Mok'Nathal Shortribs in your bags |use Recipe: Mok'Nathal Shortribs##31675
.learn Mok'Nathal Shortribs##31672 |q 11379
.buy Recipe: Crunchy Serpent##31674 |n
.' Click the Recipe: Crunchy Serpent in your bags |use Recipe: Mok'Nathal Shortribs##31674
.learn Crunchy Serpent##31673 |q 11379
step
goto Blade's Edge Mountains,49.6,46.2
.from Daggermaw Blackhide##22052+, Bladespire Raptor##20728+
.collect 4 Raptor Ribs##31670+ |q 11379
step
goto 68.2,63.2
.from Scalewing Serpent##20749+, Felsworn Scalewing##21123+
.collect 1 Serpent Flesh##31671 |q 11379
step
.' Build a Basic Campfire |cast Basic Campfire##818
.create 2 Mok'Nathal Shortribs##38867,Cooking,2 total |q 11379
step
.' Build a Basic Campfire |cast Basic Campfire##818
.create 1 Crunchy Serpent##38868,Cooking,1 total |q 11379
step
goto 29.0,84.5
.from Abyssal Flamebringer##19973+
.' Use your Cooking Pot next to the Abyssal Flamebringer corpse to Cook up some Demon Broiled Surprise |use Cooking Pot##33852
.get Demon Broiled Surprise |q 11379/1
|next "turnin"
step
label "mana"
goto Netherstorm,45.6,54.2
.click Mana Berry Bush##186729+
.get 15 Mana Berry##33849+ |q 11380/1
|next "turnin"
step
label "tasty"
goto Terokkar Forest,55.8,53.0
.talk 19038
.buy Recipe: Warp Burger##27692 |n
.' Click the Recipe: Warp Burger in your bags |use Recipe: Warp Burger##27692
.learn Warp Burger##33288 |q 11377
step
goto 64.0,83.5
.from Blackwind Warp Chaser##23219+
.collect 3 Warped Flesh##27681 |q 11377
step
goto 67.6,74.7
.from Monstrous Kaliri##23051+ |tip They fly around in the sky close to the tree outposts and bridges.
.collect Giant Kaliri Wing##33838 |q 11377
step
goto 25.9,59.5
.' Build a Basic Campfire |cast Basic Campfire##818
.create Warp Burger##33288,Cooking,3 total |q 11377
.' Use your Cooking Pot to Cook up some Kaliri Stew |use Cooking Pot##33837
.create Kaliri Stew##43718,Cooking,1 total |q 11377/1
|next "turnin"
step
label "turnin"
goto Shattrath City,61.8,15.6
.talk 24393
..turnin 11381
..turnin 11379
..turnin 11380
..turnin 11377
step
goto Howling Fjord,58.2,62.1
.talk 26905
..accept 13087|tip This quest is only available to you if you have 350+ Cooking skill.
|only if not completedq(13087)
step
goto 79.0,73.1
.from Lion Seal Whelp##29559+, Lion Seal##23887+, Bull Lion Seal##23886+
.get 4 Chilled Meat |q 13087/1
|only if not completedq(13087)
step
goto 58.2,62.1
.talk 26905
..turnin 13087
|only if not completedq(13087)
step
goto Dalaran,40.8,65.4
.talk 28705
.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day, and they all require you have 350+ Cooking skill:
..accept 13103 |or
..accept 13101|daily |or
..accept 13100|daily |or
..accept 13107|daily |or
..accept 13102|daily |or
step
goto 54.7,31.5
.' Click the Aged Dalaran Limburger|tip They look like piles and pieces of yellow cheese on the tables inside this building.
.collect 1 Aged Dalaran Limburger##43137 |q 13103
.' Click the Half Full Glasses of Wine|tip They look like small blue-ish wine glasses sitting on tables, and on the ground, inside this building.  They spawn in random locations.
.collect 6 Half Full Dalaran Wine Glass##43138 |q 13103
.' You can find more Half Full Glasses of Wine inside the building at 49.4,39.3
step
'Use your Empty Cheese Serving Platter in your bags|use Empty Cheese Serving Platter##43139
.get 1 Wine and Cheese Platter |q 13103/1
step
goto 55.0,30.8
.' Click a Full Jug of Wine|tip They look like small blue-ish green jugs sitting on the ground inside this building. They might also be up the stairs.  They spawn in random locations.
.get 1 Jug of Wine |q 13101/2
step
goto Dragonblight,30.0,49.8
.from Rabid Grizzly##26643+, Blighted Elk##26616+
.collect 4 Chilled Meat##43013 |q 13101
step
#include "cooking_fire"
.create 4 Northern Stew##57421,Cooking,4 total |n
.get 4 Northern Stew |q 13101/1
step
goto Dalaran/2 59.5,43.6
..collect 4 Infused Mushroom##43100 |q 13100 |tip They spawn randomly along the sewer lines.
step
goto Dragonblight,30.0,49.8
.from Rabid Grizzly##26643+, Blighted Elk##26616+
.collect 2 Chilled Meat##43013 |q 13100
step
#include "cooking_fire"
'Use your Meatloaf Pan in your bags|use Meatloaf Pan##43101|tip You will need a cooking fire to do this.
.get 1 Infused Mushroom Meatloaf |q 13100/1
step
goto Dalaran,67.7,40.0
.' Click the Wild Mustard|tip They look like small, and kind of hard to see, bushy yellow flowers on the ground around this area.  They spawn randomly in grassy areas.
..collect 4 Wild Mustard##43143 |q 13107
.' You can find more Wild Mustard flowers:
..' At [50.3,48.3]
..' At [37.2,43.9]
step
goto Borean Tundra,46.7,43.6
.from Wooly Rhino Calf##25488+, Wooly Rhino Matriarch##25487+, Wooly Rhino Bull##25489+
..collect 4 Rhino Meat##43012 |q 13107
step
#include "cooking_fire"
.create Rhino Dogs##45553,Cooking,4 total |n
..collect 4 Rhino Dogs##34752 |q 13107
step
'Use your Empty Picnic Basket in your bags|use Empty Picnic Basket##43142
.get 1 Mustard Dog Basket! |q 13107/1
step
goto Crystalsong Forest,26.7,44.1
.' Click the Crystalsong Carrots|tip They looke like carrots sticking out of the ground, at the base of trees around this area underneath Dalaran.  They spawn in random locations around this area.
..collect 4 Crystalsong Carrot##43148 |q 13102
step
goto Dragonblight,30.0,49.8
.from Rabid Grizzly##26643+, Blighted Elk##26616+
..collect 4 Chilled Meat##43013 |q 13102
step
#include "cooking_fire"
'Use your Stew Cookpot in your bags|use Stew Cookpot##43147|tip You will need a cooking fire to do this.
..get 1 Vegetable Stew |q 13102/1
step
goto Dalaran,36.6,27.8
.talk 28718
..turnin 13103
step
goto Dalaran,48.6,37.5
.talk 29049
..turnin 13101
step
goto Dalaran,52.3,55.6
.talk 29527
..turnin 13100
step
goto Dalaran,68.6,42.0
.talk 28160
..turnin 13107
step
goto Dalaran,35.5,57.6
.talk 29532
..turnin 13102
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
step
goto 53.7,42.9
.' Walk into the water here to create a pool of blood
.' Fish in the pool of blood
.get 5 Bloodtooth Frenzy |q 13833/1
step
goto Wintergrasp,79.9,41.8
.' Fish in this big lake
.get 10 Terrorfish |q 13834/1
step
'The entrance to the Dalaran sewers starts here|goto Dalaran,60.2,47.7,0.3|c|q 13832
step
goto 44.4,66.2
.' Fish in the water in the Dalaran sewers
.get 1 Corroded Jewelry |q 13832/1
step
'Leave the Dalaran sewers|goto Dalaran,60.2,47.7,0.3|c|q 13832
step
goto Dalaran,64.8,60.8
.collect Bloated Slippery Eel##45328|n
.' Click the Bloated Slippery Eel in your bags|use Bloated Slippery Eel##45328
.get 1 Severed Arm |q 13836/1
step
goto Sholazar Basin,49.3,61.8
.' Fish in the water here
.collect 1 Phantom Ghostfish##45902|n
.' Click the Phantom Ghostfish in your bags to eat it|use Phantom Ghostfish##45902
.' Discover the Ghostfish mystery |q 13830/1
step
goto Dalaran,53.1,64.9
.talk 28742
.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
..turnin 13833
..turnin 13834
..turnin 13832
..turnin 13830
step
goto Dalaran,36.6,37.3
.talk 28706
..turnin 13836
step
'You have completed the maximum amount of dailies you can do today.
.' Click here to go back to the beginning of the dailies. |confirm |next "dailies"
.collect 1 Recipe: Captain Rumsey's Lager##34834 |next "learn"
step
label "learn"
.learn Captain Rumsey's Lager##45695 |use Recipe: Captain Rumsey's Lager##34834
step
label "create"
goto Stormwind City,76.3,53.0
.talk 1327
.buy 1 Flask of Port##2593
.buy 1 Flagon of Mead##2594
.buy 1 Skin of Dwarven Stout##2596
step
.create Captain Rumsey's Lager##45695,Cooking,1 total
.' Brew up Captain Rumsey's Lager |achieve 1801
step
'Congratulations! You've earned the Captain Rumsey's Lager achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\Our Daily Bread Achievement",[[
description Complete each of the cooking daily quests offered by Katherine Lee in Dalaran.
condition end achieved(1782)
#include "A_Our_Daily_Bread"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\Let's Do Lunch: Stormwind Achievement",[[
description Complete the Stormwind cooking daily quests.
condition end achieved(5474)
daily
step
label dailies
goto Stormwind City,50.6,71.9
.talk 42288
..' You will only be able to complete 1 of the following quests per day
..accept 26190 |or
..accept 26177 |or
..accept 26192 |or
..accept 26153 |or
..accept 26183 |or
step
goto 54.9,68.2
.' Click Barrels of Canal Fish |tip They look like dark wooden barrels near fishermen all along the canals.
.get 5 Gigantic Catfish |q 26190/1
step
goto 54.5,66.7
.' Click Canal Crabs |tip They look like small crabs underwater all along in the canals.
.get 10 Canal Crab |q 26177/1
step
goto 41.2,83.6
.' Click Sacks of Confectioner's Sugar |tip They look like cloth white sacks.  This one is laying on the ground inside The Slaughtered Lamb building.
.get 4 Confectioner's Sugar |q 26192/1
.' You can find more Sacks of Confectioner's Sugar:
.' at [51.0,96.2] |tip Laying on the floor, next to the fireplace in The Blue Recluse building.
.' at [77.8,53.2] |tip Laying on the floor, next to the fireplace in Pig and Whistle Tavern building.
.' at [66.0,31.9] |tip Laying on the bar inside The Golden Keg building.
step
goto 54.3,12.3
.' Click Stormwind Pumpkins |tip They look like big orange pumpkins on the ground around this area.
.get 6 Stormwind Pumpkin |q 26153/1
step
goto 55.0,74.0
.' Click Juicy Apples |tip They look like red apples laying on the ground under apple trees along the streets of Stormwind City.  There are different types of trees in Stormwind, so only look under the rounder shaped trees with red apples in them.
get 12 Juicy Apple |q 26183/1
step
goto 50.6,71.9
.talk 42288
..' You will only be able to complete 1 of the following quests per day
..turnin 26190
..turnin 26177
..turnin 26192
..turnin 26153
..turnin 26183
.' Click here to go to the beginning of this dailies guide |confirm |next "dailies"
.' Let's Do Lunch: Stormwind |achieve 5474 |next
step
'Congratulations! You've earned the Let's Do Luunch: Stormwind achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\Let's Do Lunch: Darnassus Achievement",[[
description Complete each of the Darnassus cooking daily quests.
condition end achieved(5842)
daily
step
dailies
goto Darnassus,50.0,36.6
.talk 4210
..accept 29313 |or
..accept 29314 |or
..accept 29316 |or
..accept 29318 |or
..accept 29357 |or
step
goto Darnassus,43.2,78.4
.' Click on the Blessed Rice Cakes
.get Blessed Rice Cakes##69900 |q 29314/1
|only if havequest(29314)
step
goto 48.0,37.0
.' Click on the Buried Kimchi Jar |tip They look like shinning jars covered in dirt all over Darnassus
.get 8 Buried Kimchi Jar |q 29313/1
|only if havequest(29313)
step
goto 49.6,36.6
.talk 4223
.buy 10 Simple Flour##30817 |q 29357
.buy 10 Mild Spices##2678 |q 29357
|only if havequest(29357)
step
.create Spice Bread##37836,Cooking,10 total
.get 10 Spice Bread |q 29357/1
|only if havequest(29357)
step
'Click on the Rice Baskets found on the Craftmen's Terrace and the Warrior's Terrace |tip They look like shinning light-brown baskets
.' Practice Making Rice Flour |q 29316/1
|only if havequest(29316)
step
goto 52.2,35.6
.' Create a basic campfire |cast Basic Campfire##818
.' Cook your Uncooked Ribs (5) |use Uncooked Ribs##69904
.collect 5 Delicious Ribs##69906 |n
.' Feed the Delicious Ribs to the Darnassus Sentinels, located all over Darnassus |use Delicious Ribs##69906
.' Feed Ribs to Sentinels (5) |q 29318/1
|only if havequest(29318)
step
goto Darnassus,50.0,36.6
.talk 4210
..turnin 29313 |or
..turnin 29316 |or
..turnin 29318 |or
..turnin 29357 |or
.' Click here to go to the start of this daily guide |confirm |next "dailies"
.' Let's Do Lunch: Stormwind |achieve 5842 |next "end"
only if havequest(29313) or havequest(29316) or havequest(29318) or havequest(29357)
step
goto Darnassus,69.2,39.9
.' Click on the Shrine of the Ancestors
..turnin 29314 |or
.' Click here to go to the start of this daily guide |confirm |next "dailies"
.' Let's Do Lunch: Darnassus |achieve 5842 |next "end"
only if havequest(29314)
step
label "end"
'Congratulations! You've earned the Let's Do Lunch: Darnassus achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\Let's Do Lunch: Ironforge Achievement",[[
description Complete each of the Ironforge cooking daily quests.
condition end achieved(5841)
daily
step
label dailies
goto Ironforge,60.1,36.4
.talk 5159
..accept 29352 |or
..accept 29351 |or
..accept 29355 |or
..accept 29356 |or
..accept 29353 |or
step
goto Dun Morogh,60.3,34.0
.' Click on the Dun Morogh Chickens
.get 6 Dun Morogh Chicken##69982 |q 29352/1
|only if havequest(29352)
step
goto Dun Morogh,53.9,50.8
.' Click on the Cast of Drugan's IPA
.' Run the Cask back to Daryl Riknussun in Ironforge |tip Be sure not to mount up, or else you lose the cask
.' Deliver Cask of Drugan's IPA |q 29356/1
|only if havequest(29356)
step
goto Ironforge,58.9,41.2
.' Click on the Sack of Oatmeal
.get 4 Sack of Oatmeal##69985 |q 29353/2 |tip They look like shinning white bags on the ground all around Ironforge
|only if havequest(29353)
step
goto Ironforge,61.9,72.5
.talk 5124
.get 1 Bag o' Sheep Innards##69984 |q 29353/1
|only if havequest(29353)
step
goto Ironforge,59.9,37.6 |q 29353
.talk 5160 |q 29353
.get 5 Mild Spices##2678 |q 29353/3
|only if havequest(29353)
step
goto Ironforge,57.9,50.0
.' Offer your Ironforge Rations to the Ironforge Guards around Ironforge |use Ironforge Rations##69981
.' 6 Ironforge Guards Fed |q 29351/1
|only if havequest(29351)
step
goto Ironforge,59.9,37.6
.talk 5160
.buy 10 Simple Flour##30817 |q 29355
.buy 10 Mild Spices##2678 |q 29355
|only if havequest(29355)
step
.create Spice Bread##37836,Cooking,10 total
.get 10 Spice Bread |q 29355/1
|only if havequest(29355)
step
goto Ironforge,60.1,36.4
.talk 29351
..turnin 29352 |or
..turnin 29351 |or
..turnin 29355 |or
..turnin 29356 |or
..turnin 29353 |or
.' Click here to go to the start of this daily guide |confirm |next "dailies"
.' Let's Do Lunch: Ironforge |achieve 5841 |next
step
Congratulations! You've earned the Let's Do Lunch: Ironforge achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\A Bunch of Lunch Achievement",[[
description Complete each Let's Do Lunch achievement.
condition end achieved(5845)
step
'Complete each of the following achievements using the appropiate sections of this guide:
.' Complete Let's Do Lunch: Stormwind |achieve 5474
.' Complete Let's Do Lunch: Ironforge |achieve 5841
.' Complete Let's Do Lunch: Darnassus |achieve 5842
.'_
|confirm
step
label "dailies1"
Routing to next section |next "dailies2" |only if achieved(5474)
Routing to next section |next |only if default
step
goto Stormwind City,50.6,71.9
.talk 42288
..' You will only be able to complete 1 of the following quests per day
..accept 26190 |or
..accept 26177 |or
..accept 26192 |or
..accept 26153 |or
..accept 26183 |or
step
goto 54.9,68.2
.' Click Barrels of Canal Fish |tip They look like dark wooden barrels near fishermen all along the canals.
.get 5 Gigantic Catfish |q 26190/1
step
goto 54.5,66.7
.' Click Canal Crabs |tip They look like small crabs underwater all along in the canals.
.get 10 Canal Crab |q 26177/1
step
goto 41.2,83.6
.' Click Sacks of Confectioner's Sugar |tip They look like cloth white sacks.  This one is laying on the ground inside The Slaughtered Lamb building.
.get 4 Confectioner's Sugar |q 26192/1
.' You can find more Sacks of Confectioner's Sugar:
.' at [51.0,96.2] |tip Laying on the floor, next to the fireplace in The Blue Recluse building.
.' at [77.8,53.2] |tip Laying on the floor, next to the fireplace in Pig and Whistle Tavern building.
.' at [66.0,31.9] |tip Laying on the bar inside The Golden Keg building.
step
goto 54.3,12.3
.' Click Stormwind Pumpkins |tip They look like big orange pumpkins on the ground around this area.
.get 6 Stormwind Pumpkin |q 26153/1
step
goto 55.0,74.0
.' Click Juicy Apples |tip They look like red apples laying on the ground under apple trees along the streets of Stormwind City.  There are different types of trees in Stormwind, so only look under the rounder shaped trees with red apples in them.
get 12 Juicy Apple |q 26183/1
step
goto 50.6,71.9
.talk 42288
..' You will only be able to complete 1 of the following quests per day
..turnin 26190
..turnin 26177
..turnin 26192
..turnin 26153
..turnin 26183
step
label "dailies2"
Routing to next section |next "dailies3" |only if achieved(5841)
Routing to next section |next |only if default
step
goto Ironforge,60.1,36.4
.talk 5159
..accept 29352 |or
..accept 29351 |or
..accept 29355 |or
..accept 29356 |or
..accept 29353 |or
step
goto Dun Morogh,60.3,34.0
.' Click on the Dun Morogh Chickens
.get 6 Dun Morogh Chicken##69982 |q 29352/1
|only if havequest(29352)
step
goto Dun Morogh,53.9,50.8
.' Click on the Cast of Drugan's IPA
.' Run the Cask back to Daryl Riknussun in Ironforge |tip Be sure not to mount up, or else you lose the cask
.' Deliver Cask of Drugan's IPA |q 29356/1
|only if havequest(29356)
step
goto Ironforge,58.9,41.2
.' Click on the Sack of Oatmeal
.get 4 Sack of Oatmeal##69985 |q 29353/2 |tip They look like shinning white bags on the ground all around Ironforge
|only if havequest(29353)
step
goto Ironforge,61.9,72.5
.talk 5124
.get 1 Bag o' Sheep Innards##69984 |q 29353/1
|only if havequest(29353)
step
goto Ironforge,59.9,37.6 |q 29353
.talk 5160 |q 29353
.get 5 Mild Spices##2678 |q 29353/3
|only if havequest(29353)
step
goto Ironforge,57.9,50.0
.' Offer your Ironforge Rations to the Ironforge Guards around Ironforge |use Ironforge Rations##69981
.' 6 Ironforge Guards Fed |q 29351/1
|only if havequest(29351)
step
goto Ironforge,59.9,37.6
.talk 5160
.buy 10 Simple Flour##30817 |q 29355
.buy 10 Mild Spices##2678 |q 29355
|only if havequest(29355)
step
.create Spice Bread##37836,Cooking,10 total
.get 10 Spice Bread |q 29355/1
|only if havequest(29355)
step
goto Ironforge,60.1,36.4
.talk 29351
..turnin 29352 |or
..turnin 29351 |or
..turnin 29355 |or
..turnin 29356 |or
..turnin 29353 |or
step
label "dailies3"
Routing to next section |next "end" |only if achieved(5842)
Routing to next section |next |only if default
step
goto Darnassus,50.0,36.6
.talk 4210
..accept 29313 |or
..accept 29314 |or
..accept 29316 |or
..accept 29318 |or
..accept 29357 |or
step
goto Darnassus,43.2,78.4
.' Click on the Blessed Rice Cakes
.get Blessed Rice Cakes##69900 |q 29314/1
|only if havequest(29314)
step
goto 48.0,37.0
.' Click on the Buried Kimchi Jar |tip They look like shinning jars covered in dirt all over Darnassus
.get 8 Buried Kimchi Jar |q 29313/1
|only if havequest(29313)
step
goto 49.6,36.6
.talk 4223
.buy 10 Simple Flour##30817 |q 29357
.buy 10 Mild Spices##2678 |q 29357
|only if havequest(29357)
step
.create Spice Bread##37836,Cooking,10 total
.get 10 Spice Bread |q 29357/1
|only if havequest(29357)
step
'Click on the Rice Baskets found on the Craftmen's Terrace and the Warrior's Terrace |tip They look like shinning light-brown baskets
.' Practice Making Rice Flour |q 29316/1
|only if havequest(29316)
step
goto 52.2,35.6
.' Create a basic campfire |cast Basic Campfire##818
.' Cook your Uncooked Ribs (5) |use Uncooked Ribs##69904
.collect 5 Delicious Ribs##69906 |n
.' Feed the Delicious Ribs to the Darnassus Sentinels, located all over Darnassus |use Delicious Ribs##69906
.' Feed Ribs to Sentinels (5) |q 29318/1
|only if havequest(29318)
step
goto Darnassus,50.0,36.6
.talk 4210
..turnin 29313 |or
..turnin 29316 |or
..turnin 29318 |or
..turnin 29357 |or
only if havequest(29313) or havequest(29316) or havequest(29318) or havequest(29357)
step
goto Darnassus,69.2,39.9
.' Click on the Shrine of the Ancestors
..turnin 29314 |or
only if havequest(29314)
step
label "end"
'Complete Let's Do Lunch: Stormwind |achieve 5474
'Complete Let's Do Lunch: Ironforge |achieve 5841
'Complete Let's Do Lunch: Darnassus |achieve 5842
.' Click here to go back to the beginning of the dailies. |confirm |next "dailies1"
step
'Congratulations! You've earned the A Bunch of Lunch achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\Hail to the Chef Achievement",[[
description This guide will show you all the achievements you need to complete the Hail to the Chef Achievement.
condition end achieved(1563)
step
label	start
'Complete the Achievement Grand Master Cook |achieve 125
.'_
.'Click here to use our _Cooking Guide_ and level up your Cooking skill. |confirm |next "Profession Guides\\Cooking\\Cooking 1-600 Leveling Guide"
step
'Complete the Achievement The Cake Is Not A Lie |achieve 877
.'_
.' Click here to use our _The Cake Is Not A Lie_ Achievement Guide |confirm |next "Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\The Cake Is Not A Lie Achievement"
step
'Complete the Achievement Kickin' It Up a Notch |achieve 906
.'_
.' Click here to use our _Kickin' It Up a Notch_ guide Achievement Guide |confirm |next "Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\Kickin' It Up a Notch Achievement"
step
'Complete the Achievement The Northrend Gourmet |achieve 1779
.'_
.' Click here to use our _The Northrend Gourmet_ Achievement Guide |confirm |next "Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\The Northrend Gourmet Achievement"
step
'Complete the Achievement Second That Emotion |achieve 1780
.'_
.' Click here to use our _Second That Emotion_ Achievement Guide |confirm |next "Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\Second That Emotion Achievement"
step
'Complete the Achievement Critter Gitter |achieve 1781
.'_
.' Click here to use our _Critter Gitter_ Achievement Guide |confirm |next "Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\Critter Gitter Achievement"
step
'Complete the Achievement Our Daily Bread |achieve 1783
.'_
.' Click here to use our _Our Daily Bread_ Achievement Guide |confirm |next "Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\Our Daily Bread Achievement"
step
'Complete the Achievement Dinner Impossible |achieve 1785
.'_
.' Click here to use our _Dinner Impossible_ Achievement Guide |confirm |next "Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\Dinner Impossible Achievement"
step
'Complete the Achievement Sous Chef |achieve 1798
.'_
.' Click here to use our _Sous Chef_ Achievement Guide |confirm |next "Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\Iron Chef"
step
'Complete the Achievement Captain Rumsey's Lager |achieve 1801
.'_
.' Click here to use our _Captain Rumsey's Lager_ Achievement Guide |confirm |next "Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\Captain Rumsey's Lager Achievement"
step
'Complete the Achievement The Outland Gourmet |achieve 1800
.'_
.' Click here to use our _The Outland Gourmet_ Achievement Guide |confirm |next "Zygor's Alliance Achievements Guides\\Profession Achievements\\Cooking\\The Outland Gourmet Achievement"
step
'You still have some Achievements to earn before you complete the _Hail to the Chef_ Achievement. |only if not achieved(1563)
.'_ |only if not achieved(1563)
.' Click here to return to the beginning of this guide |confirm |only if not achieved(1563) |next start
'Congratulations! You have earned the Achievement _Hail to the Chef_! |achieve 1563 |only if achieved(1563)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Fishing\\Journeyman Fisherman",[[
description Obtain 150 skill points in fishing.
condition end achieved(126)
step
.' To get this, you simply need to achieve 150 fishing.  You can fish anywhere for this, but Stormwind is recommended for the easiest catches.
step
goto Stormwind City,54.8,69.6
.talk 5493
.' Learn the Apprentice Fishing skill |skillmax Fishing,75
step
goto Stormwind City,55.0,69.7
.talk 5494
.buy 1 Fishing Pole##6256
.buy 10 Shiny Bauble##6529
step
goto 54.6,69.0
.' Equip your Fishing Pole |use Fishing Pole##6256
.' Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529 |tip If your Shiny Bauble Fishing skill boost expires, you can buy more Shiny Baubles to help you fish.
.' Stand on the end of this wooden dock
.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
.' Get your Fishing skill to level 75 |skill Fishing,75
step
goto 55.0,69.6
.talk 5493
.' Learn the Journeyman Fishing skill |skillmax Fishing,150
step
goto Stormwind City,55.0,69.7
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529 |tip If your Shiny Bauble Fishing skill boost expires, you can buy more Baubles or Nightcrawlers to help you fish.
.' Stand on the end of this wooden dock
.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
.' Get your Fishing skill to level 150 |skill Fishing,150
step
.' Earn Journeyman Fisherman Achievement. |achieve 126
step
'Congratulations! You've earned the Journeyman Fisherman achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Fishing\\The Old Gnome and the Sea",[[
description Successfully fish from a school.
condition end achieved(153)
step
goto Redridge Mountains,27.6,48.7
.' Look for Sagefish Schools in the water.  Walk along the lake in Lakeshire until you find one if you're unable to see one at this spot.
.' It looks like a swarm of fish.
.' Use your fishing skill until your lure is inside of the school of fish, then catch one. |cast Fishing##7620
.' Earn The Old Gnome and the Sea Achievement. |achieve 153
step
'Congratulations! You've earned The Old Gnome and the Sea achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Fishing\\The Scavenger",[[
description Successfully fish in each of the junk nodes.
condition end achieved(1257)
step
goto Zangarmarsh 57.0,56.0
.' Look for Steam Pump Flotsam in the water around this area and fish from it |cast Fishing##7620
.' Fish from Steam Pump Flotsam |achieve 1257/1
step
goto Northern Stranglethorn 55.0,64.0
.' Look for Schooner Wreckage around this area |tip You may need to fish from other pools to get this to show up |cast Fishing##7620
.' Fish from Schooner Wreckage |achieve 1257/3
step
'Go to The Cape of Stranglethorn |goto The Cape of Stranglethorn 50,50 <500
step
goto 30.9,81.5
.' Look for Bloodsail Wreckage around this area |tip You may need to fish from other pools to get this to show up |cast Fishing##7620
.' Fish from Bloodsail Wreckage |achieve 1257/2
step
goto Tanaris 67.4,38.2
.' Look for Floating Wreckage around this area |tip You may have to fish from other pools to get this to show up |cast Fishing##7620
.' Fish from Floating Wreckage |achieve 1257/5
step
goto Feralas,63.1,51.5
.' Look for Waterlogged Wreckage around this area |tip You may have to fish from other pools to get this to show up |cast Fishing##7620
.' Fish from Waterlogged Wreckage |achieve 1257/4
step
.' Successfully fish in each of the junk nodes |achieve 1257
step
'Congratulations! You've earned The Scavenger achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Fishing\\The Fishing Diplomat",[[
description Fish something up in Orgrimmar and Stormwind.
condition end achieved(150)
step
goto Stormwind City 69.0,92.2
.' Use your fishing skill in the moat in front of Stormwind City |cast Fishing##7620
.' Fish in Stormwind City |achieve 150/2
step
goto Northern Barrens,70.2,4.4 |n
.' Cross the bridge over into Orgrimmar |goto Orgrimmar
step
goto Orgrimmar,24.8,62.8
.' Use your fishing skill in the pond |cast Fishing##7620
.' Fish in Orgrimmar |achieve 150/1
step
.' Earn The Fishing Diplomat. |achieve 150
step
'Congratulations! You've earned The Fishing Diplomat achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Fishing\\Mr. Pinchy's Magical Crawdad Box",[[
description Fish your way to Mr. Pinchy's Magical Crawdad Box.
condition end achieved(726)
step
goto Northern Stranglethorn,31.0,37.7
.' Use your fishing skill fish from Schooner Wreckage along The Savage Coast.  You may need to fish out the other schools of fish to get them to spawn. |cast Fishing##7620
.collect Weather-Beaten Journal##34109
.learn Find Fish##43308 |use Weather-Beaten Journal##34109
step
goto Terokkar Forest,65.0,76.8
.' Use your Find Fish ability to locate Highland Mixed Schools
.' Use your fishing skill to fish in the pond |cast Fishing##7620
step
goto Terokkar Forest,63.4,76.9
.' Fish around this large pool of water from Highland Mixed Schools.
.' Additional Pools can be found at Lake Ere'Noru, [60.6,59.9]
.' and Lake Jorune, [45.0,40.5]
.collect Magical Crawdad Box##27445
.' Earn the Mr. Pinchy's Magical Crawdad Box achievement. |achieve 726
step
.' Congratulations, you have earned the Mr. Pinchy's Magical Crawdad Box achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Profession Achievements\\Fishing\\One That Didn't Get Away",[[
description This guide will show you how to earn the achievement, One That Didn't Get Away.
condition end achieved(878)
step
goto Stormwind City,55.0,69.7
.talk 5494
.buy 1 Fishing Pole##6256
.buy 10 Shiny Bauble##6529
step
goto 54.6,69.0
.' Equip your Fishing Pole |use Fishing Pole##6256
.' Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529 |tip If your Shiny Bauble Fishing skill boost expires, you can buy more Shiny Baubles to help you fish.
.' Stand on the end of this wooden dock
.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
.' Catch a 32 Pound Catfish |achieve 878
step
'Congratulations! You have earned the achievement, _One That Didn't Get Away_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Fishing\\1000 Fish",[[
description Fish up 1000 items.
condition end achieved(1561)
achieveid 1560,1559,1558,1557,1556
step
goto Stormwind City,54.9,69.7
.talk 5494
.buy 1 Fishing Pole##6256
.buy 10 Shiny Bauble##6529
step
.' Equip your Fishing Pole |use Fishing Pole##6256
.' Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529 |tip If your Shiny Bauble Fishing skill boost expires, you can buy more Shiny Baubles to help you fish.
.' Stand on the end of this wooden dock
.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
.' Catch 1000 Fish. |achieve 1561/1
step
'Congratulations! You've earned the 1000 Fish achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Fishing\\Old Crafty",[[
description Fish up Old Crafty in Orgrimmar.
condition end achieved(1836)
step
.' In order to Earn this achievement, you will need to fish from any pool of water in Orgrimmar.
.' The higher level your fishing skill, the better.  You will catch less junk the higher you are, which gives you a higher chance to catch Old Crafty.
.' Click here when you're ready to proceed to the next step in the guide |confirm
step
goto Northern Barrens,70.2,4.4 |n
.' Cross the bridge over into Orgrimmar |goto Orgrimmar
step
goto Orgrimmar,59.3,39.9
.' Use your fishing ability in the stream of water. |cast Fishing##7620
.collect Old Crafty##34486
step
.' Earn the Old Crafty Achievement. |achieve 1836
step
'Congratulations! You've earned the Old Crafty achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Fishing\\Old Ironjaw",[[
description Fish up Old Ironjaw in Ironforge.
condition end achieved(1837)
step
.' In order to Earn this achievement, you will need to fish from any pool of water (or lava) in Ironforge.
.' The higher level your fishing skill, the better. You will catch less junk the higher you are, which gives you a higher chance to catch Old Ironjaw.
.' Click here when you're ready to proceed to the next step in the guide |confirm
step
goto Ironforge,47.6,14.2
.' Use your fishing ability in the pond. |cast Fishing##7620
.collect Old Ironjaw##34484
step
.' Earn the Old Ironjaw Achievement. |achieve 1837
step
'Congratulations! You've earned the Old Ironjaw achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Fishing\\The Lurker Above",[[
description Fish up The Lurker Below in Serpentshrine Cavern.
condition end achieved(144)
step
.' In order to earn this achievement, you will need to be in a raid group.
.' You will also need to be at least Level 70.
.' It would be best if you picked up Elixirs of Water Walking
.' You won't need a certain level of fishing, but the higher level you are, the higher chance you have of fishing up 'The Lurker Below'.
|confirm
step
goto Zangarmarsh,50.4,41.0 |n
.' Swim down underwater through the tube to the Coilfang Reservoir |goto 51.9,38.0 |c
step
goto Serpentshrine Cavern,13.5,59.6
.' Ride the elevator down
.' Click here once you're at the bottom and off of the elevator |confirm
step
goto Serpentshrine Cavern,19.6,68.5
.' Walk up the ramp and ride the elevator up.
.' Click here once you ride the elevator up. |confirm
step
goto Serpentshrine Cavern,22.7,72.8 |n
.' Use your water walking potion and jump into the water. |use Elixir of Water Walking##8827
.' If you jump into the water without water walking, fish will attack you and you will have to kill them before using your Elixir.
.' Walk over to the wooden circle with the Strange pool in the center |goto Serpentshrine Cavern,38.6,59.5 |c
step
.' Once you're there, use your fishing ability and make sure that your lure lands in the Strange Pool. |cast Fishing##7620
.' Earn The Lurker Above Achievement. |achieve 144
step
'Congratulations! You've earned The Lurker Above achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Fishing\\Old Man Barlowned",[[
description Complete each of Old Man Barlo's 5 fishing daily quests.
condition end achieved(905)
step
label "start"
.' In order the earn this achievement, you will need to have completed these 5 daily quests:
.' Crcolisks in the City |achieve 905/1
.' Bait Bandits |achieve 905/2
.' Felblood Fillet |achieve 905/3
.' The One That Got Away |achieve 905/4
.' Shrimpin' Ain't Easy |achieve 905/5
.' Click here to proceed |confirm
step
goto Terokkar Forest,38.7,12.8
.talk 25580
.' You will only be able to pick up 1 of 5 dailies per day.
.accept 11665 |or
.accept 11666 |or
.accept 11669 |or
.accept 11667 |or
.accept 11668 |or
step
goto Stormwind City,54.9,69.7
.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
..get Baby Crocolisk##34864 |q 11665/1
only if havequest(11665)
step
goto Terokkar Forest,51.8,37.2
.' Fish in the river here |cast Fishing##7620
..get Blackfin Darter##34865 |q 11666/1
only if havequest(11666)
step
goto Nagrand,37.4,47.1
.' Use your fishing ability to fish in the lake. |cast Fishing##7620
..get World's Largest Mudfish##34868 |q 11667/1
only if havequest(11667)
step
goto Zangarmarsh,77.9,79.7
.' Fish from the Lake here |cast Fishing##7620
.'Click the Bloated Barbed Gill Trout in your bags|use Bloated Barbed Gill Trout##35313
..get 10 Giant Freshwater Shrimp##34866 |q 11668/1
only if havequest(11668)
step
goto Shadowmoon Valley,18.9,22.2
.' Use your fishing ability in the green lava. |cast Fishing##7620
..get Monstrous Felblood Snapper |q 11669/1
only if havequest(11669)
step
goto Terokkar Forest,38.7,12.8
.talk 25580
.' You will only be able to pick up 1 of 5 dailies per day.
.turnin 11665 |or
.turnin 11666 |or
.turnin 11669 |or
.turnin 11667 |or
.turnin 11668 |or
step
.' Crocolisks in the City |achieve 905/1
.' Bait Bandits |achieve 905/2
.' Felblood Fillet |achieve 905/3
.' The One That Got Away |achieve 905/4
.' Shrimpin' Ain't Easy |achieve 905/5
|confirm
|next "start" |only if default
|next |only if achieved(905)
step
.' Earn the Old Man Barlowned Achievement. |achieve 905
step
'Congratulations! You've earned the Old Man Barlowned achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Fishing\\Outland Angler",[[
description Catch a fish in specific nodes.
condition end achieved(1225)
step
.' In order to earn this achievement, you will need to fish from 6 different pools of fish in the Outlands.
.' Click here to proceed. |confirm
step
goto Zangarmarsh,72.5,59.9
.' Use your fishing skill on Sporefish School's around Umberfen Lake |cast Fishing##7620
.' Fish from a Sporefish School |achieve 1225/6
step
goto Terokkar Forest,60.8,59.0 |n
.' You will need to fly to reach the Highland Mixed Schools.  There are two more spots you can check for them below:
.' The large Skettis Lake |goto 66.4,80.0 |n
.' Lake Jorune |goto 45.9,39.5 |n
.' Fish from a Highland Mixed School |achieve 1225/5
step
map Terokkar Forest
path follow loose;loop off;ants straight
path	 60.5,51.9	62.9,48.1	63.6,45.0
path	 60.0,36.5
.' Follow the stream until you find a School of Darfters or Brackish Mixed School in the river.
.' Use your fishing skill to fish from either Brackish Mixed or School of Darters
.' Fish from a School of Darters |achieve 1225/4
.' Fish from a Brackish Mixed School |achieve 1225/1
step
map Nagrand
path follow loose;loop off;ants straight
path	 47.2,44.4	48.7,45.3	51.1,43.2
path	 50.9,47.6	48.8,48.1	47.4,48.6
path	 46.5,47.6
.' Follow the stream until you find a Bluefish and a Mudfish School.
.' Use your fishing  skill to fish from either Bluefish and a Mudfish School |cast Fishing##7620
.' Fish from a Bluefish School |achieve 1225/2
.' Fish from a Mudfish School |achieve 1225/3
step
.' Earn the Outland Angler Achievement. |achieve 1225
step
'Congratulations! You've earned the Outland Angler achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Fishing\\Northrend Angler",[[
description Catch a fish in specific nodes.
condition end achieved(1517)
step
.' In order to earn this achievement, you will have to fish from 10 different schools of fish in Northrend.
.' Click here to proceed. |confirm
step
.' Borean Man O'War School |achieve 1517/1
.' Dragonfin Angelfish School |achieve 1517/3
.' Glacial Salmon School |achieve 1517/5
.' Imperial Manta Ray School |achieve 1517/7
.' Musselback Sculpin School |achieve 1517/9
.' Deep Sea Monsterbelly School |achieve 1517/2
.' Fangtooth Herring School |achieve 1517/4
.' Glassfin Minnow School |achieve 1517/6
.' Moonglow Cuttlefish School |achieve 1517/8
.' Neettlefish School |achieve 1517/10
.' Click here to proceed. |confirm
step
map Borean Tundra
path follow loose;loop off;ants straight
path	54.3,75.2	49.5,79.0	45.8,80.9
path	43.4,78.5	40.3,77.0
.' Follow the coast until you find and Imperial Manta Ray and a Borean Man O' War School.  You mayb need to fish out other schools in order to force new ones to spawn.
.' Fish from an Imperial Manta Ray School |achieve 1517/7 |cast Fishing##7620
.' Fish from a Borean Man O' War School |achieve 1517/1 |cast Fishing##7620
step
goto Borean Tundra,51.2,42.4
.' You will be able to find Musselback Sculpin Schools around Lake Kum'uya.
.' Fish from a Musselback Scuplin School |achieve 1517/9
step
goto Borean Tundra,82.7,59.5
.' Around the Glacier, you will find Schools of Moonglow Cuttlefish and Deep Sea Monsterbelly.
.' Fish from a Deep Sea Monsterbelly School |achieve 1517/2 |cast Fishing##7620
.' Fish from a Moonglow Cuttlefish School |achieve 1517/8 |cast Fishing##7620
step
goto Sholazar Basin,46.8,64.7
.' All around River's Heart, you will find schools of Nettlefish.
.' Fish from a Nettlefish School |achieve 1517/10 |cast Fishing##7620
step
goto Dragonblight,42.3,67.8
.' You can find Dragonfin Angelfish School all along Lake Indu'le.
.' Fish from a Dragonfin Angelfish School |achieve 1517/3 |cast Fishing##7620
step
goto Crystalsong Forest,49.0,54.1
.' Along the Twilight Rivulet you will find schools of Glassfin Minnow.
.' Fish from a Glassfin Minnow School |achieve 1517/6 |cast Fishing##7620
step
map Grizzly Hills
path follow loose;loop off;ants straight
path	26.4,64.9	28.6,60.8	29.5,55.8
.' You can find Schools of Glacial Salmon along this river.
.' Fish from a Glacial Salmon School |achieve 1517/5 |cast Fishing##7620
step
map Howling Fjord
path follow loose;loop off;ants straight
path	59.5,58.8	60.8,60.3	60.6,64.5
.' You can find Fangtooth Herring Schools along Daggercap Bay.
.' Fish from a Fangtooth Herring School |achieve 1517/4 |cast Fishing##7620
step
.' Earn the Northrend Angler Achievement. |achieve 1517 |cast Fishing##7620
step
'Congratulations! You've earned the Northrend Angler achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Fishing\\Chasing Marcia",[[
description Complete each of Marcia Chase's 5 fishing daily quests.
condition end achieved(3217)
daily
step
label "start"
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
step
goto Dalaran,36.6,37.3
.talk 28706
..turnin 13836
|next "start" |only if default
|next |only if achieved(905)
step
.' Earn the Chasing Marcia Achievement. |achieve 3217
step
'Congratulations! You've earned the Chasing Marcia achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Fishing\\Fish or Cut Bait: Darnassus",[[
description Complete each of the Darnassus fishing daily quests.
condition end achieved(5848)
step
label	start
.' In order to earn the achievement Fish or Cut Bait: Darnassus, you will need to complete 5 daily quests from the NPC Astaia.
.' You will only be able to accept 1 of the 5 quests per day.
.' Click here to proceed. |confirm
step
.' Below are the following quests you will have to complete in order to earn the achievement:
.' Happy as a Clam Digger |achieve 5847/1
.' Stocking Up |achieve 5847/2
.' The Sister's Pendant |achieve 5847/3
.' A Slippery Snack |achieve 5847/4
.' An Old Favorite |achieve 5847/5
.' Click here to proceed. |confirm
step
#include "A_Darnassus_Fishing_Dailies"
step
.' Achieve Happy as a Clam Digger |achieve 5848/1
.' Achieve Stocking Up |achieve 5848/2
.' Achieve The Sister's Pendant |achieve 5848/3
.' Achieve A Slippery Snack |achieve 5848/4
.' Achieve An Old Favorite |achieve 5848/5
|confirm
|next "start" |only if default
|next |only if achieved(5848)
step
.' Earn the Fish or Cut Bait: Darnassus Achievement |achieve 5848
step
'Congratulations! You've earned the Fish or Cut Bait: Darnassus achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Fishing\\Fish or Cut Bait: Ironforge",[[
description Complete each of the Ironforge fishing daily quests.
condition end achieved(5847)
step
label "start"
.' In order to earn the achievement Fish or Cut Bait: Ironforge, you will need to complete 5 daily quests from the NPC Grimnur Stonebrand.
.' You will only be able to accept 1 of the 5 quests per day.
|confirm
step
.' Below are the following quests you will have to complete in order to earn the achievement:
.' Cold Water Fishing |achieve 5847/1
.' One fer the Ages |achieve 5847/2
.' Fish fer Squirky |achieve 5847/3
.' Live Bait |achieve 5847/4
.' The Gnomish Bait-o-Matic |achieve 5847/5
.'_
|confirm always
step
#include "A_Ironforge_Fishing_Dailies"
step
.' Achieve Cold Water Fishing |achieve 5847/1
.' Achieve  One fer the Ages |achieve 5847/2
.' Achieve  Fish fer Squirky |achieve 5847/3
.' Achieve  Live Bait |achieve 5847/4
.' Achieve  The Gnomish Bait-o-Matic |achieve 5847/5
.'_
|confirm
|next "start" |only if default
|next |only if achieved(5847)
step
.' Earn the Fish or Cut Bait: Ironforge Achievement |achieve 5847
step
'Congratulations! You've earned the Fish or Cut Bait: Ironforge achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Fishing\\Fish or Cut Bait: Stormwind",[[
description Complete each of the Stormwind fishing daily quests.
condition end achieved(5476)
daily
step
label	start
.' In order to earn the achievement Fish or Cut Bait: Stormwind, you will need to complete 5 daily quests from the NPC Catherine Leland.
.' You will only be able to accept 1 of the 5 quests per day.
.' Click here to proceed. |confirm
step
.' Below are the following quests you will have to complete in order to earn the achievement:
.' Achieve Hitting a Walleye |achieve 5476/1
.' Achieve Diggin' For Worms |achieve 5476/2
.' Achieve Rock Lobster |achieve 5476/3
.' Achieve Big Gulp |achieve 5476/4
.' Achieve Thunder Falls |achieve 5476/5
.'_
|confirm
step
#include "A_Stormwind_Fishing_Dailies"
step
.' Achieve Hitting a Walleye |achieve 5476/1
.' Achieve Diggin' For Worms |achieve 5476/2
.' Achieve Rock Lobster |achieve 5476/3
.' Achieve Big Gulp |achieve 5476/4
.' Achieve Thunder Falls |achieve 5476/5
.'_
|confirm
|next "start" |only if default
|next |only if achieved(5846)
step
.' Earn the Fish or Cut Bait: Stormwind Achievement |achieve 5476
step
'Congratulations! You've earned the Fish or Cut Bait: Stormwind achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Fishing\\The Limnologist and The Oceanographer",[[
description Catch 43 different freshwater fish and catch 31 different saltwater fish.
achieveid 5478,5479
condition end achieved(5478) and achieved (5479)
step
.' The achievement Limnologist and Oceanographer requires that you fish 74 different types of fish from all over the World of Warcraft.
.' Click here to begin! |confirm
step
goto Loch Modan,50.9,54.2
.' Catch a Raw Sagefish. |achieve 5478/34
.' Catch a Raw Loch Frenzy. |achieve 5478/27
.' Catch a Raw Longjaw Mud Snapper. |achieve 5478/28
.' Catch a Raw Brilliant Smallfish. |achieve 5478/7
step
goto Twilight Highlands,73.2,76.8
.' Use your fishing skill to fish along the coast. |cast Fishing##7620
.' Catch a Murglesnout. |achieve 5479/18
.' Catch a Deapsea Sagefish. |achieve 5479/9
.' Catch an Algaefin Rockfish. |achieve 5479/2
step
goto 32.8,65.0
.' Use your fishing skill at Loch Verrall. |cast Fishing##7620
.' Catch a Highland Guppy. |achieve 5478/23
.' Catch a Striped Lurker. |achieve 5478/41
.' Catch a Sharptooth. |achieve 5478/36
step
goto Arathi Highlands,64.4,67.4
.' Use your fishing ability to fish from the lake at Witherbark Village. |cast Fishing##7620
.' Catch a Raw Bristle Whisker Catfish. |achieve 5478/8
.' Catch a Raw Greater Sagefish. |achieve 5478/22
step
goto 22.8,86.6
.' Use your fishing skill to fish in the water here. |cast Fishing##7620
.' Catch an Oily Blackmouth. |achieve 5479/19
.' Catch a Raw Rainbow Fin Albacore. |achieve 5479/21
step
goto Tirisfal Glades,67.1,50.9
.' Use your fishing skill in Brightwater Lake to fish up a Sickly Looking Fish. |cast Fishing##7620
.' Catch a Sickly Looking Fish. |achieve 5478/38
step
goto 71.7,25.4
.' Fish off of the coast. |cast Fishing##7620
.' Catch a Raw Slitherskin Mackerel. |achieve 5479/25
step
goto The Hinterlands,29.3,47.7
.' Use your fishing skill to fish at the lake here. |cast Fishing##7620
.' Catch a Raw Mithril Head Trout. |achieve 5478/29
step
goto 79.2,63.5
.' Use your fishing skill along the coast. |cast Fishing##7620
.' Catch a Firefin Snapper. |achieve 5479/11
.' Catch a Raw Rockscale Cod. |achieve 5479/24
.' Catch a Raw Spotted Yellowtail. |achieve 5479/26 |opt
step
goto Eastern Plaguelands,96.5,54.8
.' Use your fishing skill
.' Catch a Big-Mouth Clam. |achieve 5479/3
.' Catch a Stonescale Eel. |achieve 5479/27
.' Catch a Raw Glossy Mightfish. |achieve 5479/13
.' Catch a Raw Spotted Yellowtail. |achieve 5479/26
step
goto Isle of Quel'Danas,47.7,21.9
.' Use your fishing skill to fish. |cast fishing##7620
.' Catch a Giant Sunfish. |achieve 5479/12
.' Catch a Jaggal Clam. |achieve 5479/15
step
goto Deadwind Pass,44.3,33.3 |n
.' Go down the path to the left and follow it until you reach a pool of water.
.' Use your fishing skill to fish in this small pond. |cast fishing##7620
.' Catch a Crescent-Tail Skullfish. |achieve 5478/9
.' Catch a Bloodfin Catfish. |achieve 5478/5
.' Catch a Barbed Gill Trout. |achieve 5478/2
step
goto Blasted Lands,70.0,26.4
.' Use your fishing skill to fish along the coast. |cast Fishing##7620
.' Catch a Large Raw Mightfish. |achieve 5479/16
.' Catch a Darkclaw Lobster. |achieve 5479/5
step
.' There are two fish, the Winter Squid and the Summer Bass that con only be caught during certain seasons.
.' During Autumn and Spring, you will be able to catch both, but at low rates.
.' You can fish up both in Blasted Land. |cast Fishing##7620
.' Catch a Raw Summer Bass. |achieve 5479/28
.' Catch a Winter Squid. |achieve 5479/31
.' If you're in an off season, and unable to collect one of the two fish above, click here to continue. |confirm
step
goto Blasted Lands,43.1,83.8
.' Use your fishing skills to fish in the river stream. |cast Fishing##7620
.' Catch a Raw Whitescale Salmon. |achieve 5479/30
step
goto Shadowmoon Valley,39.8,60.0
.' Use your fishing skill to fish in the lava. |cast Fishing##7620
.' Catch a Felblood Snapper. |achieve 5478/13
step
goto Terokkar Forest,63.2,73.5
.' You will need to fish from Highland Mixed School all around the Skettis Lake. |cast Fishing##7620
.' Catch a Furious Crawdad. |achieve 5478/16
.' Catch a Barbed Gill Trout. |achieve 5478/2
.' Catch a Golden Darter. |achieve 5478/20
step
goto Nagrand,33.8,47.0
.' Use your fishing skill at Lake Sunspring. |cast Fishing##7620
.' Catch a Figluster's Mudfish. |achieve 5478/14
.' Catch an Icefin Bluefish. |achieve 5478/25
step
goto Zangarmarsh,60.3,44.6
.' Use your fishing skill at Serpent Lake. |cast Fishing##7620
.' Catch a Zangarian Sporefish. |achieve 5478/42
.' At this point, if you haven't caught a Huge Spotted Feltail or a Goldenscale Vendorfish, now will be the time for that.  Navigate around Serpent Lake and fish from schools as well as open water.  Schools have a higher chance for a Huge Spotted Feltail.
.' Catch a Huge Spotted Feltail. |achieve 5478/24
.' Catch a Goldenscale Vendorfish. |achieve 5478/21
.' Catch a Spotted Feltail. |achieve 5478/40
.' It's good to keep in mind that these are both hard to catch.
step
goto Darkshore,48.6,18.0
.' Use your fishing skill to fish along Mist's Edge. |cast Fishing##7620
.' Catch Darkshore Grouper. |achieve 5479/6
step
.' Use your fishing skills at Lake Elune'ara.
.' Catch a Nightfin Snapper.  They can only be caught at night. |achieve 5478/33
.' Catch a Sunscale Salmon. They canonly be caught during the day. |achieve 5479/29
.' Catch a Raw Redgill. |achieve 5479/22
step
goto Mount Hyjal,60.6,23.7
.' Catch a Striped Lurker. |achieve 5478/41
.' Catch a Mountain Trout. |achieve 5478/30
step
goto Northern Barrens,39.0,74.0
.' Use your fishing skill to fish from Schools of Deviate fish. |cast Fishing##7620
.' Catch a Deviate Fish. |achieve 5478/10
step
goto Uldum,54.4,37.7
.' Use your fishing skill in the water here. |cast Fishing##7620
.' Catch a Blackbelly Mudfish. |achieve 5478/4
.' Catch a Lavascale Catfish. |achieve 5478/26
step
goto 60.5,85.9
.' Fish along the coast from Fathom Eel Swarms. Some searching may be required.
.' Catch a Fathom Eel. |achieve 5479/10
step
goto Deepholm,31.4,31.2
.' Use your fishing skill in the pools of water. |cast Fishing##7620
.' Catch an Albino Cavefish. |achieve 5478/1
step
goto Borean Tundra,54.5,75.2
.' Use your fishing skill to fish along the coast. |cast Fishing##7620
.' Catch an Imperial Manta Ray. |achieve 5479/14
.' Catch a Borean Man O' War. |achieve 5479/4
.' Catch a Rockfin Grouper. |achieve 5479/23
step
goto Borean Tundra,51.5,47.9
.' Use your fishing skill to fish from a Musselback Sculpin School and in the water. |cast Fishing##7620
.' Catch a Musselback Sculpin. |achieve 5478/31
.' Catch a Dragonfin Angelfish. |achieve 5478/11
.' Catch a Bonescale Snapper. |achieve 5478/6
step
goto Borean Tundra,41.3,16.9
.from Winterfin Warrior##25217+,Winterfin Shorestriker##25215+,Winterfin Oracle##25216+
.' Get a Darkwater Clam. |achieve 5479/7
step
goto Borean Tundra,82.7,59.5
.' Use your fishing ability on Moonglow Cuttlefish and Deep Sea Monsterbelly schools in this area. |cast Fishing##7620
.' Catch a Moonglow Cuttlefish. |achieve 5479/17
.' Catch a Deep Sea Monsterbelly. |achieve 5479/8
step
goto Sholazar Basin,49.6,62.1
.' Use your fishing ability to fish at River's Heart. |cast Fishing##7620
.' Catch a Nettlefish. |achieve 5478/32
.' Catch a Barrelhead Goby. |achieve 5478/3
step
goto Wintergrasp,77.6,39.8
.' Use your fishing ability to fish from Glacial Falls.
.' Catch a Giant Darkwater Clam. |achieve 5478/17
.' Catch a Glacial Salmon. |achieve 5478/18
step
goto Crystalsong Forest,48.6,53.9
.' Use your fishing ability in the lake. |cast Fishing##7620
.' Catch a Glassfin Minnow. |achieve 5478/19
step
goto Dalaran,36.3,45.5 |n
.' Go down into the sewers. |goto 34.2,43.4 |noway |c
step
goto 43.9,66.8
.' Use you fishing at the docks here. |cast Fishing##7620
.' Catch a Sewer Carp. |achieve 5478/35
step
goto 33.8,43.0 |n
.' Go up the ramp out of the sewers. |goto Dalaran,36.3,45.5 |noway|c
step
goto Dalaran,52.7,66.8
.' Use your fishing skill in the fountain. |cast Fishing##7620
.' Catch a Fountain Goldfish. |achieve 5478/15
step
goto 64.3,66.1
.' Use your fishing skill in the water around Violet Hold. |cast Fishing##7620
.' Catch a Slippery Eel. |achieve 5478/39
.' Catch a Shimmering Minnow. |achieve 5478/37
step
goto Howling Fjord,59.8,59.1
.' Fish from a Fangtooth Herring School. |cast Fishing##7620
.' Catch a Fangtooth Herring. |achieve 5478/12
step
.' Earn The Limnologist Achievement. |achieve 5478
.' Earn The Oceanographer achievement. |achieve 5479
step
.' Congratulations, you have earned The Limnologist and Oceanographer achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Fishing\\Fish Don't Leave Footprints",[[
description Learn the ability to find fish.
condition end achieved(2096)
step
goto Northern Stranglethorn,31.0,37.7
.' Use your fishing skill fish from Schooner Wreckage along The Savage Coast.  You may need to fish out the other schools of fish to get them to spawn. |cast Fishing##7620
.collect Weather-Beaten Journal##34109
.' Use the Weather-Beaten Journal. |use Weather-Beaten Jounral##34109
.' Earn the Fish Don't Leave Footprints achievement. |achieve 1243
step
.' Congratulations, you have earned the Fish Don't Leave Footprints achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Fishing\\The Coin Master",[[
description Complete the coin fishing achievements.
condition end achieved(1243)
achieveid 2094,2095,1957
step
.' This guide will help you earn the achievements _A Penny For Your Thoughts_, _Silver in the City_, _There's Gold In That There Fountain_, and finally, _The Coin Master_.
.' Click here to proceed. |confirm
step
.' Here is your current progression on The Coin Master.
.' A Penny For Your Thoughts. |achieve 2096/1
.' Silver in the City. |achieve 2096/2
.' There's a Gold In That There Fountain. |achieve 2096/3
.' Click here to proceed. |confirm
step
label	hub
goto Dalaran,52.6,66.5
.' This fountain is where you will be fishing from to earn these achievements. Use your fishing skills to fish up Copper, Silver and Gold Coins. |cast Fishing##7620
.' Earn the A penny For Your Thoughts achievement. |achieve 2096/1
.' Click here for a more detailed look of this achievement |confirm |next penny
.'_
.' Earn the Silver in the City achievement. |achieve 2096/2
.' Click here for a more detailed look of this achievement |confirm |next silver
.'_
.' Earn the There's Gold In That There Fountain achievement. |achieve 2096/3
.' Click here for a more detailed look of this achievement |confirm |next gold
.' This achievement takes a lot of time, so try to be patient.
step
.' Earn the A penny For Your Thoughts Achiement. |achieve 2094
.' Earn the Silver in the City achievement. |achieve 2095
.' Earn the There's Gold In That There Fountain achievement. |achieve 1957
.' Earn The Coin Master achievement. |achieve 2096
|next congrats
step
label	penny
goto Dalaran,52.6,66.5
'You will need to fish up each one of the coins listed below to complete this acheivement:
.' Fish up: Alonsus Faol's Copper Coin |achieve 2094/1
.' Fish up: Attumen's Copper Coin |achieve 2094/3
.' Fish up: Dornaa's Shiny Copper Coin |achieve 2094/5
.' Fish up: Elling Trias' Copper Coin |achieve 2094/7
.' Fish up: Genn's Copper Coin |achieve 2094/9
.' Fish up: Krasus' Copper Coin |achieve 2094/11
.' Fish up: Landro Longshot's Copper Coin |achieve 2094/13
.' Fish up: Murky's Copper Coin |achieve 2094/15
.' Fish up: Private Marcus Jonathan's Copper Coin |achieve 2094/17
.' Fish up: Squire Rowe's Copper Coin |achieve 2094/19
.' Fish up: Vareesa's Copper Coin |achieve 2094/21
.' Fish up: Ansirem's Copper Coin |achieve 2094/2
.' Fish up: Danath's Copper Coin |achieve 2094/4
.' Fish up: Eitrigg's Copper Coin |achieve 2094/6
.' Fish up: Falstad Wildhammer's Copper Coin |achieve 2094/7
.' Fish up: Inigo's Copper Coin |achieve 2094/10
.' Fish up: Kryll's Copper Coin |achieve 2094/12
.' Fish up: Molok's Copper Coin |achieve 2094/14
.' Fish up: Princess Calia Menethil's Copper Coin |achieve 2094/16
.' Fish up: Salandria's Shiny Copper Coin |achieve 2094/18
.' Fish up: Stalvan's Copper Coin |achieve 2094/20
.' Fish up: Vargoth's Copper Coin |achieve 2094/22
.'_
.' Click here to return to the Achievement List |confirm |next hub
step
label	silver
goto Dalaran,52.6,66.5
.' Fish up: Aegwynn's Silver Coin |achieve 2095/1
.' Fish up: Alleria's Silver Coin |achieve 2095/2
.' Fish up: Antonidas' Silver Coin |achieve 2095/3
.' Fish up: Arcanist Doan's Silver Coin |achieve 2095/4
.' Fish up: Fandral Staghelm's Silver Coin |achieve 2095/5
.' Fish up: High Tinker Mekkatorque's Silver Coin |achieve 2095/6
.' Fish up: Khadgar's Silver Coin |achieve 2095/7
.' Fish up: King Anasterian Sunstrider's Silver Coin |achieve 2095/7
.' Fish up: King Terenas Menethil's Silver Coin |achieve 2095/8
.' Fish up: King Varian Wrynn's Silver Coin |achieve 2095/9
.' Fish up: Maiev Shadowsong's Silver Coin |achieve 2095/10
.' Fish up: Medivh's Silver Coin |achieve 2095/11
.' Fish up: Muradin Bronzebeard's Silver Coin |achieve 2095/12
.' Fish up: Prince Magni Bronzebeard's Silver Coin |achieve 2095/13
.' Fish up: A Peasant's Silver Coin |achieve 2095/14
.'_
.' Click here to return to the Achievement List |confirm |next hub
step
label	gold
goto Dalaran,52.6,66.5
.' Fish up: Anduin Wrynn's Gold Coin |achieve 1957/1
.' Fish up: Archimonde's Gold Coin |achieve 1957/2
.' Fish up: Arthas' Gold Coin |achieve 1957/3
.' Fish up: Arugal's Gold Coin |achieve 1957/4
.' Fish up: Brann Bronzebeard's Gold Coin |achieve 1957/5
.' Fish up: Chromie's Gold Coin |achieve 1957/6
.' Fish up: Kel'Thuzad's Gold Coin |achieve 1957/7
.' Fish up: Lady Jaina Proudmoore's Gold Coin |achieve 1957/8
.' Fish up: Lady Katrana Prestor's Gold Coin |achieve 1957/9
.' Fish up: Prince Kael'thas Sunstrider's Gold Coin |achieve 1957/10
.' Fish up: Sylvanas Windrunner's Gold Coin |achieve 1957/11
.' Fish up: Teron's Gold Coin |achieve 1957/12
.' Fish up: Thrall's Gold Coin |achieve 1957/13
.' Fish up: Tirion Fordring's Gold Coin |achieve 1957/14
.' Fish up: Uther Lightbringer's Gold Coin |achieve 1957/15
.'_
.' Click here to return to the Achievement List |confirm |next hub
step
label	congrats
.' Congratulation, you have earned The Coin Master achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Fishing\\I Smell A Giant Rat",[[
description Fish up the Giant Sewer Rat from The Underbelly in Dalaran.
condition end achieved(1958)
step
goto Dalaran,59.7,47.3 |n
.' Go down the ramp into Dalaran Sewers. |goto Dalaran,62.7,46.8 |noway|c
step
goto Dalaran,44.1,66.4
.' Use your fishing skill to fish from the dock. |cast Fishing##7620
.' Catch a Giant Sewer Rat.
.get Giant Sewer Rat##43698 |n
.' Use the Giant Sewer Rat. |use Giant Sewer Rat##43698
.' Earn I Smell A Giant Rat. |achieve 1958
step
.' Congratulations, you have earned the I Smell A Giant Rat achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Fishing\\Turtles All the Way Down",[[
description Fish up a Sea Turtle mount from any fishing pool in Deepholm, Mount Hyjal, Twilight Highlands, Uldum, or Northrend.
condition end achieved(3218)
step
.' In order to earn this achievement, you will need to fish from any school of fish within a Northrend or Cataclysm Zone.
.' Click here to proceed. |confirm
step
goto Crystalsong Forest,48.7,54.0
.' Fish from school of fish along the river here. |cast Fishing##7620
.' You will only be able to catch the sea turtle from fish schools.
.collect Sea Turtle##46109
.' Use the Sea Turtle. |use Sea Turtle##46109
.' Earn the Turtles All the Way Down achievement. |achieve 3218
step
.' Congratulations, you have earned the Turtles All the Way Down achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\Fishing\\Accomplished Angler",[[
description Complete fishing achievements.
condition end achieved(1516)
step
.' This achievement is earned once you have completed a majority of the Fishing achievements.
.' Once you complete this, you will have earn the title "Salty".
.' Click here to proceed. |confirm
step
goto Stormwind City,54.9,69.7
.talk 5494
.buy 1 Fishing Pole##6256
.buy 10 Shiny Bauble##6529
step
.' Equip your Fishing Pole |use Fishing Pole##6256
.' Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529 |tip If your Shiny Bauble Fishing skill boost expires, you can buy more Shiny Baubles to help you fish.
.' Stand on the end of this wooden dock
.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
.' Catch 1000 Fish. |achieve 1561/1
.' Catch a 32 Pound Catfish |achieve 878
#include "A_Fish_Don't_Leave_Footprints"
#include "A_Old_Gnome_and_the_Sea"
#include "A_The_Scavenger"
#include "A_The_Fishing_Diplomat"
#include "A_Old_Man_Barlowned"
#include "A_Outland_Angler"
#include "A_Mr._Pinchy's_Magical_Crawdad_Box"
#include "A_The_Lurker_Above"
#include "A_The_Coin_Master"
#include "A_Master_Angler_of_Azeroth"
#include "A_Master_Angler_of_Northrend"
step
'Congratulations! You've earned the _Accomplished Angler_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\First Aid\\Journeyman Medic",[[
description This guide will tell you how to
description earn the achievment Journeyman Medic
condition end achieved(131)
step
'Proceeding to proper section |next |only if default
'Proceeding to proper section |next end |only if achieved(131)
step
'You can use our First Aid guide to earn the achievement Journeyman Medic
.' Click here to use the First Aid Guide |confirm |next "Profession Guides\\First Aid\\First Aid 1-600 Leveling Guide"
step
label	end
'Congratulations! You have earned the Achievement _Journeyman Medic_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\First Aid\\Expert Medic",[[
description This guide will tell you how to
description earn the achievment Journeyman Medic
condition end achieved(132)
step
'Proceeding to proper section |next |only if default
'Proceeding to proper section |next end |only if achieved(132)
step
'You can use our First Aid guide to earn the achievement Expert Medic
.' Click here to use the First Aid Guide |confirm |next "Profession Guides\\First Aid\\First Aid 1-600 Leveling Guide"
step
label	end
'Congratulations! You have earned the Achievement Expert Medic_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\First Aid\\Artisan Medic",[[
description This guide will tell you how to
description earn the achievment Journeyman Medic
condition end achieved(133)
step
'Proceeding to proper section |next |only if default
'Proceeding to proper section |next end |only if achieved(133)
step
'You can use our First Aid guide to earn the achievement Artisan Medic
.' Click here to use the First Aid Guide |confirm |next "Profession Guides\\First Aid\\First Aid 1-600 Leveling Guide"
step
label	end
'Congratulations! You have earned the Achievement Artisan Medic_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\First Aid\\Master Medic",[[
description This guide will tell you how to
description earn the achievment Journeyman Medic
condition end achieved(134)
step
'Proceeding to proper section |next |only if default
'Proceeding to proper section |next end |only if achieved(134)
step
'You can use our First Aid guide to earn the achievement Master Medic
.' Click here to use the First Aid Guide |confirm |next "Profession Guides\\First Aid\\First Aid 1-600 Leveling Guide"
step
label	end
'Congratulations! You have earned the Achievement Master Medic_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\First Aid\\Grand Master Medic",[[
description This guide will tell you how to
description earn the achievment Journeyman Medic
condition end achieved(135)
step
'Proceeding to proper section |next |only if default
'Proceeding to proper section |next end |only if achieved(135)
step
'You can use our First Aid guide to earn the achievement Grand Master Medic
.' Click here to use the First Aid Guide |confirm |next "Profession Guides\\First Aid\\First Aid 1-600 Leveling Guide"
step
label	end
'Congratulations! You have earned the Achievement Grand Master Medic_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\First Aid\\Illustrious Grand Master Medic",[[
description This guide will tell you how to
description earn the achievment Journeyman Medic
condition end achieved(4918)
step
'Proceeding to proper section |next |only if default
'Proceeding to proper section |next end |only if achieved(4918)
step
'You can use our First Aid guide to earn the achievement Illustrious Grand Master Medic
.' Click here to use the First Aid Guide |confirm |next "Profession Guides\\First Aid\\First Aid 1-600 Leveling Guide"
step
label	end
'Congratulations! You have earned the Achievement Illustrious Grand Master Medic_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\First Aid\\Zen Master Medic",[[
description This guide will tell you how to
description earn the achievment Journeyman Medic
condition end achieved(6838)
step
'Proceeding to proper section |next |only if default
'Proceeding to proper section |next end |only if achieved(6838)
step
'You can use our First Aid guide to earn the achievement Zen Master Medic
.' Click here to use the First Aid Guide |confirm |next "Profession Guides\\First Aid\\First Aid 1-600 Leveling Guide"
step
label	end
'Congratulations! You have earned the Achievement Zen Master Medic_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\First Aid\\Stocking Up",[[
condition end achieved(137)
step
title + First Aid 350-450
label "aid_350-450"
#include "trainer_FirstAid"
.skillmax First Aid,450 |tip You must be at least level 65.
.learn Heavy Frostweave Bandage##45546
step
label	create
#include "auctioneer"
.buy Frostweave Cloth##33470 |n
.' You need _{_G.ceil(_G.max(0, (1000-itemcount(33470))))}_ Frostweave Cloth to make 500 Bandages.
.create 500 Heavy Frostweave Bandage##45546,First Aid,500 total |n
.' Create a total of 500 Heavy Frostweave Bandages |achieve 137/1 |next end
.' Click here to farm these instead of buying them. |confirm |next farm
step
label	farm
goto Icecrown,61.8,20.8
.from Dark Ritualist##34734+,Dark Zealot##34728+
.collect Frostweave Cloth##33470 |n
|confirm |next create
step
'Congratulations! You have earned the Achievement _Stocking Up_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\First Aid\\Preparing for Disaster",[[
condition end achieved(5480)
step
label "aid_350-450"
#include "trainer_FirstAid"
.skillmax First Aid,525 |tip You must be at least level 65.
.learn Dense Embersilk Bandage##88893
step
label	create
#include "auctioneer"
.buy Embersilk Cloth##53010 |n
.create 500 Dense Embersilk Bandage##88893,First Aid,500 total |n
.' Create a total of 500 Dense Embersilk Bandages |achieve 5480/1 |next end
.' Click here to farm these instead of buying them. |confirm |next farm
step
label	farm
goto Mount Hyjal,35.0,24.0
.from Twilight Augur##40713+, Twilight Retainer##40767+
.collect 75 Embersilk Cloth##53010
|confirm |next create
step
'Congratulations! You have earned the Achievement _Stocking Up_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Profession Achievements\\First Aid\\Ultimate Triage",[[
condition end achieved(141)
step
.' For this Achievement, you will need to _bandage_ a player who is _at 5% health_.
.' You must use a Bandage that is a Heavy Frostweave or above in level.
|confirm
step
'You will first need to find someone who is at _5% health_.
.' You can duel someone, or have them use spells or even just go into a Battleground to do this.
.'_
.' Use Heavy Frostweave Bandage |use Heavy Frostweave Bandage##34722
.' Use Embersik Bandage |use Embersilk Bandage##53049
.' Use Dense Embersilk |use Dense Embersilk##53050
.' Use Heavy Embersilk Bandage |use Heavy Embersilk Bandage##53050
.' Use Field Bandage: Dense Embersilk |use Field Bandage: Dense Embersilk##53051
.' Use Windwool Bandage |use Windwool Bandage##72985
.' Use Heavy Windwool Bandage _Rank 1_ |use Heavy Windwool Bandage##72986
.' Use Heavy Windwool Bandage _Rank 2_ |use Heavy Windwool Bandage##82830
.'_
.' Earn the Achievement: _Ultimate Triage_. |achieve 141
]])
