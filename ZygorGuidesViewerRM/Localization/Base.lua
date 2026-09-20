local _G = _G
local data = {}
local mt = {__index=function(self, key)
	self[key] = key
	return key
end}

-- ===================================================================================================================
-- LANGUAGE: Portuguese (Brazil) / English
-- The language is decided HERE, at the very start of the load (before any other file of the addon), by the state of the
-- optional mini-addon "ZygorGuidesViewerRM_PTBR":   ENABLED = Portuguese (Brazil)   |   DISABLED = English.
-- Without the mini-addon the addon follows the client: Portuguese on a ptBR client, English on any other client.
-- Switching in game: /zygor > "Idioma / Language" (enables/disables the mini-addon and reloads the UI), or in the AddOns
-- list of the character selection screen.
-- (SavedVariables cannot be used for this: they are not available yet while the files of the addon are being executed.)
-- ===================================================================================================================
local LANG_ADDON = "ZygorGuidesViewerRM_PTBR"
do
	local ok, name, _, _, enabled, _, reason = pcall(GetAddOnInfo, LANG_ADDON)
	if not ok or not name or reason == "MISSING" then
		_G.ZGV_LANG_PT = (GetLocale() == "ptBR")
	else
		_G.ZGV_LANG_PT = enabled and true or false
	end
end

-- A translation block is only applied when: it is ptBR and the Portuguese language is active (even on a ptBR client,
-- English = the original text), or it is the client's own locale (original behaviour). Calls without a locale (reads of
-- the table) never apply anything.
local function wanted(locale)
	if locale == "ptBR" then return _G.ZGV_LANG_PT and true or false end
	return locale ~= nil and locale == GetLocale()
end

-- Text written directly in the code:  ZGV_T("English text")  returns the Portuguese text (when active) or the English text.
-- The dictionary (English -> Portuguese) comes from Localization/ptBR_dict.lua and is only loaded in Portuguese mode.
local dict, alt = {}, {}
function _G.ZGV_T_Register(d, a)
	for k, v in pairs(d) do dict[k] = v end
	if a then
		for n, t in pairs(a) do
			local dst = alt[n]
			if not dst then dst = {}; alt[n] = dst end
			for k, v in pairs(t) do dst[k] = v end
		end
	end
end
function _G.ZGV_T(s, n)
	if _G.ZGV_LANG_PT then
		local v
		if n then
			local t = alt[n]
			v = t and t[s]
		else
			v = dict[s]
		end
		if v then return v end
	end
	return s
end

function _G.ZygorGuidesViewer_L(name, locale, translations)
	if locale == "enUS" then
		data[name] = translations()
		setmetatable(data[name], mt)
	elseif translations and wanted(locale) then
		local trans = translations()
		for k, v in pairs(trans) do
			data[name][k] = v
		end
	end

	return data[name]
end
