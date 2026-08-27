local me = ZygorGuidesViewer
if not me then return end

local L = me.L
local LM = me.LM
local LI = me.LI
local LC = me.LC
local LQ = me.LQ
local LS = me.LS
local DL = me.DL

local function GetClassTagFromID(classID)
	if not classID then return nil end
	if me.NumberToClass and me.NumberToClass[classID] then
		return me.NumberToClass[classID]
	end
	if me.ClassToNumber then
		for tag, id in pairs(me.ClassToNumber) do
			if id == classID then
				return tag
			end
		end
	end
	return nil
end

function me:Options_RegisterDefaults()
	self.db:RegisterDefaults({
		char = {
			starting = true,
			section = 1,
			step = 1,
			completedQuests = {},
			permaCompletedDailies = {},
			completedDailies = {},
			debuglog = {},

			maint_startguides = true,
			maint_queryquests = true,

			guides_history = {},
			guide_progress = {},
			guidebrowser_featured_snooze = {},

			RecipesKnown = {},
			RecipesKnownDetails = {},
			gear_pre_talent_override_build = nil,
			gear_pre_talent_override_explicit = nil,
			gear_active_build_override_by_group = {},
			gear_active_build_override_enabled = nil,
			gear_active_build_override_build = nil,
		},
		global = {
			storedguides = { },
			instantDailies = {},
		},
		profile = {
			debug = false,
			--autosizemini = true,
			--minimode = false,
			visible = true,

			skipimpossible = false,

			showmapbutton = true,
			mapbuttonangle = 225,
			hideincombat = false,

			-- convenience
			autoaccept = false,
			autoturnin = false,
			autoquestreward = false,
			fixblizzardautoaccept = false,
			analyzereps = false,
			mute_chat = false,
			colorblindmode = "off",


			skin = "remaster",
			remastercolor = "dark",
			skincolors={text={0.90,0.92,0.98},back={0.08,0.09,0.12}},
			showallsteps = false,
			windowlocked = false,
			hideborder = false,
			hidestepborders = false,
			showcountsteps = 1,
			framescale = 1.0,
			fontsize = 11,
			fontsecsize = 9,
			disablerouteloopstacking = false,
			routeantminimapmode = "local",
			routeantdensity = 100,

			--backcolor = {r=0.18,g=0.05,b=0.23,a=0.56},
			backopacity = 0.3,
			opacitymain = 1.0,

			stepbackalpha = 0.5,
			goalicons = true,
			goalbackgrounds = true,
			goalcolorize = false,
			showguideprogressbar = true,
			goalbackincomplete = {r=0.6,g=0.0,b=0.0,a=0.7},
			goalbackprogressing= {r=0.6,g=0.7,b=0.0,a=0.7},
			goalbackcomplete   = {r=0.2,g=0.7,b=0.0,a=0.7},
			goalbackimpossible = {r=0.3,g=0.3,b=0.3,a=0.7},
			goalbackprogress = true,
			
			goalupdateflash = true,
			goalcompletionflash = true,
			flashborder = true,

			tooltipsbelow = true,
			actionbuttonbar_enabled = true,
			inlinebuttons_enabled = true,
			actionbuttonbar_onlywhenneeded = true,
			actionbuttonbar_locked = false,
			actionbuttonbar_scale = 1,
			actionbuttonbar_size = 30,
			actionbuttonbar_spacing = 3,
			actionbuttonbar_pinside = "top",
			actionbutton_enablemarkers = true,
			actionbuttonbar_anchor = { point = "CENTER", relPoint = "CENTER", x = 0, y = -180 },
			targetpreview_enabled = true,
			targetpreview_onlywhenneeded = true,
			targetpreview_locked = false,
			targetpreview_scale = 1,
			targetpreview_width = 190,
			targetpreview_height = 255,
			targetpreview_pinside = "right",
			targetpreview_growth = "auto",
			targetpreview_mode = "hybrid",
			targetpreview_anchor = { snapped = true, custom = true },

			trackchains = true,

			skipimpossible = false,
			skipauxsteps = true,
			goalbackaux        = {r=0.0,g=0.5,b=0.8,a=0.5},
			showobsolete = true,
			goalbackobsolete   = {r=0.0,g=0.5,b=0.8,a=0.5},
			skipobsolete = true,
			levelsahead = 0,

			hidearrowwithguide = true,
			iconAlpha = 1,
			iconScale = .5,
			minicons = true,
			filternotes = true,
			minimapnotedesc = true,

			stepnumbers = true,

			guidesinhistory = 5,
			guidebrowserpath = "",
			guidebrowsersearch = "",
			guidebrowseroptionsapp = "ZygorGuidesViewer",
			guidebrowserselectedguide = nil,
			guidebrowserfolderpage = 1,
			guidebrowserguidepage = 1,
			guidebrowsertreepage = 1,
			guidebrowsertreeexpanded = {},
			guidebrowserhomeall = false,
			guidebrowser_featured_enablefallback = true,
			guidebrowser_featured_hiderecentcompleted = true,
			guidebrowser_featured_showconfidence = true,
			guidebrowser_featured_hidden = {},

			waypointaddon = "internal",

			golddetectiondist = 400,
			goldreqmode = 3, -- current
			golddistmode = 1, -- in range

			arrowmeters = false,
			arrowshow = true,
			arrowfreeze = false,
			--arrowcam = false,
			arrowcolordir = true,
			arrowcolormode = "direction",
			arrowcolorcustom_far = {r=1.0,g=0.0,b=0.0},
			arrowcolorcustom_mid = {r=0.8,g=0.7,b=0.0},
			arrowcolorcustom_near = {r=0.0,g=1.0,b=0.0},
			arrowoutline = false,
			arrowoutlinemode = "default",
			arrow_refresh_rate = 20,
			arrow_text_refresh_rate = 1.0,
			arrowpulse = true,
			simplifyarrownouncolors = false,
			remasterpointeronlegacy = false,
			arrowscale = 1.0,
			arrowfontsize = 10,
			minimapzoom = false,
			foglight = true,
			pointeraudio = true,

			arrowposx=500,
			arrowposy=400,
			anchor_arrow=nil,

			fullheight = 400,

			completesound = "MapPing",
			flipsounds = true,

			--colorborder = true,

			-- LibRover pathfinding
			pathfinding = true,
			travel_use_librover = true,
			pathfinding_speed = 1,
			pathfinding_comfort = 0,
			pathfinding_preferfly = true,
			travelusehs = true,
			traveluseghs = false,
			travelusedhs = false,
			traveluseitems = true,
			travelusewhistle = false,
			travelusespells = true,
			force_travel_cache = false,
			travel_do_full_linking_at_startup = false,

			-- hidden
			displaymode = "guide",

			-- ItemScore & Gear Finder
			autogear = true,
			autogearauto = false,
			autogear_keepheirlooms = true,
			gear_currency_rewards = true,
			gear_crafted_items = true,
			gear_crafted_my_professions = false,
			gear_crafted_leveling_items = true,
			gear_crafted_pvp_items = true,
			gear_tier_progression_mode = false,
			itemscore_tooltips = true,
			itemscore_tooltips_allbuilds = false,
			itemscore_tooltip_value_mode = "comparison",
			itemscore_tooltip_normalize_score = false,
			itemscore_score_sockets = true,
			masterloot_notices = true,
			masterloot_compare = true,
			questitemcache = {},

			-- Gold Guide tooltips
			gold_tooltips_show = true,
			gold_tooltips_ah = 2,
			gold_tooltips_out = 1,
			gold_tooltips_shift = true,
			gold_tooltips_guide = 2,

			-- Auto-sell grey items & auto-repair
			autosellgrey = true,
			autorepair = 2, -- 1=off, 2=own gold, 3=guild then own, 4=own then guild

		}
	})
end

function me:Options_DefineOptions()
	local settings_title = "|cffffff88Z|cffffee66y|cffffdd44g|cffffcc22o|cffffbb00r|r |cffffaa00Guides Viewer Remastered|r"
	local Getter_Simple = function(info)
		return self.db.profile[info[#info]]
	end
	local Setter_Simple = function(info,value)
		self.db.profile[info[#info]] = value
	end
	local function CloneOptionNode(node, seen)
		if type(node) ~= "table" then return node end
		seen = seen or {}
		if seen[node] then return seen[node] end
		local out = {}
		seen[node] = out
		for k,v in pairs(node) do
			out[k] = CloneOptionNode(v, seen)
		end
		return out
	end
	local function BuildSplitOptionsArgs(sourceArgs, keys, descText)
		local args = {}
		args.desc = {
			order = 1,
			type = "description",
			name = descText or "",
		}
		local order = 2
		for _,key in ipairs(keys or {}) do
			local node = sourceArgs and sourceArgs[key]
			if node then
				local cloned = CloneOptionNode(node)
				if type(cloned) == "table" and cloned.order == nil then
					cloned.order = order
				end
				args[key] = cloned
				order = order + 1
			end
		end
		return args
	end
	local ResetArrowPosition = function()
		if self.Pointer and self.Pointer.ResetArrowAnchorToDefault then
			self.Pointer:ResetArrowAnchorToDefault()
		else
			-- Fallback when pointer frame is not initialized yet.
			local x = UIParent:GetWidth() * 0.5
			local y = UIParent:GetHeight() * 0.70
			self.db.profile.arrowposx = x
			self.db.profile.arrowposy = y
			self.db.profile.anchor_arrow = { point="CENTER", relPoint="BOTTOMLEFT", x=x, y=y }
		end
	end
	self.options = {
		type='group',
		name = settings_title,
		desc = L["desc"],
		handler = self,
		get = Getter_Simple,
		set = Setter_Simple,
		args = {
			desc = {
				order = 1,
				type = "description",
				name = L["desc"]:format(self.version),
				order = 1,
			},
			desc = {
				order = 1,
				type = "header",
				name = L["opt_guide"]:format(self.version),
				order = 1,
			},
			guidepath = {
				order = 2.2,
				type = "description",
				name = function()
					local title = ZGV.CurrentGuideName or "No guide selected"
					return ("Current Guide: |cffffff88%s|r"):format(title)
				end,
				width = "full",
			},
			guidenote = {
				order = 2.25,
				type = "description",
				name = "The legacy guide dropdown was removed from Options because it does not scale well with the full guide library. Use Guide Browser to browse and switch guides.",
				width = "double",
			},
			openguidebrowser = {
				order = 2.3,
				type = "execute",
				name = "Open Guide Browser",
				func = function()
					local ACD = LibStub and LibStub("AceConfigDialog-3.0", true)
					if ACD and ACD.OpenFrames then
						ACD:Close("ZygorGuidesViewer")
					end
					self:ScheduleTimer(function()
						if self.SelectGuideManagerSection then
							self:SelectGuideManagerSection("home")
							local frame = _G["ZGVGuideManagerFrame"]
							if frame and not frame:IsShown() then
								frame:Show()
							end
						elseif self.OpenGuideBrowser then
							self:OpenGuideBrowser()
						elseif self.OpenGuideMenu then
							self:OpenGuideMenu()
						end
					end, 0)
				end,
				width = "normal",
			},
			steps = {
				order=3.1,
				type = "description",
				name = function() if not ZGV.CurrentGuide then return "" end  return L["opt_guide_steps"]:format(#(ZGV.CurrentGuide.steps or {})) end,
			},
			author = {
				order=3.2,
				type = "description",
				name = function() if not ZGV.CurrentGuide or not ZGV.CurrentGuide.author then return "" end  return L["opt_guide_author"]:format(ZGV.CurrentGuide.author) end,
			},
			next = {
				order=3.3,
				type = "description",
				name = function() if not ZGV.CurrentGuide or not ZGV.CurrentGuide.next then return "" end  return L["opt_guide_next"]:format(ZGV.CurrentGuide.next) end,
			},
			show = {
				name = L["opt_visible"],
				desc = L["opt_visible_desc"],
				type = 'toggle',
				get = "IsVisible",
				set = "SetVisible",
				width = "full",
				order = 3.4,
			},
			debug = {
				hidden = true,
				name = L["opt_debug"],
				desc = L["opt_debug_desc"],
				type = 'toggle',
				get = function() return self.db.profile.debug end,
				set = function() self.db.profile.debug = not self.db.profile.debug  ZGV:Print("Debugging: "..(self.db.profile.debug and "|cff00ff88ON|r" or "|cffff0055OFF|r")) end,
				order=-10,
			},
		}
	}

	self.optionsdisplay = {
		type='group',
		name = L["opt_group_display"],
		desc = L["opt_group_display_desc"],
		handler = self,
		get = Getter_Simple,
		set = Setter_Simple,
		args = {
			desc = {
				order = 1,
				type = "description",
				name = L["opt_group_display_desc"],
				order = 1,
			},
			hideincombat = {
				name = L["opt_hideincombat"],
				desc = L["opt_hideincombat_desc"],
				type = 'toggle',
				width = "full",
				order = 2.5,
				get = Getter_Simple,
				set = Setter_Simple,
			},
			showmapbutton = {
				name = L["opt_mapbutton"],
				desc = L["opt_mapbutton_desc"],
				type = 'toggle',
				get = Getter_Simple,
				set = function(i,v) Setter_Simple(i,v)  self:UpdateMapButton()  end,
				width = "full",
				order = 2.7,
			},
			guidesinhistory = {
				name = L["opt_guidesinhistory"],
				desc = L["opt_guidesinhistory_desc"],
				type = 'range',
				min = 3,
				max = 15,
				set = function(i,v) Setter_Simple(i,v)  while (#self.db.char.guides_history>v) do tremove(self.db.char.guides_history) end   end,
				step = 1,
				bigStep = 1,
				order=2.8
			},
			featured = {
				name = L["opt_featured_header"],
				type = "group",
				inline = true,
				order = 2.85,
				args = {
					guidebrowser_featured_enablefallback = {
						name = L["opt_featured_enablefallback"],
						desc = L["opt_featured_enablefallback_desc"],
						type = "toggle",
						order = 1,
						get = Getter_Simple,
						set = Setter_Simple,
					},
					guidebrowser_featured_hiderecentcompleted = {
						name = L["opt_featured_hiderecentcompleted"],
						desc = L["opt_featured_hiderecentcompleted_desc"],
						type = "toggle",
						order = 2,
						get = Getter_Simple,
						set = Setter_Simple,
					},
					guidebrowser_featured_showconfidence = {
						name = L["opt_featured_showconfidence"],
						desc = L["opt_featured_showconfidence_desc"],
						type = "toggle",
						order = 3,
						get = Getter_Simple,
						set = Setter_Simple,
					},
					featured_resethidden = {
						name = L["opt_featured_resethidden"],
						desc = L["opt_featured_resethidden_desc"],
						type = "execute",
						order = 4,
						func = function()
							self.db.profile.guidebrowser_featured_hidden = {}
							self.db.char.guidebrowser_featured_snooze = {}
							self._featuredSessionHide = {}
						end,
					},
				},
			},
			window = {
				name = L["opt_group_window"],
				type = "group",
				inline = true,
				order = 3,
				args = {
					--[[
					collapsedmode = {
						name = L["opt_showallsteps"],
						desc = L["opt_showallsteps_desc"],
						type = 'toggle',
						get = function() return not self.db.profile['showallsteps'] end,
						set = function()
							self.db.profile['showallsteps'] = not self.db.profile['showallsteps']
							if self.db.profile['showallsteps'] then ZygorGuidesViewerFrame:SetHeight(self.db.profile.fullheight) end
							self:UpdateFrame(true)
							self:AlignFrame()
							self:UpdateLocking()
							self:ScrollToCurrentStep()
						      end,
						order=1,
					},
					showcountsteps = {
						name = L["opt_showcountsteps"],
						desc = L["opt_showcountsteps_desc"],
						type = 'range',
						get = function()  return self.db.profile.showcountsteps or 1  end,
						set = function(_,n)  self.db.profile.showcountsteps = n  self:UpdateFrame(true)  end,
						min = 1,
						max = 5,
						step = 1,
						bigStep = 1,
						order=2,
					},
					--]]
					showcountsteps = {
						name = L["opt_showcountsteps"],
						desc = L["opt_showcountsteps_desc"],
						type = "select",
						values = {
							[0]=L["opt_showcountsteps_all"],
							"1","2","3","4","5"
						},
						get = function()  return self.db.profile.showallsteps and 0 or self.db.profile.showcountsteps  end,
						set = function(_,n)
							if n==0 then
								self.db.profile.showallsteps = true
								local targetHeight = self.db.profile.fullheight or 0
								if targetHeight <= 0 and ZygorGuidesViewerFrame and ZygorGuidesViewerFrame.GetHeight then
									local h = ZygorGuidesViewerFrame:GetHeight() or 0
									if h > 0 then
										self.db.profile.fullheight = math.max(self.db.profile.fullheight or 0, h)
										targetHeight = self.db.profile.fullheight
									end
								end
								if targetHeight > 0 then ZygorGuidesViewerFrame:SetHeight(targetHeight) end
							else
								self.db.profile.showallsteps=false
								self.db.profile.showcountsteps=n
							end
							local frame = ZygorGuidesViewerFrame
							local handler = frame and frame.GetScript and frame:GetScript("OnSizeChanged")
							if self:IsRemasterSkin() and frame and handler then
								self.forceRemasterRelayout = true
								handler(frame)
							else
								self:UpdateFrame(true)
								self:AlignFrame()
								self:UpdateLocking()
								self:ScrollToCurrentStep()
								if not self.db.profile.showallsteps then
									if ZygorGuidesViewerFrameScrollScrollBar then
										ZygorGuidesViewerFrameScrollScrollBar:SetValue(0)
									end
									self:ResizeFrame()
								end
							end
						      end,
						order=1,
					},
					skin = {
						name = L["opt_skin"],
						desc = L["opt_skin_desc"],
						type = "select",
						values = function()
								return self:BuildSkinDropdownValues()
							end,
						get = function()
							return self:GetSkinDropdownKey()
						end,
						set = function(_, n)
							self:ApplySkinFromDropdownKey(n)
							self:UpdateSkin(false)
							self:AlignFrame()
							self:ResizeFrame()
							self:UpdateFrame(true)
							self:ScrollToCurrentStep()
							if self.ScheduleTimer then
								self:ScheduleTimer(function()
									if not ZGV then return end
									ZGV:AlignFrame()
									ZGV:ResizeFrame()
									ZGV:UpdateFrame(true)
									if ZGV.ScrollToCurrentStep then ZGV:ScrollToCurrentStep() end
								end, 0)
							end
							self:UpdateLocking()
						end,
						order=1.1,
						width="normal",
					},
					sep_window_row1 = {
						type = "description",
						name = "",
						order = 1.2,
						width = "full",
					},
					opacitymain = {
						name = L["opt_opacitymain"],
						desc = L["opt_opacitymain_desc"],
						type = 'range',
						set = function(i,v)
							Setter_Simple(i,v)
							if self.db and self.db.profile and self:IsRemasterSkin() then
								self:UpdateSkin(true)
								if self.ActionButtons_ApplyProfile then self:ActionButtons_ApplyProfile() end
								if self.TargetPreview_ApplyProfile then self:TargetPreview_ApplyProfile() end
							else
								self:AlignFrame()
							end
						end,
						min = 0,
						max = 1.0,
						isPercent = true,
						step = 0.01,
						bigStep = 0.1,
						--stepBasis = 0,
						order=2,
						width="normal",
					},
					--[[
					backcolor = {
						name = L["opt_backcolor"],
						desc = L["opt_backcolor_desc"],
						type = 'color',
						hasAlpha = true,
						get = function()  return self.db.profile.backcolor.r,self.db.profile.backcolor.g,self.db.profile.backcolor.b,self.db.profile.backcolor.a  end,
						set = function(_,r,g,b,a)  self.db.profile.backcolor = {['r']=r,['g']=g,['b']=b,['a']=a}  self:UpdateSkin()  end,
						order = 2.2,
					},
					--]]
					backopacity = {
						name = L["opt_backopacity"],
						desc = L["opt_backopacity_desc"],
						type = 'range',
						set = function(i,v)
							Setter_Simple(i,v)
							self:UpdateSkin(self.db and self.db.profile and self:IsRemasterSkin())
							if self.ActionButtons_ApplyProfile then
								self:ActionButtons_ApplyProfile()
							end
							if self.TargetPreview_ApplyProfile then
								self:TargetPreview_ApplyProfile()
							end
						end,
						min=0.0,
						max=1.0,
						isPercent = true,
						step = 0.01,
						bigStep = 0.1,
						order = 2.1,
						width = "normal",
					},
					hideborder = {
						name = L["opt_hideborder"],
						desc = L["opt_hideborder_desc"],
						type = 'toggle',
						set = function(i,v)
							self.db.profile.hideborder = v
							--[[
							if not self.db.profile.hideborder and ZygorGuidesViewerFrame_Border:GetAlpha()<0.5 then
								UIFrameFadeIn(ZygorGuidesViewerFrame_Border,0.3,0.0,ZGV.db.profile.opacitymain)
								UIFrameFadeIn(ZygorGuidesViewerFrame_Skipper,0.3,0.0,ZGV.db.profile.opacitymain)
							end
							--]]
							ZGV.borderfadedout = nil
							if self.RefreshAutoHideBorderState then
								self:RefreshAutoHideBorderState()
							end
							if not v then
								-- Force immediate visibility restore when disabling auto-hide.
								if ZygorGuidesViewerFrame_Border then
									ZygorGuidesViewerFrame_Border:Show()
									ZygorGuidesViewerFrame_Border:SetAlpha(ZGV.db.profile.opacitymain or 1.0)
								end
								if ZygorGuidesViewerFrame_Skipper and ZygorGuidesViewerFrame_Skipper.mustbevisible then
									ZygorGuidesViewerFrame_Skipper:Show()
									ZygorGuidesViewerFrame_Skipper:SetAlpha(ZGV.db.profile.opacitymain or 1.0)
								end
							end
						      end,
						order=2.2,
						width="normal",
					},
					sep_window_row2 = {
						type = "description",
						name = "",
						order = 2.3,
						width = "full",
					},
					framescale = {
						name = L["opt_framescale"],
						desc = L["opt_framescale_desc"],
						type = 'range',
						set = function(i,v) Setter_Simple(i,v) 	self.Frame:SetScale(ZGV.db.profile.framescale)  end,
						min = 0.5,
						max = 2.0,
						step = 0.1,
						bigStep = 0.1,
						order=3,
						isPercent = true,
						width = "normal",
					},
					fontsize = {
						name = L["opt_fontsize"],
						desc = L["opt_fontsize_desc"],
						type = 'range',
						set = function(i,v) Setter_Simple(i,v)  self:AlignFrame()  self:UpdateFrame()  end,
						min = 7,
						max = 16,
						step = 1,
						bigStep = 1,
						order=3.1,
						width="normal",
					},
					fontsecsize = {
						name = L["opt_fontsecsize"],
						desc = L["opt_fontsecsize_desc"],
						type = 'range',
						set = function(i,v) Setter_Simple(i,v)  self:AlignFrame()  self:UpdateFrame()  end,
						min = 5,
						max = 14,
						step = 1,
						bigStep = 1,
						order=3.2,
						width="normal",
					},
					sep_window_row3 = {
						type = "description",
						name = "",
						order = 3.3,
						width = "full",
					},
					windowlocked = {
						name = L['opt_windowlocked'],
						desc = L['opt_windowlocked_desc'],
						type = 'toggle',
						set = function(i,v) Setter_Simple(i,v)  self:UpdateLocking()  end,
						order=4,
					},
					resizeup = {
						name = L["opt_miniresizeup"],
						desc = L["opt_miniresizeup_desc"],
						type = 'toggle',
						set = function(i,v)
							self:SetResizeUp(v)
						      end,
						order=4.1,
					},
				}
			},
			step = {
				name = L["opt_group_step"],
				type = "group",
				inline = true,
				order = 4,
				args = {
					stepnumbers = {
						name = L["opt_stepnumber"],
						desc = L["opt_stepnumber_desc"],
						type = 'toggle',
						set = function(i,v) Setter_Simple(i,v)  self:UpdateFrame()  end,
						order = 1,
					},
					goalicons = {
						name = L["opt_goalicons"],
						desc = L["opt_goalicons_desc"],
						type = 'toggle',
						set = function(i,v)
							Setter_Simple(i,v)
							self:UpdateFrame()
							if self.ActionButtons_ApplyProfile then self:ActionButtons_ApplyProfile() end
						end,
						order = 1,
					},
					tooltipsbelow = {
						name = L["opt_tooltipsbelow"],
						desc = L["opt_tooltipsbelow_desc"],
						type = 'toggle',
						set = function(i,v) Setter_Simple(i,v)  self:UpdateFrame()  end,
						width = "double",
						order = 1.5,
					},
					disablerouteloopstacking = {
						name = L["opt_disablerouteloopstacking"],
						desc = L["opt_disablerouteloopstacking_desc"],
						type = 'toggle',
						set = function(i,v) Setter_Simple(i,v)  self:UpdateFrame()  end,
						width = "double",
						order = 1.6,
					},
					goalcolorize = {
						name = L["opt_goalcolorize"],
						desc = L["opt_goalcolorize_desc"],
						type = 'toggle',
						set = function(i,v) Setter_Simple(i,v)  self:UpdateFrame()  end,
						order = 2,
						width = "double",
					},

					hidestepborders = {
						name = L["opt_hidestepborders"],
						desc = L["opt_hidestepborders_desc"],
						type = 'toggle',
						set = function(i,v) Setter_Simple(i,v)  self:UpdateFrame()  end,
						order = 2.1,
						width = "double",
					},
					stepbackalpha = {
						name = L["opt_stepbackopacity"],
						desc = L["opt_stepbackopacity_desc"],
						type = 'range',
						set = function(i,v) Setter_Simple(i,v)  self:UpdateFrame()  end,
						min=0.0,
						max=1.0,
						isPercent = true,
						step = 0.1,
						bigStep = 0.1,
						order = 2.2,
						width = "double",
					},

					desc1 = { type="header", name=L["opt_goalbackcolor_desc"], order=10.1 },
					goalbackgrounds = {
						name = L["opt_goalbackgrounds"],
						desc = L["opt_goalbackgrounds_desc"],
						type = 'toggle',
						set = function(i,v) Setter_Simple(i,v)  self:UpdateFrame()  end,
						order = 10.11,
						width="full",
					},
					goalbackincomplete = {
						name = L["opt_goalbackincomplete"],
						desc = L["opt_goalbackincomplete_desc"],
						type = 'color',
						hidden = function()  return not self.db.profile.goalbackgrounds  end,
						get = function()  return self.db.profile.goalbackincomplete.r,self.db.profile.goalbackincomplete.g,self.db.profile.goalbackincomplete.b,self.db.profile.goalbackincomplete.a  end,
						set = function(_,r,g,b,a)  self.db.profile.goalbackincomplete = {r=r,g=g,b=b,a=a}  self:UpdateFrame()  end,
						order = 10.2,
						hasAlpha = true,
					},
					goalbackprogressing = {
						name = L["opt_goalbackprogressing"],
						desc = L["opt_goalbackprogressing_desc"],
						type = 'color',
						hidden = function()  return not self.db.profile.goalbackgrounds  end,
						get = function()  return self.db.profile.goalbackprogressing.r,self.db.profile.goalbackprogressing.g,self.db.profile.goalbackprogressing.b,self.db.profile.goalbackprogressing.a  end,
						set = function(_,r,g,b,a)  self.db.profile.goalbackprogressing = {r=r,g=g,b=b,a=a}  self:UpdateFrame()  end,
						order = 10.2,
						hasAlpha = true,
					},
					goalbackcomplete = {
						name = L["opt_goalbackcomplete"],
						desc = L["opt_goalbackcomplete_desc"],
						type = 'color',
						hidden = function()  return not self.db.profile.goalbackgrounds  end,
						get = function()  return self.db.profile.goalbackcomplete.r,self.db.profile.goalbackcomplete.g,self.db.profile.goalbackcomplete.b,self.db.profile.goalbackcomplete.a  end,
						set = function(_,r,g,b,a)  self.db.profile.goalbackcomplete = {r=r,g=g,b=b,a=a}  self:UpdateFrame()  end,
						order = 10.3,
						hasAlpha = true,
					},
					goalbackimpossible = {
						name = L["opt_goalbackimpossible"],
						desc = L["opt_goalbackimpossible_desc"],
						type = 'color',
						hidden = function()  return not self.db.profile.goalbackgrounds  end,
						get = function()  return self.db.profile.goalbackimpossible.r,self.db.profile.goalbackimpossible.g,self.db.profile.goalbackimpossible.b,self.db.profile.goalbackimpossible.a  end,
						set = function(_,r,g,b,a)  self.db.profile.goalbackimpossible = {['r']=r,['g']=g,['b']=b,['a']=a}  self:UpdateFrame()  end,
						order = 10.4,
						hasAlpha = true,
					},
					sep2 = { type="description", name="", order=10.41 },

					goalbackprogress = {
						name = L["opt_goalbackprogress"],
						desc = L["opt_goalbackprogress_desc"],
						type = 'toggle',
						hidden = function()  return not self.db.profile.goalbackgrounds  end,
						get = function()  return self.db.profile.goalbackprogress  end,
						set = function()  self.db.profile.goalbackprogress = not self.db.profile.goalbackprogress  self:UpdateFrame()  end,
						order = 10.9,
						width="double",
					},

					desc2 = { type="header", name=L["opt_flash_desc"], order=13.0 },

					goalupdateflash = {
						name = L["opt_goalupdateflash"],
						desc = L["opt_goalupdateflash_desc"],
						type = 'toggle',
						hidden = function()  return not self.db.profile.goalbackgrounds  end,
						width = "full",
						order = 13.1,
					},
					goalcompletionflash = {
						name = L["opt_goalcompletionflash"],
						desc = L["opt_goalcompletionflash_desc"],
						type = 'toggle',
						hidden = function()  return not self.db.profile.goalbackgrounds  end,
						disabled = function()  return self.db.profile.goalupdateflash end,
						get = function()  return self.db.profile.goalcompletionflash or self.db.profile.goalupdateflash  end,
						width = "full",
						order = 13.2,
					},
					flashborder = {
						name = L["opt_flashborder"],
						desc = L["opt_flashborder_desc"],
						type = 'toggle',
						set = function(i,v) Setter_Simple(i,v) if (v) then self.delayFlash=1 end end, 
						width = "full",
						order = 13.3,
					},

					--[[
					colorborder = {
						name = L["opt_colorborder"],
						desc = L["opt_colorborder_desc"],
						type = 'toggle',
						get = "IsColorBorder",
						set = "ToggleColorBorder",
						order = 14.1,
						width="double",
					},
					--]]
				},
			},

			resetwindow = {
				name = L["opt_resetwindow"],
				desc = L["opt_resetwindow_desc"],
				type = 'execute',
				func = function() self.Frame:ClearAllPoints() self.Frame:SetPoint("CENTER") end,
				order = 99,
			},
			--[[
			-- no longer an option
			trackchains = {
				name = L["opt_trackchains"],
				desc = L["opt_trackchains_desc"],
				type = 'toggle',
				width = "full",
				order = 101,
			},
			--]]

			--[[
			mapicons = {
				name = "Show map icons",
				desc = "Show icons on the world map",
				type = 'toggle',
				set = "ToggleShowingMapIcons",
				get = "IsShowingMapIcons",
				order = 1,
			},
			toggle = {
				name = Cartographer.L["Enabled"],
				desc = Cartographer.L["Suspend/resume this module."],
				type  = 'toggle',
				order = -1,
				get   = function() return Cartographer:IsModuleActive(self) end,
				set   = function() Cartographer:ToggleModuleActive(self) end,
			}	
			]]--
		},
	}

	self.optionsprogress = {
		name = L["opt_group_progress"],
		desc = L["opt_group_progress_desc"],
		type = 'group',
		order = 3,
		--hidden = true,
		handler = self,
		get = Getter_Simple,
		set = Setter_Simple,
		args = {
			desc = {
				order = 1,
				type = "description",
				name = L['opt_group_progress_desc'],
			},
			skipimpossible = {
				name = L["opt_skipimpossible"],
				desc = L["opt_skipimpossible_desc"],
				type = 'toggle',
				set = function(i,v) Setter_Simple(i,v)  self:UpdateFrame()  end,
				width = "full",
				order = 3.4,
			},
			skipauxsteps = {
				name = L["opt_skipauxsteps"],
				desc = L["opt_skipauxsteps_desc"],
				type = 'toggle',
				set = function(i,v) Setter_Simple(i,v)  self:UpdateFrame()  end,
				width = "full",
				order = 3.5,
			},
			showobsolete = {
				name = L["opt_showobsolete"],
				desc = L["opt_showobsolete_desc"],
				type = 'toggle',
				set = function(i,v) Setter_Simple(i,v)  if not v then self.db.profile.skipobsolete=nil end  self:UpdateFrame()  end,
				width = "full",
				order = 3.6,
			},
			skipobsolete = {
				name = L["opt_skipobsolete"],
				desc = L["opt_skipobsolete_desc"],
				type = 'toggle',
				set = function(i,v) Setter_Simple(i,v)  self:UpdateFrame()  end,
				get = function()  return self.db.profile.skipobsolete and self.db.profile.showobsolete end,
				disabled = function()  return not self.db.profile.showobsolete end,
				width = "full",
				order = 3.7,
			},
			levelsahead = {
				name = L['opt_levelsahead'],
				desc = L['opt_levelsahead_desc'],
				type = 'range',
				min = 0,
				max = 80,
				step = 1,
				bigStep = 1,
				width="single",
				order = 10
			},

			desc1 = { type="header", name=L["opt_progressbackcolor_desc"], order=11 },
			goalbackaux = {
				name = L["opt_goalbackaux"],
				desc = L["opt_goalbackaux_desc"],
				type = 'color',
				hidden = function()  return not self.db.profile.goalbackgrounds  end,
				get = function()  return self.db.profile.goalbackaux.r,self.db.profile.goalbackaux.g,self.db.profile.goalbackaux.b,self.db.profile.goalbackaux.a  end,
				set = function(_,r,g,b,a)  self.db.profile.goalbackaux = {['r']=r,['g']=g,['b']=b,['a']=a}  self:UpdateFrame()  end,
				order = 12.1,
				hasAlpha = true,
			},
			goalbackobsolete = {
				name = L["opt_goalbackobsolete"],
				desc = L["opt_goalbackobsolete_desc"],
				type = 'color',
				hidden = function()  return not self.db.profile.goalbackgrounds  end,
				get = function()  return self.db.profile.goalbackobsolete.r,self.db.profile.goalbackobsolete.g,self.db.profile.goalbackobsolete.b,self.db.profile.goalbackobsolete.a  end,
				set = function(_,r,g,b,a)  self.db.profile.goalbackobsolete = {['r']=r,['g']=g,['b']=b,['a']=a}  self:UpdateFrame()  end,
				order = 12.2,
				hasAlpha = true,
			},
			desc2 = { type="description", name="", order=13 },
			desc3 = {
				type = "description",
				name = L['opt_group_progress_bottomdesc'],
				order = 99,
			},
		}
	}
			
	self.optionsconv = {
		name = L["opt_group_convenience"],
		desc = L["opt_group_convenience_desc"],
		type = 'group',
		order = 3.5,
		--hidden = true,
		handler = self,
		get = Getter_Simple,
		set = Setter_Simple,
		args = {
			desc = {
				order = 1,
				type = "description",
				name = L['opt_group_convenience_desc'],
			},
			autoaccept = {
				name = L["opt_autoaccept"],
				desc = L["opt_autoaccept_desc"],
				type = 'toggle',
				set = function(i,v) Setter_Simple(i,v)  end,
				width = "full",
				order = 3.4,
			},
			autoturnin = {
				name = L["opt_autoturnin"],
				desc = L["opt_autoturnin_desc"],
				type = 'toggle',
				set = function(i,v) Setter_Simple(i,v)  end,
				width = "full",
				order = 3.5,
			},
			autoquestreward = {
				name = L["opt_autoquestreward"],
				desc = L["opt_autoquestreward_desc"],
				type = 'toggle',
				set = function(i,v) Setter_Simple(i,v) end,
				width = "full",
				order = 3.55,
			},
			fixblizzardautoaccept = {
				name = L["opt_fixblizzardautoaccept"],
				desc = L["opt_fixblizzardautoaccept_desc"],
				type = 'toggle',
				set = function(i,v) Setter_Simple(i,v)  end,
				width = "full",
				order = 3.6,
			},
			analyzereps = {
				name = L["opt_analyzereps"],
				desc = L["opt_analyzereps_desc"],
				type = 'toggle',
				set = function(i,v) Setter_Simple(i,v)  end,
				width = "full",
				order = 3.7,
			},
			mute_chat = {
				name = L["opt_mute_chat"],
				desc = L["opt_mute_chat_desc"],
				type = 'toggle',
				set = function(i,v) Setter_Simple(i,v)  end,
				width = "full",
				order = 3.8,
			},
			gold_tooltips = {
				name = L["opt_gold_tooltips_header"],
				type = "group",
				inline = true,
				order = 3.9,
				args = {
					gold_tooltips_show = {
						name = L["opt_gold_tooltips_show"],
						desc = L["opt_gold_tooltips_show_desc"],
						type = 'toggle',
						get = Getter_Simple,
						set = Setter_Simple,
						width = "full",
						order = 1,
					},
					gold_tooltips_out = {
						name = L["opt_gold_tooltips_out"],
						desc = L["opt_gold_tooltips_out_desc"],
						type = "select",
						values = {
							[0] = L["opt_gold_tooltips_off"],
							[1] = L["opt_gold_tooltips_basic"],
							[2] = L["opt_gold_tooltips_dynamic"],
							[3] = L["opt_gold_tooltips_full"],
						},
						get = Getter_Simple,
						set = Setter_Simple,
						disabled = function() return not self.db.profile.gold_tooltips_show end,
						order = 2,
					},
					gold_tooltips_ah = {
						name = L["opt_gold_tooltips_ah"],
						desc = L["opt_gold_tooltips_ah_desc"],
						type = "select",
						values = {
							[0] = L["opt_gold_tooltips_off"],
							[1] = L["opt_gold_tooltips_basic"],
							[2] = L["opt_gold_tooltips_dynamic"],
							[3] = L["opt_gold_tooltips_full"],
						},
						get = Getter_Simple,
						set = Setter_Simple,
						disabled = function() return not self.db.profile.gold_tooltips_show end,
						order = 3,
					},
					gold_tooltips_shift = {
						name = L["opt_gold_tooltips_shift"],
						desc = L["opt_gold_tooltips_shift_desc"],
						type = "toggle",
						get = Getter_Simple,
						set = Setter_Simple,
						disabled = function() return not self.db.profile.gold_tooltips_show end,
						width = "full",
						order = 4,
					},
					gold_tooltips_guide = {
						name = L["opt_gold_tooltips_guide"],
						desc = L["opt_gold_tooltips_guide_desc"],
						type = "select",
						values = {
							[0] = L["opt_gold_tooltips_off"],
							[1] = L["opt_gold_tooltips_shift_only"],
							[2] = L["opt_gold_tooltips_always"],
						},
						get = Getter_Simple,
						set = Setter_Simple,
						order = 5,
					},
				},
			},
		}
	}

	self.optionsaccessibility = {
		name = L["gb_opt_accessibility"],
		desc = L["gb_opt_desc_accessibility"],
		type = 'group',
		order = 3.6,
		handler = self,
		get = Getter_Simple,
		set = Setter_Simple,
		args = {
			desc = {
				order = 1,
				type = "description",
				name = L["opt_accessibility_intro"],
			},
			colorblindmode = {
				name = L["opt_colorblindmode"],
				desc = L["opt_colorblindmode_desc"],
				type = "select",
				values = {
					[1] = L["opt_colorblindmode_off"],
					[2] = L["opt_colorblindmode_protanopia"],
					[3] = L["opt_colorblindmode_deuteranopia"],
					[4] = L["opt_colorblindmode_tritanopia"],
					[5] = L["opt_colorblindmode_global"],
					[6] = L["opt_colorblindmode_custom"],
				},
				width = "normal",
				get = function()
					local m = self.db.profile.colorblindmode
					if m=="protan" then return 2 end
					if m=="deutan" then return 3 end
					if m=="tritan" then return 4 end
					if m=="global" then return 5 end
					if m=="custom" then return 6 end
					return 1
				end,
				set = function(_,v)
					local map = { [1]="off",[2]="protan",[3]="deutan",[4]="tritan",[5]="global",[6]="custom" }
					self.db.profile.colorblindmode = map[v] or "off"
					self:UpdateSkin()
					self:UpdateFrame(true)
					if self.Pointer and self.Pointer.ArrowFrame then
						self.Pointer:RefreshArrowStyle()
					end
					self:SetWaypoint()
				end,
				order = 2,
			},
			customcolors_spacer = {
				type = "description",
				name = " ",
				width = "full",
				order = 2.05,
			},
			arrowcolorcustom_far = {
				name = L["opt_arrowcolor_far"],
				type = "color",
				disabled = function() return self.db.profile.colorblindmode ~= "custom" end,
				get = function()
					local c = self.db.profile.arrowcolorcustom_far or {r=1.0,g=0.0,b=0.0}
					return c.r,c.g,c.b
				end,
				set = function(_,r,g,b)
					self.db.profile.arrowcolorcustom_far = {r=r,g=g,b=b}
					ZGV:SetWaypoint()
				end,
				width = "half",
				order = 2.1,
			},
			arrowcolorcustom_mid = {
				name = L["opt_arrowcolor_mid"],
				type = "color",
				disabled = function() return self.db.profile.colorblindmode ~= "custom" end,
				get = function()
					local c = self.db.profile.arrowcolorcustom_mid or {r=0.8,g=0.7,b=0.0}
					return c.r,c.g,c.b
				end,
				set = function(_,r,g,b)
					self.db.profile.arrowcolorcustom_mid = {r=r,g=g,b=b}
					ZGV:SetWaypoint()
				end,
				width = "half",
				order = 2.2,
			},
			arrowcolorcustom_near = {
				name = L["opt_arrowcolor_near"],
				type = "color",
				disabled = function() return self.db.profile.colorblindmode ~= "custom" end,
				get = function()
					local c = self.db.profile.arrowcolorcustom_near or {r=0.0,g=1.0,b=0.0}
					return c.r,c.g,c.b
				end,
				set = function(_,r,g,b)
					self.db.profile.arrowcolorcustom_near = {r=r,g=g,b=b}
					ZGV:SetWaypoint()
				end,
				width = "half",
				order = 2.3,
			},
			simplifyarrownouncolors = {
				name = L["opt_simplifyarrownouncolors"],
				desc = L["opt_simplifyarrownouncolors_desc"],
				type = "toggle",
				width = "full",
				disabled = function()
					local m = self.db.profile.colorblindmode
					return m=="protan" or m=="deutan" or m=="tritan" or m=="global"
				end,
				set = function(i,v)
					Setter_Simple(i,v)
					ZGV:SetWaypoint()
				end,
				order = 3,
			},
		},
	}

	self.optionsabout = {
		name = L["gb_opt_about"],
		desc = L["gb_opt_desc_about"],
		type = "group",
		order = 4.8,
		handler = self,
		get = Getter_Simple,
		set = Setter_Simple,
		args = {
			desc = {
				order = 1,
				type = "description",
				name = L["opt_about_heading"],
			},
			version = {
				order = 1.1,
				type = "description",
				name = function()
					return ("Version: %s"):format(tostring(self.version or "unknown"))
				end,
				width = "full",
			},
			revision = {
				order = 1.2,
				type = "description",
				name = function()
					return ("Revision: %s"):format(tostring(self.revision or "unknown"))
				end,
				width = "full",
			},
			sep1 = {
				order = 2,
				type = "header",
				name = L["opt_about_support"],
			},
			report = {
				name = L["opt_report"],
				desc = L["opt_report_desc"],
				type = "execute",
				func = function() ZGV:BugReport() end,
				order = 2.1,
				width = "full",
			},
			diag = {
				order = 3,
				type = "description",
				name = L["opt_about_diag"],
				width = "full",
			},
		},
	}

	self.optionsmap = {
		name = L["opt_group_map"],
		desc = L["opt_group_map_desc"],
		type = 'group',
		order = 1,
		--hidden = true,
		handler = self,
		get = Getter_Simple,
		set = Setter_Simple,
		args = {
			desc = {
				order = 1,
				type = "description",
				name = L["opt_group_map_desc"],
			},
			waypoints = {
				name = L["opt_group_map_waypointing"],
				desc = L["opt_group_map_waypointing_desc"],
				type = 'select',
				values = {
					[1]=L["opt_group_addons_none"],
					[2]=L["opt_group_addons_internal"],
					[3]=L["opt_group_addons_cart2"],
					[4]=L["opt_group_addons_carbonite"],
					[5]=L["opt_group_addons_tomtom"],
					--cart3=L["opt_group_addons_cart3"],
					--metamap=L["opt_group_addons_metamap"],
				},
				get = "GetWaypointAddon",
				set = "SetWaypointAddon",
				order = 2,
			},
			hidearrowwithguide = {
				name = L["opt_group_map_hidearrowwithguide"],
				desc = L["opt_group_map_hidearrowwithguide_desc"],
				type = 'toggle',
				disabled = function() return self.db.profile.waypointaddon=="none" end,
				order = 2.1,
				width="double",
			},
			minicons = {
				name = L["opt_showminimapicons"],
				desc = L["opt_showminimapicons_desc"],
				type = 'toggle',
				get = "IsShowingMinimapIcons",
				set = "ToggleShowingMinimapIcons",
				disabled = function() return self.db.profile.waypointaddon=="none" end,
				order = 3,
				width="double",
			},
			transparency = {
				name = L["opt_iconalpha"],
				desc = L["opt_iconalpha_desc"],
				type = 'range',
				min = 0.1,
				max = 1,
				step = 0.01,
				bigStep = 0.05,
				isPercent = true,
				get = "GetIconAlpha",
				set = "SetIconAlpha",
				disabled = function() return not self:IsShowingMinimapIcons() or (self.db.profile.waypointaddon~="cart2") end,
				order = 4
			},
			scale = {
				name = L["opt_iconsize"],
				desc = L["opt_iconsize_desc"],
				type = 'range',
				min = 0.5,
				max = 2,
				step = 0.01,
				bigStep = 0.05,
				isPercent = true,
				get = "GetIconScale",
				set = "SetIconScale",
				disabled = function() return not self:IsShowingMinimapIcons() or (self.db.profile.waypointaddon~="cart2") end,
				order = 5
			},
			_internal = {
				name = L["opt_group_mapinternal"],
				type = "group",
				inline = true,
				order = 10,
				disabled = function() return self.db.profile.waypointaddon~="internal" end,
				args = {
					arrowshow = {
						name = L["opt_arrowshow"],
						desc = L["opt_arrowshow_desc"],
						type = "toggle",
						width = "full",
						order = 10.05,
						set = function(i,v)
							Setter_Simple(i,v)
							if ZGV.Pointer and ZGV.Pointer.ArrowFrame then
								if v then
									ZGV:SetWaypoint()
								else
									ZGV.Pointer:HideArrow()
								end
							end
						end,
					},
					arrowfreeze = {
						name = L["opt_arrowfreeze"],
						desc = L["opt_arrowfreeze_desc"],
						type = 'toggle',
						set = function(i,v) Setter_Simple(i,v)  self.Pointer:SetupArrowFreeze() end,
						width = "full",
						order = 10.1,
					},
					arrowmeters = {
						name = L["opt_arrowmeters"],
						desc = L["opt_arrowmeters_desc"],
						type = 'toggle',
						width = "full",
						order = 10.15,
					},
					--[[
					arrowcam = {
						name = L["opt_arrowcam"],
						desc = L["opt_arrowcam_desc"],
						type = 'toggle',
						set = function(i,v) Setter_Simple(i,v)  self.Pointer:HandleCamRegistration()  end,
						width = "full",
						order = 10.17,
					},
					--]]
					arrowcolormode = {
						name = L["opt_arrowcolordir"],
						desc = L["opt_arrowcolordir_desc"],
						type = "select",
						values = {
							[1] = L["opt_arrowcolormode_direction"],
							[2] = L["opt_arrowcolormode_distance"],
						},
						get = function()
							local mode = self.db.profile.arrowcolormode
							if mode=="distance" then return 2 end
							if mode=="direction" then return 1 end
							return self.db.profile.arrowcolordir and 1 or 2
						end,
						set = function(_,v)
							self.db.profile.arrowcolormode = (v==2) and "distance" or "direction"
							-- Keep legacy bool in sync for compatibility with any older paths.
							self.db.profile.arrowcolordir = (v~=2)
							ZGV:SetWaypoint()
						end,
						width = "normal",
						order = 11.001,
					},
					arrowscale = {
						name = L["opt_arrowscale"],
						desc = L["opt_arrowscale_desc"],
						type = 'range',
						set = function(i,v) Setter_Simple(i,v) 	ZGV.Pointer:SetScale(v)  end,
						min = 0.5,
						max = 2.0,
						step = 0.1,
						bigStep = 0.1,
						isPercent = true,
						width = "full",
						order = 10.205,
					},
					arrowfontsize = {
						name = L["opt_arrowfontsize"],
						desc = L["opt_arrowfontsize_desc"],
						type = 'range',
						min = 5,
						max = 15,
						step = 0.5,
						bigStep = 1.0,
						width = "full",
						set = function(i,v) Setter_Simple(i,v)  ZGV.Pointer:SetFontSize(v)  end,
						order = 10.21
					},
					arrowoutlinemode = {
						name = L["opt_arrowtextoutline"],
						desc = L["opt_arrowtextoutline_desc"],
						type = "select",
						values = {
							[1] = L["opt_arrowtextoutline_default"],
							[2] = L["opt_arrowtextoutline_strong"],
							[3] = L["opt_arrowtextoutline_reduced"],
						},
						get = function()
							local m = self.db.profile.arrowoutlinemode
							if m=="strong" then return 2 end
							if m=="reduced" then return 3 end
							return 1
						end,
						set = function(_,v)
							local mode = (v==2 and "strong") or (v==3 and "reduced") or "default"
							self.db.profile.arrowoutlinemode = mode
							-- Keep legacy bool in sync for older code paths.
							self.db.profile.arrowoutline = (mode=="strong")
							if ZGV.Pointer then
								ZGV.Pointer:SetFontSize(self.db.profile.arrowfontsize)
								ZGV.Pointer:RefreshArrowStyle()
							end
							ZGV:SetWaypoint()
						end,
						width = "normal",
						order = 10.215,
					},
					remasterpointeronlegacy = {
						name = L["opt_remasterpointeronlegacy"],
						desc = L["opt_remasterpointeronlegacy_desc"],
						type = "toggle",
						width = "full",
						set = function(i,v)
							Setter_Simple(i,v)
							if ZGV.Pointer then
								ZGV.Pointer:RefreshArrowStyle()
								ZGV.Pointer:SetFontSize(self.db.profile.arrowfontsize)
							end
						end,
						order = 10.216,
					},
					desc1 = { type="header", name=L["opt_progressbackcolor_desc"], order=11 },
					foglight = {
						name = L["opt_foglight"],
						desc = L["opt_foglight_desc"],
						type = 'toggle',
						set = function(i,v) Setter_Simple(i,v)  if v then self.Foglight:Startup() else self.Foglight:TurnOff() end end,
						width = "full",
						order = 10.23,
					},
					minimapzoom = {
						name = L["opt_minimapzoom"],
						desc = L["opt_minimapzoom_desc"],
						type = 'toggle',
						set = function(i,v) Setter_Simple(i,v)  self.Pointer:MinimapZoomChanged() end,
						width = "full",
						order = 10.24,
					},
					routeantminimapmode = {
						name = L["opt_routeantminimapmode"],
						desc = L["opt_routeantminimapmode_desc"],
						type = "select",
						values = {
							[1] = L["opt_routeantminimapmode_local"],
							[2] = L["opt_routeantminimapmode_all"],
							[3] = L["opt_routeantminimapmode_none"],
						},
						get = function()
							local mode = self.db.profile.routeantminimapmode
							if mode=="all" then return 2 end
							if mode=="none" then return 3 end
							return 1
						end,
						set = function(_,v)
							self.db.profile.routeantminimapmode = (v==2 and "all") or (v==3 and "none") or "local"
							if ZGV.Pointer and ZGV.Pointer.UpdateAnts then
								ZGV.Pointer:UpdateAnts()
							end
						end,
						width = "double",
						order = 10.245,
					},
					routeantdensity = {
						name = L["opt_routeantdensity"],
						desc = L["opt_routeantdensity_desc"],
						type = "range",
						min = 1,
						max = 9,
						step = 1,
						bigStep = 1,
						get = function()
							local pct = self.db.profile.routeantdensity or 100
							local level = math.floor(((pct - 20) / 20) + 1 + 0.5)
							if level < 1 then level = 1 end
							if level > 9 then level = 9 end
							return level
						end,
						set = function(_,v)
							self.db.profile.routeantdensity = v * 20
							if ZGV.Pointer and ZGV.Pointer.UpdateAnts then
								ZGV.Pointer:UpdateAnts()
							end
						end,
						width = "full",
						order = 10.246,
					},
					audiocues = {
						name = L["opt_audiocues"],
						desc = L["opt_audiocues_desc"],
						type = 'toggle',
						width = "full",
						order = 10.25,
					},
					--[[
					mapcoords = {
						name = L["opt_mapcoords"],
						desc = L["opt_mapcoords_desc"],
						type = 'toggle',
						set = function(i,v) Setter_Simple(i,v)  self.MapCoords:HandleWorldmapCoords() end,
						width = "full",
						order = 10.23,
					},
					--]]
				}
			},
			resetarrowposition = {
				name = L["opt_resetarrowposition"],
				desc = L["opt_resetarrowposition_desc"],
				type = "execute",
				func = function() ResetArrowPosition() end,
				disabled = function() return self.db.profile.waypointaddon~="internal" end,
				order = 98.9,
			},
			foglightdebug = {
				name = L["opt_foglightdebug"],
				desc = L["opt_foglightdebug_desc"],
				type = 'execute',
				func = function() ZGV.Foglight:DebugMap() end,
				order = 99,
				hidden = function() return not self.db.profile.debug end
			},
		}
	}

	-- Retail-style split pages built from existing options, so behavior stays identical.
	self.optionsstepdisplay = {
		name = L["gb_opt_stepdisplay"],
		desc = L["gb_opt_desc_stepdisplay"],
		type = "group",
		order = 2.1,
		handler = self,
		get = Getter_Simple,
		set = Setter_Simple,
		args = CloneOptionNode(self.optionsdisplay.args),
	}
	do
		local stepArgs = self.optionsstepdisplay and self.optionsstepdisplay.args
		local stepWindowArgs = stepArgs and stepArgs.window and stepArgs.window.args
		if stepArgs and stepWindowArgs then
			if stepWindowArgs.showcountsteps then
				stepArgs.showcountsteps = CloneOptionNode(stepWindowArgs.showcountsteps)
				stepArgs.showcountsteps.order = 2.2
				stepArgs.showcountsteps.width = "normal"
			end
			stepArgs.showguideprogressbar = {
				name = L["opt_showguideprogressbar"],
				desc = L["opt_showguideprogressbar_desc"],
				type = "toggle",
				order = 2.25,
				width = "double",
				get = function() return self.db.profile.showguideprogressbar ~= false end,
				set = function(i,v)
					Setter_Simple(i,v)
					if self.UpdateGuideProgressWidgets then self:UpdateGuideProgressWidgets() end
					if self.ResizeFrame then self:ResizeFrame() end
					if self.UpdateFrame then self:UpdateFrame(true) end
				end,
			}
			stepWindowArgs.showcountsteps = nil
			stepWindowArgs.skin = nil
			stepWindowArgs.sep_window_row1 = nil
		end
	end

	self.optionsskin = {
		name = L["opt_skinpanel_title"],
		desc = L["opt_skinpanel_desc"],
		type = "group",
		order = 1.5,
		handler = self,
		get = Getter_Simple,
		set = Setter_Simple,
		args = {
			intro = {
				type = "description",
				name = L["opt_skinpanel_intro"],
				order = 1,
				fontSize = "medium",
			},
			skin = {
				name = L["opt_skinpanel_skin"],
				desc = L["opt_skinpanel_skin_desc"],
				type = "select",
				values = function()
					return self:BuildSkinDropdownValues()
				end,
				get = function()
					return self:GetSkinDropdownKey()
				end,
				set = function(_, n)
					self:ApplySkinFromDropdownKey(n)
					self:UpdateSkin(false)
					self:AlignFrame()
					self:ResizeFrame()
					self:UpdateFrame(true)
					self:ScrollToCurrentStep()
					if self.ScheduleTimer then
						self:ScheduleTimer(function()
							if not ZGV then return end
							ZGV:AlignFrame()
							ZGV:ResizeFrame()
							ZGV:UpdateFrame(true)
							if ZGV.ScrollToCurrentStep then ZGV:ScrollToCurrentStep() end
						end, 0)
					end
					self:UpdateLocking()
				end,
				order = 2,
				width = "double",
			},
			appearance_header = {
				type = "header",
				name = L["opt_skinpanel_appearance_header"],
				order = 3,
				width = "full",
			},
			appearance_desc = {
				type = "description",
				name = L["opt_skinpanel_appearance_desc"],
				order = 3.1,
				width = "full",
			},
			framescale = {
				name = L["opt_framescale"],
				desc = L["opt_framescale_desc"],
				type = "range",
				set = function(i,v) Setter_Simple(i,v) self.Frame:SetScale(ZGV.db.profile.framescale) end,
				min = 0.5,
				max = 2.0,
				step = 0.1,
				bigStep = 0.1,
				isPercent = true,
				order = 3.2,
				width = "normal",
			},
			fontsize = {
				name = L["opt_fontsize"],
				desc = L["opt_fontsize_desc"],
				type = "range",
				set = function(i,v) Setter_Simple(i,v) self:AlignFrame() self:UpdateFrame() end,
				min = 7,
				max = 16,
				step = 1,
				bigStep = 1,
				order = 3.3,
				width = "normal",
			},
			fontsecsize = {
				name = L["opt_fontsecsize"],
				desc = L["opt_fontsecsize_desc"],
				type = "range",
				set = function(i,v) Setter_Simple(i,v) self:AlignFrame() self:UpdateFrame() end,
				min = 5,
				max = 14,
				step = 1,
				bigStep = 1,
				order = 3.4,
				width = "normal",
			},
			opacitymain = {
				name = L["opt_opacitymain"],
				desc = L["opt_opacitymain_desc"],
				type = "range",
				set = function(i,v)
					Setter_Simple(i,v)
					if self.db and self.db.profile and self:IsRemasterSkin() then
						self:UpdateSkin(true)
						if self.ActionButtons_ApplyProfile then self:ActionButtons_ApplyProfile() end
						if self.TargetPreview_ApplyProfile then self:TargetPreview_ApplyProfile() end
					else
						self:AlignFrame()
					end
				end,
				min = 0,
				max = 1.0,
				isPercent = true,
				step = 0.01,
				bigStep = 0.1,
				order = 3.5,
				width = "normal",
			},
			colors_header = {
				type = "header",
				name = L["opt_skinpanel_colors_header"],
				order = 4,
				width = "full",
			},
			colors_desc = {
				type = "description",
				name = L["opt_skinpanel_colors_desc"],
				order = 4.1,
				width = "full",
			},
			backopacity = {
				name = L["opt_backopacity"],
				desc = L["opt_backopacity_desc"],
				type = "range",
				set = function(i,v)
					Setter_Simple(i,v)
					self:UpdateSkin(self.db and self.db.profile and self:IsRemasterSkin())
					if self.ActionButtons_ApplyProfile then
						self:ActionButtons_ApplyProfile()
					end
					if self.TargetPreview_ApplyProfile then
						self:TargetPreview_ApplyProfile()
					end
				end,
				min = 0.0,
				max = 1.0,
				isPercent = true,
				step = 0.01,
				bigStep = 0.1,
				order = 4.2,
				width = "normal",
			},
			advanced_header = {
				type = "header",
				name = L["opt_skinpanel_advanced_header"],
				order = 5,
				width = "full",
			},
			advanced_desc = {
				type = "description",
				name = L["opt_skinpanel_advanced_desc"],
				order = 5.1,
				width = "full",
			},
			showcountsteps = {
				name = L["opt_showcountsteps"],
				desc = L["opt_showcountsteps_desc"],
				type = "select",
				values = {
					[0]=L["opt_showcountsteps_all"],
					"1","2","3","4","5"
				},
				get = function() return self.db.profile.showallsteps and 0 or self.db.profile.showcountsteps end,
				set = function(_,n)
					if n==0 then
						self.db.profile.showallsteps = true
						local targetHeight = self.db.profile.fullheight or 0
						if targetHeight <= 0 and ZygorGuidesViewerFrame and ZygorGuidesViewerFrame.GetHeight then
							local h = ZygorGuidesViewerFrame:GetHeight() or 0
							if h > 0 then
								self.db.profile.fullheight = math.max(self.db.profile.fullheight or 0, h)
								targetHeight = self.db.profile.fullheight
							end
						end
						if targetHeight > 0 then ZygorGuidesViewerFrame:SetHeight(targetHeight) end
					else
						self.db.profile.showallsteps=false
						self.db.profile.showcountsteps=n
					end
					local frame = ZygorGuidesViewerFrame
					local handler = frame and frame.GetScript and frame:GetScript("OnSizeChanged")
					if self:IsRemasterSkin() and frame and handler then
						self.forceRemasterRelayout = true
						handler(frame)
					else
						self:UpdateFrame(true)
						self:AlignFrame()
						self:UpdateLocking()
						self:ScrollToCurrentStep()
						if not self.db.profile.showallsteps then
							if ZygorGuidesViewerFrameScrollScrollBar then
								ZygorGuidesViewerFrameScrollScrollBar:SetValue(0)
							end
							self:ResizeFrame()
						end
					end
				end,
				order = 5.2,
				width = "normal",
			},
			hideborder = {
				name = L["opt_hideborder"],
				desc = L["opt_hideborder_desc"],
				type = "toggle",
				set = function(i,v)
					self.db.profile.hideborder = v
					ZGV.borderfadedout = nil
					if self.RefreshAutoHideBorderState then
						self:RefreshAutoHideBorderState()
					end
					if not v then
						if ZygorGuidesViewerFrame_Border then
							ZygorGuidesViewerFrame_Border:Show()
							ZygorGuidesViewerFrame_Border:SetAlpha(ZGV.db.profile.opacitymain or 1.0)
						end
						if ZygorGuidesViewerFrame_Skipper and ZygorGuidesViewerFrame_Skipper.mustbevisible then
							ZygorGuidesViewerFrame_Skipper:Show()
							ZygorGuidesViewerFrame_Skipper:SetAlpha(ZGV.db.profile.opacitymain or 1.0)
						end
					end
				end,
				order = 5.3,
				width = "normal",
			},
			hidestepborders = {
				name = L["opt_hidestepborders"],
				desc = L["opt_hidestepborders_desc"],
				type = "toggle",
				set = function(i,v) Setter_Simple(i,v) self:UpdateFrame() end,
				order = 5.4,
				width = "normal",
			},
			windowlocked = {
				name = L['opt_windowlocked'],
				desc = L['opt_windowlocked_desc'],
				type = 'toggle',
				set = function(i,v) Setter_Simple(i,v) self:UpdateLocking() end,
				order = 5.5,
				width = "normal",
			},
			resizeup = {
				name = L["opt_miniresizeup"],
				desc = L["opt_miniresizeup_desc"],
				type = 'toggle',
				set = function(i,v)
					self:SetResizeUp(v)
				end,
				order = 5.6,
				width = "normal",
			},
		},
	}

	self.optionstravelsystem = {
		name = L["gb_opt_travel"],
		desc = L["gb_opt_desc_travel"],
		type = "group",
		order = 2.2,
		handler = self,
		get = Getter_Simple,
		set = Setter_Simple,
		args = BuildSplitOptionsArgs(self.optionsmap.args, {"waypoints","hidearrowwithguide"}, L["opt_travelsystem_intro"]),
	}

	self.optionsmapswaypoints = {
		name = L["gb_opt_map"],
		desc = L["gb_opt_desc_map"],
		type = "group",
		order = 2.3,
		handler = self,
		get = Getter_Simple,
		set = Setter_Simple,
		args = BuildSplitOptionsArgs(self.optionsmap.args, {"minicons","transparency","scale","foglight","_internal","resetarrowposition"}, L["opt_mapswaypoints_intro"]),
	}

	self.optionsoptimization = {
		name = L["gb_opt_optimization"],
		desc = L["gb_opt_desc_optimization"],
		type = "group",
		order = 2.35,
		handler = self,
		get = Getter_Simple,
		set = Setter_Simple,
		args = {
			intro = {
				order = 1,
				type = "description",
				name = L["opt_optimization_intro"],
			},
			arrow_header = {
				order = 10,
				type = "header",
				name = L["opt_optimization_arrow_header"],
			},
			arrow_desc = {
				order = 11,
				type = "description",
				name = L["opt_optimization_arrow_desc"],
			},
			arrow_refresh_rate = {
				order = 12,
				type = "select",
				name = L["opt_arrow_refresh_rate"],
				desc = L["opt_arrow_refresh_rate_desc"],
				width = "double",
				values = {
					[10] = L["opt_arrow_refresh_rate_10"],
					[20] = L["opt_arrow_refresh_rate_20"],
					[30] = L["opt_arrow_refresh_rate_30"],
					[60] = L["opt_arrow_refresh_rate_60"],
					[0] = L["opt_arrow_refresh_rate_unlimited"],
				},
				get = function()
					return self.db.profile.arrow_refresh_rate or 20
				end,
				set = function(_,v)
					self.db.profile.arrow_refresh_rate = tonumber(v) or 20
					if ZGV.Pointer and ZGV.Pointer.ResetArrowRefreshThrottle then
						ZGV.Pointer:ResetArrowRefreshThrottle()
					end
					if self.db.profile.waypointaddon == "internal" and ZGV.Pointer and ZGV.Pointer.ArrowFrame and ZGV.Pointer.ArrowFrame:IsShown() then
						ZGV:SetWaypoint()
					end
				end,
				disabled = function()
					return self.db.profile.waypointaddon ~= "internal"
				end,
			},
			arrow_text_refresh_rate = {
				order = 13,
				type = "select",
				name = L["opt_arrow_text_refresh_rate"],
				desc = L["opt_arrow_text_refresh_rate_desc"],
				width = "double",
				values = {
					[0.25] = L["opt_arrow_text_refresh_rate_025"],
					[0.5] = L["opt_arrow_text_refresh_rate_05"],
					[1.0] = L["opt_arrow_text_refresh_rate_1"],
					[2.0] = L["opt_arrow_text_refresh_rate_2"],
					[0] = L["opt_arrow_text_refresh_rate_realtime"],
				},
				get = function()
					return self.db.profile.arrow_text_refresh_rate or 1.0
				end,
				set = function(_,v)
					self.db.profile.arrow_text_refresh_rate = tonumber(v) or 1.0
					if ZGV.Pointer and ZGV.Pointer.ResetArrowRefreshThrottle then
						ZGV.Pointer:ResetArrowRefreshThrottle()
					end
				end,
				disabled = function()
					return self.db.profile.waypointaddon ~= "internal"
				end,
			},
			arrowpulse = {
				order = 14,
				type = "toggle",
				name = L["opt_arrow_pulse"],
				desc = L["opt_arrow_pulse_desc"],
				width = "double",
				get = function()
					return self.db.profile.arrowpulse
				end,
				set = function(_,v)
					self.db.profile.arrowpulse = not not v
				end,
				disabled = function()
					return self.db.profile.waypointaddon ~= "internal"
				end,
			},
			arrow_note = {
				order = 15,
				type = "description",
				name = L["opt_optimization_internal_only"],
			},
			routing_header = {
				order = 20,
				type = "header",
				name = L["opt_optimization_routing_header"],
			},
			routing_desc = {
				order = 21,
				type = "description",
				name = L["opt_optimization_routing_desc"],
			},
			travel_use_librover = {
				order = 22,
				type = "toggle",
				name = L["opt_travel_use_librover"],
				desc = L["opt_travel_use_librover_desc"],
				width = "full",
				get = function()
					return self.db.profile.travel_use_librover == true
				end,
				set = function(_,v)
					self.db.profile.travel_use_librover = v == true
					if self.db.profile.travel_use_librover then
						self.LibRover = self.LibRover or _G.LibRover
						if self.LibRover and self.LibRover.DoStartup and not self.LibRover.ready and not self.LibRover.startup_thread then
							self.LibRover:DoStartup()
						end
					elseif self.ClearLibRoverPath then
						self:ClearLibRoverPath()
						if self.LibRover and self.LibRover.StopStartup and self.LibRover.startup_thread and not self.LibRover.ready then
							self.LibRover:StopStartup()
						end
					end
					self:SetWaypoint()
				end,
			},
			pathfinding_speed = {
				order = 23,
				type = "select",
				name = L["opt_pathfinding_speed"],
				desc = L["opt_pathfinding_speed_desc"],
				width = "double",
				values = {
					[1] = L["opt_pathfinding_speed_slow"],
					[15] = L["opt_pathfinding_speed_medium"],
					[50] = L["opt_pathfinding_speed_fast"],
				},
				get = function()
					return self.db.profile.pathfinding_speed or 1
				end,
				set = function(_,v)
					self.db.profile.pathfinding_speed = tonumber(v) or 1
					if self.LibRover and self.LibRover.UpdateConfig then self.LibRover:UpdateConfig(self.db.profile) end
					if self.Pointer and self.Pointer.DestinationWaypoint and self.Pointer.DestinationWaypoint.type == "manual" then
						if self.LibRover and self.LibRover.UpdateNow then self.LibRover:UpdateNow() end
					else
						self:SetWaypoint()
					end
				end,
				disabled = function()
					return not (self.LibRover or _G.LibRover) or not self.db.profile.pathfinding or self.db.profile.travel_use_librover ~= true
				end,
			},
			travel_do_full_linking_at_startup = {
				order = 24,
				type = "toggle",
				name = L["opt_travel_full_linking_startup"],
				desc = L["opt_travel_full_linking_startup_desc"],
				width = "full",
				disabled = function()
					return not (self.LibRover or _G.LibRover) or self.db.profile.travel_use_librover ~= true
				end,
			},
			memory_header = {
				order = 30,
				type = "header",
				name = L["opt_optimization_memory_header"],
			},
			memory_desc = {
				order = 31,
				type = "description",
				name = L["opt_optimization_memory_desc"],
			},
			diagnostics_header = {
				order = 40,
				type = "header",
				name = L["opt_optimization_diagnostics_header"],
			},
			diagnostics_desc = {
				order = 41,
				type = "description",
				name = L["opt_optimization_diagnostics_desc"],
			},
		},
	}

	self.optionsnotifications = {
		name = L["gb_opt_notifications"],
		desc = L["gb_opt_desc_notifications"],
		type = "group",
		order = 2.4,
		handler = self,
		get = Getter_Simple,
		set = Setter_Simple,
		args = BuildSplitOptionsArgs(
			(self.optionsdisplay.args and self.optionsdisplay.args.step and self.optionsdisplay.args.step.args) or {},
			{"goalupdateflash","goalcompletionflash","flashborder"},
			L["opt_notifications_intro"]
		),
	}

	self.optionsactionbuttons = {
		name = L["gb_opt_actionbuttons"],
		desc = L["gb_opt_desc_actionbuttons"],
		type = "group",
		order = 2.5,
		handler = self,
		get = Getter_Simple,
		set = Setter_Simple,
		args = BuildSplitOptionsArgs(
			(self.optionsdisplay.args and self.optionsdisplay.args.step and self.optionsdisplay.args.step.args) or {},
			{"stepnumbers","goalicons","tooltipsbelow"},
			L["opt_actionbuttons_intro"]
		),
	}

	self.optionsactionbuttons.args.actionbuttonbar_enabled = {
		name = L["opt_actionbar_enable"],
		desc = L["opt_actionbar_enable_desc"],
		type = "toggle",
		width = "full",
		order = 20,
		set = function(info, value)
			Setter_Simple(info, value)
			if self.ActionButtons_ApplyProfile then self:ActionButtons_ApplyProfile() end
			if ZGV and ZGV.UpdateFrame then ZGV:UpdateFrame(true) end
		end,
	}
	self.optionsactionbuttons.args.inlinebuttons_enabled = {
		name = L["opt_inlinebuttons_enable"],
		desc = L["opt_inlinebuttons_enable_desc"],
		type = "toggle",
		width = "full",
		order = 20.5,
		disabled = function() return not self.db.profile.actionbuttonbar_enabled or not self.db.profile.goalicons end,
		set = function(info, value)
			Setter_Simple(info, value)
			if ZGV and ZGV.UpdateFrame then ZGV:UpdateFrame(true) end
		end,
	}
	self.optionsactionbuttons.args.actionbuttonbar_onlywhenneeded = {
		name = L["opt_actionbar_onlywhenneeded"],
		desc = L["opt_actionbar_onlywhenneeded_desc"],
		type = "toggle",
		width = "full",
		order = 21,
		disabled = function() return not self.db.profile.actionbuttonbar_enabled end,
		set = function(info, value) Setter_Simple(info, value) if self.ActionButtons_ApplyProfile then self:ActionButtons_ApplyProfile() end end,
	}
	self.optionsactionbuttons.args.actionbuttonbar_locked = {
		name = L["opt_actionbar_locked"],
		desc = L["opt_actionbar_locked_desc"],
		type = "toggle",
		width = "full",
		order = 22,
		disabled = function() return not self.db.profile.actionbuttonbar_enabled end,
		set = function(info, value)
			Setter_Simple(info, value)
			if self.ActionButtons_ApplyProfile then self:ActionButtons_ApplyProfile() end
			if self.ActionButtonBar and self.ActionButtons_UpdateDragState then
				self:ActionButtons_UpdateDragState()
			end
		end,
	}
	self.optionsactionbuttons.args.actionbuttonbar_scale = {
		name = L["opt_actionbar_scale"],
		desc = L["opt_actionbar_scale_desc"],
		type = "range",
		min = 0.5,
		max = 2,
		step = 0.05,
		bigStep = 0.1,
		isPercent = true,
		order = 23,
		disabled = function() return not self.db.profile.actionbuttonbar_enabled end,
		set = function(info, value) Setter_Simple(info, value) if self.ActionButtons_ApplyProfile then self:ActionButtons_ApplyProfile() end end,
	}
	self.optionsactionbuttons.args.actionbuttonbar_size = {
		name = L["opt_actionbar_size"],
		desc = L["opt_actionbar_size_desc"],
		type = "range",
		min = 24,
		max = 64,
		step = 1,
		bigStep = 2,
		order = 24,
		disabled = function() return not self.db.profile.actionbuttonbar_enabled end,
		set = function(info, value) Setter_Simple(info, value) if self.ActionButtons_ApplyProfile then self:ActionButtons_ApplyProfile() end end,
	}
	self.optionsactionbuttons.args.actionbuttonbar_spacing = {
		name = L["opt_actionbar_spacing"],
		desc = L["opt_actionbar_spacing_desc"],
		type = "range",
		min = 0,
		max = 20,
		step = 1,
		bigStep = 2,
		order = 25,
		disabled = function() return not self.db.profile.actionbuttonbar_enabled end,
		set = function(info, value) Setter_Simple(info, value) if self.ActionButtons_ApplyProfile then self:ActionButtons_ApplyProfile() end end,
	}
	self.optionsactionbuttons.args.actionbuttonbar_pinside = {
		name = L["opt_actionbar_pinside"],
		desc = L["opt_actionbar_pinside_desc"],
		type = "select",
		order = 25.5,
		values = {
			top = L["opt_actionbar_pinside_top"],
			bottom = L["opt_actionbar_pinside_bottom"],
			left = L["opt_actionbar_pinside_left"],
			right = L["opt_actionbar_pinside_right"],
		},
		disabled = function() return not self.db.profile.actionbuttonbar_enabled end,
		set = function(info, value) Setter_Simple(info, value) if self.ActionButtons_ApplyProfile then self:ActionButtons_ApplyProfile() end end,
	}
	self.optionsactionbuttons.args.actionbuttonbar_resetanchor = {
		name = L["opt_actionbar_resetanchor"],
		desc = L["opt_actionbar_resetanchor_desc"],
		type = "execute",
		order = 25.6,
		width = "full",
		disabled = function() return not self.db.profile.actionbuttonbar_enabled end,
		func = function()
			if self.ActionButtons_ResetAnchor then
				self:ActionButtons_ResetAnchor()
			else
				self.db.profile.actionbuttonbar_anchor = { snapped = true, custom = true }
			end
			if self.ActionButtons_ApplyProfile then self:ActionButtons_ApplyProfile() end
		end,
	}
	self.optionsactionbuttons.args.actionbutton_enablemarkers = {
		name = L["opt_actionbar_markers"],
		desc = L["opt_actionbar_markers_desc"],
		type = "toggle",
		width = "full",
		order = 26,
		disabled = function() return not self.db.profile.actionbuttonbar_enabled end,
		set = function(info, value) Setter_Simple(info, value) if self.ActionButtons_ApplyProfile then self:ActionButtons_ApplyProfile() end end,
	}
	self.optionsactionbuttons.args.targetpreview_header = {
		name = L["opt_targetpreview_header"],
		type = "header",
		order = 30,
	}
	self.optionsactionbuttons.args.targetpreview_desc = {
		name = L["opt_targetpreview_intro"],
		type = "description",
		order = 30.1,
	}
	self.optionsactionbuttons.args.targetpreview_enabled = {
		name = L["opt_targetpreview_enable"],
		desc = L["opt_targetpreview_enable_desc"],
		type = "toggle",
		width = "full",
		order = 31,
		set = function(info, value) Setter_Simple(info, value) if self.TargetPreview_ApplyProfile then self:TargetPreview_ApplyProfile() end end,
	}
	self.optionsactionbuttons.args.targetpreview_onlywhenneeded = {
		name = L["opt_targetpreview_onlywhenneeded"],
		desc = L["opt_targetpreview_onlywhenneeded_desc"],
		type = "toggle",
		width = "full",
		order = 32,
		disabled = function() return not self.db.profile.targetpreview_enabled end,
		set = function(info, value) Setter_Simple(info, value) if self.TargetPreview_ApplyProfile then self:TargetPreview_ApplyProfile() end end,
	}
	self.optionsactionbuttons.args.targetpreview_locked = {
		name = L["opt_targetpreview_locked"],
		desc = L["opt_targetpreview_locked_desc"],
		type = "toggle",
		width = "full",
		order = 33,
		disabled = function() return not self.db.profile.targetpreview_enabled end,
		set = function(info, value)
			Setter_Simple(info, value)
			if self.TargetPreview_ApplyProfile then self:TargetPreview_ApplyProfile() end
			if self.TargetPreviewPane and self.TargetPreview_UpdateDragState then
				self:TargetPreview_UpdateDragState()
			end
		end,
	}
	self.optionsactionbuttons.args.targetpreview_scale = {
		name = L["opt_targetpreview_scale"],
		desc = L["opt_targetpreview_scale_desc"],
		type = "range",
		min = 0.5,
		max = 2,
		step = 0.05,
		bigStep = 0.1,
		isPercent = true,
		order = 34,
		disabled = function() return not self.db.profile.targetpreview_enabled end,
		set = function(info, value) Setter_Simple(info, value) if self.TargetPreview_ApplyProfile then self:TargetPreview_ApplyProfile() end end,
	}
	self.optionsactionbuttons.args.targetpreview_width = {
		name = L["opt_targetpreview_width"],
		desc = L["opt_targetpreview_width_desc"],
		type = "range",
		min = 150,
		max = 340,
		step = 1,
		bigStep = 5,
		order = 35,
		disabled = function() return not self.db.profile.targetpreview_enabled end,
		set = function(info, value) Setter_Simple(info, value) if self.TargetPreview_ApplyProfile then self:TargetPreview_ApplyProfile() end end,
	}
	self.optionsactionbuttons.args.targetpreview_height = {
		name = L["opt_targetpreview_height"],
		desc = L["opt_targetpreview_height_desc"],
		type = "range",
		min = 170,
		max = 460,
		step = 1,
		bigStep = 5,
		order = 36,
		disabled = function() return not self.db.profile.targetpreview_enabled end,
		set = function(info, value) Setter_Simple(info, value) if self.TargetPreview_ApplyProfile then self:TargetPreview_ApplyProfile() end end,
	}
	self.optionsactionbuttons.args.targetpreview_pinside = {
		name = L["opt_targetpreview_pinside"],
		desc = L["opt_targetpreview_pinside_desc"],
		type = "select",
		order = 37,
		values = {
			top = L["opt_actionbar_pinside_top"],
			bottom = L["opt_actionbar_pinside_bottom"],
			left = L["opt_actionbar_pinside_left"],
			right = L["opt_actionbar_pinside_right"],
		},
		disabled = function() return not self.db.profile.targetpreview_enabled end,
		set = function(info, value) Setter_Simple(info, value) if self.TargetPreview_ApplyProfile then self:TargetPreview_ApplyProfile() end end,
	}
	self.optionsactionbuttons.args.targetpreview_growth = {
		name = L["opt_targetpreview_growth"],
		desc = L["opt_targetpreview_growth_desc"],
		type = "select",
		order = 37.5,
		values = {
			auto = L["opt_targetpreview_growth_auto"],
			up = L["opt_targetpreview_growth_up"],
			down = L["opt_targetpreview_growth_down"],
		},
		disabled = function() return not self.db.profile.targetpreview_enabled end,
		set = function(info, value) Setter_Simple(info, value) if self.TargetPreview_ApplyProfile then self:TargetPreview_ApplyProfile() end end,
	}
	self.optionsactionbuttons.args.targetpreview_mode = {
		name = L["opt_targetpreview_mode"],
		desc = L["opt_targetpreview_mode_desc"],
		type = "select",
		order = 38,
		values = {
			hybrid = L["opt_targetpreview_mode_hybrid"],
			model = L["opt_targetpreview_mode_model"],
			card = L["opt_targetpreview_mode_card"],
		},
		disabled = function() return not self.db.profile.targetpreview_enabled end,
		set = function(info, value) Setter_Simple(info, value) if self.TargetPreview_ApplyProfile then self:TargetPreview_ApplyProfile() end end,
	}
	self.optionsactionbuttons.args.targetpreview_resetanchor = {
		name = L["opt_targetpreview_resetanchor"],
		desc = L["opt_targetpreview_resetanchor_desc"],
		type = "execute",
		order = 39,
		width = "full",
		disabled = function() return not self.db.profile.targetpreview_enabled end,
		func = function()
			if self.TargetPreview_ResetAnchor then
				self:TargetPreview_ResetAnchor()
			else
				self.db.profile.targetpreview_anchor = { snapped = true, custom = true }
			end
			if self.TargetPreview_ApplyProfile then self:TargetPreview_ApplyProfile() end
		end,
	}

	-- New Guide Viewer page split: keep step-specific controls on Step Display only.
	if self.optionsdisplay and self.optionsdisplay.args then
		self.optionsdisplay.args.step = nil
		if self.optionsdisplay.args.window and self.optionsdisplay.args.window.args then
			self.optionsdisplay.args.window.args.showcountsteps = nil
		end
	end
	
	--[[
	self.optionsdata = {
		name = L["opt_group_data"],
		desc = L["opt_group_data_desc"],
		type = 'group',
		order = 1,
		--hidden = true,
		handler = self,
		args = {
			desc = {
				order = 1,
				type = "description",
				name = L["opt_group_data_desc"],
			},
			guide = {
				name = L["opt_group_data_guide"],
				desc = L["opt_group_data_guide_desc"],
				type = 'select',
				values = function() if not self.db.global.storedguides then return {} end  local k,v  local t={}  for k,v in pairs(self.db.global.storedguides) do t[k]=k end  return t  end,
				width = 'full',
				get = "GetFocusGuide",
				set = "SetFocusGuide",
				order = 2,
			},
			delguide = {
				name = L["opt_group_data_del"],
				desc = L["opt_group_data_del_desc"],
				type = 'execute',
				disabled = function() return not (self.db.global.storedguides and self.focusedguidename and self.db.global.storedguides[self.focusedguidename]) end,
				func = "DeleteGuide",
				order = 3,
			},
			editguide = {
				name = L["opt_group_data_edit"],
				desc = L["opt_group_data_edit_desc"],
				type = 'execute',
				disabled = function() return not (self.db.global.storedguides and self.focusedguidename and self.db.global.storedguides[self.focusedguidename]) end,
				func = "EditGuide",
				order = 4,
			},
			entry = {
				name = L["opt_group_data_entry"],
				desc = L["opt_group_data_entry_desc"],
				type = 'input',
				multiline = 15,
				width = 'full',
				get = "GetGuideText",
				set = "SetGuideText",
				order = 5,
			},
		}
	}
	--]]
	
	self.optionsdebug = {
		name = L["opt_debugging"],
		hidden = function() return not self.db.profile.debug end,
		desc = L["opt_debugging_desc"],
		type = 'group',
		order=-9,
		handler = self,
		get = Getter_Simple,
		set = Setter_Simple,
		args = {
			test = {
				type = 'execute',
				name = 'test',
				desc = 'Test whatever\'s being tested.',
				func = "Test",
				order=21,
			},
			fakelevel = {
				name = "Fake level (0=disable)",
				type = 'range',
				min = 0,
				max = 80,
				step = 1,
				bigStep = 1,
				get = function(i,v) return self.db.char[i[#i]] end,
				set = function(i,v) self.db.char[i[#i]]=v end,
				width="double",
				order = 3.9
			}
		},
	}

	-- ===================== GEAR ADVISOR =====================
	self.optionsgear = {
		name = "Gear Advisor",
		desc = "Gear scoring and upgrade detection",
		type = 'group',
		order = 4.1,
		handler = self,
		get = Getter_Simple,
		set = Setter_Simple,
		args = {
			desc = {
				order = 1,
				type = "description",
				name = "Set how Zygor detects upgrades, how it prompts you, and which sources Gear Finder should search.",
			},
			detection_header = {
				order = 1.5,
				type = "header",
				name = "Detection",
			},
			autogear = {
				order = 2,
				name = "Enable Gear Advisor",
				desc = "Enable item scoring and upgrade detection",
				type = "toggle",
				width = "full",
				set = function(i,v)
					Setter_Simple(i,v)
					if ZGV.ItemScore and ZGV.ItemScore.GearFinder and ZGV.ItemScore.GearFinder.UpdateSystemTab then
						ZGV.ItemScore.GearFinder:UpdateSystemTab()
					end
				end,
			},
			itemscore_tooltips = {
				order = 3,
				name = "Show ItemScore on Tooltips",
				desc = "Show upgrade percentage on item tooltips",
				type = "toggle",
				width = "full",
				disabled = function() return not self.db.profile.autogear end,
			},
			itemscore_tooltips_allbuilds = {
				order = 3.1,
				name = "Show All Builds on Tooltips",
				desc = "Show upgrade or downgrade lines for all build and role profiles of your class on item tooltips. Suggestions and equip prompts still use only the active profile.",
				type = "toggle",
				width = "full",
				disabled = function() return not self.db.profile.autogear or not self.db.profile.itemscore_tooltips end,
			},
			active_gear_profile = {
				order = 2.1,
				name = "Active Gear Profile",
				desc = "Choose the build and role Gear Advisor uses for this talent group. Automatic follows the dominant talent tree; a manual choice is remembered separately for each dual-talent group.",
				type = "select",
				values = function()
					local values = {}
					if not ZGV.ItemScore then return values end
					local classToken = ZGV.ItemScore.playerclass or select(2, UnitClass("player"))
					local classNum = ZGV.ClassToNumber and ZGV.ClassToNumber[classToken]
					local detectedBuild, usesFallback = ZGV.ItemScore:DetectActiveBuild(classToken, ZGV.ItemScore.playerlevel or UnitLevel("player"))
					values[0] = "Automatic (" .. ZGV.ItemScore:GetBuildName(classToken, detectedBuild, ZGV.ItemScore.playerlevel, usesFallback) .. ")"
					for buildNum, buildName in pairs((ZGV.ItemScore.Builds and classNum and ZGV.ItemScore.Builds[classNum]) or {}) do
						values[buildNum] = buildName
					end
					return values
				end,
				get = function()
					if not ZGV.ItemScore then return 0 end
					return ZGV.ItemScore:GetActiveBuildOverrideBuild(ZGV.ItemScore.playerclass, ZGV.ItemScore:GetActiveTalentGroupKey()) or 0
				end,
				set = function(_, value)
					if not ZGV.ItemScore then return end
					value = tonumber(value) or 0
					local groupKey = ZGV.ItemScore:GetActiveTalentGroupKey()
					if value == 0 then
						ZGV.ItemScore:ClearActiveBuildOverride(groupKey)
						if ZGV.ItemScore.GearFinder and ZGV.ItemScore.GearFinder.ClearResults then ZGV.ItemScore.GearFinder:ClearResults() end
						ZGV.ItemScore:DelayedRefreshUserData()
					else
						local classRules = ZGV.ItemScore.rules and ZGV.ItemScore.rules[ZGV.ItemScore.playerclass]
						if not (classRules and classRules[value]) then return end
						ZGV.ItemScore:SetActiveBuildOverride(value, groupKey)
						ZGV.db.char.gear_active_build = value
						ZGV.db.char.gear_selected_class = ZGV.ItemScore.playerclassNum
						ZGV.db.char.gear_selected_build = value
						ZGV.db.char.gear_weights_initialized = true
						ZGV.db.char.gear_weights_manual_class = true
						ZGV.ItemScore:RefreshAfterWeightChange(ZGV.ItemScore.playerclass, value)
					end
					if ZGV.ItemScore.NotifyStatWeightsOptionsChanged then ZGV.ItemScore:NotifyStatWeightsOptionsChanged() end
				end,
				width = "double",
				disabled = function() return not self.db.profile.autogear end,
			},
			itemscore_tooltip_value_mode = {
				order = 3.2,
				name = L["opt_itemscore_tooltip_value_mode"],
				desc = L["opt_itemscore_tooltip_value_mode_desc"],
				type = "select",
				values = {
					comparison = L["opt_itemscore_tooltip_value_mode_comparison"],
					score = L["opt_itemscore_tooltip_value_mode_score"],
					both = L["opt_itemscore_tooltip_value_mode_both"],
				},
				disabled = function() return not self.db.profile.autogear or not self.db.profile.itemscore_tooltips end,
			},
			itemscore_tooltip_normalize_score = {
				order = 3.3,
				name = L["opt_itemscore_tooltip_normalize_score"],
				desc = L["opt_itemscore_tooltip_normalize_score_desc"],
				type = "toggle",
				width = "full",
				disabled = function()
					return not self.db.profile.autogear
						or not self.db.profile.itemscore_tooltips
						or self.db.profile.itemscore_tooltip_value_mode == "comparison"
				end,
			},
			itemscore_score_sockets = {
				order = 3.4,
				name = L["opt_itemscore_score_sockets"],
				desc = L["opt_itemscore_score_sockets_desc"],
				type = "toggle",
				width = "full",
				disabled = function() return not self.db.profile.autogear end,
			},
			prompting_header = {
				order = 3.6,
				type = "header",
				name = "Prompting",
			},
			autogearauto = {
				order = 4,
				name = "Auto-equip Upgrades",
				desc = "Automatically equip upgrades without asking (notification only)",
				type = "toggle",
				width = "full",
				disabled = function() return not self.db.profile.autogear end,
			},
			masterloot_notices = {
				order = 4.1,
				name = "Show Master Loot Upgrade Notices",
				desc = "Print a local Gear Advisor message when a visible master-loot item is a true upgrade for your active build.",
				type = "toggle",
				width = "full",
				disabled = function() return not self.db.profile.autogear end,
			},
			masterloot_compare = {
				order = 4.2,
				name = "Include Compared Equipped Item in Master Loot Notices",
				desc = "Include the equipped baseline item link in the local master-loot upgrade message when available.",
				type = "toggle",
				width = "full",
				disabled = function() return not self.db.profile.autogear or not self.db.profile.masterloot_notices end,
			},
			vendorheader = {
				order = 6,
				type = "header",
				name = "Vendor & Convenience",
			},
			autosellgrey = {
				order = 7,
				name = "Auto-sell Grey Items",
				desc = "Automatically sell grey (junk) items when visiting a vendor",
				type = "toggle",
				width = "full",
			},
			autorepair = {
				order = 8,
				name = "Auto-repair",
				desc = "Automatically repair gear when visiting a vendor",
				type = "select",
				values = {
					[1] = "Off",
					[2] = "Use own gold",
					[3] = "Guild bank first, then own",
					[4] = "Own gold first, then guild",
				},
				width = "double",
			},
			sources_desc = {
				order = 9,
				type = "description",
				name = "Choose which dungeon and raid difficulties Gear Finder can suggest.",
			},
			gear_tier_progression_mode = {
				order = 9.5,
				name = "Prefer tier progression",
				desc = "Recommend upgrades from earlier accessible content tiers before higher catch-up tiers. Leave this off to keep the default best-path ranking.",
				type = "toggle",
				width = "full",
				set = function(i,v) Setter_Simple(i,v) if ZGV.ItemScore and ZGV.ItemScore.GearFinder then ZGV.ItemScore.GearFinder:RefreshAfterSourceSettingChange() end end,
				disabled = function() return not self.db.profile.autogear end,
			},
			dungeonheader = {
				order = 10,
				type = "header",
				name = "Gear Finder Sources",
			},
			gear_1 = {
				order = 11,
				name = "Normal Dungeons",
				type = "toggle",
				width = "double",
				set = function(i,v) Setter_Simple(i,v) if ZGV.ItemScore and ZGV.ItemScore.GearFinder then ZGV.ItemScore.GearFinder:RefreshAfterSourceSettingChange() end end,
				disabled = function() return not self.db.profile.autogear end,
			},
			gear_2 = {
				order = 12,
				name = "Heroic Dungeons",
				type = "toggle",
				width = "double",
				set = function(i,v) Setter_Simple(i,v) if ZGV.ItemScore and ZGV.ItemScore.GearFinder then ZGV.ItemScore.GearFinder:RefreshAfterSourceSettingChange() end end,
				disabled = function() return not self.db.profile.autogear end,
			},
			gear_14 = {
				order = 13,
				name = "Normal Raids",
				type = "toggle",
				width = "double",
				set = function(i,v) Setter_Simple(i,v) self.db.profile.gear_3=v self.db.profile.gear_4=v if ZGV.ItemScore and ZGV.ItemScore.GearFinder then ZGV.ItemScore.GearFinder:RefreshAfterSourceSettingChange() end end,
				disabled = function() return not self.db.profile.autogear end,
			},
			gear_15 = {
				order = 14,
				name = "Heroic Raids",
				type = "toggle",
				width = "double",
				set = function(i,v) Setter_Simple(i,v) self.db.profile.gear_5=v self.db.profile.gear_6=v if ZGV.ItemScore and ZGV.ItemScore.GearFinder then ZGV.ItemScore.GearFinder:RefreshAfterSourceSettingChange() end end,
				disabled = function() return not self.db.profile.autogear end,
			},
			gear_currency_rewards = {
				order = 15,
				name = "Currency Rewards",
				type = "toggle",
				width = "double",
				set = function(i,v) Setter_Simple(i,v) if ZGV.ItemScore and ZGV.ItemScore.GearFinder then ZGV.ItemScore.GearFinder:RefreshAfterSourceSettingChange() end end,
				disabled = function() return not self.db.profile.autogear end,
			},
			gear_crafted_items = {
				order = 16,
				name = "Crafted Items",
				desc = "Include crafted gear, including tradable items made by other players. Disable this to look for upgrades from the remaining enabled sources.",
				type = "toggle",
				width = "double",
				set = function(i,v) Setter_Simple(i,v) if ZGV.ItemScore and ZGV.ItemScore.GearFinder then ZGV.ItemScore.GearFinder:RefreshAfterSourceSettingChange() end end,
				disabled = function() return not self.db.profile.autogear end,
			},
			gear_crafted_my_professions = {
				order = 16.5,
				name = "Only My Professions",
				desc = "Limit crafted suggestions to your current professions, crafting skill, and specialization. Does not check whether you know the recipe or have the materials. Leave off to include eligible tradable crafts made by other players. This only filters Gear Finder; it does not change gear scores or auto-equipping.",
				type = "toggle",
				width = "double",
				set = function(i,v) Setter_Simple(i,v) if ZGV.ItemScore and ZGV.ItemScore.GearFinder then ZGV.ItemScore.GearFinder:RefreshAfterSourceSettingChange() end end,
				disabled = function() return not self.db.profile.autogear or self.db.profile.gear_crafted_items == false end,
			},
			gear_crafted_leveling_items = {
				order = 17,
				name = "Crafted Leveling Gear",
				desc = "Include crafted leveling gear from Classic, TBC, and WotLK, subject to your level and the other source filters.",
				type = "toggle",
				width = "double",
				set = function(i,v) Setter_Simple(i,v) if ZGV.ItemScore and ZGV.ItemScore.GearFinder then ZGV.ItemScore.GearFinder:RefreshAfterSourceSettingChange() end end,
				disabled = function() return not self.db.profile.autogear or self.db.profile.gear_crafted_items == false end,
			},
			gear_crafted_pvp_items = {
				order = 18,
				name = "Crafted PvP Starter Sets",
				desc = "Include level 78 crafted starter PvP sets such as Savage Saronite, Frostsavage, Eviscerator, Overcast, Swiftarrow, and Stormhide.",
				type = "toggle",
				width = "double",
				set = function(i,v) Setter_Simple(i,v) if ZGV.ItemScore and ZGV.ItemScore.GearFinder then ZGV.ItemScore.GearFinder:RefreshAfterSourceSettingChange() end end,
				disabled = function() return not self.db.profile.autogear or self.db.profile.gear_crafted_items == false or self.db.profile.gear_crafted_leveling_items == false end,
			},
			maintenance_header = {
				order = 19,
				type = "header",
				name = "Maintenance",
			},
			clearnotupgrades = {
				order = 20,
				name = "Reset Declined Upgrades",
				desc = "Clear the list of items you previously declined",
				type = "execute",
				func = function()
					if ZGV.db.char.badupgrade then
						wipe(ZGV.db.char.badupgrade)
					end
					ZGV:Print("Declined upgrades list cleared.")
				end,
				disabled = function() return not self.db.profile.autogear end,
			},
		},
	}

	-- ===================== STAT WEIGHTS (ITEMSCORE) =====================
	do
		local function DebugStatWeights(fmt, ...)
			if not (ZGV and ZGV.db and ZGV.db.profile and ZGV.db.profile.debug_display) then return end
			ZGV:Print(("[statweights] " .. fmt):format(...))
		end

		local function MarkStatWeightsStage(stage, key)
			ZGV._itemScoreOptionsDebug = ZGV._itemScoreOptionsDebug or {}
			ZGV._itemScoreOptionsDebug.stage = stage
			ZGV._itemScoreOptionsDebug.key = key
		end

		local function SafeString(value, fallback)
			if value == nil then return fallback or "" end
			return tostring(value)
		end

		local function SafeTable(value)
			return type(value) == "table" and value or {}
		end

		local function SafeBool(value, fallback)
			if value == nil then return not not fallback end
			return not not value
		end

		local function SafeNumber(value, fallback)
			local n = tonumber(value)
			if n == nil then return fallback end
			return n
		end

		local function WrapStatWeightsCallback(kind, key, fallback, fn, coerce)
			return function(...)
				MarkStatWeightsStage(kind, key)
				local ok, result = pcall(fn, ...)
				if not ok then
					DebugStatWeights("callback failed kind=%s key=%s err=%s", tostring(kind), tostring(key), tostring(result))
					return coerce and coerce(fallback) or fallback
				end
				if result == nil then
					return coerce and coerce(fallback) or fallback
				end
				return coerce and coerce(result) or result
			end
		end

		local function WrapStatWeightsSet(key, fn)
			return function(...)
				MarkStatWeightsStage("set", key)
				local ok, err = pcall(fn, ...)
				if not ok then
					DebugStatWeights("setter failed key=%s err=%s", tostring(key), tostring(err))
				end
			end
		end

		local function GetSelectedBuildInfo()
			MarkStatWeightsStage("shared", "GetSelectedBuildInfo")
			if not ZGV.ItemScore then return "Unknown class", "Unknown spec", nil, nil end
			if ZGV.ItemScore.EnsureSelectedWeightTarget then
				ZGV.ItemScore:EnsureSelectedWeightTarget()
			end
			local classNum = SafeNumber(ZGV.db.char.gear_selected_class, ZGV.ItemScore.playerclassNum or 1) or 1
			local buildNum = SafeNumber(ZGV.db.char.gear_selected_build, SafeNumber(ZGV.db.char.gear_active_build, 1)) or 1
			local classToken = GetClassTagFromID(classNum)
			local className = classToken == "CUSTOM" and "Custom" or (LOCALIZED_CLASS_NAMES_MALE and classToken and LOCALIZED_CLASS_NAMES_MALE[classToken]) or (LOCALIZED_CLASS_NAMES_FEMALE and classToken and LOCALIZED_CLASS_NAMES_FEMALE[classToken]) or classToken or "Unknown class"
			local fakeLevel = SafeNumber(ZGV.db and ZGV.db.char and ZGV.db.char.fakelevel, 0) or 0
			local level = (fakeLevel > 0 and fakeLevel) or UnitLevel("player")
			local classRules = classToken and ZGV.ItemScore.rules and ZGV.ItemScore.rules[classToken]
			if not classRules or not classRules[buildNum] then
				buildNum = ZGV.ItemScore:GetResolvedBuild(classToken, level, buildNum)
			end
			local buildName = ZGV.ItemScore:GetBuildName(classNum, buildNum, level, false)
			return className, buildName, classToken, buildNum, false
		end

		local function GetActiveBuildInfo()
			MarkStatWeightsStage("shared", "GetActiveBuildInfo")
			if not ZGV.ItemScore then return "Unknown class", "Unknown spec", nil, nil end
			local classNum = ZGV.ItemScore.playerclassNum or 1
			local classToken = ZGV.ItemScore.playerclass or GetClassTagFromID(classNum)
			local className = classToken == "CUSTOM" and "Custom" or (LOCALIZED_CLASS_NAMES_MALE and classToken and LOCALIZED_CLASS_NAMES_MALE[classToken]) or (LOCALIZED_CLASS_NAMES_FEMALE and classToken and LOCALIZED_CLASS_NAMES_FEMALE[classToken]) or classToken or "Unknown class"
			local buildNum = SafeNumber(ZGV.db.char.gear_active_build, 1) or 1
			local fakeLevel = SafeNumber(ZGV.db and ZGV.db.char and ZGV.db.char.fakelevel, 0) or 0
			local level = (fakeLevel > 0 and fakeLevel) or UnitLevel("player")
			local activeOverride = ZGV.ItemScore:GetActiveBuildOverrideBuild(classToken, ZGV.ItemScore:GetActiveTalentGroupKey())
			if activeOverride then
				buildNum = activeOverride
			end
			local buildName = ZGV.ItemScore:GetBuildName(classNum, buildNum, level, ZGV.ItemScore.activeBuildUsesFallback)
			local source = activeOverride and "Override" or "Detected"
			return className, buildName, classToken, buildNum, source
		end

		local IS_args = {
			desc = {
				order = 1,
				type = "description",
				name = "Adjust how strongly each stat affects item scoring for a selected class and spec. Higher values make the stat more important.",
			},
			warning = {
				order = 2,
				type = "description",
				name = "|cffff6600Warning:|r Changing stat weights is for advanced users. Incorrect values may cause bad gear suggestions.\n",
			},
			curated = {
				order = 2.1,
				type = "description",
				name = "|cff88ccffRecommended defaults:|r Wrath stat weights are source-backed curated baselines intended for 3.3.5a. Most players should start here and only customize when they have a clear reason.\n",
			},
			selectedsummary = {
				order = 2.2,
				type = "description",
				name = WrapStatWeightsCallback("name", "selectedsummary", "", function()
					local className, buildName, classToken, buildNum = GetSelectedBuildInfo()
					local activeClassName, activeBuildName, activeClassToken, activeBuildNum, activeSource = GetActiveBuildInfo()
					local status = "Curated defaults"
					local source = ZGV.ItemScore and ZGV.ItemScore.GetRuleSourceLabel and ZGV.ItemScore:GetRuleSourceLabel(classToken, buildNum) or "Unverified local baseline"
					if ZGV.ItemScore and classToken and buildNum and ZGV.ItemScore.UsesCustomWeights and ZGV.ItemScore:UsesCustomWeights(classToken, buildNum) then
						status = "Customized weights"
					end
					local activeLine = ""
					if activeClassToken and activeBuildNum then
						activeLine = ("|cff00ff00Active Profile:|r %s - %s |cff88cc88(%s)|r\n"):format(activeClassName, activeBuildName, activeSource or "Active")
					end
					return ("%s|cffccccccSelected profile:|r %s - %s\n|cffccccccStatus:|r %s\n|cffccccccDefault source:|r %s\n"):format(activeLine, className, buildName, status, source)
				end, SafeString),
			},
			selectionnote = {
				order = 2.25,
				type = "description",
				name = "|cff88ccffNote:|r Selecting another class or spec here changes which weights you edit. It does not change your active build for tooltips or gear recommendations unless you enable the active-build override for your own class.\n",
			},
			classdesc = {
				order = 3,
				type = "header",
				name = "Class & Spec Selection",
			},
		}

		-- Class selector
		IS_args.gear_selected_class = {
			order = 4,
			type = "select",
			name = "Class",
			values = WrapStatWeightsCallback("values", "gear_selected_class", {}, function()
				local male = LOCALIZED_CLASS_NAMES_MALE or {}
				local female = LOCALIZED_CLASS_NAMES_FEMALE or {}
				return {
					[1] = male.WARRIOR or female.WARRIOR or "Warrior",
					[2] = male.PALADIN or female.PALADIN or "Paladin",
					[3] = male.HUNTER or female.HUNTER or "Hunter",
					[4] = male.ROGUE or female.ROGUE or "Rogue",
					[5] = male.PRIEST or female.PRIEST or "Priest",
					[6] = male.DEATHKNIGHT or female.DEATHKNIGHT or "Death Knight",
					[7] = male.SHAMAN or female.SHAMAN or "Shaman",
					[8] = male.MAGE or female.MAGE or "Mage",
					[9] = male.WARLOCK or female.WARLOCK or "Warlock",
					[10] = male.DRUID or female.DRUID or "Druid",
					[11] = "Custom",
				}
			end, SafeTable),
		set = WrapStatWeightsSet("gear_selected_class", function(i,v)
			ZGV.db.char.gear_selected_class = v
			ZGV.db.char.gear_weights_initialized = true
			ZGV.db.char.gear_weights_manual_class = true
			Setter_Simple(i,v)
			local fakeLevel = SafeNumber(ZGV.db and ZGV.db.char and ZGV.db.char.fakelevel, 0) or 0
			local level = (fakeLevel > 0 and fakeLevel) or UnitLevel("player")
			
			-- Reset build index on class switch to prevent stale values
			ZGV.db.char.gear_selected_build = 1
			
			if ZGV.ItemScore then
				if v == ZGV.ItemScore.playerclassNum then
					ZGV.db.char.gear_selected_build = tonumber(ZGV.db.char.gear_active_build) or ZGV.ItemScore:GetResolvedBuild(GetClassTagFromID(v), level, nil)
				else
					ZGV.db.char.gear_selected_build = ZGV.ItemScore:GetResolvedBuild(GetClassTagFromID(v), level, nil) or 1
				end
			end

			-- Force AceConfig UI refresh
			local ACR = LibStub and LibStub("AceConfigRegistry-3.0", true)
			if ACR and ACR.NotifyChange then
				ACR:NotifyChange("ZygorGuidesViewer-ItemScore")
			end
		end),
			get = WrapStatWeightsCallback("get", "gear_selected_class", 1, function()
				if ZGV.ItemScore and ZGV.ItemScore.EnsureSelectedWeightTarget then
					ZGV.ItemScore:EnsureSelectedWeightTarget()
				elseif not ZGV.db.char.gear_selected_class then
					ZGV.db.char.gear_selected_class = ZGV.ItemScore and ZGV.ItemScore.playerclassNum or 1
				end
				return ZGV.db.char.gear_selected_class
			end, function(value) return SafeNumber(value, 1) or 1 end),
			width = "normal",
		}

		-- Spec/build selector
		IS_args.gear_selected_build = {
			order = 5,
			type = "select",
			name = "Build / Role",
			values = WrapStatWeightsCallback("values", "gear_selected_build", {}, function()
				if not ZGV.ItemScore or not ZGV.ItemScore.Builds then return {} end
				local classId = ZGV.db.char.gear_selected_class or 1
				local buildTable = ZGV.ItemScore.Builds[classId] or {}
				
				-- Generate proper array with correct max index to avoid ipairs gaps
				local maxSpecs = 0
				for k in pairs(buildTable) do
					if tonumber(k) and k > maxSpecs then maxSpecs = k end
				end
				
				local result = {}
				for specnum = 1, maxSpecs do
					result[specnum] = buildTable[specnum] or ("Spec "..specnum)
				end
				
				return result
			end, SafeTable),
			get = WrapStatWeightsCallback("get", "gear_selected_build", 1, function()
				-- Return the raw stored build without level-based override.
				-- GetResolvedBuild is NOT used here because it forces fallback builds
				-- for low-level characters, causing the UI to "revert" the user's choice.
				-- Build validation is handled by EnsureSelectedWeightTarget.
				return ZGV.db.char.gear_selected_build or 1
			end, function(value) return SafeNumber(value, 1) or 1 end),
		set = WrapStatWeightsSet("gear_selected_build", function(i,v)
			Setter_Simple(i,v)
			ZGV.db.char.gear_weights_initialized = true
			ZGV.db.char.gear_weights_manual_class = true
			-- Store the user's raw choice. Do NOT call GetResolvedBuild here;
			-- it would override manual selection based on player level.
			-- Validation and fallback handling is done in EnsureSelectedWeightTarget.
			ZGV.db.char.gear_selected_build = v
			if ZGV.ItemScore and tonumber(ZGV.db.char.gear_selected_class) == ZGV.ItemScore.playerclassNum and ZGV.ItemScore:GetActiveBuildOverrideBuild(ZGV.ItemScore.playerclass, ZGV.ItemScore:GetActiveTalentGroupKey()) then
				ZGV.ItemScore:SetActiveBuildOverride(v, ZGV.ItemScore:GetActiveTalentGroupKey())
				ZGV.ItemScore:RefreshAfterWeightChange(ZGV.ItemScore.playerclass, v)
			end
		end),
			width = "normal",
		}

		IS_args.activebuildoverride = {
			order = 5.5,
			type = "toggle",
			name = "Override Automatic Detection",
			desc = "Use the selected build and role from this panel for tooltips and gear recommendations in the current talent group until disabled.",
			get = WrapStatWeightsCallback("get", "activebuildoverride", false, function()
				if not ZGV.ItemScore then return false end
				return ZGV.ItemScore:GetActiveBuildOverrideBuild(ZGV.ItemScore.playerclass, ZGV.ItemScore:GetActiveTalentGroupKey()) and true or false
			end, function(value) return SafeBool(value, false) end),
			set = WrapStatWeightsSet("activebuildoverride", function(i, v)
				if not ZGV.ItemScore then return end
				local classNum = tonumber(ZGV.db.char.gear_selected_class)
				local buildNum = tonumber(ZGV.db.char.gear_selected_build)
				local groupKey = ZGV.ItemScore:GetActiveTalentGroupKey()
				if classNum ~= ZGV.ItemScore.playerclassNum then return end
				if v then
					if buildNum then
						ZGV.ItemScore:SetActiveBuildOverride(buildNum, groupKey)
						ZGV.db.char.gear_active_build = buildNum
						ZGV.ItemScore:RefreshAfterWeightChange(ZGV.ItemScore.playerclass, buildNum)
					end
				else
					ZGV.ItemScore:ClearActiveBuildOverride(groupKey)
					ZGV.ItemScore:RefreshAfterWeightChange(ZGV.ItemScore.playerclass, ZGV.db.char.gear_active_build)
				end
				local ACR = LibStub and LibStub("AceConfigRegistry-3.0", true)
				if ACR and ACR.NotifyChange then
					ACR:NotifyChange("ZygorGuidesViewer-ItemScore")
				end
			end),
			hidden = WrapStatWeightsCallback("hidden", "activebuildoverride", true, function()
				if not ZGV.ItemScore then return true end
				return tonumber(ZGV.db.char.gear_selected_class) ~= ZGV.ItemScore.playerclassNum
			end, function(value) return SafeBool(value, true) end),
			width = "double",
		}

		-- "Use this spec" button
		IS_args.activatebuild = {
			order = 6,
			type = "execute",
			name = "Set as Active Spec Weight",
			desc = "Use these stat weights for gear scoring",
			func = WrapStatWeightsSet("activatebuild", function()
				local classNum = tonumber(ZGV.db.char.gear_selected_class)
				local buildNum = tonumber(ZGV.db.char.gear_selected_build)
				if ZGV.ItemScore and classNum == ZGV.ItemScore.playerclassNum and buildNum then
					local fakeLevel = SafeNumber(ZGV.db and ZGV.db.char and ZGV.db.char.fakelevel, 0) or 0
					local level = (fakeLevel > 0 and fakeLevel) or UnitLevel("player")
					local talentState = ZGV.ItemScore:GetTalentState(ZGV.ItemScore.playerclass, level)
					if talentState.preTalentState then
						ZGV.db.char.gear_active_build = buildNum
						ZGV.db.char.gear_pre_talent_override_build = buildNum
						ZGV.db.char.gear_pre_talent_override_explicit = true
						ZGV.ItemScore:RefreshAfterWeightChange(ZGV.ItemScore.playerclass, buildNum)
						ZGV:Print("Active stat weight set changed.")
						return
					end
					ZGV.ItemScore:ClearPreTalentOverride()
					ZGV.ItemScore:RefreshAfterWeightChange(ZGV.ItemScore.playerclass, ZGV.db.char.gear_active_build)
				end
			end),
			hidden = WrapStatWeightsCallback("hidden", "activatebuild", true, function()
				if not ZGV.ItemScore then return true end
				local fakeLevel = SafeNumber(ZGV.db and ZGV.db.char and ZGV.db.char.fakelevel, 0) or 0
				local level = (fakeLevel > 0 and fakeLevel) or UnitLevel("player")
				local talentState = ZGV.ItemScore:GetTalentState(ZGV.ItemScore.playerclass, level)
				if not talentState.preTalentState then return true end
				local isOwnClass = (tonumber(ZGV.db.char.gear_selected_class) == ZGV.ItemScore.playerclassNum)
				local isActiveBuild = (tonumber(ZGV.db.char.gear_active_build) == tonumber(ZGV.db.char.gear_selected_build))
				return not isOwnClass or isActiveBuild
			end, function(value) return SafeBool(value, true) end),
			width = "double",
		}

		IS_args.activelabel = {
			order = 6.1,
			type = "description",
			name = "|cff00ff00This is your active stat weight set.|r",
			hidden = WrapStatWeightsCallback("hidden", "activelabel", true, function()
				if not ZGV.ItemScore then return true end
				local isOwnClass = (tonumber(ZGV.db.char.gear_selected_class) == ZGV.ItemScore.playerclassNum)
				local isActiveBuild = (tonumber(ZGV.db.char.gear_active_build) == tonumber(ZGV.db.char.gear_selected_build))
				return not (isOwnClass and isActiveBuild)
			end, function(value) return SafeBool(value, true) end),
			width = "full",
		}

		IS_args.visibilityheader = {
			order = 7,
			type = "header",
			name = "Visibility",
		}

		IS_args.showallstats = {
			order = 8,
			name = "Show All Stats",
			desc = "Show all stat weight fields, even those not used by this spec",
			type = "toggle",
			width = "full",
			get = WrapStatWeightsCallback("get", "showallstats", false, function() return ZGV.db.profile.gearshowallstats end, function(value) return SafeBool(value, false) end),
			set = WrapStatWeightsSet("showallstats", function(i,v)
				ZGV.db.profile.gearshowallstats = v
				local ACR = LibStub and LibStub("AceConfigRegistry-3.0", true)
				if ACR and ACR.NotifyChange then
					ACR:NotifyChange("ZygorGuidesViewer-ItemScore")
				end
				local function refreshEmbeddedStatWeights()
					local gm = ZGV and ZGV.GuideManagerStandaloneFrame
					if gm and gm:IsShown() and gm.currentSection == "options" and gm.currentOptionsApp == "ZygorGuidesViewer-ItemScore" and gm.RenderOptionsApp then
						gm:RenderOptionsApp("ZygorGuidesViewer-ItemScore")
					end
				end
				if ZGV and ZGV.ScheduleTimer then
					ZGV:ScheduleTimer(refreshEmbeddedStatWeights, 0.05)
				else
					refreshEmbeddedStatWeights()
				end
			end),
		}

		IS_args.weightsheader = {
			order = 9,
			type = "header",
			name = "Stat Weights",
		}
		IS_args.spacer = { order = 9.1, type = "description", name = "Edit the weight for each stat below. Higher values make the stat more valuable for scoring.\n", width = "full" }
		IS_args.recommendedsummary = {
			order = 9.2,
			type = "description",
			name = WrapStatWeightsCallback("name", "recommendedsummary", "", function()
				local className, buildName, classToken, buildNum = GetSelectedBuildInfo()
				local source = ZGV.ItemScore and ZGV.ItemScore.GetRuleSourceLabel and ZGV.ItemScore:GetRuleSourceLabel(classToken, buildNum) or "Unverified local baseline"
				return ("|cff88ccffRecommended Weights|r\nThese values are the curated WotLK baseline for %s - %s.\n|cffccccccSource basis:|r %s\nUse the reset button to return to this baseline after experimenting.\n"):format(className, buildName, source)
			end, SafeString),
			width = "full",
		}

		-- Build stat weight entries for every class/spec combo
		local order = 100
		if ZGV.ItemScore and ZGV.ItemScore.Defaults then
			MarkStatWeightsStage("schema", "dynamic-stats-start")
			DebugStatWeights("building dynamic schema selectedClass=%s selectedBuild=%s showall=%s", tostring(ZGV.db and ZGV.db.char and ZGV.db.char.gear_selected_class), tostring(ZGV.db and ZGV.db.char and ZGV.db.char.gear_selected_build), tostring(ZGV.db and ZGV.db.profile and ZGV.db.profile.gearshowallstats))
			for class, classdata in pairs(ZGV.ItemScore.Defaults) do
				for specnum, specdata in pairs(classdata) do
					local classNum = ZGV.ClassToNumber[class]
					if classNum then
					local headerKey = "hdr_"..class.."_"..specnum
					local customKey = "custom_"..class.."_"..specnum

					-- Header for this spec
					IS_args[headerKey] = {
						order = order,
						type = "header",
						name = WrapStatWeightsCallback("name", headerKey, "Stat Weights", function()
							local buildName = ZGV.ItemScore.Builds[classNum] and ZGV.ItemScore.Builds[classNum][specnum] or ("Spec "..specnum)
							return buildName .. " Stat Weights"
						end, SafeString),
						hidden = WrapStatWeightsCallback("hidden", headerKey, true, function()
							return not ((tonumber(ZGV.db.char.gear_selected_class) == classNum) and (tonumber(ZGV.db.char.gear_selected_build) == specnum))
						end, function(value) return SafeBool(value, true) end),
					}
					order = order + 1

					-- Custom weights indicator
					IS_args[customKey] = {
						order = order,
						type = "description",
						name = "|cffff8800You are using customised stat weights.|r",
						hidden = WrapStatWeightsCallback("hidden", customKey, true, function()
							if not ((tonumber(ZGV.db.char.gear_selected_class) == classNum) and (tonumber(ZGV.db.char.gear_selected_build) == specnum)) then return true end
							return not (ZGV.ItemScore and ZGV.ItemScore.UsesCustomWeights and ZGV.ItemScore:UsesCustomWeights(class, specnum))
						end, function(value) return SafeBool(value, true) end),
						width = "full",
					}
					order = order + 1

					-- One input for each stat keyword
					for index = 1, #ZGV.ItemScore.Keywords do
						local stat = ZGV.ItemScore.Keywords[index]
						if not stat.multi then
							local groupname = "gear_"..class.."_"..specnum
							local statblizz = stat.blizz
							local statdisplay = stat.zgvdisplay
							local optionKey = groupname.."_"..statblizz

							IS_args[optionKey] = {
								order = order,
								type = "input",
								name = statdisplay,
								width = "half",
								get = WrapStatWeightsCallback("get", optionKey, "", function()
									local prefix = "gear_"..class.."_"..specnum.."_"
									local statset = ZGV.ItemScore.rules[class][specnum].stats
									local profile = ZGV.db.profile
									if profile[prefix..statblizz] and profile[prefix..statblizz] ~= "" and profile[prefix..statblizz] ~= "0" then
										return tostring(profile[prefix..statblizz])
									end
									if statset[statblizz] then return tostring(statset[statblizz]) end
									return ""
								end, function(value) return SafeString(value, "") end),
								set = WrapStatWeightsSet(optionKey, function(i,v)
									local prefix = "gear_"..class.."_"..specnum.."_"
									if v == "" or v == nil then v = 0 end
									ZGV.db.profile[prefix..statblizz] = tostring(SafeNumber(v, 0) or 0)

									-- Check if weights match defaults; if so, clean up saved overrides
									if ZGV.ItemScore and not ZGV.ItemScore:UsesCustomWeights(class, specnum) then
										for idx = 1, #ZGV.ItemScore.Keywords do
											ZGV.db.profile[prefix..ZGV.ItemScore.Keywords[idx].blizz] = nil
										end
									else
										for sname, sval in pairs(ZGV.ItemScore.rules[class][specnum].stats) do
											ZGV.db.profile[prefix..sname] = ZGV.db.profile[prefix..sname] or sval
										end
									end
									if ZGV.ItemScore then ZGV.ItemScore:RefreshAfterWeightChange(class, specnum) end
								end),
								hidden = WrapStatWeightsCallback("hidden", optionKey, true, function()
									if not ((tonumber(ZGV.db.char.gear_selected_class) == classNum) and (tonumber(ZGV.db.char.gear_selected_build) == specnum)) then return true end
									if ZGV.db.profile.gearshowallstats then return false end
									local prefix = "gear_"..class.."_"..specnum.."_"
									local statset = ZGV.ItemScore.rules[class][specnum].stats
									local pv = ZGV.db.profile[prefix..statblizz]
									if pv and pv ~= "" and pv ~= "0" then return false end
									if statset[statblizz] then return false end
									return true
								end, function(value) return SafeBool(value, true) end),
							}
							order = order + 1
						end
					end

					-- Reset button
					local resetKey = "reset_"..class.."_"..specnum
					IS_args[resetKey] = {
						order = order,
						type = "execute",
						name = "Reset to Defaults",
						func = WrapStatWeightsSet(resetKey, function()
							local prefix = "gear_"..class.."_"..specnum.."_"
							for idx, kw in pairs(ZGV.ItemScore.Keywords) do
								ZGV.db.profile[prefix..kw.blizz] = nil
							end
							if ZGV.ItemScore then ZGV.ItemScore:RefreshAfterWeightChange(class, specnum) end
						end),
						hidden = WrapStatWeightsCallback("hidden", resetKey, true, function()
							return not ((tonumber(ZGV.db.char.gear_selected_class) == classNum) and (tonumber(ZGV.db.char.gear_selected_build) == specnum))
						end, function(value) return SafeBool(value, true) end),
						width = "normal",
					}
					order = order + 1
					end
				end
			end
			MarkStatWeightsStage("schema", "dynamic-stats-finished")
		end

		self.optionsitemscore = {
			name = "Stat Weights",
			desc = "Edit stat weights for item scoring",
			type = 'group',
			order = 4.2,
			handler = self,
			get = Getter_Simple,
			set = Setter_Simple,
			args = IS_args,
		}
	end

end

function me:Options_SetupConfig()
	LibStub("AceConfig-3.0"):RegisterOptionsTable("ZygorGuidesViewer", self.options, ZYGORGUIDESVIEWER_COMMAND );
	LibStub("AceConfig-3.0"):RegisterOptionsTable("ZygorGuidesViewer-Display", self.optionsdisplay, "zgdisplay");
	LibStub("AceConfig-3.0"):RegisterOptionsTable("ZygorGuidesViewer-StepDisplay", self.optionsstepdisplay, "zgstepdisplay");
	LibStub("AceConfig-3.0"):RegisterOptionsTable("ZygorGuidesViewer-Skin", self.optionsskin, "zgskin");
	LibStub("AceConfig-3.0"):RegisterOptionsTable("ZygorGuidesViewer-Progress", self.optionsprogress, "zgprogress");
	LibStub("AceConfig-3.0"):RegisterOptionsTable("ZygorGuidesViewer-Travel", self.optionstravelsystem, "zgtravel");
	LibStub("AceConfig-3.0"):RegisterOptionsTable("ZygorGuidesViewer-Maps", self.optionsmapswaypoints, "zgmaps");
	LibStub("AceConfig-3.0"):RegisterOptionsTable("ZygorGuidesViewer-Optimization", self.optionsoptimization, "zgoptimize");
	LibStub("AceConfig-3.0"):RegisterOptionsTable("ZygorGuidesViewer-Notifications", self.optionsnotifications, "zgnotify");
	LibStub("AceConfig-3.0"):RegisterOptionsTable("ZygorGuidesViewer-ActionButtons", self.optionsactionbuttons, "zgaction");
	LibStub("AceConfig-3.0"):RegisterOptionsTable("ZygorGuidesViewer-Map", self.optionsmap, "zgmap");
	LibStub("AceConfig-3.0"):RegisterOptionsTable("ZygorGuidesViewer-Conv", self.optionsconv, "zgconv");
	LibStub("AceConfig-3.0"):RegisterOptionsTable("ZygorGuidesViewer-Accessibility", self.optionsaccessibility, "zgaccess");
	LibStub("AceConfig-3.0"):RegisterOptionsTable("ZygorGuidesViewer-About", self.optionsabout, "zgabout");
	LibStub("AceConfig-3.0"):RegisterOptionsTable("ZygorGuidesViewer-Debug", self.optionsdebug, "zgdebug");
	--LibStub("AceConfig-3.0"):RegisterOptionsTable("ZygorGuidesViewer-Data", self.optionsdata, "--[[#$$#]]");
	LibStub("AceConfig-3.0"):RegisterOptionsTable("ZygorGuidesViewer-Profile", self.optionsprofile, "zgprofile");
	if self.optionsgear then LibStub("AceConfig-3.0"):RegisterOptionsTable("ZygorGuidesViewer-Gear", self.optionsgear, "zggear") end
	if self.optionsitemscore then LibStub("AceConfig-3.0"):RegisterOptionsTable("ZygorGuidesViewer-ItemScore", self.optionsitemscore, "zgitemscore") end
end

function me:Options_SetupBlizConfig()
	if self.blizRootPanel then return end
	InterfaceOptionsFrame:GetRegions():SetTexture(0,0,0,0.9)
	LibStub("AceConfigDialog-3.0"):SetDefaultSize("ZygorGuidesViewer", 600, 400)
	local rootpanel = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("ZygorGuidesViewer", self.options.name)
	self.blizRootPanel = rootpanel
	self.blizSkinPanel = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("ZygorGuidesViewer-Skin", self.optionsskin.name, self.options.name)
	self.blizStepDisplayPanel = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("ZygorGuidesViewer-StepDisplay", self.optionsstepdisplay.name, self.options.name)
	self.blizProgressPanel = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("ZygorGuidesViewer-Progress", self.optionsprogress.name, self.options.name);
	self.blizTravelPanel = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("ZygorGuidesViewer-Travel", self.optionstravelsystem.name, self.options.name)
	self.blizMapsPanel = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("ZygorGuidesViewer-Maps", self.optionsmapswaypoints.name, self.options.name)
	self.blizOptimizationPanel = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("ZygorGuidesViewer-Optimization", self.optionsoptimization.name, self.options.name)
	self.blizNotificationsPanel = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("ZygorGuidesViewer-Notifications", self.optionsnotifications.name, self.options.name)
	self.blizActionButtonsPanel = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("ZygorGuidesViewer-ActionButtons", self.optionsactionbuttons.name, self.options.name)
	self.blizConvPanel = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("ZygorGuidesViewer-Conv", self.optionsconv.name, self.options.name)
	self.blizAccessPanel = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("ZygorGuidesViewer-Accessibility", self.optionsaccessibility.name, self.options.name)
	self.blizAboutPanel = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("ZygorGuidesViewer-About", self.optionsabout.name, self.options.name)
	if (self.db.profile.debug) then
		LibStub("AceConfigDialog-3.0"):AddToBlizOptions("ZygorGuidesViewer-Debug", self.optionsdebug.name, self.options.name)
	end
	--LibStub("AceConfigDialog-3.0"):AddToBlizOptions("ZygorGuidesViewer-Data", self.optionsdata.name, self.options.name)
	self.blizProfilePanel = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("ZygorGuidesViewer-Profile", self.optionsprofile.name, self.options.name)
	if self.optionsgear then self.blizGearPanel = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("ZygorGuidesViewer-Gear", self.optionsgear.name, self.options.name) end
	if self.optionsitemscore then self.blizItemScorePanel = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("ZygorGuidesViewer-ItemScore", self.optionsitemscore.name, self.options.name) end
end

function me:EnsureBlizConfig()
	if self.blizRootPanel then return end
	self:Options_SetupBlizConfig()
	self.blizConfigPending = nil
end

function me:OpenStepDisplayOptions()
	if self.EnsureBlizConfig then self:EnsureBlizConfig() end
	local panel = self.blizStepDisplayPanel
	if panel then
		InterfaceOptionsFrame_OpenToCategory(panel)
		InterfaceOptionsFrame_OpenToCategory(panel)
		return
	end
	InterfaceOptionsFrame_OpenToCategory((self.optionsstepdisplay and self.optionsstepdisplay.name) or "Step Display")
end




--function me:CycleWindowModes()
--end


--[[
-- made obsolete ages ago
function me:IsColorBorder()
	return self.db.profile.colorborder
end
function me:ToggleColorBorder()
	self.db.profile.colorborder = not self.db.profile.colorborder
	self:UpdateFrame()
end
--]]



function me:GetIconScale()
	return self.db.profile.iconScale
end
function me:SetIconScale(info,value)
	self.db.profile.iconScale = value
	if not self:IsWaypointAddonEnabled("cart2") then return end
	Cartographer_Notes:MINIMAP_UPDATE_ZOOM()
	Cartographer_Notes:UpdateMinimapIcons()
end

function me:GetIconAlpha()
	return self.db.profile.iconAlpha
end
function me:SetIconAlpha(info,value)
	self.db.profile.iconAlpha = value
	if not self:IsWaypointAddonEnabled("cart2") then return end
	Cartographer_Notes:MINIMAP_UPDATE_ZOOM()
	Cartographer_Notes:UpdateMinimapIcons()
end

function me:IsShowingMinimapIcons()
	return self.db.profile.minicons
end
function me:ToggleShowingMinimapIcons()
	self.db.profile.minicons = not self.db.profile.minicons
	self:SetWaypoint()
	if not self:IsWaypointAddonEnabled("cart2") then return end
	Cartographer_Notes:MINIMAP_UPDATE_ZOOM()
	Cartographer_Notes:UpdateMinimapIcons()
end

--[[
function me:IsShowingMapIcons()
	return self.db.profile.mapicons
end
function me:ToggleShowingMapIcons()
	self.db.profile.mapicons = not self.db.profile.mapicons
end

function me:GetFocusGuide(info)
	return self.focusedguidename
end

function me:SetFocusGuide(info,value)
	self.focusedguidename = value
end

function me:EditGuide(info)
	if self.db.global.storedguides and self.db.global.storedguides[self.focusedguidename] then
		self.focusedguideediting = 1
	else
		self:Print("'"..self.focusedguidename.."' is not a stored guide.")
	end
end

function me:DeleteGuide(info)
	self:UnregisterGuide(self.focusedguidename)
	self.focusedguidename = nil
end

function me:GetGuideText()
	if self.focusedguideediting and self.db.global.storedguides[self.focusedguidename] then
		self.focusedguideediting = 0
		return "guide "..self.focusedguidename.."\n"..self.db.global.storedguides[self.focusedguidename].."\nend\n"
	else
		return ""
	end
end

function me:SetGuideText(info,value)
	local stored=0
	for title,data in value:gmatch("guide (.-)\n(.-)\nend\n?") do
		self:RegisterGuide(title,data,{is_stored=true})
		self:SetGuide(title)
		stored=true
	end
	if not stored then
		self:Print("No guides were recognized; remember to wrap your stored guides properly, like:|nguide Guide Title goes here|n  steps...|nend")
	end
	self:UpdateFrame()
end
--]]

function me:GetCurrentGuideNum()
	if not self.CurrentGuide then return nil end
	for i,data in ipairs(ZygorGuidesViewer.registeredguides) do
		if data.title==self.CurrentGuide.title then return i end
	end
end



function me:OpenOptions(section)
	-- Prefer guide manager UI if available
	if self.ToggleGuideManagerFrame and (section == "gear" or section == "itemscore") then
		if self.db and self.db.profile then
			self.db.profile.guidebrowseroptionsapp = section == "gear" and "ZygorGuidesViewer-Gear" or "ZygorGuidesViewer-ItemScore"
		end
		self:SelectGuideManagerSection("options")
		local frame = _G["ZGVGuideManagerFrame"]
		if frame and not frame:IsShown() then frame:Show() end
		return
	end

	-- Fallback to Blizzard Interface Options
	if self.EnsureBlizConfig then self:EnsureBlizConfig() end
	local panel
	if section == "gear" and self.blizGearPanel then
		panel = self.blizGearPanel
	elseif section == "itemscore" and self.blizItemScorePanel then
		panel = self.blizItemScorePanel
	else
		panel = self.blizRootPanel or ((self.options and self.options.name) or "Zygor Guides Viewer Remastered")
	end
	InterfaceOptionsFrame_OpenToCategory(panel)
	InterfaceOptionsFrame_OpenToCategory(panel) -- called twice to work around Blizz bug
end


function me:SetOption(cat,cmd)
	-- Backward compatibility: step controls were split from Display into StepDisplay.
	-- Keep legacy callers/macros working by remapping old command paths.
	if cat=="Display" and type(cmd)=="string" then
		if cmd=="hideborder" and self.ToggleHideBorder then
			self:ToggleHideBorder()
			return
		elseif cmd=="windowlocked" and self.ToggleWindowLock then
			self:ToggleWindowLock()
			return
		elseif cmd=="resizeup" and self.ToggleResizeUp then
			self:ToggleResizeUp()
			return
		elseif cmd=="hideincombat" and self.ToggleHideInCombat then
			self:ToggleHideInCombat()
			return
		end
		local firstarg = cmd:match("^(%S+)")
		if cmd:match("^showcountsteps") then
			cat = "StepDisplay"
		elseif cmd:match("^step%s+") then
			cmd = cmd:gsub("^step%s+","",1)
			cat = "StepDisplay"
		elseif firstarg and ({
			hideborder = true,
			windowlocked = true,
			resizeup = true,
			skin = true,
			opacitymain = true,
			backopacity = true,
			framescale = true,
			fontsize = true,
			fontsecsize = true,
		})[firstarg] then
			cmd = "window "..cmd
		end
	end
	LibStub("AceConfigCmd-3.0").HandleCommand(self, "zygor", "ZygorGuidesViewer"..(cat~="" and "-"..cat or ""), cmd)
end
