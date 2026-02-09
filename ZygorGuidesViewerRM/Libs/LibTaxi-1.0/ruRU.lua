if GetLocale()~="ruRU" then return end

local addon,_L = ...
assert(_L.Lib,"Library not loaded")
if _L.Lib.TaxiNames_Local then return end

_L.Lib.TaxiNames_Local = {
	["Hellfire Peninsula, The Dark Portal"] = "Полуостров Адского Пламени, Темный портал",

	-- Special
	["Valley of Strength"] = nil, -- Orgrimmar

	-- Special
	["The Great Forge"] = nil, -- Ironforge
	["Trade District"] = nil, -- Stormwind

	-- Special
	["Terrace of Light"] = nil, -- Shattrath City
	["The Stair of Destiny"] = nil, -- The Dark Portal

	-- Special
	["Krasus' Landing"] = nil, -- Dalaran

}
