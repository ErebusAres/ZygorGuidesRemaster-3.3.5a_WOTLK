local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetsMountsHMOP") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Azure Water Strider",[[
description This guide will help you acquire the Azure Water Strider Mount.
model 41711
condition end hasmount(118089)
step
.' This mount requires you to be _Exalted_ with _The Anglers_.
.' Click here to be taken to start _The Anglers_ dailies. |next "Zygor's Horde Dailies Guides\\Pandaria (85 - 90)\\The Anglers Dailies" |confirm |confirm |only if ZGV.guidesets["DailiesHMOP"]
.' Click here to be taken to The Anglers' Quartermaster to purchase the mount. |next "buy" |only if rep("The Anglers")>=Exalted
.' Click here to check your progress. |confirm
step
label
'You are _Neutral_ with _The Anglers_. |only if rep("The Anglers")<=Neutral
'You are _Friendly_ with _The Anglers_. |only if rep("The Anglers")==Friendly
'You are _Honored_ with _The Anglers_. |only if rep("The Anglers")==Honored
'You are _Revered_ with _The Anglers_. |only if rep("The Anglers")==Revered
'You are _Exalted_ with _The Anglers_. |only if rep("The Anglers")==Exalted
._
|confirm
step
goto Krasarang Wilds 68.4,43.5 |n
.' This area is where you complete quests and dailies in order to gain reputation with _The Anglers_.
.' Exalted with the Anglers |achieve 6547
step
label "buy"
goto Krasarang Wilds 68.4,43.5
.talk 63721
.buy Reins of the Azure Water Strider##81354
.learnmount Azure Water Strider##118089 |use Reins of the Azure Water Strider##81354
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Black Riding Goat",[[
description This guide will help you acquire the Black Riding Goat Mount.
model 44836
condition end hasmount(130138)
step
label a
.' This mount requires you to be _Exalted_ with _The Tillers_.
.' Routing to the proper section. |next "dailies" |only if not completedq(31945)
.' Click here for the Tillers Daily Quests. |next "Zygor's Horde Dailies Guides\\Pandaria (85 - 90)\\The Tillers Dailies" |confirm  |confirm |only if ZGV.guidesets["DailiesHMOP"]
.' Click here to be taken to The Tillers' Quartermaster to purchase the mount. |confirm |next "buy"
.' Click here to check your progress. |next b |confirm
step
label "dailies"
#include "tillers_prequests"
step
label b
'After you have unlocked the dailies, complete as many as you can until you reach exalted status with _The Tillers_
'You are _Neutral_ with _The Tillers_. |only if rep("The Tillers")<=Neutral
'You are _Friendly_ with _The Tillers_. |only if rep("The Tillers")==Friendly
'You are _Honored_ with _The Tillers_. |only if rep("The Tillers")==Honored
'You are _Revered_ with _The Tillers_. |only if rep("The Tillers")==Revered
'You are _Exalted_ with _The Tillers_. |only if rep("The Tillers")==Exalted
'Exalted with the Tillers |achieve 6544
step
label "buy"
goto Valley of the Four Winds 53.2,51.6
.talk 58706
.buy Reins of the Black Riding Goat##89391
.learnmount Black Riding Goat##130138 |use Reins of the Black Riding Goat##89391
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Brown Riding Goat",[[
description This guide will help you acquire the Brown Riding Goat Mount.
model 44807
condition end hasmount(130086)
step
label a
.' This mount requires you to be _Exalted_ with _The Tillers_.
.' Routing to the proper section. |next "dailies" |only if not completedq(31945)
.' Click here for the Tillers Daily Quests. |next "Zygor's Horde Dailies Guides\\Pandaria (85 - 90)\\The Tillers Dailies" |confirm  |confirm |only if ZGV.guidesets["DailiesHMOP"]
.' Click here to be taken to The Tillers' Quartermaster to purchase the mount. |confirm |next "buy"
.' Click here to check your progress. |next b |confirm
step
label "dailies"
#include "tillers_prequests"
step
label b
'After you have unlocked the dailies, complete as many as you can until you reach exalted status with _The Tillers_
'You are _Neutral_ with _The Tillers_. |only if rep("The Tillers")<=Neutral
'You are _Friendly_ with _The Tillers_. |only if rep("The Tillers")==Friendly
'You are _Honored_ with _The Tillers_. |only if rep("The Tillers")==Honored
'You are _Revered_ with _The Tillers_. |only if rep("The Tillers")==Revered
'You are _Exalted_ with _The Tillers_. |only if rep("The Tillers")==Exalted
'Exalted with the Tillers |achieve 6544
step
label "buy"
goto Valley of the Four Winds 53.2,51.6
.talk 58706
.buy Reins of the Brown Riding Goat##89362
.learnmount Brown Riding Goat##130086 |use Reins of the Brown Riding Goat##89362
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\White Riding Goat",[[
description This guide will help you acquire the White Riding Goat Mount.
model 44837
condition end hasmount(130137)
step
label a
.' This mount requires you to be _Exalted_ with _The Tillers_.
.' Routing to the proper section. |next "dailies" |only if not completedq(31945)
.' Click here for the Tillers Daily Quests. |next "Zygor's Horde Dailies Guides\\Pandaria (85 - 90)\\The Tillers Dailies" |confirm  |confirm |only if ZGV.guidesets["DailiesHMOP"]
.' Click here to be taken to The Tillers' Quartermaster to purchase the mount. |confirm |next "buy"
.' Click here to check your progress. |next b |confirm
step
label "dailies"
#include "tillers_prequests"
step
label b
'After you have unlocked the dailies, complete as many as you can until you reach exalted status with _The Tillers_
'You are _Neutral_ with _The Tillers_. |only if rep("The Tillers")<=Neutral
'You are _Friendly_ with _The Tillers_. |only if rep("The Tillers")==Friendly
'You are _Honored_ with _The Tillers_. |only if rep("The Tillers")==Honored
'You are _Revered_ with _The Tillers_. |only if rep("The Tillers")==Revered
'You are _Exalted_ with _The Tillers_. |only if rep("The Tillers")==Exalted
'Exalted with the Tillers |achieve 6544
step
label "buy"
goto Valley of the Four Winds 53.2,51.6
.talk 58706
.buy Reins of the White Riding Goat##89390
.learnmount White Riding Goat##130137 |use Reins of the White Riding Goat##89390
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Regal Riding Crane",[[
description This guide will help you acquire the Regal Riding Crane Mount.
model 43706
condition end hasmount(127177)
step
.' This mount requires you to be _Exalted_ with _The Golden Lotus_.
.' Click here to be taken to the reputation guide to become Exalted with The Golden Lotus. |confirm |next "dailies"
.' Click here to be taken to The Golden Lotus Quartermaster to purchase the mount. |confirm |next "buy"
step
label "dailies"
#include "Golden_Lotus"
step
label "buy"
goto Vale of Eternal Blossoms 73.3,42.9
.talk 59908
.buy Reins of the Regal Riding Crane##87783
.learnmount Regal Riding Crane##127177 |use Reins of the Regal Riding Crane##87783
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Azure Riding Crane",[[
description This guide will help you acquire the Azure Riding Crane Mount.
model 43704
condition end hasmount(127174)
step
.' This mount requires you to be _Exalted_ with _The Golden Lotus_.
.' Click here to be taken to the reputation guide to become Exalted with The Golden Lotus. |confirm |next "dailies"
.' Click here to be taken to The Golden Lotus Quartermaster to purchase the mount. |confirm |next "buy"
step
label "dailies"
#include "Golden_Lotus"
step
label "buy"
goto Vale of Eternal Blossoms 73.3,42.9
.talk 59908
.buy Reins of the Azure Riding Crane##87781
.learnmount Azure Riding Crane##127174 |use Reins of the Azure Riding Crane##87781
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Golden Riding Crane",[[
description This guide will help you acquire the Golden Riding Crane Mount.
model 43705
condition end hasmount(127176)
step
.' This mount requires you to be _Exalted_ with _The Golden Lotus_.
.' Click here to be taken to the reputation guide to become Exalted with The Golden Lotus. |confirm |next "dailies"
.' Click here to be taken to The Golden Lotus Quartermaster to purchase the mount. |confirm |next "buy"
step
label "dailies"
#include "Golden_Lotus"
step
label "buy"
goto Vale of Eternal Blossoms 73.3,42.9
.talk 59908
.buy Reins of the Golden Riding Crane##87782
.learnmount Golden Riding Crane##127176 |use Reins of the Golden Riding Crane##87782
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Blonde Riding Yak",[[
description This guide will help you acquire the Blonde Riding Yak Mount.
model 43712
condition end hasmount(127220)
step
goto Kun-Lai Summit 65.4,61.8
.talk 64518
.buy Reins of the Blonde Riding Yak##87789
.learnmount Blonde Riding Yak##127220 |use Reins of the Blonde Riding Yak##87789
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Grey Riding Yak",[[
description This guide will help you acquire the Grey Riding Yak Mount.
model 43711
condition end hasmount(127216)
step
goto Kun-Lai Summit 65.4,61.8
.talk 64518
.buy Reins of the Grey Riding Yak##87788
.learnmount Grey Riding Yak##127216 |use Reins of the Grey Riding Yak##87788
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Grand Expedition Yak",[[
description This guide will help you acquire the Grand Expedition Yak Mount.
model 42703
condition end hasmount(122708)
step
goto Kun-Lai Summit 65.4,61.8
.talk 64518
.buy Reins of the Grand Expedition Yak##84101
.learnmount Grand Expedition Yak##122708 |use Reins of the Grand Expedition Yak##84101
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Golden Cloud Serpent",[[
description This guide will help you acquire the Golden Cloud Serpent Mount.
model 41991
condition end hasmount(123993)
step
label a
.' This mount requires you to be _Exalted_ with _The Order of the Cloud Serpent_.
.' Routing to the proper section. |next |only if not completedq(30142)
.' Click here for the Golden Lotus Daily Quests. |next "Zygor's Horde Dailies Guides\\Pandaria (85 - 90)\\The Order of the Cloud Serpent Dailies" |confirm |only if ZGV.guidesets["DailiesHMOP"]
.' Click here to be taken to The Order of the cloud Serpent Quartermaster to purchase the mount. |next "buy" |only if rep("Order of the Cloud Serpent")>=Exalted
.' Click here to check your progress. |next b |confirm
step
#include "H_Cloud_Serpent_Pre"
|next a
step
label b
'After you have unlocked the dailies, complete as many as you can until you reach exalted status with _The Order of the Cloud Serpent_
'You are _Neutral_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")<=Neutral
'You are _Friendly_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Friendly
'You are _Honored_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Honored
'You are _Revered_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Revered
'You are _Exalted_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Exalted
.' Click here to route back to the start. |next a |confirm
'Exalted with The Order of the Cloud Serpent |achieve 6550
step
label "buy"
goto The Jade Forest 56.8,44.4
.talk 58414
.buy Reins of the Golden Cloud Serpent##85429
.learnmount Golden Cloud Serpent##123993 |use Reins of the Golden Cloud Serpent##85429
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Jade Cloud Serpent",[[
description This guide will help you acquire the Jade Cloud Serpent Mount.
model 40590
condition end hasmount(113199)
step
label a
.' This mount requires you to be _Exalted_ with _The Order of the Cloud Serpent_.
.' Routing to the proper section. |next |only if not completedq(30142)
.' Click here for the Golden Lotus Daily Quests. |next "Zygor's Horde Dailies Guides\\Pandaria (85 - 90)\\The Order of the Cloud Serpent Dailies" |confirm |only if ZGV.guidesets["DailiesHMOP"]
.' Click here to be taken to The Order of the cloud Serpent Quartermaster to purchase the mount. |next "buy" |only if rep("Order of the Cloud Serpent")>=Exalted
.' Click here to check your progress. |next b |confirm
step
#include "H_Cloud_Serpent_Pre"
|next a
step
label b
'After you have unlocked the dailies, complete as many as you can until you reach exalted status with _The Order of the Cloud Serpent_
'You are _Neutral_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")<=Neutral
'You are _Friendly_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Friendly
'You are _Honored_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Honored
'You are _Revered_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Revered
'You are _Exalted_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Exalted
.' Click here to route back to the start. |next a |confirm
'Exalted with The Order of the Cloud Serpent |achieve 6550
step
label "buy"
goto The Jade Forest 56.8,44.4
.talk 58414
.buy Reins of the Jade Cloud Serpent##79802
.learnmount Jade Cloud Serpent##113199 |use Reins of the Jade Cloud Serpent##79802
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Azure Cloud Serpent",[[
description This guide will help you acquire the Azure Cloud Serpent Mount.
model 41989
condition end hasmount(123992)
step
label a
.' This mount requires you to be _Exalted_ with _The Order of the Cloud Serpent_.
.' Routing to the proper section. |next |only if not completedq(30142)
.' Click here for the Golden Lotus Daily Quests. |next "Zygor's Horde Dailies Guides\\Pandaria (85 - 90)\\The Order of the Cloud Serpent Dailies" |confirm |only if ZGV.guidesets["DailiesHMOP"]
.' Click here to be taken to The Order of the cloud Serpent Quartermaster to purchase the mount. |next "buy" |only if rep("Order of the Cloud Serpent")>=Exalted
.' Click here to check your progress. |next b |confirm
step
#include "H_Cloud_Serpent_Pre"
|next a
step
label b
'After you have unlocked the dailies, complete as many as you can until you reach exalted status with _The Order of the Cloud Serpent_
'You are _Neutral_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")<=Neutral
'You are _Friendly_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Friendly
'You are _Honored_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Honored
'You are _Revered_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Revered
'You are _Exalted_ with _Order of the Cloud Serpent_. |only if rep("Order of the Cloud Serpent")==Exalted
.' Click here to route back to the start. |next a |confirm
'Exalted with The Order of the Cloud Serpent |achieve 6550
step
label "buy"
goto The Jade Forest 56.8,44.4
.talk 58414
.buy Reins of the Azure Cloud Serpent##85430
.learnmount Azure Cloud Serpent##123992 |use Reins of the Azure Cloud Serpent##85430
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Green Shado-Pan Riding Tiger",[[
description This guide will help you acquire the Green Shado-Pan Riding Tiger Mount.
model 44759
condition end hasmount(129932)
step
label a
.' This mount requires you to be _Exalted_ with _The Shado-Pan_.
.' Use the daily guides to earn Reputation with the Shado-Pan.
.' Routing to the proper section |next |only if not completedq(31389)
.' Click here to be taken to the reputation guide to begin becoming Exalted with The Shado-Pan. |next "Zygor's Horde Dailies Guides\\Pandaria (85 - 90)\\The Shado-Pan Dailies" |confirm |only if ZGV.guidesets["DailiesHMOP"]
.' Click here to be taken to The Shado-Pan Quartermaster to purchase the mount. |next "buy" |only if rep("Shado-Pan")>=Exalted
.' Click here to check your progress. |next b |confirm
step
goto Vale of Eternal Blossoms 63.3,21.1
.talk 64002
..accept 31389
|only if not completedq(31389)
step
goto Townlong Steppes 49.0,70.4
.talk 62304
..turnin 31389
|next a
|only if not completedq(31389)
step
label b
'After you have unlocked the dailies, complete as many as you can until you reach exalted status with _The Shado-Pan_
'You are _Neutral_ with _Shado-Pan_. |only if rep("Shado-Pan")<=Neutral
'You are _Friendly_ with _Shado-Pan_. |only if rep("Shado-Pan")==Friendly
'You are _Honored_ with _Shado-Pan_. |only if rep("Shado-Pan")==Honored
'You are _Revered_ with _Shado-Pan_. |only if rep("Shado-Pan")==Revered
'You are _Exalted_ with _Shado-Pan_. |only if rep("Shado-Pan")==Exalted
'Exalted with The Shado-Pan |achieve 6366
step
label "buy"
goto Townlong Steppes 48.8,70.5
.talk 64595
.buy Reins of the Green Shado-Pan Riding Tiger##89305
.learnmount Shado-Pan Riding Tiger##129932 |use Reins of the Green Shado-Pan Riding Tiger##89305
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Red Shado-Pan Riding Tiger",[[
description This guide will help you acquire the Red Shado-Pan Riding Tiger Mount.
model 44757
condition end hasmount(129935)
step
label a
.' This mount requires you to be _Exalted_ with _The Shado-Pan_.
.' Use the daily guides to earn Reputation with the Shado-Pan.
.' Routing to the proper section |next |only if not completedq(31389)
.' Click here to be taken to the reputation guide to begin becoming Exalted with The Shado-Pan. |next "Zygor's Horde Dailies Guides\\Pandaria (85 - 90)\\The Shado-Pan Dailies" |confirm |only if ZGV.guidesets["DailiesHMOP"]
.' Click here to be taken to The Shado-Pan Quartermaster to purchase the mount. |next "buy" |only if rep("Shado-Pan")>=Exalted
.' Click here to check your progress. |next b |confirm
step
goto Vale of Eternal Blossoms 63.3,21.1
.talk 64002
..accept 31389
|only if not completedq(31389)
step
goto Townlong Steppes 49.0,70.4
.talk 62304
..turnin 31389
|next a
|only if not completedq(31389)
step
label b
'After you have unlocked the dailies, complete as many as you can until you reach exalted status with _The Shado-Pan_
'You are _Neutral_ with _Shado-Pan_. |only if rep("Shado-Pan")<=Neutral
'You are _Friendly_ with _Shado-Pan_. |only if rep("Shado-Pan")==Friendly
'You are _Honored_ with _Shado-Pan_. |only if rep("Shado-Pan")==Honored
'You are _Revered_ with _Shado-Pan_. |only if rep("Shado-Pan")==Revered
'You are _Exalted_ with _Shado-Pan_. |only if rep("Shado-Pan")==Exalted
'Exalted with The Shado-Pan |achieve 6366
step
label "buy"
goto Townlong Steppes 48.8,70.5
.talk 64595
.buy Reins of the Red Shado-Pan Riding Tiger##89306
.learnmount Red Shado-Pan Riding Tiger##129935 |use Reins of the Red Shado-Pan Riding Tiger##89306
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Blue Shado-Pan Riding Tiger",[[
description This guide will help you acquire the Blue Shado-Pan Riding Tiger Mount.
model 43900
condition end hasmount(129934)
step
label a
.' This mount requires you to be _Exalted_ with _The Shado-Pan_.
.' Use the daily guides to earn Reputation with the Shado-Pan.
.' Routing to the proper section |next |only if not completedq(31389)
.' Click here to be taken to the reputation guide to begin becoming Exalted with The Shado-Pan. |next "Zygor's Horde Dailies Guides\\Pandaria (85 - 90)\\The Shado-Pan Dailies" |confirm |only if ZGV.guidesets["DailiesHMOP"]
.' Click here to be taken to The Shado-Pan Quartermaster to purchase the mount. |next "buy" |only if rep("Shado-Pan")>=Exalted
.' Click here to check your progress. |next b |confirm
step
goto Vale of Eternal Blossoms 63.3,21.1
.talk 64002
..accept 31389
|only if not completedq(31389)
step
goto Townlong Steppes 49.0,70.4
.talk 62304
..turnin 31389
|next a
|only if not completedq(31389)
step
label b
'After you have unlocked the dailies, complete as many as you can until you reach exalted status with _The Shado-Pan_
'You are _Neutral_ with _Shado-Pan_. |only if rep("Shado-Pan")<=Neutral
'You are _Friendly_ with _Shado-Pan_. |only if rep("Shado-Pan")==Friendly
'You are _Honored_ with _Shado-Pan_. |only if rep("Shado-Pan")==Honored
'You are _Revered_ with _Shado-Pan_. |only if rep("Shado-Pan")==Revered
'You are _Exalted_ with _Shado-Pan_. |only if rep("Shado-Pan")==Exalted
'Exalted with The Shado-Pan |achieve 6366
step
label "buy"
goto Townlong Steppes 48.8,70.5
.talk 64595
.buy Reins of the Blue Shado-Pan Riding Tiger##89307
.learnmount Blue Shado-Pan Riding Tiger##129934 |use Reins of the Blue Shado-Pan Riding Tiger##89307
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Grand Armored Wyvern",[[
description This guide will help you acquire the Grand Armored Wyvern Mount.
model 46930
condition end hasmount(135418)
step
label a
.' This mount requires you to be _Exalted_ with _Dominance Offensive_.
.' Use the daily guides to earn Reputation with the Dominance Offensive.
.' Click here to be taken to the pre-quests for the Dominance Offensive. |confirm |next "pre" |only if not ZGV.guidesets["DailiesHMOP"] and not ZGV.guidesets["ReputationsHMOP"] and not completedq(32108)
.' Click here to be taken to the reputation guide to begin becoming Exalted with the Dominance Offensive. |next "Zygor's Horde Dailies Guides\\Pandaria (85 - 90)\\Dominance Offensive Dailies" |confirm |only if ZGV.guidesets["DailiesHMOP"] and not ZGV.guidesets["ReputationsHMOP"]
.' Click here to be taken to the reputation guide to begin becoming Exalted with the Dominance Offensive. |next "Zygor's Horde Reputations Guides\\Mists of Pandaria\\Dominance Offensive" |confirm |only if ZGV.guidesets["ReputationsHMOP"]
.' Click here to be taken to the Dominance Offensive Quartermaster to purchase the mount. |next "buy" |only if rep("Dominance Offensive")>=Exalted
.' Click here to check your progress. |next b |confirm
step
label "pre"
goto Vale of Eternal Blossoms 62.9,28.3
.talk 64566
..accept 32249
step
goto Krasarang Wilds 8.7,64.4
.talk 67812
..turnin 32249
step
goto Krasarang Wilds 8.7,64.4
.talk 62092
..accept 32250
step
goto Krasarang Wilds 10.0,64.1
.from Alliance Sentinel##67900+, Alliance Footman##+, Alliance Priest##+
..' Kill 25 Alliance troops |q 32250/1
step
goto Krasarang Wilds 10.7,53.2
.talk 67927
..' Find Blood Guard Gro'tash |q 32250/2
step
goto Krasarang Wilds 15.7,57.8
.talk 67926
..' Find Grizzle Gearslip |q 32250/3
step
'Next to you
.talk 62092
..turnin 32250
..accept 32108
step
goto 8.5,63.8
.click Signal Fire
..turnin 32108
step
goto Krasarang Wilds 9.7,52.5
.talk 67785
.fpath Domination Point
step
label b
'After you have unlocked the dailies, complete as many as you can until you reach exalted status with the_Dominance Offensive_
'You are _Neutral_ with _Dominance Offensive_. |only if rep("Dominance Offensive")<=Neutral
'You are _Friendly_ with _Dominance Offensive_. |only if rep("Dominance Offensive")==Friendly
'You are _Honored_ with _Dominance Offensive_. |only if rep("Dominance Offensive")==Honored
'You are _Revered_ with _Dominance Offensive_. |only if rep("Dominance Offensive")==Revered
'You are _Exalted_ with _Dominance Offensive_. |only if rep("Dominance Offensive")==Exalted
'Exalted with the Dominance Offensive |achieve 6366
step
label "buy"
goto Krasarang Wilds 10.8,53.4
.talk 69060
.buy Grand Armored Wyvern##89307
.learnmount Grand Armored Wyvern##135418 |use Grand Armored Wyvern##89307
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Thundering August Cloud Serpent",[[
description This guide will help you acquire the Thundering August Cloud Serpent Mount.
model 43686
condition end hasmount(129918)
step
.' This mount requires you to be _Exalted_ with _The August Celestials_.
.' Click here to be taken to the reputation guide to become Exalted with The August Celestials. |confirm |next "dailies"
.' Click here to be taken to The August Celestials Quartermaster to purchase the mount. |confirm |next "buy"
step
label "dailies"
#include "August_Celestials"
step
label "buy"
goto Vale of Eternal Blossoms 62.7,23.3
.talk 64001
.buy Reins of the Thundering August Cloud Serpent##89304
.learnmount Thundering August Cloud Serpent##129918 |use Reins of the Thundering August Cloud Serpent##89304
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Thundering Jade Cloud Serpent",[[
description This guide will help you acquire the Thundering Jade Cloud Serpent Mount.
model 43686
condition end hasmount(124408)
step
.' This mount requires you to be _Exalted_ with your guild, and for your guild to have completed Tier 14 content
|confirm
step
goto Orgrimmar 48.2,75.6
.talk 46572
.buy 1 Reins of the Thundering Jade Cloud Serpent##85666
.learnmount Thundering Jade Cloud Serpent##124408 |use Reins of the Thundering Jade Cloud Serpent##85666
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Imperial Quilen",[[
description This guide will help you acquire the Imperial Quilen Mount.
model 43254
condition end hasmount(124659)
step
.' This mount requires you to purchase the World of Warcraft: Mists of Pandaria Collector's Edition
.' You may be able to find a copy of this mount on eBay or Amazon, but they are typically very expensive.
|confirm
step
.' Check your in-game mail for your new mount!
.learnmount Imperial Quilen##124659 |use Imperial Quilen##85870
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Red Flying Cloud",[[
description This guide will help you acquire the Red Flying Cloud Mount.
model 44808
condition end hasmount(130092)
step
.' This mount requires you to be _Exalted_ with _The Lorewalkers_.
.' In order to become Exalted with the Lorewalkers, refer to the Zygor Guides Reputation section.
.' Click here to access the Lorewalkers guide. |next "Zygor's Horde Reputations Guides\\Mists of Pandaria\\Lorewalkers" |confirm |only if ZGV.guidesets["ReputationsHMOP"]
.' Exalted with the Lorewalkers |achieve 6548
step
goto Vale of Eternal Blossoms 82.2,29.4
.talk 64605
.buy Disc of the Red Flying Cloud##89363
.learnmount Red Flying Cloud##130092 |use Disc of the Red Flying Cloud##89363
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Pandaren Flying Kite",[[
description This guide will help you acquire the Pandaren Flying Kite Mount.
model 41903
condition end hasmount(118737)
step
.' This mount requires you to have the Achievement: Pandaren Ambassador
.' Earn Exalted with all of the Pandaren reputations. |only if not achieved(6827)
|confirm
step
.' Check your in-game mail for your new mount!
.collect 1 Pandaren Kite String##81559
.learnmount Pandaren Flying Kite##118737 |use Pandaren Kite String##81559
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Obsidian Nightwing",[[
description This guide will help you acquire the Obsidian Nightwing Mount.
model 42498
condition end hasmount(124659)
step
.' You can only obtain this mount through the Recruit-A-Friend program.
|confirm
step
.' Check your in-game mail for your new mount!
.collect 1 Heart of the Nightwing##83086
.learnmount Obsidian Nightwing##124659 |use Heart of the Nightwing##83086
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Amber Scorpion",[[
description This guide will help you acquire the Amber Scorpion Mount.
model 43090
condition end hasmount(123886)
step
label a
.' This mount requires you to be _Exalted_ with _The Klaxxi_.
.' In order to become Exalted with the Klaxxi, refer to the Zygor Guides Reputation section.
.' Click here for the daily quests. |next "Zygor's Horde Dailies Guides\\Pandaria (85 - 90)\\The Klaxxi Dailies" |confirm |only if ZGV.guidesets["DailiesHMOP"]
.' Click here to check your progress. |confirm
.' Click here to be taken to The Klaxxi Quartermaster to purchase the mount. |next "buy" |only if rep("The Klaxxi")>=Exalted
step
'You are _Neutral_ with _The Klaxxi_. |only if rep("The Klaxxi")<=Neutral
'You are _Friendly_ with _The Klaxxi_. |only if rep("The Klaxxi")==Friendly
'You are _Honored_ with _The Klaxxi_. |only if rep("The Klaxxi")==Honored
'You are _Revered_ with _The Klaxxi_. |only if rep("The Klaxxi")==Revered
'You are _Exalted_ with _The Klaxxi_. |only if rep("The Klaxxi")==Exalted
'Exalted with The Klaxxi |achieve 6366
.' Click here to return to the |next a |confirm
step
label "buy"
goto Dread Wastes 55.0,35.6
.talk 64599
.buy Reins of the Amber Scorpion##85262
.learnmount Amber Scorpion##123886 |use Reins of the Amber Scorpion##85262
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Onyx Cloud Serpent",[[
description This guide will help you acquire the Onyx Cloud Serpent Mount.
model 41990
condition end hasmount(127154)
step
.' This mount requires you to be _Exalted_ with _Shado-Pan_.
.' In order to become Exalted with the Shado-Pan, refer to the Zygor Guides Reputation section.
.' Click here to be sent to the Shado-Pan daily quests. |next "Zygor's Horde Dailies Guides\\Pandaria (85 - 90)\\The Shado-Pan Dailies" |confirm |only if ZGV.guidesets["DailiesHMOP"]
.' Exalted with the Shado-Pan |achieve 6366
step
label "quest"
goto Townlong Steppes 49.5,70.5
.talk 63009
..accept 31266
step
goto 48.8,58.6
.kill Shan'ze Spymaster##63888 |q 31266/1
step
goto Townlong Steppes 49.5,70.5
.talk 63009
..turnin 31266
..accept 31277
step
goto 42.6,63.9
.talk 62304
.' Tell him you're ready to go.
|confirm
step
'At this point you will fight throught waves of mobs for a few minutes. When Hei Fang lands, you will need to assist the Shado-Pan in defeating him.
|confirm
step
goto 41.6,62.0
.from Hei Feng##62309
.' Put a stop to the Mogu Invasion of Niuzao Temple |q 31277/1
step
goto 49.0,70.6
.talk 62304
..turnin 31277
step
.learnmount Onyx Cloud Serpent##127154 |use Reins of the Onyx Cloud Serpent##87768
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Red Dragon Turtle",[[
description This guide will help you acquire the Red Dragon Turtle Mount.
model 43721
condition end hasmount(127290)
step
'Routing to the next step|next "rep"
|only if not Pandaren
step
'Skipping to the next step |next "buy"
|only if Pandaren
step
label "rep"
.' Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
.' Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label "huojin"
'Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label "huojin_buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Huojin Tabard##83080
step
label "huojin_tab"
.' Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
.' You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
.' Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
.' Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
.' Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
.' Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Reins of the Red Dragon Turtle##91007
step
.learnmount Red Dragon Turtle##127290 |use Reins of the Red Dragon Turtle##91007
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Purple Dragon Turtle",[[
description This guide will help you acquire the Purple Dragon Turtle Mount.
model 43910
condition end hasmount(127289)
step
'Routing to the next step |next "rep"
|only if not Pandaren
step
'Skipping to the next step |next "buy"
|only if Pandaren
step
label "rep"
.' Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
.' Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label "huojin"
'Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label "huojin_buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Huojin Tabard##83080
step
label "huojin_tab"
.' Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
.' You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
.' Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
.' Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
.' Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
.' Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Reins of the Purple Dragon Turtle##91006
step
.learnmount Purple Dragon Turtle##127289 |use Reins of the Purple Dragon Turtle##91006
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Green Dragon Turtle",[[
description This guide will help you acquire the Green Dragon Turtle Mount.
model 42250
condition end hasmount(120395)
step
'Routing to the next step |next "rep"
|only if not Pandaren
step
'Skipping to the next step |next "buy"
|only if Pandaren
step
label "rep"
.' Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
.' Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label "huojin"
'Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label "huojin_buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Huojin Tabard##83080
step
label "huojin_tab"
.' Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
.' You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
.' Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
.' Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
.' Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
.' Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Reins of the Green Dragon Turtle##91004
step
.learnmount Green Dragon Turtle##120395 |use Reins of the Green Dragon Turtle##91004
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Brown Dragon Turtle",[[
description This guide will help you acquire the Brown Dragon Turtle Mount.
model 43719
condition end hasmount(127288)
step
'Routing to the next step |next "rep"
|only if not Pandaren
step
'Skipping to the next step |next "buy"
|only if Pandaren
step
label "rep"
.' Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
.' Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label "huojin"
'Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label "huojin_buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Huojin Tabard##83080
step
label "huojin_tab"
.' Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
.' You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
.' Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
.' Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
.' Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
.' Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Reins of the Brown Dragon Turtle##91005
step
.learnmount Brown Dragon Turtle##127288 |use Reins of the Brown Dragon Turtle##91005
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Blue Dragon Turtle",[[
description This guide will help you acquire the Blue Dragon Turtle Mount.
model 43718
condition end hasmount(127287)
step
'Routing to the next step |next "rep"
|only if not Pandaren
step
'Skipping to the next step |next "buy"
|only if Pandaren
step
label "rep"
.' Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
.' Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label "huojin"
'Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label "huojin_buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Huojin Tabard##83080
step
label "huojin_tab"
.' Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
.' You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
.' Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
.' Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
.' Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
.' Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Reins of the Blue Dragon Turtle##91009
step
.learnmount Blue Dragon Turtle##127287 |use Reins of the Blue Dragon Turtle##91009
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Black Dragon Turtle",[[
description This guide will help you acquire the Black Dragon Turtle Mount.
model 43717
condition end hasmount(127286)
step
'Routing to the next step |next "rep"
|only if not Pandaren
step
'Skipping to the next step |next "buy"
|only if Pandaren
step
label "rep"
.' Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
.' Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label "huojin"
'Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label "huojin_buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Huojin Tabard##83080
step
label "huojin_tab"
.' Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
.' You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
.' Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
.' Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
.' Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
.' Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Reins of the Black Dragon Turtle##91008
step
.learnmount Black Dragon Turtle##127286 |use Reins of the Black Dragon Turtle##91008
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Great Red Dragon Turtle",[[
description This guide will help you acquire the Great Red Dragon Turtle Mount.
model 42352
condition end hasmount(120822)
step
'Routing to the next step |next "rep"
|only if not Pandaren
step
'Skipping to the next step |next "buy"
|only if Pandaren
step
label "rep"
.' Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
.' Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label "huojin"
'Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label "huojin_buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Huojin Tabard##83080
step
label "huojin_tab"
.' Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
.' You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
.' Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
.' Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
.' Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
.' Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Reins of the Great Red Dragon Turtle##91010
step
.learnmount Great Red Dragon Turtle##120822 |use Reins of the Great Red Dragon Turtle##91010
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Great Purple Dragon Turtle",[[
description This guide will help you acquire the Great Purple Dragon Turtle Mount.
model 43726
condition end hasmount(127310)
step
'Routing to the next step |next "rep"
|only if not Pandaren
step
'Skipping to the next step |next "buy"
|only if Pandaren
step
label "rep"
.' Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
.' Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label "huojin"
'Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label "huojin_buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Huojin Tabard##83080
step
label "huojin_tab"
.' Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
.' You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
.' Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
.' Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
.' Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
.' Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Reins of the Great Purple Dragon Turtle##91015
step
.learnmount Great Purple Dragon Turtle##127310 |use Reins of the Great Purple Dragon Turtle##91015
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Great Green Dragon Turtle",[[
description This guide will help you acquire the Great Green Dragon Turtle Mount.
model 43722
condition end hasmount(127293)
step
'Routing to the next step |next "rep"
|only if not Pandaren
step
'Skipping to the next step |next "buy"
|only if Pandaren
step
label "rep"
.' Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
.' Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label "huojin"
'Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label "huojin_buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Huojin Tabard##83080
step
label "huojin_tab"
.' Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
.' You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
.' Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
.' Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
.' Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
.' Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Reins of the Great Green Dragon Turtle##91012
step
.learnmount Great Green Dragon Turtle##127293 |use Reins of the Great Green Dragon Turtle##91012
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Great Brown Dragon Turtle",[[
description This guide will help you acquire the Great Brown Dragon Turtle Mount.
model 43725
condition end hasmount(127308)
step
'Routing to the next step |next "rep"
|only if not Pandaren
step
'Skipping to the next step |next "buy"
|only if Pandaren
step
label "rep"
.' Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
.' Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label "huojin"
'Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label "huojin_buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Huojin Tabard##83080
step
label "huojin_tab"
.' Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
.' You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
.' Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
.' Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
.' Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
.' Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Reins of the Great Brown Dragon Turtle##91014
step
.learnmount Great Brown Dragon Turtle##127308 |use Reins of the Great Brown Dragon Turtle##91014
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Great Blue Dragon Turtle",[[
description This guide will help you acquire the Great Blue Dragon Turtle Mount.
model 43724
condition end hasmount(127302)
step
'Routing to the next step	|next "rep"
|only if not Pandaren
step
'Skipping to the next step |next "buy"
|only if Pandaren
step
label "rep"
.' Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
.' Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label "huojin"
'Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label "huojin_buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Huojin Tabard##83080
step
label "huojin_tab"
.' Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
.' You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
.' Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
.' Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
.' Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
.' Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Reins of the Brown Dragon Turtle##91013
step
.learnmount Great Blue Dragon Turtle##127302 |use Reins of the Great Blue Dragon Turtle##91013
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Great Black Dragon Turtle",[[
description This guide will help you acquire the Great Black Dragon Turtle Mount.
model 43723
condition end hasmount(127295)
step
'Routing to the next step |next "rep"
|only if not Pandaren
step
'Skipping to the next step |next "buy"
|only if Pandaren
step
label "rep"
.' Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
.' Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
step
label "huojin"
'Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label "huojin_buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Huojin Tabard##83080
step
label "huojin_tab"
.' Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
.' You can run any dungeon that grants experience to gain reputation for Huojin Pandaren.
.' Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
.' Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
.' Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
.' Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next |only if default
step
label "buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Reins of the Great Black Dragon Turtle##91011
step
.learnmount Great Black Dragon Turtle##127295 |use Reins of the Great Black Dragon Turtle##91011
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Depleted-Kyparium Rocket",[[
description This guide will help you acquire the Depleted-Kyparium Rocket Mount.
model 43637
condition end hasmount(126507)
step
'Skipping to the next step |next |only if skill("Engineering")<600
goto Stormwind City 63.2,31.4 |only if skill("Engineering")>=600
.talk 5518 |only if skill("Engineering")>=600
.learn Depleted-Kyparium Rocket##127138 |only if skill("Engineering")>=600 |next a
.' Click here if you do not wish to make this pet yourself |confirm |only if skill("Engineering")>=600
step
'You can either _buy_ this _mount_ from the _Auction House_ or make it:
.buy 1 Depleted-Kyparium Rocket##87250 |next "bought"
.' Click here to make this mount |confirm
step
label a
'You can either _buy_ these _materials_ from the _ Auction House_ or _farm_ to obtain them:
.collect 12 Living Steel##72104
.collect 200 Kyparite##72093
.collect 3 Orb of Mystery##83092
.collect 12 High Explosive Gunpowder##77468
.collect 20 Ghost Iron Bolts##77467
.collect 12 Spirit of Harmony##76061 |tip This reagent is Bind on Pickup, so if you are making it yourself, you will need the ingredients. Otherwise, the person making this should already have them.
step
map Townlong Steppes
path	61.6,76.3	59.6,68.3	59.2,58.7
path	63.3,51.7	62.2,44.1	66.8,39.5
path	73.2,46.9	73.2,55.5	75.0,62.7
path	70.5,67.1	68.5,70.7
.' Follow the provided path.
.' You will need fewer ores for the _Riddle of Steel_ path. The trade off is you will need to find an alchemist with 36 _Spirit of Harmony_
.collect 72 Black Trillium Ore##72094
.collect 72 White Trillium Ore##72103
.' or
.' You will need to search for multiple alchemists if you take this route. You will only be able to use _Transmute: Living Steel_ once per day with each.
.collect 144 Black Trillium Ore##72094
.collect 144 White Trillium Ore##72103
.collect 60 Ghost Iron Ore##72092
step
.collect 200 Kyparite##72093
.collect 10 Kyparite Fragment##97546 |n |tip Once you gather enough fragments, click them to create a Kyparite.
.' Use your Kyparite Fragments. |use Kyparite Fragment##97546
step
goto Vale of Eternal Blossoms 62.2,42.0
.talk 61650 |tip He patrols nearby.
.buy 3 Orb of Mystery##83092
.' This will be cheaper with guild perks if at all possible.
step
goto Vale of Eternal Blossoms/0 21.8,72.3
.create 36 Trillium Bar##102167
.create 72 Trillium Bar##102167
.' Click here if you choose the _Spirit of Harmony_ route. |confirm
step
.create 30 Ghost Iron Bar##102165
step
.create 20 Ghost Iron Bolt##127113
step
'Have an _Engineer make this pet_ for you |tip Ask in your guild or in Trade Chat |only if knowspell(127138)==false
.create Depleted-Kyparium Rocket##127138,Engineering,1 total |only if knowspell(127138)==true
.collect 1 Depleted-Kyparium Rocket##87250
step
label bought
.learnmount Depleted-Kyparium Rocket##126507 |use Depleted-Kyparium Rocket##87250
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Geosynchronous World Spinner",[[
description This guide will help you acquire the Geosynchronous World Spinner Mount.
model 43638
condition end hasmount(126508)
step
'Skipping to the next step |next |only if skill("Engineering")<600
goto Orgrimmar 56.8,56.5 |only if skill("Engineering")>=600
.talk 11017 |only if skill("Engineering")>=600
.learn Geosynchronous World Spinner##127138 |only if skill("Engineering")>=600
.' Click here if you do not wish to make this pet yourself |confirm |only if skill("Engineering")>=600
step
'You can either _buy_ this _mount_ from the _Auction House_ or make it:
.buy 1 Geosynchronous World Spinner##87251 |next "bought"
.' Click here to make this mount |confirm
step
'You can either _buy_ these _materials_ from the _ Auction House_ or _farm_ to obtain them:
.collect 12 Living Steel##72104
.collect 12 Trillium Bar##72095
.collect 3 Orb of Mystery##83092
.collect 20 Ghost Iron Bolts##77467
.collect 12 Spirit of Harmony##76061 |tip This reagent is Bind on Pickup, so if you are making it yourself, you will need the ingredients. Otherwise, the person making this should already have them.
step
map Townlong Steppes
path	61.6,76.3	59.6,68.3	59.2,58.7
path	63.3,51.7	62.2,44.1	66.8,39.5
path	73.2,46.9	73.2,55.5	75.0,62.7
path	70.5,67.1	68.5,70.7
.' Follow the provided path.
.' You will need fewer ores for the _Riddle of Steel_ path. The trade off is you will need to find an alchemist with 36 _Spirit of Harmony_
.collect 96 Black Trillium Ore##72094
.collect 96 White Trillium Ore##72103
.' or
.' You will need to search for multiple alchemists if you take this route. You will only be able to use _Transmute: Living Steel_ once per day with each.
.collect 168 Black Trillium Ore##72094
.collect 168 White Trillium Ore##72103
.collect 60 Ghost Iron Ore##72092
step
goto Vale of Eternal Blossoms 62.2,42.0
.talk 61650 |tip He patrols nearby.
.buy 3 Orb of Mystery##83092
.' This will be cheaper with guild perks if at all possible.
step
goto Vale of Eternal Blossoms/0 21.8,72.3
.create 36 Trillium Bar##102167
.create 72 Trillium Bar##102167
.' Click here if you choose the _Spirit of Harmony_ route. |confirm
step
.create 30 Ghost Iron Bar##102165
step
.create 20 Ghost Iron Bolt##127113	step
'Have an _Engineer make this pet_ for you |tip Ask in your guild or in Trade Chat |only if knowspell(127139)==false
.create Geosynchronous World Spinner##127139,Engineering,1 total |only if knowspell(127139)==true
.collect 1 Geosynchronous World Spinner##87251
step
label bought
.learnmount Geosynchronous World Spinner##126508 |use Geosynchronous World Spinner##87251
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Sunstone Panther",[[
description This guide will help you acquire the Sunstone Panther Mount.
model 42501
condition end hasmount(121839)
step
'Skipping to the next step |next |only if skill("Jewelcrafting")<600
goto The Jade Forest 56.7,44.4 |only if skill("Jewelcrafting")>=600
.talk 58414 |only if skill("Jewelcrafting")>=600
.buy 1 Design: Sunstone Panther##83830 |only if skill("Jewelcrafting")>=600
.learn Sunstone Panther##121843 |only if skill("Jewelcrafting")>=600
.' Click here if you do not wish to make this pet yourself |confirm |only if skill("Jewelcrafting")>=600
step
'You can either _buy_ this _mount_ from the _Auction House_ or make it:
.buy 1 Sunstone Panther##87251 |next "bought"
.' Click here to make this mount |confirm
step
'You can either _buy_ these _materials_ from the _ Auction House_ or _farm_ to obtain them:
.collect 4 Living Steel##72104
.collect 1 Orb of Mystery##83092
.collect 20 Sun's Radiance##76142
.collect 2 Serpent's Eye##76734
.' Click here to farm the materials yourself. |confirm
|next make |only if default
step
map Townlong Steppes
path	61.6,76.3	59.6,68.3	59.2,58.7
path	63.3,51.7	62.2,44.1	66.8,39.5
path	73.2,46.9	73.2,55.5	75.0,62.7
path	70.5,67.1	68.5,70.7
.' Follow the provided path.
.' Prospect all of the Ore you get. |use Prospecting##31252
.collect 20 Sun's Radiance##76142
step
map Townlong Steppes
path	61.6,76.3	59.6,68.3	59.2,58.7
path	63.3,51.7	62.2,44.1	66.8,39.5
path	73.2,46.9	73.2,55.5	75.0,62.7
path	70.5,67.1	68.5,70.7
.' Follow the provided path.
.collect 24 Black Trillium Ore##72094
.collect 24 White Trillium Ore##72103
step
goto Vale of Eternal Blossoms 62.2,42.0
.talk 61650 |tip He patrols nearby.
.buy 1 Orb of Mystery##83092
step
.' Kill enemies anywhere inside of the Vale of Eternal Blossoms.
.collect 10 Mote of Harmony##89112 |n |use Mote of Harmony##129352
.collect 14 Spirit of Harmony##76061
step
goto Vale of Eternal Blossoms 61.6,21.6
.talk 66685
.buy 2 Serpent's Eye##76734
.' Note that you will need 2 Spirits of Harmony to buy this item.
step
label make
'Have a _Jewelcrafter make this pet_ for you |tip Ask in your guild or in Trade Chat |only if knowspell(121843)==false
.create Sunstone Panther##121843,Jewelcrafting,1 total |only if knowspell(121843)==true
.collect 1 Sunstone Panther##83089
step
label bought
.learnmount Sunstone Panther##121839 |use Sunstone Panther##83089
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Jade Panther",[[
description This guide will help you acquire the Jade Panther Mount.
model 42502
condition end hasmount(121837)
step
'Skipping to the next step |next |only if skill("Jewelcrafting")<600
goto The Jade Forest 56.7,44.4 |only if skill("Jewelcrafting")>=600
.talk 58414 |only if skill("Jewelcrafting")>=600
.buy 1 Design: Jade Panther##83845 |only if skill("Jewelcrafting")>=600
.learn Jade Panther##121844 |only if skill("Jewelcrafting")>=600
.' Click here if you do not wish to make this pet yourself |confirm |only if skill("Jewelcrafting")>=600
step
'You can either _buy_ this _mount_ from the _Auction House_ or make it:
.buy 1 Jade Panther##83088 |next "bought"
.' Click here to make this mount |confirm
step
'You can either _buy_ these _materials_ from the _ Auction House_ or _farm_ to obtain them:
.collect 4 Living Steel##72104
.collect 1 Orb of Mystery##83092
.collect 20 Wild Jade##76139
.collect 2 Serpent's Eye##76734
.' Click here to farm the materials yourself. |confirm
|next make |only if default
step
map Townlong Steppes
path	61.6,76.3	59.6,68.3	59.2,58.7
path	63.3,51.7	62.2,44.1	66.8,39.5
path	73.2,46.9	73.2,55.5	75.0,62.7
path	70.5,67.1	68.5,70.7
.' Follow the provided path.
.' Prospect all of the Ore you get. |use Prospecting##31252
.collect 20 Wild Jade##76139
step
map Townlong Steppes
path	61.6,76.3	59.6,68.3	59.2,58.7
path	63.3,51.7	62.2,44.1	66.8,39.5
path	73.2,46.9	73.2,55.5	75.0,62.7
path	70.5,67.1	68.5,70.7
.' Follow the provided path.
.collect 24 Black Trillium Ore##72094
.collect 24 White Trillium Ore##72103
step
goto Vale of Eternal Blossoms 62.2,42.0
.talk 61650 |tip He patrols nearby.
.buy 1 Orb of Mystery##83092
step
.' Kill enemies anywhere inside of the Vale of Eternal Blossoms.
.collect 10 Mote of Harmony##89112 |n |use Mote of Harmony##129352
.collect 14 Spirit of Harmony##76061
step
goto Vale of Eternal Blossoms 61.6,21.6
.talk 66685
.buy 2 Serpent's Eye##76734
.' Note that you will need 2 Spirits of Harmony to buy this item.
step
label make
'Have a _Jewelcrafter make this pet_ for you |tip Ask in your guild or in Trade Chat |only if knowspell(121844)==false
.create Jade Panther##121844,Jewelcrafting,1 total |only if knowspell(121844)==true
.collect 1 Jade Panther##83088
step
label bought
.learnmount Jade Panther##121837 |use Jade Panther##83088
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Sapphire Panther",[[
description This guide will help you acquire the Sapphire Panther Mount.
model 42500
condition end hasmount(121836)
step
'Skipping to the next step |next |only if skill("Jewelcrafting")<600
goto The Jade Forest 56.7,44.4 |only if skill("Jewelcrafting")>=600
.talk 58414 |only if skill("Jewelcrafting")>=600
.buy 1 Design: Sapphire Panther##83932 |only if skill("Jewelcrafting")>=600
.learn Sapphire Panther##121842 |only if skill("Jewelcrafting")>=600
.' Click here if you do not wish to make this pet yourself |confirm |only if skill("Jewelcrafting")>=600
step
'You can either _buy_ this _mount_ from the _Auction House_ or make it:
.buy 1 Sapphire Panther##83090 |next "bought"
.' Click here to make this mount |confirm
step
'You can either _buy_ these _materials_ from the _ Auction House_ or _farm_ to obtain them:
.collect 4 Living Steel##72104
.collect 1 Orb of Mystery##83092
.collect 20 River's Heart##76138
.collect 2 Serpent's Eye##76734
.' Click here to farm the materials yourself. |confirm
|next make |only if default
step
map Townlong Steppes
path	61.6,76.3	59.6,68.3	59.2,58.7
path	63.3,51.7	62.2,44.1	66.8,39.5
path	73.2,46.9	73.2,55.5	75.0,62.7
path	70.5,67.1	68.5,70.7
.' Follow the provided path.
.' Prospect all of the Ore you get. |use Prospecting##31252
.collect 20 River's Heart##76138
step
map Townlong Steppes
path	61.6,76.3	59.6,68.3	59.2,58.7
path	63.3,51.7	62.2,44.1	66.8,39.5
path	73.2,46.9	73.2,55.5	75.0,62.7
path	70.5,67.1	68.5,70.7
.' Follow the provided path.
.collect 24 Black Trillium Ore##72094
.collect 24 White Trillium Ore##72103
step
goto Vale of Eternal Blossoms 62.2,42.0
.talk 61650 |tip He patrols nearby.
.buy 1 Orb of Mystery##83092
step
.' Kill enemies anywhere inside of the Vale of Eternal Blossoms.
.collect 10 Mote of Harmony##89112 |n |use Mote of Harmony##129352
.collect 14 Spirit of Harmony##76061
step
goto Vale of Eternal Blossoms 61.6,21.6
.talk 66685
.buy 2 Serpent's Eye##76734
.' Note that you will need 2 Spirits of Harmony to buy this item.
step
label make
'Have a _Jewelcrafter make this pet_ for you |tip Ask in your guild or in Trade Chat |only if knowspell(121842)==false
.create Sapphire Panther##121842,Jewelcrafting,1 total |only if knowspell(121842)==true
.collect 1 Sapphire Panther##83090
step
label bought
.learnmount Sapphire Panther##121836 |use Sapphire Panther##83090
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Ruby Panther",[[
description This guide will help you acquire the Ruby Panther Mount.
model 42499
condition end hasmount(121838)
step
'Skipping to the next step |next |only if skill("Jewelcrafting")<600
goto The Jade Forest 56.7,44.4 |only if skill("Jewelcrafting")>=600
.talk 58414 |only if skill("Jewelcrafting")>=600
.buy 1 Design: Ruby Panther##83931 |only if skill("Jewelcrafting")>=600
.learn Ruby Panther##121841 |only if skill("Jewelcrafting")>=600
.' Click here if you do not wish to make this pet yourself |confirm |only if skill("Jewelcrafting")>=600
step
'You can either _buy_ this _mount_ from the _Auction House_ or make it:
.buy 1 Ruby Panther##83087 |next "bought"
.' Click here to make this mount |confirm
step
'You can either _buy_ these _materials_ from the _ Auction House_ or _farm_ to obtain them:
.collect 4 Living Steel##72104
.collect 1 Orb of Mystery##83092
.collect 20 Sun's Radiance##76142
.collect 2 Serpent's Eye##76734
.' Click here to farm the materials yourself. |confirm
|next make |only if default
step
map Townlong Steppes
path	61.6,76.3	59.6,68.3	59.2,58.7
path	63.3,51.7	62.2,44.1	66.8,39.5
path	73.2,46.9	73.2,55.5	75.0,62.7
path	70.5,67.1	68.5,70.7
.' Follow the provided path.
.' Prospect all of the Ore you get. |use Prospecting##31252
.collect 20 Sun's Radiance##76142
step
map Townlong Steppes
path	61.6,76.3	59.6,68.3	59.2,58.7
path	63.3,51.7	62.2,44.1	66.8,39.5
path	73.2,46.9	73.2,55.5	75.0,62.7
path	70.5,67.1	68.5,70.7
.' Follow the provided path.
.collect 24 Black Trillium Ore##72094
.collect 24 White Trillium Ore##72103
step
goto Vale of Eternal Blossoms 62.2,42.0
.talk 61650 |tip He patrols nearby.
.buy 1 Orb of Mystery##83092
step
.' Kill enemies anywhere inside of the Vale of Eternal Blossoms.
.collect 10 Mote of Harmony##89112 |n |use Mote of Harmony##129352
.collect 14 Spirit of Harmony##76061
step
goto Vale of Eternal Blossoms 61.6,21.6
.talk 66685
.buy 2 Serpent's Eye##76734
.' Note that you will need 2 Spirits of Harmony to buy this item.
step
label make
'Have a _Jewelcrafter make this pet_ for you |tip Ask in your guild or in Trade Chat |only if knowspell(121841)==false
.create Ruby Panther##121841,Jewelcrafting,1 total |only if knowspell(121841)==true
.collect 1 Ruby Panther##83087
step
label bought
.learnmount Ruby Panther##121838 |use Ruby Panther##83087
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Jeweled Onyx Panther",[[
description This guide will help you acquire the Jeweled Onyx Panther Mount.
model 42185
condition end hasmount(120043)
step
'Skipping to the next step |next |only if skill("Jewelcrafting")<600
goto The Jade Forest 56.7,44.4 |only if skill("Jewelcrafting")>=600
.talk 58414 |only if skill("Jewelcrafting")>=600
.buy 1 Design: Jeweled Onyx Panther##83877 |only if skill("Jewelcrafting")>=600
.learn Jeweled Onyx Panther##120045 |only if skill("Jewelcrafting")>=600
.' Click here if you do not wish to make this pet yourself |confirm |only if skill("Jewelcrafting")>=600
step
'You can either _buy_ this _mount_ from the _Auction House_ or make it:
.buy 1 Jeweled Onyx Panther##82453 |next "bought"
.' Click here to make this mount |confirm
step
'You can either _buy_ these _materials_ from the _ Auction House_ or _farm_ to obtain them:
.collect 1 Jade Panther##83088
.collect 1 Sapphire Panther##83090
.collect 1 Ruby Panther##83087
.collect 1 Sunstone Panther##83089
step
'Have a _Jewelcrafter make this pet_ for you |tip Ask in your guild or in Trade Chat |only if knowspell(120045)==false
.create Jeweled Onyx Panther##120045,Jewelcrafting,1 total |only if knowspell(120045)==true
.collect 1 Jeweled Onyx Panther##82453
step
label bought
.learnmount Jeweled Onyx Panther##120043 |use Jeweled Onyx Panther##82453
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Heavenly Onyx Cloud Serpent",[[
description This guide will help you acquire the Heavenly Onyx Cloud Serpent Mount.
model 43689
condition end hasmount(127158)
step
'You will need to be in a Raid group, as this will require defeating a World Boss.
|confirm
step
goto Kun-Lai Summit 50.5,82.1
.from Sha of Anger##60491
.collect Reins of the Heavenly Onyx Cloud Serpent##87771
step
.learnmount Heavenly Onyx Cloud Serpent##127158 |use Reins of the Heavenly Onyx Cloud Serpent##87771
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Heavenly Crimson Cloud Serpent",[[
description This guide will help you acquire the Heavenly Crimson Cloud Serpent Mount.
model 43692
condition end hasmount(127161)
step
'This mount is rewarded for completing the Achievement: _Glory of the Pandaria Raider_.
.' Complete all of the Pandaria Raid Achievements |only if not achieved(6932)
|confirm
step
'Check your in-game mail for your new mount!
.collect 1 Reins of the Heavenly Crimson Cloud Serpent##87773
.learnmount Heavenly Crimson Cloud Serpent##127161 |use Reins of the Heavenly Crimson Cloud Serpent##87773
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Crimson Cloud Serpent",[[
description This guide will help you acquire the Crimson Cloud Serpent Mount.
model 41592
condition end hasmount(127156)
step
'This mount is rewarded for completing the Achievement: _Glory of the Pandaria Hero_.
.' Complete all of the Pandaria Heroic Dungeon Achievements |only if not achieved(6927)
|confirm
step
'Check your in-game mail for your new mount!
.collect 1 Reins of the Crimson Cloud Serpent##87769
.learnmount Crimson Cloud Serpent##127156 |use Reins of the Crimson Cloud Serpent##87769
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Crimson Pandaren Phoenix",[[
description This guide will help you acquire the Crimson Pandaren Phoenix Mount.
model 44633
condition end hasmount(129552)
step
'This mount is rewarded for completing the Achievement: _Challenge Conqueror: Silver_.
.' Complete every Challenge Mode dungeon with a rating of Silver or better. |only if not achieved(6375)
|confirm
step
'Check your in-game mail for your Phoenix Egg!
.collect 1 Ancestral Phoenix Egg##90045
step
goto Vale of Eternal Blossoms 82.3,34.0
.talk 66973
.buy Reins of the Crimson Pandaren Phoenix##89154 |tip You can only purchase one color, so choose carefully!
step
.learnmount Crimson Pandaren Phoenix##129552 |use Reins of the Crimson Pandaren Phoenix##89154
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Ashen Pandaren Phoenix",[[
description This guide will help you acquire the Ashen Pandaren Phoenix Mount.
model 45521
condition end hasmount(132117)
step
'This mount is rewarded for completing the Achievement: _Challenge Conqueror: Silver_.
.' Complete every Challenge Mode dungeon with a rating of Silver or better. |only if not achieved(6375)
|confirm
step
'Check your in-game mail for your Phoenix Egg!
.collect 1 Ancestral Phoenix Egg##90045
step
goto Vale of Eternal Blossoms 82.3,34.0
.talk 66973
.buy Reins of the Ashen Pandaren Phoenix##90710 |tip You can only purchase one color, so choose carefully!
step
.learnmount Ashen Pandaren Phoenix##132117 |use Reins of the Ashen Pandaren Phoenix##90710
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Emerald Pandaren Phoenix",[[
description This guide will help you acquire the Emerald Pandaren Phoenix Mount.
model 45520
condition end hasmount(132118)
step
'This mount is rewarded for completing the Achievement: _Challenge Conqueror: Silver_.
.' Complete every Challenge Mode dungeon with a rating of Silver or better. |only if not achieved(6375)
|confirm
step
'Check your in-game mail for your Phoenix Egg!
.collect 1 Ancestral Phoenix Egg##90045
step
goto Vale of Eternal Blossoms 82.3,34.0
.talk 66973
.buy Reins of the Emerald Pandaren Phoenix##90711 |tip You can only purchase one color, so choose carefully!
step
.learnmount Emerald Pandaren Phoenix##132118 |use Reins of the Emerald Pandaren Phoenix##90711
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Violet Pandaren Phoenix",[[
description This guide will help you acquire the Violet Pandaren Phoenix Mount.
model 45522
condition end hasmount(132119)
step
'This mount is rewarded for completing the Achievement: _Challenge Conqueror: Silver_.
.' Complete every Challenge Mode dungeon with a rating of Silver or better. |only if not achieved(6375)
|confirm
step
'Check your in-game mail for your Phoenix Egg!
.collect 1 Ancestral Phoenix Egg##90045
step
goto Vale of Eternal Blossoms 82.3,34.0
.talk 66973
.buy Reins of the Violet Pandaren Phoenix##90712 |tip You can only purchase one color, so choose carefully!
step
.learnmount Violet Pandaren Phoenix##132119 |use Reins of the Violet Pandaren Phoenix##90712
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Astral Cloud Serpent",[[
description This guide will help you acquire the Astral Cloud Serpent Mount.
model 46087
condition end hasmount(127170)
step
'This mount is contained in _Caches of Pure Energy_ found inside the _Mogu'Shan Vaults_ raid.
.click Cache of Pure Energy##214383
.collect 1 Reins of the Astral Cloud Serpent##87777
.learnmount Astral Cloud Serpent##127170 |use Reins of the Astral Cloud Serpent##87777
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Ghastly Charger",[[
description This guide will help you acquire the Violet Pandaren Phoenix Mount.
condition end hasmount(136505)
model 48014
step
'This mount can only be obtained through the World of Warcraft Trading Card Game Expansion: "Betrayal of the Guardian"..
|confirm
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Black Primal Raptor",[[
description This guide will help you acquire the Black Primal Raptor Mount.
condition end hasmount(138642)
model 47828
step
.' To attain this mount, you must kill the beasts on the Isle of Giants.
.' To effectively kill them, you will need to have _Heroic Level Dungeon Gear_.
.' It is also recommended that you bring a friend for the _Primal_ enemies.
|confirm
step
.from Primal Direhorn##70016+, Primal Direhorn Hatchling##70012+, Young Primal Devilsaur##69993+, Primal Devilsaur##70011+, Young Primal Devilsaur##69993+, Pterrorwing Skyscreamer##70020+
..collect Primal Egg##94295
step
.' Once you collect the _Primal Egg_, you will have to wait 3 days for it to hatch.
.collect Reins of the Black Primal Raptor##94292
step
.learn Black Primal Raptor##138642 |use Reins of the Black Primal Raptor##94292
step
.' Congratulations, you have attained the _Black Primal Raptor_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Bone-White Primal Raptor",[[
description This guide will help you acquire the Bone-White Primal Raptor Mount.
condition end hasmount(138640)
model 47825
step
.' For this mount, you will likely need to have at least 2 people who have _Heroic Level Dungeon Gear_.
.' If you are soloing, avoid _Primal_ enemies, as they hit very hard.
.' This mount will take quite a while to obtain, so you may want to come back and do this in bursts.
|confirm
step
.from Primal Direhorn##70016+, Primal Direhorn Hatchling##70012+, Young Primal Devilsaur##69993+, Primal Devilsaur##70011+, Young Primal Devilsaur##69993+, Pterrorwing Skyscreamer##70020+
..collect 9999 Giant Dinosaur Bone##94288
step
.' Enter the cave here. |goto Isle of Giants/0 27.4,58.0 <5 |c
step
goto 32.7,53.9
.talk 70022
..turnin 32617
step
..collect Reins of the Bone-White Primal Raptor##94290
.learn Bone-White Primal Raptor##138640 |use Reins of the Bone-White Primal Raptor##94290
step
.' Congratulations, you have attained the _Bone-White Primal Raptor_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Amber Primordial Direhorn",[[
description This guide will help you acquire the Amber Primordial Direhorn Mount.
condition end hasmount(138424)
model 47718
step
.' To attain this mount, you must kill _Zandalari Warbringers_.
.' To effectively kill them, you will need to have _Heroic Level Dungeon Gear_ and a group of at least 3.
|confirm
step
label "start"
goto The Jade Forest 52.5,18.9
.from Zandalari Warbringer##69769+
.collect 1 Reins of the Amber Primordial Direhorn##94230 |next "end"
.' Click here if the mount did not drop from this Warbringer |confirm
step
goto Krasarang Wilds 38.8,67.4
.from Zandalari Warbringer##69769+
.collect 1 Reins of the Amber Primordial Direhorn##94230 |next "end"
.' Click here if the mount did not drop from this Warbringer |confirm
step
goto Townlong Steppes 36.7,85.7
.from Zandalari Warbringer##69769+
.collect 1 Reins of the Amber Primordial Direhorn##94230 |next "end"
.' Click here if the mount did not drop from this Warbringer |confirm
step
goto Dread Wastes 47.5,61.5
.from Zandalari Warbringer##69841+
.collect 1 Reins of the Amber Primordial Direhorn##94230 |next "end"
.' Click here if the mount did not drop from this Warbringer |confirm |next "start"
step
.learn Amber Primordial Direhorn##138424 |use Reins of the Amber Primordial Direhorn##94230
step
.' Congratulations, you have attained the _Amber Primordial Direhorn_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Jade Primordial Direhorn",[[
description This guide will help you acquire the Jade Primordial Direhorn Mount.
condition end hasmount(138426)
model 47717
step
.' To attain this mount, you must kill _Zandalari Warbringers_.
.' To effectively kill them, you will need to have _Heroic Level Dungeon Gear_ and a group of at least 3.
|confirm
step
label "start"
goto The Jade Forest 52.5,18.9
.from Zandalari Warbringer##69769+
.collect 1 Reins of the Jade Primordial Direhorn##94231 |next "end"
.' Click here if the mount did not drop from this Warbringer |confirm
step
goto Krasarang Wilds 38.8,67.4
.from Zandalari Warbringer##69769+
.collect 1 Reins of the Jade Primordial Direhorn##94231 |next "end"
.' Click here if the mount did not drop from this Warbringer |confirm
step
goto Townlong Steppes 36.7,85.7
.from Zandalari Warbringer##69769+
.collect 1 Reins of the Jade Primordial Direhorn##94231 |next "end"
.' Click here if the mount did not drop from this Warbringer |confirm
step
goto Dread Wastes 47.5,61.5
.from Zandalari Warbringer##69841+
.collect 1 Reins of the Jade Primordial Direhorn##94231 |next "end"
.' Click here if the mount did not drop from this Warbringer |confirm |next "start"
step
.learn Jade Primordial Direhorn##138426 |use Reins of the Jade Primordial Direhorn##94231
step
.' Congratulations, you have attained the _Jade Primordial Direhorn_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Slate Primordial Direhorn",[[
description This guide will help you acquire the Slate Primordial Direhorn Mount.
condition end hasmount(138425)
model 47715
step
.' To attain this mount, you must kill _Zandalari Warbringers_.
.' To effectively kill them, you will need to have _Heroic Level Dungeon Gear_ and a group of at least 3.
|confirm
step
label "start"
goto The Jade Forest 52.5,18.9
.from Zandalari Warbringer##69769+
.collect 1 Reins of the Slate Primordial Direhorn##94229 |next "end"
.' Click here if the mount did not drop from this Warbringer |confirm
step
goto Krasarang Wilds 38.8,67.4
.from Zandalari Warbringer##69769+
.collect 1 Reins of the Slate Primordial Direhorn##94229 |next "end"
.' Click here if the mount did not drop from this Warbringer |confirm
step
goto Townlong Steppes 36.7,85.7
.from Zandalari Warbringer##69769+
.collect 1 Reins of the Slate Primordial Direhorn##94229 |next "end"
.' Click here if the mount did not drop from this Warbringer |confirm
step
goto Dread Wastes 47.5,61.5
.from Zandalari Warbringer##69841+
.collect 1 Reins of the Slate Primordial Direhorn##94229 |next "end"
.' Click here if the mount did not drop from this Warbringer |confirm |next "start"
step
.learn Slate Primordial Direhorn##138425 |use Reins of the Slate Primordial Direhorn##94229
step
.' Congratulations, you have attained the _Slate Primordial Direhorn_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Cobalt Primordial Direhorn",[[
description This guide will help you acquire the Cobalt Primordial Direhorn Mount.
condition end hasmount(138423)
model 47716
step
.' To attain this mount, you must kill _Zandalari Warbringers_.
.' To effectively kill them, you will need to have _Heroic Level Dungeon Gear_ and a group of at least 3.
|confirm
step
label "start"
goto The Jade Forest 52.5,18.9
.from Zandalari Warbringer##69769+
.collect 1 Reins of the Cobalt Primordial Direhorn##94228 |next "end"
.' Click here if the mount did not drop from this Warbringer |confirm
step
goto Krasarang Wilds 38.8,67.4
.from Zandalari Warbringer##69769+
.collect 1 Reins of the Cobalt Primordial Direhorn##94228 |next "end"
.' Click here if the mount did not drop from this Warbringer |confirm
step
goto Townlong Steppes 36.7,85.7
.from Zandalari Warbringer##69769+
.collect 1 Reins of the Cobalt Primordial Direhorn##94228 |next "end"
.' Click here if the mount did not drop from this Warbringer |confirm
step
goto Dread Wastes 47.5,61.5
.from Zandalari Warbringer##69841+
.collect 1 Reins of the Cobalt Primordial Direhorn##94228 |next "end"
.' Click here if the mount did not drop from this Warbringer |confirm |next "start"
step
.learn Cobalt Primordial Direhorn##138423 |use Reins of the Cobalt Primordial Direhorn##94228
step
.' Congratulations, you have attained the _Cobalt Primordial Direhorn_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Armored Riding Pterrorwing",[[
description This guide will help you acquire the Armored Riding Pterrorwing Mount.
condition end hasmount(136400)
step
'This mount is a reward for completing the _"Glory of the Thundering Raider"_ achievement.
'When you complete the achievement check your in-game mailbox for the mount
.collect Armored Skyscreamer##93662
step
.learnmount Armored Skyscreamer##136400 |use Armored Skyscreamer##93662
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Spawn of Horridon",[[
description This guide will help you acquire the Spawn of Horridon Mount.
condition end hasmount(136471)
model 47238
step
'This mount is a boss drop in the _Throne of Thunder_ raid.
.from Horridon##68476
.collect Spawn of Horridon##93666
step
.learnmount Armored Skyscreamer##136471 |use Spawn of Horridon##93666
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Brawler's Burly Mushan Beast",[[
description This guide will help you acquire the Brawler's Burly Mushan Beast Mount.
condition end hasmount(142641)
model 48858
step
'This mount is obtained through the Brawler's Guild. You must reach rank 10 in the Brawler's Guild to purchase this mount.
.' Click here to be taken to the Achievement guide containing the information needed to reach rank 10. |confirm |next "Zygor's Horde Achievements Guides\\Events\\Brawler's Guild Achievements\\I've Got the Biggest Brawls of Them All" |only if ZGV.guidesets['AchievementsHMOP']
.' Click here to be taken to the World Event guide containing the information needed to reach rank 10. |confirm |next "Zygor's Horde Events Guides\\Brawler's Guild\\Brawl'gar Arena" |only if ZGV.guidesets['DailiesHMOP']
|confirm |only if not ZGV.guidesets ['DailiesHMOP'] and not ZGV.guidesets['AchievementsHMOP']
|only if ZGV:GetReputation(1374).friendRep<9000
step
goto Brawl'gar Arena 52.0,32.6
.talk 68364
.buy 1 Brawler's Burly Mushan Beast##98405
step
.learnmount Brawler's Burly Mushan Beast##142641 |use Brawler's Burly Mushan Beast##98405
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Thundering Ruby Cloud Serpent",[[
description This guide will help you acquire the Thundering Ruby Cloud Serpent Mount.
condition end hasmount(132036)
step
'This mount is a drop from _Alani, the Stormborn_.
.' In order to fight him, you will need to kill any level 90 in pandaria to get _skyshards_.
.' It also helps if you have _Heroic Level Gear_ to ensure you kill him on your first chance.
|confirm
step
'Kill any _level 90_ in pandaria.
.collect 10 Skyshard##86547 |n
.' Combine your 10 skyshards to create a _Sky Crystal_. |use Skyshard##86547
.collect 1 Sky Crystal##86546
step
goto Vale of Eternal Blossoms 50.6,43.6
.' Use your _Sky Crystal_ on Alani to weaken him. |use Sky Crystal##86546
.from Alani##64403 |tip He flies all around the Vale, some searching may be necessary.
.collect 1 Reins of the Thundering Ruby Cloud Serpent##90655
step
'From this point, you must be _Exalted_ with _Order of the Cloud Serpent_ and _The August Celestials_.
.' Click here to be taken to the August Celestials reputations guide to gain reputation with them. |confirm |next "Zygor's Horde Reputations Guides\\Mists of Pandaria\\The Order of the Cloud Serpent" |only if rep('Order of the Cloud Serpent')<Exalted and ZGV.guidesets['ReputationsHMOP']
.' Click here to be taken to the Order of the Cloud Serpent reputations guide to gain reputation with them. |confirm |next "Zygor's Horde Reputations Guides\\Mists of Pandaria\\The August Celestials" |only if rep('The August Celestials')<Exalted and ZGV.guidesets['ReputationsHMOP']
|confirm
|only if rep('The August Celestials')<Exalted or rep('Order of the Cloud Serpent')<Exalted
step
.learnmount Thundering Ruby Cloud Serpent##132036 |use Reins of the Thundering Ruby Cloud Serpent##90655
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Thundering Onyx Cloud Serpent",[[
description This guide will help you acquire the Thundering Onyx Cloud Serpent Mount.
sugGroup 5.4 Mounts
condition end hasmount(148476)
step
goto Timeless Isle/0 72.9,48.7
.from Huolon##73167 |tip He is a rare spawn.
.' Note that he flies around the entire island, but this is the easiest place to pull him.
.collect Reins of the Thundering Onyx Cloud Serpent##104269
step
'Use the _Reins of the Thundering Onyx Cloud Serpent_ in your bags |use Reins of the Thundering Onyx Cloud Serpent##104269
.learnmount Thundering Onyx Cloud Serpent##148476
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Ashhide Mushan Beast",[[
description This guide will help you acquire the Ashhide Mushan Mount.
sugGroup 5.4 Mounts
condition end hasmount(148428)
step
.' Be warned that this mount may require that you do some PVP combat.
|confirm
step
.' In order to earn this mount you will need to acquire the _Censer of Eternal Agony_, which costs 2500 _Timeless Coin_ to obtain.
.' There are several caches found throughout the entire isle.
.' Each enemy drops
.earn 2500 Timeless Coin##777
step
goto Timeless Isle 74.9,44.9
.talk 73307
.buy Censer of Eternal Agony##102467
step
.' Note that using this will sacrifice your health by 90%, however this buff is needed to earn Bloody Coins.
.' You will be hostile with _BOTH_ factions once you activate this item.
.' Use your Censer of Eternal Agony. |use Censer of Eternal Agony##102467
.' Kiling players will net you _Bloody Coins_.
.earn 500 Bloody Coin##789
step
goto Timeless Isle 74.9,44.9
.talk 73307
.buy Reins of the Ashhide Mushan Beast##103638
step
'Use the _Reins of the Ashhide Mushan Beast_ in your bags |use Reins of the Ashhide Mushan Beast##103638
.learnmount Ashhide Mushan Beast##148428
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Kor'kron War Wolf",[[
description This guide will help you acquire the Kor'kron War Wolf Mount.
sugGroup 5.4 Mounts
condition end hasmount(148396)
step
'This mount is earned by _defeating Garrosh Hellscream prior to the release of the next tier of content_.
.' This is a limited time mount.
.' You can only earn this mount from _10-player or 25-player normal difficulty_.
|confirm
step
goto Siege of Orgrimmar/12 49.4,71.3
.from Garrosh Hellscream##71865
|achieve 8398 |or
|achieve 8399 |or
step
'Check your mailbox for the mount.
..collect Reins of the Kor'kron War Wolf##104246
step
'Use the _Reins of the Kor'kron War Wolf_ in your bags |use Reins of the Kor'kron War Wolf##104246
.learnmount Kor'kron War Wolf##148396
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Kor'kron Juggernaut",[[
description This guide will help you acquire the Kor'kron Juggernaut Mount.
sugGroup 5.4 Mounts
condition end hasmount(148417)
step
'This mount drops from Garrosh Hellscream, in the raid _Siege of Orgrimmar_.
|tip He has a 100% chance to drop this mount on heroic difficulty,and only a 1.5% chance to drop it on normal difficulty.
|confirm
step
goto Siege of Orgrimmar/12 49.4,71.3
.from Garrosh Hellscream##71865
..collect Kor'kron Juggernaut##104253
step
'Use the _Kor'kron Juggernaut_ in your bags |use Kor'kron Juggernaut##104253
.learnmount Kor'kron Juggernaut##148417
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Moonfang",[[
description This guide will help you acquire the Shimmering Moonstone Mount.
sugGroup 5.4 Mounts
condition end hasmount(145133)
step
'You can only obtain this mount when the Darkmoon Faire is in town.
'This pet drops from a _Rare Spawn_ on the Darkmoon Island. You will have to kill the mobs around the spawn point if _Moonfang_ isn't already there.
|confirm
step
goto Darkmoon Island/0 40.0,45.5
.from Moonfang##71992+
.collect Shimmering Moonstone##101675
step
'Use the _Shimmering Moonstone_ in your bags |use Shimmering Moonstone##101675
.learnmount Moonfang##145133
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Vicious Skeletal Warhorse",[[
description This guide will help you acquire the Vicious Warsaber.
sugGroup 5.4 Mounts
condition end hasmount(146622)
step
'In order to earn this mount, you will need to win 40 Rated Battlegrounds _OR_ 100 Arena Matches.
.' Win 100 Arena Matches |achieve 8642/1 |or
.' Win 40 Rated Battlegrounds |achieve 8642/2 |or
step
'Check your mail box once you have completed the matches.
.collect 1 Vicious Saddle##103533
step
goto Orgrimmar/1 41.9,73.2
.talk 73151
..buy Reins of the Vicious Skeletal Warhorse##102533
step
'Use the _Reins of the Vicious Skeletal Warhorse_ in your bags |use Reins of the Vicious Skeletal Warhorse##102533
.learnmount Vicious Skeletal Warhorse##146622
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Ground Mounts\\Vicious War Wolf",[[
description This guide will walk you through obtaining
description the ground mounts that require player vs. player to
description purchase.
sugGroup 5.4 Mounts
condition end hasmount(100333)
model 38607
step
'In order to earn this mount, you will need to win 40 Rated Battlegrounds _OR_ 100 Arena Matches.
.' Win 100 Arena Matches |achieve 8642/1 |or
.' Win 40 Rated Battlegrounds |achieve 8642/2 |or
step
'Check your mail box once you have completed the matches.
.collect 1 Vicious Saddle##103533
step
goto Orgrimmar/1 41.9,73.2
.talk 73151
..buy 1 Vicious War Wolf##70910
|modeldisplay 38607
step
.learnmount Vicious War Wolf##100333 |use Vicious War Wolf##70910
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Mists of Pandaria\\Flying Mounts\\Spawn of Galakras",[[
description This guide will help you acquire the Spawn of Galakras Mount.
sugGroup 5.4 Mounts
condition end hasmount(148392)
step
'This mount is rewarded to players that have completed the _Glory of the Orgrimmar Raider_ achievement.
|achieve 8454
step
'Check your mailbox for the mount.
.collect Reins of Galakras##104208
step
'Use the _Reins of Galakras_ in your bags |use Reins of Galakras##104208
.learnmount Spawn of Galakras##148392
]])
