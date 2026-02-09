local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("DailiesHCATA") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Main Cities\\Cooking Dailies",[[
description Walks you through completing the
description Cooking daily quests in Orgrimmar, Thunder Bluff and Undercity.
description
description You must be at least level 10 to
description complete the quests in this guide.
author support@zygorguides.com
daily
step
label	menu
.' Click here to use the _Orgrimmar_ daily guide. |confirm |next org_dailies
.'_
.' Click here to use the _Thunder Bluff_ daily guide. |confirm |next tb_dailies
.'_
.' Click here to use the _Undercity_ daily guide. |confirm |next uc_dailies
step
label	org_dailies
'Proceeding to proper section |next
step
#include "H_Org_Cooking_Dailies"
step
'You have reached the end of the dailies for today.
.' Click here to go back to the beginning of the Dailies Menu. |confirm |next menu
step
label	tb_dailies
'Proceeding to proper section |next
step
#include "H_TB_Cooking_Dailies"
step
'You have reached the end of the dailies for today.
.' Click here to go back to the beginning of the Dailies Menu. |confirm |next menu
step
label	uc_dailies
'Proceeding to proper section |next
#include "H_UC_Cooking_Dailies"
step
'You have reached the end of the dailies for today.
.' Click here to go back to the beginning of the Dailies Menu. |confirm |next menu
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Main Cities\\Fishing Dailies",[[
description Walks you through completing the
description Fishing daily quests in Orgrimmar.
description
description You must be at least level 10 to
description complete the quests in this guide.
author support@zygorguides.com
daily
step
label	menu
.' Click here to use the _Orgrimmar_ daily guide. |confirm |next org_dailies
.'_
.' Click here to use the _Thunder Bluff_ daily guide. |confirm |next tb_dailies
.'_
.' Click here to use the _Undercity_ daily guide. |confirm |next uc_dailies
step
label	org_dailies
'Proceeding to proper section |next
step
#include "H_Org_Fishing_Dailies"
step
label	tb_dailies
'Proceeding to proper section |next
step
#include "H_TB_Fishing_Dailies"
step
label	uc_dailies
'Proceeding to proper section |next
step
#include "H_UC_Fishing_Dailies"
step
'You have reached the end of the dailies for today.
.' Click here to go back to the beginning of the Dailies Menu. |confirm |next menu
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Orgrimmar\\Jewelcrafting Dailies",[[
description Walks you through completing the
description Jewelcrafting daily quests in
description Orgrimmar.
author support@zygorguides.com
daily
step
goto Orgrimmar,71.9,35.9
.talk 50482
..' You will only be able to complete 1 of the following quests per day
..accept 25160 |or
..accept 25162 |or |tip This quest requires you to be at least level 80.
..accept 25158 |or
..accept 25161 |or
..accept 25159 |or
step
'Buy 3 Nightstones from the Orgrimmar Auction House:
.collect 3 Nightstone##52180 |n |tip You can also try to mine these from any vein type in level 80-85 zones.
.' Use your Jewelcrafting skill to cut the Nightstones
.' Cut 3 Timeless Nightstones |q 25160/1
.get 3 Timeless Nightstone |q 25160/2
.' If you are unable to cut Timeless Nightstones, you can learn to in Orgrimmar from Lugrah at [72.5,34.3]
step
'Buy 3 Zephyrite from the Orgrimmar Auction House:
.collect 3 Zephyrite##52178 |n |tip You can also try to mine these from any vein type in level 80-85 zones.
.' Use your Jewelcrafting skill to cut the Zephyrite
.' Cut 3 Solid Zephyrite |q 25158/1
.get 3 Solid Zephyrite |q 25158/2
.' If you are unable to cut Solid Zephyrite, you can learn to in Orgrimmar from Lugrah at [72.5,34.3]
step
'Buy 3 Jasper from the Orgrimmar Auction House:
.collect 3 Jasper##52182 |n |tip You can also try to mine these from any vein type in level 80-85 zones.
.' Use your Jewelcrafting skill to cut the Jasper
.' Cut 3 Jagged Jasper |q 25161/1
.get 3 Jagged Jasper |q 25161/2
.' If you are unable to cut Jagged Jasper, you can learn to in Orgrimmar from Lugrah at [72.5,34.3]
step
'Anywhere in Orgrimmar:
.' Use your Stardust No. 2 on any Humanoid |use Stardust No. 2##52507 |tip The Humanoids can be NPCs or players, it doesn't matter.
.' Perform 10 Tests of Stardust No. 2 |q 25159/1
step
goto Mount Hyjal,64.7,22.5
.from Scalding Rock Elemental##40229+
.get 10 Elemental Goo |q 25162/1 |tip This quest requires you to be at least level 80.
step
goto Orgrimmar,71.9,35.9
.talk 50482
..' You will only be able to complete 1 of the following quests per day
..turnin 25160
..turnin 25162
..turnin 25158
..turnin 25161
..turnin 25159
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Borean Tundra\\Aces High with Pre-Quests",[[
description This guide section contains the pre-quests to unlock the daily quests in the Coldarra region of Borean Tundra.
description The Kaskala region of Borean Tundra does not have any pre-quests to unlock the daily quest that is available there.
author support@zygorguides.com
step
'Proceeding to proper section |next |only if default
'Proceeding to proper section |next dailies |only if completedq(13413)
step
goto Borean Tundra,33.3,34.5
.talk 26117
..accept 11918
step
goto 35,28
.kill 10 Coldarra Spellbinders|q 11918/1
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
.' Click Blue Dragon Eggs|tip They look like big eggs with blue crystals on them on the ground.
.' Destroy 5 Dragon Eggs |q 11936/1
step
goto 33.3,34.5
.talk 26117
..turnin 11936
..accept 11919
step
goto 24.6,27.1|n
.' Use your Raelorasz's Spear on a Nexus Drake Hatchling|use Raelorasz's Spear##35506|tip They are flying above you in the sky.
.' Do not kill it, let it hit you until it becomes friendly|havebuff Drake Hatchling Subdued|c|q 11919
step
goto 33.3,34.5
.' Stand here until it says Captured Nexus Drake |q 11919/1
step
goto 33.3,34.5
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
goto 29.5,24.8|n
.' Click the red arrow on your action bar to get off the Wyrmrest Skytalon|script VehicleExit()|outvehicle|c
step
goto 29.5,24.8
.talk 32548
..turnin 13413
daily
step
label	dailies
goto Borean Tundra,33.3,34.5
.talk 26117
..accept 11940
step
goto 24.6,27.1|n
.' Use your Raelorasz's Spear on a Nexus Drake Hatchling|use Raelorasz's Spear##35506|tip They are flying above you in the sky.
.' Do not kill it, let it hit you until it becomes friendly|havebuff Drake Hatchling Subdued|c|q 11940
step
goto 33.3,34.5
.' Stand here until it says Captured Nexus Drake |q 11940/1
step
goto 33.3,34.5
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
.' To cause damage, stack Flame Spike five times, then use Engulf in Flames. To keep your health up, stack Revivify 5 times, then target yourself and use Life Burst. Keep Revivify up while Life Burst is in use. Be ready to cast Flame Shield if they cast Arcane Surge.
.kill 5 Scalesworn Elites|q 13414/1
step
goto 29.5,24.8|n
.' Click the red arrow on your action bar to get off the Wyrmrest Skytalon|script VehicleExit()|outvehicle|c
step
goto 29.5,24.8
.talk 32548
..turnin 13414
step
'You have completed this daily guide today. You can do more dailies tomorrow.
.' Click here to return to the beginning of the guide. |confirm
|next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Borean Tundra\\Kaskala Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests in the Kaskala region of Borean Tundra.
description There are no pre-quests needed to unlock the daily quest offered in this guide section.
daily
step
label	dailies
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
step
'You have completed this daily guide today. You can do more dailies tomorrow.
.' Click here to return to the beginning of the guide. |confirm
|next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Dalaran\\Cooking Dailies with Pre-Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the Cooking daily quests in Dalaran.
step
'Proceeding to proper section |next |only if default
'Proceeding to proper section |next dailies |only if completedq(13089)
step
goto Howling Fjord,78.6,29.5
.talk 26953
..accept 13089|tip This quest is only available to you if you have 350+ Cooking skill.
step
goto 75.1,33.9
.from Wild Worg##24128+
.get 4 Chilled Meat |q 13089/1
step
goto 78.6,29.5
.talk 26953
..turnin 13089
step
label	dailies
#include "H_Dalaran_Cooking_Dailies"
step
'You have completed this daily guide today. You can do more dailies tomorrow.
.' Click here to return to the beginning of the guide. |confirm
|next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Dalaran\\Fishing Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the Fishing daily quests in Dalaran.
step
label	dailies
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
'You have completed this daily guide today. You can do more dailies tomorrow.
.' Click here to return to the beginning of the guide. |confirm
|next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Dalaran\\Jewelcrafting Dailies with Pre-Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the Jewelcrafting daily quests in Dalaran.
step
'Proceeding to proper section |next |only if default
'Proceeding to proper section |next dailies |only if completedq(13041)
step
goto Dalaran,40.7,35.4
.talk 28701
..accept 13041|tip This quest is only available once you have 375+ Jewelcrafting skill.
step
'Go to the Auction House in a major city:
.' Buy 1 Chalcedony |q 13041|tip If you don't want to, or can't, buy the Chalcedony, you can also try to get one by mining or prospecting.
step
goto Dalaran,40.7,35.4
.talk 28701
..turnin 13041
daily
step
label	dailies
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
.' Buy 1 Sun Crystal |collect 1 Sun Crystal##36920|q 12959 |tip If you don't want to, or can't, buy the Sun Crystal, you can also try to get one by mining or prospecting.
.' Buy 1 Dark Jade|collect 1 Dark Jade##36932|q 12961 |tip If you don't want to, or can't, buy the Dark Jade, you can also try to get one by mining or prospecting.
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
'The entrance to the cave starts here|goto The Storm Peaks,26.8,66.9,0.3|c|q 12960
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
'You have completed this daily guide today. You can do more dailies tomorrow.
.' Click here to return to the beginning of the guide. |confirm
|next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Dragonblight\\Dragonblight Dailies plus Pre-Quests",[[
author support@zygorguides.com
description This guide section contains the pre-quests to unlock the daily quests in the Wyrmrest Temple region of Dragonblight.
description The Moa'ki Harbor region of Dragonblight does not have any pre-quests to unlock the daily quest that is available there.
step
'Proceeding to the proper section |next |only if default
'Proceeding to the proper section |next dailies |only if completedq(12372)
step
goto Dragonblight 38.1,46.2
.talk 26471
..accept 11999
step
goto 22.3,54.1
.' Loot the Dead Mage Hunter bodies on the ground
.collect Mage Hunter Personal Effects bags |n
.click the Mage Hunter Personal Effects bags|use Mage Hunter Personal Effects##35792
..get Moonrest Gardens Plans|q 11999/1
|modelnpc Dead Mage Hunter##32572
step
goto 38.1,46.2
.talk 26471
..turnin 11999
..accept 12005
step
goto 18.4,58.9
.from Wind Trader Mu'fah##26496
.get Wind Trader Mu'fah's Remains |q 12005/1
step
'Go inside the building to 19.4,58.1|goto Dragonblight,19.4,58.1
.from Goramosh##26349
.get The Scales of Goramosh |q 12005/2
.collect Goramosh's Strange Device##36746 |n
.' Click Goramosh's Strange Device|use Goramosh's Strange Device##36746
..accept 12059
step
goto 38.1,46.2
.talk 26471
..turnin 12059
..turnin 12005
..accept 12061
step
goto 22.2,54.8
.' Use your Surge Needle Teleporter anywhere inside Moonrest Gardens|use Surge Needle Teleporter##36747
.' Move toward the center of the platform you get teleported onto
.' Observe the Object on the Surge Needle |q 12061/1
step
'Use your Surge Needle Teleporter to go back down to the ground|goto 22.6,57.0,0.3|use Surge Needle Teleporter##36747|noway|c
step
goto 38.1,46.2
.talk 26471
..turnin 12061
..accept 12066
step
goto 26.4,65
.from Captain Emmy Malin##26762
.get Ley Line Focus Control Ring|n
.' Use the Ley Line Focus Control Ring next to the half-circle|use Ley Line Focus Control Ring##36751|tip It's a big half-circle purple glowing thing.
.' Retrieve ley line focus information |q 12066/1
step
goto 38.1,46.2
.talk 26471
..turnin 12066
..accept 12084
step
goto 32.2,70.6
.from Lieutenant Ta'zinni##26815
.collect Ley Line Focus Amulet##36779 |n
.collect Lieutenant Ta'zinni's Letter##36780 |n
.' Click Lieutenant Ta'zinni's Letter|use Lieutenant Ta'zinni's Letter##36780
..accept 12085
step
goto 32.2,71.2
.' Use your Ley Line Focus Control Amulet on the Ley Line Focus|use Ley Line Focus Control Amulet##36779|tip It's a big half-circle purple glowing thing.
.' Retrieve Ley Line Focus information |q 12084/1
step
goto 38.1,46.2
.talk 26471
..turnin 12084
..accept 12106
step
goto 40.3,66.9
.' Click Mage-Commander Evenstar's body floating underwater
..turnin 12106
..accept 12110
step
goto 39.8,66.9
.' Use your Ley Line Focus Control Talisman on the Ley Line Focus|use Ley Line Focus Control Talisman##36815|tip It's a big half-circle purple glowing thing underwater.
.' Retrieve Ley Line Focus information |q 12110/1
step
goto 53,66.4
.' Go to this spot on the cliff to Observe Azure Dragonshrine |q 12110/2
step
goto 38.1,46.2
.talk 26471
..turnin 12110
..accept 12122
step
goto 57.9,54.2
.talk 26443
..turnin 12122
..accept 12767
step
goto 58,55.4
.talk 27804
..turnin 12767
..accept 12461
step
goto 43,50.9
.talk 27763
..turnin 12461
..accept 12448
step
goto 42.8,51.4
.' Help kill the following:
.' 12 Frigid Ghoul Attackers|kill 12 Frigid Ghoul Attacker|q 12448/1
.' 8 Frigid Geist Attackers|kill 8 Frigid Geist Attacker|q 12448/2
.' 1 Frigid Abomination Attacker|kill 1 Frigid Abomination Attacker|q 12448/3
step
goto 43,50.9
.talk 27763
..turnin 12448
..accept 12449
step
goto 46.7,52.8
.' Click the Ruby Acorns|tip The Ruby Acorns look like red stones on the ground around this area.
.get Ruby Acorns|n
.' Use the Ruby Acorns on the Ruby Keeper corpses|use Ruby Acorn##37727|tip The Ruby Keepers look like huge red dragons on fire.
.' Return 6 Ruby Keepers to the Earth |q 12449/1
step
goto 43,50.9
.talk 27763
..turnin 12449
..accept 12450
step
'Go into the valley to 48.2,47.8|goto 48.2,47.8
.kill 6 Frigid Necromancer|q 12450/1
step
'Go into the tree trunk to 47.7,49.1|goto 47.7,49.1
.from Dahlia Suntouch##27680
.' Cleanse the Ruby Corruption |q 12450/2
step
goto 43.0,50.9
.talk 27763
..turnin 12450
..accept 12769
step
goto 57.9,54.2
.talk 26443
..turnin 12769
..accept 12124
step
goto 57.9,54.2
.talk 26443
..'Tell him you want to go to the top of the temple|goto 59.7,53.1,0.5|noway|c
step
goto 59.8,54.7
.talk 26917
..turnin 12124
..accept 12435
daily
step
label	dailies
goto Dragonblight,59.2,54.3
.talk 27575
..accept 12372
step
goto 58.3,55.2
.talk 27629
..' Tell him you are ready to get into the fight
.' Fly around Wyrmrest Temple fighting the blue dragons in the sky using your abilities on your hotbar
.kill 3 Azure Dragon|q 12372/1
.kill 5 Azure Drake|q 12372/2
step
goto 55.1,66.4
.' Fly into the huge purple swirling column
.' Use your Destabilize Azure Dragonshrine ability
.' Destabilize the Azure Dragonshrine |q 12372/3
step
goto 58.7,54.5 |n
.' Click the red arrow to get off the dragon on the middle level of the temple |outvehicle |c
step
goto 59.2,54.3
.talk 27575
..turnin 12372
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
step
'You have completed this daily guide today. You can do more dailies tomorrow.
.' Click here to return to the beginning of the guide. |confirm
|next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Grizzly Hills\\Blackriver Logging Camp Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quest in the Blackriver Logging Camp region of Grizzly Hills.
description There are no pre-quests needed to unlock the daily quest offered in this guide section.
step
'Proceeding to proper section |next |only if default
'Prceeding to proper section |next dailies |only if completedq(12029)
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
.' Capture a Live Ice Troll |q 11984/1
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
goto Grizzly Hills,26.4,65.8
.talk 27120
..accept 12170
step
goto 27.3,64.7
.' Kill Alliance Players or Amberpine Scouts in the Blackriver Logging Camp
.' Kill 10 Alliance in Blackriver |q 12170/1
step
goto 26.4,65.8
.talk 27120
..turnin 12170
step
'You have completed this daily guide today. You can do more dailies tomorrow.
.' Click here to return to the beginning of the guide. |confirm
|next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Grizzly Hills\\Blue Sky Logging Grounds Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests in the Blue Sky Logging Grounds region of Grizzly Hills.
description There are no pre-quests needed to unlock the daily quests offered in this guide section.
step
'Proceeding to proper section |next |only if default
'Prceeding to proper section |next dailies |only if completedq(12029)
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
.' Capture a Live Ice Troll |q 11984/1
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
label dailies
goto Grizzly Hills,33.8,32.7
.talk 27464
..accept 12288
step
goto 34.4,32.6
.talk 27422
..accept 12280
step
goto 34.5,32.5
.talk 27423
..accept 12270
step
goto 34.5,33.0
.talk 27451
..accept 12284
step
goto 35.2,39.3
.' Kill Alliance Players or Wounded Westfall Infantry around the area
.' Use Renewing Tourniquet on Wounded Skirmishers|use Renewing Tourniquet##37568
.' Heal 10 Wounded Skirmishers |q 12288/1
.' Click Grooved Cogs, Notched Sprockets, and High Tension Springs on the ground of the Blue Sky Logging Grounds
..get 4 Grooved Cogs##37412|q 12280/1
..get 3 Notched Sprockets##37413|q 12280/2
..get 2 High Tension Springs##37416|q 12280/3
step
goto 33.4,35.7
.' Kill Alliance Players or Wounded Westfall Infantry around the area
.' Eliminate 15 Horde units |q 12284/1
step
goto 32.8,40.5
.' Find a Broken-down Shredder that spawns around this area
.' Click the Broken-down Shredder to get inside it
.' Use your abilities on your hot bar to return the shredder to Grekk at [34.5,32.5]
.' Deliver 3 Shredders |q 12270/1
step
goto 34.5,32.5
.talk 27423
..turnin 12270
step
goto 34.4,32.6
.talk 27422
..turnin 12280
step
goto 34.5,33.0
.talk 27451
..turnin 12284
step
goto 33.8,32.7
.talk 27464
..turnin 12288
step
'You have completed this daily guide today. You can do more dailies tomorrow.
.' Click here to return to the beginning of the guide. |confirm
|next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Grizzly Hills\\Granite Springs Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quest in the Granite Springs region of Grizzly Hills.
step
'Proceeding to proper section |next |only if default
'Prceeding to proper section |next dailies |only if completedq(12029)
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
.' Capture a Live Ice Troll |q 11984/1
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
'You have completed this daily guide today. You can do more dailies tomorrow.
.' Click here to return to the beginning of the guide. |confirm
|next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Grizzly Hills\\Venture Bay Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests in the Venture Bay region of Grizzly Hills.
description There are no pre-quests needed to unlock the daily quests offered in this guide section.
step
'Proceeding to proper section |next |only if default
'Prceeding to proper section |next dailies |only if completedq(12029)
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
.' Capture a Live Ice Troll |q 11984/1
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
.talk 27708
..accept 12432
.' If he's not there, then you have to take control of Venture Bay for the Horde
..' To take control of Venture Bay for the Horde, go to 15.1,88.0|tip Hide behind the lighthouse in between the 2 big brown rocks.  Flag yourself for PvP and a bar will appear under your minimap.  Sit here until the bar marker is all the way to the right, this will make General Gorlok spawn.
step
goto 11.4,76.7
.talk 27606
..accept 12324
step
goto 10.1,77.3
.talk 27563
..accept 12317
step
goto 10.1,77.2
.talk 27532
..accept 12315
step
goto 18.0,79.6
.' Toss the Smoke Bomb into the buildings to smoke out Venture Co. Stragglers|use Smoke Bomb##37621
.' Building one can be found at [18.0,79.6]
.' Building two can be found at [16.4,76.6]
.' Building three can be found at [14.6,76.7]
.' Smoke out 20 Venture Company Stragglers |q 12324/1
step
goto 14.8,77.8
.' Kill Alliance Players or Westfall Brigade Marine in Venture Bay
.' Kill 10 Alliance in Venture Bay |q 12317/1
step
goto 17.0,81.6
.kill Captain Brightwater##27509|q 12315/1
step
goto 16.4,80.3
.' Click the Element 115 in the back room of the ship|tip It looks like a red canister with a handle on the top
..collect Element 115##37664|q 12432
step
goto 21.4,84.5
.' On the next step you will guide a rocket into this Alliance lumber boat
.' Your target will be the wooden X on the side
.' Go to 13.6,88.9
.' You will want to use your keys, not your mouse, to guide the rocket
.' Avoid icebergs or the rocket will explode and you will have to start over
.' Click a red rocket to take control of one|invehicle|c|q 12432
step
goto 9.6,79.1
.' Hit the wooden X on the back of the Alliance Lumber boat
.' Destroy the Alliance Lumber boat |q 12432/1
step
goto 14.8,86.6
.talk 27708
..turnin 12432
.' If he's not there, then you have to take control of Venture Bay for the Horde
..' To take control of Venture Bay for the Horde, go to 15.1,88.0|tip Hide behind the lighthouse in between the 2 big brown rocks.  Flag yourself for PvP and a bar will appear under your minimap.  Sit here until the bar marker is all the way to the right, this will make General Gorlok spawn.
step
goto 11.4,76.7
.talk 27606
..turnin 12324
step
goto 10.1,77.3
.talk 27563
..turnin 12317
step
goto 10.1,77.2
.talk 27532
..turnin 12315
step
'You have completed this daily guide today. You can do more dailies tomorrow.
.' Click here to return to the beginning of the guide. |confirm
|next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Howling Fjord\\Kamagua Dailies with Pre-Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quest in the Kamagua region of Howling Fjord.
step
'Proceeding to proper section |next |only if default
'Proceeding to proper section |next dailies |only if completedq(11469)
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
'You have completed this daily guide today. You can do more dailies tomorrow.
.' Click here to return to the beginning of the guide. |confirm
|next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Argent Tournament Grounds Aspirant Rank Dailies. Includes Pre-Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing your race's Aspirant Rank dailies
description in order to achieve Argent Tournament Grounds Valiant Rank with your own race.
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
daily
step
label	dailies
goto Icecrown,76.3,24.3
.talk 33542
..accept 13678
step
goto 76.3,24.4
.talk 33542
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13673 |or
..accept 13674 |or
..accept 13675 |or
step
goto 76.3,24.4
.talk 33658
..accept 13676
step
goto 76.2,24.4
.talk 33659
..accept 13677
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..' Tell her you are glad to help
.get Ashwood Brand |q 13673/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13674
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13674/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13675
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13675/1
step
goto Icecrown,74.8,35.5
.from Vrykul Necrolord##31783+, Frostbrood Whelp##31718+
.kill 8 Icecrown Scourge |q 13676/1
step
goto 75.6,23.7
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Sunreaver Hawkstrider|invehicle |q 13677
step
goto 73.1,24.8
.' Target a Melee Target
.' If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
.' Use your Thrust ability to attack the target 5 times |q 13677/1
step
goto 72.9,25.1
.' Target a Charge Target from a distance
.' Use Shield-Breaker ability until you notice the targets Defend is gone
.' Use your Charge ability on the Charge Target 2 times |q 13677/3
step
goto 73.3,25.0
.' Target a Ranged Target from a distance
.' Use Shield-Breaker ability on Ranged Target to bring it's shields down
.' Use Shield-Breaker ability on Ranged Target twice, while it's shields are down|q 13677/2
step
goto 76.3,24.4
.talk 33542
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13673
..turnin 13674
..turnin 13675
step
goto 76.3,24.4
.talk 33658
..turnin 13676
step
goto 76.2,24.4
.talk 33659
..turnin 13677
step
'Make sure you have 15 Aspirant's Seals:
.get 15 Aspirant's Seal |q 13678/1 |tip If you do not have 15 Aspirant's Seals, keep repeating the daily quests in this guide section.  It takes 3 days of doing these Aspirant Rank dailies to get 15 Aspirant's Seals.
step
goto 76.3,24.4
.talk 33542
..turnin 13678
step
'You have completed this daily guide today. You can do more dailies tomorrow.
.' Click here to return to the beginning of the guide. |confirm
|next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Argent Tournament Grounds Valiant Rank Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing your race's Valiant Rank dailies
description in order to achieve Argent Tournament Grounds Champion Rank with your own race.
description You must have completed the Argent Tournament Grounds Aspirant Rank Dailies guide section
description in order to have access to the quests in this guide section.
daily
step
label	dailies
goto Icecrown,76.3,24.4
.talk 33542
..accept 13680
step
goto 71.8,20.0
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Sunreaver Hawkstrider|invehicle |q 13680
step
goto 71.4,19.6
.talk 33447
.' Tell him you are ready to fight!|tip Use your Defend ability on your hotbar to max your shield out at 3 charges before telling Squire David this.
.'An Argent Valiant runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Valiant|tip The best strategy to defeat the Argent Valiant is to always make sure your shield is up by using your Defend ability.  Then, use your Shield-Breaker ability to bring down the Argent Valiant's shield.  When his shield is down, use your Charge ability on him.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13680/1
step
goto 76.3,24.4
.talk 33542
..turnin 13680
..accept 13691 |only Orc, Goblin, Pandaren
..accept 13693 |only Troll
..accept 13694 |only Tauren
..accept 13695 |only Scourge
..accept 13696 |only BloodElf
step
goto 76.5,24.6
.talk 33361
..turnin 13691
..accept 13697
only Orc, Goblin
step
goto 76.0,24.5
.talk 33372
..turnin 13693
..accept 13719
only Troll
step
goto 76.2,24.6
.talk 33403
..turnin 13694
..accept 13720
only Tauren
step
goto 76.5,24.2
.talk 33373
..turnin 13695
..accept 13721
only Scourge
step
goto 76.5,23.9
.talk 33379
..turnin 13696
..accept 13722
only BloodElf
step
goto 76.5,24.6
.talk 33361
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13762 |or
..accept 13763 |or
..accept 13764 |or
only Orc, Goblin
step
goto 76.5,24.5
.talk 33405
..accept 13765
only Orc, Goblin
step
goto 76.4,24.6
.talk 33544
..accept 13767
..accept 13856
only Orc, Goblin
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13762/1
only Orc, Goblin
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13763
only Orc, Goblin
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13763/1
only Orc, Goblin
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13764
only Orc, Goblin
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13764/1
only Orc, Goblin
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13856
only Orc, Goblin
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13856/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13856/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13856/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on them to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Orc, Goblin
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13856
only Orc, Goblin
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13765/1
only Orc, Goblin
step
goto 75.5,24.0
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Orgrimmar Wolf|invehicle |q 13767
only Orc, Goblin
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13767/1
only Orc, Goblin
step
goto 76.5,24.6
.talk 33361
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13762
..turnin 13763
..turnin 13764
only Orc, Goblin
step
goto 76.5,24.5
.talk 33405
..turnin 13765
only Orc, Goblin
step
goto 76.4,24.6
.talk 33544
..turnin 13767
..turnin 13856
only Orc, Goblin
step
goto 76.0,24.5
.talk 33372
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13768 |or
..accept 13769 |or
..accept 13770 |or
only Troll
step
goto 76.0,24.6
.talk 33540
..accept 13771
only Troll
step
goto 75.9,24.4
.talk 33545
..accept 13772
..accept 13857
only Troll
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..' Tell her you are glad to help
.get Ashwood Brand |q 13768/1
only Troll
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13769
only Troll
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13769/1
only Troll
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13770
only Troll
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13770/1
only Troll
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13857
only Troll
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13857/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13857/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13857/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Troll
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13857
only Troll
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13771/1
only Troll
step
goto 75.6,23.8
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Darkspear Raptor|invehicle |q 13772
only Troll
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13772/1
only Troll
step
goto 76.0,24.5
.talk 33372
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13768
..turnin 13769
..turnin 13770
only Troll
step
goto 76.0,24.6
.talk 33540
..turnin 13771
only Troll
step
goto 75.9,24.4
.talk 33545
..turnin 13772
..turnin 13857
only Troll
step
goto 76.2,24.6
.talk 33403
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13773 |or
..accept 13774 |or
..accept 13775 |or
only Tauren
step
goto 76.3,24.7
.talk 33539
..accept 13776
only Tauren
step
goto 76.1,24.6
.talk 33549
..accept 13777
..accept 13858
only Tauren
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..' Tell her you are glad to help
.get Ashwood Brand |q 13773/1
only Tauren
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13774
only Tauren
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13774/1
only Tauren
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13775
only Tauren
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13775/1
only Tauren
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13858
only Tauren
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13858/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13858/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13858/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Tauren
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13858
only Tauren
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13776/1
only Tauren
step
goto 75.5,24.3
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Thunder Bluff Kodo|invehicle |q 13777
only Tauren
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13777/1
only Tauren
step
goto 76.2,24.6
.talk 33403
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13773
..turnin 13774
..turnin 13775
only Tauren
step
goto 76.3,24.7
.talk 33539
..turnin 13776
only Tauren
step
goto 76.1,24.6
.talk 33549
..turnin 13777
..turnin 13858
only Tauren
step
goto 76.5,24.2
.talk 33373
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13778 |or
..accept 13779 |or
..accept 13780 |or
only Scourge
step
goto 76.6,24.1
.talk 33541
..accept 13781
only Scourge
step
goto 76.5,24.3
.talk 33547
..accept 13782
..accept 13860
only Scourge
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..' Tell her you're glad to help
.get Ashwood Brand |q 13778/1
only Scourge
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13779
only Scourge
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13779/1
only Scourge
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13780
only Scourge
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13780/1
only Scourge
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13860
only Scourge
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13860/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13860/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13860/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Scourge
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13860
only Scourge
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13781/1
only Scourge
step
goto 75.6,23.9
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Forsaken Warhorse|invehicle |q 13782
only Scourge
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13782/1
only Scourge
step
goto 76.5,24.2
.talk 33373
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13778
..turnin 13779
..turnin 13780
only Scourge
step
goto 76.6,24.1
.talk 33541
..turnin 13781
only Scourge
step
goto 76.5,24.3
.talk 33547
..turnin 13782
..turnin 13860
only Scourge
step
goto 76.5,23.9
.talk 33379
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13783 |or
..accept 13784 |or
..accept 13785 |or
only BloodElf
step
goto 76.4,23.8
.talk 33538
..accept 13786
only BloodElf
step
goto 76.5,23.9
.talk 33548
..accept 13787
..accept 13859
only BloodElf
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..' Tell her you are glad to help
.get Ashwood Brand |q 13783/1
only BloodElf
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13784
only BloodElf
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13784/1
only BloodElf
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13785
only BloodElf
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13785/1
only BloodElf
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13859
only BloodElf
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13859/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13859/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13859/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only BloodElf
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13859
only BloodElf
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13786/1
only BloodElf
step
goto 75.5,24.1
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Silvermoon Hawkstrider|invehicle |q 13787
only BloodElf
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13787/1
only BloodElf
step
goto 76.5,23.9
.talk 33379
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13783
..turnin 13784
..turnin 13785
only BloodElf
step
goto 76.4,23.8
.talk 33538
..turnin 13786
only BloodElf
step
goto 76.5,23.9
.talk 33548
..turnin 13787
..turnin 13859
only BloodElf
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13697/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Orc, Goblin, Pandaren
.get 25 Valiant's Seal |q 13719/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Troll
.get 25 Valiant's Seal |q 13720/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Tauren
.get 25 Valiant's Seal |q 13721/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Scourge
.get 25 Valiant's Seal |q 13722/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only BloodElf
step
goto 76.5,24.6
.talk 33361
..turnin 13697
..accept 13726
only Orc, Goblin
step
goto 76.0,24.5
.talk 33372
..turnin 13719
..accept 13727
only Troll
step
goto 76.2,24.6
.talk 33403
..turnin 13720
..accept 13728
only Tauren
step
goto 76.5,24.2
.talk 33373
..turnin 13721
..accept 13729
only Scourge
step
goto 76.5,23.9
.talk 33379
..turnin 13722
..accept 13731
only BloodElf
step
goto 72.2,22.5
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Orgrimmar Wolf|invehicle |q 13726
only Orc, Goblin
step
goto 72.0,22.5
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Darkspear Raptor|invehicle |q 13727
only Troll
step
goto 71.9,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Thunder Bluff Kodo|invehicle |q 13728
only Tauren
step
goto 72.1,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Forsaken Warhorse|invehicle |q 13729
only Scourge
step
goto 72.2,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Silvermoon Hawkstrider|invehicle |q 13731
only BloodElf
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13726/1 |only Orc, Goblin, Pandaren
.' Defeat the Argent Valiant |q 13727/1 |only Troll
.' Defeat the Argent Valiant |q 13728/1 |only Tauren
.' Defeat the Argent Valiant |q 13729/1 |only Scourge
.' Defeat the Argent Valiant |q 13731/1 |only BloodElf
step
goto 76.5,24.6
.talk 33361
..turnin 13726
..accept 13736
only Orc, Goblin
step
goto 76.0,24.5
.talk 33372
..turnin 13727
..accept 13737
only Troll
step
goto 76.2,24.6
.talk 33403
..turnin 13728
..accept 13738
only Tauren
step
goto 76.5,24.2
.talk 33373
..turnin 13729
..accept 13739
only Scourge
step
goto 76.5,23.9
.talk 33379
..turnin 13731
..accept 13740
only BloodElf
step
goto 69.7,22.9
.talk 33817
..turnin 13736 |only Orc, Goblin, Pandaren
..turnin 13737 |only Troll
..turnin 13738 |only Tauren
..turnin 13739 |only Scourge
..turnin 13740 |only BloodElf
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
step
'You have completed this daily guide today. You can do more dailies tomorrow.
.' Click here to return to the beginning of the guide. |confirm
|next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\ATG Champion Rank Dailies - Death Knight Only",[[
author support@zygorguides.com
description You must be a Death Knight to do the quests in this Argent Tournament Grounds guide section.
description Also, you must have completed the Argent Tournament Grounds Valiant Rank Dailies guide section.
daily
step
label dailies
goto Icecrown,73.8,19.4
.talk 33769
..accept 13813
only DeathKnight
step
goto 73.8,20.1
.talk 33762
..accept 13812 |tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
..accept 13863
only DeathKnight
step
goto 73.6,20.1
.talk 33770
..accept 13814
only DeathKnight
step
goto 72.2,22.5
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Orgrimmar Wolf|invehicle |q 13814
only Orc DeathKnight, Goblin DeathKnight
step
goto 72.0,22.5
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Darkspear Raptor|invehicle |q 13814
only Troll DeathKnight
step
goto 71.9,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Thunder Bluff Kodo|invehicle |q 13814
only Tauren DeathKnight
step
goto 72.1,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Forsaken Warhorse|invehicle |q 13814
only Scourge DeathKnight
step
goto 72.2,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Silvermoon Hawkstrider|invehicle |q 13814
only BloodElf DeathKnight
step
goto 71.6,23.8
.' Talk to the riders on mounts around this area
.' Tell them you are ready to fight!
.' Fight and defeat them|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.get 4 Mark of the Champion |q 13814/1
only DeathKnight
step
'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13814
only DeathKnight
step
goto 64.3,21.4
.from Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
.kill 15 Cult of the Damned member |q 13813/1
only DeathKnight
step
'You will need to get a group of at least 3 people to do the daily quest in the next step of the guide.  Find a group, it should be pretty easy because there are always other players doing this quest.
only DeathKnight
step
goto 44.1,32.6
.' This is how this fight will happen: |tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do a lot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
.kill Chillmaw |q 13812/1 |tip Chillmaw is a big skeletal dragon that flies around this area.
.kill 3 Cultist Bombardier |q 13812/2
only DeathKnight
step
goto 48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13863
only DeathKnight
step
goto 50.1,74.8
.kill 3 Boneguard Commander |q 13863/1 |tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
only DeathKnight
step
goto 48.9,71.4
'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13863
only DeathKnight
step
goto 73.8,19.4
.talk 33769
..turnin 13813
only DeathKnight
step
goto 73.8,20.1
.talk 33762
..turnin 13812
..turnin 13863
only DeathKnight
step
goto 73.6,20.1
.talk 33770
..turnin 13814
only DeathKnight
step
'You have completed this daily guide today. You can do more dailies tomorrow.
.' Click here to return to the beginning of the guide. |confirm
|next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\ATG Champion Rank Dailies - Non-Death Knight Only",[[
author support@zygorguides.com
description You must NOT be a Death Knight to do the quests in this Argent Tournament Grounds guide section.
description Also, you must have completed the Argent Tournament Grounds Valiant Rank Dailies guide section.
daily
step
label	dailies
goto Icecrown,69.9,23.3
.talk 33771
..accept 13811
only !DeathKnight
step
goto 70.0,23.4
.talk 33759
..accept 13809 |tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
..accept 13862
only !DeathKnight
step
goto 69.9,23.5
.talk 33763
..accept 13810
only !DeathKnight
step
goto 72.2,22.5
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Orgrimmar Wolf|invehicle |q 13811
only Orc !DeathKnight, Goblin !DeathKnight
step
goto 72.0,22.5
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Darkspear Raptor|invehicle |q 13811
only Troll !DeathKnight
step
goto 71.9,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Thunder Bluff Kodo|invehicle |q 13811
only Tauren !DeathKnight
step
goto 72.1,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Forsaken Warhorse|invehicle |q 13811
only Scourge !DeathKnight
step
goto 72.2,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Silvermoon Hawkstrider|invehicle |q 13811
only BloodElf !DeathKnight
step
goto 71.6,23.8
.' Talk to the riders on mounts around this area
.' Tell them you are ready to fight!
.' Fight and defeat them|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.get 4 Mark of the Champion |q 13811/1
only !DeathKnight
step
'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13811
only !DeathKnight
step
goto 64.3,21.4
.from Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
.kill 15 Cult of the Damned member |q 13810/1
only !DeathKnight
step
'You will need to get a group of at least 3 people to do the daily quest in the next step of the guide.  Find a group, it should be pretty easy because there are always other players doing this quest.
only !DeathKnight
step
goto 44.1,32.6
.' This is how this fight will happen: |tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do a lot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
.kill Chillmaw |q 13809/1 |tip Chillmaw is a big skeletal dragon that flies around this area.
.kill 3 Cultist Bombardier |q 13809/2
only !DeathKnight
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13862
only !DeathKnight
step
goto 50.1,74.8
.kill 3 Boneguard Commander |q 13862/1 |tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
only !DeathKnight
step
goto 48.9,71.4
'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13862
only !DeathKnight
step
goto 69.9,23.3
.talk 33771
..turnin 13811
only !DeathKnight
step
goto 70.0,23.4
.talk 33759
..turnin 13809
..turnin 13862
only !DeathKnight
step
goto 69.9,23.5
.talk 33763
..turnin 13810
only !DeathKnight
step
'You have completed this daily guide today. You can do more dailies tomorrow.
.' Click here to return to the beginning of the guide. |confirm
|next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Argent Tournament Grounds Crusader Dailies",[[
author support@zygorguides.com
description In order to be able to complete the quests in this guide section, you must already be Exalted
description with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions.
description Also, you must have already become a Champion with each of those factions,
description using the Crusader Title Guide in the Icecrown section of the Dailies guide.
daily
step
label	dailies
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
step
'You have completed this daily guide today. You can do more dailies tomorrow.
.' Click here to return to the beginning of the guide. |confirm
|next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\ATG Black Knight Quest Chain",[[
author support@zygorguides.com
description This Argent Tournament Grounds guide section unlocks a Champion Rank group daily quest.
description We recommend you complete the Argent Tournament Grounds Valiant Rank Dailies guide section,
description and achieve Champion Rank with your race, before doing this quest chain.
description Starting this quest chain when you are already Champion Rank will allow you
description to do the entire quest chain without having to switch back and forth between guide sections,
description allowing you to get it done much faster and more efficiently.
description You will be unable to get some quests in this quest chain if you are not already
description at Champion Rank with The Argent Tournament Grounds.
step
label	dailies
goto Icecrown,69.4,23.0
.talk 33417
..accept 13634
step
goto 76.1,24.0
.talk 33971
..home Sunreaver Pavilion
step
goto Silverpine Forest,53.2,28.1
.' Click the Dusty Journal |tip It's a blue open book laying on the floor inside this house.
.get Dusty Journal |q 13634/1
step
goto Icecrown,69.4,23.0
.talk 33417
..turnin 13634
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
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Argent Warhorse|invehicle |q 13664
step
goto 71.3,23.2
.talk 33522
..' Ask him to summon the Black Knight.
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
.from Cult Assassin##35127
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
'You have completed this daily guide today. You can do more dailies tomorrow.
.' Click here to return to the beginning of the guide. |confirm
|next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide\\Home Cities Reputation\\Darkspear Trolls & Orgrimmar\\Orc (1-5)",[[
description This guide will help you to get Exalted
description reputation with the Darkspear Trolls and
description Orgrimmar factions.
description
description You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.
next Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide\\Home Cities Reputation\\Darkspear Trolls & Orgrimmar\\Orc & Troll (5-13)
author support@zygorguides.com
step
'You will not be able to do some of the quests in this section if you are not an Orc.
|confirm
step
goto Durotar,43.3,68.8
.talk 10176
..accept 25152
step
goto 43.2,68.3
.talk 3143
..turnin 25152
..accept 25126
step
goto 43.9,63.9
.from Mottled Boar##3098+
.' Slaughter 8 Mottled Boars |q 25126/1
step
goto 43.2,68.3
.talk 3143
..turnin 25126
..accept 25172
step
goto 43.4,72.9
.kill 7 Northwatch Scout |q 25172/1
step
goto 43.2,68.3
.talk 3143
..turnin 25172
..accept 25127
step
goto 42.7,67.2
.talk 9796
..accept 25136
step
goto 45.7,63.3
.from Scorpid Worker##3124+
.get 8 Scorpid Worker Tail |q 25127/1
.' Click Cactus Apples |tip They look like cactuses with red apples on them.
.get 6 Cactus Apple |q 25136/1
step
goto 40.6,62.6
.talk 3287
..accept 25129
step
goto 40.5,67.3
.from Sarkoth##3281
.get Sarkoth's Mangled Claw |q 25129/1
step
goto 40.6,62.6
.talk 3287
..turnin 25129
..accept 25130
step
goto 43.2,68.3
.talk 3143
..turnin 25127
..turnin 25130
..accept 3087 |only Orc Hunter
..accept 2383 |only Orc Warrior
..accept 3088 |only Orc Rogue
..accept 3089 |only Orc Shaman
..accept 25138 |only Orc Mage
..accept 3090 |only Orc Warlock
step
goto 42.4,68.1
.talk 3156
..turnin 3090
..accept 25145
only Orc Warlock
step
goto 42.4,68.1
.talk 3156
.' Learn Immolate |q 25145/2
only Orc Warlock
step
goto 43.0,69.2
.' Use your Immolate ability on the Training Dummy
.' Practice Immolate 5 times |q 25145/1
only Orc Warlock
step
goto 42.4,68.1
.talk 3156
..turnin 25145
only Orc Warlock
step
goto 42.5,69.0
.talk 39206
..turnin 25138
..accept 25149
only Orc Mage
step
goto 42.5,69.0
.talk 39206
.' Learn Arcane Missiles |q 25149/2
only Orc Mage
step
goto 43.2,69.3
.' Use your Arcane Missiles ability on the Training Dummy
.' Practice Arcane Missiles 2 times |q 25149/1
only Orc Mage
step
goto 42.5,69.0
.talk 39206
..turnin 25149
only Orc Mage
step
goto 42.4,69.0
.talk 3157
..turnin 3089
..accept 25143
only Orc Shaman
step
goto 42.4,69.0
.talk 3157
.' Learn Primal Strike |q 25143/2
only Orc Shaman
step
.talk 5887
..accept 1516
only Orc Shaman
step
goto 43.3,67.5
.' Use your Primal Strike ability on the Training Dummy
.' Practice Primal Strike 3 times |q 25143/1
only Orc Shaman
step
goto 45.3,56.1
.from Felstalker##3102+
.get Felstalker Hoof |q 1516/1
only Orc Shaman
step
goto 42.4,69.0
.talk 3157
..turnin 25143
only Orc Shaman
step
goto 42.4,69.2
.talk 5887
..turnin 1516
..accept 1517
only Orc Shaman
step
goto 44.1,76.5
'Use the Earth Sapta that was given to you |use Earth Sapta##6635
.talk 5891
..turnin 1517
..accept 1518
only Orc Shaman
step
goto 42.4,69.2
.talk 5887
..turnin 1518
only Orc Shaman
step
goto 42.4,68.8
.talk 3155
..turnin 3088
..accept 25141
only Orc Rogue
step
goto 42.4,68.8
.talk 3155
.' Learn Eviscerate |q 25141/2
only Orc Rogue
step
goto 43.2,69.4
.' Use your Eviscerate ability on the Training Dummy
.' Practice Eviscerate 3 times |q 25141/1
only Orc Rogue
step
goto 42.4,68.8
.talk 3155
..turnin 25141
only Orc Rogue
step
goto 42.9,69.5
.talk 3153
..turnin 2383
..accept 25147
only Orc Warrior
step
goto 42.9,69.5
.talk 3153
.' Learn Charge |q 25147/2
only Orc Warrior
step
goto 43.2,69.1
.' Use your Charge ability on a Target Dummy
.' Practice Charge 1 time |q 25147/1
only Orc Warrior
step
goto 42.9,69.5
.talk 3153
..turnin 25147
only Orc Warrior
step
goto Durotar,42.8,69.3
.talk 39214
..turnin 3087
..accept 25139
only Orc Hunter
step
goto Durotar,42.8,69.3
.talk 39214
.' Learn Steady Shot |q 25139/2
only Orc Hunter
step
goto Durotar,43.2,69.3
.' Use your Steady Shot ability on a Target Dummy
.' Practice Steady Shot 5 Times |q 25139/1
only Orc Hunter
step
goto Durotar,42.8,69.3
.talk 39214
..turnin 25139
only Orc Hunter
step
goto 42.4,69.2
.talk 5887
..accept 25128
step
goto Durotar,42.7,67.2
.talk 9796
..turnin 25136
step
goto Durotar,43.5,67.5
.talk 3145
..accept 25131
step
goto Durotar,43.5,67.4
.talk 11378
..accept 25134
step
goto Durotar,45.6,66.0
.' Use your Foreman's Blackjack on Lazy Peons along this mountainside |use Foreman's Blackjack##16114 |tip You may have to stand next to them and wait for them to go to sleep, if they are all chopping trees.
.' Waken 4 Peons |q 25134/1
step
goto Durotar,45.5,57.9
.kill 8 Vile Familiar |q 25131/1
step
goto 40.6,62.6
.talk 3287
..turnin 25128
step
goto Durotar,43.5,67.4
.talk 11378
..turnin 25134
step
goto Durotar,43.5,67.5
.talk 3145
..turnin 25131
..accept 25132
step
goto Durotar,43.5,67.4
.talk 11378
..accept 25135
step
goto Durotar,45.4,56.4 |n
.' Go inside the cave |goto Durotar,45.4,56.4,0.5 |noway |c
step
goto Durotar,43.7,53.8
.' Kill Felstalkers as you walk
.' Click Thazz'ril's Pick |tip It's a big mining pick, standing upright, with light shining down on it.
.get Thazz'ril's Pick |q 25135/1
step
goto Durotar,42.4,53.5
.' Kill Felstalkers as you walk
.from Yarrog Baneshadow##3183
.get Burning Blade Medallion |q 25132/2
step
goto Durotar,44.8,54.7
.kill 7 Felstalker |q 25132/1
step
goto Durotar,43.5,67.4
.talk 11378
..turnin 25135
step
goto Durotar,43.5,67.5
.talk 3145
..turnin 25132
..accept 25133
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide\\Home Cities Reputation\\Darkspear Trolls & Orgrimmar\\Troll (1-5)",[[
description This guide will help you to get Exalted
description reputation with the Darkspear Trolls and
description Orgrimmar factions.
description
description You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.
next Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide\\Home Cities Reputation\\Darkspear Trolls & Orgrimmar\\Orc & Troll (5-13)
author support@zygorguides.com
step
'You will not be able to do some of the quests in this section if you are not a Troll.
|confirm
step
goto Durotar,62.5,84.4
.talk 37951
..accept 24776 |only Troll Hunter
..accept 24607 |only Troll Warrior
..accept 24770 |only Troll Rogue
..accept 24782 |only Troll Priest
..accept 24764 |only Troll Druid
..accept 26272 |only Troll Warlock
..accept 24750 |only Troll Mage
..accept 24758 |only Troll Shaman
step
goto 64.9,84.2
.talk 38242
..turnin 24758
..accept 24759
only Troll Shaman
step
goto 68.2,84.0
.talk 38246
..turnin 24750
..accept 24751
only Troll Mage
step
goto 64.9,83.3
.talk 42618
..turnin 26272
..accept 26273
only Troll Warlock
step
goto 67.7,84.7
.talk 38243
..turnin 24764
..accept 24765
only Troll Druid
step
goto 67.7,83.0
.talk 38245
..turnin 24782
..accept 24783
only Troll Priest
step
goto 65.9,83.2
.talk 38244
..turnin 24770
..accept 24771
only Troll Rogue
step
goto 67.1,83.3
.talk 38247
..turnin 24776
..accept 24777
only Troll Hunter
step
goto 65.8,84.5
.talk 38037
..turnin 24607
..accept 24639
only Troll Warrior
step
goto 65.8,84.4
.kill 6 Tiki Target |q 24759/1
only Troll Shaman
step
goto 65.8,84.4
.kill 6 Tiki Target |q 24771/1
only Troll Rogue
step
goto 65.8,84.4
.kill 6 Tiki Target |q 24639/1
only Troll Warrior
step
goto 65.8,84.4
.kill 6 Tiki Target |q 26273/1
only Troll Warlock
step
goto 67.1,83.3
.kill 6 Tiki Target |q 24751/1
only Troll Mage
step
goto 67.1,83.3
.kill 6 Tiki Target |q 24777/1
only Troll Hunter
step
goto 67.1,83.3
.kill 6 Tiki Target |q 24765/1
only Troll Druid
step
goto 67.1,83.3
.kill 6 Tiki Target |q 24783/1
only Troll Priest
step
goto 64.9,84.2
.talk 38242
..turnin 24759
..accept 24761
only Troll Shaman
step
goto 68.2,84.0
.talk 38246
..turnin 24751
..accept 24753
only Troll Mage
step
goto 64.9,83.3
.talk 42618
..turnin 26273
..accept 26275
only Troll Warlock
step
goto 67.7,84.7
.talk 38243
..turnin 24765
..accept 24767
only Troll Druid
step
goto 67.7,83.0
.talk 38245
..turnin 24783
..accept 24785
only Troll Priest
step
goto 65.9,83.2
.talk 38244
..turnin 24771
..accept 24773
only Troll Rogue
step
goto 67.1,83.3
.talk 38247
..turnin 24777
..accept 24779
only Troll Hunter
step
goto 65.8,84.5
.talk 38037
..turnin 24639
..accept 24641
only Troll Warrior
step
goto 67.2,81.6
.from Wildmane Cat##38046+
.get 6 Wildmane Cat Pelt |q 24767/1
only Troll Druid
step
goto 67.2,81.6
.from Wildmane Cat##38046+
.get 6 Wildmane Cat Pelt |q 24785/1
only Troll Priest
step
goto 67.2,81.6
.from Wildmane Cat##38046+
.get 6 Wildmane Cat Pelt |q 24753/1
only Troll Mage
step
goto 67.2,81.6
.from Wildmane Cat##38046+
.get 6 Wildmane Cat Pelt |q 24779/1
only Troll Hunter
step
goto 64.2,83.1
.from Wildmane Cat##38046+
.get 6 Wildmane Cat Pelt |q 24761/1
only Troll Shaman
step
goto 64.2,83.1
.from Wildmane Cat##38046+
.get 6 Wildmane Cat Pelt |q 24641/1
only Troll Warrior
step
goto 64.2,83.1
.from Wildmane Cat##38046+
.get 6 Wildmane Cat Pelt |q 26275/1
only Troll Warlock
step
goto 64.2,83.1
.from Wildmane Cat##38046+
.get 6 Wildmane Cat Pelt |q 24773/1
only Troll Rogue
step
goto 65.0,84.2
.talk 38242
..turnin 24761
..accept 24762
only Troll Shaman
step
goto 68.2,83.9
.talk 38246
..turnin 24753
..accept 24754
only Troll Mage
step
goto 64.9,83.3
.talk 42618
..turnin 26275
..accept 26276
only Troll Warlock
step
goto 67.7,84.6
.talk 38243
..turnin 24767
..accept 24768
only Troll Druid
step
goto 67.7,83.0
.talk 38245
..turnin 24785
..accept 24786
only Troll Priest
step
goto 65.9,83.3
.talk 38244
..turnin 24773
..accept 24774
only Troll Rogue
step
goto 67.1,83.3
.talk 38247
..turnin 24779
..accept 24780
only Troll Hunter
step
goto 65.8,84.5
.talk 38037
..turnin 24641
..accept 24642
only Troll Warrior
step
goto 67.5,84.2
.talk 39062
.' Tell him you are ready to face your challenge |q 26276/1
.kill Captive Spitescale Scout |q 24754/2
only Troll Mage
step
goto 67.5,84.2
.talk 39062
.' Tell him you are ready to face your challenge |q 24768/1
.kill Captive Spitescale Scout |q 24768/2
only Troll Druid
step
goto 67.5,84.2
.talk 39062
.' Tell him you are ready to face your challenge |q 24786/1
.kill Captive Spitescale Scout |q 24786/2
only Troll Priest
step
goto 67.5,84.2
.talk 39062
.' Tell him you are ready to face your challenge |q 24780/1
.kill Captive Spitescale Scout |q 24780/2
only Troll Hunter
step
goto 65.6,83.7
.talk 39062.' Tell him you are ready to face your challenge |q 24774/1
.kill Captive Spitescale Scout |q 24774/2
only Troll Rogue
step
goto 65.6,83.7
.talk 39062
.' Tell him you are ready to face your challenge |q 24642/1
.kill Captive Spitescale Scout |q 24642/2
only Troll Warrior
step
goto 65.6,83.7
.talk 39062
.' Tell him you are ready to face your challenge |q 26276/1
.kill Captive Spitescale Scout |q 26276/2
only Troll Warlock
step
goto 65.6,83.7
.talk 39062
.' Tell him you are ready to face your challenge |q 24762/1
.kill Captive Spitescale Scout |q 24762/2
only Troll Shaman
step
goto 65.0,84.2
.talk 38242
..turnin 24762
..accept 24760
only Troll Shaman
step
goto 68.2,83.9
.talk 38246
..turnin 24754
..accept 24752
only Troll Mage
step
goto 64.9,83.3
.talk 42618
..turnin 26276
..accept 26274
only Troll Warlock
step
goto 67.7,84.6
.talk 38243
..turnin 24768
..accept 24766
only Troll Druid
step
goto 67.4,83.5
.talk 38245
..turnin 24786
..accept 24784
only Troll Priest
step
goto 65.6,83.8
.talk 38244
..turnin 24774
..accept 24772
only Troll Rogue
step
goto 67.4,83.5
.talk 38247
..turnin 24780
..accept 24778
only Troll Hunter
step
goto 65.8,84.5
.talk 38037
..turnin 24642
..accept 24640
only Troll Warrior
step
goto 65.0,84.2
.talk 38242
.' Learn Primal Strike |q 24760/2
only Troll Shaman
step
goto 68.2,84.0
.talk 38246
.' Learn Arcane Mage |q 24752/2
only Troll Mage
step
goto 64.9,83.3
.talk 42618
.' Learn Immolate |q 26274/2
only Troll Warlock
step
goto 67.7,84.7
.talk 38243
.' Learn Healing Touch |q 24766/2
only Troll Druid
step
goto 67.7,83.0
.talk 38245
.' Learn Flash Heal |q 24784/2
only Troll Priest
step
goto 65.9,83.2
.talk 38244
.' Learn Eviscerate |q 24772/2
only Troll Rogue
step
goto 67.1,83.3
.talk 38247
.' Learn Steady Shot |q 24778/2
only Troll Hunter
step
goto 65.8,84.5
.talk 38037
.' Learn Charge |q 24640/2
only Troll Warrior
step
goto 64.9,84.6
.' Use your Primal Strike ability on the Tiki Target
.' Practice Primal Strike 3 times |q 24760/1
only Troll Shaman
step
goto 65.0,84.2
.talk 38242
..turnin 24760
..accept 24763
only Troll Shaman
step
goto 68.5,84.2
.' Use your Fireball ability until you get the Arcane Missiles buff, then use it on the Tiki Targets
.' Practice Arcane Missiles 5 times |q 24752/1
only Troll Mage
step
goto 68.3,84.0
.talk 38246
..turnin 24752
..accept 24755
only Troll Mage
step
.' Use your Immolate on the Tiki Targets
.' Practice immolate 5 times |q 26274/1
only Troll Warlock
step
goto 64.9,83.3
.talk 42618
..turnin 26274
..accept 26277
only Troll Warlock
step
goto 67.9,84.9
.' Use your Healing Touch on the Wounded Darkspear Watcher
.' Practice Healing Touch 5 times |q 24766/1
only Troll Druid
step
goto 67.7,84.6
.talk 38243
..turnin 24766
..accept 24769
only Troll Druid
step
goto 67.8,83.2
.' Use your Flash Heal ability on the Wounded Darkspear Watcher
.' Practice Flash Heal 5 times |q 24784/1
only Troll Priest
step
goto 67.4,83.5
.talk 38245
..turnin 24784
..accept 24787
only Troll Priest
step
goto 65.9,83.0
.' Use your Eviscerate ability on the Tiki Targets
.' Practice Eviscerate 3 times |q 24772/1
only Troll Rogue
step
goto 65.6,83.8
.talk 38244
..turnin 24772
..accept 24775
only Troll Rogue
step
goto 66.9,83.4
.' Use your Steady Shot ability on the Tiki Targets
.' Practice Steady Shot 5 times |q 24778/1
only Troll Hunter
step
goto 67.4,83.5
.talk 38247
..turnin 24778
..accept 24781
only Troll Hunter
step
goto 65.8,84.5
.' Use your Charge ability on the Tiki Target
.' Practice Charge 1 time |q 24640/2
only Troll Warrior
step
.talk 38037
..turnin 24640
..accept 24643
only Troll Warrior
step
goto 68.9,88.7
.talk 38966
..turnin 24781 |only Troll Hunter
..turnin 24643 |only Troll Warrior
..turnin 24775 |only Troll Rogue
..turnin 24787 |only Troll Priest
..turnin 24769 |only Troll Druid
..turnin 26277 |only Troll Warlock
..turnin 24755 |only Troll Mage
..turnin 24763 |only Troll Shaman
..accept 25064
step
goto 68.5,87.7
.talk 39007
..accept 25037
step
goto 70.2,85.3
.from Pygmy Surf Crawler##39004+
.get 5 Fresh Crawler Meat |q 25037/1
step
goto 68.5,87.7
.talk 39007
..turnin 25037
step
goto 67.3,88.0
.talk 38005
..turnin 25064
..accept 24622
step
goto 63.4,95.3
.talk 37969
..turnin 24622
..accept 24623
step
goto 63.5,95.2
.talk 37987
..accept 24624
..accept 24625
step
goto 60.4,89.8
.from Naj'tess##39072
.get Naj'tess' Orb of Corruption |q 24625/1
.kill 8 Corrupted Bloodtalon |q 24624/1
.' Use your Bloodtalon Whistle near Lost Bloodtalon Hatchlings |use Bloodtalon Whistle##52283 |tip They look like tiny red raptors around this area.
.' Rescue 12 Bloodtalon Hatchlings |q 24623/1
step
goto 63.4,95.3
.talk 37969
..turnin 24623
step
goto 63.5,95.2
.talk 37987
..turnin 24624
..turnin 24625
step
goto 63.4,95.3
.talk 37969
..accept 24626
step
goto 62.5,95.1
.' Use your Bloodtalon Lasso on Swiftclaw |use Bloodtalon Lasso##50053 |tip Swiftclaw is a dark colored raptor that runs really fast around this area, so you may need to search for him.
.' Capture Swiftclaw |q 24626/1
step
goto 65.9,88.5
.' Run to this spot while riding Swiftclaw
.' Return Swiftclaw to the Raptor Pens |q 24626/2
step
goto 67.3,88.0
.talk 38005
..turnin 24626
step
goto 68.0,89.0
.talk 38440
..accept 25035
step
goto 68.0,89.0
.talk 38989
..' Ask him if he has a raptor that can take you there |goto Durotar,67.9,74.3,0.5 |noway |c |q 25035
step
goto 68.0,74.1
.talk 38442
..turnin 25035
..accept 24812
..accept 24813
step
goto 68.5,72.2
.from Spitescale Wavethrasher##38300+, Spitescale Siren##38301+
.kill 12 Spitelash Naga |q 24812/1
.' Use your Territorial Fetish next to Spitescale Flags |use Territorial Fetish##52065 |tip They look like red pennant flags on blue-ish tridents stuck in the ground all around inside this cave.
.' Place 8 Territorial Fetishes |q 24813/1
step
goto 68.0,74.1
.talk 38442
..turnin 24812
..turnin 24813
..accept 24814
step
goto 69.1,72.4
.talk 10540 |tip Follow the path around the island to find him, don't go inside the cave.
..' Tell him you are ready |q 24814/1
.' Help Vol'jin fight Zat'jira and click the 3 braziers behind Zar'jira when the message displays on the screen telling you to stamp them out.
.kill Zar'jira |q 24814/2
step
goto 68.4,71.6
.talk 39027
.' Ask her to take you back to Darkspear Hold
goto 68.2,87.8 |noway |c
step
goto 68.9,88.7
.talk 10540
..turnin 24814
..accept 25073
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide\\Home Cities Reputation\\Darkspear Trolls & Orgrimmar\\Orc & Troll (5-13)",[[
description This guide will help you to get Exalted
description reputation with the Darkspear Trolls and
description Orgrimmar factions.
description
description You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.
author support@zygorguides.com
step
goto Durotar,55.4,73.3
.talk 41142
.fpath Sen'jin Village
step
goto Durotar 56.0,74.7
.talk 3188
..turnin 25133 |only Orc
..turnin 25073 |only Troll
..accept 25167
step
goto 55.7,75.3
.talk 10578
..accept 25170
step
goto 55.4,79.3
.from Surf Crawler##3107+
.get 5 Crawler Mucus |q 25170/1
step
goto 52.2,81.2
.' Destroy 3 Northwatch Supply Crates |q 25167/1 |tip They are huge wooden crates with big red + signs on them, being carried by Northwatch Lugs.
.kill 10 Northwatch Lug |q 25167/2
step
goto 55.7,75.3
.talk 10578
..turnin 25170
..accept 25165
step
goto 56.0,74.7
.talk 3188
..turnin 25167
..accept 25168
step
goto 55.4,75.1
.talk 3140
..accept 25169
step
goto 52.4,74.4
.' Use your Poison Extraction Totem |use Poison Extraction Totem##52505
.' Fight Clattering Scorpions next to the Poison Extraction Totem
.' Collect 6 Samples of Scorpid Venom |q 25165/1
step
goto 50.8,79.1 |n
.' Enter the Northwatch Foothold here |goto Durotar,50.8,79.1,0.5 |noway |c
step
goto 49.7,81.6
.' Click the Attack Plan: Valley of Trials |tip It looks like a piece of paper laying on the ground, next to a blue tent.
.' Burn the Attack Plan: Valley of Trials |q 25169/1
step
goto 47.9,77.5
.' Click the Attack Plan: Sen'jin Village |tip It looks like a piece of paper laying on a wooden crate, in between 2 white tents.
.' Burn the Attack Plan: Sen'jin Village |q 25169/2
step
goto 46.4,78.8
.' Click the Attack Plan: Orgrimmar |tip It looks like a piece of paper laying on the ground, under a bedm in a blue tent.
.' Burn the Attack Plan: Orgrimmar |q 25169/3
step
goto 49.4,79.3
.from Northwatch Ranger##39261+, Northwatch Infantryman##39260+
.kill 12 Northwatch Troop |q 25168/1
step
goto 50.8,79.1 |n
.' Leave the Northwatch Foothold here |goto Durotar,50.8,79.1,0.5 |noway |c
step
goto 55.7,75.3
.talk 10578
..turnin 25165
step
goto 55.4,75.1
.talk 3140
..turnin 25169
step
goto 56.0,74.7
.talk 3188
..turnin 25168
..accept 25171
step
goto 55.3,74.7
.talk 10676
..' Ask him if you can catch a ride to Razor Hill
.' Ride to Razor Hill |goto Durotar,52.5,44.2,0.5 |noway |c |q 25171
step
goto 51.9,43.5
.talk 3139
..turnin 25171
..accept 25173
step
goto 53.1,43.6
.talk 41140
.fpath Razor Hill
step
goto 53.1,43.1
.talk 39423
..accept 25176
step
goto 51.5,41.6
.talk 6928
.home Razor Hill
step
goto 59.7,58.3
.' Click Kul Tiras Treasures and get Kul Tiras Treasure |tip They look like wooden chests on the ground around this area.
.kill Lieutenant Palliter |q 25173/3 |tip He's in the top room of the fort.
step
goto 58.2,55.4
.kill 6 Northwatch Sharpshooter |q 25173/2
.kill 6 Northwatch Marine |q 25173/1
.' Click Kul Tiras Treasures |tip They look like wooden chests on the ground around this area.
.get 6 Kul Tiras Treasure |q 25176/1
step
goto Durotar 51.9,43.5
.talk 3139
..turnin 25173
..accept 25177
step
goto 53.1,43.1
.talk 39423
..turnin 25176
..accept 25178
step
goto 58.0,46.2
.kill 11 Foaming Sea Elemental |q 25177/1
.' Click Gnomish Toolboxes |tip They look like small metal chests on the ground around this area.
.get 4 Gnomish Tools |q 25178/1
.talk 39270
..accept 25179
.talk 39270
.' Rescue 4 Injured Razor Hill Grunts |q 25179/1
step
goto 53.1,43.1
.talk 39423
..turnin 25178
..accept 25227
step
goto 51.9,43.5
.talk 3139
..turnin 25177
..turnin 25179
step
goto 52.2,43.2
.talk 3142
..accept 25232
step
goto 50.7,42.8
.talk 3881
..accept 6365
only Troll,Orc
step
goto 53.1,43.6
.talk 41140
..turnin 6365
..accept 6384
only Troll,Orc
step
goto Orgrimmar,53.6,78.8
.talk 6929
..turnin 6384
..accept 6385
only Troll,Orc
step
goto 49.7,59.2
.talk 3310
..turnin 6385
..accept 6386
only Troll,Orc
step
goto Durotar,50.7,42.8
.talk 3881
..turnin 6386
only Troll,Orc
step
goto 49.6,40.2
.talk 39323
..turnin 25227
..accept 25187
step
goto 49.6,40.2
.' Use Thonk's Spyglass at the top of the tower |use Thonk's Spyglass##52514 |tip You will need to use Thonk's Spyglass 4 times.
.' Find Raggaran |q 25187/1
.' Find the flooded hut |q 25187/2
.' Find Misha |q 25187/3
.' Find Zen'Taji |q 25187/4
step
goto 49.6,40.2
.talk 39323
..turnin 25187
..accept 25188
step
goto 43.4,30.6
.talk 3193
..accept 25193
step
goto 42.9,34.1
.from Dreadmaw Toothgnasher##39452
.get 250 Durotar Crocolisk Tooth |q 25193/1
step
goto 43.4,30.6
.talk 3193
..turnin 25193
.' Help Misha Tor'kren |q 25188/3
step
goto 40.6,35.0
.talk 39325
..accept 25189
.' Escort Grandmatron Tekla to Raggaran |q 25189/1
step
goto 42.7,49.9
.talk 39326
..turnin 25189
..accept 25190
.' Help Grandmatron Tekla |q 25188/1
step
goto 44.1,49.2
.kill 4 Razormane Quilboar |q 25190/1
.kill 4 Razormane Scout |q 25190/2
step
goto 42.7,49.9
.talk 39326
..turnin 25190
..accept 25192
step
goto 38.1,55.3
.kill 5 Razormane Dustrunner |q 25192/1
.kill 5 Razormane Battleguard |q 25192/2
step
goto 42.7,49.9
.talk 39326
..turnin 25192
.' Help Raggaran |q 25188/2
step
goto 35.8,41.4
.talk 39324
..accept 25194
step
goto 35.3,39.6
.' Attack Wayward Plainstriders, but don't kill them |tip You will find them spread out along the coastline.
.' Return 3 Wayward Plainstriders |q 25194/1
step
goto 35.8,41.4
.talk 39324
..turnin 25194
..accept 25195
step
goto 35.4,30.5
.kill Screamslash |q 25195/1 |tip He's a blue-ish raptor that walks around this area.
step
goto 35.8,41.4
.talk 39324
..turnin 25195
.' Help Zen'Taji |q 25188/4
step
goto Durotar 49.6,40.2
.talk 39323
..turnin 25188
step
goto 53.1,40.5 |n
.' Follow the path to the right of the canyon.  Don't walk into the canyon heading north. |goto Durotar,53.1,40.5,0.5 |noway |c
step
goto 52.8,28.9 |n
.' Enter the cave |goto Durotar,52.8,28.9,0.5 |noway |c
step
goto 53.1,27.2
.from Burning Blade Thug##3195+, Burning Blade Neophyte##3196+, Burning Blade Cultist##3199+
.get 6 Burning Blade Spellscroll |q 25232/1
step
goto 52.8,28.9 |n
.' Leave the cave |goto Durotar,52.8,28.9,0.5 |noway |c
step
goto 52.2,43.2
.talk 3142
..turnin 25232
..accept 25196
step
goto 46.4,22.9
.talk 3293
..accept 834
..accept 835
step
goto 49.3,21.7
.from Dustwind Harpy##3115+, Dustwind Pillager##3116+
.kill 12 Durotar Harpy |q 835/1
.' Click Stolen Supply Sacks |tip They look like small tan sacks on the ground around this area.
.get 5 Sack of Supplies |q 834/1
step
goto 46.4,22.9
.talk 3293
..turnin 834
..turnin 835
step
goto Durotar,45.0,14.8
.talk 39379
..turnin 25196
..accept 25260
..accept 25236
step
goto Durotar,44.9,14.8
.talk 39380
..accept 25205
step
goto Durotar,44.9,14.8
.talk 39380
..' Ask him to tell you his fable |havebuff Interface\Icons\Ability_Mount_Kodo_03 |q 25205
step
goto Durotar,53.0,13.8
.' As the wolf, run to this spot |tip If you don't see 2 kodos fighting, look around this area to find some, then go stand next to them.
.' Listen to the shaman's fable |q 25205/1
step
goto Durotar,44.9,14.8
.talk 39380
..turnin 25205
step
goto Durotar,45.0,14.8
.talk 39379
..accept 25206
step
goto Durotar,38.0,22.3
.from Teeming Waterguard##39596+, Furious Earthguard##39595+
.kill 12 Warring Elemental |q 25206/1
step
goto Durotar,39.9,24.4
.' Click Drowned Thunder Lizards |tip They are underwater, on the ground.
.' Remove 8 Drowned Thunder Lizards |q 25236/1
step
goto Durotar,42.1,26.7
.' Click Fizzle Darkclaw's corpse |tip It's floating underwater.
..' Attempt to remove the orb, then attempt to remove Fizzle's Hand
.get Fizzle's Orb |q 25260/1
step
goto Durotar,45.0,14.8
.talk 39379
..turnin 25260
..accept 25261
..turnin 25236
..turnin 25206
..accept 25648
step
goto Durotar,56.4,20.0
.talk 3208
..turnin 25261
..accept 25262
step
goto Durotar,56.3,20.2
.talk 39604
..accept 25256
step
goto Durotar,58.8,23.2
.talk 39590
..turnin 25256
..accept 25257
..accept 25258
..accept 25259
step
goto Durotar,59.0,22.2
.talk 39353
..' Challenge him to combat
..' Defeat Griswold Hanniston |q 25258/1
step
goto Durotar,59.7,22.6
.talk 39351
..' Challenge her to combat
..' Defeat Ghislania |q 25257/1
step
goto Durotar,59.4,23.5
.talk 39352
..' Challenge him to combat
..' Defeat Gaur Icehorn |q 25259/1
step
goto Durotar,58.8,23.2
.talk 39590
..turnin 25257
..turnin 25258
..turnin 25259
step
goto Durotar,55.1,10.0
.from Burning Blade Fanatic##3197+, Burning Blade Apprentice##3198+
.get 6 Searing Collar |q 25262/1
step
goto Durotar,56.4,20.0
.talk 3208
..turnin 25262
..accept 25263
step
goto Orgrimmar,47.6,71.2
.talk 35068
..accept 26642
step
goto 45.9,66.9 |n
.' The path down to Neeru Fireblade starts here |goto Orgrimmar,45.9,66.9,0.5 |noway |c
step
goto 49.9,59.2
.talk 3216
..turnin 25263
..accept 25264
step
goto Durotar,50.8,43.6
.talk 3336
..accept 840
step
goto Northern Barrens,67.7,39.4
.talk 3337
..turnin 26642
..accept 871
..turnin 840
step
goto Northern Barrens,67.4,38.7
.talk 34258
..accept 844
step
goto Northern Barrens,67.3,37.0
.from Greater Plainstrider##3244+
.get 7 Plainstrider Beak |q 844/1
.' You can find more Greater Plainstriders at [64.6,41.3]
step
goto Northern Barrens,67.4,38.7
.talk 34258
..turnin 844
step
goto Northern Barrens,67.8,40.6
.talk 3521
..turnin 25264
step
goto Northern Barrens,67.1,45.5
.talk 34284
..accept 13878
step
goto Northern Barrens,66.6,47.3
.' Click Wolf Chains |tip They look like bone spikes attach to metal chains on the ground inside the burning stable.
.' Free 3 Wolves |q 13878/1
step
goto Northern Barrens,66.8,49.8
.kill 8 Razormane Plunderer |q 871/1
.kill 3 Razormane Hunter |q 871/2
step
goto Northern Barrens,67.1,45.5
.talk 34284
..turnin 13878
step
goto Northern Barrens,67.7,39.4
.talk 3337
..turnin 871
..accept 872
step
goto Northern Barrens,67.4,38.7
.talk 34258
..accept 5041
step
goto Northern Barrens,66.0,52.5 |n
.' Enter the cave |goto Northern Barrens,66.0,52.5,0.5 |noway |c
step
goto Northern Barrens,64.3,55.0
.' Follow the path in the cave until it dead ends on a small platform.
.from Kreenig Snarlsnout##3438
.get Kreenig Snarlsnout's Tusk |q 872/3
step
goto Northern Barrens,64.7,53.2
.kill 5 Razormane Thornweaver |q 872/1
.kill 5 Razormane Defender |q 872/2
.' Click Crossroads Supply Crates |tip They look like wooden crates on the ground inside the cave.
.get 5 Crossroads Supply Crate |q 5041/1
step
goto Northern Barrens,66.0,52.5 |n
.' Leave the cave |goto Northern Barrens,66.0,52.5,0.5 |noway |c
step
goto Northern Barrens,67.7,39.4
.talk 3337
..turnin 872
step
goto Northern Barrens,67.4,38.7
.talk 34258
..turnin 5041
..accept 13949
step
goto Northern Barrens,67.4,38.7
.talk 34258
..' Tell her you're ready
.' Click the Lead Caravan Kodo that walks up to ride on it
.' Use your Shoot ability to kill the quilboars that attack the caravan as you ride the kodo |tip To kill them very easily, spam the 1 button on your hotbar and the Tab key on your keyboard together.
.' Escort the Caravan |q 13949/1
step
goto Northern Barrens,56.5,40.4
.talk 5907
..turnin 13949
step
goto Northern Barrens,54.6,41.5
.talk 34578
..accept 13975
step
goto Northern Barrens,54.6,41.5
.talk 34578
..' Tell him to bring it on
.' Click the Head Caravan Kodo that walks up to ride on it
.' Use your abilities on your hotbar on the Burning Blade mobs that attack you |tip It's easier to just manually left click them Burning Blade mobs and spam the 1 button on your hotbar to shoot them all.  Don't bother with the melee attack at all.
.' Escort the Crossroads Caravan |q 13975/1
step
goto Northern Barrens,48.7,59.6
.talk 3429
..turnin 13975
step
map Orgrimmar
'To continue gaining reputation with the Orgrimmar faction:
.' You can buy an Orgrimmar Tabard from Stoneguard Nargol in Orgrimmar at [50.0,58.5] |tip Wear the Orgrimmar Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
.'
.'
'To continue gaining reputation with the Darkspear Trolls faction:
.' You can buy a Darkspear Tabard from Champion Uru'zin in Orgrimmar at [50.0,58.5] |tip Wear the Darkspear Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide\\Home Cities Reputation\\Undercity\\Undead (1-20)",[[
description This guide will help you to get Exalted
description reputation with the Undercity faction.
description
description You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.
author support@zygorguides.com
step
'You will not be able to do some of the quests in this section if you are not an Undead.
|confirm
step
goto Tirisfal Glades,29.4,71.0
.talk 49044
..accept 24959
step
goto 30.1,71.3
.talk 1568
..turnin 24959
..accept 28608
step
goto 29.7,72.0
.' Darnell will spawn and greet you.  Lead him into the crypt.
.' Click the Thick Embalming Fluid |tip It looks like a glass ball on the wooden table with green liquid in it.
.get Thick Embalming Fluid |q 28608/1
.' Click the Corpse-Stitching Twine |tip It looks like a spool of red thread on the wooden table.
.get Corpse-Stitching Twine |q 28608/2
step
goto 30.1,71.3
.talk 1568
..turnin 28608
..accept 26799
step
goto 30.7,71.4
.talk 2307
..accept 24960
step
goto 29.4,69.6
.talk 49231
..' Tell him he died
.' Speak with Valdred Moray |q 24960/3
step
goto 30.3,69.0
.talk 38895
..' Tell her you want to speak with her
.' Speak with Lilian Voss |q 24960/1
step
goto 30.8,69.2
.talk 49230
..' I'm not here to fight
.' Speak with Marshal Redpath |q 24960/2
step
goto 30.2,69.8
.kill 6 Mindless Zombie |q 26799/1
step
goto 30.1,71.3
.talk 1568
..turnin 26799
step
goto 30.6,71.4
.talk 2307
..turnin 24960
..accept 25089
step
goto 31.6,65.6
.talk 1740
..turnin 25089
..accept 26800
step
goto 30.8,66.2
.talk 1569
..accept 26801
step
goto 32.2,62.7
.from Rattlecage Skeleton##1890+, Wretched Ghoul##1502+
.kill 8 Deathknell Scourge |q 26801/1
.' Click Scarlet Corpses |tip They look like dead humans laying on the ground around this area.
.' Gather 6 Scarlet Corpses |q 26800/1
step
goto 31.6,65.6
.talk 1740
..turnin 26800
step
goto 30.8,66.2
.talk 1569
..turnin 26801
..accept 24962 |only Scourge Hunter
..accept 3095 |only Scourge Warrior
..accept 3099 |only Scourge Warlock
..accept 3098 |only Scourge Mage
..accept 3097 |only Scourge Priest
..accept 3096 |only Scourge Rogue
step
goto 30.9,66.0
.talk 1661
..accept 24961
step
goto 32.5,65.7
.talk 2122
..turnin 3096
..accept 24967
only Scourge Rogue
step
goto 32.5,65.7
.talk 2122
.' Learn Eviscerate |q 24967/2
only Scourge Rogue
step
goto 31.4,67.0
.' Use Sinister Strike on the Target Dummies to build up combo points, then use Eviscerate on the Target Dummies
.' Practice Eviscerate 3 times |q 24967/1
only Scourge Rogue
step
goto 32.5,65.7
.talk 2122
..turnin 24967
only Scourge Rogue
step
goto 31.1,66.0
.talk 2123
..turnin 3097
..accept 24966
only Scourge Priest
step
goto 31.1,66.0
.talk 2123
.' Learn Flash Heal |q 24966/2
only Scourge Priest
step
goto 31.2,66.0
.' Cast Flash Heal on the Wounded Deathguard
.' Practice Flash Heal 5 times |q 24966/1
only Scourge Priest
step
goto 31.1,66.0
.talk 2123
..turnin 24966
only Scourge Priest
step
goto 30.9,66.1
.talk 2124
..turnin 3098
..accept 24965
only Scourge Mage
step
goto 30.9,66.1
.talk 2124
.' Learn Arcane Missiles |q 24965/2
only Scourge Mage
step
goto 31.7,66.5
.' Cast Arcane Missiles ability on the Training Dummies
.' Practice Arcane Missiles 2 times |q 24965/1
only Scourge Mage
step
goto 30.9,66.1
.talk 2124
..turnin 24965
only Scourge Mage
step
goto 30.9,66.3
.talk 2126
..turnin 3099
..accept 24968
only Scourge Warlock
step
goto 30.9,66.3
.talk 2126
.' Learn Immolate |q 24968/2
only Scourge Warlock
step
goto 31.7,66.5
.' Cast Immolate ability on the Training Dummies
.' Practice Immolate 5 times |q 24968/1
only Scourge Warlock
step
goto 30.9,66.3
.talk 2126
..turnin 24968
only Scourge Warlock
step
goto 32.7,65.6
.talk 2119
..turnin 3095
..accept 24969
only Scourge Warrior
step
goto 32.7,65.6
.talk 2119
.' Learn Charge |q 24969/2
only Scourge Warrior
step
goto 31.7,66.5
.' Use you Charge ability on a Training Dummy
.' Practice Charge 1 time |q 24969/1
only Scourge Warrior
step
goto 32.7,65.6
.talk 2119
..turnin 24969
only Scourge Warrior
step
goto 31.4,65.6
.talk 38911
..turnin 24962
..accept 24964
only Scourge Hunter
step
goto 31.4,65.6
.talk 38911
.' Learn Steady Shot |q 24964/2
only Scourge Hunter
step
goto 31.7,66.5
.' Use your Steady Shot ability on the Training Dummies
.' Practice Steady Shot 5 times |q 24964/1
only Scourge Hunter
step
goto 32.7,65.8
.talk 38910
..' Tell her she's not hideous
.' Show Lilian her reflection |q 24961/1
.' She can also be found on the upper level of the building at the same coordinate.
step
goto 30.9,66.0
.talk 1661
..turnin 24961
..accept 28672
step
goto 33.0,61.1
.talk 1570
..turnin 28672
..accept 26802
step
goto 34.0,59.3
.from Young Scavenger##1508+, Ragged Scavenger##1509+
.get 4 Scavenger Paw |q 26802/1
.from Duskbat##1512+, Mangy Duskbat##1513+
.get 4 Duskbat Wing |q 26802/2
step
goto 33.0,61.1
.talk 1570
..turnin 26802
..accept 24973
step
goto 29.7,59.0
.kill 8 Young Night Web Spider |q 24973/1
step
goto 26.8,59.4
.kill 5 Night Web Spider |q 24973/2
step
goto 33.0,61.1
.talk 1570
..turnin 24973
..accept 24970
step
goto 35.8,62.2
.talk 49425
..turnin 24970
..accept 24971
step
goto 36.4,68.8
.kill Marshal Redpath |q 24971/1
step
goto 37.7,67.3
.kill 8 Rotbrain Undead |q 24971/2
step
goto 30.8,66.2
.talk 1569
..turnin 24971
..accept 24972
step
goto 44.8,53.7
.talk 1519
..turnin 24972
..accept 24978
step
goto 44.6,53.8
.talk 1518
..accept 24975
step
goto 44.8,53.7
.talk 38925
..accept 24974
step
goto 37.3,50.5
.from Tirisfal Farmer##1934+, Tirisfal Farmhand##1935+
.kill 10 Tirisfal Farmer |q 24978/1
.' Click Tirisfal Pumpkins |tip They look like big pumpkins around this area.
.get 10 Tirisfal Pumpkin |q 24975/1
.' There will be more Pumpkins and farmers around 35.4,51.4
step
goto 36.2,44.2
.' Fight a Vile Fin murloc
.' Use your Murloc Leash on the Vile Fin murloc when it is weak |use Murloc Leash##52059 |tip You will see a message in your chat box letting you know when the Vile Fin murloc is ready to be captured.  Make sure you capture it before you kill it.
.' Capture a Vile Fin |q 24974/1
step
goto 44.8,53.7
.talk 1519
..turnin 24978
..accept 24980
step
goto 44.6,53.8
.talk 1518
..turnin 24975
..accept 24976
step
goto 44.8,53.7
.' Stand on the bed
.' Return the Vile Fine |q 24974/2 |tip The murloc has to get close to the bed in order for you to return it to Sedrick Calston.
step
goto 44.8,53.7
.talk 38925
..turnin 24974
step
goto 49.2,55.0
.' Click Marrowpetal Stalks |tip They look like red flowers underwater around this area.
.get 4 Marrowpetal |q 24976/1
step
goto 40.0,38.7
.' Click Xavren's Thorn |tip They look like tiny plants around this area.
.get 4 Xavren's Thorn |q 24976/2
step
goto 35.3,41.6
.' Click Briny Sea Cucumbers |tip They look like small yellow and pink grubs underwater around this area.
.get 8 Briny Sea Creature |q 24976/3
step
goto 32.5,47.4
.from Scarlet Warrior##1535+
.collect A Scarlet Letter##52079 |n
.' Click A Scarlet Letter in your bags |use A Scarlet Letter##52079
..accept 24979
step
goto 31.7,46.3
.talk 38999
..' Tell her you're here to rescue her
.' Find the Scarlet Prisoner |q 24979/1
step
goto 32.5,47.4
.kill 10 Scarlet Warrior |q 24980/1
step
goto 44.8,53.7
.talk 1519
..turnin 24980
..turnin 24979
step
goto 44.6,53.8
.talk 1518
..turnin 24976
..accept 24977
step
goto 44.7,52.6
.talk 1931
..turnin 24977
step
goto 44.1,53.9
.talk 10666
..accept 25038
step
goto 47.1,56.5
.' Click Gloom Weeds |tip They look like small purple plants on the ground around this area.  Gather them as you follow the road east.
.get 3 Gloom Weed |q 25038/1
.' More can be found at [46.1,60.6]
step
goto 52.5,54.8
.talk 1496
..accept 25090
..accept 24982
step
goto 52.2,56.4
.from Ravaged Corpse##1526+, Rotting Dead##1525+
.get 7 Putrid Claw |q 25090/1
step
goto 52.5,54.8
.talk 1496
..turnin 25090
step
goto 58.8,51.9
.talk 43124
.fpath Brill
step
goto 60.1,52.7
.talk 10665
..turnin 25038
..accept 24990
step
goto 60.5,51.9
.talk 1515
..accept 24981
step
goto 60.9,51.5
.talk 5688
.home Brill
step
goto 61.0,50.4
.talk 1499
..turnin 24982
..accept 24983
step
goto 58.8,60.2
.from Cursed Darkhound##1548+
.get 5 Darkhound Blood |q 24990/1
.' A Worgen will appear and give you a quest when you kill a Cursed Darkhound
..accept 24992
.' More hounds can be found around 53.9,66.7
step
goto 53.0,66.1
.kill 3 Scarlet Zealot |q 24981/1
.kill 3 Scarlet Missionary |q 24981/2
.get Urgent Scarlet Memorandum |q 24981/3
step
goto 60.5,51.9
.talk 1515
..turnin 24981
..turnin 24992
..accept 24993
step
goto 60.1,52.7
.talk 10665
..turnin 24990
..accept 24996
step
goto 60.0,52.9
.talk 2211
..turnin 24996
step
goto 59.8,53.2
.talk 10665
..accept 24991
step
goto 60.1,52.4
.talk 1745
..accept 6321
only Scourge
step
goto 58.8,51.9
.talk 43124
..turnin 6321
..accept 6323
only Scourge
step
goto Undercity,61.5,41.8
.talk 4556
..turnin 6323
..accept 6322
only Scourge
step
goto Undercity,63.3,48.5
.talk 4551
..turnin 6322
..accept 6324
only Scourge
step
goto Tirisfal Glades,60.1,52.4
.talk 1745
..turnin 6324
only Scourge
step
goto 60.3,52.0
.kill 5 Worgen Infiltrator |q 24993/1 |tip They walk stealthed around this area.  Look for little puffs of dust moving along the ground to spot them easily.
step
goto 60.5,51.9
.talk 1515
..turnin 24993
step
goto 65.5,60.3
.talk 1495
..turnin 24983
step
goto 65.2,60.4
.talk 1521
..accept 24988
step
goto 66.9,54.9
.from Greater Duskbat##1553+, Vampiric Duskbat##1554+
.get 5 Duskbat Pelt |q 24988/1
step
goto 65.2,60.4
.talk 1521
..turnin 24988
step
goto 65.5,60.2
.talk 1495
..accept 24989
step
goto 61.0,50.4
.talk 1499
..turnin 24989
step
goto 61.7,34.6
.talk 38977
..turnin 24991
..accept 24994
step
goto 61.6,34.4
.talk 38978
..accept 24997
step
goto 56.7,41.4
.kill 8 Rot Hide Graverobber |q 24997/1
.' Click Doom Weeds |tip They look like small purple plants around this area.
.get 10 Doom Weed |q 24994/1
step
goto 59.5,38.8
.from Rot Hide Mongrel##1675+, Rot Hide Gnoll##1674+
.kill 5 Rot Hide Mongrel |q 24997/2
.get 6 Embalming Ichor |q 24997/3
step
goto 61.7,34.6
.talk 38977
..turnin 24994
..accept 24995
step
goto 61.6,34.4
.talk 38978
..turnin 24997
..accept 24998
..accept 24999
step
goto 58.7,30.7
.from Maggot Eye##1753
.get Maggot Eye's Paw |q 24998/1
step
goto 59.8,27.7
.from Vile Fin Puddlejumper##1543+, Vile Fin Minor Oracle##1544+
.get 5 Vile Fin Scale |q 24995/1
.' Run next to Vile Fin Tadpoles around this area
.' Frighten 12 Vile Fin Tadpoles |q 24999/1
.' There are more to frighten around 65.1,28.7
step
goto 61.6,34.4
.talk 38978
..turnin 24998
..turnin 24999
step
goto 61.7,34.6
.talk 38977
..turnin 24995
..accept 25031
step
goto 57.4,29.3 |n
.' The path through the mountains starts here |goto Tirisfal Glades,57.4,29.3,0.5 |noway |c
step
goto 54.6,29.9
.talk 1500
..turnin 25031
..accept 25003
step
goto 52.1,29.8
.kill 8 Wailing Ancestor |q 25003/1
.kill 8 Rotting Ancestor |q 25003/2
step
goto 54.6,29.9
.talk 1500
..turnin 25003
..accept 25004
..accept 25029
step
goto 46.0,30.3
.from Thurman Agamand##1656
.get Thurman's Remains |q 25029/3
step
goto 45.6,29.6
.from Gregor Agamand##1654
.get Gregor's Remains |q 25029/2
step
goto 49.4,36.0
.from Nissa Agamand##1655
.get Nissa's Remains |q 25029/1
step
goto 48.9,34.0
.from Devlin Agamand##1657
.get Devlin's Remains |q 25029/4
step
goto 47.6,32.4
.from Cracked Skull Soldier##1523+
.get 5 Notched Rib |q 25004/1
.from Darkeye Bonecaster##1522+
.get 3 Notched Skull |q 25004/2
step
goto 54.6,29.9
.talk 1500
..turnin 25004
..turnin 25029
..accept 25005
step
goto Tirisfal Glades 61.0,50.4
.talk 1499
..turnin 25005
..accept 25006
step
goto 60.5,51.9
.talk 1515
..accept 26964
step
goto 62.0,53.0
.talk 39117
..' Tell her you are ready and follow her upstairs
.from Spirit of Devlin Agamand##38980
.' Complete the Procedure |q 25006/1
step
goto 61.0,50.4
.talk 1499
..turnin 25006
..accept 25007
step
goto Tirisfal Glades,83.6,69.9
.talk 37915
.fpath The Bulwark
step
goto Tirisfal Glades 83.3,69.2
.talk 11057
..accept 25056
step
goto 83.3,69.0
.talk 10837
..turnin 25007
..accept 25009
step
goto 83.1,72.0
.talk 46271
.home The Bulwark
step
goto 79.9,67.7
.from Plagued Bruin##39049+
.get 5 Plagued Bruin Hide |q 25056/1
.' You can find more Plagued Bruins at [76.0,70.7]
step
goto 77.5,55.1
.kill 3 Scarlet Zealot |q 25009/1
.kill 4 Scarlet Friar |q 25009/2
step
goto 83.3,69.0
.talk 10837
..turnin 25009
..accept 25010
step
goto 83.3,69.2
.talk 11057
..turnin 25056
..accept 25013
step
goto 81.5,57.8 |n
.' Pass through the mountains here |goto Tirisfal Glades,81.5,57.8,0.5 |noway |c
step
goto 84.4,52.1
.from Vicious Night Web Spider##1555+
.get 4 Vicious Night Web Spider Venom |q 25013/1
step
goto 87.5,43.3
.talk 13158
..turnin 25010
..accept 25046
step
goto 81.5,43.0 |n
.' Go to the road |goto Tirisfal Glades,81.5,43.0,0.5 |noway |c
step
goto 79.5,39.2 |n
.' The path to A Daughter's Embrace starts here |goto Tirisfal Glades,79.5,39.2,0.5 |noway |c
step
goto 79.5,25.8
.' Watch Lillian Voss kill her father in the tower
.' Accomplish Lillian's Mission |q 25046/1
step
goto Tirisfal Glades 83.3,69.2
.talk 11057
..turnin 25013
step
goto 83.3,69.0
.talk 10837
..turnin 25046
..accept 25011
step
goto 83.6,69.9
.talk 37915
..turnin 25011
..accept 25012
step
goto 83.6,69.9
.talk 37915
..' Tell him you'll take that flight to Brill now |goto Tirisfal Glades,58.9,51.9,0.5 |noway |c
step
goto 60.5,51.9
.talk 1515
..turnin 25012
step
goto Silverpine Forest,57.4,10.1
.talk 44615
..turnin 26964
..accept 26965
.' Stand by for Warchief Garrosh Hellscream's arrival |q 26965/1
step
goto 57.4,10.1
.talk 44615
..turnin 26965
..accept 26989
step
goto 57.9,8.7
.talk 44825
.fpath Forsaken High Command
step
goto 56.3,8.4
.talk 44784
..accept 26995
step
goto 56.8,9.2
.talk 44778
..accept 26992
step
goto 57.0,14.2
.kill 10 Worgen Renegade |q 26989/1
.from Ferocious Grizzled Bear##1778+, Worg##1765+
.get 6 "Clean" Beast Guts |q 26995/1
.' Click Ferocious Doomweeds |tip They look like small purple and green plants on the ground around this area.
.get 8 Ferocious Doomweed |q 26992/1
.' More can be found around 60.6,13.5
step
goto 57.4,10.1
.talk 44615
..turnin 26989
step
goto 56.3,8.4
.talk 44784
..turnin 26995
step
goto 56.8,9.2
.talk 44778
..turnin 26992
step
goto 56.3,8.4
.talk 44784
..accept 26998
step
goto 57.9,8.7
.talk 44825
..' Tell him you need to take a bat to the Dawning Isles
.' Use the Blight Concoction ability on your hotbar on the murlocs you fly over
.kill 50 Vile Fin Murloc |q 26998/2
step
goto 56.3,8.4
.talk 44784
..turnin 26998
step
goto 58.1,9.0
.talk 44789
..accept 27039
step
goto 53.9,13.0
.' Click the Abandoned Outhouse
..turnin 27039
..accept 27045
step
goto 53.3,12.6
.' Click the Armoire |tip It looks like a tall wooden cabinet upstairs in this house.
.' Learn of Darius Crowley's Plans |q 27045/1
step
goto 58.1,9.0
.talk 44789
..turnin 27045
..accept 27056
step
goto 57.4,10.2
.talk 44365
..turnin 27056
..accept 27065
step
goto 45.9,21.9
.talk 50463
.fpath Forsaken Rear Guard
step
goto 44.0,21.4
.talk 44916
..turnin 27065
..accept 27069
step
goto 44.0,21.3
.talk 44917
..accept 27073
step
goto 44.8,20.9
.talk 44912
..accept 27082
step
goto 44.4,20.3
.talk 45496
.home Forsaken Rear Guard
step
goto 47.4,20.5
.from Giant Rabid Bear##1797+, Rabid Worg##1766+
.get 8 Diseased Organ |q 27082/1
.' More Wolves and Bears can be found around 50.6,17.5
step
goto 44.8,20.9
.talk 44912
..turnin 27082
..accept 27088
step
goto 47.0,25.3
.' Use your Mutant Bush Chicken Cage on a Forrest Ettin |use Mutant Bush Chicken Cage##60808 |tip They are two-headed giants that walk around this area.
.kill Forest Ettin |q 27088/1
step
goto 44.8,20.9
.talk 44912
..turnin 27088
step
goto 44.0,21.4
.talk 44916
.' Tell her that you seem to have misplaced your Sea Pup |havebuff Interface\Icons\Achievement_Character_Orc_Male |q 27069
step
goto 40.0,26.9
.kill 10 Bloodfang Scavenger |q 27073/1
.' Click Sea Dog Crates |tip They look like wooden boxes with red symbols on them around this area.
.' Recover 5 Sea Dog Crates |q 27069/1
step
goto 44.0,21.4
.talk 44916
..turnin 27069
step
goto 44.0,21.3
.talk 44917
..turnin 27073
..accept 27095
step
goto 44.0,21.4
.talk 44916
..accept 27093
step
goto 38.5,16.0
.from Skitterweb Striker##1780+, Skitterweb Lurker##1781+
.kill 12 Skitterweb Spider |q 27095/1
.from Webbed Victim##44941a+ |tip They look like squirming white cocoons around this area.
.' Rescue 6 Orc Sea Dogs |q 27093/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27095
..accept 27094
step
goto 35.6,13.5 |n
.' Enter the mine |goto Silverpine Forest,35.6,13.5,0.5 |noway |c
step
goto 36.0,8.8
.' Follow the path to the back of the mine
.kill Skitterweb Matriarch |q 27094/1 |tip She's hanging upside down on the ceiling.
step
goto 44.0,21.3
.talk 44917
..turnin 27094
step
goto 44.0,21.4
.talk 44916
..turnin 27093
..accept 27096
step
goto 57.4,10.2
.talk 44365
..turnin 27096
..accept 27097
step
goto 64.8,22.3
.from Hillsbrad Refugee##44954+
.' Raise 15 Forsaken |q 27097/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27097
..accept 27099
step
goto 65.7,24.5
.' Go to the top room of the fortress
.' Find the Human Leaders |q 27099/1
step
goto 57.4,10.2
.talk 44365
..turnin 27099
..accept 27098
.' Accompany Lady Sylvanas Windrunner to the Sepulcher |q 27098/1
step
goto 44.9,41.6
.talk 44365
..turnin 27098
..accept 27180
step
goto 45.4,42.5
.talk 2226
.fpath The Sepulcher
step
goto 45.8,41.9
.talk 44917
..accept 27226
step
goto 45.8,42.0
.talk 44916
..accept 27231
step
goto 46.4,42.7
.talk 6739
.home The Sepulcher
step
goto 52.0,33.6
.kill 10 Hillsbrad Worgen |q 27231/1
.' Use your Barrel of Explosive Ale on Orc Sea Dogs |use Barrel of Explosive Ale##60870 |tip They looks like dead orcs on the ground around this area.
.' Rouse 8 Orc Sea Dogs |q 27226/1
step
goto 59.2,34.2
.' Click the Horde Communication Panel |tip It looks like a metal box with handles on it on the wooden dock.
..turnin 27231
..accept 27232
step
goto 59.9,34.1
.' Click a Horde Cannon |tip They look like silver metal cannons at the end of the wooden dock.
.' Use your Rocket Blast ability on your hotbar on the worgens swimming in the water
.kill 50 Hillsbrad Worgen |q 27232/1
step
goto 45.8,42.0
.talk 44916
..turnin 27232
step
goto 45.8,41.9
.talk 44917
..turnin 27226
step
goto 47.4,46.6
.from Bloodfang Stalker##45195
..accept 27181
step
goto 46.9,49.7
.kill 10 Bloodfang Stalker |q 27181/1
.' Click Veteran Forsaken Troopers |tip They look like dead undeads on the ground around this area.
.get 6 Forsaken Insignia |q 27180/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27181
..accept 27193
step
goto 45.9,54.4
.from Caretaker Smithers##45219 |tip He's inside the barn, up on the ledge to your left as you enter the barn.
.get Smithers' Logbook |q 27193/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27193
..accept 27194
step
goto 55.9,46.4
.talk 45228
..turnin 27194
..accept 27195
.' Escort Master Forteski through the Deep Elem Mine |q 27195/1
step
goto Silverpine Forest 44.9,41.6
.talk 44365
..turnin 27180
..turnin 27195
..accept 27290
step
goto Ruins of Gilneas,57.5,18.9
.talk 45312
..turnin 27290
..accept 27342
step
goto 57.5,18.2
.talk 45315
..accept 27333
..accept 27345
step
goto 57.3,17.7
.talk 45479
.fpath Forsaken Forward Command
step
goto 45.8,22.0
.' Click the Forsaken Communication Device |tip It's a metal machine with levers on it sitting on the ground.
.get Forsaken Communication Device |q 27345/1
step
goto 53.4,19.3
.kill 12 Worgen Rebel |q 27333/1
step
goto 57.5,18.2
.talk 45315
..turnin 27333
..turnin 27345
step
goto 58.3,22.2 |n
.' Cross the road here |goto Ruins of Gilneas,58.3,22.2,0.5 |noway |c
step
goto 64.0,24.7
.' Click Wolfsbane |tip They looks like small bushy plants with tiny purple flowers on them on the ground around this area.
.get 6 Wolfsbane |q 27342/1
step
goto 59.2,21.8 |n
.' Cross the road here |goto Ruins of Gilneas,59.2,21.8,0.5 |noway |c
step
goto 57.5,18.9
.talk 45312
..turnin 27342
step
goto 57.5,18.2
.talk 45315
..accept 27349
step
goto 52.0,32.1
.' Go to this spot, but stay off the main road
.' Investigate Dreadwatch Outpost |q 27349/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27349
..accept 27350
step
goto 65.6,34.1
.talk 45389
..turnin 27350
..accept 27360
..accept 27364
step
goto 58.9,47.5
.from Master Sergeant Pietro Zaren##45405
.get Orders from High Command |q 27364/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27364
..accept 27401
step
goto 54.9,44.3
.' Click the 7th Legion Telescope |tip It's a huge golden telescope.
.' Use the 7t Legion Telescope to Scout the Harbor |q 27401/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27401
..accept 27405
step
goto 56.7,44.0
.kill 10 7th Legion Submariner |q 27360/1
step
goto 65.6,34.1
.talk 45389
..turnin 27360
step
goto 73.0,30.1
.talk 45312
..turnin 27405
..accept 27406
step
goto 73.4,31.2
.' Go to this spot
..accept 27423
step
goto 75.4,63.1
.'Walk south and southeast along the road:
.from Bloodfang Scout##45481+, Gilnean Warhound##45499+, Worgen Battlemage##45483+
.kill 20 Worgen Combatant |q 27423/1
step
'Next to you:
.talk 45474
..turnin 27423
step
goto 81.8,64.8 |n
.' The path down to Lord Godfrey starts here |goto Ruins of Gilneas,81.8,64.8,0.5 |noway |c
step
goto 79.7,75.7
.' Click Lord Godfrey |tip He is laying dead on the beach.
.' Find Lord Vincent Godfrey's Corpse |q 27406/1
step
'Next to you:
.talk 45474
..turnin 27406
step
goto 79.7,75.7
.talk 45312
..accept 27438
.' Escape the Ruins of Gilneas |q 27438/1
step
goto Silverpine Forest,51.8,66.1
.talk 45525
..turnin 27438
..accept 27472
.' Watch Lord Godfrey be Reborn |q 27472/1
step
goto 51.9,65.0
.talk 45617
..turnin 27472
..accept 27474
step
goto 51.9,64.7
.talk 45626
..accept 27475
step
goto 50.9,63.6
.talk 46552
.fpath The Forsaken Front
step
goto 63.5,64.2
.' Click the Ambermill Codex |tip It's a small book floating above the podium inside the town hall building.
.get Ambermill Codex |q 27474/1
step
goto 59.1,64.3
.from Elemental Servitor##45711+
.get 6 Servitor Core |q 27475/1
step
goto 51.9,64.7
.talk 45626
..turnin 27475
step
goto 51.9,65.0
.talk 45617
..turnin 27474
..accept 27476
step
goto Silverpine Forest 47.1,43.2
.talk 1938
..turnin 27476
..accept 27478
..accept 27483
step
goto 47.3,43.4
.' Click the Portal to Dalaran Crater |tip It's a swirling purple portal.
.' Go to the Dalaran Crater |goto Hillsbrad Foothills |noway |c
step
goto Hillsbrad Foothills,29.9,37.6
.from Arcane Remnant##45728+
.collect Arcane Remnant##61310 |n
.' Click the Arcane Remnant in your bags |use Arcane Remnant##61310
..accept 27480
step
goto 32.3,44.4
.' Follow the purple path up and out of the crater
.from Relios the Relic Keeper##45734 |tip He walks around the crumbled town, so you may need to search for him.
.get Dalaran Archmage's Signet Ring |q 27478/1
step
goto 31.6,43.2
.from Dalaran Summoner##2358+, Dalaran Worker##2628+
.kill 12 Dalaran Human |q 27483/1
step
goto 30.8,40.9
.from Arcane Remnant##45728+
.get 8 Arcane Remnant |q 27480/1
step
goto 30.3,36.6
.' Click the Portal to the Sepulcher |tip It's a swirling purple portal in the big crater.
.' Go to the Sepulcher |goto Silverpine Forest |noway |c
step
goto Silverpine Forest,47.1,43.2
.talk 1938
..turnin 27478
..accept 27484
..turnin 27483
..turnin 27480
step
goto 51.9,65.0
.talk 45617
..turnin 27484
..accept 27512
step
goto 51.7,67.2
.talk 45631
..accept 27510
step
goto 56.1,76.7
.kill 10 Inconspicuous Bear |q 27510/1
.' There are more Inconspicuous Bears around 55.3,70.6
step
goto 60.4,74.7 |n
.' The path up to the Ambermill Dimensional Portal starts here |goto Silverpine Forest,60.4,74.7,0.5 |noway |c
step
goto 58.1,69.9
.' Click the Ambermill Dimensional Portal |tip It's a green portal in the very back of the cave you come to.
..turnin 27512
..accept 27513
step
goto 58.1,69.9
.' Click the Ambermill Dimensional Portal |tip It's a green portal in the very back of the cave you come to.
..' <Use the Ambermill Dimensional Portal.>
.' Enter the Transdimensional Shift |havebuff INTERFACE\ICONS\spell_arcane_rune |q 27513
step
goto 62.5,64.1
.' All around the Ambermill town:
.from Ambermill Watcher##1888+, Ambermill Magister##1914+, Ambermill Warder##1913+, Ambermill Miner##3578+, Ambermill Brewmaster##3577+, Ambermill Witchalok##1889+
.kill 20 Ambermill Mage |q 27513/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27513
..accept 27518
step
goto 56.6,64.4
.from Archmage Ataeric##2120 |tip He will send minions at you.  Kill the minions while they are close to Archmage Ataeric to release their energy on him.
.' Destroy the Transdimensional Shield |q 27518/1
step
goto 51.9,65.0
.talk 45617
..turnin 27518
..accept 27542 |instant
step
'Next to you:
.talk 45880
..accept 27547
step
'Next to you:
.talk 45879
..accept 27548
step
'Next to you:
.talk 45878
..accept 27550
step
goto 51.7,67.2
.talk 45631
..turnin 27510
step
goto 46.6,72.7
.' Use your Bundle of Torches in this spot |use Bundle of Torches##61374
.' Torch the Pyrewood Chapel |q 27550/2
step
goto 45.2,72.0
.' Use your Bundle of Torches in this spot |use Bundle of Torches##61374
.' Torch the Pyrewood Inn |q 27550/1
step
goto 44.2,73.2
.' Use your Bundle of Torches in this spot |use Bundle of Torches##61374
.' Torch the Pyrewood Town Hall |q 27550/3
step
'Next to you:
.talk 45878
..turnin 27550
step
goto 45.0,73.5
.' All around Pyrewood Village:
.kill 12 7th Legion Scout |q 27548/1
.talk 45910 |tip They look like Horde mobs standing in place shaking around this area.
.' Rescue 8 Cowering Trooper |q 27547/1
step
'Next to you:
.talk 45880
..turnin 27547
step
'Next to you:
.talk 45879
..turnin 27548
..accept 27577
step
'Next to you:
.talk 45878
..accept 27580
step
goto 42.4,79.2
.kill General Marstone |q 27580/1
step
'Next to you:
.talk 45878
..turnin 27580
step
goto 42.9,81.0
.from Dwarven Infantry##45855+
.get 7th Legion Battle Plan |q 27577/1
step
'Next to you:
.talk 45879
..turnin 27577
step
'Next to you:
.talk 45878
..accept 27594
step
goto 50.3,88.3
.from Commander Lorna Crowley##45997
.' Capture Commander Lorna Crowley |q 27594/1
step
goto 51.9,65.0
.talk 45617
..turnin 27594
..accept 27601
step
'Follow Lady Sylvanas Windrunner through the battle
.' Defeat the Alliance!
.' Fight Lord Walden, Baron Ashbury, and Lord Godfrey until they retreat
.' Attain Victory: Final and Absolute |q 27601/1
step
goto 45.3,84.5
.talk 46124
..turnin 27601
..accept 27746
step
map Undercity
'To continue gaining reputation with the Undercity faction:
.' You can buy an Undercity Tabard from Captain Donald Adams in Undercity at [63.5,48.8]  |tip Wear the Undercity Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide\\Home Cities Reputation\\Thunder Bluff\\Tauren (1-13)",[[
description This guide will help you to get Exalted
description reputation with the Thunder Bluff faction.
description
description You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.
author support@zygorguides.com
step
'You will not be able to do some of the quests in this section if you are not a Tauren.
|confirm
step
goto Mulgore,45.1,75.5
.talk 2981
..accept 14449
step
goto 48.9,78.4
.talk 2980
..turnin 14449
..accept 14452
step
goto 51.7,79.9
.from Bristleback Invader##36943+
.kill 8 Bristleback Quilboar |q 14452/1
step
goto 48.9,78.4
.talk 2980
..turnin 14452
..accept 24852
step
goto 52.0,77.2
.' Click Quilboar Cages |tip They look like yellow cages around this area.
.' Free 4 Braves |q 24852/1
step
goto 49.0,78.4
.talk 2980
..turnin 24852
..accept 14458
step
goto 46.2,82.7
.talk 36694
..turnin 14458
..accept 14456
..accept 14455
step
goto 47.8,88.3
.kill 7 Bristleback Thorncaller |q 14455/1
.from Bristleback Gun Thief##36708+
.get 7 Stolen Rifle |q 14456/1
step
goto 46.2,82.7
.talk 36694
..turnin 14456
..turnin 14455
..accept 14459
..accept 14461
step
goto 46.2,82.3
.talk 44927
..accept 3092 |only Tauren Hunter
..accept 3091 |only Tauren Warrior
..accept 3094 |only Tauren Druid
..accept 3093 |only Tauren Shaman
..accept 27014 |only Tauren Priest
..accept 27015 |only Tauren Paladin
step
goto 44.7,87.8
.' Use Adana's Torch next to the tub of meat |use Adana's Torch##49539 |tip It looks like a wooden tub of pink meat.
.' Burn the First Trough |q 14461/1
step
goto 44.3,88.7
.' Use Adana's Torch next to the tub of meat |use Adana's Torch##49539 |tip It looks like a wooden tub of pink meat.
.' Burn the Second Trough |q 14461/2
step
goto 45.3,89.1
.' Use Adana's Torch next to the tub of meat |use Adana's Torch##49539 |tip It looks like a wooden tub of pink meat.
.' Burn the Third Trough |q 14461/3
.kill 10 Armored Battleboar |q 14459/1
step
goto 46.2,82.7
.talk 36694
..turnin 14459
..turnin 14461
..accept 14460
step
goto 41.1,81.4
.from Chief Squealer Thornmantle##36712
.get Mane of Thornmantle |q 14460/1
step
goto 45.1,75.5
.talk 2981
..turnin 14460
..accept 24861
step
goto 45.1,75.3
.' Use your Water Pitcher under the wooden burial stand |use Water Pitcher##50465
.' Place the Offering |q 24861/1
step
goto 45.1,75.5
.talk 2981
..turnin 24861
..accept 23733
step
goto 45.0,75.3
.talk 37737
..turnin 27015
..accept 27023
only Tauren Paladin
step
goto 45.0,75.3
.talk 37737
.' Learn Judgement |q 27023/1
only Tauren Paladin
step
goto 45.6,75.3
.' Use your Seal of Righteousness ability, then use your Judgement ability on the Training Dummy
.' Practice Judgement 1 time |q 27023/2
only Tauren Paladin
step
goto 45.0,75.3
.talk 37737
..turnin 27023
only Tauren Paladin
step
goto 45.0,75.2
.talk 37724
..turnin 27014
..accept 27066
only Tauren Priest
step
goto 45.0,75.2
.talk 37724
.' Learn Flash Heal |q 27066/2
only Tauren Priest
step
goto 45.6,75.3
.' Use your Flash Heal ability on the Wounded Brave
.' Practice Flash Heal 5 times |q 27066/1
only Tauren Priest
step
goto 45.0,75.2
.talk 37724
..turnin 27066
only Tauren Priest
step
goto 45.1,75.1
.talk 3062
..turnin 3093
..accept 27027
only Tauren Shaman
step
goto 45.1,75.1
.talk 3062
.' Learn Primal Strike |q 27027/2
only Tauren Shaman
step
goto 45.2,74.1
.' Use your Primal Strike ability on a Training Dummy
.' Practice Primal Strike 3 times |q 27027/1
only Tauren Shaman
step
goto 45.1,75.1
.talk 3062
..turnin 27027
only Tauren Shaman
step
goto 45.2,75.1
.talk 3060
..turnin 3094
..accept 27067
only Tauren Druid
step
goto 45.2,75.1
.talk 3060
.' Learn Healing Touch |q 27067/2
only Tauren Druid
step
goto 45.6,75.3
.' Use your Healing Touch ability on the Wounded Brave
.' Practice Healing Touch 5 times |q 27067/1
only Tauren Druid
step
goto 45.2,75.1
.talk 3060
..turnin 27067
only Tauren Druid
step
goto 45.0,75.5
.talk 3059
..turnin 3091
..accept 27020
only Tauren Warrior
step
goto 45.0,75.5
.talk 3059
.' Learn Charge |q 27020/2
only Tauren Warrior
step
goto 44.9,74.3
.' Use your Charge ability on a Training Dummy
.' Practice Charge 1 time |q 27020/1
only Tauren Warrior
step
goto 45.0,75.5
.talk 3059
..turnin 27020
only Tauren Warrior
step
goto 45.3,75.3
.talk 3061
..turnin 3092
..accept 27021
only Tauren Hunter
step
goto 45.3,75.3
.talk 3061
.' Learn Steady Shot |q 27021/2
only Tauren Hunter
step
goto 45.5,75.5
.' Use your Steady Shot ability on a Training Dummy
.' Practice Steady Shot 5 Times |q 27021/1
only Tauren Hunter
step
goto 45.3,75.3
.talk 3061
..turnin 27021
only Tauren Hunter
step
goto 42.5,77.3 |n
.' The path up to Dyami Windsoar starts here |goto Mulgore,42.5,77.3,0.5 |noway |c
step
goto 41.2,76.1
.talk 36803
..turnin 23733
..accept 24215
step
'Use your Water of Vision in your bags |use Water of Vision##49652
.' You will fly to Bloodhoof Village |goto Mulgore,47.8,59.9,0.5 |noway |c |q 24215
step
goto 47.7,59.6
.talk 36644
..turnin 24215
..accept 14438
step
goto 48.6,59.8
.talk 2948
..accept 20440
only Tauren
step
goto 48.8,58.8
.talk 2947
..accept 761
step
goto 47.4,58.6
.talk 40809
.fpath Bloodhoof Village
step
goto 46.8,60.4
.talk 6747
.home Bloodhoof Village
step
goto 48.3,53.1
.talk 23618
..accept 11129
step
goto 55.3,63.1
.from Adult Plainstrider##2956+
.get 4 Plainstrider Talon |q 20440/2 |only Tauren
.collect 1 Tender Strider Meat##33009 |q 11129
.from Swoop##2970+
.get 8 Trophy Swoop Quill |q 761/1
.from Prairie Wolf##2958+ |only Tauren
.get 6 Prairie Wolf Paw |q 20440/1 |only Tauren
step
goto 53.0,71.0
.from Palemane Skinner##2950+, Palemane Poacher##2951+, Palemane Tanner##2949+
.kill 15 Palemane Gnoll |q 14438/1
step
goto 47.7,59.6
.talk 36644
..turnin 14438
..accept 14491
..accept 24459
step
goto 47.5,61.3
.talk 2985
..accept 743
step
goto 48.6,59.8
.talk 2948
..turnin 20440
..accept 24440
only Tauren
step
goto 48.8,58.8
.talk 2947
..turnin 761
step
goto 47.2,56.7
.talk 3055
..accept 26188
step
goto 48.6,61.4
.' Use Tender Strider Meat on Kyle the Frenzied when Kyle is running nearby |use Tender Strider Meat##33009 |tip Kyle the Frenzied is a white wolf that runs around Bloodhoof Village, so you may need to search for him.
.' Feed Kyle |q 11129/1
step
goto 53.4,65.3
.' Use your Winterhoof Cleansing Totem next to the well |use Winterhoof Cleansing Totem##5411
.' Cleanse the Well |q 24440/1
only Tauren
step
goto 57.1,60.4
.talk 2988
..turnin 24459
..accept 749
step
goto 62.7,69.0
.from Windfury Wind Witch##2963+, Windfury Harpy##2962+
.get 8 Windfury Talon |q 743/1
step
goto Mulgore 47.5,61.3
.talk 2985
..turnin 743
step
goto 48.6,59.8
.talk 2948
..turnin 24440
..accept 24441
only Tauren
step
goto 48.3,53.1
.talk 23618
..turnin 11129
step
goto 53.5,48.3
.' Click the Sealed Supply Crate |tip It's a crate sitting on the ground next to a bonfire.
..turnin 749
..accept 751
step
goto 55.2,48.2
.from Prairie Stalker##2959+
.get 6 Stalker Claws |q 24441/1
.from Flatland Cougar##3035+
.get Flatland Cougar Femur |q 26188/1
.get 6 Cougar Claws |q 24441/2
.' You can find more around [57.1,44.9]
step
goto 57.1,60.4
.talk 2988
..turnin 751
..accept 26179
..accept 26180
step
goto 60.8,47.4 |n
.' The entrance to the mine starts here |goto Mulgore,60.8,47.4,0.5 |noway |c
step
goto 61.1,46.5
.from Supervisor Fizsprocket##3051
.get Fizsprocket's Clipboard |q 26180/1
step
goto 60.8,47.4 |n
.' Leave the mine |goto Mulgore,60.8,47.4,0.5 |noway |c
step
goto 59.5,50.0
.kill 7 Venture Co. Worker |q 26179/1
step
goto 57.1,60.4
.talk 2988
..turnin 26179
..turnin 26180
step
goto 48.6,59.8
.talk 2948
..turnin 24441
..accept 24456
only Tauren
step
goto 46.1,58.2
.talk 3079
..accept 6361
only Tauren
step
goto 47.4,58.6
.talk 40809
..turnin 6361
..accept 6362
only Tauren
step
goto Thunder Bluff,45.8,55.9
.talk 8359
..turnin 6362
..accept 6363
only Tauren
step
goto 47.0,49.8
.talk 2995
..turnin 6363
..accept 6364
only Tauren
step
goto Mulgore,46.1,58.2
.talk 3079
..turnin 6364
only Tauren
step
goto 47.2,56.7
.talk 3055
..turnin 26188
step
goto 44.8,45.7
.' Use your Thunderhorn Cleansing Totem next to the well |use Thunderhorn Cleansing Totem##5415
.' Clean the Well |q 24456/1
only Tauren
step
goto 33.5,48.9
.' Use your Drum of Soothed Earth on Agitated Earth Spirits |use Drum of Soothed Earth##49647 |tip They look like rock elementals.
.' Calm 6 Spirits |q 14491/1
step
goto Mulgore 47.7,59.6
.talk 36644
..turnin 14491
step
goto 48.6,59.8
.talk 2948
..turnin 24456
..accept 24457
only Tauren
step
goto 47.9,57.1
.talk 3054
..turnin 24457
..accept 20441
only Tauren
step
goto 47.9,57.1
.' Use your Water of Vision next to the bonfire |use Water of Vision##49651
.' You will run to Camp Sungraze |goto Mulgore,49.4,17.5,0.5 |noway |c |q 20441
only Tauren
step
goto 49.4,17.3
.talk 37024
..turnin 20441
..accept 24523
only Tauren
step
goto 49.5,17.1
.talk 3233
..accept 773
..accept 833
step
goto 49.7,17.2
.talk 3052
..accept 861
step
goto 49.6,17.6
.talk 2987
..accept 744
step
goto 50.1,19.8
.from Prairie Wolf Alpha##2960+
.get 4 Prairie Alpha Tooth |q 24523/1
.from Flatland Prowler##3566+
.get 4 Flatland Prowler Claw |q 861/1
only Tauren
step
goto 54.9,19.8
.from Windfury Matriarch##2965+
.get 6 Bronze Feather |q 744/2
.from Windfury Sorceress##2964+
.get 6 Azure Feather |q 744/1
step
goto 60.8,22.7
.talk 2994
..turnin 773
step
goto 60.9,23.8
.kill 8 Bristleback Interloper |q 833/1
step
goto 49.4,17.3
.talk 37024
..turnin 24523
..accept 24524
only Tauren
step
goto 49.5,17.1
.talk 3233
..turnin 833
step
goto 49.7,17.2
.talk 3052
..turnin 861
step
goto Mulgore,49.6,17.6
.talk 2987
..turnin 744
step
goto 43.3,16.1
.' Use your Wildmane Cleansing Totem next to the well |use Wildmane Cleansing Totem##5416
.' Cleanse the Wildmane Well |q 24524/1
only Tauren
step
goto 49.4,17.3
.talk 37024
..turnin 24524
..accept 24550
only Tauren
step
goto Thunder Bluff,60.3,51.7
.talk 2993
..turnin 24550
..accept 24540
step
goto 54.3,26.9 |n
.' Ride the elevator down and go outside to Mulgore |goto Mulgore |noway |c
step
goto Mulgore,37.0,12.0
.kill Orno Grimtotem |q 24540/1 |tip Don't worry that he's elite, Baine Bloodhoof will come and kill Orno Grimtotem for you.
step
goto Thunder Bluff,60.3,51.7
.talk 2993
..turnin 24540
..accept 26397
step
goto 47.0,49.8
.talk 2995
..' Tell him to send you to Orgrimmar |goto Orgrimmar |noway |c
step
goto Orgrimmar,49.7,59.2
.talk 3310
.fpath Orgrimmar
step
goto Orgrimmar 48.1,70.5
.talk 25237
..turnin 26397
step
goto 47.6,71.2
.talk 35068
..accept 26642
step
goto Durotar,53.1,43.6
.talk 41140
.fpath Razor Hill
step
goto Durotar 50.8,43.6
.talk 3336
..accept 840
step
goto Northern Barrens,67.7,39.4
.talk 3337
..turnin 26642
..accept 871
..turnin 840
step
goto 67.4,38.7
.talk 34258
..accept 844
step
goto 67.8,30.3
.from Greater Plainstrider##3244+
.get 7 Plainstrider Beak |q 844/1
.' You can find more Greater Plainstriders at [64.6,41.3]
step
goto 67.4,38.7
.talk 34258
..turnin 844
step
goto 67.1,45.5
.talk 34284
..accept 13878
step
goto 66.6,47.3
.' Click Wolf Chains |tip They look like bone spikes attach to metal chains on the ground inside the burning stable.
.' Free 3 Wolves |q 13878/1
step
goto 66.8,49.8
.kill 8 Razormane Plunderer |q 871/1
.kill 3 Razormane Hunter |q 871/2
step
goto 67.1,45.5
.talk 34284
..turnin 13878
step
goto 67.7,39.4
.talk 3337
..turnin 871
..accept 872
step
goto 67.4,38.7
.talk 34258
..accept 5041
step
goto 66.0,52.5 |n
.' Enter the cave |goto Northern Barrens,66.0,52.5,0.5 |noway |c
step
goto 64.3,55.0
.' Follow the path in the cave until it dead ends on a small platform.
.from Kreenig Snarlsnout##3438
.get Kreenig Snarlsnout's Tusk |q 872/3
step
goto 64.7,53.2
.kill 5 Razormane Thornweaver |q 872/1
.kill 5 Razormane Defender |q 872/2
.' Click Crossroads Supply Crates |tip They look like wooden crates on the ground inside the cave.
.get 5 Crossroads Supply Crate |q 5041/1
step
goto 66.0,52.5 |n
.' Leave the cave |goto Northern Barrens,66.0,52.5,0.5 |noway |c
step
goto 67.7,39.4
.talk 3337
..turnin 872
step
goto 67.4,38.7
.talk 34258
..turnin 5041
..accept 13949
step
goto 67.4,38.7
.talk 34258
..' Tell her you're ready
.' Click the Lead Caravan Kodo that walks up to ride on it
.' Use your Shoot ability to kill the quilboars that attack the caravan as you ride the kodo |tip The to kill them very easily, spam the 1 button on your hotbar and press the Tab key on your keyboard to highlight them 1 at a time.
.' Escort the Caravan |q 13949/1
step
goto 56.4,40.3
.talk 5907
..turnin 13949
step
goto 54.6,41.5
.talk 34578
..accept 13975
step
goto 48.7,58.7
.talk 3615
.fpath The Crossroads
step
goto 49.5,59.5
.talk 34578
..' Tell him to bring it on
.' Click the Head Caravan Kodo that walks up to ride on it
.' Use your abilities on your hotbar on the Burning Blade mobs that attack you |tip It's easier to just manually left click them Burning Blade mobs and spam the 1 button on your hotbar to shoot them all.  Don't bother with the melee attack at all.
.' Escort the Crossroads Caravan |q 13975/1
step
goto 50.0,59.8
.talk 3338
..accept 845
..accept 903
step
goto 49.6,57.9
.talk 3934
.home The Crossroads
step
goto 49.5,58.7
.talk 3448
..accept 870
step
goto 48.7,59.6
.talk 3429
..turnin 13975
step
goto 48.6,58.3
.talk 3390
..accept 848
step
goto 43.2,51.6
.from Savannah Huntress##3415+
.get 5 Huntress Claws |q 903/1
.from Zhevra Runner##3242+
.get 4 Zhevra Hooves |q 845/1
step
goto 38.1,46.3
.talk 34841
..accept 850
step
goto 37.5,45.9
.talk 34613
..accept 13992
step
goto 37.3,44.9
.' Swim underwater to this bubbling fissure
.' Explore the water of the Forgotten Pools |q 870/1
step
goto 33.4,46.6
.from Barak Kodobane##3394
.get Kodobane's Head |q 850/1
step
goto 36.7,44.5
.from Kolkar Stormer##3273+, Kolkar Wrangler##3272+
.kill 8 Kolkar Centaur |q 13992/1
.' Click Laden Mushrooms |tip They look like big blue mushrooms around this area.
.get 5 Fungal Spores |q 848/1
step
goto 37.5,45.9
.talk 34613
..turnin 13992
step
goto 38.1,46.3
.talk 34841
..turnin 850
step
goto Northern Barrens 49.5,58.7
.talk 3448
..turnin 870
step
goto 50.0,59.8
.talk 3338
..turnin 845
..turnin 903
step
goto 48.6,58.3
.talk 3390
..turnin 848
step
map Thunder Bluff
'To continue gaining reputation with the Thunder Bluff faction:
.' You can buy a Thunder Bluff Tabard from Brave Tuho in Thunder Bluff at [46.7,49.9]  |tip Wear the Thunder Bluff Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide\\Home Cities Reputation\\Silvermoon City\\Blood Elf (1-20)",[[
description This guide will help you to get Exalted
description reputation with the Silvermoon City faction.
description
description You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.
author support@zygorguides.com
step
'You will not be able to do some of the quests in this section if you are not a Blood Elf.
|confirm
step
goto Eversong Woods,38.0,21.0
.talk 15278
..accept 8325
step
goto 36.2,20.5
.kill 8 Mana Wyrm |q 8325/1
step
goto 38.0,21.0
.talk 15278
..turnin 8325
..accept 8326
step
goto 39.0,20.3
.talk 15295
..accept 8330
..accept 8345
step
goto 38.3,19.1
.talk 15296
..accept 8336
only BloodElf
step
goto 37.2,18.9
.talk 15297
..accept 8346
only BloodElf
step
goto 36.3,20.1
.' Use your Arcane Torrent ability on a Mana Wyrm |cast Arcane Torrent
.' Unleash the Arcane Torrent |q 8346/1
step
goto 35.3,22.1
.from Springpaw Lynx##15372+, Springpaw Cub##15366+
.get 8 Lynx Collar |q 8326/1
step
goto 31.3,22.7
.' Click the Scroll of Scourge Magic |tip It looks like a scroll laying flat on the ground.
.get Scroll of Scourge Magic##20471 |q 8330/2
.from Feral Tender##15294+
.get 6 Arcane Sliver |q 8336/1
step
goto 29.6,19.4
.' Click the Shrine of Dath'Remar |tip It looks like a square metal plaque on the wall.
.' Read the Shrine of Dath'Remar |q 8345/1
step
goto 35.1,28.9
.' Click Solanian's Scrying Orb |tip It looks like a red orb sitting on a golden rod stand.
.get Solanian's Scrying Orb##20470 |q 8330/1
step
goto 37.7,24.9
.' Click Solanian's Journal |tip It looks like a book laying on the ground.
.get Solanian's Journal##20472 |q 8330/3
step
goto 38.0,21.0
.talk 15278
..turnin 8326
..accept 8327
..accept 9393 |only BloodElf Hunter
..accept 8329 |only BloodElf Warrior
..accept 9676 |only BloodElf Paladin
..accept 8563 |only BloodElf Warlock
..accept 8328 |only BloodElf Mage
..accept 8564 |only BloodElf Priest
..accept 9392 |only BloodElf Rogue
step
goto 38.9,20.0
.talk 15285
..turnin 9392
only BloodElf Rogue
step
goto 39.4,20.4
.talk 15284
..turnin 8564
only BloodElf Priest
step
goto 39.2,21.5
.talk 15279
..turnin 8328
only BloodElf Mage
step
goto 38.9,21.4
.talk 15283
..turnin 8563
only BloodElf Warlock
step
goto 39.5,20.6
.talk 15280
..turnin 9676
only BloodElf Paladin
step
goto 39.3,20.1
.talk 43010
..turnin 8329
only BloodElf Warrior
step
goto 39.0,20.0
.talk 15513
..turnin 9393
only BloodElf Hunter
step
goto 39.0,20.3
.talk 15295
..turnin 8330
..turnin 8345
step
goto 38.3,19.1
.talk 15296
..turnin 8336
only BloodElf
step
goto 37.2,18.9
.talk 15297
..turnin 8346
only BloodElf
step
goto 35.4,22.5
.talk 15281
..turnin 8327
..accept 8334
step
goto 34.7,27.3
.kill 7 Tender |q 8334/1
.kill 7 Feral Tender |q 8334/2
step
goto 35.4,22.5
.talk 15281
..turnin 8334
..accept 8335
step
goto 32.2,25.9
.kill 8 Arcane Wraith |q 8335/1
.kill 2 Tainted Arcane Wraith |q 8335/2
.from Tainted Arcane Wraith##15298+
.collect Tainted Arcane Sliver##20483 |n
.' Click the Tainted Arcane Sliver in your bags |use Tainted Arcane Sliver##20483
..accept 8338
step
'Follow the ramps all the way to the top to 30.8,27.1 |goto Eversong Woods,30.8,27.1
.from Felendren the Banished##15367
.get Felendren's Head |q 8335/3
step
goto 35.4,22.5
.talk 15281
..turnin 8335
..accept 8347
step
goto 37.2,18.9
.talk 15297
..turnin 8338
step
goto 40.4,32.2
.talk 15301
..turnin 8347
..accept 9704
step
goto 42.0,35.7
.' Click the Slain Outrunner |tip It's a corpse laying in the middle of the road.
..turnin 9704
..accept 9705
step
goto 40.4,32.2
.talk 15301
..turnin 9705
..accept 8350
step
goto 46.2,46.8
.talk 44244
.fpath Falconwing Square
step
goto 47.3,46.3
.talk 15418
..accept 8472
step
goto 48.1,47.7
.talk 15433
..turnin 8350
.home Falconwing Square
step
goto 48.2,46
.talk 15403
..accept 8463
step
goto 48.2,46.3
.' Click the Wanted Poster |tip Standing to the right of the entrance to the big building.
..accept 8468
step
goto 45,37.8
.from Thaelis the Hungerer##15949
.get Thaelis's Head |q 8468/1
step
goto 45.9,43.7
.' Click the Unstable Mana Crystal Crates |tip They look like small glowing circle objects on the ground around this area.
.get 6 Unstable Mana Crystal |q 8463/1
.from Arcane Patroller##15638+
.get 6 Arcane Core |q 8472/1
step
goto 47.8,46.6
.talk 16924
..turnin 8468
step
goto 48.2,46
.talk 15403
..turnin 8463
..accept 9352
step
goto 47.3,46.3
.talk 15418
..turnin 8472
..accept 8895
step
goto 44.6,53.1
.talk 15405
..turnin 8895
..accept 9119
step
goto 45.2,56.4
.talk 15941
..accept 9035
step
goto 44.9,61.0
.talk 15945
..turnin 9035
..accept 9062
step
goto 44.3,62.0
.' Click the Soaked Tome |tip It's a little black book underwater here under the bridge.
.get Antheol's Elemental Grimoire|q 9062/1
step
goto 44.9,61.0
.talk 15945
..turnin 9062
..accept 9064
step
goto 36.7,57.4
.talk 15401
..turnin 9119
..accept 8486
step
goto 35.4,57.4
.kill 5 Manawraith |q 8486/1
.kill 5 Mana Stalker |q 8486/2
step
goto 33.9,58.4
.from Darnassian Scout##15968+
.' Defeat an Intruder |q 9352/1
.collect Incriminating Documents##20765 |n
.' Click the Incriminating Documents in your bags |use Incriminating Documents##20765
..accept 8482
step
goto 36.7,57.4
.talk 15401
..turnin 9352
..turnin 8486
step
goto 30.2,58.3
.talk 15920
..accept 8884
step
goto 27.3,57.2
.from Grimscale Forager##15670+, Grimscale Seer##15950+
.get 8 Grimscale Murloc Head |q 8884/1
step
goto 30.2,58.3
.talk 15920
..turnin 8884
..accept 8885
step
goto Eversong Woods 48.2,46.0
.talk 15403
..turnin 8482
..accept 8483
step
goto 44.6,53.1
.talk 15420
..' Tell him you need a moment of his time
.from Prospector Anvilward##15420
.get Prospector Anvilward's Head |q 8483/1
step
goto 48.2,46
.talk 15403
..turnin 8483
..accept 9256
step
goto 50.3,50.8
.talk 15416
..accept 8475
step
goto 50.3,52.9
.kill 8 Plaguebone Pillager |q 8475/1
step
goto 50.3,50.8
.talk 15416
..turnin 8475
step
goto 54.4,50.7
.talk 16192
.fpath Silvermoon City
step
goto 55.7,54.5
.talk 15970
..turnin 9064
..accept 9066
step
goto 45.2,56.4
.' Use Antheol's Disciplinary Rod on Apprentice Ralen |use Antheol's Disciplinary Rod##22473 |tip Standing next to a broken down red wagon.
.' Discipline Apprentice Ralen |q 9066/2
step
goto 44.9,61.0
.' Use Antheol's Disciplinary Rod on Apprentice Meledor |use Antheol's Disciplinary Rod##22473 |tip Standing on the water bank, near the bridge.
.' Discipline Apprentice Meledor |q 9066/1
step
goto 44.7,69.6
.talk 15417
..accept 8491
step
goto 43.9,70.0
.talk 44036
.fpath Fairbreeze Village
step
goto 44.0,70.8
.talk 16210
..accept 9395
..accept 9254
step
goto 43.7,71.2
.talk 15397
..accept 9358
.home Fairbreeze Village
step
goto 43.6,71.2
.talk 16397
..accept 9258
step
goto 43.7,71.6
.talk 16261
..accept 9130
only BloodElf
step
goto 43.3,70.8
.talk 15939
..turnin 9256
..accept 8892
step
goto 43.9,70.0
.talk 44036
..turnin 9130
..accept 9133
only BloodElf
step
goto 55.7,54.5
.talk 15970
..turnin 9066
step
goto Silvermoon City,53.9,71.0
.talk 16191
..turnin 9133
..accept 9134
only BloodElf
step
goto Eversong Woods,54.4,50.7
.talk 16192
..turnin 9134
..accept 9135
only BloodElf
step
goto 43.7,71.6
.talk 16261
..turnin 9135
only BloodElf
step
goto 40.5,65.6
.from Springpaw Stalker##15651+
.get 6 Springpaw Pelt |q 8491/1
.' There will be more around [46.3,67.3]
step
goto 38.1,73.6
.talk 16144
..turnin 9395
..accept 9067
step
goto 36.4,66.8
.talk 15404
..accept 8480
step
goto 36.4,66.6
.talk 15921
..accept 8886
step
goto 34.1,69.1
.kill 5 Wretched Thug |q 8892/1
.kill 5 Wretched Hooligan |q 8892/2
.' Click the Weapon Containers |tip They look like wooden boxes on the ground all around this area and inside the big building.
.get 8 Sin'dorei Armaments |q 8480/1
step
goto 25.9,68.5
.from Grimscale Murloc##15668+, Grimscale Oracle##15669+
.collect Captain Kelisendra's Lost Rutters##21776 |n
.' Click Captain Kelisendra's Lost Rutters in your bags |use Captain Kelisendra's Lost Rutters##21776
..accept 8887
.' Click Captain Kelisendra's Cargo |tip The Captain Kelisendra's Cargo barrels look like wooden barrels sitting upright next to the murloc huts.
.get 6 Captain Kelisendra's Cargo |q 8886/1
.from Mmmrrrggglll##15937
.get Ring of Mmmrrrggglll |q 8885/1
.' Mmmrrrggglll can be found around 24.4,73.2 and patrols along the coast
step
goto 30.2,58.3
.talk 15920
..turnin 8885
step
goto Eversong Woods 43.3,70.8
.talk 15939
..turnin 8892
..accept 9359
step
goto 44.1,70.3
.talk 16444
.buy 1 Bundle of Fireworks |q 9067/3
step
goto 44.7,69.6
.talk 15417
..turnin 8491
step
goto 36.4,66.8
.talk 15404
..turnin 8480
..accept 9076
step
goto 36.4,66.6
.talk 15921
..turnin 8886
..turnin 8887
step
goto 32.8,69.6
.' Go all the way to the top of the big building
.from Aldaron the Reckless##16294
.get Aldaron's Head |q 9076/1
step
goto 36.4,66.8
.talk 15404
..turnin 9076
step
goto 34.1,80.0
.talk 15398
..turnin 9258
..accept 8473
step
goto 35.0,84.1
.from Old Whitebark##15409
.collect Old Whitebark's Pendant##23228
.' Click Old Whitebark's Pendant in your bags |use Old Whitebark's Pendant##23228
..accept 8474
.kill 10 Withered Green Keeper |q 8473/1
step
goto 34.1,80.0
.talk 15398
..turnin 8473
..turnin 8474
..accept 10166
step
goto 37.5,86.3
.' Use Old Whitebark's Pendant next to this huge stone with a blue symbol on it |use Old Whitebark's Pendant##28209
.' Fight Whitebark's Spirit until he surrenders
.talk 19456
..turnin 10166
step
goto 46.9,71.8
.talk 15942
..turnin 9358
..accept 9252
step
goto 50.2,78.2
.kill 4 Rotlimb Marauder |q 9252/1
.kill 4 Darkwraith |q 9252/2
step
goto 54.3,71
.talk 15402
..turnin 9254
..accept 8487
step
goto 52.6,70.9
.' Click the Corrupted Soil Samples |tip They look like green glowing piles of dirt around this area.
.get 8 Tainted Soil Sample |q 8487/1
step
goto 54.3,71
.talk 15402
..turnin 8487
..'Prepare to fight
..accept 8488
step
goto 54.3,71
.' Protect Apprentice Mirveda from the ambushers |q 8488/1
step
goto 54.3,71
.talk 15402
..turnin 8488
..accept 9255
step
goto 46.9,71.8
.talk 15942
..turnin 9252
..accept 9253
step
goto 44.0,70.8
.talk 16210
..turnin 9255
step
'Go inside Silvermoon City |goto Silvermoon City |noway |c
step
goto 79.5,58.5
.talk 16442
.buy Suntouched Special Reserve |q 9067/1
step
goto 60.4,62.5
.talk 16443
.buy Springpaw Appetizers |q 9067/2
step
goto 60.3,62.8
.talk 15399
..turnin 9359
..accept 8476
step
goto 59.5,62.6
.talk 15400
..accept 8477
step
goto 60.3,61.4
.talk 15951
..accept 8888
step
goto 67.8,56.5
.talk 15924
..turnin 8888
..accept 8889
..accept 9394
step
goto 68.9,52.0
.' Click the Orb of Translocation
..'It will teleport you up to the building |goto 67.5,52.1,0.3 |noway |c
step
goto 68.9,51.9
.' Click the Duskwither Spire Power Sources |tip The Power Sources are huge green floating crystals in this building.
.' Deactivate the First Power Source |q 8889/1
step
goto 68.9,51.9
.' Click the Duskwither Spire Power Source |tip The Second Power Source is on the second floor.
.' Deactivate the Second Power Source |q 8889/2
step
goto 69.2,52.1
.' Click Magister Duskwither's Journal |tip Magister Duskwither's Journal is a blue book sitting on a small stool next to the Second Power Source crystal.
..accept 8891
step
goto 69.7,53.3
.' Click the Duskwither Spire Power Source |tip It's a huge green crystal all the way at the top of this building, up a huge staircase.
.' Deactivate the Third Power Source |q 8889/3
.' Click the Orb of Translocation
..' It will teleport you back down |goto Eversong Woods,68.9,52.0,0.1 |noway |c
step
goto 68.7,46.9
.talk 15969
..turnin 9394
..accept 8894
step
goto 69.5,48.1
.kill 6 Mana Serpent |q 8894/1
.kill 6 Ether Fiend |q 8894/2
step
goto 68.7,46.9
.talk 15969
..turnin 8894
step
goto 67.8,56.5
.talk 15924
..turnin 8889
..accept 8890
step
goto 60.3,61.4
.talk 15951
..turnin 8890
..turnin 8891
step
goto 70,72.3
.from Spearcrafter Otembe##15408
.get Otembe's Hammer |q 8477/1
step
goto 70.5,72.3
.talk 15406
..accept 8479
step
goto 62.6,79.7
.from Chieftain Zul'Marosh##15407
.get Chieftain Zul'Marosh's Head |q 8479/1
.collect Amani Invasion Plans##23249
.' Click the Amani Invasion Plans in your bags |use Amani Invasion Plans##23249
..accept 9360
step
goto 70.5,72.3
.talk 15406
..turnin 8479
step
goto 70,72.3
.kill 5 Amani Berserker |q 8476/1
.kill 5 Amani Axe Thrower |q 8476/2
step
goto 60.3,62.8
.talk 15399
..turnin 8476
..turnin 9360
..accept 9363
step
goto 59.5,62.6
.talk 15400
..turnin 8477
step
goto Eversong Woods 43.3,70.8
.talk 15939
..turnin 9363
step
goto 38.1,73.6
.talk 16144
..turnin 9067
step
goto 44.2,85.5
.talk 16362
..turnin 9253
..accept 8490
step
goto 55.4,84.2
.' Use your Infused Crystal next to the huge stone with a big blue symbol on it |use Infused Crystal##22693
.' Protect the Infused Crystal from the mobs that come for 1 minute
.' Energize the Runestone |q 8490/1
step
goto 44.2,85.5
.talk 16362
..turnin 8490
step
goto Eversong Woods,49.0,89.0
.talk 16196
..accept 9147
step
goto Ghostlands,49.3,12.6
.from Starving Ghostclaw##16347+, Mistbat##16353+
.get 4 Plagued Blood Sample |q 9147/1
step
goto Eversong Woods,49.0,89.0
.talk 16196
..turnin 9147
step
goto 49.0,89.0
.talk 16183
..accept 9148
step
goto Ghostlands,46.3,28.4
.talk 16197
..turnin 9148
..accept 9327
step
goto 45.4,30.5
.talk 16189
.fpath Tranquillien
step
goto 44.8,32.5
.talk 16252
..turnin 9327
..accept 9758
step
goto 46.3,28.4
.talk 16197
..turnin 9758
..accept 9138
step
goto 47.3,28.6
.talk 16224
..accept 9152
step
goto 48.9,32.4
.talk 16542
.home Tranquillien
step
goto 47.7,34.9
.talk 16198
..accept 9149
step
goto 60.6,14.0
.kill 10 Nerubis Guard |q 9138/1
step
goto 46.3,28.4
.talk 16197
..turnin 9138
..accept 9139
step
goto 33.6,26.5
.' Click Rathis Romber's Supplies |tip It's a wooden crate sitting in a wagon with a purple canopy over it.
.get Rathis Tomber's Supplies |q 9152/1
step
goto 27.3,16.2
.kill 6 Quel'dorei Ghost |q 9139/1
.kill 4 Quel'dorei Writh |q 9139/2
step
goto 20.5,21.4
.from Withered Grimscale##16403+, Zombified Grimscale##16402+
.get 6 Plagued Murloc Spine |q 9149/1
step
goto 47.1,28.3
.talk 16224
..turnin 9152
step
goto 46.3,28.4
.talk 16197
..turnin 9139
..accept 9140
step
goto 46.0,32.0
.talk 16199
..accept 9150
step
goto 45.5,32.5
.talk 16213
..accept 9145
step
goto 44.9,32.5
.talk 16231
..accept 9160
step
goto 44.8,32.3
.talk 16251
..accept 9192
step
goto 46.0,33.6
.talk 16200
..accept 9155
step
goto 47.7,34.9
.talk 16198
..turnin 9149
step
goto 48.4,30.9
.talk 16253
..accept 9171
step
goto 40.5,33.5
.kill 10 Risen Hungerer |q 9155/1
.kill 10 Gangled Cannibal |q 9155/2
.' More can be found around 38.3,36.5
step
goto 35.9,32.9
.from Arcane Devourer##+, Mana Shifter##+,
.get 8 Crystallized Mana Essence |q 9150/1
step
goto 27.6,31.1
.from Spindleweb Spider##16350
.get 5 Crunchy Spider Leg |q 9171/1
step
goto 37.7,19.3
.' The path up to Investigate An'daroth starts here |goto Ghostlands,37.7,19.3,0.5 |noway |c
step
goto 35.4,12.4
.' Go to this spot |tip Get near the intertwined tree lamp in the middle of the camp.
.' Investigate An'daroth |q 9160/1
.kill 12 Sentinel Spy |q 9160/2
step
goto Ghostlands 48.0,31.0
.talk 16253
..turnin 9171
step
goto 46.0,32.0
.talk 16199
..turnin 9150
step
goto 44.9,32.5
.talk 16231
..turnin 9160
..accept 9163
step
goto 44.7,32.3
.talk 16251
..accept 9199
step
goto 44.8,32.8
.talk 16289
..accept 9193
step
goto 46.0,33.6
.talk 16200
..turnin 9155
step
goto 31.4,48.3
.talk 16293
..accept 9207
step
goto 29.7,46.9
.kill 8 Blackpaw Gnoll |q 9192/1
.kill 6 Blackpaw Scavenger |q 9192/2
.kill 4 Blackpaw Shaman |q 9192/3
.get 6 Underlight Ore |q 9207/1
step
goto 18.8,46.1
.from Phantasmal Seeker##16323+
.get 6 Phantasmal Substance |q 9140/1
.from Stonewing Slayer##16324+
.get 4 Gargoyle Fragment |q 9140/2
step
goto 12.6,26.5
.' Click the Night Elf Plans: An'daroth |tip It's a scroll laying flat on a small round table next to a tall purple tent.
.get Night Elf Plans: An'daroth |q 9163/1
.' It can also spawn at [13.7,26.8]
step
goto 12.9,23.9
.' Click the Night Elf Plans: An'owyn |tip It's a scroll laying flat on the ground inside a purple tent.
.get Night Elf Plans: An'owyn |q 9163/2
.' It can also spawn at [12.5,24.8]
step
goto 10.5,22.6
.' Click the Night Elf Plans: Scrying on the Sin'dorei |tip It's a rolled up scroll laying on a small round table at the top of the boat.
.get Night Elf Plans: Scrying on the Sin'dorei |q 9163/3
step
goto Ghostlands 46.3,28.4
.talk 16197
..turnin 9140
step
goto 44.9,32.5
.talk 16231
..turnin 9163
..accept 9166
step
goto 44.7,32.3
.talk 16251
..turnin 9192
step
goto 44.8,32.5
.talk 16252
..accept 9173
step
goto 48.9,31.3
.talk 16205
..accept 9218
..accept 9216
step
goto 57.6,14.9
.talk 16601
..accept 9315
step
goto 61.3,15.9
.kill Anok'suten  |tip He's a big purple insect that walks all around this village.  You may need to search for him. |q 9315/1
step
goto 69.4,15.2
.talk 16219
..turnin 9145
..accept 9143
step
goto 74.8,12.3
.from Shadowpine Ripper##+, Shadowpine Witch##+
.get 6 Zeb'Sora Troll Ear |q 9143/1
step
goto 69.4,15.2
.talk 16219
..turnin 9143
..accept 9146
step
goto 72.3,19.1
.talk 16201
..accept 9157
step
goto 72.5,32.1
.talk 16202
..accept 9158
step
goto 72.3,31.3
.talk 16463
..accept 9276
step
goto 72.4,29.6
.talk 16220
..turnin 9146
..accept 9214
step
goto 72.2,29.8
.talk 16462
..accept 9274
step
goto 72.0,32.6
.talk 16203
..accept 9161
step
goto 73.5,21.9
.kill 8 Ravening Apparition |q 9274/1
.kill 8 Vengeful Apparition |q 9274/2
.' Click Glistening Mud |tip They look like piles of dirt underwater all around this area.
.get 8 Wavefront Medallion |q 9157/1
step
goto 72.3,19.1
.talk 16201
..turnin 9157
..accept 9174
step
goto 71.3,15.1
.' Click the Altar of Tidal Mastery |tip It looks like stone statue of a serpent lady underwater.
.kill Aquantion |q 9174/1
step
goto 72.3,19.1
.talk 16201
..turnin 9174
step
goto 79.6,17.6
.' Click the Dusty Journal |tip It looks like an open book laying on the balcony platform of this building.
..turnin 9161
..accept 9162
step
goto 75.8,28.4
.kill 10 Ghostclaw Lynx |q 9158/1
.' The Ghostclaw Lynx share spawn points with the bats
step
goto 72.5,32.1
.talk 16202
..turnin 9158
..accept 9159
step
goto 72.2,29.8
.talk 16462
..turnin 9274
step
goto 72.0,32.6
.talk 16203
..turnin 9162
..accept 9172
step
goto 72.6,31.6
.talk 16464
..accept 9275
step
goto 73.9,38.0
.kill 10 Vampiric Mistbat |q 9159/1
step
goto 78.6,38.1
.kill 8 Shadowpine Shadowcaster |q 9276/1
.get 3 Shadowcaster Mace |q 9214/2
.kill 8 Shadowpine Headhunter |q 9276/2
.get 3 Headhunter Axe |q 9214/1
step
goto 72.3,31.3
.talk 16463
..turnin 9276
..accept 9277
step
goto Ghostlands 46.3,28.4
.talk 16197
..turnin 9315
step
goto 39.2,36.3
.from Risen Stalker##16302+, Risen Hungerer##16301+
.get 10 Rotting Heart |q 9216/1
.' There are more undead to kill at [37.8,45.8]
step
goto 29.8,40.9
.kill 8 Spindleweb Lurker |q 9159/2
.' There will be more around [26.4,53.5]
step
goto 17,59
.kill 8 Deatholme Acolyte |q 9173/1
.kill 10 Fallen Ranger |q 9173/2
step
.from Deatholme Acolyte##16315+, Fallen Ranger##16314+
.collect The Lady's Necklace##22597 |n
.' Click The Lady's Necklace in your bags |use The Lady's Necklace##22597
..accept 9175
step
goto Ghostlands 48.9,31.3
.talk 16205
..turnin 9216
step
goto 46.0,31.9
.talk 16199
..accept 9151
step
goto 44.8,32.4
.talk 16252
..turnin 9175
..turnin 9173
step
goto 53.1,49.0 |n
.' The path over to the Sanctum of the Sun starts here |goto Ghostlands,53.1,49.0,0.5 |noway |c
step
goto 55.1,48.8
.talk 16239
..turnin 9172
..accept 9176
step
goto 54.9,48.5
.talk 16291
..turnin 9207
step
goto 54.9,48.5
.talk 16204
..turnin 9151
..accept 9220
step
goto 57.1,45.0
.' Go to |goto 57.1,45.0 |noway |c
step
goto 60.7,42.7
.' The path to Magister Sylastor starts here |goto Ghostlands,60.7,42.7 |noway |c
step
goto 60.3,35.6
.talk 16237
..turnin 9166
..accept 9169
step
goto 57.8,64.9
.from Sentinel Infiltrator##16333+
.collect Crystal Controlling Orb##23191
step
goto 58.0,65.1
.' Click the Night Elf Moon Crystal |tip It's a big white glowing ball sitting on top of a wooden and stone statue.
.' Deactivate the Night Elf Moon Crystal |q 9169/1
step
goto 65.1,66.8
.' Click the Raw Meat Rack |tip It looks like a wooden rack with bloody meat hanging on it.
.' Poison the Raw Meat Rack |q 9275/1
step
goto 63.0,75.0
.' Click the Smoked Meat Rack |tip It looks like a metal rack with 2 shelves with red meat sitting on them.
.' Poison the Smoked Meat Rack |q 9275/2
step
goto 68.3,57.8
.' Click the Fresh Fish Rack |tip It looks like a wooden standing with fish hanging from it inside this big hut.
.' Poison the Fresh Fish Rack |q 9275/3
step
goto 66.9,58.6
.kill 10 Shadowpine Catlord |q 9277/1
.get 3 Catlord Claws |q 9214/3
.kill 10 Shadowpine Hexxer |q 9277/2
.get 3 Hexxer Stave |q 9214/4
.' More can be found around 63.5,67.4
step
goto 72.5,32.1
.talk 16202
..turnin 9159
step
goto 72.3,31.2
.talk 16463
..turnin 9277
step
goto 72.4,29.6
.talk 16220
..turnin 9214
step
goto 72.6,31.6
.talk 16464
..turnin 9275
step
goto 67.7,28.9
.' The path to the Amani Catacombs starts here |goto Ghostlands,67.7,28.9,0.5 |noway |c
step
goto 66.2,28.5
.' Enter the Amani Catacombs |goto Ghostlands,66.2,28.5,0.5 |noway |c
step
goto 62.9,31.1
.' Click Mummified Troll Remains and burn them |tip They look like mummies laying on the ground inside the catacombs.
.' Go to this spot
.' Investigate the Amani Catacombs |q 9193/1
step
goto 62.8,31.8
.from Mummified Headhunter##16342+, Shadowpine Oracle##16343+
.get 8 Troll Juju |q 9199/1
.' Click Mummified Troll Remains |tip They look like mummies laying on the ground along the wall of the catacombs.
.' Burn 10 Mummified Troll Remains |q 9193/2
.' There are more Mummified Troll Remains in the hallway at [64.9,28.5]
step
62.9,32.7
.talk 16295
..accept 9212
.' Escort Ranger Lilatha back to Farstrider Enclave |q 9212/1
step
goto 72.4,29.6
.talk 16220
..turnin 9212
step
goto 60.7,42.7
.' The path to Magister Sylastor starts here |goto Ghostlands,60.7,42.7 |noway |c
step
goto 60.3,35.6
.talk 16237
..turnin 9169
step
goto Ghostlands 44.7,32.3
.talk 16251
..turnin 9199
step
goto 44.8,32.8
.talk 16289
..turnin 9193
step
goto 40.4,49.8
.' Click the Worn Chest |tip It's a gray chest inside this temple looking building.
.get Stone of Flame |q 9176/1
step
goto 34.3,47.7
.' Click the Dented Chest |tip It's a gray chest inside this temple looking building.
.get Stone of Light |q 9176/2
step
goto 38.1,58.6
.from Dreadbone Sentinel##16305+, Deathcage Sorcerer##16308+
.get 10 Spinal Dust |q 9218/1
.' There are more Dreadbone Sentinel and Deathcage Sorcerers south at [36.3,68.8]
step
goto 36.0,71.7
.' The path into Deatholme starts here |goto Ghostlands,36.0,71.7,0.5 |noway |c
step
goto 36.9,76.1
.kill 6 Nerubis Centurion |q 9220/2
.' There are a few more around [39.2,79.7]
step
goto 37.8,81.3
.kill 5 Eye of Dar'Khan |q 9220/1
.kill 6 Wailer |q 9220/3
step
goto 46.4,56.4
.talk 16480
..accept 9281
step
goto 46.9,60.4
.kill 10 Greater Spindleweb |q 9281/1
.kill 10 Ghostclaw Ravager |q 9281/2
.' You can find more Greater Spindlewebs and Ghostclaw Ravagers:
.' Around [56.4,59.9]
.' Around [42.8,55.8]
.' Around [41.7,64.9]
step
goto 46.4,56.4
.talk 16480
..turnin 9281
step
goto 55.1,48.8
.talk 16239
..turnin 9176
step
goto 54.9,48.6
.talk 16204
..turnin 9220
..accept 9170
step
goto 54.8,48.4
.talk 16240
..accept 9877
step
goto 47.7,34.9
.talk 16198
..turnin 9877
..accept 9164
step
goto 48.9,31.3
.talk 16205
..turnin 9218
step
goto 35.8,72.3
.' The path into Deatholme starts here |goto Ghostlands,35.8,72.3,0.5 |noway |c
step
goto 31.7,73.7
.' Go inside the crypt |goto Ghostlands,31.7,73.7,0.5 |noway |c
step
goto 32.1,74.3
.kill Jurion the Deceiver |q 9170/3
step
goto 32.1,74.0
.talk 16208
..' <Administer the restorative draught.>
.' Rescue Apothecary Enith |q 9164/1
step
goto 37.4,79.3
.kill Mirdoran the Fallen |q 9170/1
step
goto 35.8,89.1
.kill Masophet th Black |q 9170/4
step
goto 32.7,90.5
.kill Borgoth the Bloodletter |q 9170/2
step
32.8,89.8
.talk 16209
..' <Administer the restorative draught.>
.' Rescue Ranger Vedoran |q 9164/3
step
goto 40.8,83.2
.talk 16206
..' <Administer the restorative draught.>
.' Rescue Apprentice Varnis |q 9164/2
step
goto Ghostlands 54.9,48.5
.talk 16204
..turnin 9170
step
goto 54.8,48.4
.talk 16240
..turnin 9164
step
map Eversong Woods
'To continue gaining reputation with the Silvermoon City faction:
.' You can buy a Silvermoon City Tabard from Magistrix Nizara in Eversong Woods at [54.5,50.9] |tip Wear the Silvermoon City Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide\\Orc Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Orc race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section
description in order to be able to complete this guide section.
description You cannot complete this section if you are an Orc.
daily
step
'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are an Orc.
step
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
'Congratulations, you are now a Champion of Orgrimmar! |tip This is the end of the Orc Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide\\Tauren Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Tauren race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section
description in order to be able to complete this guide section.
daily
step
'In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Tauren.
step
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
'Congratulations, you are now a Champion of Thunder Bluff! |tip This is the end of the Tauren Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide\\Troll Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Troll race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section
description in order to be able to complete this guide section.
daily
step
'In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Troll.
step
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
'Congratulations, you are now a Champion of Sen'jin! |tip This is the end of the Troll Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide\\Blood Elf Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Blood Elf race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section
description in order to be able to complete this guide section.
daily
step
'In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Blood Elf.
step
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
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide\\Undead Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Undead race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section
description in order to be able to complete this guide section.
daily
step
'In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are an Undead.
step
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
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Orgrim's Hammer / Ymirheim / Aldur'Thar Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests in the Orgrim's Hammer, Ymirheim, and Aldur'Thar regions of Icecrown.
daily
step
label	dailies
map Icecrown
'Orgrim's Hammer flies in a triangular pattern using these points:
.' Point 1: 60.6,34.9
.' Point 2: 68.0,52.5
.' Point 3: 68.9,27.0
.'Find Orgrim's Hammer flying around in the sky|tip On you world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
.talk 29795
..accept 13353
..accept 13365
..accept 13276
step
'On the Orgim's Hammer airship:
.talk 30824
..accept 13331
step
'On the Orgim's Hammer airship:
.talk 32301
..accept 13330
step
'On the Orgim's Hammer airship:
.talk 31261
..accept 13302
step
'On the Orgim's Hammer airship:
.talk 30825
..accept 13261
..accept 13357
step
goto Icecrown,55.2,29.1
.' Use your Diluted Cult Tonic|use Diluted Cult Tonic##44307|tip This gives you a buff that allows you to collect Tainted Essences from dead cultists in Aldur'thar.  If you lose the buff, use this again.
.from Void Summoner##32259+, Shadow Channeler##32262+
.collect 10 Tainted Essence##44301|n
.' Use a Tainted Essence to combine them|use Tainted Essence##44301
..collect 1 Writhing Mass##44304|q 13357
.from Enslaved Minion##32260+
.' Use your Rod of Siphening on the Enslaved Minion corpses|use Rod of Siphening##44433
.collect 5 Dark Matter##44434|q 13365
step
goto 53.8,33.6
.' Click the Summoning Stone
.' Summon the Dark Messenger |q 13365/1
step
goto 49.1,34.2
.' Use your Writhing Mass next to the big cauldron|use Writhing Mass##44304
.' Banish the Writhing Mass |q 13357/1
step
goto 53.9,46.1
.from Bitter Initiate##32238
.collect 3 Orb of Illusio##44246 |q 13353
step
goto 54.3,45.6
.' Use your Orbs of Illusion on Dark Subjugators|use Orb of Illusion##44246
.' Drag and drop 3 Dark Subjugators |q 13353/1
step
goto 58.3,46.0
.talk 31834
..accept 13310
step
goto 59.5,45.9
.' Click the Kor'kron Suppression Turret to control the gun on the airplane|invehicle
step
'You will fly off in the airplane:
.' Use your Suppression Charge ability on the cannons on the ground to stun them as you fly around|petaction Suppression Charge
.' Drop 4 Kor'kron Infiltrators |q 13310/1
step
goto 58.3,46.0
.talk 31834
..turnin 13310
step
goto 58.2,45.9
.talk 31833
..accept 13301
step
'Follow the Horde troops up the mountain and help them fight
.'Escort the Horde troops into Ymirheim |q 13301/1|tip At least 4 Horde troops must survive.
step
'The entrance to the cave starts here, go inside the cave|goto 57.0,57.3,0.3|c
step
goto 56.0,57.6
.' Talk to Saronite Mine Slaves
..' Tell them they're free, get out of here!
.' Rescue 10 Saronite Mine Slaves |q 13302/1
step
'Go outside the cave|goto 57.0,57.3,0.3|c
step
goto 57.3,57.0
.from Ymirjar Element Shaper##31267+, Blight Falconer##31262+, Ymirheim Chosen Warrior##31258+
.kill 20 Ymirheim Vrykul|q 13330/1
step
goto 51.9,57.6
.talk 31781
..accept 13283
step
goto 51.9,57.6
.' Click Thunderbomb's Jumpbot to get in the robot|invehicle |q 13283
step
goto 54.9,60.1
.' Use your Jump Jets ability to jump up the mountain to this spot|petaction Jump Jets|tip This spot is the peak of the mountain.
.' Use your Plant Horde Battle Standard ability next to the Ymirheim Peak Skulls|petaction Plant Horde Battle Standard|tip The Ymirheim Peak Skulls look like a big pile of skulls at the peak of the mountain, next to 2 blue flame torch lights.
.' Plant the Horde Battle Standard |q 13283/1
step
'Click the red arrow button on your vehicle hotbar to get out of the robot|script VehicleExit()|outvehicle|c |q 13283
step
goto 51.9,57.6
.talk 31781
..turnin 13283
step
goto 58.3,46.0
.talk 31834
..turnin 13301
step
goto 69.9,64.3
.' Click Abandoned Armor|tip They look like metal armor chestpieces laying on the ground around this area.
.collect 3 Abandoned Armor##43616|q 13261
.' Click Abandoned Helms|tip They look like metal helmets laying on the ground around this area.
.collect 3 Abandoned Helm##43610|q 13261
.' Click Piles of Bones|tip They look like small piles of bones laying on the ground around this area.
.collect 3 Pile of Bones##43609|q 13261
step
goto 68.8,67.5
.' Use Copperclaw's Volatile Oil 3 times|use Copperclaw's Volatile Oil##43608
.' Conduct 3 Field Tests |q 13261/1
step
goto 69.8,62.4
.from Hulking Abomination##31140+
.collect Chilled Abomination Guts|n
.' Use your Abomination Reanimation Kit|use Abomination Reanimation Kit##43968
.' With your control Abomination, go to 69.1,61.6|n
.' Use your Burst at the Seams ability to explode the mobs around this area|petaction Burst at the Seams
.' Keep repeating this process until you:
.' Explode 15 Icy Ghouls |q 13276/1
.' Explode 15 Vicious Geists |q 13276/2
.' Explode 15 Risen Alliance Soldiers |q 13276/3
step
'Orgrim's Hammer flies in a triangular pattern using these points:
.' Point 1: [60.6,34.9]
.' Point 2: [68.0,52.5]
.' Point 3: [68.9,27.0]
.'Find Orgrim's Hammer flying around in the sky|tip On you world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
.talk 29795
..turnin 13353
..turnin 13365
..turnin 13276
step
'On the Orgim's Hammer airship:
.talk 30824
..turnin 13331
step
'On the Orgim's Hammer airship:
.talk 32301
..turnin 13330
step
'On the Orgim's Hammer airship:
.talk 31261
..turnin 13302
step
'On the Orgim's Hammer airship:
.talk 30825
..turnin 13261
..turnin 13357
step
'You have completed this daily guide today. You can do more dailies tomorrow.
.' Click here to return to the beginning of the guide. |confirm
|next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Shadowvault Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests in the Shadowvault region of Icecrown.
daily
step
label	dailies
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
step
'You have completed this daily guide today. You can do more dailies tomorrow.
.' Click here to return to the beginning of the guide. |confirm
|next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Death's Rise Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests in the Death's Rise region of Icecrown.
daily
step
label	dailies
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
step
'You have completed this daily guide today. You can do more dailies tomorrow.
.' Click here to return to the beginning of the guide. |confirm
|next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Icecrown\\The Sunreavers Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests for The Sunreavers faction
description in the Argent Tournament Grounds area of Icecrown.
daily
step
label	dailies
goto Icecrown,76.1,24.1
.talk 34771
.' You will only be able to accept, and turn in, 2 of these 5 daily quests per day:
..accept 14143 |or 2
..accept 14136 |or 2
..accept 14140 |or 2
..accept 14144 |or 2
..accept 14142 |or 2
step
goto 76.1,24.0
.talk 34914
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 14092 |or
..accept 14141 |or
..accept 14145 |or
step
goto 64.0,21.5
.from Dark Ritualist##34734+, Dark Zealot##34728+
.collect 4 Black Cage Key##46895 |n
.' Click Black Cages |tip They look like big square cages around this area.
.' Rescue 4 Captive Aspirants |q 14142/2
step
goto 64.0,21.5
.from Dark Ritualist##34734+, Dark Zealot##34728+
.collect 1 Black Cage Key##46895 |q 14142
step
goto 60.8,23.2
.' Click the Black Cage |tip It looks like big square cage up on this platform.
.' Rescue Kul the Reckless |q 14142/1
step
goto 74.3,10.0
.' Click a Bucket of Fresh Chum |tip They looks like wooden buckets on the deck of this ship.
.collect 6 Fresh Chum##47036 |q 14145
step
goto 74.0,10.5
.' Use the Fresh Chum in your bags |use Fresh Chum##47036
.from North Sea Blue Shark##35061+ |tip They spawn underwater around this area when you use the Fresh Chum.
.get 3 North Sea Shark Meat |q 14145/1
step
goto Hrothgar's Landing,43.6,54.0
.kill 8 Kvaldir Berserker |q 14136/1
.kill 3 Kvaldir Harpooner |q 14136/2
step
goto 43.3,27.5
.' Click Stolen Tallstrider Legs |tip They look like chicken legs laying on objects and on the ground around this area.
.from Kvaldir Mist Binder##34839+, Kvaldir Reaver##34838+
.get 10 Stolen Tallstrider Leg |q 14143/1
step
goto 46.5,32.8
.from Kvaldir Mist Binder##34839+, Kvaldir Reaver##34838+
.' Kill 10 Kvaldir |q 14140/1
step
goto 46.5,32.8
.' Use your Confessor's Prayer Book on Slain Tualiq Villagers |use Confessor's Prayer Book##46870 |tip They look like dead walrus men corpses around this area.
.' Administer 8 Last Rites |q 14144/1
step
goto The Storm Peaks,40.5,53.3
.' Use your Earthshaker Drum next to the piles of snow on the ground |use Earthshaker Drum##46893
.from Deep Jormungar##34920 |tip They spawn after using your Earthshaker Drum next to the piles of snow.
.get 4 Jormungar Egg Sac |q 14092/1
step
goto 42.8,81.3
.' Use your Weighted Net on Snowblind Followers |use Weighted Net##46885
.' Capture 8 Snowblind Followers |q 14141/1
step
goto Icecrown,76.1,24.1
.talk 34771
.' You will only be able to accept, and turn in, 2 of these 5 daily quests per day:
..turnin 14143
..turnin 14136
..turnin 14140
..turnin 14144
..turnin 14142
step
goto 76.1,24.0
.talk 34914
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 14092
..turnin 14141
..turnin 14145
step
'You have completed this daily guide today. You can do more dailies tomorrow.
.' Click here to return to the beginning of the guide. |confirm
|next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Sholazar Basin\\Frenzyheart Tribe Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests for the Frenzyheart Tribe faction in Sholazar Basin.
achieveid 950
step
'Proceeding to Prequests |next |condition rep('Frenzyheart Tribe')<=Friendly |only if rep('Frenzyheart Tribe')<=Friendly
'Proceeding to Dailies |next "daily" |condition rep('Frenzyheart Tribe')>=Friendly |only if rep('Frenzyheart Tribe')>=Friendly
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
.' The path down to The Sapphire Queen starts here |goto 59.4,79.1,0.3 |noway |c |q 12534
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
label daily
' During this next part you will fight a boss.
.' If you kill Jaloot during the fight, you will be able to pick up the Frenzyheart Tribe quest, and vice versa.
.' NOTE** _You must kill Artuis Slowly if you are high level_. This will decrease your Reputation with the _Oracles_ to _Hated_
|modelnpc Jaloot##28667
|confirm always
step
goto 70.8,58.7
.' Enter the cave here
.' Follow the path inside the cave up to [72.2,57.3]
.kill Artruis the Heartless##28659 |q 12581/1
.click Artruis' Phylactery##4712
|tip This will spawn after the fight
..turnin 12581
..talk 28668
...accept 12582
...accept 12692
.' If you cannot accept than you will need to wait until the next day and try again.  |confirm always
step
goto 55.4,69.6
.talk 28138
.turnin 12692
step
goto 55.5,69.7
.talk 28138
..accept 12702
.' Tell him you need to find Goregek
.collect Goregek's Shackles##38619 |q 12702
step
goto 55.7,69.5
.talk 29043
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..accept 12758 |or
..accept 12734 |or
..accept 12741 |or
..accept 12732 |or
step
goto 55.5,68.7
.talk 29146
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 12703 |or
..accept 12760 |or
..accept 12759 |or
step
'They are all around the village
.' Use your Chicken Net on the Chicken Escapees if you cannot catch them easily |use Chicken Net##38689
.' Click the Chicken Escapees
.get 12 Captured Chicken |q 12702/1
step
goto 33.1,47.3
.from Venture Co. Ruffian##28124+, Venture Co. Excavator##28123+
.collect Venture Co. Explosives##39651 |q 12758
step
goto 26.0,35.4
.from Stormwatcher##28877+
.' Use your Venture Co. Explosives on a Stormwatcher's corpse |use Venture Co. Explosives##39651
.' Click the Stormwatcher's Head that spawns
.get Stormwatcher's Head |q 12758/1
step
goto 59.7,70.9
.from Hardknuckle Charger##28096+
.' Use Rejek's Blade on a Hardknuckle Charger's corpse |use Rejek's Blade##39577
.' Blood your Blade on a Hardknuckle Charger |q 12734/2
step
goto 59.3,75.7
.from Sapphire Hive Wasp##28086+
.' Use Rejek's Blade on a Sapphire Hive Wasp's corpse |use Rejek's Blade##39577
.' Blood your Blade on a Sapphire Hive Wasp |q 12734/1
step
goto 43.1,40.4
.from Mistwhisper Warrior##28109+, Mistwhisper Oracle##28110+
.' Use Rejek's Blade on 3 Mistwhisper mob's corpse |use Rejek's Blade##39577
.' Blood your Blade on 3 Mistwhisper Members |q 12734/3
step
goto 26.5,35.1
.from Aqueous Spirit##28862+
.collect 3 Essence of the Monsoon##39616 |q 12741
.from Storm Revenant##28858+
.collect 3 Essence of the Storm##39643 |q 12741
step
goto 22.4,33.8
.' Stand right up next to the tall stone altar |tip You may even need to rub against, or stand next to it so that you are touching it.
.' Feel the True Power of the Tempest |q 12741/1
step
goto 59.7,23.9
.from Goretalon Matriarch##29044 |tip It looks like a white eagle perched up on a hill, next to a nest with 1 egg in it.
.collect Matriarch's Heartblood##39573 |q 12732
step
goto 33.8,52.1
.' Use Rejek's Vial while standing in the water at the top of the Suntouched Pillar |use Rejek's Vial##39574
.collect Suntouched Water##39576 |n
.' Click the Suntouched Water in your bags |use Suntouched Water##39576
.get Suntouched Heartblood |q 12732/1
step
goto 31.6,69.5
.from Sparktouched Warrior##28111+, Sparktouched Oracle##28112+
.collect Oracle Blood##39265 |q 12703
step
goto 23.3,83.0
.' Use your Oracle Blood next to the Altar of Kartak |use Oracle Blood##39265 |tip The Altar of Kartak has a big skull on top of it, with long curved horns.  There are 3 small fires at the base of the altar, also.
.' Take Control of Kartak |invehicle |c |q 12703
step
goto 30.7,78.0
.' Use Kartak's abilities to kill Oracle mobs around this area
.kill 50 Sparktouched Gorloc |q 12703/1
step
goto 30.1,70.7
.' Drink the Secret Strength of the Frenzyheart in your bags |use Secret Strength of the Frenzyheart##39737
.from Sparktouched Warrior##28111+, Sparktouched Oracle##28112+
.' Kill 30 Sparktouched Gorlocs |q 12760/1
step
goto 24.0,83.1
.' Click Zepik's Trap Stash |tip Zepik's Trap Stash looks like a small brown chest on the ground, next to some wiry stick huts.
.collect Spike Bomb##39697 |q 12759
.collect Ensnaring Trap##39695 |q 12759
.collect Volatile Trap##39696 |q 12759
step
goto 28.4,76.1
.' Use your Spike Bomb |use Spike Bomb##39697
.' Use your Ensnaring Trap |use Ensnaring Trap##39695
.' Use your Volatile Trap |use Volatile Trap##39696
.' Use your traps near Oracles mobs around this area
.' Kill 50 Sparktouched Gorlocs |q 12759/1
step
goto 23.4,83.3
.talk 28106
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 12703
..turnin 12760
..turnin 12759
step
goto 55.5,69.7
.talk 28138
..turnin 12702
step
goto 55.7,69.5
.talk 29043
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..turnin 12758
..turnin 12734
..turnin 12741
..turnin 12732
step
.' Click here to go back to the start of the dailies. Note that this will not actually reset the daily quests. |confirm
|next "daily"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Sholazar Basin\\The Oracles Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests for the The Oracles faction in Sholazar Basin.
daily
step
#include "H_Oracles"
step
label daily
' During this next part you will fight a boss.
.' If you kill Zepik the Gorloc Hunter during the fight, you will be able to pick up the Oracle quest, and vice versa.
.' NOTE** _You must kill Artuis Slowly if you are high level_. This will decrease your Reputation with the _Frenzyheart Tribe_ to _Hated_
|modelnpc Zepik the Gorloc Hunter##28668
|confirm always
step
goto 70.8,58.7
.' Enter the cave here
.' Follow the path inside the cave up to [72.2,57.3]
.kill Artruis the Heartless##28659 |q 12581/1
.click Artruis' Phylactery##4712
|tip This will spawn after the fight
..turnin 12581
..talk 28667
...accept 12689
...accept 12695
.' If you cannot accept than you will need to wait until the next day and try again.  |confirm always
step
goto 54.6,56.4
.talk 28027
..turnin 12695
step
goto 54.6,56.4
.talk 28027
..accept 12704
.' Tell him you need to find Lafoo
.collect Lafoo's Bug Bag##38622 |q 12704
step
goto 53.3,56.5
.talk 29006
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..accept 12735 |or
..accept 12737 |or
..accept 12736 |or
..accept 12726 |or
step
goto 54.2,53.8
.talk 29149
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 12761 |or
..accept 12762 |or
..accept 12705 |or
step
goto 52.4,53.2
'Use Lafoo's Bug Bag if Lafoo is not standing next to you:|use Lafoo's Bug Bag##38622
.' Stand on top of the twinkles of light on the ground around this area
.' Lafoo will dig up the treasure
.' Click the random items that appear on the ground
.get 6 Shiny Treasures|q 12704/1
step
goto 42.7,42.8
.' Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
.kill Spirit of Atha |q 12735/1
step
goto 49.4,62.7
.' Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
.kill Spirit of Ha-Khalan |q 12735/2
step
goto 48.8,70.5
.' Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
.kill Spirit of Koosu |q 12735/3
step
goto 26.2,37.1
.' Use your Horn of Fecundity next to Soaked Fertile Dirt piles |use Horn of Fecundity##39599
.' Play the Song of Fecundity 8 Times |q 12737/1
step
goto 50.0,37.4
.' Use your Didgeridoo of Contemplation at the top of The Glimmering Pillar |use Didgeridoo of Contemplation##39598
.' Contemplate at the Glimmering Pillar |q 12736/1
step
goto 33.6,52.3
.' Use your Didgeridoo of Contemplation at the top of The Suntouched Pillar |use Didgeridoo of Contemplation##39598
.' Contemplate at the Suntouched Pillar |q 12736/4
step
goto 36.4,74.7
.' Use your Didgeridoo of Contemplation at the top of The Mosslight Pillar |use Didgeridoo of Contemplation##39598
.' Contemplate at the Mosslight Pillar |q 12736/2
step
goto 53.3,79.4
.' Use your Didgeridoo of Contemplation at the top of The Skyreach Pillar |use Didgeridoo of Contemplation##39598
.' Contemplate at the Skyreach Pillar |q 12736/3
step
goto 26.2,37.1
.' Use your Drums of the Tempest to take control of Haiphoon, the Great Tempest |use Drums of the Tempest##39571
.' Haiphoon has 2 forms: Water and Air |tip When in Haiphoon's Water form, use Haiphoon's abilities to fight Storm Revenants around this area.  When the Storm Revenants are weak, use Haiphoon's Devour Wind ability to eat them.  When in Haiphoon's Air form, use Haiphoon's abilities to fight Aqueous Spirits around this area.  When the Aqueous Spirits are weak, use Haiphoon's Devour Water ability to eat them.  After eating an elemental, you will take on Haiphoon's matching form of that elemental you last ate.  Keep repeating this process.
.' Devour 3 Aqueous Spirits |q 12726/1
.' Devour 3 Storm Revenants |q 12726/2
step
goto 33.0,75.7
.' Click the Sparktouched Crystal Defenses |tip It looks like a small bamboo chest sitting at the base of a tree, next to a small hut.
.collect 1 Crystal of the Violent Storm##39694 |q 12761
.collect 1 Crystal of Unstable Energy##39693 |q 12761
.collect 1 Crystal of the Frozen Grip##39689 |q 12761
step
goto 22.2,78.0
.' Use your Crystal of the Frozen Grip |use Crystal of the Frozen Grip##39689
.' Use your Crystal of the Violent Storm |use Crystal of the Violent Storm##39694
.' Use your Crystal of Unstable Energy |use Crystal of Unstable Energy##39693
.' Use your crystals near Frenzyheart mobs around this area
.' Kill 50 Frenzyheart Attackers |q 12761/1
step
goto 65.5,60.2
.' Use your Dormant Polished Crystal at the top of the Lifeblood Pillar, next to the big red crystal |use Dormant Polished Crystal##39747
.get Energized Polished Crystal |q 12762/2
step
goto 22.2,78.0
.' Use your Energized Polished Crystal |use Energized Polished Crystal##39748 |tip This will give you a buff that will heal you a lot every time you do damage to an enemy, so you can fight a LOT of mobs at once.
.' Kill 30 Frenzyheart Attackers |q 12762/1
step
goto 22.9,76.0
.from Frenzyheart Ravager##28078+, Frenzyheart Hunter##28079+
.collect 1 Tainted Crystal##39266 |q 12705
step
goto 33.7,75.0
.' Use your Tainted Crystal next to the tall stone altar |use Tainted Crystal##39266
.' Take control of Soo-holu |invehicle |c |q 12705
step
goto 22.2,78.0
.' Use Soo-holu's abilities to kill Frenzyheart mobs around this area
.kill 50 Frenzyheart Attacker |q 12705/1
step
goto 33.5,74.8
.talk 28107
..turnin 12761
..turnin 12762
..turnin 12705
step
goto 53.3,56.5
.talk 29006
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..turnin 12735
..turnin 12737
..turnin 12736
..turnin 12726
step
goto 54.6,56.4
.talk 28027
..turnin 12704
step
'After you complete the dailies above, you will need to repeat them in order to attain Exalted.
.' Click here to go back to the start of the dailies guide. |confirm |next "daily"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\The Storm Peaks\\The Storm Peaks Full Zone Quest Path (Includes Pre-Quests)",[[
author support@zygorguides.com
description This guide section contains the quest path for the entire The Storm Peaks zone, which includes the pre-quests
description to unlock the daily quests in the Brunnhildar Village, Dun Niffelem (The Sons of Hodir), and K3 regions of The Storm Peaks.
step
'Proceeding to next step |next |only if rep('The Sons of Hodir')<=Neutral
'Proceeding to Friendly |next friendly |only if rep('The Sons of Hodir')==Friendly
'Proceeding to Honored |next honored |only if rep('The Sons of Hodir')==Honored
'Proceeding to Revered |next revered |only if rep('The Sons of Hodir')>=Revered
step
goto The Storm Peaks,41,86.4
.talk 29431
..turnin 12853
..accept 12818
step
goto The Storm Peaks 41.1,85.9
.talk 29904
.home K3
step
goto 41.1,86.1
.talk 29473
..accept 12843
..accept 12844
step
goto 40.9,85.3
.talk 29428
..accept 12827
..accept 12836
step
goto 40.8,84.5
.talk 29721
..fpath K3
step
goto 39.8,86.4
.' Click the Charred Wreckage|tip They look like various metal parts on the ground around this area.
.get 10 Charred Wreckage|q 12818/1
step
goto 35,83.8
.kill Savage Hill gnolls|n
.' Click Dried Gnoll Rations crates|tip The Dried Gnoll Rations crates look like wooden boxes sitting on the ground around this area.
.get 16 Dried Gnoll Rations|q 12827/1
step
goto 30.3,85.7
.kill 1 Gnarlhide|q 12836/1|tip Standing in front of a tent.
step
goto 41,86.4
.talk 29431
..turnin 12818
..accept 12819
step
goto 40.9,85.3
.talk 29428
..turnin 12827
..turnin 12836
..accept 12828
step
goto 35.1,87.8
.' Click Sparksocket's Tools|tip They look like a box of tools in the middle of the mine field.  Navigate carefully through the wide paths in the mine field to get here.  You may get blown around in order to get to this spot, but just keep trying.
.get Sparksocket's Tools|q 12819/1
step
goto 41,86.4
.talk 29431
..turnin 12819
..accept 12826
step
goto 40.9,85.3
.talk 29428
..turnin 12826
..accept 12820
step
goto 43.1,81.2
.' Use your Improved Land Mines to place mines on the ground close to each other|use Improved Land Mines##40676|tip Garm Invaders and Snowblind Followers will run over the mines and die.
.kill 12 Garm Attackers|q 12820/1
step
goto 41.7,80
.talk 29430
..accept 12829
..accept 12830
step
goto 41.7,80
.' Click the U.D.E.D. Dispenser next to Tore Rumblewrench
.' Retrieve a bomb from the dispenser
.collect 1 U.D.E.D.##40686|q 12828
step
'HURRY HURRY to 43.9,79.0|goto 43.9,79.0
.' Use your U.D.E.D. on an Ironwool Mammoth|use U.D.E.D.##40686|tip They walk around this area spread out.
.' Click the Mammoth Meat on the ground
.get 8 Hearty Mammoth Meat|q 12828/1
step
'Go into the cave to 40.4,77.8|goto 40.4,77.8
.kill 12 Crystalweb Spiders|q 12829/1
step
goto 41.5,74.9
.talk 29434
..accept 12831
step
goto 44,75.9
.kill Snowblind Diggers|n
.get 5 Impure Saronite Ore|q 12830/1
step
goto 47.1,72.3
.kill Icetip Crawlers|n|tip They are big purple spiders walking around this area inside the cave.
.get 1 Icetip Venom Sac|q 12831/1
step
goto 43.5,75.2
.talk 29434
..turnin 12831
..accept 12832
step
goto 43.5,75.2
.talk 29434
..'Tell the miner you're ready
.' Escort the Injured Goblin Miner to K3 |q 12832/1
step
'Fly up to 39.8,73.3|goto 39.8,73.3
.kill Sifreldar Storm Maidens|n
.collect 5 Cold Iron Key##40641|q 12843
.' Click the Rusty Cages
.' Free 5 Goblin Prisoners |q 12843/1
.' Click the K3 Equipment crates|tip The K3 Equipment crates look like wooden crates on the ground around town.
.get 8 K3 Equipment|q 12844/1
step
goto 41.7,80
.talk 29430
..turnin 12829
..turnin 12830
step
goto 40.9,85.3
.talk 29428
..turnin 12820
..turnin 12828
..turnin 12832
..accept 12821
step
goto 41.1,86.1
.talk 29473
..turnin 12843
..accept 12846
..turnin 12844
step
goto 45.1,82.4
.' Click the Transporter Power Cell|tip It looks like a small red barrel.
.get Transporter Power Cell|q 12821/2
step
goto 50.7,81.9
.' Use your Transporter Power Cell next to the Teleportation Pad|use Transporter Power Cell##40731|tip It looks like a tall machine with a fan in the bottom of it.
.' Activate the Garm Teleporter |q 12821/1
step
goto 40.9,85.3
.talk 29428
..turnin 12821
..accept 12822
step
goto 50.0,81.8
.talk 29432
..accept 12823
step
'Go inside the cave to 50.5,77.8|goto 50.5,77.8
.' Use your Hardpacked Explosive Bundle next to Frostgut's Altar|use Hardpacked Explosive Bundle##41431|tip It's a stone altar with a bunch of melted red candles on it.  Follow the path in the cave that spirals up all the way to the top of the cave to find it.
.kill Tormar Frostgut|q 12823/2
step
'Go inside the cave to 48.1,81.9|goto 48.1,81.9
.kill 6 Garm Watcher|q 12822/1
.kill 8 Snowblind Devotee|q 12822/2
step
'Go outside and go to 50.0,81.8|goto 50.0,81.8
.talk 29432
..turnin 12823
..accept 12824
step
'Go outside and fly up into the cave to 42.8,68.9|goto 42.8,68.9
.talk 29481
..turnin 12846
..accept 12841
step
goto 44.2,68.9
.from Overseer Syra##29518
.get 1 Runes of the Yrkvinn|q 12841/1
step
goto 42.8,68.9
.talk 29481
..turnin 12841
..accept 12905
step
goto 44.4,68.9
.talk 29885
..turnin 12905
..accept 12906
step
goto 44.8,70.3
.' Use your Disciplining Rod on Exhausted Vrykul|use Disciplining Rod##42837|tip They are sitting on the ground inside these side tunnels inside this mine.
.' Discipline 6 Exhausted Vrykul |q 12906/1
step
goto 44.4,68.9
.talk 29885
..turnin 12906
..accept 12907
step
goto 45.4,69.1
.kill 1 Garhal|q 12907/1|tip Standing off to the side of the path, he has red tattoos on his torso.
step
goto 44.4,68.9
.talk 29885
..turnin 12907
..accept 12908
step
goto 42.8,68.9
.talk 29481
..turnin 12908
..accept 12921
step
'Follow the path in the mine east out to the other side to 47.5,69.1|goto 47.5,69.1
.talk 29975
..turnin 12921
..accept 12969
step
goto 48.2,69.8
.talk 30154
..'Tell her to skip the warm up
.kill 1 Agnetta Tyrsdottar|q 12969/1
step
goto 47.5,69.1
.talk 29975
..turnin 12969
..accept 12970
step
goto 47.5,69.1
.talk 29975
..'Ask her about her proposal
.' Listen to Lok'lira's proposal |q 12970/1
step
goto 47.5,69.1
.talk 29975
..turnin 12970
..accept 12971
step
goto 51,66.4
.talk 30012
.kill 6 Victorious Challenger|q 12971/1
step
goto 47.5,69.1
.talk 29975
..turnin 12971
..accept 12972
step
goto 48.4,72.1
.talk 29997
..accept 12942
..accept 12968
step
goto 48.4,72.1
.talk 30041
..accept 12925
step
goto 53.1,65.7
.talk 29592
..turnin 12972
..accept 12851
step
goto 53.1,65.7
.' Click Icefang to ride him|tip Standing down the hill, Icefang is a white bear.
.' While riding Icefang, use the Flaming Arrow ability on your hotbar to shoot arrows at the Frostworgs and Frost Giants|petaction Flaming Arrow
.' Burn 7 Frostworgs |q 12851/1
.' Burn 15 Frost Giants |q 12851/2
step
goto 53.1,65.7
.talk 29592
..turnin 12851
..accept 12856
step
'Fly to 63.9,62.5|goto 63.9,62.5
.' Click the Captive Proto-Drakes to ride them|tip The Captive Proto-Drakes are chained up flying in the sky.
.' Use your Ice Shard ability on the Brunnhildar Prisoners|petaction Ice Shard|tip The Brunnhildar Prisoners look like blue blocks of ice around this area on the ground.
.' When your Proto-Drake is holding 3 Brunnhildar Prisoners, start flying toward Brunnhildar Village, the drake will eventually go on autopilot.  Repeat this process 2 more times.
.' Rescue 9 Brunnhildar Prisoners |q 12856/1
.' Free 3 Proto-Drakes |q 12856/2
step
goto 53.1,65.7
.talk 29592
..turnin 12856
..accept 13063
step
goto 49.7,71.8
.talk 29839
..turnin 13063
..accept 12900
step
goto 47.9,74.7
.kill Icemane Yetis|n
.get 3 Icemane Yeti Hide|q 12900/1
step
goto 49.7,71.8
.talk 29839
..turnin 12900
..accept 12983
..accept 12989
step
goto 55.8,63.9
.'Kill 8 Ravenous Jormungar inside this cave|kill 8 Ravenous Jormungar|q 12989/1
step
'Follow the path in the cave to 54.8,60.4|goto 54.8,60.4
.' Click the Injured Icemaw Matriarch|tip She's a big white bear laying on the ground inside this cave.
.' The bear runs back to Brunnhildar Village
.' Rescue the Icemaw Matriarch |q 12983/1
step
goto 49.7,71.8
.talk 29839
..turnin 12983
..accept 12996
..turnin 12989
step
'Use your Reins of the Icemaw Matriarch outside the building to ride a bear|invehicle|c|use Reins of the Warbear Matriarch##42481
step
goto 50.8,67.7
.' Use the abilities on your hotbar to fight Kirgaraak|tip He's a big white yeti.
.' Defeat Kirgaraak |q 12996/1
step
goto 49.7,71.8
.talk 29839
..turnin 12996
..accept 12997
step
'Click the red arrow to get off the bear|script VehicleExit()|outvehicle|c
step
goto 49.1,69.4
.' Use your Reins of the Icemaw Matriarch inside The Pit of the Fang to ride a bear|use Reins of the Warbear Matriarch##42481
.' Use the abilities on your hotbar to fight Hyldsmeet Warbears
.kill 6 Hyldsmeet Warbear|q 12997/1
step
'Click the red arrow to get off the bear|script VehicleExit()|outvehicle|c
step
goto 49.7,71.8
.talk 29839
..turnin 12997
..accept 13061
step
goto 47.5,69.1
.talk 29975
..turnin 13061
..accept 13062
step
goto 50.9,65.6
.talk 29796
..turnin 13062
..accept 12886
step
'You fly off on a drake and start flying in circles around a tower:
.' Use your Hyldnir Harpoon in your bags on Hyldsmeet Proto-Drakes to harpoon over to a new drake|use Hyldnir Harpoon##41058
.kill Hyldsmeet Drakeriders|n
.' Repeat this process 9 more times
.' Defeat 10 Hyldsmeet Drakeriders |q 12886/1
step
'They look like light fixtures on the side of the stone columns.
.' Use your Hyldnir Harpoon in your bags on a Column Ornament to get off the drake|outvehicle|c|use Hyldnir Harpoon##41058
step
goto 33.4,58
.talk 29445
..turnin 12886
..accept 13064
step
goto 33.4,58
.talk 29445
..'Ask him what became of Sif
.' Hear Thorim's History |q 13064/1
step
goto 33.4,58
.talk 29445
..turnin 13064
..accept 12915
step
goto 27.3,63.7
.kill 12 Nascent Val'kyr|q 12942/1
.kill Valkyrion Aspirants|n
.collect 6 Vial of Frost Oil##41612|q 12925
step
goto 23.7,58.3
.' Use your Vials of Frost Oil on the Plagued Proto-Drake Eggs|use Vial of Frost Oil##41612|tip They look like brown spiked eggs sitting in the yellow water around this area.
.' Try to get 6 at a time
.' Destroy 30 Plagued Proto-Drake Eggs |q 12925/1
step
goto 24,61.8
.kill 1 Yulda the Stormspeaker|q 12968/1|tip Yulda the Stormspeaker is standing inside this house.
.' Click the Harpoon Crate|tip The Harpoon Crate looks like a huge square chest.
..accept 12953
step
goto 26,59.8
.' Click the Valkyrion Harpoon Guns|tip They look like bronze dragon guns.
.' Use the Flaming Harpoon ability on your hotbar to shoot the tan bundles of straw near buildings and in wagons around this area|petaction Flaming Harpoon
.' Start 6 Fires |q 12953/1
step
'Click the red arrow to get off the gun|script VehicleExit()|outvehicle|c
step
goto 40.9,85.3
.talk 29428
..turnin 12824
..turnin 12822
..accept 12833
step
goto 43.1,81.2
.' Use your Improved Land Mines to place mines on the ground close to each other|use Improved Land Mines##40676|tip Garm Invaders and Snowblind Followers will run over the mines and die.
.kill 12 Garm Invader|q 12833/1
step
goto 40.9,85.3
.talk 29428
..turnin 12833
step
goto 48.4,72.1
.talk 30041
..turnin 12925
step
goto 48.4,72.1
.talk 29997
..turnin 12942
..turnin 12968
..turnin 12953
step
goto 75.8,63
.' Click the Granite Boulders and get them 1 at a time|tip The Granite Boulders look like big grey rocks on the ground around this area.
.' Use Thorim's Charm of Earth on the Stormforged Iron Giants|use Thorim's Charm of Earth##41505
.' Help the dwarves kill them
.kill 5 Stormforged Iron Giants|q 12915/2
.' Get Slag Covered Metal
.' Click the Slag Covered Metal in your bags|use Slag Covered Metal##41556
..accept 12922
step
goto 75.4,63.5
.kill Seething Revenants|n
.get 10 Furious Spark|q 12922/1
step
goto 77.2,62.9
.' Click a Granite Boulder and get one|tip The Granite Boulders look like big grey rocks on the ground around this area.
.' Use Thorim's Charm of Earth on Fjorn|use Thorim's Charm of Earth##41505|tip He's a huge fire giant, holding a huge smithing hammer.
.' Help the dwarves kill him
.kill 1 Fjorn|q 12915/1
step
goto 77.2,62.9
.' Click Fjorn's Anvil|tip Fjorn's Anvil is a huge anvil.
..turnin 12922
..accept 12956
step
goto 33.4,58
.talk 29445
..turnin 12956
..turnin 12915
..accept 12924
step
goto 62.6,60.9
.talk 32571
..fpath Dun Niffelem
step
goto 65.4,60.2
.talk 30105
..accept 12966
step
goto 75.4,63.6
.talk 30099
..turnin 12966
..accept 12967
step
goto 75.7,63.9
.' Click Snorri to accompany on him|invehicle|c|tip Standing on the side of the road.
step
goto 76.7,63.4
.' Use the Gather Snow ability on your hotbar to gather snow from Snowdrifts|petaction Gather Snow|tip The Snowdrifts look like piles of snow on the ground.
.' Use the Throw Snowball ability on your hotbar to throw the snow at Seething Revenants|petaction Throw Snowball
.kill 10 Seething Revenants|q 12967/1
step
'Click the red arrow on your hotbar to leave Snorri|script VehicleExit()|c
step
goto 75.4,63.6
.talk 30099
..turnin 12967
step
goto 63.2,63.2
.talk 30127
..turnin 12924
..accept 13009
step
goto 63.2,62.9
.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
..accept 12981
step
goto 65.4,60.2
.talk 30105
..accept 12975
step
goto 69.7,60.2
.kill Brittle Revenants|n
.collect 6 Essence of Ice##42246|q 12981
step
goto 75.3,62.8
.' Use your Essences of Ice next to Smoldering Scraps|use Essence of Ice##42246|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
.' Click the Frozen Iron Scraps
.get 6 Frozen Iron Scrap|q 12981/1
step
goto 72.1,49.4
.' Click the Horn Fragments|tip The Horn Fragments look like grey scraps on the ground around this area.
.get 8 Horn Fragment|q 12975/1
.' Kill mobs in the area.
.collect 10 Relic of Ulduar##42780|q 12975
step
goto 65.4,60.2
.talk 30105
..turnin 12975
..accept 12976
step
goto 63.2,63.2
.talk 30127
..turnin 12976
step
goto 63.2,62.9
.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
..turnin 12981
step
goto 63.2,63.2
.talk 30127
..accept 12985
step
goto 64.1,65.1
.' Click Hodir's Horn|tip It's a huge bone war horn.
..accept 12977
step
goto 65.4,60.2
.talk 30105
..accept 13011
step
goto 69.7,58.9
.' Use your Diamond Tipped Pick on Dead Iron Giants|use Diamond Tipped Pick##42424
.kill the Stormforged Ambushers that spawn|n
.get 8 Stormforged Eye|q 12985/1
step
goto 72.1,51.8
.kill Niffelem Forefathers and Restless Frostborn Ghosts|n
.' Use Hodir's Horn on their corpses|use Hodir's Horn##42164
.' Free 5 Niffelem Forefathers |q 12977/1
.' Free 5 Restless Frostborn |q 12977/2
step
goto 63.2,63.2
.talk 30127
..turnin 12985
..accept 12987
step
goto 64.1,65.1
.' Click Hodir's Horn|tip It's a huge bone war horn.
..turnin 12977
step
goto 64.3,59.2
.' Fly to the tip of this ice spike
.' Use the Tablets of Pronouncement in your bags|use Tablets of Pronouncement##42442
.' Mount Hodir's Helm |q 12987/1
step
goto 63.2,63.2
.talk 30127
..turnin 12987
step
goto 64.2,59.2
.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
..accept 13006
step
goto 55.6,63.4
.kill Viscous Oils inside this cave|n
.get 5 Viscous Oil|q 13006/1
.' Use your Everfrost Razor on Dead Icemaw Bears|use Everfrost Razor##42732
.collect 1 Icemaw Bear Flank##42733|q 13011
step
goto 54.7,60.8
.' Follow the path inside the cave to this spot
.' Use your Icemaw Bear Flank while standing on the small frozen pond with a bunch of rocks on it|use Icemaw Bear Flank##42733
.kill 1 Jormuttar|q 13011/1
step
'Go outside and go to 33.4,58.0|goto 33.4,58.0
.talk 29445
..turnin 13009
..accept 13050
step
goto 43.7,67.4
.' Click the Small Proto-Drake Eggs|tip They are big spiked brown eggs on top of this mountain in a nest.
.get 5 Small Proto-Drake Egg|q 13050/1
.' You can find more Small Proto-Drake Eggs at [45.2,66.9]|n
step
goto 33.4,58
.talk 29445
..turnin 13050
..accept 13051
step
goto 38.7,65.6
.' Stand in this big nest
.' Click the Stolen Proto-Dragon Eggs in your bags|use Stolen Proto-Dragon Eggs##42797
.' Lure Veranus |q 13051/1
step
goto 33.4,58
.talk 29445
..turnin 13051
..accept 13010
step
goto 64.2,59.2
.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
..turnin 13006
step
goto 65.4,60.2
.talk 30105
..turnin 13011
step
goto 65.4,60.2
.talk 30105
..'Ask him what has become of Krolmir
.' Discover Krolmir's Fate |q 13010/1
step
goto 71.4,48.8
.talk 30390
..turnin 13010
..accept 13057
step
goto 65.4,50.6
.talk 29762
..fpath Camp Tunka'lo
step
goto 65.7,51.4
.talk 30381
..accept 13034
step
goto 65.8,50.4
.' Click the First History Scroll|tip It looks like a white scroll hanging on the wall, with brown symbols on it.
.' Read the First History Scroll |q 13034/1
step
goto 66.8,50.1
.' Click the Second History Scroll|tip It looks like a white long scroll hanging on the right side of the entrance to this house, with brown symbols on it.
.' Read the Second History Scroll |q 13034/2
step
goto 67.5,50.6
.' Click the Third History Scroll|tip It looks like a white scroll hanging on the right side of the entrance to this house, with a gray border and brown symbols on it.
.' Read the Third History Scroll |q 13034/3
step
goto 65.7,51.4
.talk 30381
..turnin 13034
..accept 13037
step
'The entrance to the cave starts here |goto 62.5,41.5,0.5 |c
step
goto 61.2,39.0
.talk 30395
.' Ask him what he remembers of his brother |q 13037/1
step
goto 61.2,39.0
.talk 30395
..accept 13038
step
goto 61.7,39.8
.' Use The Chieftain's Totem near the big yellow and black spinning circles inside this cave |use The Chieftain's Totem##42781
.' Close 4 Frostfloe Rifts |q 13038/1
step
'Leave the cave |goto 62.5,41.5,0.5 |c
step
goto 65.7,51.4
.talk 30381
..turnin 13037
..turnin 13038
..accept 13048
..accept 13049
step
'The entrance to the cave starts here |goto 67.0,44.9,0.5 |c
step
goto 67.2,44.3
.from Scion of Storm##30184+
.get 1 Stormhoof's Spear |q 13049/1
.get 1 Stormhoof's Mail |q 13049/2
.' Click Taunka Artifacts |tip They look like staves stuck in the ground, scrolls, or baskets laying on the ground inside this cave.
.' Attune the Lorehammer to Stormhoof's time 6 times |q 13048/1
step
'Leave the cave |goto 67.0,44.9,0.5 |c
step
goto 65.7,51.4
.talk 30381
..turnin 13048
..turnin 13049
..accept 13058
step
goto 64.9,48.1
.' Use The Lorehammer in your bags |use The Lorehammer##42918
.' Go back in time and become Stormhoof |invehicle |q 13058
step
goto 64.5,47.5
.' Use your Stormhoof abilities to fight and kill The North Wind |tip Use the Storm Call ability, whenever it is available, on the ground when The North Wind is next to you.  Spam the Rhino Strike ability whenever you can.  Only use the Earth Shock ability on The North Wind when it is trying to cast its Cyclone spell, to interrupt it.
.' When The North Wind is dazed, go to 64.6,46.9
.' Click the Horn of Elemental Fury |tip It looks like a spiral white horn sitting on the ground.
.' Restore the True Timeline |q 13058/1
step
goto 65.7,51.4
.talk 30381
..turnin 13058
step
goto 56.2,51.3
.talk 30295
..turnin 13057
..accept 13005
..accept 13035
step
goto 57.3,46.7
.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
.' Fight mobs around this area
.kill 7 Iron Sentinel|q 13005/1
.kill 20 Iron Dwarf Assailant|q 13005/2
step
'Fly up into the building to 55.3,43.3|goto 55.3,43.3
.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
.kill Eisenfaust|q 13035/1|tip He's inside this Hall of the Shaper building in the very back of the room.
step
goto 48.6,45.6
.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
.kill Halefnir the Windborn|q 13035/2|tip Standing in the middle of this huge staircase.
step
goto 45,38.1
.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
.kill Duronn the Runewrought|q 13035/3|tip Standing at the bottom of this huge staircase.  Use Earth Shock to interrupt his Reconstruction, which will restore all of his health.
step
goto 56.3,51.4
.talk 30295
..turnin 13005
..turnin 13035
..accept 13047
step
goto 35.9,31.5
.talk 30399
..'Tell him you are with him
.' Witness the Reckoning |q 13047/1
step
goto 36.2,49.4
.talk 29757
..fpath Grom'arsh Crash-Site
step
goto 36.4,49.1
.talk 30247
..accept 13054
..accept 13000
step
goto 37.0,49.5
.talk 30472
..accept 12882
step
goto 37.3,49.7
.talk 29651
..accept 12895
step
goto The Storm Peaks 37.1,49.5
.talk 29944
.home Grom'arsh Crash-Site
step
'Go inside the cave to 48.5,54.3|goto 48.5,54.3
.talk 30469
..turnin 13054
..accept 13055
step
goto 48.3,53.8
.collect 8 Cave Mushroom##42926|q 13055|tip They look like two mushrooms on the ground and are found throughout the cave.
.kill Infesting Jormungars|n
.collect 1 Toxin Gland##42927|q 13055
step
goto 48.5,54.3
.talk 30469
..turnin 13055
..accept 13056
step
'Go deeper into the cave to 48.2,48.1|goto 48.2,48.1
.from Cavedweller Worgs|n
..collect 6 Worg Fur##42510|q 13056
..kill Gimorak|q 13056/1|tip He patrols around the big room.
step
goto 48.5,54.3
.talk 30469
..turnin 13056
step
goto 65.4,60.2
.talk 30105
..turnin 13047
step
goto 36.1,64.1
.' Click the Disturbed Snow pile
..collect Burlap-Wrapped Note##40947|q 12895
step
goto 36.4,49.1
.talk 30247
..turnin 13000
step
goto 37.3,49.7
.talk 29651
..turnin 12895
..accept 12909
step
goto 40.8,51.2
.talk 29855
..turnin 12909
..accept 12910
step
.' Click Frostbite to ride him.
.' Use the abilities on your hotbar to keep the dwarves away from you
.' Track scent to its source |q 12910/1
step
goto 48.5,60.8
.kill Tracker Thulin|q 12910/1|tip He's sitting on the ground inside this small cave.
.collect Brann's Communicator##40971|q 12920,12926,12927,13416,12928
step
'Use Brann's Communicator in your bags|use Brann's Communicator##40971
.talk 29579
..turnin 12910
..accept 12913
step
goto 37.3,49.7
.talk 29937
..turnin 12913
..accept 12917
step
goto 28.5,48.5
.' Kill Stormriders around this area, they drop Voices of the Wind and Relics of Ulduar.
..collect 5 Voice of the Wind##41514|q 12917
..collect 10 Relic of Ulduar##42780|q 12882
step
goto 37.0,49.5
.talk 30472
..turnin 12882
step
goto 37.3,49.7
.talk 29937
..turnin 12917
step
goto 37.3,49.7
.talk 29651
..accept 12920
step
'Use Brann's Communicator in your bags|use Brann's Communicator##40971
.talk 29579
.' Speak with Brann |q 12920/1
step
goto 37.3,49.7
.talk 29651
..turnin 12920
..accept 12926
step
goto 37.6,43.5
.kill Library Guardians|n
.collect 6 Inventor's Disk Fragment##41130|n
.' Click the Inventor's Disk Fragments in your bags to combine them|use Inventor's Disk Fragment##41130
.get The Inventor's Disk|q 12926/1
step
..'Click Brann's Communicator|use Brann's Communicator##40971
..talk 29579
..turnin 12926
..accept 12927
step
goto 38.5,44.2
.' Use The Inventor's Disk on Databanks|use The Inventor's Disk##41179|tip They look like floating round star things.
.' Gather 7 Hidden Data |q 12927/1
step
'Use Brann's Communicator in your bags|use Brann's Communicator##40971
.talk 29579
..turnin 12927
..accept 13416
step
goto 37.4,46.8
.' Click the Inventor's Library Console|tip Inside the building, all the way at the end of the hall.
..turnin 13416
..accept 12928
step
'Click the Charged Disk in your bags|use Charged Disk##44704
.kill Archivist Mechaton that spawns|n
.get Norgannon's Shell|q 12928/1
step
'Use Brann's Communicator in your bags|use Brann's Communicator##40971
.talk 29579
..turnin 12928
..accept 13273
..accept 12929
step
goto 59.2,51.5
.' Click Prospector Soren's Maps |tip It looks like a tan scroll laying on a wooden box, next to a bonfire.
.get Prospector Soren's Maps |q 13273/2
step
goto 59.8,52.6
.' Click Prospector Khrona's Notes |tip It looks like an open book laying on a wooden box, next to a tent.
.get Prospector Khrona's Notes |q 13273/1
step
'Use Brann's Communicator in your bags|use Brann's Communicator##40971
.talk 29579
..turnin 13273
..accept 13274
step
'The entrance to the big round metal door starts here |goto 56.5,58.5,0.5 |c |tip It's a big metal hole on in the side of the mountain.
step
goto 56.4,52.1
.from Athan##31798
.get Norgannon's Core |q 13274/1
step
'Use Brann's Communicator in your bags|use Brann's Communicator##40971
.talk 29579
..turnin 13274
..accept 13285
step
'Go outside |goto 56.5,58.5,0.5 |c
step
goto 45.5,49.5
.talk 31810
..' Tell him you're ready to make the keystone
.' Help Brann Create the Keystone |q 13285/1
step
goto 37.3,49.7
.talk 29651
..turnin 13285
step
goto 30.6,36.3
.talk 29950
..fpath Bouldercrag's Refuge
step
'Go inside the building to 31.4,38.1|goto 31.4,38.1
.talk 29801
..turnin 12929
..accept 12930
step
goto 28.9,36.7
.from Stormforged Raider##29377+
.get 5 Frostweave Cloth |q 12930/2
step
goto 28.3,29.4
.' Click the Enchanted Earth|tip They look like big black spikes of rock coming out of the ground at the bottom of this cliff, near the water and all along the cliff side.
.get 7 Enchanted Earth|q 12930/1
step
'Go inside the building to 31.4,38.1|goto 31.4,38.1
.talk 29801
..turnin 12930
..accept 12931
..accept 12937
step
goto The Storm Peaks 30.9,37.3
.talk 29963
.home Bouldercrag's Refuge
step
goto 28.1,36.7
.from Stormforged Raiders##29377+, Stormforged Reavers##29382+
.kill 10 Stormforged Attacker |q 12931/1
.' Use your Telluric Poultice on Fallen Earthen Defenders |use Telluric Poultice##41988
.' Heal 8 Fallen Earthen Defenders |q 12937/1
step
'Go inside the building to 31.4,38.1|goto 31.4,38.1
.talk 29801
..turnin 12931
..turnin 12937
..accept 12957
..accept 12964
step
'Go inside the mine to 27.5,49.7|goto 27.5,49.7
.kill 3 Stormforged Taskmaster|q 12957/2
.talk 29384
.' Attempt to free 8 Captive Mechagnomes |q 12957/1
.' Click Ore Carts|tip They look like carts with ore in them.
.get 5 Dark Ore Sample|q 12964/1
step
'Go outside and inside the building to 31.4,38.1|goto 31.4,38.1
.talk 29801
..turnin 12957
..turnin 12964
..accept 12965
step
goto 31.3,38.2
.talk 30152
..accept 12978
step
goto 24,42.6
.' Right-click Loken's Fury|tip It looks like a glowing ball on a pedestal inside this building.
.' Destroy Loken's Fury |q 12965/1
step
goto 26.2,47.7
.' Right-click Loken's Power|tip It looks like a glowing ball on a pedestal inside this building.
.' Destroy Loken's Power |q 12965/2
step
goto 24.6,48.4
.' Right-click Loken's Favor|tip It looks like a glowing ball on a pedestal inside this building.
.' Destroy Loken's Favor |q 12965/3
step
goto 25,42.9
.from Stormforged War Golem##29380+, Stormforged Champion##29370+, Stormforged Magus##29374+
.kill 10 Nidavelir Stormforged|q 12978/1
.from Stormforged War Golem##29380+
.collect 1 Dark Armor Plate##42203|n
.' Click the Dark Armor Plate in your bags |use Dark Armor Plate##42203
..accept 12979
step
goto 28.7,43.3
.from Stormforged War Golem##29380+
..get 4 Dark Armor Sample |q 12979/1
step
'Go inside the building to 31.4,38.1|goto 31.4,38.1
.talk 29801
..turnin 12965
step
goto 31.3,38.2
.talk 30152
..turnin 12978
..turnin 12979
..accept 12980
step
'The entrance to Mimir's Workshop starts here |goto 33.6,39.6,0.5 |c
step
goto 32.0,40.7
.talk 30190
.' Tell him you found a strange armor plate
.' Investigate the Armor Plate |q 12980/1
step
'Leave Mimir's Workshop |goto 33.6,39.6,0.5 |c
step
goto 31.3,38.2
.talk 30152
..turnin 12980
step
goto 31.4,38.1
.talk 29801
..accept 12984
step
goto 24.4,52.1
.' Use Bouldercrag's War Horn inside this building near Valduran the Stormborn |use Bouldercrag's War Horn##42419
.' Help fight Valduran the Stormborn
.kill Valduran the Stormborn |q 12984/1
step
goto 31.4,38.1
.talk 29801
..turnin 12984
..accept 12988
step
goto 31.3,38.2
.talk 30152
..accept 12991
step
goto 29.0,45.8
.' Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441 |tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
.' Damage the North Lightning Forge |q 12988/1
step
goto 29.5,45.9
.' Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441 |tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
.' Damage the Central Lightning Forge |q 12988/2
step
goto 30.2,46.1
.' Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441 |tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
.' Damage the South Lightning Forge |q 12988/3
step
goto 30.0,46.3
.kill 10 Stormforged Artificer |q 12991/1
step
goto 31.4,38.1
.talk 29801
..turnin 12988
step
goto 31.3,38.2
.talk 30152
..turnin 12991
step
goto 31.4,38.1
.talk 29801
..accept 12993
step
goto 28.9,44.1
.' Click the Colossus Attack Specs |tip It looks like a white scroll laying on a small square metal table.
.get Click the Colossus Attack Specs |q 12993/1
step
goto 29.9,45.8
.' Click the Colossus Defense Specs |tip It looks like a white scroll laying on an anvil under a white canopy.
.get Click the Colossus Defense Specs |q 12993/2
step
goto 31.4,38.1
.talk 29801
..turnin 12993
..accept 12998
step
'The entrance to the big round metal door starts here |goto 32.4,63.9,0.5 |c |tip It's a big metal hole on in the side of the mountain.
step
goto 36.2,60.9
.' Click the Heart of the Storm |tip Enter the big round metal door and fly down into the hallway, then follow the hallway to this spot.  It looks like a big blue orb, sitting in a three-pronged metal stand.
.' Attempt to Secure the Heart of the Storm |q 12998/1
step
'Go outside |goto 32.4,63.9,0.5 |c
step
goto 31.4,38.1
.talk 29801
..turnin 12998
..accept 13007
step
goto 27.2,35.9
.' Click the Jormungar Control Orb |tip It looks like a white glowing ball floating with a golden ring around it.
.' Start controlling a Jormungar |invehicle |c |q 13007
step
goto 27.2,42.0
.' In order to move as the Jormungar, use the Submerge ability on your hotbar.  When you want to come back up to the surface, use the Emerge ability while submerged underground.
.kill Iron Colossus |q 13007/1 |tip In order to kill the Iron Colossus, simply spam your Jormungar Strike and Acid Breath abilities when the Iron Colossus is close to you.  When he jumps up to do a ground slam, quickly use your Submerge ability and run away from the Iron Colossus.  Do not try to get behind him, as well will just spin around and ground slam you.  Repeat this process
step
'Click the red arrow button on your hotbar to stop controlling the Jormungar |outvehicle |c |q 13007
step
goto 31.4,38.1
.talk 29801
..turnin 13007
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\The Storm Peaks\\Dun Niffelem (The Sons of Hodir) Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests in the Brunnhildar Village region of The Storm Peaks.
description If you are not Revered with The Sons of Hodir, you will not be able to accept some of the quests in this guide section.
description To become Revered with The Sons of Hodir, use the The Sons of Hodir (Friendly), The Sons of Hodir (Honored) - Pre-Quest,
description and The Sons of Hodir (Honored) guide sections in the Reputation section of the Dailies guide.
daily
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
goto 63.2,62.9
.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
..turnin 12981
step
goto 64.1,65.1
.' Click Hodir's Horn|tip It's a huge bone war horn.
..turnin 12977
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\The Storm Peaks\\K-3 and Brunnhildar Village Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests in the Brunnhildar Village region of The Storm Peaks.
daily
step
label	dailies
goto The Storm Peaks,50.9,65.6
.talk 29796
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..accept 13424 |or
..accept 13423 |or
..accept 13422 |or
..accept 13425 |or
step
goto 49.4,67.6
.' Use your Reins of the Icemaw Matriarch inside The Pit of the Fang to ride a bear|use Reins of the Icemaw Matriarch##42499
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
'You have completed this daily guide today. You can do more dailies tomorrow.
.' Click here to return to the beginning of the guide. |confirm
|next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Zul'Drak\\The Argent Stand Dailies with Pre-Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests in the The Argent Stand region of Zul'Drak.
step
'Proceeding to proper section |next |only if default
'Proceeding to proper section |next |only if completedq(12596)
step
goto Zul'Drak,39.5,66.9
.talk 28059
..accept 12740
step
goto 38.4,67.1
.' Use your Crusader Parachute on Argent Shieldmen and Argent Crusaders |use Crusader Parachute##39615 |tip It won't work on all of them.
.' Equip 10 Argent forces with a parachute |q 12740/1
step
goto 39.5,66.9
.talk 28059
..turnin 12740
step
goto 40.3,66.6
.talk 28039
..accept 12596
step
goto 35,52.1
.talk 28205
..accept 12557
step
'Go into the 2 rooms next to you:
.' They are items on shelves that you can click
.' Click a Muddy Mire Maggot and get it |q 12557/1 |tip Muddy Mide Maggots look like an open bag of grain on the ground.
.' Click a Withered Batwing and get it |q 12557/2 |tip Withered Batwings looks like bone wings.
.' Click a Chilled Serpent Mucus and get it |q 12557/4 |tip Chilled Serpent Mucus looks like a skinny green vial.
.' Click an Amberseed and get it |q 12557/3 |tip Amberseeds look like spiked potatoes.
step
goto 35,52.1
.talk 28205
..turnin 12557
.' Complete Alchemist Finklestein's task |q 12596/4
step
goto 48.2,63.9
.talk 28043
..accept 12599
step
goto 46.9,61.4
.' Click Dead Thornwoods|tip They look like curved thorny roots coming out of the water around this area.
.get 20 Dead Thornwood|q 12599/1
step
goto 48.2,63.9
.talk 28043
..turnin 12599
.' Complete Captain Grondel's Task |q 12596/3
step
goto 48.8,78.9
.talk 28042
..accept 12597
step
goto 44.9,79.5
.' Click the Mature Water-Poppy plants |tip They look like tall white-leaved plants with purple bulbs at the top.
.get 5 Mature Water-Poppy|q 12597/1
step
goto 48.8,78.9
.talk 28042
..turnin 12597
.' Complete Captain Brandon's Task |q 12596/1
step
goto 58.1,72.4
.talk 28044
..accept 12598
step
goto 53.4,68.7
.' Use your High Impact Grenade next to Nerubian Tunnels |use High Impact Grenade##38574 |tip They look like squarish pyramid dirt mounds around this area.
.' Seal 5 Nerubian Tunnels |q 12598/1
step
goto 58.1,72.4
.talk 28044
..turnin 12598
.' Complete Captain Rupert's Task |q 12596/2
step
goto 40.3,66.6
.talk 28039
..turnin 12596
daily
step
label	dailies
'The Zul'Drak daily quests are timed, so having an epic flying mount will help you get them done a lot faster and easier.  You will receive 650 extra Argent Crusade reputation and 18 extra gold by completing these quests within 20 minutes.
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
step
goto 40.3,66.6
.talk 28039
.accept 12604 |instant |tip You can only get this quest if you complete the Troll Patrol daily in under 20 minutes.
step
'You have completed this daily guide today. You can do more dailies tomorrow.
.' Click here to return to the beginning of the guide. |confirm
|next dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Speed Gold Runs\\Level 80 Dailies Speed Gold Run (No ATG Dailies)",[[
author support@zygorguides.com
description This guide section will walk you through a 25 daily quest speed gold run at level 80,
description without including any Argent Tournament Grounds dailies.
description To be able to complete all the quests in this guide section, you must have completed
description the The Storm Peaks Full Zone Guide (Includes Pre-Quests), The Sons of Hodir Reputation (Honored),
description and Icecrown Full Zone Quest Path (Includes Regular Dailies Pre-Quests) guide sections.
daily
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
'Orgrim's Hammer flies in a triangular pattern using these points:
.' Point 1: [60.6,34.9]
.' Point 2: [68.0,52.5]
.' Point 3: [68.9,27.0]
.'Find Orgrim's Hammer flying around in the sky|tip On you world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
.talk 29795
..accept 13353
..accept 13365
..accept 13276
step
'On the Orgim's Hammer airship:
.talk 30824
..accept 13331
step
'On the Orgim's Hammer airship:
.talk 32301
..accept 13330
step
'On the Orgim's Hammer airship:
.talk 31261
..accept 13302
step
'On the Orgim's Hammer airship:
.talk 30825
..accept 13261
..accept 13357
step
goto 58.3,46.0
.talk 31834
..accept 13310
step
goto 59.5,45.9
.' Click the Kor'kron Suppression Turret to control the gun on the airplane|invehicle
step
'You will fly off in the airplane:
.' Use your Suppression Charge ability on the cannons on the ground to stun them as you fly around|petaction Suppression Charge
.' Drop 4 Kor'kron Infiltrators |q 13310/1
step
goto 58.3,46.0
.talk 31834
..turnin 13310
step
goto 58.2,45.9
.talk 31833
..accept 13301
step
'Follow the Horde troops up the mountain and help them fight
.'Escort the Horde troops into Ymirheim |q 13301/1|tip At least 4 Horde troops must survive.
step
'The entrance to the cave starts here, go inside the cave|goto 57.0,57.3,0.3|c
step
goto 56.0,57.6
.' Talk to Saronite Mine Slaves
..' Tell them they're free, get out of here!
.' Rescue 10 Saronite Mine Slaves |q 13302/1
step
'Go outside the cave|goto 57.0,57.3,0.3|c
step
goto 57.3,57.0
.from Ymirjar Element Shaper##31267+, Blight Falconer##31262+, Ymirheim Chosen Warrior##31258+
.kill 20 Ymirheim Vrykul|q 13330/1
step
goto 51.9,57.6
.talk 31781
..accept 13283
step
goto 51.9,57.6
.' Click Thunderbomb's Jumpbot to get in the robot|invehicle |q 13283
step
goto 54.9,60.1
.' Use your Jump Jets ability to jump up the mountain to this spot|petaction Jump Jets|tip This spot is the peak of the mountain.
.' Use your Plant Horde Battle Standard ability next to the Ymirheim Peak Skulls|petaction Plant Horde Battle Standard|tip The Ymirheim Peak Skulls look like a big pile of skulls at the peak of the mountain, next to 2 blue flame torch lights.
.' Plant the Horde Battle Standard |q 13283/1
step
'Click the red arrow button on your vehicle hotbar to get out of the robot|script VehicleExit()|outvehicle|c |q 13283
step
goto 51.9,57.6
.talk 31781
..turnin 13283
step
goto 58.3,46.0
.talk 31834
..turnin 13301
step
goto 69.9,64.3
.' Click Abandoned Armor|tip They look like metal armor chestpieces laying on the ground around this area.
.collect 3 Abandoned Armor##43616|q 13261
.' Click Abandoned Helms|tip They look like metal helmets laying on the ground around this area.
.collect 3 Abandoned Helm##43610|q 13261
.' Click Piles of Bones|tip They look like small piles of bones laying on the ground around this area.
.collect 3 Pile of Bones##43609|q 13261
step
goto 68.8,67.5
.' Use Copperclaw's Volatile Oil 3 times|use Copperclaw's Volatile Oil##43608
.' Conduct 3 Field Tests |q 13261/1
step
goto 69.8,62.4
.from Hulking Abomination##31140+
.collect Chilled Abomination Guts|n
.' Use your Abomination Reanimation Kit|use Abomination Reanimation Kit##43968
.' With your control Abomination, go to 69.1,61.6|n
.' Use your Burst at the Seams ability to explode the mobs around this area|petaction Burst at the Seams
.' Keep repeating this process until you:
.' Explode 15 Icy Ghouls |q 13276/1
.' Explode 15 Vicious Geists |q 13276/2
.' Explode 15 Risen Alliance Soldiers |q 13276/3
step
goto 53.9,46.1
.from Bitter Initiate##32238
.collect 3 Orb of Illusion##44246 |q 13353
step
goto 54.3,45.6
.' Use your Orbs of Illusion on Dark Subjugators|use Orb of Illusion##44246
.' Drag and drop 3 Dark Subjugators |q 13353/1
step
goto 49.4,39.3
.' Use your SGM-3 on Skybreaker Recon Fighters |use SGM-3##44212 |tip They look like airplanes flying around this area.
.' Shoot Down 6 Skybreaker Recon Fighters |q 13331/1
step
goto 55.2,29.1
.' Use your Diluted Cult Tonic|use Diluted Cult Tonic##44307|tip This gives you a buff that allows you to collect Tainted Essences from dead cultists in Aldur'thar.  If you lose the buff, use this again.
.from Void Summoner##32259+, Shadow Channeler##32262+
.collect 10 Tainted Essence##44301|n
.' Use a Tainted Essence to combine them|use Tainted Essence##44301
..collect 1 Writhing Mass##44304|q 13357
.from Enslaved Minion##32260+
.' Use your Rod of Siphening on the Enslaved Minion corpses|use Rod of Siphening##44433
.collect 5 Dark Matter##44434|q 13365
step
goto 53.8,33.6
.' Click the Summoning Stone
.' Summon the Dark Messenger |q 13365/1
step
goto 49.1,34.2
.' Use your Writhing Mass next to the big cauldron|use Writhing Mass##44304
.' Banish the Writhing Mass |q 13357/1
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
'Orgrim's Hammer flies in a triangular pattern using these points:
.' Point 1: [60.6,34.9]
.' Point 2: [68.0,52.5]
.' Point 3: [68.9,27.0]
.'Find Orgrim's Hammer flying around in the sky|tip On you world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
.talk 29795
..turnin 13353
..turnin 13365
..turnin 13276
step
'On the Orgim's Hammer airship:
.talk 30824
..turnin 13331
step
'On the Orgim's Hammer airship:
.talk 32301
..turnin 13330
step
'On the Orgim's Hammer airship:
.talk 31261
..turnin 13302
step
'On the Orgim's Hammer airship:
.talk 30825
..turnin 13261
..turnin 13357
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Speed Gold Runs\\Level 80 Dailies Speed Gold Run (With ATG Dailies)",[[
author support@zygorguides.com
description This guide section will walk you through a 25 daily quest speed gold run at level 80.
description To be able to complete all the quests in this guide section, you must have completed
description the The Storm Peaks Full Zone Guide (Includes Pre-Quests), The Sons of Hodir Reputation (Honored),
description and Icecrown Full Zone Quest Path (Includes Regular Dailies Pre-Quests) guide sections.
daily
step
goto Icecrown,76.1,24.1
.talk 34771
.' You will only be able to accept, and turn in, 2 of these 5 daily quests per day:
..accept 14143 |or 2
..accept 14136 |or 2
..accept 14140 |or 2
..accept 14144 |or 2
..accept 14142 |or 2
step
goto 76.1,24.0
.talk 34914
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 14092 |or
..accept 14141 |or
..accept 14145 |or
step
goto 73.8,19.4
.talk 33769
..accept 13813
only DeathKnight
step
goto 73.8,20.1
.talk 33762
..accept 13812 |tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
..accept 13863
only DeathKnight
step
goto 73.6,20.1
.talk 33770
..accept 13814
only DeathKnight
step
goto 69.9,23.3
.talk 33771
..accept 13811
only !DeathKnight
step
goto 70.0,23.4
.talk 33759
..accept 13809 |tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
..accept 13862
only !DeathKnight
step
goto 69.9,23.5
.talk 33763
..accept 13810
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
goto 72.2,22.5
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Orgrimmar Wolf|invehicle |q 13811
only Orc !DeathKnight
step
goto 72.0,22.5
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Darkspear Raptor|invehicle |q 13811
only Troll !DeathKnight
step
goto 71.9,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Thunder Bluff Kodo|invehicle |q 13811
only Tauren !DeathKnight
step
goto 72.1,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Forsaken Warhorse|invehicle |q 13811
only Scourge !DeathKnight
step
goto 72.2,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Silvermoon Hawkstrider|invehicle |q 13811
only BloodElf !DeathKnight
step
goto 71.6,23.8
.' Talk to the riders on mounts around this area
.' Tell them you are ready to fight!
.' Fight and defeat them|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.get 4 Mark of the Champion |q 13811/1
only !DeathKnight
step
'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13811
only !DeathKnight
step
goto 72.2,22.5
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Orgrimmar Wolf|invehicle |q 13814
only Orc DeathKnight
step
goto 72.0,22.5
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Darkspear Raptor|invehicle |q 13814
only Troll DeathKnight
step
goto 71.9,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Thunder Bluff Kodo|invehicle |q 13814
only Tauren DeathKnight
step
goto 72.1,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Forsaken Warhorse|invehicle |q 13814
only Scourge DeathKnight
step
goto 72.2,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Silvermoon Hawkstrider|invehicle |q 13814
only BloodElf DeathKnight
step
goto 71.6,23.8
.' Talk to the riders on mounts around this area
.' Tell them you are ready to fight!
.' Fight and defeat them|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.get 4 Mark of the Champion |q 13814/1
only DeathKnight
step
'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13814
only DeathKnight
step
goto 74.3,10.0
.' Click a Bucket of Fresh Chum |tip They looks like wooden buckets on the deck of this ship.
.collect 6 Fresh Chum##47036 |q 14145
step
goto 74.0,10.5
.' Use the Fresh Chum in your bags |use Fresh Chum##47036
.from North Sea Blue Shark##35061+ |tip They spawn underwater around this area when you use the Fresh Chum.
.get 3 North Sea Shark Meat |q 14145/1
step
goto Hrothgar's Landing,43.6,54.0
.kill 8 Kvaldir Berserker |q 14136/1
.kill 3 Kvaldir Harpooner |q 14136/2
step
goto 43.3,27.5
.' Click Stolen Tallstrider Legs |tip They look like chicken legs laying on objects and on the ground around this area.
.from Kvaldir Mist Binder##34839+, Kvaldir Reaver##34838+
.get 10 Stolen Tallstrider Leg |q 14143/1
step
goto 46.5,32.8
.from Kvaldir Mist Binder##34839+, Kvaldir Reaver##34838+
.' Kill 10 Kvaldir |q 14140/1
step
goto 46.5,32.8
.' Use your Confessor's Prayer Book on Slain Tualiq Villagers |use Confessor's Prayer Book##46870 |tip They look like dead walrus men corpses around this area.
.' Administer 8 Last Rites |q 14144/1
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
.' Click Black Cages |tip They look like big square cages around this area.
.' Rescue 4 Captive Aspirants |q 14142/2
step
goto 64.0,21.5
.from Dark Ritualist##34734+, Dark Zealot##34728+
.collect 1 Black Cage Key##46895 |q 14142
step
goto 60.8,23.2
.' Click the Black Cage |tip It looks like big square cage up on this platform.
.' Rescue Kul the Reckless |q 14142/1
step
goto 64.3,21.4
.from Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
.kill 15 Cult of the Damned member |q 13813/1
only DeathKnight
step
goto 64.3,21.4
.from Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
.kill 15 Cult of the Damned member |q 13810/1
only !DeathKnight
step
'Orgrim's Hammer flies in a triangular pattern using these points:
.' Point 1: 60.6,34.9
.' Point 2: 68.0,52.5
.' Point 3: 68.9,27.0
.'Find Orgrim's Hammer flying around in the sky|tip On you world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
.talk 29795
..accept 13353
..accept 13365
..accept 13276
step
'On the Orgim's Hammer airship:
.talk 30824
..accept 13331
step
'On the Orgim's Hammer airship:
.talk 32301
..accept 13330
step
'On the Orgim's Hammer airship:
.talk 31261
..accept 13302
step
'On the Orgim's Hammer airship:
.talk 30825
..accept 13261
..accept 13357
step
goto 58.3,46.0
.talk 31834
..accept 13310
step
goto 59.5,45.9
.' Click the Kor'kron Suppression Turret to control the gun on the airplane|invehicle
step
'You will fly off in the airplane:
.' Use your Suppression Charge ability on the cannons on the ground to stun them as you fly around|petaction Suppression Charge
.' Drop 4 Kor'kron Infiltrators |q 13310/1
step
goto 58.3,46.0
.talk 31834
..turnin 13310
step
goto 58.2,45.9
.talk 31833
..accept 13301
step
'Follow the Horde troops up the mountain and help them fight
.'Escort the Horde troops into Ymirheim |q 13301/1|tip At least 4 Horde troops must survive.
step
'The entrance to the cave starts here, go inside the cave|goto 57.0,57.3,0.3|c
step
goto 56.0,57.6
.' Talk to Saronite Mine Slaves
..' Tell them they're free, get out of here!
.' Rescue 10 Saronite Mine Slaves |q 13302/1
step
'Go outside the cave|goto 57.0,57.3,0.3|c
step
goto 57.3,57.0
.from Ymirjar Element Shaper##31267+, Blight Falconer##31262+, Ymirheim Chosen Warrior##31258+
.kill 20 Ymirheim Vrykul|q 13330/1
step
goto 51.9,57.6
.talk 31781
..accept 13283
step
goto 51.9,57.6
.' Click Thunderbomb's Jumpbot to get in the robot |invehicle |q 13283
step
goto 54.9,60.1
.' Use your Jump Jets ability to jump up the mountain to this spot|petaction Jump Jets|tip This spot is the peak of the mountain.
.' Use your Plant Horde Battle Standard ability next to the Ymirheim Peak Skulls|petaction Plant Horde Battle Standard|tip The Ymirheim Peak Skulls look like a big pile of skulls at the peak of the mountain, next to 2 blue flame torch lights.
.' Plant the Horde Battle Standard |q 13283/1
step
'Click the red arrow button on your vehicle hotbar to get out of the robot|script VehicleExit()|outvehicle|c |q 13283
step
goto 51.9,57.6
.talk 31781
..turnin 13283
step
goto 58.3,46.0
.talk 31834
..turnin 13301
step
goto 69.9,64.3
.' Click Abandoned Armor|tip They look like metal armor chestpieces laying on the ground around this area.
.collect 3 Abandoned Armor##43616|q 13261
.' Click Abandoned Helms|tip They look like metal helmets laying on the ground around this area.
.collect 3 Abandoned Helm##43610|q 13261
.' Click Piles of Bones|tip They look like small piles of bones laying on the ground around this area.
.collect 3 Pile of Bones##43609|q 13261
step
goto 68.8,67.5
.' Use Copperclaw's Volatile Oil 3 times|use Copperclaw's Volatile Oil##43608
.' Conduct 3 Field Tests |q 13261/1
step
goto 69.8,62.4
.from Hulking Abomination##31140+
.collect Chilled Abomination Guts|n
.' Use your Abomination Reanimation Kit|use Abomination Reanimation Kit##43968
.' With your control Abomination, go to 69.1,61.6|n
.' Use your Burst at the Seams ability to explode the mobs around this area|petaction Burst at the Seams
.' Keep repeating this process until you:
.' Explode 15 Icy Ghouls |q 13276/1
.' Explode 15 Vicious Geists |q 13276/2
.' Explode 15 Risen Alliance Soldiers |q 13276/3
step
goto 53.9,46.1
.from Bitter Initiate##32238
.collect 3 Orb of Illusion##44246 |n
.' Use your Orbs of Illusion on Dark Subjugators|use Orb of Illusion##44246
.' Drag and drop 3 Dark Subjugators |q 13353/1
step
goto 49.4,39.3
.' Use your SGM-3 on Skybreaker Recon Fighters |use SGM-3##44212 |tip They look like airplanes flying around this area.
.' Shoot Down 6 Skybreaker Recon Fighters |q 13331/1
step
goto 51.1,38.4
.' Click Discarded Soul Crystals |tip They look like small blue-glowing crystals laying on the ground around this area.
.collect 6 Discarded Soul Crystal##47035 |n
.' Use your Light-Blessed Relic on Fallen Hero's Spirits |use Light-Blessed Relic##47033
.' Bless 6 Fallen Hero's Spirits |q 14107/1
step
goto 55.2,29.1
.' Use your Diluted Cult Tonic|use Diluted Cult Tonic##44307|tip This gives you a buff that allows you to collect Tainted Essences from dead cultists in Aldur'thar.  If you lose the buff, use this again.
.from Void Summoner##32259+, Shadow Channeler##32262+
.collect 10 Tainted Essence##44301|n
.' Use a Tainted Essence to combine them|use Tainted Essence##44301
..collect 1 Writhing Mass##44304|q 13357
.from Enslaved Minion##32260+
.' Use your Rod of Siphening on the Enslaved Minion corpses|use Rod of Siphening##44433
.collect 5 Dark Matter##44434|q 13365
step
goto 53.8,33.6
.' Click the Summoning Stone
.' Summon the Dark Messenger |q 13365/1
step
goto 49.1,34.2
.' Use your Writhing Mass next to the big cauldron|use Writhing Mass##44304
.' Banish the Writhing Mass |q 13357/1
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
.' This is how this fight will happen: |tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do a lot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
.kill Chillmaw |q 13812/1 |tip Chillmaw is a big skeletal dragon that flies around this area.
.kill 3 Cultist Bombardier |q 13812/2
only DeathKnight
step
goto 48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13863
only DeathKnight
step
goto 50.1,74.8
.kill 3 Boneguard Commander |q 13863/1 |tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
only DeathKnight
step
goto 48.9,71.4
'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13863
only DeathKnight
step
'You will need to get a group of at least 3 people to do the daily quest in the next step of the guide.  Find a group, it should be pretty easy because there are always other players doing this quest.
only !DeathKnight
step
goto 44.1,32.6
.' This is how this fight will happen: |tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do a lot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
.kill Chillmaw |q 13809/1 |tip Chillmaw is a big skeletal dragon that flies around this area.
.kill 3 Cultist Bombardier |q 13809/2
only !DeathKnight
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13862
only !DeathKnight
step
goto 50.1,74.8
.kill 3 Boneguard Commander |q 13862/1 |tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
only !DeathKnight
step
goto 48.9,71.4
'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13862
only !DeathKnight
step
'Orgrim's Hammer flies in a triangular pattern using these points:
.' Point 1: 60.6,34.9
.' Point 2: 68.0,52.5
.' Point 3: 68.9,27.0
.'Find Orgrim's Hammer flying around in the sky|tip On you world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
.talk 29795
..turnin 13353
..turnin 13365
..turnin 13276
step
'On the Orgim's Hammer airship:
.talk 30824
..turnin 13331
step
'On the Orgim's Hammer airship:
.talk 32301
..turnin 13330
step
'On the Orgim's Hammer airship:
.talk 31261
..turnin 13302
step
'On the Orgim's Hammer airship:
.talk 30825
..turnin 13261
..turnin 13357
step
goto 69.9,23.3
.talk 33771
..turnin 13811
only !DeathKnight
step
goto 70.0,23.4
.talk 33759
..turnin 13809
..turnin 13862
only !DeathKnight
step
goto 69.9,23.5
.talk 33763
..turnin 13810
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
..turnin 13813
only DeathKnight
step
goto 73.8,20.1
.talk 33762
..turnin 13812
..turnin 13863
only DeathKnight
step
goto 73.6,20.1
.talk 33770
..turnin 13814
only DeathKnight
step
goto The Storm Peaks,40.5,53.3
.' Use your Earthshaker Drum next to the piles of snow on the ground |use Earthshaker Drum##46893
.from Deep Jormungar##34920 |tip They spawn after using your Earthshaker Drum next to the piles of snow.
.get 4 Jormungar Egg Sac |q 14092/1
step
goto The Storm Peaks,42.8,81.3
.' Use your Weighted Net on Snowblind Followers |use Weighted Net##46885
.' Capture 8 Snowblind Followers |q 14141/1
step
goto Icecrown,76.1,24.1
.talk 34771
.' You will only be able to accept, and turn in, 2 of these 5 daily quests per day:
..turnin 14143
..turnin 14136
..turnin 14140
..turnin 14144
..turnin 14142
step
goto 76.1,24.0
.talk 34914
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 14092
..turnin 14141
..turnin 14145
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Outland (60 - 70)\\Netherdrake Mount Guide\\Netherwing Reputation (Neutral)", [[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Outland (60 - 70)\\Netherdrake Mount Guide\\Netherwing Reputation (Friendly)", [[
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
'Go inside the mine to 71.6,87.6
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
'Go inside the mine and follow the path to 73.0,82.2
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
.'If you want to get the 10 Knothide Leather by skinning, kill the mobs around 60.4,45.2
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Outland (60 - 70)\\Netherdrake Mount Guide\\Netherwing Reputation (Honored)", [[
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
step
'Repeat this process daily until you are Revered with the Netherwing faction.  Also, you can use the Netherwing Egg Optimized Path guide section to find Netherwing Eggs and turn them in for 250 Netherwing reputation per Netherwing Egg.
.' You have reached the end of the dailies guide. Click here to return to the beginning of the guide. |confirm
|next hub
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Outland (60 - 70)\\Netherdrake Mount Guide\\Netherwing Reputation (Revered)", [[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Outland (60 - 70)\\Netherdrake Mount Guide\\Netherwing Reputation (Exalted) - Getting Your Netherdrake!", [[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Outland (60 - 70)\\Netherdrake Mount Guide\\Netherwing Egg Hunting - Optimized Path", [[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Reputation\\Argent Crusade", [[
author support@zygorguides.com
description This guide section will tell you the various ways you can gain reputation with the Argent Crusade faction with this guide.
startlevel 80
step
map Icecrown
'To gain reputation with the Argent Crusade faction:
.' Complete the Icecrown Full Zone Quest Path guide section in the Icecrown section.
.' Complete the Slaves of Saronite daily quest in the Orgrim's Hammer / Ymirheim / Aldur'Thar Dailies guide section in the Icecrown section.  |tip Do this daily, if you'd like.
.' Complete the Zul'Drak Pre-Quests guide section in the Zul'Drak section.
.' Complete the The Argent Stand Dailies guide section in the Zul'Drak section.  |tip Do this daily, if you'd like.
.' Complete the ATG Champion Rank Dailies - Non-Death Knight Only guide section in the Icecrown section.  |tip Do this daily, if you'd like.  You can only do this if you are not a Death Knight.
.' Once you earn Friendly reputation with the Argent Crusade faction, you can buy the Tabard of the Argent Crusade. |tip Wear the Tabard of the Argent Crusade and use the Dungeon Finder tool to complete random Lich King Heroics.  You will gain reputation with the Argent Crusade for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
..' You can buy the Tabard of the Argent Crusade by talking to Veteran Crusader Aliocha Segard at [Icecrown 87.5,75.6]
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Reputation\\Kirin Tor", [[
author support@zygorguides.com
description This guide section will tell you the various ways you can gain reputation with the Kirin Tor faction with this guide.
startlevel 80
step
map Dalaran
'To gain reputation with the Kirin Tor faction:
.' Complete the Cooking Dailies guide section in the Dalaran section. |tip Do this daily, if you'd like.
.' Complete the Fishing Dailies guide section in the Dalaran section. |tip Do this daily, if you'd like.
.' Complete the Jewelcrafting Dailies guide section in the Dalaran section. |tip Do this daily, if you'd like.
.' Once you earn Friendly reputation with the Kirin Tor faction, you can buy the Tabard of the Kirin Tor. |tip Wear the Tabard of the Kirin Tor and use the Dungeon Finder tool to complete random Lich King Heroics.  You will gain reputation with the Kirin Tor for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
..' You can buy the Tabard of the Argent Crusade by talking to Archmage Alvareaux at [Dalaran 25.2,47.8]
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Reputation\\Knights of the Ebon Blade", [[
author support@zygorguides.com
description This guide section will tell you the various ways you can gain reputation with the Knights of the Ebon Blade faction with this guide.
startlevel 80
step
map Icecrown
'To gain reputation with the Knights of the Ebon Blade faction:
.' Complete the Icecrown Full Zone Quest Path guide section in the Icecrown section.
.' Complete the Shadowvault Dailies guide section in the Icecrown section. |tip Do this daily, if you'd like.
.' Complete the Death's Rise Dailies guide section in the Icecrown section. |tip Do this daily, if you'd like.
.' Complete the ATG Champion Rank Dailies - Death Knight Only guide section in the Icecrown section. |tip Do this daily, if you'd like.  You can only do this if you are a Death Knight.
.' Once you earn Friendly reputation with the Knights of the Ebon Blade faction, you can buy the Tabard of the Ebon Blade. |tip Wear the Tabard of the Ebon Blade and use the Dungeon Finder tool to complete random Lich King Heroics.  You will gain reputation with the Knights of the Ebon Blade for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
..' You can buy the Tabard of the Ebon Blade by talking to Duchess Mynx at [Icecrown 43.4,20.6]
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Reputation\\The Kalu'ak", [[
author support@zygorguides.com
description This guide section will tell you the various ways you can gain reputation with The Kalu'ak faction with this guide.
startlevel 80
step
'To gain reputation with The Kalu'ak faction:
.' Complete the Kaskala Dailies guide section in the Borean Tundra section. |tip Do this daily, if you'd like.
.' Complete the Moa'ki Harbor Dailies guide section in the Dragonblight section. |tip Do this daily, if you'd like.
.' Complete the Kamagua Dailies guide section in the Howling Fjord section. |tip Do this daily, if you'd like.
.' There is no tabard for The Kalu'ak available at this time.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Reputation\\The Sons of Hodir", [[
author support@zygorguides.com
description This guide section will tell you the various ways you can gain reputation with The Sons of Hodir faction with this guide.
startlevel 80
step
'To gain reputation with The Sons of Hodir faction:
.' Complete The Storm Peaks Full Zone Quest Path guide section in The Storm Peaks section.
.' Complete The Sons of Hodir Reputation guide sections in The Storm Peaks section. |tip Do this daily, if you'd like.
.' There is no tabard for The Sons of Hodir available at this time.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Reputation\\The Wyrmrest Accord", [[
author support@zygorguides.com
description This guide section will tell you the various ways you can gain reputation with The Wyrmrest Accord faction with this guide.
startlevel 80
step
map Dragonblight
'To gain reputation with The Wyrmrest Accord faction:
.' Complete the Coldarra Dailies guide section in the Borean Tundra section. |tip Do this daily, if you'd like.
.' Complete the Wyrmrest Temple Dailies guide section in the Dragonblight section. |tip Do this daily, if you'd like.
.' Once you earn Friendly reputation with The Wyrmrest Accord faction, you can buy the Tabard of the Wyrmrest Accord. |tip Wear the Tabard of the Wyrmrest Accord and use the Dungeon Finder tool to complete random Lich King Heroics.  You will gain reputation with The Wyrmrest Accord for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
..' You can buy the Tabard of the Wyrmrest Accord by talking to Cielstrasza at [Dragonblight 60.0,53.0]
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Reputation\\The Hand of Vengeance", [[
author support@zygorguides.com
description This guide section will tell you the various ways you can gain reputation with The Hand of Vengeance faction with this guide.
startlevel 80
step
'To gain reputation with The Hand of Vengeance faction:3
.' Complete the ATG Champion Rank Dailies - Death Knight Only guide section in the Icecrown section. |tip Do this daily, if you'd like.  You can only do this if you are a Death Knight.
.' Complete the ATG Champion Rank Dailies - Non-Death Knight Only guide section in the Icecrown section. |tip Do this daily, if you'd like.  You can only do this if you are not a Death Knight.
.' Complete the Orgrim's Hammer / Ymirheim / Aldur'Thar Dailies guide section in the Icecrown section. |tip Do this daily, if you'd like.  All of the daily quests in the Orgrim's Hammer / Ymirheim / Aldur'Thar Dailies guide section won't give The Hand of Vengeance reputation, but many will.
.' There is no tabard for The Hand of Vengeance available at this time. |tip Although there is no tabard for The Hand of Vengeance at this time, you can still gain reputation with The Hand of Vengeance by using the Dungeon Finder tool to complete random Lich King Heroics while not wearing any tabard at all.  You will gain reputation with The Hand of Vengeance for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Reputation\\The Sunreavers", [[
author support@zygorguides.com
description This guide section will tell you the various ways you can gain reputation with The Sunreavers faction with this guide.
startlevel 80
step
'To gain reputation with The Sunreavers faction:
.' Complete the Argent Tournament Grounds Dailies guide sections in the Icecrown section. |tip Do these daily, if you'd like.
.' Complete the guide sections in the Crusader Title section in the Icecrown section. |tip Do these daily, if you'd like.
.' There is no tabard for The Sunreavers available at this time. |tip Although there is no tabard for The Sunreavers at this time, you can still gain reputation with The Sunreavers by using the Dungeon Finder tool to complete random Lich King Heroics while not wearing any tabard at all.  You will gain reputation with The Sunreavers for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Reputation\\The Taunka", [[
author support@zygorguides.com
description This guide section will tell you the various ways you can gain reputation with The Taunka faction with this guide.
startlevel 80
step
'To gain reputation with The Taunka faction:
.' Complete The Storm Peaks Full Zone Quest Path guide section in The Storm Peaks section.
.' There is no tabard for The Taunka available at this time. |tip Although there is no tabard for The Taunka at this time, you can still gain reputation with The Taunka by using the Dungeon Finder tool to complete random Lich King Heroics while not wearing any tabard at all.  You will gain reputation with The Taunka for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Reputation\\Warsong Offensive", [[
author support@zygorguides.com
description This guide section will tell you the various ways you can gain reputation with the Warsong Offensive faction with this guide.
startlevel 80
step
'To gain reputation with the Warsong Offensive faction:
.' Complete the Blackriver Logging Camp Dailies guide section in the Grizzly Hills section. |tip Do this daily, if you'd like.
.' Complete the Blue Sky Logging Grounds Dailies guide section in the Grizzly Hills section. |tip Do this daily, if you'd like.
.' Complete the Orgrim's Hammer / Ymirheim / Aldur'Thar Dailies guide section in the Icecrown section. |tip Do this daily, if you'd like.  All of the daily quests in the Orgrim's Hammer / Ymirheim / Aldur'Thar Dailies guide section won't give Warsong Offensive reputation, but many will.
.' There is no tabard for the Warsong Offensive available at this time. |tip Although there is no tabard for the Warsong Offensive at this time, you can still gain reputation with the Warsong Offensive by using the Dungeon Finder tool to complete random Lich King Heroics while not wearing any tabard at all.  You will gain reputation with the Warsong Offensive for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Reputation\\Frenzyheart Tribe", [[
author support@zygorguides.com
description This guide section will tell you the various ways you can gain reputation with the Frenzyheart Tribe faction with this guide.
startlevel 80
step
'To gain reputation with the Frenzyheart Tribe faction:
.' Complete the Frenzyheart Tribe Dailies guide section in the Sholazar Basin section. |tip Do this daily, if you'd like.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Northrend (70 - 80)\\Reputation\\The Oracles", [[
author support@zygorguides.com
description This guide section will tell you the various ways you can gain reputation with The Oracles faction with this guide.
startlevel 80
step
'To gain reputation with The Oracles faction:
.' Complete The Oracles Dailies guide section in the Sholazar Basin section. |tip Do this daily, if you'd like.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Events Guides\\Lunar Festival (January 22nd - February 12th)\\Lunar Festival Main Questline",[[
author support@zygorguides.com
description This guide section will walk you through completing the main questline for the Lunar Festival event.
condition suggested isevent('Lunar Festival')
#include "H_Lunar_Festival_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Events Guides\\Lunar Festival (January 22nd - February 12th)\\Lunar Festival Optimized Elders Path",[[
author support@zygorguides.com
description This guide section will walk you through an optimized path for honoring the elders
description that are spread out all over Azeroth for the Lunar Festival event.
condition suggested isevent('Lunar Festival')
#include "H_Lunar_Festival_Elders"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Events Guides\\Lunar Festival (January 22nd - February 12th)\\Lunar Festival Achievement",[[
author support@zygorguides.com
description This guide section will walk you through completing the Achievement for the Lunar Festival event.
condition suggested isevent('Lunar Festival')
#include "H_Lunar_Festival_Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Events Guides\\Love is in the Air (February 6th - 20th)\\Love is in the Air Main Questline",[[
author support@zygorguides.com
description This guide section will walk you through completing the main questline for the Love is in the Air event.
condition suggested isevent('Love is in the Air')
#include "H_Love_Is_In_The_Air_Main_Questline"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Events Guides\\Love is in the Air (February 6th - 20th)\\Love is in the Air Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the Love is in the Air event daily quests.
condition suggested isevent('Love is in the Air')
#include "H_Love_Is_In_The_Air_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Events Guides\\Love is in the Air (February 6th - 20th)\\Love is in the Air Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the Love is in the Air event achievements.
condition suggested isevent('Love is in the Air')
#include "H_Love_Is_In_The_Air_Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Events Guides\\Noblegarden (April 1st - April 8th)\\Noblegarden Quests and Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests and dailies for the Noblegarden event.
condition suggested isevent('Noblegarden')
daily
#include "H_Noblegarden_Quests_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Events Guides\\Noblegarden (April 1st - April 8th)\\Noblegarden Achievements",[[
author support@zygorguides.com
description This guide section will walk you through getting all 12 achievements for the Noblegarden event.
condition suggested isevent('Noblegarden')
#include "H_Noblegarden_Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Events Guides\\Children's Week (April 29th - May 6th)\\Children's Week Orgrimmar Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the Orgrimmar questline for the Children's Week event.
condition suggested isevent("Children's Week")
startlevel 10
#include "H_Children's_Week_Ogrimmar_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Events Guides\\Children's Week (April 29th - May 6th)\\Children's Week Shattrath Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the Shattrath questline for the Children's Week event.
condition suggested isevent("Children's Week")
startlevel 60
#include "H_Children's_Week_Shattrath_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Events Guides\\Children's Week (April 29th - May 6th)\\Children's Week Dalaran Oracles Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the Dalaran Oracles questline for the Children's Week event.
condition suggested isevent("Children's Week")
startlevel 70
#include "H_Children's_Week_Oracle_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Events Guides\\Children's Week (April 29th - May 6th)\\Children's Week Dalaran Wolvar Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the Dalaran Wolvar questline for the Children's Week event.
condition suggested isevent("Children's Week")
startlevel 70
#include "H_Children's_Week_Wolvar_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Events Guides\\Children's Week (April 29th - May 6th)\\Children's Week Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the Achievements for the Children's Week event.
condition suggested isevent("Children's Week")
startlevel 10
#include "H_Children's_Week_Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Events Guides\\Midsummer Fire Festival (June 21st - July 5th)\\Midsummer Fire Festival Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Midsummer Fire Festival event.
condition suggested isevent('Midsummer Fire Festival')
startlevel 80
#include "Midsummer_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Events Guides\\Midsummer Fire Festival (June 21st - July 5th)\\Midsummer Fire Festival Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Midsummer Fire Festival event.
condition suggested isevent('Midsummer Fire Festival')
startlevel 80
#include "Midsummer_Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Events Guides\\Midsummer Fire Festival (June 21st - July 4th)\\Midsummer Fire Festival Quests (Pandaria)",[[
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
..turnin 32499
step
goto Valley of the Four Winds 51.8,51.4
.talk 69550
..accept 32502
step
goto Valley of the Four Winds 51.8,51.4
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
goto Townlong Steppes 71.5,56.3
.talk 69536
..accept 32501
step
goto Townlong Steppes 71.5,56.3
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
goto Vale of Eternal Blossoms 77.8,33.9
.talk 69551
..accept 32509 |instant
step
goto Vale of Eternal Blossoms 79.7,37.1
.click Alliance Bonfire
..accept 32503 |instant
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Events Guides\\Harvest Festival (September 13th - September 20th)\\Harvest Festival Quest",[[
author support@zygorguides.com
description This guide section will walk you through completing the Harvest Festival event.
condition suggested isevent('Harvest Festival')
step
goto Durotar,46.2,15.1
.talk 15012
..accept 8150
step
goto Ashenvale 82.9,79.1
.' Use Grom's Tribute in front of Grom's statue |use Grom's Tribute##19851
.' Place a tribute at Grom's Tomb |q 8150/1
step
goto Durotar,46.2,15.1
.talk 15012
..turnin 8150
step
goto Durotar,46.4,14.9
.' You can click special food items on the table.
.' In 2 days You will also get an item called Bounty of the Harvest in the mail.
|confirm
step
'Congratulations, you've completed the Harvest Festival!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Events Guides\\Brewfest (September 20th - October 6th)\\Brewfest Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Brewfest event.
condition suggested isevent('Brewfest')
step
#include "H_Brewfest_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Events Guides\\Brewfest (September 20th - October 6th)\\Brewfest Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests for the Brewfest event.
condition suggested isevent('Brewfest')
step
#include "H_Brewfest_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Events Guides\\Brewfest (September 20th - October 6th)\\Brewfest Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Brewfest event.
condition suggested isevent('Brewfest')
step
#include "H_Brewfest_Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Events Guides\\Hallow's End (October 18th - October 31st)\\Hallow's End Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Hallow's End event.
condition suggested isevent("Hallow's End")
#include "Hallows_End_Quests_Horde"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Events Guides\\Hallow's End (October 18th - October 31st)\\Hallow's End Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests for the Hallow's End event.
condition suggested isevent("Hallow's End")
daily
#include "Hallows_End_Dailies_Horde"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Events Guides\\Hallow's End (October 18th - October 31st)\\Hallow's End Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Hallow's End event.
condition suggested isevent("Hallow's End")
#include "Hallows_End_Achievements_Horde"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Events Guides\\Hallow's End (October 18th - October 31st)\\Hallow's End Achievements (Pandaria)",[[
description Visit all the Candy Buckets in Pandaria
condition end achieved(7602)
#include "Hallows_End_Achievements_Horde_Pandaria"
step
'Congraulations, you now have the Tricks and Treats of Pandaria achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Events Guides\\Pilgrim's Bounty (November 25th - December 2nd)\\Pilgrim's Bounty Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Pilgrim's Bounty event, as well as getting your Cooking skill from 1-300.
condition suggested isevent("Pilgrim's Bounty")
#include "Pilgrims_Bounty_Quests_Horde"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Events Guides\\Pilgrim's Bounty (November 25th - December 2nd)\\Pilgrim's Bounty Achievements and Dailies",[[
condition suggested isevent("Pilgrim's Bounty")
#include "Pilgrims_Bounty_Achievements_Horde"
#include "Pilgrims_Bounty_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Events Guides\\Feast of Winter Veil\\Feast of Winter Veil Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Feast of Winter Veil event.
condition suggested isevent('Feast of Winter Veil')
#include "H_Winterveil_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Events Guides\\Feast of Winter Veil\\Feast of Winter Veil Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Feast of Winter Veil event.
condition suggested isevent('Feast of Winter Veil')
#include "H_Winterveil_Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Outland (60 - 70)\\Shattered Sun Offensive\\Dailies", [[
author support@zygorguides.com
description This guide section will walk you through the Shattered Sun Offensive Daily Quests.
daily
step
#include "H_SSO_PreQuest_with_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Events Guides\\Darkmoon Faire\\Darkmoon Faire Quests", [[
description This guide will help you navigate through the Darkmoon Faire Event
condition suggested isevent('Darkmoon Faire')
#include "H_Darkmoon_Faire_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Events Guides\\Darkmoon Faire\\Darkmoon Faire Dailies", [[
description This guide will help you navigate through the Darkmoon Faire Event
condition suggested isevent('Darkmoon Faire')
#include "H_Darkmoon_Faire_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Events Guides\\Darkmoon Faire\\Darkmoon Faire Achievements", [[
description This guide will help you navigate through the Darkmoon Faire Event
condition suggested isevent('Darkmoon Faire')
#include "H_Darkmoon_Faire_Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Deepholm Dailies with Pre-Quests",[[
description Contains the pre-quests to unlock
description the daily quests in Deepholm.
description
description You must be at least level 82 to
description complete this guide section.
step
label	hub
'Proceeding to proper section |next |only if default
'Proceeding to proper section |next dailies |only if completedq(26709)
step
#include "H_Therazane_PreQuest"
step
label	dailies
#include "H_Therazane_DailyQuest"
step
'You have reached the end of these dailies. Click here to return to the beginning of the guide. |confirm
|next hub
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Uldum Dailies with Pre-Quests",[[
description Contains the pre-quests to unlock
description the daily quests in Uldum.
description
description You must be at least level 83 to
description complete this guide section.
author support@zygorguides.com
step
'The pre-quests for these dailies are in Uldum. You can quest through the guide, or use our Leveling Guide for help. |only if not ZGV.guidesets['LevelingHCATA']
'Click here to go to the leveling section to work on this rep |confirm |next "Zygor's Horde Leveling Guides\\Cataclysm 80-85\\Uldum (83-84)" |only if ZGV.guidesets['LevelingHCATA']
|only if not completedq(28633)
step
label	hub
goto Uldum 60.3,38.3
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Twighlight Highlands Dailies with Pre-Quests",[[
description Walks you through completing the
description daily quests in the Bloodgulch
description region of Twilight Highlands.
author support@zygorguides.com
step
'The pre-quests for these dailies are in Uldum. You can quest through the guide, or use our Leveling Guide for help. |only if not ZGV.guidesets['LevelingHCATA']
'Click here to go to the leveling section to work on this rep |confirm |next "Zygor's Horde Leveling Guides\\Cataclysm 80-85\\Twilight Highlands (84-85)" |only if ZGV.guidesets['LevelingHCATA']
|only if not completedq(27788)
daily
step
goto Twilight Highlands,55.1,43.6
.talk 46318
..accept 28872
..accept 28874
step
goto 53.8,43.3
.talk 46319
..accept 28873
step
goto 53.9,42.1
.talk 49387
..accept 28875
step
goto 54.0,41.9
.talk 50622
..accept 28871
step
goto 46.0,33.0
.kill High Shaman MacKilligan |q 28875/1 |tip He runs into town to this spot.  He is elite and the quest is a group quest, so you may need help killing him.
step
goto 49.1,37.3
.' Click Thundermar Ale Kegs |tip They look like wooden barrels on the ground around this area.
.' Smash 10 Wildhammer Kegs |q 28872/1
.' Click Wildhammer Food Stores |tip They look like hanging fish, sliced bread, and legs of meat on the ground around this area.
.get 10 Wildhammer Food Stores |q 28873/1
.' You can find more around [46.2,37.4]
step
goto 51.2,40.4
.' Use your Barbed Fleshhook on Thundermar War Gryphons |use Barbed Fleshhook##62775 |tip They are big white birds that fly in the air around this area.
.kill 4 Thundermar Gryphon Rider |q 28874/1
.from Wildhammer Warbrand##46320+
.get 8 Wildhammer Insignia |q 28871/1
step
goto 55.1,43.6
.talk 46318
..turnin 28872
..turnin 28874
step
goto 53.8,43.3
.talk 46319
..turnin 28873
step
goto 53.9,42.1
.talk 49387
..turnin 28875
step
goto 54.0,41.9
.talk 50622
..turnin 28871
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Tol Barad Dailies",[[
description Walks you through completing the
description daily quests in Tol Barad.
achieveid 4874
daily
step
label "begin"
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
|noquest
step
goto 53.5,80.6
.talk 48358
..accept 28682
..accept 28685
..accept 28686
..accept 28687
..accept 28721
|noquest
step
goto 54.9,79.3
.talk 48363
..accept 28693
..accept 28691
..accept 28692
..accept 28690
..accept 28689
|noquest
step
goto 55.8,78.5
.talk 48361
..accept 28696
..accept 28698
..accept 28697
..accept 28700
..accept 28695
..accept 28694
|noquest
step
goto 74.3,42.8 |n
.' Follow the path up |goto 74.3,42.8,0.5 |noway |c
step
goto 78.6,42.0
.kill Commander Largo |q 28700/1 |tip He's at the top of the tower.
step
goto 78.2,49.0
.from Overlook Spectre##47182+, Ghastly Worker##47183+, Overlook Spirit##47181+
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
'The following daily quests will only be available if the Horde faction currently controls Tol Barad.
.' Click here to continue |confirm
.' Click here if your faction does not control Tol Barad |confirm |next "end"
step
goto Tol Barad,50.9,49.7
.talk 48069
..accept 28657
..accept 28658
..accept 28659
|noquest
step
goto 51.4,49.6
|modelnpc Staff Sergeant Lazgar##48062
..Click here if Staff Sergeant Lazgar is present. |confirm |next lazgar_is_here
|modelnpc Drillmaster Razgoth##48070##48039
..Click here if Drillmaster Razgoth is present. |confirm |next razgoth_is_here
|modelnpc Private Garnoth##48074
..Click here if Private Garnoth is present. |confirm |next garnoth_is_here
'Only one of these NPCs will be available.
step
label "razgoth_is_here"
goto 51.5,49.7
.talk 48070
..accept 28663
..accept 28664
..accept 28665
|next exit
step
label "garnoth_is_here"
goto 51.5,49.7
.talk 48071
..accept 28660
..accept 28662
..accept 28661
|next exit
step
label "lazgar_is_here"
goto 51.5,49.7
.talk 48062
..accept 28670
..accept 28668
..accept 28669
|next exit
step
label "exit"
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
step
label "end"
'You have reached the end of the dailies for today.
.' Click here to return to the beginning of the guide. |confirm |next "begin"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Reputation\\Guardians of Hyjal",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Reputation\\The Earthen Ring",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Reputation\\Therazane",[[
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
..' You can buy the Tabard of Therazane by talking to D'lom the Collector at [Deepholm 56.95,13.08]
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Reputation\\Ramkahen",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Reputation\\Dragonmaw Clan",[[
description Walks you through the process
description of obtaining Exalted reputation
description with the Dragonmaw Clan faction.
author support@zygorguides.com
step
map Twilight Highlands
'To gain reputation with the Dragonmaw Clan faction:
.' Complete the Twilight Highlands Pre-Quests guide in the Twilight Highlands section.
.' Complete the Bloodgulch Dailies guide in the Twilight Highlands section. |tip Do this daily, if you'd like.
.' Once you earn Friendly reputation with the Dragonmaw Clan faction, you can buy the Tabard of the Dragonmaw Clan. |tip Wear the Tabard of the Dragonmaw Clan and use the Dungeon Finder tool to complete random Cataclysm Heroics.  You will gain reputation with the Dragonmaw Clan faction for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
..' You can buy the Tabard of the Dragonmaw Clan by talking to Grot Deathblow at [Twilight Highlands 53.9,42.1]
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Reputation\\Hellscream's Reach",[[
description Walks you through the process
description of obtaining Exalted reputation
description with the Hellscream's Reach faction.
author support@zygorguides.com
step
map Tol Barad Peninsula
'To gain reputation with the Hellscream's Reach faction:
.' Complete the Hellscream's Grasp Dailies guide in the Tol Barad Peninsula section. |tip Do this daily, if you'd like.
.' Complete the Baradin Hold Dailies guide in the Tol Barad section. |tip Do this daily, if you'd like.  The daily quests in this section will only be available if the Horde faction currently controls Tol Barad.
.' Once you earn Friendly reputation with the Hellscream's Reach faction, you can buy Hellscream's Reach Commendations from Pogg at [54.5,81.3] |tip They cost 10 Tol Barad Commendations each and you can use the Hellscream's Reach Commendations to increase your Hellscream's Reach reputation by 250.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Zandalari Menace Quest Line",[[
description Walks you through completing
description the Zandalari Menace quest line
description in Stranglethorn Vale.
description
description You must be level 85 to be
description able to use this guide.
author support@zygorguides.com
startlevel 85
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
.talk 52374
..accept 29268 |instant
step
'Next to you:
.talk 52234
..accept 29233
step
goto 76.5,67.5 |n
.' Leave the cave |goto 76.5,67.5,0.5 |noway |c
step
goto 38.4,50.2
.talk 52996
..turnin 29233
..accept 29235
step
goto 37.5,50.0
.from Gurubashi War-Seeker##53165+, Gurubashi Bloodfury##52406+, Gurubashi Soul-Seeker##53166+ |tip Once the bar fills up at the bottom of your screen, you will complete the quest.
.' Help Defend Grom'gol Base Camp |q 29235/1
step
goto 38.4,50.2
.talk 52996
..turnin 29233
..accept 29235
step
goto 39.0,51.2
.talk 53008
..accept 29236
step
goto 39.0,51.2
.talk 53008
..' Tell her you need use of a wyvern to fly you to where the Darkspear emissary went
.' You will fly to Hardwrench Hideaway
.' Arrive at Hardwrench Hideaway |q 29236/1
step
'Next to you:
.talk 52234
..turnin 29236
..accept 29237
step
goto The Cape of Stranglethorn,36.3,31.8
.from Hideaway Zombie##53011+
.' Rescue 10 Hideaway Survivors |q 29237/1 |tip You may not rescue every zombie you kill.
step
'Next to you:
.talk 52234
..turnin 29237
..accept 29238
step
goto 33.6,30.2
.' Click the Sack of Spices |tip It looks like a yellow grain bag sitting on the floor next to the wall inside this building.
.' Watch the dialogue
.' Search the Supplies |q 29238/1
step
'Next to you:
.talk 52234
..turnin 29238
step
goto 33.5,30.4
.talk 53078
..accept 29250
step
goto 44.9,65.9 |n
.' Enter the tunnel |goto 44.9,65.9,0.5 |noway |c
step
goto 41.0,73.1
.talk 52767
..turnin 29250
step
goto 41.2,73.0
.' Go to this spot
.' Watch the dialogue
.' Help Bwemba Find the Darkspear Emissary |q 29219/1
step
'Next to you:
.talk 52234
..turnin 29219
step
'To continue with the Zul'Gurub dungeon quest line:
goto 41.2,73.1
.talk 2496
..accept 29251
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Mount Hyjal\\How To Use Firelands Guide Sections - READ FIRST",[[
description Walks you through how to use the
description Firelands guide sections.
author support@zygorguides.com
step
'The Firelands quests are very dynamic.  You will not be able to complete some daily quests each day, as only a limited amount are available each day.  |tip Accept and complete as many as you can, and simply skip over the ones you can't accept that day.
'
'
'You will need to use the Firelands Quests and Firelands Dailies together.  Complete as many quests as you can in the Firelands Quests guide section, and use the Firelands Dailies guide section to gain Marks of the World Tree.  |tip Marks of the World Tree are currency needed to complete certain quests in order to unlock more daily quests.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Mount Hyjal\\Firelands Dailies with Pre-Quests",[[
description Contains the pre-quests to unlock the Firelands quest line and daily quests.
description You must be at least level 80 to complete this guide section.
author support@zygorguides.com
step
'Proceeding to proper section |next |only if default
'Proceeding to proper section |next firelands |only if completedq(25372)
step
#include "H_Firelands_PreQuests"
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
|only if not completedq(29199)
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
|only if not completedq(29199)
step
goto 27.1,62.8
.talk 52838
..turnin 29199
|only if not completedq(29199)
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
|only if not completedq(29181)
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
step
goto 46.9,90.0
.talk 53214
..accept 29281
step
goto Mount Hyjal,27.2,62.6
.talk 52669
..turnin 29281
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
step
goto Molten Front,44.1,86.3
.talk 53881
..accept 29279
step
goto Mount Hyjal,27.2,62.6
.talk 52669
..turnin 29279
..accept 29280
step
goto Molten Front,44.1,86.3
.talk 53881
..turnin 29280
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Mount Hyjal\\The Call of the World-Shaman Quest Line",[[
description Walks you through completing the
description Call of the World-Shaman quest
description line.
author support@zygorguides.com
step
goto Orgrimmar,50.5,38.4
.talk 45244
..accept 29440
step
goto Mount Hyjal,60.6,31.5
.talk 54313
..turnin 29440
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
.' You will teleport to Uldum |goto Uldum,47.8,88.0,0.5 |noway |c
step
goto Uldum,47.6,88.9
.talk 53524
..turnin 29335
..accept 29327
step
goto 47.6,88.9
.talk 53524
..' Tell him to take you to Thrall
.' You will fly up to the top of a tower |goto 34.3,77.5,0.5 |noway |c
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
.' You will teleport to the Abyssal Depths |goto Abyssal Depths,69.7,34.8,0.5 |noway |c
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
.' You will teleport to Deepholm |goto Deepholm,56.3,13.0,0.5 |noway |c
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
.' You will be taken to the Staidridge |goto 64.2,46.0,0.5 |noway |c
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
