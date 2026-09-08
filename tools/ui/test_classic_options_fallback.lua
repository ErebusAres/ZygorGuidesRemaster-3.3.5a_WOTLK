local root = arg[1] or "ZygorGuidesViewerRM"

local file = assert(io.open(root.."/GuideBrowser.lua", "rb"))
local source = file:read("*a")
file:close()

local legacyStart = assert(source:find('f.legacyButton:SetScript("OnClick", function()', 1, true))
local legacyEnd = assert(source:find('f:SetScript("OnHide"', legacyStart, true))
local legacy = source:sub(legacyStart, legacyEnd - 1)
assert(legacy:find("self:EnsureBlizConfig()", 1, true), "legacy options button must create deferred Blizzard panels")
assert(legacy:find("self.blizRootPanel", 1, true), "legacy options button must open the registered root panel")

local fallbackStart = assert(source:find("function me:OpenGuideManagerOptions()", 1, true))
local fallbackEnd = assert(source:find("local GUIDE_MANAGER_TOP_TABS", fallbackStart, true))
local fallback = source:sub(fallbackStart, fallbackEnd - 1)
assert(fallback:find("self:EnsureBlizConfig()", 1, true), "Guide Manager fallback must create deferred Blizzard panels")
assert(fallback:find("self.blizRootPanel", 1, true), "Guide Manager fallback must open the registered root panel")

print("Classic options fallback regression passed")
