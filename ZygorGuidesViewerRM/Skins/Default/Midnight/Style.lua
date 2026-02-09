-- Sanity checks, this should be run AFTER Skin.lua
local STYLE,SKIN,STYLEDIR,SKINSDIR
if not ZGV or type(ZGV.Skins)~="table" or not ZGV.Skins["default"]
	or type(ZGV.Skins["default"].styles)~="table" or not ZGV.Skins["default"].styles["midnight"] then
	ZGV:Debug("Trying to construct style at inappropriate time")
	return
else
	STYLE=ZGV.Skins["default"].styles["midnight"]
	SKIN=STYLE.skin
	STYLEDIR=ZGV:GetSkinPath(SKIN.id,STYLE.id)
	SKINSDIR=ZGV.DIR.."\\Skins\\"
end

-- Basics
-- Black frame with a lightborder
STYLE.MainBackdrop={bgFile=SKINSDIR.."white",edgeFile=STYLEDIR.."border",tile = true, edgeSize=20, tileSize = 20, insets = { left = 20, right = 20, top = 20, bottom = 20 }}
--STYLE.MainBackdrop={bgFile=SKINSDIR.."white",tile = true, edgeSize=0, tileSize = 20, insets = { left = 0, right = 0, top = 0, bottom = 0 }}
STYLE.MainBackdropColor={0,0,0,0.50}
STYLE.MainBackdropBorderColor={0,0,0,1}

-- Dark gray without border
STYLE.SecBackdrop={bgFile = SKINSDIR.."white"}
STYLE.SecBackdropColor={0,0,0,0.5}

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

STYLE.DropDownBackdrop=STYLE.SecBackdrop
STYLE.DropDownBackdropColor=STYLE.TriBackdropColor

STYLE.DropDownPulloutBackdrop=STYLE.MainBackdrop
STYLE.DropDownPulloutColor={HTMLColor("#000000e6")}
STYLE.DropDownPulloutBorderColor=STYLE.MainBackdropBorderColor

STYLE.DropDownItemBackdrop=STYLE.SecBackdrop
STYLE.DropDownItemColor=STYLE.TriBackdropColor

STYLE.ScrollBackColor=STYLE.ButtonColor
STYLE.ScrollBarColor={HTMLColor("#666666ff")}

STYLE.Backdrop=STYLE.MainBackdrop
STYLE.BackdropColor=STYLE.MainBackdropColor
STYLE.BackdropBorderColor=STYLE.MainBackdropBorderColor

STYLE.GuideBackdrop={bgFile = SKINSDIR.."white", edgeFile=STYLEDIR.."roundcorners", tile = true, edgeSize=10, tileSize = 20, insets = { left = 10, right = 10, top = 10, bottom = 10 }}
STYLE.GuideBackdropColor={0,0,0,0.5}
STYLE.GuideBackdropBorderColor={0,0,0,0.5}
STYLE.GuideBackdropTopLeft={70,0}
STYLE.GuideBackdropBottomRight={-52,0}

STYLE.BugBackdrop=STYLE.SecBackdrop
STYLE.BugBackdropColor=STYLE.SecBackdropColor

STYLE.GuideButtonSize=20

STYLE.StepnumBackdrop={bgFile = SKINSDIR.."white"}
STYLE.StepnumBackdropColor={0,0,0,0.5}
STYLE.StepnumBackdropTopLeft={20,0}
STYLE.StepnumBackdropBottomRight={50,-20}

STYLE.TabBackdrop={bgFile = SKINSDIR.."white"}
STYLE.TabBackdropColor={0,0,0,0.5}

STYLE.ProgressBarBackdrop = {bgFile = "Interface\\Tooltips\\UI-Tooltip-Background", edgeFile=nil, tile = true, edgeSize=4, tileSize = 16, insets = { left = 6, right = 6, top = 6, bottom = 6 }}
STYLE.ProgressBarBackdropColor={0,0,0,0.8}
STYLE.ProgressBarBackdropBorderColor={0,0,0,1}
STYLE.ProgressBarTexture = {"Interface\\TargetingFrame\\UI-StatusBar"}
STYLE.ProgressBarTextureHeight = 7
STYLE.ProgressBarHeight = 18
STYLE.ProgressBarInset = 5
STYLE.ProgressBarColor = {0,1,0,1}
STYLE.ProgressBarColor2 = {0.53,0.81,0.98,1.0}

STYLE.ScrollBarButtonSize={16,16}

STYLE.SectionTitleColor={1,1,1,1}
STYLE.SectionTitleFontSize = 11

-- Customize as you wish but currently we're economizing
STYLE.CreatureBackdrop=STYLE.Backdrop
STYLE.CreatureBackdropColor=STYLE.BackdropColor
STYLE.CreatureBackdropBorderColor=STYLE.BackdropBorderColor

STYLE.MoneyBackdrop={bgFile="",edgeFile=STYLEDIR.."border", tile = true, edgeSize=14, tileSize = 128, insets = { left = 20, right = 20, top = 20, bottom = 20 }}
STYLE.MoneyBackdropColor={1,1,1,1}
STYLE.MoneyBackdropBorderColor={0,0,0,1}

STYLE.StepBackdrop={bgFile = SKINSDIR.."white", edgeFile=STYLEDIR.."roundcorners", tile = true, edgeSize=8, tileSize = 8, insets = { left = 8, right = 8, top = 8, bottom = 8 }}
STYLE.StepBorderBackdrop={bgFile=nil,edgeFile=STYLEDIR.."border-glow", tile = true, edgeSize=8, tileSize = 8, insets = { left = 8, right = 8, top = 8, bottom = 8 }}
STYLE.StepBackdropColor={0,0,0,0.5}
STYLE.StepBackdropBorderColor={0,0,0,0.5}
STYLE.StepBackdropPersistentBorder=false -- Whether the skin allows to change step border color

STYLE.StepLineBackBackdrop={bgFile = SKINSDIR.."white", edgeFile=STYLEDIR.."roundcorners", tile = true, edgeSize=6, tileSize = 6, insets = { left = 6, right = 6, top = 6, bottom = 6 }}
STYLE.StepLineBackBackdropColor=STYLE.StepBackdropColor -- probably an overkill
STYLE.StepLineBackBackdropBorderColor=STYLE.StepBackdropBorderColor
STYLE.StepLineMarginX=3
STYLE.StepLineMarginY=3
STYLE.StepLineClickerBackdrop=STYLE.StepLineBackBackdrop

STYLE.StepLineIcons = SKINSDIR.."icons"
STYLE.TitleButtons = STYLEDIR.."titlebuttons"
STYLE.TitleLogo = SKINSDIR.."zygorlogo"

STYLE.StepLineIconSize = 1.4

STYLE.TitleButtonSize = 20

STYLE.StepNumFontSize = 12
STYLE.StepNumWidth = 24

STYLE.CreatureViewerLabelBackground = {0,0,0,0}
STYLE.CreatureViewerLabelColor = {1,0.8,0,1}
STYLE.CreatureViewerGap = {0,0}

STYLE.NotificationBackdrop=STYLE.MainBackdrop
STYLE.NotificationBackdropColor=STYLE.MainBackdropColor
STYLE.NotificationBackdropBorderColor=STYLE.MainBackdropBorderColor

function STYLE:OnActivate()
	local iconsize = 20
	ZygorGuidesViewerFrame_Border_TitleBar_Logo:SetSize(120,120/4)
	ZygorGuidesViewerFrame_Border_TitleBar_Logo:SetPoint("CENTER",ZygorGuidesViewerFrame_Border_TitleBar,"CENTER")
end
