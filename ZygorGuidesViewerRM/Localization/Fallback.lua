local locale=GetLocale()
if locale=="enGB" or locale=="enUS" then return end  -- don't overwrite the defaults, fool

-- placeholders for any locale to use English
ZygorGuidesViewer_L("Guides", locale, function() return {} end)
ZygorGuidesViewer_L("Main", locale, function() return {} end)
ZygorGuidesViewer_L("Specials", locale, function() return {
	["plural"] = function (word)
		return word
	end,
	['contract_mobs'] = false,
} end)
