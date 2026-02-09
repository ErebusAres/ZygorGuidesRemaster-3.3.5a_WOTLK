local name,addon = ...

local data={}
addon.LibRoverData = data

data.MapIDsByName = {
 ['Abyssal Depths']=614,  ['Ahn\'Qiraj']=766,  ['Ahn\'Qiraj: The Fallen Kingdom']=772,  ['Ahn\'kahet: The Old Kingdom']=522,  ['Alterac Valley']=401,  ['Arathi Basin']=461,  ['Arathi Highlands']=16,  ['Ashenvale']=43,  ['Auchenai Crypts']=722,  ['Azjol-Nerub']=533,  ['Azshara']=181,  ['Azuremyst Isle']=464,  ['Badlands']=17,  ['Baradin Hold']=752,  ['Black Temple']=796,  ['Blackfathom Deeps']=688,  ['Blackrock Caverns']=753,  ['Blackrock Depths']=704,  ['Blackrock Spire']=721,  ['Blackwing Descent']=754,  ['Blackwing Lair']=755,  ['Blade\'s Edge Mountains']=475,  ['Blasted Lands']=19,  ['Bloodmyst Isle']=476,  ['Borean Tundra']=486,  ['Burning Steppes']=29,  ['Crystalsong Forest']=510,  ['Dalaran']=504,  ['Darkshore']=42,  ['Darkmoon Island']=823,  ['Darnassus']=381,  ['Deadwind Pass']=32,  ['Deepholm']=640,  ['Desolace']=101,  ['Dire Maul']=699,  ['Dragon Soul']=824,  ['Dragonblight']=488,  ['Drak\'Tharon Keep']=534,  ['Dun Morogh']=27,  ['Durotar']=4,  ['Duskwood']=34,  ['Dustwallow Marsh']=141,  ['Kalimdor']=13, ['Eastern Kingdoms']=14, ['Eastern Plaguelands']=23,  ['Elwynn Forest']=30,  ['End Time']=820,  ['Eversong Woods']=462,  ['Eye of the Storm']=482,  ['Felwood']=182,  ['Feralas']=121,  ['Firelands']=800,  ['Ghostlands']=463,  ['Gilneas City']=611,  ['Gilneas']={545,679},  ['Gnomeregan']=691,  ['Grim Batol']=757,  ['Grizzly Hills']=490,  ['Gruul\'s Lair']=776,  ['Gundrak']=530,  ['Halls of Lightning']=525,  ['Halls of Origination']=759,  ['Halls of Reflection']=603,  ['Halls of Stone']=526,  ['Hellfire Peninsula']=465,  ['Hellfire Ramparts']=797,  ['Hillsbrad Foothills']=24,  ['Howling Fjord']=491,  ['Hour of Twilight']=819,  ['Hrothgar\'s Landing']=541,  ['Hyjal Summit']=775,  ['Icecrown Citadel']=604,  ['Icecrown']=492,  ['Ironforge']=341,  ['Isle of Conquest']=540,  ['Isle of Quel\'Danas']=499,  ['Karazhan']=799,  ['Kelp\'thar Forest']=610,  ['Kezan']=605,  ['Loch Modan']=35,  ['Lost City of the Tol\'vir']=747,  ['Magisters\' Terrace']=798,  ['Magtheridon\'s Lair']=779,  ['Mana-Tombs']=732,  ['Maraudon']=750,  ['Molten Core']=696,  ['Molten Front']=795,  ['Moonglade']=241,  ['Mount Hyjal']={606,683},  ['Mulgore']=9,  ['Nagrand']=477,  ['Naxxramas']=535,  ['Netherstorm']=479,  ['Northern Barrens']=11,  ['Northern Stranglethorn']=37,  ['Old Hillsbrad Foothills']=734,  ['Onyxia\'s Lair']=718,  ['Orgrimmar']=321,  ['Pit of Saron']=602,  ['Plaguelands: The Scarlet Enclave']=502,  ['Ragefire Chasm']=680,  ['Razorfen Downs']=760,  ['Razorfen Kraul']=761,  ['Redridge Mountains']=36,  ['Ruins of Ahn\'Qiraj']=717,  ['Ruins of Gilneas City']=685,  ['Ruins of Gilneas']=684,  ['Scarlet Monastery']=762,  ['OLD Scholomance']=763,  ['Searing Gorge']=28,  ['Serpentshrine Cavern']=780,  ['Sethekk Halls']=723,  ['Shadow Labyrinth']=724,  ['Shadowfang Keep']=764,  ['Shadowmoon Valley']=473,  ['Shattrath City']=481,  ['Shimmering Expanse']=615,  ['Sholazar Basin']=493,  ['Silithus']=261,  ['Silvermoon City']=480,  ['Silverpine Forest']=21,  ['Southern Barrens']=607,  ['Stonetalon Mountains']=81,  ['Stormwind City']=301,  ['Strand of the Ancients']=512,  ['Stranglethorn Vale']=689,  ['Stratholme']=765,  ['Sunwell Plateau']=789,  ['Swamp of Sorrows']=38,  ['Tanaris']=161,  ['Teldrassil']=41,  ['Tempest Keep']=782,  ['Terokkar Forest']=478,  ['The Arcatraz']=731,  ['The Bastion of Twilight']=758,  ['The Battle for Gilneas (Old City Map)']=677,  ['The Battle for Gilneas']=736,  ['The Black Morass']=733,  ['The Blood Furnace']=725,  ['The Botanica']=729,  ['The Cape of Stranglethorn']=673,  ['The Culling of Stratholme']=521,  ['The Deadmines']=756,  ['The Exodar']=471,  ['The Eye of Eternity']=527,  ['The Forge of Souls']=601,  ['The Hinterlands']=26,  ['The Lost Isles']=544,  ['The Maelstrom']={737,751},  ['The Mechanar']=730,  ['The Nexus']={520,803},  ['The Obsidian Sanctum']=531,  ['The Oculus']=528,  ['The Ruby Sanctum']=609,  ['The Shattered Halls']=710,  ['The Slave Pens']=728,  ['The Steamvault']=727,  ['The Stockade']=690,  ['The Stonecore']=768,  ['The Storm Peaks']=495,  ['The Temple of Atal\'Hakkar']=687,  ['The Underbog']=726,  ['The Violet Hold']=536,  ['The Vortex Pinnacle']=769,  ['Thousand Needles']=61,  ['Throne of the Four Winds']=773,  ['Throne of the Tides']=767,  ['Thunder Bluff']=362,  ['Tirisfal Glades']=20,  ['Tol Barad Peninsula']=709,  ['Tol Barad']=708,  ['Trial of the Champion']=542,  ['Trial of the Crusader']=543,  ['Twilight Highlands']={700,770},  ['Twin Peaks']=626,  ['Uldaman']=692,  ['Ulduar']=529,  ['Uldum']={720,748},  ['Un\'Goro Crater']=201,  ['Undercity']=382,  ['Utgarde Keep']=523,  ['Utgarde Pinnacle']=524,  ['Vashj\'ir']=613,  ['Vault of Archavon']=532,  ['Wailing Caverns']=749,  ['Warsong Gulch']=443,  ['Well of Eternity']=816,  ['Western Plaguelands']=22,  ['Westfall']=39,  ['Wetlands']=40,  ['Wintergrasp']=501,  ['Winterspring']=281,  ['Zangarmarsh']=467,  ['Zul\'Aman']=781,  ['Zul\'Drak']=496,  ['Zul\'Farrak']=686,  ['Zul\'Gurub']={697,793},
 ['The Wandering Isle']=808, ['Pandaria']=862, ['Shrine of Seven Stars']=905, ['Shrine of Two Moons']=903, ['Kun-Lai Summit']=809, ['The Jade Forest']=806, ['Vale of Eternal Blossoms']=811, ['Townlong Steppes']=810, ['Dread Wastes']=858, ['Valley of the Four Winds']=807, ['Krasarang Wilds']=857, ['The Veiled Stair']=873, ['Gate of the Setting Sun']=875, ['Scarlet Halls']=871, ['Scarlet Monastery']=874, ['Scholomance']=898, ['Shado-Pan Monastery']=877, ['Siege of Niuzao Temple']=887, ['Stormstout Brewery']=876, ['Temple of the Jade Serpent']=867,['Unga Ingoo']=882, ['Brewmoon Festival']=884, ['A Brewing Storm']=878, ['Crypt of Forgotten Kings']=900, ['Proving Grounds']=899,
 ['Greenstone Village']=880, ['Temple of Kotmogu']=881, ['Assault on Zan\'vess']=883, ['Mogu\'shan Palace']=885, ['Terrace of Endless Spring']=886, ['Mogu\'shan Vaults']=896, ['Heart of Fear']=897, ['A Little Patience'] = 912, ['Dagger in the Dark'] = 914,
 ['Coldridge Valley'] = 866, ['Northshire'] = 864, ['Shadowglen']=888, ['Valley of Trials']=889, ['Camp Narache']=890, ['Echo Isles']=891, ['Deathknell']=892, ['Sunstrider Isle']=893, ['Ammen Vale']=894, ['New Tinkertown']=895,
 ['Silvershard Mines']=860,  ['Deeprun Tram']=922, ['Brawl\'gar Arena']=925, ['Isle of Thunder']=928, ['Isle of Giants']=929,['Throne of Thunder']=930,['Thunder King\'s Citadel']=934,['Deepwind Gorge']=935,['The Secrets of Ragefire']=938,['Battle on the High Seas']=940, ["Timeless Isle"]=951, ["Siege of Orgrimmar"]=953, ["Celestial Tournament"]=955,
 }


data.basenodes = {}

data.basenodes.setup = {
	--"REGION fuselightbtspre Badlands 79.1,31.6 <150",
}
	--[[
		YE OLDE HELP TEXT

		Okay, to clarify, there's multiple ways to write a map link now. It's a mess, but it works.

		The first, simplest way, is two nodes linked, written in plain text (let's hope they're accessible by some means):
			"First Zone/2 11.22,33.44 -x- Second Zone/3 55.66,77.88",

		The "-x-" means it's a crossing, two-way. You can use "-to-" to make a one-way link.


		NODE NAMES:

		Adding @something after the node coordinates gives the node a name, for later reuse.
			"Stormwind 11.22,33.44 -x- Elwynn Forest 55.66,77.88 @stormgate",
			"Elwynn 77.77,66.66 -x- @stormgate",

		You can also use @+ to indicate the last node created or mentioned, whether it was named or not.
			"Stormwind 11.22,33.44 -x- Elwynn Forest 55.66,77.88",
			"@+ -x- Elwynn 77.77,66.66",

		This allows for easy chaining of nodes.


		ONE NODE?

		You can create just one node:
			"Solitary 11.1,22.2"

		This only makes sense if you @+ link to it later, or give it an explicit @name and refer to that.


		ADDITIONAL NODE DATA:

		Writing <field:value> after a node's coordinates assigns additional data.
			"Stormwind 11.1,22.2 <title:Watch out, dog poo> <radius:5>"

		Data fields include (among others):
			'title' to caption a node,
			'radius' to set the node's player-detection radius,
			'region' to assign a node to a special region,
			'nofly' set to 1 means the node cannot be flown to,
			'dark' set to 1 means the node can only be seen by the player from a small distance, but suffers no penalty when chained between other nodes


		ADDITIONAL LINK DATA:

		Writing {field:value} after both nodes assigns data to their link:
			"Stormwind 11.1,22.2 -x- Elwynn Forest 55.5,66.6 {cost:999}"   -- this is a very time-costly connection


		ADVANCED FORMAT:

		If that's not enough, you can use a "raw" format to write node links:
			{ "@+" , "Orgrimmar/1 11.1,22.2" , template="portalauto", faction="H", cost=123 }

		Within that, you can go even deeper and write the node(s) in raw mode, too:
			{ "@+" , {"Orgrimmar/1 11.1,22.2",title="Something in Orgri",region="whatever"} , oneway=1 }

		Very advanced, messy, "fake zone"-based mapping (Maraudon the Zone of Nightmares) makes extensive use of that.

	--]]


	--[[
		REGIONS:

		These define explicit connections between floors in certain maps.
		Use the usual map node notation.
		Just adding a map here and providing notes is enough for them to work.
		Note Scarlet Monastery - an empty entry says that direct travel between floors is PROHIBITED.
	--]]

data.basenodes.MapsWithExplicitFloors = {
		["Orgrimmar"] = {
			-- The middle of Cleft is a region with one point in it so that that point will be only way into the region.
			-- The points connected the point into the region are all dark points so that the tunnel path must be followed to enter/exit.
			-- Data could be condensed but seems more clear this way than jammed into a few lines.
			-- Region is needed because the Portal and dungeon entrances are within the region and should not be beelined to.

			-- 3-way west tunnel
			"Orgrimmar/1 46.2,66.9 @cleft_sw_en <title:Cleft of Shadow entrance>",
			"Orgrimmar/2 35.1,91.6 @cleft_sw_ex <title:Cleft of Shadow exit> <radius:10> <dark:1>",

			"Orgrimmar/1 41.8,60.9 @cleft_nw_en <title:Cleft of Shadow entrance>",
			"Orgrimmar/2 22.7,69.5 @cleft_nw_ex <title:Cleft of Shadow exit> <radius:10> <dark:1>",

			"Orgrimmar/2 33.9,81.5 @cleft_w_tun <title:Cleft of Shadow tunnel> <radius:10> <dark:1>",

			"@cleft_sw_en",
			"@+ -x- @cleft_sw_ex",
			"@+ -x- @cleft_w_tun",
			"@+ -x- Orgrimmar/2 41.8,66.1 <radius:25> <region:cleftofshadow>",

			"@cleft_nw_en",
			"@+ -x- @cleft_nw_ex",
			"@+ -x- @cleft_w_tun",
			-- "@+ -x- Orgrimmar/2 41.8,66.1 <radius:25> <region:cleftofshadow>", gathered from above... This is to a node within the region.

			-- Exit to the right
			"Orgrimmar/1 54.98,51.28 @cleft_e_en <title:Cleft of Shadow entrance>",
			"Orgrimmar/2 80.5,16.3 @cleft_e_ex <title:Cleft of Shadow exit> <radius:10> <dark:1>",

			"Orgrimmar/2 72.6,15.7 @cleft_e_tun <title:Cleft of Shadow tunnel> <radius:10> <dark:1>",

			"@cleft_e_en",
			"@+ -x- @cleft_e_ex",
			"@+ -x- @cleft_e_tun",
			"@+ -x- Orgrimmar/2 65.61,37.98 <radius:25> <region:cleftofshadow>",
		},
		["Dalaran"] = {
			 --Underbelly, a few entries. Cost to adjust which gets used for each part of the city.
			"Dalaran/1 36.3,44.8 <radius:5> -x- Dalaran/1 33.6,45.63 <region:underbelly> <radius:5> {template:tunnel}",
			"@+ -x- Dalaran/1 38.8,45.1 <region:underbelly> ",
			"@+ -x- Dalaran/2 34.3,43.3",
			"Dalaran/1 59.76,47.37 <radius:5> -x- Dalaran/1 61.2,49.0 <region:underbelly> <radius:5> {template:tunnel} {cost:4}",
			"@+ -x- Dalaran/1 38.8,45.1 <region:underbelly> ",
			"@+ -x- Dalaran/2  64.4,48.6",
			"Dalaran/1 48.1,32.4 <radius:2> <title:Dalaran Well> -to- Dalaran/2 48.2,32.4 {cost:8}",

			--[[
			"Dalaran/1 34.89,45.42 <title:Western sewer entrance> -x- Dalaran/1 31.59,45.56 <onlyhardwire_qq:1> <title:Western sewer entrance midpoint> <region:underbelly> {cost:0}",
			"@+ -x- Dalaran/2 34.28,43.57 <title:Western sewer exit> {cost:0}",
			"Dalaran/1 60.28,47.77 <title:Eastern sewer entrance> -x- Dalaran/1 62.68,51.37 <onlyhardwire_qq:1> <title:Eastern sewer entrance midpoint> <region:underbelly> {cost:0}",
			"@+ -x- Dalaran/2 64.16,48.00 <title:Eastern sewer exit> {cost:0}",
			--]]
		},
		[762] = { -- Scarlet Monastery - has to stay numeric! - this is funny, yes, it should be empty: floors are wings, inaccessible from each other. Rely on normal entrance/exit paths.
		},

		--MicroDungeons
		["Dun Morogh"] = {
			"Dun Morogh/0 48.9,52.6 -x- Dun Morogh/7 60.8,92.0",  -- Grizzled Den
			"Dun Morogh/0 42.7,64.1 -x- Dun Morogh/6 60.6,11.0",  -- Coldridge Pass
			"Dun Morogh/0 41.1,70.0 -x- Dun Morogh/6 38.0,91.1", -- Coldridge Pass
			"Dun Morogh/10 79.5,84.2 -x- New Tinkertown/0 32.6,37.0", --Gnome Starter
		},
		["Echo Isles"] = {
			"Echo Isles/0 59.3,21.8 -x- Echo Isles/9 53.9,80.5 {template:cave}",
		},
		--[[
		["Arathi Highlands"] = {
			"Arathi Highlands/0 78.3,37.0 -x- Arathi Highlands/0 78.5,36.6 <indoors:Drywhisker Gorge> {template:cave}",
			"Arathi Highlands/0 48.1,79.7 -x- Arathi Highlands/0 48.5,80.1 <indoors:Boulderfist Hall> {template:cave}",
			"Arathi Highlands/0 28.9,45.7 -x- Arathi Highlands/0 28.3,45.2 <indoors:Boulderfist Outpost> {template:cave}",
			"Arathi Highlands/0 22.5,60.7 -x- Arathi Highlands/0 23.1,60.7 <indoors:Boulderfist Outpost> {template:tomb}",
		},
		["The Hinterlands"] = {
			"The Hinterlands/0 57.5,39.2 -x- The Hinterlands/0 57.6,39.9 <indoors:Skulk Rock> {template:cave}",
			"The Hinterlands/0 58.6,79.1 -x- The Hinterlands/0 58.3,79.6 <indoors:Jintha'Alor> {template:cave}",
		},
		["Wetlands"] = {
			"Wetlands/0 52.4,62.9 -x- Wetlands/0 51.9,62.7 <indoors:Thelgen Rock> {template:cave}",
		},
		--]]
		["Loch Modan"] = {
			--"Loch Modan/0 35.1,65.5 -x- Loch Modan/0 35.5,65.0 <indoors:Grizzlepaw Ridge> {template:cave}",
			--{"REGION",name="silverstreammine",mapzone="Loch Modan",zonematch="*/*/*/Silver Stream Mine",indoors=1,nofly=1}, "Loch Modan/0 35.4,18.9 -x- Loch Modan/0 35.5,19.5 <region:silverstreammine> {template:mine}",
			"Loch Modan/0 35.4,18.9 -x- Loch Modan/0 35.5,19.5 <indoors:Silver Stream Mine> {template:mine}",
			"Loch Modan/0 70.5,75.6 -x- Loch Modan/0 71.3,76.5 <indoors:Ironwing Cavern> {template:cave}",
			--"Loch Modan/0 74.6,19.9 -x- Loch Modan/0 75.4,19.0 <indoors:Mo'grosh Stronghold> {template:cave}",
		},
		--[[
		["Redridge Mountains"] = {
			"Redridge Mountains/0 21.7,28.3 -x- Redridge Mountains/0 21.1,27.4 <indoors:Rethban Caverns> {template:cave}",
			"Redridge Mountains/0 31.3,9.3 -x-Redridge Mountains/0 30.8,9.4 <indoors:Render's Rock> {template:cave}",
		},
		["Duskwood"] = {
			"Duskwood/0 34.1,77.2 -x- Duskwood/0 34.4,77.7 <indoors:Vul'Gol Ogre Mound> {template:cave}",
		},
		["Feralas"] = {
			"Feralas/0 60.7,32.3 -x- Feralas/0 60.5,32.3 <indoors:Dire Maul> {template:cave}",
		},
		["Icecrown"] = {
			"Icecrown/0 51.9,33.0 -x- Icecrown/0 51.9,31.9 <indoors:Aldur'thar: The Desolation Gate> {template:cave}",
			"Icecrown/0 9.5,44.3 -x- Icecrown/0 9.5,45.5 <indoors:The Crimson Cathedral> {template:building}",
			"Icecrown/0 9.2,49.4 -x- Icecrown/0 9.3,48.6 <indoors:The Hidden Hollow> {template:building}",
		},
		["The Storm Peaks"] = {
			"The Storm Peaks/0 40.4,78.3 -x- The Storm Peaks/0 40.4,77.8 <indoors:Crystalweb Cavern> {template:cave}",
		},
		["Badlands"] = {
			"Badlands/0 50.4,48.4 -x- Badlands/0 50.4,49.1 <indoors:Tomb of the Watchers> {template:tomb}",
			"Badlands/0 11.9,71.5 -x- Badlands/0 11.9,72.3 <indoors:Dustbelch Grotto> {template:cave}",
		},
		["Northern Stranglethorn"] = {
			"Northern Stranglethorn/0 59.1,18.6 -x- Northern Stranglethorn/0 59.3,18.5 <indoors:The Stockpile> {template:cave}",
			"Northern Stranglethorn/0 66.5,49.1 -x- Northern Stranglethorn/0 67.0,49.1 <indoors:Mosh'Ogg Ogre Mound> {template:cave}",
		},
		["The Cape of Stranglethorn"] = {
			"The Cape of Stranglethorn/0 65.0,29.7 -x- The Cape of Stranglethorn/0 65.3,29.5 <indoors:Crystalvein Mine> {template:mine}",
		},
		["Searing Gorge"] = {
			"Searing Gorge/0 21.4,36.0 -x- Searing Gorge/0 20.7,36.0 <indoors:Firewatch Ridge> {template:mine}",
		},
		["Swamp of Sorrows"] = {
			"Swamp of Sorrows/0 66.5,73.8 -x- Swamp of Sorrows/0 66.0,76.1 <indoors:Stagalbog Cave> {template:cave}",
		},
		["Azuremyst Isle"] = {
			"Azuremyst Isle/0 66.5,73.8 -x- Azuremyst Isle/0 66.0,76.1 <indoors:Stagalbog Cave> {template:cave}",
		},
		["Desolace"] = {
			"Desolace/0 66.5,73.8 -x- Desolace/0 66.0,76.1 <indoors:Bolgan's Hole> {template:cave}",
			"Desolace/0 38.4,90.7 -x- Desolace/0 38.7,91.7 <indoors:Bolgan's Hole> {template:cave}",
		},
		["Silithus"] = {
			"Silithus/0 58.6,78.3 -x- Silithus/0 58.1,78.8 <indoors:Hive'Regal> {template:cave}",
		},
		["Dustwallow Marsh"] = {
			"Dustwallow Marsh/0 38.8,65.7 -x- Dustwallow Marsh/0 38.3,66.3 <indoors:The Den of Flame> {template:cave}",
		},
		["Un'Goro Crater"] = {
			"Un'Goro Crater/0 63.8,16.4 -x- Un'Goro Crater/0 64.4,16.3 <indoors:Fungal Rock> {template:cave}",
		},
		["Terokkar Forest"] = {
			"Terokkar Forest/0 47.0,55.5 -x- Terokkar Forest/0 47.0,55.1 <indoors:Tomb of Lights> {template:cave}",
			"Terokkar Forest/0 31.3,52.6 -x- Terokkar Forest/0 31.1,52.7 <indoors:Shadow Tomb> {template:cave}",
		},
		["Felwood"] = {
			"Felwood/0 55.4,18.5 -x- Felwood/0 56.0,19.1 <indoors:Irontree Cavern> {template:cave}",
			"Felwood/0 64.2,10.4 -x- Felwood/0 64.5,9.6 <indoors:Timbermaw Hold> {template:cave}",
		},
		["Southern Barrens"] = {
			"Southern Barrens/0 40.3,77.6 -x- Southern Barrens/0 40.3,77.2 <indoors:Frazzlecraz Motherlode> {template:mine}",
		},
		["Northern Barrens"] = {
			"Northern Barrens/0 66.3,51.9 -x- Northern Barrens/0 65.8,52.6 <indoors:Northern Barrens Cave> {template:cave}",
			"Northern Barrens/0 65.5,12.0 -x- Northern Barrens/0 65.2,11.9 <indoors:Boulder Lode Mine> {template:cave}",
		},
		["Blade's Edge Mountains"] = {
			"Blade's Edge Mountains/0 42.4,83.3 -x- Blade's Edge Mountains/0 42.5,83.9 <indoors:Draenethyst Mine> {template:mine}",
		},
		["Nagrand"] = {
			"Nagrand/0 26.8,23.3 -x- Nagrand/0 27.2,23.9 <indoors:Warmaul Hill> {template:mine}",
			"Nagrand/0 27.7,11.2 -x- Nagrand/0 27.1,11.9 <indoors:Warmaul Hill> {template:mine}",
		},
		["Mount Hyjal"] = {
			"Mount Hyjal/0 52.4,17.4 -x- Mount Hyjal/0 52.8,17.3 <indoors:Hyjal Barrow Dens> {template:mine}",
			"Mount Hyjal/0 27.1,35.9 -x- Mount Hyjal/0 26.8,36.6 <indoors:Gar'gol's Hovel> {template:mine}",
		},
		["Netherstorm"] = {
			"Netherstorm/0 42.4,83.3 -x- Netherstorm/0 42.5,83.9 <indoors:Manaforge B'naar> {template:building}",
		},
		["Kelp'thar Forest"] = {
			"Kelp'thar Forest/0 53.9,34.3 -x- Kelp'thar Forest/0 54.9,32.8 <indoors:Smuggler's Scar> {template:cave}",
			"Kelp'thar Forest/0 60.6,64.7 -x- Kelp'thar Forest/0 61.6,63.2 <indoors:Deepmist Grotto> {template:cave}",
		},
		["Shimmering Expanse"] = {
			"Shimmering Expanse/0 60.6,19.2 -x- Kelp'thar Forest/0 48.6,72.6 <indoors:Damplight Chamber> {template:cave}",
			"Shimmering Expanse/0 50.3,38.5 -x- Shimmering Expanse/0 50.1,39.2 <indoors:Silver Tide Hollow> {template:cave}",
			"Shimmering Expanse/0 46.8,57.5 -x- Shimmering Expanse/0 47.6,57.5 <indoors:Tranquil Wash> {template:cave}",
		},
		["Howling Fjord"] = {
			"Howling Fjord/0 56.6,49.8 -x- Howling Fjord/0 56.6,48.9 <indoors:Utgarde Catacombs> {template:cave}",
			"Howling Fjord/0 34.7,12.9 -x- Howling Fjord/0 35.0,12.6 <indoors:The Walking Halls> {template:cave}",
		},
		["Hellfire Peninsula"] = {
			"Hellfire Peninsula/0 51.4,31.8 -x- Hellfire Peninsula/0 51.6,31.7 <indoors:Thrallmar Mine> {template:mine}",
		},
		["The Jade Forest"] = {
			"The Jade Forest/0 31.4,21.7 -x- The Jade Forest/0 31.8,22.0 <indoors:Nook of Konk> {template:mine}",
			"The Jade Forest/0 27.2,31.7 -x- The Jade Forest/0 27.4,32.3 <indoors:Cave of Words> {template:mine}",
			"The Jade Forest/0 66.2,82.2 -x- The Jade Forest/0 66.4,82.2 <indoors:Den of Sorrow> {template:mine}",
		},
		["Valley of the Four Winds"] = {
			"Valley of the Four Winds/0 86.7,28.2 -x- Valley of the Four Winds/0 86.2,28.0 <indoors:Virmen Nest> {template:mine}",
			"Valley of the Four Winds/0 69.0,40.3 -x- Valley of the Four Winds/0 69.1,39.4 <indoors:The Twisted Warren> {template:mine}",
			"Valley of the Four Winds/0 43.4,34.6 -x- Valley of the Four Winds/0 43.5,35.7 <indoors:Springtail Warren> {template:mine}",
			"Valley of the Four Winds/0 53.6,76.4 -x- Valley of the Four Winds/0 53.6,75.5 <indoors:The Dark Hollow> {template:mine}",
			"Valley of the Four Winds/0 21.8,74.4 -x- Valley of the Four Winds/0 22.1,74.4 <indoors:Lair of the Beast> {template:cave}",
		},
		["Krasarang Wilds"] = {
			"Krasarang Wilds/0 40.4,53.3 -x- Krasarang Wilds/0 40.4,53.9 <indoors:Temple of the Red Crane> {template:building}",
			"Krasarang Wilds/0 46.1,79.3 -x- Krasarang Wilds/0 46.1,80.5 <indoors:Mortbreath Grotto> {template:cave}",
		},
		["Townlong Steppes"] = {
			"Townlong Steppes/0 66.6,83.8 -x- Townlong Steppes/0 67.0,83.4 <indoors:Dusklight Hollow> {template:cave}",
		},
		["Dread Wastes"] = {
			"Dread Wastes/0 72.8,28.0 -x- Dread Wastes/0 73.1,27.8 <indoors:Terrace of Gurthan> {template:cave}",
			"Dread Wastes/0 66.7,63.5 -x- Dread Wastes/0 66.8,64.1 <indoors:Mistblade Den> {template:cave}",
			"Dread Wastes/0 58.8,59.6 -x- Dread Wastes/0 58.4,59.3 <indoors:Coldbite Burrow> {template:cave}",
			"Dread Wastes/0 46.2,53.4 -x- Dread Wastes/0 46.5,52.8 <indoors:Amberglow Hollow> {template:cave}",
			"Dread Wastes/0 53.6,15.9 -x- Dread Wastes/0 53.5,14.7 <indoors:The Amber Vault> {template:cave}",
			"Dread Wastes/0 45.0,15.5 -x- Dread Wastes/0 44.7,16.1 <indoors:Kor'vess> {template:cave}", --1
			"Dread Wastes/0 43.1,14.2 -x- Dread Wastes/0 43.1,13.6 <indoors:Kor'vess> {template:cave}", --2
			"Dread Wastes/0 47.3,16.8 -x- Dread Wastes/0 46.5,16.8 <indoors:Morrowchamber> {template:cave}",
			"Dread Wastes/0 29.9,31.4 -x- Dread Wastes/0 30.5,31.9 <indoors:The Amber Hibernal> {template:cave}",
		},
		["Kun-Lai Summit"] = {
			"Kun-Lai Summit/0 55.8,46.3 -x- Kun-Lai Summit/0 56.0,45.8 <indoors:Tomb of Shadows> {template:tomb}",
			"Kun-Lai Summit/0 53.4,49.2 -x- Kun-Lai Summit/0 53.3,49.5 <indoors:Tomb of Secrets> {template:tomb}",
			"Kun-Lai Summit/0 63.9,50.2 -x- Kun-Lai Summit/0 63.9,49.5 <indoors:Path of Conquerors> {template:cave}",
			"Kun-Lai Summit/0 37.6,78.1 -x- Kun-Lai Summit/0 37.1,77.7 <indoors:Kota Peak> {template:cave}",
		},
		["The Veiled Stair"] = {
			"The Veiled Stair/0 40.4,53.3 -x- The Veiled Stair/0 40.4,53.9 <indoors:Hatescale Burrow> {template:cave}",
		},
		["Ghostlands"] = {
			"Ghostlands/0 31.6,74.1 -x- Ghostlands/0 31.8,73.0 <indoors:Deatholme> {template:tomb}", --Crypt inside Deathholme
		},
		["Uldum"] = {
			"Uldum/0 52.8,45.5 -x- Uldum/0 53.1,44.9 <indoors:Vir'naal Dam> {template:building}",
			"Uldum/0 52.1,40.1 -x- Uldum/0 51.5,40.1 <indoors:Murkdeep Cavern> {template:cave}",
			"Uldum/0 36.9,20.8 -x- Uldum/0 36.4,20.4 <indoors:Chamber of the Moon> {template:tomb}",
		},
		["Deepholm"] = {
			"Deepholm/0 69.3,68.2 -x- Deepholm/0 69.7,67.8 <indoors:Lower Silvermarsh> {template:cave}",
			"Deepholm/0 58.1,25.3 -x- Deepholm/0 59.7,26.4 <indoors:Avalancha's Vault> {template:cave}",
			"Deepholm/0 68.7,28.2 -x- Deepholm/0 68.6,29.5 <indoors:Fungal Deep> {template:cave}",
		},
		["Silverpine Forest"] = {
			"Silverpine Forest/0 35.8,14.1 -x- Silverpine Forest/0 35.5,13.1 <indoors:The Skittering Dark> {template:cave}",
		},
		["Twilight Highlands"] = {
			"Twilight Highlands/0 36.4,38.1 -x- Twilight Highlands/0 35.9,37.9 <indoors:The Gullet> {template:cave}",
			"Twilight Highlands/0 18.7,16.6 -x- Twilight Highlands/0 18.1,16.8 <indoors:Vermillion Redoubt> {template:cave}",
			"Twilight Highlands/0 55.8,83.9 -x- Twilight Highlands/0 55.1,83.3 <indoors:Obsidian Lair> {template:cave}",
			"Twilight Highlands/0 40.1,71.2 -x- Twilight Highlands/0 39.5,71.6 <indoors:Den of the Disciples> {template:cave}",
		},
		["Hillsbrad Foothills"] = {
			"Hillsbrad Foothills/0 33.5,72.0 -x- Hillsbrad Foothills/0 33.8,71.8 <indoors:Azurelode Mine> {template:mine}",
			"Hillsbrad Foothills/0 46.6,54.4 -x- Hillsbrad Foothills/0 46.1,53.9 <indoors:Darrow Hill> {template:cave}",
		},
		["Thousand Needles"] = {
			"Thousand Needles/0 66.1,86.2 -x- Thousand Needles/0 65.8,86.3 <indoors:Sunken Dig Site> {template:cave}",
			"Thousand Needles/0 91.7,82.9 -x- Thousand Needles/0 92.3,83.3 <indoors:The Admiral's Den> {template:cave}",
			"Thousand Needles/0 43.9,37.6 -x- Thousand Needles/0 44.2,36.7 <indoors:Splithoof Hold> {template:cave}",
		},
		["Stonetalon Mountains"] = {
			"Stonetalon Mountains/0 72.1,61.1 -x- Stonetalon Mountains/0 72.2,61.7 <indoors:Windshear Mine> {template:mine}",
			"Stonetalon Mountains/0 72.0,78.5 -x- Stonetalon Mountains/0 72.3,78.1 <indoors:The Deep Reaches> {template:mine}",
			"Stonetalon Mountains/0 66.5,60.4 -x- Stonetalon Mountains/0 66.3,61.2 <indoors:The Deep Reaches> {template:mine}",
			"Stonetalon Mountains/0 62.4,89.5 -x- Stonetalon Mountains/0 61.9,89.1 <indoors:Boulderslide Cavern> {template:cave}",
		},
		["Darkshore"] = {
			"Darkshore/0 56.9,31.0 -x- Darkshore/0 57.0,31.6 <indoors:Cliffspring Hollow> {template:cave}",
			"Darkshore/0 44.6,48.7 -x- Darkshore/0 45.4,48.5 <indoors:Moontouched Den> {template:cave}",
			"Darkshore/0 47.0,56.1 -x- Darkshore/0 47.4,55.9 <indoors:Earthshatter Cavern> {template:cave}",
			"Darkshore/0 46.4,83.7 -x- Darkshore/0 46.7,83.9 <indoors:Blackwood Den> {template:cave}",
			"Darkshore/0 33.6,83.6 -x- Darkshore/0 33.1,83.7 <indoors:Nazj'vel> {template:cave}",
		},
		["Ashenvale"] = {
			"Ashenvale/0 78.4,81.5 -x- Ashenvale/0 78.3,81.8 <indoors:Demon Fall Ridge> {template:cave}",
			"Ashenvale/0 75.9,75.4 -x- Ashenvale/0 76.2,75.4 <indoors:The Dor'Danil Barrow Den> {template:cave}",
			"Ashenvale/0 38.3,30.5 -x- Ashenvale/0 38.7,30.6 <indoors:Thistlefur Hold> {template:cave}",
		},
		["Blasted Lands"] = {
			"Blasted Lands/0 60.8,29.4 -x- Blasted Lands/0 61.0,29.2 <indoors:Serpent's Coil> {template:cave}",
			"Blasted Lands/0 61.4,62.5 -x- Blasted Lands/0 61.4,61.9 <indoors:Bloodwash Cavern> {template:cave}",
			"Blasted Lands/0 41.9,33.5 -x- Blasted Lands/0 41.2,33.3 <indoors:Dreadmaul Furnace> {template:cave}",
			"Blasted Lands/0 45.0,31.2 -x- Blasted Lands/0 45.1,29.7 <indoors:Rise of the Defiler> {template:cave}",
			"Blasted Lands/0 45.7,38.7 -x- Blasted Lands/0 46.5,39.2 <indoors:Dreadmaul Post> {template:cave}",
			"Blasted Lands/0 50.4,10.4 -x- Blasted Lands/0 51.0,9.7 <indoors:Nethergarde Mines> {template:mine}",
		},
		["Winterspring"] = {
			"Winterspring/0 67.5,54.2 -x- Winterspring/0 67.8,54.0 <indoors:Ice Thistle Hills> {template:cave}",
			"Winterspring/0 47.1,40.1 -x- Winterspring/0 47.0,40.2 <indoors:Ban'Thallow Barrow Den> {template:cave}",
			"Winterspring/0 55.0,64.2 -x- Winterspring/0 54.6,64.3 <indoors:Mazthoril> {template:cave}",
			"Winterspring/0 21.3,46.1 -x- Felwood/0 67.3,7.8 <indoors:Timbermaw Hold> {template:cave}",
		},
		["Burning Steppes"] = {
			"Burning Steppes/0 71.1,38.1 -x- Burning Steppes/0 70.0,38.8 <indoors:The Skull Warren> {template:cave}",
			"Burning Steppes/0 64.9,46.8 -x- Burning Steppes/0 65.7,46.0 <indoors:Firegut Furnace> {template:cave}",
		},
		["Western Plaguelands"] = {
			"Western Plaguelands/0 54.3,80.1 -x- Western Plaguelands/0 54.2,80.5 <indoors:Sorrow Hill Crypt> {template:mine}",
			"Western Plaguelands/0 45.8,12.1 -x- Western Plaguelands/0 45.8,11.5 <indoors:Hearthglen> {template:mine}",
			"Western Plaguelands/0 64.7,38.7 -x- Western Plaguelands/0 64.4,38.4 <indoors:Hearthglen> {template:mine}",
		},
		["Eastern Plaguelands"] = {
			"Eastern Plaguelands/0 4.3,36.2 -x- Eastern Plaguelands/0 4.6,35.7 <indoors:Terrorweb Tunnel> {template:cave}",
			"Eastern Plaguelands/0 24.2,78.5 -x- Eastern Plaguelands/0 24.2,79.1 <indoors:The Undercroft> {template:cave}",
			"Eastern Plaguelands/0 77.3,50.8 -x- Eastern Plaguelands/0 77.6,50.8 <indoors:Crypt> {template:cave}",
		},
		--]]
		["Durotar"] = {
			"Durotar/0 83.2,53.6 -x- Durotar/12 54.9,9.5", -- Skull Rock
			"Valley of Trials/0 53.0,21.3 -x- Durotar/8 72.2,89.7", -- Burning Blade Coven
			"Durotar/10 41.9,30.9 -x- Durotar/11 32.4,30.3", -- Great Hall
			"Durotar/0 59.0,58.3 -x- Durotar/10 32.0,51.8", -- Tiragarde Keep
			"Durotar/0 52.8,28.6 -x- Durotar/19 50.3,90.5", -- Dustwind Cave
		},
		["Northern Barrens"] = {
			"Northern Barrens/0 38.9,69.2 -x- Northern Barrens/20 22.5,88.6 {template:cave}", -- Wailing Caverns Cave Entrance
		},
		["Desolace"] = {
			"Desolace/0  28.9,62.6 -x- Desolace/21 24.6,43.5 {template:building}", -- Wicked Grotto **Only Way to Get To Felspore Cavern**
			"Desolace/21 29.5,62.5 -x- Desolace/22 47.4,88.1", -- Felspore Cavern
			"Desolace/21 27.7,33.7 -x- Desolace/22 45.5,78.2", -- Felspore Cavern
		},
		["Mulgore"] = {
			"Mulgore/0 34.8,61.3 -x- Mulgore/6 76.9,56.3", -- Palemane Rock
			"Mulgore/0 60.8,47.4 -x- Mulgore/7 39.6,90.7 {template:mine}", -- The Venture Co. Mine
			"Mulgore/0 59.3,36.6 -x- Mulgore/7 30.4,14.6 {template:mine}", -- The Venture Co. Mine
			"Mulgore/0 59.2,44.0 -x- Mulgore/7 28.6,65.2 {template:mine}", -- The Venture Co. Mine
		},
		["Westfall"] = {
			"Westfall/0 43.8,73.4 -x- Westfall/17 69.3,23.7 {template:building}", -- Deadmines Cave Entrance (Moonbrook)
			"Westfall/0 44.5,24.7 -x- Westfall/5 41.1,94.1 {template:mine}", -- Jangolode Mine
		},
		["Silithus"] = {
			"Silithus/0 70.4,15.9 -x- Silithus/13 15.1,70.0 {template:cave}", -- Twilight's Run
		},
		["Elwynn Forest"] = {
			"Elwynn Forest/0 61.7,53.7 -x- Elwynn Forest/19 48.9,90.1 {template:mine}", --Jaspermind
			"Elwynn Forest/0 38.9,82.3 -x- Elwynn Forest/1 39.9,88.0 {template:mine}", --Fargomine
			"Elwynn Forest/1 55.4,36.3 -x- Elwynn Forest/2 56.3,26.0", --Fargomine Lower
			"Elwynn Forest/0 38.5,81.5 -x- Elwynn Forest/2 35.2,68.4 {template:mine}", --Fargomine Lower
		},
		["Tanaris"] = {
			"Tanaris/0 35.3,42.6 -x- Tanaris/15 55.9,36.4 {template:tunnel}", -- The Noxious Lair
			"Tanaris/0 34.8,41.6 -x- Tanaris/15 50.4,25.1 {template:tunnel}", -- The Noxious Lair
			"Tanaris/0 34.5,42.4 -x- Tanaris/15 47.5,33.6 {template:tunnel}", -- The Noxious Lair
			"Tanaris/0 54.5,69.8 -x- Tanaris/16 42.2,39.4 {template:tunnel}", -- The Gaping Chasm
			"Tanaris/0 55.5,68.2 -x- Tanaris/16 51.5,24.3 {template:tunnel}", -- The Gaping Chasm
			{ {"Tanaris/0 64.9,50.0",radius=20,actiontitle=function(self,fromnode,tonode) if tonode==self.border then return "Enter Caverns of Time" else return "Exit Caverns of Time" end end},
			   {"Tanaris/17 53.3,29.4",actiontitle=function(self,fromnode,tonode) if fromnode and fromnode.m==self.m and fromnode.f==self.f then return "Go up the spiral tunnel" end end, actionicon=function(self,fromnode,tonode) if fromnode and fromnode.m==self.m and fromnode.f==self.f then return "upstairs" end end} }, -- Caverns of Time2
			{ {"Tanaris/17 36.8,75.0",radius=20,actiontitle=function(self,fromnode,tonode) if fromnode and fromnode.m==self.m and fromnode.f==self.f then return "Go down the spiral tunnel" end end, actionicon=function(self,fromnode,tonode) if fromnode and fromnode.m==self.m and fromnode.f==self.f then return "downstairs" end end} ,
			"Tanaris/18 61.8,52.4" }, -- Caverns of Time2
			--[[  Detailed waypoints through the CoT tunnel. Obsolete, kindish.
			"Tanaris/17 56,27 -x- Tanaris/17 59,28 {title:Traverse the Timeless Tunnel}",
			"@+ -x- Tanaris/17 66,29 {title:Traverse the Timeless Tunnel}",
			"@+ -x- Tanaris/17 68,18 {title:Traverse the Timeless Tunnel}",
			"@+ -x- Tanaris/17 49,20 {title:Traverse the Timeless Tunnel}",
			"@+ -x- @cot_tunnel_17to18 {title:Traverse the Timeless Tunnel}",
			--]]
		},
		["Teldrassil"] = {
			"Teldrassil/0 45.6,50.6 -x- Teldrassil/4 52.6,15.5 {template:barrow}", -- Banethil Barrow Den (Upper Den)
			"Teldrassil/4 24.6,86.0 -x- Teldrassil/5 29.9,76.4", -- Banethil Barrow Den (Lower Den)
			"Teldrassil/4 54.2,36.5 -x- Teldrassil/5 46.7,39.7", -- Banethil Barrow Den (Lower Den)
			"Teldrassil/0 54.5,46.3 -x- Teldrassil/3 77.6,81.7", -- Fel Rock
			"Shadowglen/0 39.3,30.4 -x- Teldrassil/2 45.4,90.3 {template:cave}", -- Shadowthread Cave
		},
		["Ghostlands"] = {
			"Ghostlands/0 66.4,28.5 -x- Ghostlands/1 94.0,35.6 {template:tunnel}", -- Amani Catacombs
			"Ghostlands/0 58.3,27.5 -x- Ghostlands/1 10.0,26.0 {template:tunnel}", -- Amani Catacombs
		},
		["Azuremyst Isle"] = {
			"Azuremyst Isle/0 26.9,76.3 -x- Azuremyst Isle/2 59.5,88.1 {template:cave}", -- Tides' Hollow
			"Azuremyst Isle/0 45.3,19.4 -x- Azuremyst Isle/3 21.2,94.6 {template:cave}", -- Stillpine Hold
		},
		["Tirisfal Glades"] = {
			"Tirisfal Glades/0 82.6,33.5 -x- Tirisfal Glades/13 17.3,82.9 {template:building}", -- Scarlet Monastery Entrance
			"Tirisfal Glades/0 82.3,32.6 -x- Tirisfal Glades/13 14.5,73.1 {template:building}", -- Scarlet Monastery Entrance
		},
		["Deathknell"] = {
			"Deathknell/0 29.7,30.7 -x- Deathknell/12 87.3,52.0 {template:building}", -- Night's Web Hollow
		},
		["Coldridge Valley"] = {
			"Coldridge Valley/0 52.0,84.6 -x- Coldridge Valley/9 12.8,36.8 {template:cave}", -- Frostmane Hovel
		},
		["New Tinkertown"] = {
			"New Tinkertown/0 33.3,66.4 -x- New Tinkertown/8 94.6,58.1 {template:cave}", -- Frostmane Hold
		},
		["The Lost Isles"] = {
			"The Lost Isles/0 31.2,78.6 -x- The Lost Isles/1 48.1,90.0 {template:cave}", -- Kaja'mite Cavern
			"The Lost Isles/0 70.0,48.0 -x- The Lost Isles/2 50.0,10.8 {template:cave}", -- Volcanoth's Lair
		},
		["Gilneas"] = {
			"Gilneas/0 28.8,51.2 -x- Gilneas/2 69.9,63.4 {template:building}", -- Greymane Manor
			"Gilneas/2 60.3,46.2 -x- Gilneas/3 56.1,46.5", -- Greymane Manor2
			"Gilneas/0 76.6,31.1 -x- Gilneas/1 28.5,70.0 {template:mine}", -- Emberstone Mine
		},
		["Kezan"] = {
			"Kezan/0 65.6,86.7 -x- Kezan/7 64.0,19.6 {template:mine}", -- Kaja'Mine Copper
			"Kezan/0 74.3,83.3 -x- Kezan/6 32.9,31.0 {template:mine}", -- Kaja'Mine Silver
			"Kezan/0 70.9,76.5 -x- Kezan/5 41.0,75.5 {template:mine}", -- Kaja'Mine Gold
		},
		["Badlands"] = {
			"Badlands/0 41.6,11.6 -x- Badlands/18 75.6,36.5 {template:cave}", --Uldaman Entrance
		},
		["Burning Steppes"] = {
			"Burning Steppes/0 21.0,38.0 -x- Burning Steppes/14 49.50,88.66", -- Blackrock Spire south entrance
			"Burning Steppes/14 72.0,43.2 -x- Burning Steppes/15 60.5,27.8", -- Blackrock Caverns foyer
			"Burning Steppes/14 66.8,60.7 -x- Burning Steppes/15 41.7,79.6", -- Blackrock Caverns foyer north
			"Burning Steppes/14 46.8,50.8 -x- Burning Steppes/16 58.2,88.5", -- Blackrock Depths chain
		},
		["Searing Gorge"] = {
			"Searing Gorge/0 34.8,85.6 -x- Burning Steppes/14 46.47,18.25", -- Blackrock Spire north entrance
			"Searing Gorge/14 46.8,50.8 -x- Searing Gorge/16 58.2,88.5", -- Blackrock Depths chain again - silly two-zone clone dungeon
			"Searing Gorge/16 40.2,57.9 -x- Burning Steppes/16 46.2,62.9",
		},
		["The Jade Forest"] = {
			"The Jade Forest/0 45.9,28.9 -x- The Jade Forest/6 75.7,24.7", -- Greenstone Quarry (Outisde --> Upper Quarry)
			"The Jade Forest/6 39.8,38.0 -x- The Jade Forest/7 51.2,51.0", -- Greenstone Quarry (Upper Quarry --> Lower Quarry)
			"The Jade Forest/0 57.7,31.7 -x- The Jade Forest/15 76.8,20.0 {template:cave}", -- The Widow's Wail (Outside of Cave --> Inside Cave)
			"The Jade Forest/0 57.5,27.7 -x- The Jade Forest/16 82.4,47.7 {template:cave}", -- Oona Kagu (Outside of Cave --> Inside Cave)
		},
		["Krasarang Wilds"] = {
			"Krasarang Wilds/0 80.3,17.8 -x- Krasarang Wilds/1 33.3,24.4 {template:building}",
			"Krasarang Wilds/1 61.6,51.8 -x- Krasarang Wilds/2 59.5,36.7",
			"Krasarang Wilds/2 62.7,39.6 -x- Krasarang Wilds/3 82.3,36.0",
		},
		["Kun-Lai Summit"] = {
			"Kun-Lai Summit/0  52.9,71.3 -x- Kun-Lai Summit/11 56.5,15.9 {template:cave}", --The Deeper
			"Kun-Lai Summit/11 52.4,65.5 -x- Kun-Lai Summit/12 51.6,55.9", --The Deeper2
			"Kun-Lai Summit/0  50.3,61.7 -x- Kun-Lai Summit/10 74.9,91.5 {template:cave}", -- Knucklethump Hole
			"Kun-Lai Summit/0  73.2,73.5 -x- Kun-Lai Summit/9  11.5,30.0 {template:cave}", -- Pranksters' Hollow
			"Kun-Lai Summit/0  59.1,52.5 -x- Kun-Lai Summit/8  66.9,82.3 {template:cave}", -- Howlingwind Cavern
			"Kun-Lai Summit/0  53.0,46.5 -x- Kun-Lai Summit/17 88.3,54.8 {template:building}", -- Tomb of Conquerors
			"Kun-Lai Summit/0  33.1,26.6 -x- Kun-Lai Summit/20 52.2,11.6 {template:building}", -- Ruins of Korune
			"Kun-Lai Summit/20 30.9,75.9 <radius:15> -x- Kun-Lai Summit/21 34.3,76.1", -- Crypt of Korune
		},
		["Townlong Steppes"] = {
			"Townlong Steppes /0 33.02,61.24 -x- Townlong Steppes/13 20.15,68.46 {template:building}", -- Niuzao Catacombs
			"Townlong Steppes/0 27.2,44.1 -x- Townlong Steppes/0 26.8,44.1 <indoors:Sra'vess Rootchamber> {template:building}",
			"Townlong Steppes/0 47.4,79.0 -x- Townlong Steppes/0 47.1,79.7 <indoors:Sik'vess Lair> {template:building}",
		},
		["Vale of Eternal Blossoms"] = {
			"Vale of Eternal Blossoms/0 22.2,26.3 -x- Vale of Eternal Blossoms/18 54.0,88.2 {template:building}", -- Guo-Lai Halls

			"Vale of Eternal Blossoms/3 38.6,28.4 <nofly:1> -x- Vale of Eternal Blossoms 86.8,64.3 {B:WALK}",  -- main door
			"Vale of Eternal Blossoms/3 25.5,55.8 <nofly:1> -x- Vale of Eternal Blossoms 85.6,67.4 {B:WALK}",  -- west door
			"Vale of Eternal Blossoms/3 60.3,18.0 <nofly:1> -x- Vale of Eternal Blossoms 89.1,63.5 {B:WALK}",  -- east door

			"Vale of Eternal Blossoms/3 33.6,78.3 <radius:5> -x- Vale of Eternal Blossoms/4 32.3,75.5 <radius:5>", -- west staircase
			"Vale of Eternal Blossoms/3 70.4,33.5 <radius:5> -x- Vale of Eternal Blossoms/4 61.7,18.4 <radius:5>", -- east staircase

			"Vale of Eternal Blossoms/3 52.4,78.9 <radius:10> -x- Vale of Eternal Blossoms/4 56.1,75.7 <radius:10>", -- west hall
			"Vale of Eternal Blossoms/3 66.4,63.3 <radius:10> -x- Vale of Eternal Blossoms/4 68.4,63.3 <radius:10>", -- east hall

			"Vale of Eternal Blossoms/4 43.3,44.3 <radius:5> -to- Vale of Eternal Blossoms/3 44.9,47.6 <radius:5>", -- west balcony jump
			"Vale of Eternal Blossoms/4 52.6,33.7 <radius:5> -to- Vale of Eternal Blossoms/3 46.4,44.8 <radius:5>", -- east balcony jump

			"Vale of Eternal Blossoms/3 38.6,28.4 <nofly:1> -x- Vale of Eternal Blossoms 86.8,64.3 (B:WALK)",  -- main door
			"Vale of Eternal Blossoms/3 25.5,55.8 <nofly:1> -x- Vale of Eternal Blossoms 85.6,67.4 (B:WALK)",  -- west door
			"Vale of Eternal Blossoms/3 60.3,18.0 <nofly:1> -x- Vale of Eternal Blossoms 89.1,63.5 (B:WALK)",  -- east door
		},
		["The Veiled Stair"] = {
			"Kun-Lai Summit/0 73.2,94.6 -x- The Veiled Stair/5 25.1,12.5", -- The Ancient Passage
			"The Veiled Stair/0 50.6,40.4 -x- The Veiled Stair/5 63.1,86.4", -- The Ancient Passage
			"The Veiled Stair/0 57.3,13.6 -x- The Veiled Stair/5 77.6,36.7", -- The Ancient Passage
		},
		["Shrine of Two Moons"] = {
			"Shrine of Two Moons/1 22.1,54.4 <radius:5> -x- Shrine of Two Moons/2 27.8,80.6 <radius:5>", -- west staircase
			"Shrine of Two Moons/1 77.5,42.6 <radius:5> -x- Shrine of Two Moons/2 74.4,70.3 <radius:5>", -- east staircase

			"Shrine of Two Moons/1 36.6,21.7 <radius:10> -x- Shrine of Two Moons/2 38.3,36.6 <radius:10>", -- west hall
			"Shrine of Two Moons/1 58.0,18.5 <radius:10> -x- Shrine of Two Moons/2 55.8,30.0 <radius:10>", -- east hall

			"Shrine of Two Moons/2 47.0,77.0 <radius:5> -to- Shrine of Two Moons/1 48.6,64.5 <radius:5>", -- west balcony jump
			"Shrine of Two Moons/2 55.4,73.1 <radius:5> -to- Shrine of Two Moons/1 49.4,42.2 <radius:5>", -- east balcony jump

			"Shrine of Two Moons/1 53.8,87.0 <nofly:1> -x- Vale of Eternal Blossoms 61.5,18.8 (B:WALK)",  -- main door
			"Shrine of Two Moons/1 26.8,80.7 <nofly:1> -x- Vale of Eternal Blossoms 59.1,17.9 (B:WALK)",  -- west door
			"Shrine of Two Moons/1 77.4,69.0 <nofly:1> -x- Vale of Eternal Blossoms 63.5,17.0 (B:WALK)",  -- east door
		},

		["Isle of Thunder"] = {
			"Isle of Thunder/0 54.6,29.1 -x- Isle of Thunder/1 73.1,51.3 {template:cave}", --Ghostly Veins
			"Isle of Thunder/0 49.3,25.5 -x- Isle of Thunder/1 38.8,27.1 {template:cave}", --Ghostly Veins
			"Isle of Thunder/0 49.2,32.2 -x- Isle of Thunder/1 31.7,81.7 {template:cave}", --Ghostly Veins
			"Isle of Thunder/0 62.4,40.3 -x- Isle of Thunder/2 66.1,77.9 {template:tunnel}", --The Swollen Vault
			"Isle of Thunder/0 36.3,58.5 <radius:5> -x- Isle of Thunder/0 36.3,59.4 <radius:5> <indoors:Hall of the Exalted> {template:tunnel}",
		},
		["Timeless Isle"] = {
			"Timeless Isle/0 43.3,40.8 -x- Timeless Isle/22 44.4,81.0 {template:cave}", --Cavern of Lost Spirits
		},
		[933] = { -- Isle of Thunder scenario  clone
			"933/0 54.6,29.1 -x- 933/1 73.1,51.3 {template:cave}",
			"933/0 49.3,25.5 -x- 933/1 38.8,27.1 {template:cave}",
			"933/0 49.2,33.0 -x- 933/1 31.5,82.0 {template:cave}",
			"933/0 62.4,40.3 -x- 933/2 66.1,77.9 {template:tunnel}",
		},
		[905] = { --Shrine of Seven Stars
			--In Vale of Eternal Blossoms
		},
		[937] = {
			"937/0 43.6,70.6 -x- 937/1 74.4,14.0 {template:mine}",
		},

		["Deeprun Tram"] = {
			"Stormwind City 69.44,31.29 -x- Deeprun Tram/1 42.8,19.5 @deeprun_sw (B:PORTAL) {style:portal_dungeon}",
			"Ironforge 76.43,51.08 -x- Deeprun Tram/1 99,45 @deeprun_if (B:PORTAL) {style:portal_dungeon}",
			"@deeprun_sw -x- @deeprun_if <cost:30> (B:TRAM)",
			"Deeprun Tram/1 52.24,46.9 -x- Deeprun Tram/2 72.3,16.2", -- brawlpub entry
			--"Deeprun Tram/1 52.4,71.2 -x- Deeprun Tram/2 72.3,16.2", -- brawlpub entry
		},
		["Dagger in the Dark"] = {
			"Dagger in the Dark/0 50.3,39.5 -x- Dagger in the Dark/1 61.3,82.9",
			"Dagger in the Dark/1 77.0,37.9 -x- Dagger in the Dark/0 57.9,13.2",
			"Dagger in the Dark/1 25.9,13.8 -x- Dagger in the Dark/0 31.1,1.1",
		},
		-- Dungeons/Raids
			--Kalimdor
				["Maraudon"] = { --
					"Maraudon/1 15.53,56.75 -x- Maraudon/2 28.99,4.84",
				},
				["Blackfathom Deeps"] = {
					"Blackfathom Deeps/1 61.51,71.88 -x- Blackfathom Deeps/2 39.21,31.65",
					"Blackfathom Deeps/2 47.24,79.12 -x- Blackfathom Deeps/3 43.60,61.06",
				},
				["Dire Maul"] = { -- Can't move between wings so limits the borders.
					"Dire Maul/2 39.22,34.98 -x- Dire Maul/3 56.27,24.42",
					"Dire Maul/2 31.69,72.04 -x- Dire Maul/3 48.30,74.24",
					"Dire Maul/2 20.79,19.09 -x- Dire Maul/3 44.12,13.38",
					"Dire Maul/2 29.47,42.67 -x- Dire Maul/4 75.94,39.95",
					"Dire Maul/5 46.43,63.58 -x- Dire Maul/6 61.27,82.67",
				},
				["End Time"] = { -- End Time
					"@et1 -x- @et2 (B:PORTAL)",
					"@et1 -x- @et3 (B:PORTAL)", "@et2 -x- @et3 (B:PORTAL)",
					"@et1 -x- @et4 (B:PORTAL)", "@et2 -x- @et4 (B:PORTAL)", "@et3 -x- @et4 (B:PORTAL)",
					"@et1 -x- @et5 (B:PORTAL)", "@et2 -x- @et5 (B:PORTAL)", "@et3 -x- @et5 (B:PORTAL)", "@et4 -x- @et5 (B:PORTAL)",
					"@et1 -x- @et6 (B:PORTAL)", "@et2 -x- @et6 (B:PORTAL)", "@et3 -x- @et6 (B:PORTAL)", "@et4 -x- @et6 (B:PORTAL)", "@et5 -x- @et6 (B:PORTAL)",

				},
				["Halls of Origination"] = {
					"Halls of Origination/1 89.7,49.8 -x- Halls of Origination/2 24.9,49.4",
					"Halls of Origination/1 67.5,52.6 -x- Halls of Origination/2 66.7,48.5",
					"Halls of Origination/1 66.5,48.3 -x- Halls of Origination/3 45.9,47.6",
				},
				["The Culling of Stratholme"] = {
					"The Culling of Stratholme/1 47.47,32.24 -x- The Culling of Stratholme/2 50.63,92.88",
				},
				["Ahn'Qiraj"] = {
					"Ahn'Qiraj/1 34.6,45.0 -x- Ahn'Qiraj/3 66.4,46.3",
					"Ahn'Qiraj/1 33.0,52.4 -x- Ahn'Qiraj/3 50.5,73.0",
					"Ahn'Qiraj/2 49.2,63.3 -x- Ahn'Qiraj/3 47.5,29.3",
				},
				["Dragon Soul"] = {
					"Dragon Soul/1 49.16,59.04 <template:dragonrider> -to- Dragon Soul/2 32.66,45.49 (B:PORTAL)",
					"Dragon Soul/2 22.98,40.36 -to- Dragon Soul/1 50.25,59.76 (B:PORTAL)",
					"Dragon Soul/1 51.29,59.31 <template:dragonrider> -to- Dragon Soul/3 55.38,79.72 (B:PORTAL)",
					"Dragon Soul/3 57.76,88.77 -to- Dragon Soul/1 50.25,59.76 (B:PORTAL)",
					"Dragon Soul/1 50.70,60.63 -x- Dragon Soul/4 52.42,14.22 (B:PORTAL)", --portal from top
					"Dragon Soul/7 31.93,82.91 -to- Dragon Soul/1 50.25,59.76 (B:PORTAL)",
				},

			--Eastern Kingdom
				["The Deadmines"] = {
					-- TODO there are teleporters in DM that could/should be added. Only useful if you die and need to get back to where you were.
					"The Deadmines/1 65.48,60.02 -x- The Deadmines/2 16.97,88.45",
				},
				["Uldaman"] = {
					"Uldaman/1 46.08,9.57 -x- Uldaman/2 64.77,43.35",
				},
				["Shadowfang Keep"] = {
					"Shadowfang Keep/1 38.18,39.14 -x- Shadowfang Keep/2 60.03,13.01",
					"Shadowfang Keep/1 14.78,88.35 -x- Shadowfang Keep/2 27.49,87.84",
					"Shadowfang Keep/1 34.01,70.58 -x- Shadowfang Keep/7 23.69,75.12",
					"Shadowfang Keep/7 45.49,25.23 -to- Shadowfang Keep/3 44.44,61.70",
					"Shadowfang Keep/3 60.72,31.88 -to- Shadowfang Keep/7 47.37,19.47",
					"Shadowfang Keep/3 45.86,92.67 -x- Shadowfang Keep/4 48.93,77.89",
					"Shadowfang Keep/4 34.60,55.37 -x- Shadowfang Keep/5 48.94,77.32",
					"Shadowfang Keep/5 56.86,44.93 -to- Shadowfang Keep/4 54.68,54.74",
					"Shadowfang Keep/5 34.62,57.88 -x- Shadowfang Keep/6 48.75,90.71",
				},
				["Stratholme"] = {
				},
				["Scholomance"] = {
					"Scholomance/1 81.8,23.9 -x- Scholomance/2 76.0,26.5",
					"Scholomance/2 57.5,92.2 -x- Scholomance/3 49.7,19.2",
					"Scholomance/3 49.8,24.0 -x- Scholomance/4 49.6,28.2",
				},
				["Scarlet Monastery"] = {
					"Scarlet Monastery/1 48.4,88.5 -x- Scarlet Monastery/2 49.1,11.2",
				},
				["Scarlet Halls"] = {
					"Scarlet Halls/1 55.5,13.8 -x- Scarlet Halls/2 47.8,91.1",
				},
				["Gnomeregan"] = {
					"Gnomeregan/1 57.67,50.98 -to- Gnomeregan/2 81.36,46.02",
					"Gnomeregan/1 47.05,86.94 -x- Gnomeregan/2 75.38,74.06",
					"Gnomeregan/1 34.33,61.78 -x- Gnomeregan/2 61.73,61.55",
					"Gnomeregan/2 35.21,88.08 -x- Gnomeregan/3 38.60,50.33",
					"Gnomeregan/3 48.26,71.95 -x- Gnomeregan/4 71.25,77.54",
				},
				["Blackrock Spire"]= {
					"Blackrock Spire/1 66.1,51.1 -x- Blackrock Spire/3 66.0,49.2",
					"Blackrock Spire/3 58.4,47.7 -x- Blackrock Spire/1 56.7,48.3",
					"Blackrock Spire/2 64.8,70.9 -x- Blackrock Spire/1 59.8,70.2",
					"Blackrock Spire/2 59.5,59.3 -x- Blackrock Spire/1 59.4,63.9",
					"Blackrock Spire/2 53.2,52.8 -x- Blackrock Spire/3 57.0,51.2",
					"Blackrock Spire/3 49.9,74.1 -x- Blackrock Spire/2 51.1,74.2",
					"Blackrock Spire/3 46.5,65.8 -x- Blackrock Spire/4 45.1,59.5",
					"Blackrock Spire/4 47.2,42.7 -x- Blackrock Spire/3 55.1,37.6",
					"Blackrock Spire/4 37.2,34.2 -x- Blackrock Spire/5 37.1,32.1",
					"Blackrock Spire/5 33.3,13.3 -x- Blackrock Spire/6 30.4,18.7",
					"Blackrock Spire/6 29.0,41.4 -x- Blackrock Spire/7 28.4,36.1",
					"Blackrock Spire/7 30.7,42.7 -to- Blackrock Spire/6 30.6,41.6", --cliff
					"Blackrock Spire/7 36.4,43.3 -to- Blackrock Spire/6 36.1,41.3",
				},
				["Blackrock Caverns"] = {
					"Blackrock Caverns/1 52.05,20.12 -to- Blackrock Caverns/2 29.97,17.32",
					"Blackrock Caverns/1 49.93,12.98 -x- Blackrock Caverns/2 29.37,13.13",
				},
		--Raids
			["Karazhan"] = {
				"Karazhan/1 38.3,78.6 -x- Karazhan/2 29.1,80.8",
				"Karazhan/2 38.6,14.1 -x- Karazhan/3 39.8,81.7",
				"Karazhan/1 53.1,64.1 -x- Karazhan/3 52.5,91.3",
				"Karazhan/3 67.0,42.4 -x- Karazhan/4 67.9,42.9",
				"Karazhan/1 37.6,12.8 -x- Karazhan/4 47.2,29.1",
				"Karazhan/4 23.5,49.2 -x- Karazhan/5 45.4,83.7",
				"Karazhan/5 67.9,26.5 -x- Karazhan/6 41.4,13.3",
				"Karazhan/6 64.9,69.2 -x- Karazhan/7 73.2,65.3",
				"Karazhan/8 51.8,58.3 -x- Karazhan/9 61.5,19.2",
				"Karazhan/9 31.0,66.3 -x- Karazhan/10 30.9,59.9",
				"Karazhan/10 37.1,23.1 -x- Karazhan/11 64.0,26.8",
				"Karazhan/10 58.8,56.0 -x- Karazhan/12 47.0,56.0",
				"Karazhan/12 25.9,61.3 -x- Karazhan/13 53.8,78.5",
				"Karazhan/12 39.6,18.8 -x- Karazhan/14 20.6,81.3",
				"Karazhan/14 83.2,57.1 -x- Karazhan/15 82.3,69.8",
				"Karazhan/15 83.2,75.5 -x- Karazhan/16 71.9,70.5",
				"Karazhan/16 66.2,79.3 -x- Karazhan/17 50.9,91.1",
			},
			["Blackwing Lair"] = {
				"Blackwing Lair/1 45.4,27.7 -x- Blackwing Lair/2 49.7,36.0",
				"Blackwing Lair/1 37.6,11.2 -x- Blackwing Lair/2 44.0,22.9",
				"Blackwing Lair/2 49.4,80.3 -x- Blackwing Lair/3 57.0,87.2",
				"Blackwing Lair/3 31.0,37.5 -x- Blackwing Lair/4 22.0,60.9",
			},
			["Blackrock Depths"] = {
				"Blackrock Depths/1 40.7,67.1 -x- Blackrock Depths/2 41.8,92.4",
				"Blackrock Depths/1 67.0,26.3 -x- Blackrock Depths/2 64.9,57.1",
				"Blackrock Depths/1 59.8,30.9 -x- Blackrock Depths/2 59.9,60.1",
				"Blackrock Depths/1 58.7,34.4 -x- Blackrock Depths/2 58.9,64.7",
				"Blackrock Depths/1 55.0,35.6 -x- Blackrock Depths/2 54.2,65.6",
				"Blackrock Depths/1 56.9,51.3 -x- Blackrock Depths/2 56.4,77.5",
				"Blackrock Depths/1 57.3,57.1 -x- Blackrock Depths/2 56.9,85.7",
				"Blackrock Depths/1 54.8,62.9 -x- Blackrock Depths/2 55.2,89.9",
				"Blackrock Depths/1 45.4,63.1 -x- Blackrock Depths/2 44.6,90.0",
				"Blackrock Depths/1 45.0,64.3 -x- Blackrock Depths/2 44.5,91.1",
				"Blackrock Depths/1 46.6,52.5 -x- Blackrock Depths/2 47.5,81.1",
				"Blackrock Depths/1 42.5,46.3 -x- Blackrock Depths/2 42.3,73.6",
				"Blackrock Depths/1 41.6,39.1 -x- Blackrock Depths/2 41.4,68.1",
				"Blackrock Depths/1 53.0,31.8 -x- Blackrock Depths/2 53.0,61.5",
				"Blackrock Depths/1 54.0,27.0 -x- Blackrock Depths/2 53.2,55.6",
			},
			["Naxxramas"] = {
				"Naxxramas/1 68.6,77.7 -x- Naxxramas/5 51.6,47.1",
				"Naxxramas/2 30.7,77.9 -x- Naxxramas/5 55.0,47.1",
				"Naxxramas/3 66.9,21.9 -x- Naxxramas/5 51.7,52.2",
				"Naxxramas/4 32.9,22.4 -x- Naxxramas/5 55.2,52.5",
				"Naxxramas/5 53.5,50.1 -to- Naxxramas/6 73.6,72.8",
				"Naxxramas/6 74.6,73.2 -to- Naxxramas/5 51.3,49.7",
			},
			["Blackwing Descent"] = {
				"Blackwing Descent/1 46.9,42.1 -x- Blackwing Descent/2 47.4,89.8",
			},
			["The Bastion of Twilight"] = {
				"The Bastion of Twilight/1 53.6,85.1 -x- The Bastion of Twilight/2 55.0,6.2",
			},

		--Outlands
			["The Steamvault"]={
				"The Steamvault/1 49.85,29.26 -x- The Steamvault/2 51.23,28.93",
				"The Steamvault/1 51.38,27.47 -to- The Steamvault/2 51.48,29.20",
				"The Steamvault/1 48.01,77.81 -x- The Steamvault/2 46.24,79.55",
				"The Steamvault/1 36.64,73.70 -to- The Steamvault/2 35.59,72.57",
			},
			["The Mechanar"]={
				"The Mechanar/1 41.73,22.82 -x- The Mechanar/2 41.77,31.54",
			},
			["The Arcatraz"]={
				"The Arcatraz/1 65.11,35.34 -x- The Arcatraz/2 89.26,43.76",
				"The Arcatraz/2 36.51,57.12 -x- The Arcatraz/3 26.97,88.52",
			},
			["Sethekk Halls"]={
				"Sethekk Halls/1 48.71,95.13 -x- Sethekk Halls/2 53.33,94.35",
				"Sethekk Halls/2 44.61,27.42 -to- Sethekk Halls/1 51.57,27.55",
			},
			["Auchenai Crypts"]={
				"Auchenai Crypts/1 44.67,17.68 -x- Auchenai Crypts/2 22.77,12.22",
			},

			["Black Temple"]={
				"Black Temple/2 29.58,19.61 -x- Black Temple/1 28.02,74.29",
				"Black Temple/1 63.09,45.70 -x- Black Temple/3 24.31,50.07",
				"Black Temple/3 58.48,91.11 -x- Black Temple/5 66.89,68.26",
				"Black Temple/3 26.28,21.71 -x- Black Temple/6 8.40,59.62",
				"Black Temple/6 67.17,51.10 -x- Black Temple/7 69.01,16.15",
				"Black Temple/7 46.72,35.00 -x- Black Temple/8 52.69,20.84",
				"Black Temple/3 61.32,34.65 -x- Black Temple/4 64.35,39.46",

			},
			["Magisters' Terrace"]={
				"Magisters' Terrace/2 82.88,44.83 -x- Magisters' Terrace/1 83.15,55.44",
			},

		--Northrend
			["The Oculus"] = {
				"The Oculus/1 38.45,50.96 -x- The Oculus/1 47.89,69.3 <template:portalclick> (B:PORTAL)",
			},
			["Utgarde Keep"] = {
				"Utgarde Keep/1 48.5,84.7 -x- Utgarde Keep/2 34.8,64.5",
				"Utgarde Keep/2 53.5,25.3 -x- Utgarde Keep/3 33.1,40.7",
			},
			["Utgarde Pinnacle"] = {
				"Utgarde Pinnacle/1 31.1,75.0 -x- Utgarde Pinnacle/2 42.3,76.6",
				"Utgarde Pinnacle/1 45.9,82.6 -x- Utgarde Pinnacle/2 54.2,79.1",
				"Utgarde Pinnacle/1 54.7,18.0 -x- Utgarde Pinnacle/2 59.6,34.1",
			},
			["Halls of Lightning"] = {
				"Halls of Lightning/1 89.0,53.8 -x- Halls of Lightning/2 57.0,21.3",
			},
			["Azjol-Nerub"] = {
				"Azjol-Nerub/2 41.0,37.3 -x- Azjol-Nerub/3 70.6,31.6",
				"Azjol-Nerub/2 50.3,60.4 -to- Azjol-Nerub/1 22.0,50.7",
			},
			["Drak'Tharon Keep"] = {
				"Drak'Tharon Keep/1 64.4,71.6 -x- Drak'Tharon Keep/2 50.5,71.5",
			},
			["Ulduar"] = {
				-- floor 6 is part of a boss encounter.
				"Ulduar/2 37.24,1.35 -x- Ulduar/3 54.09,78.14",
				"Ulduar/2 36.72,0.61 -x- Ulduar/3 48.21,77.34",
				"Ulduar/3 30.33,74.84 -x- Ulduar/4 35.36,52.21",

				"@uld10 -x- @uld11 (B:PORTAL)",
				"@uld10 -x- @uld12 (B:PORTAL)", "@uld11 -x- @uld12 (B:PORTAL)",
				"@uld10 -x- @uld13 (B:PORTAL)", "@uld11 -x- @uld13 (B:PORTAL)", "@uld12 -x- @uld13 (B:PORTAL)",
				"@uld10 -x- @uld20 (B:PORTAL)", "@uld11 -x- @uld20 (B:PORTAL)", "@uld12 -x- @uld20 (B:PORTAL)", "@uld13 -x- @uld20 (B:PORTAL)",
				"@uld10 -x- @uld21 (B:PORTAL)", "@uld11 -x- @uld21 (B:PORTAL)", "@uld12 -x- @uld21 (B:PORTAL)", "@uld13 -x- @uld21 (B:PORTAL)", "@uld20 -x- @uld21 (B:PORTAL)",
				"@uld10 -x- @uld30 (B:PORTAL)", "@uld11 -x- @uld30 (B:PORTAL)", "@uld12 -x- @uld30 (B:PORTAL)", "@uld13 -x- @uld30 (B:PORTAL)", "@uld20 -x- @uld30 (B:PORTAL)", "@uld21 -x- @uld30 (B:PORTAL)",
				"@uld10 -x- @uld40 (B:PORTAL)", "@uld11 -x- @uld40 (B:PORTAL)", "@uld12 -x- @uld40 (B:PORTAL)", "@uld13 -x- @uld40 (B:PORTAL)", "@uld20 -x- @uld40 (B:PORTAL)", "@uld21 -x- @uld40 (B:PORTAL)", "@uld30 -x- @uld40 (B:PORTAL)",
				"@uld10 -x- @uld50 (B:PORTAL)", "@uld11 -x- @uld50 (B:PORTAL)", "@uld12 -x- @uld50 (B:PORTAL)", "@uld13 -x- @uld50 (B:PORTAL)", "@uld20 -x- @uld50 (B:PORTAL)", "@uld21 -x- @uld50 (B:PORTAL)", "@uld30 -x- @uld50 (B:PORTAL)", "@uld40 -x- @uld50 (B:PORTAL)",
			},
			["Trial of the Crusader"] = {
				"Trial of the Crusader/1 51.4,52.4 -to- Trial of the Crusader/2 52.5,73.5",
			},
			["Icecrown Citadel"] = {
				"Icecrown Citadel/1 39.07,85.75 -x- Icecrown Citadel/2 45.60,84.81",
				"Icecrown Citadel/2 45.62,73.77 -x- Icecrown Citadel/3 51.33,83.92",
				"Icecrown Citadel/3 51.85,19.20 -x- Icecrown Citadel/5 51.85,83.82",
				"Icecrown Citadel/4 36.48,89.98 -x- Icecrown Citadel/5 76.71,91.90",
				"Icecrown Citadel/4 50.50,33.31 -x- Icecrown Citadel/5 85.91,53.55",
				"Icecrown Citadel/5 60.68,17.31 -x- Icecrown Citadel/6 78.82,31.45",
				"Icecrown Citadel/5 43.44,16.66 -x- Icecrown Citadel/6 23.19,30.52",
				"Icecrown Citadel/5 52.35,53.69 -x- Icecrown Citadel/7 49.85,39.13",
				"Icecrown Citadel/6 50.65,69.26 -to- Icecrown Citadel/5 51.82,32.29",

				"@icc10 -x- @icc11 (B:PORTAL)",
				"@icc10 -x- @icc20 (B:PORTAL)", "@icc11 -x- @icc20 (B:PORTAL)",
				"@icc10 -x- @icc30 (B:PORTAL)", "@icc11 -x- @icc30 (B:PORTAL)", "@icc20 -x- @icc30 (B:PORTAL)",
				"@icc10 -x- @icc40 (B:PORTAL)", "@icc11 -x- @icc40 (B:PORTAL)", "@icc20 -x- @icc40 (B:PORTAL)", "@icc30 -x- @icc40 (B:PORTAL)",
				"@icc10 -x- @icc50 (B:PORTAL)", "@icc11 -x- @icc50 (B:PORTAL)", "@icc20 -x- @icc50 (B:PORTAL)", "@icc30 -x- @icc50 (B:PORTAL)", "@icc40 -x- @icc50 (B:PORTAL)",
			},

		--Maelstrom
			["Throne of the Tides"] = {
				"Throne of the Tides/1 48.9,82.1 -x- Throne of the Tides/2 51.0,53.0",
				"Throne of the Tides/1 50.0,39.7 -x- Throne of the Tides/2 50.0,90.1",
			},

		--Pandaria
			["Stormstout Brewery"] = {
				"Stormstout Brewery/1 28.1,61.1 -x- Stormstout Brewery/2 32.8,59.2",
				"Stormstout Brewery/2 81.5,58.5 -x- Stormstout Brewery/3 33.8,77.9",
				"Stormstout Brewery/3 75.5,33.5 -x- Stormstout Brewery/4 57.6,31.1",
			},
			["Siege of Niuzao Temple"] = {
				"Siege of Niuzao Temple/1 50.3,73.9 -x- Siege of Niuzao Temple/3 21.6,53.6",
				"Siege of Niuzao Temple/2 53.2,81.9 -x- Siege of Niuzao Temple/3 57.1,80.7",
			},
			["Mogu'shan Palace"] = {
				"Mogu'shan Palace/1 49.0,67.0 -x- Mogu'shan Palace/2 55.8,18.9",
				"Mogu'shan Palace/2 71.5,76.2 -x- Mogu'shan Palace/3 58.8,24.3",
			},
			["Temple of the Jade Serpent"] = {
				"Temple of the Jade Serpent/1 27.4,62.7 -x- Temple of the Jade Serpent/2 39.0,22.0",
				"Temple of the Jade Serpent/1 27.0,68.7 -x- Temple of the Jade Serpent/2 46.6,42.5",
			},
			["Shado-Pan Monastery"] = {
				"Shado-Pan Monastery/1 56.0,88.0 -x- Shado-Pan Monastery/2 21.0,85.6",
				"Shado-Pan Monastery/1 36.5,81.8 -x- Shado-Pan Monastery/3 76.9,81.4",
				"Shado-Pan Monastery/1 22.1,69.1 -x- Shado-Pan Monastery/3 12.3,19.2",
				"Shado-Pan Monastery/1 30.7,35.0 -x- Shado-Pan Monastery/4 17.0,72.6",
				"Shado-Pan Monastery/1 44.7,40.1 -x- Shado-Pan Monastery/4 51.3,83.9",
			},
			["Gate of the Setting Sun"] = {
				"Gate of the Setting Sun/1 46.3,33.1 -x- Gate of the Setting Sun/2 50.0,50.8",
			},
			["Mogu'shan Vaults"] = {
				"Mogu'shan Vaults/1 32.2,13.5 -x- Mogu'shan Vaults/2 77.8,81.1",
				"Mogu'shan Vaults/2 28.7,52.1 -x- Mogu'shan Vaults/3 65.7,10.6",
			},
			["Heart of Fear"] = {
				"Heart of Fear/1 32.1,16.3 -x- Heart of Fear/2 66.3,27.2",
			},
			["Throne of Thunder"] = {
				"Throne of Thunder/1 83.4,79.6 -x- Throne of Thunder/2 14.8,78.9",
				"Throne of Thunder/2 72.90,20.01 -x- Throne of Thunder/3 20.70,82.15",
				"Throne of Thunder/3 73.1,53.2 -x- Throne of Thunder/4 21.9,21.1",
				"Throne of Thunder/4 34.0,59.0 -x- Throne of Thunder/5 80.2,7.8",
				"Throne of Thunder/5 46.64,22.87 -x- Throne of Thunder/6 20.44,64.75",
				"Throne of Thunder/6 88.13,74.91 -x- Throne of Thunder/7 45.97,10.54",
			},
			["Siege of Orgrimmar"] = {
				"Siege of Orgrimmar/1 44.7,69.2 -x- Siege of Orgrimmar/3 64.6,12.7",
				"Siege of Orgrimmar/2 11.7,71.9 -x- Siege of Orgrimmar/1 26.4,9.8",
				"Siege of Orgrimmar/1 28.5,9.7 -x- Siege of Orgrimmar/2 11.7,71.8",
				"Siege of Orgrimmar/4 34.8,21.6 -x- Siege of Orgrimmar/5 51.7,76.9",
				"Siege of Orgrimmar/5 56.3,29.1 -x- Siege of Orgrimmar/6 80.7,16.3",
				"Siege of Orgrimmar/6 67.9,50.1 -x- Siege of Orgrimmar/7 31.1,20.3",
				"Siege of Orgrimmar/8 78.6,73.6 -x- Siege of Orgrimmar/9 64.0,17.8",
				"Siege of Orgrimmar/8 89.4,62.3 -x- Siege of Orgrimmar/10 23.7,82.3",
				"Siege of Orgrimmar/8 87.7,76.4 -x- Siege of Orgrimmar/11 32.0,14.8",
				"Siege of Orgrimmar/11 65.2,91.5 -x- Siege of Orgrimmar/12 53.7,13.5",
			},
}

local MWEF={}
-- translate the above from names to numbers
for zone,zonedata in pairs(data.basenodes.MapsWithExplicitFloors) do
	if type(zone)~="number" then
		local id=data.MapIDsByName[zone]
		if type(id)=="table" then id=id[1] end
		if not id then error("Map "..zone.." has no ID!") end
		zone=id
	end
	MWEF[zone]=zonedata
end
data.basenodes.MapsWithExplicitFloors=MWEF

--[[
	Regions are custom subzones. Two nodes cannot connect to each other automatically if they're in different regions (or game maps, too).
	A region must have a name (and many regions can share a name), and either:
		- center (map+coords), radius (number in yards) : for coordinate-based detection
		- minimapzone (English, from GetMinimapZoneText()), optionally mapzone : for subzone name-based detection
	After those, regions can have any properties, the ones in use are:
		- nofly : nodes in the region get the 'nofly' attribute, becoming unreachable for flight
		- dark : nodes become 'dark', and the region goes "dark": nodes can connect as written in this file, but the player can only connect
			to their nearest node and is thus prevented from beelining across the region.

	In general, if you want a region to have a specific route through it, set it to dark so that the system doesn't ignore the route and plan a beeline instead.
	Then, remember to add some nodes in the region, so that there IS a reasonable path through it...

	Conversely, if you set dark and don't plan some paths across the area, it'll become a "swamp", an area the system will try to avoid altogether.

	You can also add "green borders" to a region, so that it is directly seen and connected to a neighboring zone, instead of its own zone.
--]]
data.basenodes.advanced = {
	{"REGION",name="fuselight",center="Badlands 65.9,35.3",radius=100},
	{"REGION",name="fuselightbts",center="Badlands 90.7,36.3",radius=150},
	{"REGION",name="fuselightbtspre",center="Badlands 79.1,31.6",radius=150},

	--"REGION lochmodanclimb Loch Modan 48.1,77.3 <80",
	--"REGION lochmodanclimb Loch Modan 46.1,77.3 <75",
	--"REGION lochmodanclimb Loch Modan 50.1,77.3 <75",
	{"REGION",name="lochmodanclimb",center="Loch Modan 46.1,77.3",radius=75},
	{"REGION",name="lochmodanclimb",center="Loch Modan 51.1,77.3",radius=55},
	{"REGION",name="lochmodanclimb",center="Loch Modan 47.6,79.9",radius=50},

	{"REGION",name="coilfang1",center="Zangarmarsh 49.85,42.91",radius=100,mapzone="Zangarmarsh",zonematch="Zangarmarsh/Zangarmarsh/Coilfang Reservoir/Coilfang Reservoir"},
	{"REGION",name="coilfang2",mapzone="Zangarmarsh",zonematch="Zangarmarsh/Zangarmarsh/Coilfang Reservoir/Coilfang Reservoir",nofly=1},
	{"REGION",name="coilfangpipe",mapzone="Zangarmarsh",zonematch="Coilfang Reservoir/Coilfang Reservoir//Coilfang Reservoir",nofly=1},

	{"REGION",name="krasarang_edge",center="Valley of the Four Winds 36.8,79.3",radius=30,greenborders={"Krasarang Wilds"}},
	{"REGION",name="krasarang_edge",center="Valley of the Four Winds 31.3,82.9",radius=10,greenborders={"Krasarang Wilds"}},
	{"REGION",name="krasarang_edge",center="Valley of the Four Winds 34.4,82.3",radius=10,greenborders={"Krasarang Wilds"}},
	{"REGION",name="krasarang_edge",center="Valley of the Four Winds 35.7,79.9",radius=35,greenborders={"Krasarang Wilds"}},
	{"REGION",name="krasarang_edge",center="Valley of the Four Winds 53.7,77.8",radius=40,greenborders={"Krasarang Wilds"}},
	{"REGION",name="krasarang_edge",center="Valley of the Four Winds 63.3,74.9",radius=30,greenborders={"Krasarang Wilds"}},
	{"REGION",name="krasarang_edge",center="Valley of the Four Winds 69.6,69.9",radius=30,greenborders={"Krasarang Wilds"}},
	{"REGION",name="krasarang_edge",center="Valley of the Four Winds 67.3,69.0",radius=30,greenborders={"Krasarang Wilds"}},
	{"REGION",name="krasarang_edge",center="Valley of the Four Winds 76.0,57.2",radius=60,greenborders={"Krasarang Wilds"}},
	{"REGION",name="krasarang_edge",center="Valley of the Four Winds 74.1,56.3",radius=20,greenborders={"Krasarang Wilds"}},

	{"REGION",name="orc_cave",center="Durotar 45.3,56.3",radius=20,greenborders={"Valley of Trials"}},

	{"REGION",name="shrine2moon_west",center="Shrine of Two Moons/2 30.3,53.5",radius=75,nofly=1},
	{"REGION",name="shrine2moon_east",center="Shrine of Two Moons/2 70.4,46.2",radius=75,nofly=1},

	{"REGION",name="shrine7star_west",center="Vale of Eternal Blossoms/4 40.8,69.2",radius=75,nofly=1},
	{"REGION",name="shrine7star_east",center="Vale of Eternal Blossoms/4 69.5,40.4",radius=75,nofly=1},

	{"REGION",name="endtime_entry",center="End Time/1 80,45",radius=200,nofly=1},  -- One can't rove around the whole End Time map.

	{"REGION",name="underbelly",mapzone=504,zonematch="*/*/*/The Underbelly",nofly=1,greenborders={{"Dalaran",2}}},

	-- Pandaria, since we're mostly running for the initial levels
	{"REGION",name="garrosharpoint",center="The Jade Forest/0 44.4,93.3",radius=200 },
	{"REGION",name="garrosharpoint",center="The Jade Forest 46.3,96.4",radius=50 },

	{"REGION",name="pawdonvillage",center="The Jade Forest/0 44.35,86.00",radius=145 },
	{"REGION",name="pawdonvillage",center="The Jade Forest/0 41.88,83.49",radius=285 },
	{"REGION",name="pawdonvillage",center="The Jade Forest/0 46.00,84.00",radius=70 },
	{"REGION",name="pawdonvillage",center="The Jade Forest/0 39.4,90.2",radius=150 },

	{"REGION",name="cleftofshadow",center="Orgrimmar/2 50,51.34",radius=80},

	--{"MAP",map="Tanaris", floor=17, extra={dark=1} },

	{"REGION",name="allyboat_thunder",center="Isle of Thunder/0 34.8,89.8",radius=100},
	{"REGION",name="hordeboat_thunder",center="Isle of Thunder/0 28.4,52.5",radius=100},

	{"REGION",name="topofthewallVFW",mapzone=807,zonematch="*/*/*/Serpent's Spine"},
	{"REGION",name="topofthewallP",mapzone=862,zonematch="*/*/*/Serpent's Spine",greenborders={"Valley of the Four Winds"}}, -- This is a dead zone between the above and below regions. Let it see into the above region so it can find a way out.
	{"REGION",name="topofthewallVEB",mapzone=811,zonematch="*/*/*/Serpent's Spine"},
	{"REGION",name="topofthewallVEB",mapzone=811,center="Vale of Eternal Blossoms/0 14.1,79.2",radius=40},

	{"REGION",name="totopofwallKLS",mapzone=809,zonematch="*/*/*/Shado-Pan Fallback"},
	{"REGION",name="topofthewallKLS",mapzone=809,zonematch="*/*/*/Serpent's Spine"},

	-- Terrace in Un'Goro Crater. Inaccessible without old world flying.
	{"REGION",name="shapers_terrace",mapzone=201,zonematch="*/*/*/Waygate"},
	{"REGION",name="shapers_terrace",mapzone=201,zonematch="*/*/*/The Shaper's Terrace"},

	--[[
	{"REGION",name="dmentry",mapzone=39,zonematch="*/*/*/Defias Hideout",nofly=1,dark=1},
	{"REGION",name="dmentry2",mapzone=39,zonematch="*/*/*/The Deadmines",nofly=1,dark=1},
	{"REGION",name="maraudon",mapzone=101,zonematch="*/*/*/Maraudon",nofly=1,dark=1},
	{"REGION",name="sm_gv",mapzone=20,zonematch="*/*/*/The Grand Vestibule",nofly=1},
	{"REGION",name="gnomer",mapzone=27,zonematch="*/*/*/Gnomeregan",nofly=1,dark=1},
	{"REGION",name="gnomertrain",mapzone=27,zonematch="*/*/*/Train Depot",nofly=1,dark=1},
	{"REGION",name="blackfathom",mapzone=43,zonematch="*/*/*/Blackfathom Deeps",nofly=1,dark=1},
	{"REGION",name="wailingcave1",mapzone=11,zonematch="*/*/*/The Wailing Caverns",nofly=1,dark=1},
	{"REGION",name="wailingcave2",mapzone=11,zonematch="*/*/*/Cavern of Mists",nofly=1,dark=1},
	{"REGION",name="cotime",mapzone=161,zonematch="*/*/*/Caverns of Time",dark=1},
	--]]

	--{"REGION",name="ironforgecenter",center="Ironforge 48,43",radius=100,nofly=1},
}

-- different data layout, live with it

-- WATCH OUT. These are GROUND ONLY, and WILL be ignored by flight!
data.basenodes.borders = {
	[1] = {
		"Ashenvale,20.7,15.8 -x- Darkshore,38.8,96.4",
		"Ashenvale,36.8,73.8 -x- Stonetalon Mountains,73.3,40.0",
		"Ashenvale,55.8,28.8 -x- Felwood,54.7,90.8",
		"Ashenvale,68.6,86.8 -x- Northern Barrens,42.8,12.5",
		"Ashenvale,95.4,48.4 -x- Azshara,7.8,69.9",
		"Azshara,26.6,79.2 -x- Orgrimmar,76.5,1.8",
		"Azuremyst Isle,36.9,46.9 -x- The Exodar,88.3,64.9",
		"Azuremyst Isle,42.0,1.5 -x- Bloodmyst Isle,65.5,95.4",
		"Darnassus,77.0,46.4 -x- Teldrassil,38.1,47.5",
		"Desolace,42.5,97.3 -x- Feralas,44.9,2.2",
		"Desolace,54.2,2.9 -x- Stonetalon Mountains,35.7,77.2",
		"Durotar,34.1,42.4 -x- Northern Barrens,69.0,39.0",
		"Durotar,45.5,11.7 -x- Orgrimmar,49.5,93.2",
		"Dustwallow Marsh,28.5,47.2 -x- Southern Barrens,51.6,78.7",
		"Dustwallow Marsh,50.3,94.3 -x- Thousand Needles,72.3,46.6",
		"Felwood,64.3,10.3 -x- Moonglade,35.7,72.5 {name:Timbermaw Hold}",
		"Felwood,64.3,10.3 -x- Winterspring,21.2,46.1 {name:Timbermaw Hold}",
		"Feralas,89.3,42.1 -x- Thousand Needles,89.3,42.1",
		"Mulgore,38.3,33.9 -x- Thunder Bluff,38.1,79.0",
		"Mulgore,70.1,59.6 -x- Southern Barrens",
		"Northern Barrens,27.3,48.0 -x- Southern Barrens,36.7,4.8",
		"Northern Barrens,70.2,73.3 -x- The Cape of Stranglethorn,39.0,67.0",
		"Silithus,85.0,13.2 -x- Un'Goro Crater,27.0,10.7",
		"Silithus 35.9,83.3 -x- Ahn'Qiraj: The Fallen Kingdom 58.2,7.0",
		"Southern Barrens,29.1,9.0 -x- Stonetalon Mountains,79.7,92.6",
		"Southern Barrens,43.3,96.5 -x- Thousand Needles,32.2,20.5",
		"Thousand Needles 75.3,97.0 -x- Tanaris 51.4,22.9",
		"Tanaris,25.9,66.3 -x- Uldum,70.6,22.5",
		"Tanaris,28.0,51.3 -x- Un'Goro Crater,70.8,91.9",

		"Un'Goro Crater,50.4,7.9 <region:shapers_terrace> -x- Sholazar Basin,40.4,83.0 (B:PORTAL) {template:portalauto} {cond:PlayerCompletedQuest(12613)}",

		"Ammen Vale,23.1,53.5 -x- Azuremyst Isle,67.1,53.8",
		"Valley of Trials,73.4,67.11 -x- Durotar,50.6,68.4",
		"Echo Isles,42.3,46.1 -x- Durotar,58.2,78.6",
		"Camp Narache,26.4,16.1 -x- Mulgore,44.7,71.5",
		"Shadowglen,54.9,86.0 -x- Teldrassil,60.6,44.8",
	},
	[2] = {
		"Westfall 61.8,17.8 -x- Elwynn Forest 21.0,79.7",
		"Elwynn Forest 32.27,49.74 <radius:25> -x- Stormwind City 74.1,92.3 <radius:25>", "@+ -x- Stormwind City 66.20,77.18 <title:Stormwind City gates> {cost:5}",
		"Westfall 67.3,62.5 -x- Duskwood 10.6,63.0",
		"Duskwood 44.9,79.2 -x- Northern Stranglethorn 51.3,11.5",
		"Northern Stranglethorn 51.1,69.8 -x- The Cape of Stranglethorn 59.2,24.3",
		"Duskwood 87.7,41.1 -x- Deadwind Pass 34.9,35.6",
		"Deadwind Pass 59.2,41.3 -x- Swamp of Sorrows 16.8,52.0",
		"Swamp of Sorrows 67.5,14.1 -x- Redridge Mountains 90.2,56.7",
		"Swamp of Sorrows 36.2,66.4 -x- Blasted Lands 48.9,10.5",
		"Elwynn Forest 91.2,73.2 -x- Redridge Mountains 13.5,64.3",
		"Redridge Mountains 16.0,69.5 -x- Duskwood 92.9,12.3",
		"Redridge Mountains 43.0,17.0 -x- Burning Steppes 67.3,81.0",
		"Redridge Mountains 64.0,17.5 -x- Burning Steppes 83.9,79.7",
		"Searing Gorge 35.3,83.9 -x- Burning Steppes 20.8,38.2",
		"Searing Gorge 72.7,55.7 -x- Badlands 7.4,52.8",
		--"Badlands 45.8,7.3 -x- Loch Modan 47.0,73.5 {title:Cross the chasm carefully!}", -- point before the chasm
		--"Badlands 45.8,7.3 -x- Loch Modan 48.13,79.19", -- for the climb, point after / in the chasm
		"Dun Morogh 90.0,51.2 -x- Loch Modan 20.8,63.5",
		"Dun Morogh/6 37.3,92.8 -x- Coldridge Valley 73.5,45.2",
		"Loch Modan 13.2,22.2 -x- Dun Morogh 91.7,29.3",
		--"Loch Modan 25.6,10.7 -x- Wetlands 50.1,81.8",
		"Wetlands 51.0,10.2 -x- Arathi Highlands 38.6,91.0",
		"Wetlands 79.0,47.3 -x- Twilight Highlands 24.3,37.4",
		"Arathi Highlands 13.7,31.1 -x- Hillsbrad Foothills 68.4,69.8 {cond:UnitLevel('player')>=40 or UnitFactionGroup('player')=='Horde'}", -- gate, with guards (lvl 35)
		"Arathi Highlands 18.3,21.2 -x- Hillsbrad Foothills 74.3,65.2", -- break in wall
		"Arathi Highlands 37.0,29.3 -x-  The Hinterlands/0 26.1,69.9",
		"The Hinterlands 9.7,55.7 -x- Hillsbrad Foothills 73.1,52.8",
		"The Hinterlands 24.3,42.1 -x- Western Plaguelands 65.1,86.5",
		"Hillsbrad Foothills 65.6,25.9 -x- Western Plaguelands 43.5,88.1",
		"Silverpine Forest 69.4,80.5 -x- Hillsbrad Foothills 29.4,63.3",
		"Silverpine Forest 64.9,8.4 -x- Tirisfal Glades 53.9,77.1",
		"Tirisfal Glades 84.6,70.3 -x- Western Plaguelands 29.7,57.3",
		"Western Plaguelands 69.1,50.2 -x- Eastern Plaguelands 9.3,66.1",
		"Ghostlands 47.8,13.9 -x- Eversong Woods 48.5,90.4",
		"Eversong Woods 56.4,52.0 -x- Silvermoon City 72.7,86.0",
		"Dun Morogh 58.3,37.7 <border_in_flight:true> -x- Ironforge 21.5,77.4 <border_in_flight:true>",
		"Tirisfal Glades 61.9,65.0 -x- Undercity 66.3,6.8",
		"Silverpine Forest 45.3,85.7 -x- Ruins of Gilneas 60.2,9.6",
		"Twilight Highlands,24.0,37.3 -x- Wetlands,80.0,47.9",

		"Tol Barad Peninsula 66.73,82.02 -x- Tol Barad 40.95,18.53",

		"Coldridge Valley,73.5,45.7 -x- Dun Morogh,38.3,70.9",
		"New Tinkertown,79.6,56.7 -x- Dun Morogh,49.1,45.5",
		"Deathknell,81.4,14.4 -x- Tirisfal Glades,39.3,55.4",
		"Northshire,23.8,76.7 -x- Elwynn Forest,45.5,48.7",
		"Sunstrider Isle,64.8,74.9 -x- Eversong Woods,39.3,30.8",

		"Dun Morogh 02.0,28.0 -x- Kelp'thar Forest 71.0,63.0 (B:FLY) {cond:LibRover.HasAchievement(890)}", -- anyone can fly this one, really
		"Eastern Kingdoms 40.34,69.07 @sw_lighthouse -x- Stormwind City (B:WALK)",
		"@sw_lighthouse -x- Shimmering Expanse 70.0,74.0 (B:FLY) {cond:LibRover.HasAchievement(5180)}", -- only for epic flyers!
		"Ruins of Gilneas 72.77,99.94 -x- Dun Morogh 35.08,2.95 (B:FLY) {cond:LibRover.HasAchievement(890)}", -- TODO: try on a normal flyer
		"Gilneas 67.61,42.38 -x- Gilneas City 66.26,20.93",

		-- some extra points to help mounted flight over bays - note: not all zones on Eastern see each other!! Fatigue prevention!
		"Arathi Highlands 86,74 (B:FLY) {cond:LibRover.HasAchievement(890)} @arathi001",  -- skip a Twilight-Arathi flyaround
		"Arathi Highlands 20,90 (B:FLY) {cond:LibRover.HasAchievement(890)} @arathi002",  -- skip a Arathi-Wetlands flyaround
	},
	[3] = {
		"Blade's Edge Mountains,28.5,93.9 -x- Zangarmarsh,43.3,27.5 (A:_)",
		"Blade's Edge Mountains,52.0,98.8 -x- Zangarmarsh,68.7,32.9 (H:_)",
		"Blade's Edge Mountains,82.5,28.7 -x- Netherstorm,20.0,56.1",
		"Hellfire Peninsula,31.1,92.2 -x- Terokkar Forest,58.3,19.3",
		"Hellfire Peninsula,4.7,50.6 -x- Zangarmarsh,83.0,65.5",
		"Nagrand,34.0,13.0 -x- Zangarmarsh,21.0,70.5",
		"Nagrand,74.1,32.9 -x- Zangarmarsh,74.1,32.6",
		"Nagrand,77.9,82.6 -x- Terokkar Forest,20.3,55.6",
		"Nagrand,78.3,54.5 -x- Shattrath City,12.8,56.4",
		"Shadowmoon Valley,18.0,23.7 -x- Terokkar Forest,71.3,50.4",
		"Shattrath City,76.2,77.3 -x- Terokkar Forest,36.0,31.9",
		"Shattrath City,88.0,45.0 -x- Terokkar Forest,38.9,24.1",
		"Terokkar Forest,32.3,4.7 -x- Zangarmarsh,82.2,92.5",
	},
	[4] = {
		"Borean Tundra,52.8,7.0 -x- Sholazar Basin,32.2,91.4",
		"Borean Tundra,78.9,53.6 -x- Dragonblight,48.0,78.7",
		"Borean Tundra,93.7,35.8 -x- Dragonblight,8.2,54.9",
		"Crystalsong Forest,39.8,38.4 -x- Dalaran,82.4,47.1",
		"Crystalsong Forest,46.1,71.7 -x- Dragonblight,61.3,10.1",
		"Crystalsong Forest,58.2,33.2 -x- Icecrown,89.1,84.3",
		"Crystalsong Forest,63.6,44.3 -x- The Storm Peaks,30.0,94.8",
		"Crystalsong Forest,86.3,44.3 -x- The Storm Peaks,38.6,94.8",
		"Crystalsong Forest,97.1,58.5 -x- Zul'Drak,12.0,66.9",
		"Dragonblight,48.0,78.7 -x- Borean Tundra,78.9,53.6",
		"Dragonblight,49.6,78.4 -x- Howling Fjord,23.5,57.8",
		"Dragonblight,89.0,24.0 -x- Zul'Drak,15.4,89.7",
		"Dragonblight,92.0,30.8 -x- Grizzly Hills,8.1,31.2",
		"Dragonblight,93.2,64.0 -x- Grizzly Hills,9.4,66.7",
		"Grizzly Hills,33.7,81.3 -x- Howling Fjord,24.5,11.3",
		"Grizzly Hills,67.3,70.0 -x- Howling Fjord,53.7,1.3",
		"Grizzly Hills,87.9,69.9 -x- Howling Fjord,71.6,1.3",
		"Grizzly Hills,43.0,25.3 -x- Zul'Drak,55.4,91.1",
		"Grizzly Hills,58.7,13.8 -x- Zul'Drak,71.9,79.1",
		--"Sholazar Basin,40.4,83.0 -x- Un'Goro Crater,50.4,7.9",
	},
	[5] = {
	},
	[6] = {
		"Krasarang Wilds,15.0,36.2 -x- Valley of the Four Winds,10.7,84.3",
		"Valley of the Four Winds 82.1,50.7 -x-  Krasarang Wilds 74.5,4.0",
		"Valley of the Four Winds,70.1,22.8 -x- The Veiled Stair,56.6,81.5", --(This is a stairway and path to go up and down the mountain).
		"Townlong Steppes,60.9,83.9 -x- Dread Wastes,45.2,8.8", -- (This is a huge fallen tree that acts as a bridge between the two zones).
		"Townlong Steppes,76.0,91.9 -x- Dread Wastes,64.2,10.9", -- (Big open area from TS to DW
		"Valley of the Four Winds,71.2,20.4 -x- The Veiled Stair,51.7,93.6",
		"Kun-Lai Summit,73.3,94.6 -x- The Veiled Stair,31.1,1.7", --Long cave. Cave entrence is 73.3,94.6 in Kun-Lai and The Veiled Stair 50.0,39.6
		"The Jade Forest,33.6,64.7 -x- Valley of the Four Winds 90.6,17.7",
		"Townlong Steppes,71.0,42.8 -x- Kun-Lai Summit,29.5,64.4", -- Ox Gate

		"Kun-Lai Summit 45.05,99.98 <template:door> <radius:2> -x- Kun-Lai Summit 44.8,90.0 <template:door> <radius:15> <region:totopofwallKLS> <title:Go down the stairs>",
		"Kun-Lai Summit 44.50,89.06 <template:door> <radius:2> -x- Kun-Lai Summit 44.50,89.15 <template:door> <radius:20> <region:totopofwallKLS> <title:Go down the stairs>",
		"Kun-Lai Summit 44.3,89.9 <radius:20> <region:totopofwallKLS> <title:Go up the stairs> -x- Kun-Lai Summit 44.1,89.9 <radius:5> <region:topofthewallKLS>",
		"Kun-Lai Summit 44.5,90.3 <radius:20> <region:totopofwallKLS> <title:Go up the stairs> -x- Kun-Lai Summit 44.5,90.6 <radius:5> <region:topofthewallKLS>",

		"Valley of the Four Winds 12.3,33.8 <region:topofthewallVFW> -x- Vale of Eternal Blossoms 11.8,99.9 <region:topofthewallVEB>",

		"Kun-Lai Summit,55.5,93.0 -x- Vale of Eternal Blossoms,44.1,12.8 {cond:PlayerCompletedQuest(31512)}", --Alliance you actually get the ability to do this border during the quest... Lets see how it works.
		"Kun-Lai Summit,55.5,93.0 -x- Vale of Eternal Blossoms,44.1,12.8 {cond:PlayerCompletedQuest(31511)}", --Horde

		-- And now some stuff to appease the groundwalkers.
		"The Jade Forest 44.46,89.43 -x- The Jade Forest 44.22,88.43",  -- Garrosh'ar point
		"The Jade Forest 45.66,85.82 -x- The Jade Forest 47.06,87.95",  -- paw'don bridge


		--Shrine of 7 Stars is a  micro dungeon right now... Yes Shrine of 2 Moons is it's own map..
		--Panda Land cities are all in micro dungeons to make them walk borders.
	},
}

data.basenodes.travel = {
-- == SHIPS/ZEPPELINS == --

	"Orgrimmar,43.0,64.9 -x- Thunder Bluff,15.2,25.8 (H:ZEPPELIN)",
	"Orgrimmar,52.5,53.1 -x- Northern Stranglethorn,37.2,52.4 (H:ZEPPELIN)",
	"Orgrimmar,50.8,55.9 -x- Tirisfal Glades,60.7,58.8 (H:ZEPPELIN)",
	{"Orgrimmar,44.7,62.3","Borean Tundra,41.4,53.6",faction="H",mode="zeppelin"},--,cost=7*60+30},

	"Tirisfal Glades,59.1,59.0 <port:Undercity> -x- Howling Fjord,77.7,28.3 (H:ZEPPELIN)",
	"Tirisfal Glades,61.9,59.1 <port:Undercity> -x- Northern Stranglethorn,37.5,50.9 (H:ZEPPELIN)",

	"Stormwind City,18.0,25.8 -x- Borean Tundra 59.7,69.4 (A:SHIP) {cost:177}", -- ship turnaround = 275, ~40s waiting; 275/2+40 = 177.5
	"Stormwind City,22.5,55.8 -x- Teldrassil 55.0,93.7 <port:Darnassus> (A:SHIP)",
	"Teldrassil 52.3,89.5 <port:Darnassus> -x-  Azuremyst Isle 21.3,54.0 (A:SHIP)", --TODO the map is a little strange between Azuremyst and the actual ship.

	"Stormwind City,70.5,30.0 @tramsw <dark:1> -x- Deeprun Tram/1 99,45 (A:TRAM)",   "Stormwind City,66.4,35.0 -x- @tramsw (A:WALK) {dontsetborder:1}",
	{"Wetlands,6.4,62.2 <port:Menethil Harbor>","Dustwallow Marsh,71.5,56.3",faction="A",mode="ship"},
	{"Wetlands,5.1,55.7 <port:Menethil Harbor>","Howling Fjord,61.3,62.6 <port:Valgarde>",faction="A",mode="ship"},--,cost=300}, --ship turnaround is 450, but takes forever to depart/arrive

	-- NEUTRAL SHIPS
	"The Cape of Stranglethorn,39.0,67.0 <port:Booty Bay> -x- Northern Barrens,70.2,73.3 <port:Ratchet> (B:SHIP)", -- booty-ratchet
	"Borean Tundra 11.1,22.2 <port:Unu'pe> -x- Dragonblight 47.3,67.3 <port:Moa'ki Harbor> (B:SHIP) {template:turtle}", -- unu'pe-moa'ki
	"@+ -x- Howling Fjord 11.1,22.2 <port:Kamagua> (B:SHIP) {template:turtle}", -- moa'ki-kamagua


	"Eastern Plaguelands 54.5,8.4 <template:darkportal> -x- Ghostlands 52.1,97.6 <template:darkportal> (B:PORTAL)",

-- == PORTALS == --

	-- PANDARIA
		"Stormwind City,68.8,17.1 -x- The Jade Forest,46.23,85.17 (A:PORTAL) {cond:PlayerCompletedQuest(29548)}",
		"Orgrimmar 68.7,40.7 -x-  The Jade Forest,28.5,14.0 (H:PORTAL) {cond:PlayerCompletedQuest(29690)}",

		"Vale of Eternal Blossoms/4,61.6,39.6 -to- Dalaran,55.86,46.81 (A:PORTAL)",
		"Vale of Eternal Blossoms/4,68.5,52.8 -to- Shattrath City,54.97,40.23 (A:PORTAL)",
		"Vale of Eternal Blossoms/4,70.8,30.6 -to- The Exodar,47.62,59.82 (A:PORTAL)",
		"Vale of Eternal Blossoms/4,77.2,43.5 -to- Darnassus,43.47,78.67 (A:PORTAL)",
		"Vale of Eternal Blossoms/4,74.0,40.8 -to- Ironforge,25.51,08.43 (A:PORTAL)",
		"Vale of Eternal Blossoms/4,71.6,35.8 -to- Stormwind City,49.6,86.5 (A:PORTAL)",

		"Shrine of Two Moons/2,73.5,42.8 -to- Orgrimmar,48.3,64.5 (H:PORTAL)",
		"Shrine of Two Moons/2,75.6,52.6 -to- Silvermoon City,58.3,19.2 (H:PORTAL)",
		"Shrine of Two Moons/2,73.5,36.5 -to- Thunder Bluff,22.2,16.9 (H:PORTAL)",
		"Shrine of Two Moons/2,74.0,48.1 -to- Undercity,84.6,16.3 (H:PORTAL)",
		"Shrine of Two Moons/2,63.5,57.3 -to- Shattrath City,53.0,49.2 (H:PORTAL)",
		"Shrine of Two Moons/2,61.5,36.5 -to- Dalaran,55.86,46.81 (H:PORTAL)",

		"Townlong Steppes 49.7,68.7 -x- Isle of Thunder/0 35.3,90.6 <title:Portal to Shado-Pan Garrison> (A:PORTAL) {cond:PlayerCompletedQuest(32681) and not PlayerCompletedQuest(32644)} {template:portal}",
		--{{"Townlong Steppes 49.7,68.7",faction="A",type="portal"},{"Isle of Thunder/0 64.7,73.5",faction="A",type="portal",actiontitle=function(self,fromnode,tonode) if tonode==self.border then return "Click Portal to Shado-Pan Garrison" end end,cond=function() PlayerCompletedQuest(32644) end}},
		"Townlong Steppes 49.7,68.7 -x- Isle of Thunder/0 64.7,73.5 <title:Portal to Shado-Pan Garrison> (A:PORTAL) {cond:PlayerCompletedQuest(32644)} {template:portal}",
		"Isle of Thunder/0 34.84,89.48 -to- Isle of Thunder/0 31.7,83.6 (A:PORTAL) {cond:not PlayerCompletedQuest(32644)} {template:portal}",
		"Isle of Thunder/0 31.7,83.6 -to- Isle of Thunder/0 34.8,89.5 (A:PORTAL) {cond:not PlayerCompletedQuest(32644) and (ZGV:GetThunderStage()==1 or ZGV:GetThunderStage()==6)} {template:portal}",
		"Isle of Thunder/0 52.02,45.04 -x- Isle of Thunder/0 62.86,32.36 (B:PORTAL)",

		"Townlong Steppes 50.66,73.41 -x- Isle of Thunder/0 28.4,53.0 (H:PORTAL) {cond:PlayerCompletedQuest(32680) and not PlayerCompletedQuest(32212)} {template:portal}",
		"Townlong Steppes 50.66,73.41 -x- Isle of Thunder/0 33.2,32.7 (H:PORTAL) {cond:PlayerCompletedQuest(32212)} {template:portal}",

		"Isle of Thunder/0 28.6,52.8 -to- Isle of Thunder/0 33.1,52.8 (H:PORTAL) {cond:not PlayerCompletedQuest(32212)} {template:portal}",
		"Isle of Thunder/0 28.5,51.7 -to- Isle of Thunder/0 33.1,52.8 (H:PORTAL) {cond:not PlayerCompletedQuest(32212)} {template:portal}",
		"Isle of Thunder/0 33.1,52.8 -to- Isle of Thunder/0 28.5,51.5 (H:PORTAL) {cond:not PlayerCompletedQuest(32212) and (ZGV:GetThunderStage()==1 or ZGV:GetThunderStage()==6)} {template:portal}",

		--There are portals here... No idea when/how they appear...
		-- They're purchased from Proveditor Grantley ##2345 at Krasarang Wilds /0 89.52,33.47 using 5 Domination Point Commission ##91877 each.
		-- They can lead to SW, the Skyfire airship, or to Shrine of Seven Stars.
		--"Krasarang Wilds 89.0,33.9 -to- Stormwind City 74.2,92.2 (A:PORTAL) {cond:PlayerCompletedQuest(32109)}",
		--"Krasarang Wilds 89.2,33.9 -x- Krasarang Wilds 18.1,79.6 (A:PORTAL) {cond:PlayerCompletedQuest(32109)}", --To the ship

		--"Krasarang Wilds 9.9,54.9 -to- Durotar 45.6,13.2 (H:PORTAL) {cond:PlayerCompletedQuest(32108)}", --To orgrim
		--"Krasarang Wilds 10.2,54.8 -x- Krasarang Wilds 76.1,34.5 (H:PORTAL) {cond:PlayerCompletedQuest(32108)}",
		--"Krasarang Wilds 76.2,34.0 -x- Krasarang Wilds/3 37.4,46.4 (H:PORTAL) {cond:PlayerCompletedQuest(32108)}",

		"Townlong Steppes, 29.0,22.1 <title:Portal to Shado-Pan Garrison> -x- Townlong Steppes, 48.5,69.9 (B:PORTAL) {cond:PlayerCompletedQuest(31110)}",
		"Dread Wastes,75.09,21.25 -x- Vale of Eternal Blossoms,14.21,76.79 <region:topofthewallVEB> (B:PORTAL) {template:pandarope}", -- (click the Climbing Rope to either climb up or jump down the cliff)
		"Krasarang Wilds,48.6,27.1 -x- Valley of the Four Winds,51.2,77.5 (B:PORTAL) {template:pandarope}", -- (click the Climbing Rope to either climb up or jump down the cliff). Might need quest

	-- ORGRIMMAR PORTALS:
		"Orgrimmar 49.2,36.5 -to- Kelp'thar Forest 44,28 (H:PORTAL) {cond:PlayerCompletedQuest(26784) and not PlayerCompletedQuest(25222)}",
		"Orgrimmar 49.2,36.5 -to- Shimmering Expanse 49.5,40.5 (H:PORTAL) {cond:PlayerCompletedQuest(25222) and not PlayerCompletedQuest(99999)}",
		"Orgrimmar 49.2,36.5 -to- Abyssal Depths 51.4,61.0 (H:PORTAL) {cond:PlayerCompletedQuest(26784)}",
		"Orgrimmar 48.9,38.5 -to- Uldum 54.9,34.3 (H:PORTAL) {cond:PlayerCompletedQuest(28112)}",
		"Orgrimmar 50.8,36.4 -to- Deepholm 50.6,52.9 (H:PORTAL) {cond:PlayerCompletedQuest(27123)}",	"Deepholm 50.9,53.1 -to- Orgrimmar 50.0,37.7 (H:PORTAL) {cond:PlayerCompletedQuest(27123)}",
		"Orgrimmar 51.1,38.3 -to- Mount Hyjal 63.5,23.4 (H:PORTAL) {cond:PlayerCompletedQuest(25316)}",	"Mount Hyjal 63.5,24.4 -to- Orgrimmar 50.0,37.7 (H:PORTAL) {cond:PlayerCompletedQuest(25316)}",
		"Orgrimmar 47.4,39.3 -to- Tol Barad Peninsula 55.8,80.1 (H:PORTAL) {cond:UnitLevel('player')>=85}", 	"Tol Barad Peninsula 56.3,79.7 -to- Orgrimmar 47.6,39.1 (H:PORTAL) {cond:UnitLevel('player')>=85}",
		"Orgrimmar 50.2,39.4 -x- Twilight Highlands 73.57,53.53 <template:cityportal> (H:PORTAL) {cond:PlayerCompletedQuest(26784)}",
		"Orgrimmar/1 70.6,30.9 -x- Brawl'gar Arena/1 55.8,17.0 (H:PORTAL) {template:pinkportal}",

	-- STORMWIND PORTALS
		"Stormwind City,73.2,16.9 -to- Kelp'thar Forest 44,28 (A:PORTAL) {cond:PlayerCompletedQuest(14482) and not PlayerCompletedQuest(25222)}",
		"Stormwind City,73.2,16.9 -to- Shimmering Expanse 47.2,57.5 (A:PORTAL) {cond:PlayerCompletedQuest(25222) and not PlayerCompletedQuest(99999)}",
		"Stormwind City,73.2,16.9 -to- Abyssal Depths 55.7,72.8 (A:PORTAL) {cond:PlayerCompletedQuest(14482)}",
		"Stormwind City,75.3,20.5 -to- Uldum,54.9,34.3 (A:PORTAL) {cond:PlayerCompletedQuest(28112)}",
		"Stormwind City,73.2,19.6 -to- Deepholm,48.7,53.6 @deepholm_tp_dst (A:PORTAL) {cond:PlayerCompletedQuest(27123)}",	"Deepholm,48.5,53.8 -to- Stormwind City,74.5,18.3 (A:PORTAL) {cond:PlayerCompletedQuest(27123)}",
		"Stormwind City,76.2,18.7 -x- Mount Hyjal,62.6,23.1 (A:PORTAL) {cond:PlayerCompletedQuest(25316)}",
		"Stormwind City,73.2,18.4 -to- Tol Barad Peninsula,73.7,60.9 (A:PORTAL) {cond:UnitLevel('player')>=85}",  "Tol Barad Peninsula,75.2,58.9 -to- Stormwind City,73.4,18.3 (A:PORTAL) {cond:UnitLevel('player')>=85}",
		"Stormwind City,75.2,16.8 -x- Twilight Highlands,79.5,77.8 <template:cityportal> (A:PORTAL) {cond:PlayerCompletedQuest(27537)}",

	"The Exodar,47.6,62.2 -x- Darnassus,44.3,78.7 (A:PORTAL)",
	"Darnassus,37.3,50.5 -x- Teldrassil,55.1,88.4 <port:Rut'theran Village> (B:PORTAL) {template:pinkportal}",  -- Teldrassil,55.1,88.4  NO  Teldrassil,38.1,47.5
	"Silvermoon City 49.4,14.8 -x- Undercity  54.9,11.2 (H:PORTAL)",

	-- portals -to- Blasted Lands
		"Blasted Lands,53.9,46.1 @bl_port_dst",
		-- Horde
		"Orgrimmar/2 44.7,68.0 <region:cleftofshadow> -to- @bl_port_dst (H:PORTAL) {cond:UnitLevel('player')>=58}",
		--"Orgrimmar/1 35.5,69.1  -to- @bl_port_dst (H:PORTAL) {cond:UnitLevel('player')>=58}", -- Removed 06/2013
		"Silvermoon City 58.4,20.9 -to- @bl_port_dst (H:PORTAL) {cond:UnitLevel('player')>=58}",
		"Undercity 85.2,17.1 -to- @bl_port_dst (H:PORTAL) {cond:UnitLevel('player')>=58}",
		"Thunder Bluff 23.2,13.5 -to- @bl_port_dst (H:PORTAL) {cond:UnitLevel('player')>=58}",

		-- Ally
		"Ironforge,27.2,7.0 -to- @bl_port_dst (A:PORTAL) {cond:UnitLevel('player')>=58}",
		"Stormwind City,49.0,87.3 -to- @bl_port_dst (A:PORTAL) {cond:UnitLevel('player')>=58}",
		"The Exodar,48.2,63.0 -to- @bl_port_dst (A:PORTAL) {cond:UnitLevel('player')>=58}",
		"Darnassus,44.1,78.2 -to- @bl_port_dst (A:PORTAL) {cond:UnitLevel('player')>=58}",

	"Blasted Lands,55.0,54.2 -x- Hellfire Peninsula,89.4,50.2 (B:PORTAL) {cond:UnitLevel('player')>=58} {template:darkportal}",

	"Hellfire Peninsula 88.64,52.82 -to- Stormwind City 49,87 (A:PORTAL)",
	"Hellfire Peninsula 88.6,47.7 -to- Orgrimmar 48.3,64.5 (H:PORTAL)",

	-- DALARAN PORTALS:
		"Dalaran 40.1,62.8 -to- Stormwind City 49.6,86.5 (A:PORTAL)", --COORDS BAD
		"Dalaran 55.4,25.4 -to- Orgrimmar 48.3,64.5 (H:PORTAL)",
		"Dalaran 33.6,68.6 -to- Wintergrasp,50.0,16.7 (A:PORTAL) {cond:LibRover:IsWintergraspControlled()}",
		"Dalaran 58.1,25.8 -to- Wintergrasp,50.0,16.7 (H:PORTAL) {cond:LibRover:IsWintergraspControlled()}",
		"Dalaran 56.0,46.8 -x- Crystalsong Forest 15.8,42.5 (B:PORTAL)",

		"Dalaran 25.5,51.4 -to- Tanaris/17 54.6,28.3 <title:Caverns of Time> @cot_from_dala (B:PORTAL) {cond:LibRover.cfg.use_cot or (ZGV and ZGV:GetReputation('Keepers of Time').standing>=5)}",
		--"Dalaran/1 25.9,44.2 -x- Dalaran/1 22.3,39.7 (A:PORTAL)", --portal to upper level in Dalaran. The Purple Parlor

	-- DARKMOON ISLAND
	--Interesting tidbit. Alliance can enter the horde portal and horde the alliance, but when you portal back, it will spit you
	--back out at your faction portal. aka
	-- Gnome -> Mulgore portal -> Darkmoon portal -> Elwynn
	-- Orc -> Mulgore portal -> Darkmoon portal -> Mulgore

	--You can enter anywhere, but only exit at one place
	"Elwynn Forest 41.8,69.5 -to- Darkmoon Island 51.2,23.1 (B:PORTAL) {cond:ZGV:FindEvent('DARKMOON FAIRE')}",
	"Mulgore 36.9,35.9 -to- Darkmoon Island 51.2,23.2 (B:PORTAL) {cond:ZGV:FindEvent('DARKMOON FAIRE')}",

	"Darkmoon Island 51.2,23.1 -to- Elwynn Forest 41.8,69.5 (A:PORTAL)",
	"Darkmoon Island 50.6,90.6 -to- Elwynn Forest 41.8,69.5 (A:PORTAL)",

	"Darkmoon Island 51.2,23.1 -to- Mulgore 36.9,35.9 (H:PORTAL)",
	"Darkmoon Island 50.6,90.6 -to- Mulgore 36.9,35.9 (H:PORTAL)",

	-- Ulduar teleporters
		"Ulduar/1 50.98,85.54 <name:Expedition Base Camp>	<template:teleportnamed>	@uld10",
		"Ulduar/1 49.24,47.34 <name:Formation Grounds>		<template:teleportnamed>	@uld11",
		"Ulduar/1 48.54,28.08 <name:Colossal Forge>		<template:teleportnamed>	@uld12",
		"Ulduar/1 48.51,11.06 <name:Scrapyard>			<template:teleportnamed>	@uld13",
		"Ulduar/2 37.32,00.52 <name:Antechamber of Ulduar>	<template:teleportnamed>	@uld20",
		"Ulduar/2 37.10,76.41 <name:Shattered Walkway>		<template:teleportnamed>	@uld21",
		"Ulduar/3 51.02,54.02 <name:Conservatory of Life>	<template:teleportnamed>	@uld30",
		"Ulduar/4 66.60,59.98 <name:Prison of Yogg-Saron>	<template:teleportnamed>	@uld40",
		"Ulduar/5 43.65,62.19 <name:Spark of Imagination>	<template:teleportnamed>	@uld50",
	-- ICC teleporters
		"Icecrown Citadel/1 38.98,17.17   <name:Light's Hammer>		<template:teleportnamed>	@icc10",
		"Icecrown Citadel/1 38.98,71.11   <name:Oratory of the Damned>	<template:teleportnamed>	@icc11",
		"Icecrown Citadel/2 45.60,80.43   <name:Rampart of Skulls>	<template:teleportnamed>	@icc20",
		"Icecrown Citadel/3 51.50,76.26   <name:Deathbringer's Rise>	<template:teleportnamed>	@icc30",
		"Icecrown Citadel/4 26.11,33.30   <name:Sindragosa's Lair>	<template:teleportnamed>	@icc40",
		"Icecrown Citadel/5 51.87,74.32   <name:Upper Spire>		<template:teleportnamed>	@icc50",
	-- End Time teleporters
		"End Time/1 79.76,45.52		<name:Entryway of Time>		<template:teleportnamed>	@et1",
		"End Time/2 41.88,80.19		<name:Azure Dragonshrine>	<template:teleportnamed>	@et2",
		"End Time/3 34.34,43.19		<name:Ruby Dragonshrine>	<template:teleportnamed>	@et3",
		"End Time/4 75.23,62.82		<name:Obsidium Dragonshrine>	<template:teleportnamed>	@et4",
		"End Time/5 46.10,21.40		<name:Emerald Dragonshrine>	<template:teleportnamed>	@et5",
		"End Time/6 35.40,79.14		<name:Bronze Dragonshrine>	<template:teleportnamed>	@et6",

-- MAGE TELEPORTS:


	-- Okay, new rule, since these are becoming numerous. Alas, ONE SPELL PER NODE. New spell = new node.  ~sinus 2013-02-05

	"Dalaran 55.86,46.81 @dala_tp_dst			<spell:53140>  <faction:B>",

	"Shattrath City 54.97,40.23					<spell:33690>  <faction:A>",
	"The Exodar 47.62,59.82						<spell:32271>  <faction:A>",
	"Dustwallow Marsh 66.00,49.00				<spell:49359>  <faction:A>",
	"Darnassus 43.47,78.67						<spell:3565>   <faction:A>",
	"Ironforge 25.51,08.43						<spell:3562>   <faction:A>",
	"Stormwind City 49.6,86.5 @sw_tp_dst		<spell:3561>   <faction:A>",
	"Tol Barad Peninsula 73.7,60.9				<spell:88342>  <faction:A>",
	"Vale of Eternal Blossoms/0 86.30,61.05		<spell:132621> <faction:A>",

	"Orgrimmar/2 48.3,64.7 @org_tp_dst			<spell:3567>   <faction:H> <region:cleftofshadow>",
	"Silvermoon City 58.3,19.2					<spell:32272>  <faction:H>",
	"Swamp of Sorrows 49.8,55.8					<spell:49358>  <faction:H>", --stonard
	"Thunder Bluff 22.2,16.9					<spell:3566>   <faction:H>",
	"Shattrath City 53.0,49.2					<spell:35715>  <faction:H>",
	"Undercity 84.6,16.3						<spell:3563>   <faction:H>",
	"Tol Barad Peninsula 55.8,80.1				<spell:88344>  <faction:H>",
	"Vale of Eternal Blossoms/0 62.21,21.54		<spell:132627> <faction:H>",
	--DRUIDS
	"Moonglade  56.3,32.4						<spell:18960>", --Class based!
	-- DK DEATHGATE
	"Eastern Plaguelands 83.72,50.03			<spell:50977>", --Class based!

-- ITEM TELEPORTS:

	--[[ Random Locations from Inscription scrolls when using a low level one.
		Undercity 69.1,11.3
		Swamp of Sorrows 85.9,52.7
	]]
	--"RANDOM				<item:64457> <cooldown:43200>", -- The Last Relic of Argus
		--[[ I have used this item 186 times with these results.
			"Silithus 28.7, 57.6 <item:46874>",
			"Duskwood 18.7, 24.8 <item:46874>",
			"Wetlands 69.6, 87.8 <item:46874>",
			"Desolace 32.3, 22.7 <item:46874>",
			"Ungoro 33.2, 56.2 <item:46874>",
			"Badlands 51.9, 34.2 <item:46874>",
			"Western Plaguelands 42.3, 15.0 <item:46874>",
			"Tanaris 64.5, 20.0 <item:46874>",
			"Badlands 89.9, 36.3 <item:46874>",
			"Hellfire Peninsula 97.5, 47.1 <item:46874>",
			"Northern Barrens 78.0, 91.6 <item:46874>",
			"Tanaris 69.7, 47.9 <item:46874>",
			"Felwod 53.4, 31.2 <item:46874>",
			"Moonglade 45.7, 47.0 <item:46874>",
			"Western Plaguelands 50.9, 36.4 <item:46874>",
			"Northern Stranglethorn 45.1, 68.4 <item:46874>",
			"Badlands 23.9, 56.4 <item:46874>",
			"Arathi Highlands 48.9, 43.8 <item:46874>",
			"Blasted Lands 33.6, 51.3 <item:46874>",
			"The Cape of Stranglethorn 35.4, 63.7 <item:46874>",
			"The Northern Barrens 52.3, 54.9 <item:46874>",
			"Searing Gorge 39.4, 67.0 <item:46874>",
			"Wetlands 23.0, 65.8 <item:46874>",
			"Blasted Lands 64.7, 55.1 <item:46874>",
			"Diremaul 62.5, 28.0 <item:46874>",
		--]]

	--"Northrend				<item:48933> <cooldown:14400>", -- Wormhole Generator:Northrend Engineering >=415
		--Borean Tundra 51.8,45.0--51.8.. High above water.. Really high -- 20.5,62.8
		--Howling Fjord 58.5,48.6 -- Tested, The coords available were wrong... ->79.7,79.8
		--Sholazar Basin 49.2,39.6--25.0,37.7
		--Icecrown 62.9,26.9 --43.5,19.4
		--Storm Peaks 43.9,25.8-- 59.1, 13.7
		--Dalaran xx,yy --UNDERGROUND. Need another port to get out.


	--"Pandaria				<item:87215> <cooldown:900>", -- Wormhole Generator:Pandaria  Engineering >=500
		--[[
		Dread Wastes (Coords 29, 81)
		Dread Wastes (Coords 37, 21)
		Jade Forest (Coords 50, 27)
		Krasarang Wilds (Coords 71, 44)
		Kun-lai Summit (Coords 42, 84)
		Kun-lai Summit (Coords 73, 11)
		Townlong Steppes (Coords 16, 38)
		Vale of Eternal Blossoms (Coords 43, 43)
		Valley of the Four Winds (Coords 42, 37)
		--]]

-- SHATTRATH PORTALS:
	"Shattrath City 57.2,48.3 -to- @sw_tp_dst (A:PORTAL) {cost:15}", -- stormwind mage tower sucks
	"Shattrath City 56.8,48.9 -to- @org_tp_dst (H:PORTAL)",
	"Shattrath City 48.6,42.0 -to- Isle of Quel'Danas 48.3,34.5 (B:PORTAL)",

	-- Badlands details
	-- Fuselight-by-the-sea teleport
	"Badlands 72.1,31.6 -x- Badlands 75.6,33.2 (B:WALK)", --access
	"Badlands 82.8078,33.9781 -x- Badlands 88.0642,32.4937 (A:PORTAL) {template:transporter}",
	-- Fuselight entrances
	"Badlands 60.7,28.3 -x- Badlands 62.8,35.7 <region:fuselight> (B:WALK)",
	"Badlands 68.7,30.9 -x- Badlands 66.7,36.3 <region:fuselight> (B:WALK)",

	-- Firelands portal
	"Mount Hyjal 27.5,56.3 -x- Molten Front 52.9,83.9 (B:PORTAL)",

	-- MISCELLANEAEOAOUS
	--[[
	"Badlands 45.8,7.3 -x- Loch Modan 48.13,79.19 @lochbad01 <radius:10> <dark:1> (B:WALK)",
	"@lochbad01 -x- Loch Modan 48.21,77.16 @lochbad02 <radius:10> <dark:1> (B:WALK)",
	"@lochbad02 -x- Loch Modan 47.21,73.40 <radius:10> (B:WALK)",
	--]]

	--Lock Modan / Wetlands cross

	"Loch Modan 25.6,10.5",
	"@+ -x- Loch Modan 25.3,0.2 <radius:5> <dark:1> (B:WALK)",
	"@+ -x- Wetlands 55.1,83.5 <radius:5> <dark:1> <cost:0> (B:WALK)",
	"@+ -x- Wetlands 50.7,82.6 <radius:5> <dark:1> <cost:0> (B:WALK)",
	"@+ -x- Wetlands 50.2,78.3 <radius:5> <dark:1> <cost:0> (B:WALK)",
	"@+ -x- Wetlands 50.1,71.6 <radius:5> <dark:1> <cost:0> (B:WALK)",
	"@+ -x- Wetlands 50.1,71.6 <radius:5> <dark:1> <cost:0> (B:WALK)",
	"@+ -x- Wetlands 49.3,70.6 <radius:5> <dark:1> <cost:0> (B:WALK)",
	"@+ -x- Wetlands 53.9,70.3 <radius:5> <dark:1> <cost:0> (B:WALK)",
	"@+ -x- Wetlands 54.4,70.3 <radius:15> (B:WALK)",

	-- Loch Modan / Badlands cross
	"Badlands 45.8,7.3",
	"@+ -x- Loch Modan 48.13,79.19 <radius:10> <dark:1> (B:WALK)",  -- @+ means "last one added", it's a nightmare, I know.
	--"@+ -x- Loch Modan 47.15,78.55 <radius:5> <dark:1> (B:WALK)",
	--"@+ -x- Loch Modan 48.22,78.08 <radius:5> <dark:1> (B:WALK)",
	"@+ -x- Loch Modan 48.21,77.16 <radius:5> <dark:1> (B:WALK)",
	"@+ -x- Loch Modan 47.28,76.00 <radius:5> <dark:1> (B:WALK)",
	--"@+ -x- Loch Modan 48.32,76.41 <radius:5> <dark:1> (B:WALK)",
	--"@+ -x- Loch Modan 46.96,73.77 <radius:5> <dark:1> (B:WALK)",
	"@+ -x- Loch Modan 47.21,73.40 <radius:5> (B:WALK)",

	-- Ironforge experiment
	--[[
	 "Ironforge 53,82 @if01 <costmod:0.7> (B:WALK)",
	 "Ironforge 60,70 @ifmw01 -x- Ironforge 50,58 @ifmw02 (B:WALK)",
	 "Ironforge 69,59 @iftt01 -x- Ironforge 71,39 @iftt02 (B:WALK)",
	 "Ironforge 61,27 @ifhe01 -x- Ironforge 56,34 @ifhe02 (B:WALK)",
	 "Ironforge 58,12 @iffc01 -x- Ironforge 39,11 @iffc02 (B:WALK)",
	 "Ironforge 33,23 @ifyw01 -x- Ironforge 38,38 @ifyw02 (B:WALK)",
	 "Ironforge 25,28 @if02 <costmod:0.7> (B:WALK)",
	 "Ironforge 28,55 @ift11 -x- Ironforge 39,46 @ift12 (B:WALK)",
	 "Ironforge 38,72 @ift21 -x- Ironforge 44,58 @ift22 (B:WALK)",
	 "@ifmw02 -x- @iftt02 (B:WALK)",
	 "@iftt02 -x- @ifhe02 (B:WALK)",
	 "@ifhe02 -x- @iffc02 (B:WALK)",
	 "@iffc02 -x- @ifmw02 (B:WALK)",
	 "@ifyw02 -x- @ifyw02 (B:WALK)",
	 "@ifyw02 -x- @ifyw02 (B:WALK)",
	 "@ifyw02 -x- @ifmw02 (B:WALK)",
	--]]

	--"Ironforge 50,50 @honeypot <costmod:0.7>",

	--"Blackrock Spire 50,50 <costmod:0.7>",

-- DUNGEON ENTRANCE/EXITS
	-- {style:portal_dungeon} gives the nice "enter dungeon"/"exit dungeon" mechanics.

	--Kalimdor
		-- RAGEFIRE CHASM
		"Orgrimmar/2 70.10,48.95 <region:cleftofshadow> -x- Ragefire Chasm 62.41,7.88 {style:portal_dungeon}",

		-- WAILING CAVERNS
		"Northern Barrens/20 33.8,22.7",
		"@+ -x- Northern Barrens/20 55.3,65.4 <dark:1> <nofly:1>",
		"@+ -x- Wailing Caverns 45.8,59.7 {style:portal_dungeon}",

		-- BLACKFATHOM DEEPS
		"Ashenvale 14.2,13.9",
		"@+ -x- Ashenvale 13.76,9.24 <dark:1>  <radius:5> <nofly:1>",
		"@+ -x- Ashenvale 16.52,11.03 <dark:1> <nofly:1>",
		"@+ -x- Blackfathom Deeps 44.29,10.66 {style:portal_dungeon}",

		-- ZUL'FARRAK
		"Tanaris 39.22,21.27 -x- Zul'Farrak 56.60,90.95 {style:portal_dungeon}",

		-- RAZORFEN DOWNS
		"Thousand Needles 47.65,23.65 -x- Razorfen Downs 23.79,18.80 {style:portal_dungeon}",
		-- RAZORFEN KRAUL
		"Southern Barrens 40.72,94.39 -x- Razorfen Kraul 69.89,82.97 {style:portal_dungeon}",

		-- MARAUDON: EARTHSONG FALLS
		"Desolace/22 44.3,76.7 -to- Maraudon 28.1,35.5 {template:cityportal}",
		-- MARAUDON: THE WICKED GROTTO
		"Desolace/22 52.4,23.8 -x- Maraudon 78.48,68.45 {style:portal_dungeon}",
		-- MARAUDON: FOULSPORE CAVERN
		"Desolace/21 78.4,55.3 -x- Maraudon 62.16,28.18 {style:portal_dungeon}",

		-- DIRE MAUL: WARPWOOD QUARTER
		"Feralas/0 65.84,30.22 -x- Dire Maul/5 6.71,38.29 {style:portal_dungeon}",
		"Feralas/0 66.77,34.84 -x- Dire Maul/5 28.22,84.76 {style:portal_dungeon}",
		"Feralas/0 76.45,35.90 -x- Dire Maul/5 92.12,45.20 {style:portal_dungeon}",
		"Dire Maul/6 36.74,38.45 -to- Feralas/0 66.11,26.31 <style:portal_dungeon>",
		-- DIRE MAUL: CAPITAL GARDENS
		"Feralas/0 60.31,31.30 -x- Dire Maul/2 93.42,75.90 {style:portal_dungeon}",
		"Feralas/0 60.32,30.12 -x- Dire Maul/2 93.53,47.68 {style:portal_dungeon}",
		-- DIRE MAUL: GORDOK COMMONS
		"Feralas 62.51,24.89 -x- Dire Maul/1 71.13,93.54 {style:portal_dungeon}",

		-- THE BLACK MORASS
		"Tanaris/18 36.3,83.2 -x- The Black Morass 52.06,0.15 {style:portal_dungeon}",
		-- CULLING OF STRATHOLME
		"Tanaris/18 57.4,82.6  -x- The Culling of Stratholme 87.51,71.21 {style:portal_dungeon}",
		-- END TIME
		"Tanaris/18 57.6,29.6 -x- End Time 80.73,44.20 {style:portal_dungeon}",
		-- WELL OF ETERNITY
		"Tanaris/18 22.5,64.4 -x- Well of Eternity 27.82,63.37 {style:portal_dungeon}",
		-- HOUR OF TWILIGHT
		"Tanaris/18 67.2,29.4 -x- Hour of Twilight 48.51,19.72 {style:portal_dungeon}",

		-- THE VORTEX PINNACLE
		"Uldum 76.81,84.55 -x- The Vortex Pinnacle 54.12,16.81 {style:portal_dungeon}",
		-- HALLS OF ORIGINATION
		"Uldum 69.09,52.97 -x- Halls of Origination/1 49.91,93.73 {style:portal_dungeon}",
		-- LOST CITY OF THE TOL'VIR
		"Uldum 60.55,64.32 -x- Lost City of the Tol'vir 31.78,16.78 {style:portal_dungeon}",

	--Eastern Kingdom
		--Scholomance
		"Western Plaguelands 69.1,72.9 -x- Scholomance/1 18.1,60.9 {style:portal_dungeon}",
		-- STRATHOLME: MAIN GATE
		"Eastern Plaguelands/0 27.61,11.63 -x- Stratholme/1 68.02,88.46 {style:portal_dungeon}",
		"Eastern Plaguelands/0 26.51,11.67 -x- Stratholme/1 64.46,88.52 {style:portal_dungeon}",
		-- STRATHOLME: SERVICE ENTRACE
		"Eastern Plaguelands/0 43.82,17.42 -x- Stratholme/2 67.74,86.29 {style:portal_dungeon}",

		--Scarlet Halls
		"Tirisfal Glades/13 78.5,58.2 -x- Scarlet Halls/1 34.3,90.1 {style:portal_dungeon}",
		--Scarlet Monastery
		"Tirisfal Glades/13 69.4,25.1 -x- Scarlet Monastery/1 75.7,45.8 {style:portal_dungeon}",

		-- ZUL'GURUB
		"Northern Stranglethorn 72.18,32.91 -x- Zul'Gurub 30.23,48.85 {style:portal_dungeon}",
		-- ZUL'AMAN
		"Ghostlands 82.28,64.3 -x- Zul'Aman 7.32,52.97 {style:portal_dungeon}",

		-- DEADMINES
		"Westfall/17 50.94,64.98",
		"@+ -x- Westfall/17 25.8,51.1 <dark:1> <nofly:1> <radius:10> ",
		"@+ -x- The Deadmines/1 26.5,13.4 {style:portal_dungeon}",
		"The Deadmines/2 96.17,51.66 -to- Westfall/0 41.15,83.19 <style:portal_dungeon>",
		-- SHADOWFANG KEEP
		"Silverpine Forest 44.75,67.79 -x- Shadowfang Keep 69.46,60.97 {style:portal_dungeon}",
		-- THE STOCKADE
		"Stormwind City 50.42,66.31 -x- The Stockade 50.07,68.09 {style:portal_dungeon}",

		-- GNOMEREGAN
		"Dun Morogh/10 30.0,74.7 -x- Gnomeregan 64.33,28.96 {style:portal_dungeon}",
		-- ULDAMAN
		"Badlands/18 36.7,30.1 -x- Uldaman 67.03,72.71 {style:portal_dungeon}",

		-- BLACKROCK DEPTHS
		"Searing Gorge/16 40,17 -x- Blackrock Depths 34.70,77.80 {style:portal_dungeon}",
		-- BLACKROCK CAVERNS
		"Burning Steppes/15 70.0,53.3 -x- Blackrock Caverns 32.02,70.10 {style:portal_dungeon}",
		-- LOWER BLACKROCK SPIRE/UPPER BLACKROCK SPIRE
		"Burning Steppes/14 65.8,42.0 -x- Blackrock Spire/4 26.77,38.23 {style:portal_dungeon}",

		-- MAGISTERS' TERRACE
		"Isle of Quel'Danas 61.28,30.92 -x- Magisters' Terrace/2 42.53,90.01 {style:portal_dungeon}",
		"Magisters' Terrace/1 4.63,50.20 -to- Isle of Quel'Danas/0 47.10,30.69 (B:PORTAL)",
		-- GRIM BATOL
		"Twilight Highlands 19.14,53.84 -x- Grim Batol 12.15,55.67 {style:portal_dungeon}",

	--Outlands
		-- HELLFIRE RAMPARTS
		"Hellfire Peninsula 47.59,53.59 -x- Hellfire Ramparts/1 50.06,70.37 {style:portal_dungeon}",
		-- THE BLOOD FURNACE
		"Hellfire Peninsula 45.95,51.87 -x- The Blood Furnace/1 47.75,90.56 {style:portal_dungeon}",
		-- THE SHATTERED HALLS
		"Hellfire Peninsula 47.48,52.02 -x- The Shattered Halls/1 61.14,92.81 {style:portal_dungeon}",

		{{"Zangarmarsh 50.36,40.85",region="coilfang1",actiontitle=function(self,fromnode,tonode) if tonode==self.border then return "Dive between pipes" else return "Swim to surface" end end},
		 {"Zangarmarsh 50.67,40.07",region="coilfangpipe",actiontitle=function(self,fromnode,tonode) if tonode==self.border then return "Swim through pipe" else return "Dive deep down pipe" end end}},
		{{"Zangarmarsh 51.84,38.85",region="coilfangpipe",actiontitle=function(self,fromnode,tonode) if tonode==self.border then return "Swim through pipe" else return "Swim into pipe" end end},
		 {"Zangarmarsh 51.91,37.93",region="coilfang2",actiontitle=function(self,fromnode,tonode) if tonode==self.border then return "Dive into pipe" else return "Swim to surface" end end}},
		-- THE STEAMVAULT
		"Zangarmarsh 50.29,33.33 <region:coilfang2> -x- The Steamvault 17.59,29.76 {style:portal_dungeon}",
		-- THE SLAVE PENS
		"Zangarmarsh 48.95,35.70 <region:coilfang2> -x- The Slave Pens 19.95,13.37 {style:portal_dungeon}",
		-- THE UNDERBOG
		"Zangarmarsh 54.28,34.40 <region:coilfang2> -x- The Underbog 29.68,67.88 {style:portal_dungeon}",

		-- MANA-TOMBS
		"Terokkar Forest 39.64,57.63 -x- Mana-Tombs 33.52,17.29 {style:portal_dungeon}",
		-- AUCHENAI CRYPTS
		"Terokkar Forest 34.30,65.61 -x- Auchenai Crypts/1 44.12,75.10 {style:portal_dungeon}",
		-- SETHEKK HALLS
		"Terokkar Forest 44.95,65.61 -x- Sethekk Halls 73.35,36.47 {style:portal_dungeon}",
		-- SHADOW LABYRINTH
		"Terokkar Forest 39.63,73.60 -x- Shadow Labyrinth 22.01,12.45 {style:portal_dungeon}",

		-- OLD HILLSBRAD FOOTHILLS
		"Tanaris/18 26.9,35.9 -x- Old Hillsbrad Foothills 23.23,24.80 {style:portal_dungeon}",

		-- THE BOTANICA
		"Netherstorm 71.76,54.93 -x- The Botanica/1 89.59,41.09 {style:portal_dungeon}",
		-- THE MECHANAR
		"Netherstorm 70.62,69.78 -x- The Mechanar/1 49.41,83.51 {style:portal_dungeon}",
		"The Mechanar/2 27.34,73.16 -to- Netherstorm/0 70.54,69.64 <style:portal_dungeon>",
		-- THE ARCATRAZ
		"Netherstorm 74.49,57.68 -x- The Arcatraz/1 41.26,81.70 {style:portal_dungeon}",

	--Northrend
		-- UTGARDE KEEP
		"Howling Fjord 57.28,46.73 -x- Utgarde Keep 69.27,73.00 {style:portal_dungeon}",
		-- UTGARDE PINNACLE
		"Howling Fjord 57.26,46.66 -x- Utgarde Pinnacle 44.49,16.12 {style:portal_dungeon}",

		-- THE NEXUS
		"Borean Tundra 27.50,25.98 -x- The Nexus 36.20,88.0 {style:portal_dungeon}",
		-- THE OCULUS
		"Borean Tundra 27.50,25.98 -x- The Oculus 61.30,47.58 {style:portal_dungeon}",

		-- AZJOL NERUB
		"Dragonblight 25.96,50.90 -x- Azjol-Nerub/3 9.44,93.32 {style:portal_dungeon}",
		"Azjol-Nerub/1 88.47,76.32 -to- Dragonblight 28.43,47.00 <style:portal_dungeon>",
		-- THE OLD KINGDOM
		"Dragonblight 28.47,51.72 -x- Ahn'kahet: The Old Kingdom 88.99,79.12 {style:portal_dungeon}",

		-- DRAK'THARON KEEP
		"Zul'Drak 28.52,86.93 -x- Drak'Tharon Keep 29.38,80.96 {style:portal_dungeon}",
		-- VIOLET HOLD
		"Dalaran 68.60,70.39 -x- The Violet Hold 46.15,98.03 {style:portal_dungeon}",
		-- GUNDRAK
		"Zul'Drak 76.12,20.95 -x- Gundrak 58.99,30.92 {style:portal_dungeon}",

		-- HALLS OF STONE
		"The Storm Peaks 39.50,26.92 -x- Halls of Stone 34.4,36.2 {style:portal_dungeon}",
		-- HALLS OF LIGHTNING
		"The Storm Peaks 45.38,21.37 -x- Halls of Lightning 7.38,53.81 {style:portal_dungeon}",

		-- TRIAL OF THE CHAMPION
		"Icecrown 74.17,20.52 -x- Trial of the Champion 51.18,30.24 {style:portal_dungeon}",
		-- FORGE OF SOULS
		"Icecrown 54.92,89.76 -x- The Forge of Souls 66.05,88.89 {style:portal_dungeon}",
		-- PIT OF SARON
		"Icecrown 54.78,91.80 -x- Pit of Saron 40.91,80.52 {style:portal_dungeon}",
		-- HALLS OF REFLECTION
		"Icecrown 55.46,90.88 -x- Halls of Reflection 47.33,80.81 {style:portal_dungeon}",
		"Pit of Saron 32.30,6.81 -x- Halls of Reflection 47.33,80.81 {style:portal_dungeon}",

	--Maelstrom
		-- THRONE OF THE TIDES
		"Abyssal Depths 69.49,24.99 -x- Throne of the Tides/1 49.85,88.23 {style:portal_dungeon}",

		-- THE STONECORE
		"Deepholm 47.70,51.98 -x- The Stonecore 54.27,93.90 {style:portal_dungeon}",

	--Pandaria
		-- Siege of Niuzao Temple
		"Townlong Steppes 34.7,81.4 -x- Siege of Niuzao Temple/2 64.9,86.9 {style:portal_dungeon}",

		--Shado-Pan Monastery
		"Kun-Lai Summit 36.7,47.5 -x- Shado-Pan Monastery/1 84.9,56.1 {style:portal_dungeon}",

		--Stormstout Brewery
		"Valley of the Four Winds 36.0,69.1 -x- Stormstout Brewery 79.4,39.7 {style:portal_dungeon}",

		--Mogu'shan Palace
		"Vale of Eternal Blossoms 80.9,32.6 -x- Mogu'shan Palace 28.6,20.3 {style:portal_dungeon}",

		--Shado-Pan Monastery
		"Kun-Lai Summit 36.7,47.5 -x- Shado-Pan Monastery/1 84.9,56.1 {style:portal_dungeon}",

		--Temple of the Jade Serpant
		"The Jade Forest 56.2,57.9 -x- Temple of the Jade Serpent 31.4,45.0 {style:portal_dungeon}",

		--Gate of the Setting Sun
		"Vale of Eternal Blossoms 15.9,74.3 <region:topofthewallVEB> -x- Gate of the Setting Sun/1 61.3,87.8 {style:portal_dungeon}",

-- RAID ENTRANCE/EXITS
	--Molten Core
	"Blackrock Depths/2 68.8,38.2 -to- Molten Core/1 26.6,25.0 <template:portaldungeon>",
	"Molten Core/1 26.5,24.3 -to- Burning Steppes/16 54.1,83.1 <template:portaldungeon>",
	"Burning Steppes/16 54.1,83.1 -to- Molten Core/1 26.5,24.3 <template:moltentele> {cond:PlayerCompletedQuest(7848)}",
	-- Temple of Ahn'Qiraj
	"Ahn'Qiraj: The Fallen Kingdom/0 46.78,7.45 -x- Ahn'Qiraj/2 52.00,26.92 {style:portal_dungeon}",
	-- Ruins of Ahn'Qiraj
	"Ahn'Qiraj: The Fallen Kingdom/0 58.92,14.29 -x- Ruins of Ahn'Qiraj/0 60.51,11.70 {style:portal_dungeon}",
	--Blackwing Lair
	"Blackrock Spire/7 54.7,22.5 -to- Blackwing Lair/1 52.5,83.6 <template:portaldungeon>",
	"Blackwing Lair/1 52.5,83.6 -to- Burning Steppes/14 65.6,42.2 <template:portaldungeon>",
	"Burning Steppes/14 64.3,70.9 -to- Blackwing Lair/1 52.5,83.6 <template:orbofcommand> {cond:PlayerCompletedQuest(7761)}",

	-- Karazhan
	"Karazhan/1 58.8,76.1 -x- Deadwind Pass/0 47.0,74.9 {style:portal_dungeon}",
	-- Gruul's Lair
	"Blade's Edge Mountains/0 69.16,23.81 -x- Gruul's Lair/1 81.87,78.12 {style:portal_dungeon}",
	-- Magtheridon's Lair
	"Hellfire Peninsula/0 47.49,52.09 -x- Magtheridon's Lair/1 62.72,18.04 {style:portal_dungeon}",
	-- Serpentshrine Cavern
	"Zangarmarsh <region:coilfang2> 51.9,33.0 -x- Serpentshrine Cavern/1 13.5,61.2 {style:portal_dungeon}",
	-- Tempest Keep
	"Netherstorm/0 73.8,63.7 -x- Tempest Keep/1 50.0,90.6 {style:portal_dungeon}",
	-- Hyjal Summit
	"Tanaris/18 35.62,15.76 -x- Hyjal Summit/0 10.68,64.74 {style:portal_dungeon}",
	-- Black Temple
	"Shadowmoon Valley/0 71.03,46.39 -x- Black Temple/2 21.89,59.54 {style:portal_dungeon}",
	-- Sunwell Plateau
	"Isle of Quel'Danas/0 44.25,45.59 -x- Sunwell Plateau/1 30.93,36.41 {style:portal_dungeon}",

	-- Onyxia's Lair
	"Dustwallow Marsh/0 52.93,77.72 -x- Onyxia's Lair/1 33.99,20.75 {style:portal_dungeon}",
	-- Naxxramas
	"Dragonblight/0 87.47,51.19 -x- Naxxramas/5 54.00,49.68 {style:portal_dungeon}",
	"Dragonblight/0 87.11,50.66 -x- Naxxramas/5 54.00,49.68 {style:portal_dungeon}",
	"Dragonblight/0 87.13,51.24 -x- Naxxramas/5 54.00,49.68 {style:portal_dungeon}",
	"Dragonblight/0 87.48,50.68 -x- Naxxramas/5 54.00,49.68 {style:portal_dungeon}",
	--Eye of Eternity Entrance
	"Borean Tundra/0 27.6,26.6 -x- The Eye of Eternity/1 32.0,59.2 {style:portal_dungeon}",
	-- Ulduar
	"The Storm Peaks/0 41.57,17.74 -x- Ulduar/1 52.68,95.01 {style:portal_dungeon}",
	-- Icecrown Citadel
	"Icecrown/0 53.83,87.12 -x- Icecrown Citadel/1 38.98,7.28 {style:portal_dungeon}",
	-- Trial of the Crusader
	"Icecrown/0 75.10,21.79 -x- Trial of the Crusader/1 63.95,52.45 {style:portal_dungeon}",
	-- The Obsidian Sanctum
	"Dragonblight/0 60.01,56.86 -x- The Obsidian Sanctum/0 64.40,50.09 {style:portal_dungeon}",
	-- The Ruby Sanctum
	"Dragonblight/0 61.26,52.67 -x- The Ruby Sanctum/0 48.99,29.42 {style:portal_dungeon}",
	-- Vault of Archavon
	"Wintergrasp/0 50.07,11.61 -x- Vault of Archavon/1 49.26,86.60 {style:portal_dungeon} {cond:LibRover:IsWintergraspControlled()}",

	-- Dragon Soul
	"Tanaris/18 61.75,26.60 -x- Dragon Soul/1 50.10,84.43 {style:portal_dungeon}",
	-- Baradin Hold
	"Tol Barad/0 46.2,47.9",
	"@+ -x- Tol Barad/0 47.7,52.6 <dark:1> <nofly:1>",
	"@+ -x- Baradin Hold/1 48.0,91.8 {style:portal_dungeon}",
	-- Throne of the Four Winds
	"Uldum/0 38.5,80.5 -x- Throne of the Four Winds/1 47.2,75.8 {style:portal_dungeon}",
	-- Blackwing Descent
	"Burning Steppes/0 23.19,26.46 -x- Blackwing Descent/1 46.89,62.55 {style:portal_dungeon}",
	--  The Bastion of Twilight
	"Twilight Highlands/0 34.04,77.91 -x- The Bastion of Twilight/1 39.38,54.24 {style:portal_dungeon}",
	-- Firelands
	"Mount Hyjal/0 47.34,78.00 -x- Firelands/1 25.03,92.59 {style:portal_dungeon}",

	--Terrace of Endless Spring
	"The Veiled Stair/0 48.43,61.56 -x- Terrace of Endless Spring/0 93.32,49.34 {style:portal_dungeon}",
	-- Heart of Fear
	"Dread Wastes/0 38.92,35.02 -x- Heart of Fear/1 34.28,89.45 {style:portal_dungeon}",
	-- Mogu'shan Vaults
	"Kun-Lai Summit/0 59.57,39.25 -x- Mogu'shan Vaults/1 75.22,74.09 {style:portal_dungeon}",
	-- Throne of Thunder
	"Isle of Thunder/0 63.62,32.25 -x- Throne of Thunder/1 31.16,25.92 {style:portal_dungeon}",
	"Throne of Thunder/6 11.44,59.00 -to- Isle of Thunder/0 63.62,32.25 <template:portaldungeon>",

}

-- These zone pairs see directly into each other, as they share "green" borders.
data.greenborders = {
	{"Elwynn Forest","Duskwood"},
	{"Westfall","Duskwood"},
	{"Eversong Woods","Ghostlands"},

	{"Kelp'thar Forest","Shimmering Expanse"},
	{"Shimmering Expanse","Abyssal Depths"},
	{"Abyssal Depths","Kelp'thar Forest"},
}

-- These define zone-wide flags, if that's needed.
data.zoneflags = {
	["Razorfen Kraul"]={dark=1},
}

data.basenodes.inns = {
	['Valley of Trials']={
		{name="Valley of Trials",faction="H",npc="Kaltunk",npcid=10176,x=45.2,y=68.7},
	},
	['Teldrassil']={
		{name="Dolanaar",faction="A",npc="Innkeeper Keldamyr",npcid=6736,x=55.4,y=52.2},
		{name="Shadowglen",faction="A",npc="Ilthalaine",npcid=2079,x=45.5,y=74.7},
	},
	['Gilneas']={
		{name="Duskhaven",faction="A",npc="Willa Arnes",npcid=38791,x=36.8,y=65.6},
		{name="Stormglen Village",faction="A",npc="Willa Arnes",npcid=38792,x=60.0,y=91.6},
	},
	['Dun Morogh']={
		--{name="Gnomeregan",faction="A",npc="Nevin Twistwrench",npcid=45966,x=25.7,y=31.9}, --This ports to a submap of DM. Kind of a mess, should never be used because it goes backwards.
		{name="Thunderbrew Distillery",faction="A",npc="Innkeeper Belm",npcid=1247,x=54.5,y=50.8},
	},
	['Elwynn Forest']={
		{name="Lion's Pride Inn",faction="A",npc="Innkeeper Farley",npcid=295,x=43.8,y=65.8},
		{name="Elwynn Forest",faction="A",npc="Aysa Cloudsinger",npcid=60566,x=74.2,y=92.4},
	},
	['Azuremyst Isle']={
		{name="Azure Watch",faction="A",npc="Caregiver Chellan",npcid=16553,x=48.4,y=49.2},
	},
	['Darnassus']={
		{name="Craftsmen's Terrace",faction="A",npc="Innkeeper Saelienne",npcid=6735,x=62.4,y=32.8},
	},
	['Darkshore']={
		{name="Lor'danel",faction="A",npc="Innkeeper Kyteran",npcid=43420,x=50.92,y=18.63},
	},
	['Ironforge']={
		{name="Ironforge",faction="A",npc="Innkeeper Firebrew",npcid=5111,x=18.6,y=51.6},
	},
	['Stormwind City']={
		--{name="Stormwind",faction="A",npc="Innkeeper Allison",npcid=6740,x=60.8,y=74.8},  -- why the double? ~sinus
		{name="Trade District",faction="A",npc="Innkeeper Allison",npcid=6740,x=60.8,y=74.8},
		{name="Old District",faction="A",npc="Maegan Tillman",npcid=44237,x=75.5,y=54.2},
		{name="Dwarven District",faction="A",npc="Thaegra Tillstone",npcid=44235,x=64.8,y=32.3},
	},
	['The Exodar']={
		{name="The Exodar",faction="A",npc="Caregiver Breel",npcid=16739,x=59.91,y=19.45},
	},
	['Loch Modan']={
		{name="Stoutlager Inn",faction="A",npc="Innkeeper Hearthstove",npcid=6734,x=35.5,y=48.4},
		{name="The Farstrider Lodge",faction="A",npc="Vyrin Swiftmend",npcid=1156,x=81.9,y=64.5},
	},
	['Westfall']={
		{name="Sentinel Hill",faction="A",npc="Innkeeper Heather",npcid=8931,x=52.8,y=53.6},
	},
	['Bloodmyst Isle']={
		{name="Blood Watch",faction="A",npc="Caregiver Topher Loaal",npcid=17553,x=55.6,y=59.6},
	},
	['Redridge Mountains']={
		{name="Lakeshire",faction="A",npc="Innkeeper Brianna",npcid=6727,x=26.4,y=41.4},
	},
	['Wetlands']={
		{name="Deepwater Tavern",faction="A",npc="Innkeeper Helbrek",npcid=1464,x=10.7,y=60.8},
		{name="Greenwarden's Grove",faction="A",npc="Innkeeper Larisal",npcid=43993,x=58.2,y=39.2},
		{name="Swiftgear Station",faction="A",npc="Innkeeper Daughny",npcid=44006,x=25.6,y=25.8},
	},
	['Duskwood']={
		{name="Darkshire",faction="A",npc="Innkeeper Trelayne",npcid=6790,x=73.9,y=44.4},
	},
	['Ashenvale']={
		{name="Astranaar",faction="A",npc="Innkeeper Kimlya",npcid=6738,x=37.0,y=49.2},
		{name="Splintertree Post",faction="H",npc="Innkeeper Kaylisk",npcid=12196,x=74.0,y=60.6},
		{name="Silverwind Refuge",faction="H",npc="Innkeeper Chin'toka",npcid=43633,x=50.4,y=67.0},
		{name="Zoram'gar Outpost",faction="H",npc="Innkeeper Duras",npcid=43606,x=12.8,y=34.0},
		{name="Hellscream's Watch",faction="H",npc="Innkeeper Linkasa",npcid=43624,x=38.6,y=42.2},
	},
	['Stonetalon Mountains']={
		{name="Fallowmere Inn",faction="A",npc="Alithia Fallowmere",npcid=40898,x=59.0,y=56.4},
		{name="Northwatch Expedition Base Camp",faction="A",npc="Lyanath",npcid=41286,x=71.1,y=79.1},
		{name="Thal\'darah Overlook",faction="A",npc="Valos Shadowrest",npcid=41491,x=39.4,y=32.8},
		{name="Farwatcher's Glen",faction="A",npc="Innkeeper Bernice",npcid=44177,x=31.4,y=60.6},
		{name="Krom'gar Fortress",faction="H",npc="Felonius Stark",npcid=41892,x=66.4,y=64.2},
		{name="Sun Rock Retreat",faction="H",npc="Innkeeper Jayka",npcid=7731,x=50.4,y=63.8},
	},
	['Desolace']={
		{name="Nijel's Point",faction="A",npc="Innkeeper Lyshaerya",npcid=11103,x=66.2,y=6.6},
		{name="Shadowprey Village",faction="H",npc="Innkeeper Sikewa",npcid=11106,x=24.0,y=68.2},
		{name="Karnum's Glade",faction="B",npc="Innkeeper Dessina",npcid=43872,x=56.8,y=50.0},
	},
	['Dustwallow Marsh']={
		{name="Theramore Isle",faction="A",npc="Innkeeper Janene",npcid=6272,x=66.6,y=45.2},
		{name="Brackenwall Village",faction="H",npc="\"Little\" Logok",npcid=24208,x=36.8,y=32.2},
		{name="Mudsprocket",faction="B",npc="Axle",npcid=23995,x=41.8,y=74.0},
	},
	['Felwood']={
		{name="Talonbranch Glade",faction="A",npc="Denmother Ulrica",npcid=47931,x=61.8,y=26.6},
		{name="Wildheart Point",faction="B",npc="Innkeeper Teenycaugh",npcid=48599,x=44.0,y=61.8},
		{name="Whisperwind Grove",faction="B",npc="Innkeeper Wylaria",npcid=48215,x=44.8,y=29.0},
	},
	['Tanaris']={
		{name="Gadgetzan",faction="B",npc="Innkeeper Fizzgrimble",npcid=7733,x=52.6,y=27.0},
		{name="Bootlegger Outpost",faction="B",npc="Carmen Ibanozzle",npcid=38714,x=55.6,y=60.8},
	},
	['Borean Tundra']={
		{name="Valiant Rest",faction="A",npc="James Deacon",npcid=25245,x=58.2,y=68.0},
		{name="Fizzcrank Airstrip",faction="A",npc="\"Charlie\" Northtop",npcid=26596,x=57.0,y=18.6},
		{name="Warsong Hold",faction="H",npc="Williamson",npcid=25278,x=41.8,y=54.6},
		{name="Taunka'le Village",faction="H",npc="Pahu Frosthoof",npcid=26709,x=76.2,y=37.2},
		{name="Unu'pe",faction="B",npc="Caregiver Poallu",npcid=27187,x=78.4,y=49.2},
	},
	['Howling Fjord']={
		{name="Valgarde",faction="A",npc="Innkeeper Hazel Lagras",npcid=23731,x=58.4,y=62.6},
		{name="Westguard Keep",faction="A",npc="Innkeeper Celeste Goodhutch",npcid=23937,x=30.8,y=41.4},
		{name="Fort Wildervar",faction="A",npc="Christina Daniels",npcid=24057,x=60.4,y=15.8},
		{name="Vengeance Landing",faction="H",npc="Timothy Holland",npcid=24342,x=79.7,y=30.8},
		{name="New Agamand",faction="H",npc="Basil Osgood",npcid=24149,x=52.2,y=66.4},
		{name="Camp Winterhoof",faction="H",npc="Bori Wintertotem",npcid=24033,x=49.4,y=10.8},
		{name="Kamagua",faction="B",npc="Caregiver Iqniq",npcid=27148,x=25.4,y=59.8},
	},
	['Dragonblight']={
		{name="Wintergarde Keep",faction="A",npc="Illusia Lune",npcid=27042,x=77.4,y=51.6},
		{name="Stars' Rest",faction="A",npc="Naohain",npcid=27052,x=28.8,y=56.0},
		{name="Venomspite",faction="H",npc="Mrs. Winterby",npcid=27027,x=76.8,y=63.0},
		{name="Agmar's Hammer",faction="H",npc="Barracks Master Harga",npcid=26985,x=38.2,y=46.6},
		{name="Moa'ki Harbor",faction="B",npc="Caregiver Mumik",npcid=27174,x=48.2,y=74.6},
		{name="Wyrmrest Temple",faction="B",npc="Demestrasz",npcid=27950,x=59.8,y=54.2},
	},
	['Grizzly Hills']={
		{name="Amberpine Lodge",faction="A",npc="Jennifer Bell",npcid=27066,x=32.0,y=60.2},
		{name="Westfall Brigade Encampment",faction="A",npc="Quartermaster McCarty",npcid=26375,x=59.6,y=26.4},
		{name="Conquest Hold",faction="H",npc="Barracks Master Rhekku",npcid=27125,x=20.8,y=64.6},
		{name="Camp Oneqwah",faction="H",npc="Aiyan Coldwind",npcid=26680,x=65.4,y=47.0},
	},
	['Dalaran']={
		{name="Dalaran",faction="B",npc="Amisi Azuregaze",npcid=28687,x=51.0,y=40.0}, -- this is the universal innkeeper in Dalaran for our purpose. GetBindLocation() returns Dalaran so needed a way to find it.
		{name="The Silver Enclave",faction="A",npc="Isirami Fairwind",npcid=32413,x=44.6,y=63.0},
		{name="Sunreaver's Sanctuary",faction="H",npc="Uda the Beast",npcid=31557,x=65.6,y=32.6},
		{name="Sunreaver's Sanctuary",faction="H",npc="Abohba",npcid=32418,x=69.0,y=33.4},
		{name="Runeweaver Square",faction="B",npc="Amisi Azuregaze",npcid=28687,x=51.0,y=40.0},
		{name="The Underbelly",faction="B",npc="Ajay Green",npcid=29532,x=37.0,y=56.8},
		{name="Runeweaver Square",faction="B",npc="Afsaneh Asrar",npcid=32411,x=49.6,y=40.6},
	},
	['The Storm Peaks']={
		{name="Frosthold",faction="A",npc="Gunda Boldhammer",npcid=29926,x=28.6,y=74.4},
		{name="Camp Tunka'lo",faction="H",npc="Wabada Whiteflower",npcid=29971,x=67.6,y=50.6},
		{name="Grom'arsh Crash-Site",faction="H",npc="Peon Gakra",npcid=29944,x=37.0,y=49.6},
		{name="K3",faction="B",npc="Smilin\' Slirk Brassknob",npcid=29904,x=41.0,y=85.8},
		{name="Brunnhildar Village",faction="B",npc="Lodge-Matron Embla",npcid=30005,x=48.8,y=65.0},
		{name="Bouldercrag's Refuge",faction="B",npc="Magorn",npcid=29963,x=30.8,y=37.2},
	},
	['Icecrown']={
		{name="Argent Tournament Grounds",faction="A",npc="Caris Sunlance",npcid=33970,x=76.2,y=19.6},
		{name="Argent Tournament Grounds",faction="H",npc="Jarin Dawnglow",npcid=33971,x=76.0,y=24.0},
		{name="Shadow Vault",faction="B",npc="Initiate Brenners",npcid=30308,x=44.0,y=22.2},
	},
	['Durotar']={
		{name="Razor Hill",faction="H",npc="Innkeeper Grosk",npcid=6928,x=51.6,y=41.6},
		{name="The Dranosh'ar Blockade",faction="H",npc="Ji Firepaw",npcid=60570,x=45.6,y=13.1},
	},
	['Kezan']={
		{name="KTC Headquarters",faction="H",npc="Sassy Hardwrench",npcid=34668,x=56.8,y=77.0},
	},
	['The Lost Isles']={
		{name="Shipwreck Shore",faction="H",npc="Grimy Greasefingers",npcid=36496,x=28.0,y=75.8},
		{name="Town-In-A-Box",faction="H",npc="Grimy Greasefingers",npcid=42473,x=45.0,y=65.4},
		{name="Warchief's Lookout",faction="H",npc="Grimy Greasefingers",npcid=42473,x=36.8,y=43.2},
	},
	['Mulgore']={
		{name="Bloodhoof Village",faction="H",npc="Innkeeper Kauth",npcid=6747,x=46.8,y=60.4},
	},
	['Tirisfal Glades']={
		{name="Brill",faction="H",npc="Innkeeper Renee",npcid=5688,x=60.8,y=51.6},
		{name="The Bulwark",faction="H",npc="Provisioner Elda",npcid=46271,x=83.0,y=71.8},
	},
	['Deathknell']={
		{name="Deathknell Graves",faction="H",npc="",npcid=0,x=40.5,y=78.5},
	},
	['Eversong Woods']={
		{name="Falconwing Square",faction="H",npc="Innkeeper Delaniel",npcid=15433,x=48.1,y=47.7},
		{name="Fairbreeze Village",faction="H",npc="Thersa Windsong",npcid=8393,x=49.6,y=70.6},
	},
	['Orgrimmar']={
		{name="Orgrimmar",faction="H",npc="Innkeeper Gryshka",npcid=6929,x=53.6,y=78.8},
		{name="Valley of Strength",faction="H",npc="Innkeeper Gryshka",npcid=6929,x=53.6,y=78.8},
		{name="Valley of Honor",faction="H",npc="Innkeeper Nufa",npcid=46642,x=70.6,y=49.2},
		{name="Valley of Wisdom",faction="H",npc="Miwana",npcid=44785,x=39.2,y=48.4},
		{name="Goblin Slums",faction="H",npc="Tinza Silvermug",npcid=45563,x=39.8,y=81.0},
		{name="Valley of Spirits",faction="H",npc="Sijambi",npcid=45086,x=32.8,y=65.6},
	},
	['Thunder Bluff']={
		{name="Lower Rise",faction="H",npc="Innkeeper Pala",npcid=6746,x=45.8,y=64.6},
	},
	['Undercity']={
		{name="The Trade Quarter",faction="H",npc="Innkeeper Norman",npcid=6741,x=67.8,y=38.6},
	},
	['Silvermoon City']={
		{name="The Royal Exchange",faction="H",npc="Innkeeper Velandra",npcid=16618,x=79.6,y=58.6},
		{name="The Bazaar",faction="H",npc="Innkeeper Jovia",npcid=17630,x=79.6,y=58.6},
	},
	['Silverpine Forest']={
		{name="The Sepulcher",faction="H",npc="Innkeeper Velandra",npcid=6739,x=46.4,y=42.6},
		{name="Forsaken Rear Guard",faction="H",npc="Commander Hickley",npcid=45496,x=44.4,y=20.6},
	},
	['Ghostlands']={
		{name="Tranquillien",faction="H",npc="Innkeeper Kalarin",npcid=16542,x=48.8,y=32.4},
	},
	['Northern Barrens']={
		{name="The Crossroads",faction="H",npc="Innkeeper Boorand Plainswind",npcid=3934,x=49.6,y=58.0},
		{name="Grol'dom Farm",faction="H",npc="Innkeeper Kerntis",npcid=43946,x=56.2,y=40.0},
		{name="Nozzlepot's Outpost",faction="H",npc="Innkeeper Kritzle",npcid=43945,x=62.4,y=16.6},
		{name="Ratchet",faction="B",npc="Innkeeper Wiley",npcid=6791,x=67.2,y=74.6},
	},
	['Southern Barrens']={
		{name="Honor's Stand",faction="A",npc="Logistics Officer Renaldo",npcid=44219,x=39.0,y=11.0},
		{name="Northwatch Hold",faction="A", npc="Keep Watcher Kerry",npcid=44268,x=65.6,y=46.6},
		{name="Fort Triumph",faction="A", npc="Logistics Officer Salista",npcid=44267,x=49.0,y=68.5},
		{name="Camp Taurajo",faction="H",npc="Byula",npcid=7714,x=44.2,y=33.6},
		{name="Hunter's Hill",faction="H",npc="Innkeeper Hurnahet",npcid=44270,x=39.2,y=20.0},
		{name="Desolation Hold",faction="H",npc="Innkeeper Lhakadd",npcid=44276,x=40.8,y=69.2},
	},
	['Hillsbrad Foothills']={
		{name="Tarren Mill",faction="H",npc="Innkeeper Shay",npcid=2388,x=57.8,y=47.2},
		{name="The Sludge Fields",faction="H",npc="Innkeeper Hershberg",npcid=49394,x=35.8,y=61.2},
		{name="Eastpoint Tower",faction="H",npc="Innkeeper Durgens",npcid=49430,x=59.6,y=64.8},
	},
	['Thousand Needles']={
		{name="Speedbarge Bar",faction="B",npc="Daisy",npcid=40832,x=76.4,y=74.6},
	},
	['Arathi Highlands']={
		{name="Refuge Pointe",faction="A",npc="Vikki Lonsav",npcid=2808,x=39.9,y=49.0},
		{name="Hammerfall",faction="H",npc="Innkeeper Adegwa",npcid=7731,x=69.0,y=33.2},
	},
	['Northern Stranglethorn']={
		{name="Fort Livingston",faction="A",npc="Livingston Marshal",npcid=44019,x=53.2,y=66.8},
		{name="Grom'gol Base Camp",faction="H",npc="Innkeeper Thulbek",npcid=5814,x=37.2,y=51.8},
	},
	['The Cape of Stranglethorn']={
		{name="Booty Bay",faction="B",npc="Innkeeper Skindle",npcid=6807,x=40.8,y=73.8},
		{name="Hardwrench Hideaway",faction="H",npc="Innkeeper Draxle",npcid=44190,x=35.0,y=27.2},
	},
	['Swamp of Sorrows']={
		{name="Bogpaddle",faction="B",npc="Cap'n Geech",npcid=47334,x=71.7,y=13.9},
		{name="The Harborage",faction="A",npc="Verad",npcid=47367,x=29.0,y=32.5},
		{name="Stonard",faction="H",npc="Innkeeper Karakul",npcid=6930,x=46.8,y=56.8},
	},
	['Badlands']={
		{name="Dragon's Mouth",faction="A",npc="Ivan Zypher",npcid=48093,x=20.7,y=56.2},
		{name="New Kargath",faction="H",npc="Innkeeper Shul\'kar",npcid=9356,x=18.2,y=42.8},
		{name="Fuselight-By-The-Sea",faction="B",npc="The Great Pisani",npcid=49934,x=90.0,y=37.6},
		{name="Fuselight",faction="B",npc="Sally Gearwell",npcid=48054,x=65.8,y=35.6},
	},
	['Feralas']={
		{name="Dreamer's Rest",faction="A",npc="Andoril",npcid=40968,x=51.0,y=17.8},
		{name="Feathermoon Stronghold",faction="A",npc="Innkeeper Shyria",npcid=44391,x=46.0,y=45.2},
		{name="Camp Mojache",faction="H",npc="Innkeeper Greul",npcid=7737,x=74.8,y=45.2},
		{name="Camp Ataya",faction="H",npc="Adene Treetotem",npcid=40467,x=41.4,y=15.6},
		{name="Stonemaul Hold",faction="H",npc="Chonk",npcid=44376,x=51.8,y=47.6},
	},
	['The Hinterlands']={
		{name="Stormfeather Outpost",faction="A",npc="Innkeeper Keirnan",npcid=43699,x=66.2,y=44.4},
		{name="Aerie Peak",faction="A",npc="Innkeeper Thulfram",npcid=7744,x=14.0,y=44.8},
		{name="Revantusk Village",faction="H",npc="Lard",npcid=14731,x=78.2,y=81.2},
		{name="Hiri'watha Research Station",faction="H",npc="Bitsy",npcid=43739,x=31.8,y=58.0},
	},
	['Hellfire Peninsula']={
		{name="Thrallmar",faction="H",npc="Floyd Pinkus",npcid=16602,x=56.6,y=37.6},
		{name="Falcon Watch",faction="H",npc="Innkeeper Bazil Olof'tazun",npcid=18905,x=26.8,y=59.6},
		{name="Honor Hold",faction="A",npc="Sid Libardi",npcid=16826,x=54.2,y=63.5},
		{name="Temple of Telhamat",faction="A",npc="Caregiver Ophera Windfury",npcid=18906,x=23.4,y=36.4},
	},
	['Zangarmarsh']={
		{name="Zabra'jin",faction="H",npc="Innkeeper Bazil Olof\'tazun",npcid=18905,x=26.8,y=59.6},
		{name="Cenarion Refuge",faction="B",npc="Innkeeper Coryth Stoktron",npcid=18907,x=78.6,y=63.0},
		{name="Orebor Harborage",faction="A",npc="Innkeeper Kerp",npcid=18908,x=41.9,y=26.3},
		{name="Telredor",faction="A",npc="Caregiver Abidaar",npcid=18251,x=67.2,y=49.0},
	},
	['Terokkar Forest']={
		{name="Allerian Stronghold",faction="A",npc="Innkeeper Biribi",npcid=19296,x=56.7,y=53.3},
		{name="Stonebreaker Hold",faction="H",npc="Innkeeper Grilka",npcid=18957,x=48.8,y=45.0},
	},
	['Nagrand']={
		{name="Telaar",faction="A",npc="Caregiver Isel",npcid=18914,x=54.2,y=76.0},
		{name="Garadar",faction="H",npc="Matron Tikkit",npcid=18913,x=56.6,y=34.6},
	},
	['Blade\'s Edge Mountains']={
		{name="Sylvanaar",faction="A",npc="Innkeeper Shaunessy",npcid=19495,x=35.8,y=63.9},
		{name="Toshley's Station",faction="A",npc="Fizit \"Doc\" Clocktok",npcid=21110,x=61.0,y=68.1},
		{name="Thunderlord Stronghold",faction="H",npc="Gholah",npcid=19470,x=53.2,y=55.4},
		{name="Mok'Nathal Village",faction="H",npc="Matron Varah",npcid=21088,x=76.0,y=60.2},
		{name="Evergrove",faction="B",npc="Innkeeper Aelerya",npcid=22922,x=62.8,y=38.2},
	},
	['Shadowmoon Valley']={
		{name="Shadowmoon Village",faction="H",npc="Innkeeper Darg Bloodclaw",npcid=19319,x=30.2,y=27.8},
		{name="Altar of Sha'tar",faction="B",npc="Caretaker Aluuro",npcid=21746,x=61.0,y=28.2},-- // ALDOR ONLY
		{name="Sanctum of the Stars",faction="B",npc="Roldemar",npcid=21744,x=56.2,y=59.8},-- // SCRYER ONLY
		{name="Wildhammer Stronghold",faction="A",npc="Dreg Cloudsweeper",npcid=19352,x=37.0,y=58.2},
	},
	['Winterspring']={
		{name="Everlook",faction="B",npc="Innkeeper Vizzie",npcid=11118,x=59.8,y=51.8},
	},
	['Silithus']={
		{name="Cenarion Hold",faction="B",npc="Calandrath",npcid=15174,x=55.4,y=36.6},
	},
	['Eastern Plaguelands']={
		{name="Light's Hope Chapel",faction="B",npc="Jessica Chambers",npcid=16256,x=75.6,y=52.4},
	},
	['Shattrath City']={
		{name="Shattrath City",faction="B",npc="Minalei",npcid=19046,x=28.2,y=48.4},-- // ALDOR ONLY
		{name="Scryer's Tier",faction="B",npc="Innkeeper Haelthol",npcid=19232,x=56.2,y=81.6},-- // SCRYER ONLY
	},
	['Netherstorm']={
		{name="Area 52",faction="B",npc="Innkeeper Remi Dodoso",npcid=19571,x=32.0,y=64.4},
		{name="The Stormspire",faction="B",npc="Eyonix",npcid=19531,x=43.4,y=36.0},
	},
	['Isle of Quel\'Danas']={
		{name="Sun's Reach Harbor",faction="B",npc="Caregiver Inaara",npcid=25036,x=51.2,y=33.4},
	},
	['Zul\'Drak']={
		{name="The Argent Stand",faction="B",npc="Marissa Everwatch",npcid=28791,x=40.8,y=66.2},
		{name="Zim'Torga",faction="B",npc="Pan'ya",npcid=29583,x=59.2,y=57.2},
	},
	['Sholazar Basin']={
		{name="Nesingwary Base Camp",faction="B",npc="Purser Boulian",npcid=28038,x=26.8,y=59.2},
	},
	['Western Plaguelands']={
		{name="Chillwind Camp",faction="A",npc="Mother Matterly",npcid=46269,x=43.4,y=84.6},
		{name="Andorhal",faction="H",npc="Roman Garner",npcid=47857,x=48.2,y=63.8},
	},
	['Searing Gorge']={
		{name="Iron Summit",faction="B",npc="Velma Rockslide",npcid=47942,x=39.4,y=66.2},
	},
	['Un\'Goro Crater']={
		{name="Marshal's Stand",faction="B",npc="Innkeeper Dreedle",npcid=38488,x=55.2,y=62.2},
	},
	['Blasted Lands']={
		{name="Surwich",faction="A",npc="Donna Berrymore",npcid=44334,x=44.4,y=87.6},
		{name="Nethergarde Keep",faction="A",npc="Mama Morton",npcid=44325,x=60.7,y=14.0},
		{name="Dreadmaul Hold",faction="H",npc="Innkeeper Grak",npcid=44309,x=40.4,y=11.4},
	},
	['Kelp\'thar Forest']={
		{name="The Briny Cutter",faction="A",npc="Erunak Stonespeaker",npcid=40697,x=45.2,y=23.4},
		{name="Legion's Fate",faction="H",npc="Erunak Stonespeaker",npcid=41794,x=39.6,y=30.8},
		{name="Deepmist Grotto",faction="B",npc="Erunak Stonespeaker",npcid=41341,x=63.8,y=59.8},
	},
	['Shimmering Expanse']={
		{name="Silver Tide Hollow",faction="A",npc="Caretaker Movra",npcid=39878,x=49.2,y=41.9},
		{name="Tranquil Wash",faction="A",npc="Anissa Matherly",npcid=42873,x=49.7,y=57.4},
		{name="Legion's Rest",faction="H",npc="Zun'ja",npcid=42908,x=51.6,y=62.6},
	},
	['Abyssal Depths']={
		{name="Darkbreak Cove",faction="A",npc="Barracks Officer Milson",npcid=42963,x=54.8,y=72.1},
		{name="Tenebrous Cavern",faction="H",npc="Innkeeper Nerius",npcid=43141,x=51.2,y=60.6},
	},
	['Uldum']={
		{name="Ramkahen",faction="B",npc="Kazemde",npcid=48886,x=54.7,y=32.9},
		{name="Oasis of Vir'sar",faction="B",npc="Yasmin",npcid=49406,x=26.6,y=7.3},
		{name="Schnottz's Landing",faction="B",npc="Arcane Guest Registry",npcid=49528,x=22.0,y=64.4},
	},
	['Twilight Highlands']={
		{name="Thundermar",faction="A",npc="Naveen Tendernose",npcid=49591,x=49.5,y=30.4},
		{name="Highbank",faction="A",npc="Innkeeper Francis",npcid=49688,x=79.4,y=78.5},
		{name="Highbank",faction="A",npc="Innkeeper Teresa",npcid=49686,x=79.0,y=77.6},
		{name="Firebeard's Patrol",faction="A",npc="Innkeeper Corlin",npcid=49795,x=60.4,y=58.0},
		{name="Kirthaven",faction="A",npc="Vaughn Blusterbeard",npcid=49574,x=54.6,y=18.0},
		{name="Victor's Point",faction="A",npc="Ben Mora",npcid=49599,x=43.6,y=57.3},
		{name="Dragonmaw Port",faction="H",npc="Innkeeper Lutz",npcid=49498,x=75.8,y=52.6},
		{name="The Krazzworks",faction="H",npc="Innkeeper Geno",npcid=49783,x=75.4,y=16.6},
		{name="Bloodgulch",faction="H",npc="Innkeeper Turk",npcid=49762,x=53.2,y=42.8},
		{name="Crushblow",faction="H",npc="Innkeeper Krum",npcid=49747,x=45.2,y=76.4},
	},
	['Mount Hyjal']={
		{name="Nordrassil Inn",faction="B",npc="Sebelia",npcid=40843,x=63.1,y=24.1},
		{name="Shrine of Aviana",faction="B",npc="Isara Riverstride",npcid=50068,x=42.6,y=45.6},
		{name="Grove of Aessina",faction="B",npc="Salirn Moonbear",npcid=53779,x=18.6,y=37.2},
	},
	['Deepholm']={
		{name="Temple of Earth",faction="B",npc="Caretaker Nuunwa",npcid=45300,x=49.8,y=52.0},
	},
	['The Jade Forest']={
		{name="The Drunken Hozen",faction="B",npc="Peiji Goldendraft",npcid=55809,x=45.8,y=43.7},
		{name="Dawn's Blossom",faction="B",npc="Lin Wildfur",npcid=55233,x=45.7,y=43.9},
		{name="Tian Monastery",faction="B",npc="Bolo the Elder",npcid=62867,x=41.7,y=23.2},
		{name="Jade Temple Grounds",faction="B",npc="Fela Woodear",npcid=57313,x=54.6,y=63.2},
		{name="Sri-La Village",faction="B",npc="Lana the Sea Breeze",npcid=62868,x=55.8,y=24.4},
		{name="Paw'don Village",faction="A",npc="Jiayi Applebloom",npcid=371,x=44.9,y=84.4},
		{name="Pearlfin Village",faction="A",npc="Cheerful Jessu",npcid=61599,x=59.6,y=83.2},
		{name="Honeydew Village",faction="H",npc="Brewmother Kiki",npcid=700,x=28.5,y=13.3},
		{name="Grookin Hill",faction="H",npc="Grookin Bed-Haver",npcid=62975,x=28.0,y=47.4},
	},
	['Krasarang Wilds']={
		{name="Wilds' Edge Inn",faction="B",npc="Rude Sho",npcid=62879,x=75.8,y=7.3},
		{name="The Incursion",faction="A",npc="Magister Xintar",npcid=58926,x=67.3,y=33.0},
		{name="Crane Wing Refuge",faction="B",npc="Ni the Merciful",npcid=62869,x=40.8,y=34.5},
		{name="Sentinel Basecamp",faction="A",npc="Magister Xintar",npcid=58926,x=25.5,y=33.2},
		{name="Krasarang Cove",faction="A",npc="Keeper Jaril",npcid=69088,x=88.8,y=35.3},
		{name="Marista's Bair & Brew",faction="B",npc="Cranfur the Noodler",npcid=62872,x=51.5,y=77.2},
		{name="Thunder Cleft",faction="H",npc="Malaya Dawnchaser",npcid=58184,x=60.9,y=24.9},
		{name="Dawnchaser Retreat",faction="H",npc="Aizra Dawnchaser",npcid=62967,x=28.3,y=50.8},
		{name="Horde Landing Site",faction="H",npc="Tonak",npcid=61122,x=10.8,y=52.3},
	},
	['Valley of the Four Winds']={
		{name="Pang's Stead",faction="B",npc="Nan Thunderfoot",npcid=65528,x=83.7,y=20.2},
		{name="The Lazy Turnip",faction="B",npc="Innkeeper Lei Lan",npcid=59582,x=55.1,y=50.3},
		{name="Stone Mug Tavern",faction="B",npc="Nan the Mason Mug",npcid=62878,x=19.7,y=55.9},
		{name="Sunsong Ranch",faction="B",npc="Farmer's Journal",npcid=70585,x=52.7,y=47.9},
	},
	['Vale of Eternal Blossoms']={
		{name="The Golden Lantern",f=3,faction="A",npc="Matron Vi Vinh",npcid=64149,x=36.4,y=66.8},
		{name="The Golden Rose",faction="B",npc="Bartender Tomro",npcid=58691,x=35.3,y=77.6},
		{name="Shrine of Seven Stars",faction="A",npc="",npcid=0,x=84.3,y=59.0}, --Can you set your hearth to these? It is default location on PTR
		{name="Shrine of Two Moons",faction="H",npc="",npcid=0,x=62.0,y=25.7},
	},
	['Shrine of Two Moons']={
		{name="Summer's Rest",f=1,faction="H",npc="Madam Vee Luo",npcid=62996,x=69.0,y=49.2},
	},
	['The Veiled Stair']={
		{name="Tavern in the Mists",faction="B",npc="Tong the Fixer",npcid=62917,x=55.0,y=72.4},
	},
	['Kun-Lai Summit']={
		{name="Binan Brew & Stew",faction="B",npc="Puli the Even Handed",npcid=62871,x=72.7,y=92.3},
		{name="Westwind Rest",faction="A",npc="Kai the Restless",npcid=62882,x=54.1,y=82.9},
		{name="The Two Fisted Brew",faction="B",npc="Li Goldendraft",npcid=59405,x=64.2,y=61.4},
		{name="The Lucky Traveller",faction="B",npc="Chiyo Mistpaw",npcid=59688,x=57.4,y=60.0},
		{name="Kota Basecamp",faction="B",npc="Clover Keeper",npcid=60420,x=42.7,y=70.0},
		{name="Eastwind Rest",faction="H",npc="Mai the Sleepy",npcid=62883,x=62.8,y=80.5},
		{name="Temple of the White Tiger",faction="B",npc="Master Lao",npcid=61651,x=66.9,y=51.0},
		{name="North Wind Tavern",faction="B",npc="Liu Ze",npcid=60605,x=62.5,y=28.8},
		{name="Shado-Pan Fallback",faction="B",npc="Stained Mug",npcid=62877,x=44.4,y=90.3},
	},
	['The Wandering Isle']={
	--	{name="Shang Xi Training Grounds",faction="B",npc="Master Shang Xi",npcid=53566,x=56.6,y=17.5}, --Never use it.
	},
	['Townlong Steppes']={
		{name="Longying Outpost",faction="B",npc="Saito the Sleeping Shadow",npcid=62873,x=71.1,y=57.9},
		{name="Gao-Ran Battlefront",faction="B",npc="Kim the Quiet",npcid=62875,x=76.0,y=82.9},
		{name="Shado-Pan Garrison",faction="B",npc="Kali the Night Watcher",npcid=62874,x=48.9,y=70.8},
	},
	['Dread Wastes']={
		{name="The Chum Bucket",faction="B",npc="San the Sea Calmer",npcid=63016,x=55.2,y=71.1},
		{name="Klaxxi'vess",faction="B",npc="Zit'tix",npcid=65220,x=55.9,y=32.3},
	},
	['Isle of Thunder']={
		{name="Violet Rise",faction="A",npc="Isirami Fairwind",npcid=70182,x=64.9,y=73.0},
		{name="Battlefront Provisions",faction="B",npc="Uda the Beast",npcid=70182,x=64.9,y=73.0},
	},
	['Timeless Isle']={
		{name="The Celestial Court",faction="B",npc="Graceful Swan",npcid=73622,x=36.6,y=46.8},
	},
}

local hearthcost = 25 --TODO this could be a 15m cooldown instead of 30. So that changes it

data.portkeys = { -- smile if you're a muggle
	{item=6948, destination="HEARTH", use_hearth_cd=1, cost=hearthcost}, -- Hearthstone!!!

	--Cooldown on these is low because the cost is added to hearthstone cost.
	{item=64488, destination="HEARTH", use_hearth_cd=1, cooldown=10, cost=hearthcost}, -- The Innkeeper's Daughter
	{item=28585, destination="HEARTH", use_hearth_cd=1, cooldown=15, cost=hearthcost}, -- Ruby Slippers
	{item=37118, destination="HEARTH",		    cooldown=25, cost=hearthcost, maxlevel=40}, -- Scroll of Recall 1 DIFFERENT HEARTHSTONE CD level <= 40	--Cost a little different so that lower level ones get priority if usable.
	{item=44314, destination="HEARTH",		    cooldown=35, cost=hearthcost, maxlevel=70}, -- Scroll of Recall 2 DIFFERENT HEARTHSTONE CD level >=35 <= 70
	{item=44315, destination="HEARTH",		    cooldown=45, cost=hearthcost, maxlevel=90}, -- Scroll of Recall 3 DIFFERENT HEARTHSTONE CD level >=65 <= 90

	{spell=556, destination="HEARTH", is_astral=1, cost=30}, -- Astral Recall

	{item=63352, destination="@!sw_tp_dst", cooldown=28800}, -- Shroud of Cooperation
	{item=63206, destination="@!sw_tp_dst", cooldown=14400}, -- Wrap of Unity
	{item=65360, destination="@!sw_tp_dst", cooldown=7200}, -- Cloak of Cooperation

	{item=63353, destination="@!org_tp_dst", cooldown=28800}, -- Shroud of Cooperation
	{item=63207, destination="@!org_tp_dst", cooldown=14400}, -- Wrap of Unity
	{item=65274, destination="@!org_tp_dst", cooldown=7200}, -- Cloak of Cooperation

	{item=40585, destination="@!dala_tp_dst", cooldown=1800}, -- Signet of the Kirin Tor
	{item=40586, destination="@!dala_tp_dst", cooldown=1800}, -- Band of the Kirin Tor
	{item=44934, destination="@!dala_tp_dst", cooldown=1800}, -- Loop of the Kirin Tor
	{item=44935, destination="@!dala_tp_dst", cooldown=1800}, -- Ring of the Kirin Tor
	{item=45688, destination="@!dala_tp_dst", cooldown=1800}, -- Inscribed Band of the Kirin Tor
	{item=45689, destination="@!dala_tp_dst", cooldown=1800}, -- Inscribed Loop of the Kirin Tor
	{item=45690, destination="@!dala_tp_dst", cooldown=1800}, -- Inscribed Ring of the Kirin Tor
	{item=45691, destination="@!dala_tp_dst", cooldown=1800}, -- Inscribed Signet of the Kirin Tor
	{item=48954, destination="@!dala_tp_dst", cooldown=1800}, -- Etched Band of the Kirin Tor
	{item=48955, destination="@!dala_tp_dst", cooldown=1800}, -- Etched Loop of the Kirin Tor
	{item=48956, destination="@!dala_tp_dst", cooldown=1800}, -- Etched Ring of the Kirin Tor
	{item=48957, destination="@!dala_tp_dst", cooldown=1800}, -- Etched Signet of the Kirin Tor
	{item=51557, destination="@!dala_tp_dst", cooldown=1800}, -- Runed Signet of the Kirin Tor
	{item=51558, destination="@!dala_tp_dst", cooldown=1800}, -- Runed Loop of the Kirin Tor
	{item=51559, destination="@!dala_tp_dst", cooldown=1800}, -- Runed Ring of the Kirin Tor
	{item=51560, destination="@!dala_tp_dst", cooldown=1800}, -- Runed Band of the Kirin Tor
	{item=52251, destination="@!dala_tp_dst", cooldown=3600}, -- Jaina's Locket

	{item=32757, destination="Shadowmoon Valley 63,44", cooldown=900}, -- APPROXIMATE. Blessed Medallion of Karabor
	{item=37863, destination="Blackrock Depths/2 46,54", cooldown=3600}, -- APPROX. Direbrew's Remote
	{item=46874, destination="Icecrown 69.38,22.64", cooldown=1800}, -- Argent Crusader's Tabard
	{item=50287, destination="The Cape of Stranglethorn 40.8,73.8", cooldown=86400}, -- Boots of the Bay 24h
	{item=58587, destination="Deepholm,48.7,53.6", cooldown=1800}, -- Potion of Deepholm --CD is modified because it is a consumable potion. Don't use it like candy
	{item=22631, destination="Deadwind Pass 55,78", cooldown=60}, -- Atiesh, Greatstaff of the Guardian


	{item=95567, destination="Isle of Thunder 64.6,73.5", cooldown=600, cond=function() return ZGV.CurrentMapID==928 and PlayerCompletedQuest(32644) end}, -- Kirin Tor Beacon --only usable on Thunder Isle
	{item=95567, destination="Isle of Thunder 34.8,89.3", cooldown=600, cond=function() return ZGV.CurrentMapID==928 and not PlayerCompletedQuest(32644) end}, -- Kirin Tor Beacon --only usable on Thunder Isle

	{item=95568, destination="Isle of Thunder 33.3,32.6", cooldown=600, cond=function() return ZGV.CurrentMapID==928 and PlayerCompletedQuest(32212) end}, -- Sunreaver Beacon --only usable on Thunder Isle
	{item=95568, destination="Isle of Thunder 28.5,51.7", cooldown=600, cond=function() return ZGV.CurrentMapID==928 and not PlayerCompletedQuest(32212) end}, -- Sunreaver Beacon --only usable on Thunder Isle

	{item=104113, destination="Timeless Isle/0 23.28,70.83", cooldown=0 }, -- Ally. Curious Bronze Timepeice, 1 time use only.
	{item=104110, destination="Timeless Isle/0 21.32,39.52", cooldown=0 }, -- Horde. Curious Bronze Timepeice, 1 time use only.

	{item=30542, destination="Netherstorm 32,63", cooldown=14400}, -- Dimensional Ripper - Area 52 Engineering >=350 Goblin -- TODO only approx coords
	{item=18984, destination="Winterspring 59,50", cooldown=14400}, -- Dimensional Ripper - Everlook Engineering >=260 Goblin -- TODO only approx coords
	{item=30544, destination="Blade's Edge Mountains 60.4,65.1", cooldown=14400}, -- Ultrasafe Transporter: Toshley's Station Engineering >=350 Gnomish
	{item=18986, destination="Tanaris 51.6,28.0", cooldown=14400}, -- APPROX. Ultrasafe Transporter: Gadgetzan Engineering >=260 Gnomish

	{item=63378, destination="Tol Barad Peninsula 73.7,60.9", cooldown=14400}, -- Baradin's Wardens Tabard  Alliance -- TODO only approx coords
	{item=63379, destination="Tol Barad Peninsula 55.8,80.1", cooldown=14400}, -- Hellscream's Reach Tabard  Horde
}