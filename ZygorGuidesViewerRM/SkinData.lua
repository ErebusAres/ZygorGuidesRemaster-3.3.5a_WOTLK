-- SkinData.lua: Built-in skin definitions for ZygorGuidesViewerRM
-- Skin system functions are in ZygorGuidesViewer.lua
-- Additional skins can be registered in separate files via ZGV:RegisterSkin()

local ZGV = ZGV

---------------------------------------------------------------------------
-- Built-in Remaster skin
---------------------------------------------------------------------------

local BACKDROP_SIMPLE = {
	bgFile = "Interface\\Buttons\\white8x8",
	edgeFile = "Interface\\Buttons\\white8x8",
	tile = true,
	tileSize = 16,
	edgeSize = 1,
	insets = { left = 1, right = 1, top = 1, bottom = 1 },
}

ZGV:RegisterSkin("remaster", {
	name = "Remaster",
	useRemasterFrames = true,

	theme = {
		frameBorder    = { 0.18, 0.18, 0.20, 0.92 },
		frameLight     = { 0.28, 0.28, 0.30, 0.18 },
		insetBg        = { 0.10, 0.10, 0.11, 0.95 },
		insetBorder    = { 0.20, 0.20, 0.22, 0.90 },
		buttonBack     = { 0.13, 0.13, 0.14, 0.95 },
		buttonHover    = { 0.19, 0.19, 0.21, 0.98 },
		buttonBorder   = { 0.27, 0.27, 0.30, 0.95 },
		separator      = { 0.32, 0.32, 0.35, 0.80 },
		textPrimary    = { 0.86, 0.86, 0.88, 1.00 },
		textMeta       = { 0.72, 0.72, 0.75, 0.90 },
	},

	variants = {
		dark = {
			label = ZGV_T("|cffcfd6e8Remaster Dark|r"),
			text = { 0.90, 0.92, 0.98 },
			back = { 0.08, 0.09, 0.12 },
		},
		goldaccent = {
			label = ZGV_T("|cffebd199Remaster Gold Accent|r"),
			text = { 0.92, 0.80, 0.50 },
			back = { 0.07, 0.08, 0.10 },
			themeOverrides = {
				frameBorder  = { 0.17, 0.15, 0.10, 0.88 },
				frameLight   = { 0.12, 0.10, 0.07, 0.42 },
				insetBg      = { 0.05, 0.05, 0.06, 0.97 },
				insetBorder  = { 0.22, 0.18, 0.10, 0.90 },
				buttonBack   = { 0.09, 0.08, 0.07, 0.96 },
				buttonHover  = { 0.22, 0.17, 0.08, 0.98 },
				buttonBorder = { 0.50, 0.40, 0.18, 0.95 },
				separator    = { 0.90, 0.74, 0.40, 0.62 },
				textPrimary  = { 0.92, 0.80, 0.50, 1.00 },
				textMeta     = { 0.78, 0.70, 0.55, 0.92 },
			},
			rootBackOverride = { 0.04, 0.04, 0.05 },
			headerBgOverride = { 0, 0, 0, 0.58 },
			toolbarBgOverride = { 0, 0, 0, 0.42 },
		},
		blue = {
			label = ZGV_T("|cff88b3ffRemaster Blue|r"),
			text = { 0.70, 0.80, 1.00 },
			back = { 0.08, 0.11, 0.24 },
		},
		green = {
			label = ZGV_T("|cff88ff88Remaster Green|r"),
			text = { 0.50, 1.00, 0.50 },
			back = { 0.09, 0.20, 0.07 },
		},
		orange = {
			label = ZGV_T("|cffffcc66Remaster Orange|r"),
			text = { 1.00, 0.80, 0.00 },
			back = { 0.23, 0.11, 0.07 },
		},
		violet = {
			label = ZGV_T("|cffff99ffRemaster Violet|r"),
			text = { 0.95, 0.65, 1.00 },
			back = { 0.17, 0.07, 0.20 },
		},
	},
	defaultVariant = "dark",

	layout = {
		headerHeight = 34,
		toolbarHeight = 28,
		footerHeight = 14,
		contentPadding = 10,
		rootPadding = 6,
		buttonSize = { 22, 20 },
		guideButtonSize = { 70, 20 },
	},

	fonts = {
		title    = { file = "\\Skins\\segoeuib.ttf", size = 13, fallback = "\\Skins\\segoeui.ttf" },
		meta     = { file = "\\Skins\\segoeui.ttf", size = 11 },
		step     = { file = "\\Skins\\segoeui.ttf", size = 11 },
	},

	goalColors = {
		incomplete  = { r = 0.18, g = 0.20, b = 0.25, a = 0.65 },
		progressing = { r = 0.18, g = 0.28, b = 0.35, a = 0.75 },
		complete    = { r = 0.12, g = 0.24, b = 0.20, a = 0.75 },
		impossible  = { r = 0.18, g = 0.18, b = 0.18, a = 0.60 },
		aux         = { r = 0.15, g = 0.22, b = 0.32, a = 0.60 },
		obsolete    = { r = 0.15, g = 0.22, b = 0.32, a = 0.60 },
		stepAlpha   = 0.2,
	},

	progressBar = {
		bg   = { 1, 1, 1, 0.10 },
		fill = { 0.28, 0.82, 0.36, 0.98 },
	},

	backdrops = {
		root    = BACKDROP_SIMPLE,
		content = BACKDROP_SIMPLE,
		button  = BACKDROP_SIMPLE,
	},
})
