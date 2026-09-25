local _G = _G
local data = {}
local mt = {__index=function(self, key)
	self[key] = key
	return key
end}

-- Language: follows the same switch as the main addon (ZGV_LANG_PT, set in Localization/Base.lua): Portuguese (Brazil)
-- when active, English otherwise. Without the main addon's switch it stays in English.
local function wanted(locale)
	if locale == "ptBR" then return _G.ZGV_LANG_PT and true or false end
	return locale ~= nil and locale == GetLocale()
end

function _G.ZygorTalentAdvisor_L(name, locale, translations)
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
