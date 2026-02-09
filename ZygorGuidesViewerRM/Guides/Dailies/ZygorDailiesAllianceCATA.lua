local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("DailiesACATA") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Main Cities\\Cooking Dailies",[[
description Walks you through completing the
description Cooking daily quests in Stormwind, Ironforge and Darnassus
description
description You must be at least level 10 to
description complete the quests in this guide.
author support@zygorguides.com
daily
step
label	menu
.' Click here to use the _Stormwind_ daily guide. |confirm |next sw_dailies
.'_
.' Click here to use the _Ironforge_ daily guide. |confirm |next if_dailies
.'_
.' Click here to use the _Darnassus_ daily guide. |confirm |next darn_dailies
step
label	sw_dailies
'Proceeding to proper section |next
step
#include "A_Stormwind_Cooking_Dailies"
step
'You have reached the end of the dailies for today.
.' Click here to go back to the beginning of the Dailies Menu. |confirm |next menu
step
label	if_dailies
'Proceeding to proper section next |next
step
#include "A_Ironforge_Cooking_Dailies"
step
'You have reached the end of the dailies for today.
.' Click here to go back to the beginning of the Dailies Menu. |confirm |next menu
step
label	darn_dailies
'Proceeding to proper section |next
step
#include "A_Darnassus_Cooking_Dailies"
step
'You have reached the end of the dailies for today.
.' Click here to go back to the beginning of the Dailies Menu. |confirm |next menu
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Stormwind City\\Fishing Dailies",[[
description Walks you through completing the Fishing daily quests in Stormwind City.
description
description You must be at least level 10 to complete the quests in this guide.
author support@zygorguides.com
step
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
.collect 1 Overgrown Earthworm##58788 |q 26420 |n
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
goto Elwynn Forest 25.7,59.3
.' Fish in the lake in this spot
.get 4 Violet Perch |q 26536/1
step
goto Stormwind City 55.0,69.7
.talk 5494
..' You will only be able to complete 1 of the following quests per day
..turnin 26488
..turnin 26420
..turnin 26414
..turnin 26442
..turnin 26536
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Stormwind City\\Jewelcrafting Dailies",[[
description Walks you through completing the Jewelcrafting daily quests in Stormwind City.
author support@zygorguides.com
daily
step
goto Stormwind City,63.8,61.5
.talk 50480
.' You will only be able to complete 1 of the following quests per day
..accept 25154 |or
..accept 25156 |or |tip This quest requires you to be at least level 80.
..accept 25105 |or
..accept 25155 |or
..accept 25157 |or
step
'Buy 3 Nightstones from the Stormwind City Auction House:
.collect 3 Nightstone##52180 |n |tip You can also try to mine these from any vein type in level 80-85 zones.
.' Use your Jewelcrafting skill to cut the Nightstones
.' Cut 3 Timeless Nightstones |q 25154/1
.get 3 Timeless Nightstone |q 25154/2
.' If you are unable to cut Timeless Nightstones, you can learn from Theresa Denman at [Stormwind City 63.5,61.8]
step
'Buy 3 Zephyrite from the Stormwind City Auction House:
.collect 3 Zephyrite##52178 |n |tip You can also try to mine these from any vein type in level 80-85 zones.
.' Use your Jewelcrafting skill to cut the Zephyrite
.' Cut 3 Solid Zephyrite |q 25105/1
.get 3 Solid Zephyrite |q 25105/2
.' If you are unable to cut Solid Zephyrite, you can learn from Theresa Denman at [Stormwind City 63.5,61.8]
step
'Buy 3 Jasper from the Stormwind City Auction House:
.collect 3 Jasper##52182 |n |tip You can also try to mine these from any vein type in level 80-85 zones.
.' Use your Jewelcrafting skill to cut the Jasper
.' Cut 3 Jagged Jasper |q 25155/1
.get 3 Jagged Jasper |q 25155/2
.' If you are unable to cut Jagged Jasper, you can learn from Theresa Denman at [Stormwind City 63.5,61.8]
step
'Anywhere in Stormwind City:
.' Use your Stardust No. 2 on any Humanoid |use Stardust No. 2##52507 |tip The Humanoids can be NPCs or players, it doesn't matter.
.' Perform 10 Tests of Stardust No. 2 |q 25157/1
step
goto Mount Hyjal,64.7,22.5
.from Scalding Rock Elemental##40229+
.get 10 Elemental Goo |q 25156/1 |tip This quest requires you to be at least level 80.
step
goto Stormwind City,63.8,61.5
.talk 50480
.' You will only be able to complete 1 of the following quests per day
..turnin 25154
..turnin 25156
..turnin 25105
..turnin 25155
..turnin 25157
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Borean Tundra\\Coldarra Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests in the Coldarra region of Borean Tundra.
step
'Routing to proper section |next |only if not completedq(13413)
'Routing to proper section |next "dailies" |only if completedq(13413)
step
goto Borean Tundra,33.3,34.5
.talk 26117
..accept 11918
step
goto 35,28
.kill 10 Coldarra Spellweavers |q 11918/1
step
goto 33.3,34.5
.talk 26117
..turnin 11918
..accept 11936
step
'As you do the following steps:
.kill Coldarra Wyrmkin|n
.collect 5 Frozen Axe##35586|q 11936
|confirm
step
goto 27.8,24.2
.click Blue Dragon Egg##27743 |tip They look like big eggs with blue crystals on them on the ground.
.' Destroy 5 Dragon Eggs|q 11936/1
step
goto 33.3,34.5
.talk 26117
..turnin 11936
..accept 11919
step
goto 24.6,27.1|n
.' Use your Raelorasz's Spear on a Nexus Drake Hatchling|use Raelorasz's Spear##35506|tip They are flying above you in the sky.
.' Do not kill it, let it hit you until it becomes friendly|havebuff INV_Misc_Head_Dragon_Blue |q 11919
step
goto 33.3,34.5
.' Stand here until it says Captured Nexus Drake|q 11940/1
.talk 26117
..turnin 11919
step
goto 33.5,34.4
.talk 26110
..accept 13412 |tip You must be at least level 80 to be able to accept this quest.
step
goto 29.5,24.8
.talk 32548
..turnin 13412
..accept 13413
step
.' Tell Corastrasza you have the courage to face Malygos drakes
.' She will give you a Wyrmrest Skytalon to ride
.' Before engaging enemies, stack Revivify on yourself 5 times, then target yourself and cast Life Burst
.' Target a Scalesworn Elite flying above Corastrasza.
.' To cause damage, stack Flamestrike five times, then use Engulf in Flames. To keep your health up, stack Revivify 5 times, then target yourself and use Life Burst. Keep Revivify up while Life Burst is in use. Be ready to cast Flame Shield if they cast Arcane Surge.
.kill 5 Scalesworn Elites|q 13413/1
step
goto 29.5,24.8
.talk 32548
She's standing on a platform floating in the sky
..turnin 13413
step
label "dailies"
goto Borean Tundra,33.3,34.5
.talk 26117
..accept 11940
step
goto 24.6,27.1|n
.' Use your Raelorasz's Spear on a Nexus Drake Hatchling|use Raelorasz's Spear##35506|tip They are flying above you in the sky.
.' Do not kill it, let it hit you until it becomes friendly|havebuff INV_Misc_Head_Dragon_Blue
step
goto 33.3,34.5
.' Stand here until it says Captured Nexus Drake|q 11940/1
.talk 26117
..turnin 11940
step
goto 29.5,24.8
.talk 32548
..accept 13414
step
.' Tell Corastrasza you are ready
.' She will give you a Wyrmrest Skytalon to ride
.' Before engaging enemies, stack Revivify on yourself 5 times, then target yourself and cast Life Burst
.' Target a Scalesworn Elite flying above Corastrasza.
.' To cause damage, stack Flamestrike five times, then use Engulf in Flames. To keep your health up, stack Revivify 5 times, then target yourself and use Life Burst. Keep Revivify up while Life Burst is in use. Be ready to cast Flame Shield if they cast Arcane Surge.
.kill 5 Scalesworn Elites|q 13414/1
step
goto 29.5,24.8
.talk 32548
..turnin 13414
step
'You have reached the end of the Dailies. Click here to return to the beginning |confirm
|next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Borean Tundra\\Kaskala Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests in the Kaskala region of Borean Tundra.
description There are no pre-quests needed to unlock the daily quest offered in this guide section.
daily
step
goto Borean Tundra,63.9,45.7
.talk 26213
..accept 11945
step
goto 66.7,48.6
.' Click baskets on the shore
.get 8 Kaskala Supplies|q 11945/1
step
goto 63.9,45.7
.talk 26213
..turnin 11945
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Dalaran\\Cooking Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the Cooking daily quests in Dalaran.
step
'Routing to proper section |next |only if not completedq(13087)
'Routing to proper section |next "dailies" |only if completedq(13087)
step
goto Howling Fjord,58.2,62.1
.talk 26905
..accept 13087|tip This quest is only available to you if you have 350+ Cooking skill.
step
goto 79.0,73.1
.from Lion Seal Whelp##29559+, Lion Seal##23887+, Bull Lion Seal##23886+
.get 4 Chilled Meat |q 13087/1
step
goto 58.2,62.1
.talk 26905
..turnin 13087
step
label "dailies"
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
'You have reached the end of the dailies for today.
.' Click here to go back to the beginning of the guide. |confirm |next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Dalaran\\Fishing Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the Fishing daily quests in Dalaran.
step
label "dailies"
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
'You have reached the end of the dailies for today.
.' Click here to go back to the beginning of the guide. |confirm |next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Dalaran\\Jewelcrafting Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the Jewelcrafting daily quests in Dalaran.
step
'Routing to proper section |next |only if not completedq(13041)
'Routing to proper section |next "dailies" |only if completedq(13041)
step
goto Dalaran,40.7,35.4
.talk 28701
..accept 13041|tip This quest is only available once you have 375+ Jewelcrafting skill.
step
'Go to the Auction House in a major city:
.' Buy 1 Chalcedony|q 13041/1|tip If you don't want to, or can't, buy the Chalcedony, you can also try to get one by mining or prospecting.
step
goto Dalaran,40.7,35.4
.talk 28701
..turnin 13041
step
label "dailies"
goto Dalaran,40.7,35.4
.talk 28701
.' You will only be able to accept, and turn in, 1 of these 6 daily quests per day, and they all require you have 375+ Jewelcrafting skill:
..accept 12958 |or
..accept 12962 |or
..accept 12959 |or
..accept 12961 |or
..accept 12963 |or
..accept 12960 |or
step
goto Icecrown,59.1,54.1
.from Ymirjar Element Shaper##31267+, Blight Falconer##31262+, Ymirheim Chosen Warrior##31258+
.collect 1 Vrykul Amulet##41989 |q 12958
step
'Go to the Auction House in a major city:
.' Buy 1 Dark Jade|collect 1 Dark Jade##36932|q 12958|tip If you don't want to, or can't, buy the Dark Jade, you can also try to get one by mining or prospecting.
.' Buy 1 Bloodstone|collect 1 Bloodstone##36917|q 12958|tip If you don't want to, or can't, buy the Bloodstone, you can also try to get one by mining or prospecting.
step
'Use your Vrykul Amulet in your bags|use Vrykul Amulet##41989
.get 1 Blood Jade Amulet |q 12958/1
step
goto Dragonblight,67.3,52.3
.from Ice Revenant##26283
.collect 1 Elemental Armor Scrap##42107 |q 12962
step
'Go to the Auction House in a major city:
.' Buy 1 Huge Citrine|collect 1 Huge Citrine##36929|q 12962|tip If you don't want to, or can't, buy the Huge Citrine, you can also try to get one by mining or prospecting.
.' Buy 1 Bloodstone|collect 1 Bloodstone##36917|q 12962|tip If you don't want to, or can't, buy the Bloodstone, you can also try to get one by mining or prospecting.
step
'Use your Elemental Armor Scrap in your bags|use Elemental Armor Scrap##42107
.get 1 Bright Armor Relic |q 12962/1
step
goto Dragonblight,62.5,47.4
.from Emaciated Mammoth Bull##26271+, Emaciated Mammoth Calf##26273+, Emaciated Mammoth##26272+
.collect 1 Northern Ivory##42104 |q 12959
step
'Go to the Auction House in a major city:
.' Buy 1 Chalcedony|collect 1 Chalcedony##36923|q 12959|tip If you don't want to, or can't, buy the Chalcedony, you can also try to get one by mining or prospecting.
.' Buy 1 Shadow Crystal|collect 1 Shadow Crystal##36926|q 12959|tip If you don't want to, or can't, buy the Shadow Crystal, you can also try to get one by mining or prospecting.
step
'Use your Northern Ivory in your bags|use Northern Ivory##42104
.get 1 Glowing Ivory Figurine |q 12959/1
step
goto The Storm Peaks,23.1,57.7
.from Blighted Proto-Drake##29590+
.collect 1 Proto Dragon Bone##42106 |q 12961
step
'Go to the Auction House in a major city:
Buy 1 Sun Crystal |collect 1 Sun Crystal##36920|q 12959|tip If you don't want to, or can't, buy the Sun Crystal, you can also try to get one by mining or prospecting.
.' Buy 1 Dark Jade|collect 1 Dark Jade##36932|q 12961|tip If you don't want to, or can't, buy the Dark Jade, you can also try to get one by mining or prospecting.
step
'Use your Proto Dragon Bone in your bags|use Proto Dragon Bone##42106
.get 1 Intricate Bone Figurine |q 12961/1
step
goto Dragonblight,56.3,27.5
.from Wastes Taskmaster##26493+, Wastes Digger##26492+
.collect 1 Scourge Curio##42108 |q 12963
step
'Go to the Auction House in a major city:
.' Buy 1 Sun Crystal|collect 1 Sun Crystal##36920|q 12963|tip If you don't want to, or can't, buy the Sun Crystal, you can also try to get one by mining or prospecting.
.' Buy 1 Shadow Crystal|collect 1 Shadow Crystal##36926|q 12963|tip If you don't want to, or can't, buy the Shadow Crystal, you can also try to get one by mining or prospecting.
step
'Use your Scourge Curio in your bags|use Scourge Curio##42108
.get 1 Shifting Sun Curio |q 12963/1
step
'The entrance to the cave starts here|goto The Storm Peaks,26.8,66.9,0.3 |c |q 12960
step
goto 26.0,67.2
.from Stormforged Pillager##29586+, Stormforged Loreseeker##29843+
.collect 1 Iron Dwarf Brooch##42105 |q 12960
step
'Leave the cave|goto The Storm Peaks,26.8,66.9,0.3 |c |q 12960
step
'Go to the Auction House in a major city:
.' Buy 1 Huge Citrine|collect 1 Huge Citrine##36929|q 12960|tip If you don't want to, or can't, buy the Huge Citrine, you can also try to get one by mining or prospecting.
.' Buy 1 Sun Crystal|collect 1 Sun Crystal##36920|q 12960|tip If you don't want to, or can't, buy the Sun Crystal, you can also try to get one by mining or prospecting.
step
'Use your Iron Dwarf Brooch in your bags|use Iron Dwarf Brooch##42105
.get 1 Wicked Sun Brooch |q 12960/1
step
goto Dalaran,40.7,35.4
.talk 28701
.' You will only be able to accept, and turn in, 1 of these 6 daily quests per day, and they all require you have 375+ Jewelcrafting skill:
..turnin 12958
..turnin 12962
..turnin 12959
..turnin 12961
..turnin 12963
..turnin 12960
step
'You have reached the end of the dailies for today.
.' Click here to go back to the beginning of the guide. |confirm |next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Dragonblight\\Wyrmrest Accord Dailies with Pre-Quests",[[
author support@zygorguides.com
description This guide section contains the pre-quests to unlock the daily quests in the Wyrmrest Temple region of Dragonblight.
description The Moa'ki Harbor region of Dragonblight does not have any pre-quests to unlock the daily quest that is available there.
step
'Proceeding to Pre-Quests |next |only if default
'Proceeding to Dailies |next dailies |only if completedq(12435)
step
#include "A_Wyrmrest_Pre-Quests"
step
label "dailies"
#include "A_Wyrmrest_Dailies"
step
'You have finished this Dailies Guide. Click here to return to the beginning of the Dailies. |confirm
|next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Dragonblight\\Moa'ki Harbor Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quest in the Moa'ki Harbor region of Dragonblight.
description There are no pre-quests needed to unlock the daily quest offered in this guide section.
daily
step
goto Dragonblight,48.3,74.3
.talk 26228
..accept 11960
step
goto 45.3,63.7
.' Click Snowfall Glade Pups|tip The Snowfall Glade Pups are small creatures in front of the houses.
.get 12 Snowfall Glade Pup|q 11960/1
step
goto 48.3,74.3
.talk 26228
..turnin 11960
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Grizzly Hills\\Blackriver Logging Camp Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quest in the Blackriver Logging Camp region of Grizzly Hills.
description There are no pre-quests needed to unlock the daily quest offered in this guide section.
daily
step
'Routing to the proper section |next |only if default
'Routing to the porper section |next dailies |only if completedq(12029)
step
goto Grizzly Hills,16.2,47.6
.talk 26424
..accept 11984
step
goto 16.4,48.3
.talk 26429
..'Tell him it's time to play with the ice trolls |havebuff Budd's Attention Span|q 11984
step
goto 13.2,60.5
.' Use Budd's pet bar skill Tag Troll to have him stun a troll|petaction Tag Troll
.' Use your Bounty Hunter's Cage on the stunned troll |use Bounty Hunter's Cage##35736
.' Capture a Live Ice Troll|q 11984/1
step
goto 16.2,47.6
.talk 26424
..turnin 11984
step
goto 16.4,47.8
.talk 26423
..accept 11989
step
goto 16.5,47.8
.' Click the Dull Carving Knife|tip It's a knife stuck in the side of this tree trunk.
.collect 1 Dull Carving Knife##38083|q 11989
step
goto 16.4,47.8
.' Use your Dull Carving Knife next to the yellow cage|use Dull Carving Knife##38083
.talk 26423
..'Shake his hand
..'Make a Blood Pact With Drakuru |q 11989/1
step
goto 16.4,47.8
.talk 26423
..turnin 11989
..accept 11990
step
goto 16,47.8
.talk 26474
..buy 1 Imbued Vial|q 11990/1
step
goto 14.6,45.3
.' Click the Hazewood Bushes|tip They look like small flower bushes on the ground around this area.
.get 3 Haze Leaf|q 11990/2
step
goto 15.2,40.3
.' Click a Waterweed|tip They look like big green bushes underwater around this area.
.get Waterweed Frond|q 11990/3
step
goto 16.4,47.8
.talk 26423
..turnin 11990
step
goto 15.7,46.7
.talk 26519
..accept 12484
step
goto 15.7,46.9
.' Click a Scourged Troll Mummy on the ground next to you
.collect 1 Scourged Troll Mummy##38149|q 12484
step
goto 16.9,48.3
.' Use your Scourged Troll Mummy next to the burning pile of mummies|use Scourged Troll Mummy##38149
.' Burn a Mummified Carcass |q 12484/1
step
goto 16.7,48.3
.talk 26604
..turnin 12484
..accept 12029
step
goto 16,29.9
.' Jump on the big rock and stand on it
.' Use Mack's Dark Grog and throw it at the trolls running around to the north|use Mack's Dark Grog##35908
.' Burn 20 Scourge Trolls |q 12029/1
step
goto 16.7,48.3
.talk 26604
..turnin 12029
step
label	dailies
goto Grizzly Hills,30.0,59.8
.talk 27783
..accept 12444
step
goto 28.3,63.4
.' Kill Horde Players or Conquest Hold Raiders in the Blackriver Logging Camp
.' Kill 10 Horde in Blackriver |q 12444/1
step
goto 30.0,59.8
.talk 27783
..turnin 12444
step
'You have finished this Dailies Guide. Click here to return to the beginning of the Dailies. |confirm
|next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Grizzly Hills\\Blue Sky Logging Grounds Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests in the Blue Sky Logging Grounds region of Grizzly Hills.
description There are no pre-quests needed to unlock the daily quests offered in this guide section.
daily
step
'Routing to the proper section |next |only if default
'Routing to the porper section |next dailies |only if completedq(12029)
step
goto Grizzly Hills,16.2,47.6
.talk 26424
..accept 11984
step
goto 16.4,48.3
.talk 26429
..'Tell him it's time to play with the ice trolls|havebuff Budd's Attention Span|q 11984
step
goto 13.2,60.5
.' Use Budd's pet bar skill Tag Troll to have him stun a troll|petaction Tag Troll
.' Use your Bounty Hunter's Cage on the stunned troll|use Bounty Hunter's Cage##35736
.' Capture a Live Ice Troll|q 11984/1
step
goto 16.2,47.6
.talk 26424
..turnin 11984
step
goto 16.4,47.8
.talk 26423
..accept 11989
step
goto 16.5,47.8
.' Click the Dull Carving Knife|tip It's a knife stuck in the side of this tree trunk.
.collect 1 Dull Carving Knife##38083|q 11989
step
goto 16.4,47.8
.' Use your Dull Carving Knife next to the yellow cage|use Dull Carving Knife##38083
.talk 26423
..'Shake his hand
..'Make a Blood Pact With Drakuru |q 11989/1
step
goto 16.4,47.8
.talk 26423
..turnin 11989
..accept 11990
step
goto 16,47.8
.talk 26474
..buy 1 Imbued Vial|q 11990/1
step
goto 14.6,45.3
.' Click the Hazewood Bushes|tip They look like small flower bushes on the ground around this area.
.get 3 Haze Leaf|q 11990/2
step
goto 15.2,40.3
.' Click a Waterweed|tip They look like big green bushes underwater around this area.
.get Waterweed Frond|q 11990/3
step
goto 16.4,47.8
.talk 26423
..turnin 11990
step
goto 15.7,46.7
.talk 26519
..accept 12484
step
goto 15.7,46.9
.' Click a Scourged Troll Mummy on the ground next to you
.collect 1 Scourged Troll Mummy##38149|q 12484
step
goto 16.9,48.3
.' Use your Scourged Troll Mummy next to the burning pile of mummies|use Scourged Troll Mummy##38149
.' Burn a Mummified Carcass |q 12484/1
step
goto 16.7,48.3
.talk 26604
..turnin 12484
..accept 12029
step
goto 16,29.9
.' Jump on the big rock and stand on it
.' Use Mack's Dark Grog and throw it at the trolls running around to the north|use Mack's Dark Grog##35908
.' Burn 20 Scourge Trolls |q 12029/1
step
goto 16.7,48.3
.talk 26604
..turnin 12029
daily
step
label	dailies
goto Grizzly Hills,39.3,43.9
.talk 27468
..accept 12289
step
goto 39.5,43.6
.talk 27371
..accept 12244
step
goto 39.6,43.4
.talk 27416
..accept 12268
step
goto 40.5,42.7
.talk 27484
..accept 12296
step
goto 34.9,39.8
.' Use Renewing Bandages on Wounded Wesfall Infantry|use Renewing Bandage##37576
.' Heal 10 Westfall Infantry |q 12296/1
.' Click Grooved Cogs, Notched Sprockets, and High Tension Springs on the ground of the Blue Sky Logging Grounds
..get 4 Grooved Cogs##37412|q 12268/1
..get 3 Notched Sprockets##37413|q 12268/2
..get 2 High Tension Springs##37416|q 12268/3
step
goto 33.4,35.7
.' Kill Horde Players or Wounded Skirmishers in the area
.' Eliminate 15 Horde units |q 12289/1
step
goto 34.9,39.8
.' Find the Broken-down Shredder that spawns. Blizzards quest helper will mark it on your map for you.
.' Click the Broken-down Shredder to get inside it
.' Use your abilities on your hot bar to return the shredder to Synipus|goto Grizzly Hills,39.5,43.6
.' Deliver 3 Shredders |q 12244/1
step
goto 39.3,43.9
.talk 27468
..turnin 12289
step
goto 39.5,43.6
.talk 27371
..turnin 12244
step
goto 39.6,43.4
.talk 27416
..turnin 12268
step
goto 40.5,42.7
.talk 27484
..turnin 12296
step
'You have finished this Dailies Guide. Click here to return to the beginning of the Dailies. |confirm
|next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Grizzly Hills\\Granite Springs Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quest in the Granite Springs region of Grizzly Hills.
daily
step
'Routing to the proper section |next |only if default
'Routing to the porper section |next dailies |only if completedq(12029)
step
goto Grizzly Hills,16.2,47.6
.talk 26424
..accept 11984
step
goto 16.4,48.3
.talk 26429
..'Tell him it's time to play with the ice trolls|havebuff Budd's Attention Span|q 11984
step
goto 13.2,60.5
.' Use Budd's pet bar skill Tag Troll to have him stun a troll|petaction Tag Troll
.' Use your Bounty Hunter's Cage on the stunned troll|use Bounty Hunter's Cage##35736
.' Capture a Live Ice Troll|q 11984/1
step
goto 16.2,47.6
.talk 26424
..turnin 11984
step
goto 16.4,47.8
.talk 26423
..accept 11989
step
goto 16.5,47.8
.' Click the Dull Carving Knife|tip It's a knife stuck in the side of this tree trunk.
.collect 1 Dull Carving Knife##38083|q 11989
step
goto 16.4,47.8
.' Use your Dull Carving Knife next to the yellow cage|use Dull Carving Knife##38083
.talk 26423
..'Shake his hand
..'Make a Blood Pact With Drakuru |q 11989/1
step
goto 16.4,47.8
.talk 26423
..turnin 11989
..accept 11990
step
goto 16,47.8
.talk 26474
..buy 1 Imbued Vial|q 11990/1
step
goto 14.6,45.3
.' Click the Hazewood Bushes|tip They look like small flower bushes on the ground around this area.
.get 3 Haze Leaf|q 11990/2
step
goto 15.2,40.3
.' Click a Waterweed|tip They look like big green bushes underwater around this area.
.get Waterweed Frond|q 11990/3
step
goto 16.4,47.8
.talk 26423
..turnin 11990
step
goto 15.7,46.7
.talk 26519
..accept 12484
step
goto 15.7,46.9
.' Click a Scourged Troll Mummy on the ground next to you
.collect 1 Scourged Troll Mummy##38149|q 12484
step
goto 16.9,48.3
.' Use your Scourged Troll Mummy next to the burning pile of mummies|use Scourged Troll Mummy##38149
.' Burn a Mummified Carcass |q 12484/1
step
goto 16.7,48.3
.talk 26604
..turnin 12484
..accept 12029
step
goto 16,29.9
.' Jump on the big rock and stand on it
.' Use Mack's Dark Grog and throw it at the trolls running around to the north|use Mack's Dark Grog##35908
.' Burn 20 Scourge Trolls |q 12029/1
step
goto 16.7,48.3
.talk 26604
..turnin 12029
daily
step
label	dailies
goto Grizzly Hills,16.7,48.3
.talk 26604
..accept 12038
step
goto 16,29.9
.' Jump on the big rock and stand on it
.' Use Mack's Dark Grog and throw it at the trolls running around to the north|use Mack's Dark Grog##35908
.' Burn 30 Scourge Trolls |q 12038/1
step
goto Grizzly Hills,16.7,48.3
.talk 26604
..turnin 12038
step
'You have finished this Dailies Guide. Click here to return to the beginning of the Dailies. |confirm
|next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Grizzly Hills\\Venture Bay Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests in the Venture Bay region of Grizzly Hills.
description There are no pre-quests needed to unlock the daily quests offered in this guide section.
daily
step
'Routing to the proper section |next |only if default
'Routing to the porper section |next dailies |only if completedq(12029)
step
goto Grizzly Hills,16.2,47.6
.talk 26424
..accept 11984
step
goto 16.4,48.3
.talk 26429
..'Tell him it's time to play with the ice trolls|havebuff Budd's Attention Span|q 11984
step
goto 13.2,60.5
.' Use Budd's pet bar skill Tag Troll to have him stun a troll|petaction Tag Troll
.' Use your Bounty Hunter's Cage on the stunned troll|use Bounty Hunter's Cage##35736
.' Capture a Live Ice Troll|q 11984/1
step
goto 16.2,47.6
.talk 26424
..turnin 11984
step
goto 16.4,47.8
.talk 26423
..accept 11989
step
goto 16.5,47.8
.' Click the Dull Carving Knife|tip It's a knife stuck in the side of this tree trunk.
.collect 1 Dull Carving Knife##38083|q 11989
step
goto 16.4,47.8
.' Use your Dull Carving Knife next to the yellow cage|use Dull Carving Knife##38083
.talk 26423
..'Shake his hand
..'Make a Blood Pact With Drakuru |q 11989/1
step
goto 16.4,47.8
.talk 26423
..turnin 11989
..accept 11990
step
goto 16,47.8
.talk 26474
..buy 1 Imbued Vial|q 11990/1
step
goto 14.6,45.3
.' Click the Hazewood Bushes|tip They look like small flower bushes on the ground around this area.
.get 3 Haze Leaf|q 11990/2
step
goto 15.2,40.3
.' Click a Waterweed|tip They look like big green bushes underwater around this area.
.get Waterweed Frond|q 11990/3
step
goto 16.4,47.8
.talk 26423
..turnin 11990
step
goto 15.7,46.7
.talk 26519
..accept 12484
step
goto 15.7,46.9
.' Click a Scourged Troll Mummy on the ground next to you
.collect 1 Scourged Troll Mummy##38149|q 12484
step
goto 16.9,48.3
.' Use your Scourged Troll Mummy next to the burning pile of mummies|use Scourged Troll Mummy##38149
.' Burn a Mummified Carcass |q 12484/1
step
goto 16.7,48.3
.talk 26604
..turnin 12484
..accept 12029
step
goto 16,29.9
.' Jump on the big rock and stand on it
.' Use Mack's Dark Grog and throw it at the trolls running around to the north|use Mack's Dark Grog##35908
.' Burn 20 Scourge Trolls |q 12029/1
step
goto 16.7,48.3
.talk 26604
..turnin 12029
daily
step
label	dailies
goto Grizzly Hills,14.8,86.6
.talk 27759
..accept 12437
.' If he's not there, then you have to take control of Venture Bay for the Alliance
..' To take control of Venture Bay for the Alliance, go to 15.1,88.0|tip Hide behind the lighthouse in between the 2 big brown rocks. Flag yourself for PvP and a bar will appear under your minimap. Sit here until the bar marker is all the way to the left, this will make Commander Howser spawn.
step
goto 22.1,81.2
.talk 27602
..accept 12323
step
goto 22.1,81.2
.talk 27562
..accept 12316
step
goto 22.2,81.2
.talk 27520
..accept 12314
step
goto 18.0,79.6
.' Toss the Smoke Bomb into the buildings to smoke out Venture Co. Stragglers|use Smoke Bomb##37621
.' Building one can be found at [18.0,79.6]
.' Building two can be found at [16.4,76.6]
.' Building three can be found at [14.6,76.7]
.' Smoke out 20 Venture Company Stragglers |q 12323/1
step
goto 19.9,76.4
.' Kill Horde Players or Conquest Hold Berserker in Venture Bay
.' Kill 10 Horde in Venture Bay |q 12316/1
step
goto 13.3,80.2
..kill Captain Zorna##27511|q 12314/1
step
goto 16.4,80.3
.' Click the Element 115 in the back room of the ship|tip It looks like a red canister with a handle on the top
..collect Element 115##37664|q 12437
step
goto 9.6,79.2
.' On the next step you will guide a rocket into this Horde Lumberboat
.' Your target will be the wooden X on the back
.' Go to 13.6,88.9|goto Grizzly Hills,13.6,88.9,0.5
.' You will want to use your keys, not your mouse, to guide the rocket
.' Avoid icebergs or the rocket will explode and you will have to start over
.' Click a red rocket to take control of one|invehicle|c|q 12437
step
goto 9.6,79.1
.' Hit the wooden X on the back of the Horde Lumberboat
.' Destroy the Horde Lumberboat |q 12437/1
step
goto 14.8,86.6
.talk 27759
..turnin 12437
step
goto 22.1,81.2
.talk 27562
..turnin 12316
step
goto 22.1,81.2
.talk 27520
..turnin 12314
step
goto 22.1,81.2
.talk 27602
..turnin 12323
step
'You have finished this Dailies Guide. Click here to return to the beginning of the Dailies. |confirm
|next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Howling Fjord\\Steel Gate Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quest in the Apothecary Camp region of Howling Fjord.
step
'Proceeding to the proper section |next |only if default
'Proceeding to the proper section |next dailies |only if completedq(11390)
step
goto Howling Fjord,40.3,60.3
.talk 23804
..accept 11504
step
goto 57.7,77.5
.' Click the Mound of Debris|tip It looks like a pile of dirt in the bottom of this small pit, next to a skeleton.
.get Fengir's Clue|q 11504/1
step
goto 59.2,77
.' Click the Unlocked Chest|tip It looks like a small chest in the bottom of this small pit, next to a skeleton.
.get Rodin's Clue|q 11504/2
step
goto 59.8,79.4
.' Click the Long Tail Feather|tip It's a small blue feather sitting on a circular shield in this pit, on top of a skeleton.
.get Isuldof's Clue|q 11504/3
step
goto 62,80
.' Click the Cannonball|tip It looks like a big round grey ball sitting in the dirt in this pit, between a skeleton's legs.
.get Windan's Clue|q 11504/4
step
goto 40.3,60.3
.talk 23804
..turnin 11504
..accept 11507
step
'Go northwest across the Ancient Lift to 25.0,57.0|goto 25.0,57.0
.talk 24755
..turnin 11507
..accept 11508
step
goto 23.1,62.7
.talk 24643
..turnin 11508
..accept 11509
step
goto 35.1,80.9
.talk 24539
..turnin 11509
step
goto 37.8,79.6
.talk 24784
..accept 11469
step
goto 31.4,77.9
.from Big Roy##24785
.get Big Roy's Blubber|q 11469/1
step
goto 37.8,79.6
.talk 24784
..turnin 11469
step
goto Howling Fjord,30.2,28.7
.talk 23891
..accept 11176
step
goto 30.8,28.6
.talk 24399
..turnin 11176
..accept 11390
step
'Click the plane near you on the wooden platform to ride in it|invehicle
step
'Fly down into the valley below
.' They look like huge sacks with yellow stuff in them on the ground
.' Use your Grappling Hook ability on your hotbar near a big sack on the ground|petaction Grappling Hook
.' Fly back to the top of the valley and fly toward the red arrows on the big scale things to Deliver a Sack of Relics
.' Repeat this 2 more time
.' Deliver 3 Sacks of Relics |q 11390/1
step
'Fly back to the wooden platform and click the red arrow button on your hotbar to get out of the plane|outvehicle
step
goto 30.8,28.6
.talk 24399
..turnin 11390
daily
step
label	dailies
goto Howling Fjord,30.8,28.6
.talk 24399
..accept 11391
step
'Click the plane near you on the wooden platform to ride in it|invehicle
step
'Use the abilities on your hotbar as you fly around to fight the flying gargoyles
.kill 8 Gjalerbron Gargoyle|q 11391/1
step
'Fly back to the wooden platform and click the red arrow button on your hotbar to get out of the plane|outvehicle
step
goto 30.8,28.6
.talk 24399
..turnin 11391
step
'You have finished this Dailies Guide. Click here to return to the beginning of the Dailies. |confirm
|next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Howling Fjord\\Kamagua Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quest in the Kamagua region of Howling Fjord.
step
'Proceeding to the proper section |next |only if default
'Proceeding to the proper section |next dailies |only if completedq(11390)
step
goto Howling Fjord,40.3,60.3
.talk 23804
..accept 11504
step
goto 57.7,77.5
.' Click the Mound of Debris|tip It looks like a pile of dirt in the bottom of this small pit, next to a skeleton.
.get Fengir's Clue|q 11504/1
step
goto 59.2,77
.' Click the Unlocked Chest|tip It looks like a small chest in the bottom of this small pit, next to a skeleton.
.get Rodin's Clue|q 11504/2
step
goto 59.8,79.4
.' Click the Long Tail Feather|tip It's a small blue feather sitting on a circular shield in this pit, on top of a skeleton.
.get Isuldof's Clue|q 11504/3
step
goto 62,80
.' Click the Cannonball|tip It looks like a big round grey ball sitting in the dirt in this pit, between a skeleton's legs.
.get Windan's Clue|q 11504/4
step
goto 40.3,60.3
.talk 23804
..turnin 11504
..accept 11507
step
'Go northwest across the Ancient Lift to 25.0,57.0|goto 25.0,57.0
.talk 24755
..turnin 11507
..accept 11508
step
goto 23.1,62.7
.talk 24643
..turnin 11508
..accept 11509
step
goto 35.1,80.9
.talk 24539
..turnin 11509
step
goto 37.8,79.6
.talk 24784
..accept 11469
step
goto 31.4,77.9
.from Big Roy##24785
.get Big Roy's Blubber|q 11469/1
step
goto 37.8,79.6
.talk 24784
..turnin 11469
step
goto Howling Fjord,30.2,28.7
.talk 23891
..accept 11176
step
goto 30.8,28.6
.talk 24399
..turnin 11176
..accept 11390
step
'Click the plane near you on the wooden platform to ride in it|invehicle
step
'Fly down into the valley below
.' They look like huge sacks with yellow stuff in them on the ground
.' Use your Grappling Hook ability on your hotbar near a big sack on the ground|petaction Grappling Hook
.' Fly back to the top of the valley and fly toward the red arrows on the big scale things to Deliver a Sack of Relics
.' Repeat this 2 more time
.' Deliver 3 Sacks of Relics |q 11390/1
step
'Fly back to the wooden platform and click the red arrow button on your hotbar to get out of the plane|outvehicle
step
goto 30.8,28.6
.talk 24399
..turnin 11390
daily
step
label	dailies
goto Howling Fjord,24.6,58.9
.talk 24810
..accept 11472
step
goto 28.9,74.8
.' Use Anuniaq's Net on the Schools of Tasty Reef Fish|use Anuniaq's Net##40946|tip They look like swarms of fish in the water.
.kill Great Reef Sharks|n
.collect 10 Tasty Reef Fish##34127|q 11472
step
goto 31,74.4
.' Use your Tasty Reef Fish on a Reef Bull as far away as you can|use Tasty Reef Fish##34127
.' He will come to the spot where you're standing
.' Keep doing this
.' Lead the Reef Bull to a Reef Cow on the other side of the water |q 11472/1
step
goto 24.6,58.9
.talk 24810
..turnin 11472
step
'You have finished this Dailies Guide. Click here to return to the beginning of the Dailies. |confirm
|next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Howling Fjord\\Westguard Keep Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quest in the Westguard Keep region of Howling Fjord.
step
'Proceeding to the proper section |next |only if default
'Proceeding to the proper section |next dailies |only if completedq(11390)
step
goto Howling Fjord,40.3,60.3
.talk 23804
..accept 11504
step
goto 57.7,77.5
.' Click the Mound of Debris|tip It looks like a pile of dirt in the bottom of this small pit, next to a skeleton.
.get Fengir's Clue|q 11504/1
step
goto 59.2,77
.' Click the Unlocked Chest|tip It looks like a small chest in the bottom of this small pit, next to a skeleton.
.get Rodin's Clue|q 11504/2
step
goto 59.8,79.4
.' Click the Long Tail Feather|tip It's a small blue feather sitting on a circular shield in this pit, on top of a skeleton.
.get Isuldof's Clue|q 11504/3
step
goto 62,80
.' Click the Cannonball|tip It looks like a big round grey ball sitting in the dirt in this pit, between a skeleton's legs.
.get Windan's Clue|q 11504/4
step
goto 40.3,60.3
.talk 23804
..turnin 11504
..accept 11507
step
'Go northwest across the Ancient Lift to 25.0,57.0|goto 25.0,57.0
.talk 24755
..turnin 11507
..accept 11508
step
goto 23.1,62.7
.talk 24643
..turnin 11508
..accept 11509
step
goto 35.1,80.9
.talk 24539
..turnin 11509
step
goto 37.8,79.6
.talk 24784
..accept 11469
step
goto 31.4,77.9
.from Big Roy##24785
.get Big Roy's Blubber|q 11469/1
step
goto 37.8,79.6
.talk 24784
..turnin 11469
step
goto Howling Fjord,30.2,28.7
.talk 23891
..accept 11176
step
goto 30.8,28.6
.talk 24399
..turnin 11176
..accept 11390
step
'Click the plane near you on the wooden platform to ride in it|invehicle
step
'Fly down into the valley below
.' They look like huge sacks with yellow stuff in them on the ground
.' Use your Grappling Hook ability on your hotbar near a big sack on the ground|petaction Grappling Hook
.' Fly back to the top of the valley and fly toward the red arrows on the big scale things to Deliver a Sack of Relics
.' Repeat this 2 more time
.' Deliver 3 Sacks of Relics |q 11390/1
step
'Fly back to the wooden platform and click the red arrow button on your hotbar to get out of the plane|outvehicle
step
goto 30.8,28.6
.talk 24399
..turnin 11390
daily
step
label	dailies
goto Howling Fjord,29,41.9
.talk 23895
..accept 11153
step
goto 28.1,42.1
.' If you have a flying mount you can just fly onto the boats and kill the pirates and cannons
.' If you do not have a flying mount wait for the zeppelin to come back, if it is there already, then get on it
.' Use Petrov's Cluster Bombs in your bags to throw them off the zeppelin at the pirates as you ride|use Petrov's Cluster Bombs##33098
.kill 25 Blockade Pirate|q 11153/1
.' Destroy 10 Blockade Cannons |q 11153/2
step
goto 29,41.9
.talk 23895
..turnin 11153
step
'You have finished this Dailies Guide. Click here to return to the beginning of the Dailies. |confirm
|next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Argent Tournament Grounds Aspirant Rank Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing your race's Aspirant Rank dailies
description in order to achieve Argent Tournament Grounds Valiant Rank with your own race.
daily
step
label	hub
goto Icecrown,72.6,22.6
.talk 33849
..fpath Argent Tournament Grounds
step
goto Icecrown,69.7,22.9
.talk 33817
..accept 13667
step
goto Icecrown,76.5,19.4
.talk 33625
..turnin 13667
..accept 13828
step
goto 76.5,19.4
.talk 33646
..accept 13837
step
goto Icecrown,76.5,19.5
.talk 33647
..accept 13835
step
goto Icecrown,75.9,20.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Quel'dorei Steed|invehicle|q 13828
step
goto 73.2,19.2
.talk 33974
.' Listen to Valis Windchaser's advice|q 13835/1
step
goto 72.7,18.9
.talk 33972
.' Listen to Rugan Steelbelly's advice|q 13837/1
step
goto 72.5,19.3
.talk 33973
.' Listen to Jeran Lockwood's advice|q 13828/1
step
goto 72.6,19.7
.' Target a Melee Target
.' If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
.' Use your Thrust ability to attack the target 5 times|q 13828/2
step
goto 72.9,18.8
.' Target a Charge Target from a distance
.' Use Shield-Breaker ability until you notice the targets Defend is gone
.' Use your Charge ability on the Charge Target 2 times|q 13837/2
step
goto 73.1,19.0
.' Target a Ranged Target from a distance
.' Use Shield-Breaker ability on Ranged Target to bring it's shields down
.' Use Shield-Breaker ability on Ranged Target twice, while it's shields are down|q 13835/2
step
'Click the red arrow on your hotbar to stop riding the steed mount|outvehicle|q 13828
step
goto Icecrown,76.5,19.4
.talk 33625
..turnin 13828
step
goto 76.5,19.4
.talk 33646
..turnin 13837
step
goto Icecrown,76.5,19.5
.talk 33647
..turnin 13835
step
goto Icecrown,76.5,19.4
.talk 33625
..accept 13672
step
goto 76.5,19.4
.talk 33625
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13666 |or
..accept 13669 |or
..accept 13670 |or
step
goto 76.5,19.4
.talk 33646
..accept 13671
step
goto Icecrown,76.5,19.5
.talk 33647
..accept 13625
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
..talk 33220
..get Ashwood Brand |q 13666/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13669
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13669/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13670
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13670/1
step
goto Icecrown,71.3,37.5
.from Vrykul Necrolord##31783+, Frostbrood Whelp##31718+
.kill 8 Icecrown Scourge |q 13671/1
step
goto Icecrown,75.9,20.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Quel'dorei Steed|invehicle|q 13625
step
goto 72.6,19.7
.' Target a Melee Target
.' If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
.' Use your Thrust ability to attack the target 5 times|q 13625/1
step
goto 72.9,18.8
.' Target a Charge Target from a distance
.' Use Shield-Breaker ability until you notice the targets Defend is gone
.' Use your Charge ability on the Charge Target 2 times|q 13625/3
step
goto 73.1,19.0
.' Target a Ranged Target from a distance
.' Use Shield-Breaker ability on Ranged Target to bring it's shields down
.' Use Shield-Breaker ability on Ranged Target twice, while it's shields are down|q 13625/2
step
goto 76.5,19.4
.talk 33625
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13666
..turnin 13669
..turnin 13670
step
goto 76.5,19.4
.talk 33646
..turnin 13671
step
goto Icecrown,76.5,19.5
.talk 33647
..turnin 13625
step
goto 76.5,19.4
.talk 33625
.collect 15 Aspirant's Seal##45192+ |n
..turnin 13672
.' If you have not collected 15 Seals, you can cilck here to go back the beginning of the Dailies. |confirm
|next hub
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Argent Tournament Grounds Valiant Rank Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing your race's Valiant Rank dailies
description in order to achieve Argent Tournament Grounds Champion Rank with your own race.
description You must have completed the Argent Tournament Grounds Aspirant Rank Dailies guide section
description in order to have access to the quests in this guide section.
daily
step
goto Icecrown,76.5,19.4
.talk 33625
..accept 13679|tip You must turn in the Up To The Challenge quest before you can accept this quest.  The Up To The Challenge quest is turned in at the end of the ARGENT TOURNAMENT GROUNDS DAILIES (ASPIRANT RANK) guide section.
step
goto 71.8,20.0
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Quel'dorei Steed|invehicle |q 13679
step
goto 71.4,19.6
.talk 33447
.' Tell him you are ready to fight!|tip Use your Defend ability on your hotbar to max your shield out at 3 charges before telling Squire David this.
.'An Argent Valiant runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Valiant|tip The best strategy to defeat the Argent Valiant is to always make sure your shield is up by using your Defend ability.  Then, use your Shield-Breaker ability to bring down the Argent Valiant's shield.  When his shield is down, use your Charge ability on him.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13679/1
step
goto 76.5,19.4
.talk 33625
..turnin 13679
..accept 13684 |only Human, Pandaren
..accept 13689 |only NightElf, Worgen
..accept 13685 |only Dwarf
..accept 13688 |only Gnome
..accept 13690 |only Draenei
step
goto 76.6,19.2
.talk 33225
..turnin 13684
..accept 13718
only Human
step
goto 76.3,19.1
.talk 33592
..turnin 13689
..accept 13717
only NightElf
step
goto 76.6,19.5
.talk 33312
..turnin 13685
..accept 13714
only Dwarf
step
goto 76.5,19.8
.talk 33335
..turnin 13688
..accept 13715
only Gnome
step
goto 76.1,19.2
.talk 33593
..turnin 13690
..accept 13716
only Draenei
step
goto 76.1,19.1
.talk 33593
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13752 |or
..accept 13753 |or
..accept 13754 |or
only Draenei
step
goto 76.1,19.2
.talk 33655
..accept 13755
only Draenei
step
goto 76.2,19.1
.talk 33656
..accept 13756
..accept 13854
only Draenei
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13752/1
only Draenei
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13753
only Draenei
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13753/1
only Draenei
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13754
only Draenei
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13754/1
only Draenei
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13854
only Draenei
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13854/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13854/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13854/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Draenei
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13854
only Draenei
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13755/1
only Draenei
step
goto 76.4,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Exodar Elekk|invehicle |q 13756
only Draenei
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13756/1
only Draenei
step
goto 76.1,19.1
.talk 33593
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13752
..turnin 13753
..turnin 13754
only Draenei
step
goto 76.1,19.2
.talk 33655
..turnin 13755
only Draenei
step
goto 76.2,19.1
.talk 33656
..turnin 13756
..turnin 13854
only Draenei
step
goto 76.6,19.5
.talk 33312
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13741 |or
..accept 13742 |or
..accept 13743 |or
only Dwarf
step
goto 76.7,19.4
.talk 33315
..accept 13744
only Dwarf
step
goto 76.6,19.6
.talk 33309
..accept 13745
..accept 13851
only Dwarf
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13741/1
only Dwarf
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13742
only Dwarf
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13742/1
only Dwarf
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13743
only Dwarf
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13743/1
only Dwarf
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13851
only Dwarf
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13851/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13851/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13851/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Dwarf
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13851
only Dwarf
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13744/1
only Dwarf
step
goto 76.3,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Ironforge Ram|invehicle |q 13745
only Dwarf
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13745/1
only Dwarf
step
goto 76.6,19.5
.talk 33312
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13741
..turnin 13742
..turnin 13743
only Dwarf
step
goto 76.7,19.4
.talk 33315
..turnin 13744
only Dwarf
step
goto 76.6,19.6
.talk 33309
..turnin 13745
..turnin 13851
only Dwarf
step
goto 76.6,19.1
.talk 33225
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13603 |or
..accept 13600 |or
..accept 13616 |or
only Human
step
goto 76.5,19.1
.talk 33222
..accept 13592
only Human
step
goto 76.6,19.2
.talk 33223
..accept 13665
..accept 13847
only Human
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13603/1
only Human
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13600
only Human
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13600/1
only Human
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13616
only Human
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13616/1
only Human
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13847
only Human
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13847/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13847/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13847/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Human
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13847
only Human
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13592/1
only Human
step
goto 76.1,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Stormwind Steed|invehicle |q 13665
only Human
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13665/1
only Human
step
goto 76.6,19.1
.talk 33225
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13603
..turnin 13600
..turnin 13616
only Human
step
goto 76.5,19.1
.talk 33222
..turnin 13592
only Human
step
goto 76.6,19.2
.talk 33223
..turnin 13665
..turnin 13847
only Human
step
goto 76.3,19.0
.talk 33592
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13757 |or
..accept 13758 |or
..accept 13759 |or
only NightElf, Worgen
step
goto 76.3,19.0
.talk 33652
..accept 13760
only NightElf, Worgen
step
goto 76.4,19.0
.talk 33654
..accept 13761
..accept 13855
only NightElf, Worgen
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13757/1
only NightElf, Worgen
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13758
only NightElf, Worgen
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13758/1
only NightElf, Worgen
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13759
only NightElf, Worgen
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13759/1
only NightElf, Worgen
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13855
only NightElf, Worgen
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13855/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13855/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13855/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only NightElf, Worgen
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13855
only NightElf, Worgen
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13760/1
only NightElf, Worgen
step
goto 76.0,20.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Darnassian Nightsaber|invehicle |q 13761
only NightElf, Worgen
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13761/1
only NightElf, Worgen
step
goto 76.3,19.0
.talk 33592
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13757
..turnin 13758
..turnin 13759
only NightElf, Worgen
step
goto 76.3,19.0
.talk 33652
..turnin 13760
only NightElf, Worgen
step
goto 76.4,19.0
.talk 33654
..turnin 13761
..turnin 13855
only NightElf, Worgen
step
goto 76.5,19.8
.talk 33335
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13746 |or
..accept 13747 |or
..accept 13748 |or
only Gnome
step
goto 76.6,19.8
.talk 33648
..accept 13749
only Gnome
step
goto 76.5,19.9
.talk 33649
..accept 13750
..accept 13852
only Gnome
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13746/1
only Gnome
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13747
only Gnome
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13747/1
only Gnome
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13748
only Gnome
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13748/1
only Gnome
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13852
only Gnome
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13852/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13852/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13852/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Gnome
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13852
only Gnome
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13749/1
only Gnome
step
goto 76.2,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Gnomeregan Mechanostrider|invehicle |q 13750
only Gnome
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13750/1
only Gnome
step
goto 76.5,19.8
.talk 33335
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13746
..turnin 13747
..turnin 13748
only Gnome
step
goto 76.6,19.8
.talk 33648
..turnin 13749
only Gnome
step
goto 76.5,19.9
.talk 33649
..turnin 13750
..turnin 13852
only Gnome
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13718/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Human, Pandaren
.get 25 Valiant's Seal |q 13714/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Dwarf
.get 25 Valiant's Seal |q 13717/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only NightElf, Worgen
.get 25 Valiant's Seal |q 13715/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Gnome
.get 25 Valiant's Seal |q 13716/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Draenei
step
goto 76.6,19.2
.talk 33225
..turnin 13718
..accept 13699
only Human
step
goto 76.3,19.1
.talk 33592
..turnin 13717
..accept 13725
only NightElf, Worgen
step
goto 76.6,19.5
.talk 33312
..turnin 13714
..accept 13713
only Dwarf
step
goto 76.5,19.8
.talk 33335
..turnin 13715
..accept 13723
only Gnome
step
goto 76.1,19.2
.talk 33593
..turnin 13716
..accept 13724
only Draenei
step
goto 71.6,22.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Stormwind Steed|invehicle |q 13699
only Human
step
goto 71.6,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Darnassian Nightsaber|invehicle |q 13725
only NightElf, Worgen
step
goto 71.8,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Ironforge Ram|invehicle |q 13713
only Dwarf
step
goto 71.9,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Gnomeregan Mechanostrider|invehicle |q 13723
only Gnome
step
goto 71.7,22.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Exodar Elekk|invehicle |q 13724
only Draenei
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13699/1 |only Human, Pandaren
.' Defeat the Argent Valiant |q 13725/1 |only NightElf, Worgen
.' Defeat the Argent Valiant |q 13713/1 |only Dwarf
.' Defeat the Argent Valiant |q 13723/1 |only Gnome
.' Defeat the Argent Valiant |q 13724/1 |only Draenei
step
goto 76.6,19.2
.talk 33225
..turnin 13699
..accept 13702
only Human
step
goto 76.3,19.1
.talk 33592
..turnin 13725
..accept 13735
only NightElf, Worgen
step
goto 76.6,19.5
.talk 33312
..turnin 13713
..accept 13732
only Dwarf
step
goto 76.5,19.8
.talk 33335
..turnin 13723
..accept 13733
only Gnome
step
goto 76.1,19.2
.talk 33593
..turnin 13724
..accept 13734
only Draenei
step
goto 69.7,22.9
.talk 33817
..turnin 13702 |only Human, Pandaren
..turnin 13735 |only NightElf, Worgen
..turnin 13732 |only Dwarf
..turnin 13733 |only Gnome
..turnin 13734 |only Draenei
..accept 13795 |only DeathKnight
..accept 13794 |only !DeathKnight
step
goto 73.8,20.1
.talk 33762
..turnin 13795
only DeathKnight
step
goto 70.0,23.4
.talk 33759
..turnin 13794
only !DeathKnight
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\ATG Champion Rank Dailies - Death Knight Only",[[
author support@zygorguides.com
description You must be a Death Knight to do the quests in this Argent Tournament Grounds guide section.
description Also, you must have completed the Argent Tournament Grounds Valiant Rank Dailies guide section.
daily
step
goto Icecrown,73.8,19.4
.talk 33769
..accept 13791
only DeathKnight
step
goto 73.8,20.1
.talk 33762
..accept 13788 |tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
..accept 13864
only DeathKnight
step
goto 73.6,20.1
.talk 33770
..accept 13793
only DeathKnight
step
goto 71.7,22.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Exodar Elekk |invehicle |q 13793
only Draenei DeathKnight
step
goto 71.8,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Ironforge Ram |invehicle |q 13793
only Dwarf DeathKnight
step
goto 71.6,22.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Stormwind Steed |invehicle |q 13793
only Human DeathKnight
step
goto 71.6,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13793
only NightElf DeathKnight, Worgen DeathKnight
step
goto 71.9,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13793
only Gnome DeathKnight
step
goto 71.6,23.8
.' Talk to the riders on mounts around this area
.' Tell them you are ready to fight!
.' Fight and defeat them|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.get 4 Mark of the Champion |q 13793/1
only DeathKnight
step
'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13793
only DeathKnight
step
goto 64.3,21.4
.from Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
.kill 15 Cult of the Damned member |q 13791/1
only DeathKnight
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13864
only DeathKnight
step
goto 50.1,74.8
.kill 3 Boneguard Commander |q 13864/1 |tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
only DeathKnight
step
goto 48.9,71.4
'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13864
only DeathKnight
step
'You will need to get a group of at least 3 people to do the daily quest in the next step of the guide.  Find a group, it should be pretty easy because there are always other players doing this quest.
only DeathKnight
step
goto 44.1,32.6
.' This is how this fight will happen: |tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do alot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
.kill Chillmaw |q 13788/1 |tip Chillmaw is a big skeletal dragon that flies around this area.
.kill 3 Cultist Bombardier |q 13788/2
only DeathKnight
step
goto 73.8,19.4
.talk 33769
..turnin 13791
only DeathKnight
step
goto 73.8,20.1
.talk 33762
..turnin 13788
..turnin 13864
only DeathKnight
step
goto 73.6,20.1
.talk 33770
..turnin 13793
only DeathKnight
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\ATG Champion Rank Dailies - Non-Death Knight Only",[[
author support@zygorguides.com
description You must NOT be a Death Knight to do the quests in this Argent Tournament Grounds guide section.
description Also, you must have completed the Argent Tournament Grounds Valiant Rank Dailies guide section.
daily
step
goto Icecrown,69.9,23.3
.talk 33771
..accept 13790
only !DeathKnight
step
goto 70.0,23.4
.talk 33759
..accept 13682 |tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
..accept 13861
only !DeathKnight
step
goto 69.9,23.5
.talk 33763
..accept 13789
only !DeathKnight
step
goto 71.7,22.4
.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
.' Click to mount the Stabled Exodar Elekk |invehicle |q 13790
only Draenei Warrior,Draenei Paladin,Draenei Hunter,Draenei Priest,Draenei Shaman,Draenei Mage
step
goto 71.8,22.5
.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
.' Click to mount the Stabled Ironforge Ram |invehicle |q 13790
only Dwarf Warrior,Dwarf Paladin,Dwarf Hunter,Dwarf Rogue,Dwarf Priest,Dwarf Death Knight
step
goto 71.6,22.4
.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
.' Click to mount the Stabled Stormwind Steed |invehicle |q 13790
only Human Warrior,Human Paladin,Human Rogue,Human Priest,Human Death Knight,Human Mage,Human Warlock
step
goto 71.6,22.5
.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
.' Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13790
only NightElf Warrior,NightElf Hunter,NightElf Rogue,NightElf Priest,NightElf Death Knight,NightElf Druid
only Worgen Warrior,Worgen Hunter,Worgen Rogue,Worgen Priest,Worgen Death Knight,Worgen Druid
step
goto 71.9,22.5
.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
.' Click to mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13790
only Gnome Warrior,Gnome Rogue,Gnome Death Knight,Gnome Mage,Gnome Warlock
step
goto 71.6,23.8
.' Talk to the riders on mounts around this area
.' Tell them you are ready to fight!
.' Fight and defeat them|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.get 4 Mark of the Champion |q 13790/1
only !DeathKnight
step
'Click the red arrow on your hotbar to get off your mount |outvehicle |q 13790
only !DeathKnight
step
goto 64.3,21.4
.from Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
.kill 15 Cult of the Damned member |q 13789/1
only !DeathKnight
step
'You will need to get a group of at least 3 people to do the daily quest in the next step of the guide.  Find a group, it should be pretty easy because there are always other players doing this quest.
only !DeathKnight
step
goto 44.1,32.6
.' This is how this fight will happen: |tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do alot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
.kill Chillmaw |q 13682/1 |tip Chillmaw is a big skeletal dragon that flies around this area.
.kill 3 Cultist Bombardier |q 13682/2
only !DeathKnight
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse |invehicle |q 13861
only !DeathKnight
step
goto 50.1,74.8
.kill 3 Boneguard Commander |q 13861/1 |tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
only !DeathKnight
step
goto 48.9,71.4
'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13861
only !DeathKnight
step
goto 69.9,23.3
.talk 33771
..turnin 13790
only !DeathKnight
step
goto 70.0,23.4
.talk 33759
..turnin 13682
..turnin 13861
only !DeathKnight
step
goto 69.9,23.5
.talk 33763
..turnin 13789
only !DeathKnight
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Argent Tournament Grounds Crusader Dailies",[[
author support@zygorguides.com
description In order to be able to complete the quests in this guide section, you must already be Exalted
description with the Ironforge, Stormwind City, Exodar, Darnassus and Gnomeregan.
description Also, you must have already become a Champion with each of those factions,
description using the Crusader Title Guide in the Icecrown section of the Dailies guide.
daily
step
goto Icecrown,69.5,23.1
.talk 34882
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..accept 14105 |or
..accept 14101 |or
..accept 14102 |or
..accept 14104 |or
step
goto 69.5,23.1
.talk 35094
.' You will only be able to accept, and turn in, 1 of these 2 daily quests per day:
..accept 14108 |or
..accept 14107 |or
step
goto 64.2,21.4
.kill Deathspeaker Kharos |q 14105/1 |tip He's standing in a small pit area.
step
goto 51.1,38.4
.' Click Discarded Soul Crystals |tip They look like small blue-glowing crystals laying on the ground around this area.
.collect 6 Discarded Soul Crystal##47035 |n
.' Use your Light-Blessed Relic on Fallen Hero's Spirits |use Light-Blessed Relic##47033
.' Bless 6 Fallen Hero's Spirits |q 14107/1
step
goto Hrothgar's Landing,43.9,24.3
.' Use your Mistcaller's Charm while standing inside this cave, next to the blue floating crystal |use Mistcaller's Charm##47009
.kill Mistcaller Yngvar |q 14102/1
step
goto Hrothgar's Landing,50.7,15.4
.' Use Kvaldir War Horn next to the bonfire |use Kvaldir War Horn##47006
.kill Drottinn Hrothgar |q 14101/1
step
goto Hrothgar's Landing,58.5,31.6
.' Use your Captured Kvaldir Banner on the deck of the Bor's Fury ship |use Captured Kvaldir Banner##47029
.kill Ornolf the Scarred |q 14104/1
step
goto Icecrown,69.8,22.2
.' Click a Stabled Argent Hippogryph to ride it
.' Use your Flaming Spears on North Sea Kraken and Kvaldir Deepcallers while flying |use Flaming Spears##46954
.kill 6 Kvaldir Deepcaller |q 14108/2
.' Hurl Spears at 6 North Sea Kraken |q 14108/1
step
goto 69.5,23.1
.talk 34882
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..turnin 14105
..turnin 14101
..turnin 14102
..turnin 14104
step
goto 69.5,23.1
.talk 35094
.' You will only be able to accept, and turn in, 1 of these 2 daily quests per day:
..turnin 14108
..turnin 14107
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\ATG Black Knight Quest Chain",[[
author support@zygorguides.com
description This Argent Tournament Grounds guide section unlocks a Champion Rank group daily quest.
description We recommend you complete the Argent Tournament Grounds Valiant Rank Dailies guide section,
description and achieve Champion Rank with your race, before doing this quest chain.
description Starting this quest chain when you are already Champion Rank will allow you to do the entire quest chain
description without having to switch back and forth between guide sections, allowing you to get it done much faster and more efficiently.
description You will be unable to get some quests in this quest chain if you are not already at Champion Rank with The Argent Tournament Grounds.
step
goto Icecrown,69.4,23.0
.talk 33417
..accept 13633
step
goto 76.2,19.7
.talk 33970
..home Silver Covenant Pavilion
step
goto Dalaran,40.1,62.8|n
.' Click the Dalaran Portal to Stormwind City |goto Stormwind City |noway |c |q 13633
step
goto Westfall,42.1,69.7
.' Click the Dusty Journal |tip It's a blue open book laying on the floor inside this house.
.get Dusty Journal |q 13633/1
step
goto Icecrown,69.4,23.0
.talk 33417
..turnin 13633
..accept 13641
step
goto Crystalsong Forest,46.5,42.2
.from Unbound Seer##33422+
..get Seer's Crystal |q 13641/1
step
goto Icecrown,69.4,23.0
.talk 33417
..turnin 13641
..accept 13643
step
goto 79.4,23.1
.' Click Sir Wendell's Grave
.' Investigate Sir Wendell Balfour's Death |q 13643/1
step
goto 79.6,23.6
.' Click Lorien's Grave
.' Investigate Lorien Sunblaze's Death |q 13643/2
step
goto 79.6,22.8
.' Click Connall's Grave
.' Investigate Connall Irongrip's Death |q 13643/3
step
goto 69.4,23.0
.talk 33417
..turnin 13643
..accept 13654
step
goto Crystalsong Forest,39.9,58.8
.from Skeletal Woodcutter##33499+
.collect 1 Large Femur##45080 |q 13654
step
goto 38.3,59.5
.' Use your Large Femur on Maloric while standing behind him |use Large Femur##45080
.' Loot Maloric
.get Murderer's Toolkit |q 13654/1
step
goto Icecrown,69.4,23.0
.talk 33417
..turnin 13654
..accept 13663
step
goto 77.8,21.6
.' Use your Enchanted Bridle next to the Black Knight's Gryphon |use Enchanted Bridle##45083
.' Take the Black Knight's Gryphon |q 13663/1 |tip He will take you to an island.
step
goto 54.1,8.6
.' Click the Stolen Tournament Invitation |tip It looks like a flat scroll laying on top of a wooden barrel in this tiny house.
.get Stolen Tournament Invitation |q 13663/2
.' Click the Black Knight's Orders |tip It looks like a rolled up scroll laying on a small wooden crate in this tiny house.
.get Black Knight's Orders |q 13663/3
step
goto 69.4,23.0
.talk 33417
..turnin 13663
..accept 13664
step
goto 72.3,22.6
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Argent Warhorse|invehicle |q 13664
step
goto 71.3,23.2
.talk 33522
..'Ask him to summon the Black Knight.
.' The Black Knight will run up to you on his gryphon
.' Fight the Black Knight |tip This is a really easy fight, but it has 2 phases.  For the first phase, use your abilities to fight him in jousting.  After you've almost killed him, he will get off his gryphon and challenge you to fight him in hand-to-hand combat.  You will automatically dismount your horse, so don't click the red arrow button.  Once you are dismounted from your horse, make sure to equip your weapon again, so you can fight him.  Then, just fight him like a normal mob and kill him.
.kill The Black Knight |q 13664/1
step
goto 69.4,23.0
.talk 33417
..turnin 13664
..accept 14016
step
goto 79.5,23.3
.' Stand next to the tombstone that has a purple and pink swirl around it
.from Cult Assassin##35127|tip You must stay near the tombstone for it to complete
.' Investigate the Black Knight's Grave |q 14016/1
step
goto 69.4,23.0
.talk 33417
..turnin 14016
..accept 14017
step
goto 61.5,22.6
.from Doctor Kohler##35113
.get Doctor Kohler's Orders |q 14017/1
step
goto 69.4,23.0
.talk 33417
..turnin 14017
step
'Congratulations! You've reached the end of this section.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\The Skybreaker",[[
author support@zygorguides.com
daily
step
label	hub
map Icecrown
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: 57.4,37.2
.' Point 2: 64.4,55.4
.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 30344
..accept 13333
step
'On the Skybreaker airship:
.talk 29799
..accept 13289
..accept 13323
..accept 13344
step
'On the Skybreaker airship:
.talk 31259
..accept 13300
step
'On the Skybreaker airship:
.talk 32302
..accept 13336
step
'On the Skybreaker airship:
.talk 30345
..accept 13292
..accept 13322
step
goto Icecrown,55.2,29.1
.' Use your Diluted Cult Tonic|use Diluted Cult Tonic##44307|tip This gives you a buff that allows you to collect Tainted Essences from dead cultists in Aldur'thar.  If you lose the buff, use this again.
.from Void Summoner##32259+, Shadow Channeler##32262+
.collect 10 Tainted Essence##44301|n
.' Use a Tainted Essence to combine them|use Tainted Essence##44301
..collect 1 Writhing Mass##44304|q 13322
.' Use your Rod of Siphening on the Enslaved Minion corpses|use Rod of Siphening##44433
.collect 5 Dark Matter##44434|q 13344
step
goto 53.8,33.6
.' Click the Summoning Stone
.' Summon the Dark Messenger |q 13344/1
step
goto 49.1,34.2
.' Use your Writhing Mass next to the big cauldron|use Writhing Mass##44304
.' Banish the Writhing Mass |q 13322/1
step
goto 53.9,46.1
.from Bitter Initiate##32238
.collect 3 Orb of Illusion##44246 |q 13323
step
goto 54.3,45.6
.' Use your Orbs of Illusion on Dark Subjugators|use Orb of Illusion##44246
.' Drag and drop 3 Dark Subjugators |q 13323/1
step
goto 43.3,58.2
.' Use the Dart Gun on Orgrim's Hammer Scouts|use Dart Gun##44222|tip They are flying up in the air on purple dragons.
.' When they hit the ground, fly down and loot their bodies|tip There are elites and grouped mobs on the ground.
..get 6 Orgrim's Hammer Dispatch##44220+|q 13333/1
step
goto 56.0,57.6
.' Talk to Saronite Mine Slaves
..' Tell them they're free, get out of here!
.' Rescue 10 Saronite Mine Slaves |q 13300/1
step
goto 57.3,57.0
.from Ymirjar Element Shaper##31267+, Blight Falconer##31262+, Ymirheim Chosen Warrior##31258+
.kill 20 Ymirheim Vrykul|q 13336/1
step
goto 69.8,62.9
.from Hulking Abomination##31140+
.collect Chilled Abomination Guts|n
.' Use your Abomination Reanimation Kit|use Abomination Reanimation Kit##43968
.' With your control Abomination, go to 69.1,61.6|n
.' Use your Burst at the Seams ability to explode the mobs around this area|petaction Burst at the Seams
.' Keep repeating this process until you:
.' Explode 15 Icy Ghouls |q 13289/1
.' Explode 15 Vicious Geists |q 13289/2
.' Explode 15 Risen Alliance Soldiers |q 13289/3
step
goto 69.9,64.3
.' Click Abandoned Armor|tip They look like metal armor chestpieces laying on the ground around this area.
.collect 3 Abandoned Armor##43616|q 13292
.' Click Abandoned Helm|tip They look like metal helmets laying on the ground around this area.
.collect 3 Abandoned Helm##43610|q 13292
.' Click Piles of Bones|tip They look like small piles of bones laying on the ground around this area.
.collect 3 Pile of Bones##43609|q 13292
step
goto 68.8,67.5
.' Use Smuggled Solution 3 times|use Smuggled Solution##44048
.' Frostbrood Skytalons Destroyed |q 13292/1
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: 57.4,37.2
.' Point 2: 64.4,55.4
.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 30344
..turnin 13333
step
'On the Skybreaker airship:
.talk 29799
..turnin 13289
..turnin 13323
..turnin 13344
step
'On the Skybreaker airship:
.talk 31259
..turnin 13300
step
'On the Skybreaker airship:
.talk 32302
..turnin 13336
step
'On the Skybreaker airship:
.talk 30345
..turnin 13292
..turnin 13322
step
'You have finished these quests today. Click here to go to the beginning of this guide. |confirm
|next hub
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Ymirheim and The Valley of Lost Hope",[[
author support@zygorguides.com
daily
step
goto Icecrown,57.0,62.6
.talk 31776
..accept 13280
step
goto 57.0,62.6
.' Click Geargrinder's Jumpbot to get in the robot |invehicle |q 13280
step
goto 54.9,60.1
.' Use your Jump Jets ability to jump up the mountain to this spot|petaction Jump Jets |tip This spot is the peak of the mountain.
.' Use your Plant Alliance Battle Standard ability next to the Ymirheim Peak Skulls |petaction Plant Alliance Battle Standard |tip The Ymirheim Peak Skulls look like a big pile of skulls at the peak of the mountain, next to 2 blue flame torch lights.
.' Plant the Alliance Battle Standard |q 13280/1
step
'Click the red arrow button on your vehicle hotbar to get out of the robot |script VehicleExit() |outvehicle |c
step
goto 57.0,62.5
.talk 31776
..turnin 13280
step
goto Icecrown,62.6,51.3
.talk 31808
..accept 13309
step
goto Icecrown,62.5,51.1
.talk 31737
..accept 13284
step
'Follow the Alliance troops up the mountain and help them fight
.'Escort the Alliance troops into Ymirheim |q 13284/1 |tip At least 4 Alliance troops must survive.
step
goto 62.6,51.3
.talk 31808
..turnin 13284
step
goto 62.6,50.9
.' Click the Skybreaker Suppression Turret to control the gun on the airplane|invehicle
step
'You will fly off in the airplane:
.' Use your Suppression Charge ability on the cannons on the ground to stun them as you fly around|petaction Suppression Charge
.' Drop 4 Skybreaker Infiltrators |q 13309/1
step
goto 62.6,51.3
.talk 31808
..turnin 13309
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Shadowvault Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests in the Shadowvault region of Icecrown.
daily
step
goto Icecrown,42.8,24.9
.talk 29804
..accept 12995
step
goto 43.6,25.1
.talk 30074
..accept 13069
step
goto 43.1,25.2
.talk 30216
..accept 13071
step
goto 33.0,23.9
.' Click a Jotunheim Rapid-Fire Harpoon to control it |invehicle |q 13069
step
'Use your Jotunheim Rapid-Fire Harpoon abilities to shoot at the Jotunheim Proto-Drakes that fly around this area
.' Shoot down 15 Jotunheim Proto-Drakes & Their Riders |q 13069/1
step
.' Click the red arrow on your hotbar to stop controlling the Jotunheim Rapid-Fire Harpoon |outvehicle |q 13069
step
goto 33.0,27.0
.from Njorndar Spear-Sister##30243+, Jotunheim Warrior##29880+, Valhalas Vargul##30250+
.' Use your Ebon Blade Banner on the Jotunheim vrykul corpses|use Ebon Blade Banner##42480
.' Plant 15 Ebon Blade Banners near vrykul corpses |q 12995/1
step
goto 27.2,39.1
.' Click a Njorndar Proto-Drake to ride it|invehicle |q 13071
step
goto 28.4,37.6
.' Use your Proto-Drake abilities near the buildings around this area to:
.' Burn 8 Vrykul Buildings |q 13071/1
step
'Click the red arrow on your vehicle hot bar to stop riding the Njorndar Proto-Drake|script VehicleExit()|outvehicle|c |q 13071
step
goto 42.8,24.9
.talk 29804
..turnin 12995
step
goto 43.6,25.1
.talk 30074
..turnin 13069
step
goto 43.1,25.2
.talk 30216
..turnin 13071
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Death's Rise Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests in the Death's Rise region of Icecrown.
daily
step
goto Icecrown,19.7,48.4
.talk 29396
..accept 12813
step
goto 19.9,48.3
.talk 29456
..accept 12838
step
goto 19.6,47.8
.talk 29405
..accept 12815
step
goto 9.6,44.3
.from Onslaught Harbor Guard##29330+, Onslaught Paladin##29329+, Onslaught Raven Bishop##29338, Onslaught Gryphon Rider##29333+
.collect Scarlet Onslaught Trunk Key##40652+|n
.' Use Darkmender's Tincture on the Onslaught mobs' corpses|use Darkmender's Tincture##40587
.' Transform 10 Scarlet Onslaught Corpses |q 12813/1
.' Click Scarlet Onslaught Trunks|tip They look like small wooden boxes on the ground around this area.
.get 5 Onslaught Intel Documents|q 12838/1
step
'Use your Bone Gryphon in your bags while in Onslaught Harbor|use Bone Gryphon##40600
.' Ride a Bone Gryphon|invehicle|q 12815
step
goto 10.2,41.9
.' Use your Bone Gryphon abilities to:
.kill 10 Onslaught Gryphon Rider|q 12815/1
step
'Get to a safe place and click the red arrow on your vehicle hot bar to stop riding the Bone Gryphon|script VehicleExit()|outvehicle|c |q 12815
step
goto Icecrown,19.7,48.4
.talk 29396
..turnin 12813
step
goto 19.9,48.3
.talk 29456
..turnin 12838
step
goto 19.6,47.8
.talk 29405
..turnin 12815
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\The Silver Covenant Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests
description for The Silver Covenant faction in the Argent Tournament Grounds area of Icecrown.
daily
step
goto Icecrown,76.3,19.6
.talk 34880
.' You will only be able to accept, and turn in, 2 of these 5 daily quests per day:
..accept 14074 |or 2
..accept 14152 |or 2
..accept 14140 |or 2
..accept 14077 |or 2
..accept 14096 |or 2
step
goto 76.2,19.6
.talk 34912
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 14076 |or
..accept 14090 |or
..accept 14112 |or
step
goto 64.0,21.5
.from Dark Ritualist##34734+, Dark Zealot##34728+
.collect 4 Black Cage Key##46895 |n
.' Click Black Cages |tip They look like big sqaure cages around this area.
.' Rescue 4 Captive Aspirants |q 14096/2
step
goto 64.0,21.5
.from Dark Ritualist##34734+, Dark Zealot##34728+
.collect 1 Black Cage Key##46895 |q 14096
step
goto 60.8,23.2
.' Click the Black Cage |tip It looks like big sqaure cage up on this platform.
.' Rescue Kul the Reckless |q 14096/1
step
goto 67.0,8.1
.' Click a Bucket of Fresh Chum |tip They looks like wooden buckets on the deck of this ship.
.collect 6 Fresh Chum##47036 |q 14112
step
goto 66.8,9.5
.' Use the Fresh Chum in your bags |use Fresh Chum##47036
.from North Sea Sharks|tip They spawn underwater around this area when you use the Fresh Chum.
.get 3 North Sea Shark Meat |q 14112/1
step
goto Hrothgar's Landing,50.4,49.3
.kill 8 Kvaldir Berserker |q 14152/1
.kill 3 Kvaldir Harpooner |q 14152/2
step
goto 43.3,27.5
.' Click Stolen Tallstrider Legs |tip They look like chicken legs laying on objects and on the ground around this area.
.from Kvaldir Mist Binder##34839+, Kvaldir Reaver##34838+
.get 10 Stolen Tallstrider Leg |q 14074/1
step
goto 46.5,32.8
.from Kvaldir Mist Binder##34839+, Kvaldir Reaver##34838+
.' Kill 10 Kvaldir |q 14080/1
step
goto 46.5,32.8
.' Use your Confessor's Prayer Book on Slain Tualiq Villagers |use Confessor's Prayer Book##46870 |tip They look like dead walrus men corpses around this area.
.' Administer 8 Last Rites |q 14077/1
step
goto The Storm Peaks,40.5,53.3
.' Use your Earthshaker Drum next to the piles of snow on the ground |use Earthshaker Drum##46893
.from Deep Jormungar##34920 |tip They spawn after using your Earthshaker Drum next to the piles of snow.
.get 4 Jormungar Egg Sac |q 14076/1
step
goto 42.8,81.3
.' Use your Weighted Net on Snowblind Followers |use Weighted Net##46885
.' Capture 8 Snowblind Followers |q 14090/1
step
goto Icecrown,76.3,19.6
.talk 34880
.' You will only be able to accept, and turn in, 2 of these 5 daily quests per day:
..turnin 14074
..turnin 14152
..turnin 14140
..turnin 14077
..turnin 14096
step
goto 76.2,19.6
.talk 34912
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 14076
..turnin 14090
..turnin 14112
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Sholazar Basin\\Sholazar Basin Pre-Quests",[[
author support@zygorguides.com
description This guide section contains the pre-quests to unlock the ability to complete daily quests
description for The Oracles and Frenzyheart Tribe factions in Sholazar Basin.
step
goto Sholazar Basin,50.5,62.1
.talk 28568
..accept 12654
step
goto 50.5,77.3
.from Pitch##28097
.get Pitch's Remains |q 12654/1
step
goto 50.5,76.6
.talk 28095
..accept 12528
step
goto 55,69.1
.talk 28082
..turnin 12528
..accept 12529
step
'Talk to Goregek the Gorilla Hunter who is following you
..accept 12530
step
goto 57.5,73.3
.kill 8 Hardknuckle Forager |q 12529/1
step
goto 61.1,71.7
.kill 6 Hardknuckle Charger |q 12529/2
step
goto 66.9,73.2
.' Use your Softknuckle Poker on Softknuckles |use Softknuckle Poker##38467 |tip Softknuckles are baby gorillas.
.' A Hardknuckle Matriarch will spawn eventually
.kill 1 Hardknuckle Matriarch |q 12530/1
step
goto 55,69.1
.talk 28082
..turnin 12529
..turnin 12530
..accept 12533
step
goto 55.5,69.7
.talk 28138
..accept 12534
step
goto 59.6,75.8
.kill 6 Sapphire Hive Wasp |q 12533/1
.kill 9 Sapphire Hive Drone |q 12533/2
step
goto 59.4,79.1|n
.' The path down to The Sapphire Queen starts here |goto 59.4,79.1,0.3 |noway |c
step
'Follow the path down to 57.1,79.3 |goto 57.1,79.3
.from Sapphire Hive Queen##28087
.get Stinger of the Sapphire Queen |q 12534/1
step
'Go outside to 55.0,69.1|goto 55.0,69.1
.talk 28082
..turnin 12533
..turnin 12534
step
goto 55.5,69.7
.talk 28138
..accept 12532
step
'They are all around the village
.' Click the Chicken Escapees
.get 12 Captured Chicken |q 12532/1
step
goto 55.5,69.7
.talk 28138
..turnin 12532
..accept 12531
step
goto 55,69.1
.talk 28082
..accept 12535
step
goto 56.6,84.6
.' Click the Skyreach Crystal Formations |tip They look like white crystal cluster on the ground along the river bank.
.get 8 Skyreach Crystal Cluster |q 12535/1
step
goto 49.8,85
.from Serfex the Reaver##28083
.get Claw of Serfex |q 12531/1
step
goto 55,69.1
.talk 28082
..turnin 12531
..turnin 12535
..accept 12536
step
goto 57.3,68.4
.talk 28298
..'Tell him let's do this
.' Travel to Mistwhisper Refuge |q 12536/1
step
'When you jump off the crocodile:
.talk 28668
..turnin 12536
..accept 12537
..accept 12538
step
goto 45.4,37.2
.' Use your Skyreach Crystal Clusters next to the stone monument |use Skyreach Crystal Clusters##38510 |tip It's a tall rectangle stone monument.
.' Click the Arranged Crystal Formation that appears
.' Sabotage the Mistwhisper Weather Shrine |q 12537/1
step
goto 45.5,39.8
.' Kill 12 Mistwhisper Gorlocs |q 12538/1
step
'Use Zepik's Hunting Horn if Zepik is not standing next to you: |use Zepik's Hunting Horn##38512
.talk 28216
..turnin 12537
..turnin 12538
..accept 12539
step
goto 55,69.1
.talk 28082
..turnin 12539
..accept 12540
step
goto 55.7,64.9
.talk 28217
..' Pull it to its feet
.' Kill the crocodile that spawns
.' Locate the Injured Rainspeaker Oracle |q 12540/1
step
goto 55.7,64.9
.talk 28217
..turnin 12540
..accept 12570
..'Tell him you are ready to travel to his village now.
.' Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1
step
goto 54.6,56.3
.talk 28027
..turnin 12570
..accept 12571
step
'Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
.talk 28120
..accept 12572
step
goto 57.5,52.4
.kill 1 Venomtip |q 12571/2 |tip He walks back and forth on this small path near the waterfall.
step
goto 52.4,53.2
'Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
.' Stand on top of the twinkles of light on the ground around this area
.' Lafoo will dig up the treasure
.' Click the random items that appear on the ground
.get 6 Shiny Treasures |q 12572/1
.kill 10 Emperor Cobra |q 12571/1
step
goto 54.6,56.3
.talk 28027
..turnin 12571
..accept 12573
..turnin 12572
step
goto 51.3,64.6
.talk 28315
..'Tell him you brought an offering
.' Extend the Peace Offering to Shaman Vekjik |q 12573/1
step
goto 50.5,62.1
.talk 28568
..turnin 12654
step
goto 54.6,56.3
.talk 28027
..turnin 12573
..accept 12574
step
goto 42.1,38.6
.talk 28114
..turnin 12574
..accept 12575
..accept 12576
step
goto 40.4,26.4
.kill 8 Frenzyheart Spearbearer |q 12576/1
.kill 6 Frenzyheart Scavenger |q 12576/2
step
goto 41.3,19.8
.kill 1 Warlord Tartek |q 12575/1 |tip He comes walking up on a red dragon.
step
goto 41.6,19.5
.' Click the Mistwhisper Treasure |tip It's a yellow glowing floating orb, hovering over a tree stump altar.
.get Mistwhisper Treasure |q 12575/2
step
goto 42.1,38.6
.talk 28114
..turnin 12575
..turnin 12576
..accept 12577
step
goto 54.6,56.3
.talk 28027
..turnin 12577
..accept 12578
step
goto 75.3,54.1
.' Travel to Mosswalker Village |q 12578/1
step
'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
.talk 28122
..turnin 12578
..accept 12580
..accept 12579
step
goto 75.4,52.4
.talk 28113
.' Rescue 6 Mosswalker Victims |q 12580/1
step
'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
.talk 28122
..turnin 12580
step
goto 68.9,54.6
.' Click Lifeblood Shards on the ground |tip They look like small red crystals on the ground around this area.
.get 10 Lifeblood Shard |q 12579/1
step
goto 54.5,56.6
'You can also use Moodle's Stress Ball if you have it in your bags:|use Moodle's Stress Ball##38624
.talk 28122
..turnin 12579
..accept 12581
step
goto 70.8,58.7
.' Enter the cave here
.' Follow the path inside the cave up to [72.2,57.3]
.kill Artruis the Heartless |q 12581/1 |tip Kill either Zepik the Gorloc Hunter or Jaloot that spawn during the fight.  Killing Zepik the Gorloc Hunter will make you allied with The Oracles.  Killing Jaloot will make you allied with the Frenzyheart Tribe.
.' Click Artruis's Phylactery that spawns after the fight
..turnin 12581
.' If you kill Zepik the Gorloc Hunter:
..talk 28668
...accept 12582
...accept 12692
.' If you kill Jaloot:
..talk 28667
...accept 12689
...accept 12695
step
goto 54.6,56.4
.talk 28027
..turnin 12695
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Sholazar Basin\\Frenzyheart Tribe Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests for the Frenzyheart Tribe faction in Sholazar Basin.
achieveid 950
step
'Proceeding to Prequests |next |condition rep('Frenzyheart Tribe')<=Friendly |only if rep('Frenzyheart Tribe')<=Friendly
'Proceeding to Dailies |next "daily" |condition rep('Frenzyheart Tribe')>=Friendly |only if rep('Frenzyheart Tribe')>=Friendly
step
#include "A_Frenzyheart_PreQuests"
step
label daily
#include "A_Frenzyheart_Dailies"
step
.' Click here to go back to the start of the dailies. Note that this will not actually reset the daily quests. |confirm
|next "daily"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Sholazar Basin\\The Oracles Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests for the The Oracles faction in Sholazar Basin.
daily
step
'Proceeding to Prequests |next |condition rep('The Oracles')<=Friendly |only if rep('The Oracles')<=Friendly
'Proceeding to Dailies |next "daily" |condition rep('The Oracles')>=Friendly |only if rep('The Oracles')>=Friendly
step
#include "A_Oracles_PreQuests"
step
label daily
#include "A_Oracles_Dailies"
step
'After you complete the dailies above, you will need to repeat them in order to attain Exalted.
.' Click here to go back to the start of the dailies guide. |confirm |next "daily"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\The Storm Peaks\\Dun Niffelem (The Sons of Hodir) Pre-quest and Dailies",[[
author support@zygorguides.com
description This guide section contains the quest path for the entire The Storm Peaks zone,
description which includes the pre-quests to unlock the daily quests in the Brunnhildar Village,
description Dun Niffelem (The Sons of Hodir), Frosthold, and K3 regions of The Storm Peaks.
step
'Proceeding to next step |next |only if rep('The Sons of Hodir')<=Neutral
'Proceeding to Friendly |next friendly |only if rep('The Sons of Hodir')==Friendly
'Proceeding to Honored |next honored |only if rep('The Sons of Hodir')==Honored
'Proceeding to Revered |next revered |only if rep('The Sons of Hodir')>=Revered
step
#include "A_Sons_Hodir_Pre-Quests"
step
label	hub
'Proceeding to Friendly Dailies |next friendly |only if rep('The Sons of Hodir')<=Friendly
'Proceeding to Honored Dailies |next honored |only if rep('The Sons of Hodir')==Honored
'Proceeding to Revered Dailies |next revered |only if rep('The Sons of Hodir')>=Revered
step
label	friendly
goto The Storm Peaks,64.2,59.2
.click Hodir's Helm##8221
..accept 13006
step
goto 63.2,62.9
.click Fjorn's Anvil##7481
..accept 12981
step
goto 64.1,65.1
.click Hodir's Horn##7352
..accept 12977
step
goto 55.6,63.4
.from Viscous Oil##30325+
.get 5 Viscous Oil |q 13006/1
step
goto 64.2,59.2
.click Hodir's Helm##8221
..turnin 13006
step
goto 69.7,60.2
.from Brittle Revenant##30160+
.collect 6 Essence of Ice##42246 |q 12981
step
goto 75.3,62.8
.' Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246 |tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
.click Frozen Iron Scrap##8231+
.get 6 Frozen Iron Scrap |q 12981/1
step
goto 72.1,51.8
.from Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
.' Use Hodir's Horn on their corpses |use Hodir's Horn##42164
.' Free 5 Niffelem Forefathers |q 12977/1
.' Free 5 Restless Frostborn |q 12977/2
step
goto 67.0,45.1
.' If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
.from Scion of Storm##30184+ |tip They are air elementals all around inside this big cave.
.' You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
.collect Relic of Ulduar##42780+|n |tip You turn these in in multiples of 10.
|confirm
step
goto 63.2,62.9
.click Fjorn's Anvil##7481
..turnin 12981
step
goto 64.1,65.1
.' Click Hodir's Horn##7352
..turnin 12977
step
goto 66.2,61.4
.talk 32540
..accept 13559 |tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
|next hub
step
label	honored
goto The Storm Peaks,64.8,59.1
.talk 30252
..accept 13001
step
goto 59.0,61.2
.from Stoic Mammoth##30260+
..get 3 Stoic Mammoth Hide |q 13001/2
step
'The entrance to the cave starts here |goto 55.9,64.2,0.5 |c |q 13001
step
goto 54.7,60.8
.click Everfrost Shard##8247+
.get 3 Everfrost Shard |q 13001/1
step
'Leave the cave |goto 55.9,64.2,0.5 |c |q 13001
step
goto 64.8,59.1
.talk 30252
..turnin 13001 |tip This quest will unlock the Thrusting Hodir's Spear daily quest.
step
goto The Storm Peaks,63.5,59.8
.talk 30294
..accept 12994
step
goto 64.2,59.2
.' Click Hodir's Helm |tip It's a huge helm on the tip of this ice spike.
..accept 13006
step
goto 65.1,60.8
.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
..accept 13003
step
goto 63.2,62.9
.' Click Fjorn's Anvil |tip It's a huge anvil on an ice platform.
..accept 12981
step
goto 64.1,65.1
.' Click Hodir's Horn |tip It's a huge bone war horn.
..accept 12977
step
goto 57.2,64.0
.' Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
.' Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
.' Repeat this process 2 more times
.' Kill 3 Stormforged Infiltrators |q 12994/1
step
goto 55.6,63.4
.from Viscous Oil##30325+ |tip They look like slimes inside this cave.
.get 5 Viscous Oil |q 13006/1
step
goto 56.6,64.3
.' Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
.' While fighting the Wild Wyrm, there will be 2 phases to the fight.  Phase 1: |tip In phase 1 of the fight, you will be underneath the Wild Wyrm.  Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
.' In phase 2 of the fight with the Wild Wyrm, the strategy changes: |tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
.' Kill the Wild Wyrm |q 13003/1
step
goto 63.5,59.8
.talk 30294
..turnin 12994
step
goto 64.2,59.2
.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
..turnin 13006
step
goto 65.1,60.8
.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
..turnin 13003
step
goto 69.7,60.2
.from Brittle Revenant##30160+
.collect 6 Essence of Ice##42246 |q 12981
step
goto 75.3,62.8
.' Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246 |tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
.' Click the Frozen Iron Scraps
.get 6 Frozen Iron Scrap |q 12981/1
step
goto 72.1,51.8
.from Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
.' Use Hodir's Horn on their corpses |use Hodir's Horn##42164
.' Free 5 Niffelem Forefathers |q 12977/1
.' Free 5 Restless Frostborn |q 12977/2
step
goto 67.0,45.1
.' If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
.from Scion of Storm##30184+ |tip They are air elementals all around inside this big cave.
.' You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
.collect Relic of Ulduar##42780+|n |tip You turn these in in multiples of 10.
|confirm
step
goto 63.2,62.9
.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
..turnin 12981
step
goto 64.1,65.1
.' Click Hodir's Horn|tip It's a huge bone war horn.
..turnin 12977
step
goto 66.2,61.4
.talk 32540
..accept 13559 |tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
|next hub
step
label	revered
goto The Storm Peaks,63.5,59.8
.talk 30294
..accept 12994
step
goto 64.2,59.2
.' Click Hodir's Helm |tip It's a huge helm on the tip of this ice spike.
..accept 13006
step
goto 65.1,60.8
.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
..accept 13003
step
goto 67.6,59.9
.' Click Arngrim the Insatiable
..accept 13046
step
goto 63.2,62.9
.' Click Fjorn's Anvil |tip It's a huge anvil on an ice platform.
..accept 12981
step
goto 64.1,65.1
.' Click Hodir's Horn |tip It's a huge bone war horn.
..accept 12977
step
goto 57.2,64.0
.' Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
.' Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
.' Repeat this process 2 more times
.' Kill 3 Stormforged Infiltrators |q 12994/1
step
goto 56.4,65.0
.' Use Arngrim's Tooth on Roaming Jormungars |use Arngrim's Tooth##42774
.' Fight Disembodied Jormungars until Arngrim the Insatiable comes to eat them
.' Feed Arngrim's Spirit 5 Times |q 13046/1
step
goto 55.6,63.4
.from Viscous Oil##30325+ |tip They look like slimes inside this cave.
.get 5 Viscous Oil |q 13006/1
step
goto 56.6,64.3
.' Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
.' While fighting the Wild Wyrm, there will be 2 phases to the fight.  Phase 1: |tip In phase 1 of the fight, you will be underneath the Wild Wyrm.  Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
.' In phase 2 of the fight with the Wild Wyrm, the strategy changes: |tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
.' Kill the Wild Wyrm |q 13003/1
step
goto 63.5,59.8
.talk 30294
..turnin 12994
step
goto 64.2,59.2
.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
..turnin 13006
step
goto 65.1,60.8
.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
..turnin 13003
step
goto 67.6,59.9
.' Click Arngrim the Insatiable
..turnin 13046
step
goto 69.7,60.2
.from Brittle Revenant##30160+
.collect 6 Essence of Ice##42246 |q 12981
step
goto 75.3,62.8
.' Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246 |tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
.' Click the Frozen Iron Scraps
.get 6 Frozen Iron Scrap |q 12981/1
step
goto 72.1,51.8
.from Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
.' Use Hodir's Horn on their corpses |use Hodir's Horn##42164
.' Free 5 Niffelem Forefathers |q 12977/1
.' Free 5 Restless Frostborn |q 12977/2
step
goto 67.0,45.1
.' If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
.from Scion of Storm##30184+ |tip They are air elementals all around inside this big cave.
.' You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
.collect Relic of Ulduar##42780+|n |tip You turn these in in multiples of 10.
|confirm
step
goto 63.2,62.9
.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
..turnin 12981
step
goto 64.1,65.1
.' Click Hodir's Horn|tip It's a huge bone war horn.
..turnin 12977
step
goto 66.2,61.4
.talk 32540
..accept 13559 |n
|tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
.' Click here to return to the beginning of the Dailies |confirm
|next hub |only if rep('The Sons of Hodir')<=Exalted
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\The Storm Peaks\\Brunnhildar, K-3 and Frosthold Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests in the Brunnhildar Village region of The Storm Peaks.
daily
step
label	hub
goto The Storm Peaks,50.9,65.6
.talk 29796
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..accept 13424 |or
..accept 13423 |or
..accept 13422 |or
..accept 13425 |or
step
goto 49.4,67.6
.' Use your Reins of the Icemaw Matriarch inside The Pit of the Fang to ride a bear |use Reins of the Icemaw Matriarch##42499
.' Use the abilities on your hotbar to fight Hyldsmeet Warbears
.kill 6 Hyldsmeet Warbear|q 13424/1
step
goto 50.4,67.5
.talk 30012
.kill 6 Victorious Challenger|q 13423/1
step
'The entrance to the Forlorn Mine is here |goto 47.1,68.5,0.5 |c |q 13422
step
goto 44.9,70.1
.' Use your Disciplining Rod on Exhausted Vrykul|use Disciplining Rod##42837|tip They are sitting on the ground inside these side tunnels inside this mine.
.' Discipline 6 Exhausted Vrykul |q 13422/1
step
'Leave the mine |goto 47.1,68.5,0.5 |c |q 13422
step
goto 27.3,63.7
.from Valkyrion Aspirant##29569+
.collect 6 Vial of Frost Oil##41612 |q 13425
step
goto 23.7,58.3
.' Use your Vials of Frost Oil on the Plagued Proto-Drake Eggs |use Vial of Frost Oil##41612 |tip They look like brown spiked eggs sitting in the yellow water around this area.
.' Try to get 6 at a time
.' Destroy 30 Plagued Proto-Drake Eggs |q 13425/1
step
goto 50.9,65.6
.talk 29796
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..turnin 13424
..turnin 13423
..turnin 13422
..turnin 13425
step
goto The Storm Peaks,29.8,75.7
.talk 29732
..accept 12869
step
goto 44.6,59.8
.' Use the abilities on your hotbar to fight Stormpeak Wyrms flying in the air around this area
.kill 16 Stormpeak Wyrm|q 12869/1
step
goto 29.8,75.7
.' Click the red arrow on your hotbar to get off the eagle|script VehicleExit()
.talk 29732
..turnin 12869
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
'You have reached the end of the dailies guide. Click here to return to the beginning of the guide. |confirm
|next hub
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Zul'Drak\\The Argent Stand Dailies and Pre-Quests",[[
author support@zygorguides.com
description This guide section contains the pre-quests and dailies for Argent Stand.
#include "A_Argent_Tourney_PreQ"
step
label	daily
'The Zul'Drak daily quests are timed, so having an epic flying mount will help you get them done a lot faster and easier.  You will receive 650 extra Argent Crusade reputation and 18 extra gold by completing these quests within 20 minutes.
|confirm
step
goto Zul'Drak,40.3,66.6
.talk 28039
..accept 12587 |or
..accept 12563 |or
..accept 12501 |or
step
goto 35.0,52.1
.talk 28205
..accept 12541
.' Tell Alchemist Finklestein you are ready to begin
.' Some of the items he asks you for can be found in both of the rooms on either side of you.  Those items are: |tip Hairy Herring Heads, Icecrown Bottled Water, Knotroot, Muddy Mire Maggots, Pickled Eagle Egg, Pulverized Gargoyle Teeth, Putrid Pirate Perspiration, Seasoned Cider Slider, Speckled Guano, Spiky Spider Eggs, Withered Bat Wings
.' Here are the items that are only found in the ROOM ON THE LEFT: |tip Abomination Guts, Blight Crystal, Chilled Serpent Mucus, Crushed Basilisk Crystals, Frozen Spider Ichor, Prismatic Mojo, Raptor Claw
.' Here are the items that are only found in the ROOM ON THE RIGHT: |tip Amberseed, Ancient Ectoplasm, Crystallized Hogsnot, Ghoul Drool, Trollbane, Shrunken Dragon's Claw, Wasp's Wings
.' Collect the item's he calls for and bring them back to him and click Finklestein's Cauldron to add the items he needs
.' Create the Truth Serum |q 12541/1 |tip This quest will be MUCH easier and faster once you start to remember where each item is.
step
goto 35.0,52.1
.talk 28205
..turnin 12541
step
goto 48.1,63.9
.talk 28043
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 12594 |or
..accept 12585 |or
..accept 12519 |or
step
goto 45.4,61.2
.from Mossy Rampager##28323+
.' Kill 7 Mossy Rampagers |q 12594/1
step
goto 46.0,61.8
.' Click Dead Thornwoods|tip They look like curved thorny roots coming out of the water around this area.
.get 20 Dead Thornwood|q 12585/1
step
goto 45.6,62.7
.' Click Drakkari Corpses |tip They look like dead blue trolls laying on the ground around this area.
.get 7 Drakkari Medallion |q 12519/1
step
goto 48.1,63.9
.talk 28043
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 12594
..turnin 12585
..turnin 12519
step
goto 58.1,72.4
.talk 28044
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 12568 |or
..accept 12509 |or
..accept 12591 |or
step
goto 56.0,70.8
.' Use your Incinerating Oil on Defeated Argent Footmen |use Incinerating Oil##38556 |tip They look like dead soldiers laying on the ground around this area.
.' Incinerate 5 Argent Footman Corpses |q 12568/1
step
goto 51.6,75.1
.talk 28090
..' Tell them to get out of there
.' Restore 5 Recruit's Courage |q 12509/1
step
goto 53.4,68.7
.' Use your High Impact Grenade next to Nerubian Tunnels|use High Impact Grenade##38574|tip They look like squarish pyramid dirt mounds around this area.
.' Seal 5 Nerubian Tunnels |q 12591/1
step
goto 58.1,72.4
.talk 28044
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 12568
..turnin 12509
..turnin 12591
step
goto 48.8,78.9
.talk 28042
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 12588 |or
..accept 12502 |or
..accept 12564 |or
step
goto 46.8,80.3
.' Use your Steel Spade next to the dirt piles |use Steel Spade##38566 |tip The dirt piles look like big purple-ish mounds of dirt around this area.
.' Investigate 5 Ancient Dirt Mounds |q 12588/1
step
goto 52.5,76.5
.' Use your Argent Crusade Banner next to this stone block |use Argent Crusade Banner##38544
.' Plant the South Argent Crusade Banner |q 12502/1
step
goto 53.3,72.2
.' Use your Argent Crusade Banner next to this stone block |use Argent Crusade Banner##38544
.' Plant the East Argent Crusade Banner |q 12502/3
step
goto 50.6,73.0
.' Use your Argent Crusade Banner next to this stone block |use Argent Crusade Banner##38544
.' Plant the North Argent Crusade Banner |q 12502/2
step
goto 45.6,79.3
.' Click the Mature Water-Poppy plants|tip They look like tall white-leaved plants with purple bulbs at the top.
.get 5 Mature Water-Poppy|q 12564/1
step
goto 48.8,78.9
.talk 28042
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 12588
..turnin 12502
..turnin 12564
step
goto Zul'Drak,40.3,66.6
.talk 28039
..turnin 12563
..turnin 12587
..turnin 12501
autoscript ZGV.completioninterval=5
step
goto 40.3,66.6
.talk 28039
.accept 12604 |instant |tip You can only get this quest if you complete the Troll Patrol daily in under 20 minutes.
step
'You have finished the Argent Stand Dailies, click here to retrun to the beginning of the Dailies Guide. |confirm |next daily
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide (Unlocks More Dailies)\\Human Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Human race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.
description You cannot complete this section if you are a Human.
daily
step
'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Human.
|confirm
step
goto Icecrown,76.6,19.1
.talk 33225
..accept 13593
..turnin 13593
..accept 13718
step
goto Icecrown,76.6,19.1
.talk 33225
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13603 |or
..accept 13600 |or
..accept 13616 |or
step
goto 76.5,19.1
.talk 33222
..accept 13592
step
goto 76.6,19.2
.talk 33223
..accept 13665
..accept 13847
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13603/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13600
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13600/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13616
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13616/1
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13847
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13847/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13847/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13847/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13847
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13592/1
step
goto 76.1,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Stormwind Steed|invehicle |q 13665
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13665/1
step
goto 76.6,19.1
.talk 33225
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13603
..turnin 13600
..turnin 13616
step
goto 76.5,19.1
.talk 33222
..turnin 13592
step
goto 76.6,19.2
.talk 33223
..turnin 13665
..turnin 13847
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13718/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.6,19.2
.talk 33225
..turnin 13718
..accept 13699
step
goto 76.0,20.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Darnassian Nightsaber|invehicle |q 13699
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13699/1
step
goto 76.6,19.2
.talk 33225
..turnin 13699
step
'Congratulations, you are now a Champion of Stormwind! |tip This is the end of the Human Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide (Unlocks More Dailies)\\Night Elf Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Night Elf race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.
description You cannot complete this section if you are a Night Elf.
daily
step
'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Night Elf.
|confirm
step
goto Icecrown,76.3,19.0
.talk 33592
..accept 13706
..turnin 13706
..accept 13717
step
goto Icecrown,76.3,19.0
.talk 33592
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13757 |or
..accept 13758 |or
..accept 13759 |or
step
goto 76.3,19.0
.talk 33652
..accept 13760
step
goto 76.4,19.0
.talk 33654
..accept 13761
..accept 13855
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13757/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13758
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13758/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13759
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13759/1
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13855
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13855/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13855/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13855/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13855
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13760/1
step
goto 76.0,20.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Darnassian Nightsaber|invehicle |q 13761
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13761/1
step
goto 76.3,19.0
.talk 33592
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13757
..turnin 13758
..turnin 13759
step
goto 76.3,19.0
.talk 33652
..turnin 13760
step
goto 76.4,19.0
.talk 33654
..turnin 13761
..turnin 13855
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13717/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.3,19.1
.talk 33592
..turnin 13717
..accept 13725
step
goto 76.0,20.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Darnassian Nightsaber|invehicle |q 13725
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13725/1
step
goto 76.3,19.1
.talk 33592
..turnin 13725
step
'Congratulations, you are now a Champion of Darnassus! |tip This is the end of the Night Elf Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide (Unlocks More Dailies)\\Dwarf Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Dwarf race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.
description You cannot complete this section if you are a Dwarf.
daily
step
'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Dwarf.
|confirm
step
goto Icecrown,76.3,19.0
.talk 33312
..accept 13703
..turnin 13703
..accept 13714
step
goto Icecrown,76.6,19.5
.talk 33312
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13741 |or
..accept 13742 |or
..accept 13743 |or
step
goto 76.7,19.4
.talk 33315
..accept 13744
step
goto 76.6,19.6
.talk 33309
..accept 13745
..accept 13851
step
goto 76.3,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Ironforge Ram|invehicle |q 13745
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13745/1
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13744/1
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13851
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13851/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13851/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13851/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13851
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13741/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13742
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13742/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13743
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13743/1
step
goto Icecrown,76.6,19.5
.talk 33312
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13741
..turnin 13742
..turnin 13743
step
goto 76.7,19.4
.talk 33315
..turnin 13744
step
goto 76.6,19.6
.talk 33309
..turnin 13745
..turnin 13851
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13717/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.3,19.1
.talk 33592
..turnin 13714
..accept 13713
step
goto 76.3,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Ironforge Ram|invehicle |q 13713
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion
|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.
|tip When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.
|tip Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13713/1
step
goto 76.3,19.1
.talk 33592
..turnin 13713
step
'Congratulations, you are now a Champion of Ironforge! |tip This is the end of the Dwarf Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide (Unlocks More Dailies)\\Gnome Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Gnome race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.
description You cannot complete this section if you are a Gnome.
daily
step
'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Gnome.
|confirm
step
goto Icecrown,76.5,19.8
.talk 33335
..accept 13704
..turnin 13704
..accept 13715
step
goto 76.5,19.8
.talk 33335
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13746 |or
..accept 13747 |or
..accept 13748 |or
step
goto 76.6,19.8
.talk 33648
..accept 13749
step
goto 76.5,19.9
.talk 33649
..accept 13750
..accept 13852
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13746/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13747
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13747/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13748
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13748/1
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13852
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13852/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13852/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13852/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13852
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13749/1
step
goto 76.2,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Gnomeregan Mechanostrider|invehicle |q 13750
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13750/1
step
goto 76.5,19.8
.talk 33335
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13746
..turnin 13747
..turnin 13748
step
goto 76.6,19.8
.talk 33648
..turnin 13749
step
goto 76.5,19.9
.talk 33649
..turnin 13750
..turnin 13852
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13715/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.5,19.8
.talk 33335
..turnin 13715
..accept 13723
step
goto 71.9,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Gnomeregan Mechanostrider|invehicle |q 13723
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13723/1
step
goto 76.5,19.8
.talk 33335
..turnin 13723
step
'Congratulations, you are now a Champion of Gnomeregan! |tip This is the end of the Gnome Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide (Unlocks More Dailies)\\Draenei Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Draenei race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.
description You cannot complete this section if you are a Draenei.
daily
step
'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Draenei.
|confirm
step
goto Icecrown,76.1,19.1
.talk 33593
..accept 13705
..turnin 13705
..accept 13716
step
goto 76.1,19.1
.talk 33593
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13752 |or
..accept 13753 |or
..accept 13754 |or
step
goto 76.1,19.2
.talk 33655
..accept 13755
step
goto 76.2,19.1
.talk 33656
..accept 13756
..accept 13854
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13752/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13753
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13753/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13754
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13754/1
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13854
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13854/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13854/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13854/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13854
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13755/1
step
goto 76.4,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Exodar Elekk|invehicle |q 13756
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13756/1
step
goto 76.1,19.1
.talk 33593
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13752
..turnin 13753
..turnin 13754
step
goto 76.1,19.2
.talk 33655
..turnin 13755
step
goto 76.2,19.1
.talk 33656
..turnin 13756
..turnin 13854
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13716/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.1,19.2
.talk 33593
..turnin 13716
..accept 13724
step
goto 71.7,22.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Exodar Elekk|invehicle |q 13724
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13724/1
step
goto 76.1,19.2
.talk 33593
..turnin 13724
step
'Congratulations, you are now a Champion of The Exodar! |tip This is the end of the Gnome Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Speed Gold Runs\\Level 80 Dailies Speed Gold Run (No ATG Dailies)",[[
author support@zygorguides.com
description This guide section will walk you through a 25 daily quest speed gold run at level 80, without including any Argent Tournament Grounds dailies.
description To be able to complete all the quests in this guide section, you must have completed the The Storm Peaks Full Zone Guide (Includes Pre-Quests),
description The Sons of Hodir Reputation (Honored), and Icecrown Full Zone Quest Path (Includes Regular Dailies Pre-Quests) guide sections.
daily
step
goto The Storm Peaks,40.9,85.3
.talk 29428
..accept 12833
step
goto 43.1,81.2
.' Use your Improved Land Mines to place mines on the ground close to each other|use Improved Land Mines##40676|tip Garm Invaders and Snowblind Followers will run over the mines and die.
.kill 12 Garm Invader##29619 |q 12833/1
step
goto 40.9,85.3
.talk 29428
..turnin 12833
step
goto 63.5,59.8
.talk 30294
..accept 12994
step
goto 64.2,59.2
.' Click Hodir's Helm |tip It's a huge helm on the tip of this ice spike.
..accept 13006
step
goto 65.1,60.8
.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
..accept 13003
step
goto 67.6,59.9
.' Click Arngrim the Insatiable
..accept 13046
step
goto 63.2,62.9
.' Click Fjorn's Anvil |tip It's a huge anvil on an ice platform.
..accept 12981
step
goto 64.1,65.1
.' Click Hodir's Horn |tip It's a huge bone war horn.
..accept 12977
step
goto 57.2,64.0
.' Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
.' Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
.' Repeat this process 2 more times
.' Kill 3 Stormforged Infiltrators |q 12994/1
.' Use Arngrim's Tooth on Roaming Jormungars |use Arngrim's Tooth##42774
.' Fight Disembodied Jormungars until Arngrim the Insatiable comes to eat them
.' Feed Arngrim's Spirit 5 Times |q 13046/1
step
goto 55.6,63.4
.from Viscous Oil##30325+ |tip They look like slimes inside this cave.
.get 5 Viscous Oil |q 13006/1
step
goto 56.6,64.3
.' Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
.' While fighting the Wild Wyrm, there will be 2 phases to the fight.  Phase 1: |tip In phase 1 of the fight, you will be underneath the Wild Wyrm.  Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
.' In phase 2 of the fight with the Wild Wyrm, the strategy changes: |tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
.' Kill the Wild Wyrm |q 13003/1
step
goto 63.5,59.8
.talk 30294
..turnin 12994
step
goto 64.2,59.2
.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
..turnin 13006
step
goto 65.1,60.8
.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
..turnin 13003
step
goto 67.6,59.9
.' Click Arngrim the Insatiable
..turnin 13046
step
goto 69.7,60.2
.from Brittle Revenant##30160+
.collect 6 Essence of Ice##42246 |q 12981
step
goto 75.3,62.8
.' Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246 |tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
.' Click the Frozen Iron Scraps
.get 6 Frozen Iron Scrap |q 12981/1
step
goto 72.1,51.8
.from Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
.' Use Hodir's Horn on their corpses |use Hodir's Horn##42164
.' Free 5 Niffelem Forefathers |q 12977/1
.' Free 5 Restless Frostborn |q 12977/2
step
goto 63.2,62.9
.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
..turnin 12981
step
goto 64.1,65.1
.' Click Hodir's Horn|tip It's a huge bone war horn.
..turnin 12977
step
map Icecrown
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: 57.4,37.2
.' Point 2: 64.4,55.4
.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 30344
..accept 13333
step
'On the Skybreaker airship:
.talk 29799
..accept 13289
..accept 13323
..accept 13344
step
'On the Skybreaker airship:
.talk 31259
..accept 13300
step
'On the Skybreaker airship:
.talk 32302
..accept 13336
step
'On the Skybreaker airship:
.talk 30345
..accept 13292
..accept 13322
step
goto 62.6,51.3
.talk 31808
..accept 13309
step
goto 62.6,50.9
.' Click the Skybreaker Suppression Turret to control the gun on the airplane|invehicle
step
'You will fly off in the airplane:
.' Use your Suppression Charge ability on the cannons on the ground to stun them as you fly around|petaction Suppression Charge
.' Drop 4 Skybreaker Infiltrators |q 13309/1
step
goto 62.6,51.3
.talk 31808
..turnin 13309
step
goto 62.5,51.1
.talk 31737
..accept 13284
step
'Follow the Alliance troops up the mountain and help them fight
.'Escort the Alliance troops into Ymirheim |q 13284/1 |tip At least 4 Alliance troops must survive.
step
'The entrance to the cave starts here, go inside the cave |goto 57.0,57.3,0.3 |c |q 13300
step
goto 56.0,57.6
.' Talk to Saronite Mine Slaves
..' Tell them they're free, get out of here!
.' Rescue 10 Saronite Mine Slaves |q 13300/1
step
'Go outside the cave |goto 57.0,57.3,0.3 |c |q 13300
step
goto 57.3,57.0
.from Ymirjar Element Shaper##31267+, Blight Falconer##31262+, Ymirheim Chosen Warrior##31258+
.kill 20 Ymirheim Vrykul |q 13336/1
step
goto 57.0,62.6
.talk 31776
..accept 13280
step
goto 57.0,62.6
.' Click Geargrinder's Jumpbot to get in the robot |invehicle |q 13280
step
goto 54.9,60.1
.' Use your Jump Jets ability to jump up the mountain to this spot|petaction Jump Jets |tip This spot is the peak of the mountain.
.' Use your Plant Alliance Battle Standard ability next to the Ymirheim Peak Skulls |petaction Plant Alliance Battle Standard |tip The Ymirheim Peak Skulls look like a big pile of skulls at the peak of the mountain, next to 2 blue flame torch lights.
.' Plant the Alliance Battle Standard |q 13280/1
step
'Click the red arrow button on your vehicle hotbar to get out of the robot |script VehicleExit() |outvehicle |c
step
goto 57.0,62.5
.talk 31776
..turnin 13280
step
goto 62.6,51.3
.talk 31808
..turnin 13284
step
goto 69.9,64.3
.' Click Abandoned Armor |tip They look like metal armor chestpieces laying on the ground around this area.
.collect 3 Abandoned Armor##43616 |q 13292
.' Click Abandoned Helm |tip They look like metal helmets laying on the ground around this area.
.collect 3 Abandoned Helm##43610 |q 13292
.' Click Piles of Bones |tip They look like small piles of bones laying on the ground around this area.
.collect 3 Pile of Bones##43609 |q 13292
step
goto 68.8,67.5
.' Use your Smuggled Solution 3 times |use Smuggled Solution##44048
.' Destroy 3 Frostbrood Skytalons |q 13292/1
step
goto 69.8,62.9
.from Hulking Abomination##31140+
.collect Chilled Abomination Guts|n
.' Use your Abomination Reanimation Kit |use Abomination Reanimation Kit##43968
.' With your control Abomination, go to 69.1,61.6 |n
.' Use your Burst at the Seams ability to explode the mobs around this area
.' Keep repeating this process until you:
.' Explode 15 Icy Ghouls |q 13289/1
.' Explode 15 Vicious Geists |q 13289/2
.' Explode 15 Risen Alliance Soldiers |q 13289/3
step
goto 43.3,58.2
.' Use the Dart Gun on Orgrim's Hammer Scouts |use Dart Gun##44222 |tip They are flying up in the air on purple dragons.
.' When they hit the ground, fly down and loot their bodies |tip There are elites and grouped mobs on the ground.
.get 6 Orgrim's Hammer Dispatch |q 13333/1
step
goto 53.9,46.1
.from Bitter Initiate##32238
.collect 3 Orb of Illusion |q 13323
step
goto 54.3,45.6
.' Use your Orbs of Illusion on Dark Subjugators |use Orb of Illusion##44246
.' Drag and drop 3 Dark Subjugators |q 13323/1
step
goto 55.2,29.1
.' Use your Diluted Cult Tonic|use Diluted Cult Tonic##44307 |tip This gives you a buff that allows you to collect Tainted Essences from dead cultists in Aldur'thar.  If you lose the buff, use this again.
.from Void Summoner##32259+, Shadow Channeler##32262+
.collect 10 Tainted Essence##44301 |n
.' Use a Tainted Essence to combine them |use Tainted Essence##44301
..collect 1 Writhing Mass##44304 |q 13322
.' Use your Rod of Siphening on the Enslaved Minion corpses |use Rod of Siphening##44433
.collect 5 Dark Matter##44434 |q 13344
step
goto 53.8,33.6
.' Click the Summoning Stone
.' Summon the Dark Messenger |q 13344/1
step
goto 49.1,34.2
.' Use your Writhing Mass next to the big cauldron |use Writhing Mass##44304
.' Banish the Writhing Mass |q 13322/1
step
goto 42.8,24.9
.talk 29804
..accept 12995
step
goto 43.6,25.1
.talk 30074
..accept 13069
step
goto 43.1,25.2
.talk 30216
..accept 13071
step
goto 33.0,23.9
.' Click a Jotunheim Rapid-Fire Harpoon to control it |invehicle |q 13069
step
'Use your Jotunheim Rapid-Fire Harpoon abilities to shoot at the Jotunheim Proto-Drakes that fly around this area
.' Shoot down 15 Jotunheim Proto-Drakes & Their Riders |q 13069/1
step
.' Click the red arrow on your hotbar to stop controlling the Jotunheim Rapid-Fire Harpoon |outvehicle |q 13069
step
goto 33.0,27.0
.from Njorndar Spear-Sister##30243+, Jotunheim Warrior##29880+, Valhalas Vargul##30250+
.' Use your Ebon Blade Banner on the Jotunheim vrykul corpses|use Ebon Blade Banner##42480
.' Plant 15 Ebon Blade Banners near vrykul corpses |q 12995/1
step
goto 27.2,39.1
.' Click a Njorndar Proto-Drake to ride it|invehicle |q 13071
step
goto 28.4,37.6
.' Use your Proto-Drake abilities near the buildings around this area to:
.' Burn 8 Vrykul Buildings |q 13071/1
step
'Click the red arrow on your vehicle hot bar to stop riding the Njorndar Proto-Drake|script VehicleExit()|outvehicle|c |q 13071
step
goto 19.7,48.4
.talk 29396
..accept 12813
step
goto 19.9,48.3
.talk 29456
..accept 12838
step
goto 19.6,47.8
.talk 29405
..accept 12815
step
goto 9.6,44.3
.from Onslaught Harbor Guard##29330+, Onslaught Paladin##29329+, Onslaught Raven Bishop##29338, Onslaught Gryphon Rider##29333+
.collect Scarlet Onslaught Trunk Key##40652+|n
.' Use Darkmender's Tincture on the Onslaught mobs' corpses|use Darkmender's Tincture##40587
.' Transform 10 Scarlet Onslaught Corpses |q 12813/1
.' Click Scarlet Onslaught Trunks|tip They look like small wooden boxes on the ground around this area.
.get 5 Onslaught Intel Documents|q 12838/1
step
'Use your Bone Gryphon in your bags while in Onslaught Harbor|use Bone Gryphon##40600
.' Ride a Bone Gryphon|invehicle|q 12815
step
goto 10.2,41.9
.' Use your Bone Gryphon abilities to:
.kill 10 Onslaught Gryphon Rider|q 12815/1
step
'Get to a safe place and click the red arrow on your vehicle hot bar to stop riding the Bone Gryphon|script VehicleExit()|outvehicle|c |q 12815
step
goto Icecrown,19.7,48.4
.talk 29396
..turnin 12813
step
goto 19.9,48.3
.talk 29456
..turnin 12838
step
goto 19.6,47.8
.talk 29405
..turnin 12815
step
goto 42.8,24.9
.talk 29804
..turnin 12995
step
goto 43.6,25.1
.talk 30074
..turnin 13069
step
goto 43.1,25.2
.talk 30216
..turnin 13071
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: 57.4,37.2
.' Point 2: 64.4,55.4
.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 30344
..turnin 13333
step
'On the Skybreaker airship:
.talk 29799
..turnin 13289
..turnin 13323
..turnin 13344
step
'On the Skybreaker airship:
.talk 31259
..turnin 13300
step
'On the Skybreaker airship:
.talk 32302
..turnin 13336
step
'On the Skybreaker airship:
.talk 30345
..turnin 13292
..turnin 13322
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Speed Gold Runs\\Level 80 Dailies Speed Gold Run (With ATG Dailies)",[[
author support@zygorguides.com
description This guide section will walk you through a 25 daily quest speed gold run at level 80.
description To be able to complete all the quests in this guide section, you must have completed
description the The Storm Peaks Full Zone Guide (Includes Pre-Quests), The Sons of Hodir Reputation (Honored),
description and Icecrown Full Zone Quest Path (Includes Regular Dailies Pre-Quests) guide sections.
daily
step
goto Icecrown,76.3,19.6
.talk 34880
.' You will only be able to accept, and turn in, 2 of these 5 daily quests per day:
..accept 14074 |or 2
..accept 14152 |or 2
..accept 14080 |or 2
..accept 14077 |or 2
..accept 14096 |or 2
step
goto 76.2,19.6
.talk 34912
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 14076 |or
..accept 14090 |or
..accept 14112 |or
step
goto 73.8,19.4
.talk 33769
..accept 13791
only DeathKnight
step
goto 73.8,20.1
.talk 33762
..accept 13788 |tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
..accept 13864
only DeathKnight
step
goto 73.6,20.1
.talk 33770
..accept 13793
only DeathKnight
step
goto 69.9,23.3
.talk 33771
..accept 13790
only !DeathKnight
step
goto 70.0,23.4
.talk 33759
..accept 13682 |tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
..accept 13861
only !DeathKnight
step
goto 69.9,23.5
.talk 33763
..accept 13789
only !DeathKnight
step
goto 69.5,23.1
.talk 34882
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..accept 14105 |or
..accept 14101 |or
..accept 14102 |or
..accept 14104 |or
step
goto 69.5,23.1
.talk 35094
.' You will only be able to accept, and turn in, 1 of these 2 daily quests per day:
..accept 14108 |or
..accept 14107 |or
step
goto 71.7,22.4
.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
.' Click to mount the Stabled Exodar Elekk |invehicle |q 13790
only Draenei Warrior,Draenei Paladin,Draenei Hunter,Draenei Priest,Draenei Shaman,Draenei Mage
step
goto 71.8,22.5
.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
.' Click to mount the Stabled Ironforge Ram |invehicle |q 13790
only Dwarf Warrior,Dwarf Paladin,Dwarf Hunter,Dwarf Rogue,Dwarf Priest,Dwarf Death Knight
step
goto 71.6,22.4
.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
.' Click to mount the Stabled Stormwind Steed |invehicle |q 13790
only Human Warrior,Human Paladin,Human Rogue,Human Priest,Human Death Knight,Human Mage,Human Warlock
step
goto 71.6,22.5
.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
.' Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13790
only NightElf Warrior,NightElf Hunter,NightElf Rogue,NightElf Priest,NightElf Death Knight,NightElf Druid
step
goto 71.9,22.5
.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
.' Click to mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13790
only Gnome Warrior,Gnome Rogue,Gnome Death Knight,Gnome Mage,Gnome Warlock
step
goto 71.6,23.8
.' Talk to the riders on mounts around this area
.' Tell them you are ready to fight!
.' Fight and defeat them|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.get 4 Mark of the Champion |q 13790/1
only !DeathKnight
step
'Click the red arrow on your hotbar to get off your mount |outvehicle |q 13790
only !DeathKnight
step
goto 71.7,22.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Exodar Elekk |invehicle |q 13793
only Draenei DeathKnight
step
goto 71.8,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Ironforge Ram |invehicle |q 13793
only Dwarf DeathKnight
step
goto 71.6,22.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Stormwind Steed |invehicle |q 13793
only Human DeathKnight
step
goto 71.6,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13793
only NightElf DeathKnight
step
goto 71.9,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13793
only Gnome DeathKnight
step
goto 71.6,23.8
.' Talk to the riders on mounts around this area
.' Tell them you are ready to fight!
.' Fight and defeat them|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.get 4 Mark of the Champion |q 13793/1
only DeathKnight
step
'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13793
only DeathKnight
step
goto 66.9,8.1
.' Click a Bucket of Fresh Chum |tip They looks like wooden buckets on the deck of this ship.
.collect 6 Fresh Chum##47036 |q 14112
step
goto 66.8,9.5
.' Use the Fresh Chum in your bags |use Fresh Chum##47036
.from North Sea Blue Sharks|tip They spawn underwater around this area when you use the Fresh Chum.
.get 3 North Sea Shark Meat |q 14112/1
step
goto Hrothgar's Landing,50.6,49.4
.kill 8 Kvaldir Berserker |q 14152/1
.kill 3 Kvaldir Harpooner |q 14152/2
step
goto 43.3,27.5
.' Click Stolen Tallstrider Legs |tip They look like chicken legs laying on objects and on the ground around this area.
.from Kvaldir Mist Binder##34839+, Kvaldir Reaver##34838+
.get 10 Stolen Tallstrider Leg |q 14074/1
step
goto 46.5,32.8
.from Kvaldir Mist Binder##34839+, Kvaldir Reaver##34838+
.' Kill 10 Kvaldir |q 14080/1
step
goto 46.5,32.8
.' Use your Confessor's Prayer Book on Slain Tualiq Villagers |use Confessor's Prayer Book##46870 |tip They look like dead walrus men corpses around this area.
.' Administer 8 Last Rites |q 14077/1
step
goto Hrothgar's Landing,43.9,24.3
.' Use your Mistcaller's Charm while standing inside this cave, next to the blue floating crystal |use Mistcaller's Charm##47009
.kill Mistcaller Yngvar |q 14102/1
step
goto Hrothgar's Landing,50.7,15.4
.' Use Kvaldir War Horn next to the bonfire |use Kvaldir War Horn##47006
.kill Drottinn Hrothgar |q 14101/1
step
goto Hrothgar's Landing,58.5,31.6
.' Use your Captured Kvaldir Banner on the deck of the Bor's Fury ship |use Captured Kvaldir Banner##47029
.kill Ornolf the Scarred |q 14104/1
step
goto Icecrown,69.8,22.2
.' Click a Stabled Argent Hippogryph to ride it
.' Use your Flaming Spears on North Sea Kraken and Kvaldir Deepcallers while flying |use Flaming Spears##46954
.kill 3 Kvaldir Deepcaller |q 14108/2
.' Hurl Spears at 6 North Sea Kraken |q 14108/1
step
goto 64.2,21.4
.kill Deathspeaker Kharos |q 14105/1 |tip He's standing in a small pit area.
step
goto 64.0,21.5
.from Dark Ritualist##34734+, Dark Zealot##34728+
.collect 4 Black Cage Key##46895 |n
.' Click Black Cages |tip They look like big sqaure cages around this area.
.' Rescue 4 Captive Aspirants |q 14096/2
step
goto 64.0,21.5
.from Dark Ritualist##34734+, Dark Zealot##34728+
.collect 1 Black Cage Key##46895 |q 14096
step
goto 60.8,23.2
.' Click the Black Cage |tip It looks like big sqaure cage up on this platform.
.' Rescue Kul the Reckless |q 14096/1
step
goto 64.3,21.4
.from Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
.kill 15 Cult of the Damned member |q 13791/1
only DeathKnight
step
goto 64.3,21.4
.from Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
.kill 15 Cult of the Damned member |q 13789/1
only !DeathKnight
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: 57.4,37.2
.' Point 2: 64.4,55.4
.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 30344
..accept 13333
step
'On the Skybreaker airship:
.talk 29799
..accept 13289
..accept 13323
..accept 13344
step
'On the Skybreaker airship:
.talk 31259
..accept 13300
step
'On the Skybreaker airship:
.talk 32302
..accept 13336
step
'On the Skybreaker airship:
.talk 30345
..accept 13292
..accept 13322
step
goto 62.6,51.3
.talk 31808
..accept 13309
step
goto 62.6,50.9
.' Click the Skybreaker Suppression Turret to control the gun on the airplane|invehicle
step
'You will fly off in the airplane:
.' Use your Suppression Charge ability on the cannons on the ground to stun them as you fly around|petaction Suppression Charge
.' Drop 4 Skybreaker Infiltrators |q 13309/1
step
goto 62.6,51.3
.talk 31808
..turnin 13309
step
goto 62.5,51.1
.talk 31737
..accept 13284
step
'Follow the Alliance troops up the mountain and help them fight
.'Escort the Alliance troops into Ymirheim |q 13284/1 |tip At least 4 Alliance troops must survive.
step
'The entrance to the cave starts here, go inside the cave |goto 57.0,57.3,0.3 |c |q 13300
step
goto 56.0,57.6
.' Talk to Saronite Mine Slaves
..' Tell them they're free, get out of here!
.' Rescue 10 Saronite Mine Slaves |q 13300/1
step
'Go outside the cave |goto 57.0,57.3,0.3 |c |q 13300
step
goto 57.3,57.0
.from Ymirjar Element Shaper##31267+, Blight Falconer##31262+, Ymirheim Chosen Warrior##31258+
.kill 20 Ymirheim Vrykul |q 13336/1
step
goto 57.0,62.6
.talk 31776
..accept 13280
step
goto 57.0,62.6
.' Click Geargrinder's Jumpbot to get in the robot |invehicle |q 13280
step
goto 54.9,60.1
.' Use your Jump Jets ability to jump up the mountain to this spot|petaction Jump Jets |tip This spot is the peak of the mountain.
.' Use your Plant Alliance Battle Standard ability next to the Ymirheim Peak Skulls |petaction Plant Alliance Battle Standard |tip The Ymirheim Peak Skulls look like a big pile of skulls at the peak of the mountain, next to 2 blue flame torch lights.
.' Plant the Alliance Battle Standard |q 13280/1
step
'Click the red arrow button on your vehicle hotbar to get out of the robot |script VehicleExit() |outvehicle |c
step
goto 57.0,62.5
.talk 31776
..turnin 13280
step
goto 62.6,51.3
.talk 31808
..turnin 13284
step
goto 69.9,64.3
.' Click Abandoned Armor |tip They look like metal armor chestpieces laying on the ground around this area.
.collect 3 Abandoned Armor##43616 |q 13292
.' Click Abandoned Helm |tip They look like metal helmets laying on the ground around this area.
.collect 3 Abandoned Helm##43610 |q 13292
.' Click Piles of Bones |tip They look like small piles of bones laying on the ground around this area.
.collect 3 Pile of Bones##43609 |q 13292
step
goto 68.8,67.5
.' Use your Smuggled Solution 3 times |use Smuggled Solution##44048
.' Destroy 3 Frostbrood Skytalons |q 13292/1
step
goto 69.8,62.9
.from Hulking Abomination##31140+
.collect Chilled Abomination Guts|n
.' Use your Abomination Reanimation Kit |use Abomination Reanimation Kit##43968
.' With your control Abomination, go to 69.1,61.6 |n
.' Use your Burst at the Seams ability to explode the mobs around this area
.' Keep repeating this process until you:
.' Explode 15 Icy Ghouls |q 13289/1
.' Explode 15 Vicious Geists |q 13289/2
.' Explode 15 Risen Alliance Soldiers |q 13289/3
step
goto 43.3,58.2
.' Use the Dart Gun on Orgrim's Hammer Scouts |use Dart Gun##44222 |tip They are flying up in the air on purple dragons.
.' When they hit the ground, fly down and loot their bodies |tip There are elites and grouped mobs on the ground.
.get 6 Orgrim's Hammer Dispatch |q 13333/1
step
goto 53.9,46.1
.from Bitter Initiate##32238
.collect 3 Orb of Illusion |q 13323
step
goto 54.3,45.6
.' Use your Orbs of Illusion on Dark Subjugators |use Orb of Illusion##44246
.' Drag and drop 3 Dark Subjugators |q 13323/1
step
goto 54.0,42.9
.talk 32444
..accept 13382
step
goto 54.0,43.1
.talk 31648
.' Tell her to give you a bomber!|invehicle|q 13382
step
'You fly off in an airplane:
.' Use the 3 different modes on the right side of your hotbar to shoot rockets, drop bombs, or repair your airplane
.' Shoot rockets at the gargoyles and sentries that fly around you (you have to aim it)
..kill 20 Gargoyle Ambusher|q 13382/2
..kill 12 Frostbrood Sentries|q 13382/4
.' Drop bombs on the mobs below
..kill 50 Bombardment Infantry|q 13382/1
..kill 12 Scourge War Machines|q 13382/3
.' Use your Charge Shield ability to keep your airplane's defense up
.' Use your Fight Fire ability to put out fires on your airplane
step
'Click the red arrow to get out of the plane|script VehicleExit()|outvehicle|c|q 13382
step
goto 51.1,38.4
.' Click Discarded Soul Crystals |tip They look like small blue-glowing crystals laying on the ground around this area.
.collect 6 Discarded Soul Crystal##47035 |n
.' Use your Light-Blessed Relic on Fallen Hero's Spirits |use Light-Blessed Relic##47033
.' Bless 6 Fallen Hero's Spirits |q 14107/1
step
goto 55.2,29.1
.' Use your Diluted Cult Tonic|use Diluted Cult Tonic##44307 |tip This gives you a buff that allows you to collect Tainted Essences from dead cultists in Aldur'thar.  If you lose the buff, use this again.
.from Void Summoner##32259+, Shadow Channeler##32262+
.collect 10 Tainted Essence##44301 |n
.' Use a Tainted Essence to combine them |use Tainted Essence##44301
..collect 1 Writhing Mass##44304 |q 13322
.' Use your Rod of Siphening on the Enslaved Minion corpses |use Rod of Siphening##44433
.collect 5 Dark Matter##44434 |q 13344
step
goto 53.8,33.6
.' Click the Summoning Stone
.' Summon the Dark Messenger |q 13344/1
step
goto 49.1,34.2
.' Use your Writhing Mass next to the big cauldron |use Writhing Mass##44304
.' Banish the Writhing Mass |q 13322/1
step
goto 42.8,24.9
.talk 29804
..accept 12995
step
goto 43.6,25.1
.talk 30074
..accept 13069
step
goto 43.1,25.2
.talk 30216
..accept 13071
step
goto 33.0,23.9
.' Click a Jotunheim Rapid-Fire Harpoon to control it |invehicle |q 13069
step
'Use your Jotunheim Rapid-Fire Harpoon abilities to shoot at the Jotunheim Proto-Drakes that fly around this area
.' Shoot down 15 Jotunheim Proto-Drakes & Their Riders |q 13069/1
step
.' Click the red arrow on your hotbar to stop controlling the Jotunheim Rapid-Fire Harpoon |outvehicle |q 13069
step
goto 33.0,27.0
.from Njorndar Spear-Sister##30243+, Jotunheim Warrior##29880+, Valhalas Vargul##30250+
.' Use your Ebon Blade Banner on the Jotunheim vrykul corpses|use Ebon Blade Banner##42480
.' Plant 15 Ebon Blade Banners near vrykul corpses |q 12995/1
step
goto 27.2,39.1
.' Click a Njorndar Proto-Drake to ride it|invehicle |q 13071
step
goto 28.4,37.6
.' Use your Proto-Drake abilities near the buildings around this area to:
.' Burn 8 Vrykul Buildings |q 13071/1
step
'Click the red arrow on your vehicle hot bar to stop riding the Njorndar Proto-Drake|script VehicleExit()|outvehicle|c |q 13071
step
goto 42.8,24.9
.talk 29804
..turnin 12995
step
goto 43.6,25.1
.talk 30074
..turnin 13069
step
goto 43.1,25.2
.talk 30216
..turnin 13071
step
'You will need to get a group of at least 3 people to do the daily quest in the next step of the guide.  Find a group, it should be pretty easy because there are always other players doing this quest.
only DeathKnight
step
goto 44.1,32.6
.' This is how this fight will happen: |tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do alot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
.kill Chillmaw |q 13788/1 |tip Chillmaw is a big skeletal dragon that flies around this area.
.kill 3 Cultist Bombardier |q 13788/2
only DeathKnight
step
goto 48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13864
only DeathKnight
step
goto 50.1,74.8
.kill 3 Boneguard Commander |q 13864/1 |tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
only DeathKnight
step
goto 48.9,71.4
'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13864
only DeathKnight
step
'You will need to get a group of at least 3 people to do the daily quest in the next step of the guide.  Find a group, it should be pretty easy because there are always other players doing this quest.
only !DeathKnight
step
goto 44.1,32.6
.' This is how this fight will happen: |tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do alot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
.kill Chillmaw |q 13682/1 |tip Chillmaw is a big skeletal dragon that flies around this area.
.kill 3 Cultist Bombardier |q 13682/2
only !DeathKnight
step
goto 48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse |invehicle |q 13861
only !DeathKnight
step
goto 50.1,74.8
.kill 3 Boneguard Commander |q 13861/1 |tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
only !DeathKnight
step
goto 48.9,71.4
'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13861
only !DeathKnight
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: 57.4,37.2
.' Point 2: 64.4,55.4
.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 30344
..turnin 13333
step
'On the Skybreaker airship:
.talk 29799
..turnin 13289
..turnin 13323
..turnin 13344
step
'On the Skybreaker airship:
.talk 31259
..turnin 13300
step
'On the Skybreaker airship:
.talk 32302
..turnin 13336
step
'On the Skybreaker airship:
.talk 30345
..turnin 13292
..turnin 13322
step
goto 69.9,23.3
.talk 33771
..turnin 13790
only !DeathKnight
step
goto 70.0,23.4
.talk 33759
..turnin 13682
..turnin 13861
only !DeathKnight
step
goto 69.9,23.5
.talk 33763
..turnin 13789
only !DeathKnight
step
goto 69.5,23.1
.talk 34882
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..turnin 14105
..turnin 14101
..turnin 14102
..turnin 14104
step
goto 69.5,23.1
.talk 35094
.' You will only be able to accept, and turn in, 1 of these 2 daily quests per day:
..turnin 14108
..turnin 14107
step
goto 73.8,19.4
.talk 33769
..turnin 13791
only DeathKnight
step
goto 73.8,20.1
.talk 33762
..turnin 13788
..turnin 13864
only DeathKnight
step
goto 73.6,20.1
.talk 33770
..turnin 13793
only DeathKnight
step
goto The Storm Peaks,40.5,53.3
.' Use your Earthshaker Drum next to the piles of snow on the ground |use Earthshaker Drum##46893
.from Deep Jormungar##34920 |tip They spawn after using your Earthshaker Drum next to the piles of snow.
.get 4 Jormungar Egg Sac |q 14076/1
step
goto The Storm Peaks,42.8,81.3
.' Use your Weighted Net on Snowblind Followers |use Weighted Net##46885
.' Capture 8 Snowblind Followers |q 14090/1
step
goto Icecrown,76.3,19.6
.talk 34880
.' You will only be able to accept, and turn in, 2 of these 5 daily quests per day:
..turnin 14074
..turnin 14152
..turnin 14140
..turnin 14077
..turnin 14096
step
goto 76.2,19.6
.talk 34912
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 14076
..turnin 14090
..turnin 14112
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Outland (60 - 70)\\Netherdrake Mount Guide\\Netherwing Reputation (Neutral)", [[
author support@zygorguides.com
description This guide section will walk you through getting Friendly reputation with the Netherwing faction.
description You must have completed the Netherwing Reputation (Neutral) - Pre-Quests guide section
description in order to be able to complete the quests in this guide section.
startlevel 80
step
label	hub
'Proceeding to Pre-Quests |next |only if default
'Proceeding to Dailies |next dailies |only if completedq(11049)
step
'Go to Shadowmoon Valley in Outland |goto Shadowmoon Valley |noway |c
step
goto Shadowmoon Valley,62.9,59.5
.talk 22113
..accept 10804
step
goto 60.5,57.7
.from Rocknail Ripper##21478+, Rocknail Flayer##21477+ |tip The Rocknail Flayers will drop Rocknail Flayer Carcasses, instead of Rocknail Flayer Giblets.
.collect Rocknail Flayer Giblets##31373 |n
.' Click the Rocknail Flayer Giblets in your bags, once you have 5 of them, to combine them into a Rocknail Flayer Carcass |use Rocknail Flayer Giblets##31373
.collect 8 Rocknail Flayer Carcass##31372 |q 10804
step
goto 60.5,57.7
.' Use the Rocknail Flayer Carcasses in your bags |use Rocknail Flayer Carcass##31372
.' Feed 8 Netherwing Drakes |q 10804/1
step
goto 62.9,59.5
.talk 22113
..turnin 10804
..accept 10811
step
goto 68.2,60.4
.talk 21657
..turnin 10811
..accept 10814
.talk 21657
..' Listen to the Tale of Neltharaku |q 10814/1
..turnin 10814
..accept 10836
step
goto 66.4,60.0
.from Dragonmaw Drake-Rider##21719+, Dragonmaw Wrangler##21717+, Dragonmaw Subjugator##21718+
.kill 15 Dragonmaw Orc |q 10836/1
step
goto 68.2,60.4
.talk 21657
..turnin 10836
..accept 10837
step
goto 64.1,80.7
.' Click the Nethervine Crystals |tip They look like big thorny plants with a small puff of red smoke near the top of them, on the ground around this area.
.get 12 Nethervine Crystal |q 10837/1
step
goto 68.2,60.4
.talk 21657
..turnin 10837
..accept 10854
step
goto 67.4,59.3
.' Use your Enchanted Nethervine Crystal on Enslaved Netherwing Drakes |use Enchanted Nethervine Crystal |tip Help the Enslaved Netherwing Drakes kill their Dragonmaw Subjugator after you free them.
..' Free 5 Enslaved Netherwing Drakes |q 10854/1
step
goto 68.2,60.4
.talk 21657
..turnin 10854
..accept 10858
step
goto 69.9,61.5
.talk 22112
..turnin 10858
..accept 10866
step
goto 70.9,61.5
.kill Zuluhed the Whacked |q 10866/2 |tip You will probably need a group to kill Zuluhed the Whacked.  He will summon demons through a portal to help him fight.  To avoid having to fight the demons, pull Zuluhed the Whacked into one of the small buildings, on either side of him, when he casts the portal.
.collect Zuluhed's Key##31664 |q 10866
step
goto 69.8,61.3
.' Click Zuluhed's Chains |tip It looks like a big metal ball and chain.
.' Free Karynaku |q 10866/1
step
goto 69.9,61.5
.talk 22112
..turnin 10866
..accept 10870
step
goto 62.9,59.5
.talk 22113
..turnin 10870
..accept 11012 |instant
..accept 11013
step
goto 66.2,85.7
.talk 23139
..turnin 11013
..accept 11014
step
goto 66.1,86.4
.talk 23140
..turnin 11014
step
goto 66.0,86.5
.talk 23141
..accept 11019 |instant
..accept 11049
step
goto 68.5,61.2
.' Click a Netherwing Egg |tip They look like dark purple eggs with blue crystals on them.  They spawn in random places, so you will probably need to search for them.  For help finding a Netherwing Egg, use the Netherwing Egg Hunting - Optimized Path section of this guide.
.get 1 Netherwing Egg |q 11049/1
step
goto 66.0,86.5
.talk 23141
..turnin 11049
daily
step
label	dailies
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..accept 11020
..accept 11035
step
goto 66.1,86.4
.talk 23140
..accept 11015
..accept 11016 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350. |or
..accept 11018 |only if skill ("Mining") >= 350 |tip This quest is only available if you have your Mining skill to at least 350. |or
..accept 11017 |only if skill ("Herbalism") >= 350 |tip This quest is only available if you have your Herbalism skill to at least 350. |or
step
goto 72.1,75.2
.from Dragonmaw Transporter##23188+ |tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
.get 10 Netherwing Relic |q 11035/1
step
goto 60.4,45.2
.from Greater Felfire Diemetradon##21462+, Felboar##21878+
.collect 12 Fel Gland##32502 |q 11020
step
goto 73.6,80.0
.' Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
.' Poison 12 Dragonmaw Peon Camps |q 11020/1
step
goto 62.6,86.2
.' Click Netherdust Bushes |tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
.get 40 Netherdust Pollen |q 11017/1
step
goto 70.0,91.4
. Click Nethercite Deposits |tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with a Mining skill of at least 350 to be able to complete this step.
.get 40 Nethercite Ore |q 11018/1
step
goto 65.3,90.2 |n
.' The entrance to the mine starts here |goto Shadowmoon Valley,65.3,90.2,0.5 |noway |c
step
goto 70.8,84.4
.from Nethermine Flayer##23169+, Black Blood of Draenor##23286+
.get 30 Netherwing Crystal |q 11015/1
.' Skin Nethermine Flayers |only if skill ("Skinning") >= 350
.get 35 Nethermine Flayer Hide |q 11016/1 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350.
step
goto 65.3,90.2 |n
.' Leave the mine |goto Shadowmoon Valley,65.3,90.2,0.5 |noway |c
step
goto 66.0,86.5
.talk 23141
..turnin 11020
..turnin 11035
step
goto 66.1,86.4
.talk 23140
..turnin 11015
..turnin 11016 |tip This quest is only available if you have your Skinning skill to at least 350.
..turnin 11018 |tip This quest is only available if you have your Mining skill to at least 350.
..turnin 11017 |tip This quest is only available if you have your Herbalism skill to at least 350.
step
'Repeat this process daily until you are Friendly with the Netherwing faction.  Also, you can use the Netherwing Egg Optimized Path guide section to find Netherwing Eggs and turn them in for 250 Netherwing reputation per Netherwing Egg.
.' You have reached the end of the dailies guide. Click here to return to the beginning of the guide. |confirm
|next hub
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Outland (60 - 70)\\Netherdrake Mount Guide\\Netherwing Reputation (Friendly)", [[
author support@zygorguides.com
description This guide section will walk you through getting Honored reputation with the Netherwing faction.
description You must have completed the Netherwing Reputation (Friendly) - Pre-Quests guide section
description in order to be able to complete the quests in this guide section.
startlevel 80
step
label	hub
'Proceeding to proper section |next |only if default
'Proceeding to proper section |next dailies |only if completedq(11054)
step
goto Shadowmoon Valley,66.1,86.4
.talk 23140
..accept 11053
step
goto 66.2,85.7
.talk 23139
..turnin 11053
step
goto 66.1,86.4
.talk 23140
..accept 11075
step
goto 66.8,86.1
.talk 23291
..accept 11054
step
goto 65.4,90.2
.talk 23149
..turnin 11075
step
'Go inside the mine to [71.6,87.6]
.talk 23166
..accept 11083
step
goto 73.7,88.1
.kill 1 Crazed Murkblood Foreman |q 11083/1
.kill 5 Crazed Murkblood Miner |q 11083/2
step
goto 71.6,87.6
.talk 23166
..turnin 11083
step
goto 64.8,85.6
.from Black Blood of Draenor##23286+
.collect Sludge-covered Object##32724+ |n
.' Click the Sludge-covered Objects in your bags to open them |use Sludge-covered Object##32724
.collect Murkblood Escape Plans##32726 |n
.' Click the Murkblood Escape Plans in your bags |use Murkblood Escape Plans##32726
..accept 11081
step
goto 65.3,90.2 |n
.' Leave the mine |goto Shadowmoon Valley,65.3,90.2,0.5 |noway |c
step
goto 65.4,90.2
.talk 23149
..turnin 11081
..accept 11082
step
'Go inside the mine and follow the path to [73.0,82.2]
.talk 23309
..' Tell him you are here for him
.' Gather Murkblood Information |q 11082/1
.get Hand of the Overseer |q 11082/2
step
goto 65.3,90.2 |n
.' Leave the mine |goto Shadowmoon Valley,65.3,90.2,0.5 |noway |c
step
goto 65.4,90.2
.talk 23149
..turnin 11082
step
get 10 Knothide Leather |q 11054/1 |tip You can get the 10 Knothide Leather from the Auction House, or by Skinning mobs for the leather.
.'If you want to get the 10 Knothide Leather by skinning, kill the mobs around [60.4,45.2]
step
goto Netherstorm,46.4,10.8
.from Tyrantus##20931
.get Hardened Hide of Tyrantus |q 11054/2
step
goto Shadowmoon Valley,66.8,86.1
.talk 23291
..turnin 11054
daily
step
label	dailies
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..accept 11020
..accept 11035
step
goto 66.1,86.4
.talk 23140
..accept 11015
..accept 11016 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350. |or
..accept 11018 |only if skill ("Mining") >= 350 |tip This quest is only available if you have your Mining skill to at least 350. |or
..accept 11017 |only if skill ("Herbalism") >= 350 |tip This quest is only available if you have your Herbalism skill to at least 350. |or
step
goto 66.8,86.1
.talk 23291
..accept 11055
step
goto 72.1,75.2
.from Dragonmaw Transporter##23188+ |tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
.get 10 Netherwing Relic |q 11035/1
step
goto 60.4,45.2
.from Greater Felfire Diemetradon##21462+, Felboar##21878+
.collect 12 Fel Gland##32502 |q 11020
step
goto 73.6,80.0
.' Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
.' Poison 12 Dragonmaw Peon Camps |q 11020/1
.' Use your Booterang on Disobedient Dragonmaw Peons |use Booterang##32680
.' Discipline 20 Dragonmaw Peons |q 11055/1
step
goto 62.6,86.2
.' Click Netherdust Bushes |tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
.get 40 Netherdust Pollen |q 11017/1
step
goto 70.0,91.4
. Click Nethercite Deposits |tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with a Mining skill of at least 350 to be able to complete this step.
.get 40 Nethercite Ore |q 11018/1
step
goto 65.4,90.2
.talk 23149
..accept 11076
step
'Go inside the mine to [65.1,87.5]
.talk 23376
..accept 11077
step
goto 66.9,84.0
.' Click Nethermine Cargo |tip They look like carts full of ore and crystals all around inside the Netherwing Mines.
.get 15 Nethermine Cargo |q 11076/1
step
goto 71.5,83.9
.kill 15 Nethermine Flayer |q 11077/1
.kill 5 Nethermine Ravager |q 11077/2
.get 30 Netherwing Crystal |q 11015/1
.' Skin Nethermine Flayers |only if skill ("Skinning") >= 350
.get 35 Nethermine Flayer Hide |q 11016/1 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350.
step
goto 65.1,87.5
.talk 23376
..turnin 11077
step
goto 65.4,90.2
.talk 23149
..turnin 11076
step
goto 66.0,86.5
.talk 23141
..turnin 11020
..turnin 11035
step
goto 66.1,86.4
.talk 23140
..turnin 11015
..turnin 11016 |tip This quest is only available if you have your Skinning skill to at least 350.
..turnin 11018 |tip This quest is only available if you have your Mining skill to at least 350.
..turnin 11017 |tip This quest is only available if you have your Herbalism skill to at least 350.
step
goto 66.8,86.1
.talk 23291
..turnin 11055
step
'Repeat this process daily until you are Honored with the Netherwing faction.  Also, you can use the Netherwing Egg Optimized Path guide section to find Netherwing Eggs and turn them in for 250 Netherwing reputation per Netherwing Egg.
.' You have reached the end of the dailies guide. Click here to return to the beginning of the guide. |confirm
|next hub
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Outland (60 - 70)\\Netherdrake Mount Guide\\Netherwing Reputation (Honored)", [[
author support@zygorguides.com
description This guide section will walk you through getting Revered reputation with the Netherwing faction.
description You must have completed the Netherwing Reputation (Honored) - Pre-Quests guide section
description in order to be able to complete the quests in this guide section.
startlevel 80
step
label	hub
'Proceeding to proper section |next |only if default
'Proceeding to proper section |next dailies |only if completedq(11071)
step
goto Shadowmoon Valley,66.1,86.4
.talk 23140
..accept 11084
step
goto 66.2,85.7
.talk 23139
..turnin 11084
step
goto 65.9,87.2
.talk 22433
..accept 11063 |instant
step
goto 65.2,85.7
.talk 23340
..accept 11064
.' Follow Murg "Oldie" Muckjaw as he flies |tip He will throw pumpkins at you as he flies, and you have to dodge them.  The easiest strategy is to fly sort of far behind him, and above him, so that you are looking down on him as you fly.  Don't let any of the pumpkins hit you and you will win the race.
.' Defeat Murg "Oldie" Muckjaw |q 11064/1
step
goto 65.9,87.2
.talk 22433
..turnin 11064
step
goto 65.2,85.5
.talk 23342
..accept 11067
.' Follow Trope the Filth-Belcher as he flies |tip He will throw green bombs at you as he flies, and you have to dodge them.  The easiest strategy is to fly far behind him, and under him.  Strafe to the sides when he throws the bombs and you can dodge them easily.  Don't let any of the bombs hit you and you will win the race.
.' Defeat Trope the Filth-Belcher |q 11067/1
step
goto 65.9,87.2
.talk 22433
..turnin 11067
step
goto 65.2,85.2
.talk 23344
..accept 11068
.' Follow Corlok the Vet as he flies |tip He will throw groups of skulls at you as he flies, and you have to dodge them.  The easiest strategy is to fly close behind him, but above him, while looking down at him.  Strafe to the sides when he throws the skulls and you can dodge them easily.  Don't let any of the skulls hit you and you will win the race.
.' Defeat Corlok the Vet |q 11068/1
step
goto 65.9,87.2
.talk 22433
..turnin 11068
step
goto 65.2,85.0
.talk 13437
..accept 11069
.' Follow Wing Commander Ichman as he flies |tip He will throw fireballs at you as he flies, and you have to dodge them.  The easiest strategy is to fly behind him, but far above him, while looking down at him.  Strafe to the sides when he throws the fireballs and you can dodge them easily.  Don't let any of the fireballs hit you and you will win the race.  Also, be careful because he does sharp turns and maneuvers, so it's easy to lose track of him if you aren't careful.
.' Defeat Wing Commander Ichman |q 11069/1
step
goto 65.9,87.2
.talk 22433
..turnin 11069
step
goto 65.2,84.9
.talk 13181
..accept 11070
.' Follow Wing Commander Mulverick as he flies |tip He will throw lightning bolts at you as he flies, and you have to dodge them.  The lightning bolts will follow you, unlike the previous race quests, where the objects they throw did not follow you.  The easiest strategy is to fly beside him, while strafing, and almost ahead of him, if you can.  Don't let any of the lightning bolts hit you and you will win the race.
.' Defeat Wing Commander Mulverick |q 11070/1
step
goto 65.9,87.2
.talk 22433
..turnin 11070
step
goto 65.5,85.3
.talk 23348
..accept 11071
.' Follow Captain Skyshatter as he flies |tip Meteors fall all around you as you fly with Captain Skyshatter, and you have to dodge them.  The easiest strategy is to fly beside him, while strafing, and almost ahead of him, if you can.  Stay close to him and the meteors will hit him, as well as you, which will stop him for a second, allowing you to catch up to him, if needed.  You will not get knocked off your mount by the meteors, just stunned for a second, so there's nothing to worry about.
.' Defeat Captain Skyshatter |q 11071/1
step
goto 65.9,87.2
.talk 22433
..turnin 11071
daily
step
label	dailies
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..accept 11020
..accept 11035
step
goto 66.1,86.4
.talk 23140
..accept 11015
..accept 11016 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350. |or
..accept 11018 |only if skill ("Mining") >= 350 |tip This quest is only available if you have your Mining skill to at least 350. |or
..accept 11017 |only if skill ("Herbalism") >= 350 |tip This quest is only available if you have your Herbalism skill to at least 350. |or
step
goto 66.8,86.1
.talk 23291
..accept 11055
step
goto 66.2,85.7
.talk 23139
..accept 11086
step
goto 72.1,75.2
.from Dragonmaw Transporter##23188+ |tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
.get 10 Netherwing Relic |q 11035/1
step
goto 60.4,45.2
.from Greater Felfire Diemetradon##21462+, Felboar##21878+
.collect 12 Fel Gland##32502 |q 11020
step
goto 73.6,80.0
.' Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
.' Poison 12 Dragonmaw Peon Camps |q 11020/1
.' Use your Booterang on Disobedient Dragonmaw Peons |use Booterang##32680
.' Discipline 20 Dragonmaw Peons |q 11055/1
step
goto 62.6,86.2
.' Click Netherdust Bushes |tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
.get 40 Netherdust Pollen |q 11017/1
step
goto 70.0,91.4
. Click Nethercite Deposits |tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with a Mining skill of at least 350 to be able to complete this step.
.get 40 Nethercite Ore |q 11018/1
step
goto 65.4,90.2
.talk 23149
..accept 11076
step
'Go inside the mine to [65.1,87.5]
.talk 23376
..accept 11077
step
goto 66.9,84.0
.' Click Nethermine Cargo |tip They look like carts full of ore and crystals all around inside the Netherwing Mines.
.get 15 Nethermine Cargo |q 11076/1
step
goto 71.5,83.9
.kill 15 Nethermine Flayer |q 11077/1
.kill 5 Nethermine Ravager |q 11077/2
.get 30 Netherwing Crystal |q 11015/1
.' Skin Nethermine Flayers |only if skill ("Skinning") >= 350
.get 35 Nethermine Flayer Hide |q 11016/1 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350.
step
goto 65.1,87.5
.talk 23376
..turnin 11077
step
goto 65.4,90.2
.talk 23149
..turnin 11076
step
goto Nagrand,12.7,38.9
.from Deathshadow Overlord##22393+, Deathshadow Warlock##22363+, Deathshadow Spellbinder##22342+, Deathshadow Archon##22343+, Deathshadow Acolyte##22341+
.kill 20 Deathshadow Agent |q 11086/1
step
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..turnin 11020
..turnin 11035
step
goto 66.1,86.4
.talk 23140
..turnin 11015
..turnin 11016 |tip This quest is only available if you have your Skinning skill to at least 350.
..turnin 11018 |tip This quest is only available if you have your Mining skill to at least 350.
..turnin 11017 |tip This quest is only available if you have your Herbalism skill to at least 350.
step
goto 66.8,86.1
.talk 23291
..turnin 11055
step
goto 66.2,85.7
.talk 23139
..turnin 11086
step
'Repeat this process daily until you are Revered with the Netherwing faction.  Also, you can use the Netherwing Egg Optimized Path guide section to find Netherwing Eggs and turn them in for 250 Netherwing reputation per Netherwing Egg.
.' You have reached the end of the dailies guide. Click here to return to the beginning of the guide. |confirm
|next hub
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Outland (60 - 70)\\Netherdrake Mount Guide\\Netherwing Reputation (Revered)", [[
author support@zygorguides.com
description This guide section will walk you through getting Exalted reputation with the Netherwing faction.
description You must have completed the Netherwing Reputation (Revered) - Pre-Quests guide section
description in order to be able to complete the quests in this guide section.
startlevel 80
step
label	hub
'Proceeding to proper section |next |only if default
'Proceeding to proper section |next |only if completedq(11100) or completedq(11095)
step
goto Shadowmoon Valley,66.1,86.4
.talk 23140
..accept 11092
step
goto 66.2,85.7
.talk 23139
..turnin 11092
..accept 11094 |only if rep ('The Scryers') >= Friendly
..accept 11099 |only if rep ('The Aldor') >= Friendly
step
goto 74.5,86.3
.from Arvoar the Rapacious##23267+ |tip He looks like a big Flayer mob that walks in a circle in this spot.
.collect Partially Digested Hand##32621 |n
.' Click the Partially Digested Hand in your bags |use Partially Digested Hand##32621
..accept 11041
step
goto 70.2,84.3
.kill Barash the Den Mother |q 11041/2 |tip She looks like a big yellow Flayer mob that walks in a circle in this spot.
step
goto 71.3,85.8
.kill 10 Overmine Flayer |q 11041/1
step
goto 66.2,85.7
.talk 23139
..turnin 11041
step
goto 56.3,59.6
.talk 21955
..turnin 11094
..accept 11095
only if rep ('The Scryers') >= Friendly
step
goto 56.5,58.7
.talk 23434
..turnin 11095
only if rep ('The Scryers') >= Friendly
step
goto 62.6,28.4
.talk 21402
..turnin 11099
..accept 11100
only if rep ('The Aldor') >= Friendly
step
goto 62.4,29.3
.talk 23452
..turnin 11100
only if rep ('The Aldor') >= Friendly
daily
step
label	dailies
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..accept 11020
..accept 11035
step
goto 66.1,86.4
.talk 23140
..accept 11015
..accept 11016 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350. |or
..accept 11018 |only if skill ("Mining") >= 350 |tip This quest is only available if you have your Mining skill to at least 350. |or
..accept 11017 |only if skill ("Herbalism") >= 350 |tip This quest is only available if you have your Herbalism skill to at least 350. |or
step
goto 66.8,86.1
.talk 23291
..accept 11055
step
goto 66.2,85.7
.talk 23139
..accept 11086
step
goto 72.1,75.2
.from Dragonmaw Transporter##23188+ |tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
.get 10 Netherwing Relic |q 11035/1
step
goto 56.5,58.7
.talk 23434
..accept 11097
.' Follow Commander Hobb and help him fight the Dragonmaw Skybreakers
.' Protect Commander Hobb, he must survive
.' Defeat the Dragonmaw Forces |q 11097/1
only if rep ('The Scryers') >= Friendly
step
goto 60.4,45.2
.from Greater Felfire Diemetradon##21462+, Felboar##21878+
.collect 12 Fel Gland##32502 |q 11020
step
goto 62.4,29.3
.talk 23452
..accept 11101
.' Follow Commander Arcus and help him fight the Dragonmaw Skybreakers
.' Protect Commander Arcus, he must survive
.' Defeat the Dragonmaw Forces |q 11101/1
only if rep ('The Aldor') >= Friendly
step
goto 73.6,80.0
.' Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
.' Poison 12 Dragonmaw Peon Camps |q 11020/1
.' Use your Booterang on Disobedient Dragonmaw Peons |use Booterang##32680
.' Discipline 20 Dragonmaw Peons |q 11055/1
step
goto 62.6,86.2
.' Click Netherdust Bushes |tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
.get 40 Netherdust Pollen |q 11017/1
step
goto 70.0,91.4
. Click Nethercite Deposits |tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with a Mining skill of at least 350 to be able to complete this step.
.get 40 Nethercite Ore |q 11018/1
step
goto 65.4,90.2
.talk 23149
..accept 11076
step
'Go inside the mine to 65.1,87.5
.talk 23376
..accept 11077
step
goto 66.9,84.0
.' Click Nethermine Cargo |tip They look like carts full of ore and crystals all around inside the Netherwing Mines.
.get 15 Nethermine Cargo |q 11076/1
step
goto 71.5,83.9
.kill 15 Nethermine Flayer |q 11077/1
.kill 5 Nethermine Ravager |q 11077/2
.get 30 Netherwing Crystal |q 11015/1
.' Skin Nethermine Flayers |only if skill ("Skinning") >= 350
.get 35 Nethermine Flayer Hide |q 11016/1 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350.
step
goto 65.1,87.5
.talk 23376
..turnin 11077
step
goto 65.4,90.2
.talk 23149
..turnin 11076
step
goto Nagrand,12.7,38.9
.from Deathshadow Overlord##22393+, Deathshadow Warlock##22363+, Deathshadow Spellbinder##22342+, Deathshadow Archon##22343+, Deathshadow Acolyte##22341+
.kill 20 Deathshadow Agent |q 11086/1
step
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..turnin 11020
..turnin 11035
step
goto 66.1,86.4
.talk 23140
..turnin 11015
..turnin 11016 |tip This quest is only available if you have your Skinning skill to at least 350.
..turnin 11018 |tip This quest is only available if you have your Mining skill to at least 350.
..turnin 11017 |tip This quest is only available if you have your Herbalism skill to at least 350.
step
goto 66.8,86.1
.talk 23291
..turnin 11055
step
goto 66.2,85.7
.talk 23139
..turnin 11086
..turnin 11097 |only if rep ('The Scryers') >= Friendly
..turnin 11101 |only if rep ('The Aldor') >= Friendly
step
'Repeat this process daily until you are Exalted with the Netherwing faction.  Also, you can use the Netherwing Egg Optimized Path guide section to find Netherwing Eggs and turn them in for 250 Netherwing reputation per Netherwing Egg.
.' You have reached the end of the dailies guide. Click here to return to the beginning of the guide. |confirm
|next hub
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Outland (60 - 70)\\Netherdrake Mount Guide\\Netherwing Reputation (Exalted) - Getting Your Netherdrake!", [[
author support@zygorguides.com
description This guide section will walk you through the final steps of getting your Netherdrake Mount,
description once you've earned Exalted reputation with the Netherwing faction.
description You must have completed the Netherwing Reputation (Revered) guide section
description in order to be able to complete the quests in this guide section.
startlevel 80
step
goto Shadowmoon Valley,66.1,86.4
.talk 23140
..accept 11107
step
goto 66.2,85.7
.talk 23139
..turnin 11107
..accept 11108
.' Watch the cut scene
.' You will be taken to Shattrath City |goto Shattrath City,65.8,18.6,0.5 |noway |c
step
goto Shattrath City,66.6,16.4
.talk 23433
..turnin 11108
step
goto 66.8,17.6
.' Look at the netherdrakes sitting around this area.  Pick whichever one you like the best and complete the quest it offers you:
..accept 11113 |instant |or
..accept 11114 |instant |or
..accept 11112 |instant |or
..accept 11111 |instant |or
..accept 11110 |instant |or
..accept 11109 |instant |or
step
'Congratulations, you are now the proud owner of a Netherdrake Mount!  Enjoy!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Outland (60 - 70)\\Netherdrake Mount Guide\\Netherwing Egg Hunting - Optimized Path", [[
author support@zygorguides.com
description This guide section will walk you through an optimized path of collecting Netherwing Eggs,
description which you can turn in for 250 Netherwing rep each.
description You must have completed the Netherwing Reputation (Neutral) - Pre-Quests guide section
description in order to be able to collect and turn in the Netherwing Eggs you find using this guide section.
startlevel 80
step
goto Shadowmoon Valley,69.4,63.6 |n
.' There can be an egg here |goto Shadowmoon Valley,69.4,63.6,0.3 |noway |c |tip At the top of the stairs inside this tower.
step
goto 70.1,62.0 |n
.' There can be an egg here |goto Shadowmoon Valley,70.1,62.0,0.3 |noway |c |tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
goto 71.4,60.7 |n
.' There can be an egg here |goto Shadowmoon Valley,71.4,60.7,0.3 |noway |c |tip Sitting on the middle of this small round table inside this big room on the bottom level of the Dragonmaw Fortress.
step
goto 70.9,62.6 |n
.' There can be an egg here |goto Shadowmoon Valley,70.9,62.6,0.3 |noway |c |tip Sitting on the floor next to this small fire brazier inside this big room on the bottom level of the Dragonmaw Fortress.
step
goto 71.3,62.6 |n
.' There can be an egg here |goto Shadowmoon Valley,71.3,62.6,0.3 |noway |c |tip Sitting on the floor next to the wall inside this big room on the top level of the Dragonmaw Fortress.
step
goto 71.4,60.8 |n
.' There can be an egg here |goto Shadowmoon Valley,71.4,60.8,0.3 |noway |c |tip Sitting on the floor inside this tiny room on the top level of the Dragonmaw Fortress.
step
goto 70.0,60.3 |n
.' There can be an egg here |goto Shadowmoon Valley,70.0,60.3,0.3 |noway |c |tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
goto 69.7,58.5 |n
.' There can be an egg here |goto Shadowmoon Valley,69.7,58.5,0.3 |noway |c |tip Sitting on the ground in this pen area amongst the baby netherdrakes.
step
goto 68.1,59.7 |n
.' There can be an egg here |goto Shadowmoon Valley,68.1,59.7,0.3 |noway |c |tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
goto 68.3,59.8 |n
.' There can be an egg here |goto Shadowmoon Valley,68.3,59.8,0.3 |noway |c |tip Sitting on the ground in this corner.
step
goto 68.5,61.2 |n
.' There can be an egg here |goto Shadowmoon Valley,68.5,61.2,0.3 |noway |c |tip Sitting on the ground in this stall inside the stable.
step
goto 67.2,61.3 |n
.' There can be an egg here |goto Shadowmoon Valley,67.2,61.3,0.3 |noway |c |tip Sitting in this wooden wagon.
step
goto 67.2,62.3 |n
.' There can be an egg here |goto Shadowmoon Valley,67.2,62.3,0.3 |noway |c |tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
goto 68.9,62.5 |n
.' There can be an egg here |goto Shadowmoon Valley,68.9,62.5,0.3 |noway |c |tip Sitting on the ground inside this half burned down hut.
step
goto 76.0,81.2 |n
.' There can be an egg here |goto Shadowmoon Valley,76.0,81.2,0.3 |noway |c |tip Sitting on the corner edge of this wooden landing dock.
step
goto 75.2,82.3 |n
.' There can be an egg here |goto Shadowmoon Valley,75.2,82.3,0.3 |noway |c |tip Sitting on the ground next to this big bunch of blue crystals.
step
goto 73.7,82.3 |n
.' There can be an egg here |goto Shadowmoon Valley,73.7,82.3,0.3 |noway |c |tip Sitting on top of this small mountain peak.
step
goto 73.0,84.0 |n
.' There can be an egg here |goto Shadowmoon Valley,73.0,84.0,0.3 |noway |c |tip Sitting on the edge of this small cliff, between 2 bunchs of big blue crystals.
step
goto 71.0,81.5 |n
.' There can be an egg here |goto Shadowmoon Valley,71.0,81.5,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 68.2,81.7 |n
.' There can be an egg here |goto Shadowmoon Valley,68.2,81.7,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 66.2,83.8 |n
.' There can be an egg here |goto Shadowmoon Valley,66.2,83.8,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 65.7,84.2 |n
.' There can be an egg here |goto Shadowmoon Valley,65.7,84.2,0.3 |noway |c |tip Sitting at the very tip of this huge crystal.
step
goto 63.3,81.5 |n
.' There can be an egg here |goto Shadowmoon Valley,63.3,81.5,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 65.4,76.5 |n
.' There can be an egg here |goto Shadowmoon Valley,65.4,76.5,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 63.2,75.6 |n
.' There can be an egg here |goto Shadowmoon Valley,63.2,75.6,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 62.2,74.2 |n
.' There can be an egg here |goto Shadowmoon Valley,62.2,74.2,0.3 |noway |c |tip Sitting on this small floating rock.  You have to fly down to it.
step
goto 61.7,73.3 |n
.' There can be an egg here |goto Shadowmoon Valley,61.7,73.3,0.3 |noway |c |tip Sitting on this big floating rock.  You have to fly down to it.
step
goto 63.0,71.6 |n
.' There can be an egg here |goto Shadowmoon Valley,63.0,71.6,0.3 |noway |c |tip Sitting on this big floating rock.  You have to fly up to it.
step
goto 61.3,70.7 |n
.' There can be an egg here |goto Shadowmoon Valley,61.3,70.7,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 60.6,73.4 |n
.' There can be an egg here |goto Shadowmoon Valley,60.6,73.4,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 59.3,74.1 |n
.' There can be an egg here |goto Shadowmoon Valley,59.3,74.1,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 60.0,76.7 |n
.' There can be an egg here |goto Shadowmoon Valley,60.0,76.7,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 59.6,78.3 |n
.' There can be an egg here |goto Shadowmoon Valley,59.6,78.3,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 61.2,77.3 |n
.' There can be an egg here |goto Shadowmoon Valley,61.2,77.3,0.3 |noway |c |tip Sitting on this big floating rock.  You have to fly up to it.
step
goto 62.2,77.8 |n
.' There can be an egg here |goto Shadowmoon Valley,62.2,77.8,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 63.3,81.5 |n
.' There can be an egg here |goto Shadowmoon Valley,63.3,81.5,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 63.0,83.7 |n
.' There can be an egg here |goto Shadowmoon Valley,63.0,83.7,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 63.5,84.8 |n
.' There can be an egg here |goto Shadowmoon Valley,63.5,84.8,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 65.5,84.9 |n
.' There can be an egg here |goto Shadowmoon Valley,65.5,84.9,0.3 |noway |c |tip Sitting on the ground next to this bunch of big blue crystals.
step
goto 66.0,86.5
.talk 23141
.' Turn in all of the Netherwing Eggs you have collected
|confirm always
step
goto 64.0,86.1 |n
.' There can be an egg here |goto Shadowmoon Valley,64.0,86.1,0.3 |noway |c |tip Sitting on the ground next to this bunch of big blue crystals.  This one is pretty well hidden, so pay close attention to this one or you might pass it up.
step
goto 62.5,84.9 |n
.' There can be an egg here |goto Shadowmoon Valley,62.5,84.9,0.3 |noway |c |tip Sitting on the ground next to this bunch of big blue crystals.
step
goto 60.2,87.1 |n
.' There can be an egg here |goto Shadowmoon Valley,60.2,87.1,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 62.1,89.5 |n
.' There can be an egg here |goto Shadowmoon Valley,62.1,89.5,0.3 |noway |c |tip Sitting on this big floating rock.  You have to fly up to it.
step
goto 64.9,90.8 |n
.' There can be an egg here |goto Shadowmoon Valley,64.9,90.8,0.3 |noway |c |tip Sitting on the ground near this bunch of big blue crystals.
step
'Go inside the mine to 64.8,87.2 |n
.' There can be an egg here |goto Shadowmoon Valley,64.8,87.2,0.3 |noway |c |tip Netherwing Eggs can spawn in various places in this entry hallway in the mines, so look around before moving on.
step
goto 68.3,84.0 |n
.' Jump down off the mine cart track here |goto Shadowmoon Valley,68.3,84.0,0.3 |noway |c
step
goto 68.8,86.1 |n
.' There can be an egg here |goto Shadowmoon Valley,68.8,86.1,0.3 |noway |c |tip Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.
step
goto 72.3,87.3 |n
.' There can be an egg here |goto Shadowmoon Valley,72.3,87.3,0.3 |noway |c |tip Netherwing Eggs can spawn in various places all around this room with the big blue ghost dragon, so make sure to check thoroughly.
step
goto 69.9,85.8 |n
.' There can be an egg here |goto Shadowmoon Valley,69.9,85.8,0.3 |noway |c |tip Go back to the mine cart track and follow the track on the right side.
step
goto 73.6,85.2 |n
.' There can be an egg here |goto Shadowmoon Valley,73.6,85.2,0.3 |noway |c |tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
goto 73.0,89.3 |n
.' There can be an egg here |goto Shadowmoon Valley,73.0,89.3,0.3 |noway |c |tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
goto 73.6,85.2 |n
.' There can be an egg here |goto Shadowmoon Valley,73.6,85.2,0.3 |noway |c |tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
goto 68.5,81.6 |n
.' There can be an egg here |goto Shadowmoon Valley,68.5,81.6,0.3 |noway |c |tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
goto 64.8,83.0 |n
.' There can be an egg here |goto Shadowmoon Valley,64.8,83.0,0.3 |noway |c |tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
goto 65.2,84.2 |n
.' Jump over the wooden rail in this spot to get down to the hallway below |goto Shadowmoon Valley,65.2,84.2,0.3 |noway |c
step
goto 65.3,90.2 |n
.' Leave the cave |goto Shadowmoon Valley,65.3,90.2,0.3 |noway |c |tip Make sure to keep an eye out for Netherwing Eggs as you run through the entrance hallway to leave the cave.
step
goto 65.5,94.2 |n
.' There can be an egg here |goto Shadowmoon Valley,65.5,94.2,0.3 |noway |c |tip Sitting on this big floating rock.  You have to fly up to it.
step
goto 68.0,94.9 |n
.' There can be an egg here |goto Shadowmoon Valley,68.0,94.9,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 69.6,91.8 |n
.' There can be an egg here |goto Shadowmoon Valley,69.6,91.8,0.3 |noway |c |tip Sitting on the ground next to this bunch of big blue crystals.
step
goto 70.9,89.2 |n
.' There can be an egg here |goto Shadowmoon Valley,70.9,89.2,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 71.4,86.6 |n
.' There can be an egg here |goto Shadowmoon Valley,71.4,86.6,0.3 |noway |c |tip Sitting on the ground next to this bunch of big blue crystals, up on the top of this mountain.
step
goto 72.2,87.1 |n
.' There can be an egg here |goto Shadowmoon Valley,72.2,87.1,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 73.4,90.3 |n
.' There can be an egg here |goto Shadowmoon Valley,73.4,90.3,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 75.8,91.6 |n
.' There can be an egg here |goto Shadowmoon Valley,75.8,91.6,0.3 |noway |c |tip Sitting on this small floating rock.
step
goto 77.6,92.6 |n
.' There can be an egg here |goto Shadowmoon Valley,77.6,92.6,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 77.4,95.7 |n
.' There can be an egg here |goto Shadowmoon Valley,77.4,95.7,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 77.3,85.9 |n
.' There can be an egg here |goto Shadowmoon Valley,77.3,85.9,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 76.5,83.3 |n
.' There can be an egg here |goto Shadowmoon Valley,76.5,83.3,0.3 |noway |c |tip Sitting on the ground inside this netherdrake skeleton's mouth.
step
goto 78.9,83.3 |n
.' There can be an egg here |goto Shadowmoon Valley,78.9,83.3,0.3 |noway |c |tip Sitting right next to this bunch of big blue crystals on the side of this cliff.  You have to fly down to it.
step
goto 78.1,81.2 |n
.' There can be an egg here |goto Shadowmoon Valley,78.1,81.2,0.3 |noway |c |tip Sitting on top of this tall mountain peak.  You have to fly up to it.
step
goto 78.8,79.6 |n
.' There can be an egg here |goto Shadowmoon Valley,78.8,79.6,0.3 |noway |c |tip Sitting at the very tip of this huge crystal.
step
'This is the end of the path.
.' Click here to go back to the beginning of the path. |confirm |next "start"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Lunar Festival\\Lunar Festival Main Questline",[[
author support@zygorguides.com
description This guide section will walk you through completing the main questline for the Lunar Festival event.
condition suggested isevent('Lunar Festival')
step
#include "Lunar Festival Main Quest"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path",[[
author support@zygorguides.com
description This guide section will walk you through an optimized path for honoring the elders
description that are spread out all over Azeroth for the Lunar Festival event.
description Using this guide section, you will collect 83 Coins of Ancestry.
condition suggested isevent('Lunar Festival')
step
#include "Lunar Festival Elder Path"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Lunar Festival\\Lunar Festival Achievements",[[
description
condition suggested isevent('Lunar Festival')
step
#include "Lunar Festival Achievement"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Love is in the Air\\Love is in the Air Main Questline",[[
author support@zygorguides.com
description This guide section will walk you through completing the main questline for the Love is in the Air event.
condition suggested isevent('Love is in the Air')
step
#include "Love is in the Air Main Quest"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Love is in the Air\\Love is in the Air Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the Love is in the Air even daily quests.
condition suggested isevent('Love is in the Air')
daily
step
#include "Love is in the Air Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Love is in the Air\\Love is in the Air Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the Love is in the Air event achievements.
condition suggested isevent('Love is in the Air')
step
#include "Love is in the Air Achievement"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Noblegarden\\Noblegarden Quests and Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests and dailies for the Noblegarden event.
condition suggested isevent('Noblegarden')
step
#include "Noblegarden Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Noblegarden\\Noblegarden Achievements",[[
author support@zygorguides.com
description This guide section will walk you through getting all 12 achievements for the Noblegarden event.
condition suggested isevent('Noblegarden')
#include "Noblegarden Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Children's Week\\Children's Week Stormwind Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the Stormwind questline for the Children's Week event.
condition suggested isevent("Children's Week")
startlevel 60
step
#include "Children's Week Stormwind"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Children's Week\\Children's Week Shattrath Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the Shattrath questline for the Children's Week event.
condition suggested isevent("Children's Week")
startlevel 60
step
#include "Children's Week Shattrath"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Children's Week\\Children's Week Dalaran Oracles Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the Dalaran Oracles questline for the Children's Week event.
condition suggested isevent("Children's Week")
startlevel 70
step
#include "Children's Week Dalaran Oracles Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Children's Week\\Children's Week Dalaran Wolvar Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the Dalaran Wolvar questline for the Children's Week event.
condition suggested isevent("Children's Week")
startlevel 70
step
#include "Children's Week Dalaran Wolvar Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Children's Week\\Children's Week Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the Achievements for the Children's Week event.
condition suggested isevent("Children's Week")
startlevel 10
step
#include "Children's Week Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Midsummer Fire Festival event.
condition suggested isevent('Midsummer Fire Festival')
startlevel 80
step
#include "Midsummer Fire Festival Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Midsummer Fire Festival event.
condition suggested isevent('Midsummer Fire Festival')
startlevel 80
step
#include "Midsummer Fire Festival Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Quests (Pandaria)",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Midsummer Fire Festival event.
condition suggested isevent('Midsummer Fire Festival')
startlevel 85
step
goto The Jade Forest 47.2,47.2
.talk 69529
..accept 32498
step
goto The Jade Forest 47.2,47.2
.click Midsummer Bonfire##
..turnin 32498
step
goto Krasarang Wilds 74.0,9.5
.talk 69533
..accept 32499
step
goto Krasarang Wilds 74.0,9.6
.click Midsummer Bonfire##
..turnin 32498
step
goto Valley of the Four Winds/0 51.8,51.3
.talk 69550
..accept 32502
step
goto Valley of the Four Winds/0 51.8,51.3
.click Midsummer Bonfire##
..turnin 32502
step
goto Dread Wastes 56.1,69.5
.talk 69522
..accept 32497
step
goto Dread Wastes 56.1,69.5
.click Midsummer Bonfire##
..turnin 32497
step
goto Townlong Steppes/0 71.5,56.3
.talk 69536
..accept 32501
step
goto Townlong Steppes/0 71.5,56.3
.click Midsummer Bonfire##
..turnin 32501
step
goto Kun-Lai Summit 71.1,90.9
.talk 69535
..accept 32500
step
goto Kun-Lai Summit 71.1,90.9
.click Midsummer Bonfire##
..turnin 32500
step
goto Vale of Eternal Blossoms/0 79.7,37.3
.talk 69572
..accept 32510 |instant
step
goto Vale of Eternal Blossoms/0 77.8,33.6
.click Midsummer Bonfire##
..accept 32496 |instant
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Harvest Festival\\Harvest Festival Quest",[[
author support@zygorguides.com
description This guide section will walk you through completing the quest for the Harvest Festival event.
condition suggested isevent('Harvest Festival')
step
#include "Harvest Festival Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Brewfest\\Brewfest Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Brewfest event.
condition suggested isevent('Brewfest')
step
#include "Brewfest Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Brewfest\\Brewfest Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests for the Brewfest event.
condition suggested isevent('Brewfest')
daily
step
#include "Brewfest Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Brewfest\\Brewfest Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Brewfest event.
condition suggested isevent('Brewfest')
step
#include "Brewfest Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Hallow's End\\Hallow's End Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Hallow's End event.
condition suggested isevent("Hallow's End")
#include "Hallows_End_Quests_Alliance"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Hallow's End\\Hallow's End Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests for the Hallow's End event.
condition suggested isevent("Hallow's End")
daily
#include "Hallows_End_Dailies_Alliance"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Hallow's End\\Hallow's End Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Hallow's End event.
condition suggested isevent("Hallow's End")
#include "Hallows_End_Achievements_Alliance"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Hallow's End\\Hallow's End Achievements (Pandaria)",[[
description Visit all the Candy Buckets in Pandaria
condition end achieved(7601)
#include "Hallows_End_Achievements_Alliance_Pandaria"
step
'Congraulations, you now have the _Tricks and Treats of Pandaria_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Pilgrim's Bounty\\Pilgrim's Bounty Quests and Cooking 1-300 Guide",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Pilgrim's Bounty event, as well as getting your Cooking skill from 1-300.
condition suggested isevent("Pilgrim's Bounty")
#include "Pilgrims_Bounty_Quests_Alliance"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Pilgrim's Bounty\\Pilgrim's Bounty Daily Quests",[[
author support@zygorguides.com
description This quide will help run through the Pilgrims Bounty Dailies and Achievements to earn the Title Pilgrim.
condition suggested isevent("Pilgrim's Bounty")
#include "Pilgrims_Bounty_Dailies_Alliance"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Feast of Winter Veil\\Feast of Winter Veil Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Feast of Winter Veil event.
condition suggested isevent('Feast of Winter Veil')
step
#include "Feast of Winter Veil Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Feast of Winter Veil\\Feast of Winter Veil Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Feast of Winter Veil event.
condition suggested isevent('Feast of Winter Veil')
step
#include "Feast of Winter Veil Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Outland (60 - 70)\\Shattered Sun Offensive\\Dailies", [[
author support@zygorguides.com
description This guide section will walk you through the Shattered Sun Offensive Daily Quests.
daily
step
goto Shattrath City,56.3,81.5
.talk 19232
.home Shattrath City
only if rep ("The Scryers")>=Neutral
step
goto Shattrath City,28.2,49.4
.talk 19046
.home Shattrath City
only if rep ("The Aldor")>=Neutral
step
goto Shattrath City,49.1,42.5
.talk 24932
..accept 11514
step
goto 62.8,36.0
.talk 25140
..accept 11877
step
goto 62.8,35.6
.talk 19202
..accept 11875
only if skill("Skinning")>300 or skill("Mining")>300 or skill("Herbalism")>300
step
goto Shattrath City,61.7,52.1
.talk 19475
..accept 11880
step
goto Shattrath City,48.6,42.0 |n
.' Click the Shattrath Portal to Isle of Quel'Danas. |goto Isle of Quel'Danas
step
goto Isle of Quel'Danas,47.5,35.4
.talk 25133
..accept 11547
step
goto 47.5,35.1
.talk 25057
..accept 11533
step
goto 47.6,35.1
.talk 25061
..accept 11537
step
goto 48.8,37.2
.talk 25112
..accept 11548
.' This quest requires that you give 10 Gold in trade of reputation with the Shattered Sun Offensive, you should be able to turn it in immidiately.
..turnin 11548
step
goto 50.6,39.0
.talk 25108
..accept 11543
step
goto 49.3,40.4
.talk 25069
..accept 11540
step
goto 50.6,40.8
.talk 25046
..accept 11536
..accept 11544
step
goto 51.5,32.5
.talk 24975
..accept 11521
..accept 11546
step
goto 53.8,34.3
.talk 25088
..accept 11541
step
goto 47.5,30.5
.talk 24967
..accept 11523
..accept 11526
step
goto 47.1,30.7
.talk 24965
..accept 11525
step
goto Isle of Quel'Danas,44.3,28.5
.from Wretched Fiend##24966+
.collect 4 Mana Remnants##34338 |q 11523 |c
.kill Erratic Sentry##24972+ |n
.' Use Attuned Crystal Cores on the Erratic Sentries corpse. |use Attuned Crystal Cores##34368
..goal 5 Converted Sentry Deployed |q 11525/1
..collect 5 Bloodberry |q 11546/1 |tip They can be found all around this area on the ground.
step
goto Isle of Quel'Danas,42.1,35.7
.kill 6 Dawnblade Summoner |q 11540/1
.kill 6 Dawnblade Blood Knight |q 11540/2
.kill 3 Dawnblade Marksman |q 11540/3
.' Use your Astromancer's Crystal to sample the Bloodcrystal's density. |use Astromancer's Crystal##34533
.' Bloodcrystal Reading Taken |q 11547/3
step
goto Isle of Quel'Danas,46.5,35.5
.' Use the Mana Remnants to Energize the Crystal Ward. |use Mana Remnants##34338
.' Energize a Crystal Ward |q 11523/1
step
goto 48.5,25.2
.talk 25059
.' Tell him you Need to Intercept the Dawnblade Reinforcements.
.' Use your Flaming Oil to set fire to the ships in the water. |use Flaming Oil##34489
.' Sin'loren sails burned |q 11543/1
.' Bloodoath sails burned |q 11543/2
.' Dawnchaser sails burned |q 11543/3
step
.kill Dawnblade Reservist##25087+ |q 11543/4
.' You can find more at [Isle of Quel'Danas,51.1,9.7]
.' Another spot for them is at [Isle of Quel'Danas,55.2,11.8]
step
goto Isle of Quel'Danas,52.4,17.4
.talk 25236
.' Ride the dragonhawk to Sun's Reach. |goto Isle of Quel'Danas,48.4,25.3 |noway|c
step
goto Isle of Quel'Danas,48.5,25.2
.talk 25059
.' Tell him you've been ordered to undertake an airstrike.
.' Use your Arcane Charges on mobs once you get to the Dead Scar. |use Arcane Charges##34475
.kill 2 Pit Overlord##25031+ |q 11533/1
.kill 3 Eredar Sorcerer##25033+ |q 11533/2
.kill 12 Wrath Enforcer##25030+ |q 11533/3
step
goto Isle of Quel'Danas,48.5,43.7
.kill Emissary of Hate##25003 |n
.' Use your Shattered Sun Banner on his corpse. |use Shattered Sun Banner##34414
.' Impale the Emissary of Hate |q 11537/1
.kill 6 Burning Legion Demon |q 11537/2
.' Use your Astromancer's Crystal to sample the Portal's density. |use Astromancer's Crystal##34533
.' Portal Reading Taken |q 11547/1
step
.' Take this path back to they shoreside. |goto Isle of Quel'Danas,57.3,38.6 |c
step
goto Isle of Quel'Danas,64.1,49.9
.from Darkspine Myrmidon##25060+
..collect Darkspine Chest Key##34477 |n
.from Darkspine Siren##25073+
..collect Orb of Murloc Control##34483 |n
.' Use your Orbs of Murloc Control on Greengill Slaves along the shore. |use Orb of Murloc Control##34483
.' Free 10 Greengill Slaves |q 11541/1
.' Use your Darkspine Chest Keys on the Darkspine Ore Chest.
.get 3 Darkspine Iron Ore |q 11536/1
step
goto Isle of Quel'Danas,61.1,62.0
.' Use your Astromancer's Crystal to sample the Shrine's density. |use Astromancer's Crystal##34533
.' Shrine Reading Taken |q 11547/2
step
goto Shadowmoon Valley,68.5,37.5
.from Shadowmoon Chosen##22084+,Shadowmoon Slayer##22082+,Shadowmoon Darkweaver##22081+
.collect 5 Ata'mal Armament##34500 |q 11544
step
goto Terokkar Forest,59.7,10.3
.from Razorthorn Flayer##24920+
..collect Razorthorn Flayer Gland##34255 |q 11521
.' Use your Razorthorn Flayer Gland on Razorthorn Ravagers. |use Razorthorn Flayer Gland##34255
.' Use your pets Expose Razorthorn Root ability on mounds of dirt around the area. |cast Expose Razorthorn Root##44935
.collect 5 Razorthorn Root##34254 |q 11521/1
step
goto Nagrand,58.8,75.1
.from Clefthoof Bull##17132+,Talbuk Thorngrazer##17131+,Wild Elekk##18334+
.' Skin their corpses in order to collect the Nether Residue.
.get 8 Nether Residue##35229 |q 11875/1
only if skill("Skinning")>=300
step
goto 40.8,31.6
.' Mine inside the cave and collect Nether Residue.
.collect 8 Nether Residue##35229 |q 11875/1
.' You can check [Nagrand,50.0,56.6] for more Mining Nodes.
only if skill("Mining")>=300
step
goto Nagrand,38.3,65.3
.' Fly around the Spirit Fields looking for Fiery Red Orbs on the ground.
.' Use your Multiphase Spectrographic Goggles on the Orbs. |use Multiphase Spectrographic Goggles##35233
..goal 6 Multiphase Readings Taken |q 11880/1
step
goto Blade's Edge Mountains,54.0,18.1
.from Unbound Ethereal##22244+,Bash'ir Raider##22241+,Bash'ir Arcanist##22243+,Bash'ir Spell-Thief##22242+
.get 1 Bash'ir Phasing Device |q 11514
'Use the Bash'ir Phasing Device. |use Bash'ir Phasing Device##34248
.' Collect 10 Smuggled Mana Cell |q 11514/1
step
goto Netherstorm,25.9,66.8
.from Sunfury Bloodwarder##18853+,Sunfury Captain##19453+,Sunfury Magister##18855+,Sunfury Geologist##19779+,Sunfury Astromancer##19643
.get Sunfury Attack Plans |q 11877/1
step
goto Hellfire Peninsula,58.2,17.6
.talk 24937
..accept 11515
..accept 11516
step
goto Hellfire Peninsula,66.4,20.1
.from Wrath Herald##24919+
.collect 4 Demonic Blood##34259
.' use the Sizzling Embers to summon a Living Flare. |use Sizzling Embers##34253
.kill Incandescent Fel Spark##22323+ |n
.' Once you see a message that says "Living Flare becomes unstable with brimming energy!" take it to [Hellfire Peninsula,58.6,18.7].
.' Legion Gateway Destroyed |q 11516/1
step
goto 59.9,21.0
.' Use your Fel Siphon on Felblood Initiates. |use Fel Siphon##34257
.kill 4 Emaciated Felblood##24918 |q 11515/1
step
goto Hellfire Peninsula,58.2,17.6
.talk 24937
.turnin 11516
.turnin 11515
step
goto Shattrath City,62.8,36.0
.talk 25140
.turnin 11877
step
goto 62.8,35.6
.talk 19202
.turnin 11875
step
goto 61.6,52.2
.talk 19475
.turnin 11880
step
goto 49.1,42.5
.talk 24932
.turnin 11514
step
goto Shattrath City,48.6,42.0 |n
.' Click the Shattrath Portal to Isle of Qual'Danas. |goto Isle of Quel'Danas |noway|c
step
goto Isle of Quel'Danas,53.8,34.3
.talk 25088
..turnin 11541
step
goto 50.6,40.7
.' Click the Ata'mal Armaments and cleanse them at Hauthaa's Anvil. |use Ata'mal Armament##34500
.' Cleanse 5 Ata'mal Metals |q 11544/1
step
goto 50.6,40.7
.talk 25046
..turnin 11536
..turnin 11544
step
goto 50.6,39.0
.talk 25108
..turnin 11543
step
goto 49.3,40.4
.talk 25069
..turnin 11540
step
goto 51.5,32.5
.talk 24975
..turnin 11546
.turnin 11521
step
goto 47.5,35.3
.talk 25133
.turnin 11547
step
goto 47.5,35.1
.talk 25057
.turnin 11533
step
goto 47.6,35.1
.talk 25061
.turnin 11537
step
goto 47.5,30.5
.talk 24967
.turnin 11523
step
goto 47.1,30.7
.talk 24965
.turnin 11525
step
goto Isle of Quel'Danas,47.3,30.7
.talk 25032
..accept 11554 |instant
only if rep ("Shattered Sun Offensive")==Friendly
step
goto Isle of Quel'Danas,47.3,30.7
.talk 25032
..accept 11555 |instant
only if rep ("Shattered Sun Offensive")==Honored
step
goto Isle of Quel'Danas,47.3,30.7
.talk 25032
..accept 11556 |instant
only if rep ("Shattered Sun Offensive")==Revered
step
goto Isle of Quel'Danas,47.3,30.7
.talk 25032
..accept 11557 |instant
only if rep ("Shattered Sun Offensive")==Exalted
step
goto Isle of Quel'Danas,51.2,33.1
.talk 25163
..accept 11549 |instant |tip This quest will cost you 1,000 Gold, but give you the title "Of the Shattered Sun".
only if rep ("Shattered Sun Offensive")==Exalted
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Darkmoon Faire\\Darkmoon Faire Quests", [[
description This guide will help you navigate through the Darkmoon Faire Event
condition suggested isevent('Darkmoon Faire')
#include "A_Darkmoon_Faire_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Darkmoon Faire\\Darkmoon Faire Dailies", [[
description This guide will help you navigate through the Darkmoon Faire Event
condition suggested isevent('Darkmoon Faire')
#include "A_Darkmoon_Faire_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Deepholm\\Therazane's Throne Dailies, plus Pre-Quests",[[
description Walks you through completing the
description daily quests in the Therazane's
description Throne region of Deepholm.
step
'Proceeding to Pre-Quests |next |only if not completedq(26709)
'Proceeding to Dailies |next dailies |only if completedq(26709)
step
#include "A_Therazane_PreQuest"
step
#include "A_Therazane_DailyQuest"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Uldum Dailies with Pre-Quests",[[
description Contains the pre-quests to unlock
description the daily quests in Uldum.
description
description You must be at least level 83 to
description complete this guide section.
author support@zygorguides.com
step
'The pre-quests for these dailies are in Uldum. You can quest through the guide, or use our Leveling Guide for help. |only if not ZGV.guidesets['LevelingACATA']
'Click here to go to the leveling section to work on this rep |confirm |next "Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Uldum (83-84)" |only if ZGV.guidesets['LevelingACATA']
|only if not completedq(28633)
daily
step
label	hub
goto Uldum,60.3,38.3
.talk 46603
..accept 28250
step
goto 59.1,38.4
.' Use your Tahret Dynasty Mallet next to stacks of Pygmies |use Tahret Dynasty Mallet##63351 |tip They are sitting on each other's shoulders trying to steal fruit out of trees around this area.
.' Smash 30 Thieving Pluckers |q 28250/1
step
goto 60.3,38.3
.talk 46603
..turnin 28250
step
goto Uldum,41.4,5.5
.talk 49523
..accept 28736
step
goto 41.4,5.5
.' Click the Confiscated Artillery |tip It looks like a war catapult car machine.
.' Use the Designate Target ability on your hotbar on the Infantrymen
.' Slay 100 Infantrymen |q 28736/1
step
goto 41.4,5.5
.talk 49523
..turnin 28736
step
'You have reached the end of these dailies. Click here to return to the beginning of the guide. |confirm
|next hub
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Twilight Highlands\\Twilight Highlands Dailies with Pre-Quests",[[
description Contains the pre-quests to unlock
description the daily quests in Twilight Highlands.
description
description You must be at least level 84 to
description complete this guide section.
author support@zygorguides.com
step
'The pre-quests for these dailies are in Uldum. You can quest through the guide, or use our Leveling Guide for help. |only if not ZGV.guidesets['LevelingACATA']
'Click here to go to the leveling section to work on this rep |confirm |next "Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Twilight Highlands (84-85)" |only if ZGV.guidesets['LevelingACATA']
|only if not completedq(27787)
daily
step
label	dailies
goto Twilight Highlands,48.6,30.7
.talk 49386
..accept 28863 |tip This is a 2-person group quest.
step
goto 49.0,29.8
.talk 46591
..accept 28860
..accept 28864
step
goto 49.8,29.2
.talk 48010
..accept 28861
..accept 28862
step
goto 46.2,37.4
.from Dragonmaw Marauder##46310+
.get 8 Dragonmaw Insignia |q 28860/1
.' Click Thundermar Ale Kegs |tip They look like wooden barrels on the ground around this area.
.get 10 Wildhammer Keg |q 28861/1
.' Click Wildhammer Food Stores |tip They look like hanging fish, sliced bread, and legs of meat on the ground around this area.
.get 10 Wildhammer Food Stores |q 28862/1
.' You can find more around [49.1,37.3]
step
goto 49.0,37.3
.kill Warlord Halthar |q 28863/1 |tip He flies around on a red drake in the sky, but he lands in this spot to start fighting.  He is elite, and this is marked as a 2-person group quest, so you may need help killing him.
step
goto 64.4,22.6
.talk 48758
..' Tell him you're here to escort a delivery to Kirthaven
.' Follow the dwarves
.from Dragonmaw Skirmisher##48799+
.' Escort the Supply Caravan |q 28864/1
step
goto 49.8,29.2
.talk 48010
..turnin 28861
..turnin 28862
step
goto 49.0,29.8
.talk 46591
..turnin 28860
..turnin 28864
step
goto 48.6,30.7
.talk 49386
..turnin 28863
step
'You have reached the end of these dailies. Click here to return to the beginning of the guide. |confirm
|next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Tol Barad Peninsula\\Tol Barad Dailies",[[
description Walks you through completing the
description daily quests in Tol Barad.
achieveid 4874
author support@zygorguides.com
daily
#include "A_Baradin_Hold_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Reputation\\Guardians of Hyjal",[[
description Walks you through the process
description of obtaining Exalted reputation
description with the Guardians of Hyjal
description faction.
author support@zygorguides.com
step
map Mount Hyjal
'To gain reputation with the Guardians of Hyjal faction:
.' Complete all quests in the Mount Hyjal zone
.' Once you earn Friendly reputation with the Guardians of Hyjal faction, you can buy the Tabard of the Guardians of Hyjal. |tip Wear the Tabard of the Guardians of Hyjal and use the Dungeon Finder tool to complete random Cataclysm Heroics.  You will gain reputation with the Guardians of Hyjal faction for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
..' You can buy the Tabard of the Guardians of Hyjal by talking to Provisioner Whitecloud at [Mount Hyjal 62.8,23.9]
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Reputation\\The Earthen Ring",[[
description Walks you through the process
description of obtaining Exalted reputation
description with The Earthen Ring faction.
author support@zygorguides.com
step
map Shimmering Expanse
'To gain reputation with The Earthen Ring faction:
.' Complete all quests in the Vashj'ir zone
.' Complete the Deepholm Pre-Quests guide in the Deepholm section.
.' Complete the Twilight Highlands Pre-Quests guide in the Twilight Highlands section.
.' Once you earn Friendly reputation with The Earthen Ring faction, you can buy the Tabard of the Earthen Ring. |tip Wear the Tabard of the Earthen Ring and use the Dungeon Finder tool to complete random Cataclysm Heroics.  You will gain reputation with The Earthen Ring faction for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
..' You can buy the Tabard of the Earthen Ring by talking to Provisioner Arok at [Shimmering Expanse 49.1,42.2]
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Reputation\\Therazane",[[
description Walks you through the process
description of obtaining Exalted reputation
description with the Therazane faction.
author support@zygorguides.com
step
map Deepholm
'To gain reputation with the Therazane faction:
.' Complete the Deepholm Pre-Quests guide in the Deepholm section.
.' Complete the Therazane's Throne Dailies guide section in the Deepholm section. |tip Do this daily, if you'd like.
.' Once you earn Friendly reputation with the Therazane faction, you can buy the Tabard of Therazane. |tip Wear the Tabard of Therazane and use the Dungeon Finder tool to complete random Cataclysm Heroics.  You will gain reputation with the Therazane faction for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
..' You can buy the Tabard of Therazane by talking to D'lom the Collector at [Deepholm 54.1,33.3]
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Reputation\\Ramkahen",[[
description Walks you through the process
description of obtaining Exalted reputation
description with the Ramkahen faction.
author support@zygorguides.com
step
map Uldum
'To gain reputation with the Ramkahen faction:
.' Complete the Uldum Pre-Quests guide in the Uldum section.
.' Complete the Tahret Grounds Dailies guide in the Uldum section. |tip Do this daily, if you'd like.
.' Once you earn Friendly reputation with the Ramkahen faction, you can buy the Tabard of Ramkahen. |tip Wear the Tabard of Ramkahen and use the Dungeon Finder tool to complete random Cataclysm Heroics.  You will gain reputation with the Ramkahen faction for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
..' You can buy the Tabard of Ramkahen by talking to Blacksmith Abasi at [Uldum 54.1,33.3]
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Reputation\\Wildhammer Clan",[[
description Walks you through the process
description of obtaining Exalted reputation
description with the Wildhammer Clan faction.
author support@zygorguides.com
step
map Twilight Highlands
'To gain reputation with the Wildhammer Clan faction:
.' Complete the Twilight Highlands Pre-Quests guide in the Twilight Highlands section.
.' Complete the Thundermar Dailies guide in the Twilight Highlands section. |tip Do this daily, if you'd like.
.' Once you earn Friendly reputation with the Wildhammer Clan faction, you can buy the Tabard of the Wildhammer Clan. |tip Wear the Tabard of the Wildhammer Clan and use the Dungeon Finder tool to complete random Cataclysm Heroics.  You will gain reputation with the Wildhammer Clan faction for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
..' You can buy the Tabard of the Wildhammer Clan by talking to Craw MacGraw at [Twilight Highlands 48.6,30.7]
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Reputation\\Baradin's Wardens",[[
description Walks you through the process
description of obtaining Exalted reputation
description with the Baradin's Wardens faction.
author support@zygorguides.com
step
map Tol Barad Peninsula
'To gain reputation with the Baradin's Wardens faction:
.' Complete the Baradin Base Camp Dailies guide in the Tol Barad Peninsula section. |tip Do this daily, if you'd like.
.' Complete the Baradin Hold Dailies guide in the Tol Barad section. |tip Do this daily, if you'd like.  The daily quests in this section will only be available if the Alliance faction currently controls Tol Barad.
.' Once you earn Friendly reputation with the Baradin's Wardens faction, you can buy Baradin's Wardens Commendations from Quartermaster Brazie at [72.4,63.2] |tip They cost 10 Tol Barad Commendations each and you can use the Baradin's Wardens Commendations to increase your Baradin's Wardens reputation by 250.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Zandalari Menace Quest Line",[[
description Walks you through completing
description the Zandalari Menace quest line
description in Stranglethorn Vale.
description
description You must be level 85 to be
description able to use this guide.
author support@zygorguides.com
startlevel 85
step
goto Stormwind City,25.9,29.3
.talk 52654
..accept 29100
..accept 29102
step
goto Northern Stranglethorn,52.8,66.4
.talk 52281
..turnin 29102
..accept 29103
step
goto 52.0,61.4
.kill 10 Jungle Serpent |q 29103/1
.' Click Fort Livingston Adventurers |tip They look like green bodies laying on the ground around this area.
.' Heal 10 Adventurers |q 29103/2
step
goto 52.8,66.4
.talk 52281
..turnin 29103
step
'Next to you:
.talk 52234
..accept 29104
step
goto 52.9,66.5
.' Click the Bonfire |tip It's a big pile of sticks on fire in the middle of Fort Livingston.
.' Watch the dialogue
.' Use the Bonfire in Fort Livingston |q 29104/1
step
'Next to you:
.talk 52234
..turnin 29104
step
goto 52.8,66.4
.talk 52281
..accept 29105
step
goto 44.1,22.9
.talk 52294
..turnin 29105
..accept 29114
step
goto 50.4,21.7
.talk 52346
..turnin 29114
..accept 29115
step
goto 64.0,19.6
.from Mauti?##52349
.' Bring Grent Direhammer to the body of Mauti |q 29115/1
step
'Click the Complete Quest box that appears under you minimap
..turnin 29115
.' You will automatically accept a new quest:
..accept 29116
step
goto 77.7,68.4
.' Go to this spot
.' Find Mauti's Lair |q 29116/1
step
'Next to you:
.talk 52234
..turnin 29116
..accept 29120
step
goto 77.2,69.0
.from Mauti##52372
.' Let Bwemba Inspect the Cat |q 29120/1
step
'Next to you:
.talk 52234
..turnin 29120
..accept 29213
step
goto 76.5,67.5 |n
.' Enter the cave |goto 76.5,67.5,0.5 |noway |c
step
goto 76.1,66.7
.talk 52371
..turnin 29213
..accept 29121
step
goto 76.0,66.5
.' Click Direhammer's Boots |tip They look like a small pair of brown boots sitting on the ground inside this cave.
.get Direhammer's Boots |q 29121/1
step
goto 76.1,66.7
.talk 52371
..turnin 29121
step
goto 76.1,66.7
.talk 52374
..accept 29267 |instant
step
'Next to you:
.talk 52234
..accept 29124
step
goto 76.5,67.5 |n
.' Leave the cave |goto 76.5,67.5,0.5 |noway |c
step
goto 47.8,12.0
.talk 52410
..turnin 29124
..accept 29131
step
goto 47.5,11.4
.from Gurubashi War-Seeker##53165+, Gurubashi Bloodfury##52406+, Gurubashi Soul-Seeker##53166+ |tip Once the bar fills up at the bottom of your screen, you will complete the quest.
.' Help Defend the Camp |q 29131/1
step
goto 47.8,12.0
.talk 52410
..turnin 29131
step
goto 47.9,11.9
.talk 52753
..accept 29133
step
goto 47.9,11.9
.talk 52753
..' Ask him if one of his gryphons can get you to the Digsite
.' You will fly to the Explorers' League Digsite
.' Arrive at the Digsite |q 29133/1
step
'Next to you:
.talk 52234
..turnin 29133
..accept 29150
step
goto The Cape of Stranglethorn,54.0,42.6
.from Digsite Zombie##52604+
.' Rescue 10 Digsite Survivors |q 29150/1 |tip You may not rescue every zombie you kill.
step
'Next to you:
.talk 52234
..turnin 29150
..accept 29151
step
goto 55.0,42.0
.' Click the Grain Sack |tip It looks like a yellow bag sitting on the ground next to a big pile of barrels and crates.
.' Watch the dialogue
.' Search the Supplies |q 29151/1
step
'Next to you:
.talk 52234
..turnin 29151
step
goto 55.3,42.0
.talk 52646
..accept 29152
step
goto 44.9,65.9 |n
.' Enter the tunnel |goto 44.9,65.9,0.5 |noway |c
step
goto 41.0,73.1
.talk 52767
..turnin 29152
step
goto 41.2,73.0
.' Go to this spot
.' Watch the dialogue
.' Help Bwemba Find the Darkspear Emissary |q 29100/1
step
'Next to you:
.talk 52234
..turnin 29100
step
'To continue with the Zul'Gurub dungeon quest line:
goto 41.2,73.1
.talk 2496
..accept 29153
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Mount Hyjal\\How To Use Firelands Guide Sections - READ FIRST",[[
description Walks you through how to use the
description Firelands guide sections.
author support@zygorguides.com
step
'The Firelands quests are very dynamic.  You will not be able to complete some daily quests each day, as only a limited amount are available each day.  |tip Accept and complete as many as you can, and simply skip over the ones you can't accept that day.
'
'
'You will need to use the Firelands Quests and Firelands Dailies together.  Complete as many quests as you can in the Firelands Quests guide section, and use the Firelands Dailies guide section to gain Marks of the World Tree.  |tip Marks of the World Tree are currency needed to complete certain quests in order to unlock more daily quests.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Mount Hyjal\\Firelands Dailies with Pre-Quests",[[
description Walks you through completing the Firelands quest line in Mount Hyjal.
author support@zygorguides.com
startlevel 80.00
step
'Proceeding to proper section |next |only if default
'Proceedint to proper section |next firelands |only if completedq(25372)
step
#include "A_Firelands_PreQuests"
step
label	firelands
'Proceeding to proper section |next |only if default
'Proceedint to proper section |next dailies |only if completedq(29311)
step
goto Mount Hyjal,27.2,62.6
.talk 52669
..accept 29145
step
goto 27.1,54.5
.talk 52838
..turnin 29145
..accept 29195
step
goto 27.4,55.6
.from Charred Invader##52853+ |tip When the bar at the bottom of your screen becomes full, Leyara will spawn.
.from Leyara##52863
.' Open the portal to the Firelands |q 29195/1
step
goto 27.4,55.2
.talk 52845
..turnin 29195
..accept 29196
step
goto 27.2,62.6
.talk 52669
..turnin 29196
..accept 29197
step
goto 24.5,55.7
.from Raging Invader##52557+
.' Kill 6 Elementals near Thisalee |q 29197/2
step
goto 34.0,57.5
.from Raging Invader##52557+
.' Kill 6 Elementals near Elderlimb |q 29197/1
step
goto 41.2,56.4
.from Raging Invader##52557+
.' Kill 6 Elementals near Tholo and Anren |q 29197/3
step
goto 27.2,62.6
.talk 52838
..turnin 29197
..accept 29198
step
goto 27.0,62.9
.' Watch the cutscene
.' Protect Malfurion |q 29198/1
step
goto 27.0,62.7
.talk 52845
..turnin 29198
step
goto 27.1,62.8
.talk 52838
..accept 29199
step
'Use the Firelands Dailies Run guide each day: |tip You won't be able to do all the dailies yet.  Just do the dailies you can do for now.
.earn 125 Mark of the World Tree##416
'Click here to load the Dailies guide. |confirm |next dailies
|only if completedq(29214) and completedq(29181)
step
goto 44.4,88.8
.talk 53882
..accept 29283
|only if completedq(29214) and completedq(29181)
step
goto Mount Hyjal,26.0,61.3
.talk 52906
..turnin 29283
|only if completedq(29214) and completedq(29181)
step
'Use the Firelands Dailies Run guide each day: |tip You won't be able to do all the dailies yet.  Just do the dailies you can do for now.
.earn 20 Mark of the World Tree##416
'Click here to load the Dailies guide. |confirm |next dailies
step
goto 27.1,62.8
.talk 52838
..turnin 29199
step
goto Mount Hyjal,27.1,62.8
.talk 52838
..accept 29200
step
goto 6.7,33.8
.talk 53014
..' Ask her why, what did Malfurion ever do to her?
.' Watch the dialogue
.' Find Leyara |q 29200/1
step
goto 27.2,62.6
.talk 52669
..turnin 29200
step
goto 27.0,62.7
.talk 52845
..accept 29201
step
goto Molten Front,49.7,85.1
.from Obsidian Slaglord##53381
.' Secure a foothold in the Firelands |q 29201/1
step
goto 47.3,88.2 |n
.' Enter the tree |goto 47.3,88.2,0.5 |noway |c
step
goto 47.1,90.6
.talk 53385
..turnin 29201
step
goto Mount Hyjal,27.2,62.6
.talk 52669
..accept 29202
step
goto 27.5,62.5
.talk 52986
..turnin 29202
.' Ask him How Hamuul is doing. |achieve 5870/4
step
'Use the Firelands Dailies Run guide each day: |tip You won't be able to do all the dailies yet.  Just do the dailies you can do for now.
.earn 150 Mark of the World Tree##416
'Click here to load the Dailies guide. |confirm |next dailies
step
goto Molten Front,47.0,91.3
.talk 52135
..accept 29181
step
goto Mount Hyjal,43.5,45.9
.talk 50082
..turnin 29181
step
goto 42.6,45.8
.talk 50068
..accept 29182
step
goto Molten Front,43.0,80.6
.talk 52490
..turnin 29182
step
'Use the Firelands Dailies Run guide each day: |tip You won't be able to do all the dailies yet.  Just do the dailies you can do for now.
.earn 150 Mark of the World Tree##416
step
goto Molten Front,47.0,91.3
.talk 52135
..accept 29214
step
goto Mount Hyjal,26.8,62.2
.talk 52844
..turnin 29214
step
goto 27.2,62.6
.talk 52669
..accept 29215
step
goto Molten Front,47.6,90.5
.talk 52493
..turnin 29215
step
goto 67.0,35.9
.from Druid of the Flame##52871+
.' Click the Dried Acorn |tip It looks like a brown round nut that appears on the corpse of Druid of the Flame.
..accept 29245
step
goto 50.6,87.2
.talk 52489
..turnin 29245
..accept 29249
step
goto 53.5,90.7
.' Click the Un'Goro Soil |tip It looks like a big pile of dirt on the ground.
.' Plant the Acorn |q 29249/1
step
'Click the Complete Quest box that appears under your minimap
..turnin 29249
..accept 29254
step
goto 50.6,87.2
.talk 52489
..turnin 29254
step
goto 27.2,62.6
.talk 52669
..accept 29284
step
goto Molten Front,43.8,89.0
.talk 52488
..turnin 29284
step
'Use the Firelands Dailies Run guide each day: |tip You won't be able to do all the dailies yet.  Just do the dailies you can do for now.
.earn 125 Mark of the World Tree##416
|only if completedq(29214) and completedq(29181)
step
goto 46.9,90.0
.talk 53214
..accept 29281
|only if completedq(29214) and completedq(29181)
step
goto Mount Hyjal,27.2,62.6
.talk 52669
..turnin 29281
|only if completedq(29214) and completedq(29181)
step
goto 27.2,62.6
.talk 52669
..accept 29282
step
goto Molten Front,46.8,90.2
.talk 53196
..turnin 29282
step
'Use the Firelands Dailies Run guide each day: |tip You won't be able to do all the dailies yet.  Just do the dailies you can do for now.
.earn 125 Mark of the World Tree##416
|only if completedq(29214) and completedq(29181)
step
goto Molten Front,44.1,86.3
.talk 53881
..accept 29279
|only if completedq(29214) and completedq(29181)
step
goto Mount Hyjal,27.2,62.6
.talk 52669
..turnin 29279
..accept 29280
|only if completedq(29214) and completedq(29181)
step
goto Molten Front,44.1,86.3
.talk 53881
..turnin 29280
|only if completedq(29214) and completedq(29181)
step
goto 47.0,91.4
.talk 52135
..accept 29203
step
goto 57.8,49.6 |n
.' Enter the cave |goto 57.8,49.6,0.5 |noway |c
step
goto 64.5,59.2
.kill Leyara |q 29203/1
step
goto 57.8,49.6 |n
.' Leave the cave |goto 57.8,49.6,0.5 |noway |c
step
goto 47.0,91.4
.talk 52135
..turnin 29203
step
goto Mount Hyjal,42.0,44.5
.' Click the Mailbox |tip It looks like a small wooden box with black slits in it, next to a lamp post.
.collect Smoke-Stained Locket##69854 |n
.' Click the Smoke-Stained Locket in your bags |use Smoke-Stained Locket##69854
..accept 29298
step
goto Moonglade,51.7,45.1
.talk 11801
..turnin 29298
..accept 29302
step
'Watch the dialogue
.' Look into Leyara's Memories |q 29302/1
step
goto 51.7,45.1
.talk 11801
..turnin 29302
..accept 29303
step
goto Ashenvale,40.5,53.3
.' Click the Night Elf Grave |tip It looks like a mound of dirt on the ground with a bunch of other dirt graves.
..' Present the Smoke-Stained Locket
.' Watch the dialogue
.' Look deeper into Leyara's memories |q 29303/1
step
'Click the Complete Quest box that appears under your minimap
..turnin 29303
..accept 29310
step
goto Mount Hyjal,7.6,34.6
.' Click the Small Gravestone |tip It looks like a small gray rock sitting on the ground.
..' Present the Smoke-Stained Locket
.' Watch the dialogue
.' Look deeper into Leyara's memories |q 29310/1
step
'Click the Complete Quest box that appears under your minimap
..turnin 29310
..accept 29311
step
goto Molten Front,47.0,91.4
.talk 52135
..turnin 29311
step
label "dailies"
goto Mount Hyjal,27.2,62.6
.talk 52669
..' You will only be able to accept one of these quests per day:
..accept 29163 |or
..accept 29149 |or
..accept 29127 |or
..accept 29123 |or
..accept 29166 |or
step
goto 27.2,62.6
.talk 52669
..' You will only be able to accept one of these quests per day:
..accept 29147 |or
..accept 29164 |or
..accept 29125 |or
step
goto 27.5,62.5
.talk 52986
..' You will only be able to accept one of these quests per day:
..accept 29246 |or
..accept 29247 |or
..accept 29248 |or
step
goto 27.1,62.0
.talk 52671
..' You will only be able to accept one of these quests per day:
..accept 29101 |or
..accept 29161 |or
step
goto Mount Hyjal,27.3,61.6
.talk 53073
..accept 29128
step
goto 23.8,60.3
.from Flame Terror##52219+
.kill 9 Invader from the Firelands |q 29163/1
only if havequest(29163)
step
goto 23.8,60.3
.from Flame Terror##52219+
.kill 8 Invader from the Firelands |q 29127/1
only if havequest(29127)
step
goto 23.8,60.3
.from Flame Terror##52219+
.kill 7 Invader from the Firelands |q 29149/1
only if havequest(29149)
step
goto 23.8,60.3
.from Flame Terror##52219+
.kill 6 Invader from the Firelands |q 29123/1
only if havequest(29123)
step
goto 24.6,60.4
.from Flame Terror##52219+
.' Use your Fang of the Wolf next to their corpses |use Fang of the Wolf##69235
.' Howl Atop 10 Invaders' Corpses |q 29164/1
only if havequest(29164)
step
'Click the Complete Quest box that appears under your minimap
..turnin 29164
..accept 29165
only if havequest(29164) or completedq(29164)
step
goto 41.8,56.0
.' Use your Fang of the Wolf |use Fang of the Wolf##69225
.kill Lylagar |q 29165/1
only if havequest(29165)
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
.kill Millagazor |q 29148/1
tip When it starts flying up and escaping, let it go - your flock of birds will finish it off. This counts towards _The Meek Shall Inherit Kalimdor_ achievement.
tip Don't get damaged by any of its _Gout of Fire_ spells. This counts towards the _Infernal Ambassadors_ achievement.
only if havequest(29148)
step
goto 14.3,33.0
.' Click the Climbing Tree |tip They look like small ladders leaning aginst the trees around this area.
.' Click Hyjal Bear Cubs in the tree
.' Use your Climb Up ability to climb to the top of the tree
.' Use your Chuck-a-bear ability to throw the cubs down |tip Aim the yellow arrow at the bearskin trampoline on the ground.
.' Chuck 6 Hyjal Bear Cubs to Safety |q 29161/1
.tip Chuck a bear at a sleeping _Core Hound_. This counts towards _The Meek Shall Inherit Kalimdor_ achievement.
only if havequest(29161)
step
'Click the Complete Quest box that appears under your minimap
..turnin 29161
..accept 29162
only if havequest(29161) or completedq(29161)
step
goto 13.4,44.7
.' Use your Emerald of Aessina to summon Pyrachnis |use Emerald of Aessina##69232
.' Fight Pyrachnis
.' Use your Emerald of Aessina to cleanse yourself of Pyrachnis' Boiling Poison |use Emerald of Aessina##69232 |tip Spam use this item throughout the entire fight.
.tip If you DON'T use the Emerald in the fight, it counts towards the _Infernal Ambassadors_ achievement.
.kill Pyrachnis |q 29162/1
only if havequest(29162)
step
goto 23.6,60.1
.' Click Children of Tortolla |tip They look like small turtles on the ground around this area.
.' Use your Punt Turtle ability |tip Use your right mouse button to aim the yellow arrows into the water to the north.
.' Punt 5 Children of Tortolla into the Water |q 29101/1
.tip Punt a turtle at a fire elemental. This counts towards _The Meek Shall Inherit Kalimdor_ achievement.
only if havequest(29101)
step
'Click the Complete Quest box that appears under your minimap
..turnin 29101
..accept 29122
only if havequest(29101) or completedq(29101)
step
goto 24.1,55.7
.talk 52425
..' Tell him you are prepared to face Nemesis
.' Follow Tooga and fight Nemesis
.' Run into Tooga's yellow bubble shield right before Nemesis finishes casting his spell |tip You will see a message in your chat when Nemesis is about to errupt.
.kill Nemesis |q 29122/1
only if havequest(29122)
step
goto 36.2,59.2
.' Get close to Spirits of Malorne on the ground |tip They look like deer running around on the ground around this area.
.' Capture 3 Spirits of Malorne |q 29125/1
only if havequest(29125)
step
'Click the Complete Quest box that appears under your minimap
..turnin 29125
..accept 29126
only if havequest(29125) or completedq(29125)
step
goto 41.7,56.1
.' Use your Guardian's Staff next to the Pile of Ash |use Guardian's Staff##68997 |tip It looks like a mound of dirt on the ground.
.kill Galenges |q 29126/1
only if havequest(29126)
step
goto 38.6,56.9
.from Charred Flamewaker##52791+
.get 100 Flamewaker Scale |q 29248/1
only if havequest(29248)
step
goto 29.8,57.8
.' Click Blueroot Vines |tip They look like grayish colored twisting tree roots sticking out of the ground around this area.
.get 7 Blueroot Vine |q 29166/1
only if havequest(29166)
step
goto 27.1,62.0
.talk 52671
..' You will only be able to turn in one of these quests per day:
..turnin 29162
..turnin 29122
step
goto 27.2,62.6
.talk 52669
..' You will only be able to turn in one of these quests per day:
..turnin 29163
..turnin 29149
..turnin 29127
..turnin 29123
..turnin 29148
..turnin 29165
..turnin 29126
..turnin 29166
step
goto 27.5,62.5
.talk 52986
..turnin 29248
step
goto 30.7,75.9
.from Seething Pyrelord##52300+, Fiery Behemoth##52289+
.' Slay 6 Invaders at Sethria's Roost |q 29128/1 |only if havequest(29128)
.get 4 Flame-Wreathed Heart |q 29246/1 |tip You can only loot these from Seething Pyrelords.  Fiery Behemoths will not drop them. |only if havequest(29246)
.get 4 Sulfur-Laced Wrapping |q 29247/1 |tip You can only loot these from Fiery Behemoths.  Seething Pyrelords will not drop them. |only if havequest(29247)
only if havequest(29128) or havequest(29246) or havequest(29247)
step
goto 27.5,62.5
.talk 52986
..' You will only be able to turn in one of these quests per day:
..turnin 29246
..turnin 29247
step
'Proceeding to proper section |next RestartDailies |only if default
'Proceeding to proper section |next dailies_2 |only if completedq(29201)
step
label	dailies_2
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
..turnin 29128
step
goto 45.6,85.8
.talk 52824
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
.' Use The Bitter Pill when the Subterranean Magma Worm is almost done casting its Burning Hunger spell |use The Bitter Pill##69759
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
..get 5 Embergris |q 29255/1 |only if havequest(29255)
..kill 8 Charred Combatant |q 29179/1 |only if havequest(29179)
..kill 3 Druid of the Flame |q 29142/1 |only if havequest(29142)
..kill 5 Lava Burster |q 29137/1 |only if havequest(29137)
..kill 5 Ancient Charhound |q 29304/1 |only if havequest(29304)
.' Use your Enchanted Salve on Wounded Hyjal Defenders |use Enchanted Salve##69240 |tip They look like various race corpses laying on the ground around this area. |only if havequest(29138)
..' Save 8 Wounded Hyjal Defenders |q 29138/1 |only if havequest(29138)
.' Click Ash Piles |tip They look like brown mounds of dirt on the ground around this area. |only if havequest(29139)
..' Plant 5 Smothervines |q 29139/1 |only if havequest(29139)
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
.' If you are not able to accept either quest, Click here to proceed |confirm |next RestartDailies
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
.' You will fly up out of the cavern |goto Molten Front,33.7,65.7,0.5 |noway |c
step
goto Molten Front,36.0,59.0
.talk 52477
..turnin 29272
only if havequest(29272)
step
goto 36.0,59.0
.talk 52477
..accept 29273
step
goto 35.8,59.4
.talk 52478
..accept 29274
step
goto 36.3,56.3
.talk 52492
..turnin 29265
step
goto 36.3,56.6
.talk 53304
..accept 29295
step
goto 34.5,56.2
.talk 52491
..' You will only be able to accept one of these quests per day:
..accept 29287 |or
..accept 29290 |or
..accept 29288 |or
step
goto 34.3,56.4
.talk 53259
..' You will only be able to accept one of these quests per day:
..accept 29293 |or
..accept 29296 |or
step
goto 33.9,57.2
.' Click the Trained Fire Hawk to ride on it |tip It looks like a big orange armored eagle.
.' Use your abilities on your action bar on the mobs below as you fly on the Fire Hawk |tip The mobs look like nagas, spiders, and stone giants on the ground.
.kill 100 Amassing Flamewakers |q 29290/1
.kill 40 Amassing Cinderwebs |q 29290/2
.kill 3 Molten Lords |q 29290/3
only if havequest(29290)
step
'Use your Return to the Furnace ability on your action bar
.' Return to the Furnace |goto Molten Front,34.2,57.0,0.5 |noway |c |q 29290
only if havequest(29290)
step
goto 34.5,56.2
.talk 52491
..turnin 29290
step
goto 26.6,50.5
.' Jump off the cliff next to the floating rocks |tip You won't die, a druid will fly you safely to the other side.
.' Click Injured Druids of the Talon |tip They look like birds and bats laying on the ground around this whole area.  They are pretty spread out, so you will need to search around for them.
.' Rescue 5 Druids of the Talon |q 29293/1
only if havequest(29293)
step
goto 23.5,36.6
.' Follow the path to the top of the mountain |tip Use the air vents on the side of rocks and cliffs to fly up to the next level of the mountain.
.' Use the air vents around the peak of the mountain to jump up can click Fire Hawk Hatchlings |tip They look like small fire birds flying in place around the top of this mountain.
.get 5 Fire Hawk Hatchling |q 29288/1
only if havequest(29288)
step
goto 23.7,39.5
.' Follow the path to the top of the mountain |tip Use the air vents on the side of rocks and cliffs to fly up to the next level of the mountain.
.' Use Tholo's Thermometer next to this pool of lava |use Tholo's Thermometer##69806
.' Sample the Central Lava Pool |q 29273/3
only if havequest(29273)
step
goto 23.7,41.9
.' Follow the path to the top of the mountain
.' Click a Fire Hawk Egg |tip They look like orange eggs sitting on the ground at the top of this mountain, in a bubbling pool of lava.
.get Fire Hawk Egg |q 29287/1
only if havequest(29287)
step
goto 22.5,29.1
.' Follow the path on the mountain |tip Use the air vents on the side of rocks and cliffs to fly up to the next level of the mountain.
.' Use Tholo's Thermometer next to this pool of lava |use Tholo's Thermometer##69806
.' Sample the Northwestern Lava Pool |q 29273/1
only if havequest(29273)
step
goto 30.0,29.8
.' Follow the path on the mountain |tip Use the air vents on the side of rocks and cliffs to fly up to the next level of the mountain.
.' Use Tholo's Thermometer next to this pool of lava |use Tholo's Thermometer##69806
.' Sample the Northeastern Lava Pool |q 29273/2
only if havequest(29273)
step
goto 26.6,50.5
.kill 5 Fire Hawk |q 29296/1 |only if havequest(29296)
.from Obsidium Punisher##52107+ |only if havequest(29295)
.' Click Living Obsidium Chips |tip They look like gray rocks that spawn on the ground after you kill Obsidium Punishers. |only if havequest(29295)
.get 10 Living Obsidium Chip |q 29295/1 |only if havequest(29295)
only if havequest(29296) or havequest(29295)
step
goto 34.5,56.2
.talk 52491
..turnin 29287
..turnin 29288
step
goto 34.3,56.4
.talk 53259
..' You will only be able to turn in one of these quests per day:
..turnin 29293
..turnin 29296
step
goto 36.3,56.3
.talk 52492
..accept 29305
|only if completedq(29283)
step
goto 39.3,55.2
.from Ancient Charhound##54339+
.get 6 Houndbone Ash |q 29274/1
.' You can find more Ancient Charhounds around [39.6,39.4]
only if havequest(29274)
step
goto Molten Front,50.3,23.1
.' Kill the big named mob |tip They named mob you have to fight is random, so it is not always the same.
.kill Lieutenant of Flame |q 29305/1
only if havequest(29305)
step
goto 51.5,85.5
.talk 52477
..turnin 29274
step
goto 51.3,85.8
.talk 52478
..turnin 29273
step
goto 46.9,90.0
.talk 53214
..turnin 29295
step
goto 43.0,80.6
.talk 52490
..turnin 29305
next "RestartDailies"
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
goto 64.9,67.3
.talk 52494
..' You will only be able to accept one of these quests per day:
..accept 29211 |or
..accept 29192 |or
step
goto 66.4,65.4
.talk 54163
..accept 29297
step
goto 66.3,66.1
.talk 52477
..accept 29276 |tip This quest will not always be available each day.
step
goto 66.1,63.9
.talk 52921
..' You will only be able to accept two of these quests per day:
..accept 29159 |or 2
..accept 29160 |or 2
..accept 29189 |or 2
step
goto 65.6,50.5
.from Cinderweb Creeper##52648+, Cinderweb Spinner##52981+ |only if havequest(29159) or havequest(29276)
.kill 8 Cinderweb spider |q 29159/1 |only if havequest(29159)
.get 8 Flame Venom |q 29276/1 |only if havequest(29276)
.get 8 Searing Web Fluid |q 29276/2 |only if havequest(29276)
.' Click Cinderweb Egg Sacs |tip They look like brown-ish red slime deposits on the ground around this area. |only if havequest(29160)
.get 20 Cinderweb Egg |q 29160/1 |only if havequest(29160)
.' Click Cinderweb Cocoons |tip They look like bright red web balls stuck to the walls around this area. |only if havequest(29189)
.' Free 8 Victims |q 29189/1 |only if havequest(29189)
only if havequest(29159) or havequest(29276) or havequest(29160) or havequest(29189)
step
goto 71.4,47.3
.' Use your Burd Sticker on Druids of the Flame |use Burd Sticker##69832 |tip They are small orange fire birds that fly in the sky all around this area.  Try to target the ones flying lower to the ground.
.kill 3 Druids of the Flame in Fire Crow form |q 29297/1
only if havequest(29297)
step
goto 70.8,38.3
.' Click the Solar Core |tip It looks like a big floating orb.
.' Detonate the Solar Core |q 29211/1
only if havequest(29211)
step
goto 71.8,42.9
.from Druid of the Flame##52122
..' Lure the Druid of the Flame into the trap |tip Your Shadow Warden will lay a metal trap on the ground and tell you to lure the enemy into it.  Walk over the trap, so that the druid follows you onto the trap.
.' Capture a Druid of the Flame |q 29192/1
only if havequest(29192)
step
goto 66.1,63.9
.talk 52921
..' You will only be able to turn in two of these quests per day:
..turnin 29159
..turnin 29160
..turnin 29189
step
goto 64.9,67.3
.talk 52494
..' You will only be able to turn in one of these quests per day:
..turnin 29211
..turnin 29192
step
goto 64.9,67.3
.talk 52494
..accept 29210
step
goto 65.9,66.1
.talk 52478
..accept 29275
step
goto 57.7,49.5
.' Enter the Igneous Depths |q 29210/1
only if havequest(29210)
step
goto 61.7,53.0
.' Click the 8 Flame Runes |tip They look like big glowing blue symbols on the ground around the area inside this cave. |only if havequest(29210)
.' Destroy All the Flame Runes |q 29210/2 |only if havequest(29210)
.' Click a Flame Druid Staff, Spellbook, Reagant Pouch, and Idol |tip They look like tiny sticks, books, vials, and wooden statues on the ground all around inside this cave. |only if havequest(29275)
.get Flame Druid Staff |q 29275/1 |only if havequest(29275)
.get Flame Druid Spellbook |q 29275/2 |only if havequest(29275)
.get Flame Druid Reagent Pouch |q 29275/3 |only if havequest(29275)
.get Flame Druid Idol |q 29275/4 |only if havequest(29275)
only if havequest(29210) or havequest(29275)
step
goto 57.8,49.5
.talk 52823
..turnin 29210
step
goto 57.5,49.5
.talk 53056
..accept 29243
|only if completedq(29283)
step
goto Molten Front,50.3,23.1
.' Kill the big named mob |tip They named mob you have to fight is random, so it is not always the same.
.kill Lieutenant of Flame |q 29243/1
only if havequest(29243)
step
goto 51.6,85.5
.talk 52477
..turnin 29275
step
goto 51.3,85.8
.talk 52478
..turnin 29276
step
goto 46.9,90.0
.talk 53214
..turnin 29297
step
goto 47.6,90.5
.talk 52493
..turnin 29243 |next "RestartDailies"
step
label "RestartDailies"
'Click this line to return to the beginning of the Firelands Dailies guide section |confirm |next "firelands"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Mount Hyjal\\The Call of the World-Shaman Quest Line",[[
description Walks you through completing the Call of the World-Shaman quest line.
condition end completedq(29331)
author support@zygorguides.com
step
goto Stormwind City,74.5,19.0
.talk 45226
..accept 29439
step
goto Mount Hyjal,60.6,31.5
.talk 54313
..turnin 29439
..accept 29326
step
goto 60.6,31.5
.talk 54313
..' Tell him you are ready
.' Watch the cutscene
.' Witness the Ceremony |q 29326/1
step
goto 60.2,30.1
.talk 54312
..turnin 29326
..accept 29335
step
goto 60.2,30.1
.talk 54312
..' Tell her you are ready to travel to Uldum
.' You will teleport to Uldum |goto Uldum,47.8,88.0,0.5 |noway |c |q 29335
step
goto Uldum,47.6,88.9
.talk 53524
..turnin 29335
..accept 29327
step
goto 47.6,88.9
.talk 53524
..' Tell him to take you to Thrall
.' You will fly up to the top of a tower |goto 34.3,77.5,0.5 |noway |c |q 29327
step
goto 34.4,78.1
.from Essence of Doubt##53516+, Shadow of Doubt##53530+
.' You will need to fill up the Protecting Thrall bar at the bottom of your screen
.' Protect Thrall from the Elements |q 29327/1
step
goto 34.3,77.5
.talk 53519
..turnin 29327
..accept 29336
step
goto 34.3,77.5
.talk 53519
..' Tell her you are ready to travel to the Abyssal Maw
.' You will teleport to the Abyssal Depths |goto Abyssal Depths,69.7,34.8,0.5 |noway |c |q 29336
step
goto Abyssal Depths,69.5,34.3
.talk 53677
..turnin 29336
step
goto 69.8,34.2
.talk 53652
..accept 29328
step
goto 67.9,27.2
.from Vortex of Longing##53647+, Tides of Longing##53646+
.' You will need to fill up the Protecting Thrall bar at the bottom of your screen
.' Protect Thrall from the Elements |q 29327/1
.' Click Aggra |tip She is floating in a circle inside of a bubble near the bottom of the huge whirlpool.
.' Protect Aggra from the Elements |q 29328/2
step
goto 69.8,34.2
.talk 53652
..turnin 29328
..accept 29337
step
goto 69.8,34.2
.talk 53652
..' Tell her you are ready to travel to Deepholm
.' You will teleport to Deepholm |goto Deepholm,56.3,13.0,0.5 |noway |c |q 29337
step
goto Deepholm,56.3,12.2
.talk 42465
..turnin 29337
step
goto 56.5,12.5
.talk 53738
..accept 29329
step
goto 56.5,12.5
.talk 53738
..' Tell her you are ready
.' You will be taken to the Staidridge |goto 64.2,46.0,0.5 |noway |c |q 29329
step
goto 64.2,46.0
.from Element of Patience##53739+, Corestone of Patience##53894+
.' You will need to fill up the Protecting Thrall bar at the bottom of your screen
.' Help Thrall Break Out of His Stone Prison |q 29329/1
step
goto 64.0,46.1
.talk 53738
..turnin 29329
..accept 29338
step
goto 64.0,46.1
.talk 53738
..' Tell her let us go to the Firelands and finish this
.' Teleport into the Firelands |q 29338/1
step
goto Molten Front,49.6,31.7
.talk 54014
..turnin 29338
step
goto 51.5,25.8
.talk 53925
..accept 29330
step
goto 52.9,24.6
.from Flames of Fury##53929+, Seed of Fury##53928+
.' You will need to fill up the Freeing Thrall bar at the bottom of your screen |tip You will get onscreen instructions on where to kill the mobs.  You have to kill then next to certain Totems at certain times.
.' Activate Aggra's Totems to Save Thrall |q 29330/1
step
'Click the Complete Quest box that appears under your minimap
..turnin 29330
..accept 29331
step
goto Mount Hyjal,60.2,29.8
.talk 54168
..turnin 29331
step
'Congratulations, you saved Thrall!
]])
