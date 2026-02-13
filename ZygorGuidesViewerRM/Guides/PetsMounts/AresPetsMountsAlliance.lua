local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

ZygorGuidesViewer:RegisterGuide("Ares' Pets & Mounts Guides\\Weekly Mount Runs\\Outland Mount Loop",[[
author ErebusAres
description Run fast Outland mount farms in one guide: Karazhan, Sethekk Halls, Tempest Keep, and Magisters' Terrace.
startlevel 80
step //1
'Start in Shattrath City for quick flights to all Outland entrances. |confirm
step //2
'Go to Deadwind Pass|goto Deadwind Pass|noway|c
step //3
goto Deadwind Pass,46.9,74.1 |c
'Enter Karazhan and clear to Attumen the Huntsman. |tip Fiery Warhorse's Reins can drop from Attumen.
step //4
goto Karazhan,44.8,83.6
.kill Attumen the Huntsman##16152 |tip Loot for Fiery Warhorse's Reins. |n
step //5
'Go to Terokkar Forest|goto Terokkar Forest|noway|c
step //6
goto Terokkar Forest,43.6,65.2 |c
'Enter Sethekk Halls on Heroic difficulty. |tip Raven Lord only drops from Heroic Anzu in 3.3.5a.
step //7
goto Sethekk Halls,48.6,68.4
.kill Anzu##23035 |tip Loot for Reins of the Raven Lord. |n
step //8
'Go to Netherstorm|goto Netherstorm|noway|c
step //9
goto Netherstorm,74.4,57.7 |c
'Enter Tempest Keep: The Eye and clear to Kael'thas Sunstrider.
step //10
goto Netherstorm,73.2,63.8
.kill Kael'thas Sunstrider##19622 |tip Loot for Ashes of Al'ar. |n
step //11
'Go to Isle of Quel'Danas|goto Isle of Quel'Danas|noway|c
step //12
goto Isle of Quel'Danas,61.2,30.9 |c
'Enter Magisters' Terrace on Heroic difficulty and clear to Kael'thas.
step //13
goto Magisters' Terrace,8.6,50.6
.kill Kael'thas Sunstrider##24664 |tip Loot for Swift White Hawkstrider. |n
step //14
'Outland mount loop complete. Reset instances and repeat next lockout. |confirm
]])

ZygorGuidesViewer:RegisterGuide("Ares' Pets & Mounts Guides\\Weekly Mount Runs\\Northrend + Azeroth Mount Loop",[[
author ErebusAres
description Farm quick Wrath-era and classic weekly mount drops: Utgarde Pinnacle, Eye of Eternity, Obsidian Sanctum, Onyxia, and Stratholme.
startlevel 80
step //1
'Set dungeon difficulty to Heroic before running Utgarde Pinnacle. |confirm
step //2
'Go to Howling Fjord|goto Howling Fjord|noway|c
step //3
goto Howling Fjord,57.3,46.8 |c
'Enter Utgarde Pinnacle and clear to Skadi the Ruthless. |tip Heroic-only mount farm.
step //4
goto Utgarde Pinnacle,40.6,53.4
.kill Skadi the Ruthless##26693 |tip Loot for Reins of the Blue Proto-Drake. |n
step //5
'Go to Borean Tundra|goto Borean Tundra|noway|c
step //6
goto Borean Tundra,27.5,26.0 |c
'Enter The Eye of Eternity and defeat Malygos.
step //7
.kill Malygos##28859 |tip Loot for Reins of the Azure Drake and Reins of the Blue Drake. |n
step //8
goto Borean Tundra,26.7,26.0 |c
'Enter The Obsidian Sanctum and kill Sartharion with 3 drakes alive if possible. |tip 3D gives a guaranteed Black or Twilight Drake in Wrath.
step //9
.kill Sartharion##28860 |n
step //10
'Go to Dustwallow Marsh|goto Dustwallow Marsh|noway|c
step //11
goto Dustwallow Marsh,52.2,76.0 |c
'Enter Onyxia's Lair and clear to Onyxia.
step //12
.kill Onyxia##10184 |tip Loot for Reins of the Onyxian Drake. |n
step //13
'Go to Eastern Plaguelands|goto Eastern Plaguelands|noway|c
step //14
goto Eastern Plaguelands,26.1,11.7 |c
'Enter Stratholme Service Gate and clear undead side to Baron Rivendare.
step //15
goto Stratholme,68.8,88.6
.kill Baron Rivendare##10440 |tip Loot for Deathcharger's Reins. |n
step //16
'Northrend and Azeroth mount loop complete. |confirm
]])

ZygorGuidesViewer:RegisterGuide("Ares' Pets & Mounts Guides\\Rare Hunts\\Northrend Rare Spawn Safari",[[
author ErebusAres
description Patrol Northrend for iconic rare spawns and spirit beasts.
startlevel 80
step //1
'This route is great for Hunters and collectors. |confirm
step //2
'Go to Sholazar Basin|goto Sholazar Basin|noway|c
step //3
goto Sholazar Basin,50.0,62.0 |c
'Start a clockwise loop for Loque'nahak and King Krush.
step //4
goto Sholazar Basin,30.2,66.8
step //5
goto Sholazar Basin,36.6,30.2
step //6
goto Sholazar Basin,50.8,81.2
step //7
goto Sholazar Basin,67.6,77.4
.kill Loque'nahak##32517 |tip Hunters can tame instead of killing. |n
step //8
.kill King Krush##32485 |tip Spawn shares many patrol points with Loque'nahak. |n
step //9
'Go to Grizzly Hills|goto Grizzly Hills|noway|c
step //10
goto Grizzly Hills,31.2,55.2 |c
'Patrol this area for Arcturis.
step //11
.kill Arcturis##38453 |tip Hunters can tame instead of killing. |n
step //12
'Go to Zul'Drak|goto Zul'Drak|noway|c
step //13
goto Zul'Drak,77.0,70.0 |c
'Patrol these ridges for Gondria.
step //14
goto Zul'Drak,63.8,42.6
step //15
goto Zul'Drak,69.6,49.0
step //16
goto Zul'Drak,76.8,70.4
.kill Gondria##33776 |tip Hunters can tame instead of killing. |n
step //17
'Go to The Storm Peaks|goto The Storm Peaks|noway|c
step //18
goto The Storm Peaks,31.4,69.0 |c
'Begin Time-Lost Proto-Drake patrol checks at known fly-path intersections.
step //19
goto The Storm Peaks,45.2,49.8
step //20
goto The Storm Peaks,52.2,35.6
step //21
goto The Storm Peaks,35.8,76.6
.kill Time-Lost Proto-Drake##32491 |tip Loot for Reins of the Time-Lost Proto-Drake. |n
step //22
.kill Vyragosa##32630 |tip Shares spawn paths and timer window with Time-Lost Proto-Drake. |n
step //23
'Rare safari complete. Keep cycling this route while rare timers are active. |confirm
]])
