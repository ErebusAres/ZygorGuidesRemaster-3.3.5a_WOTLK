local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ProfessionsH") then return end
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Alchemy\\Alchemy 1-600 Leveling Guide",[[
description This guide will walk you through leveling your Alchemy skill from 1-600.
author support@zygorguides.com
completion skill,Alchemy,600
condition suggested hasprof('Alchemy',1,600)
#include profession_dual_start,prof1="Alchemy",prof2="Herbalism"
step
label "route"
'Redirecting to Alchemy 1-55 |next "alch_1-55" |only if skill("Alchemy")<55
'Redirecting to Alchemy 55-125 |next "alch_55-125" |only if skill("Alchemy")>=55 and skill("Alchemy")<125
'Redirecting to Alchemy 125-215 |next "alch_125-215" |only if skill("Alchemy")>=125 and skill("Alchemy")<215
'Redirecting to Alchemy 215-275 |next "alch_215-275" |only if skill("Alchemy")>=215 and skill("Alchemy")<275
'Redirecting to Alchemy 275-355 |next "alch_275-355" |only if skill("Alchemy")>=275 and skill("Alchemy")<355
'Redirecting to Alchemy 355-425 |next "alch_355-425" |only if skill("Alchemy")>=355 and skill("Alchemy")<425
'Redirecting to Alchemy 425-500 |next "alch_425-500" |only if skill("Alchemy")>=425 and skill("Alchemy")<500
'Redirecting to Alchemy 500-600 |next "route2" |only if skill("Alchemy")>=500 and skill("Alchemy")<600
step
label "alch_1-55"
title + Alchemy 1-55
#include "trainer_Alchemy"
.skillmax Alchemy,75 |tip You must be at least level 5.
step
#include "home_ValleyofStrength"
step
#include "auctioneer"
.buy 55 Peacebloom##2447
.buy 55 Silverleaf##765
#include "go_farm",skill="Herbalism",req="1",goto="alch_1-55_farm"
next "alch_1-55_skill"
step
label "alch_1-55_farm"
title + Alchemy 1-55 (farming)
map Durotar
path follow loose;loop;ants straight
path	46.2,17.1	38.8,16.2	38.7,22.1
path	37.9,30.4	48.5,32.8	51.4,36.5
path	51.7,52.0	53.6,62.4	55.6,69.7
path	60.9,69.1	60.7,58.0	57.6,46.9
path	55.0,32.4	57.8,26.1	53.4,12.5
#include "follow_path_herbs"
.collect 55 Peacebloom##2447
.collect 55 Silverleaf##765
skill Herbalism,50
#include "max_skill_warning",skill="Herbalism",goto="alch_1-55_farm"
step
label "alch_1-55_skill"
title Alchemy 1-55
#include "vendor_Alchemy"
.buy 55 Crystal Vial##3371 |tip You can buy more just in case.
step
.create 55 Minor Healing Potion##2330,Alchemy,55 |tip You will need to save 38 of these for later use.
step
label "alch_55-125"
title + Alchemy 55-125
#include "trainer_Alchemy"
.skillmax Alchemy,150 |tip You must be at least level 10.
.learn Lesser Healing Potion##2337
step
#include "auctioneer"
.buy 38 Mageroyal##785
.buy 114 Briarthorn##2450
.buy 38 Minor Healing Potion##118 |only if itemcount("Minor Healing Potion")<38
#include go_farm,skill="Herbalism",req="50",goto="alch_55-125_farm"
|next "alch_55-125_skill"
step
label "alch_55-125_farm"
title + Alchemy 55-125 (farming)
#include "trainer_Herbalism"
.skillmax Herbalism,150
step
label "farm"
'Skipping 1st part of farming |next "+farm2" |only if itemcount("Minor Healing Potion")>=38
'Proceeding to farm |next |only if default
step
map Durotar
path follow loose;loop;ants straight
path	46.2,17.1	38.8,16.2	38.7,22.1
path	37.9,30.4	48.5,32.8	51.4,36.5
path	51.7,52.0	53.6,62.4	55.6,69.7
path	60.9,69.1	60.7,58.0	59.2,45.0
path	58.4,34.8	57.8,26.1	53.4,12.5
#include "follow_path_herbs"
.collect 38 Peacebloom##2447
.collect 38 Silverleaf##765
skill Herbalism,50
#include "max_skill_warning",skill="Herbalism",goto="alch_55-125_farm"
step
label "farm2"
'Skipping 2nd part of farming |next "alch_55-125_skill" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Hillsbrad Foothills
path 31.8,62.6		33.9,54.0		29.7,44.1
path 35.5,37.8		34.5,28.2		39.5,21.0
path 44.2,8.3		51.3,14.0		57.5,20.9
path 56.1,34.3		49.9,46.2		41.2,46.6
path 40.1,55.0		41.3,67.4		31.8,71.9
#include "follow_path_herbs"
.collect 38 Mageroyal##785
.collect 114 Briarthorn##2450
skill Herbalism,125
#include "max_skill_warning",skill="Herbalism",goto="alch_55-125_farm"
step
label "alch_55-125_skill"
title + Alchemy 55-125
#include "vendor_Alchemy"
.buy 114 Crystal Vial##3371 |only if itemcount("Minor Healing Potion")<38
.buy 76 Crystal Vial##3371 |only if itemcount("Minor Healing Potion")>=38
step
.create 38 Minor Healing Potion##118 |only if itemcount("Minor Healing Potion")<38
step
.create 38 Lesser Healing Potion##2337,Alchemy,90
step
#include "trainer_Alchemy"
.learn Elixir of Wisdom##3171
step
.create 38 Elixir of Wisdom##3171,Alchemy,125
step
label "alch_125-215"
title + Alchemy 125-215
#include "trainer_Alchemy"
|skillmax Alchemy,225 |tip You must be at least level 20.
.learn Lesser Mana Potion##3173
step
title + Alchemy 125-215
#include "auctioneer"
.buy 33 Mageroyal##785
.buy 33 Stranglekelp##3820
.buy 40 Wild Steelbloom##3355
.buy 20 Kingsblood##3356
.buy 20 Liferoot##3357
.buy 40 Goldthorn##3821
#include go_farm,skill="Herbalism",req="115",goto="alch_125-215_farm"
|next "alch_125-215_skill"
step
title + Alchemy 125-215 (farming)
label "alch_125-215_farm"
#include "trainer_Herbalism"
.skillmax Herbalism,225
'Your _Herbalism_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 150. It's better to skill up first. |only if skill("Herbalism")<125 and skillmax("Herbalism")<225
step
label "farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Hillsbrad Foothills
path 31.8,62.6		33.9,54.0		29.7,44.1
path 35.5,37.8		34.5,28.2		39.5,21.0
path 44.2,8.3		51.3,14.0		57.5,20.9
path 56.1,34.3		49.9,46.2		41.2,46.6
path 40.1,55.0		41.3,67.4		31.8,71.9
#include "follow_path_herbs"
.collect 33 Mageroyal##785
.collect 33 Stranglekelp##3820 |opt
#include "max_skill_warning",skill="Herbalism",goto="alch_125-215_farm"
step
label "farm2"
'Skipping 2nd part of farming |next "+farm3" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Western Plaguelands
path 31.8,59.3	43.5,53.2	45.9,44.7
path 45.2,35.2	49.5,35.1	49.5,35.1
path 51.0,47.4	61.8,52.0	67.2,44.5
path 63.6,56.0	56.6,60.1	52.6,67.5
path 46.4,59.2	33.7,62.7
#include follow_path_herbs
.collect 20 Kingsblood##3356
skill Herbalism,150
#include "max_skill_warning",skill="Herbalism",goto="alch_125-215_farm"
step
label "farm3"
'Skipping 3rd part of farming |next "+farm4" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Western Plaguelands/0
path	51.0,72.6	55.1,75.8	59.0,81.8
path	63.1,82.7	66.6,84.2	70.3,83.8
path	73.6,82.6	78.3,80.7	79.7,75.4
path	80.0,70.5	78.6,66.6	75.9,65.4
path	76.6,61.8	73.1,59.7	68.7,61.7
path	64.3,64.1	60.1,65.3	56.6,69.5
path	53.8,72.2
#include follow_path_herbs
.collect 20 Liferoot##3357
.collect 33 Stranglekelp##3820
skill Herbalism,150
#include "max_skill_warning",skill="Herbalism",goto="alch_125-215_farm"
step
label "farm4"
'Skipping 4th part of farming |next "+farm5" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Arathi Highlands
path	43.3,39.0	57.6,29.0	70.6,28.6
path	73.6,31.7	50.7,74.5	41.0,80.2
path	28.7,67.9	9.0,70.2	19.9,34.9
path	29.1,48.4
#include follow_path_herbs
.collect 40 Goldthorn##3821 |tip As you move, cling to the edges of the mountain.
.collect 40 Wild Steelbloom##3355 |opt
skill Herbalism,200
#include "max_skill_warning",skill="Herbalism",goto="alch_125-215_farm"
step
label "farm5"
'Skipping 5th part of farming |next "+farm6" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Northern Stranglethorn
path 64.2,25.4		63.9,39.4		56.2,43.2
path 42.5,43.9		35.9,32.9		31.5,37.2
path 23.1,32.3		17.4,24.1
#include follow_path_herbs
.collect 40 Wild Steelbloom##3355
skill Herbalism,200
#include "max_skill_warning",skill="Herbalism",goto="alch_125-215_farm"
step
label "farm6"
'Skipping 6th part of farming |next "alch_125-215_skill" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map The Cape of Stranglethorn
path 44.0,86.1		50.6,80.7		59.4,52.6
path 51.7,8.0		40.7,17.1		39.6,24.9
path 32.4,32.9		41.5,41.0		35.1,53.2
path 36.8,56.2
#include follow_path_herbs
.collect 33 Stranglekelp##3820
#include "max_skill_warning",skill="Herbalism",goto="alch_125-215_farm"
step
label "alch_125-215_skill"
title + Alchemy 125-215
#include "vendor_Alchemy"
.buy 93 Crystal Vial##3371
step
.create 33 Lesser Mana Potion##3173,Alchemy,155
step
#include "trainer_Alchemy"
.learn Greater Healing Potion##7181
step
.create 20 Greater Healing Potion##7181,Alchemy,175
step
#include "trainer_Alchemy"
.learn Elixir of Fortitude##3450
step
.create 20 Elixir of Fortitude##3450,Alchemy,195
step
#include "trainer_Alchemy"
.learn Elixir of Greater Defense##11450
step
.create 20 Elixir of Greater Defense##11450,Alchemy,215
step
label "alch_215-275"
title + Alchemy 215-275
#include "trainer_Alchemy"
.skillmax Alchemy,300 |tip You must be at least level 35.
.learn Superior Healing Potion##11457
step
#include "auctioneer"
.buy 40 Khadgar's Whisker##3358
.buy 70 Sungrass##8838
.buy 30 Blindweed##8839
.buy 40 Gromsblood##8846
#include go_farm,skill="Herbalism",req="160",goto="alch_215-275_farm"
|next "alch_215-275_skill"
step
label "alch_215-275_farm"
title + Alchemy 215-275 (farming)
#include "trainer_Herbalism"
.skillmax Herbalism,300
'Your _Herbalism_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 225 and you won't be able to farm anymore. It's better to skill up to 200 first. |only if skill("Herbalism")<200 and skillmax("Herbalism")<300
step
label "farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Feralas
path 73.0,42.0		74.4,35.2		70.5,37.1
path 67.3,45.9		62.5,51.2		55.7,47.6
path 49.5,41.4		50.2,32.1		49.4,24.1
path 51.4,14.4		53.8,08.6		49.5,06.2
path 48.9,11.7		42.4,08.8		37.8,15.3
path 44.9,23.7		47.7,43.3		53.2,48.3
path 54.8,53.6		56.0,60.1		55.2,66.6
path 58.6,64.7		64.4,61.5		63.8,53.6
path 67.9,51.0		69.0,60.1		71.4,60.0
path 72.1,57.3		77.8,56.6		77.1,48.2
path 73.3,50.2
#include follow_path_herbs
.collect 40 Khadgar's Whisker##3358
.collect 30 Blindweed##8839
skill Herbalism,235
#include "max_skill_warning",skill="Herbalism",goto="alch_215-275_farm"
step
label "farm2"
'Skipping 2nd part of farming |next "+farm3" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Searing Gorge
path	66.9,43.2	58.9,53.0	55.6,68.1
path	49.8,70.1	45.9,61.5	38.1,74.9
path	31.0,67.8	32.1,56.9	29.4,44.8
path	37.5,47.8	40.5,39.1	47.2,42.1
path	53.5,35.4	77.0,19.0
#include follow_path_herbs
.collect 70 Sungrass##8838
#include "max_skill_warning",skill="Herbalism",goto="alch_215-275_farm"
step
label "farm3"
'Skipping 2nd part of farming |next "+farm4" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Felwood
path 50.5,80.9		47.6,75.8		45.4,71.4
path 44.9,66.4		42.9,58.3		43.6,52.1
path 45.2,42.1		49.6,33.6		55.3,24.8
path 57.5,15.5		54.3,14.1		42.7,21.7
path 40.0,37.5		40.0,46.5		39.6,56.9
path 39.1,66.2		38.9,71.3		42.7,84.7
#include follow_path_herbs
.collect 40 Gromsblood##8846
skill Herbalism,275
#include "max_skill_warning",skill="Herbalism",goto="alch_215-275_farm"
step
label "farm4"
'Proceeding to farm |next |only if default
step
label "alch_215-275_skill"
#include "vendor_Alchemy"
.buy 70 Crystal Vial##3371
step
.create 35 Superior Healing Potion##11457,Alchemy,250
step
#include "trainer_Alchemy"
.learn Elixir of Detect Demon##11478
step
.create 20 Elixir of Detect Demon##11478,Alchemy,270
step
#include "trainer_Alchemy"
.learn Superior Mana Potion##17553
step
.create 10 Superior Mana Potion##17553,Alchemy,285
step
title + Alchemy 275-355
label "alch_275-355"
#include "trainer_Alchemy"
.' Learn the Master Alchemist skill |skillmax Alchemy,375 |tip You must be at least level 50.
.learn Major Healing Potion##17556
step
#include "auctioneer"
.buy 77 Golden Sansam##13464
.buy 31 Mountain Silversage##13465
.buy 55 Felweed##22785
.buy 30 Dreaming Glory##22786
.buy 15 Terocone##22789
.buy 20 Netherbloom##22791
.buy 1 Recipe: Super Mana Potion##22907 |opt |tip You can try to buy this too, but you can get it from a vendor in Blade's Edge Mountains for 5 gold included later in the guide.
#include go_farm,skill="Herbalism",req="260",goto="alch_275-355_farm"
|next "alch_275-355_skill"
step
label "alch_275-355_farm"
title + Alchemy 275-355 (farming)
#include "trainer_Herbalism"
.skillmax Herbalism,375
'Your _Herbalism_ skill is too low to learn this; You can start farming, but your skill gains will stop at 300 and you won't be able to farm anymore. It's better to skill up to 275 first. |only if skill("Herbalism")<275 and skillmax("Herbalism")<375
step
label "farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Swamp of Sorrows
path   17.6,52.9		21.6,54.6		30.9,60.7
path 39.4,56.9		51.7,59.6		64.5,67.3
path 73.3,81.9		82.0,76.0		85.3,62.6
path 87.6,39.9		84.9,31.2		80.1,20.6
path 66.5,22.7		56.8,31.9		47.0,36.0
path 36.1,39.8		26.9,42.9
#include follow_path_herbs
.collect 77 Golden Sansam##13464
skill Herbalism,280
#include "max_skill_warning",skill="Herbalism",goto="alch_275-355_farm"
step
label "farm2"
'Skipping 2nd part of farming |next "+farm3" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Hellfire Peninsula
path 80.6,79.9		73.3,67.0		68.6,76.9
path 56.1,71.6		48.4,75.2		40.7,84.5
path 36.6,67.4		32.9,65.6		28.0,78.7
path 22.9,67.5		13.7,63.0		13.5,38.7
path 23.8,44.6		30.5,33.1		37.8,30.8
path 55.8,31.1		67.1,27.3
#include follow_path_herbs
.collect 31 Mountain Silversage##13465 |tip These can be found tucked away in the sides of mountains, so keep an eye out for them.
.collect 30 Dreaming Glory##22786 |opt
.collect 55 Felweed##22785 |opt
skill Herbalism,325
#include "max_skill_warning",skill="Herbalism",goto="alch_275-355_farm"
step
label "farm3"
'Skipping 3rd part of farming |next "+farm4" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Terokkar Forest
path 34.4,8.0 		37.5,16.1		41.6,19.9
path 44.5,11.5		51.0,21.0		48.4,26.9
path 60.2,22.5		73.1,45.3		61.5,48.6
path 54.0,37.1		48.0,33.5		39.0,34.8
path 39.2,44.4		47.3,50.0		47.0,79.8
path 33.5,76.9		19.6,77.8		21.5,60.7
path 31.4,39.9		37.4,30.1
#include follow_path_herbs
.collect 15 Terocone##22789
.collect 55 Felweed##22785
.collect 30 Dreaming Glory##22786 |opt
skill Herbalism,350
#include "max_skill_warning",skill="Herbalism",goto="alch_275-355_farm"
step
label "farm4"
'Skipping 4th part of farming |next "+recipe" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Netherstorm
path 31.5,51.4		25.6,63.5		19.5,67.7
path 20.3,77.1		40.2,77.2		46.2,82.6
path 48.0,86.9		58.9,88.8		61.4,79.4
path 51.6,75.7		46.0,72.1		34.5,55.8
path 40.1,52.9		50.2,69.0		67.1,60.7
path 50.8,54.8		46.5,47.1		55.0,39.9
path 58.5,47.2		62.7,50.3		73.4,40.5
path 73.2,35.2		62.1,30.5		55.6,31.6
path 49.8,35.9		48.8,25.5		57.1,24.3
path 55.5,17.3		49.7,17.4		48.9,12.5
path 44.9,19.8		42.5,16.2		39.5,15.7
path 35.7,19.8		32.1,29.2		38.5,42.4
path 31.1,38.1		23.5,35.4		22.9,44.1
path 30.2,43.3
#include follow_path_herbs
.collect 20 Netherbloom##22791
.collect 30 Dreaming Glory##22786
#include "max_skill_warning",skill="Herbalism",goto="alch_275-355_farm"
step
label "recipe"
'Skipping purchasing |next "+exit" |only if itemcount("Recipe: Super Mana Potion")>=1
'Proceeding to purchase |next |only if default
step
goto Blade's Edge Mountains 51.0,57.8
.talk 19837
.buy 1 Recipe: Super Mana Potion##22907 |tip This recipe is a limited quality item. If the vendor is not carrying it, you may need to get it from the Auction House.
step
label "alch_275-355_skill"
title + Alchemy 275-355
'Skipping purchasing |next "+exit" |only if itemcount("Recipe: Super Mana Potion")>=1
'Proceeding to farm |next |only if default
step
goto Blade's Edge Mountains,51.0,57.8
.talk 19837
.buy 1 Recipe: Super Mana Potion##22907
step
label "exit"
#include "vendor_Alchemy"
.buy 86 Crystal Vial##3371
step
.create 31 Major Healing Potion##17556,Alchemy,300
step
#include "trainer_Alchemy"
.learn Volatile Healing Potion##33732
step
.create 15 Volatile Healing Potion##33732,Alchemy,315
step
#include "trainer_Alchemy"
.learn Elixir of Mastery##33741
step
.create 15 Elixir of Mastery##33741,Alchemy,330
step
#include "trainer_Alchemy"
.learn Super Healing Potion##28551
step
.create 10 Super Healing Potion##28551,Alchemy,340
step
'Click the Recipe: Super Mana Potion recipe in your bags |use Recipe: Super Mana Potion##22907
.learn Super Mana Potion##28555
step
.create 15 Super Mana Potion##28555,Alchemy,355
step
label "alch_355-425"
title + Alchemy 355-425
#include "trainer_Alchemy"
.' Learn the Grand Master Alchemist skill |skillmax Alchemy,450 |tip You must be at least level 65.
.learn Wrath Elixir##53841
step
#include "auctioneer"
.buy 66 Goldclover##36901
.buy 10 Deadnettle##37921
.buy 20 Tiger Lily##36904
.buy 10 Talandra's Rose##36907
.buy 32 Lichbloom##36905
.buy 40 Icethorn##36906
#include go_farm,skill="Herbalism",req="350",goto="alch_355-425_farm"
|next "alch_355-425_skill"
step
label "alch_355-425_farm"
title + Alchemy 355-425 (farming)
#include "trainer_Herbalism"
.skillmax Herbalism,450
step
label "farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Howling Fjord
path	70.1,47.3	75.5,50.8
path	80.5,46.2	76.3,42.8	70.3,40.5
path	66.5,33.5	70.5,32.4	73.6,26.7
path	69.8,19.2	65.8,26.8	61.8,28.5
path	58.5,22.7	50.2,16.6	48.7,21.2
path	26.5,7.9	29.2,12.0
path	23.8,14.0	26.8,14.5
path	27.2,20.8	29.0,22.2	27.1,29.6
path	31.3,33.3	34.8,34.1	41.7,34.2
path	42.1,27.7	46.3,31.5	47.1,29.0
path	54.1,32.5	49.0,35.8	58.1,37.0
path	58.3,40.1	43.3,44.1
path	40.9,40.2	37.0,39.9	37.0,44.9
path	34.9,46.2	46.4,54.3
path	45.9,50.2	51.1,48.3	59.5,51.6
path	59.0,55.6	45.1,59.4
path	48.7,62.7	56.9,67.1
path	46.8,71.6	52.8,71.5	53.4,76.5
path	60.0,76.8	62.6,80.5	64.8,67.6
path	67.9,59.7	65.8,72.5	67.1,74.9
path	69.5,74.5	70.6,66.1	76.4,67.9
#include follow_path_herbs
.collect 96 Goldclover##36901
.collect 10 Deadnettle##37921
.collect 20 Tiger Lily##36904 |opt
.' Save any Frost Lotus you might find.
skill Herbalism,385
#include "max_skill_warning",skill="Herbalism",goto="alch_355-425_farm"
step
label "farm2"
'Skipping 2nd part of farming |next "+farm3" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Zul'Drak
path 21.3,84.1		31.2,68.2		39.3,63.7
path 29.7,52.6		37.1,40.8		43.6,46.7
path 43.0,62.9		50.7,62.4		58.2,73.5
path 52.2,83.3		39.5,87.0
#include follow_path_herbs
.collect 10 Talandra's Rose##36907
.'Save any Frost Lotus you might find.
#include "max_skill_warning",skill="Herbalism",goto="alch_355-425_farm"
step
label "farm3"
'Skipping 3rd part of farming |next "+farm4" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Sholazar Basin
path	68.7,66.6	69.4,68.5	71.0,70.3
path	69.1,73.6	68.1,70.1	65.3,70.5
path	67.1,75.2	65.3,75.6	61.5,71.2
path	65.1,79.5	62.9,83.5	59.2,72.5
path	57.5,83.3	60.1,85.3	51.6,86.5
path	43.6,75.3	47.9,73.9	50.5,62.6
path	47.9,60.1	46.2,63.1	46.9,65.5
path	43.1,62.3	41.3,67.5	37.9,63.6
path	37.7,66.2	29.8,66.8	31.9,70.1
path	31.1,71.1	43.7,71.0	40.1,76.5
path	43.3,77.4	42.5,83.0	41.0,83.9
path	41.9,86.5	40.8,87.8	37.5,83.3
path	35.2,87.1	35.2,83.4	28.8,84.8
path	28.5,79.5	30.5,75.7	28.5,75.5
path	26.6,77.6	21.6,63.7	22.4,60.3
path	32.7,64.5	32.4,60.4	29.1,61.7
path	32.7,64.5	32.4,60.4	29.1,61.7
path	32.7,64.5	32.4,60.4	29.1,61.7
path	25.3,59.0	21.5,56.3	25.7,55.9
path	32.0,41.7	31.2,55.2	28.7,53.5
path	28.5,60.1	35.2,60.7	35.5,58.7
path	38.2,60.2	38.6,55.5	41.6,56.2
path	41.2,58.8	43.5,59.5	49.5,52.3
path	47.6,49.6	44.6,49.1	46.8,52.1
path	45.5,51.6	39.6,35.8	33.9,31.6
path	38.5,29.6	33.8,24.4	35.4,20.9
path	40.6,26.0	39.9,21.1	43.9,23.5
path	56.5,31.5	62.7,33.9	57.6,41.3
path	59.3,42.1	59.6,45.1	57.7,47.2
path	53.5,44.0	50.5,54.2	52.3,56.8
path	56.6,54.5	55.6,49.9	64.2,46.4
path	63.9,48.9
#include follow_path_herbs
.collect 20 Tiger Lily##36904
.'Save any Frost Lotus you might find.
skill Herbalism,425
#include "max_skill_warning",skill="Herbalism",goto="alch_355-425_farm"
step
label "farm4"
'Skipping 4th part of farming |next "alch_355-425_skill" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map The Storm Peaks
path 31.4,83.1		33.0,93.8		40.0,82.3
path 52.2,69.5		56.9,71.0		63.0,59.6
path 65.0,73.2		66.9,58.5		77.2,72.8
path 77.0,61.3		72.8,53.1		70.9,47.2
path 64.1,54.1		65.7,41.5		52.5,53.2
path 47.7,36.0		34.6,40.4		30.4,50.5
path 29.1,37.4		22.2,36.7		24.3,56.4
path 30.7,64.5		24.6,72.5		36.3,72.7
#include follow_path_herbs
.collect 40 Icethorn##36906
.collect 102 Lichbloom##36905
.'Save any Frost Lotus you might find.
#include "max_skill_warning",skill="Herbalism",goto="alch_355-425_farm"
step
label "alch_355-425_skill"
title + Alchemy 355-425
#include "vendor_Alchemy"
.buy 76 Crystal Vial##3371
step
.create 10 Wrath Elixir##53841,Alchemy,365
step
#include "trainer_Alchemy"
.learn Spellpower Elixir##53842
step
.create 10 Spellpower Elixir##53842,Alchemy,375
step
#include "trainer_Alchemy"
.learn Lesser Flask of Toughness##53899
step
.create 5 Lesser Flask of Toughness##53899,Alchemy,380
step
#include "trainer_Alchemy"
.learn Potion of Nightmares##53900
step
.create 5 Potion of Nightmares##53900,Alchemy,385
step
#include "trainer_Alchemy"
.learn Elixir of Mighty Strength##54218
step
.create 5 Elixir of Mighty Strength##54218,Alchemy,390
step
#include "trainer_Alchemy"
.learn Elixir of Mighty Fortitude##53898
step
.create 5 Elixir of Mighty Fortitude##53898,Alchemy,395
step
#include "trainer_Alchemy"
.learn Indestructible Potion##53905
step
.create 20 Indestructible Potion##53905,Alchemy,415
step
#include "trainer_Alchemy"
.learn Runic Mana Potion##53837
step
.create 16 Runic Mana Potion##53837,Alchemy,425
step
title + Alchemy 425-500
label "alch_425-500"
#include "trainer_Alchemy"
.' Learn the Illustrious Grand Master Alchemist skill |skillmax Alchemy,525 |tip You must be at least level 75.
.learn Draught of War##93935
step
#include "auctioneer"
.buy 24 Goldclover##36901
.buy 70 Lichbloom##36905
.buy 50 Cinderbloom##52983
.buy 20 Stormvine##52984
.buy 16 Azshara's Veil##52985
.buy 44 Heartblossom##52986
.buy 5 Whiptail##52988
.buy 10 Twilight Jasmine##52987
.buy 10 Frost Lotus##36908 |tip This herb is rare, it might take you quite a bit to farm it.
#include go_farm,skill="Herbalism",req="425",goto="alch_425-500_farm"
|next "alch_425-500_skill"
step
label "alch_425-500_farm"
title + Alchemy 425-500 (farming)
#include "trainer_Herbalism"
.skillmax Herbalism,525
step
'When farming any herbs in this guide section, make sure to save any Volatile Life that you find, as you'll need it later.
|confirm
step
label "travel"
'Skipping travel |next "+farm" |only if itemcount("Goldclover")>=30 and itemcount("Lichbloom")>=70 and itemcount("Frost Lotus")>=10
'Proceeding to travel |next |only if default
step
label "farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Howling Fjord
path	70.1,47.3	72.5,47.2	75.5,50.8
path	79.2,49.7	80.5,46.2	76.3,42.8
path	74.1,44.8	70.3,40.5	70.3,35.5
path	66.5,33.5	70.5,32.4	71.0,28.3
path	73.6,26.7	72.3,18.5	69.4,27.7
path	69.8,19.2	65.8,26.8	61.8,28.5
path	58.5,22.7	50.2,16.6	48.7,21.2
path	26.5,7.9	29.2,12.0	25.2,11.8
path	23.8,14.0	26.8,14.5	28.6,18.0
path	27.2,20.8	29.0,22.2	27.1,29.6
path	31.3,33.3	34.8,34.1	41.7,34.2
path	42.1,27.7	46.3,31.5	47.1,29.0
path	54.1,32.5	49.0,35.8	58.1,37.0
path	60.0,39.2	58.3,40.1	43.3,44.1
path	40.9,40.2	37.0,39.9	37.0,44.9
path	34.9,46.2	46.4,54.3
path	45.9,50.2	51.1,48.3	59.5,51.6
path	59.0,55.6	57.2,55.9	45.1,59.4
path	52.5,60.5	48.7,62.7	56.9,67.1
path	46.8,71.6	52.8,71.5	53.4,76.5
path	60.0,76.8	62.6,80.5	64.8,67.6
path	67.9,59.7	65.8,72.5	67.1,74.9
path	69.5,74.5	70.6,66.1	76.4,67.9
#include follow_path_herbs
.collect 24 Goldclover##36901
.' Save any Frost Lotus you might find.
#include "max_skill_warning",skill="Herbalism",goto="alch_425-500_farm"
step
label "farm2"
'Skipping 2nd part of farming |next "+farm3" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map The Storm Peaks
path	36.8,86.1	40.3,87.9	37.7,94.3
path	36.6,89.0	32.9,93.8	32.5,86.9
path	31.4,83.1	40.0,82.3	38.4,80.8
path	39.4,79.2	43.5,78.0	42.6,75.6
path	45.4,77.1	45.6,79.1	46.6,78.9
path	47.0,77.2	49.0,78.4	48.5,73.3
path	51.4,75.6	52.2,69.5	58.3,72.0
path	54.3,66.2	58.6,58.3	56.8,66.0
path	60.1,61.5	62.9,62.7	63.0,59.6
path	61.8,58.3	64.2,49.5	64.1,54.1
path	65.0,58.8	66.9,58.5	65.6,63.6
path	72.5,65.0	71.8,56.0	74.0,49.9
path	70.9,47.1	72.8,53.1	70.0,49.9
path	70.9,53.0	68.8,54.7	68.6,47.7
path	66.4,48.7	65.6,40.6	63.1,41.7
path	61.8,44.9	57.4,40.9	59.9,45.0
path	60.9,49.5	56.7,48.5	56.3,52.3
path	51.1,48.1	50.9,51.9	52.5,53.2
path	52.0,59.0	50.2,61.5	50.1,58.6
path	48.6,60.9	47.5,54.4	47.7,63.6
path	46.6,56.7	42.8,53.0	42.0,54.1
path	44.0,59.3	43.6,62.0	42.0,60.3
path	40.3,64.5	39.2,61.9	36.8,64.3
path	39.0,52.7	38.8,48.4	47.7,36.0
path	34.0,38.9	37.2,43.7	34.5,42.2
path	33.5,44.9	35.7,47.1	32.1,50.5
path	29.4,50.5	29.4,50.5	29.2,37.4
path	22.2,36.7	22.3,41.1	25.6,41.6
path	24.3,47.1	28.6,53.1	26.8,55.8
path	21.6,55.7	22.6,62.8	24.5,62.0
path	27.3,58.4	27.8,59.9	25.8,67.2
path	27.2,67.1	27.2,69.7	24.6,72.5
path	26.6,73.1	28.4,70.8	29.4,64.3
path	30.7,64.5	29.9,70.9	31.2,70.6
path	32.8,74.5	35.3,73.5	32.8,66.9
path	33.5,65.5	37.0,67.7	36.3,72.7
path	38.2,76.9	38.9,75.1	40.4,77.6
#include follow_path_herbs
.collect 70 Lichbloom##36905
.'Save any Frost Lotus you might find.
#include "max_skill_warning",skill="Herbalism",goto="alch_425-500_farm"
step
label "farm3"
'Skipping 3rd part of farming |next "+farm4" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Wintergrasp
path	45.3,69.0	30.4,67.2
.collect 10 Frost Lotus##36908 |tip This is a rather rare herb that spawns mostly at the bottom of the map but can be found with most other Northrend herbs.
step
label "farm4"
'Skipping 4th part of farming |next "+farm5" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Mount Hyjal
path	68.2,23.9	59.2,31.6	57.0,38.9
path	57.9,17.5	51.5,16.9	52.6,35.5
path	48.7,36.5	44.0,24.5	39.8,32.5
path	36.5,21.7	32.3,25.2	34.6,36.9
path	43.5,42.6	36.2,44.9	25.3,37.8
path	24.1,31.9	11.8,31.6	14.3,47.0
path	19.0,58.5	25.6,62.0	31.9,46.7
path	33.1,65.2	36.9,53.5	42.3,55.9
path	33.8,65.0	31.3,76.5	33.8,98.2
path	57.1,80.9	59.2,84.5	59.8,77.8
path	55.8,74.7	59.8,71.6	49.1,51.6
path	61.9,60.5	67.1,53.5	74.3,58.8
path	71.9,68.5	77.3,63.2	83.0,64.2
path	89.9,49.8	80.9,51.8	77.5,59.5
#include follow_path_herbs
.collect 50 Cinderbloom##52983
.collect 20 Stormvine##52984 |opt
.collect 16 Azshara's Veil##52985 |opt
#include "max_skill_warning",skill="Herbalism",goto="alch_425-500_farm"
step
label "farm5"
'Skipping 5th part of farming |next "+farm6" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Shimmering Expanse
path	42.2,55.2	37.7,67.1	48.2,81.4
path	57.8,83.2	58.5,69.6	49.6,59.1
path	68.0,49.7	63.9,39.4	57.9,39.8
path	50.6,35.3	41.3,34.8	38.1,44.7
path	32.5,54.7
#include follow_path_herbs
.collect 16 Azshara's Veil##52985
.collect 20 Stormvine##52984
skill Herbalism,475
#include "max_skill_warning",skill="Herbalism",goto="alch_425-500_farm"
step
label "farm6"
'Skipping 6th part of farming |next "+farm7" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Deepholm
path	45.5,28.5	42.0,29.4	39.5,33.5
path	37.6,30.9	32.4,30.1	29.8,34.8
path	26.9,39.0	24.5,35.1	26.3,29.8
path	28.8,30.9	27.8,26.4	30.5,21.9
path	32.4,24.5	33.5,17.1	36.8,21.8
path	37.8,15.4	41.3,20.7	42.3,16.0
path	42.2,11.9	44.6,11.7	45.7,15.1
path	47.9,12.6	50.0,13.1	48.4,16.0
path	46.7,20.6	48.2,25.8
#include "follow_path_herbs"
.collect 44 Heartblossom##52986
skill Herbalism,500
#include "max_skill_warning",skill="Herbalism",goto="alch_425-500_farm"
step
label "farm7"
'Skipping 7th part of farming |next "+farm8" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Uldum
path	58.4,31.3	56.2,22.6	57.8,14.5
path 	61.5,14.0	57.1,44.7	60.5,58.3
path 	69.8,76.5	65.9,75.9	60.0,83.2
path 	59.0,58.8	55.3,45.8	52.0,45.6
path 	50.8,42.5	50.8,36.0	50.8,36.0
#include "follow_path_herbs"
.collect 5 Whiptail##52988
skill Herbalism,525
#include "max_skill_warning",skill="Herbalism",goto="alch_425-500_farm"
step
label "farm8"
'Skipping 8th part of farming |next "alch_425-500_skill" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Twilight Highlands
path	71.7,48.9	68.1,41.8	61.9,36.0
path 	53.9,32.0	47.3,40.3	45.6,45.2
path 	45.3,36.1	41.3,52.0	48.7,54.5
path 	51.5,45.6	58.2,48.0	59.1,40.1
path 	70.9,64.8	73.5,64.0	73.7,72.2
path	69.8,64.7	63.1,60.8	59.5,63.6
path 	55.3,50.4	57.0,77.5	53.0,79.8
path 	49.0,70.0	44.2,70.6	47.9,63.4
path 	33.6,49.9	29.0,40.3	28.6,30.5
path	46.3,23.2	57.5,27.2	69.1,38.2
path 	72.9,47.2
#include "follow_path_herbs"
.collect 10 Twilight Jasmine##52987
#include "max_skill_warning",skill="Herbalism",goto="alch_425-500_farm"
step
label "alch_425-500_skill"
title + Alchemy 425-525
#include "vendor_Alchemy"
.buy 78 Crystal Vial##3371
step
.create 15 Draught of War##93935,Alchemy,440
step
#include "trainer_Alchemy"
.learn Flask of Endless Rage##53903
step
.create 10 Flask of Endless Rage##53903,Alchemy,450
step
#include "trainer_Alchemy"
.learn Ghost Elixir##80478
step
.create 5 Ghost Elixir##80477,Alchemy,455
step
#include "trainer_Alchemy"
.learn Deathblood Venom##80479
step
.create 5 Deathblood Venom##80479,Alchemy,460
step
#include "trainer_Alchemy"
.learn Volcanic Potion##80481
step
.create 5 Volcanic Potion##80481,Alchemy,465
step
#include "trainer_Alchemy"
.learn Elixir of the Cobra##80484
step
.create 13 Elixir of the Cobra##80484,Alchemy,475
step
#include "trainer_Alchemy"
.learn Elixir of Deep Earth##80488
step
.create 5 Elixir of Deep Earth##80488,Alchemy,480
step
#include "trainer_Alchemy"
.learn Elixir of Impossible Accuracy##80491
step
.create 5 Elixir of Impossible Accuracy##80491,Alchemy,485
step
#include "trainer_Alchemy"
.learn Potion of the Tol'vir##80495
step
.create 5 Potion of the Tol'vir##80495,Alchemy,490
step
#include "trainer_Alchemy"
.learn Elixir of Mighty Speed##80493
step
.create 5 Elixir of Mighty Speed##80493,Alchemy,495
step
#include "trainer_Alchemy"
.learn Mythical Healing Potion##80498
step
.create 5 Mythical Healing Potion##80498,Alchemy,500
step
label "route2"
'Redirecting to Alchemy 500-525 |next "alch_500-525" |only if skill("Alchemy")>=500 and skill("Alchemy")<525 and not ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Alchemy 500-600 |next "alch_500-600" |only if skill("Alchemy")>=500 and skill("Alchemy")<600 and ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Blacksmithing finale |next "alch_525" |only if skill("Alchemy")>=525 and skill("Alchemy")<600 and not ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Blacksmithing finale |next "alch_600" |only if default
step
label "alch_500-525"
#include "auctioneer"
.buy 50 Volatile Life##52329
.buy 24 Heartblossom##52986
.buy 27 Cinderbloom##52983
.buy 27 Stormvine##52984
.buy 15 Twilight Jasmine##52987
.buy 15 Whiptail##52988
.' You will have to purchase these from the Auction House as they require Mining:
.buy 15 Alicite##52179
.buy 15 Hessonite##52181
.buy 15 Nightstone##52180
.buy 27 Jasper##52182
#include go_farm,skill="Herbalism",req="500",goto="alch_500-525_farm"
step
label "alch_500-525_farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Mount Hyjal
path	68.2,23.9	59.2,31.6	57.0,38.9
path	57.9,17.5	51.5,16.9	52.6,35.5
path	48.7,36.5	44.0,24.5	39.8,32.5
path	36.5,21.7	32.3,25.2	34.6,36.9
path	43.5,42.6	36.2,44.9	25.3,37.8
path	24.1,31.9	11.8,31.6	14.3,47.0
path	19.0,58.5	25.6,62.0	31.9,46.7
path	33.1,65.2	36.9,53.5	42.3,55.9
path	33.8,65.0	31.3,76.5	33.8,98.2
path	57.1,80.9	59.2,84.5	59.8,77.8
path	55.8,74.7	59.8,71.6	49.1,51.6
path	61.9,60.5	67.1,53.5	74.3,58.8
path	71.9,68.5	77.3,63.2	83.0,64.2
path	89.9,49.8	80.9,51.8	77.5,59.5
#include follow_path_herbs
.collect 27 Cinderbloom##52983
.collect 27 Stormvine##52984 |opt
.collect 50 Volatile Life##52329 |opt |tip You will get this while collecting herbs.
#include "max_skill_warning",skill="Herbalism",goto="alch_500-525_farm"
step
label "farm2"
'Skipping 2nd part of farming |next "+farm3" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Shimmering Expanse
path	42.2,55.2	37.7,67.1	48.2,81.4
path	57.8,83.2	58.5,69.6	49.6,59.1
path	68.0,49.7	63.9,39.4	57.9,39.8
path	50.6,35.3	41.3,34.8	38.1,44.7
path	32.5,54.7
#include follow_path_herbs
.collect 27 Stormvine##52984
.collect 50 Volatile Life##52329 |opt |tip You will get this while collecting herbs.
#include "max_skill_warning",skill="Herbalism",goto="alch_500-525_farm"
step
label "farm3"
'Skipping 3rd part of farming |next "+farm4" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Deepholm
path	69.4,56.0	70.0,60.7	72.9,58.2
path 	74.7,61.1	75.8,67.5	70.9,62.9
path 	71.1,70.6	66.0,68.5	26.8,41.5
path 	26.5,35.6	23.1,35.3	25.9,31.9
path 	27.5,32.3	27.8,27.0	31.2,32.0
path 	28.9,35.6	26.8,41.5
#include "follow_path_herbs"
.collect 24 Heartblossom##52986
.collect 50 Volatile Life##52329 |opt |tip You will get this while collecting herbs.
#include "max_skill_warning",skill="Herbalism",goto="alch_500-525_farm"
step
label "farm4"
'Skipping 4th part of farming |next "+farm5" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Uldum
path	58.4,31.3	56.2,22.6	57.8,14.5
path 	61.5,14.0	57.1,44.7	60.5,58.3
path 	69.8,76.5	65.9,75.9	60.0,83.2
path 	59.0,58.8	55.3,45.8	52.0,45.6
path 	50.8,42.5	50.8,36.0	50.8,36.0
#include "follow_path_herbs"
.collect 15 Whiptail##52988
.collect 50 Volatile Life##52329 |opt |tip You will get this while collecting herbs.
#include "max_skill_warning",skill="Herbalism",goto="alch_500-525_farm"
step
label "farm5"
'Skipping 5th part of farming |next "alch_500-525_skill" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Twilight Highlands
path	71.7,48.9	68.1,41.8	61.9,36.0
path 	53.9,32.0	47.3,40.3	45.6,45.2
path 	45.3,36.1	41.3,52.0	48.7,54.5
path 	51.5,45.6	58.2,48.0	59.1,40.1
path 	70.9,64.8	73.5,64.0	73.7,72.2
path	69.8,64.7	63.1,60.8	59.5,63.6
path 	55.3,50.4	57.0,77.5	53.0,79.8
path 	49.0,70.0	44.2,70.6	47.9,63.4
path 	33.6,49.9	29.0,40.3	28.6,30.5
path	46.3,23.2	57.5,27.2	69.1,38.2
path 	72.9,47.2
#include "follow_path_herbs"
.collect 15 Twilight Jasmine##52987
.collect 50 Volatile Life##52329 |tip You will get this while collecting herbs.
#include "max_skill_warning",skill="Herbalism",goto="alch_500-525_farm"
step
label "alch_500-525_skill"
#include "trainer_Alchemy"
'Learn one of the following:
.learn Volatile Alchemist Stone##68775 |only Warrior, DeathKnight, Paladin |or
.learn Quicksilver Alchemist Stone##68776 |only Rogue, Hunter, Shaman |or
.learn Vibrant Alchemist Stone##68777 |only Shaman ,Warlock, Mage, Priest, Druid |or
.learn Lifebound Alchemist Stone##80508 |only Warrior, DeathKnight, Paladin |or
step
'Create one of the following:
.create 1 Volatile Alchemist Stone##68775,Alchemy,505 |only Warrior, DeathKnight, Paladin |or
.create 1 Quicksilver Alchemist Stone##68776,Alchemy,505 |only Rogue, Hunter, Shaman |or
.create 1 Vibrant Alchemist Stone##68777,Alchemy,505 |only Shaman, Warlock, Mage, Priest, Druid |or
.create 1 Lifebound Alchemist Stone##80508,Alchemy,505 |only Warrior, DeathKnight, Paladin |or
step
'Equip whichever stone you just made |tip This trinket will allow you to transmute things as an Alchemist.
|confirm
step
#include "trainer_Alchemy"
.learn Transmute: Dream Emerald##80251
step
.create 9 Transmute: Dream Emerald##80251,Alchemy,510
step
#include "trainer_Alchemy"
.learn Transmute: Ember Topaz##80250
step
.create 5 Transmute: Ember Topaz##80250,Alchemy,515
step
#include "trainer_Alchemy"
.learn Transmute: Demonseye##80248
step
.create 5 Demonseye##80248,Alchemy,520
step
#include "trainer_Alchemy"
.learn Transmute: Amberjewel##80247
step
.create 5 Amberjewel##80247,Alchemy,525
step
label "alch_525"
'Congratulations, you are now a level 525 Alchemist!
'In order to complete this professions to level 600, please purchase the Mists of Pandaria upgrade of this guide.
|confirm
|next "end"
step
label "alch_500-600"
.'Please purchase the upgrade Profession guide to see the content for MOP |only if not ZGV.guidesets['ProfessionsHMoP']
|next Profession Guides\\Alchemy\\Alchemy 500-600 Leveling Guide |only if ZGV.guidesets['ProfessionsHMoP']
step
label "alch_600"
'Congratulations, you are now a Zen Master Alchemist!
|confirm
step
label "end"
'You have reached the end of the guide
|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Archaeology\\Archaeology 1-600 Leveling Guide",[[
description This guide will walk you through leveling your Archaeology skill from 1-600.
author support@zygorguides.com
completion skill,Archaeology,600
condition suggested hasprof('Archaeology',1,600)
#include "profession_secondary_start",prof1="Archaeology"
step
'Redirecting to Archaeology 1-50 |next "arc_1-50" |only if skill("Archaeology")<50
'Redirecting to Archaeology 50-150 |next "arc_50-150" |only if skill("Archaeology")>=50 and skill("Archaeology")<150
'Redirecting to Archaeology 150-200 |next "arc_150-200" |only if skill("Archaeology")>=150 and skill("Archaeology")<200
'Redirecting to Archaeology 200-300 |next "arc_200-300" |only if skill("Archaeology")>=200 and skill("Archaeology")<300
'Redirecting to Archaeology 300-375 |next "arc_300-375" |only if skill("Archaeology")>=300 and skill("Archaeology")<375
'Redirecting to Archaeology 375-450 |next "arc_375-450" |only if skill("Archaeology")>=375 and skill("Archaeology")<450
'Redirecting to Archaeology 450-525 |next "arc_450-525" |only if skill("Archaeology")>=450 and skill("Archaeology")<525
'Redirecting to Archaeology 525-600 |next "route2" |only if skill("Archaeology")>=525 and skill("Archaeology")<600
step
title + Archaeology 1-50
label "arc_1-50"
#include "trainer_Archaeology"
.' Learn the Archaeology skill |skillmax Archaeology,75 |tip You must be at least level 20.
|only if skill("Archaeology")<1
step
#include "home_ValleyofStrength"
step
'Open your world map, find dig sites in Kalimdor and go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
.' Use your Survey ability inside the dig site area |cast Survey##80451
.' A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 6 artifacts you can find.
.' Click the Archaeology Fragments that spawn on the ground
.skill Archaeology,50
step
title + Archaeology 50-150
label "arc_50-150"
#include "trainer_Archaeology"
.' Learn the Journeyman Archaeology skill |skillmax Archaeology,150 |tip You must be at least level 20.
step
'Open your world map, find dig sites in Kalimdor and go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
.' Use your Survey ability inside the dig site area |cast Survey##80451
.' A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 6 artifacts you can find.
.' Click the Archaeology Fragments that spawn on the ground
.' Open your Archaeology profession window |cast Archaeology##78670
.' Click artifacts to open them, then solve them once you have the required amounts of each
.skill Archaeology,125
step
title + Archaeology 150-200
label "arc_150-200"
#include "trainer_Archaeology"
.' Learn the Expert Archaeology skill |skillmax Archaeology,225 |tip You must be at least level 20.
step
'Open your world map, find dig sites in Kalimdor and go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
.' Use your Survey ability inside the dig site area |cast Survey##80451
.' A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 6 artifacts you can find.
.' Click the Archaeology Fragments that spawn on the ground
.' Open your Archaeology profession window |cast Archaeology##78670
.' Click artifacts to open them, then solve them once you have the required amounts of each
.skill Archaeology,200
step
title + Archaeology 200-300
label "arc_200-300"
#include "trainer_Archaeology"
.' Learn the Artisan Archaeology skill |skillmax Archaeology,300 |tip You must be at least level 35.
step
'Open your world map, find dig sites in Kalimdor and go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
.' Use your Survey ability inside the dig site area |cast Survey##80451
.' A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 6 artifacts you can find.
.' Click the Archaeology Fragments that spawn on the ground
.' Open your Archaeology profession window |cast Archaeology##78670
.' Click artifacts to open them, then solve them once you have the required amounts of each
.skill Archaeology,275
step
title + Archaeology 300-375
label "arc_300-375"
#include "trainer_Archaeology"
.' Learn the Master Archaeology skill |skillmax Archaeology,375 |tip You must be at least level 50.
step
'Open your world map, find dig sites in Kalimdor and go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
.' Use your Survey ability inside the dig site area |cast Survey##80451
.' A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 6 artifacts you can find.
.' Click the Archaeology Fragments that spawn on the ground
.' Open your Archaeology profession window |cast Archaeology##78670
.' Click artifacts to open them, then solve them once you have the required amounts of each
.skill Archaeology,350
step
title + Archaeology 375-450
label "arc_375-450"
#include "trainer_Archaeology"
.' Learn the Grand Master Archaeology skill |skillmax Archaeology,450 |tip You must be at least level 65.
step
'Open your world map, find dig sites in Kalimdor and go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
.' Use your Survey ability inside the dig site area |cast Survey##80451
.' A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 6 artifacts you can find.
.' Click the Archaeology Fragments that spawn on the ground
.' Open your Archaeology profession window |cast Archaeology##78670
.' Click artifacts to open them, then solve them once you have the required amounts of each
.skill Archaeology,425
step
title + Archaeology 450-525
label "arc_450-525"
#include "trainer_Archaeology"
.' Learn the Illustrious Grand Master Archaeology skill |skillmax Archaeology,525 |tip You must be at least level 75.
step
'Open your world map, find dig sites in Kalimdor then go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
.' Use your Survey ability inside the dig site area |cast Survey##80451
.' A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 6 artifacts you can find.
.' Click the Archaeology Fragments that spawn on the ground
.' Open your Archaeology profession window |cast Archaeology##78670
.' Click artifacts to open them, then solve them once you have the required amounts of each
.skill Archaeology,525
step
label "route2"
'Redirecting to Archaeology finale |next "arc_525" |only if skill("Archaeology")>=525 and skill("Archaeology")<600 and not ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Archaeology 525-600 |next "arc_525-600" |only if skill("Archaeology")>=525 and skill("Archaeology")<600 and ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Archaeology finale |next "arc_600" |only if default
step
label "arc_525"
'Congratulations, you are now a level 525 Archaeologist!
'In order to complete this professions to level 600, please purchase the Mists of Pandaria upgrade of this guide.
|next "end"
step
label "arc_525-600"
.'Please purchase the upgrade Profession guide to see the content for MOP |only if not ZGV.guidesets['ProfessionsHMoP']
|next Profession Guides\\Archaeology\\Archaeology 525-600 Leveling Guide |only if ZGV.guidesets['ProfessionsHMoP']
step
label "arc_600"
'Congratulations, you are now a Zen Master Archaeologist!
|confirm
step
label "end"
'You have reached the end of the guide
|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Blacksmithing 1-600 Leveling Guide",[[
description This guide will walk you through leveling your Blacksmithing skill from 1-600.
author support@zygorguides.com
completion skill,Blacksmithing,600
condition suggested hasprof('Blacksmithing',1,600)
#include profession_dual_start,prof1="Blacksmithing",prof2="Mining"
step
label "route"
'Redirecting to Blacksmithing 1-75 |next "bla_1-75" |only if skill("Blacksmithing")<75
'Redirecting to Blacksmithing 75-125 |next "bla_75-125" |only if skill("Blacksmithing")>=75 and skill("Blacksmithing")<125
'Redirecting to Blacksmithing 125-210 |next "bla_125-210" |only if skill("Blacksmithing")>=125 and skill("Blacksmithing")<210
'Redirecting to Blacksmithing 210-300 |next "bla_210-300" |only if skill("Blacksmithing")>=210 and skill("Blacksmithing")<300
'Redirecting to Blacksmithing 300-325 |next "bla_300-325" |only if skill("Blacksmithing")>=300 and skill("Blacksmithing")<325
'Redirecting to Blacksmithing 325-350 |next "bla_325-350" |only if skill("Blacksmithing")>=325 and skill("Blacksmithing")<350
'Redirecting to Blacksmithing 350-425 |next "bla_350-425" |only if skill("Blacksmithing")>=350 and skill("Blacksmithing")<425
'Redirecting to Blacksmithing 425-475 |next "bla_425-475" |only if skill("Blacksmithing")>=425 and skill("Blacksmithing")<475
'Redirecting to Blacksmithing 475-500 |next "bla_475-500" |only if skill("Blacksmithing")>=475 and skill("Blacksmithing")<500
'Redirecting to Blacksmithing 500-600 |next "route2" |only if skill("Blacksmithing")>=500 and skill("Blacksmithing")<600
step
title + Blacksmithing 1-75
label "bla_1-75"
#include "trainer_Blacksmithing"
.skillmax Blacksmithing,75
step
#include "vendor_Blacksmithing"
.buy 1 Blacksmith Hammer##5956
step
#include "home_ValleyofStrength"
step
#include "auctioneer"
.buy 75 Rough Stone##2835
.buy 150 Copper Bar##2840
#include go_farm,skill="Mining",req="1",goto="bla_1-75_farm"
next "bla_1-75_skill"
step
label "bla_1-75_farm"
#include vendor_Blacksmithing
.buy 1 Mining Pick##2901
step
map Durotar
path	38.9,16.0	37.5,21.1	35.9,34.4
path +	36.8,52.3	44.2,49.5	50.6,46.3
path +	50.7,63.3	54.9,67.0	56.2,49.8
path +	55.0,36.9	53.0,29.7	57.9,30.0
path +	54.8,19.0	50.0,17.2	44.2,23.6
#include "follow_path_mine"
.collect 75 Rough Stone##2835
.collect 150 Copper Ore##2770
.skill Mining,50
#include "max_skill_warning",skill="Mining",goto="bla_1-75_farm"
step
#include "maincity_forge2"
.create Copper Bar##2657,Mining,150 total |n
.collect 150 Copper Bar##2840
step
label "bla_1-75_skill"
#include "maincity_anvil"
.create Rough Sharpening Stone##2660,Blacksmithing,25
step
#include "trainer_Blacksmithing"
.learn Rough Grinding Stone##3320
step
#include "maincity_anvil"
.create Rough Grinding Stone##3320,Blacksmithing,60 |tip Save 10 Rough Grinding Stones, you will need them later.
step
#include "trainer_Blacksmithing"
.learn Copper Chain Belt##2661
step
#include "maincity_anvil"
.create Copper Chain Belt##2661,Blacksmithing,75
step
title + Blacksmithing 75-125
label "bla_75-125"
#include "trainer_Blacksmithing"
.skillmax Blacksmithing,150
step
#include "auctioneer"
.buy 60 Coarse Stone##2836
.buy 150 Copper Bar##2840
.buy 90 Bronze Bar##2841
#include go_farm,skill="Mining",req="65",goto="bla_75-125_farm"
next "bla_75-125_skill"
step
label "bla_75-125_farm"
#include "trainer_Mining"
.skillmax Mining,150
.learn Smelt Bronze##2659
.learn Smelt Tin##3304
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 75. It's better to skill up first. |only if skill("Mining")<50 and skillmax("Mining")<150
step
label "farm"
'Skipping 1st part of farming |next "+farm2" |only if itemcount("Copper Bar")>=235
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Durotar
path	38.9,16.0	37.5,21.1	35.9,34.4
path +	36.8,52.3	44.2,49.5	50.6,46.3
path +	50.7,63.3	54.9,67.0	56.2,49.8
path +	55.0,36.9	53.0,29.7	57.9,30.0
path +	54.8,19.0	50.0,17.2	44.2,23.6
#include "follow_path_mine"
.collect 150 Copper Ore##2770 |only if itemcount("Copper Bar")<235
#include "max_skill_warning",skill="Mining",goto="bla_1-75_farm"
step
label "farm2"
map Ashenvale
path	82.0,50.2	78.8,44.9	67.1,45.8
path +	61.9,42.6	59.5,37.5	54.5,37.1
path +	53.5,48.2	49.5,54.7	45.5,47.5
path +	41.8,40.3	40.1,32.4	38.2,30.3
path +	34.6,33.3	33.6,28.5	33.0,22.5
path +	25.4,19.3	21.0,19.1	16.6,15.7
path +	14.1,13.1	17.0,23.7	17.3,28.2
path +	16.5,36.6	19.5,45.7	18.8,55.4
path +	23.4,50.2	25.4,54.2	25.7,60.4
path +	29.9,58.1	31.8,64.7	33.1,70.3
path +	38.8,62.7	42.0,64.2	55.6,68.4
path +	62.7,64.6	67.0,69.1	75.6,69.2
path +	82.4,71.8	86.5,79.1	90.1,76.6
#include "follow_path_mine"
.collect 60 Coarse Stone##2836
.collect 70 Tin Ore##2771
skill Mining,125
#include "max_skill_warning",skill="Mining",goto="bla_75-125_farm"
step
#include "maincity_forge2"
.create Copper Bar##2657,Mining,205 total |n
.collect 150 Copper Bar##2840
step
#include "maincity_forge2"
.create Tin Bar##3304,Mining,85 total |n
.collect 70 Tin Bar##3576
step
#include "maincity_forge2"
.create Bronze Bar##2659,Mining,170 total |n
.collect 90 Bronze Bar##2841
step
label "bla_75-125_skill"
#include "trainer_Blacksmithing"
.learn Coarse Grinding Stone##3326
step
#include "maincity_anvil"
.create 30 Coarse Grinding Stone##3326,Blacksmithing,30 total |n
.collect 30 Coarse Grinding Stone##3478 |tip Save 30 Coarse Grinding Stones, you'll need them later.
step
#include "trainer_Blacksmithing"
.learn Runed Copper Belt##2666
step
#include "maincity_anvil"
.create Runed Copper Belt##2666, Blacksmithing,105
step
#include "trainer_Blacksmithing"
.learn Rough Bronze Leggings##2668
step
#include "maincity_anvil"
.create Rough Bronze Leggings##2668,Blacksmithing,125
step
title + Blacksmithing 125-210
label "bla_125-210"
#include "trainer_Blacksmithing"
.skillmax Blacksmithing,225
step
#include "auctioneer"
.buy 150 Heavy Stone##2838
.buy 230 Iron Bar##3575
.buy 100 Steel Bar##3859
.buy 50 Bronze Bar##2841
.buy 60 Coarse Stone##2836 |only if itemcount("Coarse Grinding Stone")<30
#include go_farm,skill="Mining",req="125",goto="bla_125-210_farm"
next "bla_125-210_skill"
step
label "bla_125-210_farm"
#include "trainer_Mining"
.skillmax Mining,225
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 150. It's better to skill up first. |only if skill("Mining")<125 and skillmax("Herbalism")<225
step
label "farm"
'Skipping 1st part of farming |next "+farm2" |only if itemcount("Bronze Bar")>=50
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Durotar
path	38.9,16.0	37.5,21.1	35.9,34.4
path +	36.8,52.3	44.2,49.5	50.6,46.3
path +	50.7,63.3	54.9,67.0	56.2,49.8
path +	55.0,36.9	53.0,29.7	57.9,30.0
path +	54.8,19.0	50.0,17.2	44.2,23.6
#include "follow_path_mine"
.collect 25 Copper Ore##2770
#include "max_skill_warning",skill="Mining",goto="bla_125-210_farm"
step
label "farm2"
'Skipping 2nd part of farming |next "+farm3" |only if itemcount("Bronze Bar")>=50 and itemcount("Coarse Grinding Stone")>=30
'Skipping 2nd part of farming |next "+farm3" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Ashenvale
path	82.0,50.2	78.8,44.9	67.1,45.8
path	61.9,42.6	59.5,37.5	54.5,37.1
path	53.5,48.2	49.5,54.7	45.5,47.5
path	41.8,40.3	40.1,32.4	38.2,30.3
path	34.6,33.3	33.6,28.5	33.0,22.5
path	25.4,19.3	21.0,19.1	16.6,15.7
path	14.1,13.1	17.0,23.7	17.3,28.2
path	16.5,36.6	19.5,45.7	18.8,55.4
path	23.4,50.2	25.4,54.2	25.7,60.4
path	29.9,58.1	31.8,64.7	33.1,70.3
path	38.8,62.7	42.0,64.2	55.6,68.4
path	62.7,64.6	67.0,69.1	75.6,69.2
path	82.4,71.8	86.5,79.1	90.1,76.6
#include "follow_path_mine"
.collect 60 Coarse Stone##2836 |only if itemcount("Coarse Grinding Stone")<30
.collect 25 Tin Ore##2771
#include "max_skill_warning",skill="Mining",goto="bla_75-125_farm"
step
label "farm3"
map Feralas
path	74.9,48.6	84.0,45.6
path	84.9,39.9	71.5,34.7
path	54.3,50.1	48.6,44.0	49.7,34.9
path	51.6,33.8	50.9,26.2	51.3,19.0
path	54.9,8.1	49.4,4.0	40.0,7.7
path	37.1,12.1	38.1,17.6	37.0,25.6
path	45.1,26.2	46.3,38.6	50.3,52.7
path	47.9,55.4	46.9,64.1	54.8,53.9
path	55.2,62.6	52.9,66.2	53.6,73.7
path	60.8,75.8	62.0,55.0	63.7,61.0
path	66.4,51.3	68.2,51.3
path	68.1,61.5	71.6,65.1	77.2,62.1
#include "follow_path_mine"
.collect 150 Heavy Stone##2838
.collect 330 Iron Ore##2772
.skill Mining,200
#include "max_skill_warning",skill="Mining",goto="bla_125-210_farm"
step
#include "trainer_Mining"
.learn Smelt Iron##3307
.learn Smelt Steel##3569
step
#include "maincity_forge2"
.create Copper Bar##2657,Mining,25 total |n
.collect 25 Copper Bar##2840
step
#include "maincity_forge2"
.create Tin Bar##3304,Mining,25 total |n
.collect 25 Tin Bar##3576
step
#include "maincity_anvil"
.create Bronze Bar##2659,Mining,50 total |n
.collect 50 Bronze Bar##2841
step
#include "maincity_anvil"
.create Coarse Grinding Stone##3326,Blacksmithing,30 total |n
.collect 30 Coarse Grinding Stone##3478 |tip Only create this if you do not already have it
step
#include "maincity_anvil"
.create Iron Bar##3307,Mining,330 total
.collect 330 Iron Bar##3575
step
#include "vendor_Blacksmithing"
.buy 100 Coal##3857
step
#include "maincity_anvil"
.create Steel Bar##3569,Mining,100 total
.collect 100 Steel Bar##3859
step
label "bla_125-210_skill"
goto Orgrimmar/1 60.3,54.3
.talk 3366
.buy 35 Green Dye##2605
step
#include "trainer_Blacksmithing"
.learn Heavy Grinding Stone##3337
step
#include "maincity_anvil"
.create 50 Heavy Grinding Stone##3337,Blacksmithing,50 total |n
.collect 50 Heavy Grinding Stone##3486 |tip Save 50 Heavy Grinding Stones, you'll need them later.
step
#include "trainer_Blacksmithing"
.learn Patterned Bronze Bracers##2672
step
#include "maincity_anvil"
.create Patterned Bronze Bracers##2672,Blacksmithing,155
step
#include "trainer_Blacksmithing"
.learn Green Iron Leggings##3506
step
#include "maincity_anvil"
.create Green Iron Leggings##3506,Blacksmithing,165
step
#include "trainer_Blacksmithing"
.learn Green Iron Bracers##3501
step
#include "maincity_anvil"
.create Green Iron Bracers##3501,Blacksmithing,190
step
#include "trainer_Blacksmithing"
.learn Golden Scale Bracers##7223
step
#include "maincity_anvil"
.create Golden Scale Bracers##7223,Blacksmithing,210
step
title + Blacksmithing 210-300
label "bla_210-300"
#include "trainer_Blacksmithing"
.skillmax Blacksmithing,300
step
#include "auctioneer"
.buy 320 Mithril Bar##3860
.buy 5 Star Ruby##7910
.buy 200 Mageweave Cloth##4338
.buy 400 Thorium Bar##12359
.buy 120 Dense Stone##12365
#include go_farm,skill="Mining",req="1",goto="bla_210-300_farm"
next "bla_210-300_skill"
step
label "bla_210-300_farm"
#include "trainer_Mining"
.skillmax Mining,300
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 225. It's better to skill up first. |only if skill("Mining")<200 and skillmax("Mining")<300
step
label "farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Felwood
path	49.6,76.6	43.5,60.9	42.9,50.8
path +	52.9,31.6	59.6,27.2	55.7,18.6
path +	63.5,24.5	62.6,6.9	42.5,17.1
path +	42.0,24.1	39.9,22.1	41.0,27.5
path +	38.6,37.4	38.3,55.6	40.7,59.8
path +	35.0,59.1	41.8,62.6	36.3,66.8
path +	40.7,72.9	37.8,73.5	40.3,77.4
path +	39.1,79.3	43.8,81.5	39.0,81.6
path +	42.3,87.1	45.1,84.6	45.1,89.7
path +	48.1,92.8	51.2,86.1	52.5,88.8
path +	57.7,86.5	58.6,84.8	55.9,81.1
#include "follow_path_mine"
.collect 320 Mithril Ore##3858
.collect 5 Star Ruby##7910 |n |tip Keep any Star Rubies that you find, you will need 5 of them later.
.skill Mining,215
#include "max_skill_warning",skill="Mining",goto="bla_210-300_farm"
step
goto 49.2,87.0
.from Deadwood Gardener##7154+, Deadwood Warrior##7153+, Deadwood Pathfinder##7155+
.from Jadefire Rogue##7106+, Jadefire Shadowstalker##7110+
.from Jaedenar Cultist##7112+, Jaedenar Guardian##7113+, Jaedenar Adept##7115+
.collect 200 Mageweave Cloth##4338
.' You can find more:
.' Around [38.4,67.6]
.' Around [39.4,58.4]
step
label "farm2"
'Skipping 2nd part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Winterspring
path	52.8,46.2	58.3,41.2	59.7,45.0
path 	59.9,21.4	58.3,18.4	54.5,21.2
path 	45.9,13.1	44.8,15.3	44.8,29.0
path 	47.8,33.2	49.8,42.8	39.5,51.0
path 	33.5,47.2	30.2,48.6	31.5,53.5
path 	28.4,51.6	27.3,48.0	23.0,45.7
path 	22.3,62.4	25.3,61.3	25.9,58.1
path 	41.2,57.7	42.1,53.2	46.1,60.8
path 	51.0,61.4	53.7,63.6	51.2,69.9
path 	55.2,68.9	56.8,81.1	59.0,80.3
path 	59.0,85.3	62.0,87.6	64.1,81.8
path 	62.2,77.7	62.3,73.3	67.0,68.5
path 	67.1,60.1
#include "follow_path_mine"
.collect 400 Thorium Ore##10620
.collect 120 Dense Stone##12365
.collect 5 Star Ruby##7910
.skill Mining,275
#include "max_skill_warning",skill="Mining",goto="bla_210-300_farm"
step
label "exit"
#include "trainer_Mining"
.learn Smelt Mithril##10097
.learn Smelt Thorium##16153
step
#include "maincity_forge2"
.create Mithril Bar##10097,Mining,320 total
.collect 320 Mithril Bar##3860
step
#include "maincity_forge2"
.create Thorium Bar##16153,Mining,400 total
.collect 400 Thorium Bar##12359
step
label "bla_210-300_skill"
#include "trainer_Blacksmithing"
.learn Heavy Mithril Gauntlet##9928
step
#include "maincity_anvil"
.create Heavy Mithril Gauntlet##9928,Blacksmithing,230
step
#include "trainer_Blacksmithing"
.learn Mithril Coif##9961
step
#include "maincity_anvil"
.create 20 Mithril Coif##9961,Blacksmithing,250
step
#include "trainer_Blacksmithing"
.learn Dense Grinding Stone##16639
step
#include "maincity_anvil"
.create Dense Grinding Stone##16639,Blacksmithing,260
step
#include "trainer_Blacksmithing"
.learn Thorium Bracers##16644
step
#include "maincity_anvil"
.create Thorium Bracers##16644,Blacksmithing,280
step
#include "trainer_Blacksmithing"
.learn Imperial Plate Bracers##16649
step
#include "maincity_anvil"
.create Imperial Plate Bracers##16649,Blacksmithing,295
step
#include "trainer_Blacksmithing"
.learn Thorium Helm##16653
step
#include "maincity_anvil"
.create 5 Thorium Helm##16653,Blacksmithing,300
step
title + Blacksmithing 300-325
label "bla_300-325"
#include "trainer_Blacksmithing"
.skillmax Blacksmithing,375
step
#include "auctioneer"
.buy 165 Fel Iron Bar##23445
#include go_farm,skill="Mining",req="275",goto="bla_300-325_farm"
|next "bla_300-325_skill2"
step
label "bla_300-325_farm"
#include "trainer_Mining"
.skillmax Mining,375
.learn Smelt Fel Iron##29356
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 300. It's better to skill up first. |only if skill("Mining")<275 and skillmax("Mining")<375
step
map Hellfire Peninsula
path	69.3,47.5	74.5,38.7	68.2,37.7
path	62.0,31.0	58.0,32.8	54.0,26.7
path	46.0,29.3	34.1,29.1	32.0,34.5
path	38.5,38.2	35.7,40.7	33.4,49.8
path	30.3,48.6	32.5,43.3	28.5,39.3
path	26.5,45.5	22.6,45.1	18.0,38.3
path	12.5,36.1	17.9,46.3	11.8,41.9
path	12.0,47.0	06.2,49.5	15.4,62.4
path	20.3,52.9	24.0,61.1	21.2,62.7
path	28.1,80.8	27.7,69.5	30.5,72.8
path	30.3,59.9	34.8,66.6	37.7,53.3
path	46.9,46.3	49.3,49.5	60.3,48.6
path	60.8,52.8	52.1,52.7	47.2,57.7
path	45.9,75.5	33.5,89.6	33.1,92.6
path	49.1,77.5	44.6,86.2	55.5,82.8
path	58.7,78.8	56.5,72.3	65.8,63.6
path	67.1,71.7	63.0,73.3	65.8,77.9
path	68.7,77.6	71.0,71.7	70.1,68.6
path	65.0,59.8	65.6,56.0	75.0,63.9
path	78.4,80.2	80.7,77.5	77.3,63.7
path	72.7,60.2	71.5,53.1	68.3,52.0
#include "follow_path_mine"
.collect 330 Fel Iron Ore##23424
.skill Mining,350
#include "max_skill_warning",skill="Mining",goto="bla_300-325_farm"
step
#include "shatt_anvil"
.create Fel Iron Bar##29356,Mining,165 total
.collect 165 Fel Iron Bar##23445 |tip Hold on to 50 of these for the next section, you will need them.
|next "bla_300-325_skill2"
step
label "bla_300-325_skill2"
goto Hellfire Peninsula,53.2,38.2
.talk 16583
.buy Plans: Lesser Ward of Shielding##23638 |tip Save this recipe, you will learn it later, when your Blacksmithing skill is higher.  This recipe is a limited supply item, so if it's not available for purchase, keep checking again every few minutes until you can buy it.
step
goto 53.2,38.2
.talk 16583
.learn Fel Iron Plate Gloves##29545
step
goto 53.1,38.1
.create Fel Iron Plate Gloves##29545,Blacksmithing,310
step
goto 53.2,38.2
.talk 16583
.learn Fel Iron Plate Belt##29547
step
goto 53.1,38.1
.create Fel Iron Plate Belt##29547,Blacksmithing,315
step
goto 53.2,38.2
.talk 16583
.learn Fel Iron Chain Gloves##29552
step
goto 53.1,38.1
.create Fel Iron Chain Gloves##29552,Blacksmithing,320
step
goto 53.2,38.2
.talk 16583
.learn Fel Iron Plate Boots##29548
step
goto 53.1,38.1
.create Fel Iron Plate Boots##29548,Blacksmithing,325
step
label	"bla_325-350"
#include "shatt_auctioneer"
.buy 90 Adamantite Bar##23446
#include go_farm,skill="Mining",req="275",goto="bla_325-350_farm"
|next "bla_325-350_skill"
step
label "bla_325-350_farm"
map Nagrand
path	72.7,64.7	74.3,60.5	69.1,48.6
path	72.3,43.1	66.1,32.3	57.7,30.8
path	59.5,27.3	49.3,24.1	47.1,20.2
path	39.6,20.4	28.2,12.1	25.7,16.5
path	26.8,23.6	30.9,21.9	27.9,25.3
path	27.5,32.1	23.2,27.8	7.1,39.9
path	25.2,61.1	31.9,81.9	41.8,81.8
path	43.5,73.7	57.4,78.3	43.0,62.2
path	32.2,60.3	29.2,54.1	34.0,52.6
path	29.7,45.7	34.1,44.3	35.5,47.3
path	38.8,36.9	45.5,43.9	42.4,50.9
path	48.0,57.5	51.5,55.6	60.5,56.9
path	56.7,64.0	70.1,83.3	69.8,72.5
#include "follow_path_mine"
.collect 180 Adamantite Ore##23425
.skill Mining,375
#include "max_skill_warning",skill="Mining",goto="bla_325-350_farm"
step
label "bla_325-350_skill"
#include "shatt_anvil"
.create Adamantite Bar##29358,Mining,85 total
.collect 90 Adamantite Bar##23446
step
#include "trainer_Blacksmithing_Shatt"
.learn Lesser Rune of Warding##32284
step
#include "shatt_anvil"
.create Lesser Rune of Warding##32284,Blacksmithing,330
step
#include "trainer_Blacksmithing_Shatt"
.learn Fel Iron Breastplate##29550
step
#include "shatt_anvil"
.create Fel Iron Breastplate##29550,Blacksmithing,335
step
goto Shattrath City,64.1,71.9
.talk 19662
.buy 1 Plans: Adamantite Cleaver##23591 |n |tip This recipe is a limited supply item, so if it's not available for purchase, keep checking again every few minutes until you can buy it.
.' Click the Plans: Adamantite Cleaver in your bags |use Plans: Adamantite Cleaver##23591
.learn Adamantite Cleaver##29568
step
#include "shatt_anvil"
.create Adamantite Cleaver##29568,Blacksmithing,340
step
.' Click the Plans: Lesser Ward of Shielding in your bags |use Plans: Lesser Ward of Shielding##23638
.learn Lesser Ward of Shielding##29728
step
#include "shatt_anvil"
.create Lesser Ward of Shielding##29728,Blacksmithing,345
step
#include "shatt_anvil"
.create Adamantite Cleaver##29568,Blacksmithing,350
step
title + Blacksmithing 350-425
label "bla_350-425"
#include "trainer_Blacksmithing"
.skillmax Blacksmithing,450
step
#include "auctioneer"
.buy 320 Cobalt Bar##36916
.buy 285 Saronite Bar##36913
#include go_farm,skill="Mining",req="350",goto="bla_350-425_farm"
next "bla_350-425_skill"
step
label "bla_350-425_farm"
#include "trainer_Mining"
.skillmax Mining,450
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 375. It's better to skill up first. |only if skill("Mining")<350 and skillmax("Mining")<450
step
label "farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Howling Fjord
path 83.0,44.8	78.1,39.4	72.7,38.3
path 71.0,31.8	75.3,22.9	70.2,8.3
path 63.2,13.7
path 61.4,23.6	57.7,18.3	51.4,14.2
path 45.5,13.3	38.1,18.9	31.1,10.9
path 28.9,10.3	21.7,12.8	19.4,23.5
path 24.2,27.4	27.6,22.6	27.3,30.8
path 38.1,29.0	47.6,32.7	53.0,31.9
path 63.5,37.1	65.5,48.7	66.9,62.7
path 64.4,67.8	64.4,72.4	67.9,76.5
path 71.3,73.6	72.5,67.9	77.3,67.2
path 77.2,60.8	74.9,55.3	79.1,50.4
#include "follow_path_mine"
.collect 320 Cobalt Ore##36909
.skill Mining,425
#include "max_skill_warning",skill="Mining",goto="bla_350-425_farm"
step
label "farm2"
'Skipping 2nd part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Sholazar Basin
path follow strict
path	77.9,63.8	78.7,52.4	74.3,48.6
path	65.1,30.5	58.9,27.8	58.9,21.1
path	40.8,20.8	32.9,32.8	35.8,40.3
path	33.8,40.6	33.7,35.4	29.7,38.5
path	23.3,48.4	20.8,56.1	20.4,76.6
path	22.6,78.5	22.5,84.0	34.5,88.9
path	60.3,88.8	59.7,81.3	51.5,82.1
path	48.5,76.8	62.3,74.5	63.6,84.4
path	74.2,56.1	69.4,58.3	64.2,53.5
path	75.1,54.0	74.3,48.6	63.5,44.4
path	66.7,40.3	63.7,34.6	58.5,33.3
path	59.4,37.3	48.0,33.2	52.7,39.9
path	47.8,43.1	46.8,39.7	39.6,32.8
path	39.9,39.5	33.5,46.6	35.8,49.9
path	40.0,50.9	38.0,54.9	30.5,55.3
path	35.1,59.5	28.7,61.7	35.8,67.6
path	33.8,73.4	34.2,78.4	43.6,76.6
path	39.3,75.5	40.9,70.1	46.0,60.9
path	47.4,66.9	51.5,62.1	55.5,66.5
path	56.5,57.1	58.9,53.9	60.0,60.2
path	57.2,68.1	63.0,67.1	62.8,62.3
path	71.3,63.8
#include "follow_path_mine"
.collect 570 Saronite Ore##36912
#include "max_skill_warning",skill="Mining",goto="bla_350-425_farm"
step
#include "trainer_Mining"
.skillmax Mining,525
.learn Smelt Cobalt##49252
.learn Smelt Saronite##49258
step
#include "maincity_forge2"
.create Cobalt Bar##49252,Mining,320 total
.collect 320 Cobalt Bar##36916
step
#include "maincity_forge2"
.create Saronite Bar##49258,Mining,151 total
.collect 285 Saronite Bar##36913
step
label "bla_350-425_skill"
#include "trainer_Blacksmithing"
.learn Cobalt Belt##52568
step
#include "maincity_anvil"
.create 10 Cobalt Belt##52568,Blacksmithing,360
step
#include "trainer_Blacksmithing"
.learn Cobalt Bracers##55834
step
#include "maincity_anvil"
.create 10 Cobalt Bracers##55834,Blacksmithing,370
step
#include "trainer_Blacksmithing"
.learn Cobalt Gauntlets##55835
step
#include "maincity_anvil"
.create 10 Cobalt Gauntlets##55835,Blacksmithing,380
step
#include "trainer_Blacksmithing"
.learn Spiked Cobalt Boots##54918
step
#include "maincity_anvil"
.create 5 Spiked Cobalt Boots##54918,Blacksmithing,385
step
#include "trainer_Blacksmithing"
.learn Spiked Cobalt Shoulders##54941
step
#include "maincity_anvil"
.create Spiked Cobalt Shoulders##54941,Blacksmithing,390
step
#include "trainer_Blacksmithing"
.learn Notched Cobalt War Axe##55204
step
#include "maincity_anvil"
.create 5 Notched Cobalt War Axe##55204,Blacksmithing,395
step
#include "trainer_Blacksmithing"
.learn Tempered Saronite Belt##54551
step
#include "maincity_anvil"
.create 5 Tempered Saronite Belt##54551,Blacksmithing,400
step
#include "trainer_Blacksmithing"
.learn Horned Cobalt Helm##54949
step
#include "maincity_anvil"
.create 5 Horned Cobalt Helm##54949,Blacksmithing,405
step
#include "trainer_Blacksmithing"
.learn Tempered Saronite Shoulders##54556
step
#include "maincity_anvil"
.create 10 Tempered Saronite Shoulders##54556,Blacksmithing,415
step
#include "trainer_Blacksmithing"
.learn Tempered Saronite Gauntlets##55015
step
#include "maincity_anvil"
.create Tempered Saronite Gauntlets##55015,Blacksmithing,425
step
title + Blacksmithing 425-475
label "bla_425-475"
#include "trainer_Blacksmithing"
.skillmax Blacksmithing,525
step
#include "auctioneer"
.buy 160 Obsidium Bar##54849
.buy 15 Volatile Earth##52327
#include go_farm,skill="Mining",req="425",goto="bla_425-475_farm"
next "bla_425-475_skill"
step
label "bla_425-475_farm"
#include "trainer_Mining"
.skillmax Mining,525
.learn Smelt Obsidium##84038
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 450. It's better to skill up first. |only if skill("Mining")<425 and skillmax("Mining")<525
step
map Mount Hyjal
path	67.2,29.1	61.1,36.7	54.5,17.1
path	41.2,20.5	42.9,27.5	49.6,25.5
path	46.6,35.6	40.5,33.6	39.9,29.4
path	34.9,27.5	35.0,21.7	32.3,28.8
path	35.0,35.6	31.1,40.4	25.7,40.6
path	28.7,35.7	24.3,35.8	25.7,29.8
path	14.7,38.8	13.6,31.6	9.4,36.4
path	17.6,46.5	12.9,46.5	15.5,52.2
path	20.7,60.2	21.5,56.8	23.3,61.5
path	30.3,55.2	27.6,55.0	27.7,51.2
path	34.1,46.8	34.1,55.2	37.5,54.9
path	36.0,51.0	40.3,51.6	41.5,63.3
path	38.9,65.5	36.4,58.6	32.8,61.8
path	35.2,63.5	32.8,66.6	31.3,90.4
path	36.6,95.5	50.8,82.1	51.8,75.1
path	60.6,82.5	59.8,73.0	56.5,69.8
path	58.9,66.4	53.6,66.8	49.6,51.1
path	59.7,56.3	55.5,56.8	62.8,60.0
path	64.5,50.9	67.5,50.6	69.8,56.0
path	75.9,69.6	75.7,63.6	80.2,67.2
path	84.3,64.9	88.1,48.5	84.2,47.5
path	78.5,53.3	84.2,54.5	82.1,60.9
path	72.9,57.9
#include "follow_path_mine"
.collect 320 Obsidium Ore##53038
.collect 38 Volatile Earth##52327 |n |tip You will only need 10 to complete the 425-475 section of this guide.
.skill Mining,475
#include "max_skill_warning",skill="Mining",goto="bla_425-475_farm"
step
#include "maincity_anvil"
.create Obsidium Bar##84038,Mining,160 total
.collect 160 Obsidium Bar##54849
step
label "bla_425-475_skill"
#include "trainer_Blacksmithing"
.learn Folded Obsidium##76178
step
#include "maincity_anvil"
.create Folded Obsidium##76178,Blacksmithing,80 total |n
skill Blacksmithing,455
.collect 80 Folded Obsidium##65365 |tip Save all 80 of these, as you will need them later.
step
#include "trainer_Blacksmithing"
.learn Hardened Obsidium Gauntlets##76180
step
#include "maincity_anvil"
.create 5 Hardened Obsidium Gauntlets##76180,Blacksmithing,460
step
#include "trainer_Blacksmithing"
.learn Hardened Obsidium Belt##76181
step
#include "maincity_anvil"
.create 10 Hardened Obsidium Belt##76181,Blacksmithing,470
step
#include "trainer_Blacksmithing"
.learn Redsteel Boots##76265
step
#include "maincity_anvil"
.create Redsteel Boots##76265,Blacksmithing,475
step
title + Blacksmithing 475-500
label "bla_475-500"
#include "auctioneer"
.buy 84 Elementium Bar##52186
.buy 32 Obsidium Bar##54849
.buy 28 Volatile Earth##52327
.buy 4 Volatile Fire##52325
#include go_farm,skill="Mining",req="475",goto="bla_475-500_farm"
next "bla_475-500_skill"
step
label "bla_475-500_farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Mount Hyjal
path	67.2,29.1	61.1,36.7	54.5,17.1
path	41.2,20.5	42.9,27.5	49.6,25.5
path	46.6,35.6	40.5,33.6	39.9,29.4
path	34.9,27.5	35.0,21.7	32.3,28.8
path	35.0,35.6	31.1,40.4	25.7,40.6
path	28.7,35.7	24.3,35.8	25.7,29.8
path	14.7,38.8	13.6,31.6	9.4,36.4
path	17.6,46.5	12.9,46.5	15.5,52.2
path	20.7,60.2	21.5,56.8	23.3,61.5
path	30.3,55.2	27.6,55.0	27.7,51.2
path	34.1,46.8	34.1,55.2	37.5,54.9
path	36.0,51.0	40.3,51.6	41.5,63.3
path	38.9,65.5	36.4,58.6	32.8,61.8
path	35.2,63.5	32.8,66.6	31.3,90.4
path	36.6,95.5	50.8,82.1	51.8,75.1
path	60.6,82.5	59.8,73.0	56.5,69.8
path	58.9,66.4	53.6,66.8	49.6,51.1
path	59.7,56.3	55.5,56.8	62.8,60.0
path	64.5,50.9	67.5,50.6	69.8,56.0
path	75.9,69.6	75.7,63.6	80.2,67.2
path	84.3,64.9	88.1,48.5	84.2,47.5
path	78.5,53.3	84.2,54.5	82.1,60.9
path	72.9,57.9
#include "follow_path_mine"
.collect 64 Obsidium Ore##53038
.collect 28 Volatile Earth##52327 |n
#include "max_skill_warning",skill="Mining",goto="bla_475-500_farm"
step
label "farm2"
map Twilight Highlands
path 71.4,50.3	54.0,37.6	41.3,56.6
path 37.5,58.2	24.5,56.9	30.0,42.8
path 26.9,28.7	32.3,27.1	31.5,40.1
path 38.6,41.2	39.6,30.4	39.0,19.7
path 46.2,20.1	53.8,24.8	61.5,32.4
path 68.5,37.9
#include "follow_path_mine"
.collect 168 Elementium Ore##52185
.collect 28 Volatile Earth##52327
#include "max_skill_warning",skill="Mining",goto="mining_500"
step
#include "trainer_Mining"
.learn Smelt Elementium##74530
step
#include "maincity_anvil"
.create Obsidium Bar##84038,Mining,32 total
.collect 36 Obsidium Bar##54849
step
#include "maincity_anvil"
.create Elementium Bar##74530,Mining,84 total |n
.collect 92 Elementium Bar##52186
step
label "bla_475-500_skill"
#include "maincity_anvil"
.create Folded Obsidium##76178,Blacksmithing,16 total |n
.collect 18 Folded Obsidium##65365
step
#include "trainer_Blacksmithing"
.learn Obsidium Skeleton Key##76438
step
#include "maincity_anvil"
.create Obsidium Skeleton Key##76438,Blacksmithing,480
step
#include "trainer_Blacksmithing"
.learn Stormforged Legguards##76287
step
#include "maincity_anvil"
.create Stormforged Legguards##76287,Blacksmithing,490
step
#include "trainer_Blacksmithing"
.learn Stormforged Helm##76288
step
#include "maincity_anvil"
.create Stormforged Helm##76288,Blacksmithing,500
step
label "route2"
'Redirecting to Blacksmithing 500-525 |next "bla_500-525" |only if skill("Blacksmithing")>=500 and skill("Blacksmithing")<525 and not ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Blacksmithing finale |next "bla_525" |only if skill("Blacksmithing")>=525 and skill("Blacksmithing")<600 and not ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Blacksmithing 500-600 |next "bla_500-600" |only if skill("Blacksmithing")>=500 and skill("Blacksmithing")<600 and ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Blacksmithing finale |next "bla_600" |only if default
step
label "bla_500-525"
#include "auctioneer"
.buy 300 Elementium Ore##52185
.buy 60 Volatile Earth##52327
.buy 80 Volatile Fire##52325
.buy 50 Volatile Water##52326
#include go_farm,skill="Mining",req="475",goto="bla_500-525_farm"
next "bla_500-525_skill"
step
label "bla_500-525_farm"
map Twilight Highlands
path 71.4,50.3	54.0,37.6	41.3,56.6
path 37.5,58.2	24.5,56.9	30.0,42.8
path 26.9,28.7	32.3,27.1	31.5,40.1
path 38.6,41.2	39.6,30.4	39.0,19.7
path 46.2,20.1	53.8,24.8	61.5,32.4
path 68.5,37.9
#include "follow_path_mine"
.collect 300 Elementium Ore##52185
.collect 60 Volatile Earth##52327
.collect 80 Volatile Fire##52325
.collect 50 Volatile Water##52326
#include "max_skill_warning",skill="Mining",goto="mining_525"
step
#include "maincity_anvil"
.create Elementium Bar##74530,Mining,150 total |n
.collect 150 Elementium Bar##52186
step
#include "trainer_Blacksmithing"
.learn Redsteel Breastplate##76270
step
#include "maincity_anvil"
.create 10 Redsteel Breastplate##76270,Blacksmithing,512
step
goto Twilight Highlands 77.3,53.1
.talk 50375
.buy Plans: Vicious Pyrium Gauntlets##66118 |n
.' Click the Plans: Vicious Pyrium Gauntlets in your bags |use Plans: Vicious Pyrium Gauntlets##66118
.learn Vicious Pyrium Gauntlets##76457
step
#include "twil_anvil"
.create 3 Vicious Pyrium Gauntlets##76457,Blacksmithing,515
step
goto 77.3,53.1
.talk 50375
.buy 1 Plans: Vicious Pyrium Belt##66119 |n
.' Click the Plans: Vicious Pyrium Belt in your bags |use Plans: Vicious Pyrium Belt##66119
.learn Vicious Pyrium Belt##76458
step
#include "twil_anvil"
.create 5 Vicious Pyrium Belt##76458,Blacksmithing,520
step
goto 77.3,53.1
.talk 50375
.buy Plans: Vicious Ornate Pyrium Shoulders##66129 |n
.' Click the Plans: Vicious Ornate Pyrium Shoulders in your bags |use Plans: Vicious Ornate Pyrium Shoulders##66129
.learn Vicious Ornate Pyrium Shoulders##76469
step
#include "twil_anvil"
.create 5 Vicious Ornate Pyrium Shoulders##76469,Blacksmithing,525
step
title + Blacksmithing 525
label "bla_525"
'Congratulations, you are now a level 525 Blacksmith!
'In order to complete this professions to level 600, please purchase the Mists of Pandaria upgrade of this guide.
|confirm
|next "end"
step
label "bla_500-600"
.'Please purchase the upgrade Profession guide to see the content for MOP |only if not ZGV.guidesets['ProfessionsHMoP']
|next Profession Guides\\Blacksmithing\\Blacksmithing 500-600 Leveling Guide |only if ZGV.guidesets['ProfessionsHMoP']
step
label "bla_600"
'Congratulations, you are now a Zen Master Blacksmith!
|confirm
step
label "end"
'You have reached the end of the guide
|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Cooking 1-600 Leveling Guide",[[
description This guide will walk you through leveling your Cooking skill from 1 to 600.
author support@zygorguides.com
completion skill,Cooking,600
achieveid 121,122,123,124,125,4916,6365
condition suggested hasprof('Cooking',1,600)
#include "profession_secondary_start",prof1="Cooking"
step
label "route"
'Redirecting to Pandarian Instant Cooking 1-520 |next "choice" |only if skill('Cooking')<520 and level>=85 and _G.GetExpansionLevel()>=4 and ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Cooking 1-75 |next "cook_1-75" |only if skill("Cooking")<75   and (level<85 or _G.GetExpansionLevel()<4 or not ZGV.guidesets['ProfessionsHMoP'])
'Redirecting to Cooking 75-130 |next "cook_75-130" |only if skill("Cooking")>=75 and skill("Cooking")<130   and (level<85 or _G.GetExpansionLevel()<4 or not ZGV.guidesets['ProfessionsHMoP'])
'Redirecting to Cooking 130-225 |next "cook_130-225" |only if skill("Cooking")>=130 and skill("Cooking")<225   and (level<85 or _G.GetExpansionLevel()<4 or not ZGV.guidesets['ProfessionsHMoP'])
'Redirecting to Cooking 225-285 |next "cook_225-285" |only if skill("Cooking")>=225 and skill("Cooking")<285   and (level<85 or _G.GetExpansionLevel()<4 or not ZGV.guidesets['ProfessionsHMoP'])
'Redirecting to Cooking 285-350 |next "cook_285-350" |only if skill("Cooking")>=285 and skill("Cooking")<350   and (level<85 or _G.GetExpansionLevel()<4 or not ZGV.guidesets['ProfessionsHMoP'])
'Redirecting to Cooking 350-400 |next "cook_350-400" |only if skill("Cooking")>=350 and skill("Cooking")<400   and (level<85 or _G.GetExpansionLevel()<4 or not ZGV.guidesets['ProfessionsHMoP'])
'Redirecting to Cooking 400-425 |next "cook_400-425" |only if skill("Cooking")>=400 and skill("Cooking")<425   and (level<85 or _G.GetExpansionLevel()<4 or not ZGV.guidesets['ProfessionsHMoP'])
'Redirecting to Cooking 520-600 |next "cook_520-600" |only if skill("Cooking")>=520 and skill("Cooking")<600 and _G.GetExpansionLevel()>=4 and ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Cooking 425-525 |next "cook_425-525" |only if skill("Cooking")>=425 and skill("Cooking")<525   and (level<85 or _G.GetExpansionLevel()<4 or not ZGV.guidesets['ProfessionsHMoP'])
'Redirecting to Cooking 525 finale |next "cook_525" |only if skill("Cooking")==525 and _G.GetExpansionLevel()<4
'Redirecting to Cooking non-owners |next "cook_525-no-guide" |only if skill("Cooking")>=520 and skill("Cooking")<600 and _G.GetExpansionLevel()>=4 and not ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Cooking pre-masteries |next "Cooking_PreMasteries" |only if skill("Cooking")>=520 and skill("Cooking")<600 and _G.GetExpansionLevel()>=4 and ZGV.guidesets['ProfessionsHMoP'] and not completedq(31536)
'Redirecting to Cooking 520-600 |next "cook_520-600" |only if skill("Cooking")>=520 and skill("Cooking")<600 and _G.GetExpansionLevel()>=4 and ZGV.guidesets['ProfessionsHMoP'] and completedq(31536)
'Redirecting to Cooking finale |next "cook_600" |only if default
step
label choice
'Click here to level up your cooking in Pandaria. |confirm |next "Pandarian_Cooking_1-520"
.'_
'Click here to level up your cooking using the original method. |confirm |next "cook_1-75"
step
title + Cooking 1-75
label "cook_1-75"
#include "trainer_Cooking"
.skillmax Cooking,75
.learn Spice Bread##37836
step
#include "home_ValleyofStrength"
step
#include "vendor_Cooking"
.buy 50 Simple Flour##30817
.buy 50 Mild Spices##2678
step
#include "auctioneer"
.buy 35 Bear Meat##3173
#include go_farm,skill="Cooking",req="1",goto="cook_1-75_farm"
next "cook_1-75_skill"
step
label "cook_1-75_farm"
'Follow the path shown on your minimap.
map Silverpine Forest
path	42.8,17.6	50.0,15.7	57.2,17.3
path	61.1,13.9	56.0,27.6	47.2,32.7
path	47.7,25.4	40.5,33.6	39.4,24.0
.from Giant Rabid Bear##1797+
.from Ferocious Grizzled Bear##1778+ |tip They're all around the forest
.collect 35 Bear Meat##3173
step
label "cook_1-75_skill"
goto Silverpine Forest 43.2,40.6
.talk 3556
.buy 1 Recipe: Smoked Bear Meat##6892
step
#include "cooking_fire"
.create 50 Spice Bread##37836,Cooking,40
step
'Use the Recipe: Smoked Bear Meat in your bags |use Recipe: Smoked Bear Meat##6892
.learn Smoked Bear Meat##8607
step
#include "cooking_fire"
.create 35 Smoked Bear Meat##8607,Cooking,75
step
title + Cooking 75-130
label "cook_75-130"
#include "trainer_Cooking"
|skillmax Cooking,150
.learn Boiled Clams##6499
.learn Crab Cake##2544
step
#include "auctioneer"
.buy 50 Clam Meat##5503
.buy 30 Crawler Meat##2674
#include go_farm,skill="Cooking",req="75",goto="cook_75-130_farm"
next "cook_75-130_skill"
step
label "cook_75-130_farm"
goto Ashenvale,13.0,29.2
.from Wrathtail Wave Rider##3713+, Wrathtail Sorceress##3717+, Spined Crawler##3814+, Mystlash Hydra##3721+, Clattering Crawler##3812+, Spined Crawler##3814+
.collect 30 Crawler Meat##2674
.collect Small Barnacled Clam##5523 |n
.' Use the clams in your bags |use Small Barnacled Clam##5523
..collect 50 Clam Meat##5503
step
label "cook_75-130_skill"
#include "vendor_Cooking"
.buy 50 Refreshing Spring Water##159
step
#include "cooking_fire"
.create 50 Boiled Clams##6499,Cooking,110
step
#include "cooking_fire"
.create 30 Crab Cake##2544,Cooking,130
step
title + Cooking 130-225
label "cook_130-225"
#include "trainer_Cooking"
|skillmax Cooking,225
step
goto Northern Stranglethorn 39.2,51.0
.talk 1148
.buy 1 Recipe: Curiously Tasty Omelet##3682
.buy 1 Recipe: Roast Raptor##12228
step
'Use the Recipe: Curiously Tasty Omelet in your bags |use Recipe: Curiously Tasty Omelet##3682
.learn Curiously Tasty Omelet##3376
step
#include "auctioneer"
.buy 50 Raptor Egg##3685
.buy 50 Raptor Flesh##12184
#include go_farm,skill="Cooking",req="130",goto="cook_130-225_farm"
next "cook_130-225_skill"
step
label "cook_130-225_farm"
goto Northern Stranglethorn,30.8,31.6
.from Stranglethorn Raptor##685+, Jungle Stalker##687+, Lashtail Raptor##686+
.collect 50 Raptor Egg##3685
.collect 50 Raptor Flesh##12184 |opt
'You can find more at [36.5,44.4]
'You can find more at [53.6,46.3]
step
goto 53.6,46.3
.from Jungle Stalker##687+
.collect 50 Raptor Flesh##12184
'You can find more at [57.6,56.6]
'You can find more at [60.6,62.4]
'You can find more at [63.4,60.5]
step
label "cook_130-225_skill"
#include "cooking_fire"
.create 50 Curiously Tasty Omelet##3376,Cooking,175
step
'Use the Recipe: Roast Raptor in your bags |use Recipe: Roast Raptor##12228
.learn Roast Raptor##15855
step
#include "cooking_fire"
.create 50 Roast Raptor##15855,Cooking,225
step
title +Cooking 225-285
label "cook_225-285"
#include "trainer_Cooking"
.skillmax Cooking,300
step
goto Winterspring,59.8,51.6
.talk 11187
.buy 1 Recipe: Monster Omelet##16110
step
#include "auctioneer"
.buy 25 Giant Egg##12207
.buy 40 Bear Flank##35562
#include go_farm,skill="Cooking",req="225",goto="cook_225-285_farm"
next "cook_225-285_skill"
step
label "cook_225-285_farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
goto Winterspring 55.8,36.6
.from Shardtooth Mauler##7443+, Shardtooth Bear##7444+
.collect 40 Bear Flank##35562
.from Winterspring Screecher##7456
.collect 25 Giant Egg##12207 |n
step
goto Winterspring 65.2,76.6
.from Crazed Owlbeast##7452+, Berserk Owlbeast##7454+, Moontouched Owlbeast##7453+
.collect 25 Giant Egg##12207
step
label "cook_225-285_skill"
'Use the Recipe: Monster Omelet in your bags |use Recipe: Monster Omelet##16110
.learn Monster Omelet##15933
step
#include "cooking_fire"
.create 25 Monster Omelet##15933,Cooking,250
step
goto Orgrimmar,56.2,61.6
.talk 46709
.buy 1 Recipe: Juicy Bear Burger##35566
step
'Use the Recipe: Juicy Bear Burger in your bags |use Recipe: Juicy Bear Burger##35566
.learn Juicy Bear Burger##46688
step
#include "cooking_fire"
.create 40 Juicy Bear Burger##46688,Cooking,285
step
title + Cooking 285-350
label "cook_285-350"
#include "trainer_Cooking"
|skillmax Cooking,375
step
goto Silithus,55.5,36.8
.talk 15174
..accept 8307
step
goto 43.6,42.0
.' Click the Sandy Cookbook |tip It is a open book laying on a crate.
..turnin 8307
..accept 8313
step
goto 55.5,36.8
.talk 15174
..turnin 8313
step
goto 49.1,46.1
.from Dredge Crusher##11741+
.collect 15 Sandworm Meat##20424
.' You can also get them off Dredge Strikers at [54.1,57.8]
step
#include "cooking_fire"
.create 15 Smoked Desert Dumplings##24801,Cooking,300
step
goto Hellfire Peninsula,54.6,41.2
.talk 16585
.buy 1 Recipe: Ravager Dog##27688
step
goto Nagrand,58.0,35.6
.talk 20097
.buy 1 Recipe: Talbuk Steak##27693
step
'Use the Recipe: Ravager Dog in your bags |use Recipe: Ravager Dog##27688
.learn Ravager Dog##33284
step
#include "auctioneer"
.buy 30 Ravager Flesh##27674
.buy 30 Talbuk Venison##27682
#include go_farm,skill="Cooking",req="285",goto="cook_285-350_farm"
next "cook_285-350_skill"
step
label "cook_285-350_farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
goto Hellfire Peninsula,22.5,65.1
.from Quillfang Ravager##16934+, Quillfang Skitterer##19189+
.collect 30 Ravager Flesh##27674
step
label "farm2"
'Skipping 2nd part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
goto Nagrand 52.2,44.4
.from Talbuk Thorngrazer##17130+
.collect 30 Talbuk Venison##27682
step
label "cook_285-350_skill"
#include "cooking_fire"
.create 30 Ravager Dog##33284,Cooking,325
step
'Use the Recipe: Talbuk Steak in your bags |use Recipe: Talbuk Steak##27693
.learn Talbuk Steak##33289
step
#include "cooking_fire"
.create 30 Talbuk Steak##33289,Cooking,350
step
title + Cooking 350-400
label "cook_350-400"
#include "trainer_Cooking"
|skillmax Cooking,450
.learn Rhino Dogs##45553
step
goto Borean Tundra 42.0,54.2
.talk 26972
..accept 13090 |tip This quest is only available to you if you have 350+ Cooking skill.
step
goto Borean Tundra,46.7,43.6
.from Wooly Rhino Matriarch##25487+, Wooly Rhino Calf##25488+, Wooly Rhino Bull##25489+
.get 4 Chilled Meat |q 13088/1
step
goto 42.0,54.2
.talk 26972
..turnin 13090
step
goto Sholazar Basin 26.8,60.1
.talk 29157
..accept 12634
step
goto 37.6,61.8
.' Click the Sturdy Vines|tip They look like brown vines that hang from trees around this area.  Sometimes a Dwarf will fall out and give you fruit you need.
.' Click the fruit that falls to the ground or talk to the dwarf that falls
.get Orange |q 12634/1
.get 2 Banana Bunch|q 12634/2
.get Papaya |q 12634/3
step
goto 26.8,60.1
.talk 29157
..turnin 12634
..accept 12644
step
goto 26.7,60
.talk 28566
..'Tell him you are ready to start the distillation process
.' Click the items on the ground or on the machine that he yells at you during the process, it's random
.' Click the barrel on the ground when the process is done
.get Thunderbrew's Jungle Punch|q 12644/1
step
goto 26.8,60.1
.talk 29157
..turnin 12644
..accept 12645
step
goto 27.4,59.4
.' Use your Jungle Punch Sample on Hadrius Harlowe|use Jungle Punch Sample##38697|tip Standing next to a tiki torch.
.' Complete Hadrius' taste test |q 12645/2
step
goto 27.1,58.6
.' Use your Jungle Punch Sample on Hemet Nesingwary|use Jungle Punch Sample##38697|tip Standing in front of a tent.
.' Complete Hemet's taste test |q 12645/1
step
goto 50.5,62.1
.' Use your Jungle Punch Sample on Tamara Wobblesprocket |use Jungle Punch Sample##38697
.' Complete Tamara's taste test |q 12645/3
step
goto 26.8,60.1
.talk 29157
..turnin 12645
step
goto Dalaran,43.2,24.4
.talk 32516
..accept 13571 |instant
step
goto 43.1,57.0
.talk 29547
.buy 50 Savory Snowplum##35948
.buy 100 Tundra Berries##35949
step
#include "auctioneer_dalaran"
.buy 24 Chilled Meat##43013
.buy 16 Rhino Meat##43012
#include go_farm,skill="Cooking",req="350",goto="cook_350-400_farm"
next "cook_350-400_skill"
step
label "cook_350-400_farm"
goto Borean Tundra,46.7,43.6
.from Wooly Rhino Calf##25488+, Wooly Rhino Matriarch##25487+, Wooly Rhino Bull##25489+
.collect 24 Chilled Meat##43013
.collect 16 Rhino Meat##43012
step
label "cook_350-400_skill"
#include "cooking_fire"
.create 24 Northern Stew##57421,Cooking,365
step
#include "cooking_fire"
.create 16 Rhino Dogs##45553,Cooking,375
step
#include "cooking_fire"
.create 50 Kungaloosh##53056,Cooking,400
step
label "cook_400-425"
'To get your Cooking skill maxed at level 450, you will need to buy a recipe that costs 3 Dalaran Cooking Awards. |tip You can get Dalaran Cooking Awards by completing the Cooking Dailies section of this guide each day.  When you complete a Cooking daily, you will receive 1 Dalaran Cooking Award and a Small Spice Bag.  Dalaran Cooking Awards can sometimes be found in those Small Spice Bags.
'You will also need 50 Northern Spices. |tip Northern Spices can be found in the Small Spice Bags you receive for completing Cooking dailies.
'Use the Cooking Dailies guide section to complete Cooking dailies until you have gathered: |confirm |next "dalaran"
.collect 50 Northern Spices##43007
step
label dalaran
#include "H_Dalaran_Cooking_Dailies"
step
goto Dalaran,70.2,37.2
.talk 31031
.buy 1 Recipe: Blackened Worg Steak##43032
step
'Use the Recipe: Blackened Worg Steak in your bags |use Recipe: Blackened Worg Steak##43032
.learn Blackened Worg Steak##57438
step
#include "auctioneer_dalaran"
.buy 25 Worg Haunch##43011
#include go_farm,skill="Cooking",req="400",goto="cook_400-425_farm"
next "cook_400-425_skill"
step
label "cook_400-425_farm"
goto Howling Fjord 30.8,62.6
.from Spearfang Worg##24677+
.collect 25 Worg Haunch##43011
step
label "cook_400-425_skill"
#include "cooking_fire"
.create 25 Blackened Worg Steak##57438,Cooking,425
step
title + Cooking 425-450
label "cook_425-525"
#include "trainer_Cooking"
|skillmax Cooking,525
.learn Blackened Surprise##88006
step
#include "auctioneer"
.buy 25 Toughened Flesh##62778
#include go_farm,skill="Cooking",req="425",goto="cook_425-450_farm"
next "cook_425-450_skill"
step
label "cook_425-450_farm"
goto Mount Hyjal,28.2,30.8
.from Hyjal Stag##39588+
.collect 25 Toughened Flesh##62778
step
label "cook_425-450_skill"
#include "cooking_fire"
.create 25 Blackened Surprise##88006,Cooking,450
step
title + Cooking 450-500
label "cook_450-500"
'To get your Cooking skill maxed at level 525, you will need to buy three recipes that costs 3 Chef's Awards each. |tip You can get Chef Awards by completing the Orgrimmar Cooking Dailies section of this guide each day.  When you complete a Cooking daily, you will receive 1 Chef's Award.
'Click here to use the Orgrimmar Cooking Dailies guide section to complete Cooking dailies until you have gathered 3 Chef's Awards |confirm |next "dailies"
step
label "dailies"
#include "H_Org_Dailies"
step
goto Orgrimmar,56.9,62.7
.talk 49737
.buy 1 Recipe: Whitecrest Gumbo##65406 |n
'Use the Recipe: Seasoned Crab in your bags |use Recipe:Seasoned Crab##65413
.learn Whitecrest Gumbo##88047
step
#include "auctioneer"
.buy 62 Blood Shrimp##62791
#include go_farm,skill="Cooking",req="450",goto="cook_450-500_farm"
next "cook_450-500_skill"
step
label "cook_450-500_farm"
goto Kelp'thar Forest,49.1,28.0
.from Zin'jatar Raider##39313
.' Open the Abyssal Clam that you get |use Abyssal Clam##52340 |n
.collect 62 Blood Shrimp##62791
step
label "cook_450-500_skill"
#include "cooking_fire"
.create 31 Whitecrest Gumbo##88047,Cooking,475
step
goto 56.9,62.7
.talk 49737
.buy 1 Recipe: Hearty Seafood Soup##65418 |n
'Use the Recipe: Hearty Seafood Soup in your bags |use Recipe: Hearty Seafood Soup##65406
.learn Hearty Seafood Soup##88021
step
#include "cooking_fire"
.create 31 Hearty Seafood Soup##88021,Cooking,500
step
label "cook_500-525"
goto 56.9,62.7
.talk 49737
.buy 1 Recipe: Grilled Dragon##65428
step
'Use the Recipe: Grilled Dragon in your bags |use Recipe: Grilled Dragon##65428
.learn Grilled Dragon##88020
step
label "cook_500-525_farm"
goto Twilight Highlands,63.2,76.2
.from Obsidian Charscale##47797,Obsidian Viletongue##47796
.collect 35 Dragon Flank##62782
step
label "cook_500-525_skill"
#include "cooking_fire"
.create 35 Grilled Dragon##88020,Cooking,525
step
title + Cooking 525
label "cook_525"
'Congratulations, you are now a level 525 Cook!
|confirm
step
label "route2"
'Redirecting to Cooking non-owners |next "cook_525-no-guide" |only if skill("Cooking")>=520 and skill("Cooking")<600 and _G.GetExpansionLevel()>=4 and not ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Cooking pre-masteries |next "Cooking_PreMasteries" |only if skill("Cooking")>=520 and skill("Cooking")<600 and _G.GetExpansionLevel()>=4 and ZGV.guidesets['ProfessionsHMoP'] and not completedq(31536)
'Redirecting to Cooking 520-600 |next "cook_520-600" |only if skill("Cooking")>=520 and skill("Cooking")<600 and _G.GetExpansionLevel()>=4 and ZGV.guidesets['ProfessionsHMoP'] and completedq(31536)
'Redirecting to Cooking finale |next "cook_600" |only if default
step
label "cook_525-no-guide"
'You'll need to upgrade your Zygor Profession guides to support Mists of Pandaria content. |confirm
|next "end"
step "Pandarian_Cooking_1-520"
#include "Pandarian_Cooking_1-520"
step
'Redirecting to start |next route
step "Cooking_PreMasteries"
'NOTE: You will have to be at least _Level 85_ and have access to Pandaria in order to complete the remainder of this guide.
|confirm
step
#include "Cooking_PreMasteries"
step
'Redirecting to start |next route
step "cook_520-600"
#include "Cooking_520-600"
step "cook_600"
'Congratulations, you are now a level 600 Cook! |confirm
.' Click here to go back to complete a mastery if you did not complete them all. |confirm |next cooking_mastery_start |only if ZGV.guidesets['ProfessionsHMoP']
.'_
.' Otherwise, click here to complete this guide. |confirm |next
step "end"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Cooking Dailies\\Orgrimmar Cooking Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the Cooking daily quests to earn Chef's Awards.
daily
#include "H_Org_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Cooking Dailies\\Dalaran Cooking Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the Cooking daily quests to earn Dalaran Cooking Awards and gather Northern Spices.
daily
step
#include "H_Dalaran_Cooking_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Enchanting 1-600 Leveling Guide",[[
description This guide will walk you through leveling your Enchanting skill from 1-600.
author support@zygorguides.com
completion skill,Enchanting,600
condition suggested hasprof('Enchanting',1,600)
#include "profession_single_start",prof1="Enchanting"
step
label "route"
'Redirecting to Enchanting 1-75 |next "ench_1-75" |only if skill("Enchanting")<75
'Redirecting to Enchanting 75-135 |next "ench_75-135" |only if skill("Enchanting")>=75 and skill("Enchanting")<135
'Redirecting to Enchanting 135-205 |next "ench_135-205" |only if skill("Enchanting")>=135 and skill("Enchanting")<205
'Redirecting to Enchanting 205-300 |next "ench_205-300" |only if skill("Enchanting")>=205 and skill("Enchanting")<300
'Redirecting to Enchanting 300-351 |next "ench_300-351" |only if skill("Enchanting")>=300 and skill("Enchanting")<351
'Redirecting to Enchanting 351-426 |next "ench_351-426" |only if skill("Enchanting")>=351 and skill("Enchanting")<426
'Redirecting to Enchanting 426-500 |next "ench_426-500" |only if skill("Enchanting")>=426 and skill("Enchanting")<500
'Redirecting to Enchanting 500-600 |next "route2" |only if skill("Enchanting")>=500 and skill("Enchanting")<600
step
title +Enchanting 1-75
label "ench_1-75"
#include "trainer_Enchanting"
.skillmax Enchanting,75
step
#include "vendor_Enchanting"
.buy 1 Copper Rod##6217
step
#include "home_ValleyofStrength"
step
#include "auctioneer"
.buy 130 Strange Dust##10940
.buy 1 Lesser Magic Essence##10938
#include "go_disenchant",skill="Enchanting",req="1",goto="ench_1-75_farm"
next "ench_1-75_skill"
step
label "ench_1-75_farm"
goto Wailing Caverns 45.8,59.7
'Run through the Wailing Caverns dungeon, killing all mobs along the way.
'Disenchant any uncommon quality (green) weapons and armor with an item level of 5-15. |cast Disenchant##13262
.collect 130 Strange Dust##10940
.collect 1 Lesser Magic Essence##10938
|tip Keep any extra Greater Magic Essences you get, you will need them later.
step
label "ench_1-75_skill"
.create 1 Runed Copper Rod##7421,Enchanting,2 |tip Save the Runed Copper Rod in your bags, you will need it to enchant items.
step
.create 74 Enchant Bracer - Minor Health##7418,Enchanting,75 |tip You can keep enchanting the same item repeatedly.
step
title +Enchanting 75-135
label "ench_75-135"
#include "trainer_Enchanting"
.skillmax Enchanting,150
step
#include "vendor_Enchanting"
.buy 9 Simple Wood##4470
step
.create 25 Enchant Bracer - Minor Health##7418,Enchanting,90 |tip You can keep enchanting the same item repeatedly.
step
#include "auctioneer"
.buy 9 Greater Magic Essence##10939
.buy 25 Lesser Astral Essence##10998
#include "go_disenchant",skill="Enchanting",req="1",goto="ench_75-135_farm"
next "ench_75-135_skill"
step
label "ench_75-135_farm"
goto Wailing Caverns 45.8,59.7
'Run through the Wailing Caverns dungeon, killing all mobs along the way.
'Disenchant any uncommon quality (green) weapons and armor with an item level of 16-20. |cast Disenchant##13262
.collect 9 Greater Magic Essence##10939
step
goto Blackfathom Deeps 44.29,10.66
'Run through the Blackfathom Depths dungeon, killing all mobs along the way.
'Disenchant any uncommon quality (green) weapons and armor with an item level of 21-25. |cast Disenchant##13262
.collect 25 Lesser Astral Essence##10998
step
label "ench_75-135_skill"
#include "trainer_Enchanting"
.learn Enchant Bracer - Minor Stamina##7457
step
.create 10 Enchant Bracer - Minor Stamina##7457,Enchanting,101 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Greater Magic Wand##14807
step
.create 9 Greater Magic Wand##14807,Enchanting,110
step
goto Stonetalon Mountains 48.6,61.6
.talk 12043
.buy 1 Formula: Enchant Bracer - Lesser Strength##11101
.buy 1 Formula: Enchant Cloak - Minor Agility##11039
step
'Learn Formula: Enchant Cloak - Minor Agility |use Formula: Enchant Cloak - Minor Agility##11039 |n
.create 25 Enchant Cloak - Minor Agility##13419,Enchanting,135
step
title +Enchanting 135-205
label "ench_135-205"
#include "trainer_Enchanting"
.skillmax Enchanting,225 |tip You must be at least level 20.
.learn Enchant Bracer - Lesser Stamina##13501
step
#include "auctioneer"
.buy 58 Soul Dust##11083
.buy 20 Lesser Mystic Essence##11134
.buy 40 Vision Dust##11137
#include "go_disenchant",skill="Enchanting",req="1",goto="ench_135-205_farm"
next "ench_135-205_skill"
step
label "ench_135-205_farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
goto Razorfen Kraul 69.89,82.97
'Run through the Razorfen Kraul dungeon, killing all mobs along the way.
'Disenchant any uncommon quality (green) armor and weapons you loot. |cast Disenchant##13262
.collect 58 Soul Dust##11083
.collect 20 Lesser Mystic Essence##11134 |n
.collect 40 Vision Dust##11137 |n
step
goto Razorfen Downs 23.79,18.80
'Run through the Razorfen Downs dungeon, killing all mobs along the way.
'Disenchant any uncommon quality (green) armor and weapons you loot. |cast Disenchant##13262
.collect 20 Lesser Mystic Essence##11134
.collect 40 Vision Dust##11137
|tip Save any Greater/Lesser Nether Essences you get, you will need them later.
step
label "ench_135-205_skill"
.create 20 Enchant Bracer - Lesser Stamina##13501,Enchanting,155 |tip You can keep enchanting the same item repeatedly.
step
'Click the Formula: Enchant Bracer - Lesser Strength recipe in your bags |use Formula: Enchant Bracer - Lesser Strength##11101
.learn Enchant Bracer - Lesser Strength##13536
step
.create 9 Enchant Bracer - Lesser Strength##13536,Enchanting,165 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Bracer - Spirit##13642
step
.create 20 Enchant Bracer - Spirit##13642,Enchanting,185 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Bracer - Strength##13661
step
.create 40 Enchant Bracer - Strength##13661,Enchanting,220 |tip You can keep enchanting the same item repeatedly.
step
title +Enchanting 205-300
label "ench_205-300"
#include "trainer_Enchanting"
.skillmax Enchanting,300
.learn Enchant Cloak - Greater Defense##13746
step
goto Orgrimmar,55.3,46.1
.talk 3348
.buy 15 Crystal Vial##3371
step
#include "auctioneer"
.buy 15 Lesser Nether Essence##11174
.buy 210 Dream Dust##11176
.buy 60 Lesser Eternal Essence##16202
.buy 5 Greater Nether Essence##11175
.buy 115 Vision Dust##11137
#include "go_disenchant",skill="Enchanting",req="1",goto="ench_205-300_farm"
next "ench_205-300_skill"
step
label "ench_205-300_farm"
goto Razorfen Downs 23.79,18.80
'Run through the Razorfen Downs dungeon, killing all mobs along the way.
'Disenchant any uncommon quality (green) armor and weapons you obtain. |cast Disenchant##13262
.collect 210 Dream Dust##11176 |tip You can also find Dream Dust by disenchating items in the Zul'Farrak dungeon.
.collect 115 Vision Dust##11137
.collect 15 Lesser Nether Essence##11174
.collect 5 Greater Nether Essence##11175
step
goto Blackrock Spire/4 26.77,38.23
'Run through the Blackrock Spire dungeon, killing all mobs along the way.
'Disenchant any uncommon quality (green) green weapons and armor you obtain. |cast Disenchant##13262
.collect 60 Lesser Eternal Essence##16202
step
label "ench_205-300_skill"
.create 5 Enchant Cloak - Greater Defense##13746,Enchanting,225 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Gloves - Agility##13815
step
.create 5 Enchant Gloves - Agility##13815,Enchanting,230 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Boots - Stamina##13836
step
.create 5 Enchant Boots - Stamina##13836,Enchanting,235 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Chest: Superior Health##13858
step
.create 5 Enchant Chest: Superior Health##13858,Enchanting,240 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Boots - Lesser Accuracy##63746
step
.create 10 Enchant Boots - Lesser Accuracy##63746,Enchanting,250 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Bracer - Greater Strength##13939
step
.create 5 Enchant Bracer - Greater Strength##13939,Enchanting,255
step
#include "trainer_Enchanting"
.learn Enchant Bracer - Greater Intellect##20008
step
.create 20 Enchant Bracer - Greater Intellect##20008,Enchanting,265 |tip You can keep enchanting the same item repeatedly.
step
goto Undercity 64.8,38.2
.talk 4561
.buy 1 Formula: Enchant Shield - Greater Stamina##16217 |n
.' Click the Formula: Enchant Shield - Greater Stamina recipe in your bags |use Formula: Enchant Shield - Greater Stamina##16217
.learn Enchant Shield - Greater Stamina##20017
step
.create 40 Enchant Shield - Greater Stamina##20017,Enchanting,300 |tip You can keep enchanting the same item repeatedly.
step
title +Enchanting 300-351
label "ench_300-351"
#include "trainer_Enchanting"
.skillmax Enchanting,375
step
#include "auctioneer"
.buy 165 Arcane Dust##22445
.buy 20 Greater Planar Essence##22446
.buy 10 Large Prismatic Shard##22449
.buy 40 Lesser Planar Essence##22447
.buy 15 Nightmare Vine##22792 |tip You will need to buy this item. It cannot be aquired through Disenchanting.
#include "go_disenchant",skill="Enchanting",req="1",goto="ench_300-351_farm"
next "ench_300-351_skill"
step
label "ench_300-351_farm"
goto The Shattered Halls/1 61.14,92.81
'Run through the Shattered Halls dungeon, killing all mobs along the way.
'Disenchant any uncommon quality (green) armor and weapons with an item level of 80-99. |cast Disenchant##13262
.collect 165 Arcane Dust##22445
.collect 40 Lesser Planar Essence##22447
.collect 20 Greater Planar Essence##22446
.collect 10 Large Prismatic Shard##22449
step
label "ench_300-351_skill"
#include "trainer_Enchanting"
.learn Enchant Bracer - Lesser Assault##34002
step
.create 10 Enchant Bracer - Lesser Assault##34002,Enchanting,310 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Bracer - Brawn##27899
step
.create 10 Enchant Bracer - Brawn##27899,Enchanting,320 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Chest - Major Spirit##33990
step
.create 10 Enchant Chest - Major Spirit##33990,Enchanting,330 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Shield - Resilience##44383
step
.create 10 Enchant Shield - Resilience##44383,Enchanting,340 |tip You can keep enchanting the same item repeatedly.
step
goto Shattrath City,63.6,70.0
.talk 19663
.buy 1 Formula: Superior Wizard Oil##22563
step
'Click the Formula: Superior Wizard Oil recipe in your bags |use Formula: Superior Wizard Oil##22563
.learn Superior Wizard Oil##28019
step
.create 15 Superior Wizard Oil##28019,Enchanting,350
step
'From here on, the enchantments can be very expensive.  You have two options:
'1.  Cast the enchantments on Enchanting Vellum. This will allow you to sell the enchantments on the Auction House to recoup some of your costs.  You can buy the Vellums from the Enchanting Vendor.
'
'2.  You could advertise to enchant items for free, using the following enchantments, as long as the player provides their own materials needed for the enchantment.  This may take longer, but would allow you to level your Enchanting skill for free.
|confirm
step
title +Enchanting 351-426
label "ench_351-426"
#include "trainer_Enchanting"
.skillmax Enchanting,450 |tip You must be at least level 65.
.learn Enchant Cloak - Speed##60609
step
'Skip this step if you are going to try to level your Enchanting skill using option 2 from the previous guide step.
.'
#include "auctioneer"
.buy 220 Infinite Dust##34054
.buy 5 Crystallized Water##37705
.buy 11 Greater Cosmic Essence##34055
#include "go_disenchant",skill="Enchanting",req="1",goto="ench_351-426_farm"
next "ench_351-426_skill"
step
label "ench_351-426_farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
goto Halls of Lightning 7.38,53.81
'Run through the Halls of Lightning dungeon, killing all mobs along the way.
'Disenchant any uncommon quality (green) armor and weapons with an item level of 130-151. |cast Disenchant##13262
.collect 220 Infinite Dust##34054
.collect 11 Greater Cosmic Essence##34055
step
label "farm2"
'Skipping 2nd part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
goto Wintergrasp,77.4,41.9
.from Glacial Spirit##30846+, Water Revenant##30877+
.collect 5 Crystallized Water##37705
.' You can find more at 64.2,58.8
.' You can find more at 44.2,56.7
.' You can find more at 28.9,50.3
step
label "ench_351-426_skill"
.create 25 Enchant Cloak - Speed##60609,Enchanting,375 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Bracer - Assault##60616
step
.create 5 Enchant Gloves - Gatherer##44506,Enchanting,380 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Bracers - Exceptional Intellect##44555
step
.create 3 Enchant Bracers - Exceptional Intellect##44555,Enchanting,386 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Boots - Icewalker##60623
step
.create 5 Enchant Boots - Icewalker##60623,Enchanting,396 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Cloak - Superior Agility##44500
step
.create 3 Enchant Cloak - Superior Agility##44500,Enchanting,405 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Gloves - Expertise##44484
step
.create 4 Enchant Gloves - Expertise##44484,Enchanting,417 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Gloves - Precision##44488
step
.create 2 Enchant Gloves - Precision##44488,Enchanting,425 |tip You can keep enchanting the same item repeatedly.
step
title +Enchanting 426-525
label "ench_426-500"
#include "trainer_Enchanting"
.skillmax Enchanting,525
.learn Enchant Boots - Earthen Vitality##74189
step
#include "auctioneer"
.buy 342 Hypnotic Dust##52555
.buy 5 Lesser Celestial Essence##52718
.buy 41 Greater Celestial Essence##52719
#include "go_disenchant",skill="Enchanting",req="1",goto="ench_426-500_farm"
next "ench_426-500_skill"
step
label "ench_426-500_farm"
goto The Vortex Pinnacle 54.12,16.81
'Run through the Vortex Pinnacle dungeon, killing all mobs along the way.
'Disenchant any uncommon quality (green) armor and weapons with an item level of 272-305 and 305-333.|cast Disenchant##13262
.collect 342 Hypnotic Dust##52555
.collect 5 Lesser Celestial Essence##52718 |n
.collect 41 Greater Celestial Essence##52719 |n
step
goto The Stonecore 54.27,93.90
'Run through the Stonecore dungeon, killing all mobs along the way.
'Disenchant any uncommon quality (green) armor and weapons with an item level of 272-305 and 305-333.|cast Disenchant##13262
.collect 5 Lesser Celestial Essence##52718
.collect 41 Greater Celestial Essence##52719
step
label "ench_426-500_skill"
.create 15 Enchant Boots - Earthen Vitality##74189,Enchanting,440 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Cloak - Lesser Power##74192
step
.create 10 Enchant Cloak - Lesser Power##74192,Enchanting,450 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Weapon - Mending##74195
step
.create 2 Enchant Weapon - Mending##74195,Enchanting,460 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Gloves - Haste##74198
step
.create 5 Enchant Gloves - Haste##74198,Enchanting,465 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Cloak - Intellect##74202
step
.create 10 Enchant Cloak - Intellect##74202,Enchanting,475 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Gloves - Exceptional Strength##74212
step
.create 5 Enchant Gloves - Exceptional Strength##74212,Enchanting,480 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Boots - Major Agility##74213
step
.create 5 Enchant Boots - Major Agility##74213,Enchanting,485 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Gloves - Greater Expertise##74220
step
.create 5 Enchant Gloves - Greater Expertise##74220,Enchanting,490 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Shield - Mastery##74226
step
.create 5 Enchant Shield - Mastery##74226,Enchanting,495 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Bracer - Precision##74232
step
.create 5 Enchant Bracer - Precision##74232,Enchanting,500 |tip You can keep enchanting the same item repeatedly.
step
label "route2"
'Redirecting to Enchanting 500-525 |next "ench_500-525" |only if skill("Enchanting")>=500 and skill("Enchanting")<525 and not ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Enchanting finale |next "ench_525" |only if skill("Enchanting")>=525 and skill("Enchanting")<600 and not ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Enchanting 500-600 |next "ench_500-600" |only if skill("Enchanting")>=500 and skill("Enchanting")<600 and ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Enchanting finale |next "ench_600" |only if default
step
label "ench_500-525"
#include "auctioneer"
.buy 227 Hypnotic Dust##52555
.buy 107 Greater Celestial Essence##52719
#include "go_disenchant",skill="Enchanting",req="1",goto="ench_426-500_farm"
next "ench_500-525_skill"
step
label "ench_500-525_farm"
goto The Vortex Pinnacle 54.12,16.81
'Run through the Vortex Pinnacle dungeon, killing all mobs along the way.
'Disenchant any uncommon quality (green) armor and weapons with an item level of 272-305 and 305-333.|cast Disenchant##13262
.collect 227 Hypnotic Dust##52555
.collect 107 Greater Celestial Essence##52719 |n
step
goto The Stonecore 54.27,93.90
'Run through the Stonecore dungeon, killing all mobs along the way.
'Disenchant any uncommon quality (green) armor and weapons with an item level of 272-305 and 305-333.|cast Disenchant##13262
.collect 107 Greater Celestial Essence##52719
step
label "ench_500-525_skill"
.create 5 Enchant Bracer - Precision##74232,Enchanting,500 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Cloak - Protection##74234
step
.create 5 Enchant Cloak - Protection##74234,Enchanting,510 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Bracer - Exceptional Spirit##74237
step
.create 5 Enchant Bracer - Exceptional Spirit##74237,Enchanting,515 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Boots - Mastery##74238
step
.create 5 Enchant Boots - Mastery##74238,Enchanting,520 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Bracer - Greater Expertise##74239
step
.create 9 Enchant Bracer - Greater Expertise##74239,Enchanting,525 |tip You can keep enchanting the same item repeatedly.
step
title + Enchanting 525
label "ench_525"
'Congratulations, you are now a level 525 Enchanter!
|confirm |next "end"
step
label "ench_500-600"
.'Please purchase the upgrade Profession guide to see the content for MOP |only if not ZGV.guidesets['ProfessionsHMoP']
|next Profession Guides\\Enchanting\\Enchanting 500-600 Leveling Guide |only if ZGV.guidesets['ProfessionsHMoP']
step
label "ench_600"
'Congratulations, you are now a Zen Master Enchanter!
|confirm |next "end"
step
label "end"
'You have reached the end of the guide
|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Engineering 1-600 Leveling Guide",[[
description This guide will walk you through leveling your Engineering skill from 1-600.
author support@zygorguides.com
completion skill,Engineering,600
condition suggested hasprof('Engineering',1,600)
#include profession_dual_start,prof1="Engineering",prof2="Mining"
step
label "route"
'Redirecting to Engineering 1-75 |next "eng_1-75" |only if skill("Engineering")<75
'Redirecting to Engineering 75-130|next "eng_75-130" |only if skill("Engineering")>=75 and skill("Engineering")<130
'Redirecting to Engineering 130-210 |next "eng_130-210" |only if skill("Engineering")>=130 and skill("Engineering")<210
'Redirecting to Engineering 210-280 |next "eng_210-280" |only if skill("Engineering")>=210 and skill("Engineering")<280
'Redirecting to Engineering 280-350 |next "eng_280-350" |only if skill("Engineering")>=280 and skill("Engineering")<350
'Redirecting to Engineering 350-425 |next "eng_350-425" |only if skill("Engineering")>=350 and skill("Engineering")<425
'Redirecting to Engineering 425-500 |next "eng_425-500" |only if skill("Engineering")>=425 and skill("Engineering")<500
'Redirecting to Engineering 500-600 |next "route2" |only if skill("Engineering")>=500 and skill("Engineering")<600
step
title +Engineering 1-75
label "eng_1-75"
#include "trainer_Engineering"
.skillmax Engineering,75
step
#include "vendor_Engineering"
.buy 1 Blacksmith Hammer##5956 |tip Save the Blacksmith Hammer, you will need it to create items.
step
#include "home_ValleyofStrength"
step
#include "auctioneer"
.buy 38 Rough Stone##2835
.buy 60 Copper Bar##2840
#include go_farm,skill="Mining",req="1",goto="eng_1-75_farm"
next "eng_1-75_skill"
step
label "eng_1-75_farm"
map Durotar
path	38.9,16.0	37.5,21.1	35.9,34.4
path +	36.8,52.3	44.2,49.5	50.6,46.3
path +	50.7,63.3	54.9,67.0	56.2,49.8
path +	55.0,36.9	53.0,29.7	57.9,30.0
path +	54.8,19.0	50.0,17.2	44.2,23.6
#include "follow_path_mine"
.collect 38 Rough Stone##2835
.collect 60 Copper Ore##2770 |tip save any additional copper you get for later.
.collect Tigerseye##818 |n |tip You will need these later.
step
#include "maincity_anvil"
.create Copper Bar##2657,Mining,58 total |tip Keep any extra Copper Bar you have for making items later.
step
label  "eng_1-75_skill"
.create 38 Rough Blasting Powder##3918,Engineering,38 total
step
#include "trainer_Engineering"
.learn Handful of Copper Bolts##3922
step
#include "maincity_anvil"
.create 23 Handful of Copper Bolts##3922,Engineering,23 total |tip Save Handfuls of Copper Bolts to use later.
step
#include "trainer_Engineering"
.learn Rough Copper Bomb##3923
step
#include "maincity_anvil"
.create 20 Rough Copper Bomb##3923,Engineering,70
step
#include "trainer_Engineering"
.learn Arclight Spanner##7430
step
#include "maincity_anvil"
.create 5 Arclight Spanner##7430,Engineering,75
step
title +Engineering 75-130
label "eng_75-130"
#include "trainer_Engineering"
.skillmax Engineering,150 |tip You must be at least level 10.
step
#include "auctioneer"
.buy 35 Coarse Stone##2836
.buy 24 Linen Cloth##2589
.buy 105 Bronze Bar##2841
.buy 6 Tigerseye##818
#include go_farm,skill="Mining",req="50",goto="eng_75-130_farm"
next "eng_75-130_skill"
step
label "eng_75-130_farm"
#include "trainer_Mining"
.skillmax Mining,150
.learn Smelt Bronze##2659
.learn Smelt Tin##3304
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 75. It's better to skill up first. |only if skill("Mining")<50 and skillmax("Herbalism")<150
step
label "farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
goto Westfall,50.8,53.0
.from Riverpaw Bandit##452+, Riverpaw Brute##124+, Riverpaw Herbalist##501+
.collect 24 Linen Cloth##2589
step
label "farm2"
'Skipping 2nd part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Ashenvale
path	82.0,50.2	78.8,44.9	67.1,45.8
path	61.9,42.6	59.5,37.5	54.5,37.1
path	53.5,48.2	49.5,54.7	45.5,47.5
path	41.8,40.3	40.1,32.4	38.2,30.3
path	34.6,33.3	33.6,28.5	33.0,22.5
path	25.4,19.3	21.0,19.1	16.6,15.7
path	14.1,13.1	17.0,23.7	17.3,28.2
path	16.5,36.6	19.5,45.7	18.8,55.4
path	23.4,50.2	25.4,54.2	25.7,60.4
path	29.9,58.1	31.8,64.7	33.1,70.3
path	38.8,62.7	42.0,64.2	55.6,68.4
path	62.7,64.6	67.0,69.1	75.6,69.2
path	82.4,71.8	86.5,79.1	90.1,76.6
#include "follow_path_mine"
.collect 35 Coarse Stone##2836
.collect 36 Tin Ore##2771
.skill Mining,100
#include "max_skill_warning",skill="Mining",goto="eng_75-130_farm"
step
#include "maincity_forge2"
.create Tin Bar##3304,Mining,36 total
step
#include "maincity_forge2"
.create Bronze Bar##2659,Mining,72 total
step
label  "eng_75-130_skill"
#include "trainer_Engineering"
.learn Coarse Blasting Powder##3929
step
.create 35 Coarse Blasting Powder##3929,Engineering,90 |tip Keep at least 20 of these to craft a later item.
step
#include "trainer_Engineering"
.learn Coarse Dynamite##3931
step
#include "maincity_anvil"
.create Coarse Dynamite##3931,Engineering,100
step
#include "trainer_Engineering"
.learn Clockwork Box##8334
step
#include "maincity_anvil"
.create 5 Clockwork Box##8334,Engineering,105
step
#include "trainer_Engineering"
.learn Bronze Tube##3938
step
#include "maincity_anvil"
.create 8 Bronze Tube##3938,Engineering,115 |tip Keep 5 Bronze Tubes to make more items later.
step
#include "trainer_Engineering"
.learn Flying Tiger Goggles##3934
step
#include "maincity_anvil"
.create 3 Flying Tiger Goggles##3934,Engineering,130
step
title +Engineering 130-210
label "eng_130-210"
#include "trainer_Engineering"
.' Learn the Expert Engineer skill |skillmax Engineering,225 |tip You must be at least level 20.
.learn Heavy Blasting Powder##3945
step
goto Orgrimmar 54.1,73.3
.talk 44866
.buy 20 Heavy Stone##2838
.buy 51 Iron Bar##3575
.buy 25 Wool Cloth##2592
.buy 132 Solid Stone##7912
.buy 198 Mithril Bar##3860
.buy 22 Mageweave Cloth##4338
.buy 4 Steel Bar##3859
.buy 15 Gold Bar##3577
#include go_farm,skill="Mining",req="100",goto="eng_130-210_farm"
next "eng_130-210_skill"
step
label "eng_130-210_farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
goto Ashenvale 35.6,32.7 |n
.from Thistlefur Shaman##3924+,Thistlefur Avenger##3925,Thistlefur Wise One##33389+,Thistlefur Warrior##33390+,Thistlefur Pathfinder##3926+
.collect 25 Wool Cloth##2592
step
label "farm2"
'Skipping 2nd part of farming |next "+farm3" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Feralas
path	74.9,48.6	84.0,45.6
path	84.9,39.9	71.5,34.7
path	54.3,50.1	48.6,44.0	49.7,34.9
path	51.6,33.8	50.9,26.2	51.3,19.0
path	54.9,8.1	49.4,4.0	40.0,7.7
path	37.1,12.1	38.1,17.6	37.0,25.6
path	45.1,26.2	46.3,38.6	50.3,52.7
path	47.9,55.4	46.9,64.1	54.8,53.9
path	55.2,62.6	52.9,66.2	53.6,73.7
path	60.8,75.8	62.0,55.0	63.7,61.0
path	66.4,51.3	68.2,51.3
path	68.1,61.5	71.6,65.1	77.2,62.1
#include "follow_path_mine"
.collect 20 Heavy Stone##2838
.collect 51 Iron Ore##2772
.skill Mining,150
#include "max_skill_warning",skill="Mining",goto="eng_130-210_farm"
step
label "farm3"
'Skipping 3rd part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
#include "trainer_Mining"
.skillmax Mining,225
.learn Smelt Iron##3307
.learn Smelt Mithril##10097
step
label "farming"
map Felwood
path	49.6,76.6	43.5,60.9	42.9,50.8
path	52.9,31.6	59.6,27.2	55.7,18.6
path	63.5,24.5	62.6,6.9	42.5,17.1
path	42.0,24.1	39.9,22.1	41.0,27.5
path	38.6,37.4	38.3,55.6	40.7,59.8
path	35.0,59.1	41.8,62.6	36.3,66.8
path	40.7,72.9	37.8,73.5	40.3,77.4
path	39.1,79.3	43.8,81.5	39.0,81.6
path	42.3,87.1	45.1,84.6	45.1,89.7
path	48.1,92.8	51.2,86.1	52.5,88.8
path	57.7,86.5	58.6,84.8	55.9,81.1
#include "follow_path_mine"
.collect 132 Solid Stone##7912
.collect 198 Mithril Ore##3858
.collect 15 Gold Ore##2776
#include "max_skill_warning",skill="Mining",goto="eng_130-210_farm"
step
label "exit"
goto Felwood,49.2,87.0
.from Deadwood Gardener##7154+, Deadwood Warrior##7153+, Deadwood Pathfinder##7155+
.from Jadefire Rogue##7106+, Jadefire Shadowstalker##7110+
.from Jaedenar Cultist##7112+, Jaedenar Guardian##7113+, Jaedenar Adept##7115+
.collect 22 Mageweave Cloth##4338
.' You can find more:
.' Around [38.4,67.6]
.' Around [39.4,58.4]
step
goto Orgrimmar,54.0,81.9
.talk 5817
.buy 4 Coal##3857
step
#include "maincity_anvil"
.create Iron Bar##3307,Mining,36 total
.create Steel Bar##3569,Mining,4 total
.create Mithril Bar##10097,Mining,132 total
.create Gold Bar##3308,Mining,15 total
step
label  "eng_130-210_skill"
#include "trainer_Engineering"
.learn Silver Contact##3973
step
#include "maincity_anvil"
.create 20 Heavy Blasting Powder##3945,Engineering,135
step
#include "trainer_Engineering"
.learn Whirring Bronze Gizmo##3942
step
#include "maincity_anvil"
.create 25 Whirring Bronze Gizmo##3942,Engineering,150
step
#include "trainer_Engineering"
.learn Gold Power Core##12584
step
#include "maincity_anvil"
.create 15 Gold Power Core##12584,Engineering,30 total
step
#include "trainer_Engineering"
.learn Iron Strut##3958
step
#include "maincity_anvil"
.create 18 Iron Strut##3958,Engineering,170
step
#include "trainer_Engineering"
.learn Gyrochronatom##3961
step
#include "maincity_anvil"
.create 15 Gyrochronatom##3961,Engineering,180
step
#include "trainer_Engineering"
.learn Gyromatic Micro-Adjustor##12590
.learn Solid Blasting Powder##12585
step
#include "maincity_anvil"
.create 1 Gyromatic Micro-Adjustor##12590,Engineering,1 total |tip You will need this to make more Engineering items, do not sell.
step
.create 66 Solid Blasting Powder##12585,Engineering,66 total |n |tip You will need to keep 66 Solid Blasting Powder to make items later.
skill Engineering,195
step
#include "trainer_Engineering"
.learn Mithril Tube##12589
step
#include "maincity_anvil"
.create 22 Mithril Tube##12589,Engineering,210
step
title +Engineering 210-280
label  "eng_210-280"
#include "trainer_Engineering"
.skillmax Engineering,300 |tip You must be at least level 35.
.learn Unstable Trigger##12591
step
#include "maincity_anvil"
.create 22 Unstable Trigger##12591+,Engineering,22 total |tip Save 22 Unstable Triggers in your bags, you will need them later to create items.
skill Engineering,220
step
label  "eng_210-250_skill"
#include "trainer_Engineering"
.learn Mithril Casing##12599
step
#include "maincity_anvil"
.create 44 Mithril Casing##12599+,Engineering,44 total |n |tip Save 44 Mithril Casings in your bags, you will need them later to create items.
skill Engineering,235
step
#include "trainer_Engineering"
.learn Hi-Explosive Bomb##12619
step
#include "maincity_anvil"
.create 22 Hi-Explosive Bomb##12619,Engineering,250
step
label "eng_250-280"
#include "trainer_Engineering"
.learn Dense Blasting Powder##19788
step
#include "auctioneer"
.buy 20 Dense Stone##12365
.buy 180 Thorium Bar##12359
.buy 35 Runecloth##14047
#include go_farm,skill="Mining",req="200",goto="eng_250-280_farm"
next "eng_250-280_skill"
step
#include "trainer_Mining"
.skillmax Mining,300
.learn Smelt Thorium##16153
step
label  "eng_250-280_farm"
map Silithus
path	54.8,26.8	52.3,22.8	50.5,15.3
path	55.8,12.5	61.8,12.5	68.3,15.6
path	69.7,19.7	68.4,26.3	72.3,27.9
path	72.5,39.5	70.0,43.5	66.7,44.7
path	64.6,45.0	67.1,55.0	67.0,59.8
path	67.3,63.0	69.5,69.6	68.1,74.1
path	66.3,81.9	65.7,83.4	56.8,76.1
path	56.6,81.2	50.6,80.3	44.6,80.2
path	40.4,80.9	26.1,80.1	25.3,74.2
path	26.7,69.5	33.0,66.3	30.8,62.6
path	26.6,53.5	28.4,47.9	27.8,40.6
path	27.6,33.9	25.2,27.1	28.5,16.2
path	29.5,11.3	35.0,12.0	40.6,13.1
path	45.1,16.3	47.3,19.3	47.3,26.6
#include "follow_path_mine"
skill Mining,255
.collect 180 Thorium Ore##10620
.collect 32 Dense Stone##12365
step
goto Silithus,45.8,38.2
.from Twilight Keeper Havunth##11804+, Twilight Geolord##11881+, Twilight Avenger##11880+, Twilight Stonecaller##11882+
.collect 35 Runecloth##14047
.' You can find more:
.' Around [35.7,32.5]
.' Around [29.5,73.4]
.' Around [66.1,20.3]
step
label  "eng_250-280_skill"
#include "maincity_anvil"
.create Thorium Bar##16153,Mining,198 total
step
.create 14 Dense Blasting Powder##19788,Engineering,14 total |tip Save 14 Dense Blasting Powder for making items later.
skill Engineering,255
step
#include "trainer_Engineering"
.learn Dense Dynamite##23070
step
.create 7 Dense Dynamite##23070,Engineering,260
step
#include "trainer_Engineering"
.learn Thorium Widget##19791
step
#include "maincity_anvil"
.create 20 Thorium Widget##19791,Engineering,280
step
title +Engineering 280-350
label  "eng_280-350"
#include "trainer_Engineering"
.skillmax Engineering,375 |tip You must be at least level 50.
.learn Thorium Tube##19795
step
#include "maincity_anvil"
.create 23 Thorium Tube##19795,Engineering,300
step
#include "auctioneer"
.buy 80 Fel Iron Bar##23445
.buy 20 Mote of Earth##22573
.buy 10 Mote of Fire##22574
.buy 40 Adamantite Bar##23446
.buy 18 Netherweave Cloth##21877
.buy 10 Felsteel Bar##23448
#include go_farm,skill="Mining",req="275",goto="eng_280-350_farm"
next "eng_280-350_skill"
step
label  "eng_280-350_farm"
#include "trainer_Mining"
.skillmax Mining,375
.learn Smelt Fel Iron##29356
.learn Smelt Eternium##29359
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 300. It's better to skill up first. |only if skill("Mining")<275 and skillmax("Herbalism")<375
step
label "farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Hellfire Peninsula
path    69.3,47.5	74.5,38.7	68.2,37.7
path	62.0,31.0	58.0,32.8	54.0,26.7
path	46.0,29.3	34.1,29.1	32.0,34.5
path	38.5,38.2	35.7,40.7	33.4,49.8
path	30.3,48.6	32.5,43.3	28.5,39.3
path	26.5,45.5	22.6,45.1	18.0,38.3
path	12.5,36.1	17.9,46.3	11.8,41.9
path	12.0,47.0	06.2,49.5	15.4,62.4
path	20.3,52.9	24.0,61.1	21.2,62.7
path	28.1,80.8	27.7,69.5	30.5,72.8
path	30.3,59.9	34.8,66.6	37.7,53.3
path	46.9,46.3	49.3,49.5	60.3,48.6
path	60.8,52.8	52.1,52.7	47.2,57.7
path	45.9,75.5	33.5,89.6	33.1,92.6
path	49.1,77.5	44.6,86.2	55.5,82.8
path	58.7,78.8	56.5,72.3	65.8,63.6
path	67.1,71.7	63.0,73.3	65.8,77.9
path	68.7,77.6	71.0,71.7	70.1,68.6
path	65.0,59.8	65.6,56.0	75.0,63.9
path	78.4,80.2	80.7,77.5	77.3,63.7
path	72.7,60.2	71.5,53.1	68.3,52.0
#include "follow_path_mine"
|tip Go into any caves you find as there is lots of ore.
.collect 220 Fel Iron Ore##23424
.collect 40 Eternium Ore##23427 |n
step
label "farm2"
'Skipping 2nd part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Nagrand
path 45.7,68.9	43.1,58.9	45.0,54.7
path 49.6,57.5	56.0,54.8	56.3,59.4
path 49.7,66.2	41.9,77.0	35.7,79.3
path 31.1,75.3	27.3,63.0	33.4,57.5
path 33.7,49.4	24.0,47.4	19.7,46.7
path 11.4,43.0	11.3,36.6	19.9,32.1
path 25.0,32.8	28.2,31.8	26.5,20.5
path 30.0,18.1	36.3,23.0	40.5,35.4
path 43.1,22.8	50.8,23.5	57.0,29.0
path 65.0,37.6	70.3,42.6	68.8,51.1
path 72.3,58.1	73.8,67.9	69.8,78.1
path 57.9,75.5	49.0,79.0
#include "follow_path_mine"
|tip Go into any caves you find as there is lots of ore.
.collect 80 Adamantite Ore##23425
.collect 10 Mote of Fire##22574
.collect 20 Mote of Earth##22573
.collect 40 Eternium Ore##23427
step
goto Nagrand,73.3,69.7
.from Boulderfist Mystic##17135+, Boulderfist Crusher##17134+
.collect 18 Netherweave Cloth##21877
step
#include "trainer_Mining"
.learn Smelt Adamantite##29358
.learn Smelt Felsteel##29360
step
#include "maincity_anvil"
.create Fel Iron Bar##29356,Mining,110 total
.create Adamantite Bar##29358,Mining,40 total
.create Eternium Bar##29359,Mining,20 total
step
#include "maincity_anvil"
.create Felsteel Bar##29360,Mining,10 total
step
label  "eng_280-350_skill"
#include "trainer_Engineering"
.learn Handful of Fel Iron Bolts##30305
step
#include "maincity_anvil"
.create 44 Handful of Fel Iron Bolts##30305,Engineering,44 total |n |tip Save 44 Fel Iron Bolts for making items later.
skill Engineering,310
step
#include "trainer_Engineering"
.learn Elemental Blasting Powder##30303
.learn Fel Iron Casing##30304
step
#include "maincity_anvil"
.create Elemental Blasting Powder##30303,Engineering,40 total |n |tip These will give you 4 at a time, you will need 40 total.
.collect 40 Elemental Blasting Powder##23781
.create 12 Fel Iron Casing##30304,Engineering,12 total |tip You will need to keep 12 Fel Iron Casing for making items later.
skill Engineering,315
step
#include "trainer_Engineering"
.learn Fel Iron Bomb##30310
step
#include "maincity_anvil"
.create 12 Fel Iron Bomb##30310,Engineering,325
step
#include "trainer_Engineering"
.learn Adamantite Grenade##30311
step
#include "maincity_anvil"
.create 10 Adamantite Grenade##30311,Engineering,335
step
goto Shattrath City,72.2,30.7
.talk 18484
.buy 1 Schematic: White Smoke Flare##23811
step
'Click the Schematic: White Smoke Flare recipe in your bags |use Schematic: White Smoke Flare##23811
.learn White Smoke Flare##30341
step
.create 30 White Smoke Flare##30341,Engineering,345
step
#include "trainer_Engineering"
.learn Felsteel Stabilizer##30309
step
#include "maincity_anvil"
.create 5 Felsteel Stabilizer##30309,Engineering,350
step
title +Engineering 350-425
label  "eng_350-425"
#include "trainer_Engineering"
.skillmax Engineering,450 |tip You must be at least level 65.
.learn Handful of Cobalt Bolts##56349
step
#include "auctioneer"
.buy 220 Cobalt Bar##36916
.buy 45 Crystallized Water##37705
.buy 13 Crystallized Earth##37701
.buy 170 Saronite Bar##36913
.buy 6 Frostweave Cloth##33470
#include go_farm,skill="Mining",req="350",goto="eng_350-425_farm"
next "eng_350-425_skill"
step
label  "eng_350-425_farm"
#include "trainer_Mining"
.skillmax Mining,450
.learn Smelt Cobalt##49252
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 375. It's better to skill up first. |only if skill("Mining")<350 and skillmax("Herbalism")<450
step
label "farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Howling Fjord
path 83.0,44.8	78.1,39.4	72.7,38.3
path 71.0,31.8	75.3,22.9	70.2,8.3
path 63.2,13.7
path 61.4,23.6	57.7,18.3	51.4,14.2
path 45.5,13.3	38.1,18.9	31.1,10.9
path 28.9,10.3	21.7,12.8	19.4,23.5
path 24.2,27.4	27.6,22.6	27.3,30.8
path 38.1,29.0	47.6,32.7	53.0,31.9
path 63.5,37.1	65.5,48.7	66.9,62.7
path 64.4,67.8	64.4,72.4	67.9,76.5
path 71.3,73.6	72.5,67.9	77.3,67.2
path 77.2,60.8	74.9,55.3	79.1,50.4
#include "follow_path_mine"
.collect 220 Cobalt Ore##36909
.collect 45 Crystallized Water##37705
#include "max_skill_warning",skill="Mining",goto="eng_350-425_farm"
step
label "farm2"
'Skipping next part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Sholazar Basin
path follow strict
path	28.7,61.7	35.8,67.6	33.8,73.4
path	34.2,78.4	43.6,76.6	39.3,75.5
path	40.9,70.1	46.0,60.9	47.4,66.9
path	51.5,62.1	55.5,66.5	56.5,57.1
path	58.9,53.9	60.0,60.2	57.2,68.1
path	63.0,67.1	62.8,62.3	71.3,63.8
path	77.9,63.8	78.7,52.4	74.3,48.6
path	65.1,30.5	58.9,27.8	58.9,21.1
path	40.8,20.8	32.9,32.8	35.8,40.3
path	33.8,40.6	33.7,35.4	29.7,38.5
path	23.3,48.4	20.8,56.1	20.4,76.6
path	22.6,78.5	22.5,84.0	34.5,88.9
path	60.3,88.8	59.7,81.3	51.5,82.1
path	48.5,76.8	62.3,74.5	63.6,84.4
path	74.2,56.1	69.4,58.3	64.2,53.5
path	75.1,54.0	74.3,48.6	63.5,44.4
path	66.7,40.3	63.7,34.6	58.5,33.3
path	59.4,37.3	48.0,33.2	52.7,39.9
path	47.8,43.1	46.8,39.7	39.6,32.8
path	39.9,39.5	33.5,46.6	35.8,49.9
path	40.0,50.9	38.0,54.9	30.5,55.3
path	35.1,59.5
#include "follow_path_mine"
.collect 340 Saronite Ore##36912
.collect 13 Crystallized Earth##37701
#include "max_skill_warning",skill="Mining",goto="eng_350-425_farm"
step
goto Icecrown,61.8,20.8
.from Dark Ritualist##34734+,Dark Zealot##34728+
.collect 6 Frostweave Cloth##33470
step
goto Dragonblight 67.2,52.2
.from Ice Revenant##26283+
.collect 56 Crystallized Water##37705
step
#include "trainer_Mining"
.learn Smelt Saronite##49258
step
#include "maincity_anvil"
.create Saronite Bar##49258,Mining,221 total
.create Cobalt Bar##49252,Mining,234 total
step
label  "eng_350-425_skill"
#include "maincity_anvil"
.create 25 Handful of Cobalt Bolts##56349,Engineering,370
.collect 20 Handful of Cobalt Bolts##39681 |tip Save 20 Cobalt Bolts for crafting more items.
step
#include "trainer_Engineering"
.learn Volatile Blasting Trigger##53281
step
#include "maincity_anvil"
.create Volatile Blasting Trigger##53281,Engineering,375
.collect 25 Volatile Blasting Trigger##39690 |tip Save 25 Volatile Blasting Trigger for crafting more items later.
step
#include "trainer_Engineering"
.learn Overcharged Capacitor##56464
step
#include "maincity_anvil"
.create 13 Overcharged Capacitor##56464,Engineering,385
step
#include "trainer_Engineering"
.learn Explosive Decoy##56463
step
#include "maincity_anvil"
.create 6 Explosive Decoy##56463,Engineering,390
step
#include "trainer_Engineering"
.learn Froststeel Tube##56471
step
#include "maincity_anvil"
.create 13 Froststeel Tube##56471,Engineering,400
.collect 8 Froststeel Tube##39683 |tip Save 8 Froststeel Tubes for crafting more items later.
step
#include "trainer_Engineering"
.learn Diamond-cut Refractor Scope##61471
step
.create 7 Diamond-cut Refractor Scope##61471,Engineering,405
step
#include "trainer_Engineering"
.learn Box of Bombs##56468
step
.create 13 Box of Bombs##56468,Engineering,415
step
#include "trainer_Engineering"
.learn Mana Injector Kit##56477
step
#include "maincity_anvil"
.create 13 Mana Injector Kit##56477,Engineering,425
step
title +Engineering 425-500
label  "eng_425-500"
#include "trainer_Engineering"
.skillmax Engineering,525 |tip You must be at least level 75.
.learn Handful of Obsidium Bolts##84403
step
#include "auctioneer"
.buy 106 Obsidium Bar##54849
.buy 52 Volatile Earth##52327
.buy 72 Volatile Air##52328
.buy 76 Elementium Bar##52186
.buy 20 Embersilk Cloth##53010
#include go_farm,skill="Mining",req="425",goto="eng_425-500_farm"
next "eng_425-500_skill"
step
label  "eng_425-500_farm"
#include "trainer_Mining"
.skillmax Mining,525
.learn Smelt Obsidium##84038
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 450. It's better to skill up first. |only if skill("Mining")<425 and skillmax("Herbalism")<525
step
map Mount Hyjal
path follow loose
path 23.8,36.2	9.4,35.9	17.0,56.4
path 35.2,64.9	33.3,74.8	31.3,84.3
path 34.5,95.3	52.7,60.2	57.2,58.4
path 80.7,65.2	85.7,46.7	81.5,53.8
path 78.4,58.9	58.3,55.5	54.6,54.4
path 36.7,51.9	25.0,40.2	35.7,34.3
path 33.5,26.4
#include "follow_path_mine"
.collect 212 Obsidium Ore##53038
#include "max_skill_warning",skill="Mining",goto="eng_425-500_farm"
step
goto Mount Hyjal 60.0,70.8
.from Twilight Augur##40713+, Twilight Retainer##40767+
.collect 20 Embersilk Cloth##53010
step
map Twilight Highlands
path 71.4,50.3	54.0,37.6	41.3,56.6
path 37.5,58.2	24.5,56.9	30.0,42.8
path 26.9,28.7	32.3,27.1	31.5,40.1
path 38.6,41.2	39.6,30.4	39.0,19.7
path 46.2,20.1	53.8,24.8	61.5,32.4
path 68.5,37.9
#include "follow_path_mine"
.collect 152 Elementium Ore##52185
#include "max_skill_warning",skill="Mining",goto="eng_425-500_farm"
step
goto Twilight Highlands,57.9,31.2
.from Obsidian Stoneslave##47226+
.collect 28 Volatile Earth##52327+
step
goto 34.6,69.2
.from Enslaved Tempest##46328+
.collect 72 Volatile Air##52328
.' You can find more over here 39.5,85.7
step
#include "maincity_anvil"
.create Elementium Bar##74530,Mining,76 total
.create Obsidium Bar##84038,Mining,106 total
step
label  "eng_425-500_skill"
#include "maincity_anvil"
.create 36 Handful of Obsidium Bolts##84403,Engineering,36 total
.skill Engineering,442
step
#include "trainer_Engineering"
.learn Electrostatic Condenser##95703
step
#include "maincity_anvil"
.create Electrostatic Condenser##95703,Engineering,1 total |tip Keep this in your bags, it will help you farm Volatile Air as you mine more.
step
#include "trainer_Engineering"
.learn Electrified Ether##94748
step
#include "maincity_anvil"
.create Electrified Ether##94748,Engineering,460 |tip Hold on to any extra Electrified Ether for now.
step
#include "trainer_Engineering"
.learn Safety Catch Removal Kit##84410
step
#include "maincity_anvil"
.create Safety Catch Removal Kit##84410,Engineering,470
step
#include "trainer_Engineering"
.learn High-Powered Bolt Gun##84411
step
#include "maincity_anvil"
.create High-Powered Bolt Gun##84411,Engineering,475
step
#include "trainer_Engineering"
.learn Elementium Toolbox##84416
step
.create Elementium Toolbox##84416,Engineering,495
step
#include "trainer_Engineering"
.learn Elementium Dragonling##84418
step
#include "maincity_anvil"
.create Elementium Dragonling##84418,Engineering,500
step
label "route2"
'Redirecting to Engineering 500-525 |next "eng_500-525" |only if skill("Engineering")>=500 and skill("Engineering")<525 and not ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Engineering finale |next "eng_525" |only if skill("Engineering")>=525 and skill("Engineering")<600 and not ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Engineering 500-600 |next "eng_500-600" |only if skill("Engineering")>=500 and skill("Engineering")<600 and ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Engineering finale |next "eng_600" |only if default
step
label "eng_500-525"
#include "auctioneer"
.buy 52 Obsidium Bar##54849
.buy 52 Volatile Earth##52327
.buy 24 Volatile Air##52328
.buy 120 Elementium Bar##52186
.buy 60 Embersilk Cloth##53010
.buy 18 Volatile Fire##52325
.buy 4 Hardened Elementium Bar##53039
.buy 2 Dream Emerald##52192 |tip You will have to buy these as they require Jewelcrafting.
#include go_farm,skill="Mining",req="425",goto="eng_500-525_farm"
next "eng_500-525_skill"
step
label "eng_500-525_farm"
map Mount Hyjal
path 23.8,36.2	9.4,35.9	17.0,56.4
path 35.2,64.9	33.3,74.8	31.3,84.3
path 34.5,95.3	52.7,60.2	57.2,58.4
path 79.6,58.7	85.7,46.7	81.5,53.8
path 78.4,58.9	58.3,55.5	54.6,54.4
path 36.7,51.9	25.0,40.2	35.7,34.3
path 33.5,26.4
#include "follow_path_mine"
.collect 104 Obsidium Ore##53038
#include "max_skill_warning",skill="Mining",goto="eng_500-525_farm"
step
goto Mount Hyjal 60.0,70.8
.from Twilight Augur##40713+, Twilight Retainer##40767+
.collect 60 Embersilk Cloth##53010
step
goto Mount Hyjal 20.0,58.6
.from Flame Terror##52219+, Brimstone Destroyer##52794+, Charred Invader##52816+
.collect 18 Volatile Fire##52325
step
map Twilight Highlands
path 71.4,50.3	54.0,37.6	41.3,56.6
path 37.5,58.2	24.5,56.9	30.0,42.8
path 26.9,28.7	32.3,27.1	31.5,40.1
path 38.6,41.2	39.6,30.4	39.0,19.7
path 46.2,20.1	53.8,24.8	61.5,32.4
path 68.5,37.9
#include "follow_path_mine"
.collect 320 Elementium Ore##52185
#include "max_skill_warning",skill="Mining",goto="eng_500-525_farm"
step
goto Twilight Highlands,57.9,31.2
.from Obsidian Stoneslave##47226+
.collect 68 Volatile Earth##52327
step
goto 34.6,69.2
.from Enslaved Tempest##46328+
.collect 24 Volatile Air##52328
.' You can find more over here 39.5,85.7
step
#include "maincity_anvil"
.create Elementium Bar##74530,Mining,52 total
.create Obsidium Bar##84038,Mining,160 total
step
#include "maincity_anvil"
.create Hardened Elementium Bar##53039,Mining,4 total
step
label "eng_500-525_skill"
.create 3 Elementium Dragonling##84418,Engineering,3 total |n
skill Engineering,507
step
#include "trainer_Engineering"
.learn Finely-Tuned Throat Needler##84420
step
#include "maincity_anvil"
.create Finely-Tuned Throat Needler##84420,Engineering,512
step
#include "trainer_Engineering"
.learn Volatile Thunderstick##84417
step
#include "maincity_anvil"
.create Volatile Thunderstick##84417,Engineering,517
step
#include "trainer_Engineering"
.learn Gnomish X-Ray Scope##84428
step
#include "maincity_anvil"
.create Gnomish X-Ray Scope##84428,Engineering,525
step
title +Engineering 525
label "eng_525"
'Congratulations, you are now a level 525 Engineer!
'In order to complete this professions to level 600, please purchase the Mists of Pandaria upgrade of this guide.
|confirm
|next "end"
step
label "eng_500-600"
.'Please purchase the upgrade Profession guide to see the content for MOP |only if not ZGV.guidesets['ProfessionsHMoP']
|next Profession Guides\\Engineering\\Engineering 500-600 Leveling Guide |only if ZGV.guidesets['ProfessionsHMoP']
step
label "eng_600"
'Congratulations, you are now a Zen Master Engineer!
step
label "end"
'You have reached the end of the guide
|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\First Aid\\First Aid 1-600 Leveling Guide",[[
description This guide will walk you through leveling your First Aid skill from 1 - 600.
author support@zygorguides.com
completion skill,First Aid,600
condition suggested hasprof('First Aid',1,600)
#include "profession_secondary_start",prof1="First Aid"
step
label "route"
'Redirecting to First Aid 1-75 |next "aid_1-75" |only if skill("First Aid")<75
'Redirecting to First Aid 75-150 |next "aid_75-150" |only if skill("First Aid")>=75 and skill("First Aid")<150
'Redirecting to First Aid 150-210 |next "aid_150-210" |only if skill("First Aid")>=150 and skill("First Aid")<210
'Redirecting to First Aid 210-300 |next "aid_210-300" |only if skill("First Aid")>=210 and skill("First Aid")<300
'Redirecting to First Aid 300-350 |next "aid_300-350" |only if skill("First Aid")>=300 and skill("First Aid")<350
'Redirecting to First Aid 350-450 |next "aid_350-450" |only if skill("First Aid")>=350 and skill("First Aid")<450
'Redirecting to First Aid 450-525 |next "aid_450-525" |only if skill("First Aid")>=450 and skill("First Aid")<525
'Redirecting to First Aid 525-600 |next "route2" |only if skill("First Aid")>=525 and skill("First Aid")<600
step
title + First Aid 1-75
label "aid_1-75"
#include "trainer_FirstAid"
.skillmax First Aid,75 |tip You must be at least level 5.
step
#include "auctioneer"
.buy 160 Linen Cloth##2589
.' Click here to farm these instead of buying them. |confirm |next "aid_1-75_farm"
|next "aid_1-75_skill"
step
label "aid_1-75_farm"
goto Durotar,47.4,48.9 |n
.from Razormane Quilboar##3111+,Razormane Scout##3112+
.collect 160 Linen Cloth##2589
step
label "aid_1-75_skill"
.create Linen Bandage##3275,First Aid,40
step
#include "trainer_FirstAid"
.learn Heavy Linen Bandage##3276
step
.create Heavy Linen Bandage##3276+,First Aid,75
step
title + First Aid 75-150
label "aid_75-150"
#include "trainer_FirstAid"
.skillmax First Aid,150 |tip You must be at least level 10.
step
.create Heavy Linen Bandage##3276+,First Aid,80
step
#include "trainer_FirstAid"
.learn Wool Bandage##3277
step
#include "auctioneer"
.buy 75 Wool Cloth##2592
.' Click here to farm these instead of buying them. |confirm |next "aid_75-150_farm"
|next "aid_75-150_skill"
step
label "aid_75-150_farm"
goto Ashenvale,34.0,39.8 |n
.from Thistlefur Shaman##3924+,Thistlefur Avenger##3925,Thistlefur Wise One##33389+,Thistlefur Warrior##33390+,Thistlefur Pathfinder##3926+
.collect 75 Wool Cloth##2592
step
label "aid_75-150_skill"
.create Wool Bandage##3277+,First Aid,115
step
#include "trainer_FirstAid"
.learn Heavy Wool Bandage##3278
step
.create Heavy Wool Bandage##3278+,First Aid,150
step
title + First Aid 150-210
label "aid_150-210"
#include "trainer_FirstAid"
.skillmax First Aid,225 |tip You must be at least level 20.
.learn Silk Bandage##7928
step
#include "auctioneer"
.buy 90 Silk Cloth##4306
.' Click here to farm these instead of buying them. |confirm |next "aid_150-210_farm"
|next "aid_150-210_skill"
step
label "aid_150-210_farm"
goto Desolace 30.6,54.6 |n
.from Maraudine Windchaser##4657+,Maraudine Wrangler##4655+,Maraudine Scout##4654+,Maraudine Mauler##4656+,Maraudine Stormer##4658+
.collect 90 Silk Cloth##4306
step
label "aid_150-210_skill"
.create Silk Bandage##7928,First Aid,180
step
#include "trainer_FirstAid"
.learn Heavy Silk Bandage##7929
step
.create Heavy Silk Bandage##7929,First Aid,210
step
title + First Aid 210-300
label "aid_210-300"
#include "trainer_FirstAid"
.skillmax First Aid,300 |tip You must be at least level 35.
.learn Mageweave Bandage##10840
step
#include "auctioneer"
.buy 50 Mageweave Cloth##4338
.' Click here to farm these instead of buying them. |confirm |next "aid_210-260_farm"
|next "aid_210-260_skill"
step
label "aid_210-260_farm"
goto Felwood,49.2,87.0
.from Deadwood Gardener##7154+, Deadwood Warrior##7153+, Deadwood Pathfinder##7155+
.from Jadefire Rogue##7106+, Jadefire Shadowstalker##7110+
.from Jaedenar Cultist##7112+, Jaedenar Guardian##7113+, Jaedenar Adept##7115+
.collect 50 Mageweave Cloth##4338
step
label "aid_210-260_skill"
.create Mageweave Bandage##10840,First Aid,240
step
#include "trainer_FirstAid"
.learn Heavy Mageweave Bandage##10841
step
.create Heavy Mageweave Bandage##10841+,First Aid,260
step
#include "trainer_FirstAid"
.learn Runecloth Bandage##18629
step
#include "auctioneer"
.buy 80 Runecloth##14047
.' Click here to farm these instead of buying them. |confirm |next "aid_260-300_farm"
|next "aid_260-300_skill"
step
label "aid_260-300_farm"
goto Silithus 45.8,38.2
.from Twilight Keeper Havunth##11804+, Twilight Geolord##11881+, Twilight Avenger##11880+, Twilight Stonecaller##11882+
.collect 80 Runecloth##14047
.' You can find more:
.' Around [35.7,32.5]
.' Around [29.5,73.4]
.' Around [66.1,20.3]
step
label "aid_260-300_skill"
.create Runecloth Bandage##18629+,First Aid,290
step
#include "trainer_FirstAid"
.learn Heavy Runecloth Bandage##18630
step
.create Heavy Runecloth Bandage##18630,First Aid,300
step
#include "auctioneer"
.buy 50 Netherweave Cloth##21877
.' Click here to farm these instead of buying them. |confirm |next "aid_260-300_farm"
|next "aid_300-350"
step
label "aid_260-300_farm"
goto Netherstorm,26.3,68.1
.from Sunfury Magister##18855+, Sunfury Astromancer##19643+, Sunfury Captain##19453+, Sunfury Bloodwarder##18853+, Sunfury Geologist##19779+, Sunfury Warp-Master##18857+
.collect 50 Netherweave Cloth##21877
step
title + First Aid 300-350
label "aid_300-350"
#include "trainer_FirstAid"
.skillmax First Aid,375 |tip You must be at least level 50.
.learn Netherweave Bandage##27032
step
.create Netherweave Bandage##27032,First Aid,330
step
#include "trainer_FirstAid"
.learn Heavy Netherweave Bandage##27033
step
.create Heavy Netherweave Bandage##27033,First Aid,350
step
title + First Aid 350-450
label "aid_350-450"
#include "trainer_FirstAid"
.skillmax First Aid,450 |tip You must be at least level 65.
.learn Frostweave Bandage##45545
step
#include "auctioneer"
.buy 80 Frostweave Cloth##33470
.' Click here to farm these instead of buying them. |confirm |next "aid_350-450_farm"
|next "aid_350-450_skill"
step
label "aid_350-450_farm"
goto Icecrown,61.8,20.8
.from Dark Ritualist##34734+, Dark Zealot##34728+
.collect 80 Frostweave Cloth##33470
step
label "aid_350-450_skill"
.create Frostweave Bandage##45545+,First Aid,400
step
#include "trainer_FirstAid"
.learn Heavy Frostweave Bandage##45546
step
.create Heavy Frostweave Bandage##45546+,First Aid,450
step
title + First Aid 450-525
label "aid_450-525"
#include "trainer_FirstAid"
.skillmax First Aid,525 |tip You must be at least level 75.
.learn Embersilk Bandage##74556
step
#include "auctioneer"
.buy 75 Embersilk Cloth##53010
.' Click here to farm these instead of buying them. |confirm |next "aid_450-525_farm"
|next "aid_450-525_skill"
step
label "aid_450-525_farm"
goto Mount Hyjal,35.0,24.0
.from Twilight Augur##40713+, Twilight Retainer##40767+
.collect 75 Embersilk Cloth##53010
step
label "aid_450-525_skill"
.create Embersilk Bandage##74556,First Aid,475
step
#include "trainer_FirstAid"
.learn Heavy Embersilk Bandage##74557
step
.create Heavy Embersilk Bandage##74557,First Aid,525
step
label "route2"
'Redirecting to First Aid finale |next "aid_525" |only if skill("First Aid")>=525 and skill("First Aid")<600 and not ZGV.guidesets['ProfessionsHMoP']
'Redirecting to First Aid 525-600 |next "aid_525-600" |only if skill("First Aid")>=525 and skill("First Aid")<600 and ZGV.guidesets['ProfessionsHMoP']
'Redirecting to First Aid finale |next "aid_600" |only if default
step
title + First Aid 525
label "aid_525"
'Congratulations, you are now a level 525 in First Aid!
|confirm |next "end"
step
label "aid_525-600"
.'Please purchase the upgrade Profession guide to see the content for MOP |only if not ZGV.guidesets['ProfessionsHMoP']
|next Profession Guides\\First Aid\\First Aid 525-600 Leveling Guide |only if ZGV.guidesets['ProfessionsHMoP']
step
label "aid_600"
'Congratulations, you are now a Zen Master in First Aid!
|confirm |next "end"
step
label "end"
'You have reached the end of the guide
|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Fishing 1-600 Leveling Guide",[[
description This guide will walk you through leveling your Fishing skill from 1-600.
author support@zygorguides.com
completion skill,Fishing,600
condition suggested hasprof('Fishing',1,600)
#include profession_secondary_start,prof1="Fishing"
step
label "route"
'Redirecting to Fishing 1-75 |next "fish_1-75" |only if skill("Fishing")<75
'Redirecting to Fishing 75-150 |next "fish_75-150" |only if skill("Fishing")>=75 and skill("Fishing")<150
'Redirecting to Fishing 150-225 |next "fish_150-225" |only if skill("Fishing")>=150 and skill("Fishing")<225
'Redirecting to Fishing 225-300 |next "fish_225-300" |only if skill("Fishing")>=225 and skill("Fishing")<300
'Redirecting to Fishing 300-375 |next "fish_300-375" |only if skill("Fishing")>=300 and skill("Fishing")<375
'Redirecting to Fishing 375-450 |next "fish_375-450" |only if skill("Fishing")>=375 and skill("Fishing")<450
'Redirecting to Fishing 450-525 |next "fish_450-525" |only if skill("Fishing")>=450 and skill("Fishing")<525
'Redirecting to Fishing 525-600 |next "route2" |only if skill("Fishing")>=525 and skill("Fishing")<600
step
title + Fishing 1-75
label "fish_1-75"
#include "trainer_Fishing"
.skillmax Fishing,75
step
#include "vendor_Fishing"
.buy 1 Fishing Pole##6256
.buy 1 Shiny Bauble##6529
step
goto Orgrimmar 66.5,41.5
.' Equip your Fishing Pole |use Fishing Pole##6256
.' Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529 |tip If your Shiny Bauble Fishing skill boost expires, you can buy more Shiny Baubles to help you fish.
.' Stand on the end of this wooden dock
.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##131474
.' Get your Fishing skill to level 75 |skill Fishing,75
step
title + Fishing 75-150
label "fish_75-150"
#include "trainer_Fishing"
.skillmax Fishing,150
step
#include "vendor_Fishing"
.buy Shiny Bauble##6529
step
goto 66.5,41.5
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529 |tip If your Shiny Bauble Fishing skill boost expires, you can buy more Baubles or Nightcrawlers to help you fish.
.' Stand on the end of this wooden dock
.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##131474
.' Get your Fishing skill to level 150 |skill Fishing,150
step
title + Fishing 150-225
label "fish_150-225"
#include "trainer_Fishing"
.skillmax Fishing,225
step
#include "vendor_Fishing"
.buy Shiny Bauble##6529
step
goto 66.5,41.5
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529 |tip If your Shiny Bauble Fishing skill boost expires, you can buy more Baubles or Nightcrawlers to help you fish.
.' Stand on the end of this wooden dock
.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##131474
.' Get your Fishing skill to level 225 |skill Fishing,225
step
title + Fishing 225-300
label "fish_225-300"
#include "trainer_Fishing"
.skillmax Fishing,300
step
#include "vendor_Fishing"
.buy Shiny Bauble##6529
step
goto 66.5,41.5
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529 |tip If your Shiny Bauble Fishing skill boost expires, you can buy more Baubles or Nightcrawlers to help you fish.
.' Stand on the end of this wooden dock
.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##131474
.' Get your Fishing skill to level 300 |skill Fishing,300
step
title + Fishing 300-375
label "fish_300-375"
#include "trainer_Fishing"
.skillmax Fishing,375
step
#include "vendor_Fishing"
.buy Shiny Bauble##6529
step
goto 66.5,41.5
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529 |tip If your Shiny Bauble Fishing skill boost expires, you can buy more Baubles or Nightcrawlers to help you fish.
.' Stand on the end of this wooden dock
.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##131474
.' Get your Fishing skill to level 375 |skill Fishing,375
step
title + Fishing 375-450
label "fish_375-450"
#include "trainer_Fishing"
.skillmax Fishing,450
step
#include "vendor_Fishing"
.buy 1 Strong Fishing Pole##6365
.buy Shiny Bauble##6529
step
goto 66.5,41.5
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529 |tip If your Shiny Bauble Fishing skill boost expires, you can buy more Baubles or Nightcrawlers to help you fish.
.' Stand on the end of this wooden dock
.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##131474
.' Get your Fishing skill to level 450 |skill Fishing,450
step
label "fish_450-525"
#include "trainer_Fishing"
.skillmax Fishing,525
step
goto 66.5,41.5
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Stand on the end of this wooden dock
.' Use your Fishing skill to fish in the water |cast Fishing##131474
.' Get your Fishing skill to level 525 |skill Fishing,525
step
label "route2"
'Redirecting to Fishing finale |next "fish_525" |only if skill("Fishing")>=525 and skill("Fishing")<600 and not ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Fishing 525-600 |next "fish_525-600" |only if skill("Fishing")>=525 and skill("Fishing")<600 and ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Fishing finale |next "fish_600" |only if default
step
title + Fishing 525
label "fish_525"
'Congratulations, you are now a level 525 Fisherman!
|confirm |next "end"
step
label "fish_525-600"
.'Please purchase the upgrade Profession guide to see the content for MOP |only if not ZGV.guidesets['ProfessionsHMoP']
|next Profession Guides\\Fishing\\Fishing 525-600 Leveling Guide |only if ZGV.guidesets['ProfessionsHMoP']
step
label "fish_600"
'Congratulations, you are now a Zen Master Fisherman!
|confirm |next "end"
step
label "end"
'You have reached the end of the guide
|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Herbalism 1-600 Leveling Guide",[[
description This guide will walk you through leveling your Herbalism skill from 1 - 600.
author support@zygorguides.com
completion skill,Herbalism,600
condition suggested hasprof('Herbalism',1,600)
#include profession_single_start,prof1="Herbalism"
step
label "route"
'Redirecting to Pandarian Herbalism 1-525 |next "choice" |only if skill("Herbalism")<525 and level>=85 and _G.GetExpansionLevel()>=4 and ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Herbalism 1-70 |next "herb_1-70" |only if skill("Herbalism")<70 and (level<85 or _G.GetExpansionLevel()<4 or not ZGV.guidesets['ProfessionsHMoP'])
'Redirecting to Herbalism 70-150 |next "herb_70-150" |only if skill("Herbalism")>=70 and skill("Herbalism")<150 and (level<85 or _G.GetExpansionLevel()<4 or not ZGV.guidesets['ProfessionsHMoP'])
'Redirecting to Herbalism 150-225 |next "herb_150-200" |only if skill("Herbalism")>=130 and skill("Herbalism")<225 and (level<85 or _G.GetExpansionLevel()<4 or not ZGV.guidesets['ProfessionsHMoP'])
'Redirecting to Herbalism 200-285 |next "herb_200-285" |only if skill("Herbalism")>=225 and skill("Herbalism")<285 and (level<85 or _G.GetExpansionLevel()<4 or not ZGV.guidesets['ProfessionsHMoP'])
'Redirecting to Herbalism 285-375 |next "herb_285-375" |only if skill("Herbalism")>=285 and skill("Herbalism")<375 and (level<85 or _G.GetExpansionLevel()<4 or not ZGV.guidesets['ProfessionsHMoP'])
'Redirecting to Herbalism 375-425 |next "herb_375-425" |only if skill("Herbalism")>=375 and skill("Herbalism")<425 and (level<85 or _G.GetExpansionLevel()<4 or not ZGV.guidesets['ProfessionsHMoP'])
'Redirecting to Herbalism 425-525 |next "herb_425-525" |only if skill("Herbalism")>=425 and skill("Herbalism")<525 and (level<85 or _G.GetExpansionLevel()<4 or not ZGV.guidesets['ProfessionsHMoP'])
'Redirecting to Herbalism 525-600 |next "route2" |only if skill("Herbalism")>=525 and skill("Herbalism")<600
step
label choice
'Click here to level up your herbalism in Pandaria. |confirm |next "Pandarian_Herb_1-600"
.'_
'Click here to level up your herbalism using the original method. |confirm |next "herb_1-70"
step
title + Herbalism (1-70)
label	"herb_1-70"
#include "trainer_Herbalism"
.skillmax Herbalism,75
step
#include "home_UC"
step
map Tirisfal Glades
path follow loose;loop;ants straight
path 56.6,49.0	49.4,49.5	47.6,42.4
path 50.2,32.2	44.4,32.9	42.9,51.0
path 43.1,53.8	44.3,59.8	55.7,55.5
.collect Peacebloom##2447 |n
.collect Silverleaf##765 |n
.collect Earthroot##2449 |n
#include "follow_path_herbs"
skill Herbalism,70
step
title + Herbalism (70-150)
label "herb_70-150"
#include trainer_HerbalismUC
.skillmax Herbalism,150
step
map Hillsbrad Foothills
path 31.8,62.6	33.9,54.0	33.9,54.0
path 29.7,44.1
path 34.5,28.2	39.5,21.0	39.5,21.0
path 44.2,8.3 	51.3,14.0	57.5,20.9
path 56.1,34.3	49.9,46.2	43.1,50.1
path 38.2,49.1	40.1,55.0	41.3,67.4
path 41.3,67.4	36.3,69.9
#include "follow_path_herbs"
.collect Mageroyal##785 |n
.collect Bruiseweed##2453 |n
.collect Briarthorn##2450 |n
skill Herbalism,125
step
map Hillsbrad Foothills
path 47.6,18.8	51.3,22.6	53.5,30.3
path 48.6,33.7	47.0,35.8	43.2,41.1
path 39.1,33.7	40.1,28.5	43.2,20.9
path 47.6,18.1
#include "follow_path_herbs"
.' Click Frozen Herb |tip They look like herbs frozen in ice around this area.
skill Herbalism,150
step
title + Herbalism (150-200)
label	"herb_150-200"
#include "trainer_HerbalismUC"
.skillmax Herbalism,225
step
map Western Plaguelands
path 31.8,59.3	36.9,57.1	43.5,53.2
path 45.9,44.7	45.2,35.2
path 49.5,35.1	51.0,47.4	55.2,51.3
path 61.8,52.0	67.2,44.5	63.6,56.0
path 56.6,60.1	52.6,67.5	46.4,59.2
path 37.9,62.2	33.7,62.7
#include "follow_path_herbs"
.collect Fadeleaf##3818 |n |tip You will mostly have to gather this from the cornfields until you are level 160
.collect Kingsblood##3356 |n
.collect Khadgar's Whisker##3358 |n
skill Herbalism,200
step
title + Herbalism (200-285)
label	"herb_200-285"
#include "trainer_Herbalism"
.skillmax Herbalism,300
step
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label	"farming"
map Western Plaguelands
path 31.8,59.3	36.9,57.1	43.5,53.2
path 45.9,44.7	45.2,35.2
path 49.5,35.1	51.0,47.4	55.2,51.3
path 61.8,52.0	67.2,44.5	63.6,56.0
path 56.6,60.1	52.6,67.5	46.4,59.2
path 37.9,62.2	33.7,62.7
#include "follow_path_herbs"
.collect Fadeleaf##3818 |n |tip You will mostly have to gather this from the cornfields until you are level 160
.collect Kingsblood##3356 |n |tip This will only level you up until 225.
.collect Khadgars' Whisker##3358 |n
skill Herbalism,230
step
label	"farm2"
map Searing Gorge
path	66.9,43.2	58.9,53.0	55.6,68.1
path	49.8,70.1	45.9,61.5	38.1,74.9
path	31.0,67.8	32.1,56.9	29.4,44.8
path	37.5,47.8	40.5,39.1	47.2,42.1
path	53.5,35.4	77.0,19.0
#include "follow_path_herbs"
.collect Sungrass##8838 |n
skill Herbalism,285
step
title + Herbalism (285-375)
label	"herb_285-375"
#include trainer_Herbalism
.skillmax Herbalism,375
step
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label	"farming"
map Swamp of Sorrows
path 17.6,52.9		21.6,54.6		30.9,60.7
path 39.4,56.9		51.7,59.6		64.5,67.3
path 73.3,81.9		82.0,76.0		85.3,62.6
path 87.6,39.9		84.9,31.2		80.1,20.6
path 66.5,22.7		56.8,31.9		47.0,36.0
path 36.1,39.8		26.9,42.9
#include "follow_path_herbs"
.collect Golden Sansam##13464 |n
.collect Sorrowmoss##13466 |n
skill Herbalism,300
step
label	"farm2"
'Skipping 2nd part of guide |next "farm3" |only if step:Find("+farming"):IsComplete()
'Proceeding to skill up |next |only if default
step
label	"farming"
map Felwood
path 50.5,80.9		47.6,75.8		45.4,71.4
path 44.9,66.4		42.9,58.3		43.6,52.1
path 45.2,42.1		49.6,33.6		55.3,24.8
path 57.5,15.5		54.3,14.1		42.7,21.7
path 40.0,37.5		40.0,46.5		39.6,56.9
path 39.1,66.2		38.9,71.3		42.7,84.7
#include "follow_path_herbs"
.collect Gromsblood##8846 |n
.collect Dreamfoil##13463 |n
.collect Golden Sansam##13464 |n
.collect Sorrowmoss##13466 |n
skill Herbalism,325
step
label	"farm3"
map Terokkar Forest
path 34.4,8.0 		37.5,16.1		41.6,19.9
path 44.5,11.5		48.0,18.4		51.0,21.0
path 47.5,22.9		48.4,26.9
path 60.2,22.5		65.3,32.3
path 68.3,41.8		73.1,45.3		61.5,48.6
path 54.0,37.1		48.0,33.5		39.0,34.8
path 39.2,44.4		47.3,50.0		47.0,79.8
path 33.5,76.9		19.6,77.8		20.3,71.0
path 21.5,60.7		31.4,39.9		37.4,30.1
#include "follow_path_herbs"
.collect Felweed##22785 |n
.collect Dreaming Glory##22786 |n
.collect Terocone##22789 |n
skill Herbalism,375
step
title + Herbalism (375-425)
label	"herb_375-425"
#include trainer_Herbalism
.skillmax Herbalism,450
step
map Borean Tundra
path 51.9,47.7		53.7,43.4	53.2,38.8
path 54.8,29.9		51.3,20.8	49.4,26.2
path 42.9,41.3		36.5,54.9	44.1,64.2
path 52.2,60.7		57.7,52.1
#include "follow_path_herbs"
.collect Goldclover##36901 |n
.collect Tiger Lily##36904 |n
skill Herbalism,400
step
map Sholazar Basin
path 32.0,58.2		36.1,65.3		43.9,57.7
path 44.5,63.9		39.5,66.3		40.4,71.7
path 32.8,82.3		36.1,84.4		42.6,76.0
path 46.8,62.5		51.0,62.0		60.0,73.9
path 55.7,85.9		66.4,82.3		69.3,65.8
path 55.2,57.1		48.9,55.0		55.4,48.1
path 58.1,38.3		34.8,31.4		30.1,43.4
path 32.1,48.5		26.6,55.4		23.7,60.3
#include "follow_path_herbs"
.collect Goldclover##36901 |n
.collect Tiger Lily##36904 |n |tip You must be skill level 375 to gather this.
skill Herbalism,425
step
title + Herbalism 425-525
label "herb_425-525"
#include "trainer_Herbalism"
.skillmax Herbalism,525
step
'Skipping next part of guide |next "farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to skill up |next |only if default
step
label	"farming"
map Mount Hyjal
path follow strict
path 68.2,23.9		59.2,31.6		57.0,38.9
path 57.9,17.5		51.5,16.9		52.6,35.5
path 48.7,36.5		44.0,24.5		39.8,32.5
path 36.5,21.7		32.3,25.2		34.6,36.9
path 43.5,42.6		36.2,44.9		25.3,37.8
path 24.1,31.9		11.8,31.6		14.3,47.0
path 19.0,58.5		25.6,62.0		31.9,46.7
path 33.1,65.2		36.9,53.5		42.3,55.9
path 33.8,65.0		31.3,76.5		33.8,98.2
path 57.1,80.9		59.2,84.5		59.8,77.8
path 55.8,74.7		59.8,71.6		49.1,51.6
path 61.9,60.5		67.1,53.5		74.3,58.8
path 71.9,68.5		77.3,63.2		83.0,64.2
path 89.9,49.8		80.9,51.8		77.5,59.5
#include "follow_path_herbs"
.collect Cinderbloom##52983 |n
skill Herbalism,475
step
label	"farm2"
'Skipping next part of guide |next "farm3" |only if step:Find("+farming"):IsComplete()
'Proceeding to skill up |next |only if default
step
label	"farming"
map Deepholm
path 69.4,56.0		74.7,61.1		75.8,67.5
path 70.5,61.9		71.1,70.6		66.0,68.5
path 58.0,73.2		47.4,67.3		37.0,53.3
path 37.6,44.7		26.8,41.5		23.1,35.3
path 28.9,35.6		27.8,27.0		31.2,32.0
path 36.6,28.9		33.0,19.1		47.8,12.9
path 45.9,21.1		43.6,25.1		44.5,28.6
path 49.1,33.6		56.7,38.3		73.8,32.7
path 75.2,41.9		69.6,46.4
#include "follow_path_herbs"
.collect Heartblossom##52986 |n
skill Herbalism,500
step
label	"farm3"
map Uldum
path 58.4,31.3		56.2,22.6		57.8,14.5
path 61.5,14.0		57.1,44.7		60.5,58.3
path 69.8,76.5		65.9,75.9		60.0,83.2
path 59.0,58.8		55.3,45.8		52.0,45.6
path 50.8,42.5		50.8,36.0
#include "follow_path_herbs"
.collect Whiptail##52988 |n
skill Herbalism,525
step
label "route2"
'Redirecting to Herbalism finale |next "herb_525" |only if skill("Herbalism")>=525 and skill("Herbalism")<600 and not ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Herbalism 525-600 |next "herb_525-600" |only if skill("Herbalism")>=525 and skill("Herbalism")<600 and ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Herbalism non-owners |next "herb_525-no-guide" |only if skill("Herbalism")>=525 and skill("Herbalism")<600 and _G.GetExpansionLevel()>=4 and not ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Herbalism finale |next "herb_600" |only if default
step
label	"herb_525"
'Congratulations, you are now a level 525 Herbalist!
|next "end"
step
label "herb_525-no-guide"
.'Please purchase the upgrade Profession guide to see the content for MOP
|confirm |next "end"
|only if not ZGV.guidesets['ProfessionsHMoP']
step
label "Pandarian_Herb_1-600"
|next
#include "Pandarian_Herbalism_1-600"
step
label "herb_525-600"
|next Profession Guides\\Herbalism\\Herbalism 525-600 Leveling Guide |only if ZGV.guidesets['ProfessionsHMoP']
step
label "herb_600"
'Congratulations, you are now a Zen Master Herbalist!
|confirm |next "end"
step
label "end"
'You have reached the end of the guide
|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Inscription\\Inscription 1-600 Leveling Guide",[[
description This guide will walk you through leveling your Inscription skill from 1-600.
author support@zygorguides.com
completion skill,Inscription,600
condition suggested hasprof('Inscription',1,600)
#include profession_dual_start,prof1="Inscription",prof2="Herbalism"
step
label "route"
'Redirecting to Inscription 1-50 |next "ins_1-50" |only if skill("Inscription")<50
'Redirecting to Inscription 50-150 |next "ins_50-150" |only if skill("Inscription")>=50 and skill("Inscription")<150
'Redirecting to Inscription 150-200 |next "ins_150-200" |only if skill("Inscription")>=150 and skill("Inscription")<200
'Redirecting to Inscription 200-275 |next "ins_200-275" |only if skill("Inscription")>=200 and skill("Inscription")<275
'Redirecting to Inscription 275-350 |next "ins_275-350" |only if skill("Inscription")>=275 and skill("Inscription")<350
'Redirecting to Inscription 350-425 |next "ins_350-425" |only if skill("Inscription")>=350 and skill("Inscription")<425
'Redirecting to Inscription 425-500 |next "ins_425-500" |only if skill("Inscription")>=425 and skill("Inscription")<500
'Redirecting to Inscription 500-600 |next "route2" |only if skill("Inscription")>=500 and skill("Inscription")<600
step
.'NOTE: When getting additional materials using this guide, do not sell them or throw them away. Most of them will be used in the guide at a later time.
step
title + Inscription 1-50
label "ins_1-50"
#include "trainer_Inscription"
.skillmax Inscription,75 |tip You must be at least level 5.
step
#include "vendor_Inscription"
.buy 1 Virtuoso Inking Set##39505
.buy 17 Light Parchment##39354
step
#include "home_ValleyofStrength"
step
#include "auctioneer"
.' You need about 140 herbs total
.buy Silverleaf##765 |n
.buy Peacebloom##2447 |n
.buy Earthroot##2449 |n
.buy Bloodthistle##22710 |n
.' Mill the 140 herbs you purchased, or gathered, into Alabaster Pigment |cast Milling##51005
.' You'll need about {_G.max(0 , (140-itemcount(765,2447,2449,22710)))} more herbs.
.buy 69 Alabaster Pigment##39151
#include go_farm,skill="Herbalism",req="1",goto="ins_1-50_farm"
|next "ins_1-50_skill"
step
label "ins_1-50_farm"
map Durotar
path follow loose;loop;ants straight
path 46.2,17.1		38.8,16.2		38.7,22.1
path 37.9,30.4		48.5,32.8		51.4,36.5
path 51.7,52.0		53.6,62.4		55.6,69.7
path 60.9,69.1		60.7,58.0		57.6,46.9
path 55.0,32.4		57.8,26.1		53.4,12.5
#include "follow_path_herbs"
.' You need about 140 herbs total
.collect Silverleaf##765 |n
.collect Peacebloom##2447 |n
.collect Earthroot##2449 |n
.' You'll need about {_G.max(0 , (140-itemcount(765,2447,2449,22710)))} more herbs.
.' Mill the 140 herbs you gathered into Alabaster Pigment
.collect 69 Alabaster Pigment##39151
#include "max_skill_warning",skill="Herbalism",goto="ins_1-50_farm"
step
label "ins_1-50_skill"
.create 17 Ivory Ink##52738,Inscription,18
step
.create 17 Scroll of Intellect##48114,Inscription,35
step
#include "trainer_Inscription"
.learn Moonglow Ink##52843
step
.create 36 Moonglow Ink##52843,Inscription,50
step
title + Inscription 50-150
label "ins_50-150"
#include "trainer_Inscription"
.skillmax Inscription,150 |tip You must be at least level 10.
.learn Enchanting Vellum##52739
step
#include "vendor_Inscription"
.buy 59 Light Parchment##39354
step
#include "auctioneer"
.' You need about 80 Dusky giving herbs total
.buy Briarthorn##2450 |n
.buy Bruiseweed##2453 |n
.buy Mageroyal##785 |n
.buy Stranglekelp##3820 |n
.buy Swiftthistle##2452 |n
.' You'll need about {_G.max(0 , (80-itemcount(2450,2453,785,3820,2452)))} more herbs.
.' Mill the 80 Dusky-giving herbs you purchased into Dusky Pigment. |cast Milling##51005
.buy 42 Dusky Pigment##39334
#include go_farm,skill="Herbalism",req="1",goto="ins_50-150_farm_pt1"
|next "ins_50-150_skill_pt1"
step
label "ins_50-150_farm_pt1"
#include "trainer_Herbalism"
.skillmax Herbalism,150
step
map Hillsbrad Foothills
path 31.8,62.6		33.9,54.0		29.7,44.1
path 35.5,37.8		34.5,28.2		39.5,21.0
path 44.2,8.3		51.3,14.0		57.5,20.9
path 56.1,34.3		49.9,46.2		41.2,46.6
path 40.1,55.0		41.3,67.4		31.8,71.9
#include "follow_path_herbs"
.' You need about 80 Dusky giving herbs total
.collect Mageroyal##785 |n
.collect Bruiseweed##2453 |n
.collect Briarthorn##2450 |n
.' You'll need about {_G.max(0 , (80-itemcount(2450,2453,785,3820,2452)))} more herbs.
.' Mill the 80 herbs you gathered into Dusky Pigment
.collect 42 Dusky Pigment##39334
#include "max_skill_warning",skill="Herbalism",goto="ins_50-150_farm_pt1"
step
label "ins_50-150_skill_pt1"
.create Enchanting Vellum##52739,Inscription,75
step
#include "trainer_Inscription"
.learn Minor Inscription Research##61288
step
.create Minor Inscription Research##61288,Inscription,76
step
#include "trainer_Inscription"
.learn Midnight Ink##53462
step
.create 21 Midnight Ink##53462,Inscription,21 total
skill Inscription,80
step
#include "trainer_Inscription"
.learn Glyph of Decoy##57114
step
.create 4 Glyph of Decoy##57114,Inscription,92
step
#include "trainer_Inscription"
.learn Glyph of Holy Wrath##57027
step
.create 3 Glyph of Holy Wrath##57027,Inscription,101
step
#include "trainer_Inscription"
.learn Lions Ink##57704
step
#include "vendor_Inscription"
.buy 13 Common Parchment##39354
step
#include "auctioneer"
.' You need about 170 Golden giving herbs total
.buy Grave Moss##3369 |n
.buy Kingsblood##3356 |n
.buy Liferoot##3357 |n
.buy Wild Steelbloom##3355 |n
.' You'll need about {_G.max(0 , (170-itemcount(3369,3356,3357,3355)))} more herbs.
.' Mill the 170 Golden-giving herbs into Golden Pigment and Burnt Pigment |cast Milling##51005
.buy 54 Golden Pigment##39338
.buy 20 Burnt Pigment##43104
#include go_farm,skill="Herbalism",req="105",goto="ins_50-150_farm_pt2"
|next "ins_50-150_skill_pt2"
step
label "ins_50-150_farm_pt2"
map Northern Stranglethorn
path 64.2,25.4		63.9,39.4		56.2,43.2
path 42.5,43.9		35.9,32.9		31.5,37.2
path 23.1,32.3		17.4,24.1
#include "follow_path_herbs"
.' You need about 170 Golden giving herbs total
.collect Grave Moss##3369 |n
.collect Kingsblood##3356 |n
.collect Liferoot##3357 |n
.collect Wild Steelbloom##3355 |n
.' You'll need about {_G.max(0 , (170-itemcount(3369,3356,3357,3355)))} more herbs.
.' Mill the 170 herbs you gathered into Golden Pigment |cast Milling##51005
.collect 54 Golden Pigment##39338
.collect 20 Burnt Pigment##43104
#include "max_skill_warning",skill="Herbalism",goto="ins_50-150_farm_pt1"
step
label "ins_50-150_skill_pt2"
.create 45 Lions Ink##57704,Inscription,45 total
skill Inscription,105
step
#include "vendor_Inscription"
.buy 25 Light Parchment##39354
step
#include "trainer_Inscription"
.learn Glyph of Illumination##57029
step
.create 2 Glyph of Illumination##57029,Inscription,111
step
#include "trainer_Inscription"
.learn Glyph of Fire Nova##57238
step
.create 3 Glyph of Fire Nova##57238,Inscription,117
step
#include "trainer_Inscription"
.learn Glyph of Mending##56997
step
.create 1 Glyph of Mending##56997,Inscription,120
step
#include "trainer_Inscription"
.learn Glyph of Expose Armor##57121
step
.create 2 Glyph of Expose Armor##57121,Inscription,126
step
#include "trainer_Inscription"
.learn Dawnstar Ink##57706
step
.create Dawnstar Ink##57706,Inscription,135
skill Inscription,135
step
#include "trainer_Inscription"
.learn Glyph of Divinity##57031
step
.create 2 Glyph of Divinity##57031,Inscription,141
step
#include "trainer_Inscription"
.learn Glyph of Imp Swarm##57269
step
.create 2 Glyph of Imp Swarm##57269,Inscription,147
step
#include "trainer_Inscription"
.learn Strange Tarot##59480
step
.create 3 Strange Tarot##59480,Inscription,150 |tip This will give you three skill-up points.
step
title + Inscription 150-200
label "ins_150-200"
#include "trainer_Inscription"
.skillmax Inscription,225 |tip You must be at least level 20.
.learn Jadefire Ink##57707
step
#include "vendor_Inscription"
.buy 16 Light Parchment##39354
step
#include "auctioneer"
.' You need 155 Emerald-giving herbs total or you can buy the pigment off of the Auction House if you do not want to mill.
.buy Dragon's Teeth##3819 |n
.buy Fadeleaf##3818 |n
.buy Goldthorn##3821 |n
.buy Khadgar's Whisker##3358 |n
.' You'll need about {_G.max(0 , (155-itemcount(3819,3818,3821,3358)))} more herbs.
.' Mill the 155 Emerald-giving herbs you purchased into Emerald Pigment |cast Milling##51005
.collect 72 Emerald Pigment##39339
.collect 10 Indigo Pigment##43105
#include go_farm,skill="Herbalism",req="150",goto="ins_150-200_farm"
|next "ins_150-200_skill"
step
label "ins_150-200_farm"
#include "trainer_Herbalism"
.skillmax Herbalism,225
'Your _Herbalism_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 150. It's better to skill up first. |only if skill("Herbalism")<125 and skillmax("Herbalism")<225
step
map Feralas
path 73.0,42.0		72.9,37.3		70.5,37.1
path 69.2,42.3		67.3,45.9		63.9,48.1
path 59.4,46.6		59.8,54.2		56.0,60.1		55.2,66.6
path 58.6,64.7		61.3,61.9		62.8,58.0
path 68.8,50.3		69.0,60.1		71.4,60.0
path 72.1,55.5		75.9,56.6
path 73.3,50.2
#include "follow_path_herbs"
.' You need 155 herbs total
.collect Fadeleaf##3818 |n
.collect Goldthorn##3821 |n
.collect Khadgar's Whisker##3358 |n
.' You'll need about {_G.max(0 , (155-itemcount(3819,3818,3821,3358)))} more herbs.
.' Mill the 150 herbs you gathered, into Emerald Pigment and Indigo Pigment |cast Milling##51005
.collect 72 Emerald Pigment##39339
.collect 10 Indigo Pigment##43105
#include "max_skill_warning",skill="Herbalism",goto="ins_150-200_farm"
step
label "ins_150-200_skill"
.create 36 Jadefire Ink##57707,Inscription,36 total
.skill Inscription,155
step
#include "trainer_Inscription"
.learn Glyph of Evocation##5697
step
.create 2 Glyph of Evocation##56974,Inscription,161
step
#include "trainer_Inscription"
.learn Glyph of Gouge##57125
step
.create 2 Glyph of Gouge##57125,Inscription,167
step
#include "trainer_Inscription"
.learn Glyph of Lava Lash##57249
step
.create 1 Glyph of Lava Lash##57249,Inscription,170
step
#include "trainer_Inscription"
.learn Glyph of Die by the Sword##57161
step
.create 2 Glyph of Die by the Sword##57161,Inscription,176
step
#include "trainer_Inscription"
.learn Royal Ink##57708
step
.create 10 Royal Ink##57708,Inscription,180
step
#include "trainer_Inscription"
.learn Glyph of Blind##92579
step
.create 2 Glyph of Blind##92579,Inscription,186
step
#include "trainer_Inscription"
.learn Glyph of Frost Shock##57241
step
.create 2 Glyph of Frost Shock##57241,Inscription,192
step
#include "trainer_Inscription"
.learn Glyph of Hold the Line##57165
step
.create 2 Glyph of Hold the Line##57165,Inscription,195
step
#include "trainer_Inscription"
.learn Arcane Tarot##59487
step
.create 5 Arcane Tarot##59487,Inscription,200 |tip This will give you three skill-up points.
step
title + Inscription 200-275
label "ins_200-275"
#include "trainer_Inscription"
.skillmax Inscription,300 |tip You must be at least level 35.
.learn Celestial Ink##57709
step
#include "vendor_Inscription"
.buy 36 Light Parchment##39354
step
#include "auctioneer"
.' You need about 215 Violet-giving herbs total
.buy Arthas' Tears##8836 |n
.buy Blindweed##8839 |n
.buy Firebloom##4625 |n
.buy Ghost Mushroom##8845 |n
.buy Gromsblood##8846 |n
.buy Purple Lotus##8831 |n
.buy Sungrass##8838 |n
.' You'll need about {_G.max(0 , (215-itemcount(8836,8839,4625,8845,8846,8831,8838)))} more herbs.
.' Mill the 215 herbs you purchased into Violet Pigment |cast Milling##51005
.buy 114 Violet Pigment##39340
#include go_farm,skill="Herbalism",req="1",goto="ins_200-275_farm_pt1"
|next "ins_200-275_skill_pt1"
step
label "ins_200-275_farm_pt1"
#include "trainer_Herbalism"
.skillmax Herbalism,300
'Your _Herbalism_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 225 and you won't be able to farm anymore. It's better to skill up to 200 first. |only if skill("Herbalism")<200 and skillmax("Herbalism")<300
step
map Eastern Plaguelands
path 73.7,55.4		73.4,61.0		71.1,66.8
path 69.0,72.5		65.1,74.2		59.7,71.1
path 54.6,68.0		48.9,71.6		44.4,71.7
path 39.7,73.9		30.2,75.8		21.6,74.3
path 16.1,70.3		16.5,62.4		23.1,61.5
path 30.9,61.6		40.0,60.9		45.1,48.1
path 46.9,30.5		47.4,19.9		56.2,19.5
path 63.6,37.3		64.1,60.0
#include "follow_path_herbs"
.' You need about 220 Violet-giving herbs total
.collect Sungrass##8838 |n
.collect Arthas' Tears##8836 |n
.' You'll need about {_G.max(0 , (220-itemcount(8836,8839,4625,8845,8846,8831,8838)))} more herbs in stacks of 5.
.' Mill the 220 herbs you gathered into Violet Pigment |cast Milling##51005
.collect 114 Violet Pigment##39340
#include "max_skill_warning",skill="Herbalism",goto="ins_200-275_farm_pt1"
step
label "ins_200-275_skill_pt1"
.create 58 Celestial Ink##57709,Inscription,57 total
.skill Inscription,205
step
#include "trainer_Inscription"
.learn Glyph of Consecration##57023
step
.create 2 Glyph of Consecration##57023,Inscription,211
step
#include "trainer_Inscription"
.learn Glyph of Redirect##57131
step
.create 2 Glyph of Adrenaline Rush##57131,Inscription,217
step
#include "trainer_Inscription"
.learn Glyph of Healing Stream Totem##57242
step
.create 1 Glyph of Healing Stream Totem##57242,Inscription,220
step
#include "trainer_Inscription"
.learn Glyph of The Moonbeast##56959
step
.create 2 Glyph of The Moonbeast##56959,Inscription,226
step
#include "trainer_Inscription"
.learn Glyph of Disengage##57001
step
.create 2 Glyph of Disengage##57001,Inscription,232
step
#include "trainer_Inscription"
.learn Glyph of Avenging Wrath##57024
step
.create 1 Glyph of Avenging Wrath##57024,Inscription,235
step
#include "trainer_Inscription"
.learn Glyph of Shiv##57132
step
.create 2 Glyph of Shiv##57132,Inscription,241
step
#include "trainer_Inscription"
.learn Glyph of Hindering Strikes##57154
step
.create 7 Glyph of Hindering Strikes##57154,Inscription,250
step
#include "trainer_Inscription"
.learn Shimmering Ink##57711
step
#include "auctioneer"
.' You need 140 about Silvery-giving herbs total
.collect Dreamfoil##13463 |n
.collect Golden Sansam##13464 |n
.collect Icecap##13467 |n
.collect Mountain Silversage##13465 |n
.collect Sorrowmoss##13466 |n
.' You'll need about {_G.max(0 , (140-itemcount(13463,13464,13467,13465,13466)))} more herbs.
.' Mill the 140 herbs you purchased into Silvery Pigment |cast Milling##51005
.collect 70 Silvery Pigment##39341
#include go_farm,skill="Herbalism",req="250",goto="ins_200-275_farm_pt2"
step
label "ins_200-275_farm_pt2"
map Swamp of Sorrows
path 18.8,60.4		23.9,55.3		27.3,62.0
path 37.5,53.6		57.5,59.1		77.4,79.5
path 80.9,60.1		88.6,63.4		79.9,42.4
path 75.1,23.5		50.7,31.3		24.6,45.3
path 14.1,33.2		21.5,45.0
#include "follow_path_herbs"
.' You need about 140 Silvery-giving herbs total
.collect Golden Sansam##13464 |n
.collect Sorrowmoss##13466 |n
.' You'll need about {_G.max(0 , (140-itemcount(13463,13464,13467,13465,13466)))} more herbs.
.' Mill the 140 herbs you gathered into Silvery Pigment. |cast Milling##51005
.collect 70 Silvery Pigment##39341
#include "max_skill_warning",skill="Herbalism",goto="ins_200-275_farm_pt1"
step
label "ins_200-275_skill_pt2"
.create 35 Shimmering Ink##57711,Inscription,35 total
skill Inscription,255
step
#include "trainer_Inscription"
.learn Scroll of Spirit V##50608
step
.create 5 Scroll of Spirit V##50608,Inscription,260
step
#include "trainer_Inscription"
.learn Glyph of Freezing Trap##57002
step
.create 2 Glyph of Freezing Trap##57002,Inscription,266
step
#include "trainer_Inscription"
.learn Glyph of Icebound Fortitude##57210
step
.create 2 Glyph of Icebound Fortitude##57210,Inscription,272
step
#include "trainer_Inscription"
.learn Glyph of Fear Ward##57185
step
.create 2 Glyph of Fear Ward##57185,Inscription,275
step
title + Inscription 275-350
label "ins_275-350"
#include "trainer_Inscription"
.skillmax Inscription,375 |tip You must be at least level 50.
step
#include "vendor_Inscription"
.buy 30 Light Parchment##39354
step
#include "auctioneer"
.' You need about 180 Nether-giving herbs total
.buy Ancient Lichen##22790 |n
.buy Dreaming Glory##22786 |n
.buy Felweed##22785 |n
.buy Mana Thistle##22793 |n
.buy Ragveil##22787 |n
.buy Terocone##22789 |n
.buy Nightmare Vine##22792 |n
.buy Netherbloom##22791 |n
.' You'll need about {_G.max(0 , (180-itemcount(22790,22786,22785,22793,22787,22789,22792,22791)))} more herbs in stacks of 5.
.' Mill the 180 herbs you purchased into Nether Pigment |cast Milling##51005
.buy 90 Nether Pigment##39342
#include go_farm,skill="Herbalism",req="275",goto="ins_275-350_farm"
|next "ins_275-350_skill"
step
label "ins_275-350_farm"
#include "trainer_Herbalism"
.skillmax Herbalism,375
'Your _Herbalism_ skill is too low to learn this; You can start farming, but your skill gains will stop at 300 and you won't be able to farm anymore. It's better to skill up to 275 first. |only if skill("Herbalism")<275 and skillmax("Herbalism")<375
step
map Hellfire Peninsula
path 80.6,79.9		73.3,67.0		68.6,76.9
path 56.1,71.6		48.4,75.2		40.7,84.5
path 36.6,67.4		32.9,65.6		28.0,78.7
path 22.9,67.5		13.7,63.0		13.5,38.7
path 23.8,44.6		30.5,33.1		37.8,30.8
path 55.8,31.1		67.1,27.3
#include "follow_path_herbs"
.' You need about 180 Nether-giving herbs total
.collect Felweed##22785 |n
.collect Dreaming Glory##22786 |n
.' You'll need about {_G.max(0 , (180-itemcount(22790,22786,22785,22793,22787,22789,22792,22791)))} more herbs in stacks of 5.
.' Mill the 180 herbs you gathered into Nether Pigment |cast Milling##51005
.collect 90 Nether Pigment##39342
#include "max_skill_warning",skill="Herbalism",goto="ins_275-350_farm"
step
label "ins_275-350_skill"
#include "trainer_Inscription"
.learn Glyph of Death Coil##64266
step
.create 2 Glyph of Death Coil##64266,Inscription,281
step
#include "trainer_Inscription"
.learn Glyph of Icy Touch##57219
step
.create 2 Glyph of Icy Touch##57219,Inscription,287
step
#include "trainer_Inscription"
.learn Glyph of Bloodthirst##57156
step
.create 1 Glyph of Bloodthirst##57156,Inscription,290
step
#include "trainer_Inscription"
.learn Ethereal Ink##57713
step
.create 45 Ethereal Ink##57713,Inscription,45 total
.skill Inscription,305
step
#include "trainer_Inscription"
.learn Glyph of Feint##57122
step
.create 2 Glyph of Feint##57122,Inscription,311
step
#include "trainer_Inscription"
.learn Glyph of Pounce##56952
step
.create 2 Glyph of Pounce##56952,Inscription,317
step
#include "trainer_Inscription"
.learn Glyph of Arcane Power##56991
step
.create 1 Glyph of Arcane Power##56991,Inscription,320
step
#include "trainer_Inscription"
.learn Glyph of Outbreak##59339
step
.create 2 Glyph of Outbreak##59339,Inscription,326
step
#include "trainer_Inscription"
.learn Glyph of Mana Gem##56984
step
.create 2 Glyph of Mana Gem##56984,Inscription,332
step
#include "trainer_Inscription"
.learn Glyph of Fae Silence##94402
step
.create 1 Glyph of Fae Silence##94402,Inscription,335
step
#include "trainer_Inscription"
.learn Glyph of Arcane Explosion##56972
step
.create 1 Glyph of Arcane Explosion##56972,Inscription,341
step
#include "trainer_Inscription"
.learn Glyph of Ambush##57113
step
.create 2 Glyph of Ambush##57113,Inscription,347
step
#include "trainer_Inscription"
.learn Glyph of Raging Wind##57172
step
.create 1 Glyph of Raging Wind##57172,Inscription,350
step
title + Inscription 350-425
label "ins_350-425"
.skillmax Inscription,450 |tip You must be at least level 65.
.learn Ink of Sea##57715
step
goto 49.6,74.9
.talk 30730
.buy 130 Light Parchment##39354
step
#include "auctioneer"
.' You need about 400 Azure-giving herbs total
.buy Adder's Tongue##36903 |n
.buy Deadnettle##37921 |n
.buy Fire Leaf##39970 |n
.buy Goldclover##36901 |n
.buy Talandra's Rose##36907 |n
.buy Tiger Lily##36904 |n
.buy Icethorn##36906 |n
.buy Lichbloom##36905 |n
.' You'll need about {_G.max(0 , (400-itemcount(36903,37921,39970,39969,36901,36907,36904,36906,36905)))} more herbs in stacks of 5.
.' Mill the 400 herbs you purchased into Azure Pigment and Icy Pigment |cast Milling##51005
.buy 206 Azure Pigment##39343
.buy 30 Icy Pigment##43109
#include go_farm,skill="Herbalism",req="1",goto="ins_350-425_farm"
|next "ins_350-425_skill"
step
label "ins_350-425_farm"
#include "trainer_Herbalism"
.skillmax Herbalism,450
'Your _Herbalism_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 375. It's better to skill up first. |only if skill("Herbalism")<350 and skillmax("Herbalism")<450
step
map Borean Tundra
path 51.9,47.7		53.7,43.4	53.2,38.8
path 54.8,29.9		51.3,20.8	49.4,26.2
path 42.9,41.3		36.5,54.9	44.1,64.2
path 52.2,60.7		57.7,52.1
#include "follow_path_herbs"
.' You need about 400 Azure-giving herbs total
.collect Goldclover##36901 |n
.collect Tiger Lily##36904 |n
.' You'll need about {_G.max(0 , (400-itemcount(36903,37921,39970,39969,36901,36907,36904,36906,36905)))} more herbs in stacks of 5.
.' Mill the 400 herbs you gathered into Nether Pigment and Icy Pigment |cast Milling##51005
.collect 206 Azure Pigment##39343 |n
.collect 30 Icy Pigment##43109 |n
skill Herbalism,400
#include "max_skill_warning",skill="Herbalism",goto="ins_350-425_farm"
step
map Sholazar Basin
path 32.0,58.2		36.1,65.3		43.9,57.7
path 44.5,63.9		39.5,66.3		40.4,71.7
path 32.8,82.3		36.1,84.4		42.6,76.0
path 46.8,62.5		51.0,62.0		60.0,73.9
path 55.7,85.9		66.4,82.3		69.3,65.8
path 55.2,57.1		48.9,55.0		55.4,48.1
path 58.1,38.3		34.8,31.4		30.1,43.4
path 32.1,48.5		26.6,55.4		23.7,60.3
#include "follow_path_herbs"
.collect Goldclover##36901 |n
.collect Tiger Lily##36904 |n
.collect Adder's Tongue##36903 |n
.' You'll need about {_G.max(0 , (400-itemcount(36903,37921,39970,39969,36901,36907,36904,36906,36905)))} more herbs in stacks of 5.
.' Mill the 400 herbs you gathered into Nether Pigment and Icy Pigment |cast Milling##51005
.collect 206 Azure Pigment##39343
.collect 30 icy Pigment##43109
#include "max_skill_warning",skill="Herbalism",goto="ins_350-425_farm"
step
label "ins_350-425_skill"
.create 103 Ink of Sea##57715,Inscription,103 total
skill Inscription,355
step
#include "trainer_Inscription"
.learn Scroll of Spirit VII##50610
step
.create 5 Scroll of Spirit VII##50610,Inscription,360
step
#include "trainer_Inscription"
.learn Scroll of Intellect VII##50603
step
.create 5 Scroll of Intellect VII##50603,Inscription,365
step
#include "trainer_Inscription"
.learn Scroll of Strength VII##58490
step
.create 5 Scroll of Stength VII##58490,Inscription,370
step
#include "trainer_Inscription"
.learn Scroll of Agility VII##58482
step
.create 5 Scroll of Agility VII##58482,Inscription,375
step
#include "trainer_Inscription"
.learn Snowfall Ink##57716
step
.create 15 Snowfall Ink##57716,Inscription,15 total
skill inscription,380
step
#include "trainer_Inscription"
.learn Glyph of Retreat##124463
step
.create 2 Glyph of Retreat##124463,Inscription,386
step
#include "trainer_Inscription"
.learn Northrend Inscription Research##61177
step
'Use your Northrend Inscrption Research ability to discover a new major glyph. |tip This ability has a 20 hour cooldown.
.create Northrend Inscrption Research##61177,Inscription,386
step
'Use Inscription skill to create your Newly Discovered glyph until your Inscription skill is 400.
.' Inscription skill raised to level 400 |skill Inscription,400
step
#include "trainer_Inscription"
.learn Scroll of Stamina VIII##50620
step
.create 5 Scroll of Stamina VIII##50620,Inscription,405
step
#include "trainer_Inscription"
.learn Scroll of Spirit VIII##50611
step
.create 5 Scroll of Spirit VIII##50611,Inscription,410
step
#include "trainer_Inscription"
.learn Scroll of Intellect VIII##50604
step
.create 5 Scroll of Intellect VIII##50604,Inscription,415
step
#include "trainer_Inscription"
.learn Scroll of Strength VIII##58491
step
.create 5 Scroll of Strength VIII##58491,Inscription,420
step
#include "trainer_Inscription"
.learn Scroll of Agility VIII##58483
step
.create 5 Scroll of Agility VIII##58483,Inscription,425
step
title + Inscription 425-500
label "ins_425-500"
#include "trainer_Inscription"
.skillmax Inscription,525 |tip You must be at least level 75.
.learn Blackfallow Ink##86004
step
#include "auctioneer"
.' You need about 180 Ashen-giving herbs total
.buy Azshara's Veil##52985 |n
.buy Cinderbloom##52983 |n
.buy Stormvine##52984 |n
.buy Twilight Jasmine##52987 |n
.buy Whiptail##52988 |n
.' You'll need about {_G.max(0 , (180-itemcount(52985,52983,52989,52984,52987,52988)))} more herbs in stacks of 5.
.' Mill the 180 herbs you purchased into Ashen Pigment and Burning Embers  |cast Milling##51005
.buy 6 Volatile Earth##52327
.buy 6 Volatile Air##52328
.buy 6 Volatile Water##52326
.buy 68 Ashen Pigment##61979
.buy 36 Burning Ember##61980 |n |tip Save any Burning Ember you get.
#include go_farm,skill="Herbalism",req="425",goto="ins_425-500_farm"
|next "ins_425-500_skill"
step
label "ins_425-500_farm"
#include "trainer_Herbalism"
.skillmax Herbalism,525
'Your _Herbalism_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 450. It's better to skill up first. |only if skill("Herbalism")<425 and skillmax("Herbalism")<525
step
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Mount Hyjal
path 68.2,23.9		57.0,38.9		57.9,17.5
path 51.5,16.9		52.6,35.5		48.7,36.5
path 44.0,24.5		39.8,32.5		36.5,21.7
path 32.3,25.2		34.6,36.9		43.5,42.6
path 36.2,44.9		25.3,37.8		24.1,31.9
path 11.8,31.6		19.0,58.5		25.6,62.0
path 31.9,46.7		36.9,53.5		42.3,55.9
path 33.8,65.0		31.3,76.5		33.8,98.2
path 57.1,80.9		59.2,84.5		59.8,77.8
path 55.8,74.7		59.8,71.6		49.1,51.6
path 61.9,60.5		67.1,53.5		74.3,58.8
path 71.9,68.5		77.5,59.5		83.0,64.2
path 89.9,49.8		80.9,51.8
#include "follow_path_herbs"
.' You need about 180 Ashen-giving herbs total
.collect Cinderbloom##52983 |n
.collect Stormvine##52984 |n
.' You'll need about {_G.max(0 , (180-itemcount(52985,52983,52989,52984,52987,52988)))} more herbs in stacks of 5.
.' Mill the 180 herbs you purchased into Ashen Pigment and Burning Embers  |cast Milling##51005
.collect 68 Ashen Pigment##61979
.collect 36 Burning Embers##61980 |n |tip Save any Burning Ember you get.
#include "max_skill_warning",skill="Herbalism",goto="ins_425-500_farm"
step
'Skipping 2nd part of farming |next "+farm3" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
goto Twilight Highlands 67.5,47.7
.from Muddied Water Elemental##44011+
.collect 6 Volatile Water##52326
step
goto 57.9,31.2
.from Obsidian Stoneslave##47226+
.collect 6 Volatile Earth##52327
step
goto 34.6,69.2
.from Enslaved Tempest##46328+
.collect 6 Volatile Air##52328
.' You can find more over at [39.5,85.7]
step
#include "vendor_Inscription"
.buy 61 Light Parchment##39354
step
label "ins_425-500_skill"
.create 29 Blackfallow Ink##86004,Inscription,29 total
skill Inscription,450
step
#include "trainer_Inscription"
.learn Mysterious Fortune Card##86609
step
.create 10 Mysterious Fortune Card##86609,Inscription,460
step
#include "trainer_Inscription"
.learn Scroll of Stamina IX##89372
step
.create 5 Scroll of Stamina IX##89372,Inscription,465
step
#include "trainer_Inscription"
.learn Scroll of Strength IX##89369
step
.create 5 Scroll of Strength IX##89369,Inscription,470
step
#include "trainer_Inscription"
.learn Scroll of Agility IX##89370
step
.create 5 Scroll of Agility IX##89370,Inscription,475
step
#include "trainer_Inscription"
.learn Inferno Ink##86005
step
#include "auctioneer"
.' You need about 100 Whiptail or Twilight Jasmine.
.buy Twilight Jasmine##52987 |n
.buy Whiptail##52988 |n
.' You'll need about {_G.max(0 , (100-itemcount(52985,52983,52989,52984,52987,52988)))} more herbs in stacks of 5.
.' Mill the 100 herbs you purchased into Ashen Pigment and Burning Embers  |cast Milling##51005
.buy 40 Burning Ember##61980 |next "cp2"
#include go_farm,skill="Herbalism",req="425",goto="abc"
.' Click here if you wish to farm these yourself. |confirm
step
label "abc"
map Uldum
path loop off
path	61.5,14.0	57.8,14.5	57.0,23.5
path	57.8,27.7	58.4,31.3	53.4,35.9
path	45.9,29.0	49.4,35.7	50.8,42.5
path	52.0,45.6	57.1,44.7	56.8,49.1
path	58.3,55.2	60.5,58.3	59.4,64.5
path	59.3,68.6	59.7,74.7	60.1,78.7
path	60.6,82.9	63.7,79.3`	67.0,76.9
path	69.8,76.5	67.2,71.4
#include "follow_path_herbs"
.' You need about 140 Ashen-giving herbs total
|tip You will have an excessive amount of Ashen Pigment that you can sell on the AH.
.buy Whiptail##52988 |n
.' You'll need about {_G.max(0 , (140-itemcount(52985,52983,52989,52984,52987,52988)))} more herbs in stacks of 5.
.' Mill the 140 herbs you purchased into Ashen Pigment and Burning Embers  |cast Milling##51005
.collect 40 Burning Embers##61980 |next "cp2"
step
label "cp2"
.create 20 Inferno Ink##86005,Inscription,20 total
.' Inscription skill raised to level 485 |skill Inscription,485
step
#include "trainer_Inscription"
.learn Dust of Disappearance##92027
step
.create 3 Dust of Disappearance##92027,Inscription,487
step
#include "trainer_Inscription"
.learn Key to the Planes##86648
step
.create 3 Key to the Planes##86648,Inscription,502
step
#include "trainer_Inscription"
.learn Forged Documents##86654
step
.create 1 Forged Documents##86654,Inscription,503
step
#include "trainer_Inscription"
.learn Runescroll of Fortitude II##85785
step
.create 2 Runescroll of Fortitude II##85785,Inscription,505
step
label "route2"
'Redirecting to Inscription 500-525 |next "ins_500-525" |only if skill("Inscription")>=500 and skill("Inscription")<525 and not ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Inscription finale |next "ins_525" |only if skill("Inscription")>=525 and skill("Inscription")<600 and not ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Inscription 500-600 |next "ins_500-600" |only if skill("Inscription")>=500 and skill("Inscription")<600 and ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Inscription finale |next "ins_600" |only if default
step
label "ins_500-525"
#include "auctioneer"
.' You need about 264 Ashen-giving herbs total
.buy Azshara's Veil##52985 |n
.buy Cinderbloom##52983 |n
.buy Deathspore Pod##52989 |n
.buy Stormvine##52984 |n
.buy Twilight Jasmine##52987 |n
.buy Whiptail##52988 |n
.' You'll need about {_G.max(0 , (264-itemcount(52985,52983,52989,52984,52987,52988)))} more herbs in stacks of 5.
.' Mill the 264 herbs you purchased into Ashen Pigment and Burning Embers  |cast Milling##51005
.buy 12 Volatile Water##52326
.buy 24 Volatile Fire##52325
.buy 132 Volatile Life##52329
.buy 88 Burning Ember##61980
#include go_farm,skill="Herbalism",req="425",goto="ins_500-525_farm"
|next "ins_500-525_skill"
step
label "ins_500-525_farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
label "farming"
map Mount Hyjal
path 68.2,23.9		57.0,38.9		57.9,17.5
path 51.5,16.9		52.6,35.5		48.7,36.5
path 44.0,24.5		39.8,32.5		36.5,21.7
path 32.3,25.2		34.6,36.9		43.5,42.6
path 36.2,44.9		25.3,37.8		24.1,31.9
path 11.8,31.6		19.0,58.5		25.6,62.0
path 31.9,46.7		36.9,53.5		42.3,55.9
path 33.8,65.0		31.3,76.5		33.8,98.2
path 57.1,80.9		59.2,84.5		59.8,77.8
path 55.8,74.7		59.8,71.6		49.1,51.6
path 61.9,60.5		67.1,53.5		74.3,58.8
path 71.9,68.5		77.5,59.5		83.0,64.2
path 89.9,49.8		80.9,51.8
#include "follow_path_herbs"
.' You need about 155 Ashen-giving herbs total
.collect Cinderbloom##52983 |n
.collect Stormvine##52984 |n
.' You'll need about {_G.max(0 , (155-itemcount(52985,52983,52989,52984,52987,52988)))} more herbs in stacks of 5.
.' Mill the 155 herbs you purchased into Ashen Pigment and Burning Embers  |cast Milling##51005
.collect 58 Ashen Pigment##61979
.collect 40 Burning Embers##61980
.collect 132 Volatile Life##52329
step
label "farm2"
goto Twilight Highlands 67.5,47.7
.from Muddied Water Elemental##44011+
.collect 12 Volatile Water##52326
step
goto Mount Hyjal 20.0,58.6
.from Flame Terror##52219+, Brimstone Destroyer##52794+, Charred Invader##52816+
.collect 24 Volatile Fire##52325
step
label "ins_500-525_skill"
goto Twilight Highlands,76,49
.talk 50248 |tip You can only see this NPC if you have completed the beginning quest chain for the Twilight Highlands.
.buy 2 Deathwing Scale Fragment##62323
.buy 1 Preserved Ogre Eye##67319
step
#include "vendor_Inscription"
.buy 141 Light Parchment##39354
.buy 3 Plain Wooden Staff##79740
step
#include "trainer_Inscription"
.learn Runed Staff##86649
step
.create 2 Runed Staff##86649,Inscription,511
step
#include "trainer_Inscription"
.learn Dungeoneering Guide##86641
step
.create 1 Dungeoneering Guide##86641,Inscription,514
step
#include "trainer_Inscription"
.learn Battle Tome##86643
step
.create 2 Battle Tome##86643,Inscription,520
step
#include "trainer_Inscription"
.learn Rosethorn Staff##86652
step
.create 1 Rosethorn Staff##86652,Inscription,525
step
label "ins_525"
'Congratulations, you are now a level 525 Scribe!
'In order to complete this professions to level 600, please purchase the Mists of Pandaria upgrade of this guide.
|confirm
|next "end"
step
label "ins_500-600"
.'Please purchase the upgrade Profession guide to see the content for MOP |only if not ZGV.guidesets['ProfessionsHMoP']
|next Profession Guides\\Inscription\\Inscription 500-600 Leveling Guide |only if ZGV.guidesets['ProfessionsHMoP']
step
label "ins_600"
'Congratulations, you are now a Zen Master Scribe!
step
label "end"
'You have reached the end of the guide
|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Jewelcrafting 1-600 Leveling Guide",[[
description This guide will walk you through leveling your Jewelcrafting skill from 1-600.
author support@zygorguides.com
completion skill,Jewelcrafting,600
condition suggested hasprof('Jewelcrafting',1,600)
#include profession_dual_start,prof1="Jewelcrafting",prof2="Mining"
step
label "route"
'Redirecting to Jewelcrafting 1-50 |next "jc_1-50" |only if skill("Jewelcrafting")<50
'Redirecting to Jewelcrafting 50-150 |next "jc_50-150" |only if skill("Jewelcrafting")>=50 and skill("Jewelcrafting")<150
'Redirecting to Jewelcrafting 150-200 |next "jc_150-225" |only if skill("Jewelcrafting")>=150 and skill("Jewelcrafting")<225
'Redirecting to Jewelcrafting 200-275 |next "jc_225-300" |only if skill("Jewelcrafting")>=200 and skill("Jewelcrafting")<300
'Redirecting to Jewelcrafting 275-350 |next "jc_300-350" |only if skill("Jewelcrafting")>=275 and skill("Jewelcrafting")<350
'Redirecting to Jewelcrafting 350-425 |next "jc_350-425" |only if skill("Jewelcrafting")>=350 and skill("Jewelcrafting")<425
'Redirecting to Jewelcrafting 425-500 |next "jc_425-500" |only if skill("Jewelcrafting")>=425 and skill("Jewelcrafting")<500
'Redirecting to Jewelcrafting 500-600 |next "route2" |only if skill("Jewelcrafting")>=500 and skill("Jewelcrafting")<600
step
title + Jewelcrafting 1-50
label "jc_1-50"
#include "trainer_Jewelcrafting"
.skillmax Jewelcrafting,75
step
#include "vendor_Jewelcrafting"
.buy Jeweler's Kit##20815
step
#include "home_ValleyofStrength"
step
#include "auctioneer"
.buy 170 Copper Bar##2840
.buy Tigerseye##818 |n
.buy Malachite##774 |n
.' You'll need about {_G.max(0 , (20-itemcount(818,774))*1)} more of the gems above. |condition itemcount(818,774)>=20
#include go_farm,skill="Mining",req="1",goto="jc_1-50_farm"
next "jc_1-50_skill"
step
label "jc_1-50_farm"
#include vendor_Mining
.buy 1 Mining Pick##2901
step
map Durotar
path follow loose;loop
path	38.9,16.0	37.5,21.1	35.9,34.4
path	36.8,52.3	44.2,49.5	50.6,46.3
path	50.7,63.3	54.9,67.0	56.2,49.8
path	55.0,36.9	53.0,29.7	57.9,30.0
path	54.8,19.0	50.0,17.2	44.2,23.6
#include "follow_path_mine"
.collect Tigerseye##818 |tip You can use the prospect ability later on the Copper Ore in your bags to get this item. |cast Prospecting##31252 |n
.collect Malachite##774 |tip You can use the prospect ability later on the Copper Ore in your bags to get this item. |cast Prospecting##31252 |n
.' You'll need about {_G.max(0 , (20-itemcount(818,774)))} more of the gems above. |condition itemcount(818,774)>=20
.collect 270 Copper Ore##2770
.collect Shadowgem##1210 |n |tip Save these for later use.
step
#include "maincity_anvil"
.create Copper Bar##2657,Mining,170 total
.collect 170 Copper Bar##2840
step
label "jc_1-50_skill"
.create 60 Delicate Copper Wire##25255,Jewelcrafting,60 total |tip Save all Delicate Copper Wires, you will need them later.
.collect 60 Delicate Copper Wire##20816
step
#include "trainer_Jewelcrafting"
'Learn Prospecting |condition knowspell(31252)
step
'Prospect the remaining Copper Ore to collect Tigerseyes and Malachite |cast Prospecting##31252
.collect Tigerseyes##818 |n
.collect Malachite##774 |n
.' You'll need about {_G.max(0 , (20-itemcount(818,774))*1)} more of the gems above. |condition itemcount(818,774)>=20
step
#include "trainer_Jewelcrafting"
.learn Malachite Pendant##32178
.learn Tigerseye Band##32179
step
.create Malachite Pendant##32178,Jewelcrafting,50
|tip If you didn't get enough Malachite but more Tigerseyes from Prospecting, make Tigerseye Band instead.
.create Tigerseye Band##32179,Jewelcrafting,50
step
title + Jewelcrafting 50-150
label "jc_50-150"
#include "trainer_Jewelcrafting"
.skillmax Jewelcrafting,150
.learn Bronze Setting##25278
step
#include "auctioneer"
.buy 100 Bronze Bar##2841
.buy 40 Silver Bar##2842
.buy 20 Shadowgem##1210
.buy 80 Heavy Stone##2838
.buy 30 Moss Agate##1206
#include go_farm,skill="Mining",req="65",goto="jc_50-150_farm"
|next "jc_50-150_skill"
step
label "jc_50-150_farm"
#include "trainer_Mining"
.skillmax Mining,150
.learn Smelt Bronze##2659
.learn Smelt Tin##3304
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 75. It's better to skill up first. |only if skill("Mining")<50 and skillmax("Mining")<150
step
'Skipping 1st part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Northern Stranglethorn
path	44.9,19.0	37.5,14.8	34.4,17.3
path	17.1,22.6	23.7,32.3	30.6,36.3
path	34.7,30.0	38.7,34.4	39.6,43.2
path	47.0,41.5	44.1,49.7	46.3,52.9
path	54.2,55.8	60.5,51.8	67.2,49.1
path	67.3,36.9	66.4,25.8	59.9,18.9
path	51.0,17.4
#include "follow_path_mine"
.collect 20 Shadowgem##1210 |tip You can use the prospect ability on the Tin Ore in your bags to get this item. |cast Prospecting##31252
.collect 30 Moss Agate##1206 |tip You can use the prospect ability on the Tin Ore in your bags to get this item. |cast Prospecting##31252
.collect 40 Silver Ore##2775
.collect 60 Tin Ore##2771 |tip After you've collected all the gems, collect the ore you need.
.collect Citrine##3864 |n |tip These will be used later.
.collect Aquamarine##7909 |n |tip These will be used later.
#include "max_skill_warning",skill="Mining",goto="jc_50-150_farm"
step
'Skipping 2nd part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Feralas
path	74.9,48.6	84.0,45.6
path	84.9,39.9	71.5,34.7
path	54.3,50.1	48.6,44.0	49.7,34.9
path	51.6,33.8	50.9,26.2	51.3,19.0
path	54.9,8.1	49.4,4.0	40.0,7.7
path	37.1,12.1	38.1,17.6	37.0,25.6
path	45.1,26.2	46.3,38.6	50.3,52.7
path	47.9,55.4	46.9,64.1	54.8,53.9
path	55.2,62.6	52.9,66.2	53.6,73.7
path	60.8,75.8	62.0,55.0	63.7,61.0
path	66.4,51.3	68.2,51.3
path	68.1,61.5	71.6,65.1	77.2,62.1
#include "follow_path_mine"
.collect 80 Heavy Stone##2838 |tip Keep the Iron Ore you get for prospecting later.
.collect Citrine##3864 |n |tip These will be used later.
.collect Aquamarine##7909 |n |tip These will be used later.
.collect Star Ruby##7910 |n |tip These will be used later.
#include "max_skill_warning",skill="Mining",goto="jc_50-150_farm"
step
label "exit"
#include "trainer_Mining"
.learn Smelt Silver##2658
step
#include "maincity_anvil"
.create Silver Bar##2658,Mining,40 total
step
#include "maincity_anvil"
.create Tin Bar##3304,Mining,70 total
step
#include "maincity_anvil"
.create Bronze Bar##2659,Mining,100 total
.collect 120 Bronze Bar##2841
step
label "jc_50-150_skill"
.create 50 Bronze Setting##25278,Jewelcrafting,50 total |tip Save 30 of these for later.
.skill Jewelcrafting,80
step
#include "trainer_Jewelcrafting"
.learn Ring of Silver Might##25317
step
.create Ring of Silver Might##25317,Jewelcrafting,100
step
#include "trainer_Jewelcrafting"
.learn Ring of Twilight Shadows##25318
step
.create 10 Ring of Twilight Shadows##25318,Jewelcrafting,110
step
#include "trainer_Jewelcrafting"
.learn Heavy Stone Statue##32807
step
.create 10 Heavy Stone Statue##32807,Jewelcrafting,120
step
#include "trainer_Jewelcrafting"
.learn Pendant of the Agate Shield##25610
step
.create Pendant of the Agate Shield##25610,Jewelcrafting,150
step
'Prospect any Iron Ore you may have in your bags. |cast Prospecting##31252
|confirm
step
title +Jewelcrafting 150-225
label "jc_150-225"
#include "trainer_Jewelcrafting"
.skillmax Jewelcrafting,225
.learn Mithril Filigree##25615
step
#include "auctioneer"
.buy 15 Truesilver Bar##6037
.buy 130 Mithril Bar##3860
.buy 25 Citrine##3864
.buy 5 Aquamarine##7909
#include go_farm,skill="Mining",req="175",goto="jc_150-225_farm"
|next "jc_150-225_skill"
step
label "jc_150-225_farm"
#include "trainer_Mining"
.skillmax Mining,225
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 150. It's better to skill up first. |only if skill("Mining")<125 and skillmax("Mining")<225
step
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Felwood
path	49.6,76.6	43.5,60.9	42.9,50.8
path	52.9,31.6	59.6,27.2	55.7,18.6
path	63.5,24.5	62.6,6.9	42.5,17.1
path	42.0,24.1	39.9,22.1	41.0,27.5
path	38.6,37.4	38.3,55.6	40.7,59.8
path	35.0,59.1	41.8,62.6	36.3,66.8
path	40.7,72.9	37.8,73.5	40.3,77.4
path	39.1,79.3	43.8,81.5	39.0,81.6
path	42.3,87.1	45.1,84.6	45.1,89.7
path	48.1,92.8	51.2,86.1	52.5,88.8
path	57.7,86.5	58.6,84.8	55.9,81.1
#include "follow_path_mine"
.collect 300 Mithril Ore##3858
.collect 15 Truesilver Ore##7911
.collect 25 Citrine##3864 |n |tip These can be prospected from Mithril Ore later. |cast Prospecting##31252
.collect 5 Aquamarine##7909 |n |tip These can be prospected from Mithril Ore later. |cast Prospecting##31252
.collect Star Ruby##7910 |n |tip These can be used later. |cast Prospecting##31252
#include "max_skill_warning",skill="Mining",goto="jc_150-225_farm"
step
label "exit"
#include "trainer_Mining"
.learn Smelt Mithril##10097
.skillmax Mining,300
step
#include "maincity_anvil"
.create Mithril Bar##10097,Mining,130 total
.collect 130 Mithril Bar##3860
step
#include "trainer_Mining"
.learn Smelt Truesilver##10098
step
#include "maincity_anvil"
.create Truesilver Bar##10098,Mining,15 total
.collect 15 Truesilver Bar##6037
step
label "jc_150-225_skill"
.create Mithril Filigree##25615,Jewelcrafting,45 total |tip Save these for later
.skill Jewelcrafting,185
step
#include "trainer_Jewelcrafting"
.learn Engraved Truesilver Ring##25620
step
.create Engraved Truesilver Ring##25620,Jewelcrafting,200
step
'Prospect any Mithril Ore you have left over |cast Prospecting##31252
.collect 25 Citrine##3864
.collect 5 Aquamarine##7909
step
#include "trainer_Jewelcrafting"
.learn Citrine Ring of Rapid Healing##25621
step
.create 20 Citrine Ring of Rapid Heaing##25621,Jewelcrafting,220
step
#include "trainer_Jewelcrafting"
.learn Aquamarine Pendant of the Warrior##26876
step
.create 5 Aquamarine Pendant of the Warrior##26876,Jewelcrafting,225
step
title +Jewelcrafting 225-300
label "jc_225-300"
#include "trainer_Jewelcrafting"
.skillmax Jewelcrafting,300
step
#include "auctioneer"
.buy 10 Star Ruby##7910
.buy 20 Huge Emerald##12364
.buy 20 Large Opal##12799
.buy 20 Azerothian Diamond##12800
.buy 50 Thorium Bar##12359
#include go_farm,skill="Mining",req="230",goto="jc_225-300_farm"
next "jc_225-300_skill"
step
label "jc_225-300_farm"
#include "trainer_Mining"
.skillmax Mining,300
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 225. It's better to skill up first. |only if skill("Mining")<200 and skillmax("Mining")<300
step
label "farm2"
'Skipping 2nd part of farming |next "+farm3" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Silithus
path	54.8,26.8	52.3,22.8	50.5,15.3
path	55.8,12.5	61.8,12.5	68.3,15.6
path	69.7,19.7	68.4,26.3	72.3,27.9
path	72.5,39.5	70.0,43.5	66.7,44.7
path	64.6,45.0	67.1,55.0	67.0,59.8
path	67.3,63.0	69.5,69.6	68.1,74.1
path	66.3,81.9	65.7,83.4	56.8,76.1
path	56.6,81.2	50.6,80.3	44.6,80.2
path	40.4,80.9	26.1,80.1	25.3,74.2
path	26.7,69.5	33.0,66.3	30.8,62.6
path	26.6,53.5	28.4,47.9	27.8,40.6
path	27.6,33.9	25.2,27.1	28.5,16.2
path	29.5,11.3	35.0,12.0	40.6,13.1
path	45.1,16.3	47.3,19.3	47.3,26.6
#include "follow_path_mine"
.collect Star Ruby##7910 |n
.collect Huge Emerald##12364 |n
.collect Large Opal##12799 |n
.collect Azerothian Diamond##12800 |n
.collect 50 Thorium Ore##10620
#include "max_skill_warning",skill="Mining",goto="jc_225-300_farm"
step
goto Silithus 54.9,36.6
.create Thorium Bar##16153,Mining,50 total
.collect 50 Thorium Bar##12359
step
.create Thorium Setting##26880,Jewelcrafting,50 total |tip Save these for later use
.collect 50 Thorium Setting##21752
step
label "farming"
map Silithus
path	54.8,26.8	52.3,22.8	50.5,15.3
path	55.8,12.5	61.8,12.5	68.3,15.6
path	69.7,19.7	68.4,26.3	72.3,27.9
path	72.5,39.5	70.0,43.5	66.7,44.7
path	64.6,45.0	67.1,55.0	67.0,59.8
path	67.3,63.0	69.5,69.6	68.1,74.1
path	66.3,81.9	65.7,83.4	56.8,76.1
path	56.6,81.2	50.6,80.3	44.6,80.2
path	40.4,80.9	26.1,80.1	25.3,74.2
path	26.7,69.5	33.0,66.3	30.8,62.6
path	26.6,53.5	28.4,47.9	27.8,40.6
path	27.6,33.9	25.2,27.1	28.5,16.2
path	29.5,11.3	35.0,12.0	40.6,13.1
path	45.1,16.3	47.3,19.3	47.3,26.6
#include "follow_path_mine"
.collect Thorium Ore##10620 |n |tip You can use the prospect ability on the Thorium ore in your bags to get these gems. |cast Prospecting##31252
.collect 10 Star Ruby##7910
.collect 20 Huge Emerald##12364
.collect 20 Large Opal##12799
.collect 20 Azerothian Diamond##12800
#include "max_skill_warning",skill="Mining",goto="jc_225-300_farm"
step
label "farm3"
'Skipping 3rd part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "jc_225-300_skill"
#include "trainer_Jewelcrafting"
.learn Thorium Setting##26880
step
.create Thorium Setting##26880,Jewelcrafting,50 total |tip Save these for later use |n
.skill Jewelcrafting,250
step
#include "trainer_Jewelcrafting"
.learn Ruby Pendant of Fire##26883
step
.create Ruby Pendant of Fire##26883,Jewelcrafting,260
step
#include "trainer_Jewelcrafting"
.learn Simple Opal Ring##26902
step
.create Simple Opal Ring##26902,Jewelcrafting,280
step
#include "trainer_Jewelcrafting"
.learn Glowing Thorium Band##34960
step
.create Glowing Thorium Band##34960,Jewelcrafting,290
step
#include "trainer_Jewelcrafting"
.learn Emerald Lion Ring##34961
step
.create Emerald Lion Ring##34961,Jewelcrafting,300
step
title +Jewelcrafting 300-350
label "jc_300-350"
#include "trainer_Jewelcrafting"
.skillmax Jewelcrafting,375
step
#include "auctioneer"
.buy Blood Garnet##23077 |n
.buy Flame Spessparite##21929 |n
.buy Deep Peridot##23079 |n
.' You'll need about {_G.max(0 , (20-itemcount(23077,23079,21929))*1)} more of the gems above. |condition itemcount(23077,23079,21929)>=20
.buy Shadow Draenite##23107 |n
.buy Azure Moonstone##23117 |n
.' You'll need about {_G.max(0 , (5-itemcount(23107,23117))*1)} more Shadow Draenite and Azure Moonstones. |condition itemcount(23107,23117)>=5
.buy 10 Adamantite Bar##23446
.buy 10 Primal Earth##22452
.buy 200 Adamantite Ore##23425
#include go_farm,skill="Mining",req="275",goto="jc_300-350_farm"
|next "jc_300-350_skill"
step
label "jc_300-350_farm"
#include "trainer_Mining"
.skillmax Mining,375
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 300. It's better to skill up first. |only if skill("Mining")<275 and skillmax("Mining")<375
step
label "farm2"
'Skipping 2nd part of farming |next "+farm3" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Hellfire Peninsula
path    69.3,47.5	74.5,38.7	68.2,37.7
path	62.0,31.0	58.0,32.8	54.0,26.7
path	46.0,29.3	34.1,29.1	32.0,34.5
path	38.5,38.2	35.7,40.7	33.4,49.8
path	30.3,48.6	32.5,43.3	28.5,39.3
path	26.5,45.5	22.6,45.1	18.0,38.3
path	12.5,36.1	17.9,46.3	11.8,41.9
path	12.0,47.0	06.2,49.5	15.4,62.4
path	20.3,52.9	24.0,61.1	21.2,62.7
path	28.1,80.8	27.7,69.5	30.5,72.8
path	30.3,59.9	34.8,66.6	37.7,53.3
path	46.9,46.3	49.3,49.5	60.3,48.6
path	60.8,52.8	52.1,52.7	47.2,57.7
path	45.9,75.5	33.5,89.6	33.1,92.6
path	49.1,77.5	44.6,86.2	55.5,82.8
path	58.7,78.8	56.5,72.3	65.8,63.6
path	67.1,71.7	63.0,73.3	65.8,77.9
path	68.7,77.6	71.0,71.7	70.1,68.6
path	65.0,59.8	65.6,56.0	75.0,63.9
path	78.4,80.2	80.7,77.5	77.3,63.7
path	72.7,60.2	71.5,53.1	68.3,52.0
#include "follow_path_mine"
.collect Fel Iron Ore##23424 |tip You must use the prospect ability on the Fel Iron Ore in your bags to get these items: |n
.collect Blood Garnet##23077 |n |cast Prospecting##31252
.collect Flame Spessparite##21929 |n |cast Prospecting##31252
.collect Deep Peridot##23079 |n |cast Prospecting##31252
.' You'll need about {_G.max(0 , (20-itemcount(23077,23079,21929))*1)} more of the gems above. |condition itemcount(23077,23079,21929)>=20
.collect Shadow Draenite##23107 |n |cast Prospecting##31252
.' You'll need about {_G.max(0 , (5-itemcount(23107))*1)} more Shadow Draenite. |condition itemcount(23107)>=5 |tip Save EVERY extra gem you receive for later use
.collect Mote of Earth##22573 |n
.' Click Motes of Earth in your bag to turn them into Primal Earth |use Mote of Earth##22573
.collect 10 Primal Earth##22452 |n
#include "max_skill_warning",skill="Mining",goto="jc_300-350_farm"
step
label "farm3"
'Skipping 3rd part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Nagrand
path 45.7,68.9	43.1,58.9	45.0,54.7
path 49.6,57.5	56.0,54.8	56.3,59.4
path 49.7,66.2	41.9,77.0	35.7,79.3
path 31.1,75.3	27.3,63.0	33.4,57.5
path 33.7,49.4	24.0,47.4	19.7,46.7
path 11.4,43.0	11.3,36.6	19.9,32.1
path 25.0,32.8	28.2,31.8	26.5,20.5
path 30.0,18.1	36.3,23.0	40.5,35.4
path 43.1,22.8	50.8,23.5	57.0,29.0
path 65.0,37.6	70.3,42.6	68.8,51.1
path 72.3,58.1	73.8,67.9	69.8,78.1
path 57.9,75.5	49.0,79.0
#include "follow_path_mine"
|tip Go into any caves you find as there is lots of ore.
.collect 220 Adamantite Ore##23425
.collect Mote of Earth##22573 |n
.' Click Motes of Earth in your bag to turn them into Primal Earth |use Mote of Earth##22573
.collect 10 Primal Earth##22452
#include "max_skill_warning",skill="Mining",goto="jc_300-350_farm"
step
#include "trainer_Mining"
.learn Smelt Adamantite##29358
step
#include "maincity_anvil"
.create Adamantite Bar##29358,Mining,10 total
.collect 10 Adamantite Bar##23446
step
label "jc_300-350_skill"
'Prospect all of your Adamantite Ore |cast Prospecting##31252
.collect 40 Adamantite Powder##24243 |tip Save EVERY extra gem you receive for later use
step
#include "trainer_Jewelcrafting"
.learn Delicate Blood Garnet##34590
.learn Inscribed Flame Spessarite##28910
.learn Jagged Deep Peridot##28917
step
'Make as many as it takes of these gems to get to 320 Jewelcrafting
.create Delicate Blood Garnet##34590,Jewelcrafting,320
.create Inscribed Flame Spessarite##28910,Jewelcrafting,320
.create Jagged Deep Peridot##28917,Jewelcrafting,320
step
#include "trainer_Jewelcrafting"
.learn Glinting Shadow Draenite##28914
step
'Make as many as it takes of these gems to get to 320 Jewelcrafting
.create Glinting Shadow Draenite##28914,Jewelcrafting,325
step
#include "trainer_Jewelcrafting"
.learn Mercurial Adamantite##38068
step
#include "maincity_anvil"
.' Stand at this forge
.create 10 Mercurial Adamantite##38068,Jewelcrafting,10 total |tip Save these, you will need them later
.collect 10 Mercurial Adamantite##31079
step
#include "trainer_Jewelcrafting"
.learn Sovereign Shadow Draenite##28936
.learn Rigid Azure Moonstone##28948
step
'Make as many as it takes of these two gems to get to 340 Jewelcrafting
.create Sovereign Shadow Draenite##28936,Jewelcrafting,340
.create Rigid Azure Moonstone##28948,Jewelcrafting,340
step
#include "trainer_Jewelcrafting"
.learn Heavy Adamantite Ring##31052
step
.create 10 Heavy Adamantite Ring##31052,Jewelcrafting,350
step
title +Jewelcrafting 350-425
label "jc_350-425"
#include "trainer_Jewelcrafting"
.skillmax Jewelcrafting,450
.learn Bloodstone Band##56193
.learn Deft Huge Citrine##53880
.learn Energized Dark Jade##53925
.learn Glinting Shadow Crystal##53861
.learn Solid Chalcedony##53934
.learn Quick Sun Crystal##53856
step
#include "auctioneer"
.buy Chalcedony##36923 |n
.buy Sun Crystal##36920 |n
.buy Shadow Crystal##36926 |n
.buy Huge Citrine##36929 |n
.buy Dark Jade##36932 |n
.' You'll need about {_G.max(0 , (60-itemcount(36923,36920,36926,36929,36932))*1)} more of the gems above. |condition itemcount(36923,36920,36926,36929,36932)>=60
.buy 5 Dream Shard##34052 |tip These cannot be gathered with Mining or Jewelcrafting so you must buy these.
.buy 5 Bloodstone##36917
.buy 5 Titanium Bar##41163
.buy 5 Forest Emerald##36933
.buy 10 Crystallized Earth##37701
.buy 46 Eternal Earth##35624
#include go_farm,skill="Mining",req="350",goto="jc_350-425_farm"
|next "jc_350-425_skill"
step
label "jc_350-425_farm"
#include "trainer_Mining"
.skillmax Mining,450
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 375. It's better to skill up first. |only if skill("Mining")<350 and skillmax("Mining")<450
step
label "farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Howling Fjord
path 83.0,44.8	78.1,39.4	72.7,38.3
path 71.0,31.8	75.3,22.9	70.2,8.3
path 63.2,13.7
path 61.4,23.6	57.7,18.3	51.4,14.2
path 45.5,13.3	38.1,18.9	31.1,10.9
path 28.9,10.3	21.7,12.8	19.4,23.5
path 24.2,27.4	27.6,22.6	27.3,30.8
path 38.1,29.0	47.6,32.7	53.0,31.9
path 63.5,37.1	65.5,48.7	66.9,62.7
path 64.4,67.8	64.4,72.4	67.9,76.5
path 71.3,73.6	72.5,67.9	77.3,67.2
path 77.2,60.8	74.9,55.3	79.1,50.4
#include "follow_path_mine"
.collect Cobalt Ore##36909 |n |tip You must use the prospect ability on the Cobalt Ore in your bags to get these items:
.collect Chalcedony##36923 |n |cast Prospecting##31252
.collect Sun Crystal##36920 |n |cast Prospecting##31252
.collect Shadow Crystal##36926 |n |cast Prospecting##31252
.collect Huge Citrine##36929 |n |cast Prospecting##31252
.collect Dark Jade##36932 |n |cast Prospecting##31252
.' You'll need about {_G.max(0 , (60-itemcount(36923,36920,36926,36929,36932))*1)} more of the gems above. |condition itemcount(36923,36920,36926,36929,36932)>=60
.collect 5 Bloodstone##36917 |cast Prospecting##31252 |tip All extra Bloodstones should be kept for later use.
.collect 5 Forest Emerald |n |cast Prospecting##31252
.collect 10 Crystallized Earth##37701
.collect Crystallized Earth##37701 |n
.' Click Crystallized Earth in your bag to turn 10 into Eternal Earth |use Crystallized Earth##37701 |n
.collect 46 Eternal Earth##35624 |n
#include "max_skill_warning",skill="Mining",goto="jc_350-425_farm"
step
label "farm2"
'Skipping 2nd part of farming |next "+farm3" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Icecrown
path 81.2,67.2	77.7,64.7	77.6,56.3
path 77.2,49.9	76.6,45.5	73.8,38.0
path 69.7,37.8	64.0,33.1	62.0,37.3
path 58.9,43.6	57.1,44.8	56.5,33.3
path 55.5,23.3	53.6,27.8	50.6,45.6
path 48.6,36.4	48.8,30.5	44.9,26.8
path 41.3,36.9	37.8,40.1	38.5,27.2
path 31.0,31.8	30.3,41.2	33.8,47.2
path 39.9,48.3	38.8,54.9	28.9,64.3
path 36.7,65.4	40.9,64.4	47.1,70.5
path 49.5,82.0	50.8,85.7	56.3,83.3
path 54.8,79.5	60.1,74.0	65.7,64.8
path 67.1,71.3	70.7,69.0	72.1,63.3
path 75.9,66.2	78.2,70.5
#include "follow_path_mine"
'You wont be able to farm Titanium Ore until you're 450 Mining skill. Farm Saronite Ore here until you can. |only if skill("Mining")<450
.collect 10 Titanium Ore##36910
.collect 10 Crystallized Earth##37701
.collect Crystallized Earth##37701 |n
.' Click Crystallized Earth in your bag to turn 10 into Eternal Earth |use Crystallized Earth##37701 |n
.collect 46 Eternal Earth##35624
#include "max_skill_warning",skill="Mining",goto="jc_350-425_farm"
step
#include "trainer_Mining"
.learn Smelt Titanium##55211
step
#include "maincity_anvil"
.create Titanium Bar##55211,Mining,5 total
.collect 5 Titanium Bar##41163
step
label	"jc_350-425_skill"
'Make as many as it takes of these gems to get to 395 Jewelcrafting
.create Deft Huge Citrine##53880,Jewelcrafting,395
.create Energized Dark Jade##53925,Jewelcrafting,395
.create Glinting Shadow Crystal##53861,Jewelcrafting,395
.create Solid Chalcedony##53934,Jewelcrafting,395
.create Quick Sun Crystal##53856,Jewelcrafting,395
step
.create 5 Bloodstone Band##56193,Jewelcrafting,400
step
.' Prospect any Saronite Ore you have to get _Forest Emeralds_.
.collect 5 Forest Emerald##36933 |cast Prospecting##31252 |use Saronite Ore##36912
step
#include "trainer_Jewelcrafting"
.learn Stoneguard Band##58145
step
.create Stoneguard Band##58145,Jewelcrafting,420
step
#include "trainer_Jewelcrafting"
.learn Dream Signet##56197
step
.create Dream Signet##56197,Jewelcrafting,425
step
label "jc_425-500"
title +Jewelcrafting 425-500
#include "trainer_Jewelcrafting"
.skillmax Jewelcrafting,525
.learn Brilliant Carnelian##73225
.learn Quick Alicite##73234
.learn Puissant Jasper##73279
.learn Rigid Zephyrite##73230
step
#include "vendor_Jewelcrafting"
.buy 50 Jeweler's Setting##52188
step
#include "auctioneer"
.buy Jasper##52182 |n
.buy Zephyrite##52178 |n
.buy Alicite##52179 |n
.buy Carnelian##52177 |n
.' You'll need about {_G.max(0 , (25-itemcount(52182,52178,52179,52177))*1)} more of the gems above. |condition itemcount(52182,52178,52179,52177)>=25
.buy 30 Nightstone##52180
.buy 70 Hessonite##52181
#include go_farm,skill="Mining",req="425",goto="jc_425-500_farm"
|next "jc_425-500_skill"
step
label "jc_425-500_farm"
#include "trainer_Mining"
.skillmax Mining,525
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 450. It's better to skill up first. |only if skill("Mining")<425 and skillmax("Mining")<525
step
map Mount Hyjal
path 61.5,18.7	57.8,14.5	55.2,18.5
path 50.5,17.0	48.2,21.1	48.5,28.0
path 46.6,35.6	43.9,26.6	41.2,20.5
path 39.9,32.9	38.8,29.7	35.8,24.5
path 33.5,23.7	32.3,28.8	35.0,35.6
path 29.6,40.5	26.5,39.5	26.7,34.6
path 23.0,31.5	10.5,34.5	9.4,36.4
path 17.2,45.5	14.6,49.5	18.0,56.5
path 21.5,56.8	23.3,61.5	25.6,60.8
path 29.7,56.1	27.7,51.2	29.9,50.9
path 34.1,46.8	33.2,51.4	37.5,54.9
path 36.4,58.6	32.9,66.0	30.6,75.1
path 31.5,82.3	31.6,87.5	31.3,90.4
path 33.9,91.6	36.6,95.5	51.5,80.3
path 52.5,77.6	56.7,79.3	59.9,81.5
path 59.6,77.5	57.9,68.1	62.0,72.0
path 75.2,66.6	75.7,63.6	82.7,66.1
path 86.1,58.7	88.1,48.5	84.2,47.5
path 80.5,53.8	72.9,57.9	67.5,50.6
path 62.1,57.5	55.5,56.8	52.3,58.6
path 50.5,56.5	47.8,53.5	61.1,36.8
path 65.5,32.5	65.7,18.5
#include "follow_path_mine"
|tip You must use the prospect ability on the Obsidium Ore in your bags to get these items:
.collect Carnelian##52177 |n |cast Prospecting##31252
.collect Alicite##52179 |n |cast Prospecting##31252
.collect Jasper##52182 |n |cast Prospecting##31252
.collect Zephyrite##52178 |n |cast Prospecting##31252
.' You'll need about {_G.max(0 , (25-itemcount(52182,52178,52179,52177))*1)} more of the gems above. |condition itemcount(52182,52178,52179,52177)>=25
.collect 30 Nightstone##52180 |cast Prospecting##31252
.collect 70 Hessonite##52181 |cast Prospecting##31252
#include "max_skill_warning",skill="Mining",goto="jc_425-500_farm"
step
label "jc_425-500_skill"
'Make as many as it takes of these gems to get to 450 Jewelcrafting
.create Brilliant Carnelian##73225,Jewelcrafting,450
.create Quick Alicite##73234,Jewelcrafting,450
.create Puissant Jasper##73279,Jewelcrafting,450
.create Rigid Zephyrite##73230,Jewelcrafting,450
step
#include "trainer_Jewelcrafting"
.learn Hessonite Band##73495
step
.create Hessonite Band##73495,Jewelcrafting,485
step
#include "trainer_Jewelcrafting"
.learn Nightstone Choker##73497
step
.create Nightstone Choker##73497,Jewelcrafting,500
step
label "route2"
'Redirecting to Jewelcrafting 500-525 |next "jc_500-525" |only if skill("Jewelcrafting")>=500 and skill("Jewelcrafting")<525 and not ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Jewelcrafting finale |next "jc_525" |only if skill("Jewelcrafting")>=525 and skill("Jewelcrafting")<600 and not ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Jewelcrafting 525-600 |next "jc_500-600" |only if skill("Jewelcrafting")>=500 and skill("Jewelcrafting")<600 and ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Jewelcrafting finale |next "jc_600" |only if default
step
label "jc_500-525"
#include "trainer_Jewelcrafting"
.learn Fire Prism##73478
step
label "fire_prism"
.create Fire Prism##73478,Jewelcrafting,525
|tip You can only make 1 of these every 20 hours. Skip to next step to gain skills quicker. Be sure to make one of these everyday.
.create Fire Prism##73478,Jewelcrafting,1 total
|tip Make one of these everyday!
.collect 1 Fire Prism##52304
step
goto 72.5,34.5
.talk 50482
.' You will only be able to accept one of these daily quests
..accept 25160  |or
..accept 25162  |or
..accept 25158  |or
..accept 25161  |or
..accept 25159  |or
step
#include "trainer_Jewelcrafting"
.learn Timeless Nightstone##73243
step
'Use your Jewelcrafting profession to craft Timeless Nightstone
.create Timeless Nightstone##73243,Jewelcrafting,3 total |q 25154/1
.collect 3 Timeless Nightstone |q 25154/2
step
goto Mount Hyjal,65.0,22.5
.from Scalding Rock Elemental##40229+
.get 10 Elemental Goo |q 25162/1
step
#include "trainer_Jewelcrafting"
.learn Solid Zephyrite##73227
step
'Use your Jewelcrafting profession to craft
.create Solid Zephyrite##73227,Jewelcrafting,3 total |q 25105/1
.' Make 3 Solid Zephyrite |q 25105/2
step
#include "trainer_Jewelcrafting"
.learn Jagged Jasper##73274
step
'Use your Jewelcrafting profession to craft Jagged Jasper
.create Jagged Jasper##73274,Jewelcrafting,3 total |q 25155/1
.' Make 3 Jagged Jasper |q 25155/2
step
'Use the Stardust in your bags on 10 Humanoids around the city |use Stardust No. 2##52507
.' Test the Stardust No. 2 on 10 Humanoids |q 25157/1 |tip You can use this on NPCs and yourself
step
goto 72.5,34.5
.talk 50482
..turnin 25160
..turnin 25162
..turnin 25158
..turnin 25161
..turnin 25159
.earn 4 Illustrious Jewelcrafter's Token##361
.' If you do not have these click this button to go to make another Fire Prism and go to the start of the Jewelcrafting Dailies to do them again |confirm |next "fire_prism" |only if skill("Jewelcrafting")<525
step
goto 72.5,34.5
.talk 50482
.buy 1 Design: Austere Shadowspirit Diamond##52437 |n |tip You will need 4 Illustrious Jewelcrafter's Token from doing Jewelcrafting Dailies to buy this.
.' Click on the Design: Austere Shadowspirit Diamond |use Design: Austere Shadowspirit Diamond##52437
.learn Austere Shadowspirit Diamond##73468
step
'You will need to get these crafted by an Alchemist. If you farmed the full amount you will have enough materials for all 34 Shadowspirit Diamonds.
.collect 30 Shadowspirit Diamond##52303
step
.create Austere Shadowspirit Diamond##73468,Jewelcrafting,525
step
label "jc_525"
'Congratulations, you are now a level 525 Jewelcrafter!
|confirm |next "end"
step
label "jc_600"
'Congratulations, you are now a Zen Master Jewelcrafter!
|confirm |next "end"
step
label "jc_500-600"
.'Please purchase the upgrade Profession guide to see the content for MOP |only if not ZGV.guidesets['ProfessionsHMoP']
|next Profession Guides\\Jewelcrafting\\Jewelcrafting 500-600 Leveling Guide |only if ZGV.guidesets['ProfessionsHMoP']
step
label "end"
'You have reached the end of the guide
|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Jewelcrafting Dailies",[[
description This guide section will walk you through completing the Jewelcrafting daily quests.
author support@zygorguides.com
step
label "start"
goto Orgrimmar,72.5,34.5
.talk 50482
.' You will only be able to accept one of these daily quests
..accept 25160  |or
..accept 25162  |or
..accept 25158  |or
..accept 25161  |or
..accept 25159  |or
step
#include "trainer_Jewelcrafting"
.learn Timeless Nightstone##73243
step
'Use your Jewelcrafting profession to craft Timeless Nightstone
.create Timeless Nightstone##73243,Jewelcrafting,3 total |q 25154/1
.collect 3 Timeless Nightstone |q 25154/2
step
goto Mount Hyjal,65.0,22.5
.from Scalding Rock Elemental##40229+
.get 10 Elemental Goo |q 25162/1
step
#include "trainer_Jewelcrafting"
.learn Solid Zephyrite##73227
step
'Use your Jewelcrafting profession to craft
.create Solid Zephyrite##73227,Jewelcrafting,3 total |q 25105/1
.' Make 3 Solid Zephyrite |q 25105/2
step
#include "trainer_Jewelcrafting"
.learn Jagged Jasper##73274
step
'Use your Jewelcrafting profession to craft Jagged Jasper
.create Jagged Jasper##73274,Jewelcrafting,3 total |q 25155/1
.' Make 3 Jagged Jasper |q 25155/2
step
'Use the Stardust in your bags on 10 Humanoids around the city |use Stardust No. 2##52507
.' Test the Stardust No. 2 on 10 Humanoids |q 25157/1 |tip You can use this on NPCs and yourself
step
goto 72.5,34.5
.talk 50482
..turnin 25160
..turnin 25162
..turnin 25158
..turnin 25161
..turnin 25159
.earn 4 Illustrious Jewelcrafter's Token##361
.' If you do not have these click this button to go to make another Fire Prism and go to the start of the Jewelcrafting Dailies to do them again |confirm |next "start" |only if skill("Jewelcrafting")<525
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Tailoring 1-600 Leveling Guide",[[
description This guide will walk you through leveling your Tailoring skill from 1-600.
author support@zygorguides.com
completion skill,Tailoring,600
condition suggested hasprof('Tailoring',1,600)
#include "profession_single_start",prof1="Tailoring"
step
'Redirecting to Tailoring 1-75 |next "tl_1-75" |only if skill("Tailoring")<75
'Redirecting to Tailoring 75-130 |next "tl_75-125" |only if skill("Tailoring")>=75 and skill("Tailoring")<125
'Redirecting to Tailoring 130-225 |next "tl_125-200" |only if skill("Tailoring")>=125 and skill("Tailoring")<200
'Redirecting to Tailoring 200-250 |next "tl_200-250" |only if skill("Tailoring")>=200 and skill("Tailoring")<250
'Redirecting to Tailoring 250-300 |next "tl_250-300" |only if skill("Tailoring")>=250 and skill("Tailoring")<300
'Redirecting to Tailoring 300-350 |next "tl_300-350" |only if skill("Tailoring")>=300 and skill("Tailoring")<350
'Redirecting to Tailoring 350-425 |next "tl_350-425" |only if skill("Tailoring")>=350 and skill("Tailoring")<425
'Redirecting to Tailoring 425-500 |next "tl_425-500" |only if skill("Tailoring")>=425 and skill("Tailoring")<500
'Redirecting to Tailoring 500-600 |next "route2" |only if skill("Tailoring")>=500 and skill("Tailoring")<600
step
title + Tailoring 1-75
label	"tl_1-75"
#include "home_ValleyofStrength"
step
#include "trainer_Tailoring"
.skillmax Tailoring,75 |tip You must be at least level 5.
step
#include "auctioneer"
.buy 210 Linen Cloth##2589
#include go_farm_level,level="8",goto="tl_1-75_farm"
|next "tl_1-75_skill"
step
label	"tl_1-75_farm"
goto Mulgore,60.6,47.7
.from Venture Co. Supervisor##2979+, Enforcer Emilgund##5787+, Supervisor Fizsprocket##3051+, Venture Co. Worker##2978+
.collect 210 Linen Cloth##2589
step
label	"tl_1-75_skill"
.create 105 Bolt of Linen Cloth##2963,Tailoring,105 total
.skill Tailoring,50
step
#include "trainer_Tailoring"
.learn Heavy Linen Gloves##3840
step
#include "vendor_Tailoring"
.buy 40 Coarse Thread##2320
step
.create 20 Heavy Linen Gloves##3840,Tailoring,70
step
#include "trainer_Tailoring"
.learn Reinforced Linen Cape##2397
step
.create 5 Reinforced Linen Cape##2397,Tailoring,75
step
title + Tailoring 75-125
label	"tl_75-125"
#include "trainer_Tailoring"
.skillmax Tailoring,150 |tip You must be level 10
.learn Bolt of Woolen Cloth##2964
step
#include "auctioneer"
.buy 135 Wool Cloth##2592
#include go_farm_level,level="22",goto="tl_75-125_farm"
|next "tl_75-125_skill"
step
label	"tl_75-125_farm"
goto Hillsbrad Foothills 40.4,47.9
.from Stormpike Engineer##49116+
..collect 135 Wool Cloth##2592
step
label	"tl_75-125_skill"
.create 45 Bolt of Woolen Cloth##2964,Tailoring,45 total
.skill Tailoring,100
step
#include "trainer_Tailoring"
.learn Simple Kilt##12046
step
#include "vendor_Tailoring"
.buy 45 Fine Thread##2321
step
.create 40 Simple Kilt##12046,Tailoring,110
step
#include "trainer_Tailoring"
.learn Double-stitched Woolen Shoulders##3848
step
.create 15 Double-stitched Woolen Shoulders##3848,Tailoring,125
step
title + Tailoring 125-200
label	"tl_125-200"
#include "trainer_Tailoring"
.skillmax Tailoring,225 |tip You must be at least level 20.
.learn Bolt of Silk Cloth##3839
step
#include "auctioneer"
.buy 644 Silk Cloth##4306
.buy 480 Mageweave Cloth##4338
#include go_farm_level,level="35",goto="tl_125-200_farm"
|next "tl_125-200_skill"
step
label	"tl_125-200_farm"
'Skipping next part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label	"farming"
goto Dustwallow Marsh,41.9,12.4
.from Grimtotem Breaker##23592+, Grimtotem Spirit-Shifter##23593+, Grimtotem Elder##23714+
.collect 644 Silk Cloth##4306 |tip You can also farm these by killing humanoid mobs in the Scarlet Monastery instance.
step
'Skipping next part of farming |next "exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label	"farming"
goto Felwood,63.4,20.7
.from Irontree Chopper##48452+
.collect 480 Mageweave Cloth##4338
step
label	"tl_125-200_skill"
.create 161 Bolt of Silk Cloth##3839,Tailoring,161 total
.skill Tailoring,145
step
#include "trainer_Tailoring"
.learn Azure Silk Hood##8760
step
#include "vendor_Tailoring"
.buy 36 Blue Dye##6260
.buy 45 Fine Thread##2321
.buy 10 Bleach##2324
step
.create 18 Azure Silk Hood##8760,Tailoring,160
step
#include "trainer_Tailoring"
.learn Silk Headband##8762
step
.create 10 Silk Headband##8762,Tailoring,170
step
#include "trainer_Tailoring"
.learn Formal White Shirt##3871
step
.create 5 Formal White Shirt##3871,Tailoring,175
step
#include "trainer_Tailoring"
.learn Bolt of Mageweave##3865
step
.create 120 Bolt of Mageweave##3865,Tailoring,120 total
.skill Tailoring,185
step
#include "trainer_Tailoring"
.learn Crimson Silk Vest##8791
step
#include "vendor_Tailoring"
.buy 60 Red Dye##2604
.buy 30 Fine Thread##2321
.buy 85 Silken Thread##4291
.buy 70 Heavy Silken Thread##8343
step
.create 15 Crimson Silk Vest##8791,Tailoring,200
step
title + Tailoring 200-250
label	"tl_200-250"
#include "trainer_Tailoring"
.skillmax Tailoring,300 |tip You must be at least level 35.
.learn Crimson Silk Pantaloons##8799
step
.create 5 Crimson Silk Pantaloons##8799,Tailoring,205
step
#include "trainer_Tailoring"
.learn Black Mageweave Leggings##12049
step
.create 15 Black Mageweave Leggings##12049,Tailoring,220
step
#include "trainer_Tailoring"
.learn Black Mageweave Gloves##12053
step
.create 10 Black Mageweave Gloves##12053,Tailoring,230
step
#include "trainer_Tailoring"
.learn Black Mageweave Headband##12072
step
.create 23 Black Mageweave Headband##12072,Tailoring,250
step
label	"tl_250-300"
#include "auctioneer"
.buy 800 Runecloth##14047
#include go_farm_level,level="55",goto="tl_250-300_farm"
|next "tl_250-300_skill"
step
label	"tl_250-300_farm"
goto Silithus,45.8,38.2
.from Twilight Keeper Havunth##11804+, Twilight Geolord##11881+, Twilight Avenger##11880+, Twilight Stonecaller##11882+
.collect 800 Runecloth##14047
.' You can find more:
.' Around [35.7,32.5]
.' Around [29.5,73.4]
.' Around [66.1,20.3]
step
label	"tl_250-300_skill"
#include "trainer_Tailoring"
.learn Bolt of Runecloth##18401
step
.create 195 Bolt of Runecloth##18401,Tailoring,195 total
.skill Tailoring,260
step
#include "trainer_Tailoring"
.learn Runecloth Belt##18402
step
#include "vendor_Tailoring"
.buy 75 Rune Thread##14341
step
.create 18 Runecloth Belt##18402,Tailoring,275
step
#include "trainer_Tailoring"
.learn Runecloth Gloves##18417
step
.create 23 Runecloth Gloves##18417,Tailoring,295
step
#include "trainer_Tailoring"
.learn Runecloth Headband##18444
step
.create 5 Runecloth Headband##18444,Tailoring,300
step
title + Tailoring 300-350
label	"tl_300-350"
#include "trainer_Tailoring"
.skillmax Tailoring,375 |tip You must be at least level 50.
.learn Bolt of Netherweave##26745
step
goto Shattrath City,66.3,69.3
.talk 19213
.buy Pattern: Netherweave Tunic##21897
|next |only if rep ('The Aldor') >= Neutral
|next "auction2" |only if rep ('The Scryers') >= Friendly
step
goto Shattrath City,51.0,26.5
.talk 50143
.buy 700 Netherweave Cloth##21877
#include go_farm_level,level="65",goto="tl_300-350_farm"
|next "tl_300-350_skill"
step
label	"auction2"
goto Shattrath City,57.0,63.2
.talk 50139
.buy 700 Netherweave Cloth##21877
#include go_farm_level,level="65",goto="tl_300-350_farm"
|next "tl_300-350_skill"
step
label	"tl_300-350_farm"
goto Netherstorm,26.3,68.1
.from Sunfury Magister##18855+, Sunfury Astromancer##19643+, Sunfury Captain##19453+, Sunfury Bloodwarder##18853+, Sunfury Geologist##19779+, Sunfury Warp-Master##18857+
.collect 700 Netherweave Cloth##21877
step
label	"tl_300-350_skill"
#include "auctioneer"
.buy 20 Knothide Leather##21887
step
.create Bolt of Netherweave##26745,Tailoring,140 total
.skill Tailoring,325
step
#include "trainer_Tailoring"
.learn Netherweave Pants##26771
step
#include "vendor_Tailoring"
.buy 30 Rune Thread##14341
step
.create 10 Netherweave Pants##26771,Tailoring,335
step
#include "trainer_Tailoring"
.learn Netherweave Boots##26772
step
.create 10 Netherweave Boots##26772,Tailoring,345
step
'Click the Netherweave Tunic Pattern in your bags |use Pattern: Netherweave Tunic##21897
.learn Netherweave Tunic##26774 |use Pattern: Netherweave Tunic##218974
step
.create 5 Netherweave Tunic##26774,Tailoring,350
step
title + Tailoring (350-425)
label	"tl_350-425"
#include "trainer_Tailoring"
.skillmax Tailoring,450 |tip You must be at least level 65.
.learn Bolt of Frostweave##55899
step
#include "auctioneer"
.buy 1700 Frostweave Cloth##33470
#include go_farm_level,level="78",goto="tl_350-425_farm"
|next "tl_350-425_skill"
step
label	"tl_350-425_farm"
goto Borean Tundra 41.6,53.4
.talk 26969
..accept 13270 |instant
step
goto Icecrown,61.8,20.8
.from Dark Ritualist##34734+, Dark Zealot##34728+
.collect 1700 Frostweave Cloth##33470 |n
.create Bolt of Frostweave##55899,Tailoring, 340 total
.skill Tailoring,375
step
label	"tl_350-425_skill"
.create Bolt of Frostweave##55899,Tailoring,340 total |n
.skill Tailoring,375
step
#include "trainer_Tailoring"
.learn Frostwoven Belt##55908
step
#include "vendor_Tailoring"
.buy 50 Eternium Thread##38426
step
.create 5 Frostwoven Belt##55908,Tailoring,380
step
#include "trainer_Tailoring"
.learn Frostwoven Boots##55906
step
.create 5 Frostwoven Boots##55906,Tailoring,385
step
#include "trainer_Tailoring"
.learn Frostwoven Cowl##55907
step
.create 5 Frostwoven Cowl##55907,Tailoring,395
step
#include "trainer_Tailoring"
.learn Duskweave Belt##55914
step
.create 13 Duskweave Belt##55914,Tailoring,405
step
#include "trainer_Tailoring"
.learn Duskweave Wristwraps##55920
step
.create 5 Duskweave Wristwraps##55920,Tailoring,410
step
#include "trainer_Tailoring"
.learn Duskweave Gloves##55922
step
.create 5 Duskweave Gloves##55922,Tailoring,415
step
#include "trainer_Tailoring"
.learn Duskweave Boots##55924
step
.create 13 Duskweave Boots##55924,Tailoring,425
step
title + Tailoring (425-500)
label	"tl_425-500"
#include "trainer_Tailoring"
.skillmax Tailoring,525 |tip You must be at least level 75.
.learn Bolt of Embersilk Cloth##74964
step
#include "auctioneer"
.buy 1025 Embersilk Cloth##53010
.' or
#include go_farm_level,level="80",goto="tl_425-500_farm"
|next "tl_425-500_skill"
step
label	"tl_425-500_farm"
goto Mount Hyjal,55.8,68.0
.from Twilight Augur##40713+, Twilight Retainer##40767+
.collect 1025 Embersilk Cloth##53010 |or
.' or
.create Bolt of Embersilk Cloth##74964,Tailoring,205 total |or
step
label	"tl_425-500_skill"
.create Bolt of Embersilk Cloth##74964,Tailoring,205 total
.skill Tailoring,450
step
#include "vendor_Tailoring"
.buy 100 Eternium Thread##38426
step
#include "trainer_Tailoring"
.learn Deathsilk Bracers##75249
step
.create 5 Deathsilk Bracers##75249,Tailoring,455
step
#include "trainer_Tailoring"
.learn Deathsilk Boots##75252
step
.create 5 Deathsilk Boots##75252,Tailoring,460
step
#include "trainer_Tailoring"
.learn Deathsilk Leggings##75254
step
.create 5 Deathsilk Leggings##75254,Tailoring,465
step
#include "trainer_Tailoring"
.learn Deathsilk Cowl##75256
step
.create 5 Deathsilk Cowl##75256,Tailoring,470
step
#include "trainer_Tailoring"
.learn Spiritmend Belt##75258
step
.create 5 Spiritmend Belt##75258,Tailoring,475
step
#include "trainer_Tailoring"
.learn Spiritmend Boots##75261
step
.create 5 Spiritmend Boots##75261,Tailoring,480
step
#include "trainer_Tailoring"
.learn Spiritmend Leggings##75263
step
.create 5 Spiritmend Leggings##75263,Tailoring,485
step
#include "trainer_Tailoring"
.learn Spiritmend Robe##75267
step
.create 15 Spiritmend Robe##75267,Tailoring,500
step
label "route2"
'Redirecting to Tailoring 500-525 |next "tl_500-525" |only if skill("Tailoring")>=500 and skill("Tailoring")<525 and not ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Tailoring finale |next "tl_525" |only if skill("Tailoring")>=525 and skill("Tailoring")<600 and not ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Tailoring 500-600 |next "tl_500-600" |only if skill("Tailoring")>=500 and skill("Tailoring")<600 and ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Tailoring finale |next "tl_600" |only if default
step
#include "auctioneer"
.buy 75 Volatile Fire##52325
.buy 75 Volatile Water##52326
.buy 800 Embersilk Cloth##53010
#include go_farm_level,level="80",goto="tl_425-500_farm"
|next "tl_500-525_skill"
step
label "tl_500-525_farm"
goto Mount Hyjal,55.8,68.0
.from Twilight Augur##40713+, Twilight Retainer##40767+
.collect 800 Embersilk Cloth##53010 |or
.' or
.create Bolt of Embersilk Cloth##74964,Tailoring,160 total |or
step
goto Mount Hyjal 24.8,60.4
.from Flame Terror##52219+, Brimstone Destroyer##52794+
.collect 75 Volatile Fire##52326
step
goto Twilight Highlands 68.6,47.0
.from Muddied Water Elemental
.collect 75 Volatile Water##52326
step
label "tl_500-525_skill"
.create Bolt of Embersilk Cloth##74964,Tailoring,160 total
step
#include "trainer_Tailoring"
.learn Vicious Fireweave Bracers##75290
step
.create 5 Vicious Fireweave Bracers##75290,Tailoring,505
step
#include "trainer_Tailoring"
.learn Vicious Embersilk Shoulders##75291
step
.create Vicious Embersilk Shoulders##75291,Tailoring,510
step
#include "trainer_Tailoring"
.learn Vicious Embersilk Belt##75293
step
.create Vicious Embersilk Belt##75293,Tailoring,3 total
skill Tailoring,516
step
#include "trainer_Tailoring"
.learn Vicious Embersilk Gloves##75295
step
.create Vicious Embersilk Gloves##75295,Tailoring,2 total
skill Tailoring,520
step
#include "trainer_Tailoring"
.learn Vicious Embersilk Boots##75297
step
.create Vicious Embersilk Boots##75297,Tailoring,525
step
label "tl_525"
'Congratulations, you are now a level 525 Tailor!
'In order to complete this professions to level 600, please purchase the Mists of Pandaria upgrade of this guide.
|confirm
|next "end"
step
label "tl_500-600"
.'Please purchase the upgrade Profession guide to see the content for MOP |only if not ZGV.guidesets['ProfessionsHMoP']
|next Profession Guides\\Tailoring\\Tailoring 500-600 Leveling Guide |only if ZGV.guidesets['ProfessionsHMoP']
step
label "tl_600"
'Congratulations, you are now a Zen Master Tailor!
|confirm
step
label "end"
'You have reached the end of the guide
|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Leatherworking 1-600 Leveling Guide",[[
description This guide will walk you through leveling your Leatherworking skill from 1-600.
author support@zygorguides.com
completion skill,Leatherworking,600
condition suggested hasprof('Leatherworking',1,600)
#include profession_dual_start,prof1="Leatherworking",prof2="Skinning"
step
label "route"
'Redirecting to Leatherworking 1-55 |next "lw_1-55" |only if skill("Leatherworking")<55
'Redirecting to Leatherworking 55-155 |next "lw_55-155" |only if skill("Leatherworking")>=55 and skill("Leatherworking")<155
'Redirecting to Leatherworking 155-200 |next "lw_155-200" |only if skill("Leatherworking")>=155 and skill("Leatherworking")<200
'Redirecting to Leatherworking 200-225 |next "lw_200-225" |only if skill("Leatherworking")>=200 and skill("Leatherworking")<225
'Redirecting to Leatherworking 225-300 |next "lw_225-300" |only if skill("Leatherworking")>=225 and skill("Leatherworking")<300
'Redirecting to Leatherworking 300-350 |next "lw_300-350" |only if skill("Leatherworking")>=300 and skill("Leatherworking")<350
'Redirecting to Leatherworking 350-425 |next "lw_350-425" |only if skill("Leatherworking")>=350 and skill("Leatherworking")<425
'Redirecting to Leatherworking 425-500 |next "lw_425-500" |only if skill("Leatherworking")>=425 and skill("Leatherworking")<500
'Redirecting to Leatherworking 500-600 |next "route2" |only if skill("Leatherworking")>=500 and skill("Leatherworking")<600
step
label "lw_1-55"
title + Leatherworking 1-55
#include "trainer_Leatherworking"
.skillmax Leatherworking,75 |tip You must be at least level 5.
step
#include "vendor_Skinning"
.buy 1 Skinning Knife##7005
step
#include "auctioneer"
.buy 57 Ruined Leather Scraps##2934
.buy 250 Light Leather##2318
#include go_farm,skill="Skinning",req="1",goto="lw_1-55_farm"
|next "lw_1-55_skill"
step
label	"lw_1-55_farm"
'Skipping next part of farming |next "farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label	"farming"
map Durotar
path	44.1,20.6	45.7,23.8	45.1,31.2
path	45.5,37.6	45.0,44.4	41.1,46.6
path	36.9,45.2	36.0,34.8	38.0,25.2
path	41.9,19.4
.' Kill any beasts you see and skin them.
.collect 57 Ruined Leather Scraps##2934 |n
.collect 250 Light Leather##2318 |n
skill Skinning,75
step
label	"farm2"
#include "trainer_Skinning"
.skillmax Skinning,150
step
'Skipping next part of farming |next "exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label	"farming"
map Northern Barrens
path 62.4,70.7	67.1,63.9	64.3,55.5
path 62.3,58.9	61.8,67.2
.' Kill any beasts you see and skin them.
.collect 57 Ruined Leather Scraps##2934
.collect 250 Light Leather##2318
.' If you have an excess amount of Ruined Leather Scraps, you can use them to create Light Leather |cast Leatherworking##3811
step
label	"lw_1-55_skill"
#include vendor_Leatherworking
.buy 43 Coarse Thread##2320
step
.create 19 Light Leather##2881,Leatherworking,20
step
.create 13 Light Armor Kits##2152,Leatherworking,30
step
.create 23 Handstitched Leather Cloak##9058,Leatherworking,50
step
#include trainer_Leatherworking
.learn Handstitched Leather Belt##3753
step
.create 5 Handstitched Leather Belts##3753,Leatherworking,55
step
title + Leatherworking 55-155
label	"lw_55-155"
#include trainer_Leatherworking
.skillmax Leatherworking,150 |tip You must be at least level 10.
.learn Embossed Leather Gloves##3756
step
#include "auctioneer"
.buy 15 Medium Hide##4232
.buy 155 Medium Leather##2319
#include go_farm,skill="Skinning",req="125",goto="lw_55-155_farm"
|next "lw_55-155_skill"
step
label	"lw_55-155_farm"
title + Leatherworking 55-155 (farming)
#include "trainer_Skinning"
.skillmax Skinning,225 |only if skill("Skinning")>=125
'Your _Skinning_ skill is too low to learn the _Expert_ skill. You can proceed with farming, but your skill gains will stop at 150. It's better to skill up first. |only if skill("Skinning")<125
.' Click here to continue |confirm |only if skill("Skinning")<125
step
map Northern Stranglethorn
path	41.1,45.2	37.1,38.6	37.4,31.9
path	36.5,30.9	35.7,25.8	35.8,19.7
path	40.5,20.6	45.8,25.4	48.3,30.0
path	48.2,35.5	42.9,47.4
.' Kill any beasts you see and skin them.
.collect 15 Medium Hide##4232 |tip You can also buy these off the auction house since they are rare.
.collect 155 Medium Leather##2319
step
label	"lw_55-155_skill"
#include "vendor_Leatherworking"
.buy 75 Salt##4289
.buy 30 Gray Dye##4340
.buy 190 Fine Thread##2321
step
.create Embossed Leather Gloves##3756,Leatherworking,85
step
#include "trainer_Leatherworking"
.learn Fine Leather Belt##3763
step
.create Fine Leather Belt##3763,Leatherworking,100
.' Hold on to these for later use
step
#include "trainer_Leatherworking"
.learn Cured Medium Hide##3817
step
.create Cured Medium Hide##3817,Leatherworking,115
step
#include "trainer_Leatherworking"
.learn Dark Leather Boots##2167
step
.create Dark Leather Boots##2167,Leatherworking,130
step
#include "trainer_Leatherworking"
.learn Dark Leather Belt##3766
step
#include "trainer_Leatherworking"
.create Dark Leather Belt##3766,Leatherworking,145
step
#include "trainer_Leatherworking"
.learn Hillman's Leather Gloves##3764
step
.create Hillman's Leather Gloves##3764,Leatherworking,150
step
#include "trainer_Leatherworking"
.learn Heavy Leather##20649
.create Heavy Leather##20649,Leatherworking,155
step
title + Leatherworking 155-200
label	"lw_155-200"
#include "trainer_Leatherworking"
.skillmax Leatherworking,225 |tip You must be at least level 20.
step
#include "auctioneer"
.buy 265 Heavy Leather##4234
.buy 30 Bolt of Silk Cloth##4305
#include go_farm,skill="Skinning",req="185",goto="lw_155-200_farm"
|next "lw_155-200_skill"
step
title + Leatherworking 155-200 (farming)
label	"lw_155-200_farm"
#include "trainer_Skinning"
.skillmax Skinning,300
'Your _Skinning_ skill is too low to learn the _Artisan_ skill. You can proceed with farming, but your skill gains will stop at 225. It's better to skill up first. |only if skill("Skinning")<200
.' Click here to continue |confirm |only if skill("Skinning")<200
step
goto Feralas 55.4,55.0
.from Feral Scar Yeti##5292+, Rage Scar Yeti##40224+
.' Skin their corpses.
.collect 265 Heavy Leather##4234
.collect 15 Heavy Hide##4235
.' You can find more Yetis at [53.2,31.8]
#include "max_skill_warning",skill="Skinning",goto="lw_155-200_farm"
step
'Find a _tailor_ to make _Bolts of Silk Cloth_ for you |tip Ask in Trade Chat or in your Guild to help you
.collect 30 Bolt of Silk Cloth##4305
step
label	"lw_155-200_skill"
#include "vendor_Leatherworking"
.buy 60 Salt##4289
.buy 75 Fine Thread##2321
.buy 75 Silken Thread##4291
.buy 5 Black Dye##2325
step
#include "trainer_Leatherworking"
.learn Cured Heavy Hide##3818
.learn Heavy Armor Kit##3780
step
.create 15 Cured Heavy Hide##3818,Leatherworking,165
step
.create 17 Heavy Armor Kit##3780,Leatherworking,180
step
#include "trainer_Leatherworking"
.learn Barbaric Shoulders##7151
step
.create Barbaric Shoulders##7151,Leatherworking,190
step
#include "trainer_Leatherworking"
.learn Guardian Gloves##7156
step
.create Guardian Gloves##7156,Leatherworking,195
step
#include "trainer_Leatherworking"
.learn Dusky Bracers##9201
step
.create Dusky Bracers##9201,Leatherworking,200
step
title + Leatherworking 200-225
label	"lw_200-225"
#include "auctioneer"
.buy 430 Thick Leather##4304
#include go_farm,skill="Skinning",req="235",goto="lw_200-225_farm"
|next "lw_200-225_skill"
step
title + Leatherworking 200-225 farm
label	"lw_200-225_farm"
#include "trainer_Skinning"
.skillmax Skinning,375 |only if skill("Skinning")>=275
'Your _Skinning_ skill is too low to learn the _Artisan_ skill. You can proceed with farming, but your skill gains will stop at 225. It's better to skill up first. |only if skill("Skinning")<275
.' Click here to continue |confirm |only if skill("Skinning")<275
step
goto Badlands 11.0,38.2
.from Nyxondra's Broodling##46916
.collect 430 Thick Leather##4304
#include "max_skill_warning",skill="Skinning",goto="lw_200-225_farm"
step
label	"lw_200-225_skill"
#include "trainer_Leatherworking"
.learn Thick Armor Kit##10487
step
.create Thick Armor Kit##10487,Leatherworking,220
step
#include "trainer_Leatherworking"
.learn Nightscape Headband##10507
step
.create Nightscape Headband##10507,Leatherworking,230
step
#include "trainer_Leatherworking"
.learn Nightscape Pants##10548
step
title + Leatherworking 225-300
label "lw_225-300"
#include "trainer_Leatherworking"
.skillmax Leatherworking,300 |tip You must be at least level 35.
step
.create Nightscape Pants##10548,Leatherworking,250
step
#include "trainer_Leatherworking"
.skillmax Leatherworking,300 |tip You must be at least level 35.
step
#include "auctioneer"
.buy 410 Rugged Leather##8170
#include go_farm,skill="Skinning",req="255",goto="lw_225-300_farm"
|next "lw_225-300_skill"
step
title + Leatherworking 225-300 (farming)
label	"lw_225-300_farm"
#include "trainer_Skinning"
.skillmax Skinning,375 |only if skill("Skinning")>=275
'Your _Skinning_ skill is too low to learn the _Master_ skill. You can proceed with farming, but your skill gains will stop at 300. It's better to skill up first. |only if skill("Skinning")<275
.' Click here to continue |only if skill("Skinning")<275 |confirm
step
map Blasted Lands
path	56.8,39.1	57.5,34.0	55.4,31.3
path	54.6,25.4	50.1,25.0	45.8,20.6
path	43.7,18.8	48.4,27.6	49.3,33.7
path	50.9,41.3
.' Kill any beasts you find in this area and skin them.
.collect 435 Rugged Leather##8170
#include "max_skill_warning",skill="Skinning",goto="lw_225-300_farm"
step
label	"lw_225-300_skill"
#include "vendor_Leatherworking"
.buy 35 Black Dye##2325
.buy 92 Rune Thread##14341
step
#include "trainer_Leatherworking"
.learn Rugged Armor Kit##19058
step
.create Rugged Armor Kit##19058,Leatherworking,265
step
#include "trainer_Leatherworking"
.learn Wicked Leather Bracers##19052
step
.create Wicked Leather Bracers##19052,Leatherworking,290
step
#include "trainer_Leatherworking"
.learn Wicked Leather Headband##19071
step
.create Wicked Leather Headband##19071,Leatherworking,300
step
title + Leatherworking 300-350
label "lw_300-350"
#include "trainer_Leatherworking"
.skillmax Leatherworking,375 |tip You must be at least level 50.
step
#include "auctioneer"
.buy 100 Knothide Leather Scraps##25649
.buy 315 Knothide Leather##21887
.buy 28 Fel Scales##25700
#include go_farm,skill="Skinning",req="310",goto="lw_300-350_farm"
|next "lw_300-350_skill"
step
title + Leatherworking 300-350 (farming)
label	"lw_300-350_farm"
#include "trainer_Skinning"
.skillmax Skinning,450 |only if skill("Skinning")>=350
'Your _Skinning_ skill is too low to learn the _Grand Master_ skill. You can proceed with farming, but your skill gains will stop at 375. It's better to skill up first. |only if skill("Skinning")<350
.' Click here to continue |only if skill("Skinning")<350 |confirm
step
goto Hellfire Peninsula 22.2,67.1
.from Quillfang Ravager##16934+, Quillfang Skitterer##19189+
.' Skin their corpses.
.collect 20 Fel Scales##25700
.collect 100 Knothide Leather Scraps##25649
#include "max_skill_warning",skill="Skinning",goto="lw_300-350_farm"
step
map Terokkar Forest
path	45.4,5.4	48.7,9.3	50.4,10.6
path	53.1,13.1	56.4,14.1	60.1,12.3
path	62.1,10.6	60.7,9.5	58.3,12.1
path	53.9,12.5	49.7,9.0	49.4,7.9
path	46.8,4.6
.' Follow this path, killing any beasts you find and skinning them.
.from Razorthorn Ravager##24922+ |tip The Razorthorn Flayers are not skinnable.
.collect 315 Knothide Leather##21887
#include "max_skill_warning",skill="Skinning",goto="lw_300-350_farm"
step
label	"lw_300-350_skill"
#include "trainer_Leatherworking"
.learn Knothide Leather##32454
step
.create 20 Knothide Leather##32454,Leatherworking,310
step
#include "trainer_Leatherworking"
.talk 19187
.learn Knothide Armor Kit##32456
step
.create 25 Knothide Armor Kit##32456,Leatherworking,325
step
#include "trainer_Leatherworking"
.talk 19187
.learn Heavy Knothide Leather##32455
step
.create Heavy Knothide Leather##32455,Leatherworking,43 total
skill Leatherworking,335
step
#include "trainer_Leatherworking"
.talk 19187
.learn Thick Draenic Vest##32473
step
.create Thick Draeneic Vest##32473,Leatherworking,340
step
#include "trainer_Leatherworking"
.talk 19187
.learn Scaled Draenic Boots##32469
step
.create Scaled Draenic Boots##32469,Leatherworking,350
step
title + Leatherworking 350-425
label	"lw_350-425"
#include "trainer_Leatherworking"
.skillmax Leatherworking,450 |tip You must be at least level 65.
.learn Borean Armor Kit##38375
step
#include "auctioneer"
.buy 410 Borean Leather##33568
#include go_farm,skill="Skinning",req="380",goto="lw_350-425_farm"
|next "lw_350-425_skill"
step
title + Leatherworking 350-425 (farming)
label	"lw_350-425_farm"
#include "trainer_Skinning"
.skillmax Skinning,450
'Your _Skinning_ skill is too low to learn the _Grand Master_ skill. You can proceed with farming, but your skill gains will stop at 375. It's better to skill up first. |only if skill("Skinning")<350
.' Click here to continue |only if skill("Skinning")<350 |confirm
step
'Skipping next part of farming |next "+skinninglvl2" |only if step:Find("+skinninglvl"):IsComplete()
'Proceeding to farm |next |only if default
step
label	"skinninglvl"
map Borean Tundra
path 49.8,67.7	46.9,70.7
path 44.2,71.0	41.1,70.7	38.5,71.8
path 41.9,74.4	45.3,74.9	48.1,74.4
path 49.6,72.3	51.6,69.1
.' Kill any beasts you see and skin them.
.collect 410 Borean Leather##33568 |n
skill Skinning,395
step
'Proceeding to farm |next |only if default
step
label	"skinninglvl2"
map Sholazar Basin
path 28.8,55.9	29.7,51.6	31.1,46.4
path 32.2,40.4	28.6,42.9	25.6,47.9
path 23.5,52.3	22.6,58.7	22.6,65.3
path 22.3,70.2	26.4,72.7	28.9,69.1
path 29.6,64.4
.' Kill any beasts you see and skin them.
.collect 410 Borean Leather##33568
#include "max_skill_warning",skill="Skinning",goto="lw_350-425_farm"
step
label	"lw_350-425_skill"
.create Borean Armor Kit##50962,Leatherworking,380
step
#include "vendor_Leatherworking"
.buy 15 Eternium Thread##38426
step
#include "trainer_Leatherworking"
.learn Arctic Boots##50948
step
.create Arctic Boots##50948,Leatherworking,390
step
#include "trainer_Leatherworking"
.learn Arctic Belt##50949
step
.create Arctic Belt##50949,Leatherworking,410
step
#include "trainer_Leatherworking"
.learn Fur Lining - Agility##57683
step
'Use Fur Lining - Agility on your _Bracers_, replacing the current enchantment until you reach level 425 Leatherworking.
.skill Leatherworking,425
step
title + Leatherworking 425-525
label	"lw_425-500"
#include "trainer_Leatherworking"
.skillmax Leatherworking,525 |tip You must be at least level 75.
.learn Savage Leather##84950
step
#include "auctioneer"
.buy 50 Savage Leather Scraps##52977
.buy 590 Savage Leather##52976
#include go_farm,skill="Skinning",req="440",goto="lw_425-500_farm"
|next "lw_425-500_skill"
step
title + Leatherworking 425-525 (farming)
label	"lw_425-500_farm"
#include "trainer_Skinning"
.skillmax Skinning,525 |only if skill("Skinning")>=425
'Your _Skinning_ skill is too low to learn the _Illustrious Grand Master_ skill. You can proceed with farming, but your skill gains will stop at 450. It's better to skill up first. |only if skill("Skinning")<425
.' Click here to continue |only if skill("Skinning")<425 |confirm
step
goto Shimmering Expanse,49.7,61.1
.from Sandskin Pincer##40889, Snapjaw Grouper##40912
.' Skin their corpses.
.collect 50 Savage Leather Scraps##52977
.collect 590 Savage Leather##52976 |only if level <=83
#include "max_skill_warning",skill="Skinning",goto="lw_425-500_farm"
step
map Twilight Highlands
path	65.9,16.5	66.1,19.4	70.0,21.0	66.3,24.5
path	63.4,22.8	59.8,21.3	56.5,20.5
path	58.0,13.3	56.6,8.7	61.2,9.9
path	62.7,10.4	64.6,12.8
.from Highland Worg##46153+, Highland Elk##46970+, Tawny Owl##46162, Untamed Gryphon##46158+
.collect 590 Savage Leather##52976
#include "max_skill_warning",skill="Skinning",goto="lw_425-500_farm"
step
label	"lw_425-500_skill"
#include "vendor_Leatherworking"
.buy 35 Eternium Thread##38426
step
.create 10 Savage Leather##84950,Leatherworking,435
step
#include "trainer_Leatherworking"
.learn Savage Armor Kit##78379
step
.create 15 Savage Armor Kit##78379,Leatherworking,450
step
#include "trainer_Leatherworking"
.learn Tsunami Boots##78410
step
.create Tsunami Boots##78410,Leatherworking,460
step
#include "trainer_Leatherworking"
.learn Savage Cloak##78380
step
.create Savage Cloak##78380,Leatherworking,470
step
#include "trainer_Leatherworking"
.learn Darkbrand Boots##78407
step
.create Darkbrand Boots##78407,Leatherworking,475
step
#include "trainer_Leatherworking"
.learn Darkbrand Shoulders##78411
step
.create Darkbrand Shoulders##78411,Leatherworking,480
step
#include "trainer_Leatherworking"
.learn Darkbrand Chestguard##78428
step
.create Darkbrand Chestguard##78428,Leatherworking,485
step
#include "trainer_Leatherworking"
.learn Heavy Savage Leather##78436
step
.create Heavy Savage Leather##78436,Leatherworking,55 total
skill Leatherworking,490
step
#include "trainer_Leatherworking"
.learn Darkbrand Helm##78424
step
.create Darkbrand Helm##78424,Leatherworking,500
step
label "route2"
'Redirecting to Leatherworking 500-525 |next "lw_500-525" |only if skill("Leatherworking")>=500 and skill("Leatherworking")<525 and not ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Leatherworking finale |next "lw_525" |only if skill("Leatherworking")>=525 and skill("Leatherworking")<600 and not ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Leatherworking 500-600 |next "lw_500-600" |only if skill("Leatherworking")>=500 and skill("Leatherworking")<600 and ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Leatherworking finale |next "lw_600" |only if default
step
label "lw_500-525"
#include "auctioneer"
.buy 975 Savage Leather##52976
.buy 83 Volatile Earth##52327
#include go_farm,skill="Skinning",req="440",goto="lw_500-525_farm"
|next "lw_500-525_skill"
step
label "lw_500-525_farm"
map Twilight Highlands
path	65.9,16.5	66.1,19.4	70.0,21.0
path	66.3,24.5	63.4,22.8	59.8,21.3
path	56.5,20.5	58.0,13.3	56.6,8.7
path	61.2,9.9	62.7,10.4	64.6,12.8
.from Highland Worg##46153+, Highland Elk##46970+, Tawny Owl##46162, Untamed Gryphon##46158+
.collect 975 Savage Leather##52976
#include "max_skill_warning",skill="Skinning",goto="lw_500-525_farm"
step
goto Twilight Highlands 59.0,30.8
.from Obsidian Stoneslave##47226
.collect 83 Volatile Earth##52327
step
label "lw_500-525_skill"
goto Molten Front 44.8,86.6
.talk 53881
.buy 1 Pattern: Triple Reinforced Mining Bag##70175
step
.create Heavy Savage Leather##78436,Leatherworking,195 total
step
goto Orgrimmar 60.5,54.4
.talk 3366
.buy 17 Pristine Hide##52980
step
.create 5 Darkbrand Helm##78424,Leatherworking,505
step
#include "trainer_Leatherworking"
.learn Vicious Fur Cloak##99536
step
.create 2 Vicious Fur Cloak##99536,Leatherworking,511
step
.learn Triple Reinforced Mining Bag##100586 |use Pattern: Triple Reinforced Mining Bag##70175
step
.create 5 Triple Reinforced Mining Bag##100586,Leatherworking,525
step
title + Leatherworking 525
label	"lw_525"
'Congratulations, you are now a level 525 Leatherworker!
|next "end"
step
label "lw_500-600"
.'Please purchase the upgrade Profession guide to see the content for MOP |only if not ZGV.guidesets['ProfessionsHMoP']
|next Profession Guides\\Leatherworking\\Leatherworking 500-600 Leveling Guide |only if ZGV.guidesets['ProfessionsHMoP']
step
label "lw_600"
'Congratulations, you are now a Zen Master Leatherworker!
|confirm
step
label "end"
'You have reached the end of the guide
|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Skinning 1-600 Leveling Guide",[[
description This guide will walk you through leveling your Skinning skill from 1-600.
author support@zygorguides.com
completion skill,Skinning,600
condition suggested hasprof('Skinning',1,600)
#include "profession_single_start",prof1="Skinning"
step
'Redirecting to Skinning 1-60 |next "skn_1-60" |only if skill("Skinning")<60
'Redirecting to Skinning 60-150 |next "skn_60-150" |only if skill("Skinning")>=60 and skill("Skinning")<150
'Redirecting to Skinning 150-205 |next "skn_150-205" |only if skill("Skinning")>=150 and skill("Skinning")<205
'Redirecting to Skinning 205-300 |next "skn_205-300" |only if skill("Skinning")>=205 and skill("Skinning")<300
'Redirecting to Skinning 300-350 |next "skn_300-350" |only if skill("Skinning")>=300 and skill("Skinning")<350
'Redirecting to Skinning 350-450 |next "skn_350-450" |only if skill("Skinning")>=350 and skill("Skinning")<450
'Redirecting to Skinning 450-525 |next "skn_450-525" |only if skill("Skinning")>=450 and skill("Skinning")<525
'Redirecting to Skinning 525-600 |next "route2" |only if skill("Skinning")>=525 and skill("Skinning")<600
next 100
step
Title + Skinning 1-60
label	"skn_1-60"
#include "trainer_Skinning"
.skillmax Skinning,75
step
#include "vendor_Leatherworking"
.buy 1 Skinning Knife##7005
step
#include "home_ValleyofHonor"
step
'Follow the path in the following steps until your Skinning skill is level 60.
.' Kill any beasts you see and skin them.
|confirm
step
map Durotar
path follow loose;loop
path	56.2,31.4	58.1,23.9	56.3,15.5
path	52.8,10.7	51.3,14.0	48.9,16.0
path	49.7,17.9		53.8,18.6
.' Kill any beasts you see and skin them.
skill Skinning,60
step
label	"skn_60-150"
#include trainer_Skinning
.skillmax Skinning,150
step
'Skipping next part of farming |next "+farm1" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
'Follow the path in the following steps until your Skinning skill is level 120.
.' Kill any beasts you see and skin them.
|confirm
step
label	"farming"
map Northern Barrens
path	65.2,57.4	67.8,63.9	63.9,67.0
path	61.1,71.2	62.3,77.1	58.9,75.7
path	55.7,71.1	57.9,65.2	62.2,63.1
path	64.0,58.1
.' Kill any beasts you see and skin them.
skill Skinning,120
step
label	"farm1"
map Ashenvale
path	69.1,69.8	69.3,66.4	67.8,62.1
path	64.8,64.0	63.2,68.2	66.1,70.6
.' Kill any beasts you see and skin them.
skill Skinning,150
step
label	"skn_150-205"
#include trainer_Skinning
.skillmax Skinning,225
step
'Skipping next part of farming |next "+skn_205-300" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
'Follow the path in the following steps until your Skinning skill is level 205.
.' Kill any beasts you see and skin them.
|confirm
step
label	"farming"
map Southern Barrens
path	42.5,50.1	43.6,49.5	45.5,48.8
path	49.0,47.7	50.3,45.4	48.4,43.5
path	46.9,43.1	44.6,43.1	43.0,45.0
.' Kill any beasts you see and skin them.
skill Skinning,205
step
label	"skn_205-300"
#include trainer_Skinning
.skillmax Skinning,300
step
'Skipping next part of farming |next "+farm1" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
'Follow the path in the following steps until your Skinning skill is level 265.
.' Kill any beasts you see and skin them.
|confirm
step
label	"farming"
map Thousand Needles
path	73.0,48.0	69.8,49.1	67.2,46.2
path	64.7,43.9	61.1,43.4	56.9,43.4
path	65.0,68.5	66.0,74.1	63.9,79.3
path	64.2,85.3	66.5,92.7	70.1,94.5
.' Kill any beasts you see and skin them.
skill Skinning,265
step
label	"farm1"
map Un'Goro Crater
path	73.0,48.0	69.8,49.1	67.2,46.2
path	64.7,43.9	63.0,52.9	61.1,63.8
path	65.0,68.5	66.0,74.1	63.9,79.3
path	68.6,73.3	71.0,62.6	72.4,52.1
.' Kill any beasts you see and skin them.
skill Skinning,300
step
label	"skn_300-350"
#include trainer_Skinning
.skillmax Skinning,375
step
'Skipping next part of farming |next "+farm1" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
map Hellfire Peninsula
path 62.0,56.6	60.6,56.8	58.9,56.1
path 57.2,56.0	56.2,54.3	58.2,54.2
path 59.9,54.6	66.6,61.4	69.1,61.6
path 70.3,63.7	70.6,66.4	69.3,66.5
path 68.0,65.2	66.5,62.5	65.3,61.0
path 64.0,60.1	62.4,57.4
.' Kill any beasts you see and skin them.
skill Skinning,305
step
map Hellfire Peninsula
path 54.9,70.9	53.1,71.5	51.7,72.7
path 50.7,74.9	48.9,75.4	48.1,73.0
path 48.0,71.1	46.4,69.9	46.5,67.8
path 48.1,64.9	47.4,63.0	49.3,62.8
path 51.4,65.9	52.9,68.8	54.9,70.1
.' Kill any beasts you see and skin them.
skill Skinning,310
step
label	"farming"
map Hellfire Peninsula
path 40.7,85.6	37.6,86.1	34.9,88.8
path 32.7,91.5	33.6,92.4	35.9,91.2
path 37.8,89.9	39.2,88.5	40.7,86.6
.' Kill any beasts you see and skin them.
skill Skinning,330
step
label	"farm1"
map Nagrand
path 56.2,21.2	55.2,23.2	53.7,24.3
path 52.7,26.0	52.5,28.4	52.8,31.3
path 50.4,37.1	51.7,39.9	53.1,42.2
path 51.3,45.3	48.8,45.1	48.0,42.0
path 47.9,38.5	48.0,32.4	48.0,29.1
path 50.8,27.4	51.8,23.8	54.8,21.5
path 56.4,20.0i
.' Kill any beasts you see and skin them.
skill Skinning,350
step
label	"skn_350-450"
#include trainer_Skinning
.skillmax Skinning,450
step
map Borean Tundra
path 51.5,68.8	49.8,67.7	46.9,70.7
path 44.2,71.0	41.1,70.7	38.5,71.8
path 41.9,74.4	45.3,74.9	48.1,74.4
path 49.6,72.3	51.6,69.1
.' Kill any rhinos you see and skin them.
skill Skinning,395
step
map Sholazar Basin
path 28.8,55.9	29.7,51.6	31.1,46.4
path 32.2,40.4	28.6,42.9	25.6,47.9
path 23.5,52.3	22.6,58.7	22.6,65.3
path 22.3,70.2	26.4,72.7	28.9,69.1
path 29.6,64.4
.' Kill any beasts you see and skin them.
skill Skinning,450
step
label	"skn_450-525"
#include trainer_Skinning
.skillmax Skinning,525
step
map Kelp'thar Forest
path 56.0,36.5	57.8,39.4	59.1,39.7
path 59.4,36.9	57.6,34.9
.' Kill any crabs and serpents in the area.
skill Skinning,525
step
label	"route2"
'Redirecting to Skinning finale |next "skn_525" |only if skill("Skinning")>=525 and skill("Skinning")<600 and not ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Skinning 525-600 |next "skn_525-600" |only if skill("Skinning")>=525 and skill("Skinning")<600 and ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Skinning finale |next "skn_600" |only if default
title + Skinning 525
label "skn_525"
'Congratulations, you are now a level 525 Skinner!
|confirm |next "end"
step
label "skn_525-600"
.'Please purchase the upgrade Profession guide to see the content for MOP |only if not ZGV.guidesets['ProfessionsHMoP']
|next Profession Guides\\Skinning\\Skinning 525-600 Leveling Guide |only if ZGV.guidesets['ProfessionsHMoP']
step
label "skn_600"
'Congratulations, you are now a Zen Master Skinner!
|confirm |next "end"
step
label "end"
'You have reached the end of the guide
|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Mining 1-600 Leveling Guide",[[
description This guide will walk you through leveling your Mining skill from 1 - 600.
author support@zygorguides.com
completion skill,Mining,600
condition suggested hasprof('Mining',1,600)
#include "profession_single_start",prof1="Mining"
step
label "route"
'Redirecting to Pandarian Mining 1-525 |next "choice" |only if skill("Mining")<525 and level>=85 and _G.GetExpansionLevel()>=4 and ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Mining 1-50 |next "min_1-50" |only if skill("Mining")<50 and (level<85 or _G.GetExpansionLevel()<4 or not ZGV.guidesets['ProfessionsHMoP'])
'Redirecting to Mining 65-150 |next "min_50-125" |only if skill("Mining")>=50 and skill("Mining")<150 and (level<85 or _G.GetExpansionLevel()<4 or not ZGV.guidesets['ProfessionsHMoP'])
'Redirecting to Mining 125-200 |next "min_125-200" |only if skill("Mining")>=125 and skill("Mining")<200 and (level<85 or _G.GetExpansionLevel()<4 or not ZGV.guidesets['ProfessionsHMoP'])
'Redirecting to Mining 200-275 |next "min_200-275" |only if skill("Mining")>=200 and skill("Mining")<275 and (level<85 or _G.GetExpansionLevel()<4 or not ZGV.guidesets['ProfessionsHMoP'])
'Redirecting to Mining 275-350 |next "min_275-350" |only if skill("Mining")>=275 and skill("Mining")<350 and (level<85 or _G.GetExpansionLevel()<4 or not ZGV.guidesets['ProfessionsHMoP'])
'Redirecting to Mining 350-425 |next "min_350-425" |only if skill("Mining")>=350 and skill("Mining")<425 and (level<85 or _G.GetExpansionLevel()<4 or not ZGV.guidesets['ProfessionsHMoP'])
'Redirecting to Mining 425-525 |next "min_425-525" |only if skill("Mining")>=425 and skill("Mining")<525 and (level<85 or _G.GetExpansionLevel()<4 or not ZGV.guidesets['ProfessionsHMoP'])
'Redirecting to Mining 525-600 |next "route2" |only if skill("Mining")>=525 and skill("Mining")<600
step
label choice
'Click here to level up your mining in Pandaria. |confirm |next "Pandarian_Mining_1-600"
.'_
'Click here to level up your mining using the original method. |confirm |next "min_1-50"
step
#include "home_ValleyofStrength"
step
title + Mining (1-50)
label	"min_1-50"
#include trainer_Mining
.skillmax Mining,75 |tip You must be at least level 5.
step
#include "vendor_Mining"
.buy 1 Mining Pick##2901
step
'Skipping next part of guide |next "min_1-65_skill" |only if step:Find("+farming"):IsComplete()
'Proceeding to skill up |next |only if default
step
label	"farming"
map Durotar
path follow loose;loop
path	55.1,10.2	53.8,18.5	56.3,24.6
path	52.7,29.3	54.0,39.8	58.7,41.5
path	59.5,54.3	55.7,56.0	56.1,69.4
path	50.8,74.2	49.8,49.2	39.4,51.8
path	37.9,30.4	39.6,17.6
#include follow_path_mine
skill Mining,35
step
label	"min_1-65_skill"
#include "maincity_anvil"
.create Copper Bar##2657,Mining,50 |tip Keep all of the Copper Bars for Smelting later.
step
title + Mining (50-125)
label	"min_50-125"
#include trainer_Mining
.skillmax Mining,150
.learn Smelt Bronze##2659
.learn Smelt Tin##3304
step
'Skipping next part of guide |next "min_125-200" |only if step:Find("+farming"):IsComplete()
'Proceeding to skill up |next |only if default
step
label	"farming"
map Northern Stranglethorn
path	40.4,45.0	36.3,44.1	34.0,38.8
path	31.1,34.1	27.0,31.8	21.4,25.2
path	21.8,18.7	26.6,21.9	31.1,22.4
path	34.6,20.9	33.8,17.2	38.5,17.9
path	46.3,19.1	52.5,20.5	58.6,16.8
path	63.5,17.5	63.2,22.1	60.3,24.3
path	57.2,28.2	60.8,34.6	66.1,40.9
path	62.9,47.1	56.2,50.4	48.0,55.2
path	44.3,55.5	48.7,47.2	47.7,39.2
path	50.2,28.6	44.6,28.2	42.9,34.7
path	41.4,41.2
#include "follow_path_mine"
skill Mining,125
step
title + Mining (125-200)
label	"min_125-200"
#include trainer_Mining
.skillmax Mining,225
.learn Smelt Iron##3307
step
'Skipping next part of guide |next "+farm" |only if step:Find("+farming"):IsComplete()
'Proceeding to skill up |next |only if default
step
label	"farming"
map Western Plaguelands
path 42.6,80.9	39.3,79.9	36.1,77.2
path 33.2,72.6	30.2,69.6	29.3,64.5
path 33.5,63.9	32.5,59.9	31.2,55.5
path 37.1,54.4	38.7,51.6	43.8,49.7
path 48.0,47.8	45.0,41.3	45.0,36.1
path 44.2,31.6	49.9,28.9	54.3,26.4
path 54.8,33.7	51.6,40.2	50.2,45.8
path 54.7,48.9	60.0,52.2	66.3,43.9
path 68.8,45.9	67.4,52.5	65.6,59.7
path 61.4,62.0	63.3,64.8	72.4,59.7
path 80.7,77.4	73.0,83.5	64.4,84.0
path 58.0,82.1	53.1,74.7
#include "follow_path_mine"
skill Mining,150
step
label "farm"
'Skipping next part of guide |next "min_200-275" |only if step:Find("+farming"):IsComplete()
'Proceeding to skill up |next |only if default
step
label "farming"
map Burning Steppes
path	40.0,31.9	72.9,23.9	81.1,56.6
path	72.9,63.5	56.2,52.8	45.5,65.1
path	31.3,59.8	7.8,56.4	9.3,45.8
path	38.5,33.8
#include "follow_path_mine"
skill Mining,200
step
title + Mining 200-275
label "min_200-275"
goto Tanaris,51.0,29.0
.talk 8128
.skillmax Mining,300
.learn Smelt Thorium##16153
step
label "farming"
map Un'Goro Crater
path 37.5,18.9	43.5,14.1	49.9,18.5
path 62.7,17.9	70.4,26.8	76.3,51.0
path 70.7,71.0	62.1,83.7	52.2,85.9
path 37.7,83.1	27.9,65.8	24.0,52.5
path 26.7,36.4
#include "follow_path_mine"
skill Mining,275
step
title + Mining (275-350)
label	"min_275-350"
#include trainer_Mining
.skillmax Mining,375
.learn Smelt Fel Iron##29356
step
'Skipping next part of guide |next "farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to skill up |next |only if default
step
label	"farming"
map Hellfire Peninsula
path	69.3,47.5	74.5,38.7	68.2,37.7
path	62.0,31.0	58.0,32.8	54.0,26.7
path	46.0,29.3	34.1,29.1	32.0,34.5
path	38.5,38.2	35.7,40.7	33.4,49.8
path	30.3,48.6	32.5,43.3	28.5,39.3
path	26.5,45.5	22.6,45.1	18.0,38.3
path	12.5,36.1	17.9,46.3	11.8,41.9
path	12.0,47.0	06.2,49.5	15.4,62.4
path	20.3,52.9	24.0,61.1	21.2,62.7
path	28.1,80.8	27.7,69.5	30.5,72.8
path	30.3,59.9	34.8,66.6	37.7,53.3
path	46.9,46.3	49.3,49.5	60.3,48.6
path	60.8,52.8	52.1,52.7	47.2,57.7
path	45.9,75.5	33.5,89.6	33.1,92.6
path	49.1,77.5	44.6,86.2	55.5,82.8
path	58.7,78.8	56.5,72.3	65.8,63.6
path	67.1,71.7	63.0,73.3	65.8,77.9
path	68.7,77.6	71.0,71.7	70.1,68.6
path	65.0,59.8	65.6,56.0	75.0,63.9
path	78.4,80.2	80.7,77.5	77.3,63.7
path	72.7,60.2	71.5,53.1	68.3,52.0
#include "follow_path_mine"
skill Mining,325
step
label "farm2"
'Skipping next part of farming |next "min_350-425" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Nagrand
path 45.7,68.9	43.1,58.9	45.0,54.7
path 49.6,57.5	56.0,54.8	56.3,59.4
path 49.7,66.2	41.9,77.0	35.7,79.3
path 31.1,75.3	27.3,63.0	33.4,57.5
path 33.7,49.4	24.0,47.4	19.7,46.7
path 11.4,43.0	11.3,36.6	19.9,32.1
path 25.0,32.8	28.2,31.8	26.5,20.5
path 30.0,18.1	36.3,23.0	40.5,35.4
path 43.1,22.8	50.8,23.5	57.0,29.0
path 65.0,37.6	70.3,42.6	68.8,51.1
path 72.3,58.1	73.8,67.9	69.8,78.1
path 57.9,75.5	49.0,79.0
#include "follow_path_mine"
|tip Go into any caves you find as there is lots of ore.
skill Mining,350
step
title + Mining (350-425)
label	"min_350-425"
#include trainer_Mining
.skillmax Mining,450
.learn Smelt Adamantite##29358
.learn Smelt Cobalt##49252
.learn Smelt Eternium##29359
.learn Smelt Felsteel##29360
step
map Howling Fjord
path 83.0,44.8	78.1,39.4	72.7,38.3
path 71.0,31.8	75.3,22.9	70.2,8.3
path 63.2,13.7
path 61.4,23.6	57.7,18.3	51.4,14.2
path 45.5,13.3	38.1,18.9	31.1,10.9
path 28.9,10.3	21.7,12.8	19.4,23.5
path 24.2,27.4	27.6,22.6	27.3,30.8
path 38.1,29.0	47.6,32.7	53.0,31.9
path 63.5,37.1	65.5,48.7	66.9,62.7
path 64.4,67.8	64.4,72.4	67.9,76.5
path 71.3,73.6	72.5,67.9	77.3,67.2
path 77.2,60.8	74.9,55.3	79.1,50.4
#include "follow_path_mine"
skill Mining,400
step
map Sholazar Basin
path follow strict
path	77.9,63.8	78.7,52.4	74.3,48.6
path	58.9,53.9	63.5,44.4	66.7,40.3
path	65.1,30.5	58.9,27.8	58.9,21.1
path	40.8,20.8	48.0,33.2	52.7,39.9
path	47.8,43.1	46.8,39.7	39.6,32.8
path	32.9,32.8	23.3,48.4	33.5,46.6
path	35.8,49.9	40.0,50.9	38.0,54.9
path	30.5,55.3	20.8,56.1	20.4,76.6
path	22.6,78.5	22.5,84.0	34.2,78.4
path	33.8,73.4	33.0,67.9	40.9,70.1
path	34.5,88.9	50.9,88.8	51.5,82.1
path	46.0,60.9	55.5,66.5	58.7,88.2
path	62.3,74.5	63.6,84.4
#include "follow_path_mine"
skill Mining,425
step
title + Mining (425-525)
label "min_425-525"
#include "trainer_Mining"
.skillmax Mining,525
.learn Smelt Obsidium##84038
step
'Skipping next part of guide |next "farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to skill up |next |only if default
step
label	"farming"
map Mount Hyjal
path	67.2,29.1	61.1,36.7	54.5,17.1
path	41.2,20.5	42.9,27.5	49.6,25.5
path	46.6,35.6	40.5,33.6	39.9,29.4
path	34.9,27.5	35.0,21.7	32.3,28.8
path	35.0,35.6	31.1,40.4	25.7,40.6
path	28.7,35.7	24.3,35.8	25.7,29.8
path	14.7,38.8	13.6,31.6	9.4,36.4
path	17.6,46.5	12.9,46.5	15.5,52.2
path	20.7,60.2	21.5,56.8	23.3,61.5
path	30.3,55.2	27.6,55.0	27.7,51.2
path	34.1,46.8	34.1,55.2	37.5,54.9
path	36.0,51.0	40.3,51.6	41.5,63.3
path	38.9,65.5	36.4,58.6	32.8,61.8
path	35.2,63.5	32.8,66.6	31.3,90.4
path	36.6,95.5	50.8,82.1	51.8,75.1
path	60.6,82.5	59.8,73.0	56.5,69.8
path	58.9,66.4	53.6,66.8	49.6,51.1
path	59.7,56.3	55.5,56.8	62.8,60.0
path	64.5,50.9	67.5,50.6	69.8,56.0
path	75.9,69.6	75.7,63.6	80.2,67.2
path	84.3,64.9	88.1,48.5	84.2,47.5
path	78.5,53.3	84.2,54.5	82.1,60.9
path	72.9,57.9
#include "follow_path_mine"
skill Mining,475
step
'Skipping next part of guide |next "route2" |only if step:Find("+farm2"):IsComplete()
'Proceeding to skill up |next |only if default
step
label	"farm2"
map Twilight Highlands
path	71.4,50.3	54.0,37.6	46.2,48.5
path	56.4,45.1	61.5,50.4	50.1,58.2
path	61.2,75.4	53.6,86.0	38.8,86.6
path	34.2,71.9	32.1,57.6	24.5,56.9
path	30.0,42.8	26.9,28.7	32.3,27.1
path	31.5,40.1	38.6,41.2	39.6,30.4
path	39.0,19.7	46.2,20.1	53.8,24.8
path	61.5,32.4	68.5,37.9
#include "follow_path_mine"
skill Mining,525
step
label "route2"
'Redirecting to Mining finale |next "min_525" |only if skill("Mining")>=525 and skill("Mining")<600 and not ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Mining 525-600 |next "min_525-600" |only if skill("Mining")>=525 and skill("Mining")<600 and ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Mining non-owners |next "min_525-no-guide" |only if skill("Mining")>=525 and skill("Mining")<600 and _G.GetExpansionLevel()>=4 and not ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Mining finale |next "min_600" |only if default
step
label	"min_525"
'Congratulations, you are now a level 525 Miner!
|next "end"
step
label "min_525-no-guide"
.'Please purchase the upgrade Profession guide to see the content for MOP
|confirm |next "end"
|only if not ZGV.guidesets['ProfessionsHMoP']
step
label Pandarian_Mining_1-600
|next
#include "Pandarian_Mining_1-600"
step
label "min_525-600"
|next Profession Guides\\Mining\\Mining 525-600 Leveling Guide |only if ZGV.guidesets['ProfessionsHMoP']
step
label "min_600"
'Congratulations, you are now a Zen Master Miner!
|confirm |next "end"
step
label "end"
'You have reached the end of the guide
|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Mining with Smelting 1-600 Leveling Guide",[[
description This guide will walk you through leveling your Mining skill from 1-600 using Smelting.
author support@zygorguides.com
completion skill,Mining,600
condition suggested hasprof('Mining',1,600)
step
'This guide is for players who would prefer to level mining by buying ore from the auction house and smelting it themselves. If you would prefer to level by collecting the ore yourself around the world then use the Mining 1-600 guide.
.' Click here to continue |confirm
#include "profession_single_start",prof1="Mining"
step
#include "home_ValleyofStrength"
step
'Redirecting to Mining 1-75 |next "sm_1-75" |only if skill("Mining")<75
'Redirecting to Mining 55-155 |next "sm_75-125" |only if skill("Mining")>=75 and skill("Mining")<125
'Redirecting to Mining 155-215 |next "sm_125-225" |only if skill("Mining")>=125 and skill("Mining")<200
'Redirecting to Mining 200-275 |next "sm_200-275" |only if skill("Mining")>=200 and skill("Mining")<275
'Redirecting to Mining 275-355 |next "sm_275-350" |only if skill("Mining")>=275 and skill("Mining")<350
'Redirecting to Mining 355-425 |next "sm_350-425" |only if skill("Mining")>=350 and skill("Mining")<425
'Redirecting to Mining 425-500 |next "sm_425-500" |only if skill("Mining")>=425 and skill("Mining")<500
'Redirecting to Mining 500-600 |next "route2" |only if skill("Mining")>=500 and skill("Mining")<600
step
title + Mining w/Smelting (1-75)
label	"sm_1-75"
#include trainer_Mining
.skillmax Mining,75 |tip You must be at least level 5.
step
'Skipping next part of guide |next "create" |only if step:Find("+skill"):IsComplete()
'Proceeding to skill up |next |only if default
step
#include "auctioneer"
.buy 90 Copper Ore##2770
step
label	"skill"
#include maincity_anvil
.create Copper Bar##2657,Mining,90 total |n |tip Keep all of the Copper Bars for Smelting later.
.skill Mining,50
step
label	"create"
#include trainer_Mining
.learn Smelt Tin##3304
step
#include "auctioneer"
.buy 90 Tin Ore##2771
.buy 10 Silver Ore##2775
step
#include maincity_anvil
.create Tin Bar##3304,Mining,90 total |n |tip Keep all of the tin Bars for Smelting later.
.skill Mining,70
step
title + Mining W/Smelting (75-125)
label	"sm_75-125"
'Skipping next part of guide |next "farm" |only if step:Find("+skill"):IsComplete()
'Proceeding to skill up |next |only if default
step
#include trainer_Mining
.skillmax Mining,150
.learn Smelt Bronze##2659
.learn Smelt Silver##2658
step
label	"skill"
#include maincity_anvil
.create Bronze Bar##2659,Mining,180 total |n
.skill Mining,90
step
'Skipping next part of guide |next "farm1" |only if step:Find("+skill"):IsComplete()
'Proceeding to skill up |next |only if default
step
label	"skill"
#include maincity_anvil
.create Silver Bar##2658,Mining,10 total |n
.skill Mining,100
step
label	"farm1"
#include trainer_Mining
.learn Smelt Iron##3307
step
#include "auctioneer"
.buy 40 Iron Ore##2772
step
label	"skill"
#include maincity_anvil
.create Iron Bar##3307,Mining,40 total |n |tip Keep all the Iron Bars for smelting later.
.skill Mining,125
step
title + Mining w/Smelting (125-225)
label	"sm_125-225"
#include trainer_Mining
.skillmax Mining,225 |tip You must be level 10
step
'Skipping next part of guide |next "farm" |only if step:Find("+skill"):IsComplete()
'Proceeding to skill up |next |only if default
step
#include trainer_Mining
.learn Smelt Steel##3569
step
#include vendor_Mining
.buy 40 Coal##3857
step
label	"skill"
#include maincity_anvil
.create Steel Bar##3569,Mining,40 total |n
.skill Mining,135
step
label	"farm"
#include trainer_Mining
.learn Smelt Gold##3308
step
'Skipping next part of guide |next "farm1" |only if step:Find("+skill"):IsComplete()
'Proceeding to skill up |next |only if default
step
#include "auctioneer"
.buy 15 Gold Ore##2776
step
label	"skill"
#include maincity_anvil
.create Gold Bar##3308,Mining,15 total |n
.skill Mining,150
step
label	"farm1"
#include trainer_Mining
.learn Smelt Mithril##10097
step
'Skipping next part of guide |next "farm2" |only if step:Find("+skill"):IsComplete()
'Proceeding to skill up |next |only if default
step
#include "auctioneer"
.buy 80 Mithril Ore##3858
step
label	"skill"
#include maincity_anvil
.create Mithril Bar##10097,Mining,80 total |n
.skill Mining,190
step
label	"farm2"
#include "trainer_Mining"
.learn Smelt Truesilver##10098
step
#include "auctioneer"
.buy 10 Truesilver Ore##7911
step
#include "maincity_anvil"
.create Smelt Truesilver##10098,Mining,10 total |n
.skill Mining,200
step
title + Mining w/Smelting (225-275)
label	"sm_200-275"
#include trainer_Mining
.skillmax Mining,300 |tip You must be level 25
.learn Smelt Thorium##16153
step
#include "auctioneer"
.buy 150 Thorium Ore##10620
step
#include maincity_anvil
.create Thorium Bar##16153,Mining,150 total |n
.skill Mining,275
step
title + Mining w/Smelting (275-375)
label	"sm_275-350"
#include trainer_Mining
.skillmax Mining,375 |tip You must be level 40
.learn Smelt Fel Iron##29356
step
'Skipping next part of guide |next "farm" |only if step:Find("+skill"):IsComplete()
'Proceeding to skill up |next |only if default
step
#include "auctioneer"
.buy 300 Fel Iron Ore##23424
step
label	"skill"
#include maincity_anvil
.create Fel Iron Bar##29356,Mining,150 total |n
.skill Mining,325
step
label	"farm"
#include trainer_Mining
.learn Smelt Adamantite##29358
step
'Skipping next part of guide |next "sm_275-350_farm" |only if step:Find("+skill"):IsComplete()
'Proceeding to skill up |next |only if default
step
.buy 100 Adamantite Ore##23425
step
label	"skill"
#include maincity_anvil
.create Adamantite Bar##29358,Mining,50 total |n
.skill Mining,340
step
label	"sm_275-350_farm"
map Nagrand
path 45.7,68.9	43.1,58.9	45.0,54.7
path 49.6,57.5	56.0,54.8	56.3,59.4
path 49.7,66.2	41.9,77.0	35.7,79.3
path 31.1,75.3	27.3,63.0	33.4,57.5
path 33.7,49.4	24.0,47.4	19.7,46.7
path 11.4,43.0	11.3,36.6	19.9,32.1
path 25.0,32.8	28.2,31.8	26.5,20.5
path 30.0,18.1	36.3,23.0	40.5,35.4
path 43.1,22.8	50.8,23.5	57.0,29.0
path 65.0,37.6	70.3,42.6	68.8,51.1
path 72.3,58.1	73.8,67.9	69.8,78.1
path 57.9,75.5	49.0,79.0
#include "follow_path_mine"
|tip Go into any caves you find as there is lots of ore.
skill Mining,350
step
title + Mining w/Smelting (350-475)
label	"sm_350-425"
#include trainer_Mining
.skillmax Mining,450 |tip You must be level 50
.learn Smelt Cobalt##49252
step
'Skipping next part of guide |next "farm" |only if step:Find("+skill"):IsComplete()
'Proceeding to skill up |next |only if default
step
label	"auctioneer"
.buy 60 Cobalt Ore##36909
step
label	"skill"
#include "maincity_anvil"
.create Cobalt Bar##49252,Mining,60 total |n
.skill Mining,370
step
label	"farm"
map Howling Fjord
path 83.0,44.8	78.1,39.4	72.7,38.3
path 71.0,31.8	75.3,22.9	70.2,8.3
path 63.2,13.7
path 61.4,23.6	57.7,18.3	51.4,14.2
path 45.5,13.3	38.1,18.9	31.1,10.9
path 28.9,10.3	21.7,12.8	19.4,23.5
path 24.2,27.4	27.6,22.6	27.3,30.8
path 38.1,29.0	47.6,32.7	53.0,31.9
path 63.5,37.1	65.5,48.7	66.9,62.7
path 64.4,67.8	64.4,72.4	67.9,76.5
path 71.3,73.6	72.5,67.9	77.3,67.2
path 77.2,60.8	74.9,55.3	79.1,50.4
#include "follow_path_mine"
skill Mining,400
step
'Skipping next part of guide |next "exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to skill up |next |only if default
step
label	"farming"
map Sholazar Basin
path follow strict
path	77.9,63.8	78.7,52.4	74.3,48.6
path	65.1,30.5	58.9,27.8	58.9,21.1
path	40.8,20.8	32.9,32.8	35.8,40.3
path	33.8,40.6	33.7,35.4	29.7,38.5
path	23.3,48.4	20.8,56.1	20.4,76.6
path	22.6,78.5	22.5,84.0	34.5,88.9
path	60.3,88.8	59.7,81.3	51.5,82.1
path	48.5,76.8	62.3,74.5	63.6,84.4
path	74.2,56.1	69.4,58.3	64.2,53.5
path	75.1,54.0	74.3,48.6	63.5,44.4
path	66.7,40.3	63.7,34.6	58.5,33.3
path	59.4,37.3	48.0,33.2	52.7,39.9
path	47.8,43.1	46.8,39.7	39.6,32.8
path	39.9,39.5	33.5,46.6	35.8,49.9
path	40.0,50.9	38.0,54.9	30.5,55.3
path	35.1,59.5	28.7,61.7	35.8,67.6
path	33.8,73.4	34.2,78.4	43.6,76.6
path	39.3,75.5	40.9,70.1	46.0,60.9
path	47.4,66.9	51.5,62.1	55.5,66.5
path	56.5,57.1	58.9,53.9	60.0,60.2
path	57.2,68.1	63.0,67.1	62.8,62.3
path	71.3,63.8
#include "follow_path_mine"
skill Mining,425
step
title + Mining w/Smelting (425-500)
label	"sm_425-500"
#include "trainer_Mining"
.skillmax Mining,525 |tip You must be level 75
.learn Smelt Obsidium##84038
step
'Skipping next part of guide |next "sm_425-525_ele" |only if step:Find("+skill"):IsComplete()
'Proceeding to skill up |next |only if default
step
#include "auctioneer"
.buy 300 Obsidium Ore##53038
step
label	"skill"
#include "maincity_anvil"
.create Smelt Obsidium##84038,Mining,150 total |n
.skill Mining,475
step
label	"sm_425-525_ele"
#include "trainer_Mining"
.learn Smelt Elementium##74530
step
'Skipping next part of guide |next "sm_425-525_hard" |only if step:Find("+skill"):IsComplete()
'Proceeding to skill up |next |only if default
step
#include "auctioneer"
.buy 280 Elementium Ore##52185
step
label	"skill"
#include "maincity_anvil"
.create Smelt Elementium##74530,Mining,75 total |n
.skill Mining,500
step
label "route2"
'Redirecting to Mining 500-525 |next "sm_500-525" |only if skill("Mining")>=500 and skill("Mining")<525 and not ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Mining finale |next "sm_525" |only if skill("Mining")>=525 and skill("Mining")<600 and not ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Mining 500-600 |next "sm_500-600" |only if skill("Mining")>=500 and skill("Mining")<600 and ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Mining finale |next "sm_600" |only if default
step
label	"sm_500-525_skill"
#include "maincity_anvil"
.create Smelt Hardened Elementium##74537,Mining,80 total |n
.skill Mining,525
step
'Skipping next part of guide |next "sm_525" |only if step:Find("+farming"):IsComplete()
'Proceeding to skill up |next |only if default
step
label	"sm_500-525_farm"
label	"farming"
map Twilight Highlands
path 71.4,50.3	54.0,37.6	41.3,56.6
path 37.5,58.2	24.5,56.9	30.0,42.8
path 26.9,28.7	32.3,27.1	31.5,40.1
path 38.6,41.2	39.6,30.4	39.0,19.7
path 46.2,20.1	53.8,24.8	61.5,32.4
path 68.5,37.9
#include "follow_path_mine"
skill Mining,525
step
label	"sm_525"
'Congratulations, you are now a level 525 Miner!
'In order to complete this professions to level 600, please purchase the Mists of Pandaria upgrade of this guide.
|confirm
|next "end"
step
label "sm_500-600"
.'Please purchase the upgrade Profession guide to see the content for MOP |only if not ZGV.guidesets['ProfessionsHMoP']
|next Profession Guides\\Mining\\Mining with Smelting 500-600 Leveling Guide
step
label "sm_600"
'Congratulations, you are now a Zen Master Miner!
step
label "end"
'You have reached the end of the guide
|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Farming Guides\\Mining",[[
description This guide will allow you to farm the various ores.
author support@zygorguides.com
step "start"
'Click here to farm Copper |confirm |next "copper"
'Click here to farm Tin |confirm |next "tin"
'Click here to farm Iron |confirm |next "iron"
'Click here to farm Mithril |confirm |next "mithril"
'Click here to farm Thorium |confirm |next "thorium"
'Click here to farm Fel Iron |confirm |next "fel_iron"
'Click here to farm Adamantite |confirm |next "adamantite"
'Click here to farm Cobalt |confirm |next "cobalt"
'Click here to farm Saronite |confirm |next "saronite"
'Click here to farm Obsidium |confirm |next "obsidium"
'Click here to farm Elementium |confirm |next "elementium"
'Click here to farm Ghost Iron |confirm |next "ghost_iron" |only if ZGV.guidesets['ProfessionsHMoP']
step "copper"
map Durotar
path follow loose;loop;ants straight
path	38.9,16.0	37.5,21.1	35.9,34.4
path +	36.8,52.3	44.2,49.5	50.6,46.3
path +	50.7,63.3	54.9,67.0	56.2,49.8
path +	55.0,36.9	53.0,29.7	57.9,30.0
path +	54.8,19.0	50.0,17.2	44.2,23.6
#include "follow_path_mine"
.'Click here to pick a different ore. |confirm |next "start"
step "tin"
map Ashenvale
path	82.0,50.2	78.8,44.9	67.1,45.8
path +	61.9,42.6	59.5,37.5	54.5,37.1
path +	53.5,48.2	49.5,54.7	45.5,47.5
path +	41.8,40.3	40.1,32.4	38.2,30.3
path +	34.6,33.3	33.6,28.5	33.0,22.5
path +	25.4,19.3	21.0,19.1	16.6,15.7
path +	14.1,13.1	17.0,23.7	17.3,28.2
path +	16.5,36.6	19.5,45.7	18.8,55.4
path +	23.4,50.2	25.4,54.2	25.7,60.4
path +	29.9,58.1	31.8,64.7	33.1,70.3
path +	38.8,62.7	42.0,64.2	55.6,68.4
path +	62.7,64.6	67.0,69.1	75.6,69.2
path +	82.4,71.8	86.5,79.1	90.1,76.6
#include "follow_path_mine"
.'Click here to pick a different ore. |confirm |next "start"
step "iron"
map Feralas
path	74.9,48.6	84.0,45.6
path	84.9,39.9	71.5,34.7
path	54.3,50.1	48.6,44.0	49.7,34.9
path	51.6,33.8	50.9,26.2	51.3,19.0
path	54.9,8.1	49.4,4.0	40.0,7.7
path	37.1,12.1	38.1,17.6	37.0,25.6
path	45.1,26.2	46.3,38.6	50.3,52.7
path	47.9,55.4	46.9,64.1	54.8,53.9
path	55.2,62.6	52.9,66.2	53.6,73.7
path	60.8,75.8	62.0,55.0	63.7,61.0
path	66.4,51.3	68.2,51.3
path	68.1,61.5	71.6,65.1	77.2,62.1
#include "follow_path_mine"
.'Click here to pick a different ore. |confirm |next "start"
step "mithril"
map Felwood
path	63.5,24.5	62.6,6.9	55.7,18.6
path	42.5,17.1	42.0,24.1	39.9,22.1
path	41.0,27.5	38.6,37.4	38.3,55.6
path	40.7,59.8	35.0,59.1	41.8,62.6
path	36.3,66.8	40.7,72.9	37.8,73.5
path	40.3,77.4	39.1,79.3	43.8,81.5
path	39.0,81.6	42.3,87.1	45.1,84.6
path	45.1,89.7	48.1,92.8	51.2,86.1
path	52.5,88.8	57.7,86.5	58.6,84.8
path	55.9,81.1	49.6,76.6	43.5,60.9
path	42.9,50.8	52.9,31.6	59.6,27.2
#include "follow_path_mine"
.'Click here to pick a different ore. |confirm |next "start"
step "thorium"
map Winterspring
path	52.8,46.2	58.3,41.2	59.7,45.0
path	59.9,21.4	58.3,18.4	54.5,21.2
path	45.9,13.1	44.8,15.3	44.8,29.0
path	47.8,33.2	49.8,42.8	39.5,51.0
path	33.5,47.2	30.2,48.6	31.5,53.5
path	28.4,51.6	27.3,48.0	23.0,45.7
path	22.3,62.4	25.3,61.3	25.9,58.1
path	41.2,57.7	42.1,53.2	46.1,60.8
path	51.0,61.4	53.7,63.6	51.2,69.9
path	55.2,68.9	56.8,81.1	59.0,80.3
path	59.0,85.3	62.0,87.6	64.1,81.8
path	62.2,77.7	62.3,73.3	67.0,68.5
path	67.1,60.1
#include "follow_path_mine"
.'Click here to pick a different ore. |confirm |next "start"
step "fel_iron"
map Hellfire Peninsula
path	69.3,47.5	74.5,38.7	68.2,37.7
path	62.0,31.0	58.0,32.8	54.0,26.7
path	46.0,29.3	34.1,29.1	32.0,34.5
path	38.5,38.2	35.7,40.7	33.4,49.8
path	30.3,48.6	32.5,43.3	28.5,39.3
path	26.5,45.5	22.6,45.1	18.0,38.3
path	12.5,36.1	17.9,46.3	11.8,41.9
path	12.0,47.0	06.2,49.5	15.4,62.4
path	20.3,52.9	24.0,61.1	21.2,62.7
path	28.1,80.8	27.7,69.5	30.5,72.8
path	30.3,59.9	34.8,66.6	37.7,53.3
path	46.9,46.3	49.3,49.5	60.3,48.6
path	60.8,52.8	52.1,52.7	47.2,57.7
path	45.9,75.5	33.5,89.6	33.1,92.6
path	49.1,77.5	44.6,86.2	55.5,82.8
path	58.7,78.8	56.5,72.3	65.8,63.6
path	67.1,71.7	63.0,73.3	65.8,77.9
path	68.7,77.6	71.0,71.7	70.1,68.6
path	65.0,59.8	65.6,56.0	75.0,63.9
path	78.4,80.2	80.7,77.5	77.3,63.7
path	72.7,60.2	71.5,53.1	68.3,52.0
#include "follow_path_mine"
.'Click here to pick a different ore. |confirm |next "start"
step "adamantite"
map Nagrand
path	72.7,64.7	74.3,60.5	69.1,48.6
path	72.3,43.1	66.1,32.3	57.7,30.8
path	59.5,27.3	49.3,24.1	47.1,20.2
path	39.6,20.4	28.2,12.1	25.7,16.5
path	26.8,23.6	30.9,21.9	27.9,25.3
path	27.5,32.1	23.2,27.8	7.1,39.9
path	25.2,61.1	31.9,81.9	41.8,81.8
path	43.5,73.7	57.4,78.3	43.0,62.2
path	32.2,60.3	29.2,54.1	34.0,52.6
path	29.7,45.7	34.1,44.3	35.5,47.3
path	38.8,36.9	45.5,43.9	42.4,50.9
path	48.0,57.5	51.5,55.6	60.5,56.9
path	56.7,64.0	70.1,83.3	69.8,72.5
#include "follow_path_mine"
.'Click here to pick a different ore. |confirm |next "start"
step "cobalt"
map Howling Fjord
path 83.0,44.8	78.1,39.4	72.7,38.3
path 71.0,31.8	75.3,22.9	70.2,8.3
path 63.2,13.7
path 61.4,23.6	57.7,18.3	51.4,14.2
path 45.5,13.3	38.1,18.9	31.1,10.9
path 28.9,10.3	21.7,12.8	19.4,23.5
path 24.2,27.4	27.6,22.6	27.3,30.8
path 38.1,29.0	47.6,32.7	53.0,31.9
path 63.5,37.1	65.5,48.7	66.9,62.7
path 64.4,67.8	64.4,72.4	67.9,76.5
path 71.3,73.6	72.5,67.9	77.3,67.2
path 77.2,60.8	74.9,55.3	79.1,50.4
#include "follow_path_mine"
.'Click here to pick a different ore. |confirm |next "start"
step "saronite"
map Sholazar Basin
path	28.7,61.7	35.8,67.6
path	33.8,73.4	34.2,78.4	43.6,76.6
path	39.3,75.5	40.9,70.1	46.0,60.9
path	47.4,66.9	51.5,62.1	55.5,66.5
path	56.5,57.1	58.9,53.9	60.0,60.2
path	57.2,68.1	63.0,67.1	62.8,62.3
path	71.3,63.8
path	77.9,63.8	78.7,52.4	74.3,48.6
path	65.1,30.5	58.9,27.8	58.9,21.1
path	40.8,20.8	32.9,32.8	35.8,40.3
path	33.8,40.6	33.7,35.4	29.7,38.5
path	23.3,48.4	20.8,56.1	20.4,76.6
path	22.6,78.5	22.5,84.0	34.5,88.9
path	60.3,88.8	59.7,81.3	51.5,82.1
path	48.5,76.8	62.3,74.5	63.6,84.4
path	74.2,56.1	69.4,58.3	64.2,53.5
path	75.1,54.0	74.3,48.6	63.5,44.4
path	66.7,40.3	63.7,34.6	58.5,33.3
path	59.4,37.3	48.0,33.2	52.7,39.9
path	47.8,43.1	46.8,39.7	39.6,32.8
path	39.9,39.5	33.5,46.6	35.8,49.9
path	40.0,50.9
path	38.0,54.9	30.5,55.3
path	35.1,59.5
#include "follow_path_mine"
.'Click here to pick a different ore. |confirm |next "start"
step "obsidium"
map Mount Hyjal
path	67.2,29.1	61.1,36.7	54.5,17.1
path	41.2,20.5	42.9,27.5	49.6,25.5
path	46.6,35.6	40.5,33.6	39.9,29.4
path	34.9,27.5	35.0,21.7	32.3,28.8
path	35.0,35.6	31.1,40.4	25.7,40.6
path	28.7,35.7	24.3,35.8	25.7,29.8
path	14.7,38.8	13.6,31.6	9.4,36.4
path	17.6,46.5	12.9,46.5	15.5,52.2
path	20.7,60.2	21.5,56.8	23.3,61.5
path	30.3,55.2	27.6,55.0	27.7,51.2
path	34.1,46.8	34.1,55.2	37.5,54.9
path	36.0,51.0	40.3,51.6	41.5,63.3
path	38.9,65.5	36.4,58.6	32.8,61.8
path	35.2,63.5	32.8,66.6	31.3,90.4
path	36.6,95.5	50.8,82.1	51.8,75.1
path	60.6,82.5	59.8,73.0	56.5,69.8
path	58.9,66.4	53.6,66.8	49.6,51.1
path	59.7,56.3	55.5,56.8	62.8,60.0
path	64.5,50.9	67.5,50.6	69.8,56.0
path	75.9,69.6	75.7,63.6	80.2,67.2
path	84.3,64.9	88.1,48.5	84.2,47.5
path	78.5,53.3	84.2,54.5	82.1,60.9
path	72.9,57.9
#include "follow_path_mine"
.'Click here to pick a different ore. |confirm |next "start"
step "elementium"
map Twilight Highlands
path 71.4,50.3	54.0,37.6	41.3,56.6
path 37.5,58.2	24.5,56.9	30.0,42.8
path 26.9,28.7	32.3,27.1	31.5,40.1
path 38.6,41.2	39.6,30.4	39.0,19.7
path 46.2,20.1	53.8,24.8	61.5,32.4
path 68.5,37.9
#include "follow_path_mine"
.'Click here to pick a different ore. |confirm |next "start"
step "ghost_iron"
map Krasarang Wilds
path	70.3,9.7	66.1,18.5	64.5,21.5
path	61.6,21.9	52.0,30.2	40.2,27.5
path	38.0,28.1	33.4,32.1	33.0,28.9
path	28.2,37.9	18.4,33.3	14.8,41.8
path	15.8,47.6	13.1,52.8	9.8,54.9
path	13.6,64.2	32.3,80.1	35.6,69.0
path	39.5,77.9	41.7,89.1	46.3,94.4
path	48.3,92.3	50.0,90.5	45.6,68.2
path	44.5,65.3	48.3,45.4	55.9,34.3
path	58.6,36.7	65.1,35.6	69.2,28.7
path	74.8,24.3	75.5,35.0	77.7,34.9
path	79.8,17.9	82.3,17.8	85.3,21.4
path	86.8,26.6	88.2,23.8	85.0,9.9
#include "follow_path_mine"
.'Click here to pick a different ore. |confirm |next "start"
only if ZGV.guidesets['ProfessionsHMoP']
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Farming Guides\\Herbalism",[[
description This guide will allow you to farm the various herbs.
author support@zygorguides.com
step "start"
'Click here for Eastern Kingdoms and Kalimdor herbs |confirm |next "ek_kal"
'Click here for Outlands herbs |confirm |next "outland"
'Click here for Northrend herbs |confirm |next "north"
'Click here for Cataclysm herbs |confirm |next "cata"
'Click here for Pandaria herbs |confirm |next "panda" |only if ZGV.guidesets['ProfessionsHMoP']
step "ek_kal"
'Click here to farm Peacebloom and Silverleaf |confirm |next "peace_silver"
'Click here to farm Mageroyal and Briarthorn |confirm |next "mage_briar"
'Click here to farm Stranglekelp |confirm |next "strangle"
'Click here to farm Kingsblood |confirm |next "king"
'Click here to farm Liferoot |confirm |next "life"
'Click here to farm Goldthorn |confirm |next "gold"
'Click here to farm Wild Steelbloom |confirm |next "wild"
'Click here to farm Khadgar's Whisker and Blindweed |confirm |next "khadgar_blind"
'Click here to farm Sungrass |confirm |next "sun"
'Click here to farm Gromsblood |confirm |next "groms"
'Click here to farm Golden Sansam |confirm |next "goldsan"
.'Click here to pick a different herb. |confirm |next "start"
step "outland"
'Click here to farm Felweed |confirm |next "felweed"
'Click here to farm Terocone and Dreaming Glory |confirm |next "tero_dream"
'Click here to farm Netherbloom |confirm |next "nether"
.'Click here to pick a different herb. |confirm |next "start"
step "north"
'Click here to farm Goldclover and Deadnettle |confirm |next "gold_dead"
'Click here to farm Talandra's Rose |confirm |next "talandra"
'Click here to farm Tiger Lily |confirm |next "tiger"
'Click here to farm Icethorn and Lichbloom |confirm |next "ice_lich"
.'Click here to pick a different herb. |confirm |next "start"
step "cata"
'Click here to farm Cinderbloom and Stormvine |confirm |next "cinder_storm"
'Click here to farm Azshara's Veil |confirm |next "azshara"
'Click here to farm Heartblossom |confirm |next "heart"
'Click here to farm Whiptail |confirm |next "whip"
'Click here to farm Twilight Jasmine |confirm |next "twilight"
.'Click here to pick a different herb. |confirm |next "start"
step "panda"
'Click here to farm Green Tea Leaf |confirm |next "green"
'Click here to farm Fool's Cap |confirm |next "fool"
'Click here to farm Snow Lily |confirm |next "snow"
.'Click here to pick a different herb. |confirm |next "start"
only if ZGV.guidesets['ProfessionsHMoP']
step "peace_silver"
map Durotar
path follow loose;loop;ants straight
path	46.2,17.1	38.8,16.2	38.7,22.1
path	37.9,30.4	48.5,32.8	51.4,36.5
path	51.7,52.0	53.6,62.4	55.6,69.7
path	60.9,69.1	60.7,58.0	57.6,46.9
path	55.0,32.4	57.8,26.1	53.4,12.5
#include "follow_path_herbs"
.'Click here to pick a different herb. |confirm |next "start"
step "mage_briar"
map Hillsbrad Foothills
path 31.8,62.6		33.9,54.0		29.7,44.1
path 35.5,37.8		34.5,28.2		39.5,21.0
path 44.2,8.3		51.3,14.0		57.5,20.9
path 56.1,34.3		49.9,46.2		41.2,46.6
path 40.1,55.0		41.3,67.4		31.8,71.9
#include "follow_path_herbs"
.'Click here to pick a different herb. |confirm |next "start"
step "strangle"
map The Cape of Stranglethorn
path 44.0,86.1		50.6,80.7		59.4,52.6
path 51.7,8.0		40.7,17.1		39.6,24.9
path 32.4,32.9		 41.5,41.0		35.1,53.2
path 36.8,56.2
#include follow_path_herbs
.'Click here to pick a different herb. |confirm |next "start"
step "king"
map Western Plaguelands
path 31.8,59.3	43.5,53.2	45.9,44.7
path 45.2,35.2	49.5,35.1	49.5,35.1
path 51.0,47.4	61.8,52.0	67.2,44.5
path 63.6,56.0	56.6,60.1	52.6,67.5
path 46.4,59.2	33.7,62.7
#include follow_path_herbs
.'Click here to pick a different herb. |confirm |next "start"
step "life"
map Eastern Plaguelands
path 72.7,57.6		71.8,64.4		64.7,68.6
path 58.9,76.7		51.2,72.0		44.4,68.7
path 38.6,66.5		35.8,60.9		44.5,51.6
path 50.3,42.7		56.8,46.4		66.6,46.5
#include follow_path_herbs
tip They are found around the small lake.
.'Click here to pick a different herb. |confirm |next "start"
step "gold"
map Arathi Highlands
path	43.3,39.0	57.6,29.0	70.6,28.6
path	73.6,31.7	50.7,74.5	41.0,80.2
path	28.7,67.9	9.0,70.2	19.9,34.9
path	29.1,48.4
#include follow_path_herbs
tip As you move, cling to the edges of the mountain.
.'Click here to pick a different herb. |confirm |next "start"
step "wild"
map Northern Stranglethorn
path 64.2,25.4		63.9,39.4		56.2,43.2
path 42.5,43.9		35.9,32.9		31.5,37.2
path 23.1,32.3		17.4,24.1
#include follow_path_herbs
.'Click here to pick a different herb. |confirm |next "start"
step "khadgar_blind"
map Feralas
path 73.0,42.0		74.4,35.2		70.5,37.1
path 67.3,45.9		62.5,51.2		55.7,47.6
path 49.5,41.4		50.2,32.1		49.4,24.1
path 51.4,14.4		53.8,08.6		49.5,06.2
path 48.9,11.7		42.4,08.8		37.8,15.3
path 44.9,23.7		47.7,43.3		53.2,48.3
path 54.8,53.6		56.0,60.1		55.2,66.6
path 58.6,64.7		64.4,61.5		63.8,53.6
path 67.9,51.0		69.0,60.1		71.4,60.0
path 72.1,57.3		77.8,56.6		77.1,48.2
path 73.3,50.2
#include follow_path_herbs
.'Click here to pick a different herb. |confirm |next "start"
step "sun"
map Thousand Needles
path  7.1,24.1 	 9.0,31.2	 9.3,42.2
path 16.6,44.5	22.3,48.3	26.1,53.0
path 31.0,56.3	35.5,59.1	40.3,62.1
path 44.6,63.4	49.8,63.0	58.6,63.4
path 66.0,70.9	64.3,79.4	65.1,91.9
path 77.8,94.3	84.8,91.4	89.8,85.3
path 94.5,71.8	93.9,58.0	90.8,52.2
path 86.2,49.2	75.0,47.7	72.3,49.2
path 54.8,41.3
#include follow_path_herbs
.'Click here to pick a different herb. |confirm |next "start"
step "groms"
map Felwood
path 50.5,80.9		47.6,75.8		45.4,71.4
path 44.9,66.4		42.9,58.3		43.6,52.1
path 45.2,42.1		49.6,33.6		55.3,24.8
path 57.5,15.5		54.3,14.1		42.7,21.7
path 40.0,37.5		40.0,46.5		39.6,56.9
path 39.1,66.2		38.9,71.3		42.7,84.7
#include follow_path_herbs
.'Click here to pick a different herb. |confirm |next "start"
step "goldsan"
map Swamp of Sorrows
path   17.6,52.9		21.6,54.6		30.9,60.7
path 39.4,56.9		51.7,59.6		64.5,67.3
path 73.3,81.9		82.0,76.0		85.3,62.6
path 87.6,39.9		84.9,31.2		80.1,20.6
path 66.5,22.7		56.8,31.9		47.0,36.0
path 36.1,39.8		26.9,42.9
#include follow_path_herbs
.'Click here to pick a different herb. |confirm |next "start"
step "felweed"
map Hellfire Peninsula
path 80.6,79.9		73.3,67.0		68.6,76.9
path 56.1,71.6		48.4,75.2		40.7,84.5
path 36.6,67.4		32.9,65.6		28.0,78.7
path 22.9,67.5		13.7,63.0		13.5,38.7
path 23.8,44.6		30.5,33.1		37.8,30.8
path 55.8,31.1		67.1,27.3
#include follow_path_herbs
.'Click here to pick a different herb. |confirm |next "start"
step "tero_dream"
map Terokkar Forest
path 34.4,8.0 		37.5,16.1		41.6,19.9
path 44.5,11.5		51.0,21.0		48.4,26.9
path 60.2,22.5		73.1,45.3		61.5,48.6
path 54.0,37.1		48.0,33.5		39.0,34.8
path 39.2,44.4		47.3,50.0		47.0,79.8
path 33.5,76.9		19.6,77.8		21.5,60.7
path 31.4,39.9		37.4,30.1
#include follow_path_herbs
.'Click here to pick a different herb. |confirm |next "start"
step "nether"
map Netherstorm
path 31.5,51.4		25.6,63.5		19.5,67.7
path 20.3,77.1		40.2,77.2		46.2,82.6
path 48.0,86.9		58.9,88.8		61.4,79.4
path 51.6,75.7		46.0,72.1		34.5,55.8
path 40.1,52.9		50.2,69.0		67.1,60.7
path 50.8,54.8		46.5,47.1		55.0,39.9
path 58.5,47.2		62.7,50.3		73.4,40.5
path 73.2,35.2		62.1,30.5		55.6,31.6
path 49.8,35.9		48.8,25.5		57.1,24.3
path 55.5,17.3		49.7,17.4		48.9,12.5
path 44.9,19.8		42.5,16.2		39.5,15.7
path 35.7,19.8		32.1,29.2		38.5,42.4
path 31.1,38.1		23.5,35.4		22.9,44.1
path 30.2,43.3
#include follow_path_herbs
.'Click here to pick a different herb. |confirm |next "start"
step "gold_dead"
map Howling Fjord
path	70.1,47.3	75.5,50.8
path	80.5,46.2	76.3,42.8	70.3,40.5
path	66.5,33.5	70.5,32.4	73.6,26.7
path	69.8,19.2	65.8,26.8	61.8,28.5
path	58.5,22.7	50.2,16.6	48.7,21.2
path	26.5,7.9	29.2,12.0
path	23.8,14.0	26.8,14.5
path	27.2,20.8	29.0,22.2	27.1,29.6
path	31.3,33.3	34.8,34.1	41.7,34.2
path	42.1,27.7	46.3,31.5	47.1,29.0
path	54.1,32.5	49.0,35.8	58.1,37.0
path	58.3,40.1	43.3,44.1
path	40.9,40.2	37.0,39.9	37.0,44.9
path	34.9,46.2	46.4,54.3
path	45.9,50.2	51.1,48.3	59.5,51.6
path	59.0,55.6	45.1,59.4
path	48.7,62.7	56.9,67.1
path	46.8,71.6	52.8,71.5	53.4,76.5
path	60.0,76.8	62.6,80.5	64.8,67.6
path	67.9,59.7	65.8,72.5	67.1,74.9
path	69.5,74.5	70.6,66.1	76.4,67.9
#include follow_path_herbs
.'Click here to pick a different herb. |confirm |next "start"
step "talandra"
map Zul'Drak
path 21.3,84.1		31.2,68.2		39.3,63.7
path 29.7,52.6		37.1,40.8		43.6,46.7
path 43.0,62.9		50.7,62.4		58.2,73.5
path 52.2,83.3		39.5,87.0
#include follow_path_herbs
.'Click here to pick a different herb. |confirm |next "start"
step "tiger"
map Sholazar Basin
path	68.7,66.6	69.4,68.5	71.0,70.3
path	69.1,73.6	68.1,70.1	65.3,70.5
path	67.1,75.2	65.3,75.6	61.5,71.2
path	65.1,79.5	62.9,83.5	59.2,72.5
path	57.5,83.3	60.1,85.3	51.6,86.5
path	43.6,75.3	47.9,73.9	50.5,62.6
path	47.9,60.1	46.2,63.1	46.9,65.5
path	43.1,62.3	41.3,67.5	37.9,63.6
path	37.7,66.2	29.8,66.8	31.9,70.1
path	31.1,71.1	43.7,71.0	40.1,76.5
path	43.3,77.4	42.5,83.0	41.0,83.9
path	41.9,86.5	40.8,87.8	37.5,83.3
path	35.2,87.1	35.2,83.4	28.8,84.8
path	28.5,79.5	30.5,75.7	28.5,75.5
path	26.6,77.6	21.6,63.7	22.4,60.3
path	32.7,64.5	32.4,60.4	29.1,61.7
path	32.7,64.5	32.4,60.4	29.1,61.7
path	32.7,64.5	32.4,60.4	29.1,61.7
path	25.3,59.0	21.5,56.3	25.7,55.9
path	32.0,41.7	31.2,55.2	28.7,53.5
path	28.5,60.1	35.2,60.7	35.5,58.7
path	38.2,60.2	38.6,55.5	41.6,56.2
path	41.2,58.8	43.5,59.5	49.5,52.3
path	47.6,49.6	44.6,49.1	46.8,52.1
path	45.5,51.6	39.6,35.8	33.9,31.6
path	38.5,29.6	33.8,24.4	35.4,20.9
path	40.6,26.0	39.9,21.1	43.9,23.5
path	56.5,31.5	62.7,33.9	57.6,41.3
path	59.3,42.1	59.6,45.1	57.7,47.2
path	53.5,44.0	50.5,54.2	52.3,56.8
path	56.6,54.5	55.6,49.9	64.2,46.4
path	63.9,48.9
#include follow_path_herbs
.'Click here to pick a different herb. |confirm |next "start"
step "ice_lich"
map The Storm Peaks
path	36.8,86.1	40.3,87.9	37.7,94.3
path	36.6,89.0	32.9,93.8	32.5,86.9
path	31.4,83.1	40.0,82.3	38.4,80.8
path	39.4,79.2	43.5,78.0	42.6,75.6
path	45.4,77.1	45.6,79.1	46.6,78.9
path	47.0,77.2	49.0,78.4	48.5,73.3
path	51.4,75.6	52.2,69.5	58.3,72.0
path	54.3,66.2	58.6,58.3	56.8,66.0
path	60.1,61.5	62.9,62.7	63.0,59.6
path	61.8,58.3	64.2,49.5	64.1,54.1
path	65.0,58.8	66.9,58.5	65.6,63.6
path	72.5,65.0	71.8,56.0	74.0,49.9
path	70.9,47.1	72.8,53.1	70.0,49.9
path	70.9,53.0	68.8,54.7	68.6,47.7
path	66.4,48.7	65.6,40.6	63.1,41.7
path	61.8,44.9	57.4,40.9	59.9,45.0
path	60.9,49.5	56.7,48.5	56.3,52.3
path	51.1,48.1	50.9,51.9	52.5,53.2
path	52.0,59.0	50.2,61.5	50.1,58.6
path	48.6,60.9	47.5,54.4	47.7,63.6
path	46.6,56.7	42.8,53.0	42.0,54.1
path	44.0,59.3	43.6,62.0	42.0,60.3
path	40.3,64.5	39.2,61.9	36.8,64.3
path	39.0,52.7	38.8,48.4	47.7,36.0
path	34.0,38.9	37.2,43.7	34.5,42.2
path	33.5,44.9	35.7,47.1	32.1,50.5
path	29.4,50.5	29.4,50.5	29.2,37.4
path	22.2,36.7	22.3,41.1	25.6,41.6
path	24.3,47.1	28.6,53.1	26.8,55.8
path	21.6,55.7	22.6,62.8	24.5,62.0
path	27.3,58.4	27.8,59.9	25.8,67.2
path	27.2,67.1	27.2,69.7	24.6,72.5
path	26.6,73.1	28.4,70.8	29.4,64.3
path	30.7,64.5	29.9,70.9	31.2,70.6
path	32.8,74.5	35.3,73.5	32.8,66.9
path	33.5,65.5	37.0,67.7	36.3,72.7
path	38.2,76.9	38.9,75.1	40.4,77.6
#include follow_path_herbs
.'Click here to pick a different herb. |confirm |next "start"
step "cinder_storm"
map Mount Hyjal
path	68.2,23.9	59.2,31.6	57.0,38.9
path	57.9,17.5	51.5,16.9	52.6,35.5
path	48.7,36.5	44.0,24.5	39.8,32.5
path	36.5,21.7	32.3,25.2	34.6,36.9
path	43.5,42.6	36.2,44.9	25.3,37.8
path	24.1,31.9	11.8,31.6	14.3,47.0
path	19.0,58.5	25.6,62.0	31.9,46.7
path	33.1,65.2	36.9,53.5	42.3,55.9
path	33.8,65.0	31.3,76.5	33.8,98.2
path	57.1,80.9	59.2,84.5	59.8,77.8
path	55.8,74.7	59.8,71.6	49.1,51.6
path	61.9,60.5	67.1,53.5	74.3,58.8
path	71.9,68.5	77.3,63.2	83.0,64.2
path	89.9,49.8	80.9,51.8	77.5,59.5
#include follow_path_herbs
.'Click here to pick a different herb. |confirm |next "start"
step "azshara"
map Shimmering Expanse
path	42.2,55.2	37.7,67.1	48.2,81.4
path	57.8,83.2	58.5,69.6	49.6,59.1
path	68.0,49.7	63.9,39.4	57.9,39.8
path	50.6,35.3	41.3,34.8	38.1,44.7
path	32.5,54.7
#include follow_path_herbs
.'Click here to pick a different herb. |confirm |next "start"
step "heart"
map Deepholm
path	69.4,56.0	70.0,60.7	72.9,58.2
path 	74.7,61.1	75.8,67.5	70.9,62.9
path 	71.1,70.6	66.0,68.5	26.8,41.5
path 	26.5,35.6	23.1,35.3	25.9,31.9
path 	27.5,32.3	27.8,27.0	31.2,32.0
path 	28.9,35.6	26.8,41.5
#include "follow_path_herbs"
.'Click here to pick a different herb. |confirm |next "start"
step "whip"
map Uldum
path	58.4,31.3	56.2,22.6	57.8,14.5
path 	61.5,14.0	57.1,44.7	60.5,58.3
path 	69.8,76.5	65.9,75.9	60.0,83.2
path 	59.0,58.8	55.3,45.8	52.0,45.6
path 	50.8,42.5	50.8,36.0	50.8,36.0
#include "follow_path_herbs"
.'Click here to pick a different herb. |confirm |next "start"
step "twilight"
map Twilight Highlands
path	71.7,48.9	68.1,41.8	61.9,36.0
path 	53.9,32.0	47.3,40.3	45.6,45.2
path 	45.3,36.1	41.3,52.0	48.7,54.5
path 	51.5,45.6	58.2,48.0	59.1,40.1
path 	70.9,64.8	73.5,64.0	73.7,72.2
path	69.8,64.7	63.1,60.8	59.5,63.6
path 	55.3,50.4	57.0,77.5	53.0,79.8
path 	49.0,70.0	44.2,70.6	47.9,63.4
path 	33.6,49.9	29.0,40.3	28.6,30.5
path	46.3,23.2	57.5,27.2	69.1,38.2
path 	72.9,47.2
#include "follow_path_herbs"
.'Click here to pick a different herb. |confirm |next "start"
step "green"
map Valley of the Four Winds
path	81.4,21.5	76.4,29.2	71.1,29.5
path	69.0,31.0	70.8,34.4	70.6,41.8
path	65.1,60.1	57.6,65.6	50.8,58.6
path	47.4,64.9	46.9,61.3	42.5,54.3
path	33.6,62.1	28.1,72.7	25.7,78.4
path	24.4,56.0	21.9,53.9	12.8,44.7
path	14.3,41.2	14.8,35.8	19.6,34.4
#include "follow_path_herbs"
.'Click here to pick a different herb. |confirm |next "start"
only if ZGV.guidesets['ProfessionsHMoP']
step "fool"
map Dread Wastes
path	40.4,56.5	43.9,59.5	43.1,64.4
path	40.5,69.7	37.4,69.2	33.0,66.4
path	33.4,61.6	30.0,56.5	35.5,55.1
#include follow_path_herbs
.'Click here to pick a different herb. |confirm |next "start"
only if ZGV.guidesets['ProfessionsHMoP']
step "snow"
map Kun-Lai Summit
path	39.4,77.3	38.0,75.5	40.1,71.8
path	43.7,64.5	42.9,60.8	41.1,59.3
path	33.9,54.9	36.0,75.5
#include follow_path_herbs
.'Click here to pick a different herb. |confirm |next "start"
only if ZGV.guidesets['ProfessionsHMoP']
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Farming Guides\\Leather",[[
description This guide will allow you to farm the various leathers.
author support@zygorguides.com
step "start"
'Click here to farm Light Leather |confirm |next "light"
'Click here to farm Medium Leather |confirm |next "medium"
'Click here to farm Heavy Leather |confirm |next "heavy"
'Click here to farm Thick Leather |confirm |next "thick"
'Click here to farm Rugged Leather |confirm |next "rugged"
'Click here to farm Knothide Leather |confirm |next "knothide"
'Click here to farm Borean Leather |confirm |next "borean"
'Click here to farm Savage Leather |confirm |next "savage"
'Click here to farm Exotic Leather |confirm |next "exotic" |only if ZGV.guidesets['ProfessionsHMoP']
'Click here to farm Sha-Touched Leather |confirm |next "sha" |only if ZGV.guidesets['ProfessionsHMoP']
step "light"
map Durotar
path follow loose;loop;ants curved
path	44.1,20.6	45.7,23.8	45.1,31.2
path	45.5,37.6	45.0,44.4	41.1,46.6
path	36.9,45.2	36.0,34.8	38.0,25.2
path	41.9,19.4
' Kill any beasts you see and skin them.
.'Click here to pick a different leather. |confirm |next "start"
step "medium"
map Northern Stranglethorn
path	41.1,45.2	37.1,38.6	37.4,31.9
path	36.5,30.9	35.7,25.8	35.8,19.7
path	40.5,20.6	45.8,25.4	48.3,30.0
path	48.2,35.5	42.9,47.4
' Kill any beasts you see and skin them.
.'Click here to pick a different leather. |confirm |next "start"
step "heavy"
goto Feralas 55.4,55.0
.from Feral Scar Yeti##5292+, Rage Scar Yeti##40224+
.' You can find more Yetis at [53.2,31.8]
.'Click here to pick a different leather. |confirm |next "start"
step "thick"
goto Badlands 11.0,38.2
.from Nyxondra's Broodling##46916
.'Click here to pick a different leather. |confirm |next "start"
step "rugged"
map Blasted Lands
path	56.8,39.1	57.5,34.0	55.4,31.3
path	54.6,25.4	50.1,25.0	45.8,20.6
path	43.7,18.8	48.4,27.6	49.3,33.7
path	50.9,41.3
' Kill any beasts you see and skin them.
.'Click here to pick a different leather. |confirm |next "start"
step "knothide"
map Terokkar Forest
path	45.4,5.4	48.7,9.3	50.4,10.6
path	53.1,13.1	56.4,14.1	60.1,12.3
path	62.1,10.6	60.7,9.5	58.3,12.1
path	53.9,12.5	49.7,9.0	49.4,7.9
path	46.8,4.6
.' Follow this path, killing any beasts you find and skinning them.
.from Razorthorn Ravager##24922+ |tip The Razorthorn Flayers are not skinnable.
.'Click here to pick a different leather. |confirm |next "start"
step "borean"
map Sholazar Basin
path 28.8,55.9	29.7,51.6	31.1,46.4
path 32.2,40.4	28.6,42.9	25.6,47.9
path 23.5,52.3	22.6,58.7	22.6,65.3
path 22.3,70.2	26.4,72.7	28.9,69.1
path 29.6,64.4
' Kill any beasts you see and skin them.
.'Click here to pick a different leather. |confirm |next "start"
step "savage"
map Twilight Highlands
path	65.9,16.5	66.1,19.4	70.0,21.0	66.3,24.5
path	63.4,22.8	59.8,21.3	56.5,20.5
path	58.0,13.3	56.6,8.7	61.2,9.9
path	62.7,10.4	64.6,12.8
.from Highland Worg##46153+, Highland Elk##46970+, Tawny Owl##46162, Untamed Gryphon##46158+
.'Click here to pick a different leather. |confirm |next "start"
step "exotic"
map Dread Wastes
path	27.2,26.0	28.0,27.6	27.5,30.2
path	27.0,33.4	27.1,37.2	28.1,42.9
path	30.9,51.7	28.1,50.1	26.3,47.3
path	26.1,43.4	25.4,38.4	25.6,34.6
path	24.3,28.1
.from Onyx Venomtail##63586+, Dread Scarab##63587+, Ruby Venomtail##63588+
.'Click here to pick a different leather. |confirm |next "start"
only if ZGV.guidesets['ProfessionsHMoP']
step "sha"
map The Jade Forest
path	30.1,12.6	30.2,11.3	30.8,11.1
path	31.0,9.7	32.3,10.4	32.0,13.1
path	31.1,15.9
.from Sha-Infested Prowler##66668
.'Click here to pick a different leather. |confirm |next "start"
only if ZGV.guidesets['ProfessionsHMoP']
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Farming Guides\\Cloth",[[
description This guide will allow you to farm the various cloths.
author support@zygorguides.com
step "start"
'Click here to farm Linen Cloth |confirm |next "linen"
'Click here to farm Wool Cloth |confirm |next "wool"
'Click here to farm Silk Cloth |confirm |next "silk"
'Click here to farm Mageweave Cloth |confirm |next "mageweave"
'Click here to farm Runecloth |confirm |next "rune"
'Click here to farm Netherweave Cloth |confirm |next "netherweave"
'Click here to farm Frostweave Cloth |confirm |next "frostweave"
'Click here to farm Embersilk Cloth |confirm |next "embersilk"
'Click here to farm Windwool Cloth |confirm |next "windwool" |only if ZGV.guidesets['ProfessionsHMoP']
step "linen"
goto Mulgore,60.6,47.7
.from Venture Co. Supervisor##2979+, Enforcer Emilgund##5787+, Supervisor Fizsprocket##3051+, Venture Co. Worker##2978+
.'Click here to pick a different cloth. |confirm |next "start"
step "wool"
goto Hillsbrad Foothills 40.4,47.9
.from Stormpike Engineer##49116+
.'Click here to pick a different cloth. |confirm |next "start"
step "silk"
goto Dustwallow Marsh 46.7,46.7
.from Grimtotem Destroyer##23594+, Grimtotem Earthbinder##23595+
.'Click here to pick a different cloth. |confirm |next "start"
step "mageweave"
goto Felwood,63.4,20.7
.from Irontree Chopper##48453+
.'Click here to pick a different cloth. |confirm |next "start"
step "rune"
goto Silithus,45.8,38.2
.from Twilight Keeper Havunth##11804+, Twilight Geolord##11881+, Twilight Avenger##11880+, Twilight Stonecaller##11882+
.' You can find more:
.' Around [35.7,32.5]
.' Around [29.5,73.4]
.' Around [66.1,20.3]
.'Click here to pick a different cloth. |confirm |next "start"
step "netherweave"
goto Netherstorm,26.3,68.1
.from Sunfury Magister##18855+, Sunfury Astromancer##19643+, Sunfury Captain##19453+, Sunfury Bloodwarder##18853+, Sunfury Geologist##19779+, Sunfury Warp-Master##18857+
.'Click here to pick a different cloth. |confirm |next "start"
step "frostweave"
goto Icecrown,61.8,20.8
.from Dark Ritualist##34734+,Dark Zealot##34728+
.'Click here to pick a different cloth. |confirm |next "start"
step "embersilk"
goto Mount Hyjal,35.0,24.0
.from Twilight Augur##40713+, Twilight Retainer##40767+
.'Click here to pick a different cloth. |confirm |next "start"
step "windwool"
goto Valley of the Four Winds 43.9,38.6
.from Springtail Leaper##57415+, Springtail Gnasher##57413+
.'Click here to pick a different cloth. |confirm |next "start"
only if ZGV.guidesets['ProfessionsHMoP']
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking & Fishing\\Cooking & Fishing 1-600 Leveling Guide",[[
description This guide will walk you through leveling
description Cooking combined with Fishing.
step
.' For this guide to work, you will need to have do your _Cooking_ daily quests from non MoP Expansions.
.' Collect 23 Epicurean's Awards |currcount=23
|confirm
step
goto The Cape of Stranglethorn 42.8,69.0
.talk 2664
.buy 1 Recipe: Filet of Redgill##13941
.buy 1 Recipe: Mithril Head Trout##17062
.' Note that you can also buy these from the _Auction House_.
step
goto Feralas 74.6,42.8
.talk 8145
.buy 1 Recipe: Bake Salmon##13949
.' Note that you can also buy these from the _Auction House_.
step
goto Mulgore/0 47.6,54.8
.talk 5940
..buy Fishing Pole##6256
..buy 5 Shiny Bauble##6529
..buy 1 Recipe: Brilliant Smallfish##6325
..buy 1 Recipe: Longjaw Mud Snapper##6328
step
goto Mulgore/0 44.8,60.0
.talk 5938
.skillmax Fishing,75
step
goto Mulgore/0 45.7,57.6
.talk 3067
.skillmax, Cooking,75
step
goto Mulgore/0 44.7,60.5
.' Equip your Fishing Pole |use Fishing Pole##6256
.' Using a _Shiny Bauble_ here will push your fishing past the catching junk phase. |use Shiny Bauble##6529 |tip You will not have to use these after level 25 fishing here.
.' Fish at Stonebull Lake |cast Fishing##131474
.' Get your Fishing skill to level 75 |skill Fishing,75
step
goto Mulgore/0 44.7,60.5
.' Equip your Fishing Pole |use Fishing Pole##6256
..collect 20 Raw Brilliant Smallfish##6291
..collect 35 Raw Longjaw Mud Snapper##6289
step
goto Mulgore/0 44.8,60.0
.talk 5938
.skillmax Fishing,150
step
goto Thunder Bluff/0 41.2,57.0
.' Equip your Fishing Pole |use Fishing Pole##6256
.' Using a _Shiny Bauble_ here will push your fishing past the catching junk phase. |use Shiny Bauble##6529 |tip You will not have to use these after level 100 fishing here.
.' Fish at the Lake in Thunderbluff |cast Fishing##131474
.' Get your Fishing skill to level 150 |skill Fishing,150
step
goto Thunder Bluff/0 56.2,46.4
.talk 3028
.skillmax Fishing,225
step
goto Thunder Bluff/0 41.2,57.0
.' Equip your Fishing Pole |use Fishing Pole##6256
.' Fish at the Lake in Thunderbluff |cast Fishing##131474
..collect 55 Raw Brilliant Smallfish##6291
..collect 20 Raw Bristle Whisker Catfish##6308
..collect 55 Raw Longjaw Mud Snapper##6289
step
.learn Brilliant Smallfish##7751 |use Recipe: Brilliant Smallfish##6325
step
goto Thunder Bluff/0 51.0,53.0
.' Create a Cooking Fire |cast Cooking Fire##818
.create Brilliant Smallfish##7751,Cooking,50
step
sgoto Thunder Bluff/0 56.2,46.2
.talk 3028
.skillmax Cooking,150
step
.learn Longjaw Mud Snapper##7753 |use Recipe: Longjaw Mud Snapper##6328
step
.' Create a Cooking Fire |cast Cooking Fire##818
.create Longjaw Mud Snapper##7753,Cooking,100
step
goto Hillsbrad Foothills/0 55.7,55.0
.' Equip your Fishing Pole |use Fishing Pole##6256
.' Fish at the Pond at Hillsbrad |cast Fishing##131474
.' Get your Fishing skill to level 215 |skill Fishing,215
step
goto Hillsbrad Foothills/0 55.7,55.0
.' Equip your Fishing Pole |use Fishing Pole##6256
..collect 70 Raw Bristle Whisker Catfish##6308
..collect 35 Raw Longjaw Mud Snapper##6289
step
goto Hillsbrad Foothills 57.6,45.2
.talk 2397
.buy 1 Recipe: Bristle Whisker Catfish##6330
step
.learn Bristle Whisker Catfish##7755 |use Recipe: Bristle Whisker Catfish##6330
step
.' Create a Cooking Fire |cast Cooking Fire##818
.create Longjaw Mud Snapper##7753,Cooking,115
step
.create Bristle Whisker Catfish##7755,Cooking,150
step
goto Undercity/0 62.1,44.9
.talk 4552
.skillmax Cooking,225
step
goto Undercity/0 80.7,31.3
.talk 4573
.skillmax Fishing,300
step
goto Western Plaguelands/0 58.6,69.0
.' Equip your Fishing Pole |use Fishing Pole##6256
.' Fish at Darrowmere Lake |cast Fishing##131474
.' Get your Fishing skill to level 275 |skill Fishing,275 |tip You stop catching junk at 225 fishing, so use Baubles if you have them available to you.
step
goto Western Plaguelands/0 58.6,69.0
.' Equip your Fishing Pole |use Fishing Pole##6256
.' Fish at Darrowmere Lake |cast Fishing##131474
..collect 40 Raw Longjaw Mud Snapper##6289
..collect 70 Raw Mithril Head Trout##8365
step
.' Create a Cooking Fire |cast Cooking Fire##818
.create Bristle Whisker Catfish##7755,Cooking,175
step
.learn Mithril Head Trout##20916 |use Recipe: Mithril Head Trout##17062
step
.create Mithril Head Trout##20916,Cooking,225
step
goto Undercity/0 62.1,44.9
.talk 4552
.skillmax Cooking,300
step
goto Undercity/0 80.7,31.3
.talk 4573
.skillmax Fishing,375
step
goto Eastern Plaguelands/0 47.0,62.0
.' Equip your Fishing Pole |use Fishing Pole##6256
.' Use your Fishing skill at the pool of water here. |cast Fishing##131474
.' Get your Fishing skill to level 310 |skill Fishing,310 |tip You stop catching junk at 300 Fishing, so use baubles to speed this along.
step
goto Eastern Plaguelands/0 47.0,62.0
.' Equip your Fishing Pole |use Fishing Pole##6256
.' Depending on the time of day, you will catch either Sunscale Salmon or Nightfin Snappers.
..collect 15 Raw Mithril Head Trout##8365 |n
..collect 35 Raw Redgill##13758
..collect Raw Sunscale Salmon##13760 |n
..collect Raw Nightfin Snapper##13759 |n
.' You'll need {_G.max(0 , (30-itemcount(13760,13759))*1)} more Nightfin Snappers or Sunscale Salmon. |condition itemcount(13760,13759)>=30 |n
step
.learn Filet of Redgill##18241 |use Recipe: Filet of Redgill##13941
step
.' Create a Cooking Fire |cast Cooking Fire##818
.create Filet of Redgill##18241,Cooking,250
step
goto Undercity/0 62.1,44.9
.talk 4552
.learn Nightfin Soup##18243
.learn Poached Sunscale Salmon##18244
step
goto Blasted Lands/0 46.2,68.0
.' Depending on the time of day, you will catch either Sunscale Salmon or Nightfin Snappers.
.' Equip your Fishing Pole |use Fishing Pole##6256
.' Use your Fishing skill at the pool of water here. |cast Fishing##131474
.' Get your Fishing skill to level 330 |skill Fishing,330
step
goto Blasted Lands/0 46.2,68.0
.' Depending on the time of day, you will catch either Sunscale Salmon or Nightfin Snappers.
.' Equip your Fishing Pole |use Fishing Pole##6256
..collect 55 Raw Sunscale Salmon##13760 |or
..collect 55 Raw Nightfin Snapper##13759  |or
..collect 30 Raw Whitescale Salmon##13889
step
.' Create a Cooking Fire |cast Cooking Fire##818
.create Nightfin Soup##18243,Cooking,285
.create Poached Sunscale Salmon##18244,Cooking,285
step
.learn Baked Salmon##18247 |use Recipe: Baked Salmon##13949
step
.' Create a Cooking Fire |cast Cooking Fire##818
.create Baked Salmon##18247,Cooking,300
step
goto Blasted Lands/0 40.7,77.1
.' Depending on the time of day, you will catch either Sunscale Salmon or Nightfin Snappers.
.' Equip your Fishing Pole |use Fishing Pole##6256
.' Use your _Bright Baubles_. |use Bright Baubles##6532
.' Use your Fishing skill at the pool of water here. |cast Fishing##131474
.' Get your Fishing skill to level 330 |skill Fishing,330
step
goto Blasted Lands/0 40.7,77.1
.' Depending on the time of day, you will catch either Sunscale Salmon or Nightfin Snappers.
.' Equip your Fishing Pole |use Fishing Pole##6256
.' Use your _Bright Baubles_. |use Bright Baubles##6532
.' Use your Fishing skill at the pool of water here. |cast Fishing##131474
.' You will only need a combined total of 55 fish between Sunscale Salmon and Nightfin Snappers.
..collect 55 Raw Sunscale Salmon##13760 |or
..collect 55 Raw Nightfin Snapper##13759 |or
..collect 30 Raw Whitescale Salmon##13889
step
.' Create a Cooking Fire |cast Cooking Fire##818
.create Nightfin Soup##18243,Cooking,285
.create Poached Sunscale Salmon##18244,Cooking,285
step
.learn Baked Salmon##18247 |use Recipe: Baked Salmon##13949
step
.' Create a Cooking Fire |cast Cooking Fire##818
.create Baked Salmon##18247,Cooking,300
step
goto Zangarmarsh 31.6,49.2
.talk 18011
.buy 1 Recipe: Feltail Delight##27695
step
goto Zangarmarsh 85.2,54.6
.talk 18015
.buy 1 Recipe: Blackened Trout##27694
step
goto Terokkar Forest 48.8,46.0
.talk 18960
.buy 1 Recipe: Golden Fish Sticks##27699
step
goto Shattrath City/0 74.8,30.9
.talk 19186
.skillmax Cooking,375
step
goto Terokkar Forest/0 39.6,22.5
.' Equip your Fishing Pole |use Fishing Pole##6256
.' Use your _Bright Baubles_. |use Bright Baubles##6532
.' Raise your _Fishing Skill_ to levle 365 |skill Fishing,365
step
goto Terokkar Forest/0 39.6,22.5
.' Equip your Fishing Pole |use Fishing Pole##6256
.' Use your _Bright Baubles_. |use Bright Baubles##6532
..collect 10 Spotted Feltail##27425
..collect 50 Barbed Gill Trout##27422
..collect 15 Golden Darter##27438
step
.learn Feltail Delight##33291 |use Recipe: Feltail Delight##27695
step
.learn Blackened Trout##33290 |use Recipe: Blackened Trout##27694
step
.' Create a Cooking Fire |cast Cooking Fire##818
.create Baked Salmon##18247,Cooking,310
.create Feltail Delight##33291,Cooking,320
.create Blackened Trou##33290,Cooking,320 |tip Only make Blackened Trout if you run out of Feltail Delight
step
.learn Gorlden Fish Sticks##33295 |use Recipe: Golden Fish Sticks##27699
step
goto Shattrath City/0 74.8,30.9
.talk 19186
.learn Stewed Trout##42296
step
.' Create a Cooking Fire |cast Cooking Fire##818
.create Stewed Trout##42296,Cooking,330 |tip Use what you have.
.create Gorlden Fish Sticks##33295,Cooking,350
step
goto Dalaran/1 70.0,39.0
.talk 29631
.buy 1 Recipe: Imperial Manta Steak##43026
.buy 50 Northern Spices##43007
step
goto Howling Fjord/0 79.5,27.1
.talk 26957
.skillmax,Fishing,450
step
goto Howling Fjord/0 78.6,29.5
.talk 26953
.skillmax,Cooking,450
step
goto Howling Fjord/0 78.6,29.5
.talk 26953
.learn Smoked Rockfin##45560
.learn Dalaran Clam Chowder##58065
.learn Baked Manta Ray##45569
step
goto Howling Fjord/0 81.3,37.9
.' Equip your Fishing Pole |use Fishing Pole##6256
.' Raise your _Fishing Skill_ to level 450 |skill Fishing,450
step
goto Howling Fjord/0 79.5,27.1
.talk 26957z
.skillmax,Fishing,525
step
goto Howling Fjord/0 81.3,37.9
.' Equip your Fishing Pole |use Fishing Pole##6256
.' Raise your _Fishing Skill_ to level 475 |skill Fishing,475
step
goto Howling Fjord/0 81.3,37.9
.' Equip your Fishing Pole |use Fishing Pole##6256
..collect 40 Succulent Clam Meat##36782
..collect 70 Rockfin Grouper##41803
..collect 70 Imperial Manta Ray##41802
..collect 70 Man O' War##41805
.' Open your _Darkwater Clams_ to collect _Succulent Clam Meat._ |use Darkwater Clam##36781
.' Please Note that if you are having trouble catching the specific fish needed, Flying around Northrend Coasts looking for schools of fish may be more effective.
step
.' Create a Cooking Fire |cast Cooking Fire##818
.create Smoked Rockfin##45560,Cooking,375
step
.' Create a Cooking Fire |cast Cooking Fire##818
.create Dalaran Clam Chowder##58065,Cooking,380 |tip Cook all that you have.
.create Baked Manta Ray##45569,Cooking,400
step
goto Howling Fjord/0 78.6,29.5
.talk 26953
.learn Black Jelly##64358
step
.' Create a Cooking Fire |cast Cooking Fire##818
.create Black Jelly##64358,Cooking,415
step
.learn Imperial Manta Steak##45570 |use Recipe: Imperial Manta Steak##43026
step
.' Create a Cooking Fire |cast Cooking Fire##818
.create Imperial Manta Steak##45570,Cooking,450
.' If you don't reach 450 cooking, try searching for Imperial Manta Schools along the coasts.
step
goto Howling Fjord/0 78.6,29.5
.talk 26953
.skillmax,Cooking,525
step
goto Orgrimmar 56.8,62.6
.talk 49737
.buy 1 Recipe: Lightly Fried Lurker##65412
.buy 1 Recipe: Fish Fry##65423
.buy 1 Recipe: Delicious Sagefish Tail##65422
.buy 1 Recipe: Baked Rockfish##65426
.buy 1 Recipe: Pickled Guppy##65417
step
.learn Lightly Fried Lurker##88028 |use Recipe: Lightly Fried Lurker##65412
step
goto Twilight Highlands/0 56.1,37.3
.' Equip your Fishing Pole |use Fishing Pole##6256
.' Use your _Bright Baubles_. |use Bright Baubles##6532
.' Raise your _Fishing Skill_ to level 500 |skill Fishing,500
step
goto Twilight Highlands/0 56.1,37.3
.' Equip your Fishing Pole |use Fishing Pole##6256
..collect 40 Striped Lurker
..collect 20 Highland Guppy
..collect 70 Sharptooth
step
goto Orgrimmar/1 66.5,41.9
.talk 3332
.skillmax,Fishing,600
step
goto Orgrimmar/1 56.2,61.3
.create Lightly Fried Lurker##88028,Cooking,475
step
.learn Pickled Guppy##88033 |use Recipe: Pickled Guppy##65417
step
.create Pickled Guppy##88033,Cooking,20 total
step
.learn Fish Fry##88018 |use Recipe: Fish Fry##65423
step
.create Fish Fry##88018,Cooking,505
step
.learn Delicious Sagefish Tail##88016 |use Recipe: Delicious Sagefish Tail##65422
.learn Baked Rockfish##88003 |use Recipe: Baked Rockfish##65426
step
goto Orgrimmar/1 56.6,62.5
.talk 42506
.skillmax,Cooking,600
step
goto Orgrimmar/1 66.7,41.9
.talk 3333
.' You will need 625 fishing to stop catching junk.
.' If you reach 550 Fishing, start using the _Bright Baubles_.
..collect 10 Bright Baubles##6532
step
goto Twilight Highlands/0 78.1,77.3
.' Equip your Fishing Pole |use Fishing Pole##6256
.' Use your _Bright Baubles_. |use Bright Baubles##6532
.' Cook _Delicious Sagefish Tails_ and _Baked Rockfish_ as you catch Sharptooth.
.' Create a Cooking Fire |cast Cooking Fire##818
.create Delicious Sagefish Tail##88016,Cooking,525
.create Baked Rockfish##88003,Cooking,525
.' Reach _525_ Cooking. |skill Cooking,525
step
.' At this point, you will need to pick up the _Way of the Steamer_ to continue.
.' Note that you will also have to do a bit of farming in order to continue leveling outside of fishing.
|confirm
step
goto Valley of the Four Winds 52.6,51.6
.talk 58714
.learn Krasarang Fritters##124032
step
goto Valley of the Four Winds/0 59.0,50.3
.' Equip your Fishing Pole |use Fishing Pole##6256
.' Use your _Bright Baubles_. |use Bright Baubles##6532
..Collect 5 Krasarang Paddlefish##74865
..collect 55 Emperor Salmon##74859
.' Save any fish you get.
.' Level your fishing to 600. |skill Fishing,600
step
goto Valley of the Four Winds 53.7,51.0
.talk 64231
..accept 31302
step
goto 53.6,51.2
.talk 64231
.learn Rice Pudding##125122
.buy 5 Rice##74851 |q 31302
.buy 5 Yak Milk##74852 |q 31302
step
#include cooking_fire
.create 5 Rice Pudding##125122,Cooking,5 total |q 31302/1
.get 5 Rice Pudding##86069 |q 31302/2
step
goto 53.7,51.0
.talk 64231
..turnin 31302
..accept 31475
step
goto 53.5,51.2
.talk 64395
.buy 1 Sack of Mantis Shrimp##87722 |n
'Use the Sack of Mantis Shrimp |use Sack of Mantis Shrimp##87722
.get 5 Giant Mantis Shrimp##74857 |q 31475/1
step
goto 52.5,51.8
.talk 58715
..turnin 31475
..accept 31476
step
goto 52.5,51.8
.talk 58715
.learn Shrimp Dumplings##104307 |q 31476/1
step
#include cooking_fire
.create 5 Shrimp Dumplings##104307,Cooking,5 total |n
.' Cook #5# Shrimp Dumplings |q 31476/2
step
goto 52.5,51.8
.talk 58715
..turnin 31476
step
title	Way of the Steamer
label	Cooking_Steamer
'Skipping 1st part of cooking |next "+fire_spirit" |only if step:Find("+create_shrimp"):IsComplete()
'Proceeding to Sauteed Carrots |next |only if default
step
goto Valley of the Four Winds 52.7,52.0
.talk 58713
.learn Shrimp Dumplings##104307
step
#include "auctioneer"
.buy 15 Giant Mantis Shrimp##74857 |next create_shrimp
' Or
.' Click here to use Cooking Tokens to purchase this ingredient |confirm |next token_start_steam
' Or
.' Click here to farm the ingredient yourself |confirm |next farm_shrimp
step
#include "token_start_MST",MST="steam"
step
label	spirit
#include "Spirt_Harmony"
.buy Ironpaw Token##402+ |n
.' You have _{curcount(402)} Tokens_
.' You need _{_G.ceil(_G.max(0,  ((15-itemcount(74857))/5)-curcount(402)))} Tokens_ to buy the ingredients you need. |only if skill ("Cooking")<=549
.' You need _{_G.ceil(_G.max(0,  ((13-itemcount(74859))/5)+((60-itemcount(74843))/25)-curcount(402)))} Tokens_ to buy the ingredients you need. |only if skill("Cooking")>=550 and skill("Cooking")<=574
.' You need _{_G.ceil(_G.max(0,  ((50-itemcount(74859))/5)+((50-itemcount(74839))/5)+((250-itemcount(74847))/25)-curcount(402)))} Tokens_ to buy the ingredients to cook |only if skill("Cooking")>=575 and skill("Cooking")<=599
|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat of your choice.
.' Click here when you are ready to buy Sacks of Meat with your Tokens |confirm |next buy
' Or
.' If you still do not have enough tokens, click here to go back to the token menu |confirm |next token_start_steam
step
#include "token_end_MST",MST="steam"
step
label	 buy
'Continuing to Shrimp Dumplings |next |only if default
'Redirecting to Fire Spirit Salmon |next "fire_spirit_bag" |only if step:Find("+create_shrimp"):IsComplete()
'Redirecting to Banquet of the Steam |next "banquet_steam_bag" |only if step:Find("+create_fire_spirit"):IsComplete()
step
goto Valley of the Four Winds 53.5,51.2
.talk 64395
.buy Sack of Giant Mantis Shrimp##87722 |n
.' You need _{_G.ceil(_G.max(0,  ((15-itemcount(87722))/5)-itemcount(87707)))} Sacks of Shrimp_
.' Open the Sack to collect the ingredients |use Sack of Giant Mantis Shrimp##87722
.collect 15 Giant Mantis Shrimp##74857
|next create_shrimp
step
label	farm_shrimp
goto Krasarang Wilds 67.9,49.6
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##131474
.collect 50 Giant Mantis Shrimp##74857
step
label	create_shrimp
#include cooking_fire
.create Shrimp Dumplings##104307,Cooking,15 total |n
.skill Way of the Steamer,550 |only if skill('Way of the Steamer')>=550
.' Achieve Way of the Steamer 550 |confirm |only if skill("Way of the Steamer")<=549
step
label	fire_spirit
'Skipping 2nd part of cooking |next "+end_way_of_steam" |only if step:Find("+create_banquet_steam"):IsComplete()
'Proceeding to End of Way of the Steamer |next |only if default
step
goto Valley of the Four Winds/0 52.6,51.7
.talk 58715
.learn Fire Spirit Salmon##104308
step
#include "auctioneer"
.buy 13 Emperor Salmon##74859
.buy 60 Scallions##74843
' Or
.' Click here to use Cooking Tokens |confirm |next token_start_steam
' Or
.' Click here to farm the ingredients yourself |confirm |next farm_fire_spirit_1
|tip You should at least have 525 fishing for this.
step
label	farm_fire_spirit_1
goto Krasarang Wilds 37.4,35.2
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##131474
.collect 13 Emperor Salmon##74859
step
'Skipping farming |next "+create_fire_spirit" |only if step:Find("+farm_fire_spirit_2"):IsComplete()
'Proceeding to Valley Stir Fry |next |only if default
step
label	farm_fire_spirit_2
goto Krasarang Wilds 62.0,40.6
.from Riverblade Raider##59714+, Riverblade Thief##64034+
.collect 60 Scallions##74843
|next create_fire_spirit
step
label	fire_spirit_bag
goto Valley of the Four Winds 53.5,51.2
.talk 64395
.buy Sack of Emperor Salmon##87723 |n
.' You need _{_G.ceil(_G.max(0,  ((13-itemcount(74859))/5)-itemcount(87723)))} Sacks of Salmon_
.' Open the Sack to collect the ingredients |use Sack of Emperor Salmon##87723
.collect 13 Emperor Salmon##74859
.buy Sack of Scallions##87709 |n
.' You need _{_G.ceil(_G.max(0,  ((60-itemcount(74843))/25)-itemcount(87709)))} Sacks of Scallions_
.' Open the Sack to collect the ingredients |use Sack of Scallions##87709
.collect 60 Scallions##74843
|next create_fire_spirit
step
label	create_fire_spirit
#include cooking_fire
.create Valley Stir Fry##104302,Cooking,13 total |n
.skill Way of the Steamer,575 |only if skill('Way of the Steamer')>=575
.' Achieve Way of the Steamer 575 |confirm |only if skill("Way of the Steamer")<=574
step
label	banquet_steam
'Skipping 1st part of farming |next "+create_banquet_steam" |only if step:Find("+end_way_of_steam"):IsComplete()
'Proceeding to farm |next |only if default
step
goto Valley of the Four Winds/0 52.6,51.7
.talk 58715
.learn Banquet of the Steamer##125598
step
#include "auctioneer"
.buy 50 Emperor Salmon##74859
.buy 50 Wildfowl Breast##74839
.buy 250 Jade Squash##74847
' Or
.' Click here to use Cooking Tokens to purchase this ingredient |confirm |next token_start_steam
' Or
.' Click here to farm the ingredient yourself |confirm |next farm_banquet_steam_1
|next create_banquet_steam
step
'Skipping 1st part of farming |next "+farm_banquet_steam_2" |only if step:Find("+farm_banquet_steam_1"):IsComplete()
'Proceeding to farm |next |only if default
step
label	farm_banquet_steam_1
goto Krasarang Wilds 37.4,35.2
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##131474
.collect 50 Emperor Salmon##74859
step
'Skipping 2st part of farming |next "+farm_banquet_steam_3" |only if step:Find("+farm_banquet_steam_2"):IsComplete()
'Proceeding to farm |next |only if default
step
label	farm_banquet_steam_2
goto Krasarang Wilds 64.6,29.3
.from Carp Hunter##58116+
.collect 50 Wildfowl Breast##74839
step
label	farm_banquet_steam_3
goto Krasarang Wilds 46.0,86.6
.from Unga Fish-Getter##60299+, Unga Villager##60358+
.collect 250 Jade Squash##74847
|next create_banquet_steam
step
label	banquet_steam_bag
goto Valley of the Four Winds 53.5,51.2
.talk 64395
.buy Sack of Wildfowl Breasts##87705 |n
.' You need _{_G.ceil(_G.max(0,  ((50-itemcount(74839))/5)-itemcount(87705)))} Sacks of Wildfowl_
.' Open the Sack to collect the ingredients |use Sack of Wildfowl Breasts##87705
.collect 50 Wildfowl Breast##74839
.buy Sack of Emperor Salmon##87723 |n
.' You need _{_G.ceil(_G.max(0, ((50-itemcount(74859))/5)-itemcount(87723)))} Sacks of Salmon_
.' Open the Sack to collect the ingredients |use Sack of Emperor Salmon##87723
.collect 50 Emperor Salmon##74859
.buy Sack of Jade Squash##87713 |n
.' You need _{_G.ceil(_G.max(0, ((250-itemcount(74847))/25)-itemcount(87713)))} Sacks of Shrimp_
.' Open the Sack to collect the ingredients |use Sack of Jade Squash##87713
.collect 250 Jade Squash##74847
step
label	create_banquet_steam
#include cooking_fire
.create Banquet of the Steamer##125598,Cooking,5 total |n
.skill Way of the Steamer,600 |only if skill('Way of the Steamer')>=600
.' Achieve Way of the Steamer 600 |confirm |only if skill("Way of the Steamer")<=599
step
label	end_way_of_steam
'Congratulations, you have maxed out the _Way of the Steamer_ mastery for Cooking!
.' Click here to return to the Cooking Mastery List |confirm |next cooking_mastery_start
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining & Herbalism\\Mining & Herbalism 1-600 Leveling Guide",[[
description This guide will walk you through leveling your Mining and Herbalism skills from 1 - 600.
author support@zygorguides.com
completion skill,Mining,600 and skill,Herbalism,600
step
label "route"
'Redirecting to Pandarian Mining and Herbalism 1-525 |next "choice" |only if (skill("Mining")<525 or skill("Herbalism")<525) and level>=85 and _G.GetExpansionLevel()>=4 and ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Mining 1-50 |next "min_1-50" |only if (skill("Mining")<50 or skill("Herbalism")<50) and (level<85 or _G.GetExpansionLevel()<4 or not ZGV.guidesets['ProfessionsHMoP'])
'Redirecting to Mining 50-125 |next "min_50-125" |only if ((skill("Mining")>=50 and skill("Mining")<125) or (skill("Herbalism")>=50 and skill("Herbalism")<125)) and (level<85 or _G.GetExpansionLevel()<4 or not ZGV.guidesets['ProfessionsHMoP'])
'Redirecting to Mining 125-200 |next "min_125-200" |only if ((skill("Mining")>=125 and skill("Mining")<200) or (skill("Herbalism")>=125 and skill("Herbalism")<200)) and (level<85 or _G.GetExpansionLevel()<4 or not ZGV.guidesets['ProfessionsHMoP'])
'Redirecting to Mining 200-275 |next "min_200-275" |only if ((skill("Mining")>=200 and skill("Mining")<275) or (skill("Herbalism")>=200 and skill("Herbalism")<275)) and (level<85 or _G.GetExpansionLevel()<4 or not ZGV.guidesets['ProfessionsHMoP'])
'Redirecting to Mining 275-350 |next "min_275-350" |only if ((skill("Mining")>=275 and skill("Mining")<350) or (skill("Herbalism")>=275 and skill("Herbalism")<350)) and (level<85 or _G.GetExpansionLevel()<4 or not ZGV.guidesets['ProfessionsHMoP'])
'Redirecting to Mining 350-425 |next "min_350-425" |only if ((skill("Mining")>=350 and skill("Mining")<425) or (skill("Herbalism")>=350 and skill("Herbalism")<425)) and (level<85 or _G.GetExpansionLevel()<4 or not ZGV.guidesets['ProfessionsHMoP'])
'Redirecting to Mining 425-525 |next "min_425-525" |only if ((skill("Mining")>=425 and skill("Mining")<525) or (skill("Herbalism")>=425 and skill("Herbalism")<525)) and (level<85 or _G.GetExpansionLevel()<4 or not ZGV.guidesets['ProfessionsHMoP'])
'Redirecting to Mining 525-600 |next "route2" |only if skill("Mining")>=525 and skill("Mining")<600 and skill("Herbalism")>=525 and skill("Herbalism")<600
step
label choice
'Click here to level up your mining in Pandaria. |confirm |next "Pandarian_Mining_Herbalism_1-600"
.'_
'Click here to level up your mining using the original method. |confirm |next "minherb_1-50"
step
#include "home_ValleyofStrength"
step
title + Mining and Herbalism (1-50)
label	"minherb_1-50"
#include "trainer_Mining"
.skillmax Mining,75 |tip You must be at least level 5.
step
#include "vendor_Mining"
.buy 1 Mining Pick##2901
step
#include "trainer_Herbalism"
.skillmax Herbalism,75
step
map Durotar
path follow loose;loop;ants straight
path	46.2,17.1	38.8,16.2	38.7,22.1
path	37.9,30.4	48.5,32.8	51.4,36.5
path	51.7,52.0	53.6,62.4	55.6,69.7
path	60.9,69.1	60.7,58.0	57.6,46.9
path	55.0,32.4	57.8,26.1	53.4,12.5
#include "follow_path_mine_herb"
skill Herbalism,70
skill Mining,35
step
label
#include "maincity_anvil"
.create Copper Bar##2657,Mining,50 |tip Keep all of the Copper Bars for Smelting later.
step
title + Mining and Herbalism (50-125)
label "minherb_50-125"
#include "trainer_Mining"
.skillmax Mining,150
.learn Smelt Bronze##2659
.learn Smelt Tin##3304
step
#include "trainer_Herbalism"
.skillmax Herbalism,150
step
map Hillsbrad Foothills
path	31.8,62.6	33.9,54.0	33.9,54.0
path	29.7,44.1	34.5,28.2	39.5,21.0
path	39.5,21.0	44.2,8.3 	51.3,14.0
path	57.5,20.9	56.1,34.3	49.9,46.2
path	43.1,50.1	38.2,49.1	40.1,55.0
path	41.3,67.4	41.3,67.4	36.3,69.9
#include "follow_path_mine_herb"
skill Herbalism,125
skill Mining,125
step
title + Mining and Herbalism (125-200)
label "minherb_125-200"
#include "trainer_Mining"
.skillmax Mining,225
.learn Smelt Iron##3307
step
#include "trainer_Herbalism"
.skillmax Herbalism,225
step
map Northern Stranglethorn
path	29.2,25.0	27.5,22.1	25.7,22.0
path	23.8,25.0	34.2,35.9	41.3,30.1
path	43.6,43.1	46.3,54.1	53.7,60.8
path	58.0,67.1	62.9,72.9	62.4,67.1
path	60.5,56.0	58.9,19.5
#include "follow_path_mine_herb"
skill Herbalism,150
skill Mining,150
step
map Western Plaguelands/0
path	54.7,75.0	60.3,83.7	63.6,83.3
path	67.7,85.0	71.7,83.0	74.9,82.6
path	77.4,81.7	80.1,78.9	79.8,74.4
path	80.2,70.7	79.0,66.5	76.1,65.7
path	75.1,59.8	70.8,59.5	68.9,59.2
path	66.9,63.3	62.8,64.0
#include "follow_path_mine_herb"
skill Herbalism,230
skill Mining,200
step
title + Mining and Herbalism (200-275)
label "minherb_200-275"
#include "trainer_Mining"
.skillmax Mining,300
.learn Smelt Thorium##16153
step
#include "trainer_Herbalism"
.skillmax Herbalism,300
step
map Searing Gorge
path	66.9,43.2	58.9,53.0	55.6,68.1
path	49.8,70.1	45.9,61.5	38.1,74.9
path	31.0,67.8	32.1,56.9	29.4,44.8
path	37.5,47.8	40.5,39.1	47.2,42.1
path	53.5,35.4	77.0,19.0
#include "follow_path_herbs"
.collect Sungrass##8838
skill Herbalism,285
step
map Un'Goro Crater
path 37.5,18.9	43.5,14.1	49.9,18.5
path 62.7,17.9	70.4,26.8	76.3,51.0
path 70.7,71.0	62.1,83.7	52.2,85.9
path 37.7,83.1	27.9,65.8	24.0,52.5
path 26.7,36.4
#include "follow_path_mine"
skill Mining,275
step
title + Mining and Herbalism (275-350)
label	"minherb_275-350"
#include trainer_Mining
.skillmax Mining,375
.learn Smelt Fel Iron##29356
step
#include "trainer_Herbalism"
.skillmax Herbalism,375
step
map Hellfire Peninsula
path	69.3,47.5	74.5,38.7	68.2,37.7
path	62.0,31.0	58.0,32.8	54.0,26.7
path	46.0,29.3	34.1,29.1	32.0,34.5
path	38.5,38.2	35.7,40.7	33.4,49.8
path	30.3,48.6	32.5,43.3	28.5,39.3
path	26.5,45.5	22.6,45.1	18.0,38.3
path	12.5,36.1	17.9,46.3	11.8,41.9
path	12.0,47.0	06.2,49.5	15.4,62.4
path	20.3,52.9	24.0,61.1	21.2,62.7
path	28.1,80.8	27.7,69.5	30.5,72.8
path	30.3,59.9	34.8,66.6	37.7,53.3
path	46.9,46.3	49.3,49.5	60.3,48.6
path	60.8,52.8	52.1,52.7	47.2,57.7
path	45.9,75.5	33.5,89.6	33.1,92.6
path	49.1,77.5	44.6,86.2	55.5,82.8
path	58.7,78.8	56.5,72.3	65.8,63.6
path	67.1,71.7	63.0,73.3	65.8,77.9
path	68.7,77.6	71.0,71.7	70.1,68.6
path	65.0,59.8	65.6,56.0	75.0,63.9
path	78.4,80.2	80.7,77.5	77.3,63.7
path	72.7,60.2	71.5,53.1	68.3,52.0
#include "follow_path_mine_herb"
skill Herbalism,325
skill Mining,325
step
map Nagrand
path 45.7,68.9	43.1,58.9	45.0,54.7
path 49.6,57.5	56.0,54.8	56.3,59.4
path 49.7,66.2	41.9,77.0	35.7,79.3
path 31.1,75.3	27.3,63.0	33.4,57.5
path 33.7,49.4	24.0,47.4	19.7,46.7
path 11.4,43.0	11.3,36.6	19.9,32.1
path 25.0,32.8	28.2,31.8	26.5,20.5
path 30.0,18.1	36.3,23.0	40.5,35.4
path 43.1,22.8	50.8,23.5	57.0,29.0
path 65.0,37.6	70.3,42.6	68.8,51.1
path 72.3,58.1	73.8,67.9	69.8,78.1
path 57.9,75.5	49.0,79.0
#include "follow_path_mine_herb"
skill Herbalism,350
skill Mining,350
step
title + Mining and Herbalism (350-425)
label	"minherb_350-425"
#include trainer_Mining
.skillmax Mining,450
.learn Smelt Adamantite##29358
.learn Smelt Cobalt##49252
.learn Smelt Eternium##29359
.learn Smelt Felsteel##29360
step
#include "trainer_Herbalism"
.skillmax Herbalism,450
step
map Howling Fjord
path 83.0,44.8	78.1,39.4	72.7,38.3
path 71.0,31.8	75.3,22.9	70.2,8.3
path 63.2,13.7
path 61.4,23.6	57.7,18.3	51.4,14.2
path 45.5,13.3	38.1,18.9	31.1,10.9
path 28.9,10.3	21.7,12.8	19.4,23.5
path 24.2,27.4	27.6,22.6	27.3,30.8
path 38.1,29.0	47.6,32.7	53.0,31.9
path 63.5,37.1	65.5,48.7	66.9,62.7
path 64.4,67.8	64.4,72.4	67.9,76.5
path 71.3,73.6	72.5,67.9	77.3,67.2
path 77.2,60.8	74.9,55.3	79.1,50.4
"follow_path_mine_herb"
skill Herbalism,400
skill Mining,400
step
map Sholazar Basin
path follow strict
path	77.9,63.8	78.7,52.4	74.3,48.6
path	58.9,53.9	63.5,44.4	66.7,40.3
path	65.1,30.5	58.9,27.8	58.9,21.1
path	40.8,20.8	48.0,33.2	52.7,39.9
path	47.8,43.1	46.8,39.7	39.6,32.8
path	32.9,32.8	23.3,48.4	33.5,46.6
path	35.8,49.9	40.0,50.9	38.0,54.9
path	30.5,55.3	20.8,56.1	20.4,76.6
path	22.6,78.5	22.5,84.0	34.2,78.4
path	33.8,73.4	33.0,67.9	40.9,70.1
path	34.5,88.9	50.9,88.8	51.5,82.1
path	46.0,60.9	55.5,66.5	58.7,88.2
path	62.3,74.5	63.6,84.4
"follow_path_mine_herb"
skill Herbalism,425
skill Mining,425
step
title + Mining and Herbalism (425-500)
label	"minherb_425-500"
#include "trainer_Mining"
.skillmax Mining,525
.learn Smelt Obsidium##84038
step
#include "trainer_Herbalism"
.skillmax Herbalism,525
step
map Deepholm
path 69.4,56.0		74.7,61.1		75.8,67.5
path 70.5,61.9		71.1,70.6		66.0,68.5
path 58.0,73.2		47.4,67.3		37.0,53.3
path 37.6,44.7		26.8,41.5		23.1,35.3
path 28.9,35.6		27.8,27.0		31.2,32.0
path 36.6,28.9		33.0,19.1		47.8,12.9
path 45.9,21.1		43.6,25.1		44.5,28.6
path 49.1,33.6		56.7,38.3		73.8,32.7
path 75.2,41.9		69.6,46.4
"follow_path_mine_herb"
skill Herbalism,500
skill Mining,500
step
map Uldum
path 58.4,31.3		56.2,22.6		57.8,14.5
path 61.5,14.0		57.1,44.7		60.5,58.3
path 69.8,76.5		65.9,75.9		60.0,83.2
path 59.0,58.8		55.3,45.8		52.0,45.6
path 50.8,42.5		50.8,36.0
"follow_path_mine_herb"
skill Herbalism,525
skill Mining,525
step
label "route2"
'Redirecting to Mining and Herbalism finale |next "minherb_525" |only if ((skill("Herbalism")>=525 and skill("Herbalism")<600) or (skill("Mining")>=525 and skill("Mining")<600)) and not ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Mining and Herbalism 525-600 |next "minherb_525-600" |only if ((skill("Herbalism")>=525 and skill("Herbalism")<600) or (skill("Mining")>=525 and skill("Mining")<600)) and ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Mining and Herbalism non-owners |next "minherb_525-no-guide" |only if ((skill("Herbalism")>=525 and skill("Herbalism")<600) or (skill("Mining")>=525 and skill("Mining")<600)) and _G.GetExpansionLevel()>=4 and not ZGV.guidesets['ProfessionsHMoP']
'Redirecting to Mining and Herbalism finale |next "minherb_600" |only if default
step
label "minherb_525"
'Congratulations, you are a level 525 Miner and Herbalist!
|confirm |next "end"
step
label "minherb_525-no-guide"
'Congratulations, you are a level 525 Miner and Herbalist!
.'Please purchase the upgrade Profession guide to see the content for MOP
|confirm |next "end"
|only if not ZGV.guidesets['ProfessionsHMoP']
step
label "Pandarian_Min_Herb_1-600"
|next
#include "Pandarian_Mining_Herbalism_1-600"
step
label "minherb_525-600"
|next "Profession Guides\\Mining & Herbalism\\Mining & Herbalism 525-600 Leveling Guide" |only if ZGV.guidesets['ProfessionsHMoP']
step
label "minherb_600"
'Congratulations, you are now a Zen Master Miner and Herbalist!
|confirm |next "end"
step
label "end"
'You have reached the end of the guide
|confirm
]])
