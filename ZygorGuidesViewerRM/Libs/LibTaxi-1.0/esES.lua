if GetLocale()~="esES" then return end

local addon,_L = ...
assert(_L.Lib,"Library not loaded")
if _L.Lib.TaxiNames_Local then return end

_L.Lib.TaxiNames_Local = {
	------ Kalimdor
	-- Alliance
	["Astranaar"] = nil,
	["Auberdine"] = nil,
	["Blood Watch"] = "Avanzada de Sangre",
	["Feathermoon"] = "Plumaluna",
	["Forest Song"] = "Canción del Bosque",
	["Nijel's Point"] = "Punta de Nijel",
	["Rut'theran Village"] = "Aldea Rut'theran",
	["Stonetalon Peak"] = "Cima del Espolón",
	["Talonbranch Glade"] = "Claro Ramaespolón",
	["Talrendis Point"] = "Punta Talrendis",
	["Thalanaar"] = nil,
	["The Exodar"] = "L'Exodar",
	["Theramore"] = nil,

	-- Horde
	["Bloodvenom Post"] = "Puesto del Veneno",
	["Brackenwall Village"] = "Poblado Murohelecho",
	["Camp Mojache"] = "Campamento Mojache",
	["Camp Taurajo"] = "Campamento Taurajo",
	["Crossroads"] = "El Cruce",
	["Freewind Post"] = "Poblado Viento Libre",
	["Orgrimmar"] = nil,
	["Shadowprey Village"] = "Aldea Cazasombras",
	["Splintertree Post"] = "Puesto del Hachazo",
	["Sun Rock Retreat"] = "Refugio Roca del Sol",
	["Thunder Bluff"] = "Cima del Trueno",
	["Valormok"] = nil,
	["Zoram'gar Outpost"] = "Avanzada de Zoram'gar",

	-- Neutral
	["Cenarion Hold"] = "Fuerte Cenarion",
	["Emerald Sanctuary"] = "Santuario Esmeralda",
	["Everlook"] = "Vista Eterna",
	["Gadgetzan"] = nil,
	["Marshal's Refuge"] = "Refugio de Marshal",
	["Moonglade"] = "Claro de la Luna",
	["Mudsprocket"] = "Piñón de Barro",
	["Ratchet"] = "Trinquete",

	-- Special
	["Valley of Strength"] = "Valle de la Fuerza", -- Orgrimmar

	-- Eastern Kingdoms
	-- Alliance
	["Aerie Peak"] = "Pico Nidal",
	["Chillwind Camp"] = "Campamento del Orvallo",
	["Darkshire"] = "Villa Oscura",
	["Ironforge"] = "Forjaz",
	["Lakeshire"] = "Villa del Lago",
	["Menethil Harbor"] = "Puerto de Menethil",
	["Morgan's Vigil"] = "Vigilia de Morgan",
	["Nethergarde Keep"] = "Castillo de Nethergarde",
	["Rebel Camp"] = "Asentamiento Rebelde",
	["Refuge Pointe"] = "Refugio de la Zaga",
	["Sentinel Hill"] = "Colina del Centinela",
	["Shattered Sun Staging Area"] = "Zona de escala de Sol Devastado",
	["Southshore"] = "Costasur",
	["Stormwind"] = "Ventormenta",
	["Thelsamar"] = nil,
	["Thondoril River"] = "Thondroril",

	-- Horde
	["Flame Crest"] = "Peñasco Llamarada",
	["Grom'Gol"] = nil,
	["Hammerfall"] = "Sentencia",
	["Kargath"] = nil,
	["Revantusk Village"] = "Poblado Sañadiente",
	["Silvermoon City"] = "Ciudad de Lunargenta",
	["Stonard"] = "Rocal",
	["Tarren Mill"] = "Molino Tarren",
	["The Sepulcher"] = "El Sepulcro",
	["Tranquillien"] = nil,
	["The Bulwark"] = nil,
	["Undercity"] = "Entrañas",

	-- Neutral
	["Acherus: The Ebon Hold"] = "Acherus: El Bastión de \195\137bano",
	["Booty Bay"] = "Baháa del Botán",
	["Light's Hope Chapel"] = "Capilla de la Esperanza de la Luz",
	["Thorium Point"] = "Puesto del Torio",
	["Zul'Aman"] = nil,

	-- Special
	["The Great Forge"] = "La Gran Fundición", -- Ironforge
	["Trade District"] = "Distrito de Mercaderes", -- Stormwind

	-- Outland
	-- Alliance
	["Allerian Stronghold"] = "Bastión Allerian",
	["Honor Hold"] = "Bastión del Honor",
	["Orebor Harborage"] = "Puerto Orebor",
	["Shatter Point"] = "Puesto Devastación",
	["Sylvanaar"] = nil,
	["Telaar"] = nil,
	["Telredor"] = nil,
	["Temple of Telhamat"] = "Templo de Telhamat",
	["Toshley's Station"] = "Estación de Toshley",
	["Wildhammer Stronghold"] = "Bastión Martillo Salvaje",

	-- Horde
	["Falcon Watch"] = "Avanzada del Halcón",
	["Garadar"] = nil,
	["Hellfire Peninsula, The Dark Portal"] = "Penánsula del Fuego Infernal, El Portal Oscuro",
	["Mok'Nathal Village"] = "Aldea Mok'Nathal",
	["Shadowmoon Village"] = "Aldea Sombraluna",
	["Spinebreaker Post"] = nil,
	["Stonebreaker Hold"] = "Bastión Rompepedras",
	["Swamprat Post"] = "Avanzada Rata del Pantano",
	["Thrallmar"] = nil,
	["Thunderlord Stronghold"] = "Bastión Señor del Trueno",
	["Zabra'jin"] = nil,

	-- Neutral
	["Altar of Sha'tar"] = "Altar de Sha'tar",
	["Area 52"] = "\195\129rea 52",
	["Cosmowrench"] = "Cosmotirón",
	["Evergrove"] = "Soto Eterno",
	["Sanctum of the Stars"] = "Sagrario de las Estrellas",
	["Shattrath"] = nil,
	["The Stormspire"] = "La Flecha de la Tormenta",

	-- Special
	["Terrace of Light"] = "Bancal de la Luz", -- Shattrath City
	["The Stair of Destiny"] = nil, -- The Dark Portal

	-- Northrend
	-- Alliance
	["Amberpine Lodge"] = "Refugio Pino \195\129mbar",
	["Fizzcrank Airstrip"] = "Pista de Aterrizaje de Palanqueta",
	["Fordragon Hold"] = "Bastión de Fordragón",
	["Fort Wildervar"] = "Fuerte Vildervar",
	["Frosthold"] = "Fuerte Escarcha",
	["River's Heart"] = "Corazón de Ráo",
	["Star's Rest"] = "Reposo Estelar",
	["Ulduar"] = nil,
	["Valgarde Port"] = "Puerto de Valgarde",
	["Valiance Keep"] = "Fortaleza Denuedo",
	["Westfall Brigade"] = "Brigada de P\195\161ramos de Poniente",
	["Westguard Keep"] = "Fortaleza de la Guardia Oeste",
	["Wintergarde Keep"] = "Fortaleza de Hibergarde",

	-- Horde
	["Agmar's Hammer"] = "Martillo de Agmar",
	["Apothecary Camp"] = "Campamento de los Boticarios",
	["Argent Tournament Grounds"] = nil,
	["Bor'gorok Outpost"] = "Avanzada Bor'gorok",
	["Brann's Base-Camp"] = nil,
	["Camp Oneqwah"] = "Campamento Oneqwah",
	["Camp Winterhoof"] = "Campamento Pezuña Invernal",
	["Conquest Hold"] = "Bastión de la Conquista",
	["Crusaders' Pinnacle"] = "Pin\195\161culo de los Cruzados",
	["Death's Rise"] = "Ascenso de la Muerte",
	["Kor'koron Vanguard"] = "Cementerio de Dragones",
	["Lakeside Landing"] = nil,
	["New Agamand"] = "Nuevo Agamand",
	["Sunreaver's Command"] = "Dominio de los Atracasol",
	["Taunka'le Village"] = "Poblado Taunka'le",
	["The Shadow Vault"] = "La C\195\161mara de las Sombras",
	["Vengeance Landing"] = "Campo Venganza",
	["Venomspite"] = "Rencor Venenoso",
	["Warsong Hold"] = "Bastión Grito de Guerra",

	-- Neutral
	["Amber Ledge"] = "El Saliente \195\129mbar",
	["Bouldercrag's Refuge"] = "Refugio de Pedruscón",
	["Dalaran"] = nil,
	["Ebon Watch"] = "Puesto de Vigilancia de \195\137bano",
	["Grom'arsh Crash-Site"] = "Lugar del accidente de Grom'arsh",
	["Gun'Drak"] = nil,
	["K3"] = nil,
	["Kamagua"] = nil,
	["Light's Breach"] = "Brecha de la Luz",
	["Moa'ki Harbor"] = nil,
	["Nesingwary Base Camp"] = "Campamento Base de Nesingwary",
	["The Argent Stand"] = "El Confán Argento",
	["The Argent Vanguard"] = "La Vanguardia Argenta",
	["Transitus Shield"] = "Escudo de Tr\195\161nsito",
	["Unu'pe"] = nil,
	["Wyrmrest Temple"] = "Templo del Reposo del Dragón",
	["Zim'Torga"] = nil,

	-- Special
	["Krasus' Landing"] = "Alto de Krasus", -- Dalaran


	--[[
	["Argent Stand"] = "El Confán Argento",
	["Beryl Point"] = "Alto de Beryl",
	["Borean Tundra"] = "Tundra Boreal",
	["Camp Tunka'lo"] = "Campamento Tunka'lo",
	["Coldarra"] = "Gelidar",
	["Coldarra Ledge"] = "Saliente de Gelidar",
	["Crown Guard Tower"] = "Torre de la Corona",
	["Eastern Plaguelands"] = "Tierras de la Peste del Este",
	["Eastwall Tower"] = "Torre de la Muralla del Este",
	["Fishing Village"] = "Aldea Pesquera",
	["Frostwolf Keep"] = "Bastión Lobo G\195\169lido",
	["Generic"] = "Gen\195\169rico",
	["Grizzly Hills"] = "\195\129rea 52",
	["Hellfire Peninsula"] = "Penánsula del Fuego Infernal",
	["Kamagua"] = "Komawa",
	["Nighthaven"] = "Amparo de la Noche",
	["Northpass Tower"] = "Torre del Paso Norte",
	["Northshire Abbey"] = "Abadáa de Villanorte",
	["Plaguewood Tower"] = "Torre del Bosque de la Peste",
	["Programmer Isle"] = "Isla del programador",
	["Ruined City Post 01"] = "Puesto 01 de la Ciudad en Ruinas",
	["Spinebreaker Ridge"] = "Cresta Rompeloma",
	["Trade District"] = "trade district",
	["The Exodar"] = "El Exodar",
	["Transport"] = "Transporte",
	["Transport: Menethil <-> Valgarde"] = "Transporte: Menethil <-> Valgarde",
	["Valiance Landing Camp"] = "Campamento de Aterrizaje de Denuedo",
	["Warsong Camp"] = "Campamento Grito de Guerra",
	["Windrunner's Overlook"] = "Mirador Brisaveloz",
	--]]
}
