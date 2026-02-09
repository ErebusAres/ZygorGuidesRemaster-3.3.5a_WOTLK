local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("HunterPetH") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Bats\\Brown Bat",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 4732
step
label "start"
goto Tirisfal Glades,66.8,54.2
.' Search for Greater DuskBats around this area. They are level 6-7.
.' Use your Tame Beast ability on a _Greater DuskBat_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 4732
step
goto Ghostlands,50.8,15.0
.' Search for Mistbats around this area. They are level 9-10.
.' Use Tame Beast ability on a _Mistbat_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 4732
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Bats\\Red Bat",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 8808
step
label "start"
goto Tirisfal Glades,73.4,63.4
.' Search for Vampiric Duskbat around this area. They are level 8-9.
.' Use your Tame Beast ability on a _Vampiric Duskbat_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 8808
step
goto Eastern Plaguelands,39.8,75.6
.' Search for Plaguebats around this area. They are level 40-41.
.' Use your Tame Beast ability on a _Plaugebat_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 8808
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Bats\\Tan Bat",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 1954
step
label "start"
goto Razorfen Kraul,10.6,49.6
.' Search for Greater Kraul Bats around this area. They are level 26 elites. |tip Kraul Bat's also work for this.
.' Use your Tame Beast ability on a _Greater Kraul Bat_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 1954
step
goto Eastern Plaguelands,62.8,58.2
.' Search for Noxious Plaguebats around this area. They are level 41-42.
.' Use your Tame Beast ability on a _Noxious Plaguebat_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 1954
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Bats\\White Bat",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 16053
step
goto Zul'Drak,38.2,50.4
.' Search for Zul'drak bats around this area. They are level 75-76.
.' Use your Tame Beast ability on a _Zul'Drak Bat_. |cast Tame Beast##1515
|modeldisplay 16053
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Owls\\Black Owl",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 18933
step
goto Duskwood,20.8,76.6
.' Search for Barn owls around this area. They are around 23-24.
.' Use your Tame Beast ability on a _Barn Owl_. |cast Tame Beast##1515
|modeldisplay 18933
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Owls\\Brown Owl",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 18375
step
goto Feralas,46.0,9.8
.' Search for Vale Owls around this area.  They are level 35.
.' Use your Tame Beast ability on a _Vale Owl_. |cast Tame Beast##1515
|modeldisplay 18375
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Owls\\Dark Brown Owl",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 20725
step
label "start"
goto Sethekk Halls,73.6,30.4
.' Search for an Avian Darkhawk in this area.  They are level 65-70 elites.
.' Use your Tame Beast ability on a _Vale Owl_. |cast Tame Beast##1515
.' You can find more around [51.4,52.6]
.' Click here to see another location for this pet |next |confirm
|modeldisplay 20725
step
goto Terokkar Forest,70.0,79.6
.' Search for Akkarai Hatchlings in this area.  They are level 70 and can be found all around this lake.
.' Use your Tame Beast ability on a _Akkarai Hatchling_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 20725
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Flying Pets\\Birds of Prey\\Ghostly Green Owl",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 29505
step
label "start"
goto Stonetalon Mountains,48.8,75.8
.' Search for Emerald Spirits around this area. They are level 25-26.
.' Use your Tame Beast ability on an _Emerald Spirit_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 29505
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Owls\\Gray Owl",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 10832
step
label "start"
goto Teldrassil,42.8,43.2
.' Search for Strigid Screechers around this area. They are level 7-8.
.' Use your Tame Beast ability on a _Strigid Screecher_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 10832
step
goto Felwood,51.6,84.8
.' Search for Strigid Screechers around this area. They are level 44-45.
.' Use your Tame Beast ability on a _Strigid Screecher_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 10832
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Owls\\Purple Owl",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 37567
step
goto Winterspring 53.0,36.4
.' Search for Hell-Hoot around this area. He is level 53. |tip He patrols up and down the mountain here.  Some searching may be required.
.' Use your Tame Beast ability on _Hell-Hoot_. |cast Tame Beast##1515
|modeldisplay 37567
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Owls\\Red and Purple Owl",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 20729
step
goto Terokkar Forest,70.6,82.6
.' Search for Skettis kaliri around this area. They are level 70.
.' Use your Tame Beast ability on a _Skettis Kaliri_. |cast Tame Beast##1515
|modeldisplay 20729
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Owls\\Red Owl",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 20730
step
goto Terokkar Forest,69.2,78.2
.' Search for Montrous Kaliri around this area. They are level 70.  |tip They fly overhead most of the time.
.' Use your Tame Beast ability on a _Monstrous Kaliri_. |cast Tame Beast##1515
|modeldisplay 20730
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Owls\\White Owl",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 10833
step
goto Winterspring,55.4,32.8
.' Search for Winterspring Screechers around this area. They are level 52-53.
.' Use your Tame Beast ability on a _Winterspring Screecher_. |cast Tame Beast##1515
|modeldisplay 10833
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Eagles\\Bald Eagle",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 22106
step
goto Howling Fjord,77.8,67.6
.' Search for Fjord Hawk Matriarchs around this area. They are level 71.
.' Use your Tame Beast ability on a _Fjord Hawk Matriarch_. |cast Tame Beast##1515
|modeldisplay 22106
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Eagles\\Brown Eagle",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 22255
step
goto Stonetalon Mountains,52.4,49.0
.' Search for Kalimdor Eagles around this area. They are level 25-26.
.' You can find more around [56.8,66.4]
.' as well as [56.0,45.6].
.' Use your Tame Beast ability on a _Kalimdor Eagle_. |cast Tame Beast##1515
|modeldisplay 22255
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Eagles\\Light Brown Eagle",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 34007
step
goto Loch Modan,78.2,65.6
.' Search for Golden Eagles around this area. They are level 16-17.
.' Use your Tame Beast ability on a _Golden Eagle_. |cast Tame Beast##1515
|modeldisplay 34007
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Eagles\\White Eagle",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 25925
step
label "start"
goto Sholazar Basin,59.6,23.6
.' Search for Goretalon Matriarchs around the ledges here. They are level 78.
.' Use your Tame Beast ability on a _Goretalon Matriarch_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 25925
step
goto Mount Hyjal,42.4,43.6
.' Search for Hyjal Huntress around this area.  They are level 80. |tip These birds are generally flying around.
.' Use your Tame Beast ability on a _Goretalon Matriarch_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 25925
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Eagles\\Undead Eagle",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 25630
step
label "start"
goto Western Plaguelands,53.8,53.6
.' The Diseased Hawk can only be accessed from doing the quest 'A Different Approach'. They are level 37-38.
.' Use your Tame Beast ability on a _Diseased Hawk_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 25630
step
goto Zul'Drak,18.4,57.6
.' Search for Vargul Plaguetalons around this area. They are level 74-75.
.' Use your Tame Beast ability on a _Vargul Plaguetalon_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 25630
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Parrots\\Dark Red Parrot",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 5505
step
goto Thousand Needles,92.0,73.8
.' Search for Monstrous Macaws around this area. They are level 42-43.
.' Use your Tame Beast ability on a _Monstrous Macaw_. |cast Tame Beast##1515
|modeldisplay 5505
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Parrots\\Green and Red Parrot",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 36150
step
goto The Deadmines/2,41.0,47.4
.' Search for Sunwing Squawkers around this area. They are level 14-16, or level 85 on heroic mode.
.' Use your Tame Beast ability on a _Sunwing Squawker_. |cast Tame Beast##1515
|modeldisplay 36150
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Parrots\\Green and Yellow Parrot",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 36006
step
goto Thousand Needles,92.0,73.8
.' Search for Brilliant Clayscraper around this area. They are level 40-43.
.' Use your Tame Beast ability on a _Brilliant Clayscraper_. |cast Tame Beast##1515
|modeldisplay 36006
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Parrots\\Gray Parrot",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 36152
step
goto The Deadmines/2,50.4,60.4
.' Ol' Beaky will be on a little island on the side of the ship.  He is level 14 (normal) or level 85 (heroic).
.' Use your Tame Beast ability on _Ol' Beaky_. |cast Tame Beast##1515
|modeldisplay 36152
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Parrots\\Purple and White Parrot",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 36151
step
goto The Deadmines/2,41.0,47.4
.' Search for Brilliant Macaws around this area. They are level 14-16, or level 85 on heroic mode.
.' Use your Tame Beast ability on a _Brilliant Macaw_. |cast Tame Beast##1515
|modeldisplay 36151
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Parrots\\Red Parrot",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 36148
step
goto The Deadmines/2,41.0,47.4
.' Search for Monstrous Parrots around this area. They are level 14-16, or level 85 on heroic mode.
.' Use your Tame Beast ability on a _Monstrous Parrot_. |cast Tame Beast##1515
|modeldisplay 36148
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Parrots\\White Parrot",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 36153
step
goto The Deadmines/2,41.0,47.4
.' Search for Albino Eyegougers around this area. They are level 14-16, or level 85 on heroic mode.
.' Use your Tame Beast ability on a _Albino Eyegouger_. |cast Tame Beast##1515
|modeldisplay 36153
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Hawks\\Black Hawk",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 20857
step
goto Howling Fjord,58.6,50.6
.' Search for Daggercap Hawks around this area.  They are level 5-7.
.' Use your Tame Beast ability on a _Daggercap Hawk_. |cast Tame Beast##1515
|modeldisplay 20857
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Hawks\\Brown Hawk",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 22633
step
goto Howling Fjord,74.6,66.2
.' Search for Fjord Hawks around this area. They are level 68-70.
.' Use your Tame Beast ability on a _Fjord Hawk_. |cast Tame Beast##1515
|modeldisplay 22633
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Seagull",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 34160
step
goto Tol Barad Peninsula,69.8,25.4
.' Search for Rustberg Gulls around this area.  They are level 1-5. |tip They are around the docks and ledges.
.' Use your Tame Beast ability on a _Rustberg Gull_. |cast Tame Beast##1515
|modeldisplay 34160
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Mystical Pets\\Chimaeras\\Beige Chimaera",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 37570
step
goto Azshara,67.4,21.8
.' Search for Mistwing Ravagers around this area. They are level 17-19.
.' Use your Tame Beast ability on a _Mistwing Ravage_. |cast Tame Beast##1515
'|modeldisplay 37570
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Mystical Pets\\Chimaeras\\Brown Chimaera",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 28646
step
goto Azshara,40.0,79.4
.' Search for Mistwing Cliffdwellers around this area. They are level 12-13.
.' Use your Tame Beast ability on a _Mistwing Cliffdweller_. |cast Tame Beast##1515
'|modeldisplay 28646
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Mystical Pets\\Chimaeras\\White Chimaera",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 10808
step
goto Winterspring,57.6,23.2
.' Search for Chillwind Chimaeras around this area. They are level 52-53.
.' Use your Tame Beast ability on a _Chillwind Chimaera_. |cast Tame Beast##1515
'|modeldisplay 10808
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Mystical Pets\\Chimaeras\\Green Armored Chimaera",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 20571
step
goto Shadowmoon Valley,37.0,40.6
.' Search for Vilewing Chimaera around this area. They are level 68.
.' Use your Tame Beast ability on a _Vilewing Chimaera_. |cast Tame Beast##1515
'|modeldisplay 20571
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Mystical Pets\\Chimaeras\\Yellow Chimaera",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 17094
step
goto Blade's Edge Mountains,50.2,69.2
.' Search for Bladewing Bloodletters around this area. They are level 65-66.
.' Use your Tame Beast ability on a _Bladewing Bloodletter_. |cast Tame Beast##1515
'|modeldisplay 17094
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mystical Pets\\Dragonhawks\\Purple Dragonhawk",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 19663
step
goto Sunwell Plateau,34.6,56.0
.' Search for the Sunblade Dragonhawks around this area. They are level 70 elites found in the Sunwell Plateau raid.
.' Use your Tame Beast ability on a _Sunblade Dragonhawk_. |cast Tame Beast##1515
'|modeldisplay 19663
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mystical Pets\\Dragonhawks\\Orange and Red Dragonhawk",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 17545
step
goto Eversong Woods,40.0,69.8
.' Search for the Crazed Dragonhawks around this area. They are level 7-8.
.' Use your Tame Beast ability on a _Crazed Dragonhawk_. |cast Tame Beast##1515
'|modeldisplay 17545
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mystical Pets\\Dragonhawks\\Red Dragonhawk",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 19685
step
goto The Botanica,49.8,56.6
.' The Bloodfalcon will be before and after a bridge. They are level 69-70 elites.
.' Use your Tame Beast ability on a _Bloodfalcon_. |cast Tame Beast##1515
'|modeldisplay 19685
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mystical Pets\\Dragonhawks\\Violet Dragonhawk",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 20263
step
goto Shadowmoon Valley,47.6,68.4
.' Search for Eclipsion Dragonhawks around this area. They are level 67-68.
.' Use your Tame Beast ability on a _Eclipsion Dragonhawk_. |cast Tame Beast##1515
'|modeldisplay 20263
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mystical Pets\\Dragonhawks\\Yellow Dragonhawk",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 37573
step
label "start"
goto Zul'Aman,46.4,90.8
.' Search for Amani Dragonhawks around this area. They are level 84-85 elites.
.' Use your Tame Beast ability on a _Amani Dragonhawk_. |cast Tame Beast##1515\
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 37573
step
goto Zul'Aman,56.4,71.6
.' The Amani Dragonhawk Hatchlings spawn during the boss encounter. They are level 85.
.' Use your Tame Beast ability on a _Amani Dragonhawk Hatchling_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 37573
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Monkeys\\Black Monkey",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 30180
step
label "start"
goto The Deadmines,47.0,60.4
.' The Mining Monkey will be alone the walls mining with a chain against the wall. They are level 9 or level 85, depending on the difficulty. |tip There are several colors that can be found here.
.' Use your Tame Beast ability on a _Mining Monkey_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 30180
step
goto The Cape of Stranglethorn,62.8,77.6
.' Search for Skymane Bonobos around this area. They are level 31-32.
.' Use your Tame Beast ability on a _Mining Monkey_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 30180
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Monkeys\\Brown Monkey",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 30186
step
goto The Deadmines,47.0,60.4
.' The Mining Monkey will be alone the walls mining with a chain against the wall. They are level 9 or level 85, depending on the difficulty. |tip There are several colors that can be found here.
.' Use your Tame Beast ability on a _Mining Monkey_. |cast Tame Beast##1515
|modeldisplay 30186
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Monkeys\\Gray Monkey",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 30185
step
goto The Deadmines,47.0,60.4
.' The Mining Monkey will be alone the walls mining with a chain against the wall. They are level 9 or level 85, depending on the difficulty. |tip There are several colors that can be found here.
.' Use your Tame Beast ability on a _Mining Monkey_. |cast Tame Beast##1515
'|modeldisplay 30185
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Monkeys\\Color Changing Monkey",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 30186, 30184, 30185, 30180
step |tip The Vale Howler will occasionally change between black, grey, brown and blue
goto Northern Stranglethorn,53.6,25.6
.' Search for Vale Howlers around this area. They are level 26-27.
.' Use your Tame Beast ability on a _Vale Howler_. |cast Tame Beast##1515
'|modeldisplay 30186, 30184, 30185, 30180
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mystical Pets\\Nether Rays\\Blue Nether Ray",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 19404
step
label "start"
goto Zangarmarsh,74.8,49.0
.' Search for Marshfang Rippers around this area. They are level 60-61.
.' Use your Tame Beast ability on a _Marshfang Ripper_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 19404
step
goto Zangarmarsh,35.0,59.6
.' Search for Marshfang Slicers around this area. They are level 62-63.
.' Use your Tame Beast ability on a _Marshfang Slicer_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 19404
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mystical Pets\\Nether Rays\\Gold Nether Ray",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 21282
step
goto Blade's Edge Mountains,30.6,51.4
.' Search for Aether Rays around this area. They are level 70-71.
.' You can find more between the above coordinates and [30.4,64.4].
.' Use your Tame Beast ability on a _Aether Ray_. |cast Tame Beast##1515
'|modeldisplay 21282
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mystical Pets\\Nether Rays\\Green Nether Ray",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 19405
step
goto Zangarmarsh,53.8,67.2
.' Search for Bloodthirsty Marshfang around this area. They are level 61-62.
.' You can find around [41.4,59.6].
.' Use your Tame Beast ability on a _Bloodthirsty Marshfang_. |cast Tame Beast##1515
'|modeldisplay 19405
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mystical Pets\\Nether Rays\\Purple Nether Ray",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 19400
step
label "start"
goto Zangarmarsh,32.4,59.6
.' Search for "Count" Ungula around this area. He is level 63 - 64.
.' Use your Tame Beast ability on a _"Count" Ungula_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 19400
step
goto Netherstorm,45.4,71.0
.' Search for Nether Rays around this area. They are level 67 - 68.
.' Use your Tame Beast ability on a _Nether Ray_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 19400
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mystical Pets\\Nether Rays\\Red Nether Ray",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 20596
step
goto Shadowmoon Valley,69.2,67.6
.' Search for Netherskates around this area. They are level 69-70.
.' Use your Tame Beast ability on a _Netherskate_. |cast Tame Beast##1515
'|modeldisplay 20596
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Ravagers\\Blue and Purple Ravager",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 20068
step
goto Shadowmoon Valley,74.0,88.0
.' Search for Nethermine Ravagers inside of the mine here. They are level 70.
.' Use your Tame Beast ability on a _Nethermine Ravager_. |cast Tame Beast##1515
'|modeldisplay 20068
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Ravagers\\Green and Blue Ravager",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 20066
step
goto Azuremyst Isle,54.0,9.6
.' Death Ravager is spawned from the Warrior quest "Strength of One" (Alliance only). He is level 10.
.' Use your Tame Beast ability on a _Death Ravager_. |cast Tame Beast##1515
'|modeldisplay 20066
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Ravagers\\Purple and Orange Ravager",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 19845
step
goto Winterspring,52.0,68.8
.' Search for Lost Ravagers inside the cave here. They are level 54 - 55.
.' Use your Tame Beast ability on a _Lost Ravager_. |cast Tame Beast##1515
'|modeldisplay 19845
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Ravagers\\Green and Purple Ravager",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 20062
step
goto Winterspring,52.0,68.8
.' Search for Lost Ravagers inside the cave here. They are level 54 - 55.
.' Use your Tame Beast ability on a _Lost Ravager_. |cast Tame Beast##1515
'|modeldisplay 20062
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Ravagers\\Green Ravager",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 17062
step
goto Bloodmyst Isle,31.8,54.6
.' Search for Enraged Ravagers around this area. They are level 16 - 17.
.' Use your Tame Beast ability on a _Enraged Ravager_. |cast Tame Beast##1515
'|modeldisplay 17062
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Ravagers\\Orange and Purple Ravager",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 19845
step
goto Blade's Edge Mountains,60.4,69.0
.' Search for Gore-Scythe Ravagers around this area. They are level 63.
.' Use your Tame Beast ability on a _Gore-Scythe Ravager_. |cast Tame Beast##1515
'|modeldisplay 19845
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Ravagers\\Orange Ravager",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 16885
step
goto Azuremyst Isle,55.6,18.0
.' Search for Ravager Specimen around this area. They are level 9 - 10.
.' Use your Tame Beast ability on a _Ravager Specimen_. |cast Tame Beast##1515
'|modeldisplay 16885
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Ravagers\\Red and Black Ravager",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 20063
step
goto Hellfire Peninsula,12.8,53.2
.' Search for Thornfang Venomspitters around this area. They are level 62 - 63.
.' Use your Tame Beast ability on a _Thornfang Venomspitter_. |cast Tame Beast##1515
'|modeldisplay 20063
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Ravagers\\Red and Green Ravager",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 37560
step
goto Bloodmyst Isle,59.8,89.4
.' Search for Bloodmyst Hatchlings around this area. They are level 10 - 11.
.' Use your Tame Beast ability on a _Bloodmyst Hatchling_. |cast Tame Beast##1515
'|modeldisplay 37560
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Ravagers\\Red and Purple Ravager",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 17086
step
goto Blade's Edge Mountains,59.6,65.2
.' Search for Rip-Blade Ravagers around this area. They are level 63.
.' Use your Tame Beast ability on a _Rip-Blade Ravager_. |cast Tame Beast##1515
'|modeldisplay 17086
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Ravagers\\Dark Green Extra Spiky Ravager",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 20297
step
goto Hellfire Peninsula,22.4,67.0
.' Search for Quillfang Ravagers around this area. They are level 62 - 63.
.' Use your Tame Beast ability on a _Quillfang Ravager_. |cast Tame Beast##1515
'|modeldisplay 20297
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Ravagers\\Purple Extra Spiky Ravager",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 20308
step
goto Hellfire Peninsula,8.2,49.6
.' Search for Thornfang Ravagers around this area. They are level 62 - 63.
.' Use your Tame Beast ability on a _Thornfang Ravager_. |cast Tame Beast##1515
'|modeldisplay 20308
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Ravagers\\Red Extra Spiky Ravager",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 20309
step
goto Hellfire Peninsula,39.0,88.6
.' Search for Razorfang Ravagers around this area. They are level 61.
.' Use your Tame Beast ability on a _Razorfang Ravager_. |cast Tame Beast##1515
'|modeldisplay 20309
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Serpents\\Blue Snake",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 4317
step
goto Wailing Caverns,30.6,43.8
.' Search for Deviate Adders around this area. They are level 18 - 19.
.' You can find more around [14.2,23.8],
.' as well as [15.6,53.8].
.' Use your Tame Beast ability on a _Deviate Adder_. |cast Tame Beast##1515
|modeldisplay 4317
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Serpents\\Blue-Green Snake",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 4768
step
goto The Temple of Atal'Hakkar,77.8,41.4
.' Search for Murk Spitters around this area. They are 51 - 52.
.' Use your Tame Beast ability on a _Murk Spitter_. |cast Tame Beast##1515
|modeldisplay 4768
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Serpents\\Brown Snake",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 33990
step
goto The Temple of Atal'Hakkar,77.8,41.4
.' Search for Murk Spitters around this area. They are 51 - 52.
.' Use your Tame Beast ability on a _Murk Spitter_. |cast Tame Beast##1515
|modeldisplay 33990
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Serpents\\Green Snake",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 14557
step
goto Thousand Needles,66.0,67.6
.' Search for Needlespine Cobras around this area. They are level 40 - 41.
.' Use your Tame Beast ability on a _Needlespine Cobra_. |cast Tame Beast##1515
|modeldisplay 14557
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Serpents\\Purple Snake",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 4312
step
label "start"
goto Wailing Caverns,30.6,43.6
.' Search for Deviate Vipers around this area. They are level 19 elites.
.' Use your Tame Beast ability on a _Deviate Viper_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 4312
step
goto Sholazar Basin,58.4,53.8
.' Search for Venomtip. He is a level 77 quest mob.
.' Use your Tame Beast ability on a _Venomtip_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 4312
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Serpents\\Red Snake",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 26522
step
goto Tanaris,40.4,65.4
.' Search for Sunburst Adder around this area. They are level 47 - 48.
.' Use your Tame Beast ability on a _Sunburst Adder_. |cast Tame Beast##1515
|modeldisplay 26522
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Serpents\\Violet Snake",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 36273
step
goto Thousand Needles,66.0,67.2
.' Search for Needlespine Shimmerbacks around this area. They are 40 - 41.
.' You can find more around [67.0,74.8].
.' Use your Tame Beast ability on a _Needlespine Shimmerback_. |cast Tame Beast##1515
|modeldisplay 36273
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Serpents\\White Snake",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 4305
step
label "start"
goto Wailing Caverns,34.8,15.8
.' Search for Deviate Moccasin around this area. They are level 19.
.' Use your Tame Beast ability on a _Deviate Moccasin_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 4305
step
goto Shadowmoon Valley,54.6,21.0
.' Search for Coilskar Cobras around this area. They are level 68.
.' Use your Tame Beast ability on a _Coilskar Cobra_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 4305
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Spiders\\Red Green Spider (Rare Spawn)",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 36505
step
label "start"
goto Elwynn Forest,61.8,47.8
.' Search for Mother Fang around the area. She is level 9.
.' Use your Tame Beast ability on _Mother Fang_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 36505
step
goto Duskwood,86.4,48.0
.' Search for Naraxis around the area. It is level 21.
.' Use your Tame Beast ability on _Naraxis_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 36505
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Spiders\\Green Fire Spider (Rare Spawn)",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 38453
step
goto Molten Front 31.0,56.2
.' Search for Kirix around the area. It can be found along this western ridge. It is a level 85 Elite. |macro /target Kirix
.' Use _Aspect of the Wild_
.' Make sure when you aggro Kirix, it is at max range.
.' When you get hit with _Bouncing Charge_, cast _Disengage_ at the height of it.
.' Once you're back on the ground, use _Deterrence_ to block _Magmatoxin_.
.' _Immediately_ use your Tame Beast ability on _Kirix_ afterwards. |cast Tame Beast##1515
.' It is highly recommended that you don't attempt this until you have at least _120k_ health.
'|modeldisplay 38453
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Spiders\\Fire Spider (Rare Spawn)",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 38780
step
goto Molten Front 60.4,50.8
.' Search for _Solix_ around the area. It can be found in lava pools inside of the Igneous Depths.
.' In order to tame this pet, you will have to kite him around until its _Energy_ is low.  _DO NOT_ kite it until its energy reaches 0, or it will die.
.' Open with _Concussion Shot_ and kite him around until it has _20 to 30 Energy_. Use _Concussion Shot_ whenever it is off cooldown.
.' If you are having trouble kiting, you can also use _Aspect of the Cheetah_.
.' Use your Tame Beast ability on _Solix_ when it is at _20 to 30 Energy_. |cast Tame Beast##1515
'|modeldisplay 38780
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Spiders\\Yellow Fire Spider (Rare Spawn)",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 38426
step
goto Molten Front 54.8,41.8
.' Search for _Anthriss_ around the area.
.' In order to tame this pet, you will have to run into the lava pools when he casts his web on you.
.' Open with _Concussion Shot_ and _Deterrence_ to avoid failure.
.' Use your Tame Beast ability on _Anthriss_. |cast Tame Beast##1515
'|modeldisplay 38426
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Spiders\\Purple Fire Spider (Rare Spawn)",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 38424
step
goto Molten Front,66.6,72.7
.' Search for Deth'tilac around the area. It is level 85.
.' Note that this will be much easier as _Survival_, with talents into _Entrapment_, _Trap Mastery_ and _Resourcefulness_.
.' You will need to use a pet with a snare effect in order to tame this, as well as beat him down to _20%_.  We suggest using a spider pet.
.' Start with laying down a _Snake Trap_, followed by an _Ice Trap_ behind it.
.' Send your pet in, sacrificing it.  Once Deth'tilac kills it, he'll trigger your _Snake Trap_.
.' While Deth'tilac is attacking the snakes, cast _Revive Pet_.  Once the snakes are all dead and Deth'tilac has triggered _Ice Trap_, sacrifice your pet again.
.' Repeat the above steps until Deth'tilac is at _20%_ health. Be sure to _Dismiss your pet_ at this point.
.' Use your Tame Beast ability on _Deth'tilac_. |cast Tame Beast##1515
'|modeldisplay 38424
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Spiders\\Light Gray Spider (Rare Spawn)",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 27973
step
goto Zul'Drak,61.6,36.8
.' Search for Terror Spinner around the area. It is level 76.
.' You can find Terror Spinner at the locations below:
.' [53.,31.6]
.' [71.8,24.2]
.' [72.2,28.4]
.' [81.6,34.6]
.' [77.6,42.8]
.' [74.4,66.6]
.' Use your Tame Beast ability on _Terror Spinner_. |cast Tame Beast##1515
'|modeldisplay 27973
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mystical Pets\\Sporebats\\Blue Sporebat",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 17751
step
goto Zangarmarsh,64.6,55.2
.' Search for Sporebats around this area. They are level 61 - 62.
.' You can find more around [40.2,53.6].
.' Use your Tame Beast ability on a _Sporebat_. |cast Tame Beast##1515
'|modeldisplay 17751
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mystical Pets\\Sporebats\\Brown Sporebat",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 18029
step
goto Zangarmarsh,64.6,55.2
.' Search for Sporebats around this area. They are level 61 - 62.
.' You can find more around [40.2,53.6].
.' Use your Tame Beast ability on a _Sporebat_. |cast Tame Beast##1515
'|modeldisplay 18029
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mystical Pets\\Sporebats\\Green Sporebat",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 17753
step
label "start"
goto Zangarmarsh,74.0,42.0
.' Serch for Young Sporebats around this area. They are level 60 - 61.
.' Use your Tame Beast ability on a _Young Sporebat_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 17753
step
goto Zangarmarsh,16.2,31.6
.' Search for Greater Sporebats around this area. They are level 62 - 63.
.' Use your Tame Beast ability on a _Greater Sporebat_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 17753
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Serpents\\Black Wind Serpent",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 3006
step
label "start"
goto Wailing Caverns,53.6,66.6
.' Search for Deviate Dreadfang around this area. They are level 19 elites.
.' Use your Tame Beast ability on a _Deviate Dreadfang_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 3006
step
goto Southern Barrens,46.4,78.0
.' Search for Thunderhawk Cloudscrapers around this area. They are level 33 - 34.
.' Use your Tame Beast ability on a _Thunderhawk Cloudscraper_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 3006
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Serpents\\Green Wind Serpent",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 4091
step
label "start"
goto Dustwallow Marsh,41.4,54.4
.' Search for Noxious Shredders around the area. They are level 36 -37.
.' Use your Tame Beast ability on a _Noxious Shredder_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 4091
step
goto Thousand Needles94.2,57.2
.' Search for Venomous Cloud Serpents around the area. They are level 40.
.' Use your Tame Beast ability on a _Venomous Cloud Serpent_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 4091
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Serpents\\Orange Wind Serpent",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 2699
step
goto Feralas,43.6,36.4
.' Search for Vale Screechers around this area. They are level 36 - 37.
.' Use your Tame Beast ability on a _Vale Screecher_. |cast Tame Beast##1515
|modeldisplay 2699
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Silithids\\Green Silithid",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 481
step
label "start"
goto Thousand Needles,70.6,88.6
.' Search for Silithid Ravagers around this area. They are level 40 - 41. |tip They will be underwater.
.' Use your Tame Beast ability on a _Silithid Ravager_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 481
step
goto Tanaris,55.8,67.2
.' Search for Hazzali Sandreavers around this area. They are level 46 - 47.
.' Use your Tame Beast ability on a _Hazzali Sandreaver_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 481
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Silithids\\Purple Silithid",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 91
step
label "start"
goto Thousand Needles,67.0,83.6
.' Search for Silithid Ravagers around this area. They are level 40 - 41.
.' Use your Tame Beast ability on a _Silithid Ravager_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 91
step
goto Tanaris,36.8,41.2
.' Search for Centipaar Sandreavers around this area. They are level 47 - 48.
.' Use your Tame Beast ability on a _Centipaar Sandreaver_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 91
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Silithids\\Tan Silithid",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 35577
step
goto Thousand Needles,69.6,84.4
.' Search for Silithid Ravagers underwater. They are level 40 - 41.
.' Use your Tame Beast ability on a _Silithid Ravager_. |cast Tame Beast##1515
|modeldisplay 35577
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Silithids\\Yellow Silithid",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 11087
step
label "start"
goto Un'Goro Crater,46.8,82.6
.' Search for Gorishi Reavers underwater. They are level 51 - 53.
.' Use your Tame Beast ability on a _Gorishi Reaver_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 11087
step
goto Silithus,33.0,53.4
.' Search for Hive'Zora Reavers around this area. They are level 55 - 56.
.' Use your Tame Beast ability on a _Hive'Zora Reaver_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 11087
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Silithids\\Brown Ant Silithid",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 11091
step
label "start"
goto Un'Goro Crater,51.6,77.4
.' Search for Gorishi Workers around this area. They are level 51 - 52.
.' Use your Tame Beast ability on a _Gorishi Worker_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modelnpc 6552
step
goto Silithus,30.6,58.2
.' Search Hive'Zora Hive Sisters around this area. They are level 55 - 56.
.' Use your Tame Beast ability on a _Hive'Zora Hive Sister_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modelnpc 6552
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Silithids\\Green Ant Silithid",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 11095
step
label "start"
goto Tanaris,54.2,64.8
.' Search for Hazzali Workers around this area. They are level 46 - 47.
.' Use your Tame Beast ability on a _Hazzali Worker_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modelnpc 5452
step
goto Silithus,51.8,26.4
.' Search for Hive'Ashi Defenders around this area. They are level 55 - 56.
.' Use your Tame Beast ability on a _Hive'Ashi Defender_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modelnpc 5452
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Silithids\\Purple Ant Silithid",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 2592
step
label "start"
goto Feralas,74.2,62.4
.' Search for Zukk'ash Tunnelers around this area. They are level 38 - 39.
.' Use your Tame Beast ability on a _Zukk'ash Tunneler_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modelnpc 5247
step
goto Tanaris,37.2,46.6
.' Search for Centipaar Workers around this area. They are level 47 - 48.
.' Use your Tame Beast ability on a _Centipaar Worker_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modelnpc 5247
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Silithids\\Tan Ant Silithid",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 30904
step
goto Southern Barrens 41.6,6.8
.' Search for Silithid Swarmer around this area. They are level 31 - 32.
.' Use your Tame Beast ability on a _Silithid Swarmer_. |cast Tame Beast##1515
|modelnpc 3252
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Spiders\\Black Widow Spider",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 539
step
label "start"
goto Duskwood,33.6,44.4
.' Search for Black Widows around this area. They are level 22 - 24.
.' Use your Tame Beast ability on a _Black Window_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 539
step
goto Tirisfal Glades,86.4,53.6
.' Search for Vicious Night Web Spiders around this area. They are level 9 - 10.
.' Use your Tame Beast ability on a _Vicious Night Web Spider_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 539
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Spiders\\Crystal Spider",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 4456
step
label "start"
goto Searing Gorge,56.2,69.4
.' Search for Glassweb Spiders around this area. They are level 46 - 47.
.' Use your Tame Beast ability on a _Silithid Ravager_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 4456
step
goto Terokkar Forest,53.0,78.8
.'Search for Dreadfang Widows around this area. They are level 64 - 65.
.' Use your Tame Beast ability on a _Dreadfang Widow_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 4456
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Spiders\\Green Spider",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 283
step
goto Dustwallow Marsh,35.4,22.6
.' Search for Darkmist Silkspinners around this area. They are level 35 - 36.
.' Use your Tame Beast ability on a _Darkmist Silkspinner_. |cast Tame Beast##1515
|modeldisplay 283
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Spiders\\Gray Spider",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 955
step
label "start"
goto Ghostlands,30.6,27.6
.' Search for Spindleweb Spiders around this area. They are level 10 - 11.
.' Use your Tame Beast ability on a _Spindleweb Spider_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 955
step
goto Wetlands,50.2,60.6
.' Search for Cave Stalkers around this area. They are level 20 - 21.
.' Use your Tame Beast ability on a _Cave Stalker_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 955
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Spiders\\Jungle Spider",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 34278
step
goto Dustwallow Marsh,35.0,22.6
.' Search for Darkmist Recluse around this area. They are level 36 - 37.
.' Use your Tame Beast ability on a _Darkmist Recluse_. |cast Tame Beast##1515
|modeldisplay 34278
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Spiders\\Olive Spider",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 513
step
goto Western Plaguelands,56.0,60.6
.' Search for Plauge Lurkers around this area. They are level 36 - 37.
.' Use your Tame Beast ability on a _Plague Lurker_. |cast Tame Beast##1515
|modeldisplay 513
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Spiders\\Purple Spider",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 15937
step
goto Western Plaguelands,56.0,60.6
.' Search for Plauge Lurkers around this area. They are level 36 - 37.
.' Use your Tame Beast ability on a _Plague Lurker_. |cast Tame Beast##1515
|modeldisplay 15937
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Spiders\\Red Spider",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 36505
step
goto Terokkar Forest,54,81.6
.' Terokkarantula is a huge level 65 elite tucked away in the corner here.
.' Use your Tame Beast ability on a _Terokkarantula_. |cast Tame Beast##1515
|modeldisplay 36505
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Spiders\\Tan Spider",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 711
step
goto Wetlands,56.4,63.2
.' Search for Leech Stalkers around this area. They are level 20 - 21.
.' Use your Tame Beast ability on a _Leech Stalker_. |cast Tame Beast##1515
|modeldisplay 711
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Spiders\\Green Fire Spider",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 38543
step
goto Molten Front,65.6,49.2
.' Cinderweb Broodlings spawn and move quickly through the area.  They will despawn shortly after, so if you see one that isn't moving, you likely won't be able to tame it.
.' Use your Tame Beast ability on a _Cinderweb Broodling_. |cast Tame Beast##1515
|modeldisplay 38543
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Spiders\\Orange and Black Spiked Spider",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 18043
step
label "start"
goto Bloodmyst Isle,22.8,36.2
.' Search for Myst Leechers around this area. They are level 17-18.
.' Use your Tame Beast ability on a _Myst Leecher_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 18043
step
goto Terokkar Forest,53.8,57.4
.' Search for Deathskitter around this area. He patrols to [53.6,64.6] |tip It's a level 64 elite.
.' Use your Tame Beast ability on _Deathskitter_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 18043
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Spiders\\Red and Black Spiked Spider",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 17180
step
label "start"
goto Bloodmyst Isle,18.2,37.6
.' Search for Zarakh around this area. It is level 19.
.' Use your Tame Beast ability on _Zarakh_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 17180
step
goto Twilight Highlands,45.8,31.6
.' Search for the Black Recluse around this area. It is level 81 - 85.
.' Use your Tame Beast ability on a _Black Recluse_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 17180
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Spiders\\Red and Yellow Spiked Spider",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 17346
step
label "start"
goto Bloodmyst Isle,23.6,40.4
.' Search for the Myst Spinner around this area. They are level 16 - 17.
.' Use your Tame Beast ability on a _Myst Spinner_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 17346
step
goto Blade's Edge Mountains,67.8,52.4
.' Search for Ridgespine Stalkers around this area. They are level 66 - 67.
.' Use your Tam
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 17346
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Spiders\\Black Bone Spider",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 26760
step
goto Blasted Lands,35.6,59.2
.' Search for Tainted Nightstalkers around this area. They are level 57 - 58.
.' Use your Tame Beast ability on a _Tainted Nightstalker_. |cast Tame Beast##1515
|modeldisplay 26760
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Spiders\\Brown Bone Spider",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 26773
step
label "start"
goto Silverpine Forest,36.6,14.8
.' Search for Skitterweb Lurkers around this area. They are level 11 - 12.
.' Use your Tame Beast ability on a _Skitterweb Lurker_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 26773
step
goto Hillsbrad Foothills,34.6,72.6
.' _Only Alliance Players_ can tame this spider. Search for Domesticated Mine Creepers inside the mine. They are level 19 - 20.
.' Use your Tame Beast ability on a _Domesticated Mine Creeper_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 26773
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Spiders\\Dark Gray Bone Spider",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 34168
step
label "start"
goto Silverpine Forest,36.0,8.8
.' Search for the Skitterweb Matriarch. She may be hanging on the roof. She is level 13.
.' Use your Tame Beast ability on a _Skitterweb matriarch_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 34168
step
label "location2"
goto Hillsbrad Foothills,46.4,68.6
.' Search for Battle Creepers around this area. They are level 21 - 22.
.' _Only Alliance Players_ can tame this pet.
.' Use your Tame Beast ability on a _Battle Creeper_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 34168
step
goto Tol Barad Peninsula,54.6,52.8
.' Search for Darkwood Broodmothers in the area. They are level 85.
.' Use your Tame Beast ability on a _Darkwood Broodmother_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-location2" |confirm
|modeldisplay 34168
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Spiders\\Light Gray Bone Spider",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 27973
step
label "start"
goto Icecrown,53.6,75.2
.' Search for Necrotic Webspinners. They are level 79 - 80.
.' You will not be able to see them if you have an Argent Tournament daily quest.
.' Use your Tame Beast ability on a _Necrotic Webspinner_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 27973
step
goto Icecrown,85.8,73.8
.' Search for Carrion Fleshstrippers around this area. They are level 76 - 77
.' If you've done the quest hub here, they will be phased out.
.' Use your Tame Beast ability on a _Carrion Fleshstripper_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 27973
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Spiders\\Red Bone Spider",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 34167
step
goto Tol Barad Peninsula,55.0,55.4
.' Search for Darkwood Lurkers around this area. They are level 84 - 85.
.' Use your Tame Beast ability on a _Darkwood Lurker_. |cast Tame Beast##1515
|modeldisplay 34167
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Spiders\\Green Tarantula",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 709
step
label "start"
goto Teldrassil,42.4,53.6
.' Search for Webwood Venomfangs around this area. They are level 7 - 8.
.' Use your Tame Beast ability on a _Webwood Venomfang_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 709
step
goto Hillsbrad Foothills,34.2,58.6
.' Search for Forest Creepers around this area. They are level 20 - 21.
.' Use your Tame Beast ability on a _Forest Creeper_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 709
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Spiders\\Gray Tarantula",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 6214
step
goto Ashenvale,72.2,82.2
.' Search for Wildthorn Lurkers around this area. They are level 23 - 24.
.' Use your Tame Beast ability on a _Wildthorn Lurker_. |cast Tame Beast##1515
|modeldisplay 6214
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Spiders\\Lava Tarantula",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 7510
step
goto Searing Gorge,30.8,43.6
.' Search for Greater Lava Spiders around this area. They are level 47 - 48.
.' Use your Tame Beast ability on a _Greater Lava Spider_. |cast Tame Beast##1515
|modeldisplay 7510
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Spiders\\Orange Tarantula",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 382
step
label "start"
goto Redridge Mountains,19.6,65.8
.' Search for Tarantulas around this area. They are level 14 - 15.
.' Use your Tame Beast ability on a _Tarantula_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 382
step
goto Dustwallow Marsh,43.0,48.2
.' Search for Darkfang Creepers around this area. They are level 35 - 36.
.' Use your Tame Beast ability on a _Darkfang Creeper_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 382
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Spiders\\Red Tarantula",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 827
step
label "start"
goto Loch Modan,33.8,31.0
.' Search for Forest Lurkers around this area. They are level 11 - 12.
.' Use your Tame Beast ability on a _Forest Lurker_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 827
step
goto Silithus,60.6,31.6
.' Search for Sand Skitterers around this area. They are level 54 - 55.
.' Use your Tame Beast ability on a _Sand Skitterer_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 827
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Vultures\\Blue Vulture",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 507
step
label "start"
goto Desolace,65.0,27.6
.' Search for Dread Swoops around this area. They are level 30 -31.
.' Use your Tame Beast ability on a _Dread Swoop_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 507
step
goto Deadwind Pass,38.0,41.6
.' Search for Sky Shadows along the roads in this area. They are level 55 - 56.
.' Use your Tame Beast ability on a _Sky Shadow_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 507
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Vultures\\Brown Vulture",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 410
step
label "start"
goto Desolace,65.0,27.6
.' Search for Dread Swoops around this area. They are level 30 -31.
.' Use your Tame Beast ability on a _Dread Swoop_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 410
step
goto Deadwind Pass,38.0,41.6
.' Search for Sky Shadows along the roads in this area. They are level 55 - 56.
.' Use your Tame Beast ability on a _Sky Shadow_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 410
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Vultures\\Red Vulture",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 7348
step
goto Tanaris,45.0,40.6
.' Search for Fire Rocs around this area. They are level 44 - 45.
.' Use your Tame Beast ability on a _Fire Roc_. |cast Tame Beast##1515
|modeldisplay 7348
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Vultures\\Black Vulture",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 1229
step
label "start"
goto Mulgore,52.8,21.4
.' Search for Taloned Swoops around this area. They are level 8 -9.
.' Use your Tame Beast ability on a _Taloned Swoop_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 1229
step
goto Westfall,59.8,60.6
.' Search for Greater Fleshrippers around this area. They are level 12 - 13.
.' Use your Tame Beast ability on a _Greater Fleshripper_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 1229
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Condor\\Blue Condor",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 23962
step
label "start"
goto Dragonblight,51.6,26.6
.' Search for Dragonbone Condors around this area. They are level 71 - 72.
.' Use your Tame Beast ability on a _Dragonbone Condor_. |cast Tame Beast##1515
|modeldisplay 23962
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Condor\\Brown Condor",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 23482
step
label "start"
goto Loch Modan,52.4,63.2
.' Search for Loch Buzzards around this area. They are level 13 - 14.
.' Use your Tame Beast ability on a _Loch Buzzard_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 23482
step
goto Redridge Mountains,20.0,65.4
.' Search for Dire Condors around this area. They are level 15 - 16.
.' Use your Tame Beast ability on a _Dire Condor_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 23482
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Condor\\White Condor",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 25868
step
label "start"
goto Borean Tundra,85.6,35.8
.' Search for Carion Condors around this area. They are level 70 - 71.
.' Use your Tame Beast ability on a _Carrion Condor_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 25868
step
goto Dragonblight,46.6,44.2
.' Search for Dreadtalon flying around this area. It is a level 74 elite.
.' Use your Tame Beast ability on _Dreadtalon_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 25868
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Two Headed Vulture\\Blue Two Headed Vulture",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 37578
step
goto Terokkar Forest,43,51
.from Trachela##21515
.collect Trachela's Carcass##30618
.' Click here to see another location for this pet |next |confirm
step
goto Terokkar Forest,27,55
.' Use Trachela's Carcass at the Scarecrow here. |use Trachela's Carcass##30618
.' Torgos will fly down.
.' Use your Tame Beast ability on _Torgos_. |cast Tame Beast##1515
|modeldisplay 37578
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Two Headed Vulture\\Green Two Headed Vulture",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 16882
step
label "start"
goto Blasted Lands,58.4,33.4
.' Search for Bonepicker Felfeeders around this area. They are level 55, flying overhead.
.' Use your Tame Beast ability on a _Bonepicker Felfeeder_. |cast Tame Beast##1515
|modeldisplay 16882
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Two Headed Vulture\\Red Two Headed Vulture",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 34048
step
label "start"
goto Tanaris,41.4,62.4
.' Search for Searing Rocs around this area. They are level 47 - 48
.' Use your Tame Beast ability on a _Searing Roc_. |cast Tame Beast##1515
|modeldisplay 34048
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Two Headed Vulture\\White Two Headed Vulture",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 20348
step
label "start"
goto Terokkar Forest,43.2,51.6
.' Search for Trachela around this area. They are level 65.
.' Use your Tame Beast ability on _Trachela_. |cast Tame Beast##1515
|modeldisplay 20348
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Two Headed Vulture\\Red-Fiery Two Headed Vulture (Rare Spawn)",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 34048
step
goto Tanaris,48.2,45.6
.' Search for Emberwing around the area. It is level 45.
.' Emberwing can also be found around [44.6,40.6]
.' Use your Tame Beast ability on _Emberwing_. |cast Tame Beast##1515
'|modeldisplay 34048
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Two Headed Vulture\\Yellow Two Headed Vulture (Rare Spawn)",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 37536
step
goto Blasted Lands,62.6,36.6
.' Search for Spiteflayer around the area. It is level 56.
.' Use your Tame Beast ability on _Spiteflayer_. |cast Tame Beast##1515
'|modeldisplay 37536
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\Black Cat",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 599
step
label "start"
goto Northern Stranglethorn,59.6,21.0
.' Search for Kurzen War Panthers around this area. They are level 24 - 25.
.' Use your Tame Beast ability on a _Kurzen War Panther_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 599
step
goto The Cape of Stranglethorn,56.6,38.8
.' Search for Elder Shadowmaw Panthers around this area. They are level 28 - 30.
.' You can find more around [49.0,43.2].
.' Use your Tame Beast ability on a _Elder Shadowmaw Panther_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 599
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\Black Spotted Cat",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 11448
step
goto Stonetalon Mountains,39.0,21.2
.' Search for Twilight Runners around this area. They are level 23 - 24.
.' Use your Tame Beast ability on a _Twilight Runner_. |cast Tame Beast##1515
|modeldisplay 11448
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\Black Striped Cat",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 321
step
label "start"
goto Darkshore,41.8,37.0
.' Search for Moonstalkers around this area. They are level 12 -13.
.' Use your Tame Beast ability on a _Moonstalker_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 321
step
goto Terokkar Forest,73.4,71.8
.' Search for Blackwind Sabercats around this area. They are level 70 - 71.
.' Use your Tame Beast ability on a _Blackwind Sabercat_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 321
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\Brown Cat",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 1059
step
label "start"
goto Northern Barrens,45.6,54.8
.' Search for Savannah Huntress' around this area. They are level 11 - 12.
.' Use your Tame Beast ability on a _Savannah Huntress_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 1059
step
goto Hillsbrad Foothills,47.4,56.6
.' Search for Foothill Stalkers around the area. They are level 22 - 23.
.' Use your Tame Beast ability on a _Foothill Stalker_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 1059
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\Dark Striped Cat",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 11454
step
goto Darkshore,43.0,63.0
.' Search for Moonstalker Matriarchs around the area. They are level 18 - 19.
.' Use your Tame Beast ability on a _Moonstalker Matriarch_. |cast Tame Beast##1515
|modeldisplay 11454
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\Green Striped Cat",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 35951
step
goto Felwood,38.6,53.6
.' Search for Winna's Kitten here. It's level 47.
.' Use your Tame Beast ability on a _Winna's Kitten_. |cast Tame Beast##1515
|modeldisplay 35951
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\Orange Spotted Cat",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 1043
step
label "start"
goto Badlands,70.6,29.6
.' Search for Ridge Stalkers around the area. They are level 44 - 45.
.' Use your Tame Beast ability on a _Ridge Stalker_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 1043
step
label "location"
goto Badlands,54.6,46.6
.' Search for Ridge Huntresses around the area. They are level 45 - 46.
.' Use your Tame Beast ability on a _Ridge Huntress_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 1043
step
goto Badlands,19.2,55.4
.' Search for Ridge Stalker Patriarchs around the area. They are level 46 - 47.
.' Use your Tame Beast ability on a _Ridge Stalker Patriarch_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-location2" |confirm
|modeldisplay 1043
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\Orange Striped Cat",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 320
step
label "start"
goto Northern Stranglethorn,59.6,21.0
.' Search for Kurzen War Tigers around the area. They are level 24 - 25.
.' Use your Tame Beast ability on a _Kurzen War Tiger_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 320
step
goto The Cape of Stranglethorn,41.8,28.0
.' Search for Stranglethorn Tigress around the area. They are level 29 - 30.
.' Use your Tame Beast ability on a _Stranglethorn Tigress_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 320
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\White Cat",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 9958
step
goto Winterspring,46.6,16.6
.' Search for Young Frostsabers around the area. They are level 51.
.' Use your Tame Beast ability on a _Young Frostsaber_. |cast Tame Beast##1515
|modeldisplay 9958
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\White Spotted Cat",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 32764
step
label "start"
goto Dun Morogh,78.4,50.8
.' Search for Snow Leopards around the area.
.' Use your Tame Beast ability on a _Snow Leopard_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 32764
step
goto Zul'Drak 61.8,61.6
.' Search for Frost Leopards around the area.
.' Use your Tame Beast ability on a _Frost Leopard_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 32764
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\White Striped Cat",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 616
step
goto Northern Stranglethorn,47.8,59.2
.' King Bangalash patrols around on top of this plataue. He is level 29.
.' Use your Tame Beast ability on _King Bangalash_. |cast Tame Beast##1515
|modeldisplay 616
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\Saber Beast Pets\\Cats\\Aqua Saber",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 10054
step
goto Winterspring,46.2,17.6
.' Search for Shy-Rotam around this area. She is level 53.
.' Use your Tame Beast ability on _Shy-Rotam_. |cast Tame Beast##1515
|modeldisplay 10054
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\Saber Beast Pets\\Cats\\Black Saber",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 35503
step
goto Swamp of Sorrows,10.8,33.8
.' Search for Duskfang around this area. It is level 55.
.' Use your Tame Beast ability on _Duskfang_. |cast Tame Beast##1515
|modeldisplay 35503
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\Saber Beast Pets\\Cats\\Ice Saber",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 38005
step
goto Winterspring,53.0,23.0
.' Search for Frostsaber Stalkers around the area. They are level 52 - 53.
.' Use your Tame Beast ability on a _Frostsaber Stalker_. |cast Tame Beast##1515
|modeldisplay 38005
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\Saber Beast Pets\\Cats\\Lavendar Saber Cat",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 9954
step
goto Winterspring,46.0,19.0
.' Search for Frostsaber Pride Watchers around the area. They are level 52 - 53.
.' Use your Tame Beast ability on a _Ffrostsaber Pride Watcher_. |cast Tame Beast##1515
|modeldisplay 9954
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\Saber Beast Pets\\Cats\\Orange Spotted Saber",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 25005
step
goto Sholazar Basin,26.2,67.8
.' Search for Dreadsabers around the area. They are level 75 - 76.
.' Use your Tame Beast ability on a _Dreadsaber_. |cast Tame Beast##1515
|modeldisplay 25005
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\Saber Beast Pets\\Cats\\Orange Stripped Saber",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 37546
step
goto Sholazar Basin,34.0,34.2
.' Search for Shango here. It's a level 76.
.' Use your Tame Beast ability on _Shango_. |cast Tame Beast##1515
|modeldisplay 37546
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\Saber Beast Pets\\Cats\\White Saber",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 38004
step
goto Winterspring,49.8,24.6
.' Search for Frostsaber Huntresses around the area. They are level 52 - 53.
.' Use your Tame Beast ability on a _Frostsaber Huntress_. |cast Tame Beast##1515
|modeldisplay 38004
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\White Stripped Cat",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 37545
step
goto Winterspring,52.8,21.6
.' Search for Frostsabers around the area. They are level 52 - 53.
.' Use your Tame Beast ability on a _Frostsaber_. |cast Tame Beast##1515
|modeldisplay 37545
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\Lynxes\\Brown Lynxes",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 30963
step
label "start"
goto Eversong Woods,65.6,59.4
.' Search for Elder Springpaw around the area. They are level 8 - 9.
.' Use your Tame Beast ability on an _Elder Springpaw_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 30963
step
goto Loch Modan,69.8,73.6
.' Search for Bobcats around the area. They are level 16 - 17.
.' Use your Tame Beast ability on a _Bobcat_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 30963
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\Lynxes\\Red Lynxes",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 15507
step
goto Eversong Woods,44.0,65.8
.' Search for Springpaw Stalkers around the area. They are level 4 - 7.
.' Use your Tame Beast ability on a _Springpaw Stalker_. |cast Tame Beast##1515
|modeldisplay 15507
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\Lions\\Black Lion",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 26618
step
goto Sholazar Basin,50.6,76.8
.' Search for Pitch here. It is level 76.
.' Use your Tame Beast ability on _Pitch_. |cast Tame Beast##1515
|modeldisplay 26618
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\Lions\\Gold Lions",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 1973
step
label "start"
goto Northern Barrens,44.2,58.0
.' Search for Savannah Highmanes around this area. They are level 12 - 13.
.' Search grassy patches nearby if you are having trouble finding them.
.' Use your Tame Beast ability on a _Savannah Highmane_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 1973
step
label "location2"
goto Northern Barrens,54.8,31.8
.' Search for Savannah Prowlers around this area. They are level 14 - 15.
.' Use your Tame Beast ability on a _Savannah Prowler_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 1973
step
goto Southern Barrens,46.8,47.6
.' Search for Plains Pridemane around this area. They are level 33.
.' Use your Tame Beast ability on a _Plains Pridemane_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-location2" |confirm
|modeldisplay 1973
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\Hunched Cat\\Black Hunched Cat",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 29042
step
goto Zul'Gurub,47.8,21.6
.' Search for Pride of Bethekk in this area. They are level 84 - 85 Elites. |tip Keep in mind that you should frost trap this before attempting to tame.
.' Use your Tame Beast ability on a _Pride of Bethekk_. |cast Tame Beast##1515
|modeldisplay 29042
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\Hunched Cat\\Black Spotted Hunched Cat",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 25708
step
goto Zul'Drak,65.2,68.0
.' Search for Cursed Offspring of Har'koa around the area. They are level 76 - 77.
.' Use your Tame Beast ability on a _Cursed Offspring of Har'koa_. |cast Tame Beast##1515
|modeldisplay 25708
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\Hunched Cat\\Orange Striped Hunched Cat",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 34248
step
label "start"
goto Lost City of the Tol'vir,33.6,22.8
.' Search for Tamed Tol'vir Prowlers in the area. They are level 85.
.' Use your Tame Beast ability on a _Tamed Tol'vir Prowler_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 34248
step
goto Uldum,51.2,78.8
.' Search for Tigers around this area. They are level 85.
.' Use your Tame Beast ability on a _Tiger_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 34248
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Mystical Pets\\Core Hounds\\Green Core Hounds",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 20521
step
goto Shadowmoon Valley,54.2,52.8
.' Search for Spawn of Uvuros around this area. It is level 69.
.' Use your Tame Beast ability on _Spawn of Uvuros_. |cast Tame Beast##1515
|modeldisplay 20521
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Mystical Pets\\Core Hounds\\Gray Core Hounds",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 17028
step
goto Azuremyst Isle,49.6,13.0
.' Search for The Kurken around this area. It is level 12. |tip It's inside the cave at Stillpine Hold.
.' Use your Tame Beast ability on _The Kurken_. |cast Tame Beast##1515
|modeldisplay 17028
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Mystical Pets\\Core Hounds\\Red Core Hounds",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 12189
step
label "start"
goto Mount Hyjal,34.8,55.6
.' Search for Core Hounds around this area. They are level 80.
.' Note that if you have unlocked the Firelands Daily Quests, you won't be able to tame this pet.
.' Use your Tame Beast ability on a _Core Hound_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 12189
step
label "location2"
goto Mount Hyjal,83.6,62.6
.' Search for Smolderos the Carbonizer. He patrols around the area. He is a level 82 elite.
.' Use your Tame Beast ability on _Smolderos the Carbonizer_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 12189
step
goto Molten Core,49.6,30.6
.' Search for Core Hounds around this area. They are level 59 - 62 elites.
.' Use your Tame Beast ability on a _Core Hound_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-location2" |confirm
|modeldisplay 12189
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Mystical Pets\\Core Hounds\\Yellow and Green Core Hounds",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 37559
step
label "start"
goto Blasted Lands,51.6,42.6
.' Search for Gomegaz around this area.  He is level 57.
.' Use your Tame Beast ability on _Gomegaz_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 37559
step
goto Tol Barad,48.4,31.6
.' Search for Svarnos around this area. He is level 85.
.' Use your Tame Beast ability on _Svarnos_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 37559
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Beast Pets\\Devilsaur\\Black Devilsaur",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 5238
step
label "start"
goto Un'Goro Crater,34.8,28.0
.' He patrols down to [39.0,48.6].
.' Search for an Ironhide Devilsaur around this area.
.' Use your Tame Beast ability on an _Ironhide Devilsaur_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 5238
step
goto Netherstorm,45.4,10.6
.' Search for Tyrantus around this area. He patrols and is level 71.
.' Use your Tame Beast ability on _Tyrantus_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 5238
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Beast Pets\\Devilsaur\\Red Devilsaur",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 5240
step
label "start"
goto Un'Goro Crater,57.6,72.8
.' He patrols down to [75.4,43.6].
.' Search for a Tyrant Devilsaur around this area.
.' Use your Tame Beast ability on a _Tyrant Devilsaur_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 5240
step
goto Un'Goro Crater,34.2,80.8
.' She can also be found at [38.0,64.4].
.' Search for the Devilsaur Queen around this area. She is a level 54 elite.
.' Use your Tame Beast ability on the _Devilsaur Queen_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 5240
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Beast Pets\\Devilsaur\\White Devilsaur",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 5239
step
goto Un'Goro Crater,58.0,74.6
.' It pratrols to [58.0,42.4].
.' Search for the Devilsaur around this area.
.' Use your Tame Beast ability on the _Devilsaur_. |cast Tame Beast##1515
|modeldisplay 5239
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Dogs\\Mastiffs\\Black Mastiff",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 35355
step
goto Dragonblight,87.6,38.0
.' Search for Onslaught Bloodhounds around the area. They are level 71 - 72.
.' Use your Tame Beast ability on a _Onslaught Bloodhound_. |cast Tame Beast##1515
|modeldisplay 35355
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Dogs\\Mastiffs\\Brown Mastiff",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 33998
step
goto Eastern Plaguelands,22.6,68.2
.' Search for Blighthounds around the area. They are level 40 - 41. |tip Note that when you aggro one, the others will come.
.' Use your Tame Beast ability on a _Blighthound_. |cast Tame Beast##1515
|modeldisplay 33998
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Dogs\\Mastiffs\\Gray Mastiff",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 30213
step
goto Howling Fjord,69.2,56.0
.' Search for Dragonflayer Hunting Hounds around this area. They are level 68.
.' Use your Tame Beast ability on a _Dragonflayer Hunting Hound_. |cast Tame Beast##1515
|modeldisplay 30213
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Dogs\\Mastiffs\\Red Mastiff",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 35353
step
goto Scarlet Monastery/2,20.6,34.6
.' Search for the Scarlet Tracking Hound.  They are level 32 elites.
.' Note that there will be several later inside of the instance.
.' Use your Tame Beast ability on a _Scarlet Tracking Hound_. |cast Tame Beast##1515
|modeldisplay 35353
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Dogs\\Demon Beast Pets\\Dogs\\Blue Demon Dog",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 9021
step
goto Tirisfal Glades,83.8,44.0
.' Search for Ravenous Darkhounds around the area. They are level 9 - 10.
.' Use your Tame Beast ability on a _Ravenous Darkhound_. |cast Tame Beast##1515
|modeldisplay 9021
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Dogs\\Demon Beast Pets\\Dogs\\Ghostly Gray Demon Dog",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 16052
step
goto Karazhan,61.4,19.6
.' Search for Shadowbeasts around this area. They are level 69 - 70 elites.
.' Use your Tame Beast ability on a _Shadowbeast_. |cast Tame Beast##1515
|modeldisplay 16052
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Dogs\\Demon Beast Pets\\Dogs\\Ghostly White Demon Dog",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 16049
step
goto Karazhan,61.4,19.6
.' Search for Phase Hounds around this area. They are level 70 elites.
.' Use your Tame Beast ability on a _Phase Hound_. |cast Tame Beast##1515
|modeldisplay 16049
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Dogs\\Demon Beast Pets\\Dogs\\Gray Demon Dog",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 6195
step
goto Nagrand,10.6,39.0
.' Search for Deathshadow Hounds around the area. They are level 70 - 71.
.' Use your Tame Beast ability on a _Deathshadow Hound_. |cast Tame Beast##1515
|modeldisplay 6195
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Dogs\\Demon Beast Pets\\Dogs\\Purple Demon Dog",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 37773
step
goto Karazhan,61.4,19.6
.' Search for Dreadbeasts around the area. They are level 71 elites.
.' Use your Tame Beast ability on a _Dreadbeast_. |cast Tame Beast##1515
|modeldisplay 37773
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Dogs\\Demon Beast Pets\\Dogs\\Red Demon Dog",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 8181
step
label "start"
goto Karazhan,74.6,21.6
.' Search for Rokad the Ravager around the area. He is a level 73 elite.
.' Use your Tame Beast ability on _Rokad the Ravager_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 8181
step
goto Blackrock Depths,55.8,69.8
.' Search for Bloodhound Mastiff around the area. They are level 52 - 53.
.' Use your Tame Beast ability on a _Bloodhound Mastiff_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 8181
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Dogs\\Runed Demon Beast Pets\\Dogs\\Blue Runed Demon Dog",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 24906
step
goto Borean Tundra,33.8,28.8
.' Search for Coldarra Mage Slayers around the area. They are level 69.
.' Use your Tame Beast ability on a _Coldarra Mage Slayer_. |cast Tame Beast##1515
|modeldisplay 24906
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Dogs\\Runed Demon Beast Pets\\Dogs\\Green Runed Demon Dog",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 37408
step
goto Eastern Plaguelands,51.2,54.2
.' Search for Plaguehounds around the area. They are level 41.
.' Use your Tame Beast ability on a _Plaguehound_. |cast Tame Beast##1515
|modeldisplay 37408
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Dogs\\Runed Demon Beast Pets\\Dogs\\Red Runed Demon Dog",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 25785
step
goto Zul'Drak,19.4,61.6
.' Search for Vargul Blighthounds around the area. They are level 74 - 75.
.' Use your Tame Beast ability on a _Vargul Blighthound_. |cast Tame Beast##1515
|modeldisplay 25785
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Foxes\\Black Fox",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 30255
step
goto Redridge Mountains 63.4,41.2
.' Search for Forest Stalkers around the area. They are level 18 - 19.
.' Use your Tame Beast ability on a _Forest Stalker_. |cast Tame Beast##1515
|modeldisplay 30255
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Foxes\\Brown Fox",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 30302
step
label "start"
goto Redridge Mountains,21.6,64.8
.' Search for a Redridge Fox around the area. They are level 15 - 16.
.' You can find more around [43.6,70.4].
.' Use your Tame Beast ability on a _Redridge Fox_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 30302
step
goto Western Plaguelands,48.8,30.2
.' Search for a Rabid Fox around the area. They are level 36 - 37.
.' Use your Tame Beast ability on a _Rabid Fox_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 30302
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Foxes\\Gray Fox",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 30239
step
goto Loch Modan,73.6,44.0
.' Search for an Ashtail around the area. They are level 16.
.' Use your Tame Beast ability on an _Ashtail_. |cast Tame Beast##1515
|modeldisplay 30239
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Foxes\\Red Foxes",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 30301
step
label "start"
goto Loch Modan,74.4,38.6
.' Search for a Hill Fox around the area. They are level 16.
.' Use your Tame Beast ability on a _Hill Fox_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 30301
step
goto Western Plaguelands,40.2,60.8
.' Search for a Whitetail Fox around the area. They are level 35 - 36.
.' Use your Tame Beast ability on a _Whitetail Fox_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 30301
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Foxes\\White Fox",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 30254
step
label "start"
goto Ruins of Gilneas,61.8,32.2
.' Search for a Highlands Fox around the area. They are level 13 - 14.
.' Use your Tame Beast ability on a _Highlands Fox_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 30254
step
goto Winterspring,62.6,26.0
.' Search for a Snowfrolic Fox around the area. They are level 52 - 53.
.' Use your Tame Beast ability on a _Snowfrolic Fox_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 30254
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Hyenas\\Brown Hyena",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 2726
step
label "start"
goto Desolace,70.8,25.6
.' Search for a Starving Bonepaw around the area. They are level 30 - 31.
.' Use your Tame Beast ability on a _Starving Bonepaw_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 2726
step
goto Dragonblight,41.2,45.2
.' Search for a Tundra Scavenger around the area. They are level 72 - 73.
.' Use your Tame Beast ability on a _Tundra Scavenger_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 2726
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Hyenas\\Gray Hyena",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 2714
step
goto Blasted Lands,50.2,34.6
.' Search for a Snickeringfang Hyena around the area. They are level 55 - 56.
.' Use your Tame Beast ability on a _Snickerfang Hyena_. |cast Tame Beast##1515
|modeldisplay 2714
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Hyenas\\Orange Hyena",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 1536
step
goto Tanaris,48.0,27.2
.' Search for a Blisterpaw Hyena around the area. They are level 44 - 45.
.' Use your Tame Beast ability on a _Blisterpaw Hyena_. |cast Tame Beast##1515
|modeldisplay 1536
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Hyenas\\Orange Hyena Lighter",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 1535
step
label "start"
goto Northern Barrens,52.8,76.4
.' Search for Kolkar Packhounds around the area. They are level 13.
.' Use your Tame Beast ability on a _Kolkar Packhound_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 1535
step
goto Southern Barrens,45.8,43.6
.' Search for Hecklefang Scavengers around the area. They are level 30 - 31.
.' Use your Tame Beast ability on a _Hecklefang Scavenger_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 1535
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Hyenas\\Purple Hyena",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 10903
step
goto Tanaris,56.2,56.6
.' Search for a Rabid Blisterpaw around this area. They are level 46 - 47.
.' Use your Tame Beast ability on a _Rabid Blisterpaw_. |cast Tame Beast##1515
|modeldisplay 10903
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Hyenas\\Red Hyena",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 31352
step
goto Uldum,55.6,58.4
.' Search for a Bloodsnarl Hyena around this area. They are level 82 - 83.
.' Use your Tame Beast ability on a _Bloodsnarl Hyena_. |cast Tame Beast##1515
|modeldisplay 31352
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Hyenas\\Yellow Hyena",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 2710
step
goto Northern Barrens,54.4,27.0
.' Search for a Hecklefang Hyena around this area. They are level 15 - 16.
.' Use your Tame Beast ability on a _Hecklefang Hyena_. |cast Tame Beast##1515
|modeldisplay 2710
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Moths\\Beige Moth",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 17574
step
goto Terokkar Forest,45.4,31.6
.' Search for Teromoths around the area. They are level 62 - 63.
.' Use your Tame Beast ability on a _Teromoth_. |cast Tame Beast##1515
|modeldisplay 17574
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Moths\\Blue and Yellow Moth",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 17798
step
goto Terokkar Forest,45.4,31.6
.' Search for Teromoths around the area. They are level 62 - 63.
.' Use your Tame Beast ability on a _Teromoth_. |cast Tame Beast##1515
|modeldisplay 17798
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Moths\\Blue Moth",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 17709
step
label "start"
goto Bloodmyst Isle,44.6,56.2
.' Search for Royal Blue Flutterers around the area. They are level 14 - 16.
.' Use your Tame Beast ability on a _Royal Blue Flutterer_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 17709
step
goto Netherstorm,44.6,55.4
.' Search for Shimmerwing Moths around the area. They are level 68 - 69.
.' Use your Tame Beast ability on a _Shimmerwing Moth_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 17709
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Moths\\Green Moth",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 17795
step
goto Terokkar Forest,45.0,22.6
.' Search for Vicious Termoth around the area. They are level 62 - 63.
.' Use your Tame Beast ability on a _Vicious Teromoth_. |cast Tame Beast##1515
|modeldisplay 17795
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Moths\\Gray Moth",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 37566
step
goto Azuremyst Isle,80.6,42.6
.' Search for a Vale Moth around this area. They are level 1.
.' Note that if you are Horde you will likely die trying to attain this pet.
.' Use your Tame Beast ability on a _Vale Moth_. |cast Tame Beast##1515
|modeldisplay 37566
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Moths\\Tan Moth",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 23316
step
goto Borean Tundra,52.8,53.8
.' Search for a Bloodspore Moth around the area. They are level 68 - 69.
.' Use your Tame Beast ability on a _Bloodspore Moth_. |cast Tame Beast##1515
|modeldisplay 23316
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Moths\\White Moth",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 23237
step
goto Borean Tundra,48.6,59.0
.' Search for Aspatha the Broodmother here.  She is level 71.
.' Use your Tame Beast ability on _Aspatha the Broodmother_. |cast Tame Beast##1515
|modeldisplay 23237
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Raptors\\Black Raptor",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 21825
step
label "start"
goto Dustwallow Marsh,32.6,65.2
.' Search for Goreclaw the Ravenous here. He is level 38.
.' Use your Tame Beast ability on a _Goreclaw the Ravenous_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 21825
step
goto Un'Goro Crater,69.4,53.0
.' Search for Venomhide Ravasaurs around the area. They are level 50 - 51.
.' Use your Tame Beast ability on a _Venomhide Ravasaur_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 21825
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Raptors\\Blue Raptor",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 949
step
label "start"
goto Wetlands,29.6,45.6
.' Search for Mottled Screechers around the area. They are level 22.
.' Use your Tame Beast ability on a _Mottled Screecher_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 949
step
goto Northern Stranglethorn,63.0,62.2
.' Search for Tethis around this area. He is level 28.
.' Use your Tame Beast ability on a _Tethis_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 949
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Raptors\\Green Raptor",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 676
step
goto Wetlands,35.4,18.6
.' Search for Highland Scytheclaws around the area. They are level 22 - 23.
.' Use your Tame Beast ability on a _Highland Scytheclaw_. |cast Tame Beast##1515
|modeldisplay 676
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Raptors\\Gray Raptor",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 1337
step
label "start"
goto Durotar,36.0,32.4
.' Search for Screamslash here. It is level 9.
.' Use your Tame Beast ability on a _Screamlash_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 1337
step
goto Northern Barrens,65.2,58.4
.' Search for King Reaperclaw here. He is level 18.
.' Use your Tame Beast ability on a _King Reaperclaw_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 1337
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Raptors\\Orange Raptor",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 787
step
label "start"
goto Wetlands,32.8,21.0
.' Search for Highland Razormaw around the area. They are level 22 - 23.
.' Use your Tame Beast ability on a _Highland Razormaw_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 787
step
goto Southern Barrens,41.2,24.0
.' Search for Terrortooth Scytheclaw around the area. They are level 30 - 31.
.' Use your Tame Beast ability on a _Terrortooth Scytheclaw_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 787
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Raptors\\Purple Raptor",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 1747
step
label "start"
goto Northern Barrens,51.4,35.0
.' Search for Sunscale Raptors around the area. They are level 11 - 12.
.' Use your Tame Beast ability on a _Sunscale Raptor_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 1747
step
goto Wetlands,23.2,49.4
.' Search for Mottled Raptors around the area. They are level 22.
.' Use your Tame Beast ability on a _Mottled Raptor_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 1747
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Raptors\\Red Raptor",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 1960
step
label "start"
goto Durotar,44.6,32.6
.' Search for Bloodtalon Taillashers around the area. They are level 6 - 7.
.' Use your Tame Beast ability on a _Bloodtalon Taillasher_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 1960
step
label "location2"
goto Southern Barrens,42.2,22.0
.' Search for Terrortooth Runners around the area. They are level 29 - 30.
.' Use your Tame Beast ability on a _Terrortooth Runner_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 1960
step
goto Dustwallow Marsh,47.6,17.6
.' Search for Bloodfen Raptors around the area. They are level 36 - 37.
.' Use your Tame Beast ability on a _Bloodfen Raptor_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-location2" |confirm
|modeldisplay 1960
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Raptors\\Yellow Raptor",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 11316
step
goto Arathi Highlands,20.8,20.6
.' Search for Highland Striders around the area. They are level 25 - 26.
.' Use your Tame Beast ability on a _Highland Strider_. |cast Tame Beast##1515
|modeldisplay 11316
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Raptors\\Black Spiked Raptor",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 19770
step
goto Blade's Edge Mountains,48.8,46.6
.' Search for a Daggermaw Blackhide around this area. They are level 65 - 66.
.' Use your Tame Beast ability on a _Daggermaw Blackhide_. |cast Tame Beast##1515
|modeldisplay 19770
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Raptors\\Blue Spiked Raptor",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 19770
step
goto Zul'Drak,29.2,70.8
.' Search for a Drakuru Raptor around the area. They are level 74 - 75.
.' Use your Tame Beast ability on a _Drakuru Raptor_. |cast Tame Beast##1515
|modeldisplay 19770
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Raptors\\Brown Spiked Raptor",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 19736
step
label "start"
goto Southern Barrens,52.2,39.6
.' Search for a Deviate Terrortooth around the area. They are level 31 - 32.
.' Use your Tame Beast ability on a _Deviate Terrortooth_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 19736
step
goto Blade's Edge Mountains,42.6,53.2
.' Search for a Bladespire Raptor around the area. They are level 65 - 66.
.' Use your Tame Beast ability on a _Bladespire Raptor_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 19736
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Raptors\\Green Spiked Raptor",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 19742
step
goto Blade's Edge Mountains,70.6,32.6
.' Search for a Felsworn Daggermaw around the area. They are level 67 - 68.
.' Use your Tame Beast ability on a _Felsworn Daggermaw_. |cast Tame Beast##1515
|modeldisplay 19742
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Raptors\\Red Spiked Raptor",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 30847
step
label "start"
goto Durotar,61.6,91.8
.' Search for Corrupted Bloodtalons around the area. They are level 2 - 3.
.' Use your Tame Beast ability on a _Corrupted Bloodtalon_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 30847
step
goto Blade's Edge Mountains,64.8,54.4
.' Search for Daggermaw Lashtail around the area. They are level 66 - 67.
.' Use your Tame Beast ability on a _Daggermaw Lashtail_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 30847
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Tallstriders\\Brown Tallstrider",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 1219
step
label "start"
goto Northern Barrens,66.6,38.6
.' Search for Greater Plainstriders around the area. They are level 10 - 12.
.' Use your Tame Beast ability on a _Greater Plainstrider_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 1219
step
goto Darkshore,40.8,48.6
.' Search for a Foreststrider Fledgling around the area. They are level 12.
.' Use your Tame Beast ability on a _Foreststrider Fledgling_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 1219
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Tallstriders\\Gray Tallstrider",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 1220
step
goto Northern Barrens,64.6,60.0
.' Search for an Ornery Plainstrider around this area. They are level 16 - 17.
.' Use your Tame Beast ability on a _Ornery Plainstrider_. |cast Tame Beast##1515
|modeldisplay 1220
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Tallstriders\\Pink Tallstrider",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 1961
step
goto Southern Barrens,50.8,41.2
.' Search for a Deviate Plainstrider around this area. They are level 31 - 32.
.' Use your Tame Beast ability on a _Deviate Plainstrider_. |cast Tame Beast##1515
|modeldisplay 1961
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Tallstriders\\Purple Tallstrider",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 21087
step
goto Terokkar Forest,45.2,94.2
.' Search for a Lost Torranche around this area. They are level 70.
.' You will need a flying mount to have access to these.
.' Use your Tame Beast ability on a _Lost Torranche_. |cast Tame Beast##1515
|modeldisplay 21087
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Tallstriders\\Turqouise Tallstrider",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 38
step
goto Swamp of Sorrows,83.6,30.0
.' Search for a Swampstider around the area. They are level 49 - 52.
.' Use your Tame Beast ability on a _Swampstrider_. |cast Tame Beast##1515
|modeldisplay 38
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Tallstriders\\White Tallstrider",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 1221
step
label "start"
goto Mulgore,57.8,56.4
.' Search for an Elder Plainstrider around the area. They are level 8 - 9.
.' Use your Tame Beast ability on a _Elder Plainstrider_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 1221
step
goto Northern Barrens,39.8,55.2
.' Search for a Fleeting Plainstrider around the area. They are level 12 - 13.
.' Use your Tame Beast ability on a _Fleeting Plainstrider_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 1221
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Blue and Red Wasp",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 29113
step
goto Sholazar Basin,61.6,79.6
.' Search for a Sapphire Hive Drone around the area. They are level 75 - 77.
.' Use your Tame Beast ability on a _Sapphire Hive Drone_. |cast Tame Beast##1515
|modeldisplay 29113
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Blue and Purple Wasp",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 37861
step
goto Zul'Gurub,33.0,49.2
.' Search for a Florawing Needler around the area. They are level 84 - 85.
.' You can find more around [44.0,51.2].
.' Use your Tame Beast ability on a _Florawing Needler_. |cast Tame Beast##1515
|modeldisplay 37861
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Green and Red Wasp",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 37743
step
label "start"
goto Uldum,57.8,47.6
.' Search for a Ferndweller Wasp around the area. They are level 83 - 84.
.' Use your Tame Beast ability on a _Ferndweller Wasp_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 37743
step
goto Zul'Gurub,32.0,47.4
.' Search for a Florawing Needlers around the area. They are level 84 - 85.
.' Use your Tame Beast ability on a _Florawing Needler_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 37743
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Green Wasp",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 482
step
goto Feralas,75.6,62.8
.' Search for Zukk'ash Wasps around the area. They are level 38 - 39.
.' Use your Tame Beast ability on a _Zukk'ash Wasp_. |cast Tame Beast##1515
|modeldisplay 482
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Orange Wasp",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 37859
step
goto Zul'Gurub 32.8,49.2
.' Search for Florawing Needlers around the area. they are level 84 - 85.
.' Use your Tame Beast ability on a _Florawing Needler_. |cast Tame Beast##1515
|modeldisplay 37859
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Purple Wasp",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 37860
step
goto Zul'Gurub 32.8,49.2
.' Search for Florawing Needlers around the area. They are level 84 - 85.
.' Use your Tame Beast ability on a _Florawing Needler_. |cast Tame Beast##1515
|modeldisplay 37860
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Red Wasp",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 92
step
goto Feralas,78.8,64.6
.' Search for Zukk'ash Stingers around the area. They are level 38 - 39.
.' Use your Tame Beast ability on a _Zukk'ash Stinger_. |cast Tame Beast##1515
|modeldisplay 92
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Tan Wasp",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 36034
step
goto Thousand Needles,70.4,86.4
.' Search for Silithid Wasps around the area. They are level 40 - 41.
.' Use your Tame Beast ability on a _Silithid Wasp_. |cast Tame Beast##1515
|modeldisplay 36034
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Yellow Wasp",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 11090
step
goto Un'Goro Crater,53.4,76.8
.' Search for Gorishi Wasps around the area. They are level 51 - 52.
.' Use your Tame Beast ability on a _Gorishi Wasp_. |cast Tame Beast##1515
|modeldisplay 11090
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Purple Flame Fly",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 19252
step
goto Zangarmarsh,25.8,33.2
.' Search for a Marshlight Bleeder around the area. They are level 62 - 63.
.' Use your Tame Beast ability on a _Marshlight Bleeder_. |cast Tame Beast##1515
|modeldisplay 19252
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Red Flame Fly",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 18724
step
goto Zangarmarsh,49.8,59.6
.' Search for Blacksting around the area. It is level 62.
.' Use your Tame Beast ability on _Blacksting_. |cast Tame Beast##1515
|modeldisplay 18724
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Yellow Flame Fly",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 18723
step
goto Zangarmarsh,39.6,34.2
.' Search for a Bogflare Needler around the area. They are level 62.
.' Use your Tame Beast ability on a _Bogflare Needler_. |cast Tame Beast##1515
|modeldisplay 18723
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Wolves\\Black Wolf",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
class HUNTER
model 780
step
label "start"
goto Redridge Mountains,48.8,37.4
.' Search for Blackrock Battle Worg in the area. They are level 16.
.' Use your Tame Beast ability on a _Blackrock Battle Worg_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 780
step
goto The Hinterlands,58.6,64.8
.' Search for Vilebranch Raiding Wolves around the area. They are level 32 - 33.
.' Use your Tame Beast ability on a _Vilebranch Raiding Wolf_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 780
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Wolves\\Diseased Wolf",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
class HUNTER
model 4124
step
label "start"
goto Silverpine Forest,43.0,19.8
.' Search for Rabid Worgs around the area. They are level 11.
.' Use your Tame Beast ability on a _Rabid Worg_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 4124
step
goto Felwood,53.2,83.0
.' Search for Felpaw Wolves around the area. They are level 44 - 45.
.' Use your Tame Beast ability on a _Felpaw Wolf_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 4124
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Wolves\\Gray Wolf",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
class HUNTER
model 18156
step
label "start"
goto Elwynn Forest,61.0,64.6
.' Search for Gray Forest Wolves around the area. They are level 7 - 8.
.' Use your Tame Beast ability on a _Gray Forest Wolf_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 18156
step
goto Feralas,57.8,47.6
.' Search for Longtooth Runners around the area. They are level 36.
.' Use your Tame Beast ability on a _Longtooth Runner_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 18156
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Wolves\\Tan Wolf",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
class HUNTER
model 1100
step
label "start"
goto Westfall,51.6,23.6
.' Search for a Coyote around the area. They are level 10 - 11.
.' Use your Tame Beast ability on a _Coyote_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 1100
step
goto Badlands,70.8,29.8
.' Search for Feral Crag Coyotes around the area. They are level 44 - 45.
.' Use your Tame Beast ability on a _Feral Crag Coyote_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 1100
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Wolves\\White Wolf",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
class HUNTER
model 11416
step
label "start"
goto Dun Morogh,45.2,39.8
.' Search for Winter Wolves around the area. They are level 4 - 5.
.' Use your Tame Beast ability on a _Winter Wolf_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 11416
step
goto Ashenvale,27.6,28.2
.' Search for Ghostpaw Runners around the area. They are level 19 - 20.
.' Use your Tame Beast ability on a _Ghostpaw Runner_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 11416
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Wolves\\Bicolor Worg",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
class HUNTER
model 18063
step
goto Terokkar Forest,66.6,35.0
.' Search for Ironjaw around the area. It is level 63 - 64.
.' Use your Tame Beast ability on _Ironjaw_. |cast Tame Beast##1515
'|modeldisplay 18063
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Wolves\\Black Worg",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
class HUNTER
model 741
step
label "start"
goto Silverpine Forest,60.6,16.0
.' Search for Worgs around the area. It is level 9 - 10.
.' Use your Tame Beast ability on a _Worg_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 741
step
goto Duskwood,27.6,67.2
.' Search for Black Ravagers around the area. They are level 22 - 23.
.' Use your Tame Beast ability on a _Black Ravager_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 741
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Wolves\\Brown Worg",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
class HUNTER
model 37576
step
goto Hellfire Peninsula,68.6,73.6
.' Search for Ripp around the area. They are level 58 - 59.
.' Use your Tame Beast ability on _Ripp_. |cast Tame Beast##1515
'|modeldisplay 37576
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Wolves\\Ghost Worg",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
class HUNTER
model 34508
step
goto Eastern Plaguelands,40.0,83.6
.' Search for The Lone Hunter around the area. They are level 41.
.' Use your Tame Beast ability on _The Lone Hunter_. |cast Tame Beast##1515
'|modeldisplay 34508
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Wolves\\Gray Worg",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
class HUNTER
model 11415
step
label "start"
goto Elwynn Forest,79.8,60.6
.' Search for Prowlers around the area. They are level 9 - 10.
.' Use your Tame Beast ability on a _Prowler_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 11415
step
goto The Hinterlands,72.0,57.2
.' Search for Silvermane Stalkers around the area. They are level 31 - 32.
.' Use your Tame Beast ability on a _Silvermane Stalker_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 11415
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Wolves\\Red Worg",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
class HUNTER
model 9372
step
label "start"
goto Burning Steppes,19.0,54.6
.' Search for Ember Worgs around the area. They are level 49 - 50.
.' Use your Tame Beast ability on a _Ember Worg_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 9372
step
goto Blade's Edge Mountains,52.8,67.0
.' Search for Thunderlord Dire Wolves around the area. They are level 65 - 66.
.' Use your Tame Beast ability on a _Thunderlord Dire Wolf_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 9372
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Wolves\\White Worg",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
class HUNTER
model 10278
step
goto Mulgore,44.6,16.8
.' Search for Ghost Howl around the area. They are level 8.
.' Use your Tame Beast ability on _Ghost Howl_. |cast Tame Beast##1515
'|modeldisplay 10278
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Wolves\\Black Saber Worg",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
class HUNTER
model 40147
step
label "start"
goto Elwynn Forest,47.6,40.6
.' Serch for Blackrock Battle Worgs around the area. They are level 1.
.' Use your Tame Beast ability on a _Blackrock Battle Worg_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 40147
step
goto Howling Fjord,56.8,53.6
.' Search for Bloodthirsty Worgs around the area. They are level 68 -69.
.' Use your Tame Beast ability on a _Bloodthirsty Worg_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 40147
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Wolves\\Brown Saber Worg",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
class HUNTER
model 22502
step
goto Howling Fjord,28.8,22.8
.' Search for Bjomolf around this area. He is level 72.
.' Use your Tame Beast ability on _Bjomolf_. |cast Tame Beast##1515
'|modeldisplay 22502
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Wolves\\Gray Saber Worg",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
class HUNTER
model 22044
step
label "start"
goto Howling Fjord,59.0,59.8
.' Search for Dragonflayer Worg around the area. They are level 67.
.' Use your Tame Beast ability on a _Dragonflayer Worg_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 22044
step
goto Borean Tundra,49.2,48.2
.' Search for Tundra Wolves around the area. They are level 68.
.' Use your Tame Beast ability on a _Tundra Wolf_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 22044
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Wolves\\White Saber Worg",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
class HUNTER
model 22089
step
label "start"
goto Howling Fjord,45.6,30.2
.' Serch for Winterskorn Worgs around the area. They are level 68 - 69.
.' Use your Tame Beast ability on a _Winterskorn Worg_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 22089
step
goto The Storm Peaks,56.6,65.2
.' Search for Frostworgs around the area. They are level 79 - 80.
.' Use your Tame Beast ability on a _Frostworg_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 22089
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Wolves\\Black Armored Worg",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
class HUNTER
model 14334
step
label "start"
goto Hellfire Ramparts,47.8,51.4
.' Search for Shattered Hand Warhounds around the area. There will be more deeper in. They are level 55 - 69.
.' Use your Tame Beast ability on a _Shattered Hand Warhound_. |cast Tame Beast##1515
'|modeldisplay 14334
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Bears\\Black Bear",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 23992
step
label "start"
goto Loch Modan,28.8,51.6
.' Search for Black Bears around the area. They are level 11 - 12.
.' Use your Tame Beast ability on a _Black Bear_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 23992
step
goto Hillsbrad Foothills,59.6,68.6
.' Search for Vicious Black Bear around the area. They are level 23 - 24.
.' Use your Tame Beast ability on a _Vicious Black Bear_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 23992
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Bears\\Brown Bear",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 1006
step
label "start"
goto Elwynn Forest,44.6,78.0
.' Search for Young Forest Bears around the area. They are level 8 - 9.
.' Use your Tame Beast ability on a _Young Forest Bear_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 1006
step
goto Darkshore,54.6,28.8
.' Search for Corrupted Thistle Bears around the area. They are level 10 - 11.
.' Use your Tame Beast ability on a _Corrupted Thistle Bear_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 1006
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Bears\\Dark Brown Bear",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 1990
step
goto Ashenvale,45.8,51.8
.' Search for Ashenvale Bears around the area. They are level 19 - 20.
.' Use your Tame Beast ability on a _Ashenvale Bear_. |cast Tame Beast##1515
'|modeldisplay 1990
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Bears\\Gray Bear",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 8840
step
label "start"
goto Dun Morogh,69.2,56.2
.' Search for Ice Claw Bears around the area. They are level 7 - 8.
.' Use your Tame Beast ability on a _Ice Claw Bears_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 8840
step
goto Hillsbrad Foothills,33.6,63.6
.' Search for Elder Gray Bears around the area. They are level 19 - 20.
.' Use your Tame Beast ability on a _Elder Gray Bear_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 8840
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Bears\\White Bear",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 913
step
label "start"
goto Dun Morogh,87.6,50.0
.' Search for Mangeclaw around the area. It is level 11.
.' Use your Tame Beast ability on _Mangeclaw_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 913
step
goto Winterspring,29.2,59.0
.' Search for Shardtooth Bears around the area. It is level 49 - 50.
.' You can find more around [53.2,30.4].
.' Use your Tame Beast ability on a _Shardtooth Bear_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 913
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Bears\\Black Diseased Bear",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 1082
step
label "start"
goto Silverpine Forest,43.0,19.8
.' Search for Giant Rabid Bears around the area. They are level 11 - 12.
.' Use your Tame Beast ability on a _Giant Rabid Bear_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 1082
step
goto Western Plaguelands,34.8,66.8
.' Search for Diseased Black Bears around the area. They are level 35 - 36.
.' Use your Tame Beast ability on a _Diseased Black Bear_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 1082
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Bears\\Dark Brown Diseased Bear",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 37737
step
label "start"
goto Tirisfal Glades,72.0,57.2
.' Search for Plagued Bruins around the area. They are level 8 - 9.
.' Use your Tame Beast ability on a _Plagued Bruin_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 37737
step
goto Darkshore,4.4,79.6
.' Search for Consumed Thistle Bear around the area. They are level 18 - 19.
.' Use your Tame Beast ability on a _Consumed Thistle Bear_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 37737
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Bears\\Gray Diseased Bear",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 31588
step
label "start"
goto Hillsbrad Foothills,32.8,69.6
.' Search for Infested Bears around the area. They are level 19 - 20.
.' Use your Tame Beast ability on a _Infested Bear_. |cast Tame Beast##1515
'|modeldisplay 31588
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Bears\\White Diseased Bear",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 23966
step
label "start"
goto Dragonblight,29.8,49.6
.' Search for Rabid Grizzlys around the area. They are level 71 - 72.
.' Use your Tame Beast ability on a _Rabid Grizzly_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 23966
step
goto Silverpine Forest,37.4,7.8
.' Search for Tirisfal Bears around the area. They are level 80 - 84.
.' Use your Tame Beast ability on a _Tirisfal Bear_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 23966
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Beetles\\Black Beetle",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 7470
step
goto Zul'Farrak,57.6,58.0
.' Search for Scarabs on the ground. They are level 46 - 47.
.' You will be able to find more around [55.0,25.0].
.' Use your Tame Beast ability on a _Scarab_. |cast Tame Beast##1515
'|modeldisplay 7470
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Beetles\\Blue Beetle",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 11093
step
label "start"
goto Tanaris,55.4,66.6
.' Search for Hazzali Swarmers around the area. They are level 46 - 47.
.' Use your Tame Beast ability on a _Hazzali Swarmer_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 11093
step
goto Silithus,54.4,25.4
.' Search for Hive'Ashi Workers around the area. They are level 55 - 56.
.' Use your Tame Beast ability on a _Hive'Ashi Worker_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 11093
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Beetles\\Brown Beetle",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 11144
step
goto Thousand Needles,65.4,86.6
.' Search for Silithid Defender around the area. They are level 40 - 41.
.' Use your Tame Beast ability on a _Silithid Defender_. |cast Tame Beast##1515
'|modeldisplay 11144
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Beetles\\Purple Beetle",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 11108
step
goto Tanaris,33.0,45.4
.' Search for Centipaar Tunneler around the area. They are level 47 - 48.
.' Use your Tame Beast ability on a _Centipaar Tunneler_. |cast Tame Beast##1515
'|modeldisplay 11108
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Beetles\\Red Beetle",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 10031
step
goto Eastern Plaguelands,8.4,29.4
.' Search for Crypt Horrors and Nerubian Sycophants around the area.
.' As you fight them they spawn Carrion Scarabs. They are level 39 - 40.
.' Use your Tame Beast ability on a _Carrion Scarab_. |cast Tame Beast##1515
'|modeldisplay 10031
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Beetles\\Yellow Beetle",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 11089
step
goto Un'Goro Crater,49.6,82.6
.' Search for Gorishi Tunnelers around the area. They are level 52 - 53.
.' Use your Tame Beast ability on a _Gorishi Tunneler_. |cast Tame Beast##1515
'|modeldisplay 11089
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Beetles\\Blue-Green Scarab",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 34911
step
goto Uldum,65.6,28.0
.' Search for Sapphire Scarab around the area. They are level 83.
.' Use your Tame Beast ability on a _Sapphire Scarab_. |cast Tame Beast##1515
'|modeldisplay 34911
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Beetles\\Brown Scarab",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 37580
step
goto Uldum,65.2,32.6
.' Search for Temple Scarabs around the area. They are level 83 - 84.
.' Use your Tame Beast ability on a _Temple Scarab_. |cast Tame Beast##1515
'|modeldisplay 37580
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Beetles\\Dark Blue Scarab",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 34908
step
goto Uldum,64.2,27.2
.' Search for Amethyst Scarabs around the area. They are level 83.
.' Use your Tame Beast ability on a _Amethyst Scarab_. |cast Tame Beast##1515
'|modeldisplay 34908
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Beetles\\Green and Red Scarab",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 34912
step
goto Uldum,65.6,32.6
.' Search for Emerald Scarab around the area. They are level 83.
.' Use your Tame Beast ability on a _Emerald Scarab_. |cast Tame Beast##1515
'|modeldisplay 34912
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Beetles\\Turquoise Scarab",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 34913
step
goto Uldum,63.2,31.4
.' Search for Turquoise Scarabs around the area. They are level 83.
.' Use your Tame Beast ability on a _Turquoise Scarab_. |cast Tame Beast##1515
'|modeldisplay 34913
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Boars\\Black Boar",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 607
step
label "start"
goto Dun Morogh,54.6,42.0
.' Search for Crag Boars around the area. They are level 1 - 6.
.' Use your Tame Beast ability on a _Crag Boar_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 607
step
goto Durotar,54.8,33.4
.' Search for Dire Mottled Boar around the area. They are level 6 - 7.
.' Use your Tame Beast ability on a _Dire Mottled Boar_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 607
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Boars\\Brown Boar",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 703
step
label "start"
goto Loch Modan,55.6,37.8
.' Search for Mudbelly Boar around the area. They are level 16.
.' Use your Tame Beast ability on a _Mudbelly Boar_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 703
step
goto Redridge Mountains,17.4,45.6
.' Search for Bellygrub around the area. They are level 16.
.' Use your Tame Beast ability on _Bellygrub_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 703
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Boars\\Gray Boar",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 503
step
label "start"
goto Elwynn Forest,42.8,86.6
.' Search for Stonetusk Boar around the area. They are level 4 - 6.
.' Use your Tame Beast ability on a _Stonetusk Boar_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 503
step
goto Durotar,43.8,15.8
.' Search for Elder Mottled Boar around the area. They are level 5 - 9.
.' Use your Tame Beast ability on a _Elder Mottled Boar_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 503
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Boars\\Red Boar",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 30964
step
label "start"
goto Durotar,65.4,80.2
.' Search for a Docile Island Boars around the area. They are level 2.
.' Use your Tame Beast ability on a _Docile Island Boar_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 30964
step
goto Teldrassil,59.0,34.2
.' Search for Thistle Boars around the area. They are level 2 - 3.
.' Use your Tame Beast ability on a _Thistle Boar_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 30964
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Boars\\Undead Boar",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 6121
step
goto Eastern Plaguelands,14.8,28.4
.' Search for Plagued Swine around the area. They are level 43 - 44.
.' Use your Tame Beast ability on a _Plagued Swine_. |cast Tame Beast##1515
'|modeldisplay 6121
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Boars\\Yellow Boar",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 8869
step
label "start"
goto Teldrassil,59.8,40.0
.' Search for Young Thistle Boar around the area. They are level 1 -2.
.' Use your Tame Beast ability on a _Young Thistle Boar_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 8869
step
label "location2"
goto Westfall,53.8,25.0
.' Search for Young Goretusk around the area. They are level 10 - 11.
.' Use your Tame Beast ability on a _Young Goretusk_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 8869
step
goto Mulgore,53.4,82.0
.' Search for Young Battleboar around the area. They are level 1 - 2.
.' Use your Tame Beast ability on a _Young Battleboar_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-location2" |confirm
'|modeldisplay 8869
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Boars\\Black Armored Boar",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 4714
step
goto Razorfen Kraul,58.2,59.0
.' Search for a Rotting Agam'ar around the area. They are level 34 elites.
.' Use your Tame Beast ability on a _Rotting Agam'ar_. |cast Tame Beast##1515
'|modeldisplay 4714
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Boars\\Brown Armored Boar",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 26685
step
label "start"
goto Razorfen Kraul,58.2,59.0
.' Search for Agam'ar around the area. They are level 32 -33 elites.
.' Use your Tame Beast ability on a _Agam'ar_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 26685
step
goto Mulgore,45.6,88.6
.' Search for Armored Battleboar around the area. They are level 3 - 4.
.' Use your Tame Beast ability on a _Armored Battleboar_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 26685
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Boars\\Ghost Armored Boar",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 4716
step
goto Razorfen Kraul,82.6,52
.' Search for Boar Spirits around the area. They are level 24 - 28.
.' Use your Tame Beast ability on a _Boar Spirit_. |cast Tame Beast##1515
'|modeldisplay 4716
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Boars\\Gray Armored Boar",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 2453
step
goto Razorfen Kraul,56.6,58.0
.' Search for Raging Agam'ar around the area. They are level 33 elite.
.' Use your Tame Beast ability on a _Raging Agam'ar_. |cast Tame Beast##1515
'|modeldisplay 2453
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Boars\\Black and Green Felboar",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 19249
step
goto Shadowmoon Valley,34.0,44.6
.' Search for Felboar around the area. They are level 67 - 68.
.' Use your Tame Beast ability on a _Felboar_. |cast Tame Beast##1515
'|modeldisplay 19249
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Boars\\Blue and White Felboar",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 20831
step
goto Blade's Edge Mountains,30.6,71.6
.' Search for Shard-Hide Boar around the area. They are level 70 - 71.
.' Use your Tame Beast ability on a _Shard-Hide Boar_. |cast Tame Beast##1515
'|modeldisplay 20831
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Boars\\Gray and Orange Felboar",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 18701
step
goto Hellfire Peninsula,48.8,63.8
.' Search for Deranged Helboars around the area. They are level 60 - 61.
.' Use your Tame Beast ability on a _Deranged Helboar_. |cast Tame Beast##1515
'|modeldisplay 18701
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Boars\\Red and Black Felboar",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 11410
step
goto Hellfire Peninsula,62.8,42.8
.' Search for Starving Helboar around the area. They are level 57 - 59.
.' Use your Tame Beast ability on a _Starving Helboar_. |cast Tame Beast##1515
'|modeldisplay 11410
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Boars\\Yellow and Black Felboar",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 24741
step
goto Shadowmoon Valley,53.4,17.8
.' Search for Domesticated Felboars around the area. They are level 65 - 66.
.' Use your Tame Beast ability on a _Domesticated Felboar_. |cast Tame Beast##1515
'|modeldisplay 24741
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\Blue Crab",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 979
step
label "start"
goto Westfall,31.8,22.2
.' Search for Sea Crawler around the area. They are level 11 -12.
.' Use your Tame Beast ability on a _Sea Crawler_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 979
step
goto Ashenvale,15.2,22.8
.' Search for Clattering Crawler around the area. They are level 19 - 20.
.' Use your Tame Beast ability on a _Clattering Crawler_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 979
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\Bronze Crab",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 28827
step
label "start"
goto Azuremyst Isle,22.8,73.2
.' Search for Barbed Crawler around the area. They are level 7 - 9.
.' Use your Tame Beast ability on a _Barbed Crawler_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 28827
step
label "location2"
goto Tanaris,53.4,34.6
.' Search for Desert Crawler around the area. They are level 45.
.' Use your Tame Beast ability on a _Desert Crawler_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 28827
step
goto Swamp of Sorrows,81.6,17.2
.' Search for Silt Crawlers around the area. They are level 51 - 52.
.' Use your Tame Beast ability on a _Silt Crawler_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-location2" |confirm
'|modeldisplay 28827
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\Red Crab",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 31269
step
label "start"
goto Durotar,59.6,23.8
.' Search for Mature Surf Crawlers around the area. They are level 7 - 8.
.' Use your Tame Beast ability on a _Mature Surf Crawler_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 31269
step
goto Wetlands,18.2,53.2
.' Search for Harbor Crawlers around the area. They are level 20 - 21.
.' Use your Tame Beast ability on a _Harbor Crawler_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 31269
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\White Crab",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 999
step
label "start"
goto Durotar,57.4,11.2
.' Search for Encrusted Surf Crawler around the area. They are level 9 - 10.
.' Use your Tame Beast ability on a _Encrusted Surf Crawler_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 999
step
goto Ashenvale,14.8,16.4
.' Search for Spined Crawler around the area. They are level 20 - 21.
.' Use your Tame Beast ability on a _Spined Crawler_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 999
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\Black Spiked Crab",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 32143
step
goto Dustwallow Marsh,68.4,45.6
.' Search for Spiny Rock Crab around the area. They are level 35 - 36.
.' Use your Tame Beast ability on a _Spiny Rock Crab_. |cast Tame Beast##1515
'|modeldisplay 32143
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\Green Spiked Crab",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 32023
step
goto Blasted Lands,71.0,75.0
.' Search for Felscale Crawlers around the area. They are level 58.
.' Use your Tame Beast ability on a _Felscale Crawler_. |cast Tame Beast##1515
'|modeldisplay 32023
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\Green and Blue Spiked Crab",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 32112
step
goto Shimmering Expanse,42.6,35.0
.' Search for Enormous Sand Crabs around the area. They are level 80.
.' Use your Tame Beast ability on a _Enormous Sand Crab_. |cast Tame Beast##1515
'|modeldisplay 32112
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\Orange Spiked Crab",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 32025
step
goto Shimmering Expanse,54.2,83.6
.' Search for Silversand Burrowers around the area. They are level 80.
.' Use your Tame Beast ability on a _Silversand Burrower_. |cast Tame Beast##1515
'|modeldisplay 32025
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\Red Spiked Crab",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 32075
step
goto Shimmering Expanse,46.8,52.6
.' Search for Spineshell Pincers around the area. They are level 80.
.' Use your Tame Beast ability on a _Spineshell Pincer_. |cast Tame Beast##1515
'|modeldisplay 32075
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crocolisks\\Green Crocolisk",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 1035
step
label "start"
goto Durotar,40.2,33.6
.' Search for Dreadmaw Toothgnashers around the area. They are level 8 - 9.
.' Use your Tame Beast ability on a _Dreadmaw Toothgnasher_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 1035
step
goto Wetlands,27.6,32.6
.' Search for Wetlands Crocolisk around the area. They are level 22 - 23.
.' Use your Tame Beast ability on a _Wetlands Crocolisk_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 1035
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crocolisks\\Gray Crocolisk",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 1250
step
label "start"
goto Durotar,37.0,20.8
.' Search for Dreadmaw Crocolisk around the area. They are level 10.
.' Use your Tame Beast ability on a _Dreadmaw Crocolisk_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 1250
step
goto Northern Stranglethorn,43.8,18.6
.' Search for River Crocolisks around the area. They are level 25 - 26.
.' Use your Tame Beast ability on a _River Crocolisk_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 1250
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crocolisks\\White Crocolisk",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 2996
step
label "start"
goto Wetlands,31.0,22.6
.' Search for Horrorjaw around the area. It is level 22 - 23.
.' Use your Tame Beast ability on a _Horrorjaw_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 2996
step
goto Netherstorm,46.6,51.6
.' Search for Barbscale Crocolisks around the area. They are level 68 - 69.
.' Use your Tame Beast ability on a _Barbscale Crocolisk_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 2996
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crocolisks\\Yellow Crocolisk",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 1080
step
label "start"
goto Loch Modan,51.8,63.6
.' Search for Loch Crocolisk around the area. They are level 14 - 15.
.' Use your Tame Beast ability on a _Loch Crocolisk_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 1080
step
goto Dustwallow Marsh,41.0,37.2
.' Search for Drywallow Snapper around the area. They are level 35 = 36.
.' Use your Tame Beast ability on a _Drywallow Snapper_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 1080
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crocolisks\\Blue Spiked Crocolisk",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 37613
step
label "start"
goto Tol Barad,39.4,42.6
.' Search for Baradin Crocolisks around the area. They are level 83 - 85.
.' Use your Tame Beast ability on a _Baradin Crocolisk_. |cast Tame Beast##1515
'|modeldisplay 37613
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crocolisks\\Brown Spiked Crocolisk",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 32812
step
label "start"
goto Uldum,57.6,50.6
.' Search for Riverbed Crocolisks around the area. They are level 80 - 83.
.' Use your Tame Beast ability on a _Riverbed Crocolisk_. |cast Tame Beast##1515
'|modeldisplay 32812
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crocolisks\\White Spiked Crocolisk",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 37748
step
label "start"
goto Uldum,63.6,79.2
.' Search for Neferset Crocolisks around the area. They are level 82 - 83.
.' Use your Tame Beast ability on a _Neferset Crocolisk_. |cast Tame Beast##1515
'|modeldisplay 37748
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Gorillas\\Black Gorilla",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 839
step
label "start"
goto The Cape of Stranglethorn,62.6,77.6
.' Search for Skymane Gorillas around the area. They are level 32.
.' Use your Tame Beast ability on a _Skymane Gorilla_. |cast Tame Beast##1515
'|modeldisplay 839
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Gorillas\\Dark Gray Gorilla",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 844
step
label "start"
goto The Cape of Stranglethorn,56.2,52.6
.' Search for Silverback Patriarchs around the area. They are level 32 - 33.
.' Use your Tame Beast ability on a _Silverback Patriarch_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 844
step
goto Un'Goro Crater,62.4,19.6
.' Search for Un'Goro Gorillas around the area. They are level 52 - 53.
.' Use your Tame Beast ability on a _Un'Goro Gorilla_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 844
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Gorillas\\Gray Gorilla",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 838
step
label "start"
goto Un'Goro Crater,52.6,56.6
.' Search for Elder Mistvale Gorilla around the area. They are level 31 - 32.
.' Use your Tame Beast ability on a _Elder Mistvale Gorilla_. |cast Tame Beast##1515
'|modeldisplay 838
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Gorillas\\Red Gorilla",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 3188
step
label "start"
goto Feralas,72.8,49.4
.' Search for Groddoc Apes around the area. They are level 36 - 37.
.' Use your Tame Beast ability on a _Groddoc Ape_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 3188
step
goto Un'Goro Crater,68.6,13.6
.' Search for U'cha around the area. They are level 53.
.' Use your Tame Beast ability on a _U'cha_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 3188
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Beast Pets\\Rhinos\\Blue Rhino",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 26265
step
label "start"
goto Sholazar Basin,39.4,53.6
.' Search for Shardhorn Rhinos around the area. They are level 75 - 76.
.' Use your Tame Beast ability on a _Shardhorn Rhino_. |cast Tame Beast##1515
'|modeldisplay 26265
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Beast Pets\\Rhinos\\Brown Rhino",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 26296
step
label "start"
goto Borean Tundra,45.0,43.2
.' Search for Wooly Rhino Calf around the area. They are level 67.
.' Use your Tame Beast ability on a _Wooly Rhino Calf_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 26296
step
goto Borean Tundra,45.6,46.0
.' Search for Wooly Rhino Matriarchs around the area. They are level 68.
.' Use your Tame Beast ability on a _Wooly Rhino Matriarch_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 26296
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Beast Pets\\Rhinos\\Gray Rhino",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 26268
step
label "start"
goto Borean Tundra,46.6,44.6
.' Search for Wooly Rhino Bulls around the area. They are level 69.
.' Use your Tame Beast ability on a _Wooly Rhino Bull_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 26268
step
goto Sholazar Basin,48.0,44.6
.' Search for Farunn around the area. It is level 76.
.' Use your Tame Beast ability on a _Farunn_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 26268
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Beast Pets\\Rhinos\\White Rhino",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 26286
step
label "start"
goto The Storm Peaks,46.6,60.8
.' Search for Ice Steppe Rhinos around the area. They are level 78 - 79.
.' Use your Tame Beast ability on a _Ice Steppe Rhino_. |cast Tame Beast##1515
'|modeldisplay 26286
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Scorpids\\Black Scorpid",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 6068
step
label "start"
goto Tanaris 54.6,54.0
.' Search for Duneclaw Stalkers around the area. They are level 46 - 47.
.' Use your Tame Beast ability on a _Duneclaw Stalker_. |cast Tame Beast##1515
'|modeldisplay 6068
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Scorpids\\Bronze Scorpid",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 2487
step
label "start"
goto Durotar,40.2,41.6
.' Search for Armored Scorpid around the area. They are level 7 - 8.
.' Use your Tame Beast ability on a _Armored Scorpid_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 2487
step
goto Durotar,42.0,19.6
.' Search for Venomtail Scorpid around the area. They are level 9.
.' Use your Tame Beast ability on a _Venomtail Scorpid_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 2487
step
goto Burning Steppes,10.6,55.4
.' Search for Venomtip Scorpids around the area. They are level 49 - 50.
.' Use your Tame Beast ability on a _Venomtip Scorpid_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-location2" |confirm
'|modeldisplay 2487
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Scorpids\\Brown Scorpid",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 2485
step
label "start"
goto Durotar,42.0,64.8
.' Search for Scorpid Workers around the area. They are level 3.
.' Use your Tame Beast ability on a _Scorpid Worker_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 2485
step
goto Durotar,52.4,75.0
.' Search for Clattering Scorpids around the area. They are level 6.
.' Use your Tame Beast ability on a _Clattering Scorpid_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 2485
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Scorpids\\Green Scorpid",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 2730
step
goto Thousand Needles,65.4,74.2
.' Search for Scorpid Cliffcrawlers around the area. They are level 40 - 41.
.' Use your Tame Beast ability on a _Scorpid Cliffcrawler_. |cast Tame Beast##1515
'|modeldisplay 2730
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Scorpids\\Gray Scorpid",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 33995
step
goto Tanaris,40.4,65.6
.' Search for Duneclaw Broodlord around the area. They are level 47 - 48.
.' Use your Tame Beast ability on a _Duneclaw Broodlord_. |cast Tame Beast##1515
'|modeldisplay 33995
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Scorpids\\Pink Scorpid",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 10987
step
label "start"
goto Tanaris,43.0,26.6
.' Search for Duneclaw Lasher around the area. They are level 44 - 45.
.' Use your Tame Beast ability on a _Duneclaw Lasher_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 10987
step
goto Terokkar Forest,32.4,56.4
.' Search for Scorpid Bonecrawler around the area. They are level 64 - 65.
.' Use your Tame Beast ability on a _Scorpid Bonecrawler_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 10987
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Scorpids\\Red Scorpid",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 5985
step
goto Tanaris,52.8,41.0
.' Search for Duneclaw Burrowers around the area. They are level 44 - 45.
.' Use your Tame Beast ability on a _Duneclaw Burrower_. |cast Tame Beast##1515
'|modeldisplay 5985
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Scorpids\\White Scorpid",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 10988
step
goto Silithus,42.6,63.8
.' Search for Stonelash Flayer around the area. They are level 54 - 55.
.' Use your Tame Beast ability on a _Stonelash Flayer_. |cast Tame Beast##1515
'|modeldisplay 10988
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Scorpids\\Yellow Scorpid",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 2729
step
label "start"
goto Desolace,62.2,27.4
.' Search for Scorpashi Snappers around the area. They are level 30 - 31.
.' Use your Tame Beast ability on a _Scorpashi Snapper_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 2729
step
goto Tanaris,42.8,30.0
.' Search for Duneclaw Matriarchs around the area. They are level 45.
.' Use your Tame Beast ability on a _Duneclaw Matrarch_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 2729
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Shale Crawler Pets\\Spiders\\Orange Shale Spider",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 36634
step
label "start"
goto Deepholm,61.8,26.6
.' Search for Deep Spiders around the area. They are level 83 and underground..
.' Use your Tame Beast ability on a _Deep Spider_. |cast Tame Beast##1515
'|modeldisplay 36634
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Shale Crawler Pets\\Spiders\\Purple Shale Spider",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 35152
step
label "start"
goto Deepholm,64.8,19.0
.' Search for 83 around the area. They are level 83.
.' Use your Tame Beast ability on a _Deep Spider_. |cast Tame Beast##1515
'|modeldisplay 35152
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Shale Crawler Pets\\Spiders\\Red Shale Spider",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 33863
step
label "start"
goto Deepholm,72.6,41.6
.' Search for Crimson Shale Spiders around the area. They are level 83.
.' Use your Tame Beast ability on a _Crimson Shale Spider_. |cast Tame Beast##1515
'|modeldisplay 33863
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Turtles\\Blue Turtle",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 6368
step
label "start"
goto Northern Barrens,41.8,74.8
.' Search for Oasis Snapjaws around the area. They are level 14 - 15.
.' There are more around [56.6,81.6].
.' Use your Tame Beast ability on a _Oasis Snapjaw_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 6368
step
goto The Hinterlands,79.6,70.2
.' Search for Gammerita around the area. It is level 31.
.' Use your Tame Beast ability on a _Gammerita_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 6368
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Turtles\\Green Turtle",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 28819
step
goto Eversong Woods,65.6,76.8
.' Search for Lake Snappers around the area. They are level 7 - 8.
.' Use your Tame Beast ability on a _Lake Snapper_. |cast Tame Beast##1515
'|modeldisplay 28819
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Turtles\\Gray Turtle",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 37770
step
label "start"
goto Dustwallow Marsh 65.6,38.8
.' Search for Mudrock Spikeshell around the area. They are level 35 - 36.
.' Use your Tame Beast ability on a _Mudrock Spikeshell_. |cast Tame Beast##1515
'|modeldisplay 37770
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Turtles\\Orange Turtle",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 5026
step
label "start"
goto The Hinterlands,78.0,65.6
.' Search for Saltwater Snapjaws around the area. They are level 30 - 31.
.' Use your Tame Beast ability on a _Saltwater Snapjaw_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 5026
step
goto Swamp of Sorrows,75.6,72.4
.' Search for Sorrowmurk Snapjaws around the area. They are level 50.
.' Use your Tame Beast ability on a _Sorrowmurk Snapjaw_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 5026
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Turtles\\White Turtle",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 28820
step
label "start"
goto Ghostlands,62.8,57.6
.' Search for Plagued Snappers around the area. They are level 12 - 13.
.' Use your Tame Beast ability on a _Plagued Snapper_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 28820
step
label "location2"
goto Thousand Needles,65.2,51.8
.' Search for Stranded Sparkleshells around the area. They are level 43 - 44.
.' Use your Tame Beast ability on a _Stranded Sparkshell_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 28820
step
goto Borean Tundra,32.4,54.6
.' Search for Sand Turtles around the area. They are level 70.
.' Use your Tame Beast ability on a _Sand Turtle_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-location2" |confirm
'|modeldisplay 28820
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Turtles\\Green Ancient Turtle",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 37143
step
goto Blackfathom Deeps 33.3,58.7
.' Search for Ghamoo-ra around the area. It is a level 24 elite.
.' Use your Tame Beast ability on _Ghamoo-Ra_. |cast Tame Beast##1515
'|modeldisplay 37143
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mystical Pets\\Warp Stalkers\\Blue Warp Stalker",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 19369
step
goto Abyssal Depths,41.2,41.4
.' Search for Chasm Stalker around the area. They are level 82.
.' Use your Tame Beast ability on a _Chasm Stalker_. |cast Tame Beast##1515
'|modeldisplay 19369
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mystical Pets\\Warp Stalkers\\Blue Green Warp Stalker",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 19979
step
goto Netherstorm,62.4,60.0
.' Search for Warp Chasers around the area. They are level 67 - 68.
.' Use your Tame Beast ability on a _Warp Chaser_. |cast Tame Beast##1515
'|modeldisplay 19979
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mystical Pets\\Warp Stalkers\\Green Warp Stalker",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 29740
step
goto Winterspring,53.2,63.6
.' Search for Displaced Warp Stalkers around the area (Inside the cave). They are level 54 - 55.
.' Use your Tame Beast ability on a _Displaced Warp Stalker_. |cast Tame Beast##1515
'|modeldisplay 29740
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mystical Pets\\Warp Stalkers\\Red Warp Stalker",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 20901
step
goto Blade's Edge Mountains,54.6,14.6
.' Search for Daggertail Lizards around the area. They are level 71 - 73.
.' There are more around [71.0,11.6].
.' Use your Tame Beast ability on a _Daggertail Lizard_. |cast Tame Beast##1515
'|modeldisplay 20901
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Mystical Pets\\Warp Stalkers\\White Warp Stalker",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 20025
step
label "start"
goto Terokkar Forest,57.2,42.6
.' Search for Warp Stalkers around the area. They are level 63 - 64.
.' Use your Tame Beast ability on a _Warp Stalker_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 20025
step
label "location2"
goto Terokkar Forest,20.0,72.8
.' Search for Warp Hunters around the area. They are level 64 - 65.
.' Use your Tame Beast ability on a _Warp Hunter_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 20025
step
goto Terokkar Forest,62.4,84.6
.' Search for Blackwind Warp Chasers around the area. They are level 69 - 70.
.' Use your Tame Beast ability on a _Blackwind Warp Chaser_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-location2" |confirm
'|modeldisplay 20025
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Worms\\Blue Worm",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 12333
step
goto Maraudon,45.2,88.4
.' Search for Deep Borers around the area. They are level 37 - 38.
.' Use your Tame Beast ability on a _Deep Borer_. |cast Tame Beast##1515
'|modeldisplay 12333
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Worms\\Brown Worm",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 11010
step
label "start"
goto Ragefire Chasm,65.4,16.6
.' Search for Earthborers around the area. They are level 13 - 14 elites.
.' Use your Tame Beast ability on an _Earthborer_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 11010
step
goto Blade's Edge Mountains,49.2,44.0
.' Search for Young Crust Bursters around the area. They are level 66 - 67.
.' Use your Tame Beast ability on a _Young Crust Burster_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 11010
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Worms\\Green Worm",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 12335
step
goto Maraudon,39.6,57.4
.' Search for Rock Borers around the area. They are level 33 - 34.
.' Use your Tame Beast ability on a _Rock Borer_. |cast Tame Beast##151
'|modeldisplay 12335
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Worms\\Gray Worm",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 14524
step
label "start"
goto Silithus,48.6,49.6
.' Search for Dredge Crushers around the area. They are level 54 - 55.
.' Use your Tame Beast ability on a _Dredge Crusher_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 14524
step
goto Silithus,47.0,34.6
.' Search for Dredge Strikers around the area. They are level 54 - 55.
.' Use your Tame Beast ability on a _Dredge Striker_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 14524
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Worms\\Pink Worm",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 37540
step
goto Winterspring,48.4,40.8
.' Search for Coldlurk Burrowers around the area. They are level 51 - 52.
.' Use your Tame Beast ability on a _Coldlurk Burrower_. |cast Tame Beast##1515
'|modeldisplay 37540
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Worms\\White Worm",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 34636
step
goto Duskwood,18.2,34.6
.' Kill Undead in the area. They Spawn Flesh Eating Worms upon death. The Flesh Eating Worms are level 23.
.' Use your Tame Beast ability on a _Flesh Eating Worm_. |cast Tame Beast##1515
'|modeldisplay 34636
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Worms\\Black Jormungar",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 37554
step
goto Dragonblight,50.6,17.8
.' Search for Rattlebore around the area. They are level 74.
.' Use your Tame Beast ability on _Rattlebore_. |cast Tame Beast##1515
'|modeldisplay 37554
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Worms\\Blue Jormungar",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 37550
step
goto The Storm Peaks 55.6,61.8
.' Search for Ravenous Jormungar around the area. They are level 79 - 80.
.' Use your Tame Beast ability on _Ravenous Jormungar_. |cast Tame Beast##1515
'|modeldisplay 37550
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Worms\\Ghost Jormungar",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 27014
step
goto The Storm Peaks,55.8,63.8
.' You will need to be _Revered_ with the _Sons of Hodir_ and have the _Feeding Arngrim_ daily quest in order to tame this.
.' Search for Ravenous Jormungars around the area. When they are near death, use _Arngrim's Tooth_. |use Arngrim's Tooth##42774
.' Use your Tame Beast ability on a _Disembodied Jormungar_. |cast Tame Beast##1515
'|modeldisplay 27014
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Worms\\Green Jormungar",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 37553
step
goto Dragonblight,60.0,15.8
.' Search for Ice Heart Jormungar Feeders around the area. They are level 72.
.' Use your Tame Beast ability on a _Ice Heart Jormungar Feeder_. |cast Tame Beast##1515
'|modeldisplay 37553
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Worms\\Purple Jormungar",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 24564
step
label "start"
goto Borean Tundra,79.8,24.8
.' Search for Tundra Crawlers around the area. They are level 70.
.' Use your Tame Beast ability on a _Tundra Crawler_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 24564
step
goto The Storm Peaks,58.8,62.0
.' Search for Roaming Jormungar around the area. They are level 79 - 80.
.' Use your Tame Beast ability on a _Roaming Jormungar_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 24564
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Worms\\White Jormungar",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 37551
step
goto Dragonblight,29.0,86.8
.' Search for Ice Heart Jormungar Spawn around the area. They are level 72.
.' Use your Tame Beast ability on a _Ice Heart Jormungar Spawn_. |cast Tame Beast##1515
'|modeldisplay 37551
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Bats\\Pale Bat (Rare Spawn)",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 16053
step
label "start"
goto Tirisfal Glades,53.2,58.6
.' Search for Ressan the Needler around the area. It is level 9.
.' Use your Tame Beast ability on _Ressan the Needler_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
|modeldisplay 16053
step
goto Razorfen Kraul,11.4,32.6
.' Search for Blind Hunter around the area. It is a level 35 Rare Elite.
.' Use your Tame Beast ability on _Blind Hunter_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
|modeldisplay 16053
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Owls\\Ghost Owl (Rare Spawn)",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 37568
step
goto Felwood,56.2,23.6
.' Search for Olm the Wise around the area. It is level 48 Rare.
.' It can also spawn at [54.6,27.6]
.' as well as [57.6,19.8]
.' Use your Tame Beast ability on _Olm the Wise_. |cast Tame Beast##1515
|modeldisplay 37568
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Parrots\\Blue Parrot (Rare Spawn)",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 27975
step
goto Sholazar Basin,48.0,55.0
.' Search for Aotana around the area. It is level 75.
.' Aotona has several spawning points, listed below:
.' [42.6,51.0]
.' [40.6,58.6]
.' [41.8,69.6]
.' [42.6,73.8]
.' [52.6,73.0]
.' [57.8,65.6]
.' [54.8,52.6]
.' Use your Tame Beast ability on _Aotana_. |cast Tame Beast##1515
'|modeldisplay 27975
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Mystical Pets\\Chimaeras\\Green 2-Headed Chimaera (Rare Spawn)",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 37569
step
goto Azshara,14.8,58.8
.' Search for The Evalcharr around the area. It is level 19.
.' The Evalcharr also spawns at [14.0,50.8].
.' Use your Tame Beast ability on _The Evalcharr_. |cast Tame Beast##1515
'|modeldisplay 37569
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Mystical Pets\\Chimaeras\\White 2-Headed Chimaera (Rare Spawn)",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 37571
step
goto Feralas,84.5,49.7
.' Search for The Razza around the area. It is level 40.
.' Use your Tame Beast ability on _The Razza_. |cast Tame Beast##1515
'|modeldisplay 37571
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Silithids\\Purple Silithid (Rare Spawn)",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 37593
step
goto Silithus,57.6,71.0
.' Search for Lapress around the area. It is level 56.
.' Use your Tame Beast ability on _Lapress_. |cast Tame Beast##1515
'|modeldisplay 37593
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Silithids\\Tan Silithid (Rare Spawn)",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 37583
step
goto Thousand Needles,70.0,85.4
.' Search for Krkk'kx around the area. It is level 42.
.' Use your Tame Beast ability on _krkk'kx_. |cast Tame Beast##1515
'|modeldisplay 37583
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Silithids\\Yellow Silithid (Rare Spawn)",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 11084
step
goto Un'Goro Crater,48.8,85.6
.' Search for Clutchmother Zavas around the area. She is level 54.
.' Use your Tame Beast ability on __. |cast Tame Beast##1515
'|modeldisplay 11084
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Serpents\\Red Windserpent (Rare Spawn)",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 2702
step
goto Southern Barrens,43.88,57.2
.' Search for Azzere the Skyblade around the area. It is level 30.
.' Use your Tame Beast ability on _Azzere the Skyblade_. |cast Tame Beast##1515
'|modeldisplay 2702
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Serpents\\White Windserpent (Rare Spawn)",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 7569
step
label "start"
goto Feralas,38.8,24.6
.' Search for Arash-ethis around the area. It is level 36.
.' Use your Tame Beast ability on _Arash-ethis_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 7569
step
goto Dustwallow Marsh,47.8,61.4
.' Search for Hayoc around the area. It is level 37.
.' Use your Tame Beast ability on _Hayoc_. |cast Tame Beast##1515
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 7569
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Carrion Birds\\Vultures\\White Vulture (Rare Spawn)",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 37577
step
goto Badlands,57.0,42.4
.' Search for Zaricotl around the area. It is level 48.
.' Use your Tame Beast ability on _Zaricotl_. |cast Tame Beast##1515
'|modeldisplay 37577
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\Lions\\Lioness (Rare Spawn)",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 21192
step
goto Badlands,22.8,61.6
.' Search for Broken Tooth around the area. It is level 47.
.' Use your Tame Beast ability on _Broken Tooth_. |cast Tame Beast##1515
'|modeldisplay 21192
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\Leopard (Rare Spawn)",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 1043
step
goto Northern Barrens,45.4,32.8
.' Search for Dishu around the area. It is level 13
.' You can also find it at the below locations:
.' [48.8,51.8]
.' [45.2,52.8]
.' Use your Tame Beast ability on _Dishu_. |cast Tame Beast##1515
'|modeldisplay 1043
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\White Tiger (Rare Spawn)",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 20425
step
goto Terokkar Forest,76.2,81.2
.' Search for Hawkbane around the area. It is level 70.
.' Use your Tame Beast ability on _Hawkbane_. |cast Tame Beast##1515
'|modeldisplay 20425
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\Saber Beast Pets\\Cats\\Blue Saber (Rare Spawn)",[[
description This guide will walk you through obtaining miscellaneous hunter pets.
model 10054
step
goto Winterspring,47.8,18.8
.' Search for Rak'shiri around the area. It is level 53.
.' Use your Tame Beast ability on _Rak'shiri_. |cast Tame Beast##1515
'|modeldisplay 10054
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\Hunched Cat\\Black Hunched (Rare Spawn)",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
model 37555
step
goto Darkshore,41.6,36.0
.' Search for Shadowclaw around the area. It is level 13.
.' Use your Tame Beast ability on _Shadowclaw_. |cast Tame Beast##1515
'|modeldisplay 37555
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\Hunched Cat\\White Spots Hunched (Rare Spawn)",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
model 37558
step
goto Teldrassil,52.4,67.6
.' Search for Duskstalker around the area. It is level 8.
.' Use your Tame Beast ability on _Duskstalker_. |cast Tame Beast##1515
'|modeldisplay 37558
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\Lions\\Maned Lion (Rare Spawn)",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
model 37169
step
goto Twilight Highlands,68.8,25.4
.' Search for Sambas around the area. It is level 85.
.' You can also find Sambas at the spots below:
.' [49.6,23.0]
.' [45.8,29.4]
.' [42.6,38.6]
.' [38.2,53.2]
.' Use your Tame Beast ability on _Sambas_. |cast Tame Beast##1515
'|modeldisplay 37169
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\Lions\\White Lion (Rare Spawn)",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
model 10114
step
goto Winterspring,45.8,17.6
.' Search for Sian-Rotam around the area. It is level 53.
.' Use your Tame Beast ability on _Sian-Rotam_. |cast Tame Beast##1515
'|modeldisplay 10114
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Cats\\Hunched Cat\\Hunched Cat w/ Red Eyes (Rare Spawn)",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
model 37615
step
goto Northern Stranglethorn,36.8,28.4
.' Search for Pogeyan around the area. It is level 28.
.' Use your Tame Beast ability on _Pogeyan_. |cast Tame Beast##1515
'|modeldisplay 37615
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Beast Pets\\Devilsaur\\Green Devilsaur (Rare Spawn)",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
model 28052
step
label "start"
map Sholazar Basin
path follow strict;loop off;ants straight
path	25.8,48.8	30.0,40.2	34.0,32.6
path	37.6,28.8
.' Search for King Krush around the area. He is level 75.
.' Use your Tame Beast ability on _King Krush_. |cast Tame Beast##1515
.' Click here to see another location for this pet |next |confirm
'|modeldisplay 28052
step
label "location"
map Sholazar Basin
path follow strict;loop off;ants straight
path	52.8,41.6	48.8,44.6	46.4,41.6
.' Click here to see another location for this pet |next |confirm
.' Click here to see the previous location for this pet |next "-start" |confirm
'|modeldisplay 28052
step
map Sholazar Basin
path follow strict;loop off;ants straight
path	66.6,78.4	63.6,83.4	58.8,82.0
path	53.8,84.2	50.8,82.0
.' Click here to see the previous location for this pet |next "-location" |confirm
'|modeldisplay 28052
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\\Beast Pets\\Hyenas\\Black Hyena (Rare Spawn)",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
model 2726
step
goto Thousand Needles,69.8,50.0
.' Search for Galak Packhound around the area. It is level 40.
.' Use your Tame Beast ability on a _Galak Packhound_. |cast Tame Beast##1515
'|modeldisplay 2726
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Flying Pets\\Birds of Prey\\Spectral Owl",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
model 38634
step
goto Mount Hyjal,27.3,64.3
.' Search for Ban'thalos high up in the sky.
.' There will be a tree near _Cenarius_ that you will need to get on top of.
.' You will need to set an _Ice Trap_ on top of the tree.
.' _Fly directly upwards_ and use _Concussion Shot_ on _Ban'thalos_
.' Use _Deterrence_ to avoid getting hit by him while taming.
.' Use your Tame Beast ability on _Ban'thalos_. |cast Tame Beast##1515
'|modeldisplay 38634
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Beast Pets\\Bears\\Spectral Bear (Rare Spawn)",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
model 31094
step
goto Grizzly Hills,31.2,55.4
.' Search for Arcturis around the area. It is level 74.
.' Use your Tame Beast ability on _Arcturis_. |cast Tame Beast##1515
.' Note that this pet requires you to have the _Beast Mastery_ talent
'|modeldisplay 31094
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Water Pets\\Crabs\\Ghost Crab (Rare Spawn)",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
model 37396
step
map Abyssal Depths
path follow strict;loop off;ants straight
path	27.6,76.6	32.6,72.4	31.8,75.8
path	31.6,80.6	29.4,82.2	25.6,82.6
path	23.2,75.8	24.6,71.2	23.6,62.6
path	20.4,69.8	18.6,76.8	18.0,81.6
path	20.4,84.4	15.0,87.4	13.4,81.2
path	17.0,72.2	18.6,65.6	18.6,53.0
path	20.6,48.4	23.2,47.8
.' Search for Ghostcrawler around the area. It is level 85.
.' Use your Tame Beast ability on _Ghostcrawler_. |cast Tame Beast##1515
'|modeldisplay 37396
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Beast Pets\\Cats\\Blue Spectral Saber (Rare Spawn)",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
model 38749
step
'Your character must not be wearing any weapons or armor in order to obtain this pet.
|confirm
step
map Mount Hyjal
path follow strict;loop off;ants straight
path	27.8,50.4	30.4,51.4	34.2,53.0
path	36.6,54.6	39.4,55.6	41.4,54.4
.' Search for Magria around the area. It is level 85.
.' Use your Tame Beast ability on _Magria_. |cast Tame Beast##1515
'|modeldisplay 38749
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Beast Pets\\Cats\\Green Spectral Saber (Rare Spawn)",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
model 38748
step
'Your character must not be wearing any weapons or armor in order to obtain this pet.
|confirm
step
map Mount Hyjal
path follow strict;loop off;ants straight
path	27.8,50.4	30.4,51.4	34.2,53.0
path	36.6,54.6	39.4,55.6	41.4,54.4
.' Search for Ankha around the area. It is level 85.
.' Use your Tame Beast ability on _Ankha_. |cast Tame Beast##1515
'|modeldisplay 38748
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Beast Pets\\Cats\\Striped Ghost Saber w/ Green Eyes (Rare Spawn)",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
model 28871
step
map Zul'Drak
path follow strict;loop;ants straight
path	61.6,62.6	63.2,42.4	69.6,48.6
path	74.4,46.6	77.8,69.4	68.0,77.4
.' Search for Gondria at the points shown. It is level 77.
.' Use your Tame Beast ability on _Gondria_. |cast Tame Beast##1515
'|modeldisplay 28871
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Beast Pets\\Cats\\White Spotted Cat w/ Blue Eyes (Rare Spawn)",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
model 28010
step
map Sholazar Basin
path follow strict;loop;ants straight
path	58.6,22.2	36.6,31.0	20.4,44.2
path	21.8,70.4	31.0,66.6	51.0,81.6
path	66.6,78.8	71.6,72.0
.' Search for Loque'nahak at each point on your map. It is level 76.
.' Use your Tame Beast ability on a _Loque'nahak_. |cast Tame Beast##1515
'|modeldisplay 28010
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Beast Pets\\Wolves\\Blue Spirit Wolf (Rare Spawn)",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
class HUNTER
spec Beast Mastery
model 29673
step
goto The Storm Peaks,46.2,65.0
.' Search for Skoll around the area. It is level 80.
.' You can also find Skoll at the points below:
.' [30.2,64.6]
.' [27.8,50.8]
.' Use your Tame Beast ability on a _Skoll_. |cast Tame Beast##1515
'|modeldisplay 29673
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Beast Pets\\Wolves\\Ghost Wolf (Rare Spawn)",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
class HUNTER
spec Beast Mastery
model 36726
step
map Twilight Highlands
path follow strict;loop;ants straight
path	59.6,42.4	54.2,53.8	49.6,74.8
path	54.4,75.0	58.6,63.6	65.8,60.8
.' Search for Karoma at the points on the map. It is level 85.
.' Use your Tame Beast ability on _Karoma_. |cast Tame Beast##1515
'|modeldisplay 36726
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Dark Purple Wasp (Rare Spawn)",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
model 37579
step
goto Silithus,52.2,24.2
.' Search for Rex Ashil around the area. It is level 56.
.' Use your Tame Beast ability on _Rex Ashil_. |cast Tame Beast##1515
'|modeldisplay 37579
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Orange Wasp (Rare Spawn)",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
model 37548
step
map Silithus
path follow strict;loop off;ants straight
path	33.8,53.0	32.0,56.2	28.6,53.4
path	26.4,62.2	31.4,63.2
.' Search for Zora around the area. It is level 55.
.' Use your Tame Beast ability on _Zora_. |cast Tame Beast##1515
'|modeldisplay 37548
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Gray Wasp (Rare Spawn)",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
model 11142
step
goto Feralas,76.6,61.4
.' Search for Qirot around the area. It is level 39.
.' Use your Tame Beast ability on _Qirot_. |cast Tame Beast##1515
'|modeldisplay 11142
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Wolves\\Unique Gray Wolf (Rare Spawn)",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
class HUNTER
model 11414
step
goto The Hinterlands,13.6,53.8
.' Search for Old Cliff Jumper around the area. It is level 30.
.' Use your Tame Beast ability on _Old Cliff Jumper_. |cast Tame Beast##1515
'|modeldisplay 11414
step
.' You should tame one of the following:
.learnpet Mist Howler##8211
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Wolves\\Brown Wolf (Rare Spawn)",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
class HUNTER
model 9372
step
goto Badlands,39.8,60.6
.' Search for Barnabus around the area. It is level 46.
.' Use your Tame Beast ability on _Barnabus_. |cast Tame Beast##1515
'|modeldisplay 9372
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\Metallic Silver Crab (Rare Spawn)",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
model 38825
step
goto Molten Front,37.8,35.6
.' We suggest that you are _Marksman_ with the _Silencing Shot_ talent.
.' Search for Karkin around the area. It is level 85.
.' You can also find [33.6,52.8].
.' For Karkin, you will want to open with _Tame Beast_.
.' Once you start, immidiate interrupt the spell, followed by a _Silencing Shot_ on _Fieroclast Barrage_.
.' Immidiately after, use _Deterrence_ followed by _Tame Beast_.
.' Use your Tame Beast ability on _Karkin_. |cast Tame Beast##1515
'|modeldisplay 38825
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Pets\\Gorillas\\White Gorilla (Rare Spawn)",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
model 10133
step
goto Northern Stranglethorn,47.8,31.4
.' Search for Tsul'Kalu around the area. It is level 28.
.' Use your Tame Beast ability on _Tsul'Kalu_. |cast Tame Beast##1515
'|modeldisplay 10133
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Scorpids\\Purple and Orange Scorpid (Rare Spawn)",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
model 15433
step
goto Blasted Lands,47.6,13.8
.' Search for Clack the Reaver around the area. It is level 55.
.' Use your Tame Beast ability on _Clack the Reaver_. |cast Tame Beast##1515
'|modeldisplay 15433
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Scorpids\\Red Scorpid (Rare Spawn)",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
model 31351
step
goto Tanaris,49.6,58.6
.' Search for Scorpitar around the area. It is level 47.
.' Use your Tame Beast ability on _Scorpitar_. |cast Tame Beast##1515
'|modeldisplay 31351
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Scorpids\\Green Scorpid (Rare Spawn)",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
model 10988
step
goto Thousand Needles,6.0,42.0
.' Search for Vile Sting around the area. It is level 45.
.' Use your Tame Beast ability on _Vile Sting_. |cast Tame Beast##1515
'|modeldisplay 10988
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Crawler Pets\\Scorpids\\Blue Scorpid (Rare Spawn)",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
model 37361
step
map Uldum
path follow strict;loop;ants straight
path	50.6,23.0	50.6,20.2	54.0,19.4
path	47.6,18.4	44.6,10.4	44.6,21.8
.' Search for Madexx at the points on your map. It is level 84.
.' Note that there are 5 different skins for Madexx that all share the very same spawn point.
.' Use your Tame Beast ability on _Madexx_. |cast Tame Beast##1515
'|modeldisplay 37361
'|modeldisplay 37359
'|modeldisplay 37362
'|modeldisplay 37360
'|modeldisplay 36728
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Shale Crawler Pets\\Spiders\\Green Glowing Shale Spider (Rare Spawn)",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
model 36636
step
.' In order to get this pet, you must have unlocked the Therazane Dailies by completing the quest "The Stone Throne", as well as have the quest Underground Economy.
.' If you would like to use a leveling guide to do the prequests click here |confirm
.' If you would like to skip the prequests click here |confirm |next "noprequest"
step
#include "H_Therazane_PreQuest"
step
label	"noprequest"
goto Deepholm 61.3,26.2
.talk 44968
.accept 27048
.' You need the bombs from this daily quest to reach Jadefang's spawn point.
.' Note that if the daily isn't available _you won't be able to reach Jadefang_.
step
map Deepholm
path follow strict;loop off;ants straight
path	62.0,27.4	63.0,27.2	63.9,28.0
path	65.2,27.6	65.2,26.3	63.8,24.6
path	64.3,22.3	64.8,19.8	63.6,19.3
path	63.0,20.8
.' Once you reach the end of the path, use _Ricket's Tickers_. |use Ricket's Tickers##65514
.' Face the ledge across from you, moving forward only a little in front of the bomb so that it will knock you over there.
.' Launch yourself over to [62.5,22.0]
|confirm
step
goto 61.3,22.5
.' Search for Jadefang who is at the end of the tunnel.  It is level 85.
.' Use your Tame Beast ability on __. |cast Tame Beast##1515
'|modeldisplay 36636
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Turtles\\Blue Turtle (Rare Spawn)",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
model 7046
step
goto Azshara,43.0,51.6
.' Search for Scalebeard along the shoreline here. It is level 16.
.' Use your Tame Beast ability on _Scalebeard_. |cast Tame Beast##1515
'|modeldisplay 7046
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Turtles\\Purple Turtle (Rare Spawn)",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
model 37770
step
goto The Hinterlands,80.6,56.6
.' Search for Ironback around the area. It is level 31.
.' Use your Tame Beast ability on _Ironback_. |cast Tame Beast##1515
'|modeldisplay 37770
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Turtles\\Fiery Turtle (Rare Spawn)",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
model 37282
step
map Mount Hyjal
path follow strict;loop off;ants straight
path	51.8,84.0	54.0,80.6	55.8,75.6
path	53.2,73.8	52.0,72.2	48.8,72.0
.' Search for Terrorpene in the lava at along the waypoints. It is level 81.
.' Use your Tame Beast ability on _Terrorpene_. |cast Tame Beast##1515
'|modeldisplay 37282
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Worms\\Golden Worm (Rare Spawn)",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
model 12336
step
goto Dustwallow Marsh,37.2,62.6
.' Search for Oozeworm around the area. It is level 38.
.' Use your Tame Beast ability on _Oozeworm_. |cast Tame Beast##1515
'|modeldisplay 12336
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Worms\\Orange Worm (Rare Spawn)",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
model 14523
step
map Silithus
path follow strict;loop off;ants straight
path	50.6,63.6	49.6,73.6	35.2,73.6
path	41.6,65.6
.' Search for Grubthor at the waypoints. It is level 56.
.' Use your Tame Beast ability on _Grubthor_. |cast Tame Beast##1515
'|modeldisplay 14523
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Silithids\\Blue Boss Silithid",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
model 15657
step
map Tanaris
path follow strict;loop;ants straight
path	55.8,64.6	56.6,68.8	53.0,70.4
path	50.6,72.6	52.6,65.8
.' Search for Harakiss the Infestor around the area. It is level 47.
.' Use your Tame Beast ability on _Harakiss the Infestor_. |cast Tame Beast##1515
'|modeldisplay 15657
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Silithids\\Damaged Boss Silithid",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
model 35578
step
goto Thousand Needles,64.0,86.0
.' Search for the Hive Controller around the area. It is level 42.
.' Use your Tame Beast ability on the _Hive Controller_. |cast Tame Beast##1515
'|modeldisplay 35578
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Silithids\\Pink Boss Silithid",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
model 37549
step
goto Tanaris,34.2,46.0
.' Search for Ainamiss the Hive Queen around the area. It is level 48.
.' Use your Tame Beast ability on _Ainamiss the Hive Queen_. |cast Tame Beast##1515
'|modeldisplay 37549
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Hunter Pets\\Beast Mastery-Exotic\\Crawler Pets\\Silithids\\Purple Boss Silithid (Rare Spawn)",[[
description This guide will walk you through obtaining
description miscellaneous hunter pets
model 31045
step
goto Un'Goro Crater,47.6,86.8
.' Search for Gorishi Fledgling Colossus around the area. It is level 53 Elite.
.' Use your Tame Beast ability on _Gorishi Fledgling Colossus_. |cast Tame Beast##1515
'|modeldisplay 31045
]])
