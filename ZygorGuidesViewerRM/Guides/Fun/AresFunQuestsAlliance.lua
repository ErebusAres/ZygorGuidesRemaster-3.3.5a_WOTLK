local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

ZygorGuidesViewer:RegisterGuide("Ares' Fun Guides\\Noggenfogger Elixir",[[
author ErebusAres
description Unlock the ability to buy Noggenfogger Elixir in Gadgetzan.
startlevel 44
step //1
goto Tanaris,51.8,28.6
.talk Marin Noggenfogger##7564
..accept The Thirsty Goblin##2605
step //2
goto Tanaris,30.4,64.2
.kill Thistleshrub Dew Collector##5481|n
.get Laden Dew Gland##8428 |q 2605/1
step //3
goto Tanaris,51.8,28.7
.talk Marin Noggenfogger##7564
..turnin The Thirsty Goblin##2605
..accept In Good Taste##2606
step //4
goto Tanaris,51.1,26.9
.talk Sprinkle##7583
..turnin In Good Taste##2606
..accept Sprinkle's Secret Ingredient##2641
step //5
'Go to The Hinterlands|goto The Hinterlands|noway|c
step //6
goto The Hinterlands,40,60
.get Violet Tragan##8526 |q 2641/1
step //7
'Go to Tanaris|goto Tanaris|noway|c
step //8
goto Tanaris,51.1,26.9
.talk Sprinkle##7583
..turnin Sprinkle's Secret Ingredient##2641
..accept Delivery for Marin##2661
step //9
goto Tanaris,51.8,28.7
.talk Marin Noggenfogger##7564
..turnin Delivery for Marin##2661
..accept Noggenfogger Elixir##2662
..turnin Noggenfogger Elixir##2662 |tip Wait for Marin Noggenfogger to mix the elixir. This takes a few Seconds.
step //10
goto Tanaris,51.8,28.7
.talk Marin Noggenfogger##7564
.buy Noggenfogger Elixir##8529 |c
.' You can now buy Noggenfogger Elixir from Marin Noggenfogger.
]])

ZygorGuidesViewer:RegisterGuide("Ares' Fun Guides\\Utility Tricks\\Unlock Dalaran Return Crystal (Alliance 74+)",[[
author ErebusAres
description Solo path to unlock the Dalaran intro and both return crystals with no summons or portals from other players.
startlevel 74
step //1
'This is the earliest reliable solo unlock path in Wrath for Alliance. |confirm
step //2
'Go to Dragonblight|goto Dragonblight|noway|c
step //3
goto Dragonblight,29.0,55.5
.talk Image of Archmage Modera##26673
..accept The Magical Kingdom of Dalaran##12794
step //4
goto Dragonblight,29.0,55.5
.' Ask Image of Archmage Modera to teleport you to Dalaran.
step //5
.' Teleport to Dalaran |goto Dalaran|noway|c
step //6
goto Dalaran,56.3,46.8
.talk Archmage Celindra##29156
..turnin The Magical Kingdom of Dalaran##12794
..accept Learning to Leave and Return: the Magical Way##12790
step //7
goto Dalaran,56.3,46.8
.' Click the Teleport to Violet Stand Crystal.
.' Use the Teleport to Violet Stand Crystal |goal Teleport to Violet Stand Crystal used|q 12790/1
step //8
goto Crystalsong Forest,15.7,42.5
.' Click the Teleport to Dalaran Crystal.
.' Use the Teleport to Dalaran Crystal |goal Teleport to Dalaran Crystal used|q 12790/2
step //9
'Go to Dalaran|goto Dalaran|noway|c
step //10
goto Dalaran,56.3,46.8
.talk Archmage Celindra##29156
..turnin Learning to Leave and Return: the Magical Way##12790
step //11
goto Dalaran,72.2,45.8
.talk Aludane Whitecloud##28674
..fpath Dalaran
step //12
goto Dalaran,44.7,63.3
.talk Isirami Fairwind##32413
..home Dalaran
step //13
'Dalaran crystal unlock complete. |confirm
]])

ZygorGuidesViewer:RegisterGuide("Ares' Fun Guides\\Utility Tricks\\Travel Network Power Setup (70-80)",[[
author ErebusAres
description Front-load key Wrath travel unlocks to save time on every later guide: Dalaran home/FP plus major Northrend hubs.
startlevel 74
step //1
'If you have not unlocked Dalaran crystal travel yet, complete the unlock first. |tip Use: Ares' Fun Guides\\Utility Tricks\\Unlock Dalaran Return Crystal (Alliance 74+)
step //2
'Go to Dalaran|goto Dalaran|noway|c
step //3
goto Dalaran,72.2,45.8
.talk Aludane Whitecloud##28674
..fpath Dalaran
step //4
goto Dalaran,44.7,63.3
.talk Isirami Fairwind##32413
..home Dalaran
step //5
'Go to Borean Tundra|goto Borean Tundra|noway|c
step //6
goto Borean Tundra,59.0,68.3
.talk Tomas Riverwell##26879
..fpath Valiance Keep
step //7
'Go to Dragonblight|goto Dragonblight|noway|c
step //8
goto Dragonblight,77.0,49.8
.talk Rodney Wells##26878
..fpath Wintergarde Keep
step //9
goto Dragonblight,60.3,51.6
.talk Nethestrasz##26851
..fpath Wyrmrest Temple
step //10
'Go to Zul'Drak|goto Zul'Drak|noway|c
step //11
goto Zul'Drak,41.6,64.4
.talk Gurric##28623
..fpath The Argent Stand
step //12
'Go to The Storm Peaks|goto The Storm Peaks|noway|c
step //13
goto The Storm Peaks,40.8,84.5
.talk Skizzle Slickslide##29721
..fpath K3
step //14
goto The Storm Peaks,29.5,74.3
.talk Faldorf Bitterchill##29750
..fpath Frosthold
step //15
'Go to Dalaran|goto Dalaran|noway|c
step //16
goto Dalaran,44.7,63.3
.talk Isirami Fairwind##32413
..home Dalaran
step //17
'Travel network setup complete. |confirm
]])

ZygorGuidesViewer:RegisterGuide("Ares' Fun Guides\\Utility Tricks\\Experimental Dalaran Ghost + BG Sync (Server-Dependent)",[[
author ErebusAres
description Experimental level-70 Dalaran entry method using ghost gryphon + battleground return behavior. This is realm-dependent and may not work everywhere.
startlevel 70
step //1
'This route uses unintended behavior and may be blocked on some realms. |tip Check your server rules first.
step //2
'Go to Icecrown|goto Icecrown|noway|c
step //3
goto Icecrown,54.8,35.0 |c
'Move near the Cathedral of Darkness / Ymirheim edge.
step //4
goto Icecrown,53.6,34.2 |c
'Aggro a strong hostile mob and die here. |tip The goal is to die in Icecrown so your ghost gets the spectral gryphon.
step //5
'Release spirit and mount the spectral gryphon.
.' Fly as high as possible toward Dalaran over Crystalsong Forest. |tip Aim for city rooftops.
step //6
'Go to Dalaran (as ghost)|goto Dalaran|noway|c
step //7
'When the ghost mount despawns, fall and try to land your ghost inside the city bounds.
step //8
'Open the PvP panel and queue for any battleground. |tip This step is the server-dependent part.
step //9
'Enter the battleground, then either finish or leave after fully loading in. |confirm
step //10
'After loading back to the world, check whether your character is now in Dalaran.
.' If yes, set up your travel network immediately:
step //11
goto Dalaran,72.2,45.8
.talk Aludane Whitecloud##28674
..fpath Dalaran
step //12
goto Dalaran,44.7,63.3
.talk Isirami Fairwind##32413
..home Dalaran
step //13
'If the BG return does not place you in Dalaran, use the normal unlock route instead. |tip Ares' Fun Guides\\Utility Tricks\\Unlock Dalaran Return Crystal (Alliance 74+)
]])

ZygorGuidesViewer:RegisterGuide("Ares' Fun Guides\\Exploration Tricks\\Ironforge Airport Mountain Climb",[[
author ErebusAres
description Reach the hidden Ironforge Airport area by mountain climbing from Dun Morogh.
startlevel 20
step //1
'Bring a Slow Fall effect if possible. |tip Noggenfogger, parachute, or class slow fall helps recovery jumps.
step //2
'Go to Dun Morogh|goto Dun Morogh|noway|c
step //3
goto Dun Morogh,63.0,47.0 |c
'Start climbing the snowy ridge above Ironforge.
step //4
goto Dun Morogh,67.4,41.8 |c
step //5
goto Dun Morogh,68.8,38.6 |c
step //6
goto Dun Morogh,70.5,36.2 |c
'Use short diagonal jumps up the ledges. |tip Face along the slope, not directly at it.
step //7
goto Dun Morogh,73.2,34.2 |c
step //8
goto Dun Morogh,76.1,33.1 |c
'Follow the ridge west toward the hidden plateau.
step //9
goto Dun Morogh,72.6,29.8 |c
.' You should now be in the Ironforge Airport area.
step //10
'Explore the runway and dwarf buildings.
goto Dun Morogh,70.8,24.6
step //11
goto Dun Morogh,68.6,21.8
step //12
'If you fall, run back to step 3 and retry the climb line. |confirm
]])

ZygorGuidesViewer:RegisterGuide("Ares' Fun Guides\\Exploration Tricks\\Karazhan Crypts OOB Exterior Peek",[[
author ErebusAres
description Visit the Karazhan Crypts exterior and practice terrain-jump routing around Deadwind Pass.
startlevel 70
step //1
'Go to Deadwind Pass|goto Deadwind Pass|noway|c
step //2
goto Deadwind Pass,45.2,73.2 |c
'Go to the graveyard/crypt hill near Karazhan.
step //3
goto Deadwind Pass,47.0,75.8 |c
step //4
goto Deadwind Pass,47.8,76.6 |c
'Stand near the crypt gate and line up your camera for terrain visibility.
step //5
goto Deadwind Pass,48.8,77.6 |c
'Follow the cliff edge to find safe drop angles and hidden ledges.
step //6
goto Deadwind Pass,49.8,78.4 |c
step //7
goto Deadwind Pass,50.8,79.0 |c
'Practice controlled jumps along the edge. |tip Use slow fall before testing steep drops.
step //8
goto Deadwind Pass,47.9,77.0 |c
'Return to the crypt gate area and repeat routes you can consistently perform.
step //9
'Karazhan Crypts exterior exploration complete. |confirm
]])

ZygorGuidesViewer:RegisterGuide("Ares' Fun Guides\\Exploration Tricks\\Old Hyjal Mountain Route Attempt",[[
author ErebusAres
description Attempt the classic mountain route toward old Hyjal from Winterspring cliffs.
startlevel 80
step //1
'Bring a mount and a Slow Fall effect. |tip This route is jump-sensitive and may take multiple attempts.
step //2
'Go to Winterspring|goto Winterspring|noway|c
step //3
goto Winterspring,59.8,49.8 |c
'Move to the high cliff line north-west of Everlook.
step //4
goto Winterspring,56.4,44.2 |c
step //5
goto Winterspring,54.8,41.0 |c
'Climb the broken rock shelves with short strafing jumps.
step //6
goto Winterspring,53.2,38.6 |c
step //7
goto Winterspring,51.8,36.4 |c
'Follow the ridge toward the zone wall.
step //8
goto Winterspring,50.2,34.8 |c
step //9
goto Winterspring,48.6,33.6 |c
'Use side-jumps to stay on the narrow ridge. |tip If you slide, backtrack to the last flat shelf.
step //10
goto Winterspring,47.2,32.8 |c
.' This is the standard staging area for old Hyjal route attempts.
step //11
'If the final ridge jump fails, return to step 4 and retry with tighter side angles. |confirm
]])
