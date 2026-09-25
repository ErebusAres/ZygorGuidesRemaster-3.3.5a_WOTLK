-- Retail.lua: Retail-style skin for ZygorGuidesViewerRM
-- Mimics the modern Zygor retail look and feel.
-- This is a starting point - colors/layout can be refined to match retail more closely.

local ZGV = ZGV

ZGV:RegisterSkin("retail", {
	name = "Retail",
	useRemasterFrames = true,

	theme = {
		frameBorder    = { 0.12, 0.12, 0.14, 0.95 },
		frameLight     = { 0.16, 0.16, 0.18, 0.25 },
		insetBg        = { 0.06, 0.06, 0.08, 0.97 },
		insetBorder    = { 0.14, 0.14, 0.16, 0.90 },
		buttonBack     = { 0.10, 0.10, 0.12, 0.95 },
		buttonHover    = { 0.18, 0.22, 0.30, 0.98 },
		buttonBorder   = { 0.20, 0.24, 0.32, 0.95 },
		separator      = { 0.24, 0.28, 0.36, 0.70 },
		textPrimary    = { 0.92, 0.92, 0.94, 1.00 },
		textMeta       = { 0.60, 0.65, 0.72, 0.90 },
	},

	variants = {
		default = {
			label = "|cff4499ffRetail|r",
			text = { 0.92, 0.92, 0.94 },
			back = { 0.04, 0.04, 0.06 },
		},
		blue = {
			label = ZGV_T("|cff3388ffRetail Blue|r"),
			text = { 0.80, 0.88, 1.00 },
			back = { 0.03, 0.05, 0.10 },
			themeOverrides = {
				frameBorder  = { 0.10, 0.14, 0.22, 0.95 },
				buttonHover  = { 0.14, 0.20, 0.34, 0.98 },
				buttonBorder = { 0.18, 0.26, 0.42, 0.95 },
				separator    = { 0.20, 0.30, 0.50, 0.70 },
			},
		},
		dark = {
			label = ZGV_T("|cff888888Retail Dark|r"),
			text = { 0.82, 0.82, 0.84 },
			back = { 0.02, 0.02, 0.03 },
			themeOverrides = {
				frameBorder  = { 0.08, 0.08, 0.10, 0.98 },
				frameLight   = { 0.10, 0.10, 0.12, 0.20 },
				insetBg      = { 0.03, 0.03, 0.04, 0.98 },
				insetBorder  = { 0.10, 0.10, 0.12, 0.92 },
				buttonBack   = { 0.06, 0.06, 0.08, 0.96 },
			},
		},
	},
	defaultVariant = "default",

	layout = {
		headerHeight = 36,
		toolbarHeight = 30,
		footerHeight = 16,
		contentPadding = 10,
		rootPadding = 6,
		buttonSize = { 24, 22 },
		guideButtonSize = { 74, 22 },
	},

	fonts = {
		title    = { file = "\\Skins\\segoeuib.ttf", size = 13, fallback = "\\Skins\\segoeui.ttf" },
		meta     = { file = "\\Skins\\segoeui.ttf", size = 11 },
		step     = { file = "\\Skins\\segoeui.ttf", size = 11 },
	},

	goalColors = {
		incomplete  = { r = 0.14, g = 0.16, b = 0.22, a = 0.70 },
		progressing = { r = 0.12, g = 0.22, b = 0.32, a = 0.80 },
		complete    = { r = 0.10, g = 0.22, b = 0.16, a = 0.80 },
		impossible  = { r = 0.14, g = 0.14, b = 0.16, a = 0.65 },
		aux         = { r = 0.12, g = 0.18, b = 0.28, a = 0.65 },
		obsolete    = { r = 0.12, g = 0.18, b = 0.28, a = 0.65 },
		stepAlpha   = 0.15,
	},

	progressBar = {
		bg   = { 1, 1, 1, 0.08 },
		fill = { 0.20, 0.60, 0.90, 0.98 },
	},

	backdrops = {
		root = {
			bgFile = "Interface\\Buttons\\white8x8",
			edgeFile = "Interface\\Buttons\\white8x8",
			tile = true, tileSize = 16, edgeSize = 1,
			insets = { left = 1, right = 1, top = 1, bottom = 1 },
		},
		content = {
			bgFile = "Interface\\Buttons\\white8x8",
			edgeFile = "Interface\\Buttons\\white8x8",
			tile = true, tileSize = 16, edgeSize = 1,
			insets = { left = 1, right = 1, top = 1, bottom = 1 },
		},
		button = {
			bgFile = "Interface\\Buttons\\white8x8",
			edgeFile = "Interface\\Buttons\\white8x8",
			tile = true, tileSize = 16, edgeSize = 1,
			insets = { left = 1, right = 1, top = 1, bottom = 1 },
		},
	},
})
