if GetLocale()~="deDE" then return end

local addon,_L = ...
assert(_L.Lib,"Library not loaded")
if _L.Lib.TaxiNames_Local then return end

_L.Lib.TaxiNames_Local = {
	------ Kalimdor
	-- Alliance
	["Astranaar"] = nil,
	["Auberdine"] = nil,
	["Blood Watch"] = "Blutwacht",
	["Feathermoon"] = "Mondfederfeste",
	["Forest Song"] = "Waldeslied",
	["Nijel's Point"] = "Die Nijelspitze",
	["Rut'theran Village"] = "Rut'theran",
	["Stonetalon Peak"] = "Steinkrallengipfel",
	["Talonbranch Glade"] = "Nachtlaublichtung",
	["Talrendis Point"] = "Talrendisspitze",
	["Thalanaar"] = nil,
	["The Exodar"] = "Die Exodar",
	["Theramore"] = nil,

	-- Horde
	["Bloodvenom Post"] = "Blutgiftposten",
	["Brackenwall Village"] = "Brackenwall",
	["Camp Mojache"] = nil,
	["Camp Taurajo"] = nil,
	["Crossroads"] = "Das Wegekreuz",
	["Freewind Post"] = "Freiwindposten",
	["Orgrimmar"] = nil,
	["Shadowprey Village"] = "Schattenflucht",
	["Splintertree Post"] = "Splitterholzposten",
	["Sun Rock Retreat"] = "Sonnenfels",
	["Thunder Bluff"] = "Donnerfels",
	["Valormok"] = nil,
	["Zoram'gar Outpost"] = "Außenposten von Zoram'gar",

	-- Neutral
	["Cenarion Hold"] = "Burg Cenarius",
	["Emerald Sanctuary"] = "Smaragdrefugium",
	["Everlook"] = "Ewige Warte",
	["Gadgetzan"] = nil,
	["Marshal's Refuge"] = "Marschalls Zuflucht",
	["Moonglade"] = "Mondlichtung",
	["Mudsprocket"] = "Morastwinkel",
	["Ratchet"] = "Ratschet",

	-- Special
	["Valley of Strength"] = "Tal der Stärke", -- Orgrimmar

	-- Eastern Kingdoms
	-- Alliance
	["Aerie Peak"] = "Nistgipfel",
	["Chillwind Camp"] = "Zugwindlager",
	["Darkshire"] = "Dunkelhain",
	["Ironforge"] = "Eisenschmiede",
	["Lakeshire"] = "Seenhain",
	["Menethil Harbor"] = "Hafen von Menethil",
	["Morgan's Vigil"] = "Morgans Wacht",
	["Nethergarde Keep"] = "Burg Nethergarde",
	["Rebel Camp"] = "Rebellenlager",
	["Refuge Pointe"] = "Die Zuflucht",
	["Sentinel Hill"] = "Sp\195\164herkuppe",
	["Shattered Sun Staging Area"] = "Sammelpunkt der Zerschmetterten Sonne",
	["Southshore"] = "Süderstade",
	["Stormwind"] = "Sturmwind",
	["Thelsamar"] = nil,
	["Thondoril River"] = "Thondroril",

	-- Horde
	["Flame Crest"] = "Flammenkamm",
	["Grom'Gol"] = nil,
	["Hammerfall"] = nil,
	["Kargath"] = nil,
	["Revantusk Village"] = "Dorf der Bruchhauer",
	["Silvermoon City"] = "Silbermond",
	["Stonard"] = "Steinard",
	["Tarren Mill"] = "Tarrens Mühle",
	["The Bulwark"] = "Das Bollwerk",
	["The Sepulcher"] = "Das Grabmal",
	["Tranquillien"] = "Tristessa",
	["Undercity"] = "Unterstadt",

	-- Neutral
	["Acherus: The Ebon Hold"] = "Acherus: Die Schwarze Festung",
	["Booty Bay"] = "Beutebucht",
	["Light's Hope Chapel"] = "Kapelle des hoffnungsvollen Lichts",
	["Thorium Point"] = "Thoriumspitze",
	["Zul'Aman"] = nil,

	-- Special
	["The Great Forge"] = "Die große Schmiede", -- Ironforge
	["Trade District"] = "Handelsdistrikt", -- Stormwind

	-- Outland
	-- Alliance
	["Allerian Stronghold"] = "Allerias Feste",
	["Honor Hold"] = "Ehrenfeste",
	["Orebor Harborage"] = "Oreborzuflucht",
	["Shatter Point"] = "Trümmerposten",
	["Sylvanaar"] = nil,
	["Telaar"] = nil,
	["Telredor"] = nil,
	["Temple of Telhamat"] = "Tempel von Telhamat",
	["Toshley's Station"] = "Toshleys Station",
	["Wildhammer Stronghold"] = "Wildhammerfeste",

	-- Horde
	["Falcon Watch"] = "Falkenwacht",
	["Garadar"] = nil,
	["Hellfire Peninsula, The Dark Portal"] = "Höllenfeuerhalbinsel, Das Dunkle Portal",
	["Mok'Nathal Village"] = "Dorf der Mok'Nathal",
	["Shadowmoon Village"] = "Schattenmond",
	["Spinebreaker Post"] = nil,
	["Stonebreaker Hold"] = "Steinbrecherfeste",
	["Swamprat Post"] = "Sumpfrattenposten",
	["Thrallmar"] = nil,
	["Thunderlord Stronghold"] = "Donnerfeste",
	["Zabra'jin"] = nil,

	-- Neutral
	["Altar of Sha'tar"] = "Altar der Sha'tar",
	["Area 52"] = nil,
	["Cosmowrench"] = "Kosmozang",
	["Evergrove"] = "Der ewige Hain",
	["Sanctum of the Stars"] = "Sanktum der Sterne",
	["Shattrath"] = nil,
	["The Stormspire"] = "Die Sturms\195\164ule",

	-- Special
	["Terrace of Light"] = "Terrasse des Lichts", -- Shattrath City
	["The Stair of Destiny"] = nil, -- The Dark Portal

	-- Northrend
	-- Alliance
	["Amberpine Lodge"] = "Ammertannhütte",
	["Fizzcrank Airstrip"] = "Landebahn Kurbelzisch",
	["Fordragon Hold"] = "Feste Fordragon",
	["Fort Wildervar"] = nil,
	["Frosthold"] = "Eisfestung",
	["River's Heart"] = "Flussnabel",
	["Star's Rest"] = "Sternenruh",
	["Ulduar"] = nil,
	["Valgarde Port"] = "Hafen von Valgarde",
	["Valiance Keep"] = "Valianzfeste",
	["Westfall Brigade"] = "Westfallbrigade",
	["Westguard Keep"] = "Westwacht",
	["Wintergarde Keep"] = "Feste Wintergarde",

	-- Horde
	["Agmar's Hammer"] = "Agmars Hammer",
	["Apothecary Camp"] = "Apothekerlager",
	["Argent Tournament Grounds"] = nil,
	["Bor'gorok Outpost"] = "Bor'goroks Außenposten",
	["Brann's Base-Camp"] = nil,
	["Camp Oneqwah"] = "Onequah",
	["Camp Winterhoof"] = "Lager der Winterhufe",
	["Conquest Hold"] = "Burg Siegeswall",
	["Crusaders' Pinnacle"] = "Kreuzfahrerturm",
	["Death's Rise"] = "Todesanhöhe",
	["Kor'koron Vanguard"] = "Vorposten der Kor'kron",
	["Lakeside Landing"] = nil,
	["New Agamand"] = "Neu-Agamand",
	["Sunreaver's Command"] = "Sonnenh\195\164schers Schar",
	["Taunka'le Village"] = "Taunka'le",
	["The Shadow Vault"] = "Das Schattengewölbe",
	["Vengeance Landing"] = "Hafen der Vergeltung",
	["Venomspite"] = "Gallgrimm",
	["Warsong Hold"] = "Kriegshymnenfeste",

	-- Neutral
	["Amber Ledge"] = "Bernsteinflöz",
	["Bouldercrag's Refuge"] = "Bergfels' Zuflucht",
	["Dalaran"] = nil,
	["Ebon Watch"] = "Schwarze Wacht",
	["Grom'arsh Crash-Site"] = "Absturzstelle Grom'ash",
	["Gun'Drak"] = nil,
	["K3"] = nil,
	["Kamagua"] = nil,
	["Light's Breach"] = "Lichtbresche",
	["Moa'ki Harbor"] = nil,
	["Nesingwary Base Camp"] = "Nesingwarys Basislager",
	["The Argent Stand"] = "Argentumwache",
	["The Argent Vanguard"] = "Die Argentumvorhut",
	["Transitus Shield"] = "Transitusschild",
	["Unu'pe"] = nil,
	["Wyrmrest Temple"] = "Wyrmruhtempel",
	["Zim'Torga"] = nil,

	-- Special
	["Krasus' Landing"] = "Krasus' Landeplatz", -- Dalaran


	--[[	
	["Argent Stand"] = "Argentumwache",
	["Beryl Point"] = "Beryllspitze",
	["Borean Tundra"] = "Boreanische Tundra",
	["Coldarra Ledge"] = "Kaltarrarücken",
	["Crown Guard Tower"] = "Turm der Kronenwache",
	["Eastern Plaguelands"] = "Die östlichen Pestl\195\164nder",
	["Eastwall Tower"] = "Ostwallturm",
	["Fishing Village"] = "Fischerdorf",
	["Frostwolf Keep"] = "Burg Frostwolf",
	["Generic"] = "Allgemein",
	["Grizzly Hills"] = "Grizzlyhügel",
	["Hellfire Peninsula"] = "Höllenfeuerhalbinsel",
	["Nighthaven"] = "Nachthafen",
	["Northpass Tower"] = "Nordpassturm",
	["Northshire Abbey"] = "Abtei von Nordhain",
	["Plaguewood Tower"] = "Pestwaldturm",
	["Programmer Isle"] = "Programmierer-Insel",
	["Ruined City Post 01"] = "Ruinenstadt 01",
	["Spinebreaker Ridge"] = "Rückenbrechergrat",
	["Valiance Landing Camp"] = "Valianzlager",
	["Warsong Camp"] = "Kriegshymnenlager",
	["Windrunner's Overlook"] = "Windl\195\164ufers Warte",
	--]]
}
