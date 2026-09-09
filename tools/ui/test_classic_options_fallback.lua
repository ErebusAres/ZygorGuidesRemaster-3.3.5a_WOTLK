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

local optionsFile = assert(io.open(root.."/Options.lua", "rb"))
local optionsSource = optionsFile:read("*a")
optionsFile:close()
local hookStart = assert(optionsSource:find("function me:Options_EnableBlizConfigOnOpen()", 1, true))
local hookEnd = assert(optionsSource:find("function me:OpenStepDisplayOptions()", hookStart, true))
local hookBlock = optionsSource:sub(hookStart, hookEnd - 1)
me = {}
local hook
InterfaceOptionsFrame = {HookScript=function(_, event, callback) assert(event=="OnShow"); hook=callback end}
local created, refreshed = 0, 0
function me:EnsureBlizConfig() created=created+1; self.blizRootPanel={} end
InterfaceOptionsFrame_UpdateCategories=function() refreshed=refreshed+1 end
ZGV=me
assert((loadstring or load)(hookBlock))()
me:Options_EnableBlizConfigOnOpen()
assert(hook, "opening Interface Options must install deferred panel creation")
hook()
assert(created==1 and refreshed==1, "opening Interface Options did not create and refresh the Zygor categories")
hook()
assert(created==1, "existing Blizzard panels should not be rebuilt")

local viewerFile = assert(io.open(root.."/ZygorGuidesViewer.lua", "rb"))
local viewerSource = viewerFile:read("*a")
viewerFile:close()
assert(viewerSource:find("self:Options_EnableBlizConfigOnOpen()", 1, true), "addon initialization must enable on-demand Blizzard categories")

local selectStart = assert(source:find("function me:SelectGuideManagerSection(section)", 1, true))
local selectEnd = assert(source:find("function me:SelectGuideManagerCategory(category)", selectStart, true))
local selectBlock = source:sub(selectStart, selectEnd - 1)
assert(selectBlock:find("if frame:IsShown() then", 1, true), "visible Guide Manager must apply section changes immediately")
assert(selectBlock:find("frame.currentSection = section or \"home\"", 1, true), "hidden Guide Manager must defer rendering until OnShow")

local stepStart = assert(source:find("function me:OpenGuideManagerStepDisplay()", 1, true))
local stepEnd = assert(source:find("function me:ToggleGuideManagerFrame(section)", stepStart, true))
local stepBlock = source:sub(stepStart, stepEnd - 1)
local selectPos = assert(stepBlock:find('self:SelectGuideManagerSection("options")', 1, true))
local showPos = assert(stepBlock:find("frame:Show()", 1, true))
assert(selectPos < showPos, "Step Display must select its page before the one-time OnShow render")

print("Classic options fallback regression passed")
