-- Sanity checks, this should be run AFTER Skin.lua
local STYLE,SKIN,STYLEDIR,SKINSDIR
if not ZGV or type(ZGV.Skins)~="table" or not ZGV.Skins["default"]
	or type(ZGV.Skins["default"].styles)~="table" or not ZGV.Skins["default"].styles["stealth"] then
	ZGV:Debug("Trying to construct style at inappropriate time")
	return
else
	STYLE=ZGV.Skins["default"].styles["stealth"]
	SKIN=STYLE.skin
	STYLEDIR=ZGV:GetSkinPath(SKIN.id,STYLE.id)
	SKINSDIR=ZGV.DIR.."\\Skins\\"
end

-- Basics
-- Black frame with a lightborder
--STYLE.MainBackdrop={bgFile=SKINSDIR.."white",edgeFile=SKINSDIR.."white",tile = true, edgeSize=1, tileSize = 20, insets = { left = 0, right = 0, top = 0, bottom = 0 }}
STYLE.MainBackdrop={bgFile=SKINSDIR.."white",tile = true, edgeSize=0, tileSize = 20, insets = { left = 0, right = 0, top = 0, bottom = 0 }}
--STYLE.MainBackdropColor={HTMLColor("#000000ff")}
STYLE.MainBackdropColor={HTMLColor("#161616ff")}
STYLE.MainBackdropBorderColor={HTMLColor("#7d7d7dff")}

STYLE.BorderBackdropTemp={bgFile=SKINSDIR.."white",edgeFile=SKINSDIR.."white",tile = true, edgeSize=1, tileSize = 20, insets = { left = 0, right = 0, top = 0, bottom = 0 }}

-- Dark gray without border
STYLE.SecBackdrop={bgFile=SKINSDIR.."white",tile = true, edgeSize=0, tileSize = 20, insets = { left = 0, right = 0, top = 0, bottom = 0 }}
STYLE.SecBackdropColor={HTMLColor("#222222ff")}

-- Lighter gray
STYLE.TriBackdropColor={HTMLColor("#333333ff")}

-- Dark border
STYLE.DarkBorder={HTMLColor("#000000ff")}

STYLE.AccentColor={HTMLColor("#e5661aff")}

-- Widget colors!
-- TODO These are stealth only at the moment. Need to support midnight. Maybe?
STYLE.ButtonBackdrop=STYLE.MainBackdrop
STYLE.ButtonColor=STYLE.TriBackdropColor
STYLE.ButtonBorderColor={HTMLColor("#808080ff")}
STYLE.ButtonHighlightColor={HTMLColor("#444444ff")}

STYLE.ToggleButtonBackdropColor={HTMLColor("#666666ff")}
STYLE.ToggleButtonHighlightColor=STYLE.ButtonHighlightColor

STYLE.DropDownBackdrop=STYLE.SecBackdrop
STYLE.DropDownBackdropColor=STYLE.TriBackdropColor

STYLE.DropDownPulloutBackdrop=STYLE.MainBackdrop
STYLE.DropDownPulloutColor={HTMLColor("#000000e6")}
STYLE.DropDownPulloutBorderColor=STYLE.MainBackdropBorderColor

STYLE.DropDownItemBackdrop=STYLE.SecBackdrop
STYLE.DropDownItemColor=STYLE.ToggleButtonBackdropColor

STYLE.ScrollBackColor=STYLE.ButtonColor
STYLE.ScrollBarColor={HTMLColor("#666666ff")}

-- Specifics
STYLE.Backdrop=STYLE.MainBackdrop
STYLE.BackdropColor=STYLE.MainBackdropColor
STYLE.BackdropBorderColor=STYLE.MainBackdropBorderColor

STYLE.GuideBackdrop=STYLE.BorderBackdropTemp
STYLE.GuideBackdropColor=STYLE.SecBackdropColor
STYLE.GuideBackdropBorderColor=STYLE.DarkBorder

-- TODO perhaps we need to specifically unset the texture on those to improve performance, but it shouldn't be much of an issue
STYLE.TabBackdropColor={0,0,0,0.0} -- the splitter is invisible
STYLE.StepnumBackdropColor={0,0,0,0.0} -- so is stepnumber

-- Customize as you wish but currently we're economizing
STYLE.CreatureBackdrop=STYLE.MainBackdrop
STYLE.CreatureBackdropColor=STYLE.MainBackdropColor
STYLE.CreatureBackdropBorderColor=STYLE.MainBackdropBorderColor

STYLE.CreatureViewerLabelBackground = STYLE.SecBackdropColor
STYLE.CreatureViewerLabelColor = {1.0,1.0,1.0,1.0}
STYLE.CreatureViewerGap = {-10,0}

STYLE.MoneyBackdrop=STYLE.MainBackdrop
STYLE.MoneyBackdropColor=STYLE.MainBackdropColor
STYLE.MoneyBackdropBorderColor=STYLE.MainBackdropBorderColor

STYLE.BugBackdrop=STYLE.SecBackdrop
STYLE.BugBackdropColor=STYLE.SecBackdropColor

STYLE.GuideButtonSize=18

STYLE.StepBackdrop=STYLE.BorderBackdropTemp
STYLE.StepBorderBackdrop={bgFile=nil,edgeFile=STYLEDIR.."border-glow", tile = true, edgeSize=4, tileSize = 20, insets = { left = 0, right = 0, top = 0, bottom = 0 }} -- this is one step's background, needed when the main window controls are hidden
STYLE.StepBackdropColor=STYLE.SecBackdropColor
STYLE.StepBackdropBorderColor=STYLE.DarkBorder
STYLE.StepBackdropPersistentBorder=true

STYLE.StepLineBackBackdrop={bgFile = SKINSDIR.."white", tile = true, tileSize = 6}
STYLE.StepLineBackBackdropColor={0,0,0,0}
STYLE.StepLineBackBackdropBorderColor=STYLE.StepLineBackBackdropColor
STYLE.StepLineClickerBackdrop=STYLE.StepLineBackBackdrop
STYLE.StepLineMarginX=1
STYLE.StepLineMarginY=1

STYLE.StepLineIcons = STYLEDIR.."stepicons"
STYLE.TitleButtons = STYLEDIR.."titlebuttons"
STYLE.TitleLogo = SKINSDIR.."zygorlogo2"

STYLE.ProgressBarBackdrop = {bgFile = SKINSDIR.."white", edgeFile=SKINSDIR.."white", tile = true, edgeSize=1, tileSize = 16, insets = { left = 1, right = 1, top = 1, bottom = 1 }}
STYLE.ProgressBarBackdropColor=STYLE.SecBackdropColor
STYLE.ProgressBarBackdropBorderColor=STYLE.DarkBorder
STYLE.ProgressBarTexture = {1.0,1.0,1.0,1.0}
STYLE.ProgressBarTextureHeight = 5
STYLE.ProgressBarHeight = 7
STYLE.ProgressBarInset = 0
STYLE.ProgressBarColor = {0.0,0.8,0.0,1.0}
STYLE.ProgressBarColor2 = {1/255,162/255,253/255,1.0}

STYLE.SectionTitleFontSize = 13

STYLE.StepLineIconSize = 1.1

STYLE.TitleButtonSize = 16
STYLE.TitleButtonStepPrevNextSize = 14

STYLE.StepNumFontSize = 14
STYLE.StepNumWidth = 32

STYLE.StepFontSizeMod = 1

STYLE.NotificationBackdrop=STYLE.SecBackdrop
STYLE.NotificationBackdropColor=STYLE.SecBackdropColor
--STYLE.NotificationBackdropBorderColor=STYLE.MainBackdropBorderColor

--STYLE.GoldBackdrop=STYLE.MainBackdrop
--STYLE.GoldBackdropColor=STYLE.MainBackdropColor
--STYLE.GoldBackdropBorderColor=STYLE.MainBackdropBorderColor

-- TODO can't we rewrite this declaratively?
function STYLE:OnActivate()
	local iconsize = 16
	ZygorGuidesViewerFrame_Border_TitleBar_Logo:SetSize(110,110/4)
	ZygorGuidesViewerFrame_Border_TitleBar_Logo:SetPoint("CENTER",ZygorGuidesViewerFrame_Border_TitleBar,"CENTER",0,-2)
end