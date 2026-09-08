local root = arg[1] or "ZygorGuidesViewerRM"

local function fail(message)
	error(message,2)
end

local timer={shown=false,scripts={}}
function timer:Hide() self.shown=false end
function timer:Show() self.shown=true end
function timer:SetScript(name,func) self.scripts[name]=func end

UIParent={left=0,right=1000}
function UIParent:GetLeft() return self.left end
function UIParent:GetRight() return self.right end
CreateFrame=function() return timer end

local list={id=1,numButtons=1,name="DropDownList1"}
function list:GetID() return self.id end
function list:GetName() return self.name end

local entered=0
local left=0
local highlighted=0
local stopped=0
local button={name="DropDownList1Button1",parent=list,shown=true,hasArrow=true,scripts={}}
button.Highlight={Show=function() highlighted=highlighted+1 end}
function button:GetName() return self.name end
function button:GetParent() return self.parent end
function button:IsShown() return self.shown end
function button:GetScript(name) return self.scripts[name] end
function button:SetScript(name,func) self.scripts[name]=func end
button.scripts.OnEnter=function() entered=entered+1 end
button.scripts.OnLeave=function() left=left+1 end

_G.DropDownList1=list
_G.DropDownList1Button1=button
UIDROPDOWNMENU_MAXBUTTONS=1
UIDropDownMenu_StopCounting=function() stopped=stopped+1 end
local focus=button
GetMouseFocus=function() return focus end

ZygorGuidesViewer={}
assert(loadfile(root.."/GuideMenuHover.lua"))()
local hover=assert(ZygorGuidesViewer.GuideMenuHover)
if hover.delay~=0.15 then fail("guide submenu hover delay must match confirmed 0.15-second timing") end

hover:SetActive(true)
hover:ApplyLevel(1)
button:GetScript("OnEnter")(button)
if entered~=0 then fail("guide submenu opened immediately instead of waiting") end
if highlighted~=1 or stopped~=1 then fail("delayed row did not retain immediate hover feedback") end
hover:OnUpdate(0.14)
if entered~=0 then fail("guide submenu opened before the configured delay") end
hover:OnUpdate(0.01)
if entered~=1 then fail("guide submenu did not open after sustained hover") end

button:GetScript("OnEnter")(button)
button:GetScript("OnLeave")(button)
hover:OnUpdate(1)
if entered~=1 or left~=1 then fail("leaving the row did not cancel its pending submenu") end

button.hasArrow=true
button:GetScript("OnEnter")(button)
button.hasArrow=false
button:GetScript("OnEnter")(button)
hover:OnUpdate(1)
if entered~=2 then fail("entering a leaf row did not cancel the pending submenu") end

hover:SetActive(false)
button:GetScript("OnEnter")(button)
if entered~=3 then fail("non-guide dropdown use should retain immediate hover behavior") end

local rootFrame={}
function rootFrame:HookScript(name,func) self[name]=func end
hover:AttachRoot(rootFrame)
hover:SetActive(true)
rootFrame.OnHide()
if hover.active then fail("closing the guide menu did not disable delayed-hover mode") end

local parentList={left=760,right=960}
function parentList:GetLeft() return self.left end
function parentList:GetRight() return self.right end
local childList={shown=true,width=180,top=500}
function childList:IsShown() return self.shown end
function childList:GetWidth() return self.width end
function childList:GetTop() return self.top end
function childList:ClearAllPoints() self.cleared=true end
function childList:SetPoint(...) self.point={...} end
function childList:SetClampedToScreen(value) self.clamped=value end
_G.DropDownList1=parentList
_G.DropDownList2=childList
hover:RepositionLevel(2)
if not childList.cleared or childList.point[1]~="TOPLEFT" then fail("edge submenu was not repositioned") end
if childList.point[4]~=578 then fail("edge submenu did not open on the parent's left side") end
if childList.point[5]~=500 or not childList.clamped then fail("submenu vertical position or clamping changed") end

parentList.left,parentList.right=100,300
childList.cleared=nil
hover:RepositionLevel(2)
if childList.point[4]~=302 then fail("submenu with right-side room did not open on the parent's right side") end

print("Guide-menu hover-intent regression passed")
