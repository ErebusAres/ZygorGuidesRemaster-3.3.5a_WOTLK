local root = (arg and arg[1]) or "."

local function read(path)
	local file = assert(io.open(root.."/"..path, "rb"))
	local text = file:read("*a")
	file:close()
	return text
end

local main = read("ZygorGuidesViewer.lua")
local start = assert(main:find("local REMASTER_CLIENT_FONT_LOCALES", 1, true))
local finish = assert(main:find("function ZGV:BuildSkinDropdownValues", start, true))
local helper = main:sub(start, finish - 1)

local locale = "enUS"
local env = {
	ZGV = { DIR = "Interface\\AddOns\\ZygorGuidesViewerRM" },
	GetLocale = function() return locale end,
	STANDARD_TEXT_FONT = "CLIENT_FONT",
}
setmetatable(env, { __index = _G })
local loader = loadstring or load
local chunk
if setfenv then
	chunk = assert(loader(helper, "remaster locale font helper"))
	setfenv(chunk, env)
else
	chunk = assert(loader(helper, "remaster locale font helper", "t", env))
end
chunk()

for _, clientLocale in ipairs({ "zhCN", "zhTW", "koKR", "jaJP" }) do
	locale = clientLocale
	assert(env.ZGV:GetRemasterFont("body") == "CLIENT_FONT", clientLocale.." must use the client font")
	assert(env.ZGV:GetRemasterFont("arrow") == "CLIENT_FONT", clientLocale.." arrow must use the client font")
end

locale = "ruRU"
assert(env.ZGV:GetRemasterFont("body"):find("segoeui.ttf", 1, true), "ruRU should retain the bundled Cyrillic-capable font")
assert(env.ZGV:GetRemasterFont("arrow"):find("OpenSans.TTF", 1, true), "ruRU arrow should retain bundled Cyrillic-capable OpenSans")

locale = "enUS"
assert(env.ZGV:GetRemasterFont("section"):find("segoeuib.ttf", 1, true), "section font must remain bold Segoe UI")
assert(env.ZGV:GetRemasterFont("body"):find("segoeui.ttf", 1, true), "body font must remain Segoe UI")
assert(env.ZGV:GetRemasterFont("arrow"):find("OpenSans.TTF", 1, true), "arrow font must remain OpenSans")

local pointer = read("Pointer.lua")
local frame = read("ZygorGuidesViewerFrame.lua")
local upgrades = read("Item-Upgrades.lua")
assert(pointer:find('GetRemasterFont("arrow")', 1, true), "arrow must use the shared locale-aware helper")
assert(frame:find('GetRemasterFont("section")', 1, true), "guide section must use the shared locale-aware helper")
assert(frame:find('GetRemasterFont("body")', 1, true), "guide body must use the shared locale-aware helper")
assert(upgrades:find('GetRemasterFont("section")', 1, true), "Gear Advisor header must use the shared locale-aware helper")
local _, bodyUses = upgrades:gsub('GetRemasterFont%("body"%)', "")
assert(bodyUses >= 2, "Gear Advisor metadata and buttons must use the shared locale-aware helper")

print("PASS: locale-aware remaster fonts cover arrow, guide text, and Gear Advisor UI")
