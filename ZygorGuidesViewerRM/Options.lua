local me = ZygorGuidesViewer
if not me then return end

local L = me.L
local LM = me.LM
local LI = me.LI
local LC = me.LC
local LQ = me.LQ
local LS = me.LS
local DL = me.DL

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

			RecipesKnown = {},
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
			hideincombat = false,

			-- convenience
			autoaccept = false,
			autoturnin = false,
			fixblizzardautoaccept = false,
			analyzereps = false,
			colorblindmode = "off",


			skin = "remaster",
			remastercolor = "dark",
			skincolors={text={0.90,0.92,0.98},back={0.08,0.09,0.12}},
			showallsteps = false,
			hideborder = false,
			hidestepborders = false,
			showcountsteps = 1,
			framescale = 1.0,
			fontsize = 10,
			fontsecsize = 10,

			--backcolor = {r=0.18,g=0.05,b=0.23,a=0.56},
			backopacity = 0.3,
			opacitymain = 1.0,

			stepbackalpha = 0.5,
			goalicons = true,
			goalbackgrounds = true,
			goalcolorize = false,
			goalbackincomplete = {r=0.6,g=0.0,b=0.0,a=0.7},
			goalbackprogressing= {r=0.6,g=0.7,b=0.0,a=0.7},
			goalbackcomplete   = {r=0.2,g=0.7,b=0.0,a=0.7},
			goalbackimpossible = {r=0.3,g=0.3,b=0.3,a=0.7},
			goalbackprogress = true,
			
			goalupdateflash = true,
			goalcompletionflash = true,
			flashborder = true,

			tooltipsbelow = true,

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

			waypointaddon = "internal",

			golddetectiondist = 400,
			goldreqmode = 3, -- current
			golddistmode = 1, -- in range

			arrowmeters = false,
			arrowfreeze = false,
			--arrowcam = false,
			arrowcolordir = true,
			arrowcolormode = "direction",
			arrowoutline = false,
			arrowoutlinemode = "default",
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

			-- hidden

			displaymode = "guide",

		}
	})
end

function me:Options_DefineOptions()
	local Getter_Simple = function(info)
		return self.db.profile[info[#info]]
	end
	local Setter_Simple = function(info,value)
		self.db.profile[info[#info]] = value
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
		name = L["name"],
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
			guide = {
				order = 2,
				type = "select",
				name = "",
				values = function() return ZGV:GetGuides() end,
				get = "GetCurrentGuideNum",
				set = function(info,i) self:SetGuide(i) self:FocusStep(1) end,
				width = "double",
			},
			steps = {
				order=3.1,
				type = "description",
				name = function() if not ZGV.CurrentGuide then return "" end  return L["opt_guide_steps"]:format(#ZGV.CurrentGuide.steps) end,
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
			sep1 = {
				type="description", name=" |n |n |n", order=98
			},
			report = {
				name = L["opt_report"],
				desc = L["opt_report_desc"],
				type = 'execute',
				func = function() ZGV:BugReport() end,
				order = 99,
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
							if n==0 then self.db.profile.showallsteps=true else self.db.profile.showallsteps=false self.db.profile.showcountsteps=n end
							if self.db.profile['showallsteps'] then ZygorGuidesViewerFrame:SetHeight(self.db.profile.fullheight) end
							self:UpdateFrame(true)
							self:AlignFrame()
							self:UpdateLocking()
							self:ScrollToCurrentStep()
							if not self.db.profile.showallsteps then
								if ZygorGuidesViewerFrameScrollScrollBar then
									ZygorGuidesViewerFrameScrollScrollBar:SetValue(1)
								end
								self:ResizeFrame()
							end
						      end,
						order=1,
					},
					sep1 = {type="description",name="",order=2},
					skin = {
						name = L["opt_skin"],
						desc = L["opt_skin_desc"],
						type = "select",
						values = {
							remaster_dark="|cffcfd6e8Dark|r",
							remaster_goldaccent="|cffebd199Gold Accent|r",
							remaster_blue="|cff88b3ffBlue|r",
							remaster_green="|cff88ff88Green|r",
							remaster_orange="|cffffcc66Orange|r",
							remaster_violet="|cffff99ffViolet|r",
							blue=L["opt_skin_blue"].." (legacy)",
							green=L["opt_skin_green"].." (legacy)",
							orange=L["opt_skin_orange"].." (legacy)",
							violet=L["opt_skin_violet"].." (legacy)",
						},
						get = function()
							if self.db.profile.skin == "remaster" then
								local rc = self.db.profile.remastercolor or "dark"
								if rc == "goals" then rc = "goldaccent" end
								return "remaster_"..rc
							end
							return self.db.profile.skin
						end,
						set = function(_,n)
							local colors = {
										remaster_dark={text={0.90,0.92,0.98},back={0.08,0.09,0.12}},
										remaster_goldaccent={text={0.92,0.80,0.50},back={0.07,0.08,0.10}},
										remaster_blue={text={0.70,0.80,1.00},back={0.08,0.11,0.24}},
										remaster_green={text={0.50,1.00,0.50},back={0.09,0.20,0.07}},
										remaster_orange={text={1.00,0.80,0.00},back={0.23,0.11,0.07}},
										remaster_violet={text={0.95,0.65,1.00},back={0.17,0.07,0.20}},
										violet={text={0.95,0.65,1.0},back={0.17,0.07,0.20}},
										blue={text={0.7,0.8,1.0},back={0.08,0.11,0.24}},
										green={text={0.5,1.0,0.5},back={0.09,0.20,0.07}},
										orange={text={1.0,0.8,0.0},back={0.23,0.11,0.07}}}
							if n:match("^remaster_") then
								self.db.profile.skin = "remaster"
								local rc = n:gsub("^remaster_", "")
								if rc == "goals" then rc = "goldaccent" end
								self.db.profile.remastercolor = rc
								self.db.profile.skincolors = colors["remaster_"..rc] or colors.remaster_dark
							else
								self.db.profile.skin = n
								self.db.profile.skincolors = colors[self.db.profile.skin]
							end
							self:UpdateSkin()
							self:AlignFrame()
							self:UpdateLocking()
							self:ScrollToCurrentStep()
						      end,
						order=2.05,
					},
					opacitymain = {
						name = L["opt_opacitymain"],
						desc = L["opt_opacitymain_desc"],
						type = 'range',
						set = function(i,v) Setter_Simple(i,v)  self:AlignFrame() end,
						min = 0,
						max = 1.0,
						isPercent = true,
						step = 0.01,
						bigStep = 0.1,
						--stepBasis = 0,
						--width="double",
						order=2.1,
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
						set = function(i,v) Setter_Simple(i,v)  self:UpdateSkin()  end,
						min=0.0,
						max=1.0,
						isPercent = true,
						step = 0.01,
						bigStep = 0.1,
						order = 2.2,
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
						order=2.3,
					},
					sep3 = {type="description",name="",order=3},
					framescale = {
						name = L["opt_framescale"],
						desc = L["opt_framescale_desc"],
						type = 'range',
						set = function(i,v) Setter_Simple(i,v) 	self.Frame:SetScale(ZGV.db.profile.framescale)  end,
						min = 0.5,
						max = 2.0,
						step = 0.1,
						bigStep = 0.1,
						order=3.1,
						isPercent = true,
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
						order=3.2,
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
						order=3.3,
					},
					sep2 = {type="description",name="",order=4},
					windowlocked = {
						name = L['opt_windowlocked'],
						desc = L['opt_windowlocked_desc'],
						type = 'toggle',
						set = function(i,v) Setter_Simple(i,v)  self:UpdateLocking()  end,
						order=4.1,
					},
					resizeup = {
						name = L["opt_miniresizeup"],
						desc = L["opt_miniresizeup_desc"],
						type = 'toggle',
						set = function(i,v)
							Setter_Simple(i,v)
							self:ReanchorFrame()
							self:Debug("size up? "..tostring(self.db.profile.resizeup))
							--self.frameNeedsResizing = self.frameNeedsResizing + 1
							self:AlignFrame()
							-- THIS SUCKS.
						      end,
						order=4.2,
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
						set = function(i,v) Setter_Simple(i,v)  self:UpdateFrame()  end,
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
			colorblind = {
				name = "Colorblind Options",
				type = "group",
				inline = true,
				order = 3.9,
				args = {
					colorblindmode = {
						name = "Colorblind Mode",
						desc = "Override guide, arrow, and distance colors with colorblind-friendly palettes. Also forces simplified arrow noun colors with optimized contrast.",
						type = "select",
						values = {
							[1] = "Off",
							[2] = "Protanopia",
							[3] = "Deuteranopia",
							[4] = "Tritanopia",
						},
						width = "normal",
						get = function()
							local m = self.db.profile.colorblindmode
							if m=="protan" then return 2 end
							if m=="deutan" then return 3 end
							if m=="tritan" then return 4 end
							return 1
						end,
						set = function(_,v)
							local map = { [1]="off",[2]="protan",[3]="deutan",[4]="tritan" }
							self.db.profile.colorblindmode = map[v] or "off"
							self:UpdateSkin()
							self:UpdateFrame(true)
							if self.Pointer and self.Pointer.ArrowFrame then
								self.Pointer:RefreshArrowStyle()
							end
							self:SetWaypoint()
						end,
						order = 1,
					},
				},
			},
		}
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
				name = "Show minimap icons",
				desc = "Show icons on the minimap",
				type = 'toggle',
				get = "IsShowingMinimapIcons",
				set = "ToggleShowingMinimapIcons",
				disabled = function() return self.db.profile.waypointaddon=="none" end,
				order = 3,
				width="double",
			},
			transparency = {
				name = "Icon alpha",
				desc = "Alpha transparency of map note icons",
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
				name = "Icon size",
				desc = "Size of the icons on the map",
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
							[1] = "Direction",
							[2] = "Distance",
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
						name = "Arrow Text Outline",
						desc = "Choose outline strength for waypoint arrow text.",
						type = "select",
						values = {
							[1] = "Default",
							[2] = "Strong",
							[3] = "Reduced",
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
					simplifyarrownouncolors = {
						name = "Simplified Arrow Noun Colors",
						desc = "Use one noun color on remastered arrow text. Coordinates remain gold. Auto-forced by Colorblind Mode.",
						type = "toggle",
						width = "full",
						disabled = function()
							local m = self.db.profile.colorblindmode
							return m=="protan" or m=="deutan" or m=="tritan"
						end,
						set = function(i,v)
							Setter_Simple(i,v)
							ZGV:SetWaypoint()
						end,
						order = 11.01,
					},
					remasterpointeronlegacy = {
						name = "Use Remastered Pointer on Legacy Skins",
						desc = "When enabled, legacy skins use the remastered waypoint arrow style.",
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
				name = "Reset Arrow Position",
				desc = "Reset the waypoint arrow to retail default position.",
				type = "execute",
				func = function() ResetArrowPosition() end,
				disabled = function() return self.db.profile.waypointaddon~="internal" end,
				order = 98.9,
			},
			foglightdebug = {
				name = "(Debug) Check foglight",
				desc = "Check foglighting for the current map",
				type = 'execute',
				func = function() ZGV.Foglight:DebugMap() end,
				order = 99,
				hidden = function() return not self.db.profile.debug end
			},
		}
	}
	
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
	
end

function me:Options_SetupConfig()
	LibStub("AceConfig-3.0"):RegisterOptionsTable("ZygorGuidesViewer", self.options, ZYGORGUIDESVIEWER_COMMAND );
	LibStub("AceConfig-3.0"):RegisterOptionsTable("ZygorGuidesViewer-Display", self.optionsdisplay, "zgdisplay");
	LibStub("AceConfig-3.0"):RegisterOptionsTable("ZygorGuidesViewer-Progress", self.optionsprogress, "zgprogress");
	LibStub("AceConfig-3.0"):RegisterOptionsTable("ZygorGuidesViewer-Map", self.optionsmap, "zgmap");
	LibStub("AceConfig-3.0"):RegisterOptionsTable("ZygorGuidesViewer-Conv", self.optionsconv, "zgconv");
	LibStub("AceConfig-3.0"):RegisterOptionsTable("ZygorGuidesViewer-Debug", self.optionsdebug, "zgdebug");
	--LibStub("AceConfig-3.0"):RegisterOptionsTable("ZygorGuidesViewer-Data", self.optionsdata, "--[[#$$#]]");
	LibStub("AceConfig-3.0"):RegisterOptionsTable("ZygorGuidesViewer-Profile", self.optionsprofile, "zgprofile");
end

function me:Options_SetupBlizConfig()
	InterfaceOptionsFrame:GetRegions():SetTexture(0,0,0,0.9)
	LibStub("AceConfigDialog-3.0"):SetDefaultSize("ZygorGuidesViewer", 600, 400)
	LibStub("AceConfigDialog-3.0"):AddToBlizOptions("ZygorGuidesViewer", self.options.name)
	LibStub("AceConfigDialog-3.0"):AddToBlizOptions("ZygorGuidesViewer-Display", self.optionsdisplay.name, self.options.name)
	LibStub("AceConfigDialog-3.0"):AddToBlizOptions("ZygorGuidesViewer-Progress", self.optionsprogress.name, self.options.name);
	LibStub("AceConfigDialog-3.0"):AddToBlizOptions("ZygorGuidesViewer-Map", self.optionsmap.name, self.options.name)
	LibStub("AceConfigDialog-3.0"):AddToBlizOptions("ZygorGuidesViewer-Conv", self.optionsconv.name, self.options.name)
	if (self.db.profile.debug) then
		LibStub("AceConfigDialog-3.0"):AddToBlizOptions("ZygorGuidesViewer-Debug", self.optionsdebug.name, self.options.name)
	end
	--LibStub("AceConfigDialog-3.0"):AddToBlizOptions("ZygorGuidesViewer-Data", self.optionsdata.name, self.options.name)
	LibStub("AceConfigDialog-3.0"):AddToBlizOptions("ZygorGuidesViewer-Profile", self.optionsprofile.name, self.options.name)
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



function me:OpenOptions()
	--self:OpenConfigMenu()
	InterfaceOptionsFrame_OpenToCategory(L['name'])
end


function me:SetOption(cat,cmd)
	LibStub("AceConfigCmd-3.0").HandleCommand(self, "zygor", "ZygorGuidesViewer"..(cat~="" and "-"..cat or ""), cmd)
end
