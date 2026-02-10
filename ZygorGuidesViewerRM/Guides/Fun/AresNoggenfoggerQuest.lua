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
.buy Noggenfogger Elixir##8529 |n
.' You can now buy Noggenfogger Elixir from Marin Noggenfogger.
]])
