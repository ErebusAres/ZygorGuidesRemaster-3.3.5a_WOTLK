local _G = _G
local data = {}
local enUS_data = {}
local mt = {__index=function(self, key)
	self[key] = key
	return key
end}
function _G.ZygorGuidesViewer_L(name, locale, translations)
	if locale == "enUS" then
		local trans = translations()
		enUS_data[name] = trans
		data[name] = {}
		for k, v in pairs(trans) do
			data[name][k] = v
		end
		setmetatable(data[name], mt)
	elseif locale == GetLocale() then
		if data[name] then
			local trans = translations()
			for k, v in pairs(trans) do
				data[name][k] = v
			end
		end
	end
	return data[name]
end

function _G.ZygorGuidesViewer_L_enUS(name)
	return enUS_data[name]
end
