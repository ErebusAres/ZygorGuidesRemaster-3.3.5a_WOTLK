local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end

ZygorGuidesViewer:RegisterGuide("Ding80's Alliance Holidays Guide Achievements\\Midsummer Fire Festival\\Introduction",[[
author danaton
next Ding80's Alliance Holidays Guide Achievements\\Midsummer Fire Festival\\Extinguishing and Flame Warden of Eastern Kingdoms
description Empty
startlevel 80
		step
			goto Stormwind City,67.3,72.7
			.talk Human Commoner##18927
			..accept The Master of Summer Lore##11970
		step
			goto Stormwind City,50,72.2
			.talk Festival Loremaster##16817
			..turnin The Master of Summer Lore##11970
			..accept Incense for the Summer Scorchlings##11964
		step
			goto Stormwind City,49.6,72.3
			.talk Earthen Ring Elder##26221
			..accept Ahune, the Frost Lord##11955
		step
			.' Use the dungeon finder
			.' Kill Ahune and get "Ice the Frost Lord" achievement|achieve 263
		step
			goto Elwynn Forest,43.5,62.6
			.talk Elwynn Forest Flame Warden##25898
			.' Honor the Elwynn Forest flame!|achieve 1022/6
		step
			goto Elwynn Forest,43.7,62.2
			.talk Fire Eater##25962
			..accept Playing with Fire##11882
		step
			goto Stormwind City,50.1,72.6
			.talk Master Fire Eater##25975
			..turnin Playing with Fire##11882
		step
			goto Westfall,55.9,53.44
			.talk Summer Scorchling##26401
			..turnin Incense for the Summer Scorchlings##11964
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Alliance Holidays Guide Achievements\\Midsummer Fire Festival\\Extinguishing and Flame Warden of Eastern Kingdoms",[[
author danaton
next Ding80's Alliance Holidays Guide Achievements\\Midsummer Fire Festival\\Extinguishing and Flame Warden of Kalimdor
description Contains a route for achievements: "Flame Warden of Eastern Kingdoms", "Extinguishing Eastern Kingdoms"
startlevel 80
		step
			goto Westfall,55.9,53.5
			.talk Westfall Flame Warden##25910
			.' Honor the Westfall flame!|achieve 1022/14
		step
			goto Stranglethorn Vale,33.9,73.5
			.talk Stranglethorn Vale Flame Warden##25915
			.' Honor the Stranglethorn Vale flame!|achieve 1022/10
		step
			goto Stranglethorn Vale,33,75.4
			.' Interact with gameobject: Horde Bonfire
			.' Desecrate the Horde's Stranglethorn Vale bonfire!|achieve 1028/8
		step
			goto Blasted Lands,59.3,17
			.talk Blasted Lands Flame Warden##25890
			.' Honor the Blasted Lands flame!|achieve 1022/2
		step
			goto Swamp of Sorrows,46.9,46.5
			.' Interact with gameobject: Horde Bonfire
			.' Desecrate the Horde's Swamp of Sorrows bonfire!|achieve 1028/9
		step
			goto Duskwood,73.7,54.6
			.talk Duskwood Flame Warden##25896
			.' Honor the Duskwood flame!|achieve 1022/5
		step
			goto Elwynn Forest,43.5,62.6
			.talk Elwynn Forest Flame Warden##25898
			.' Honor the Elwynn Forest flame!|achieve 1022/6
		step
			goto Redridge Mountains,25.2,59
			.talk Redridge Flame Warden##25904
			.' Honor the Redridge Mountains flame!|achieve 1022/9
		step
			goto Burning Steppes,80.5,62.7
			.talk Burning Steppes Flame Warden##25892
			.' Honor the Burning Steppes flame!|achieve 1022/3
		step
			goto Burning Steppes,62.1,29
			.' Interact with gameobject: Horde Bonfire
			.' Desecrate the Horde's Burning Steppes bonfire!|achieve 1028/3
		step
			goto Badlands,4.9,49.1
			.' Interact with gameobject: Horde Bonfire
			.' Desecrate the Horde's Badlands bonfire!|achieve 1028/2
		step
			goto Loch Modan,32.6,41
			.talk Loch Modan Flame Warden##25902
			.' Honor the Loch Modan flame!|achieve 1022/8
		step
			goto Dun Morogh,46.7,46.9
			.talk Dun Morogh Flame Warden##25895
			.' Honor the Dun Morogh flame!|achieve 1022/4
		step
			goto Wetlands,13.5,47.1
			.talk Wetlands Flame Warden##25911
			.' Honor the Wetlands flame!|achieve 1022/12
		step
			goto Arathi Highlands,74,41.7
			.' Interact with gameobject: Horde Bonfire
			.' Desecrate the Horde's Arathi Highlands bonfire!|achieve 1028/1
		step
			goto Arathi Highlands,50,44.8
			.talk Arathi Flame Warden##25887
			.' Honor the Arathi Highlands flame!|achieve 1022/1
		step
			goto Hillsbrad Foothills,58.4,25.1
			.' Interact with gameobject: Horde Bonfire
			.' Desecrate the Horde's Hillsbrad Foothills Bonfire!|achieve 1028/6
		step
			goto Hillsbrad Foothills,50.4,47.6
			.talk Hillsbrad Flame Warden##25901
			.' Honor the Hillsbrad Foothills flame!|achieve 1022/7
		step
			goto Silverpine Forest,49.6,38.6
			.' Interact with gameobject: Horde Bonfire
			.' Desecrate the Horde's Silverpine bonfire!|achieve 1028/7
		step
			goto Tirisfal Glades,57,51.7
			.' Interact with gameobject: Horde Bonfire
			.' Desecrate the Horde's Tirisfal Glades bonfire!|achieve 1028/11
		step
			goto Tirisfal Glades,62.3,66.9
			.collect Flame of the Undercity##23181|achieve 1145 |future
		step
			.use Flame of the Undercity##23181
			..accept Stealing the Undercity's Flame##9326
		step
			goto Western Plaguelands,43.5,82.3
			.talk Western Plaguelands Flame Warden##25909
			.' Honor the Western Plaguelands flame!|achieve 1022/13
		step
			goto The Hinterlands,76.7,74.6
			.' Interact with gameobject: Horde Bonfire
			.' Desecrate the Horde's Hinterlands bonfire!|achieve 1028/10
		step
			goto The Hinterlands,14.3,50.1
			.talk The Hinterlands Flame Warden##25908
			.' Honor the Hinterlands flame!|achieve 1022/11
		step
			goto Ghostlands,47.1,26.1
			.' Interact with gameobject: Horde Bonfire
			.' Desecrate the Horde's Ghostlands bonfire!|achieve 1028/5
		step
			goto Eversong Woods,46.4,50.4
			.' Interact with gameobject: Horde Bonfire
			.' Desecrate the Horde's Eversong Woods bonfire!|achieve 1028/4
		step
			goto Silvermoon City,69.3,43.1
			.collect Flame of Silvermoon##35568|achieve 1145 |future
		step
			.use Flame of Silvermoon##35568
			..accept Stealing Silvermoon's Flame##11935
		step
			goto Ironforge,63.8,25.3
			.talk Festival Loremaster##16817
			..turnin Stealing the Undercity's Flame##9326
			..turnin Stealing Silvermoon's Flame##11935
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Alliance Holidays Guide Achievements\\Midsummer Fire Festival\\Extinguishing and Flame Warden of Kalimdor",[[
author danaton
next Ding80's Alliance Holidays Guide Achievements\\Midsummer Fire Festival\\King of the Fire Festival
description Contains a route for achievements: "Flame Warden of Kalimdor", "Extinguishing Kalimdor"
startlevel 80
		step
			goto Teldrassil,55.1,60.4
			.talk Teldrassil Flame Warden##25906
			.' Honor the flames of Teldrassil!|achieve 1023/10
		step
			goto Darkshore,37,46.2
			.talk Darkshore Flame Warden##25893
			.' Honor the flames of Darkshore!|achieve 1023/4
		step
			goto Azuremyst Isle,44.5,52.4
			.talk Azuremyst Isle Flame Warden##25888
			.' Honor the flames of Azuremyst Isle!|achieve 1023/2
		step
			goto Bloodmyst Isle,55.6,68.1
			.talk Bloodmyst Isle Flame Warden##25891
			.' Honor the flames of Bloodmyst Isle!|achieve 1023/3
		step
			goto Ashenvale,37.8,54.7
			.talk Ashenvale Flame Warden##25883
			.' Honor the flames of Ashenvale!|achieve 1023/1
		step
			goto Ashenvale,70,69.2
			.' Interact with gameobject: Horde Bonfire
			.' Desecrate the Horde's Ashenvale bonfire!|achieve 1029/1
		step
			goto Winterspring,59.8,35.4
			.' Interact with gameobject: Horde Bonfire
			.' Desecrate the Horde's Winterspring bonfire!|achieve 1029/12
		step
			goto Winterspring,62.6,35.4
			.talk Winterspring Flame Warden##25917
			.' Honor the Winterspring flame!|achieve 1023/11
		step
			goto Stonetalon Mountains,50.6,60.3
			.' Interact with gameobject: Horde Bonfire
			.' Desecrate the Horde's Stonetalon Mountains bonfire!|achieve 1029/8
		step
			goto Desolace,66.1,17.1
			.talk Desolace Flame Warden##25894
			.' Honor the Desolace flame!|achieve 1023/5
		step
			goto Desolace,26.2,77.2
			.' Interact with gameobject: Horde Bonfire
			.' Desecrate the Horde's Desolace bonfire!|achieve 1029/2
		step
			goto Feralas,46.8,43.7
			.talk Feralas Flame Warden##25899
			.' Honor the Feralas flame!|achieve 1023/7
		step
			goto Feralas,72.4,47.6
			.' Interact with gameobject: Horde Bonfire
			.' Desecrate the Horde's Feralas bonfire!|achieve 1029/5
		step
			goto Thousand Needles,42.4,52.7
			.' Interact with gameobject: Horde Bonfire
			.' Desecrate the Horde's Thousand Needles bonfire!|achieve 1029/11
		step
			goto Tanaris,49.8,27.1
			.' Interact with gameobject: Horde Bonfire
			.' Desecrate the Horde's Tanaris bonfire!|achieve 1029/9
		step
			goto Tanaris,52.8,29.4
			.talk Tanaris Flame Warden##25916
			.' Honor the Tanaris flame!|achieve 1023/9
		step
			goto Silithus,57.5,35.2
			.talk Silithus Flame Warden##25914
			.' Honor the Silithus flame!|achieve 1023/8
		step
			goto Silithus,46.5,44.9
			.' Interact with gameobject: Horde Bonfire
			.' Desecrate the Horde's Silithus bonfire!|achieve 1029/7
		step
			goto Dustwallow Marsh,61.8,40.5
			.talk Dustwallow Marsh Flame Warden##25897
			.' Honor the Dustwallow Marsh flame!|achieve 1023/6
		step
			goto Dustwallow Marsh,33.3,30.8
			.' Interact with gameobject: Horde Bonfire
			.' Desecrate the Horde's Dustwallow Marsh bonfire!|achieve 1029/4
		step
			goto Mulgore,52,60
			.' Interact with gameobject: Horde Bonfire
			.' Desecrate the Horde's Mulgore bonfire!|achieve 1029/6
		step
			goto Thunder Bluff,21.1,25.6
			.' Interact with gameobject: Flame of Thunder Bluff
			.collect Flame of Thunder Bluff##23180|achieve 1145 |future
		step
			.use Flame of Thunder Bluff##23180
			..accept Stealing Thunder Bluff's Flame##9325
		step
			goto Orgrimmar,46.9,38.7
			.' Interact with gameobject: Flame of Orgrimmar
			.collect Flame of Orgrimmar##23179|achieve 1145 |future
		step
			.use Flame of Orgrimmar##23179
			..accept Stealing Orgrimmar's Flame##9324
		step
			goto Durotar,52,47.2
			.' Interact with gameobject: Horde Bonfire
			.' Desecrate the Horde's Durotar bonfire!|achieve 1029/3
		step
			goto The Barrens,52.2,27.9
			.' Interact with gameobject: Horde Bonfire
			.' Desecrate the Horde's Barrens bonfire!|achieve 1029/10
		step
			goto Ironforge,63.8,25.3
			.talk Festival Loremaster##16817
			..turnin Stealing Orgrimmar's Flame##9324
			..turnin Stealing Thunder Bluff's Flame##9325
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Alliance Holidays Guide Achievements\\Midsummer Fire Festival\\King of the Fire Festival",[[
author danaton
next Ding80's Alliance Holidays Guide Achievements\\Midsummer Fire Festival\\Extinguishing and Flame Warden of Outland
description Contains a route for achievements: "King of the Fire Festival".
startlevel 80
		step
			goto Tirisfal Glades,62.3,66.9
			.collect Flame of the Undercity##23181|achieve 1145 |future
			.use Flame of the Undercity##23181
			..accept Stealing the Undercity's Flame##9326
		step
			goto Silvermoon City,69.3,43.1
			.collect Flame of Silvermoon##35568|achieve 1145 |future
			.use Flame of Silvermoon##35568
			..accept Stealing Silvermoon's Flame##11935
		step
			goto Thunder Bluff,21.1,25.6
			.' Interact with gameobject: Flame of Thunder Bluff
			.collect Flame of Thunder Bluff##23180|achieve 1145 |future
			.use Flame of Thunder Bluff##23180
			..accept Stealing Thunder Bluff's Flame##9325
		step
			goto Orgrimmar,46.9,38.7
			.' Interact with gameobject: Flame of Orgrimmar
			.collect Flame of Orgrimmar##23179|achieve 1145 |future
			.use Flame of Orgrimmar##23179
			..accept Stealing Orgrimmar's Flame##9324
		step
			goto Ironforge,63.8,25.3
			.talk Festival Loremaster##16817
			..turnin Stealing Orgrimmar's Flame##9324
			..turnin Stealing Thunder Bluff's Flame##9325
			..turnin Stealing the Undercity's Flame##9326
			..turnin Stealing Silvermoon's Flame##11935
		step
			goto Ironforge,63.8,25.3
			.talk Festival Loremaster##16817
			..accept A Thief's Reward##9365
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Alliance Holidays Guide Achievements\\Midsummer Fire Festival\\Extinguishing and Flame Warden of Outland",[[
author danaton
next Ding80's Alliance Holidays Guide Achievements\\Midsummer Fire Festival\\Burning Hot Pole Dance
description Contains a route for achievements: "Flame Warden of Outland", "Extinguishing Outland"
startlevel 80
		step
			goto Hellfire Peninsula,62.2,58.3
			.talk Hellfire Peninsula Flame Warden##25900
			.' Honor the Hellfire Peninsula flame!|achieve 1024/2
		step
			goto Hellfire Peninsula,57.2,41.8
			.' Interact with gameobject: Horde Bonfire
			.' Desecrate the Horde's Hellfire Peninsula bonfire!|achieve 1030/2
		step
			goto Netherstorm,31.2,62.7
			.talk Netherstorm Flame Warden##25913
			.' Honor the Netherstorm flame!|achieve 1024/4
		step
			goto Netherstorm,32.2,68.2
			.' Interact with gameobject: Horde Bonfire
			.' Desecrate the Horde's Netherstorm bonfire!|achieve 1030/4
		step
			goto Blade's Edge Mountains,50,58.8
			.' Interact with gameobject: Horde Bonfire
			.' Desecrate the Horde's Blade's Edge Mountains bonfire!|achieve 1030/1
		step
			goto Blade's Edge Mountains,41.4,65.9
			.talk Blade's Edge Flame Warden##25889
			.' Honor the Blade's Edge Mountains flame!|achieve 1024/1
		step
			goto Zangarmarsh,35.6,51.7
			.' Interact with gameobject: Horde Bonfire
			.' Desecrate the Horde's Zangarmarsh bonfire!|achieve 1030/7
		step
			goto Zangarmarsh,69.1,51.9
			.talk Zangarmarsh Flame Warden##25912
			.' Honor the Zangarmarsh flame!|achieve 1024/7
		step
			goto Nagrand,51.1,34
			.' Interact with gameobject: Horde Bonfire
			.' Desecrate the Horde's Nagrand bonfire!|achieve 1030/3
		step
			goto Nagrand,49.7,69.4
			.talk Nagrand Flame Warden##25903
			.' Honor the Nagrand flame!|achieve 1024/3
		step
			goto Terokkar Forest,52,43.1
			.' Interact with gameobject: Horde Bonfire
			.' Desecrate the Horde's Terokkar Forest bonfire!|achieve 1030/6
		step
			goto Terokkar Forest,54.1,55.6
			.talk Terokkar Forest Flame Warden##25907
			.' Honor the Terokkar flame!|achieve 1024/6
		step
			goto Shadowmoon Valley,33.6,30.3
			.' Interact with gameobject: Horde Bonfire
			.' Desecrate the Horde's Shadowmoon Valley bonfire!|achieve 1030/5
		step
			goto Shadowmoon Valley,39.7,54.7
			.talk Shadowmoon Valley Flame Warden##25905
			.' Honor the Shadowmoon Valley flame!|achieve 1024/5
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Alliance Holidays Guide Achievements\\Midsummer Fire Festival\\Burning Hot Pole Dance",[[
author danaton
description Contains a route for achievements: "Burning Hot Pole Dance"
startlevel 80
		step
			goto Stormwind City,48.9,72
			.talk Midsummer Supplier##26123
			.buy Mantle of the Fire Festival##23324|achieve 271
			.buy Sandals of Summer##34683|achieve 271
			.buy Vestment of Summer##34685|achieve 271
		step
			goto Stormwind City,50.48,73.1
			.' Equip Midsummer Set.
			.' Interact with gameobject: Ribbon Pole - duration: 60 seconds.
			.' Get "Burning Hot Pole Dance"|achieve 271	
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Alliance Holidays Guide Achievements\\Midsummer Fire Festival\\Torch Juggler",[[
author danaton
description Contains a route for achievements: "Torch Juggler"
startlevel 80
		step
			goto Stormwind City,48.9,72
			.talk Midsummer Supplier##26123
			.buy 40 Juggling Torch##34599|achieve 272
		step
			goto Dalaran
			.use Juggling Torch##34599
			.' Get "Torch Juggler"|achieve 272
]])

ZygorGuidesViewer.AllianceInstalled=true