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

-- Native client crashes do not produce a Lua stack. Confirm the opt-in classic
-- settings route bypasses embedded Guide Manager options without disabling it
-- for unaffected profiles.
assert(optionsSource:find("classicoptionsonly = false",1,true), "classic options fallback must default off")
assert(optionsSource:find('name = "Use classic settings panels"',1,true), "classic fallback must be reachable in Interface Options")
assert(source:find('if self.db.profile.classicoptionsonly and frame.currentSection == "options" then',1,true),
	"saved Guide Manager options section must not render when classic mode is enabled")

local opens, hides, stepOpens = {},0,0
me = {
	db = {profile = {classicoptionsonly=true}},
	blizRootPanel = {},
	blizGearPanel = {},
	GuideManagerStandaloneFrame = {
		IsShown = function() return true end,
		Hide = function() hides=hides+1 end,
	},
	OpenStepDisplayOptions = function() stepOpens=stepOpens+1 end,
}
InterfaceOptionsFrame_OpenToCategory = function(panel) opens[#opens+1]=panel end
local optionsStart=assert(optionsSource:find("function me:OpenOptions(section)",1,true))
local optionsEnd=assert(optionsSource:find("function me:SetOption(cat,cmd)",optionsStart,true))
assert((loadstring or load)(optionsSource:sub(optionsStart,optionsEnd-1)))()
assert((loadstring or load)(selectBlock))()
local toggleStart=assert(source:find("function me:ToggleGuideManagerFrame(section)",1,true))
assert((loadstring or load)(source:sub(toggleStart)))()
assert((loadstring or load)(stepBlock))()
assert((loadstring or load)(fallback))()

me:SelectGuideManagerSection("options")
assert(hides==1 and #opens==2 and opens[2]==me.blizRootPanel,
	"Guide Manager options tab did not open classic root panels")
me:ToggleGuideManagerFrame("options")
assert(hides==2 and #opens==4 and opens[4]==me.blizRootPanel,
	"settings wheel did not open classic root panels")
me:OpenGuideManagerStepDisplay()
assert(stepOpens==1 and #opens==4, "Step Display fallback reopened the embedded options view")
me:OpenGuideManagerOptions()
assert(hides==3 and #opens==6 and opens[6]==me.blizRootPanel,
	"Guide Manager options entry bypassed classic mode or left the manager in front")
me:OpenOptions("gear")
assert(#opens==8 and opens[8]==me.blizGearPanel, "Gear settings did not use their classic panel")

print("Classic options fallback regression passed")
