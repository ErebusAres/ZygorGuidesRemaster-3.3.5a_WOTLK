local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ProfessionsHMoP") then return end
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Cooking Dailies Guide",[[
step
#include "H_MOP_Cooking_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Cooking Dailies\\Half Hill Cooking Dailies",[[
step
'Under construction!
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Alchemy\\Alchemy 500-600 Leveling Guide",[[
description This guide will walk you through leveling your Alchemy skill from 500-600.
author support@zygorguides.com
hidden true
completion skill,Alchemy,600
#include "Alchemy_500-600"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Archaeology\\Archaeology 525-600 Leveling Guide",[[
description This guide will walk you through leveling your Archaeology skill from 525-600.
author support@zygorguides.com
completion skill,Archaeology,600
hidden true
step
title + Archaeology 525-600
label "arc_525-600"
#include "trainer_Archaeology"
.' Learn the Zen Master Archaeology skill |skillmax Archaeology,600 |tip You must be at least level 80.
step
'Open your world map, find dig sites in Kalimdor then go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
.' Use your Survey ability inside the dig site area |cast Survey##80451
.' A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 6 artifacts you can find.
.' Click the Archaeology Fragments that spawn on the ground
.' Open your Archaeology profession window |cast Archaeology##78670
.' Click artifacts to open them, then solve them once you have the required amounts of each
.skill Archaeology,600
step
title + Archaeology 600
label "arc_600"
'Congratulations, you are now a Zen Master Archaeologist.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Blacksmithing 500-600 Leveling Guide",[[
description This guide will walk you through leveling your Blacksmithing skill from 500-600.
author support@zygorguides.com
completion skill,Blacksmithing,600
hidden true
#include "Blacksmithing_500-600"
]])
ZygorGuidesViewer:RegisterInclude("pandaria_blacksmith",[[
goto Shrine of Two Moons/1 26.0,45.2
.talk 64058
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Enchanting 500-600 Leveling Guide",[[
description This guide will walk you through leveling your Enchanting skill from 500-600.
author support@zygorguides.com
completion skill,Enchanting,600
hidden true
#include "Enchanting_500-600"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Engineering 500-600 Leveling Guide",[[
description This guide will walk you through leveling your Engineering skill from 500-600.
author support@zygorguides.com
completion skill,Engineering,600
hidden true
#include "Engineering_500-600"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\First Aid\\First Aid 525-600 Leveling Guide",[[
description This guide will walk you through leveling your First Aid skill from 525-600.
author support@zygorguides.com
completion skill,First Aid,600
hidden true
#include "FirstAid_525-600"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Fishing 525-600 Leveling Guide",[[
description This guide will walk you through leveling your Fishing skill from 525-600.
author support@zygorguides.com
completion skill,Fishing,600
hidden true
step
title + Fishing 525-600
label "fish_525-600"
#include "trainer_Fishing"
.skillmax Fishing,600
step
goto Orgrimmar 66.5,41.5
.' Equip your Strong Fishing Pole |use Strong Fishing Pole##6365
.' Stand on the end of this wooden dock
.' Use your Fishing skill to fish in the water |cast Fishing##131474
.' Get your Fishing skill to level 600 |skill Fishing,600
step
label "fish_600"
'Congratulations, you are now a Zen Master Fisherman!
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Herbalism 525-600 Leveling Guide",[[
description This guide will walk you through leveling your Herbalism skill from 525-600.
author support@zygorguides.com
completion skill,Herbalism,600
hidden true
#include "Herbalism_525-600"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Inscription\\Inscription 500-600 Leveling Guide",[[
description This guide will walk you through leveling your Inscription skill from 500-600.
author support@zygorguides.com
completion skill,Inscription,600
hidden true
#include "Inscription_500-600"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Jewelcrafting 500-600 Leveling Guide",[[
description This guide will walk you through leveling your Jewelcrafting skill from 500-600.
author support@zygorguides.com
completion skill,Jewelcrafting,600
hidden true
#include "Jewelcrafting_500-600"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Leatherworking 500-600 Leveling Guide",[[
description This guide will walk you through leveling your Leatherworking skill from 500-600.
author support@zygorguides.com
completion skill,Leatherworking,600
hidden true
#include "Leatherworking_500-600"
]])
ZygorGuidesViewer:RegisterInclude("pandaria_leatherworker",[[
goto Shrine of Two Moons/1 31.4,47.1
.talk 64054
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Tailoring 500-600 Leveling Guide",[[
description This guide will walk you through leveling your Tailoring skill from 500-600.
author support@zygorguides.com
completion skill,Tailoring,600
hidden true
#include "Tailoring_500-600"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Skinning 525-600 Leveling Guide",[[
description This guide will walk you through leveling your Skinning skill from 525-600.
author support@zygorguides.com
completion skill,Skinning,600
hidden true
#include "Skinning_525-600"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Mining 525-600 Leveling Guide",[[
description This guide will walk you through leveling your Mining skill from 525-600.
author support@zygorguides.com
completion skill,Mining,600
hidden true
#include "Mining_525-600"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Mining with Smelting 500-600 Leveling Guide",[[
description This guide will walk you through leveling your Mining skill from 500-600.
author support@zygorguides.com
completion skill,Mining,600
hidden true
#include "MiningSmelting_500-600"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining & Herbalism\\Mining & Herbalism 525-600 Leveling Guide",[[
description This guide will walk you through leveling your Mining and Herbalism skill from 500-600.
author support@zygorguides.com
completion skill,Mining,600 and skill,Herbalism,600
hidden true
#include "Mining_Herbalism_525-600"
]])
